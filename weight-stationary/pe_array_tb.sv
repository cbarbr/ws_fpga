`ifndef PE_ARRAY_TB
    `define PE_ARRAY_TB
    module pe_array_tb();

    logic clk;
    logic [0:2] [31:0] iacts_input;
    logic [0:2] [15:0] weights_input;
    logic load_weight; // passthrough enable for weight

    logic [0:2] [47:0] psums_output;

    logic [0:4] [0:2] [31:0] iact_mat;
    logic [0:2] [0:2] [15:0] weight_mat;
    

    // Test input activation matrix
    // This matrix is skewed and transposed
    /* origional matrix
        1 2 3
        4 5 6
        7 8 9
    */
    assign iact_mat = {
        {32'd1, 32'd0, 32'd0},
        {32'd2, 32'd4, 32'd0},
        {32'd3, 32'd5, 32'd7},
        {32'd0, 32'd6, 32'd8},
        {32'd0, 32'd0, 32'd9}
    };


    
    // Test weight matrix
    // this matrix is transposed
    /* origional matrix
     9 8 7
     6 5 4
     3 2 1
    */
    assign weight_mat = {
        {16'd9, 16'd6, 16'd3},
        {16'd8, 16'd5, 16'd2},
        {16'd7, 16'd4, 16'd1}
    };

    /*
    psums should be {
        {90,114,138},
        {54,69,84},
        {18,24,30}    
    }
    */
        
    pe_array #(.ROWS(3), .COLS(3)) dut (
        .clk(clk),
        .iacts(iacts_input),
        .weights(weights_input),
        .load_weight(load_weight),
        .psums(psums_output)    
    );

    initial begin
        clk = 1'b0;
        load_weight = 1'b0;

        repeat(10) @(posedge clk);

        // load weights, 3 cycles
        $display("\n=== Loading weights ===");
        load_weight = 1'b1;
        for (int i = 0; i < 3; i++) begin
            weights_input = weight_mat[2-i];
            @(posedge clk);
        end
        load_weight = 1'b0;

        // load iact, 5 cycles
        $display("\n=== Loading iacts ===");
        for( int i = 0; i < 5; i++) begin
            @(posedge clk);
            iacts_input = iact_mat[i];
        end
        // repeat(10) begin
        //     @(posedge clk);
        //     $display("psums = {%0d, %0d, %0d}",
        //                  psums[0], psums[1], psums[2]);
        // end

        repeat(10) @(posedge clk);
        $finish();

    end

    always begin
        @(posedge clk);
        $display("psums = {%0d, %0d, %0d}",
                        psums_output[0], psums_output[1], psums_output[2]);
        $display({{"weight: \n"},
                             {"{%0d, %0d, %0d}, \n"},
                             {"{%0d, %0d, %0d}, \n"},
                             {"{%0d, %0d, %0d}"}}, 
        dut.int_row[0].int_col[0].pe_inst.weight_reg,
        dut.int_row[0].int_col[1].pe_inst.weight_reg,
        dut.int_row[0].int_col[2].pe_inst.weight_reg,
        dut.int_row[1].int_col[0].pe_inst.weight_reg,
        dut.int_row[1].int_col[1].pe_inst.weight_reg,
        dut.int_row[1].int_col[2].pe_inst.weight_reg,
        dut.int_row[2].int_col[0].pe_inst.weight_reg,
        dut.int_row[2].int_col[1].pe_inst.weight_reg,
        dut.int_row[2].int_col[2].pe_inst.weight_reg
        );
    end
    
    always begin
        #10 clk = ~clk;
    end

    
    endmodule
`endif
