`ifndef PE_ARRAY
    `define PE_ARRAY

    module pe_array
    #(
        parameter ROWS = 3,
        parameter COLS = 3
    )(
        input clk,
        input [0:COLS - 1] [31:0] iacts,
        input [0:ROWS - 1] [15:0] weights,
        input load_weight, // passthrough enable for weight
        
        output [0:ROWS - 1][47:0] psums     
    );

    logic [0:ROWS-1][0:COLS] [47:0] psum_internal;
    logic [0:ROWS][0:COLS-1] [31:0] iact_internal;
    logic [0:ROWS-1][0:COLS] [15:0] weight_internal;

    genvar i, j;

    for (i = 0; i < COLS; ++i) begin : start_col
        assign iact_internal[0][i] = iacts[i];
    end

    for (i = 0; i < ROWS; ++i) begin : start_row
        assign weight_internal[i][0] = weights[i];
        assign psum_internal[i][0] = 'b0;

        assign psums[i] = psum_internal[i][COLS];
    end

    for (i = 0; i < ROWS; ++i) begin : int_row
        for (j = 0; j < COLS; ++j) begin : int_col
            pe pe_inst(
                .clk(clk),
                .load_weight(load_weight),

                .iact_in(iact_internal[i][j]),
                .weight_in(weight_internal[i][j]),
                .psum_in(psum_internal[i][j]),

                .iact_out(iact_internal[i+1][j]),
                .weight_out(weight_internal[i][j+1]),
                .psum_out(psum_internal[i][j+1])
            );
        end
    end
    
    endmodule : pe_array
`endif