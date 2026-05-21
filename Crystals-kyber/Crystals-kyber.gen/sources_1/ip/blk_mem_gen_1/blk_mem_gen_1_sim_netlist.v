// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon May  4 17:49:24 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /data/claude_sandbox/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.gen/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_1
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [47:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [6:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [47:0]doutb;

  wire [6:0]addra;
  wire [6:0]addrb;
  wire clka;
  wire [47:0]dina;
  wire [47:0]doutb;
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
  wire [47:0]NLW_U0_douta_UNCONNECTED;
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [47:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "7" *) 
  (* C_ADDRB_WIDTH = "7" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     6.4029 mW" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "128" *) 
  (* C_READ_DEPTH_B = "128" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "48" *) 
  (* C_READ_WIDTH_B = "48" *) 
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
  (* C_WRITE_DEPTH_A = "128" *) 
  (* C_WRITE_DEPTH_B = "128" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "48" *) 
  (* C_WRITE_WIDTH_B = "48" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_1_blk_mem_gen_v8_4_12 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[47:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[47:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 31488)
`pragma protect data_block
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
Uhef6HUk91YVL36gAF6N3inJiGnTcIeo
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
