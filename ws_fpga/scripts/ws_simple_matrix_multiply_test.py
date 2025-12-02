#!/usr/bin/env python

"""Simple random matrix multiply test against numpy."""

import sys
import random
import numpy as np

__author__ = "Cameron Barbour"
__email__ = "cbarbr@umich.edu"
__status__ = "Development"

from ws_fpga_funcs import *


def ws_simple_matrix_multiple_test():
    """Performs a matrix multiply and prints the output."""
    ws_fpga = Device("COM3", 2000000)

    for _ in range(10):
        weight_matrix = [
            [random.randint(0x0000, 0xFFFF) for _ in range(Device.NCOLS)] for _ in range(Device.NROWS)
        ]
        iact_matrix = [
            [random.randint(0x00000000, 0x0FFF) for _ in range(Device.NCOLS)] for _ in range(Device.NROWS)
        ]
        # weight_matrix = [[8, 3, 6, 9],
        #     [8, 3, 6, 9],
        #     [8, 3, 6, 9],
        #     [8, 3, 6, 9]]
        
        # iact_matrix = [[9, 6, 3, 3],
        #     [10, 7, 4, 4],
        #     [11, 8, 5, 5],
        #     [12, 9, 6, 6]]
        # weight_matrix = [[2, 3, 0, 1],
        #     [2, 3, 0, 1],
        #     [2, 3, 0, 1],
        #     [2, 3, 0, 1]]
        
        # iact_matrix = [[1, 2, 3, 4],
        #     [0, 0, 0, 0],
        #     [0, 0, 0, 0],
        #     [0, 0, 0, 0]]
        
        psum_matrix = ws_fpga.matrix_multiply(weight_matrix, iact_matrix)
        start = time.perf_counter()
        check_psum_matrix = np.dot(
            np.array(weight_matrix, dtype=np.uint64),
            np.array(iact_matrix, dtype=np.uint64),
        )
        end = time.perf_counter()
        print(f"Matrix software multiply took {end - start:.6f} seconds")
        print("Weight Matrix:")
        print(np.array(weight_matrix))
        print("Input Activation Matrix:")
        print(np.array(iact_matrix))
        print("Output Partial Sum Matrix:")
        print(np.array(psum_matrix))
        print("Numpy Check Partial Sum Matrix:")
        print(check_psum_matrix)

        if not np.array_equal(psum_matrix, check_psum_matrix):
            print("ERROR: matrices do not match")


def main():
    """Starts the test."""
    ws_simple_matrix_multiple_test()


if __name__ == "__main__":
    main()
    sys.exit()
