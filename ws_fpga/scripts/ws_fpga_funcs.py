#!/usr/bin/env python

"""Provides FPGA functions for access and control."""

import sys
import time
import serial

__author__ = "Cameron Barbour"
__email__ = "cbarbr@umich.edu"
__status__ = "Development"

from ws_fpga_defines import *


class Device:
    """Device class containing UART access functions."""

    RST = bytearray([0b00000000])
    WRITE = bytearray([0b01000000])
    READ = bytearray([0b10000000])

    def __init__(self, port_name, baud_rate):
        self.port_name = port_name
        self.baud_rate = baud_rate
        self.port = self.open_port(self.port_name, self.baud_rate)

    def open_port(self, port_name, baud_rate):
        """Open a serial port with given port name and baud rate."""
        return serial.Serial(port_name, baud_rate)

    def read_32(self, address):
        """Read a 32 bit word."""
        self.port.write(self.READ)
        addr = bytearray(address.to_bytes(4, byteorder="little"))
        self.port.write(addr)
        buf = self.port.read(4)
        return int.from_bytes(buf, byteorder="little")

    def read_64(self, address):
        """Read a 64 bit word"""
        first = self.read_32(address)
        second = self.read_32(address + 4)
        return (second << 32) | first

    def write_32(self, address, data):
        """Write a 32 bit word."""
        self.port.write(self.WRITE)
        addr = bytearray(address.to_bytes(4, byteorder="little"))
        self.port.write(addr)
        write_data = bytearray(data.to_bytes(4, byteorder="little"))
        self.port.write(write_data)

    def go(self):
        """Asserts the go signal for the device."""
        self.write_32(WS_FPGA["GPIO_TRI"], 0x0)
        self.write_32(WS_FPGA["GPIO_DATA"], 0x1)
        self.write_32(WS_FPGA["GPIO_DATA"], 0x0)

    def check_done(self):
        """Checks the done signal for the device."""
        self.write_32(WS_FPGA["GPIO_TRI"], 0x1)
        return self.read_32(WS_FPGA["GPIO_DATA"]) & 1

    def write_weight_matrix(self, matrix):
        """Writes the given matrix to weight memory."""
        for row in range(3):
            for col in range(3):
                self.write_32(WS_FPGA[f"WEIGHTS_{row}"] + col * 4, matrix[row][2 - col])

    def write_iact_matrix(self, matrix):
        """Writes the given matrix to iact memory."""
        for col in range(3):
            for row in range(3):
                self.write_32(WS_FPGA[f"IACTS_{row}"] + col * 4, matrix[row][2 - col])

    def read_psum_matrix(self):
        """Reads the resulting psum matrix."""
        matrix = [[0 for _ in range(3)] for _ in range(3)]
        for col in range(3):
            for row in range(3):
                read_data = self.read_64(WS_FPGA[f"PSUMS_{row}"] + col * 8)
                matrix[row][2 - col] = read_data
        return matrix

    def matrix_multiply(self, weight_matrix, iact_matrix):
        """Returns the psum matrix given a weight and iact matrix."""
        self.write_weight_matrix(weight_matrix)
        self.write_iact_matrix(iact_matrix)
        self.go()
        while not self.check_done():
            time.sleep(0.1)
        return self.read_psum_matrix()


if __name__ == "__main__":
    sys.exit()
