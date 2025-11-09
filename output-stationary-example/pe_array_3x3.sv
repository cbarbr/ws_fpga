module pe_array_3x3(
	input clock, resetn,

	input logic [2:0][31:0] iact_in,
	input logic [2:0][31:0] weight_in,
	input [2:0]             in_valid,

	input             shift_acc,

	output [31:0] data_out,
	output        out_valid
);
	
	logic [3:0][2:0][31:0] weight_internal;
	logic [2:0][3:0][31:0] iact_internal;

	logic [3:0][2:0] weight_valid_internal;
	logic [2:0][3:0] iact_valid_internal;
	assign weight_internal[0] = weight_in;
	assign weight_valid_internal[0] = in_valid;

	logic [9:0] acc_valid_internal;
	logic [9:0][31:0] acc_internal;

	assign acc_internal[0] = 'b0;
	assign acc_valid_internal[0] = 'b0;

	assign data_out = acc_internal[9];
	assign out_valid = acc_valid_internal[9];

	genvar i;
	genvar j;
	generate
		for(i = 0; i < 3; ++i) begin
			assign iact_internal[i][0] = iact_in[i];
			assign iact_valid_internal[i][0] = in_valid[i];
		end

		for(i = 0; i < 3; ++i) begin
			for(j = 0; j < 3; ++j) begin
				pe #(
					.ROW(i),
					.COL(j)
				) pe_inst (
					.clock(clock),
					.resetn(resetn),

					.weight_in(weight_internal[i][j]),
					.weight_in_valid(weight_valid_internal[i][j]),
					.iact_in(iact_internal[i][j]),
					.iact_in_valid(iact_valid_internal[i][j]),

					.shift_acc(shift_acc),
					.acc_in(acc_internal[i * 3 + j]),
					.acc_in_valid(acc_valid_internal[i * 3 + j]),

					.weight_out(weight_internal[i + 1][j]),
					.weight_out_valid(weight_valid_internal[i + 1][j]),
					.iact_out(iact_internal[i][j + 1]),
					.iact_out_valid(iact_valid_internal[i][j + 1]),

					.acc_out(acc_internal[i * 3 + j + 1]),
					.acc_out_valid(acc_valid_internal[i * 3 + j + 1])
				);
			end
		end
	endgenerate

	

endmodule
