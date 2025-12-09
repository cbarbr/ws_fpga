# ws_fpga

FPGA-Based Systolic Array Accelerator for GEMM Operations

This project was built for Vivado 2025.1 and uses a build script avoid storing project information on the repo.

It targets a Digilent Arty-A7 dev board. Board files for installation into Vivado can be found on Digilent's website. Vivado must have Artix-7 FPGA devices installed as well.

To open the Vivado project:

1. Move to ws_fpga/scripts
2. Run `vivado -mode tcl -source build_project.tcl`
3. Type `exit` to exit Vivado tcl mode
3. Move to ../project
4. Run `vivado ws_fpga.xpr &`

A bitfile is available for the Arty-A7 under `ws_fpga/bitfiles`.

The host interface can be controlled via JTAG in Vivado Lab Manager or UART in Python.

Information for sending JTAG reads and writes can be found in https://docs.amd.com/v/u/en-US/pg174-jtag-axi.

There is a UART driver class with methods for performing 32 bit reads and writes, 64 bit reads, asserting go, checking done, loading weights, loading input activations, reading psums, and performing a 3x3 matrix multiply that utilize all listed methods. This file is `ws_fpga/scripts/ws_fpga_funcs.py`. This module requires the pyserial package.

An example of the class being used can be found in `ws_fpga/scripts/ws_simple_matrix_multiply_test.py`.

The address map is:
<img width="923" height="604" alt="image" src="https://github.com/user-attachments/assets/c07882d6-ada9-454e-a300-56c15c88de64" />

Because the host interface uses AXI infrastructure, a different interface such as PCIe, ethernet, etc. could easily be connected.
