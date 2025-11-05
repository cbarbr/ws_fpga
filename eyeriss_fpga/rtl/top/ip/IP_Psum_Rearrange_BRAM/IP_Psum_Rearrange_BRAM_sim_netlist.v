// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Tue Nov  4 21:43:22 2025
// Host        : DESKTOP-4NKDD90 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/csb97/eecs570/eyeriss_fpga/rtl/top/ip/IP_Psum_Rearrange_BRAM/IP_Psum_Rearrange_BRAM_sim_netlist.v
// Design      : IP_Psum_Rearrange_BRAM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "IP_Psum_Rearrange_BRAM,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module IP_Psum_Rearrange_BRAM
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [11:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]doutb;
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
  wire [7:0]NLW_U0_douta_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.862099 mW" *) 
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
  (* C_INIT_FILE = "IP_Psum_Rearrange_BRAM.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4096" *) 
  (* C_READ_DEPTH_B = "4096" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
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
  (* C_WRITE_DEPTH_A = "4096" *) 
  (* C_WRITE_DEPTH_B = "4096" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  IP_Psum_Rearrange_BRAM_blk_mem_gen_v8_4_11 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[7:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 32880)
`pragma protect data_block
PH4RHr6nsMCTwuWdiZQ2koNSfCFmtHs2yKx4Z/INHzxdazasFWtghx6obQ8P4MESAl45yES/KqNG
kzSaPpbEcz6S2YavJ2Xxa9mcb4QlALb7Uz+r/wuQom9bW9AZomYy2/locCdIhOkWXRjWKfiPriNM
MFQyzLV++MmkKZZZG6kGHaVTr/4fMYjbgTga7pypb4pR2KXzaWeEZLnJdpdfM1ijB+EcvxANMXz/
ljX5fxkaRzt/kxhWBgVyLXUfjExdq/wKzHaYQb4uY0aq1YS/yvIVRt5Z4VpsG1NOmM1+lz96BiLB
ugqQS0Lrkl6ZFfRE2D0E9P7svPgWxUZotHd8SAcDL0EGTbUGIoXM5GKraxOOGxv4GZOnyCsoOdJb
fHHy2UMaVoOLoACbeD/tHlpKndnm9ldK1zSZo7EEygoUfyx5V+Ws44xihglpu+uO9Iams+vf3w/5
t89A2hO+533wUxkwN9gWhYYLxOE7JyNfyFr72mYzeJAInpKXhqoFaQxqyDlbxDMF7bP69Hrz4o8w
SiZ5vbqMTColVwqzNBtreTzCIKlqSVeO3UQ8dplG0eLmLEu2mw0488I7508HuWLtJX0kulE8aCqD
HMYGBMUFhddrdAjGwbchDOqh7K7UXuegH2lRs30tQ7alTIJy1fLvDqU2UOt5Wn4G/FwgfFCxR6U4
rTAgB0sXh90JeVp4qJ2Ho2rsB0Gsb9v3OatfR/VjiQeewCYIOqCHk97FDNj5hqBIfhXUMJk+/PhX
+Ac3e9iZ3xgf2/5i2vLtbG4G8mSm+HbeqvmKdGJoQlj8o/bry0lIeCwGIwQqXBRMQV3x3A/y5LYK
ZJ4NAW1Pa2Nf2sgX6sY84TbAeecmLpMFEjqIifB8gdiMkTA1srcOGkvvcXXJ82mCwO/1KCyoPJEJ
az9j7XNYB+oKdFrHsmyJjJaYWBjANdf0ZQH44UHyipCduXsvyqnWEnwL18UAQlvXe5nlJh2/VVUR
4jg0Bk3SNZi6QW2XC9S2jf7p1UmZVg/YbQcKXV3bzjZuFRZGFIgA9jDBtIQn5+XpqwLqzWUwYJ4y
gqAuzatrabEX+SIbOMUqawlJw87lAusV7Atj7x7NmGb6VEqnU8TgfQCMyLk8569Hhr/KAcQ7Ai5k
I0wPJDFr+phz4teYDDkkP8s+pM8lgt2PLoDxrvVnHDzBJxTbEYYATbWPBYykYBxYI8CBjIxKnD6n
P0RmdjVW5MJQmQTiY2ndHeImbAeQnm/FB2Etf9GA+fyB8eedDHjXOTCunQ32u9hx3ci06ECGNst7
8T42P8U1dWNQADJjRj0ftHWSy41hw303DUNc7WGJm1y9fTtMOPGXyIoravcs5QgOvepz5h6J2kGg
DBu0DjsF6eCOCuaVJz7DmjqDV6cveyLpqQJZt6g/QRM6o61YAD7N7567+/HWsBNcFgaMKtCzOTEq
UXggR1KxWcaWSkBFLooG9SwCHgbiewyISb/QAE38Plks5QXtRV8roRiJZf0ht6AQWtp4bINL/I11
+tZOWcHRzCOuNuZDgc5Ejs3BgF0WKGYAVsLrT4fjTWzJuwKQb+VjD19Xgy8W5uVP01wklhePqqiA
3xaYl9QvAhPYXB4IqIe0p3a8Py1Wdw009UDNvclpqBLkc5fs6qJZMyDo592vbLNVBZ+emL3NwBY2
/wWuG4j25A7rmr/sakLXsasJTpdhhr1nrk8qI9AAToDXA7YsUekp2vfS+TPVtYnt/KcyNk7syquT
nvFfot4VsevndqwLjeAd9mMc7EeuQX4tHgJykOSodhE++CiZgdPp5IanL7yazLdI9Z2JsOkT74fd
yBpNlM8isQcF65iPM8pkHLBTjliLJJxVyW8FiMgyMkO27H8NanPhbqAnVk+IuvtZskSDC2ueexZ0
CpLdEmuoZn+W6TBao/rV+rYm1RmQiiPYYNEiVIFkIQlANVsEvxbvl9C2nZU7d0EnwxmUVWDQoV+X
rx19EnReV6JEKRkBTkAoXCUVW+5s8v0iA9n7Xh7DgDxIvjnAyf3HIgIU/ojo7b1xGUgwKgdtT8sR
PsLXGSifPbsQd+2eW8sp78FYj19dP+NJbf/d1o0GzbEcEPPZ0eTNXB7nLC0p71hRYfjKTtid/Xfg
FnTkdHslTiY1UlvH4v6H6NO7zeUI7VjhB0eeq96Hm6MJ1eA4FVqI5RwbyfRWimMu0jb8ErUV7IhA
Khrr57WPnVW41DMT13NEjm4ejqbKOfMXFE0eoaDWjEMWVACp/CFZ8snDTc0pe1anqhQ7aLjOj62+
eSo5f7UfI24XtkJKFdq1/eNCKWfo5+QRS1IUW1GgWbmdNIv8p2kTvv2RhCNJdQ6Tm9UsrPHTogzm
wqrHZ6Bhuc8YNcSGHQl8ypKw1B/Kz7ni0f0iktpEDur/Io3iqX/Ylf07uOk3oYYmIiUICfQS3xSo
dFBY4STwY7Lrs/llPrtObhRUv56chnKHhWguPdrMY7GZR/scWuldeggeXJRcB7Ppcbtr3Gale6aG
DRPQl8q3KCxi8L7uvqzsLnx+TKHu++nEzRu3pv37Ok2XKsDLR+zCv61mvdzmakiDpg1ILC/sBvD3
Hgko7UEtwHMi2iIuC8NYas9VVM0gWFbIp0T4YtJLBUt1/VXR/2k+eHRtKq/svDtiWaKd3rHgaiom
tEW5X2jGqmfuKnAGf2+YakOyXdAboznUi3RDJW0GLGQqnGTwney58UA4h3NxILVxS4O/oYei416S
YEWttCdJOYMEnF2qaxHTRYLX/0MkzWicWBLubS8ScxHEvq7HMrbfpsIBySnGnwBDQL2CzOxsvk6D
HuV6Dalr6FqpNg+P/wwTPbcCKYhJ7/7M+sTdvbA53q/LXApOscC3IZgORik5mexgcFlgf6u4vLV6
DUsCn9h/X+Frn5uhEM73a13kyZIi48LDFdOh4OWmilW8LtQx0Dcf+ub4AzKGNZDsPR7XqCbAZ79c
uqvtD4jb90a7cI9KhDjUlwQaN0hdstGpU2mt+oqnbivTApjtb2Txt4XqJEJf1o+KF/ono9Sx12YH
yoR0KZA98lwH5Pd3sqGpJsha1E9fojJ+iMwopWEeuBDy/Hop1PgSaAEMH5cmfp3qPsJljdzyI6QI
4xO4UMBxDT865PXUbN2LX7qXm2E0Zan8YwaV/0EQXxRGsNLoLJLOJ+l1HVWq2K7jBPTy8wXElhye
slRndgVNBysacabdTg+66wgy5P8+im7uENfNyojxZw0OZrAjdtSkMG6KcofWzyoFNTs/MHNHzP4P
BRScRjpBCTLwdc7xWBcARvb0cnYaS6twghFYb62Pb6iTl0pBOJeYR+r9GAao5HSmBh1xc1yBmS6y
5PbsX8eJtikJzdO7HmX8A54NU8ehyWeCNsvHzSvElGMA/7nAF6C61JrKGYnrBmYDK59QcVnv5JaT
lB7Grn7r+Y6H9hCw54CdThCtuWEdM8tTt4C0J4TegL+1hMiipCduJMaCQmIdXDHW0hcp8KwGr7vu
DN4iUN+OEAsSUL4dTs9sDKZU3mlLjoIy8Lm0Tl0i7CY0gFxE0iTM6LXziuL5z3oE6PjNDOrlMnD5
9MWe8wajkKCO33FM2rJexDDr/VFszicFigrUbo2FSyIqmlOqYsZjkY7lIp1BslRV6MGYp+Jb9a0R
AX5DpgwnouMuV0tEnDtjb7Gr4h2XRtfncJ3dr/s9tNR2RjErQtG0vomxauncef9RSdZT7bPdMmO5
MAu6sBihHaCdr3kilHzIY76bbq2TPILQN9ChwtevwrAcza/BCpyC61xLFrgDBIVxZMhVyjmglhQL
/PP/tzpzQT2QYFasL2z3KnvuVDr5rQcAbA8oO6bGF744zF7MZSWSj0Iw48WaUR9Y6ZOz/Rwlnt2d
4OQ6qzqDrCLFagjqn4Ud4YlHZboeliMtospkqql2slndPu3Qtp4ueVOcl9a2MtE0yJe/GFsnJqqC
DkGUw3Xkvm1EdBvR1Y4ZroL3fJMbII/v52OXRbDpLzedeJ7c/agpWh2vMxsIipx3rbdeWnowqnte
vuy+oHiTeB46iffJ/X/iXuQaHe7h3kxzDvDbN/DXD1LpkNQCbmlA3NvJn3koNaqt86tispoI9hbV
1eBdOjETnsvyqSue1T6bCaIPR79XRCLzdCIVwm3hNMEr9YaMCwNnw/u/JQr7fiZeRrGvymCnKj23
KMzx5y4oMnKHnqvhos735Y+E+xuF/Vkbad2lfDN0728d6dF+odUKSMg/UI5VBkAc+LEOGdvnByjN
XcAWvXRC/UYuhKCL8KXJ2fZVV5Ts73ze23Zo3s+e0yjmtNRW9dazs74P1UV1bRoLN8GPtxyvpdPB
3k8oJEC2Apj52wlo8nAMdIIXUwF3tPWNwT1uqcmXh2tKwOMr1m7N4L+7hmdJbcUP0lxR8Ptqt4yx
HexFsy/muCk2iMMjFIQTlfnSWgxqtaREwSJ7sWWX6gd1OMZ7z7Wc9k8+wFk/dgwc761AdfggEbEf
rViJ61LiHqGHi+lz/NTSkY8ijia6j3+I6UD8jYSRI0HUnDGpWnDVSBrpPhSLEVkMVMEc2sOmxUoU
VDn6LGJQZNPxvTRKMN0mnaB3M4WTHFdfn6o6vsfHQNJmKs5vqgHdagZDZddH23NIgbFY276iyNvh
Kg6021brUhNXp1utOPcB5pgBwR4nR9+sEICme11ioiT/GNO3Xf4/9lrmuBBSZEH2n31FvM8v7Wv5
oMw3k66qIWPzCRNnznkoykDrMGFXuqPc9kwBEShcipVzE51pexjc39Biz3+brKHAgKqp/H6gawNc
nmRaRZY0r/chwxaFqoZHhFKmP+gkzIHqoiPR4knO3y/E+yVFvqklbvT3x3nAmtweAzr7M//QQGDz
HkFoGHCGLxHT732+JmPsOqN6WKo5WAtWc+wko1Zeu+f71MAjbcQNPv+HITLm2ch0FooUpfB9uU6+
yO8EQ+c8ZD/+0dBC5YNnfYBDItMrgCPGQ+/w2YMtFTDw0FtoyGgyOujWK7M0fp85NTLlgupo++KX
m4JXgoG8rKh6HMcXBokl83Vcduif9Yyubm/5SMBFOzynzUaafcE25EuGsXocoPbyvLz33Ot10iN0
DdHpl1OQ1hmdsDrqT+dVOfgmp28S4Sb0hr8pb80fbi6LRhxzR3Ax8fzh0mp7ubW5plTBzO4OPGrO
+CdrC8kC00KTzL8QgZGS8Oz7zFeAeV/rsPJxN9gcoZFMEFxJaMULBQRVviVwhd2NscyJiy+Xz1cT
dN3GaEgDZE8N9BYnxI6kaOkl8A7l4oD/K/Ez2eDF4gROqDhNDYdygzc1bmwSEP8P5J1VYDntswpT
JBQBF3OH4j9G6AVvFNzeCHOGJU51oNtiQ7XO0UwZQtW1Vmqg2iYaNTyKeLi7Uq/FlZaBo5SIfLU2
+26cviCYKR/cXR4U0pWDJ6FNCvDi3QGDNR1hGkzEyGz8NCMFlcrrtL3jbQLAalOpWeRi4yyfdKk6
1zBB9Zri85TeP5/AuppMvcioMHmobmlWTN4c94yltTFfpn210pUk598ZLGvMUlqWcqahszB6WeME
1SatylCA+ZE9Ie3hlruNTVFwji5t1lOD5XD5KqbvMpD8vVVdECsubhs0bcAavPVXKKEmfpnLDWVL
TTulaJhpBnvWBmMi9nK3llE5HWG7F8USzHIjao2BSC90zty2ON5cVd/lgZD21oI8OVRnTBKkoAoS
JzXSYPWHLEKBvAuE2i0mt042hJ/gPna/UfrKwaVIvZ6js+Yb4iA4v+kB0aa5LKobIH1LQ9mtEG61
HM1UXkJ1/KjsYq/V3NrFRntXxSo4PvjHQZXrAhX+WH/ZADtpfM543HgUu9waNBU1esAx10wwRrEd
1b7Q+HVxXy2xGjCrM2ee5s/yo6ZcHkgyjO53WhElybVSP5lRe93wa3j3Dn1CxYu7m1IT+Ibb1aTe
zeq92w2Mk9lQiBCpSF4e4jpValg0rZTHpUdQ1rxJ1U1+/NJCUf7/D+jxl5ZU1OBHd8FZ58SrqLXS
BKchsMVjThvSonRmeQP7g8vRUQNKD6ZFbqOMquwojEoDCt+r32skCDOPH0TK4Ar2zzFfoPqslp9X
urLGccTEUfSQRJIdUR4m/ET2Ukqn3lQIwvxUH0UACf4wsfGXk5XZWqSOqxbvZmpmK9uv70CiZzOo
wva3em6CunddDMjLD1aswox2ZrsOJaUQsNckxZyghMKHeZURtT5lE4Tmfb+FJmHpV98t+CnxUWR/
Fn0cgE5GF8lEO3jsIgJfcZwSU3vvGEqgCodUJgL7Nfvkwg6PPKwjeTKUMoE07lD4pVwh8MMz76ou
X366zKqnl1lNvYi9zxwppg10y8ua7bvCNC08zDPJtiXPrHRNfe/meK9J7XLyEzg53IsVJHlMRxa1
4ktFL5NSwMCMTS6lxUvZS+bFnOO3aLs5zKHqz0FFTvvX5r/K2S384/h4KHKrTimvynql998/yYZ6
wHwAIXJ3f4NyQhti/ihGLczMpkXtKe+ouRcxrhxHjEnv+3MkXhylw9IF3kaSNq5AiMR+xHYlzEME
I9mDT4bpOWBMAroiN9Qn+QFjrFGgTG3Etkbb/1N6o5esug6NVaetBGLkX0PVZQd17wHh5a0Wvz6V
u4Tquf0PQ1cEuG3waA4dWsTa7I+4sbxR413xOGV2o+BszzOAYR/C3ufiupuiSoQcfOFCpoosmIFU
KfajirFBprp7Aq8sbuLupLp3VmGRiDNSeeafYh54Jl9AyuStoIvvNlXiEgTwiQ0gR+Zq8uUHS1f6
4dkiyviaqgOL4F1FBP4aCjR6qfhhv/OO14BN5C+VZ5K4hG+Zx19564AfG+d3E6VH0YD7pwhrpCQg
sx7doJ9Y56DrSdSZParbk8MUIvByo+B201cD94Z23Ccpub7D8csC6Ee6rauJrfm+8cKlcxsAVjiZ
9VfG9nHuh2wZ8KK3B6OekMYvi8pLn2+Sbr7b6u2hpRTIuBahqvTnHygTEtt51bIWTKeMj4zW7fYB
0hiE+lpMDYbLj9P3Alem5TfaRP2ThOvX6xGihHRHgzbbVVBIHk6UDcoZM32+VdZalVpoTvvwRlZY
17rByXa9BjuVxhf2cDF7GATQIMFu6sKQnRmuA+iviLPkgzrsRkjpPVRhQJXC6YhjEaUu/Bq/hQoi
d0CifjWVyv/x2Jd8wixkokbxZHhNNjpjU7huIcSsOfr6DdNBY052RPrH0VcUOzubBTXduvoar3uu
mHIcV909tNKWeuaSvbSs7waruCW9iKSbq5FhA9iFbSllApf2SPnCCByPHzJCGvIq+z19yJggztco
DCMRZyIKkbQbW8z4uYMpfzBLmN9PWgF9fveulyyB7tg4LWscvrDz+4x7WtRxvRgeL+cSF2NVOPY8
lcXerw7HXQjwtZbVobeaNkKSsSkLXOro+jl+XmKQqCNy51kU3r6nk8UzoRwtiW3Fup/CnkJt1NNA
M15vO+CYnTBwWEWmlrgrsRrQ7t+gwFlPaJSWzYWlgYjlQLSJjsV9EYa4/HnuT8CPQZNEk5621BVZ
zVsC7ncKBY9uFGXLi2POYV3VdshLl+lRnqNTLGlxqmTlZKqoAQVExBXc4WselTIZ91ylm4Ql8grU
V+5kY/2jKxgLkDzbUqCh9fV11/j2IORSS5SN1VRHlWK86LiQkVCO8ZePMiA8Jv1rDpNtd0hrK3Ef
qJ/fr2YxbgMN6sNv4/0APhiIjjpz8zBZE9ETGE24Gt1U9vp85hnaJ7PAcGjTDEohX1KUMao67Gs/
ahof0bRE5G7CERXahzEPIYmC97HZqTBMa4MGzLHZpU0gqi+E7gkPlj7T9W/qd5HK8GPqazdRgjDT
vWyz2llwXF1Xjmd2Uu8+0CF955oRTdgFszLTeH9wUDY0TyE33eS/qIXpoDPt0BCi6hOMjZhcAjl5
S5Fw2GdEomWahG9ldXdcb6bMc83HpnW4myeAMccX/qicW+CBtPmof+1RYondUKD9YiAvpTk1RjMb
ANIj4BAy9wB9aONRFxw6EwS9t8NJZgRKCOFSPuet2+4STGAABIwcEYXKcT9pawlSjXqm1Cvt/qRf
O0LwC5Cn4H9ZVevmVS9NLCCjmVtcBob0jBFHyQ4/+dYnN85NqtIHfAjNAxosYY+YFQS7d7Lr57eA
1z3MHxh6cd9oAfHc3Q4FR4GWOAgcHIv2HCIY+RAQx+y40xTwMB1vrLRv7qtK+1aT8sSrnI4CJ1ef
Po2ZOcna198ucJPyys80Nqj4oEsvXfp8MgpL35Mmh04mw4paFYprIb4FMIAH7AzkB8C3qY6orxOi
sj6qB842h9iZUBURUh2HlaNJWkySvAHU7Fc5D6wJNpwZz92sxqTjy7F6NrclJlaL9A3d8c7b53uR
wVQMuGRRT+6L+Le60Prw9lUvJpyNJsluQUUGsd4v3DRY8GZlolJZK+rSzBfb7l7ITGPm0PBOEEBG
uxrZQqX2vYYxPH38sIBSCVTiRja3A70A1wRSgVfbAwbnVUFp2pKWKzMOygi6eNLLW6uAVlsfRrZR
pyIK4qdTRxAnIedpEAhRYImaJj0P2H/Zq+tfKWup7iJa0WrB7wmKqMHuWkE942Bvll/roSE/B0ED
HeREqXueWK9GZscnvmIxV/DfeL/OypdI8whmnCVjctc2NQtjkRh3qTAp3lMOlWgsQ6FIpuIckaPw
Istl9YURgj4+G6skRuermfkTZwJTz0zU1JPkJQCCz/iB3e50+FIZE7QJC5tA6UFZpSbf3LU2wT0G
jPpI6aHTQZCoQ19g6BX7Wf4JSzcxq1Nk3hzh3wzKE1shxTCpESjSI7WkEvSq9a89UMK8YExhuxmq
Uf+dTbbywrxvX4lU7DbN9fdLt9phfW3QCbsyd8/1B+4eQAA8v8MAdKhHt201g7OwMpszLfIId8kH
iBLN0xPyoEX0MRS6f9UVFpqLO5XWLI7VV9cuIOvz3XPFmr1Z+7ymsXmxILjO+9Q8dL24BuLcmYwv
FMj6o2rqN03/DEID9as3B0MkJDRC0YZ+6/SvwF/7qFs7T71ahTsw68WAHTNwm8139ulGRPBXOSBO
18Yr/GZepICH6nzEdYPPrAdDEDMxtNaOUbCnxA3LwuJnqFVWTpT6ZVOsY0RjYo2c406yOPsH+RZh
yDbPrm+GSy3KrWxDKpk/LGFdFQucMlzGCYfhflej3LAsR+ZjQlAY4jrsuj6krQmc6b/o7lgSk689
PgcrzdWp3sIzH0NhDqROlsG492nbH+SD2GAHZS+1MyKKXbBBrCRQUH435/YEwc9F70xwknOUio+k
CVzHOTkHR2bAEKl7ri1ovv1FPjbV1MQQG/X+VBcjfbCSO1i3CyLKMJQveG7BWaGWPBrPjJroZ83X
ZswooYQ/6kGzh3udvs5JquDdHG6b8w2ABcpc+pvM1gEfIzIe4ki/Uz/fBwQTfIpHGol5FG1ezTC6
+MpNHM/Afph3RrF12cQN+LLu09pU0MwXb6PD+SVHMwierAy4wb2sr2yfDtWtIWJ6ksrevWSyfDO0
1iFRhUwpxGt2cBzioPl7lQJaK4I5IH0HgvW0M8mCkBNjBnzpTO95xNeWO4vvap7n/6EydD8GSy25
XD/TprK4odPoiL12z8ERUaORtQ5O63NlDBdZXy2NznXfckXKjpoM5ouDMSnq/pqgt1G4pVk6vM6B
KlB/Lze/YY1l48OPnk6ri4nFmoOAZEoNQbAHE3drk+zcD0XzNGIT+UVx3JAQtTFRW+O8g9ji4LZU
rymiM38AbLbIOuLo3i4MVftenorrEJ90wQGZL+yUWJXK4q9p4soJaqu6wug9g3/8BHqy+zNpCLs2
nceC2jrVBV9JfmRd8Lw5g21F4CMPWUXhTqLUGOpyW4tt0Q9qwEfYJ8iLkF6kUjKGjQxBMGDXMJbf
nuuXkurXt22OddBYwgNO5LTuLmuhFBz5YElXI1SnlXXiBO/z43BvDpX9ki1CZDLuT0yLmCVqWjnA
YAIAMBexIDYGhkVzqfgA+l8K4TRSNlmMf1VNWyTLR/X57BFyN6JuWenP8hkao/vOo5XncwmYVa9s
5hgk7rvBiM984xW7wJC9ycTca1VfyG/W2UJZP/lsOydvh7FsHrXqqDECnIc7gxQt9l96EB/9Ct5v
Vaw+UegQXPLo4camEM5F3g5sExWQJqn4JZSqlr+yeVTFrGiZm2Im1AaOQDuhfXPbugLG1V/7HAxs
pCogTqPg77pZuOndVyKn08p5/UbL6llJC/YPaDY+UwDD8uIkylSHZLlBVb3kPYRsMYmtVJD3HMWG
ZxccgyGeIjRJST3yRoJEJBtYaN0Oze8Bz8VWvnOrOkOqEA/GP9VRG4PuA8/+WCZR2tJFMeZwIgDr
tSIjTTxIjpF/eXGbs+FggvyCEUTK6/co5aHoHaJo+zCL1vJ59ghyyhoq7JJESYH+EzF0CYCwmHYh
ji2o+VO73F+AE/WOuDB7i34U8DibB6wKX+IxB1fCQmaF8CdY6YAXTQdDYF9dfSJkNO69dFvpuLcX
8BwslEVwqc81M0yfQMQ0fxvv9fq+EWmbAvwGBNBD+ZbKuc6LXehrYPmDPqn6w0bYvTGuonnTDpdW
lNgSUJQAotdjuGRuk6PD0f0D8nHBXAvexqNv8Dgm5ETKrtVUcDUbqINM4+SnJYqQu48zMeFS4qPA
nAR133InuFzTtU5c+N6nxaju+/K4XqeOPbn3POqgpk4Xn2sIsSeevCa6z5RhPLRnMg32hH9EcET/
6lRAfLg6Cdpl9AfTFA2Jh3HW+Jvp0DAff7krcfmX+SrG15Vd4qi4R1sDkX3no6leieLvz9mC40yV
lJ+FBkBGSxUDFFChEGFs5dbkJW/oEJsNEKYygiLkvzvaIYEjDiuBYIIgu0FG0K8yBMRAo5lqjTQV
j0VctIVh//5mvG/BphZiTUsBnIWEl38uLiaFqchFyWDGojWmDn0SJ1n8OGa2OklPJuEmSerBrEyf
i6NtBvB4ySgmdrQbme3cmvzVi4NYT9X6snuGt1QZazdjFg7z5Hly5C7E+4J9tfVl1JuXsobX/gph
Zxrxh0/cqM9vI3k8RHKek96BjeIkXVckHq8ULeVZuBis8TlqQ+J/dYyh0Er+1UEOMjhRB0Qg0pg5
3jTex8jozsLEqdm/IWJCCttNVaglG3hgPf0YrwdALYnnnoZB4ReOFzZPljzYED5Rakq/JJRAiSN4
dHNX/CbbtXpfORJ4sZh5fW52x2Twxd1FpQJK4BQ8i9wHe7CDQxiyRkxiYSLcuvxee+HgyPkeMRtw
NocBFKjVI3zmBcHd1VNrBGyO8LvsNzMb/kl/iUlbK90nKb4WjxuWFX8wU2lgNSA27hlUe8UNOEZF
JxHOGkDvgU6ZVMHUqVqOFOS9ilYd/EUqdrhykm6BbchvwTZLATxTRWTqNnMmCQDOWcatYkdlEKwN
swex5sBvnQug54tNV/QBm7HL/6W7zpruG6PSAy0QhPuepSwjyA+224ZMp7ccdbPdcS0qhH5kMwIz
MWovGQj0kAZn/1wHd9lIvD9lPtqtH0e7xZhI+h8750HPtaIKyx0FmVg0LzyTOhiwUReuoeTkLtf0
Y721/ic38iltLc5eNmYtqjDY1XHjb+1UI+VJ7dk0B5VE/2+/rFBVXR4JyO1YOd3ME2h3s2rREyTX
ZP1eKFYQ/dqXHjkBUTywOFCcOLSIW7BGYXNPMMNx9f2E3Cg7eyoOHHO1CTgaabTJskLlu8yEabMV
5tNOXUKhy6oN1KYqDqmiR5LdOrlT2gyrHOor37Ksn7Mb/c5RzIai4Wapam7pJt3jNMhCyQ1mJXPI
ZX0yrkRM1WnBqrumkO1CRIdfwa1PdObQjaqRZohceVr5PI3tacMOzDff6RgwWaC2/LxkNIJaKBIJ
MJ9NvKzoaFxE6LIaumZipFiefmWEvSnlDv+1f66ZZanj0KIk5PIUHBiEewO9pl4knYxUhQV7Nkmf
N2GbSZlZokqgAEf+UIzbfsns/kSdQ6Ir+eLLOqwR8K5EYgx9kC5pQGs/oKA+gwOTVO/lOH6ptNuQ
LD+D+IrjA6qOdVKfrtiBeFHI5dDOdSej/ff/1Ob/b3SOTItpiMjuvrQtsj74/yhudSu8Mae9MoV8
ehn+WICqucjKRJh58bLwn8pKmSxeqkFVU/4Dsc4HEGHiNqLC/o1byCLBL9uNvoUThg9THAoaQgwx
Q6JD9lbv6+ZGrkkS9ZHtDRhfqlJveGDUj9dQ3mqiB4WvaW8ZiDzIO3ztoLKKnwFwKfErU6JPGDkr
0cuTV7Qd9qgWQPwotduvBwZYSuLcAb1QFxz7LuEOImD3wkXI2tvyySml9zO6WoiUO1z/6rnqQCSc
eY+wMFAfex3rP4qXRk9VFpxzUMZq4XRI0S+UACyHa0MFUlm9qQrrGO6oPzoD4SqQG6dP0BPfW8d9
lmzLUSIFbN+hJQcBpD/7YVKMJZb8KlpEaT4AVEQ9AHWqABYst2/yf0nAgN0GsVzWLEsddiwkziAY
6f6kMi8k4wbWGGLhcwIe5KQnkRwbamSgm1iYURczRR91Tgim2jJ5hYqNSHlLv2f6mW8zwAiqRQA1
lusX4Ry1aajJHuYLhOz0p9Va53TSw7mx7JvPkpKcgX7bRkeC08hqFP6lt6TLEiC1Ut2wG0Xd82/X
TUC4zdiccV3STV+//twYtT6jEskZ+CTXpk1TJcHYqv3C34EUjeSOfV/3gjRR8W5cN7EOn5SvU1EA
BhQdYi+uDliOrzxKG04zwUYHHt0HgoEhkA+I2ti9r6DyoAGjSgNDZ3zdFwwTjdJBnf4afsj2xzwS
N651mUjlS+3j35hncFYFmFmO4Zw1dez2pX2mduyugf8OBFm0eIgsbJB3xrxaXgHDpPAv9Suufn8S
tALdlCGxp4OWS9nhIgr5WMN0BeyeeR7oRwkBNK0jZDUwqy8bjTeQZCIPofQZMaDvLkQ0a3oppne5
0Sbl4ybW6mkqSbai2abdsbDu2a1svj9iDPrri/dxJ24byXbFiRFcTDXcOVEQHJDBphwPv+YQnonO
jJWG1hMHwc86Mmy6bUYTHrGq6BLxnSH2vAIWtnoXKcAKTwbM7vqWvcch45LeMXW6R5LrTNYWwU/c
EswP41GEyt4fTR3HMpwqaFFytGn/5hUSd2v2xocz/Xb96ir4YRwNIU65AvokGfLYtibFiOysQqfy
o8zbssgKnQUUJW2C6hj1xRxM1I6EEzsci4J5QWnwaUpGmAGXCn8w1aerLnFUBwIGqIYFjMygJOKE
gzgnr1/T76ngU+PMKL6FJ8SxWzdWmkO3AnJBWA5/L7pIuvsij9FDUxNZ9Xa5P/Vl27FoUWJbqD+E
OrltzLnLgh1cwVtp/NV5C7fRpyHorGS8XDxmbipSouO52XqRR6GgG64Vhs+HYUF4LSt801yA0x3I
E+bR3B3lqqbaCETTGThi/GZIPTrM7duq1Q69jBZOs02o+wi4JEK3X6/NT8Tbttefr7joYAclOsOG
G/MFovezy5I5H53NWB0TCv0b7DtWW4eon/0k0g5vDXEjZ1hj0Oh2ZNQpBzbxUiJ8mx04OP3tlHSK
7J6KFyLlsaNBTsrndR83BfCf4JTimXs0cjzyU6dR8R/L89mUH+dD2sRx5zaNgFMhlTMAE2of/hTc
xPhN9MYufBcehIBQedXPk8mq1usZZAxYW4Co5bbFba0ZxM+JL4rm3v8ckfUgmHaWzVr4hPWicyUf
Z+1tOSwCuDXlry8ic6W2thy4r4SOEwXk5U6FjJ4YZe2tdKpHQn61YI4WDfjQmAgOJZR+sXTbRKIp
aEJ7GNY08SvzyFnq2Mh+VLY4ydpfAkQuYBsAAlvpAZNmGS5alpSKbpK1KJ2zv5IDmTMZM7xiqemf
zkJe/6C+Sp3DJJxf0VtcdjRoxDRLb8m3XNEQCgD+63T2yYyvnrSaf0R1zMVj1LI6ie183E58dL1h
b5/E7m50xlHiwV8FOEq4OHt+aR1dJ9bHSGO4q9y8Q8eyLX10dq7XTyprd3+mQd0SszkDyYjDkw0f
OMi73w0ffWpOBuR0RQ86cXg3Gx/3NHsaqsFwQ232XAwR8EyLtGT7T9RBIpeYSthnaPDG1VcuGE8P
UVYyjcasinDDBLJis5iwpqgQWl+rDSF96o603CqZdpaSMsM+4mejPW6yAoVomblPSvc4gxsYFvCq
GqotXjmfTMxwxH4E6oEc/PHlXQ1yaBlYD/MucyOAMNh9GiJIPp0re1zgeOvhm3PzXJnNMkTUCJN6
sCUaNfFDmrpPS+6j811A4HM0t8IohAEFlDdLdolLBV3E7+tyMir7LwmcytdxanBbEiTkNdPoTI4x
j0B8z4kcAjurC+kQGedquyH23RWZKsohP2JxA8UMNoOL7QDjY4ezdda3ZDLLrAJ7k1M6Vg77JzNk
UxNgvj1ATtllbp3WOhGnTyKGlCbmmvw/zX5yK6IKqG1C9e+G/fFTHd1GhKCOgkwSxZxTTzSjeNP9
MqbjXrL6PzV0tkupr2d8EOy5ujEo8tlMJGZk5RGAaaK3gx0hbaYomeSVLjAMVs0U42Ub/JTL34VH
KY+72MySz7tzwfLpRCwfokr1+xrRM5DdoIZo80pu14YNY5at+d45p44P/wwA+kK77OeXpn4YYBa8
UxL0V+8EAWoMgmcGpoSsjHhmWHHKQZ+nUamC8o11J8L2sIVQTj55+trVAUV+/6oo2LTCoHCUvjkJ
nZ7qOQLP09ip/r6HUU6pF1ul26eaZhI6STsRC/1tOfB5gOj17Ia3sBchsKTzcA2ASqYL2OSVs0Gh
qnp3qnMZf8ARPi+62uUiRxI3rv6LFP0QO3rF1WNnDoaig69NZbHL4d8rToUMKjW+dSIS99fAvqNK
LIR+rJrYezz1YtEx0MAptOtInvIFm4Dk1hFXOP0pHbxIQ/msXCn2C912U/VhnQVkHmbCNnwud7CW
zXTU6v3PnwjPWpGhX3FMApTIim5TM7vwJkEfNJnc4KFHA6Hdbe+XCSkLbz+RoVy1xnz6l92OOQfl
q6PuEDEZL5tr36KY8PLV+YXGYtjXKCM3hC72DxDhH02vxDPI87/Q8pvhNNjsapNHt0MOTmCstZDN
j/V9VpR33XwoihVW6EWrrej7Q4AHmVwCiJRyvxNM37siwavII3mZ8Yx95MC3F/UdhPFyir1/nF2g
/EcWBiKgr2Fgvdv8w4v99wX+MNtSP/2RWJsRTU5QxHV8Q/2d2+YAz+lLl7Q2SXp3s10dXznb2/zw
e19OKsyUbOXPsLnoDuT9A6OmMKOddIDfpMxlIQye9C3FjVOuTsMCzzJxeCQBB/uYWSXn/45+h/pn
QPqgblpWpKqYFq8+xaSDtQk5A8EaMQUL2N6RMIE/e5Mt9CnNHeUr2s/HtqFFjSPF9aimTN63GO2a
uMtYwM2x2lLiJQ3+Rh14kPseFu6IS4XFCAkLGsIxA/b+Y9B3eOjagoLAebIvbxneRPrX2ii/xp2A
tKSh3OlUbKD0HW+W5elB8yx/XtM+06iwD/3PErrwadu51+0sCAQAuollNUgjxoMLbt3o+883c0kk
MXCnslrghHoA9WDfNUjoTWU+Ot3dj+89mcyCMfPVAzlvm7w/3/ZxaRpRvoKNpWEjCBYjuTVZbLW1
UmfvMWOiHboM4C/IgratSp97Hs8QKEVxuBI0feNY/G3SAeCAqmB0iEwEtiEqUrkxAePvF0IQTg+x
Y7Q75TIdTL8hLYHph0u896LMEIc1Fp64dOxO9d+VtAtEYAj4EYLeds1aEYJVWwVTE5fK1D7mturO
qGzDDpB9vcNjkGh8pXMTuSosC1RyqVioLjaOza8ezMxkq7u9p15Y//BkmsgQA1kLhmnrQi/YEXI3
Y9LV3q26FMAF/DsyT4UDIUxEsvrN12X0xX/qh7IyGH5x+Q4a13Kf7/e3SHoFEJwiWlc++Jz9dbmF
BU0L+IoB0gq6yI+suv47Omjhuph6piU0Ix9ox2D2Kfx+YIzSDVuzOX8p000vpDmE9JWda6NedwT0
06O5DZjJSe1Dw0lzgtaf42W5ZzpyS23n1cy4lRv7ODRCR02UVVGBe6wpH5QFZRaXtCNtIbES5Xmo
EItmAkSSf0D5gAt4mouVqHS1IzJTaSumJgv2bHl1Vdh9A72ZI8MfvHOcCconCeaabMqmWLnY0iSF
1Yz2ZrJKEh99D/2Z8f/2yvNhIHUj2BUosaaTCcX+U/lF7DZ1tvLqTHwppzbkQ7tzHuJfFyk/2vPI
7AA5suVlBDOzLXb26z+gvW8M99bQ7Pf767nt4qaphaxuHYzXOGawsMTax9RDvkweakbyVf5fYjYV
sU0avTTkYV4CLoeVOE3uFufgczh7j7D1dhSHUJjt55UDyTSHq7JqcDIRv+YYbme3k30dZ9jJQOtE
gBSFQeKP4wZnsUtSKhJJxXDbhxJ9K+uM6P9baJdxWTC2VWwVvvcJRXAr5HuXDs6LuLzn44hK4uux
Lf7HErTLfQRnSPWf5Btj+spA5siBeMTvIad0VmI1xSrTyCOT7MFJTvZrf2w23oDPzgj8XB8crMb9
mVsoaIZW9GOhOUiH3V0s2AU3QbKhPAi6pEYR8agNCb9L9cCvyrWftu2gvID0ogrrUH1C41pshhv+
z7w9oQKvO0heMxrr9czz6L4PVqhtg1IdlkGzsW1rzeJ+GwquoZKmTGCKI55JmPx6UnAbJnpA3byM
NWLgD+Ze5NEz4JRiHTWd9YQQDL74jMXlFMlhmXXaG4hS9mpVd8dmuUutbSq3ryU8F7QcCL+gOnKp
bo9FcgZADBkvy/eNEPC/ao6bHeWrrqFzK1nKrdR65VGQ79b/bp7oa44hxuZcjzeBw5DJwoNMMOaJ
Ftkjik9b8s0C8iWWAlvy+RK3K8tNdmM2O0qhFJFMJlyB5ZkTPdzYkoPh70OmicIf8jCpLyZHGirj
Bx/+54Kp6qsSl1JTHPOK/wzA1tr4e4AUDb6henFpDWl2BDYJ716xhmCi51QMVkHGbrwWEzljKPiA
08HUJJwLNED06oDGUvrvOaGSacw0QHYwExt6e0Hib/b6eS0qUZxFol60LzUfSoFYm5WO6ZY5rk9O
PD0duVngZV0UE0J0tFDUViKyqbFbMDzO2l+BD4Q7Pl0FfHdur5U7Sp1guGl68as1YqVV3VSCKHdK
UaJwxnf3ly0I7Vb8vkxulSAFzneFb5l9d/FiPMtrYOy24juAPUPDbwUZRTEXHWqwoj63p5IsR+X3
UeM5K6ZIm1I93CbqLM8izZ72AiblhEqxZXpFsvlVnPN8CP9Gjh1zKwUqe+jS79xPy4W8SqW+ASG/
12vR0VAqFoeu06yPNEfUfd+8JfFqmI3+mAJic8hSFFA7+SIIvIqAzccDv+l+h4SOYXSWn7pGa3ea
HceQwGIzwS867bwTZ0Zwl4OHoCEJ/G7XzRfrCoeZaLZzxEMoOjJy05EhCJ3IiWc7XlEtU7A6oC9z
O1kSOTgnLtv3o9ZulVMZPTv7dTOnMdcMN2nO1bvjy/fCT0O8XK8HXUu3zHL64W/IXRLlL+eDXjLR
636p6wIKLA5SBOna49qSucQzzyfF/Q0DFI0KsNAqBRHxYksGz6G4S0hzkM45Ei9idTY/XIgBzXMX
LLAcxAOV9o9Riega8bPjZ4c1g9oJwx3pcOy6FfwDaTIJyhEwzDIrd4vA6FaCIoy+dK8RLtSuIsLt
64oBmaXgWtWPeBWQxoCNDRbf4zTqU5CKxH4sJ2/220TQEsXSzZFbmTvGaqrcMzkSU9Oq95CKg0vW
u1p/CIkRfobLiYAx54qCa7yda9trnWPwLYaejr0yQLCqrwwA795yPbumNqsNQcoonxJH8Was/coF
prQ2Brs+lfLI+6MpzZvzizPaswia4DWr7gpAsLH1a+ycud1Jv91m1XZDUcmnN1z21b6bKMUAR7ys
fc+31QywPiKrbMfbS/Hj18dfWfjKksywIxTi9aaJMkF1GVi5DcRzhTJz8qlMZw74p8BEyQJSD8kO
J2gNRP0L5DOpyY+UwVx13PyyeaQKnB4sQPGzz2q//GoSHkMYw96L92taUo0spNTp0aQA0A4pIGRd
K8bBnSx3csmjybYHNP4QujdWFhxY8NZqANIFQp0Bw6f1oq2IvnL9Ttc5uVYBtXLiEPCBhfrNrvXv
oBovNegoEll9oIg8uAFNz537gVgmrgcp2mhs8QNVK6BhJWMk6KpkuEv9hWErKy25s8lCS0n6bFbr
9gGq5WHIl95GfL4eK75O3nOWZrG3ThUOpCgWrHH2EvTWH4taM4ujjoslHPany+A4e7wWEdaWibDD
xvN7hqqjgxKGiYKsEXIFBHKNV3/C0gM4bUnMK/WXoa2Dlxdm+5RoK38p76IEKBYBRs4y6OqJ6/iQ
yFfT1eEDEt8VM7lzz5ycqstnzJIpIqycohCF91AssLx6r/VIy+IrzMjzH+D8MtyVqrFAtGI+oNQI
OaE0aqg98VFgKaPQw5b5KT9T9Id1rnB5oy8nGw8+pFecy9SgFUG3KCEFNDXjK/tCY1C5S/TBKJ+T
S2eaK+MnCh3nSpblP/6IqmPu8mpXI6fmqqGh7vVMi6I66p4qudMnMUH8O/awXvAia1ACF972fcGu
82Zst2VgncJqwrtqoxz6FfxsIRHBAeCdcPqbmMOy6efKm2Y1u6KExHlygbBb44TVcmdKo8msvd3w
kgwhV+u+5XxJtJcox2Bg9KCXaVUscspDh2hZxTYZBIOuA8dajR0Rl2BAqfM6Fa3n2HltTaGhDreh
KAcsXZW+5gcL5TWe9gykqpspoQPhKgZ5SQlfQmhkB3yYntT+5BclcvivN/CzZ33GMOLhVURu2SoY
0kYaRixAi5SbauopMXxueNVJI+z8KeZm2RipsJ92vIZv70UthnNw+FMxtQHr+jMYqyhuYwos0a2Z
ZNaEi3KRKydkYWCM8kw5pABpTba/ZVmcjK/1Ms4RcKV63ITaOFZ/QoZdRSRU5sdoCr+aZvQDCYL2
OrmiuLTh5mQ/uArBE3U4f5Q0C9AWHrh3r6LsrDld9TDA59rbfmp+KOhU9HNzva8q6+AMuKYB6Dbh
jmm/DgIdWAPgfBbkEDcstwN5Lwxlo3YDk07yNNUHk6x1G3No1tiTMURnXkyc7DsLjR/DOI6DcB2V
ttJHCcHeyu8oBlboL/gzXH4hxqkdRagqSaopzeA/QN/gdnwXrJ2bMPFNz/DBsHTBLFNNXrpfgz8z
Um805GiSEQFgvQvV6LIAyzjB3nmEQcI0yoYxtPrEBv7QjcwVjQm/jq+FyGyw2Vv78qbOZDjcUSCw
fONelKeHE1ohZjMIRkkdVesyM12IHQGtP0v8PaCi+0Dw+Eo4aCTz0TNvXIOGJpWLbdmSXt/YYz6B
c8CWiUtV2sU8aX1p2JhgYccLKDSwhwwqwwyrA4It/m/qyF5vaAvNZrouqXkwHPYikqArp7JnjvEz
0Qufs4/qODhsiNAbGh/x11GieflZdzbT0Z9/jY5XyXnhzf6gnTnaCaz/IWb65S74+q4mWFOfmI18
TmkM8vKqSYVlWILqAjJJTCzNHZ14rEAmADuYQZ+g+lYxIXYwFzAE9HsTbblbxhU5ToxUi3+bij9Q
a8cBBoVq8cc6my8XmaZIXim+TvUnxQuhNeQ04nZwhhmFN7YGrfwaWpLroV5c+xZEKuKITTdanLZC
r1pSSxSNGcy074bGV1QosfysrVkKEewUUynSjCF3ZL0He2pE/lEJhYlkTXRp6xeKHDbG4Oef8fAI
RXFCebeOny5bcVZ4KQyHO41c1zD/ryuaivVSSSFjh0rUDNKtcbKxiD+P6JhfNAGWy0dnCcLdH9dA
+HIVL8l1m/J/M44IimqVtIf3nE+ljW0KUXq8UvE/cl9t3WrGwvTLA+MGY9a59MnHfJFJbm1IJNkB
zO6D3WpeY+E9Xv1Y5SH4LDbdVjsAJoUqEPmWw2LU59OL00KXTF59uvAO5UgmVAlwpvNgZIQclizB
1JVMUSf2C7PDTHyeI+cw6T5hnIb5VAyryxvHoiNw6Wd0BrYUNNy3UNoisiXcvcxJrHNi2no57rrq
jyxg0ERB6JlmhAbLQfxsHF4O19NFmLZaRYWK5HQIJOUuSjxUXK6m+aTo44MN/1kCe5TJ5gq4qTpK
X2gBHNBiTXRsPsPlqoLrxkBlISZeA9YJFKpc6RpHIkT0r/TTdfwA5m1kPbOIOpiPgPJRGok4j9kE
6KKn+jW7Y9Le0E1nuD5zXvZee6zu4KS9v4PUtaFJ1wifiVq/+Y3yoIORbg0BuHrCKlikMN+1vwC6
ubYQkHVyNdFfmJ3veqPEYNr6f1BRrXB1HOykEGOOkDLhW/G4SRJdswhFDIIoLrk2lT96VjoreObe
PNaanXiClNvjjFMUok1EnCaYWr7CMQGL7OUdngmgvg2SAZyUUjH+RA3XOMJByUoecLC9B0JFhAPj
u1o/Id5gp4sYEIqLimWUmOhQc5xsRFf3Kq3W0X+DZ4Ve5LCrBlGPdeup9kBRAo58Ytg03hc20Wy1
SE/tJPBW2hNOaOj8c7SMlnXLn0mKRP0h050oMyxnmp8BHsPV6YcvKwbNn5553utnZC8IuMzOkORV
DI10na2kjqPTD2fiV3xd2bP4zhSQfi8E+H1tOuT6pXg+R1RTM2vl0vtxR13K5qZq98thHEEJ1MuQ
RbcftuDDYlmgHRPtdd+dMk4nQ/+L1DpRGUl3DQxJyiDYoKYPMqUi+ehAjRHVqjgMhWc4sZ3d6Ll9
Y/f4Mkx7jGkFrjRgHrTQJEQ+pZQJpNOW+p0D1jjgO7M4O/D83WT34mEvs+6oPClAWxxM3pahP4gD
C26PHrR9lpDPjQAjN6kucq+8rAKmRyNF21RKynqMwsAqum5YOfePkHyzqnQqpUWZKofG2XyWFIOl
tADFvHvQNANHVuXjlJ0yjGabIey8qP/F5qyv0CsLcknfnpZdd2tTnQXQIeoKz/D9ozc5qMT6bA12
rIkLbCxzi1nqfHUeyjxNJ99tAXLfOnW3G/tV8uuorF17apM4mnNExY8Qz3IkJIj84maFkaAnnRWR
/2bIN6NwgR5S6lJwvZBcNLBd8C1kFLLVQJYBzn2GrRK9hiPyy7098oK6VLwp5BvG3K7obDF2vKhJ
MasdGC9x3m4E+6wyiNW6DTP4ujYiVLzYyHBPg3Gx1Bhp09efMDFX0DINnVzP2O32P3uf5e2nxPwY
qr/ZY0yAIn7ylAIZi7nDnS9G+8+21TFGWucwQXjC/DnwhKfIFpmxd/Aifp06IIQVvB4Nl03kvtyu
YS6SfBX/Wp1UXhWZjbYcLVrRJKm8qKsgumzzSabhBjYslCHU91XQgqGCgUYSUU2DqbcGHBFc0nsQ
9Fzem47rsLZkSAa0Rr4Z5Y1LA+O8B+JaJS28Kk6TPrezMNfkgPseaXdYaxBGpK+tRtwNxusa+yoT
JiwkqNa3QoVOQb0kbsxK0R8BL95r2SwCHtgz1vFUnMNf+EzVSoO02ELaGJz2oEIF9YM3JVXC8MaJ
VFtgRkJr4NPI+KASDt8KOaYNYCo3kXe28ucnFGm0ICHpBf8l4NZ/acZHB6VERPuowyjn23Dt/Rxo
S8OTS93MW6JwW8Llp9wHfuYj7eWCG6wsEGC0oF86QW0dh7akvFzHA4usJbQHMvP4g4bAnWscxyow
wXrsmMcYd2kvFVeTMbYEegYAWWpOwIw3/fdpPozgkTI/CbmvO9iEqbTWLLHKPWTJvat/US+8ZYSu
FcYE+TbxjnRJSqiVX3QQrQPE4YO5/3q38cCeaMJCt04WTSUwYbsG2pK9M4zefa9s/unc8fAf9SVO
gy4uCtE7Qj2QHrrO5TPEkEgSZdw/dej+AtigqQ+fkrvZJgIKtDe3tfRE1PAlkRLnSNR/8ctzuHYB
OsF/9qI+/LEO1XAjXUlriVHuxZwyNxUX2pb463ulvmbqbF4KWuKOos8r88dZOdGy0gxJdPitVuua
1OEVxNq1JVBqqJTAQ63nNWEB1KtB/mn3YiVcEch3hVFOcHq29+HfTPrWSWxsAn08um1cvf8EUt97
tnXJBnvEf5u0trQjKLtgzD3iPgKflt2IfBHLKKUcTeqp5pRNGFApnR42QfzYuiupv3zYG/RwZaAO
/v/M5ZL17NvWrxM5ZSzrf9aVBWlxD7ynkHS9zwfsNQGaKCUBX7QiUNRZ5ggIWPAu7Ftnq8j0oW+6
muxwJDxXs01dAzi8NW12AW2iVXYZs//XSDNqaUWALqIzHYRnxzsuwNiWjdIZWhWax9R8FJ1lcPCl
N8pGhX+SoFw111RmZ/vyPQ7zbchRYTkA+d+H6PgeFcaJcuwcyvQCYu/H93SY/Xny+p+dOqu8I1H5
djNorsXrE11Ug1OWzk4a588g1eOKZDBcPSDOvpMxsWSuCOdMgm+a3cZkElAZbBEjnaMgridlRkgx
uTzv09amNIH2xgsqHCWGJyDqlW8KPGHQsN1ic1bW9KGHyz7NTxLAlfVfBzBw6ohxld6pJ2eTAqhl
k72qUvabu1ClB6wb+l3kbgndkV5IG1ysbfVqtYvGB7L2a7hBeZDyL9L0xFZaaxiaMVjdcfUW/26x
PcHUMJuXaakW9CanvimpX/4KTo6QrHlESAa33HRhlvXMycGi1y2osYETK6U2NX/C0O2qDkcOFNke
/V/xBqNhCVTfkY1BFl/HHMYJOfVgCeRngnb8Zw5U19Ju/ny0P0p/Q1vTKu7SM9QAoKBA6tIHQiI2
p+o7wntiV2jETTUjuAAvpYteIOAPdD5POfLoQVjV18diOT68mMHsqvyOlixf79VmBR/RoplVKffA
UFlqRaDcgqbCeYWbumpfdP2i26i2uh563t4MnsfgHHW2gEtIfrSGk8Gq0+G6Wi5XYJIDY7ZonDmf
Atmg8jF5JY9q0wl6ISjgj3dY1zH9jnR+QGXNeoZJS9zb38ybD8n9UlN2g79Lgj1HRN43Q4CE/5gt
o8/Gbi87+7RXyMyCED5GwfVg89tUa5nkULza0G1DhFOmOFKA2T5vqHiB7t7FqGZXIDgJCzhRwNhj
chAlyiNa8Cw+5aYB6sXIRGLDyIYxYRn2wWj70xu5elUT2MPJfeNNpb+XxlrXL+2kl8ZmuBkdTTVD
gHSFTKf/kM/fAmBaSOLbNx7O3wM1WF7gXYAu0/1IFCOl/nZ/FqwBKSca4ioUFylN8ld5cfM1GQG0
Y1z5LynKDsgMLZxnmFEXePR1SQu9bpzbX7uy1a2dUmR5XCfVckgOlt7jYwg5xwh1sSyy8oz8ZfRz
nlzydRr8i9dLmB4OSwh1rUyUT6HSVkZZAIoTBc1u2wuMpn89G2/nKYsC0wWsZ4ZcNfJjdljoJwNA
A4Fuy54JPCsSZpCbbMEcNitEDWjbg7WP+Qha5CzwMoNaYKRCIAJ/zV96nwRyqrU3kKWXLMvLcaX9
9SpO2j1F44YZ7H7Cci9oPokCcAzL4t9Lp+MM0JKm+UQFXbbk1Xk+BcXnliZt2i0OkqxrdUW866e4
o5Y2sjuXbccS3hDuZLZNsrY2Xiusgk4AmMIuwRufKj+tzzUtNlTn+Jbq0GoQskoDCimvcBSvYqdN
zvp59JGPt0XoDtWJS1xlfghbrzND2EZondj8nra/0UMFKFMaXs+bEDKqPDt33kGWYlu0d8XOb5eu
RjQEa7QWp5BSSBX/dgimZlq5KsSsnpIRAyoQSJyK4Hz/pGATwnScR2RJPdum4cSdj+ZJQ7G9if7E
KaemKPklzjbIFGjrEfEn2bLxrf8iusLXdtVhVqxuQ05HO67Z4zghNiVLCwKEyyAlKDJazeMwTTCk
U7xO0za4AQcMjNHCid4jwAsuKaIfGjcOKMh/blv2w5BAoxewSd5+30TMa/W4zRBOM1g2DCefI/Mb
T5/Nt1KfVhHx8rhqMNOrKmbLrX0Plt9vTZV9MDP/u4Qq7b6mklWQD59lXRJ+CJhyzhACpWOLDkCb
Cda6jYIX4BCUYTQNS5ykzndEnq7WProzW9ZVRcEhC31bDgKk83CS1gs0L+y3G4DDGlyyeOiFLo5v
Mykecxbk7vigzzK8Mu9wa0AxeqGqig6Z+k+qz0qP5dbiz4riYrCFm0lrL+3ry4KM5KVwNujNFtJT
/7TAdYPxxmi+/lllwl+QGCGMJK8+pF/sC4LY3HasKuY8Bs54MpbIifl2sLKSs7bC4DDoJO1uis6x
pd2By8R0VuEXKQhJPqXeNM9jRLOXpFp2vF+gkGs+AuTnIFELJgCDdcxXhi1SwbSLEApNFcVhIovd
esLPy3Lk6nCV1NmIyBWd1HUHXHwkvqJnaympXKSirzk5YNm3axi1luaPBAyLoAt629bfMcr0Q3iY
tU7345r14C9PKWoYgbJb3NiRMAFH/ql260hPO/Bq9WbcYLK9Paf2sfRe67p+y9eM3WLalWw1Tu4G
FoOzv5KkqIAqrsou6gQO1PQfOk3+R7g1SFeQIwRFW8prPCMVSADh89IvRg48JBqItqZtYZQidCxj
FCzIP5YMC3sHg/CewOoD8B+oHgEoQ75hfCPGLpQYa+UwLiUSelHcBXMntWDDoyCoqGbJRBVlGlIx
S4C4UsfaGgJEdtWzIHDvGjJryqr0UTLqoiLgkqLJ8l0VlHwb1CR3CpEM7IDE3QoTJuIQeTHaO3ZO
o2OfOY1k9iYJqrG9Yfc9GnMrbugRaN8+U3aRSokDQI4NIlB+hhKIvF8Zlp75MvzsQpiHnt/hnf3Q
aZ7aOXEZig8pKqinxFDDqcBx2OLBWLyo48aGwaJ4uRnuTQdL3RoobHd6FRkAGgZNVmaegWrTjjzq
RFh16AvvafaXOuY+K/LBjCgpc3Fvm9IEubMACfZycoaZ259qa9QdQezo/CdF8sMrqd/V9P1NXm3I
5JZREvfkCcpKOo1jmqkKXLPjM2d7+0FkmtyqJy356XfTvtL8bcaZ9UAfk+CHvkehiyjECAIVfKEC
EFSdyI2DpxmStKYdAvvU5iz+9AMIYa9d0U6n3tGbqasK2SPdAlg78Zt6wD2IUtz5oQVlgFChoeRc
KMMXWJbfXwNyjk3oj0AWJDGtLlIfOs+VYpkgST+JFkFemdjYXlpOrN7kcssT3yrUuIaG66EQKar3
6+ku1QLPYcflhW8jmqGvLWEEnAeXF9JKMacy1eZ92fujVhFGvtQ4LbcLeWxSwGitpLy3my5Yrmta
q97JoEaF3XRfPd1oHcwoNFCXmTq69AIrA5LwxJev3/ZL/0EeCQzU1p7iXICOSZ86PnuyuHcnLDzL
k1in8KAt4lae9HMc/lBvizzAkuxKp0VfcXX/hka/7VL+U077xk6kKrj3CwvaLR8JK5YCQDOwGZ50
CLy63oWtNZuW0/NEnvsBynTMuKFYAeKHknjg1Pp+20bNPIefQx1xXsjOtX7/bl9qkFAiYSEG/q9s
9I/RVZhNnkOZuoQj7mHCHUROqzXq/iH+HG/p63m4DPyWEx4fDphD42yiuY149an9c5gAtADnrx1h
CY/VthO67j7OxAuks40mpEdxJ+9SYSWhi8zn+WU9BupQkXXktSR+XvDmQbLZoQWZhzHtYDTv9qZ+
BTU6MJzUCLDM6aqZLe4XMeR+qVq5iTDI+7Hfrs2q3wnTmcUWQDf/OhUzt66vZ03+f67jGXkdzAcL
OKi1hZOcx8iabMmCU1AVohWhYHksqb0kxD7PkJwkKnpFwmegbXr8BKxS4AAiIg4xEv/GcNrxz6fh
yRkXyr47vervV7+nFnyuAWIHg4nUX/JMTqudkggvhg2xyThUIRte38GUjer16IO8nHFZqwiE0ZqJ
h+rsnTAIGpZymQtgHLQl1Wgo7NPGU+kSeODWZMnY7U5H4zRQ7/hpXhDtt+rIUewzCv/WziYoaQH0
C27uGlzCzhSf1RhJQdDkRuVrN5MdKzmdOCpsYBnoS4x1MDWr9J5BX+M7nZxTxbTaxE4n6c/daUyV
X2fELPjMNHGf0dHy4vs+SEV7xpT5iGZH/zOuKTRCK0wIIfHcKPzAqd2/F89NSKOS6L3xFwn7lIh/
LcO/DDgsXIeIN5b94GRaERD2pN5KdpxVcSopBuU0AJfVKI3QeIFEkK97pb1mkR2fyKfbxCmz3+2W
EPIkorXItaOb3YUAMDsuXzB/WsgX24HSqhPlzOzVMVhrT6859jIXv9gaWpSxc2CMgcfxOQWMf8OX
6Zx7gW51NLzmI4Gt8LX6Xs11xNA+QXCge/RZeRJpwNpwKaGLo2cewnfNXuS3SA+inmTsjdqoAoFd
BIZ9rdKZQBQoyeF5XLlizQZMm/vpvFw9NMAkQDWJyyMZQWfJx6tDOIbTxMoyZmW4xuLxnaHZr4Fj
8rj1t1El12ewFry2D1A4huPsSOR1wSnvnyDx9YpZJYEy02gHCKfby2dKmIFf70Xikp+P7COlTlqR
pHcLz+7bnauK0XwJDTLafFGb4IQmcebueJWZoc9jAkQwgJEYDHjXdEga/mrJRlIZd9SXtNr2cp0Z
24OO6jDk23Am5BAbf3l4wnmDL6M6K3oc+3yM+RudTWtjf4CK/oBAZyXEYzT1jvsJK456G5rGY8r5
YaS/0epi6AXg7t6NJLum9QkKTTIrwvg6qOH2HrJV4vOXwWhewsziI0FsjEgdE607ZJRKaie7uTeS
Bn1Kg5d3AsbXwklcf9oJr7eilUW+Kry8XR1RszZ73F4FigkXkxddeCKjgMmQr1IJV4XaeeZlYyQ1
x1/xPzJmBl3t12aZIyZQHUZJE9aXJgQ3a+56bUf/kmnP8iIOtJxAafzF8nq9EUQ8vuvGcE3GWS+P
6o0iswbV/7CxFFIzssVv97Mq2TCx2mlVevkxAtH9Y5A/tfAi6Xydbis8Zjt9dbHSCkke6dfIJi8p
+GtuCtUr6bhxa7XfLMIGMVtFDYqq8iezktDpzxXgvX7oP6/ER6PSlc2rQ/RxGg3WywaEqK1mGwCK
kMWLF6lRbOkfsusjtbtQD9KsNmAZUn+37gPYxSn6e/26OxpJWZB1gfWyfRjmZ68EzIQwzUblv+xJ
urwMZyJSBQ0hepnPmRuyLOsP0kfcVvNjYxC5pUoQdEK+fXw2bh18UfB5Mqa5W3Z3UE6r7iDyo6Y+
oSfhJAR+NJZoziFjVtJTdfco2XYaVjqSXNEn+CL9FW6cDWIg4lQ1+eachQAjRILdzTx/1cVqXFKP
g1EB17Ijczstlo3bNSJizVz+EsOR86vB3dyYlYjGh6o0MrHqrN3Ql86RWfWC3Gs2j/H+GVh+h6RL
2gyA6PcYjfQke/ysiLenYzpO/2egrl0eS92+i5cuZ29YAVmeHeamnO1zhR7zxGkHGmRPEU2j1v9z
z0GQj3Mnvavg955cyr8g1INCg+ZlCIYJXfflV2x8QcB0oUwKypHUuZal0q7oxmDHQUMqqStKy/s+
zusgWteVddYSC39P8DR4TtaIH446ckIIqlH/pkcc+9hK7lddmU8GUTx+GMcJr+w5i2dVANf+bwne
qcM6qPKTlxfwLwBfKwbRH+VAudPJViZF+lXVeQe1oC53tnyooF15HDIgwKy4S5XhkSpfg6wOiG2U
2Ogepy+IHYNVLrufxKHLGiTIB6yfZXmHnBut2yC8oMpxcxcd9wg3Y1Ei5fIaSv3dHBTDHfk1JZ+B
d7F1QdzuXy4YCyuEWctbK5017bjhNGxGbbgI8QF/gxu693YZG0muW+0hmyjUsqwvvuzFNaCP3HpR
CkA4gn7l8AVLNC9viFvCQ2SXqw0/b1HAFGXlgTEoKetMLOalKe2Iyuh9MRZ5Al0t8MLCSoiEntJR
Ke+6qTIc9aJ6SlCt76oKfeNu1fZr4YWzYj4JY3w2xBDAiKnSZ9w+PAtEU5SZxugNmZ8PSgbG4k4f
xPmYUX2rqlw3zSoadhny6kzsVAvCACCk7EwDPlsg/piTTcArRrPdRhw05BNil4qZNyXH8U9QbOQX
lQ9SL1Jpe8FIb1kVLoy7edTvrIItwhemuMWVrO4QFhImH1yjz9HNblv+faBemK/Gj9Y2g5MxCjcW
8O54+M1YbTgIFCpwSHyInN9HAKwl4RxPq9/2rxsQK5GO02H+zmbJ7Ms7mWu+qLkJzOqWn7Z7BsJE
GO7ogjWGFzYZrrpSbhMCy6c3csax7NGGtn3tbfaXwgPNhabkl7Zj/z2TiU0PvkG8Pt8OGqjzckpQ
q1bR5h+I5R+Xhq3sLiLT9hjBYs/P9HYFK6lJ0t7jQi4+Vq6DyMGcSinpFMyrM7TW0nsnMGVxE+bC
+nxdNxKUKks5iFnNXuLyFxEDQ+yEKrbjfX/FGOwBK9V+25t60AZJRvRTD98UlE4VvhIWca+5joA2
+OzZWPmiRmbjC3ZjtbhJkT3U3INSSNwYT7YgjOwO7xQ8VMfFGfHKMhqKU3z97nDpjMWJyr3Zqfp4
uoLfHRunsvWvN8oOo1vrwNwY+WACqHIawkWOCV8iBLz0jwettsI+G5CexLB+ITpjzZnBBndSXW7N
hL10s1WhB9TrKqFVpbXs3eRErv19HJ64VKGH2VWAYudykgcd6ogwpS1riOOzNffUtgVbEZmTKv9o
LiAR6nxiigqlD0TURfyAy4h/fE6QnJzWFuEHaWz58R9qXMdMb9s5CyX0/+Pggp+6cjPPLk5p9UGB
Z61DYvblgDIwOavPVPj4DiKFsQ6dotWSsKwtPgUGewu+7ilY4vGtcHRemfEZ3zWUqUSmlgQAAMRl
hZhypVCWe1Ukgpq3lWJiijgeqrFi1Z0ZvyptcyrJvOp5Z9YGjCVGyR2svuxq7F2oduo9lwp5Iz/T
SjU01xIYuXhkv6Bj0oDA5akTorDHUnvWxbQKfmxa3/VdzBJMOpLGgZeHZYK3lZ3TzgafjvuRsNr7
63D64dS2i0XgUE4ybipB5ROdTQ/pNAHf+MrQ4Vm1CfE/vahDiwSsJPdwpvAD9hRjU1cdRdsGjOVg
IqR46xXDF41hNO6TTkeqOKykSW0d93SbuppaXzgW1zLq/eyGbH1iMmWMIIHFexxlTfJ+ZUmzpAdl
YTjMWm+4/sgLUvHRWbGnvUWJZr7k/+LjtmhOAi/oxdjSmBwS1Brfyb++orIj6sQLEVYJlv2S6vnX
zK9ulCwMwnRtpEz1zFezDyF8iUBA3WOodM59rnmNtqOXdfk16DsbBW66kabBHoWe3TaRmYnc67Ha
FD47/0pCfPj/XegA+CTZMWZ/ia1y/9j8WrgQkdJz2I5Jz/H4cPL+gty3nVxwDyJL/PmlxMm/EhVV
r0qaf6W6VGwksfdD9TZU2O5tCAOjXPxtEZTw/lLzljoof58vkH1OKUdlsFbqf7ernm2JXnmoRSOa
8ovfgca600EecArWzeZYFiEGSpy66COiqso3sPsb9AvFXWmqlBUiLOxwMtfQZ6/r/og2SUbez8jd
SMA+kVMzjhjTI68vmVOkKv+KiyMjtDB+igT3tOFyA/rqq+VdBk2QLYaAvwEYxqx1BWltzz58XR/x
Jr95SHR72VkAR1/h1L8RKXpoCn1z1tsxqMxAOP8+moR9DQG3d4ul9QtGR5B/V5lOqj1ZZvoPfp0F
Oya6V6WjmehoCQaJQs6jGVOSv4YByqX+apK5qZcskL6WGJ1LSd1O+YjwChMX5LghA72VOGr2x6bx
jBvNxn9eOQHvLKIvfPRoRz1tsqi7MBYj8/NQK7asyGsPN5cP8hl9j2ezI/U1uiBKpxCnHlWzuvVx
UjqwPhj0Bfuje3MavqXwZPa4+e2V8yFzuIGNVqLpxGnFJYY5HG05fYB22IAfpq4P/V5H+M+h26sy
rRtEXP422z4GlG7mLiJ3wtk6fLhfR8oFdlFtlqswm4XJkb6YTzOBvHSTXZkGliPGphsyGraZ0QXw
KncfSDvIlr6p06sgVJkn5pGFyR9JGNBoK2m1G8CBl7aMfIKYwavUvG1G80b5f39xOVjQHzL7BkpO
b918Ou/Nm4KOeg9plEiwxRN81d+XapM/vBnIXOigM9YfSZSx87Z7awTIpIGWwkcP4QIfNHQAiG5L
eEid1NP7Rdp7kfmI1IPrK9I9AVMbKfq5OtHnJgbiMSMlnhUxDiHnkj3q0HYf0xJnRPNei+0rdKi6
A5wvVuO8S48yh70XBNCN6ecFpyt90YyjuO6IKCBwIuNX8FI9o9liufPYJUreAZ281WchRwTAaC+W
3MP4LgR5YeewXvTs/3tBq7KKhYK31RIx25jeMCDnIcJP95jVwzs6gVkuvu5nyyqed6fAOH3tLl/6
M8O88rUHuUTVKwquABhgGAYV8zpBgmNOIH/bwZsj6OLXCVt/KgeFj6OA/5QaD5IezTz8+P/J9QgR
+gXKUInfXJOl+VTqMI9tiDIxG721sYLQdcVzt1nY2/wvS9BbNuh26aT3ndNI6LCIkNw7vjVrlsAK
aIUjWQg7V3QNfHP7qTJJBs0obM2lxNM+5YiOGaqgSQ0PHsWlyGblsCuBFEzBPI9sMG1zVYdmHKVU
qPM1oc7w6WOe1NN667qDsya+ykDnVjyPTRz8M2vy/kSeWs4j/KpaijN7ddJO+B8FN0ePeTz6YOub
rENDtH1TOSjSwLmyMuuXoUECn+X9TWFokykqMBfHHwQ3uyz7yeZ8EqosW9qPSx0yLnZdf8Y6b7Bk
+cGUsffu6eWaezxWbSNLLkLydeOd7QnhpkgC+qCmVx1lidtNNRlpX3moTgmkFGZFBM3W6fU7jNRX
rMTk7+jTZzaWY655TjKoAClu5SQ64+oJUMPqSxFerUNpn/6kMt+SJeoUhEQ2D6RLX3RS8N98MGG5
AnMeoAYMlyXmCk609pui9GDBQ5hesRk8t/Po1jwWMwv5IohfPRNCKyu0Buv40zsJHkNrLLyy5isx
J0F2fezLe0mPvpT7qkBKPHirlm6vkMbbJokMnKJUYI2Z0++y8czS5xxOqKwiYGNApOqY29wtoHq1
AyxUFyB+Xg7FsY1axJfR+H3TrHHp+Na/Mf9BdWgEJBGfqI42pERuwy9wWJCtztKIimRSDYHZs0wv
3/7ENDwOwRZ8Df8CZKBJdK5+ySJFguhm3Rpc2qFd9jOLrlIscbYM/+JJEpSkM/dS1KwS/HODrx4E
ZGqUiICei4YjyF0JXhcWdm4yDDAfK/NSeVY3LD0a4ASXK7Ok/++EC4BUSHiRSFPJe/CZI3TmvlIe
F11IQxdK1UWMR9CkKCDc8syYeEf1nYW3zpeH89bs13+m6xJS/EhqDXhatHh/AwshkSuwaNC5KXBj
O+FYxEgGfK6myZNhNGEBUlmgAZo5iaCM8uPeg4KyZJrT0BWDjY4oyoIbsCCoiA244V2C7tofyT76
SENcwj7vl4uhL6lCnU4eVdFxi1fnKXx8PL8W4tLA7DA5mfwRlaOxhgKU6WrB3Ep8zzBSSBlhcEZD
3gQYX2B0iY40poRzn0jMRXjus7uuyCVj/VUpqBZSV7B7sIZ/rlG5FCjZUlfWlPa7frg0ibpynkjd
2F9qnSiy668fYgTZG0rCNGAOcDZ60yYkvQDi58L5QxSz7JYMTbEkWat7mJ580/I/L1FqscQze2d1
TEzPLN+LYyvr/6nz6hNm1d64kRinn2+DWlua4dhisqcrOj1CcmfmfEFceZfqVuk9evCrP/i5Hfln
x9L4Iy5IZofsl7ThHwnc6JbGaL20anSSVU56O2ADLPR5r34cGX+Go3qv64bdpsYKFWs9W6KI36gA
znL0Swc+5jhLC5/SLK/tnNAY5FdvvU8XdpsmgDGH8TBas48UCDxPx8MwZzRe/cH+fKFM8wqNliWR
C4s0N0jJVRFkaLAKxpDsF/K02G9/kM6sLSCH6Q7pobK+CT4P4x+iX17yS2sH2RGLoFlYRS6Pw7cb
6c4QR1kFWp3STXZKdqmL8UjsalHtfGilFTdXGl14eXZ7gptT/9ktKGIpNM9P9idhcZKGo6ZJC5y4
EnQ6IvRk0TbmaFCwxg9ui52DIub/QGta/F4qzAOUtS2oOrpED3Yz1NCBZTw3OlBFempXOrVZPdnX
hmrIqqoJYax+FXCHmK0M9XNx4H2HOf+EiJALh/3U4JEygzf9IyyvWRX+FDvH4jnD4ijzSGxISvVr
6cFDZqIA+f6NBaKWaLlTl+sDxbn2p4aix7461K0ZW9Aj0iKArAoikbKwnaY5oSbE5H7JjF8oxI9L
E8DDjd8MwPsOBcaJI84Prs/Np/0E75P1Plo37J2tPCKgz6CiubS/0mcBzt1K3yugHqTnLxkZ46vA
J5QLP1W3ah0Y+olG8p+T6rzNEEYtq2l3aLGUTXGdWgh9jvhA/j4PwhGJEWnNJ1yRa/Ck730ngI+x
dpUTOdmFJPDfh4sy+wi7YF06DTqyTpTG1zRza9s6pMLlSpFBjE6FC+1fEo9fIJbnJmXqu+c0OXm8
AWsol7WRKfN6P2NG8n6PdndY59qTdq1QYzRzxCg3xbRnOJHjx6putX3v8LMZaiKFnfYiFDlkbM1h
jt4XOoQRgWiVMfnvqmx/6s/hEYqg/Peo1yUwQUywjifQOTEDbncB/kHpuYoU8bquXUeryidRpgOT
cKNSBtrarW8Z/cFDSjZuFrcZJJvmJd75e6g6GMerqI3D6R/+V/UU3/UfTmFP4h7tB85oKjHzGo85
WQ+x+GOo0db9m5zUXpnMjHsUnMavNbuBULQcDlUSWbD72lpbVlWSpgkZiNHHwBicA7oX3XPuVJZs
72sXKeSGJjGbqjcTIbpBxXqGb6ULFVYZV4BEDGTy9FYznn/cuR6af5jjPd4v7gk7nt825eZrACE4
EOsoMzKrE2PQ5+lf8fjitgTX5FBUchqQjXEpwmYtFSKqAe0mUsQpcLwDFWM+VFhqrBjqMygoCny3
jJiLQmh2pDZ99X34IYc0vtXSj06kRAIW+nJkZtT7WzbX9x1kcQOrLLIiIaFsnIMLvRSm+5BFqBwh
7q7scYmCi0agKxWBsCCHghg5uNE0crU0+KQZQjSM1ndcjudtHKde6ukfiWX3A0+6Mk1N//DxNchw
qbOgcv0tL0M6zU4ra6Ckx7kcGF0mDKRla09uwp6K5PTeIopB9wqXitfj+FJlHdIimGP/LYiuq49t
K2hnzMhH3aPSSnw5zSb71gqurhUGby+vyRpStbxdGa2qSwfYYjBnvwgN/X3SIQFGEkRx2Z6FnBhs
xzcZYQPdcYyHfKk1thhu3urtrCuNhnDhI1MNm1qQghsPUVsW6ysyEEf7mYC7ouKBkuqf6uoa+Z7j
fCCtcwqfs6eVesq7/ypCFT5gSsVQheurVpBI8mQZwRgGbxGy6ye/9hfwA6Y5FSXHF4UmnIzcXa0d
kULvLMscY63aw02CFGN3A4f6rCKzMRQljevEBlTJtxoV21pG7q+XCf7ZhjKdkF2bF7hu8oqgx2Qi
FQUfXYn3Qx/xhZHl+PKdgWIEnnwjvUiilCFVzY+LF6JMc/Cvn5oE2c0yPTJ4/sAIvFtsxQ/7ARr7
uuVoS3NcFQfHA3n8ZOQaP5H0jKOpKEuR0TTTZHO3/ImZ8jnoTa15BFj1j7NIp5YJ8tiKa4xXx++u
vrhUBCyWa3hfz0p7GNS+sssD+d3R9H8OaNiMDOHln5hj16v90rzJq/0nAXADZuCHkHRKZDtX7K+O
e9vKYE7lpbxDA21Egd2zK7fD+BmqgTVOQD0V8KZv4KIXon2ZQDhlkdultgCbLVeoQ0ErGU1ZHl7N
jMtRqMkgwdNYcA6QuEBs/bPeBnn/E8z27he40IIHF5JgWwxst08o4x6AqARC3HYYiPmpsCXEtcqK
itQYmdQXcCHC1UgMXvR/1v/E63xQ1AP9+aY752qIS1tFQTmioGePbbBkScAZBXcOtkTp/IwuxeWk
F8m/g6YeJORUBat++bvWm7bDKYQsEhoyGVc/xMJBN6N9qjEBXmBCA3Jup0XfvU86WrdxkvjNW/XP
ZxD9DpZ5Wskrrgc0X0BAQD/1HNQOr03c3y8/3IJcW1fX/hw3WRplQ7pshJwrKMAT6a476TOl5RIO
gSHJnZBZEQ4pyJCiMrNaYQ9bA0gk/DCP/GrI3WLNB0XWCKUrslLT9wYQR+Cv2+xnsMvQ5kqQ6UKv
WmVvhOZ23/Ox8MnobAJpRnmx9/n6Crd5naCtBeNvTKuraxTSR8FHmZE6gYuoIwOpyfut2Hx+p1B0
h7GBJIy37+8S20WUMWg1JKAXr+93iXKp8fPHv2FX6yf+myQg/0NBpKqIMjoitOiivaFJp2LTn/xz
pe1hhZDApqLNO1/LFV6xjAJFDVJAuNqqZwU239zpLFwBOYAMtKXt8k51fLgcrAhJXC7zi3TNNVS6
K0d/JP8gJMc92p4m5+Nk2jjxS4/p9c2fjBAcm2zrLPzvbFtOShp1o/KhhR4+R/c7j7WjnBgZ2Ag4
oKXAuxuSl1WvES/QcdvV5ZXX20waqp6vMnlGAvdmF8aW7uwZ/ZEvIVHp819NhJ+ZV8tU+m0SqBwA
wBlYy+1emVVCkCTyd7vikovzG6/uaz7LvVRyAHwEragJvQJnzOyYL4PWkbY926l2zOmsJpRNDIrW
XogqaDZ9cO4fp+SQY0LMEPNHo8689upguqXrwyTdjzv+zrfR5Edia8E7z0iZt3u/bozoMWRcm2Ak
fsS6Gw3Z9w7OdcVVrcryoi2n11O9RLWOQobUMD3T9E8M/CdPiyjl1EzS1eOQ87cw0SQxuA8dNUEl
2uMOJhCN30MlkAeQAxFsfFv9eF3b4Q+stgulZKsnukWYX1ZUPkFSyUelgpndjjcTaGId/5r+WKp5
1T/VVgoTWKoEMkqQ7h4H99gKFVlWP3IkBBISnJFLt0dMEq/qwLxJ1eBMMqLljzYsXOOL7NNa7RAo
U/FFeXCo95QhpffiOQngyW9JFi6A1NcQVZtUfjznv/kJCcgPwpqoXmrOIrv/syQEDbN5qBpoes40
08PJLCrNl6OYLGaEaapn8UsrPZlbStg6XyffN67YOtiqptUnbNLmPIE0y/R9a0sy4nzJ1fMva2rX
zmqAqnitJTlFDVfh2frtfT6zZeQjmQT+v9zWnt7A7cqdlz4eMdz6/rzDp7S6aMA2QzCDlYUBJBKG
laOOF+gWysr82Anpd+0Ubo5kRYg5Np7FTHaC4vm9/PaIws7oZmqr9KG5QwkVU8n8/KtuONKriDjw
+EEn/ZCHdYzgKZQNIxFPPgb3w2fpTo5dAd0SAi7pT4IibBzeWRiooWQc72O3SQddviWcuGXH3RAq
MB9Iim8IN9ClMSP3noBVjvWDH8YtsVqKHlJY2L3yujwoQSqC0M+Aj6J5zbVG2RmlwdAoViNiI8R/
nGG28VzeI+iBfw462z8LnytGspEl5ZohlMJ5BVk1zYv+vLbsZYsQf/fLu7PMtYT5UUBdydtfzmRY
YxtHq/6Tendbo4ak6dvVa3NHdwadC4N6VNUgkWBBGJYtPqucJgrBP1Vu8d7SmCWoUx/zFarsTY1u
huJVznK3bUjoKhRJmviS3bAIpu9mar5xDFBbpijnms+CUScwE21mrkv2tJ3AfPIhbijWms+mhdYf
rN4BEPqHilqno7p3WwX8E5me6fwIRBAFl+siQ3QqAfeM0SvWsSp9JPXzxtw0kCJsOUlM3N3mKUt5
eiAq/ljyMwUUSx+k7u8cLn7+jo6XN0KSVEglFMeJxHHKqtnuuOzazLzxDVLxSlztBgzpnWeKThY8
ZXcIXg98m6SWZYn62yw6XLVxVT/FTVCtTRl0l4Z3CJH+youTyNizIVeZY8eC4IBWkY+6kNsdKbbj
V5U15nFAlzBVJjn43Q6Vqn/VWh8Q64b7A0OjPP4dXYUBfTKU1Oryzr69WuecOcGuk7pgSAHe39RD
pZryHLA+h66s3VPdEdsF8n6CMrYkq9QDzrxOw9APcePyAHgevwO96/hKVnhBmJOIIIQkqiwh5i/o
4Q8Wa5XcB6yoQ4FxzvrmPzcTKFAHfgs8ivPAzr2ItX+SSV3WZPNhcDO7p9E38IFnOtnq2KXySmLU
cL8vMyJFkqluxX+EUsApmRrGRXVUM2LzqbwxoR0WX1MT82TbYHEMzJFet6uwhIas8edLEPr8z52+
QmMP7WhdzKE1YIFv8UFH3K6AzWdHnpzwgu8d5qUyiMLUdz5EaTGNCTMPflaK01v02wWdt1LQF37d
HhoO9Cbk809XQWZekxmVOYaLOPbM1a1a53jU5NIZbLJe37uzNlQOEEW5rl429heOh2qeJeEPZPxU
0KhsjmyAdWTRZQFau1ig4UixrehREZWt5R48+UTjAXYKh5NPfO7MJVH9HX3k4lj+QUDqcy7cUQ5X
UsIqnHwhdiNky1D0LRJpu3zKZn6Lq+1guvxZ+SsgclOyqBS8JAD965n8S8o1Quv5mso8kKeF+tQf
244AP8MyAc1pIaHFlyFchLOVQikbCGceLn88mnUaD1p6xrsShsFq0gNtSjCZKfti+maN4BzQ0Efj
zR76YPZC3xlG+vCBAtNDotCMRwv2HW0DHXo5lH+MKf/QmSIo0UwQdWBMGYPhs8jclU+sCjXSqdKg
X3jloRu9SrsHwXxdjIooJmnW43miiG8fUawMNRLGNZnqMPbJyLap4JLnccYZwfizd/vkno5yq9jQ
KidfJt7xGK5KxZHwXBA2xp0jTMUD0xo0SHUCJ7FK7Xm/t9qkGHMyfpXlXdhrYpjNlSICBpjU9js6
cWpndXmyNGuA8zVjjNRzmSy0vMWTPrqOq6DMi4/vl3PN7EwNY3GEqmBAF3wLlKef/uh7ufVmz7o4
Y/a8dQrirtHPjPGi3tp39MLllsqv6Mi1o2DU2pL9LcvxQsZOwvoEMCYHKbCKMIbi/C9IJUiCuQjL
1uGwXRogXfbNvamGMp4jAjygB5BdccOXtIOPmu2kyl+iMPDDRBmTG+ZeDhvcuCn71vap9SoFSA9V
ud/pW/N7V55ETrN6EBhddldoVtOOsE6HRUp4dr5WhfRLt4/sQDQJTaYsHmA/cSdmLnEJb/S2trEt
6oyqhWM3Qpp3IT1lCvA5ygPy88IeyDA9BrseT1vpqq+aUv4nK1O1c+18aExuUEcQaNL/inw/NR4Y
cdowNcxLDbO0e3VGTArTlr8RYRwu6bjbnxCzYYTsv+MvqHqz/xoFeauwGrbojNu5vIktYpH1R4cU
+jOVNcJK/jDg2yzupqMoTpXD+bSfGf/kTD7Eu1N5YyurUQ7SJx4zZr9DOAabVlwP1g2YCBeTjIsY
NadfXVfFlJGxLuRtmbfJluHRMLqey7Q1whtUILABrP9POxwc1vjyIwSOPrKWRzNBuh7tgzyQxMUr
TqpytEnUWoOq/rvWUK4T9VW0Mo7plwTZPI8IYNkossNRDZKnHQA8n6VFeiqaZmo20UgX4lJ9uq8r
NlHZ3GgwSHjIBayE6p6rwOsrnYA9YRg4V+T96qu142I1U6DRfWVYOLUd7pyoDCeuBdME8vz//Slf
AYUTf/TPcbyjdC1JQhPR/ocmf3LPtcgqUpCgDLRs4xjHVj9X2owbemQFzoJqhxsofA3ZmWD1alaF
RXJlMOSBVSr8M4yhfd50btx3aDuifE9wnBMwTcTy0ish1munqKlxwHTZriiMkJeUaVe6oDpp2GgL
DZDDQUJbAFXOvbZCuZkNMi9L0jSZ65kkP6c3zVmN7YpKNjkn3bFkULMZKEimRGyvd4zLEZKP0IZS
5ef46BJz+4qa3GMELteOeoOSluEkYqm6DDI7cLFb2gRILCEsqiLp3cpy6nuvz1bjHXuj3iJn02q1
p0NUsGqngYBvBBKMEJHaj5s9Ryta/6xJFbkvX0qloWT+puxCXzpgSORMPQZp+JU2neSRIfHFEDeM
p0PnFtY37oqOWWJhiKJXngRDFww+C3yRyVKcuMRoBf+EGC0IncYxzOoVObF2U+d5rPqJW8clRTiy
r42SwchA16Q8EoKsm3F8Jnwgn5do3FLVaYCdNAG5i7Wat0as/F66S/UpRB+u/S/Ht993wm62AXkW
RomXNJ1rFwQxIEPOjliFIzbfjUZKLEiGEz7+XcLnIOYdgKpRbaCRidpUBz7RV/3E/n6RGWmbwxo1
KddHXng8EHjE1v7DGYjAXl/iX6CGdOOJEJqzLhZF9FIdadzkNu7vga2INvJ3lyTTVH344Wr5kiR2
WSOgSFR6zUbFEM60jRkRsCuTlHR82JGwCccNuHrN9Sa4yxRq1AoEWS+VVfqgyZcdtL4tmw3JJzuV
FkGOsbHPaawGkH+fYx36ThAe0YtPc7fGji1vFd4gxv6I9I1O1EkM2ggAd1BhiAd6gVSwXAMKvpIM
Tp5QDw53SfXBAf8fAVrTWC3u/g2mDv2cJQ2NdGv1Aov2OV93m0cf8MKbYRLdwI1Ayii1cfsAdJlq
IBXiTGRyvbU27GSC0fOq9r+KRscULZoWQ40lnL6likE0EgtmoScFZ0aV1pA5tqhxCAIW6vLaqjaw
C+2D8EndevJ7y3vg8vau80vYuslbFgnUxKA0a7NofzoFGvRax+k+HweGPF+G6sK7tNUwpN5RXoWv
wX9atBoVDONAjix4Ly76pfSN918X7bcTZuOhL6y2HioBubSWmztKVv8Vgg9/Z+uRsnpS/E/kqx0A
0TAFph4E/lc00YVOrGulcOiLl3aPPGVN01A3OZVONeeJ2xxJ2vHP/2rAJUg4U5KwZ3JU/btd4A8T
GlsL2IeiNjKtPgEQn1cVzH4LciQybOExPeZNPTz4oBBM4flN0LGHtRgSqmIxImralyOLA4IaXTqc
pq+CT4W+5XtuHfd6+QTj+xvFBCk3P8A6E1YEH+LHbs64Xma7XTzm5qKKbn6eJ4w8/WCy/tgzSZvv
TmJeOO1IuDoAZdWJb0mtyJWxOaL1D6ywS/RqModMOGLMs4WjeZDE78PSLHlVkSyNTI1+CziKIzX2
RDOuAMl3CWixBs+DO2p7FBgOVrSNFd6U2oDd7qlGJJDN0hgCIj6wUO9+AWMF1J56QC7QhAoaZl99
MZCz1myng965xlXkC3Bvrh6U0VQ0tHN3Bzrp4LAToDAOEpnIrJ4U7caIuKMxnMxjcR3/9YYQSvAa
pxoAHNYrrNomZCDSEO+92UIGtg+84pxcXM0kn4RotZ3jpzHc93GUXSgQKb0qSxTUgXxAi/wrm6LL
iYgbw8ynLfbFNc92nry9gEAW1IR1E7SjUjvEJKdv/xbCsBaIjNsIfMsIk2Hl0isbl8wHy5vJppC4
SaImCfAzwe+ihAVPSdvSJPtP1VM5ms8sOZ775Y3ePSCrjtL4qVicFOQ9UVmuqnCCdagA592BRMI8
8+ZHQYSokuoSeabWitS53c7S834tmwOCPO3PvccuUSASptL0SW1brNOczgU7Du2GO4A5HaCfmNGn
7Zk6PgQ8K4R1Mylj3YnqYBra7IW2MskCxm/JkvrCWow5oUr3B95lmIxqjKq8aboArdbBqLpdZquq
7LPd1VC1TkLnUkPX2njK/5DrQa1G7NXJt8KtijvhQzjAmkR8C2FQO8NXNVpDP5/osVwBIhd6UYbL
u4gsyKXXfoJHrHeSXBylUwiiJOALrBKY1Lc8Xxp81VS8eOvGLsMxjcWTn/CW+tcH5zDP5KYhkOB1
1Qthm5W1lV9IEDnIaDrN8VHPDktrAF+xhQl4CFwkPc5W/LteINjR0YrmR1guDghLWhcKLtqASRqF
McuX0qRZkHG2x1/mMQ8G0IcE6SxoxczE4V9zSZ51sugzCD/Nb5HOujNDKroJqjapU61V2G9PPIJS
wHSlIdIat76QufzFbPKs3Keh05CrpNSK1Axla1bIqDSuPTPy5m5HRLK4xMLJgxrIp6d1LDWoGc+K
MxXmvMXfrADFv2Kq12vnxo2OKyOxxfe7/H8Xl3N2PUwwS3pqXz3BOES/tqs8pcauTiiNagcrkbCj
AtdFVIALjGPkiUM72i9OPIJ5SOeHZ/+1tKQ0FhZdA+8dnTWLTrjDZSy5S6cBc+gl2AdJcE5fWv0w
b0O5Q2IBkQH2sHpyKiFiNvI+MfCOJpgUroB5KMwC3FqjO50B84tLWnLpTTFD48PjANrp3PHoIR7A
QIlJ0HcaiSb1DzxqsheDNkx9L0JomwfEI7kMPdhqMCbBu079nXpbu9raax1iADaUzU9tL2p02Hpi
+xQdQfsSlzl8BTsg+tHroDx6D9nQTZD+6vOic24gPxrXjVfpw7lwnGbB9Ft6+/O3Uqztk+U527Mq
8dkbDfgVQ9TXfBAa4k20+YjkF5CuZcmn1mmif+ltW5a3J63yTfdUyuf1oUCseWuwr9zIigyf2rLS
vUQ04Yu2Zri1mmiUyfzOIEjUqQx2ilLh9uzpWC7Ppknz9Ojyc5IVtDPSkzcLLo6PM8ir8unKXLU8
aGfICjpfivMA8eF6ZwgBQM9LavhaPDYP1lb+maLGkEqupQcZox9ewjBqm99YU8S7fg0VEejmU2SL
zAubpUada8BDHAV2FeEYXPeBCQMcOaCJ8Cb87SxETxaVlstfTXpU+hGMX+X6RTb/qCOeiOOQQ0Vp
7teWE262VLJEDcMJ2zP37mCBivA61tjOBwclKzdti9ms7tfEPFtT/rA+BJ01VgFPiOf41MGQF5lQ
ZBeK8HuSrQRPvKHpZO9NuGVzFtS0Pp1v74jwcvhlT1iLTvgZLYbaIBYsp7XMNl5juBAHmzzjSLtj
RnNskSvcRYoPfp7Qn60kLPt/tOh0/62Qz2VlQlaoZqJbEbDfsQEfd60w/4fyAluAvsgIsvR0y31K
RdPw77pNfj+YAaaX8O9BhgJnMbFEwKJvdnOH4hbP+OCwwf7heIj3fRR+iD8eTX+/d02o+57A92uT
mpRqQ6RWC6hOLlBqP2J6CsTrgzU/HJ3OqXHXJ4NTAx4iLr4Gh/Mh/ADuh3ZXPItUILk69OLea5mu
PFs0eg6QKvKVsOqpaRMKYnoUFsXWPkyBm/RXrrQVDJm5SdYqZkjV9CmGaoG0w4TH1g9z/YlA4iwC
ZgYRHR1IdJ8h1vFCS8GH00hFqoSr8xCi4sIFsds/AA/eZq6NpGz1NncAVdZ8EI2n5+pXeW0GbysP
0mB4+W9Z2cOL5jbkzqQJLDeQrDrjNfmwdeSu2VJGHyVc5BtJovS//74mXdcvdX7x4iMcN8/U5KFN
88dN4gkZoQnbVKmICPW4hjOg+vHg1mwmkZ2L2vg4xWyWWCgBe48AgTctWTgUfPpa5MDRe6kuwDMH
Gd6eVLJVeqYafYAdU6TZwTs+4+mlCy20OtXCLFjWzcSIUY1CJFZnQq5ODy0JseeOILy8zDYsGFkt
Ii1jFRiXJ64cIlCbb3ExJFc/hGPiyVao5GMy45X+aehWxENvqzON4557A1vzpw0sU3GtRUrmufPk
Phk3gfbWS7D6VOp8QYVb1mD79eweyhYTvlIPRZMO9S3EIPRWQDPYmK60pOpekY2mTbIP0N0NA6Xx
pHL2WEgfHpPTOB4oLL5wS+32FC3HldjMgNSFXJtQ05CD8N7RzuDpnpDDLHpXMyMcJ9xHsQURBlC9
t2hSp7aUV6Z0ZS96iZBUihO8WHCxSHNG1U0ZKP9oyJD0LowCDROk3WwFgRRmhQlvo8wWUTOteiXi
0J2wNyKSp10sOD+cwSp24SMtIOjq9ESsY8hJFADsvhGLa8AbBrpxgNr1t7xIywM8U6TGLDaGsQWz
L0hYvQM0t2GaA+gi9b9C2uLKlfXYC0bfdaXqg1c9X5zuybwIVMA01Fve4gVYRmG4XdgXeUt6WdVY
LPRCV7d7m3HFLd2sKTkCP06hUle2KnTY67QN20uQCyFCCW3KNcrVCcch0m/mwO7A06nbPd9BgeIm
MJnxlIzScv2+CGm4oEyWvT2wYDA0hRwnksaxiMBQqaorodfTurQe5Vl1NMtXlpD98+er/+jrXqvZ
b03Y9clYlTQXwKcJMa/QGUpxUUpyGjnDH86IgVJAPrwWvNmF3Y3ENG0tWIehMKGqK8WNHzAZ1SFS
VzkAsYNPDFx/RhPu4mEr0MkrHC1weZt5w5ghb5cJqnax3jnH+d5Jl/nPe9Fn2460ZLeqB/A/zXmo
tTofUhg7dhuSyuUpS+VJuAB+K+bNxz8wzmwCCvnOgy64vzEkD9iMr4MQfeqjclGyKqlTLxDCBh2Y
83aotRdSGhT+fwD3Sdv6EgJLYuT/rfkaOvcBz7dj/wUAbyPNop1hKZ0DRa3Aa9ouPuO6Em+YKZev
0nNXUTChcJtEBnUHaNXdT4N8C+n3DmXQnGyA5ZHjsAlxcuPI5i3Qk3kn140DqBLiaEgxAz2IYbQc
7qGstqgz0RP8sVZt8uK/rKhU4MiFoHyj1yK/BWmJjfETXsGaYapSZcuQ7YZYUN8eqJkM6k+K9ojN
D4Mrzx1Zuz022BKNw0EyL3YrQxaGcVuc7ox6x0IVye44Ds/XBkVunM68V+MkQysYNKnjeRUscU6I
570GS3qHG1RWcMf7/djRG0gUPkmebEXmrhzxJuctgfEMAkTK1e3dK6SRnRxr/xDdvvkEH72fyN5J
ujIUBOYV1pLU1urjWRis4ytbHs6As2Gt3WW/xNPQEwM68vvh1v+Tn5KpYw+qDV4Psr19uzlhiFQh
EEPv/wtf3kbK8F74m1l/kTB0e5hOjoxWnkucdFdDirDz0mVFwxQgCsbXeyZbmJG0NivhHUNDvX1T
yA/uktKVO+T2GdbIhPLzMC7XOCQ21bywlqRJvYIIw9L1hl19AjuTkXCwe7vbRiH2LhqGF8fHRN7E
s+x943VbxyFe8UCXm7JvpR5ALxfZUVCmsuJXkgZTzSjsamyez+DgoSkRQo/onDFZsPWXQMaCACI3
yF23YDXD93jG8cBVjLcKPH2rC92EeyFg8csu8hW8YR6XPYJPCDYsAc8DD2cgBdBmZJitL4OCwo/R
sH5KS06KJhpeZmzs5R4zfbkfVdZQXMwGZi3zxyJuSSU6EOTUMRVPSTbX+WQB1iSdzGf8ZPNu4HIe
9/tw0+k9Wa5HfUkAv+404nsLkH+FzTyOhn2SKFIrCqu3rxNRsVe5F6SLBEQJjHGpo0Il3IgqPv6q
K9cwMyFx2qBQDM0qo/hWtIYjZ71JM4atNunXBd4ABSwTGvFwiyvxdYhPbi/slaSOBEjZ2OBV0hfD
usW03X19bed3elEGmqAGv5zE5HX87hZ9qhoe8dmqLUWGL31q5lkBPIDA+DZFMGLM6qH/gv75CHem
NxBflts/EIP71OvsnxrCInabQ6wGmUCmne1VB+zAZGIvqbMbUQDhzqWaTMfUsm+4MTdj7HpMdsgD
OukkAJ3pj8qnWkxgcbbHAA5IbUC7Eipo5S/3BKjqLCHsQ+YA4qZC+PoelvYTGckGD2AZm0QStePh
ppXIAc1WQrQUzXSKS4suCpVtVxc7VdXfqcsX4QnrDP5OCqYt5/2NMfj+yKt7rjuJrfcPP3C/oZYc
hS4OcTq9kqevFUtyG6EF4kmxYfPQcRpLaHWiVIi/DWTzUwee1qUopPG35gR40m/OxkJobgSPMkaU
A2Nqzs7ZW9QSxdCi2Bs/+7JOS9hPygZs9/0ZLXt39ENWHJ5q4+G55peJcco2/645Az1zV6fE2q/v
sm22RH2V0PAwqgLHn5+Xj1XslVtz33wZ3piPMREXXZ+GaHTCi+fGxvkup13wToAKyZzDhgrfGXls
e2YjSNKEXtZhZxm0lx7eMhUAlzaaUSa190OtBRWJK5Lyu/INMPvVHI3pzzplqTMqVsDYWkZ32WGL
lqiOUtK74HsVSPJk8CzTb0NUnnJYNt0xYJC/OfbBWNdhwLfzDqDYTn8L+m9CMqgEOJrwcz96gHle
cJAjJvIf77fglxEwugXPE3ptELR33Li4PIndg8Zkcofzdpugy8cZm5S7vNmAjSYC+YCAAYgLAasg
jOHNcYn0Y6I++riYzJZbBPYwR43Kd/6Mus5/nWjJSDTrbtmqw8VNPdcegDVKRi2mtQL9vX6Rme1g
HCijBJab+aSDaA8DL6UL3gDJAlMcWm10jopKjhKD+hhp7RpWGH7wIKG8V1ika2Wmmz1KkkKLlgdX
DqlhDHQ/+4aj7L0nfBLITolRBykoyoiNanTZ2V3dIhX5c7ToGfmrxPUxAKRxtG8U
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
