`ifndef WS_FPGA
    `define WS_FPGA

    module ws_fpga(
        input ext_clk100,
        input ext_rstn
    );

    localparam ROWS = 3;
    localparam COLS = 3;

    // clocks and resets
    logic clk100;
    logic clk100_aresetn;
    
    // controller logic
    logic go;
    logic done;
    logic load_weight;

    // controller addressing output
    logic [31:0] weight_addr;
    logic [0:COLS - 1] [31:0] iact_addr;
    logic [0:ROWS - 1] [31:0] psum_addr;
    logic [0:COLS - 1] load_iact;
    logic [0:ROWS - 1] psum_valid;

    // mem enable logic
    logic [0:ROWS - 1] [7:0] psum_mem_we;

    // pe array data i/o
    logic [0:COLS - 1] [31:0] iacts;
    logic [0:ROWS - 1] [15:0] weights;
    logic [0:ROWS - 1] [47:0] psums;

    // mem weight output
    logic [0:ROWS - 1] [31:0] mem_weight_dout;
    logic [0:ROWS - 1] [47:0] mem_psum_din;

    // axi memory signals
    logic [0:ROWS - 1] [31:0] axi_psum_mem_addr;
    logic [0:ROWS - 1] [63:0] axi_psum_mem_dout;

    logic [0:ROWS - 1] [3:0] axi_weight_mem_we;
    logic [0:ROWS - 1] [31:0] axi_weight_mem_addr;
    logic [0:ROWS - 1] [31:0] axi_weight_mem_din;
    logic [0:ROWS - 1] [31:0] axi_weight_mem_dout;

    logic [0:COLS - 1] [3:0] axi_iact_mem_we;
    logic [0:COLS - 1] [31:0] axi_iact_mem_addr;
    logic [0:COLS - 1] [31:0] axi_iact_mem_din;
    logic [0:COLS - 1] [31:0] axi_iact_mem_dout;

    // supporting block design
    os_fpga_support os_fpga_support_i(
        .clk100(clk100),
        .clk100_aresetn(clk100_aresetn),
        .done(done),
        .ext_clk100(ext_clk100),
        .ext_rstn(ext_rstn),
        .go(go),
        .iact_addr_0(axi_iact_mem_addr[0]),
        .iact_addr_1(axi_iact_mem_addr[1]),
        .iact_addr_2(axi_iact_mem_addr[2]),
        .iact_rdata_0(axi_iact_mem_dout[0]),
        .iact_rdata_1(axi_iact_mem_dout[1]),
        .iact_rdata_2(axi_iact_mem_dout[2]),
        .iact_wdata_0(axi_iact_mem_din[0]),
        .iact_wdata_1(axi_iact_mem_din[1]),
        .iact_wdata_2(axi_iact_mem_din[2]),
        .iact_we_0(axi_iact_mem_we[0]),
        .iact_we_1(axi_iact_mem_we[1]),
        .iact_we_2(axi_iact_mem_we[2]),
        .psum_addr_0(axi_psum_mem_addr[0]),
        .psum_addr_1(axi_psum_mem_addr[1]),
        .psum_addr_2(axi_psum_mem_addr[2]),
        .psum_rdata_0(axi_psum_mem_dout[0]),
        .psum_rdata_1(axi_psum_mem_dout[1]),
        .psum_rdata_2(axi_psum_mem_dout[2]),
        .weight_addr_0(axi_weight_mem_addr[0]),
        .weight_addr_1(axi_weight_mem_addr[1]),
        .weight_addr_2(axi_weight_mem_addr[2]),
        .weight_rdata_0(axi_weight_mem_dout[0]),
        .weight_rdata_1(axi_weight_mem_dout[1]),
        .weight_rdata_2(axi_weight_mem_dout[2]),
        .weight_wdata_0(axi_weight_mem_din[0]),
        .weight_wdata_1(axi_weight_mem_din[1]),
        .weight_wdata_2(axi_weight_mem_din[2]),
        .weight_we_0(axi_weight_mem_we[0]),
        .weight_we_1(axi_weight_mem_we[1]),
        .weight_we_2(axi_weight_mem_we[2])
    );

    // controller
    controller 
    #(
        .ARRAY_ROWS(ROWS),
        .ARRAY_COLS(COLS)
    )
    controller_i
    (
        .clk(clk100),
        .rst_n(clk100_aresetn),
        .go(go),
        .done(done),
        .load_weight(load_weight),
        .weight_addr(weight_addr),
        .iact_addr(iact_addr),
        .psum_addr(psum_addr),
        .load_iact(load_iact),
        .psum_valid(psum_valid)
    );

    genvar i;

    for (i = 0; i < ROWS; ++i) begin
        assign psum_mem_we[i] = {2'b0, {6{psum_valid[i]}}};

        assign weights[i] = mem_weight_dout[i][15:0];

        assign mem_psum_din[i] = {16'b0, psums[i]};
    end

    // memory
    memories
    #(
        .ROWS(ROWS),
        .COLS(COLS)
    )
    memories_i
    (
        .clk(clk100),
        // controller
        .psum_mem_we(psum_mem_we),
        .psum_mem_addr(psum_addr),
        .psum_mem_din(mem_psum_din),
        .weight_mem_addr(weight_addr),
        .weight_mem_dout(mem_weight_dout),
        .iact_mem_addr(iact_addr),
        .iact_mem_dout(iacts),
        // AXI
        .axi_psum_mem_addr(axi_psum_mem_addr),
        .axi_psum_mem_dout(axi_psum_mem_dout),
        .axi_weight_mem_we(axi_weight_mem_we),
        .axi_weight_mem_addr(axi_weight_mem_addr),
        .axi_weight_mem_din(axi_weight_mem_din),
        .axi_weight_mem_dout(axi_weight_mem_dout),
        .axi_iact_mem_we(axi_iact_mem_we),
        .axi_iact_mem_addr(axi_iact_mem_addr),
        .axi_iact_mem_din(axi_iact_mem_din),
        .axi_iact_mem_dout(axi_iact_mem_dout)
    );

    // pe array
    pe_array
    #(
        .ROWS(ROWS),
        .COLS(COLS)
    )
    pe_array_i
    (
        .clk(clk100),
        .iacts(iacts),
        .weights(weights),
        .load_weight(load_weight),
        .psums(psums)
    );

    endmodule : ws_fpga
`endif