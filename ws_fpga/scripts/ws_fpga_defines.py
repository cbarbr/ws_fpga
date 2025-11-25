#!/usr/bin/env python

"""Defines registers and memories for WS FPGA."""

import sys

__author__ = "Cameron Barbour"
__email__ = "cbarbr@umich.edu"
__status__ = "Development"

WS_FPGA = {
    "GPIO_DATA": 0x00000000,
    "GPIO_TRI": 0x00000004,
    "WEIGHTS_0": 0x00001000,
    "WEIGHTS_1": 0x00002000,
    "WEIGHTS_2": 0x00003000,
    "IACTS_0": 0x00004000,
    "IACTS_1": 0x00005000,
    "IACTS_2": 0x00006000,
    "PSUMS_0": 0x00008000,
    "PSUMS_1": 0x0000A000,
    "PSUMS_2": 0x0000C000,
}


if __name__ == "__main__":
    sys.exit()
