// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Tue Nov  4 21:43:22 2025
// Host        : DESKTOP-4NKDD90 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/csb97/eecs570/eyeriss_fpga/rtl/uart/ip/IP_ifmap_BRAM/IP_ifmap_BRAM_sim_netlist.v
// Design      : IP_ifmap_BRAM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "IP_ifmap_BRAM,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module IP_ifmap_BRAM
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;
  output rsta_busy;

  wire [9:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
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
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.35165 mW" *) 
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
  (* C_INIT_FILE = "IP_ifmap_BRAM.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
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
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  IP_ifmap_BRAM_blk_mem_gen_v8_4_11 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 23296)
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
