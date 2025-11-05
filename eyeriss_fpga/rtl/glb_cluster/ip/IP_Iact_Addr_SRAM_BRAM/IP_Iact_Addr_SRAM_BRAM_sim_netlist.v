// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Tue Nov  4 21:42:09 2025
// Host        : DESKTOP-4NKDD90 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/csb97/eecs570/eyeriss_fpga/rtl/glb_cluster/ip/IP_Iact_Addr_SRAM_BRAM/IP_Iact_Addr_SRAM_BRAM_sim_netlist.v
// Design      : IP_Iact_Addr_SRAM_BRAM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "IP_Iact_Addr_SRAM_BRAM,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module IP_Iact_Addr_SRAM_BRAM
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [6:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [8:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [6:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire clkb;
  wire [6:0]dina;
  wire [6:0]doutb;
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
  wire [6:0]NLW_U0_douta_UNCONNECTED;
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.64295 mW" *) 
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
  (* C_INIT_FILE = "IP_Iact_Addr_SRAM_BRAM.mem" *) 
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
  (* C_READ_WIDTH_A = "7" *) 
  (* C_READ_WIDTH_B = "7" *) 
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
  (* C_WRITE_WIDTH_A = "7" *) 
  (* C_WRITE_WIDTH_B = "7" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  IP_Iact_Addr_SRAM_BRAM_blk_mem_gen_v8_4_11 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[6:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[6:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30656)
`pragma protect data_block
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
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
