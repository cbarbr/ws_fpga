`ifndef OS_FPGA
    `define OS_FPGA

    module os_fpga(
        input ext_clk100,
        input ext_rstn
    );
    
    logic go;
    logic done;

    os_fpga_support os_fpga_support_i (
        .done(done),
        .ext_clk100(ext_clk100),
        .ext_rstn(ext_rstn),
        .go(go)
    );

    endmodule : os_fpga
`endif