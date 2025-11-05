// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Tue Nov  4 21:42:09 2025
// Host        : DESKTOP-4NKDD90 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/csb97/eecs570/eyeriss_fpga/rtl/spad/ip/IP_Iact_DATA_Spad_BRAM/IP_Iact_DATA_Spad_BRAM_sim_netlist.v
// Design      : IP_Iact_DATA_Spad_BRAM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "IP_Iact_DATA_Spad_BRAM,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module IP_Iact_DATA_Spad_BRAM
   (clka,
    rsta,
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [12:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [12:0]douta;
  output rsta_busy;

  wire [7:0]addra;
  wire clka;
  wire [12:0]dina;
  wire [12:0]douta;
  wire rsta;
  wire rsta_busy;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [12:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [12:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
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
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.74805 mW" *) 
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
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "IP_Iact_DATA_Spad_BRAM.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "200" *) 
  (* C_READ_DEPTH_B = "200" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "13" *) 
  (* C_READ_WIDTH_B = "13" *) 
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
  (* C_WRITE_DEPTH_A = "200" *) 
  (* C_WRITE_DEPTH_B = "200" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "13" *) 
  (* C_WRITE_WIDTH_B = "13" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  IP_Iact_DATA_Spad_BRAM_blk_mem_gen_v8_4_11 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[12:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[12:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26128)
`pragma protect data_block
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
KR1G0o7Jk2AjlHFxeJMmerUzh3Bnaw==
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
