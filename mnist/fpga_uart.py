import serial
import struct
import time


class FPGALoader:
    def __init__(self, port="/dev/ttyUSB0", baud=115200, timeout=1):
        self.ser = serial.Serial(port, baud, timeout=timeout)

    # ---------------------------------------------------------
    # Helper to split a list of 32-bit integers into UART words
    # ---------------------------------------------------------
    @staticmethod
    def pack_words(words):
        out = bytearray()
        for w in words:
            out.extend(struct.pack("<I", int(w) & 0xFFFFFFFF))  # Little-endian
        return out

    # ---------------------------------------------------------
    # Generic send function for 'I' or 'W'
    # ---------------------------------------------------------
    def send_words(self, cmd_char, index, words):
        assert cmd_char in ('I', 'W')

        data = self.pack_words(words)
        length = len(words)

        pkt = bytearray()
        pkt += cmd_char.encode("ascii")
        pkt += bytes([index & 0xFF])
        pkt += length.to_bytes(2, 'big')  # len_hi, len_lo
        pkt += data

        self.ser.write(pkt)
        self.ser.flush()

    # ---------------------------------------------------------
    # Load IACT column
    # ---------------------------------------------------------
    def load_iacts(self, col_idx, word_list):
        self.send_words('I', col_idx, word_list)

    # ---------------------------------------------------------
    # Load WEIGHT row
    # ---------------------------------------------------------
    def load_weights(self, row_idx, word_list):
        self.send_words('W', row_idx, word_list)

    # ---------------------------------------------------------
    # Pulse GO
    # ---------------------------------------------------------
    def start_compute(self):
        self.ser.write(b'G')
        self.ser.flush()

    # ---------------------------------------------------------
    # Read final 48-bit logit (LSB first)
    # ---------------------------------------------------------
    def read_result(self):
        self.ser.write(b'R')
        self.ser.flush()

        resp = self.ser.read(6)
        if len(resp) != 6:
            raise RuntimeError("Timeout reading result from FPGA")

        return int.from_bytes(resp, byteorder='little', signed=True)

    # ---------------------------------------------------------
    # Convenience wrapper: send full MNIST FC layer input & weights
    # ---------------------------------------------------------
    def run_inference(self, iact_matrix_cols, weight_matrix_rows):
        """
        iact_matrix_cols : list of lists of 32-bit words per column
        weight_matrix_rows : list of lists of 32-bit words per row
        """

        # Load iacts
        for col_idx, col_words in enumerate(iact_matrix_cols):
            self.load_iacts(col_idx, col_words)

        # Load weights
        for row_idx, row_words in enumerate(weight_matrix_rows):
            self.load_weights(row_idx, row_words)

        # Start computation
        self.start_compute()

        # Read final logit (only works for 1×1 output layer)
        return self.read_result()
