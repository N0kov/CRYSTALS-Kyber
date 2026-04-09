// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Apr  9 09:50:14 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/lincoln/Documents/ECE/470/Kyber/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.gen/sources_1/ip/blk_mem_gen_2/blk_mem_gen_2_sim_netlist.v
// Design      : blk_mem_gen_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-1
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
3C9IdF4DvddewbWY6iI=
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
