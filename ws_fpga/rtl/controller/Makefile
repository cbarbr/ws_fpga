all: test

test: controller_tb.sv controller.sv
	iverilog -g2012 -Wall -Wno-timescale $^ -o $@
