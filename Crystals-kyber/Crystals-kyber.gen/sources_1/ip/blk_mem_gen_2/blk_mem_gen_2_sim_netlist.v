// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon May  4 17:48:56 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /data/claude_sandbox/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.gen/sources_1/ip/blk_mem_gen_2/blk_mem_gen_2_sim_netlist.v
// Design      : blk_mem_gen_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_2,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_2
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [23:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [5:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [23:0]doutb;

  wire [5:0]addra;
  wire [5:0]addrb;
  wire clka;
  wire [23:0]dina;
  wire [23:0]doutb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
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
  wire [23:0]NLW_U0_douta_UNCONNECTED;
  wire [5:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [5:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [23:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "6" *) 
  (* C_ADDRB_WIDTH = "6" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
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
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.35015 mW" *) 
  (* C_FAMILY = "artix7" *) 
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
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_2.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "64" *) 
  (* C_READ_DEPTH_B = "64" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "24" *) 
  (* C_READ_WIDTH_B = "24" *) 
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
  (* C_WRITE_DEPTH_A = "64" *) 
  (* C_WRITE_DEPTH_B = "64" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "24" *) 
  (* C_WRITE_WIDTH_B = "24" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_2_blk_mem_gen_v8_4_12 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[23:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[5:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[5:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[23:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YqH9kwIC39+qbZg4PSfFsXuB9k9wnuxNryS/CfnEri6Ci9fSC6fsrQ/T/hnt3u/yolbJ8DJa1Qu6
Qnm24A9jLbA+fu3Nsmm6/rM6a4vU6OfVl/gTFd/CiWDutv6Dhn6Lim4uUNPahoOR/A2Yc4Zo2tdI
kMLO9gn9WlH2l3O2oXs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XJYO2VHd/cnMxQd3i7/2qRhl57dl+doEKuhAunQyv3vpGRG/jlNxj8PqrgLoF0HMdqE3qJUVE/oq
kBSapqjVjLDMOrNGQ+Tc6VGsKMZH8FE/TXHQJ/IM5Iuiu2eozEwwVUomF+7cfqn+9OsVsqCONQ1M
g0oRlangiqasJDhhMfnlGGqwAwmgWRGQA6dmhTuua1s8zdvIv540zY6p5au8cAKVhqyyKK7wbxEE
SGuFqX+NYoyRV+rfWCcWM+hJEmnWS8LNAKkd13YE2+17sPYzUdZ23DmTxXK6KlAxKFW27CBySUfg
qdNXp2DSs2KAQYih27pBNMuHfGbM/ATFPWFvxg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYoEi/e8HsDTz6N11EDe/B/iitERmeYndlCklmCluwgb0N4W80JUGVlkd7NlRZHRNhxaNBJPkcjC
n61nO0tb17NwsMwjbY5TF8JWRYTNw1JXCFacvQYrdKv4/7QNQEtwVGiCLxFhOA8aHlWMZIrc2fri
VRMVWaEBcPwCGorlVIM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QEw9fEsWFbdX0OQLvYs/gl+zyEOW3ak9TdQVaq+0AXXOT3LIqF7wDxJ6ZBnlf9mNbdsUVH5tAz1o
H8u7ihJl1L3THEvugW+TS8hkvVbEA9rKO2vV15KAj4Lla7UdFT/xDfe79RFarlLI7yGrubjgdoRi
QWy//UKsffG7IWNwmoSuppWiWB4ZHJtkunNyIkm70JPGyZF62VxJg1MTT+5LUbZG5vZjjuHZud9w
xJaKv1tFP/x8RVqLU5gPOqGqTW7/nKO2S+450Vo4D9vAmBVVcXpaL1EbSmCvQ+qJmcQKtf9qYFRV
Zko08hbpHjPxstqvTDro01jRzB8592m4xU2TWA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TC7q853CWBPPJgbRfgDV1lmjUwSAtliljShAyNFg8sfRfwDzchthzoSPH1UCHV++E2JXacEKq1lB
UWsNP92U4Xh0/Gu+6esOI0pJb8I+TRTxyBN1I4cRQEfQHcwfhbSdeH3yX9OV3opLEqYmT37hWU+J
zCawYnxVESI0FtRzEXve9gdEWlrKKckrT/hp4mvxxOjvOkOSQBvy0elgUOqh6mEOZl+JnUbsR+Wm
CoZLE1eefMZy3FnVmyDNPv3JPXi88aLXMyimal0MYFkTiS4XJiGT3eAIMIbksehXY+eYi/KFpZWQ
GHpX+lG3UmiWWLwyPakFwKEHbrBc70AlJ2eV9g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j9nmCKgjPWNChPbpSW6EWLrMA6oCG2JGPoum8px09v0PEAh0DRXZi0J8HPzXUsZgOEMcKpA7X54u
YFcDDCLAQ+urha/eSPbQYHQh4yGCursxAQ1C6LEyNQ2wJ0eLlO2bJeAl/gof06zqsYVM2lLJVNv5
wao1k2bmgPdfpfY3c9vPD0fSMuZPS41EoRS0cQhO5GTZnKdjxm6tEUL3GnTjB8ynSCIbCJUsMtAX
4FRHNa52gudx5B5fagR+lXgFhE7e++rWTJELr7SYB+r5Es8qZLTpCH8TrQxEkV0rY/+e4sAjNE2D
gHw8GD7VcUtc15B8y1BbVmh29qc8Nd3V2i/miA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UkCD6I/Vye4qNoNoa3hIexBXG3xyKUJPAHAjIo7UcNVCDXpMQiYEtPDqExZMfiPlJn2nswCYIfIJ
FYWqMCloKSQyyI/7yZ2EtbyWEklb/P5IyZyvGi6hhFUo/JFTb12b4bK0gZPr+bCDdlVQKTx5GVHz
wptdUJO2omSj8axVMPbLRRtVzlJIZ29dTJ2ATXVXAcBxPnFfHRAMnYYKLeeLExX61vQvpqrkLQHm
XG7hpVzJi56gYKAzxa2BLq072OCVpVS70bfWlhlSTVcSlCrUf+EcarEk4FD8+Ih2NCvrqremG6yn
TtcBn8Xr8M/6zhOYvLi6AD6eArDMKA8n+Ccv8A==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A5y5QVZU8yjPexRVPioSiAGohCHD5DX5FVobuMyhcgQRExLUhPvnnS8HOtxTj/2IapEcz68gFMGG
Hpi+m725u85/om/Vze9pGIW9Mn328Kz2FIg3W5EvGstfGwY+48LiAGAmTR269JS4lJGVYWYOz7Xk
S8cEsFd2m7j8iyKtARJzD90+UdXq/cIIh725jC9i8nbgxB364zddvm1Z/DF3JRw1qFp6GGcuRai1
KNcJ1j8c9wtIgktpsteU3e5+bxHEw8NT3gWXUFYjm00NDq97Jals8Jjktmum2nQxoF7ivPacfEey
gnSF6jRMkTsZObzc30hAhs0CEtc33hZLhPLHSn8pQ0WyvKJLHdd5s2yckgTZtqxC1Sbwe7WEgNXe
ZMX3pIkz+aoXsAL7GBLyVBMVQcyMoF0w8QGAaTe8sqatABwPqXidYRqNROTf62IYcMpV89XYgaTv
EwIn/oni9KOFd2BFVxRZbFGGC4IjvigsTBUijI+Dk6kVnDh240clGcc4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Omtp+lCaqUx7Z4qdFj2zrN8LpCkit2eX4hlMtig+ielGm/x4FSZkpjoFmiqdKFPi2eg0pg09MSai
XyGH68UzAR7Xrj8f1jlIoUmMKp4GcxfdqfTeuu7kWGOJEP6cvgTjSJFj2gawDv7f4yZcltnK2x0L
e4GW/rBTmGvZtKWb2ahjINLxPuh3dDaSaWdb+zVgbtyrI5FrjxBkq+aOxSjyNsqnCx1L0uWbxnkl
88NbXN3dTaECXHNm/fsleayM5hKis7kTv9BFajJMGy+BhQlmIYpE+F5zchnTTFUFJZCz1sX9Fc8e
HcY7irB8mR3ajdzjUZLBQEMktp096Nheq3U75A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hpeBLwN9x2ZFDwroYLlUe5GjjDepHik2l0c2s3/6S7JPCRkzQSyt2V1Ad/JewAs/QNp5SXSbYYB4
rQl0My1LDMF3xw43r0g2IbcyHVpPhGp0W5msuQdF67afnsRv90iJYWLMI3QkYGCTWAzl4HrLxFSg
3z8XZRK670IcxznOrlvgHmIKsvubZrBkuc1EynrVb9Nw16QnIx2rc4WgcEXeFf+4i1RoYLDd3gXK
NFCNMdtaRYUThunFP6Z4ViZ5UnDmKq+IMhd31jTaqIlWOBDxPI1+v5RJYxIyTbn4rxlKR2fNbl5/
z4OUjBTd+1GH3I2OXlqmAOvIhpe2Z2HH7nZu/A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Mt2RhTSUwEIEWeNARbyL+EdfS1UF6nPaL/fKl/7oO2gina93egwCWDLl1fbBtkfaPco0cu4MJ9K3
OraAsyHRlY+MNShmJ1LzAIA1LjZx4y55lu9dlQqSUXR7AW7wVbkg1864mK+hM/1XygU0jvebKNW9
B7xSER+asLO6pxi0mt7uC2PHxLPAYEszFhmnap82TtbDGdQ2qtyekY+ngs+N2fAdsblxVwJruiMl
e6XJ127M8N1mYwhWU2HtRpBOSnnKoHgD9fG51XK/rhk8DxT66QnX9uLPB+H25eDupBJGi1Y5o6x8
hOwZiSUVlBLh7brfzevh7+eRn+7es6wBas0+3w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20192)
`pragma protect data_block
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
qQzuoKorcTul0CedYcE=
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
