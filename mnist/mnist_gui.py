import tkinter as tk
from tkinter import messagebox
import numpy as np
from PIL import Image, ImageDraw, ImageOps
import serial
import time

# --- import your inference pipeline ---
from mnist import run_inference
from ws_fpga_funcs import Device



CANVAS_SIZE = 280      # drawing area
IMG_SIZE = 28          # MNIST size
BRUSH = 10             # brush thickness




class DigitGUI:
    def __init__(self, root):
        self.root = root
        root.title("MNIST → FPGA Inference GUI")
        
        #ui
        self.canvas = tk.Canvas(
            root, width=CANVAS_SIZE, height=CANVAS_SIZE, bg="white"
        )
        self.canvas.grid(row=0, column=0, columnspan=4) 

        self.clear_btn = tk.Button(root, text="Clear", command=self.clear_canvas)
        self.clear_btn.grid(row=1, column=0)

        self.predict_btn = tk.Button(root, text="Predict Only", command=self.predict_only)
        self.predict_btn.grid(row=1, column=1)

        self.send_btn = tk.Button(root, text="Send to FPGA", command=self.run_and_send)
        self.send_btn.grid(row=1, column=2)

        self.quit_btn = tk.Button(root, text="Quit", command=root.destroy)
        self.quit_btn.grid(row=1, column=3)

        self.status = tk.Label(root, text="Draw a digit and press Run")
        self.status.grid(row=2, column=0, columnspan=4)


        # Image buffer
        self.img = Image.new("L", (CANVAS_SIZE, CANVAS_SIZE), color=255)
        self.draw = ImageDraw.Draw(self.img)
        self.canvas.bind("<B1-Motion>", self.paint)

        use_fpga = messagebox.askyesno(
            "FPGA Mode", 
            "Do you want to use the FPGA?\n\n"
            "yes = Select COM port\n"
            "no = Python prediciton only"
        )

        self.fpga_enabled = use_fpga

        if self.fpga_enabled:
            port = simpledialog.askstring(
                "FPGA Port Selection", 
                "Enter FPGA COM port (e.g., COM4):", 
                initialvalue="COM4")

            if port is None:
                messagebox.showinfo(
                    "Python Only Mode",
                    "No port selected. Running without FPGA."
                )
                self.fpga_enabled = False
            else:
                try:
                    self.fpga = Device(port, 115200)
                except Exception as e:
                    messagebox.showerror(
                        "Connection Error",
                        f"Failed to open {port}\nSwitching to Python-only mode.\n\n{e}"
                    )
                    self.fpga_enabled = False

        # If not using FPGA → disable button
        if not self.fpga_enabled:
            self.send_btn.config(state="disabled")
            self.status.config(text="Python-only mode enabled")

    def paint(self, event):
        x, y = event.x, event.y
        r = BRUSH
        self.canvas.create_oval(x-r, y-r, x+r, y+r, fill="black", outline="black")
        self.draw.ellipse((x-r, y-r, x+r, y+r), fill=0)

    def clear_canvas(self):
        self.canvas.delete("all")
        self.draw.rectangle((0, 0, CANVAS_SIZE, CANVAS_SIZE), fill=255)
        self.status.config(text="Canvas cleared")

    def get_28x28_image(self):
        small = self.img.resize((IMG_SIZE, IMG_SIZE), Image.Resampling.NEAREST)
        # your pipeline expects black digit on white background
        small = ImageOps.invert(small)
        return small
    
    def predict_only(self):
        # Convert drawing to 28x28 and save temp PNG
        small = self.get_28x28_image()
        small.save("digit.png")

        # Run inference WITHOUT UART
        try:
            pred, iacts, scale, W_q, wscale, test = run_inference("digit.png")
            self.status.config(text=f"Python prediction only: {pred}")
        except Exception as e:
            self.status.config(text="Prediction failed!")
            print("Error:", e)

    def run_and_send(self):
        # Convert canvas → 28×28 digit
        small = self.get_28x28_image()
        small.save("digit.png")

        self.status.config(text="Running inference…")
        self.root.update()

        # ---- Run Python inference ----
        pred, iacts, scale, W_q, wscale, W_padded = run_inference("digit.png")
        self.status.config(text=f"Python prediction: {pred}")
        self.root.update()
        # -----------------------------------------------------
        # ----  UART TRANSFER  ----
        # -----------------------------------------------------

        def make_weight_tile(W_q_pad, class_start, k_start, TILE=3):
            """
            Extract a 3x3 weight tile (padded with zeros if at edges).

            W_q_pad: (10, 786)
            class_start: row index in [0, 10) stepping by 3
            k_start:     K index in [0, 786) stepping by 3
            """
            tile = np.zeros((TILE, TILE), dtype=np.int8)

            c_end = min(class_start + TILE, W_q_pad.shape[0])
            k_end = min(k_start + TILE,    W_q_pad.shape[1])

            tile[0:c_end-class_start, 0:k_end-k_start] = \
                W_q_pad[class_start:c_end, k_start:k_end]

            return tile
        
        def make_iact_tile(iacts, k_start, TILE=3):
            """
            Extract a 3x3 activation tile (padded with zeros if at edges).

            iacts: (786, 3)
            k_start: K index stepping by 3
            """
            tile = np.zeros((TILE, TILE), dtype=np.int8)

            k_end = min(k_start + TILE, iacts.shape[0])
            n_end = min(TILE, iacts.shape[1])  # normally 3

            tile[0:k_end-k_start, 0:n_end] = iacts[k_start:k_end, 0:n_end]

            return tile
        
        def matmul_3x3_weight_stationary(fpga, W_q_pad, iacts, TILE=3):
            NUM_CLASSES = W_q_pad.shape[0]
            K          = iacts.shape[0]
            OUT_COLS   = iacts.shape[1]

            C = np.zeros((NUM_CLASSES, OUT_COLS), dtype=np.int64)

            num_class_tiles = (NUM_CLASSES + TILE - 1) // TILE
            num_k_tiles     = (K + TILE - 1) // TILE

            print(num_class_tiles * num_k_tiles)

            for i in range(num_class_tiles):
                class_start = i * TILE
                class_end   = min(class_start + TILE, NUM_CLASSES)
                rows        = class_end - class_start

                # Host accumulator for a 3×3 block
                C_tile_acc = np.zeros((TILE, OUT_COLS), dtype=np.int64)

                for j in range(num_k_tiles):
                    k_start = j * TILE

                    W_tile = make_weight_tile(W_q_pad, class_start, k_start, TILE)
                    A_tile = make_iact_tile(iacts,      k_start,        TILE)

                    # One tile multiply on FPGA
                    P = np.array(
                        fpga.matrix_multiply(W_tile.tolist(), A_tile.tolist()),
                        dtype=np.int64
                    )

                    print(i*num_k_tiles + j, end="\r")

                    C_tile_acc[:rows, :] += P[:rows, :OUT_COLS]  # accumulate CPU-side

                C[class_start:class_end, :] = C_tile_acc[:rows, :]

            return C 

        
        try:
            mat = matmul_3x3_weight_stationary(self.fpga, W_padded, iacts)
            ans = np.argmax(np.sum(mat, axis=1))
            pred = int(np.argmax(ans))

            print("fpga predicts: ", ans  )
            self.status.config(text=f"Sent to FPGA successfully.")

        except Exception as e:
            messagebox.showerror("UART Error", str(e))
            self.status.config(text="UART failed")



if __name__ == "__main__":
    root = tk.Tk()
    gui = DigitGUI(root)
    root.mainloop()
