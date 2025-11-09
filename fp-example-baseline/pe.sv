module pe #(
	parameter ROW = 0,
	parameter COL = 0
)(
	input clock,
	input resetn,

	input [31:0] weight_in,
	input        weight_in_valid,
	input [31:0] iact_in,
	input        iact_in_valid,

	input        shift_acc,
	input [31:0] acc_in,
	input        acc_in_valid,

	output logic [31:0] weight_out,
	output logic        weight_out_valid,
	output logic [31:0] iact_out,
	output logic        iact_out_valid,

	output logic [31:0] acc_out,
	output logic        acc_out_valid
);

	logic [63:0] acc;

	logic [63:0] product;

	assign product = weight_in * iact_in;
	
	logic valid_in;
	assign valid_in = weight_in_valid & iact_in_valid;

	always @(posedge clock or negedge resetn) begin
		if(!resetn) begin
			weight_out <= 'b0;
			weight_out_valid <= 'b0;
			iact_out <= 'b0;
			iact_out_valid <= 'b0;
			acc <= 'b0;
			acc_out <= 'b0;
			acc_out_valid <= 'b0;
		end else begin
			weight_out <= weight_in;
			weight_out_valid <= weight_in_valid;
			iact_out <= iact_in;
			iact_out_valid <= iact_in_valid;

			acc <= valid_in ? acc + product : acc;
			//$display("row: %d col: %d val: %d", ROW, COL, acc[47:32]);

			acc_out <= shift_acc ? acc[47:16] : acc_in;
			acc_out_valid <= shift_acc | acc_in_valid;
		end
	end

endmodule
