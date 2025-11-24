`ifndef MEMORIES
    `define MEMORIES

    module memories
    #(
        parameter ROWS = 3,
        parameter COLS = 3
    )(
        input clk,
        // controller psum
        input [0:ROWS - 1] [7:0] psum_mem_we,
        input [0:ROWS - 1] [31:0] psum_mem_addr,
        input [0:ROWS - 1] [63:0] psum_mem_din,

        // controller weight
        input [31:0] weight_mem_addr,
        output logic [0:ROWS - 1] [31:0] weight_mem_dout,

        // controller iact
        input [0:COLS - 1] [31:0] iact_mem_addr,
        output logic [0:COLS - 1] [31:0] iact_mem_dout,

        // axi psum
        input [0:ROWS - 1] [31:0] axi_psum_mem_addr,
        output logic [0:ROWS - 1] [63:0] axi_psum_mem_dout,

        // axi weight
        input [0:ROWS - 1] [3:0] axi_weight_mem_we,
        input [0:ROWS - 1] [31:0] axi_weight_mem_addr,
        input [0:ROWS - 1] [31:0] axi_weight_mem_din,
        input [0:ROWS - 1] [31:0] axi_weight_mem_dout,

        // axi iact
        input [0:COLS - 1] [3:0] axi_iact_mem_we,
        input [0:COLS - 1] [31:0] axi_iact_mem_addr,
        input [0:COLS - 1] [31:0] axi_iact_mem_din,
        input [0:COLS - 1] [31:0] axi_iact_mem_dout
    );
	
	logic [0:COLS - 1] [31:0] iact_mem_dout_reg_0;

    genvar i;

    for (i=0; i < ROWS; i++) begin
        weight_mem weight_mem_inst (
            .clka(clk),    // input wire clka
            .wea(4'h0),      // input wire [3 : 0] wea
            .addra(weight_mem_addr << 2),  // input wire [31 : 0] addra
            .dina(32'h0),    // input wire [31 : 0] dina
            .douta(weight_mem_dout[i]),  // output wire [31 : 0] douta
            .clkb(clk),    // input wire clkb
            .web(axi_weight_mem_we[i]),      // input wire [3 : 0] web
            .addrb(axi_weight_mem_addr[i]),  // input wire [31 : 0] addrb
            .dinb(axi_weight_mem_din[i]),    // input wire [31 : 0] dinb
            .doutb(axi_weight_mem_dout[i])  // output wire [31 : 0] doutb
        );
        psum_mem psum_mem_inst (
            .clka(clk),    // input wire clka
            .wea(psum_mem_we[i]),      // input wire [3 : 0] wea
            .addra(psum_mem_addr[i] << 2),  // input wire [31 : 0] addra
            .dina(psum_mem_din[i]),    // input wire [63 : 0] dina
            .douta(),  // output wire [63 : 0] douta
            .clkb(clk),    // input wire clkb
            .web(4'h0),      // input wire [3 : 0] web
            .addrb(axi_psum_mem_addr[i]),  // input wire [31 : 0] addrb
            .dinb(32'h0),    // input wire [63 : 0] dinb
            .doutb(axi_psum_mem_dout[i])  // output wire [63 : 0] doutb
        );
    end

    for (i=0; i < COLS; i++) begin 
        iact_mem iact_mem_inst (
            .clka(clk),    // input wire clka
            .wea(4'h0),      // input wire [3 : 0] wea
            .addra(iact_mem_addr[i] << 2),  // input wire [31 : 0] addra
            .dina(32'h0),    // input wire [31 : 0] dina
            .douta(iact_mem_dout_reg_0[i]),  // output wire [31 : 0] douta
            .clkb(clk),    // input wire clkb
            .web(axi_iact_mem_we[i]),      // input wire [3 : 0] web
            .addrb(axi_iact_mem_addr[i]),  // input wire [31 : 0] addrb
            .dinb(axi_iact_mem_din[i]),    // input wire [31 : 0] dinb
            .doutb(axi_iact_mem_dout[i])  // output wire [31 : 0] doutb
        );
		
		always_ff @(posedge clk) begin
			iact_mem_dout[i] <= iact_mem_dout_reg_0[i];
		end
    end

    endmodule : memories
`endif