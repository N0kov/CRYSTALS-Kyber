// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon May  4 17:46:38 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /data/claude_sandbox/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.gen/sources_1/ip/mult_gen_0/mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
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
4u665U/1gDxDLQ+tpO+bfKB28oRthZ6l6YZChA==
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
2WlzjU2h304387uhQ4YWJw==
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
