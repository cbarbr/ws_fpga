import tkinter as tk
from tkinter import messagebox
import numpy as np
from PIL import Image, ImageDraw, ImageOps
import serial
import time

# --- import your inference pipeline ---
from mnist import run_inference
from fpga_wrapper import send_frame, send_coe_over_uart


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
        tk.Button(root, text="Run + Send to FPGA",
                  command=self.run_and_send).grid(row=1, column=2)
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
        # Save temp PNG
        small = self.get_28x28_image()
        small.save("digit.png")

        self.status.config(text="Running inference…")

        # ---- Python side inference + COE generation ----
        pred, iacts, scale, W_q, wscale = run_inference("digit.png")

        self.status.config(text=f"Python prediction: {pred}")

        # ---- UART → send IA and weights ----
        try:
            ser = serial.Serial("COM5", 115200, timeout=1)  # update port
            time.sleep(1)

            send_coe_over_uart(ser, 0x01, "iacts_padded_int8.coe")
            send_coe_over_uart(ser, 0x02, "weights_padded_int8.coe")

            # request inference
            send_frame(ser, 0x03, b"")

            # request result
            send_frame(ser, 0x04, b"")
            data = ser.read(1)

            ser.close()

            fpga_pred = int.from_bytes(data, "little")
            self.status.config(
                text=f"Python: {pred}   |   FPGA: {fpga_pred}"
            )

        except Exception as e:
            messagebox.showerror("UART Error", str(e))
            self.status.config(text="UART failed")


if __name__ == "__main__":
    root = tk.Tk()
    gui = DigitGUI(root)
    root.mainloop()
