#!/usr/bin/env python

"""Provides FPGA functions for access and control."""

import sys
import random
import numpy as np

__author__ = "Cameron Barbour"
__email__ = "cbarbr@umich.edu"
__status__ = "Development"

from ws_fpga_funcs import *


def ws_simple_matrix_multiple_test():
    """Performs a matrix multiply and prints the output."""
    ws_fpga = Device("COM3", 115200)

    for _ in range(100):
        weight_matrix = [
            [random.randint(0x0000, 0xFFFF) for _ in range(3)] for _ in range(3)
        ]
        iact_matrix = [
            [random.randint(0x0000, 0xFFFFFFF) for _ in range(3)] for _ in range(3)
        ]

        psum_matrix = ws_fpga.matrix_multiply(weight_matrix, iact_matrix)
        check_psum_matrix = np.dot(
            np.array(weight_matrix, dtype=np.uint64),
            np.array(iact_matrix, dtype=np.uint64),
        )

        if not np.array_equal(psum_matrix, check_psum_matrix):
            print("ERROR: matrices do not match")


def main():
    """Starts the test."""
    ws_simple_matrix_multiple_test()


if __name__ == "__main__":
    main()
    sys.exit()
