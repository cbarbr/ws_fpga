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

        self.canvas = tk.Canvas(
            root, width=CANVAS_SIZE, height=CANVAS_SIZE, bg="white"
        )
        self.canvas.grid(row=0, column=0, columnspan=4)

        self.img = Image.new("L", (CANVAS_SIZE, CANVAS_SIZE), color=255)
        self.draw = ImageDraw.Draw(self.img)

        self.canvas.bind("<B1-Motion>", self.paint)

        tk.Button(root, text="Clear", command=self.clear_canvas).grid(row=1, column=0)
        tk.Button(root, text="Predict Only", command=self.predict_only).grid(row=1, column=1)
        tk.Button(root, text="Send to FPGA", command=self.run_and_send).grid(row=1, column=2)
        tk.Button(root, text="Quit", command=root.destroy).grid(row=1, column=3)

        self.status = tk.Label(root, text="Draw a digit and press Run")
        self.status.grid(row=2, column=0, columnspan=3)
        self.fpga = Device("COM3", 2000000)

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
            pred, iacts, scale, W_q, wscale, test, x_q = run_inference("digit.png")
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
        pred, iacts, scale, W_q, wscale, W_padded, x_q = run_inference("digit.png")
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
            tile = np.zeros((TILE, 1), dtype=np.int8)  # only 1 column

            k_end = min(k_start + TILE, iacts.shape[0])
            tile[:k_end-k_start, 0] = iacts[k_start:k_end, 0]

            return tile
        
        def matmul_16x16_weight_stationary(fpga, W_q, iacts, TILE=16):
            NUM_CLASSES = W_q.shape[0]  # 10
            K = W_q.shape[1]            # 784
            OUT_COLS = iacts.shape[1]   # 1

            # Pad for full-tile hardware
            W_pad = np.zeros((TILE, K), dtype=np.int8)
            W_pad[:NUM_CLASSES, :] = W_q

            A_pad = np.zeros((K, TILE), dtype=np.int8)
            A_pad[:, 0:OUT_COLS] = iacts

            C_pad = np.zeros((TILE, TILE), dtype=np.int64)

            num_k_tiles = (K + TILE - 1) // TILE

            for ki in range(num_k_tiles):
                k_start = ki * TILE
                k_end = min(k_start + TILE, K)
                k_len = k_end - k_start

                W_tile = np.zeros((TILE, TILE), dtype=np.int8)
                W_tile[:, :k_len] = W_pad[:, k_start:k_end]

                A_tile = np.zeros((TILE, TILE), dtype=np.int8)
                A_tile[:k_len, :OUT_COLS] = A_pad[k_start:k_end, :OUT_COLS]

                P = np.array(
                    fpga.matrix_multiply(W_tile.tolist(), A_tile.tolist()), 
                    dtype=np.int64
                )

                # only accumulate valid rows and columns
                C_pad[:NUM_CLASSES, :OUT_COLS] += P[:NUM_CLASSES, :OUT_COLS]

            # return correct output size
            return C_pad[:NUM_CLASSES, :OUT_COLS]

 

        
        try:
            print("Starting UART transfer to FPGA...")
            mat = matmul_16x16_weight_stationary(self.fpga, W_padded, iacts)
            print("UART transfer and FPGA computation done.")
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