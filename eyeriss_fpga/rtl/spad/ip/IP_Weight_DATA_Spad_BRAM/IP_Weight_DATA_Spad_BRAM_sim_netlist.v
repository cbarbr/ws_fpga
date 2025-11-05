// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Tue Nov  4 21:42:08 2025
// Host        : DESKTOP-4NKDD90 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/csb97/eecs570/eyeriss_fpga/rtl/spad/ip/IP_Weight_DATA_Spad_BRAM/IP_Weight_DATA_Spad_BRAM_sim_netlist.v
// Design      : IP_Weight_DATA_Spad_BRAM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "IP_Weight_DATA_Spad_BRAM,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module IP_Weight_DATA_Spad_BRAM
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [11:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [11:0]douta;
  output rsta_busy;

  wire [6:0]addra;
  wire clka;
  wire [11:0]dina;
  wire [11:0]douta;
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
  wire [11:0]NLW_U0_doutb_UNCONNECTED;
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "7" *) 
  (* C_ADDRB_WIDTH = "7" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.70645 mW" *) 
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
  (* C_INIT_FILE = "IP_Weight_DATA_Spad_BRAM.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "127" *) 
  (* C_READ_DEPTH_B = "127" *) 
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
  (* C_WRITE_DEPTH_A = "127" *) 
  (* C_WRITE_DEPTH_B = "127" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "12" *) 
  (* C_WRITE_WIDTH_B = "12" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  IP_Weight_DATA_Spad_BRAM_blk_mem_gen_v8_4_11 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[11:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26240)
`pragma protect data_block
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
9Ph9NcbQfMXKkBmfU2Xvy1lsApk=
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
