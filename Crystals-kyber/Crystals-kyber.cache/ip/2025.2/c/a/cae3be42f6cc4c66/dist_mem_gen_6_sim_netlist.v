// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Apr  9 09:50:52 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dist_mem_gen_6_sim_netlist.v
// Design      : dist_mem_gen_6
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_6,dist_mem_gen_v8_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_17,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    clk,
    qspo);
  input [6:0]a;
  input clk;
  output [11:0]qspo;

  wire [6:0]a;
  wire clk;
  wire [11:0]qspo;
  wire [11:0]NLW_U0_dpo_UNCONNECTED;
  wire [11:0]NLW_U0_qdpo_UNCONNECTED;
  wire [11:0]NLW_U0_spo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "7" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "128" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "1" *) 
  (* c_has_qspo = "1" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "0" *) 
  (* c_mem_init_file = "dist_mem_gen_6.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "12" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_17 U0
       (.a(a),
        .clk(clk),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[11:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[11:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(qspo),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(NLW_U0_spo_UNCONNECTED[11:0]),
        .we(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ucFC30e5vmQ8oT7umG3Y1D8Yf5e1cD8sjdBGUk30m4Msp+M3x9Jfhf5iTAerlLiDyp3QEkfqov3Y
YJq0CR7Sz3GY+nY+5RiwWa+uxdDUPnkBRwT4gTwFCNVGDXwwS5DGL6vZnCiOeDm+kJRjJa6/7uZa
k0A9XolySvAgOo3j1yQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
S+12WmwsTd8fioQZb2sFiLm1ThDeamghqcDKa1U/ehDWrSFOkixn/eg/POIy7VE5v2AdNLIy1s6r
hNWBUfGndqx9I8caB0ZpReTzabt5P5Ziaqv3ZtN+7P4YTwy3tRuH2lYlRmtzgZ4PtnddCUcNu+tx
8uODqSimbZVxO6YbkxVeA27NKrn5ErmD4xAuEGT0UPPIFRA3YUzIsZitNmkgCH9C7GuPnHiPqEvf
tknGzsX2eVLzN2CDDFE1URrTHTc71nECncAZ5eHNuQrdJUrACdcYOTVUvAHX9p26Nh6tymz292To
2E5Mhefra3H93CByMSickNWOsFY4yHS6qKlWyA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
OGEvdwKFMPAWmnpx1WZPCcSQQ2qQrh1fZuiLzgb88mhp8angXVmgXc3YhiqAtKMqKBg5NtgrWwHA
rpWNudvOEM/INlt4QOpNI3Ppikq80Qlipe1t3/sJ9G+2kkJ2LY0DpOxP66odtxMk1IT59oz/6NYC
Uo11QKeec5anOI0rog8=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Y6i1ZuSETAM/aPTjnnuScDD/iJVrSETtQzMkOG/DuHCTT8e474a0cqw4N1b7r+wVyy564aT2zcvi
h5wwPIc22zvXRHDkNSb4H1RikdghWo0+agXqiMgBo7E3QSpEE+WTbLwuxquMPy9+MzfWhy9BoFB6
3U4Kna2Qio/eOIuHccRwgrFl7JA8Bgckoy5TO4yim071FDvMfsGlT78Ve/Y3OnCBjISFhLAMdXJy
gLRUSsm8EWukc0fMjEabyyrmfopwHmM5gQLNV73erxaAGs5deaMwy2wFczRmT2mjqZtLa+hdDKgP
NPMqrPU/Pblsk+gC1nbrPcWnYHMgPGUekhhdPg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
znHYjd0VJwRVyT8hEMYYFlL4e6XM8IN4b+IdEpWMEgH7/VgvYUGhq/HU/EXZmcv2K+U9rgBt5l7+
rEgiHyXflmVTYYDOsU9MQR2/iBsCMNQ3KQkG7OvAbpIyb3F0RyNwO/tQB1EzEWLSvhJIvk9vC7MT
uVTov/djK56ZUTocA8v4ZYiJI+4iQ7rkGE+z/zcMhABO0YGw6SrYQfujml6J7G8H3AsbwULQbgld
EbltU4BsDpB4ZgYkkHIkQ+uBiBLexnNtwXe9ELODzKZQEkDhyB9JTRtC6Q7Qy5nDKUsOzKT1ebeO
zz3qrnaNE5IvfIOvkArLbwfeJ41HA6flqo/+4Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iCPGk8mJx8Dx2yHya1ZtUq6Fxx4fyMZ8jj3CDSrCKl1OIbOckEyqTxa/d2eodlRYyk1R3HtsYFca
fHdImbFibMWe9HKhpGCaBo4gB7SJGKis6YIJ5dJV/138lOGwI0/KHRKmfYMBQIgE3Ph4ScV/c/cI
vOu34MFDjS07rV83GKGYs4/R7KrEsoM6n9h+m33A1I6bVxzHQa/1AESsxh11yKRqI9GxYa6rm6DW
7icE60BEPiPxg2gqdBdfaWA8R+m6cgDO4mzbBOgr6h1YntqQ+WQoMVvs4hIBO5Af9Lncmv4jRIWQ
NcpdlzoOBlbfhGRlU7CM+fwczWWZ29W2NvGPbw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nR00e06yXtTXePTzpCXLZ6h6cpQKxaytl+tmUHYMrYKI54i9FJbkvmPZo8QQBINyqhV0rYggxiC6
ZRIMpSvGIddhduMoJMncbT9T0pQwgZ3oI7K8tx4lysPp0banhV47XhR8yC0IpvI2zZQ5h+WR5Xzg
6weS/8Cbr3Drp7TbM2TEKUoCcPW/WmqJ7hdfHQR2Y2IM2G0Xt/tEOYQ7/sGIyX5/flLfKu1yP8/M
Zg68tboAarqnCYiHtosJYwOcBYnXbCMXuSE1VP+7XG5h0lZLER1m85pi5CPpnu52sXHTPRzYopNX
meyWo83j5hqMejdk9bRllOLgjs9DmRpOX4bppw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
PNSkIJ852qBwC1XfxbU42ajBwUi5AfdUVcRVXY4zOaGqSRkM76JtRXf8GSAiKv6+XCxwdYYsw0lo
gL5kS7ybYNmzoMeqahTCmviCLHzF1VZpoqzVudzgsg58nqtlM+KRtP8xkYqYj/zfBOX8CHJLKK1o
A7HEvX4310AHmSHCiyn9142+egHlVPDqcRwdP2MbGKM0D77irnXGgcArbuLi4Ii1qtnFhTdJ9K/X
8eQtexFAF61I1neOOIlBDzXI7uRzK1MNPmBsad/mqz0KBsEzmjlTrHI4b4C8RrZ1B6Hx6nLu3sUU
RPed/B84EW6PFPPzYbqwOPyVOTTgq3YYhZdiVR0I4TMxSFxdm35PB4gFUKpPETh3oM/oyjSjnZY3
VgoU28LdHArC6fKCvHSQlA+oGNSDMhjw/yNfybSvHjN3bfyUuIwZJ4cBES+bRl53otFiHqotzcMw
upsJfXaZBhZYpQIztnTLlXj0DBBOGpKl3kRgRBDcOt7VdCOjFnZVaM22

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BqVxcaoDWqd+XbWvX4s/vXBF2RJH0EXUJifZcoTrOxrlDu+c5Q5ectL4zGt0j084tLGyfOwDXzEG
1pfyuKUvf4p907Wr+f8yuC6YbnzW3PdsSpR0AHb9Bd9EYKdScy1i+YD2d8OI5Rkgn9Sak5xAvbxZ
SVcRMQYbwOVC7DJXfYZN26acMboR3HGEhTVkIcZHsjteI79SO2qttsbrBTchzax5jcSgUtFI/DZM
yiWjLLVP+KXXvpV7FssH0er13NIH+BZHGcBhLH6rlAlcgeNEPVWhVA0bIuTQULJ1WbOaG7MbmWYZ
wmyTNhWycUIz5BXbLG2XkqBy1wQPv/mYf4MwXA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12464)
`pragma protect data_block
XjndpmX7ynmTQOiMnskli9y7i3XAQzFcmFSF5dnge1O9aoKmLJJ7V4PzZlZ+zlBBdcxye5/TP9Nc
NlP6dRLrrwoeHC6oiZICsX/JYjYFk7GxqfgTiP68P5GmjtgIoEyxAt9P1okr/SO8u75k9q+2T6t/
CDg2R6xaj9Yp4OrouxAXzk0h3WRkiCJSXa4KVY0/Q4aJD105POFN7AJRpMir1qAG7r1Iaz5el7Kz
S+DP2ej/ij1v7JM+MGH+Y9XSowobhlq2+wUO85hb8iOvLO6bNxbGp9vsz7eASitw5HtDY3yevSV+
xmd1pvpJLqnRN2YcY8Vj31VRus2q3CfHW5SMIrelE51FGTc1AdSHzYNvIV8XwC/gfmfBSsNhBSRj
YAP9g6gj/15BZ6bM2jn3lTWfFpS2MFIxL/pZMAhcQwt8QIcOJtklvQTGwfAUGT7v8V59yUdkOVFo
YBkAL6NKgL062K+aO9TMW8zEuU8Jnk0NEU6puzaCJvmZqFfH928omt9UckITad4CUPelgOheTYFf
gQtk1L/oRhWbkAD7GYmenNYdrQNa4iRMbMA2D1Rf8SAkchL30s+Dj5zP942QiCQzVHQ0iTI4drPS
aJWeRtp2Wop/fIjDWGUv7ooidMsK13snKC8FbsziBi95j7ds335Jn3RqB/1gJnsYu40ctsqTrPXH
NtezutePGPvLRNRGSKmLRl3GR1LGcWexmcT0z9cUg2canIf44jeQZNUKfXfgyPiHYNwmvWNzmIWu
oVUd69MQOnW5MQiUPYuaf7f2H9ac78aQP9tg3nRB94F2tHaq3qJMb4DfP172fFogGnDqryd7CDgv
tnWIegAIsHWWHNri5TsROr1RcVJaJ1qOyn2Co9z3qknUDyPIfwkf/Y8GzHb5UXSNrWJfZ/tbef9f
tWj7B5XKZZHQRdPj6dyUZHwS4oJIQruexl9J9R1EojrnXOo2Imt20LCBMonGOP3JEwPqQnbRBcAj
uazm/ceKPlzRYEc73k8VYXLbOMPHLAC0lHlp+b3aQfEJ2Ddc2upNkiuHHq6fJKx1io7n5+RA9TTe
ePx3qOTRuXQHDYh7aUl8pI2UDBBYlelGYDEddzEtw6e0iSvUeMtx+2E8Dw9jzPn4paoGT8KPmr5f
wUSsvzEAnYDf/Cl81z1HcmXh2qTjpAnw2AqazGx47gfLEtGSuMFm3JvexPrhJNkpj8QMmKkNxqQg
vMep4nCGTCRV9a7LRYMA9Ce3TQ+hyYsE/mdKyRjzupDv/hHgq8wuRbuApJUuRqUL6w2J5bdUNBNf
NYSfSKjs6e1FX/c2HLg4JyKbWRDkhn/vMegl9tMKQtyGalpfR5/hB2Uifoq6XGsIM4pQmLCa8FOx
iibYPESwnkS6RbsjKg3fVzljpPEdmBVDW2eQJ4QdSbJlPw9jmkB21ghVDOInknoW3hwb9KhnjsGc
9ZGnqG4s2w+MrX6/zqcmDXEm4/0Y8YvyDo00u7rMy1KCHDb28RbQRQnjSafIQB05rdTIsb2jnffM
H2yg5RNsup6D+7R228bbaacK/ZZ6zfUvjSSZbC+umakcny/f1nRU+tRAfLY3FYXx53yX+aW/knAj
oHSQquN0f+qE+d3XITjhhqposi9cxCT937v8LO2Anjup3i7VlJT4/0R75mglcFSaUwP0iQyf9/4v
L8H818Ym1e6c21dZ7ti+Gpws8qp4HP0mt7UC/jSH1rqLRKCy+CQuKFNLNVAAcKjzbBMCUPwRIVKv
5TdwnF3F4H4ezKIVtZ89Z4aJR0WWtv16qRTb/qcCi3zMWDvEIRfvKd/TpMDjHfhQe/kRtgozEAZO
xfn229e3EIPyQv+1FYfQImdH71a+fXZWyE9Az5Ixfw36Ny92oDxE7JPEBWFV6ohxEPJAG8OLo5bR
z7DcoqXITxSf1OkIncMVrTDCJgnsA/fqgKqoJvOzMW784NhzKaMLDZQYF+O8YvL7aWeAYEBR1VvE
tSk0ewnHT3f0KMV8vOauDmNzm9S6cbyEL4SleHe5PnzaqUTAA8GXi5tTdCIHsiVR0tSB3KgwtFwk
zolBj2BoQfGH1P+s7xK53vbbRZO6nal1BP0+nNPsGOSfzMdMuQ3vJpV8YGO7KbvQzwz4i1/5gdvV
E0bs2UjatTaY5wEB10z8cASLme1IeZhXKNTR4nmFhHAaWGIF0ivU+Glmx+EyaFLfTHgoUrvPMWIZ
rNNZxqdwcO2EJ4NUUFa2RZRl5MDKS1XFtNAJ3s3o2TuuatlVR/oqSPh98r7WULMewnehVuS1fBoM
ou9eFJWhITZZuHvHF4vqOq6BzF34us0o9OW7fX8MzoleiU6BmM0ZPyIA4HVjhsbZslnUjBmZdHeR
Vc7fbDQP368SmOaM4IcfTli0//xHbtZvURk7C0t+aZY4Wg0sZrwIs7YnUklRYJORn3VZWGoVI6su
MftoQkXgbnlhuh04mXMLM8ZTVSPIrmSELahTTAletrbeelrd16yr+qTT/X9b1OauG5HPZ/wlbVPq
q+Rti9jjqksns/v/40COnnXnx7Uyh0k68RV/xz0I5Mz7BhtaBJOLBLnl1iI+2Xqp2TtrLof2Srgy
Q16r5s3WqzVmtjtPhFha07Ly6Z+K0t1gfacUCkOiIX/JH84G5L2ydbt/YQyyYtcUiWCjLZ6eCvXw
1n/HHIyRY5vwqdd8uOeRJArq29X/1+/p4TOOk3wwudCETIytcX37k87Yd4R4vGluc9SSnO5HBjwB
xEAYcXHbJgtIeQohkIYlg37za/tR8qruTmGtyQttB0erMnM0WDpZjGuJUT4kgFoHI7TvcgijKLPw
oze8lQauLY7ae6VJJxmVq4Kqq7YuWm8VJqYfcGIawVcEQSv8VZZivYtOqTtGVLGE95cVUdharHuA
RiDsDf/txrJ1R2nWxvXnEZqNaLSdj/YWTAAuz972mkEwl+YAzPHJx+4iIbeAEUeEdlOCdRzmLIVS
e5oKK7uFWr6KawcrzwlQ054GN6x8GuQwkr3BXId1Cvd6oZidqTxhIvb9cKb25mgFPokrmIl0JgTC
pU9VqdjUyl4VcILxLQktLxLx69GOdj+n83plvhxp5rWI3A/sBDi2WBD2ctH0h0UGdwA5tMF4EYj2
TgUgiYnTSe5lPE2CoyoT/T6IliqHc7tZSfmFgN5kHruu6z8gJoD90wZ+GIWGoajRmcUTiI/pWnpj
JJMLHXBu75dXgdWC+jV/iYMNNpcSEEtRYZO+lvie/5GSavtXDeFTYnc5fI6ZOq+yqtLDAfa/aDFb
/oT1cJPueeZOr2DQ+JLv07ctBk2ENaxQxym3LPO6xbWn+9FjbO5TIPy8/Wn1QXbTUgLffWqKLqXX
KnHushhQcwSgZ73Zv/Gk0mX4hWlz3F9GNioqTpXtW7GRBb8zrJDs/erFV4Ks9Pi8xnD0amPyhNif
0+VsNJL8xgmNTm3D3AGbhql9+j5BalTTGo9kTzEpI8EGDfVFjft6vx3NfM6nYaPOhHm0WPeW/3Ml
SIvrV38PA5d5V2o6gHY70Dxx4mxDmo8XVqLsiMYfoR0SFVdB32+Jzmy8Cq5nKlT+lQcT7E72kkSA
Us/sUrdUT3NQLlL1CSaQL6gjyc4wj9EB0eRnBAFuRQV5ObjFcIAgI8ERZM78Sq7ThvLiFToCk0lH
CEb5LtNkEml90aP/UxFoVfjQWh6NvEXJR4pJIcCTPCVnBBQJjcLyDhk2E9kqzviLMtL5WOYjr65j
vF2DHI+78WkSWv/niDm8IhEOMn0VCkE3cM5+smsLN3luEPKeOLUqlJFL3X6t2AYKgv29GDMEfIC5
0IBGcKQ/CpKaOkPdZ13+1txzq2L7+FJrhYOPS4C5etEIkp8qC2S1mSC2ckjkhQ/PgQAGe7gM/umE
bGQSTERhtFDKV0iq8O2L5lRuC3qAQnf6Hw8yI6sRHR1cBcJZOG6eZFhKJ1CiigceAWervZwhC6zP
9dMsiWN/4sz6DWhxhoh5YjRqbBqEgej4Pdsl91qrRiGxYFzV9jgLCL4mAYDhPsMAmRjqLItB5QxY
wS1pc2L+5RkUOdb10Ihj01dOy6J+RMFOI5B+e0e1KSApLzBmOAPq+eVFaKSKKUAhS8BiNRa4helh
qk2dcghcKEBUfJl+MTUkv0TejG+i3xcdeVAm1etVaN5LLD4STIHVTxpgrOrriJdk+Op50zEfvGVt
F8AJoNDpntVwhghIpWDazdGOC6EYecS1Je5ZpG/SM90BghxqnEkHC0fNGh6Fz8aFYPjcvGNde4Yx
1y7X9/AxsDaQGU22HVDzjZ4ZYhgQbTYHj1rzyne0zsahmwDpOjpCohL5ZEIZ7J7bOu8F1ADNMpJR
oCDx757lkd2VzxJT3Uzle6+tgRbCowAR+CQFMNyJQi6AucqZTYos/rUyhxHKTUs8RsLC4sRtD0cu
djS7lhP6KgFlxdoJ98bEHYN92CB/BCO9vUtB21ueP915yW1a0M3XRQkgkQgilkEiU9kgezkcPdOj
G45cGBFRvANxw7aGOeWrc3OogaDj2wuzSGihu+BSXGdNfIRMhmRqU/Aolw1hCV0zWb3qSbps1yOE
+Cqbhv6Z897J+D8QnXX24Klz0ArwBChZu5KevGTZl/sIGOtNt9uhcytjxSP0hgvEgsT0QRfbMq0X
knEtCUIP9Lne72v7PgsSVPyDoaWyxmgPBbEKbsiCWJCJsvvUhAuP6GNchMCP8jIWveX8eNzP8Nrh
KX8CWTlwdru4BjBbAgwhNX5RU3GdjYlMjuLBFVMYzd31SJXOcFULgE3+BtNa+k7NECw6xGv3UtqK
oF4YzSUzppliJoQ7TxiNCykCLDVY20M/zXhUUk7K18EAWZe5S7FI6yGl59hDsVROHUMXPY/1OyH3
mLixakvSGhVn/f5pTdLdkQIdEm2sIKVc/pbiJrt7CcJp0Deq4lg4srO1+ioh+jep4/fMzavfUL3e
7OSB+igdJpKD8Gr1ACXtoTulo2KG/TfGEtdGfafAx/4ZLNqry+w2oJPPRr8kVLja8j1IgTsWSSFW
SMPf9x0Ghdy2LHVCvYRROKIztWNnBHKGvJvR6c3iohHVdB9/DKvRmPMVZxOVkaQcwtFRPTvGmp6n
eOimTnGd4E6pRs1TNkmZrWk3Td2VCrz9cSEk99/vNSdqcA0E+hhb/5/Wou++/jlMy3csVfidV7hc
sqyTVDkY3ISp4DSjl+U7JiIh9CqgIahKIXEwp0RdQUeHuRcqvNAviYWGC/T2TOdDKuq0VPSHh8kn
+MoJRRMUqsvDSoYNYH9nsTEon7qT0KGiCcNBowvE8R6sEDrSZGNuI9/yzP7fO64c+vfouLzsP0DL
DzJ19OLEdqN+0TOlTki88+Q8hGOVHcIsfu8m9JDMvQ/iz3PbuIF6b48/rz5OiXiCREkUCSyAtpN8
/GMZy31nvkTTfgEG374fZUmDfTmVEvue2WqRo8EjyddaFtvwWyAgsY/NvzeDta2Tzjlu7nSMv1nO
n+nxek0fQr8sa1/NNpowIp24EcGBchryr5/ZaVJDa+SxV6np5h77vfey7dqmr3K2rjoalZodQait
mUcuZZd0g+EofIF0L7yPmJIHQu9dWPJaS8pv6uEnJ36O1NiUuCghwuZzwh11zRrlb0Af5sXCzp0/
vYE6f15sQm013aOghyBq+XRRUWxpG1nDSTCmLrF0xuJlmO2gN+h7RgdKW0SEwlkXSmhTrLmE6tqq
o9Ve+s6qW5hvLKRsm78eQKdacQpNHwRd8LAAt9/KZZuBG1JPlGnnN/T1ZElitx7oioozSIP3/U/x
3Erc4qoZh2TzVErE17jMxN6LpyqoZ7xXt+9UuBGW/+s6+jTUjTN/BsFEEytY4rEg7D0NLGhUx7za
vxHU8IiatsNfN+bTglOSHSo8jKSriz9uNNH9W6ty6XfTz8s/ey7r+enxXFY2NsQmW1gn6WVk/FGv
HgRE0oTse8MGfXebnbNI5OU8/XhuH2rEsRGLRk3elVwo++uoKM0HQrFq+Y2+fu6Ji08ppXUEm07q
tV2iZ5sBlM1U8eRI9k83kRvMQbs0aoRzIlxcaj0cMTy6L3ttHW9iz/G4iTEpdcS9D1l90OYRWQmx
ovJ4FoRxctOAuSWIUIX55yU431jXsmiqK6UtggfPcc8W3Mf3Zef2vy8DN4EoSyshXNVdTBh+g92e
0lEJqWp9dR/VjPMubscYr+D2qABkHoZ6wMrDFTvZVSbTalwSJl2+Yfk1jHqEOEv/dJbJwpUH+sIs
8h8q9qmuTBU862x8xFWNyueH4q9yQSC7giRimiM3mxUSJAQ8RPbXt1ufI5tpdbxN6U8djwv7g7ib
p/Wt55OTZNQ15JKh4vaLfCfyVQv49ce80ZC2StOwh7rQZHgSQaDsbjQhZ6tOP7//NVoPSxcydNKB
hBZYBGL3iw7wUXbtLuSximOx+8yLpk33UxuZoSfpmE/8zDwWZ7D7akIimHxvBYCHMKoCeJ2wYfjF
mVV+XFNivcy8E4jsGtwMzRD7YUohuthpEOpJ0wslgtPAcWuS9K5UFj+Umwuw8v4Ghihkt4ARXPn5
luebIyk3xd9h6AMv+Uc+4sSWKCzwU/dauO9rYNBT4/QaaJ/WbZtY5bm4JpCujuagPz/KLEPs+Xh1
cve6P8wpzTkXFBO77SytxyZqHxYe6mOSnWoD19Gq34Qf3DZ3FJ4Jng6XXQmVpK2aRNYOTc89gQWh
9AoI3nbH1L7CFu23lvU++3TZn9+pSvxDMJM6WC/sgaOaaqPK18ilKm+EUvueeQqkSz1Cnvds+24N
dy5fbfqaW78VEQ+nqqu8U2zVBug6nxGnfFhXN7PamHvTG/xDxVJnLg+ZuzmyYCVIppaksTbm7Qny
ACH5yzZ3R19eHi6lhEGjYca95DHCgORfmvS69g8lAhlDmJIWDUfYuc6bLfNKVETzGv0V5f9B5nK6
4QQnFeHtgABtuB6alHJMmyMQ0WYS2OZg9DM+ajzZ11iGl/4gj+qNIndNxAwdYalye/9j5qBxcHgF
e2YLIRXSF0zebEBj6CiUQMVWO18xGhboLhDNgqu4CpGT71VBkW0vnEVMu1+PVUj/0vdccChM/ym3
3BgmMyUjIleDtQiJt0DTRqxl8N4YAwJ7iCMt4h8ibmpx1DEjRvWFAmpJY0ZLS7R+RKLezuV3aCrZ
6EDIVvalwYch2FFNjc/OlF2Foj+28lWhESz1ie7X+TYugWhyaH+k9Nd0zY+t/iiSxvBLefhHAyCd
P69kMB96XDshlJxKk67+0QWhEOsjomk/k9OYtiG8D6WYZZdVmBNw4iGaBYDfHXKWLayNB8XEOqm1
7ernM7rdl064sQgfE3MQY3J2WHjn403JLdkBJ01MKskaKOIiJErLHri7AQrsJXWwmfSNkgr82CUj
cT8AG79Z8MAOc7KzH9hNTLZRNwlpXPQiPnjub/5DnD8BO926VTYqWvwqqyqbCUcA86LlG1+P0u8a
SrZOHIIAqvgh1zspJ07Oqfq7GWsZUm00lwGfURP4s6N8NpcrECvy6tiZJyQ70LbaS/YchArsgxBh
L3wu+DvnVs+OHpQF+ep3mBGHH+rQeHKpndkW3pKxzUKhGOiahG0UewArnQbx0Ep+GKhyancWWkCz
jpT5TjAhp9FP2gd6S+9KBabrYUH04PXfaVIE01hTcqZ8zufba/aP/ch32wlaVnFiM3K8zIkQFzEc
GHb8x1KMfLUunXwwkoER4qhO/OWZAVzKNugDt8gm2xOD7jr6Rh9qUn1/JLrmYeNMHBov8w/NxpH8
REWcW2YR6HOLeDO3noNxpoMDa7tSojrpRWE4SH3bsr0Y1nmm3zhbk0M4oDPkR2OhXcU1+297CNB7
G0EoCMoTzzRwHz6Le46hnL2ulDzg9jn4VoMuhK6Zr4GkAAe45T1cw9NmKiFqDiIh1yAaNzFGiH0K
71l04wzXH8d7+Sy1egedh2awrO1Y/NuyT8dvqfmecEMXeVAAhhdFZ/j5IlvfUoOenlG/WFKxUJSU
DPSztJ6v1qHGeWAaiFtS47egAeZWM/MILdKB6ySIrLVhECbF0zWSxplznuSnDbAUNWlI2AENT7fv
+CYnK5V1zR0VwV7q9BONH5q0QokWQUOEx+zqfiQTHMi7ivAkDQ/x5AEwU8urTRkqLr1+UciWOkYM
5RUhzuZ2iFlbghLcxCs1XVEKIfVdOKwQU05ov27WA6RctZLMSSBdsxWeRZMobbTg6cDwY9j2RRPh
5W5eoYPPbNwTv9FUOPOY6seIDZkNVVEvdL7hNsglIzQuqDf9mMoinsGLaHjwoGPrUh1Mc8iiBou4
9vVtfhYV1vBHWmH5HlL3rSmJjNPJzh2WPmTyCc/dNSLun6XfVsmKT9iwzAwGobQCwkAE0H/0Af5J
ayLWehSslrdiyiNUS+qhF2030Frl/o8l4LiRIO++WyzbcnQ8W/5FKvyPHc2mS1eUYvvOdDIFC5DP
sHZ61bo9/w2V0dGQ13iLs2ksOrG6SXp+Ut5kMAUQpcIwN8SjL9qHwtYbQXxuQhUiWk3o5rnxFB1y
bZuuZL8td/Nmr1YPSqx5CzHP9gw6VmGemrPRnBXARijjEhl9Z/S9qfnEnd4yWVoB5NCvYlfTxnGh
CIt1dCCgsks1kH/IWs8PcQHLz7dkSrTc0VgYS404JzaxdgUj7OMdZYteEI+jaLT42wKm7Gymv2tT
S7ZKzbe/MQAqlYV/gK1EY9yuwwH9B0EJY+Yrfegmowd87TB1MQI/+mZplyxo6+2i8igJFZNvDmHI
RWisQ+UMhH29QIbsn5RlpH0GewvrXKCsXq615gj+SUfe6rV47+UhoH19ZfzsFu5lbabPMSbv5WHk
lR1o1yeeeaAECI4wlR65sY+NGqmDlRecZyHnkaWrWjB71bjBF/7babB5EvH803LNIFPBzZGRWzlu
wwwbBCMEZdJwsd2Z2SgpKVXWMkAeNeP/66omx2EIb+YWv1uWeRGcofMuZFYx6wsh5ifzz6WnTFri
wUEeyiJC+YsymNpP/REr8SOgZR9E48Rl38r24v1BYa1aDtzffVaMaJfV7WvhOpwHfCd4NFEXuo7f
Bmenoat/GkpHxVeW8Q3DLRsANEgxBDXAePCfB9gCtyOXXA9zc1syBSxifzMK7qkvBXW2TxLRuoVH
k5Dw0caMc09U3VCNP6CrUIvbG79kJSp4GFPyvh75N9ys0GMn61MbVHM5/9GJPXNzO2QKjrGfnAmQ
kWdXDwtuGGeSqLhVbd/rFdEE68ObPL8ssJksUoOMHKF1/YsHd4euFlExiyI1P4cz2OXTjFqX7i+W
TAdJx29B6dvMjPTEZDKhcMRai2p8jo2K2mM+y8t2Lz4ByP3roew8CAwK+GFV5/4B9Vt+SOBqZAmP
Bpwt5m3xwSuxVln8k30Z/IOBWM6efhPjtSVQK4SPl6IO0RcFx8pOjYrXMoIpO6e4YA1yUksGrktv
W4hImnl/s9hh5lU9gbKNEb0wV1gDnhp4hFkYJwAzGB5WgnzRYyasF8/MA6ofs0vzeRJdWoo2pkdt
wZlX8oB/nscW0edv4HP3nA0XKwkSPz5IpZyvDOC/Kee3Qr/xtrpvCDEdns0PqFD5pjfcrm/q1k6n
6uo79TfsX47vW0SXOQk9QlBZI/lmuIHt6AMyJa3naCvKclwkgDQC+uh574glsDbZsHqi03grcbs+
SpwUk5zm9QLaItaJUzwgLtHqFdLrcNfZn/xwTtd5ImbY9SrGR4x4ApvCCsRI01Vb7XHnZaQs575c
lvyKtKLKgw1duXhjc3JBKNDW836S5XxetH3t9bvq8ZstQn2otrC3duH+57aRF6pARnzI8666sKg/
CgGzgeEUajyUn94R29FHOeXaZph48flJVnWLM+ah6IN+cmXonEb74kR2O7Nmab9daw25KTrnpu+J
/Egx8kl4FOUmRi68WF0ov+6RjxhgPvbAmVQgnm7km5P+//zvVnr3Np+wXOXw0hLgaZbWjKAsnzEe
pja4WOuJ9xjknCs6o/dxvDBelemGxHcbnOctTPnLAHqcRa4SfYU5ZiGziksQitf25Cjr03dW05rd
U81Po/2jb8Sw7WE3n0faWv0Ge/jC3N1JwxcAcCbES3FrfVIiZeKUvBYrKpGrpwoX5xCOI+i54OSS
vlhPu6MXkuLXiZdeOdqpq6/flT9+KBtXkj6DOntTy3SEsCBKjgung6P6CDXF6m/kGsJFa+frL4rh
oiQv2QvKBztcZuxEzyTYQZ8Uj42RbfwnEnvAbwlTdAt8+KSrrLsQ6EQV7XQuChULuZC5zZA0xEff
XMUx8VwgdXoxI/kujvNJppC2QbkEo4W1zdtyabiwNvkdyjR1Ol7u6mRm7c1ey1cGsYVYeXpqCg+t
GXckKB1y0aj23PlC9f6ah6QLy9FS3k2FuAWY/mns1w5DRQwzTe11UZAVy114jd873pdveAwn0uy1
Fa1BA9uGspfJkhVRaUyZBRNCXzV1iAFKBR0kMMbjHma0uuXzphNSHw8dsc72wtqch8971QSrExPF
8Ky+IgGNUqvVsbQAc4WVpdPXK3fU5s1Id2jInHKyP26NSJl14zLjXtdYFrrzzuEYNPZK0Ohw9qjy
mMW345tWgbPcgQaQx6hBYUUBS/QgGMCkZQmlA6InBfK9sxQoQ8mIzMkRU5B5ZEUZEfthN9nK8vCs
7+6pDtlZbJXFZsmac95rVtoiQ8XceXjKTPXpegBjDlmBTSdQl1huiQvuA7Br2fMT0LmVl48Ye1ld
KWVC/s/f7SJ4FHIbfiPmwGyP+rrR5lL4UJmkkvsrDvRNkL33qAZXgtj70BOHRWQn2bANV3jRqQlh
DK+AUNgJT504R41yNjQ2LvcNx9/g9VXgtH0n6Lpp7rMTAIi93aElINRGbjAFsadRHliTj7JOklZj
jZmpoHex0Gc2ESM/z+IQ1c83f+2LdZZKw+wfw4Vmh5p4St3JRoKKM4KUbWncINTRdTrcb4TAehW2
rhSFob6FZieSz7pxsZbDHvIByYa9JjiojjxAozDv7tvxg16pS1p2bWqdCeNJuKtUmf0Zh/bdWTVs
lAWUlhYg09kqjYXgAXfd4lGdIKp+y40slKxVsBPQoeXsV6qVPYkv6CAHSc/c1UYsx8xm2x5KvA+g
UoBNNQeypJ0lO+ZdRp1ari3Bc5u1BNLEVI39PqrU5P7hhHZ8wwVwYEOeQ0cJmNgzKOkj1s8denJ9
ddnn7asWlcZRsJZt+IzF4WP+cOgCOmXeZPDn4IZWaLVI7LzijhyM2IDX2qxhZkYiH3YeEA1MRP9a
k59vfuQdoLDq9+WoQbh5HLcgjKykrhLj3Xe75Ol4fGIW5KkRwvfphZy3cr9olDkZ07Uff2vXcDWV
ADe0sgl4ut1Se57Hp66f7ynls4RaBUVXpfj3D0Q2Nba07+u6UaduWIgpXajPpkZpWttEHNGCrOS5
hBo7Qf6G3W+pQmhxLqXYuUc9F1xnC+R8EQzDfO+OgvEfv768eZugS2ABl+37RcysQH1Pdxlya5R/
HAEG99XPMtipttc2BlsEG5esxOSgA7w5ahmWsQJ8y8bkEYxHSbxgNuBa65qm+9C/5FCJdZkW2Z87
ZyzejjC4cmJsfBKDOtjA+z51I7C1jkEEI5Tz5mdMdvQEbEv0y+Vx00SHdmFHNHBP4bUhbdjjCD7t
Qjur7QrRt2FNdpLzJAIVpG+6wcvmpRnARThGMdatSCzmmtuaeM9BUWn1fcciLSBm631UeD1o4Hvs
+FMuOJXMQT81yfchmIF8qc2V2QbhrN+ozmppP4qFWwccey3ZM33UP5BUT64FiNV43+Hms9fZp0gH
PzJLL2MmQIL360qIy8naBHP01SXVfUVMYjKo6m1bKzji+U1QY5Vc9jE0/BsvAilhi0kdx/rNHn/5
utBZceNuHjimGq3n7qBx2duU+NJe9RGVsVs6hIbwizzTf9k9mwJWil27Wg6LIAL7SnzUVlaYkJK8
D1t1myDxBZK08mW02ylym936XczNbui0v3dHwoYW8Ugf5rzGSOUiX7BrKGsFOxxfu2kVSwavzdrK
kvihRxs4//QyUFiE4M/8pdAcaWw55YTgK+xXD4GwphkoApE3WtbkdMKtmy6NqGnlpuf9b//nowrE
bzWenUJiOmYJ8R08c/dJwU8qdQMBKtEJORBMEOFuOvtBbIc/M3F3xJ3SxUpnvngsgqN8i4f+SPVT
3EvhfCpiZ8YaA1DXhqSrFaJfVA+TnLYtABXqk2z/JDYGnohzI8mSPU0UOPMuCchHYYIEZKeLpLEs
2746qExfcK/BLlz7VtsHx/bPIDhDiNTLyp+riWSy+Ufb0l7npEc8fp7sHjAHq1ycGiM4FrfUMNlq
163JvXNcbvF1WA3yhGjKtjbSPZrzSS+vXnEneyNVbwZzxn9wb11MYJiygHH1alcrCottJLpfSYFk
LKMiJjzbHjvzlijkVSknPmggMskiqvkbNOobJ6S1LANzO1k3dvFV/xUYraOIKnzKxZcfaUuwQLGq
khT31eD3SJsiN/P3MAHGwPDIltrOtV0FHUtLX9o/W4b1guHrOxOt/HdECqH9er7tm2fhFtTt52Ro
2uqBzFsokX8QTZRfsYRXuohINBCaQ7RIUjuf1XaWjm8Yy9CdRrN+E0lvgP/HcV6893GwQTouaW9l
G1vFcRPF9vHYnQtrpfQoXTn9EzZ/OnbOH72meJfiLgTlmNshwRoz+FzNKwIGsXEfYJKNpGQXnYKj
282Gx6SZiLOvD9EV5JK7KhxEcT/p+TpgbO+AB4joaYIDDoy1liIkUfTAEwKX61V+aot+f0SIMmjX
ZHoA1rHAtPU+5bdGrtaURoSLthGzCL28Eq5fBo02ZpCKxUjv110LFIvCpOkL0Knvn7HFNTbwmKPB
kdHZ+iOHABU98WcVe9H/7nvVK31J8llo+NoGYGDpoDhT8jceVmnNQMmX7M6didGr4BFHw2YefzxK
MiWwM6YIZ03DvaFNBO3HuOtIyHNyOYqgBwCiSvZYypVnd78usn/KuoO8Clj3XcB7ZtYYpW+rw5o5
svBeCnWIbUDYyHl7uGXXPjgHSof3mpCye+K5WCbEsWRWAFXtuedo1OrJu9fj+HfXQkOD7hvesg6C
1cCZmK6lqZlcL9imZTLdxNZyiKrKyxNcmIWEzX9e9bVgOMFBRYVx6ebEatMNPaQ7IEsA1lleWUi9
TQ3z4GghwUsHDUuk0OuXL77MX4oj3INHv2yZX43/+0TRWTDsSdUjpi+uucWQmmqiqswiv4apevjT
kdzNtHitVotz3Dg9Q/69bZH/0IhmdlApaCyaEmgMzU9XDICpzVyGE+PRHcOn4WVTjCLutyQgUcOF
4q7vxtxsQ4ckfaHnMhaL50ROc/izpiP5R3LRXLKybTZ83LVooBcnazSPYsDzx2otd5Xu/rSgrnzV
oIyEdlD5Nm0RYPOQiJ0ZY46fBbLHM9hrNwDGqd/PP9ChSptumpu1g28C/8vBAfYTn8AbSpq5rY6j
G9zetHpgUbCVUl9LfW/xR8LJjaCur0+UG+CQ0C8XWM0b51C2qzr3Huip15UnRNVEGVLAFbZzkSIn
Hf+UdVtBHXuOTGv1Ug24k0I7nerMpTNDcAwjQBhhAivY/0sKTw1IRLRB8jcMI+AFK3S/1l6zZATe
qXrwXWnhCnO+ZyNUPxSEG2fOSSYfb916mqG9IHUi1HtF4sBiNIAIxxygE+ovj5xi8HnCEQqvpICO
JdtkOwsu/yiNqIwhgMJPvsvX/ppRDl0ZR+V8j8raZUv8WSqS+Nl+pCrmqr2A/zH4PdCisZJB9q1y
6W/JXQuUDQWcJ1hicEA7eSbde1QPcU3PO7e+wBkEWlqNz9akcchHVNrtZEEURo6C4l/0b/IkO8st
e78SIH9bJnTQjdSmZuPLSDQKC4TEWGpzNcwVmPC7tjiceII+OBwlsrQLoRIimBZ/o1uK/HDv/oVO
iLAcLVTHkECCng4q4bRLXB04qytFQpuqJjc26T+kNlPJlZMbSO1SK6X7vDdAZSGZgJXRgwSnXGMf
Q/VwGIEa5+u50clteuv8AxibNIEDs6Z6tEl4JH5h/CkOHs+IDbEyNuy/d7GvpMvXS9yB9ffwBasR
18wmYrfDhzFEcESO2ZkwLtaSPGd4Dbt00qgqjooYLmnGYUaBC4URGylQarPY5CQHGm/nS8STz46r
ly6rP49miPjHDdij/VypWGcIfCiGjptIIMJ7IzMhxk2y+IAn8VC6qi6jtmH9+MxyfQMPu4AwkZeY
Hry5J/ZQqM1BLSFho+KbA5raiAz4msTh8F01/7TKB7sESm7lBHf6jO273FToZuFMSKbsbVSN3EBW
lMexKirOwTWjtnhuQXmojkchw9Kf4ypmZw2SKiJnIywdJrfeGRkyJ1ityfeom/fKqwovqCRpOT5i
3Dvaw9hJR6kEnHs7INnOtlzxfoDjUWQe/ZKzRkk0p0A+xvKHpHYrYckCBI4kxMiLM7TLRwlvlwWW
YIT6nKJpcg9+B/fHA+gSu3tyMLHLLnQehNz0w7Y8b/p42Pw3nu/xbMLTIX3CcEVQgrndUv0iAsfx
S46exkxDSsPtAo1xFe1o+QTxvBSncm29o8r1h+OArtdpfx8L1apXz64MXPPkvoHJ3Kb010cvGRys
xpKJ8xlJA3JPwV2GBQcBi8GqMSip9VWzFhhomc52vLuGA+qZoecvpcc+i9vw51hkFxL5cJeG7f3l
kf+zDbYcf3RihqrEIfV0UWetWwPFnJytluuBJbLLx8DmZlvwiZQq3vXAZcH4S8uJ57r/xfaFEME9
ED46+EUjCXJ8AWnv59cd6hRHuc3uT8q+x0KhfygYeMTwJq9z4A7jQ+TE0Km1j1TnwGVAlfdIqI62
jrqk3Li4ns5XhbSROAD+08BcwLOSfcHiMBe9cmNXOY67Engm5O9uxdZiBHaM2eMMK3JwvzhFQvdX
keLxjzuAZm43IedlKluX8JTr82zbdCOfljq0YFY7GX2FNHW6OE36aYLTDf8ml5jg2OA4R7WwOK5M
5CgVlztV/C1pkdbCYOs/VevpiT+nPZ+HxQexePx13zJxduc0emaQuUi/WUcXn/sSJQWhzPKbJxRY
TP/n0FXOCIx8uLN9WFnrBVFa7vt8a6bx5vFOQfd3H2DqvukHdCdu5rgvPL2vjcNHj5dQ7CuQcwNe
BGssXYKoZWv8u3kW6S1alzptY/XfW1NBJnWNLuB6HlFw0/9OmMFCpSt+2CQ7EHIX5BBQ4cspLCQ/
Ds6qdHBxzw90mxqIQIuzoXKRh0V6uJReJDFMNF3UdzCgnNY5CAzSzWJoiff3z7ix9X1YLQfwkI2C
aZNegsO3HACRi2h6q/EVW1MXRSYecO2o0ZzGL9I0p9AC6QemKBqOBZ89/YDGJ5IvQhw8GlxLAa1j
4thQujdihJNk/roEjF3iLr5Mtfiy565FsFwGSBOi8HBHpqvqRzH0V6cxeMGeGuYKkz0WmGYiKSmi
xHRirveF8H/AmnsCf0OC3DP3CSFIy2Ri5mvOckzrAciP//ru+wSd94YxCUq2SJkwJxmwTC1nSsJF
0VUqKEbW/3l24D7GZOLhbKcTvSRIy5z1ymSYQ2t3SsIU1zg6UWY5iZb6O8RFo+vB5KD/wTOZGm7Q
1Yr8yPXxhEoaB0MxKdAvodUsaU6qRemPkg4uQUEjIUFUxkBvWiAVGX19lZ2ydl62fAIGkuZmmmCV
zha6RrEUMp1wdxE3e8TmIwGG9Qb/GBBjTxIh9N/WnSJH3YD6rSTDOZOGyhjMgY/NFiENr2qomY72
aYRjXpKiwDNZpv4WUpAvHhvYpx9HbzeTJ+Ywd9/5mxv4159kv6K98ukZZi4Irr3ThsBOd6bqU/Oa
SHnxbrBz4OSZTA2WlQU81xb+cLWQQpkshVaQq0G5ZUGBsRe5ZKs5c0bWwP4fv7ePTU1bJqvX00m8
atc/AIEjStl45+esFVtXxttNDyNpcT3v+YvlBAZDj0qNrJhJBV1vFV8YJv0yFKvCBlcup4vasiD/
Tu8xnFOZ5VuboGqE84jaEP8utNq0JTq4VYvFedZrCgjEftU4OASbLVhtStN/0Th+Nuwprkl0y3MY
uKv60uFnWSGTX5/Kmy7aky54uCpYP797HtKLY8mH4L2YsHoBpWN4GYRASL6UnoVVhytV9OrtKLtT
fHV0DGonKOlnfLNskKUTP0cr+A3UU5uD7C28rBHOkMtIS+MexoLejK1FHaPS1m6WO7bSJVWzWvAZ
/plJXMPAGauI0nQKdtSY8izivM20Ud4Rj5JHLnFvCX+Bxqw8EsLwLutLmjYo48aDxMuMTOOYlrKy
oY0uCgMqHu+T1nOQlu8kPn3r6CuRcWUFx1Cnv6xdpM5tH7SfQZvMYyI4gKjD5CEHzai2G+6OVMG7
jcMH2ySk3gaE4ABAvqjqqV8/p4KBZ3jXDI3kxOw+ZL7yuGHYaC9ER2GLgOqICVnlfSvnjmCmNPHw
m/OzToscqJieMNbhZHJXVNGowC8PiSPBl/DuOSBmxSxvYFnW3JdlbNUVD3DT/29wCjs20eceF8Ri
V8rFrPu5I32raL9BeXlZe5bODadv8e+8m3XkwPZgIMq3pLfHcmZN6h/sOtmN39UZ+UX5CwKTCuLj
SUfU1041BjK4urI9kIiWe9f8z4ZcyEq7tnDjWOh2bUk04vh7/do=
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
