# eyeriss_fpga

FPGA-Based Systolic Array Accelerator for GEMM Operations, support up to 16x16 PE array. 

This project was built for Vivado 2025.1 and uses a build script avoid storing project information on the repo.

The default FPGA device for this branch is xc7z100ffg900-2.
You may switch to another part by replacing the device string in the build scripts `ws_fpga/scripts/build_project.tcl`, provided that the target FPGA offers sufficient logic, BRAM, and DSP resources for the 16x16 systolic array configuration. The constraint file also needs to be updated to match your board's pinout and clock configuration. 

### Utilization on xc7z100ffg900-2

| Resource | Used  | Available | Utilization |
|----------|-------|-----------|-------------|
| LUT      | 59235 | 277,400   | 21.4%       |
| FF       | 77925 | 554,800   | 14.0%       |
| BRAM_18K | 64    | 755       | 8.5%        |
| DSP48E1  | 512   | 2020      | 25.3%       |


To open the Vivado project:

1. Move to ws_fpga/scripts
2. Run `vivado -mode tcl -source build_project.tcl`
3. Type `exit` to exit Vivado tcl mode
3. Move to ../project
4. Run `vivado ws_fpga.xpr &`