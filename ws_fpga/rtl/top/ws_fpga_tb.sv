`ifndef WS_FPGA_TB
`define WS_FPGA_TB
module ws_fpga_tb();

logic clk;
logic rstn;

ws_fpga dut (
    .ext_clk100(clk),
    .ext_rstn(rstn)
);

always #5 clk = ~clk;

logic print_info;

initial begin
    clk = 1'b0;
    rstn = 1'b0;
    print_info = 1'b0;
    repeat (100) @(posedge clk);

    rstn = 1'b1;
    repeat (100) @(posedge dut.clk100);
    print_info = 1'b1;
    @(posedge dut.clk100);
    dut.go = 1'b1;

    @(posedge dut.clk100);
    dut.go = 1'b0;

    wait(dut.done == 1'b1);

    repeat(3) @(posedge dut.clk100);
    
    @(posedge dut.clk100);
    dut.go = 1'b1;

    @(posedge dut.clk100);
    dut.go = 1'b0;

    @(posedge dut.clk100);
    wait(dut.done == 1'b1);

    repeat(3) @(posedge dut.clk100);

    $finish;
end


always begin
    @(posedge clk);
    if(print_info) begin
        $display("\ncontroller state: %0d", dut.controller_i.state);
        // load weight cycle 
        $display("load_weight_cycle_cnt: %0d", dut.controller_i.load_weight_cycle_cnt);
        $display("weight address = {%0d}", dut.weight_addr);
        // compute cycle 
        $display("compute_cycle_cnt: %0d", dut.controller_i.compute_cycle_cnt);
        $display("load_iact = {%0d, %0d, %0d}", dut.load_iact[0], dut.load_iact[1], dut.load_iact[2]);
        $display("Iact address = {%0d, %0d, %0d}", dut.iact_addr[0], dut.iact_addr[1], dut.iact_addr[2]);
        $display("psums_valid = {%0d, %0d, %0d}", dut.psum_valid[0], dut.psum_valid[1], dut.psum_valid[2]);
        $display("psums address = {%0d, %0d, %0d}", dut.psum_addr[0], dut.psum_addr[1], dut.psum_addr[2]);

        $display("pe internal weights:\n{%0d, %0d, %0d},\n{%0d, %0d, %0d},\n{%0d, %0d, %0d}",
                             dut.pe_array_i.int_row[0].int_col[0].pe_inst.weight_reg,
                             dut.pe_array_i.int_row[0].int_col[1].pe_inst.weight_reg,
                             dut.pe_array_i.int_row[0].int_col[2].pe_inst.weight_reg,
                             dut.pe_array_i.int_row[1].int_col[0].pe_inst.weight_reg,
                             dut.pe_array_i.int_row[1].int_col[1].pe_inst.weight_reg,
                             dut.pe_array_i.int_row[1].int_col[2].pe_inst.weight_reg,
                             dut.pe_array_i.int_row[2].int_col[0].pe_inst.weight_reg,
                             dut.pe_array_i.int_row[2].int_col[1].pe_inst.weight_reg,
                             dut.pe_array_i.int_row[2].int_col[2].pe_inst.weight_reg
                             );
        $display("pe internal Iacts passthrough:\n {%0d, %0d, %0d},\n{%0d, %0d, %0d},\n{%0d, %0d, %0d}",
                             dut.pe_array_i.int_row[0].int_col[0].pe_inst.iact_out,
                             dut.pe_array_i.int_row[0].int_col[1].pe_inst.iact_out,
                             dut.pe_array_i.int_row[0].int_col[2].pe_inst.iact_out,
                             dut.pe_array_i.int_row[1].int_col[0].pe_inst.iact_out,
                             dut.pe_array_i.int_row[1].int_col[1].pe_inst.iact_out,
                             dut.pe_array_i.int_row[1].int_col[2].pe_inst.iact_out,
                             dut.pe_array_i.int_row[2].int_col[0].pe_inst.iact_out,
                             dut.pe_array_i.int_row[2].int_col[1].pe_inst.iact_out,
                             dut.pe_array_i.int_row[2].int_col[2].pe_inst.iact_out
                             );

        $display("psum outputs:\n{%0d, %0d, %0d}",
                dut.pe_array_i.psums[0], 
                dut.pe_array_i.psums[1], 
                dut.pe_array_i.psums[2]
                );
    end
end
endmodule : ws_fpga_tb

`endif