`timescale 1ns/100ps

module testbench;
	logic clock, resetn;


	logic [2:0][31:0] iact_in, weight_in;
	logic [2:0] in_valid;
	logic shift_acc;
	logic [31:0] data_out;
	logic out_valid;

	pe_array_3x3 dut (
		.clock(clock),
		.resetn(resetn),

		.iact_in(iact_in),
		.weight_in(weight_in),
		.in_valid(in_valid),

		.shift_acc(shift_acc),
		
		.data_out(data_out),
		.out_valid(out_valid)
	);

	// declare as [0:2] so the actual order of stuff in the matrix matches how it is assigned
	logic [0:2][0:2][31:0] weight_mat, iact_mat;

	// this is done using 16.16 fixed point, underscore is used as seperator because . can't be used
	assign weight_mat = {
		{32'h0001_0000, 32'h0002_0000, 32'h0003_0000},
		{32'h0004_0000, 32'h0007_8000, 32'h0002_0000},
		{32'h0001_0000, 32'h0004_0000, 32'h0004_0000}
	};

	assign iact_mat = {
		{32'h0002_0000, 32'h0003_0000, 32'h0008_0000},
		{32'h0006_0000, 32'h0002_0000, 32'h0005_0000},
		{32'h0002_0000, 32'h0003_0000, 32'h0003_0000}
	};

	always begin
		#10
		clock = ~clock;
	end

	initial begin
		clock = 0;
		resetn = 0;
		in_valid = 0;
		shift_acc = 0;
		weight_in = 'b0;
		iact_in = 'b0;

		@(negedge clock);
		@(negedge clock);
		@(negedge clock);

		resetn = 1;

		@(negedge clock);
		in_valid[0] = 1;
		weight_in[0] = weight_mat[0][0];
		iact_in[0] = iact_mat[0][0];

		@(negedge clock);
		in_valid[1] = 1;
		weight_in[0] = weight_mat[1][0];
		weight_in[1] = weight_mat[0][1];
		iact_in[0] = iact_mat[0][1];
		iact_in[1] = iact_mat[1][0];

		@(negedge clock);
		in_valid[2] = 1;
		weight_in[0] = weight_mat[2][0];
		weight_in[1] = weight_mat[1][1];
		weight_in[2] = weight_mat[0][2];
		iact_in[0] = iact_mat[0][2];
		iact_in[1] = iact_mat[1][1];
		iact_in[2] = iact_mat[2][0];

		@(negedge clock);
		in_valid[0] = 0;
		weight_in[1] = weight_mat[2][1];
		weight_in[2] = weight_mat[1][2];
		iact_in[1] = iact_mat[1][2];
		iact_in[2] = iact_mat[2][1];

		@(negedge clock);
		in_valid[1] = 0;
		weight_in[2] = weight_mat[2][2];
		iact_in[2] = iact_mat[2][2];

		@(negedge clock);
		in_valid[2] = 0;

		@(negedge clock);
		@(negedge clock);
		@(negedge clock);
		shift_acc = 1;

		$display("note that values will be printed in the reverse order, first value is bottom right and last is top left");
		for(int i = 0; i < 9; ++i) begin
			@(negedge clock);
			shift_acc = 0;
			$display("value: %f valid: %1d", data_out / 2.0**16, out_valid);
		end


			@(negedge clock);
			@(negedge clock);
			@(negedge clock);
			@(negedge clock);
			@(negedge clock);

		$finish;

	end
endmodule
