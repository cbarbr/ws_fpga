// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Tue Nov  4 21:43:20 2025
// Host        : DESKTOP-4NKDD90 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/csb97/eecs570/eyeriss_fpga/rtl/glb_cluster/ip/IP_Psum_Data_SRAM_BRAM/IP_Psum_Data_SRAM_BRAM_sim_netlist.v
// Design      : IP_Psum_Data_SRAM_BRAM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "IP_Psum_Data_SRAM_BRAM,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module IP_Psum_Data_SRAM_BRAM
   (clka,
    wea,
    addra,
    dina,
    clkb,
    rstb,
    addrb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [20:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [8:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [20:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire clkb;
  wire [20:0]dina;
  wire [20:0]doutb;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [20:0]NLW_U0_douta_UNCONNECTED;
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [20:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "1" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.22535 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "IP_Psum_Data_SRAM_BRAM.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "512" *) 
  (* C_READ_DEPTH_B = "512" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "21" *) 
  (* C_READ_WIDTH_B = "21" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "512" *) 
  (* C_WRITE_DEPTH_B = "512" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "21" *) 
  (* C_WRITE_WIDTH_B = "21" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  IP_Psum_Data_SRAM_BRAM_blk_mem_gen_v8_4_11 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[20:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[20:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gydSV72FvW4hnoyUt6yZFJHfJqjRQWPUfYIuDKP0fpjrPOkLRbJGBr4Z9msYTvoIHRlYtXJ2YMY0
d1TIQb+FK4gKsTRru9wr397OxuFBsTRf4e+ZjpYZEdsnqYWcgMSzhN4yhPvO06GyZO15y/LKBxa8
3OKwxVlOLYXhv+sxdXg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WHB6Zbfa5Qi47krP9T4L8UnPOlr881dWx7UcYaZfNGIQQM0gadcoXbhucIpRaUuyOKxv6yhKveRN
h0l+N9+KX6rbZ6+TRhP9JAMuPhlpI7T42QtRv5zx9+m3ct5S0NMszbFaK8zeTAYra5BGP7BHmtkr
MpKfLK5sFyaTE/A7ACtAace9MwFTHDZdl9uUs4aY6KJlm6GaypKduiqkNugukJp5vlFPX/ZapJqG
KMtMhI6grhcuYb1FJrwRZ4jW7hs9HxddSdGLzsZ0HsBcO/qaCPTst+ZA0YIQfd5ULlFmPqq39FfO
p1P+2hEH2n+LycbMj5cn4Dxfqv2R8eucM78R3w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
SmAzQA1VEuJXtJi5vXa2Jg7YvRqAJs6PX9HTZ1YqrJw4VfonBW3726gJ81BjlizpMkcf/Uk5sFIK
aPedVhEs4xCIZylz7gXYDshtytOA/pXUID2qV9nXr8qfI+FydSADUF3ScYDZmlkclFqlZrGq6DQ7
da3lJAzt2h/iR+cczrA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iAph5JWb/chMQpLPX1UoLjQDxN5l2I8McM/k2xN5wRht7HXoE6F5yV8luDjn3zkI6vnfUYo7BaI1
mogRRx+R3XcwxvhHr+lngh4+/YLVex1TFncl+kiUMAsu3M/FjFSiqGMVMdKTNLDqr35DuZJVyuiF
lTwXob/KkbQDJiJjBEoxbt+968rKRKRyJGcqIjm4mqRBdqMcgo3HOJFG74SFsWAQrxvXfBhdLSG3
OfoLfls9XDojBjp7G83k0h82g1eeWgBfydm/OcX9o48Pst93NvI4ua8WShZL8MCvRWYqWZrrjrWi
cfUjXAF5SDACjq1/OU6arz/Idz6/a7AP/jmexw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BY49GZBxBT/gjZDPyaSWlti/sctckoR7jK6NuWdhnF9tiyNfVU7BqjjwxSnyMi0Uucv1BKHXC18h
8hQbFWnNtrq71ilURotXux7sssHlVJ2i1CsJWU18DOcBWxm2ai89uwvxDJh3TJkBJixB5KPvsDhL
lWOjTvZWPoR+Ixy+Tzo+U5Vx7z7SOakRwTrn3u7+c3vmCEBphE+HKeJExhBAoOEd0SXK5iwXaByW
D7Wb7zq6NNUmnCyaJ2BG9kGxLVsf+md7SlocuaFsYyaRZhwPyTucxIlz1tLYwcytKzx0ovoax3no
nYgzlzP/F0/PDWk9BqXgr/tuclc4EZYX0cf4ng==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qGnCvL35qO7cbUEKCL50yDv1UvezcqBz601zctKop1954QlcjemzZWZHg1zJ00nJaToNdH2S8AKX
n8hNJvbQ+x5HEGL5DoSU9m5qjXd8xxocnZ0yzuZX/dGCT8kDn3gWJR2Gz13pT+w2LQUno1fX+MsC
ehgwvjBBT6GeYjdxHi+aybQUP9AblSxX/z3vh857SGCPohEWvghOgORCHAe45YD+ZWnL62FLxMM2
c+Ozq/Au/Q4q1Yzlzcfv8Mnsvg7OqOeEamQHbuYOfdkJUuYqOwsskEWW348u7FXtsf8m7P3pZyyz
IWyTDAW4igGguMPLHfbtK/twZx8ScJQmOKzglg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hz+6K8+wh5/fukU4ZWNDXGsq6hreSVCSPP67nA6kUz9Vpjy4TtTnOrrl1BWY0ivEC7Ldyw8VI60A
VO/WPlt409LdAZdMZGsEZ1JuTZ0m9LPcgu9CPCyoMECctmd8LHE+otY6etTmYABB9syY61rk2hrv
RgbcyT/HCK9TzWxSm+XMqvx2nvagCLkMDPh/JZv51fj2zcKaBPnxsz8rnDipaeo0fEyVRC3Y1F/V
U3RmXojBjIumPHSJkQ537dENJEIA0Ra65u8EM/+ItUn1bcryLcIbKy1xGadrHmHdHRUoRcAodO2C
B48bNVeL0VnGg8P9ACIB04lMNzn5p6A1tPOb4Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
YDpb+UeT0rJ543Q8wCo2xSS3gpVAT+JoStgBlV5IMjJoUOWkiOPn691FGChmDi3BTq5NxC73KHHR
1galACCjeTGq6cv+0Zc2Ocm1oobdrnSPHp7TMDr5Zle8FX6WywJCiGdoWBODggZSlbOASIK/PVfY
cZM2z60M6RSvzsi3TnYHiKYHpju8THVoSgRd6r31GcbiSy9TjjARERXan0OVc79jGuAg90mmDEEq
91eqmn6NZ9yLI2fgBjFUZbtFCpmJ8WGxOL1h39niWnRK3ZXnk8jcpnZUlxLbYTPO0Z3vVr1zrvcn
RVQloU0OLqg7M95zSs7NtX5Vzvb6jGbMehWV+WMMyxWmxL2XOwsAwPSeX2dI2r77pioY7X6VzH7f
/JxMAnq9udra3WGPsUkD1G0CvPkCC3zdxjpVaflY37ztX9UONhKtzMQa8lJc1IL8GhXRY3R9Lg2c
HIeXSGkpNNuFDqKT6Khe/6Casq+SjFJq+IH9IUtz6RUZTkbFb0Xhgm2P

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q+63zFEYw/LeMgxa7g8g79GGvSyIKDKD8RvvC4DHDQuGObf6n9OGZX4e17v/E/+EDEwUhsWQHFDI
Lp/aH+6fNRmhu9BEWVjxq2WRrQSl4eQjfIaSOXu2dlYh3JjRJwiUp4LteVh8RFAf5t5sRQO4dRIK
x+h28yliSgibaWEAv5FaJQ1EFbNwmgedAaSYjgf2A3afBUcBh5Uy9VHbW/zRzdhhJdsVNBjZYcFy
CVLOcf1toCRp8J4U5FlnFMOzFegUbdXFQhq2VmIhPRxWjrfTk6iR4BcMEN9UMij/5IHRAeBdksyD
CqEKsyFxosbI5KVMRZ1Ln75Zipn0JdsGekHkxg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DPUa5DLPYRWvbPnX0U412yoWvvvHyuq43DrYmDJGTK0cR5U4U6th8icYgizC1/hUAEzt19kM/hVa
zZh7bXSWACYLpcfhPY8dRTVGDZVjpbkraw0ceBryLP7jc6Jt5JdNw88tZtZpprCB7nQ25lUL82Hf
WTwL1ZqgGIvtfHhxO0JF5L5ES5giedwQ6u5ffXG3UB6ELcpQD1NvpW5lAz4mfXyvVDCAPZN581TF
tlAy79iKbPKlJ2zFn1BS2cuRIHHe2JRxwPo+0n5VD5CXVgg+lCYxTnCxI8CdyFaTumbs4IfAKwVI
wSN/btbwDUhW9hAHWHIRo+BpdJ4qeGcTDPKtsA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mf5hcf6JE6yLm0jNCQnHMVmogjLlPz6re0FwG67yvOJ3FuEorru0emIeAKEwgOoxjUYNWvcM7QAH
/UEeB2EIdjLl6glPAUda0HjtaCU2rdncVdM8k6DSMBggc4yo18Qx5F+1TD/RoBgoo0jNkMdDy6wJ
JHjqlN+R01z3yYIMQ9f2z6ZaYncbBYEp4+YAb7g1D7CSMxP5cFRpQznRpYp0JwqJfT9CHzlKgdab
8B288NxeLM66iYodiTS+GSRGLGtDWXpz9yeiuiPe6kJxae2GJyHIMSfluO/0Slc3m24DQNdbojf8
jdc0G2UnrDe5mCUTfYiDmpOWTUJOdYo0FK0N2g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28448)
`pragma protect data_block
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
Nz+mD6E=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
