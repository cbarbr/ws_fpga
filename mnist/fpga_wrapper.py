import serial
import struct
import time
from mnist import run_inference, extract_and_quantize_weights

# ---- UART Sender Helpers ----

def send_frame(ser, cmd, payload):
    sync = 0xAA
    length = len(payload)
    checksum = (sum(payload) + cmd) & 0xFF

    frame = bytes([sync, cmd, length & 0xFF, (length >> 8) & 0xFF]) \
            + payload \
            + bytes([checksum])

    ser.write(frame)
    ser.flush()
    time.sleep(0.002)


# ---- UART Transmit COE Data ----

def send_coe_over_uart(ser, cmd, coe_path):
    print(f"[UART] Sending {coe_path}...")

    # Read raw bytes from .coe (hex list)
    bytes_list = []
    with open(coe_path, "r") as f:
        for line in f:
            if line.startswith("memory") or line.startswith("mem"):
                continue
            line = line.strip().rstrip(",;")
            if len(line) == 0:
                continue

            val = int(line, 16)
            bytes_list.append(val)

    payload = bytes(bytes_list)
    send_frame(ser, cmd, payload)

    print(f"[UART] Sent {len(payload)} bytes.")


# ---- Full Wrapper ----

def send_image_to_fpga(image_path, port="/dev/ttyUSB0", baud=115200):
    # Open serial
    ser = serial.Serial(port, baudrate=baud, timeout=1)
    time.sleep(1)

    print("[+] Running inference + generating COEs...")
    pred, ia_padded, ia_scale, W_q, w_scale = run_inference(image_path)

    print(f"[+] Python prediction: {pred}")

    # Send IA activations
    send_coe_over_uart(ser, 0x01, "iacts_padded_int8.coe")

    # Send padded weights
    send_coe_over_uart(ser, 0x02, "weights_padded_int8.coe")

    # Tell FPGA to start inferencing
    send_frame(ser, 0x03, b"")

    print("[UART] Inference started on FPGA.")

    # (optional) read results
    ser.write(bytes([0xAA, 0x04, 0, 0, 0x04]))  # request results
    raw = ser.read(10)

    print("[FPGA Result]", raw.hex())

    ser.close()
