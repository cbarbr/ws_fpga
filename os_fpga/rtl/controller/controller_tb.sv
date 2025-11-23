`ifndef CONTROLLER_TB
`define CONTROLLER_TB

module controller_tb;

logic clk;
logic rst_n;
logic go;

localparam int ARRAY_COLS = 3;
localparam int ARRAY_ROWS = 3;
localparam COMPUTE_CYCLES = ARRAY_ROWS + ARRAY_ROWS + ARRAY_COLS; // iact_cols + ARRAY_ROWS + ARRAY_COLS
localparam LOAD_WEIGHT_CYCLES = ARRAY_COLS;

logic [31:0] weight_addr; // requesting address to block ram 
logic [0:ARRAY_COLS - 1] [31:0] iact_addr;
logic [0:ARRAY_ROWS - 1] [31:0] psum_addr;
logic load_weight;
logic [0:ARRAY_COLS - 1] load_iact;
logic [0:ARRAY_ROWS - 1] psum_valid; // store psum
logic done;



always #5 clk = ~clk;

controller #(
    .ARRAY_ROWS(ARRAY_ROWS),
    .ARRAY_COLS(ARRAY_COLS)
) dut (
    .clk(clk),
    .rst_n(rst_n),
    .go(go),

    .weight_addr(weight_addr),
    .iact_addr(iact_addr),
    .psum_addr(psum_addr),
    .load_weight(load_weight),
    .load_iact(load_iact),
    .psum_valid(psum_valid),
    .done(done)

);


initial begin
    clk = 0;
    go = 0;
    rst_n = 0;

    @(posedge clk);
    go = 1;
    rst_n = 1;
    
    @(posedge clk);
    go = 0;

    //done
    wait (done == 1'b1);

    repeat(5) @(posedge clk);
    
	 $finish;
    
end


always begin
    @(posedge clk);
    $display("\ncontroller state: %0d", dut.state);
    // load weight cycle 
    $display("load_weight_cycle_cnt: %0d", dut.load_weight_cycle_cnt);
	 $display("load weight: %0d", load_weight);
    $display("weight address = {%0d}", weight_addr);
    // compute cycle 
    $display("compute_cycle_cnt: %0d", dut.compute_cycle_cnt);
    $display("load_iact = {%0d, %0d, %0d}", load_iact[0], load_iact[1], load_iact[2]);
    $display("Iact address = {%0d, %0d, %0d}", iact_addr[0], iact_addr[1], iact_addr[2]);
    $display("psums_valid = {%0d, %0d, %0d}", psum_valid[0], psum_valid[1], psum_valid[2]);
    $display("psums address = {%0d, %0d, %0d}", psum_addr[0], psum_addr[1], psum_addr[2]);
    
                         
end


endmodule


`endif
