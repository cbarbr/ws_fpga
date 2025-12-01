import tkinter as tk
from tkinter import messagebox
import numpy as np
from PIL import Image, ImageDraw, ImageOps
import serial
import time

# --- import your inference pipeline ---
from mnist import run_inference
from fpga_wrapper import send_frame, send_coe_over_uart
from fpga_uart import FPGALoader



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
            pred, iacts, scale, W_q, wscale = run_inference("digit.png")
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
        pred, iacts_flat, scale, W_q, wscale = run_inference("digit.png")
        self.status.config(text=f"Python prediction: {pred}")
        self.root.update()

        # ----------------------------------------------------------
        # Convert flattened int8 vectors → 32-bit packed words
        # FPGA UART expects IA by column, W by row
        # ----------------------------------------------------------
        def pack_int8_to_words(vec, words_per_col):
            clean = []

            for v in vec:
                # If v is a numpy array, flatten and take each element
                if hasattr(v, "flatten"):
                    flat = v.flatten()
                    for x in flat:
                        clean.append(int(x) & 0xFF)
                else:
                    clean.append(int(v) & 0xFF)

            # Pad to multiple of 4 bytes
            while len(clean) % 4 != 0:
                clean.append(0)

            # Group into 32-bit little-endian words
            words = []
            for i in range(0, len(clean), 4):
                b0, b1, b2, b3 = clean[i:i+4]
                word = (b3 << 24) | (b2 << 16) | (b1 << 8) | b0
                words.append(word)

            return words



        # ----------------------------------------
        # For your 3×3 array:
        # IA =  columns = 3
        # W  =  rows    = 3
        # ----------------------------------------
        COLS = 3
        ROWS = 3

        # PAD to multiples of 4 bytes:
        words_per_col = (len(iacts_flat) + 3) // 4
        iact_words_columns = []
        idx = 0
        chunk = words_per_col * 4
        for _ in range(COLS):
            segment = iacts_flat[idx:idx + chunk]
            iact_words_columns.append(pack_int8_to_words(segment, words_per_col))
            idx += chunk

        # Do the same for each weight row
        words_per_row = (len(W_q) + 3) // 4
        weight_words_rows = []
        idx = 0
        chunk = words_per_row * 4
        for _ in range(ROWS):
            segment = W_q[idx:idx + chunk]
            weight_words_rows.append(pack_int8_to_words(segment, words_per_row))
            idx += chunk

        # -----------------------------------------------------
        # ----  UART TRANSFER  ----
        # -----------------------------------------------------
        try:
            # Load into FPGA
            for c in range(COLS):
                fpga.load_iacts(c, iact_words_columns[c])

            for r in range(ROWS):
                fpga.load_weights(r, weight_words_rows[r])

            # Start computation
            fpga.start_compute()

            # Read back final 48-bit sum
            final_logit = fpga.read_result()

            # Convert FPGA logit → predicted digit (argmax layer)
            fpga_pred = final_logit  # only 1 neuron → output is class

            self.status.config(
                text=f"Python: {pred}  |  FPGA: {fpga_pred}"
            )

        except Exception as e:
            messagebox.showerror("UART Error", str(e))
            self.status.config(text="UART failed")



if __name__ == "__main__":
    root = tk.Tk()
    gui = DigitGUI(root)
    fpga = FPGALoader(port="/dev/ttyUSB0", baud=115200)
    root.mainloop()
