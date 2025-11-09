
all: test

test: test.sv pe.sv pe_array_3x3.sv
	iverilog -g2012 -Wall -Wno-timescale $^ -o $@
