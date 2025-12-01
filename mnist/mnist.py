import sys
import numpy as np
import torch
import torch.nn as nn
import torchvision.transforms as T
from PIL import Image, ImageOps
from scipy.ndimage import measurements

# =========================================================
# MNIST FC Model (10 × 784)
# =========================================================

class MNIST_FC(nn.Module):
    def __init__(self):
        super().__init__()
        self.fc = nn.Linear(784, 10)

    def forward(self, x):
        x = x.view(-1, 784)
        return self.fc(x)


# =========================================================
# Load trained model
# =========================================================

def load_model(path="mnist_fc.pth"):
    model = MNIST_FC()
    model.load_state_dict(torch.load(path, map_location="cpu"))
    model.eval()
    return model


# =========================================================
# MNIST-style preprocessing (VERY important)
# - grayscale
# - invert (white background → black)
# - resize
# - center-of-mass shift (MNIST normalization trick)
# =========================================================

def center_image(img_arr):
    """Center a MNIST digit by shifting to center of mass."""
    cy, cx = measurements.center_of_mass(img_arr)
    rows, cols = img_arr.shape
    shift_x = np.round(cols/2 - cx).astype(int)
    shift_y = np.round(rows/2 - cy).astype(int)
    shifted = np.roll(img_arr, shift_y, axis=0)
    shifted = np.roll(shifted, shift_x, axis=1)
    return shifted


def load_and_preprocess_image(path):
    # Load image
    img = Image.open(path)

    # Convert to grayscale
    img = img.convert("L")

    # Invert → MNIST digits are white on black
    # img = ImageOps.invert(img)

    # Resize to MNIST size
    img = img.resize((28, 28))

    # Convert to numpy (0–255)
    arr = np.asarray(img).astype(np.float32)

    # Normalize 0–1
    arr /= 255.0

    # Center-of-mass shifting
    arr = center_image(arr)

    # Convert to tensor
    tensor = torch.tensor(arr).view(-1)  # 784 elements
    return tensor


# =========================================================
# Quantize to INT8
# =========================================================

def quantize_int8(arr):
    arr_np = arr.numpy()
    max_abs = np.max(np.abs(arr_np))
    scale = max_abs / 127 if max_abs != 0 else 1.0
    q = np.clip(np.round(arr_np / scale), -128, 127).astype(np.int8)
    return q, scale


# =========================================================
# Pad 784×1 → 786×3
# =========================================================

def pad_iact_vector(x_q):
    K = 784
    PAD_K = 786
    PAD_N = 3

    B = np.zeros((PAD_K, PAD_N), dtype=np.int8)
    B[:K, 0] = x_q.astype(np.int8)
    return B


# =========================================================
# Write Vivado .coe (byte-wide)
# =========================================================

def write_coe(filename, mat):
    mat = mat.astype(np.int8)   # <--- FIX HERE
    
    with open(filename, "w") as f:
        f.write("memory_initialization_radix=16;\n")
        f.write("memory_initialization_vector=\n")
        flat = mat.flatten()

        for i, val in enumerate(flat):
            # convert signed int8 → unsigned byte
            hexval = int(val) & 0xFF
            if i == len(flat) - 1:
                f.write(f"{hexval:02x};\n")
            else:
                f.write(f"{hexval:02x},\n")

def extract_and_quantize_weights(model):
    W = model.fc.weight.data.cpu().numpy()  # shape: (10, 784)

    # Per-layer symmetric quantization
    max_abs = np.max(np.abs(W))
    scale = max_abs / 127 if max_abs != 0 else 1.0

    W_q = np.clip(np.round(W / scale), -128, 127).astype(np.int8)

    print(f"[+] Weight quantization scale: {scale:.6f}")

    return W_q, scale

def pad_weight_vector(w_q):
    """
    Input:  w_q = int8 array of shape (784,)
    Output: padded weight matrix of shape (786, 3)
    """
    PAD_K = 786
    PAD_N = 3

    B = np.zeros((PAD_K, PAD_N), dtype=np.int8)
    B[:784, 0] = w_q  # column 0 holds the weights

    return B

def pad_all_weights(W_q):
    """
    W_q : (10, 784) int8 FC weight matrix
    Returns list of 10 padded weight matrices, each (786, 3)
    """
    padded = []
    for i in range(W_q.shape[0]):   # for each digit class
        padded.append(pad_weight_vector(W_q[i]))
    return padded

def write_weight_padded_coe(filename, padded_list):
    """
    padded_list = list of 10 arrays, each (786, 3)
    Writes to 1 flat .coe file
    """
    with open(filename, "w") as f:
        f.write("memory_initialization_radix=16;\n")
        f.write("memory_initialization_vector=\n")

        # Flatten in class-major order
        flat = np.concatenate([p.flatten() for p in padded_list]).astype(np.int8)

        for i, val in enumerate(flat):
            hexval = int(val) & 0xFF
            if i == len(flat) - 1:
                f.write(f"{hexval:02x};\n")
            else:
                f.write(f"{hexval:02x},\n")




# =========================================================
# Master pipeline: image → prediction + .coe
# =========================================================

def run_inference(image_path, model_path="mnist_fc.pth"):
    print(f"[+] Loading model: {model_path}")
    model = load_model(model_path)

    print(f"[+] Preprocessing image: {image_path}")
    x = load_and_preprocess_image(image_path)

    # Run classifier
    with torch.no_grad():
        logits = model(x)
        pred = logits.argmax().item()

    print(f"[+] Predicted digit = {pred}")

    # Quantize to int8
    x_q, scale = quantize_int8(x)
    print(f"[+] Quantized to INT8 (scale = {scale:.6f})")

    # Pad
    iacts_padded = pad_iact_vector(x_q)

    # Save to .coe
    write_coe("iacts_padded_int8.coe", iacts_padded)

    W_q, W_scale = extract_and_quantize_weights(model)
    W_padded_list = pad_all_weights(W_q)

    write_coe("weights_padded_int8.coe", W_padded_list[0])  # write first class weights as example
    
    return pred, iacts_padded, scale, W_q, W_scale


# =========================================================
# CLI
# =========================================================

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python mnist_inference_to_coe.py <image.png>")
        sys.exit(1)

    run_inference(sys.argv[1])
