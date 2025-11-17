`ifndef PE
    `define PE

    module pe(
        input clk,
        input [31:0] iact_in,
        input [15:0] weight_in,
        input [47:0] psum_in,
        input load_weight, // passthrough enable for weight
        
        output logic [31:0] iact_out,
        output logic [15:0] weight_out, 
        output logic [47:0] psum_out
    );
        logic [15:0] weight_reg;
        logic [47:0] product;
        logic [47:0] psum;

        // multiply
        assign product = iact_in * weight_reg;

        // accumulate
        assign psum = product + psum_in;

        // weight passthrough
        assign weight_out = weight_reg;
        
        // weight stationary register
        always_ff @(posedge clk) begin
            if (load_weight) begin
                weight_reg  <= weight_in;
            end
        end

        // iact passthrough register
        always_ff @(posedge clk) begin
            iact_out <= iact_in;
        end

        // psum output register
        always_ff @(posedge clk) begin
            psum_out <= psum;
        end

    endmodule : pe
`endif