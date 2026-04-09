// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Apr  9 09:51:56 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/lincoln/Documents/ECE/470/Kyber/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.gen/sources_1/ip/mult_gen_0/mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_24,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_24,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module mult_gen_0
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_mode = "slave a_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [11:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_mode = "slave b_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [11:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_mode = "master p_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [23:0]P;

  wire [11:0]A;
  wire [11:0]B;
  wire CLK;
  wire [23:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [47:0]NLW_U0_PCASC_EXT_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "12" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "12" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "23" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  mult_gen_0_mult_gen_v12_0_24 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .PCASC_EXT(NLW_U0_PCASC_EXT_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
I910e7jbNfN24pXwaCSMxqVj2Ezdrkc8axWPNPWLuy5wJ6bYPjUJrhdK8hBm+XPeTfSb0PTJnr/x
Krh166hfPPBlnnedvQG+2p32cWWYI3Jj65CR+tqidiJhdw+jpdAT0O+tDHpXQu8A715yy0ruF+zv
LSutZic4CGaPqXPBU+8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tOTzBjh2SQO+2QgYvLGd62ippBEfpJwpHWAs9rrdHUwvGwbeByaqaz/HRw7rWSQh2FikidsOXzr9
VD97c5jdR48paYWB1lmdqeF488Y2jMQc2CwReC98nLpXFukShKI4sr8QK6t5sXjT/4HYezgr4Xix
zIwRKQ1ReXHO6ZNomuErKJjpFX/dn+5LT6Db5SVulrxL68ljashRqDeA7GMw4huo8xcNtxNV7xfb
oM1HgdoJhhqlb568nKX6+jaWGr9fZIRKoMH0vO/miKYJLOeWxNZ2Pgg700CXwOC83/aikmVGhgh1
jM3HpBk8aDp5Y21A0Fpp3kUhyZs4OUFcsj/y1g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
EdEhYfxGLALWwz2A8RKGvmueJD2fHEVu9+KVbTSsUS32VnYoGnc14W6BjgM+aVdYFrvvOwQeTUpz
FZfb+sLXywNHm+adAV+xzqk1XvcJNt3VN2sycpXJY+68+tjH7IHZQ+8yRbqaYWnZVqJ90vR6XR0X
740D0LE2a3P59lGmu8Y=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qt/YSLKDmd7omBa2uY94RAUTN1YLtqMWhKZeF+FJccA6f+2IUvNFUb8VA+KvnOSWUfsIQ7ouGGSq
YzcNlVicCVvt/gv4b6dmyYXQ4pL8mISaNILUIDeJNsWNTft/hNt9Bp0lHqYr11R1miAo9TtM2l3b
UyQMH1aTUeEet6GtapPYFdaHR2DKzB9jvbi88vlPO9oz+QLneWzbOIs1SzJ49DV8fgNn4vi2PFqG
ENgTkZlveIrHMdk6vzm9wQQXQaXCNfLgWB+Y40/wwfO1ZstKHKuradIIvAQhEEKN0IGu3/bTl90D
UZLzQQibBYsl2VYsSLXf0dIMGIckVgiTbJRSGg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
u1LIH9BQ8X3la7q6da9Mzh6T4U6V+HvvkBBm4C+CQe7BF/eBwPNxSzxvZE/x0TG1c8bvOXRTxnmu
a+0ZGsqq5IqVTbQhfDEg9Y+gJz1IM8WMwqLVsmHSeUbpbnwngKoUbNQOQv1WRyNGnv4F/jI81nYX
HuXFyE2NVHTTMzCin34fKPiwVDQ+UzNTcayDrnU1CY+Udoh45KlE1l6+28uLuAnW4ACdWWr8ESLq
DR4dRp1oHvaNlXUK7vcnJ2+Ov/qLQc+1QeJeSM9svqPNs448IswOzIlk1ulhQh87kpwdHV2gdfSS
ekFaViYIKna0lus0TnUUqCwF9aOemBIgOBGm5w==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ThGX7m1wupKmfjpeSuERSB+T7gquJSX6tq2xggUCrpUGHebhya8nWjMujArHTtZh6oUVb0QX8VDf
NRFTTfQ29w/ozh6fTrTQ/PrboWzdLkaABpPNVyeMStlulCCsemZUduRW3R2l8qEq44TVZcrL3NLq
NQtvyT88wqSWUs/Ly+3bbOMwCFcUyreYECd3L7sFTekvmjgOzseWEkUqi5rYpFaoe2fIKBy3/i1I
IEhb5HNd3/4wBVm4JzwGU7MCwr7IHJ+wDpOVyuwb3lRK0uCKTbMLrXrLR6ETYzaSjx46bNWzWnZS
2jU9OaYlTxamZSRRC0tPHBB4HPVPLAdW2y8kLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
H2BVuF6JPvdByoK1aCz7p5WLhtbYDEDat4vaF1+IGCqBNuCgU7ZEckdQrjRNgyLbBCuGUhV2/Z87
7zmLyvPKp31qiGE62Z1rxDDY/8uPTNJmHChiPtJdrxtM+doqnoh6vftv5e+5o/fBrPH19+yBL2Nh
Z5fckSgZhFQ68P5dQuOkyIC5tp3R/HOnMjpG2xTMeS1yDGuFnYHA32VMFhXbyJbD4Mp5jVlQzwLs
6CrhAWWd7oBlxQ1e6DiDkbPQI12utFzvD/zshqm0HKUZY7YNRVE4UKGU+0MUAEr2tYE/KkaHSWmA
hTE0pwWLvrn0T5ldb6JKisPFcCRFq1RseLqKnQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
KkmCCcPhzWVUpuyH7mDH/kWvZLU9F0bZj+FB6hEDWav7aepDlW40mXmjmlsPTq6UcrVxN2LRWKt6
aT20LRSTKTlRlh29oiVlGDyITvP4mqCOoNs5Jiye2gmf1rtBW2DXoysXfomK0SypsNpy8fNr18hG
57a6lvuAP8Rh6q4wDGslM3Xbu71JJk1C9lVARGmzGP/mJtvA3iedWC4Tg+7BrLO09FZ7ldiVfJlT
0wy6cQym8l60VY5SIWLLj1XoUbZONTLU3WT1lFs/tFqN1JtonQ6ZZg2qYEghgeAPL9/Gl6cdPPu3
wM+ETD/nD5LRfYZVM7Lb0ejBBAeKcAOOf+zbgXO7T24PqmwUerrefHxeVSb3oha6vCHiAnoRYuVp
Dxfq2ra9dO9LNsuPs03zR7rLLuvCmwUWqSB0+2Z9pTbpt7A4T5Fd0OLa4rDFr3LbFDf16sdDy0pK
tatqXYi/+Ytep9KZh2jjoxEetd1MLAo+Wd8Diu78IMAH3TBsO6hlYVqa

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HlVefHqF6PMcC1QL4S6isRBBHrYDmuMKO68bwPID8DHMq9J2gPyVJo7oVhVhhh/uz4wr3XtJJrKV
kdSwhQxSbtiGD1Kme1G1EM2+tBEkDFjVnc5txT6Yz39JXmjVlokngCLa0jPfnQEDMSQLLctVLqHB
Y71YHEhdjR03f/ErlbzbJzk4954gXndSJ8W1+1CE6C/Q7JLvBQOes3Wdhx23NEFrPR+xF1JYErJB
MujUqjm2zC8WprwOfluOLYlb3C28uYfcybHvDfG9S+h5HezEzSBVtUh+EUlY65Ug4b4MZDbpMdHt
514c4v/RlO+5c67z0QhV9n8iVnzPoHkifYzPPA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GElKnNwHuDvUsC6n3ryq1yJlBpsGEgpqhJaMewBzWoI0ABOCOmkYXeVvVaght1MSSYlMMh/2kUno
8CMZ0oTtGoAOaDOj+2b/ipMpLfar6QSptPGGS1BDIyibKaIF995HpywP+JaSmoIUypZPu4EGqqUl
irumZXlXoi0CgR7fBMJk6fsFsv/H48YZEAvFSUqWN5RWtWqhFOCVJwjRB9qYv4Cz4znFjCSXHePO
3WhFhxbYdkg//WZm/i7Na8UEwV7skIyx4snZFQN3StEshEhlus9bZj0WaMhL/q3Qi5M5e0kvS+a2
TBIb31t89nzvzCVXX2TsVZQIOU1xjM22qEBd+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NvC4x0gmKiuZSBSnTCrYtP8VEcCHfYyFLPcOc7hcUGPwtoKZrCGumU4YJspQ4iyC4Ibe0vTPscVD
/EaTDg0G/qI5OV8V47s1r/8smLOrXQSKWcxqeT5UVy9c6GKlRKrC6ZskdRUI9wGVAliaeOeKbxqH
XR/4p0oMdtKBZdUEbyq2aZwf72LyBc6m5qbtV0bvdoCpJkLSCsRngzpyOKuDTUsZ//SwGnpt48W1
+Yrwea91WokwKvPn196R8ZLc0VmvRaNX+g8o4/P211VZMgur2tNI6ndi2tdu0/pQYQEHOxzwHvKg
qf9EnC05euLrpDCFshQjmyblT8x0L9rUTmfNSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5728)
`pragma protect data_block
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
GdVxrmaf12QgL0EjUFo5nbCPES2daI9q3xh0Hw==
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
I910e7jbNfN24pXwaCSMxqVj2Ezdrkc8axWPNPWLuy5wJ6bYPjUJrhdK8hBm+XPeTfSb0PTJnr/x
Krh166hfPPBlnnedvQG+2p32cWWYI3Jj65CR+tqidiJhdw+jpdAT0O+tDHpXQu8A715yy0ruF+zv
LSutZic4CGaPqXPBU+8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tOTzBjh2SQO+2QgYvLGd62ippBEfpJwpHWAs9rrdHUwvGwbeByaqaz/HRw7rWSQh2FikidsOXzr9
VD97c5jdR48paYWB1lmdqeF488Y2jMQc2CwReC98nLpXFukShKI4sr8QK6t5sXjT/4HYezgr4Xix
zIwRKQ1ReXHO6ZNomuErKJjpFX/dn+5LT6Db5SVulrxL68ljashRqDeA7GMw4huo8xcNtxNV7xfb
oM1HgdoJhhqlb568nKX6+jaWGr9fZIRKoMH0vO/miKYJLOeWxNZ2Pgg700CXwOC83/aikmVGhgh1
jM3HpBk8aDp5Y21A0Fpp3kUhyZs4OUFcsj/y1g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
EdEhYfxGLALWwz2A8RKGvmueJD2fHEVu9+KVbTSsUS32VnYoGnc14W6BjgM+aVdYFrvvOwQeTUpz
FZfb+sLXywNHm+adAV+xzqk1XvcJNt3VN2sycpXJY+68+tjH7IHZQ+8yRbqaYWnZVqJ90vR6XR0X
740D0LE2a3P59lGmu8Y=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qt/YSLKDmd7omBa2uY94RAUTN1YLtqMWhKZeF+FJccA6f+2IUvNFUb8VA+KvnOSWUfsIQ7ouGGSq
YzcNlVicCVvt/gv4b6dmyYXQ4pL8mISaNILUIDeJNsWNTft/hNt9Bp0lHqYr11R1miAo9TtM2l3b
UyQMH1aTUeEet6GtapPYFdaHR2DKzB9jvbi88vlPO9oz+QLneWzbOIs1SzJ49DV8fgNn4vi2PFqG
ENgTkZlveIrHMdk6vzm9wQQXQaXCNfLgWB+Y40/wwfO1ZstKHKuradIIvAQhEEKN0IGu3/bTl90D
UZLzQQibBYsl2VYsSLXf0dIMGIckVgiTbJRSGg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
u1LIH9BQ8X3la7q6da9Mzh6T4U6V+HvvkBBm4C+CQe7BF/eBwPNxSzxvZE/x0TG1c8bvOXRTxnmu
a+0ZGsqq5IqVTbQhfDEg9Y+gJz1IM8WMwqLVsmHSeUbpbnwngKoUbNQOQv1WRyNGnv4F/jI81nYX
HuXFyE2NVHTTMzCin34fKPiwVDQ+UzNTcayDrnU1CY+Udoh45KlE1l6+28uLuAnW4ACdWWr8ESLq
DR4dRp1oHvaNlXUK7vcnJ2+Ov/qLQc+1QeJeSM9svqPNs448IswOzIlk1ulhQh87kpwdHV2gdfSS
ekFaViYIKna0lus0TnUUqCwF9aOemBIgOBGm5w==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ThGX7m1wupKmfjpeSuERSB+T7gquJSX6tq2xggUCrpUGHebhya8nWjMujArHTtZh6oUVb0QX8VDf
NRFTTfQ29w/ozh6fTrTQ/PrboWzdLkaABpPNVyeMStlulCCsemZUduRW3R2l8qEq44TVZcrL3NLq
NQtvyT88wqSWUs/Ly+3bbOMwCFcUyreYECd3L7sFTekvmjgOzseWEkUqi5rYpFaoe2fIKBy3/i1I
IEhb5HNd3/4wBVm4JzwGU7MCwr7IHJ+wDpOVyuwb3lRK0uCKTbMLrXrLR6ETYzaSjx46bNWzWnZS
2jU9OaYlTxamZSRRC0tPHBB4HPVPLAdW2y8kLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
H2BVuF6JPvdByoK1aCz7p5WLhtbYDEDat4vaF1+IGCqBNuCgU7ZEckdQrjRNgyLbBCuGUhV2/Z87
7zmLyvPKp31qiGE62Z1rxDDY/8uPTNJmHChiPtJdrxtM+doqnoh6vftv5e+5o/fBrPH19+yBL2Nh
Z5fckSgZhFQ68P5dQuOkyIC5tp3R/HOnMjpG2xTMeS1yDGuFnYHA32VMFhXbyJbD4Mp5jVlQzwLs
6CrhAWWd7oBlxQ1e6DiDkbPQI12utFzvD/zshqm0HKUZY7YNRVE4UKGU+0MUAEr2tYE/KkaHSWmA
hTE0pwWLvrn0T5ldb6JKisPFcCRFq1RseLqKnQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
KkmCCcPhzWVUpuyH7mDH/kWvZLU9F0bZj+FB6hEDWav7aepDlW40mXmjmlsPTq6UcrVxN2LRWKt6
aT20LRSTKTlRlh29oiVlGDyITvP4mqCOoNs5Jiye2gmf1rtBW2DXoysXfomK0SypsNpy8fNr18hG
57a6lvuAP8Rh6q4wDGslM3Xbu71JJk1C9lVARGmzGP/mJtvA3iedWC4Tg+7BrLO09FZ7ldiVfJlT
0wy6cQym8l60VY5SIWLLj1XoUbZONTLU3WT1lFs/tFqN1JtonQ6ZZg2qYEghgeAPL9/Gl6cdPPu3
wM+ETD/nD5LRfYZVM7Lb0ejBBAeKcAOOf+zbgXO7T24PqmwUerrefHxeVSb3oha6vCHiAnoRYuVp
Dxfq2ra9dO9LNsuPs03zR7rLLuvCmwUWqSB0+2Z9pTbpt7A4T5Fd0OLa4rDFr3LbFDf16sdDy0pK
tatqXYi/+Ytep9KZh2jjoxEetd1MLAo+Wd8Diu78IMAH3TBsO6hlYVqa

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HlVefHqF6PMcC1QL4S6isRBBHrYDmuMKO68bwPID8DHMq9J2gPyVJo7oVhVhhh/uz4wr3XtJJrKV
kdSwhQxSbtiGD1Kme1G1EM2+tBEkDFjVnc5txT6Yz39JXmjVlokngCLa0jPfnQEDMSQLLctVLqHB
Y71YHEhdjR03f/ErlbzbJzk4954gXndSJ8W1+1CE6C/Q7JLvBQOes3Wdhx23NEFrPR+xF1JYErJB
MujUqjm2zC8WprwOfluOLYlb3C28uYfcybHvDfG9S+h5HezEzSBVtUh+EUlY65Ug4b4MZDbpMdHt
514c4v/RlO+5c67z0QhV9n8iVnzPoHkifYzPPA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GElKnNwHuDvUsC6n3ryq1yJlBpsGEgpqhJaMewBzWoI0ABOCOmkYXeVvVaght1MSSYlMMh/2kUno
8CMZ0oTtGoAOaDOj+2b/ipMpLfar6QSptPGGS1BDIyibKaIF995HpywP+JaSmoIUypZPu4EGqqUl
irumZXlXoi0CgR7fBMJk6fsFsv/H48YZEAvFSUqWN5RWtWqhFOCVJwjRB9qYv4Cz4znFjCSXHePO
3WhFhxbYdkg//WZm/i7Na8UEwV7skIyx4snZFQN3StEshEhlus9bZj0WaMhL/q3Qi5M5e0kvS+a2
TBIb31t89nzvzCVXX2TsVZQIOU1xjM22qEBd+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NvC4x0gmKiuZSBSnTCrYtP8VEcCHfYyFLPcOc7hcUGPwtoKZrCGumU4YJspQ4iyC4Ibe0vTPscVD
/EaTDg0G/qI5OV8V47s1r/8smLOrXQSKWcxqeT5UVy9c6GKlRKrC6ZskdRUI9wGVAliaeOeKbxqH
XR/4p0oMdtKBZdUEbyq2aZwf72LyBc6m5qbtV0bvdoCpJkLSCsRngzpyOKuDTUsZ//SwGnpt48W1
+Yrwea91WokwKvPn196R8ZLc0VmvRaNX+g8o4/P211VZMgur2tNI6ndi2tdu0/pQYQEHOxzwHvKg
qf9EnC05euLrpDCFshQjmyblT8x0L9rUTmfNSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9136)
`pragma protect data_block
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
gn7mte/CTTLSG4RfyTlKGg==
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
