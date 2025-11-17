all: test

test: pe_array_tb.sv pe.sv pe_array.sv
	iverilog -g2012 -Wall -Wno-timescale $^ -o $@
