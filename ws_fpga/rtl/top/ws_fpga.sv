`ifndef WS_FPGA
    `define WS_FPGA

    module ws_fpga(
        input ext_clk_n,
        input ext_clk_p,
        input ext_rstn,
        input uart_txd_in,
        output uart_rxd_out
    );

    localparam ROWS = 16;
    localparam COLS = 16;

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
    logic [0:ROWS - 1] [63:0] mem_psum_din;

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

    // supporting block design (16x16)
    ws_fpga_support ws_fpga_support_i(
        .clk100          (clk100),
        .clk100_aresetn  (clk100_aresetn),
        .done            (done),
        .ext_clk_n       (ext_clk_n),
        .ext_clk_p       (ext_clk_p),
        .ext_rstn        (ext_rstn),
        .go              (go),
    
        // iact mem ports 0..15
        .iact_addr_0     (axi_iact_mem_addr[0]),
        .iact_addr_1     (axi_iact_mem_addr[1]),
        .iact_addr_2     (axi_iact_mem_addr[2]),
        .iact_addr_3     (axi_iact_mem_addr[3]),
        .iact_addr_4     (axi_iact_mem_addr[4]),
        .iact_addr_5     (axi_iact_mem_addr[5]),
        .iact_addr_6     (axi_iact_mem_addr[6]),
        .iact_addr_7     (axi_iact_mem_addr[7]),
        .iact_addr_8     (axi_iact_mem_addr[8]),
        .iact_addr_9     (axi_iact_mem_addr[9]),
        .iact_addr_10    (axi_iact_mem_addr[10]),
        .iact_addr_11    (axi_iact_mem_addr[11]),
        .iact_addr_12    (axi_iact_mem_addr[12]),
        .iact_addr_13    (axi_iact_mem_addr[13]),
        .iact_addr_14    (axi_iact_mem_addr[14]),
        .iact_addr_15    (axi_iact_mem_addr[15]),
    
        .iact_rdata_0    (axi_iact_mem_dout[0]),
        .iact_rdata_1    (axi_iact_mem_dout[1]),
        .iact_rdata_2    (axi_iact_mem_dout[2]),
        .iact_rdata_3    (axi_iact_mem_dout[3]),
        .iact_rdata_4    (axi_iact_mem_dout[4]),
        .iact_rdata_5    (axi_iact_mem_dout[5]),
        .iact_rdata_6    (axi_iact_mem_dout[6]),
        .iact_rdata_7    (axi_iact_mem_dout[7]),
        .iact_rdata_8    (axi_iact_mem_dout[8]),
        .iact_rdata_9    (axi_iact_mem_dout[9]),
        .iact_rdata_10   (axi_iact_mem_dout[10]),
        .iact_rdata_11   (axi_iact_mem_dout[11]),
        .iact_rdata_12   (axi_iact_mem_dout[12]),
        .iact_rdata_13   (axi_iact_mem_dout[13]),
        .iact_rdata_14   (axi_iact_mem_dout[14]),
        .iact_rdata_15   (axi_iact_mem_dout[15]),
    
        .iact_wdata_0    (axi_iact_mem_din[0]),
        .iact_wdata_1    (axi_iact_mem_din[1]),
        .iact_wdata_2    (axi_iact_mem_din[2]),
        .iact_wdata_3    (axi_iact_mem_din[3]),
        .iact_wdata_4    (axi_iact_mem_din[4]),
        .iact_wdata_5    (axi_iact_mem_din[5]),
        .iact_wdata_6    (axi_iact_mem_din[6]),
        .iact_wdata_7    (axi_iact_mem_din[7]),
        .iact_wdata_8    (axi_iact_mem_din[8]),
        .iact_wdata_9    (axi_iact_mem_din[9]),
        .iact_wdata_10   (axi_iact_mem_din[10]),
        .iact_wdata_11   (axi_iact_mem_din[11]),
        .iact_wdata_12   (axi_iact_mem_din[12]),
        .iact_wdata_13   (axi_iact_mem_din[13]),
        .iact_wdata_14   (axi_iact_mem_din[14]),
        .iact_wdata_15   (axi_iact_mem_din[15]),
    
        .iact_we_0       (axi_iact_mem_we[0]),
        .iact_we_1       (axi_iact_mem_we[1]),
        .iact_we_2       (axi_iact_mem_we[2]),
        .iact_we_3       (axi_iact_mem_we[3]),
        .iact_we_4       (axi_iact_mem_we[4]),
        .iact_we_5       (axi_iact_mem_we[5]),
        .iact_we_6       (axi_iact_mem_we[6]),
        .iact_we_7       (axi_iact_mem_we[7]),
        .iact_we_8       (axi_iact_mem_we[8]),
        .iact_we_9       (axi_iact_mem_we[9]),
        .iact_we_10      (axi_iact_mem_we[10]),
        .iact_we_11      (axi_iact_mem_we[11]),
        .iact_we_12      (axi_iact_mem_we[12]),
        .iact_we_13      (axi_iact_mem_we[13]),
        .iact_we_14      (axi_iact_mem_we[14]),
        .iact_we_15      (axi_iact_mem_we[15]),
    
        // psum mem ports 0..15
        .psum_addr_0     (axi_psum_mem_addr[0]),
        .psum_addr_1     (axi_psum_mem_addr[1]),
        .psum_addr_2     (axi_psum_mem_addr[2]),
        .psum_addr_3     (axi_psum_mem_addr[3]),
        .psum_addr_4     (axi_psum_mem_addr[4]),
        .psum_addr_5     (axi_psum_mem_addr[5]),
        .psum_addr_6     (axi_psum_mem_addr[6]),
        .psum_addr_7     (axi_psum_mem_addr[7]),
        .psum_addr_8     (axi_psum_mem_addr[8]),
        .psum_addr_9     (axi_psum_mem_addr[9]),
        .psum_addr_10    (axi_psum_mem_addr[10]),
        .psum_addr_11    (axi_psum_mem_addr[11]),
        .psum_addr_12    (axi_psum_mem_addr[12]),
        .psum_addr_13    (axi_psum_mem_addr[13]),
        .psum_addr_14    (axi_psum_mem_addr[14]),
        .psum_addr_15    (axi_psum_mem_addr[15]),
    
        .psum_rdata_0    (axi_psum_mem_dout[0]),
        .psum_rdata_1    (axi_psum_mem_dout[1]),
        .psum_rdata_2    (axi_psum_mem_dout[2]),
        .psum_rdata_3    (axi_psum_mem_dout[3]),
        .psum_rdata_4    (axi_psum_mem_dout[4]),
        .psum_rdata_5    (axi_psum_mem_dout[5]),
        .psum_rdata_6    (axi_psum_mem_dout[6]),
        .psum_rdata_7    (axi_psum_mem_dout[7]),
        .psum_rdata_8    (axi_psum_mem_dout[8]),
        .psum_rdata_9    (axi_psum_mem_dout[9]),
        .psum_rdata_10   (axi_psum_mem_dout[10]),
        .psum_rdata_11   (axi_psum_mem_dout[11]),
        .psum_rdata_12   (axi_psum_mem_dout[12]),
        .psum_rdata_13   (axi_psum_mem_dout[13]),
        .psum_rdata_14   (axi_psum_mem_dout[14]),
        .psum_rdata_15   (axi_psum_mem_dout[15]),
    
        // weight mem ports 0..15
        .weight_addr_0   (axi_weight_mem_addr[0]),
        .weight_addr_1   (axi_weight_mem_addr[1]),
        .weight_addr_2   (axi_weight_mem_addr[2]),
        .weight_addr_3   (axi_weight_mem_addr[3]),
        .weight_addr_4   (axi_weight_mem_addr[4]),
        .weight_addr_5   (axi_weight_mem_addr[5]),
        .weight_addr_6   (axi_weight_mem_addr[6]),
        .weight_addr_7   (axi_weight_mem_addr[7]),
        .weight_addr_8   (axi_weight_mem_addr[8]),
        .weight_addr_9   (axi_weight_mem_addr[9]),
        .weight_addr_10  (axi_weight_mem_addr[10]),
        .weight_addr_11  (axi_weight_mem_addr[11]),
        .weight_addr_12  (axi_weight_mem_addr[12]),
        .weight_addr_13  (axi_weight_mem_addr[13]),
        .weight_addr_14  (axi_weight_mem_addr[14]),
        .weight_addr_15  (axi_weight_mem_addr[15]),
    
        .weight_rdata_0  (axi_weight_mem_dout[0]),
        .weight_rdata_1  (axi_weight_mem_dout[1]),
        .weight_rdata_2  (axi_weight_mem_dout[2]),
        .weight_rdata_3  (axi_weight_mem_dout[3]),
        .weight_rdata_4  (axi_weight_mem_dout[4]),
        .weight_rdata_5  (axi_weight_mem_dout[5]),
        .weight_rdata_6  (axi_weight_mem_dout[6]),
        .weight_rdata_7  (axi_weight_mem_dout[7]),
        .weight_rdata_8  (axi_weight_mem_dout[8]),
        .weight_rdata_9  (axi_weight_mem_dout[9]),
        .weight_rdata_10 (axi_weight_mem_dout[10]),
        .weight_rdata_11 (axi_weight_mem_dout[11]),
        .weight_rdata_12 (axi_weight_mem_dout[12]),
        .weight_rdata_13 (axi_weight_mem_dout[13]),
        .weight_rdata_14 (axi_weight_mem_dout[14]),
        .weight_rdata_15 (axi_weight_mem_dout[15]),
    
        .weight_wdata_0  (axi_weight_mem_din[0]),
        .weight_wdata_1  (axi_weight_mem_din[1]),
        .weight_wdata_2  (axi_weight_mem_din[2]),
        .weight_wdata_3  (axi_weight_mem_din[3]),
        .weight_wdata_4  (axi_weight_mem_din[4]),
        .weight_wdata_5  (axi_weight_mem_din[5]),
        .weight_wdata_6  (axi_weight_mem_din[6]),
        .weight_wdata_7  (axi_weight_mem_din[7]),
        .weight_wdata_8  (axi_weight_mem_din[8]),
        .weight_wdata_9  (axi_weight_mem_din[9]),
        .weight_wdata_10 (axi_weight_mem_din[10]),
        .weight_wdata_11 (axi_weight_mem_din[11]),
        .weight_wdata_12 (axi_weight_mem_din[12]),
        .weight_wdata_13 (axi_weight_mem_din[13]),
        .weight_wdata_14 (axi_weight_mem_din[14]),
        .weight_wdata_15 (axi_weight_mem_din[15]),
    
        .weight_we_0     (axi_weight_mem_we[0]),
        .weight_we_1     (axi_weight_mem_we[1]),
        .weight_we_2     (axi_weight_mem_we[2]),
        .weight_we_3     (axi_weight_mem_we[3]),
        .weight_we_4     (axi_weight_mem_we[4]),
        .weight_we_5     (axi_weight_mem_we[5]),
        .weight_we_6     (axi_weight_mem_we[6]),
        .weight_we_7     (axi_weight_mem_we[7]),
        .weight_we_8     (axi_weight_mem_we[8]),
        .weight_we_9     (axi_weight_mem_we[9]),
        .weight_we_10    (axi_weight_mem_we[10]),
        .weight_we_11    (axi_weight_mem_we[11]),
        .weight_we_12    (axi_weight_mem_we[12]),
        .weight_we_13    (axi_weight_mem_we[13]),
        .weight_we_14    (axi_weight_mem_we[14]),
        .weight_we_15    (axi_weight_mem_we[15]),
    
        .uart_tx         (uart_rxd_out),
        .uart_rx         (uart_txd_in)
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