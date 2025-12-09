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

A bitfile is available for the Arty-A7 under ws_fpga/bitfile
