# eyeriss_fpga

FPGA-Based Systolic Array Accelerator for GEMM Operations

This project was built for Vivado 2025.1 and uses a build script avoid storing project information on the repo.

To open the Vivado project:

1. Move to ws_fpga/scripts
2. Run `vivado -mode tcl -source build_project.tcl`
3. Type `exit` to exit Vivado tcl mode
3. Move to ../project
4. Run `vivado ws_fpga.xpr &`