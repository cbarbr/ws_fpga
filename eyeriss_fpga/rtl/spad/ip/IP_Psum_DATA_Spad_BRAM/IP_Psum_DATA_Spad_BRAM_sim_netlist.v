// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Tue Nov  4 21:42:10 2025
// Host        : DESKTOP-4NKDD90 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/csb97/eecs570/eyeriss_fpga/rtl/spad/ip/IP_Psum_DATA_Spad_BRAM/IP_Psum_DATA_Spad_BRAM_sim_netlist.v
// Design      : IP_Psum_DATA_Spad_BRAM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "IP_Psum_DATA_Spad_BRAM,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module IP_Psum_DATA_Spad_BRAM
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [20:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [4:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [20:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [4:0]addra;
  wire [4:0]addrb;
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
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [20:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
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
  (* C_INIT_FILE = "IP_Psum_DATA_Spad_BRAM.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "32" *) 
  (* C_READ_DEPTH_B = "32" *) 
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
  (* C_WRITE_DEPTH_A = "32" *) 
  (* C_WRITE_DEPTH_B = "32" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "21" *) 
  (* C_WRITE_WIDTH_B = "21" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  IP_Psum_DATA_Spad_BRAM_blk_mem_gen_v8_4_11 U0
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28176)
`pragma protect data_block
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
CO4otQHKd5yymHwWJlmnb9Sx
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
