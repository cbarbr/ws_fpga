all: test

test: controller_tb.sv controller.sv
	iverilog -g2021 -Wall -Wno-timescale $^ -o $@