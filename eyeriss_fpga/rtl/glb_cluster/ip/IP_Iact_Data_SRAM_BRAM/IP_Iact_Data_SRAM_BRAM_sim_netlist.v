// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Tue Nov  4 21:43:21 2025
// Host        : DESKTOP-4NKDD90 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/csb97/eecs570/eyeriss_fpga/rtl/glb_cluster/ip/IP_Iact_Data_SRAM_BRAM/IP_Iact_Data_SRAM_BRAM_sim_netlist.v
// Design      : IP_Iact_Data_SRAM_BRAM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "IP_Iact_Data_SRAM_BRAM,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module IP_Iact_Data_SRAM_BRAM
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [11:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [10:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [11:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire clkb;
  wire [11:0]dina;
  wire [11:0]doutb;
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
  wire [11:0]NLW_U0_douta_UNCONNECTED;
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.94365 mW" *) 
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
  (* C_INIT_FILE = "IP_Iact_Data_SRAM_BRAM.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "12" *) 
  (* C_READ_WIDTH_B = "12" *) 
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
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "12" *) 
  (* C_WRITE_WIDTH_B = "12" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  IP_Iact_Data_SRAM_BRAM_blk_mem_gen_v8_4_11 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[11:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[11:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 34448)
`pragma protect data_block
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
RtB/tmfRmfQ2W53PJY/oiwFxMe4=
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
