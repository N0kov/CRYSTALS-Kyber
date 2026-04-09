// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Apr  9 09:50:13 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_2_sim_netlist.v
// Design      : blk_mem_gen_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_2,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_12 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20224)
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
