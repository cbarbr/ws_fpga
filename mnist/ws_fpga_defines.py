#!/usr/bin/env python

"""Defines registers and memories for WS FPGA."""

import sys

__author__ = "Cameron Barbour"
__email__ = "cbarbr@umich.edu"
__status__ = "Development"

WS_FPGA = {
    "GPIO_DATA": 0x00000000,
    "GPIO_TRI":  0x00000004,

    # weights /weights/axi_bram_ctrl_0..15/S_AXI
    "WEIGHTS_0":  0x00010000,
    "WEIGHTS_1":  0x00001000,
    "WEIGHTS_2":  0x00008000,
    "WEIGHTS_3":  0x00009000,
    "WEIGHTS_4":  0x0000A000,
    "WEIGHTS_5":  0x0000B000,
    "WEIGHTS_6":  0x0000C000,
    "WEIGHTS_7":  0x0000D000,
    "WEIGHTS_8":  0x0000E000,
    "WEIGHTS_9":  0x0000F000,
    "WEIGHTS_10": 0x00002000,
    "WEIGHTS_11": 0x00003000,
    "WEIGHTS_12": 0x00004000,
    "WEIGHTS_13": 0x00005000,
    "WEIGHTS_14": 0x00006000,
    "WEIGHTS_15": 0x00007000,

    # iacts /iacts/axi_bram_ctrl_0..15/S_AXI
    "IACTS_0":  0xC0000000,
    "IACTS_1":  0xC2000000,
    "IACTS_2":  0xD0000000,
    "IACTS_3":  0xD2000000,
    "IACTS_4":  0xD4000000,
    "IACTS_5":  0xD6000000,
    "IACTS_6":  0xD8000000,
    "IACTS_7":  0xDA000000,
    "IACTS_8":  0xDC000000,
    "IACTS_9":  0xDE000000,
    "IACTS_10": 0xC4000000,
    "IACTS_11": 0xC6000000,
    "IACTS_12": 0xC8000000,
    "IACTS_13": 0xCA000000,
    "IACTS_14": 0xCC000000,
    "IACTS_15": 0xCE000000,

    # psums /psums/axi_bram_ctrl_0..15/S_AXI
    "PSUMS_0":  0xE0000000,
    "PSUMS_1":  0xE2000000,
    "PSUMS_2":  0xF0000000,
    "PSUMS_3":  0xF2000000,
    "PSUMS_4":  0xF4000000,
    "PSUMS_5":  0xF6000000,
    "PSUMS_6":  0xF8000000,
    "PSUMS_7":  0xFA000000,
    "PSUMS_8":  0xFC000000,
    "PSUMS_9":  0xFE000000,
    "PSUMS_10": 0xE4000000,
    "PSUMS_11": 0xE6000000,
    "PSUMS_12": 0xE8000000,
    "PSUMS_13": 0xEA000000,
    "PSUMS_14": 0xEC000000,
    "PSUMS_15": 0xEE000000,
}

if __name__ == "__main__":
    sys.exit()
