// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Apr  9 09:50:46 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dist_mem_gen_5_sim_netlist.v
// Design      : dist_mem_gen_5
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_5,dist_mem_gen_v8_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_17,Vivado 2025.2" *) 
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
  (* c_mem_init_file = "dist_mem_gen_5.mif" *) 
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
f6/ELxQdOUkVF4I46BCe/09TSKRozYE2h3dIPpA6kLzfwc6sya1J5VBKA42G8pFZ51p9enuIshnh
rhHZfbSPv9enwKpAcF5E3+y4ARpg82N1ioTJHUnjOUEANAl9n2C6pEewYN/tqIwbrG1TOd5pLg21
oDMaIV2qMeyo0rqdPnkxSH3/IUOexpwVICZmZlfn7HhaqV2Q7UxUnn7xJNap2i7qMeASNjNSWwHE
U3LGF8fZV9ZKBFgvlL+i0HbGG/MLyPjeLOlWhMRNfHgKf+8nYIAMz2Mw1fXoyW6RUYGCBLBKmfiF
tT/iLhCkDFCqud6dYvBjqFq9KNmBJ/HST7ELEvly+Hp26LhYED/sT1c3Y3TsCoib+DUTq4pB39d4
gALbbLJ7TS0W9Rz83eMRaujyGiz3e6NhE3GnIcD0HuETSIt+15H6B4gXEknoyLEfTmPeuVzte7x7
B/fWzPBVv+w1bzn5DVToXNvWC1u8ZErYp2Kp+WundPbYvYwZScYETqLHdAOK+F2uYfbj/mGptsnO
Uoa0UU/3ZQs4oySt5xQ8s3WNcUyIpiDelsvNKXnqd+a5JI6OgcNye/bbekOe8w3AWkQot8h/4bU0
xHGk+3leDKJ1qtZkGCebkXzyRUZC3gmGwCcB8E3y/a0EMbfubSdagpjdh3ju3kotxMwX05eMbjyq
XCjxK9PffbANRP+jRVGSQexCWGk0JwtBw9t/GXqKQTavN/KmkhlTMCxZxxTtzcGqM7LDfToOmCbW
CpkaatKn22kTy4MuoqlJl9jryI3zbSAblh4WXJNxhBiexHU90RDpLcrF8XmXCfD5dFk7XZ8R4470
n7TJ0kuo9LxprPVW44RHwrrhLc1qS6qjmCUHKvHpE1ehXnnir+EunNpPUYTXlZTUf4Jn2W64zGRX
U2Ac7oqKWFk+OhSWuikls/4arjDnW6Sl8AxfvtU+nBoEBvDmwipyO8tkvMk0TGkE1ZlykVNtgsmf
NUflplDYcxws3dXg2Z8ND7h7MgGIbl9iPiiz6UAE1WXgzVIHHcqytniNVSlOaD8XmUr5NgQa0Q45
yr2jsAR57rToEVWRFo7osNtGx+FWtHk6BZls4cr7bfVAzP0rVbZAhbjhGSaOJ2YrBj6OZ0RGy3cO
3rwt4gzwn0B254OgniGpqfstJuL3uzDZfDEGFjk1ZP4fq8oApsb28HW+6AqD7DpOHcTZw7i7vFLi
ovmP7KFahYD3HXyx3Q47VrNirD4laJCjE0sg4NRF4BCYfH1jrargqwJ0KtoiDqEjJfYmBQVWhhNg
TENcr+6412UpZAO3BVhiOkcI4VF0FH6WzlV35tj/n7Hq8oHJPX2kuM19csKj1hAE5EgFwXZO38Cn
aGhQYzJzApx3MAFpXt7By+yE/t/PuKAAomXO0DDmRUlruLTeSupZPWIg1l74x3DRFhS1Q2cOXCTb
QYGbMnYRjgmUfthQ/d+XDCzPyU1qELjLI4oxNUBzPp6gVLvHeIgVJ3Cggu3kW5IiV2B3f5s0lhVO
2Oi1In480DLkEMExRazUN9jdhGJT45yy+9AuesMGggjrPloylqDWFiJ/fCx7RZyDhyq5oJTEgsDR
zY1svnxxReZHzpInxd6Pk3axffeoe5oco3eVxSNievS1XIWF/H1ARmmLGR+moKEzewldlf+ZId3a
Ngy5NJwNBslchyQGcvhDsv7EtDCU1plkq+y5z6evXlhbRm7F7YIxloDByJIS5ZcffU5B8lz+nKd+
nqceQnXi53GY/XIF0aP97wmGh8bGMkFMOTRid0j9aDSc79xnBzdaL7lf4OJPhvB8mjj+wWMoC4yy
rtGmcHlVDb5ijyCA2lC/EoNhj2H+2dUiFUioVA7dK6RcvhwD8r/I54xfibEYxZTyhl6jnO2qLonc
ofp+ulMRJtZS+yC7im72i5UONuK2LvoirgOYnjcuQJjWD41U3ja8Xe+YgTakN+eTzfTO01nBnPnD
W9jomGCnDXMdcD1JR3+5NbjD4c2FdZSAj3DjWgIMubpDbFPdZjpTFKuSDVSMj99gAvcwj5Cl/jfg
GBsqw1fo/8k0/BpbhRVgZBx+VGMJbtuDpLQS/WQ47ecV0/g2WBg/LwtI7L/jwOlYD4WNyDX+TMkJ
0sLLWIEvpPDD4wpIxYSqO0pZLESPZx4bKSH9gkTScKR2WEk8nUqJ6tJVm51l3KOgK2mcXZBEOep2
k5wWT3aGP5T0RjvQvXV2nJG9gPwq+/Ekxn2v2vH33cVvPRQaq/hWhiEk0uPj408r+wauxrSO3y15
D29FyHhuF1K+N36+vxEwzVSGgVz3JheGP0tWXYaRa2BiurB5gJR+a0U6jwQQfnQlYGTY/w5n1Vqk
3FIg0WU9t+Y/iiuQsn2+q5siTXwQbrEOjWQn6lAJN6UBkZhEPah0BWeSAF13osnDI2zSQwJkDE8j
dVCVIoS7anqiaXeAGEu2RmhDcGhByb2buUhus9CjNegMejaNlezDyDoBlniGRkbvxd4+n7gloicu
DuR2awBmhxvaXnMrgD+FELK/S4t1gcAXqZduOEdCQRoviTyNptFgB2dXrjZ+vnREFzgj0yKdyFxS
Dvl2qzgjOjjsC1+fPmkiZ3EuKcl9mOBQ9HtRchnu/KHu+JEUAduez8mwJr79otLwqzjpe8JDvzBn
Aj2vYCbbDmh2SpjWlpgqbBmFsPsup3HZe/5zOqM1Th7cGvzGhYtYFZMwqsoXvC4ChXBK7kERq4Xk
mQUvlJeR+Fgx4rPkOWQgiUCbbaRpkfRW+49hc2tvPWR2NA0BGEYAqTRET+c9pUUgjU/y6LvQHrJF
CZW71CRgG3t4uxbpC3Q/jNfpFjOvyLBcX0XPA5NnlrNxXHi8XI69exG6vTfnpcUjr44DM9C01aKd
/8F25dD2m3nqTtRuhjlOfgPWSD1nNKBRwNeN3s3KJmcSXx6zwGwZl8Fc/Ry0R+AOm53Wb7s+FFW3
/FIrgoCwHx85wTbzZ/aYebftHu1v+EvTBJgUUMeGQzr6xrej1kIYoOwDFA8BinDzMF7XWriZOMp5
p0X/kIBCvJ2RovmUi920G/iqKoGAHa4EFm2z4BBdWOKqYmIGTn2enjBzJn6tl+cW3G9ZxBT4DyBM
94sgoQt5yxYsteiRSEpGpZJimwxe04dVP0D8cjmSytqNqmPaCUa+xPUC3oTtlSLf7uOEOKGu+A4C
3hcN4/g6Bo5RZ2/QSk9BBJAbyOk3pWF5Px3TgAl+1AQtyiMV+iDfiWhAEEWow410q2a8ta9/+z+f
ATJbXE/apqKFHOBvTRwtDzt3lreUlcvBSfjxGqpmzC7GGHC1iNEJQ7/pN/tFn2XmGyggy76KEBcB
UYZSr9qZWmMickil87WbTYRABxnfWuQWCqMDvENiC8EH6zGdaBjuX8v0Y2bQf6MqG7ad5V2OHCsx
mYPJRA7VLLcNNnk998H0vFJTQbaXqK1XAxPN+NC0K+BB21Bx/j6vL6WMPqaL6UiIrQhxcZNKjNZe
/6aWdeTzNZTdJBdD21gYllcmzD0PU/E2+xDKhfu7+h6OQ48GQOnqtnRMTYABNCyqMiPo1c3/XpGf
BnQV5Q8H7nKYC4K0O6ietHNiKgxFv0MGgrDd2KMvjrjCQ2xyxGLUMwlX+isx+Y7FEMhoKuTuEUgH
x741LKf+HV5mSo1clMkxhagTaLImUlWsx8KHJP/HxPrT/BfJM+oZdADvA1J9XfArDWb63LDs0WXA
uynacl7oUiFYQVv0QQB7AaqXtRr9p8s8I1Hl7NnqC6BFveggCkkd1UnKrHbAKPN0HuBmdtpvawgV
VDIQrklnG3+jniVzIq5K35wa+sy+WF2kOsuC66Z2NLvvb2yKTcna1/CG3/QxJ+T5hGXIhAT2/+z9
gz7p871P3PilwEYQzK7MDG5vMEAXga4bFydftosp3NzfWhAUmdW9n9VVOlpG/f4bYSDgOidmS3db
2whf+Ko4JK6jArwIRdi+cbqLriR/yTGWTK3V7SgVFIRaeU5AOsnp9MZWavlj41ftkwrHl7uXejjX
wfMkkaPjRfomwPpVmwx+qLF1BqL2LlCMMGSsJ4wLPCIVkW4aA95G5zkrIHraq10gkyNhDMjgAMaM
QQQXlAIbA5ei1nreu/cmMMIHdKIum7Qg5X4dr0qT6iWt53Q9BCavvVIErMAAa36FG8VOiVjj0ObV
bJssercOXyvzrP8XEmKiWqfMRJfcUd7x4bWNcjP5t67VXbJM4sN2NIJ38w5y07R5CNL1BtSEj6zH
N0tWskTpqGoeM38bTxlHPmW+OV8bM/l0aMY8eIG3RjkNpMRe2tr8Ve+uvkbEmXO26GwVggUdX/tw
1OoFENa/4+kKgsEt/aYbaonhlARIrQPajj2ZM7H/SD5WTGQ6+Ac9Vga1lK3rJZgtu8Zi5H3OqstH
uuvPoE7g8ApASm3cQ8nOCLMCouzEFh+TOfmdykhVQP1WGVVENj2jznvX9zNfucZezwEqpeLUbl69
iS8DZ13h0yc+UNzYmxX6APov+GrVSw1ms5nPZm9QE1vVjtsyVjLwiEsnIsFs8IREppWMg+oSxDtX
y1gDFopq3dYaLddHDmaHjeu0tsV+1kNjGHqllvhAWle4RSfLFSvkXtJYaSZu7lPDjYphAucIjz9V
AqKsETfihM9KipdRJ3lU7VQpKzTncw/FHZPMFmOpAj0FlA5uLUZgcNwfXhs44qCorZ2Xayf1i35f
tuxKMBUZY0mXmHjg9T/WaUyjZ6/KmVyvUJPdiJAmOeVHVnN5u2i9Ng+2C2k17fS5anIKGn1Db4eQ
er2tc/VzJyvFHU5gctd0BnVXPuIh415w/gGFxz0yfYzcjsveWD2pgPivIRD5JfwDamHX7DVOf//X
8oGr+xQkOOKN+kmTg+JGeEGauibHcIUH+bUyvkgojF3t0slItC21Z/4mf0kBy2bLvCGVQ/YLZFxo
V9HxOk1r8ztQJdXj1QKr3hDGtkLml4rMRpBRnouM58CsB1O/JDi1NE/xSmf0e7ZUA5SthZK1rSgL
Y9gGYIeKSnDmmPU1TJOg71BYJjPyhYo1Naq8Go/IeHiz14zTvrIjWEfiwsVUd89IW1ZergKh4JRg
deKMs1wmWfvQ2ZZFn3cgveGoHf9lDSU5hHeiPpnVo7u6+JTHsUyagBjI58yRR1hp4jjAzEY+i9tQ
C4z93dORDoBghhY8kv60ywER1XamVqS8Qpbw83qeWOA4UdhXrdCOofFWmvUt1fbPSWOx3tfLIfCm
S0zPzTqgNw+zaKtUykTaEZuuH92Waktbx/CoIT9Kh9BZuDZOMgsljn+B59IYtiqRMqbWN/oNQDNx
EzsxCnDz96LnsjGafxGDjjjhvDG5K9i8k9J5AMwOLaWuNPoN8FJKX0EUEkhc6FUAHJlIg5xcNAL0
WR/bm99WaniUKRN2jkOctGIt5ASqwjvdyftq2FG8zydDN2K28j4P6AFPvKS1S3mfTc/B4HzBvMXu
XJgLTD4c/luyGYlpv60dbbSFiWzpOr6lhq27PuVvhT3c+Qi3o/DMRoXcghC2XT1Q5feUGSL+azNp
q4g+TnuwxR4X5Z8l99DsN4C0foJ+7VxqiOLmAz+4fHpjMC7w6XtlpKXdfU7BIneCZqUsKeiotHlP
B9WHLTUFQqv9bR1LQDmUYqKv4HrFCizsYGvsKoBi3EzKqD6KaTeqt6zq3GZQJJiu41CA5VNEdFL/
gOywuweTD75MA6S3R4XJR1zUY4kNfHcClfKOcJHWgJizdtQGS1yl14klGQvjYWiwPdJgA+bGw6MZ
FerYB0DqZjHzFko5TKah7yC0Bh56T5AoRZScn/p8RnqTYuu4tNGR1jKul8nRF59VbiArXKVo734g
lIEqDjfh5zqUBxZ/sNDYLNaar85SHJy6ptHsSdNtTNpqbhQDIV+q/UF6qTJhoiAxSQ0BFvFbKOjk
VEJFRbnp8TVy1P/otigNXlDCEhwr0I0t4grgskIGvwfjThO0PSielbSaGecvsWuX/34XBpew5fwm
YLh0OVOFwFflxPGARLAtzn4SOye306bwFjmErXNQVrCwqHP7+7ZJTlep2AcKzLuybp27H3Qzxteo
cYRoaW/8EF3D1FA0alT/qmR25njSOr1tdAQUJSZUInYd1nkx6azKvT/gB+Cw1dbkAnTqFtZK+OUe
HX1OXzRaOt2fM8T/K4Q9PbD00EEYRrxOw6mTep+1lTWH6VWzj4CkKCjmm5sTreMe+kJrLuCaHaBz
WxrwQdQhsh1esAsazGH90W26oVgzFUPpS5xyOwxQ28hdJm0i685AjOl0LW2TloP2SVgIlruv0Ekg
jt+kZj4kz5l96fTxWT51aPCOt/VxXpmfJX9cAdiuoSo8yTmsRtNy30AlGDaAQ3mF0csGh0TlxNCl
O1UlLdRa8zuEFgwKLiq+lr66TCz+Bq72ZmFxO7sIhaNHM1wAsN1MrAZgiGWy4Y/OoRRZxz5/kgl3
6BwAXuFkfeHdiS0lK4kxw36G1Hpx+1IESYK/tyCbux2mp1wB8ub3NA9dqMH8lKtzdmyFXo5sqzXp
DmYYST1xBWrMy3cyi13ABTb/oBuZg0k92bFriz0cPQQJ06/Aa2Q3Qfu/PkjUdzNsDZmhJlujKUS5
z2KIgRTvoK3gnbJ/UEhTbv0naVaA8FHk92C7kUbOoZx8NiZdIKFc6coS+n5lHzfvk2z5uLJXN8z2
p+HfUiAz74noradPYp4IDr4Y2AnMDY3Qyx4ohHdtsI38KaaOoKbYQa0n8OssHJxeLsLsJyJt0gsY
x0518ehYnCVoLoaBkX276uuc0Hbq6HmVdhAZD0AGSUAnQIlNTrOH4F+xHgTLNcaon9XeIHPYM89G
i7uF8FczsdyID5hIZdtvCMzehksuruKoNAAEa8EaxaEckZpDIKYTT1jy4bY0AiCHFvEXPIkNDLTm
G7MJ1pQbYQ5kmSPhI11BIhaXtlzni4UfUOFbVRrzUO1eay0uQwocC3xdvSP34CjAtOlj3d4Apx5l
Ju570QO0PY3ldOSIh3twU67CXtQ94uzcpfE/EqN9n+3zT4dgaqzOR8107YYBusriu0cgavGtNpE8
rboka7NufIyxIVUmOnZ8L5BA+8x5oFQXM3DB2Dmbb5E2xSe/Q+1EEkTCkF+q8OrFrFMS4vkPpCvz
V4bTSUHg0E2lQB1lXut9OPkHSYdmJfLMdOSdov0JPRnQrlRu3Ye3V7QQHNWlSIDxRsr7xRpAYe83
n4y0xzpIyhPZp2o7A/95x4Otz0rZyn8cyAvdUgsL1xowcDpsxSY5icnRIi3VWK4BMqheKKJhgFco
ZSYNk/PWNI5YjL+9vRO706mpfG+vNfZJ/bgOLMAeC1AoVnfsGVOq3taGNaOUiu7VZQlojTsGi1rg
XxRZRO24yC83i+G6t36k916yYfqORjSGW2pYc9Zz30ayYQCfDhFVzL8bPar3mJIJ2xwWqK4hTqdT
0W6m9YmYtURYkWGZP5WUVflj+UInQJAjRgAcmLlv5Bu7PdMfaB/U6EkQK/pyzW3XhqwDLvnOU9bZ
ycVpT8bJ3pimOaX1pGLV9ayXUX9pfeCdE8mOqPIDwhd6IIfg6zS0rMBfAYPKiCUUapd/isHJl7cZ
3QLKWBYrot6qQ4jhGeOk0cbexei4DTd9qLZ38PGuk1LdkqeLN+A4i8TwrqCs64oqFRDUQrB8QtH7
oX2Da9IsqSqN9CbqzFCvaLodlYI6FVZfyLgwdjgQhijLbhSNZku1DB6XfhZ7VQGsqdTRi3/Y9n1X
PafNAaTzWNVeTYhj7d7CG/3c6lksr1AQ+hWFc10nxM3NFwjlRKEkSIkkOOacSD/dNxg7+URbUFiV
s2NlolR1PQhOdXwQb4WXd7nRV6HJznXB1sMUAb7DH8F1GUP8t7r7P6PG088HjcFJjYnuSRxU4NKy
51JEPFHo5H5UcJCvaUEOB3P5kIXxiFVN+oRzQJfSKnLxkncODT60810W0ZbbhpKvwlNDlc5oNEN0
d2eFAmmeMppxiUp/cfPpfgsvKtaGc3tx2QbCpG+jS2u5zPVTSOnA9LcmtNztPwv0OutmKdbxNsjH
MQz7tiiSjlR/XXcYw3ahGnW7X5ZKIWDTQhyru6j6zyma95Oyth1AVK1jfFamQ9BwZicyBlES2ytW
4U2+7FVUyL7if8GuaXTZahVOtYr1h+nh9E31HDriikY0PpARE+dHU/2d0uDbdFwFBMQXxER0Jolj
2hYt1ZABbFiubpRYChJjA43jNTggTqQO27UdZXm//ssjyQoPn7HNUWg5akg3zixZ417c9ymdLrP/
MUbMxaVGO8Fcviey0FF5WLHekltmCCFhbvyEgGCd59EGHfFbWY9t8zDV9KlNaysghWxHHvGZDBcD
8w66xuOt9TXh5q05kk0G2PSu2MVKaSa+7uQtYuUK8eVoitcCGQdzEadR6xh1WoHNKbeYXN1BudO3
WmS7+xq+oPEvKOdV3vr7nFW2UYDVIpSgMfV5cFQ46nDYq7wBSCJ5lCF5bNZMaBuuC6Yd1hQTFdtQ
cPIKYpz9nsl9TwJZx5PwZCQ4KzyxQOnhgAgPF8gR+347tRen/NfWLQ9ogJ7yT3h4PvPhs0GvYVvV
fnGK+wqmdQ5trWUTmFv5fb3q5GCcOe0xFzsMEBZsRWiUsBZvrRn/gz0UUhezdyh++5vkyaZeqPvn
lg0/odY5BW7a7MrKF0LPeHPvqyX9FTc8CHSy5LOC8VqtnYONF6tporaRUStyLHPcRZx4oGpCRoO2
DW+UyaCd+q7Vv/QIwjvtyk0Hm5VOngXcXzoxg3gO6+WIuI31n2q3nrcfbJ1a1pWoAzgl04m9flbD
dP5hcF030lT+Ht1peOnJ6rbLRrq2CD7lveAo0SEc5JDcpBuVIdBKdA6YLuJL3w+wGvdQjn294WLB
/OKmGfkcMRTnNRHflspHcMk3qzQtn9vh+Rx2w078sfvtlecB4Vn5hn9aSDPYcYpYOWSsWYMuGIYK
oBtgFV4QI5nBJcvBo1RrS5FbRkaQ0W7PzK+sSUcPCSy4ow/NsXZuDwiSTpdXXIY/dL8fV3HvZroV
wBJHvr/01uYuTTV6iw7UsIWtNMxygaP7/PBETooi/4mikAOGhO1wkpTSq0WSKgpQIaV7EDsxLDeK
NeGEZegjsSoCPy2oXuLvCxqFx1nojUYBuL0EwNcTz4NTz4dOowJOpLVG4TdikkvYIrKPEnjIptsm
i7fmwAcFwE5p2Ceo60phVv/qUwLchq3fzH5CSga8cFPAPqU3Xai1jH3IH2EOUhsF1T1fNtPf6PRq
+PvfwpipRpiwp/JyLMLiTfu8NdMMfNJCvEB2XB83qLyN69F5Gmjr6KXwDwFYSaR2iUvyd7iFPVaS
A2sahYuOUPJZJXi/wm3DM/o1HdcNsvWU6yEKgJeK0r+tzGNRUajnG5fzRPcEZzozIbrw8kH+07q7
nnLDXxmLvXJBdI9QOdeRmU7ePUDW6hftX/ie8yB09jtU1aTrRZwOrxoBs8katYOL1aZO+oZmpWee
K88HEcpxgSnb2VH8ZqExb0umUf0Mui0O35HB/GNijlTfuRQIH5jVw3nWWhyFEQcSsIPQbdIQBqfv
waQmtgVmPWDbdf+gTbIeKOSGGv+p5QfRRe2YOc1XF6s9wa90Nlcz0DR7nsEQW2hYY95K8em0cBF0
eZaJleQTA+YFpnDUNZ6hBA37QMfCUAmcxiY/d0tVdwcCf9LT3YV3g8EKKC9QebvlzuKYqg6hhF6b
hsRireWvNdfNHwtFPS+Vig6rGKtdLpRJ1XWpl7a3sdlP7AuodjqipVgwhRU4HNZVCrYI6LSikuO+
a1c9+3+Z+prOMohcqhQ+d4KoIkCuAoQ0IJLt2cL88UgKFiutfkB98SLAdrrZEEGO1Oco5PxkXqAo
spqEL8x9oU3uXp0ZMAv8CSZzEowzXKvGkFBglpjpijtA65WESPDu4HdGfDMewFi5kamGXTWnEsI2
54Ne0vP+9cWKx0/iqbAItkhv4dQehp38RnAPSOYPwVhTwfw+l6Dk4kp2CB0eqHQTgfJacRY9CxXj
J9FS0DGSZ/sRO9scVOzR6KCNOiPnlg9MKdENKcPOAsUM+IlKzTPaCwKVhoO7frLg90Hg4wfjZ+j9
gpjM0deufcQt1/Q1DXNzhKc9PmGudmtpUUqQD8YalSBf5vbCmXXvYfLktoVOJ41dL604Lq2ZAYpZ
cPwu5wb9P9equRibHSrF8+tWbQiH7U2JHOsSp3+y8yYAoz299WkdtRFh3haus039pjrQ69ROtxfy
uzPWxH1SfeDA7rZiSeEVQRI371LqolHso9JGW/WGGlv8U3/H7P7h/JuNTI0Hhdk6Pn9tqT/90lct
Tkh7zBdiZdNlgQxLd+Q7szuF8K3yStXlzv6Qz/8wRNPCVhX+wxJhO3uP6RW19eHET4xn/N5BNtg0
ju4GVi91PFJFHu1ufJWwnWMsijQOAKyk2wk86cEzE5hIKzNW4XT2iPnl9yhwXMzyi11V8a4+NCSz
N44mmO9xZJ9a7O152s7lDEXmZ9EawD361slkBG0kz4RFZtxuonrmSZ1iyNwKEKacurnhorkSJl8n
Yvpznb6OLeoLOGZ1mH2ZTJe7Xji//55oMNTbKLp6B8hDWivUCc+sVaTRI13odITb+LVJVhMzyn24
M3+6VgHpnLRG2wN8RScfJKQ7EHmJTzhNgDIrKl/PQPjFVxwbByc+z4LjdPtXJvNdpVeT928BXaGn
sLAZJ1GQnjCZHi2yBuR5Wnex9hPvdM0N0bL5LDogRHX7KcgwKZyB1zM/J7YiTZZL9aurjgjU54kY
QeklEl3iD+weJeVAUjyumVbyp+taUqNhf48qd6PXVXnAKyihTRc6b55/c8/LnNzQLyIfN+XBiUnY
w5sO02V9dgXjDms2JVWbZf9yhCINxmrVDmBRrWISkcOcTEwffjZQbCCoRTazjpdVQe4bbRMVRQlN
W3udqfqWL69B+sVPhyGUAot4TwZiwCBnEsEvNb/j56lRKhjzE+BmxaO6UuCTESP/oturoQf7j1XE
PyXHksyxXC6nYaKbrmsD3mN/F8p9fh3V0OG574G0obxk1dkqTkOt53n4U/7pNiQ5YClsRwVMIrh6
2vf/WfdPMHcapWsfq58jg4MMHt+dXlmsE71kWHRlcK1zV5pgpfh4jTSnVYbZmd1l1kq+UKksCcQa
acbIh4NRC2nC69IcYMOAVz9lAqjEFPTnmCMVJa0pD5iZUwuADWRI7LLyVm9eDtQ4lZG/mcG/BW70
OdPxWvV2v06QojcA9kxqEbJAWKIHGZsSjFmAkZPsDgh8Ez/8k2auLlMkSqT3RvOWHeyX0J/CcmT1
Tn0FgekZlSAn0U9qAZpZ1woYqGMKMG8KK+DZKUAgOBXQds0Dn4HHOxvPrPq5vRl3tc/shLiBXwXk
AIO+7alRe0iLAbhjYLgnSwobADn3dr5CkKFyJ30pkZrAIYJtBNJkAui16onViJnomz6+GKGbmpFq
sHVh+vU9mnqk0QU1L5JDX/6BOT7178seMXjV62ifIxBU/s2qedr445tAmImAXaIAdYyaiBmQQJC4
SVqNKbIMKoUTlLvCZwgSJ83PJbvt24nHXdlsnmyPW4mUTqmh+naDUmj2n6IvfCwchhYOmlNZQJyV
vy9LDtaePvpeW2k8QdXhLRrsHyNDpT0NVu6KojR35ys4isA1ABIhIIfa/B21kRXWtrKGFU9BBUwZ
719Tb5sbXVOGLGa6FxEgwNMj7lp4m5fBbPBorS0ITb/BhOdl3PCgL4GIJuEGYLoA4hXdDO8GVAqA
rjlX6ZSzuEMp3Z6cfIPZqWqvfKgqltZcTIMbPZHdAqITcj2yzl6Qv2r3OsXKv3EWMfb/1YLm60KB
+EcH3aJHDQMRZ9/R0jY4xXT0jC9Z/JIO/2OEa3C3+zMvxvE4aptqW8pPHQSxxbyVhwm5jBkdRx2r
cg9mAnxynN24OQlidwkxvugodHSBYrToKauHVWqwkwPhH2mE0VnTJGntHvy66oU/GSQC3lght4oH
W6ObnA1VKfPt8bnS5EuJSi3+ROFXlnba/tsSAuebPzy7cBZcn30KHqhw0LeLhP4lDvsAYAv7VFsR
Jy9d6dEeCnceipiQ1IoagrzpM/AqEs4uRsr5J0rUPIFYFaB5xn28BmqP/9pOQcrQQjWc8VzATPVq
UOUsjVxQ92vA38FmlfjGbhz1J7iHZkgnBtp7G1npz7aduzmeXoP/4+laTnSreY54LjjeK9eLNJMc
68/uL6c/6GxcUxC3DviJGrAHDmhWjhqRGUaobIHZc/9pIXArtIyS4N14H/ZFupcPxT9D5P4lEzPk
kBfnkQAd79J/TipVI08MxKFLu99maMmyyPM1Vr643E7amcBI+4Sy0XGtIN5k91ehU2OTfImxwWSr
cGCYsZXqUP7DfdMgj+GDlZwIA7v6/0DB382lYunO7p6zX39hwj7+T6Vge64M/dj/eVNjyKiyzIuF
fHaZghO5uaxLrg6a4uliYEwsbFY0rXMOlK4ycGtMfAob6WmHdGH7yz4RzQ0srH2bOYXUR4vAUZE3
+rBCq23ovnBsPlrjNNq/yMGYbewDX+xK08+C/9q0Zv2UlENp2WDGJZsmlL1g55NKw+mpTh0T9KS4
fdrOEn2mXINdxgLXGaiKdS2O9wNeYZdbgCUbU/tNJNUGxeJRkEOsP7NtAoZ3Ongh/3iVQBYQWBG5
z+UHCO3RjMTGNAB6SeP+JtCpWFGSh/rfPCAWfkNEVf/eg0Rd2964UOPyatNmpVZ+zBojWcAf698p
29Q5xPRAAxgQik0fVLjKpUC2cOyzT9/FkP4QmI0K88M7RV5SO4bjYdEqZHjFs1Y1ZkfHBL1PvQ/u
E6M1kuTvphX6Rn+MU7PReDHYACo0Bs3nsZlfMkB2YdBhpE7umRhZeSOVWN9vsUnVh2X9oLqBMvv3
TAsCwjqm13s0MslH9U9GKaZWYu3Ffs11l4QJN0eGgul4Qp0NzdCo0WYwVLS2/K61021DjU8LVo02
Y09Mhk0iiTAIdXeroYprRyqqv7ZsKQ790XMIkKI3sdL3j3Agw1QcarN/Ie46pFYbGiXSIKNRA/Zs
DFuTxUx5dEYTne5yeEjFX3SlBj+HzVt3PD82usAqATIzcAOmBqxuGIvB9iiD3GmuGz+wB2ppmaJ1
ydh45NnPmKtNIrkGmon5q9MVY/UPBZs5GZisWQwGa2SpWvGMy2ku0V5rPk+xMq5RPgIcqa4x3E+8
aMbNgMZyvK6HvUjJkafBh5ZvIlL5uNjyhl6L1ZFuguPZo6pnslFZADwW5GogxGs2TADgRuu1dm2o
68pXMvWYSaItAa/hxCJlFyiAeMXNkj0nXyo0JcjFBrD9TYhgs90eCUspOryFMY+q7Rpy1hi4cqym
AaqOXPefRtkn5eIH6O03Kslv+7PZ+UcoLltzXeUW8dBFbfjmXyOZmNXTB6SLC0bBlIRTiZoCXk77
rs2b0754VkgiGg73woBBoXZ27G7oxinjQLRxT9Sv5w4BuJ/jfxDnxWFYYsYgg/6IWSymhPABMwxK
0cux82LglsTNUFC2QE1eT4hC1l9EuK8TTFKWYiKd5xMuRMNTi5TG8fU0pkxICoeWk75Ml5bCrKgi
WoFb59mR5oy+2zLWa4W8ABcdS76+v6VADShQ6gGXps65zi0dMJjYBMTf6Sse/sQnMBbhkV1Cr49d
c3C5n/j/YVttCcWVo1N16Qi6Ltwj/f42uFXNxSrZqzargKMiQ8HtCAz1LAIzICqGFjgQbDsGiYbY
YK4RLbc83NRnXKhQfmByuDafGmpjb8oMZInlKUplb/vpjLgmi5MMx3NXyPOWBLKatV+oGIixO5xu
yFVmMqPAqAwUdiGZanotyAQ3ISaXFSQ7fR59mJGRpASiv6NLYAkprO6+OJQWYmQFQBIGCHWsHUXy
IJHkF4Wx0lj114hBtRR5P6keZAo8J/TjT2TzyUtnaaNufhznxr3wYTqY5vou4mYVQ9JgiOCkipxn
deTwzKMlhcIqlHAxyu5u4ct22QwPtjAo09LCE+AdB7fptEvINbJrya4JIDuExReITFBBmqbpq+UJ
Ik8C8pphrSa4HD6QVWfpZhG8iCeSys+vU2CDlram9z+Hj4gBt3zvVhKUX2z49rJ7xh02kUX0qLAV
6zcsZeyo1FQbYc72asWEajbh/p2Ohll5R4LMax7/ZQwHI1ltCDp7VlVj4hFUeNxj3afSHdHgqx6h
6NFVompCYvNpXLUflKutbROPGqMmJwfYyTgqQQ6MgqgCJSVXpXN7seYaiQvf8zPJd9BcAcWVz/XN
+YtiOifqwhkBCQbdtPJusJFE+/fPzF5/4LKRxPY2EB07BPmoDnx6WEW81hOFBh+PQVihaLBmoRTW
jyrOpFGOnDVhgdsyCu+mgXuWW1hTWX822nnMrzP08G/fxfTjMaz6iAXl6STQKG2Azg7hcq9zQzJQ
urCc9/7qfsPkw+3cD9mWePHcupi8fICD5a+muWh5XrGwFUDFS5oJRwkzVdER1ts8nkByqOxvPo0z
G6xUsL0y4AL/gsWf2GODJzh8CoxzUVjbEH83Qy5PLnms4wEpv2iADRtEjNbxoOBr5+cGUqp/3z2p
euhB3P7hOpUq5Zb97uuv2Pvoy1bL0wn6PtrL7GmDEISQJHMOIPa9/nMQYLj97mq1EhFcHBZWBedY
/x5ZATikANjtui/4o8aUsmkOcp29vW+uNAw1EeTZfP2ZXRntMCLgPzjvQq1+A7cJhtuBfzDCuQlL
EPwPuS8rHjyIUmpdReXCIKhumWySEbkkNvx0VqlXsKjXw9v/mGnhR0aabfbnw5q9T/PdhtC5ZtfF
CVCRnrKE1PKFddaSz2fWtxsSULt6GBOqISkgAxzO63bVI/WA0IgQYh1kbUkforJuSE8kXyzyNlcp
r9tAM1IuZ5i1VszX54zkQaUbFoYFHPYVve7M488ilPMJzx/0MJoQ2OY1eOuCrbBfTZQLJonTRyNE
Vtz1FizT7YUu63L4jp11E+EPWtbqQj2ihBWXmFwv6p8ijXT44rEniUShVW2ag4qP0hW6AsPKQYMc
mML6p+Cia8l+1aQ9ephainpS9hYlPDNFRV1Klr/1RSZuKTeq8q/9V6wQGCAiBLQH6+9wrMDo4dkl
CF1tAqpohKIVLYsqapTUvGNSf60d/7/n16dOoh4CeTb7WyI7kDg0NoehDTuSNR0NEtSpMJA5J6v4
L3dhm5kDqed4wZtT+s/Mmipkl57doHCz31qkpMA53my09guIAVkCsBOBjPLwRsYI0AJxRK60Is74
vQgXqoHmdkgzpVGTSxp1hMtJG64WxTIGcigsuPXm8G4ZtWKq36rzLXrASMCKI20PSONzQAGg2EwU
32umwG85XMcbF2/SY6UmRHP3Va1LOA0cad4He6xLsnFCpbOxyx7+JH9UMtCEJfaUiaAEif0aixY6
dBHJtSfltwuhJqQN0vxeDncqT2nVwatWERkKPrLzibnA6BpLX3xhXMDZMOk6cfPMZejfDq/HGyWz
PnfNcOX2DwDkPnbHerxHy/JRrWr9fO/0fxNsX2IclfDZ+DkXfaX9VGrgpEf7HpeNHn8L6LqNtC6U
rifaDzl5BrAcdkyzW9J7SiFexHkR85qo+PzW0t9Z2yoO14tYG4NIOVOJbE/waLYe8z7fLptwK7yi
kv+1xEus5ZQnOfFlNxcYvV13TGQdgim7wEKzxA2I+HETU+UrlMA03DSp104dpqScVzfVbRe0myxp
bGBx7WVCeQb4c9gNz2Jj5HcnE5RbBr85Tf0giQMYPBBenI1XMIs1uqPWJ/lRnZ6+DM94NcwFIuHF
muosODMg5cBuJ1SljRCG4XC+IflpHkgOa6ay4A9UTiHvKZQx4z+wmQjeObKt17og5Lm6ntr30TlZ
nkZKyabgGVhg9WUXrAfn8Ep+5xLxnVjHts3f96fZGVLw3anD5N6MS5f3uD8nXvZnVdWs79vCJ8Vp
m+vq4EHy70aqzUv1US8nz1oziUN8DbNYhRxMPWw012ief5/15DAe6jzR/5eQrFcFXL4LhBPcjlaT
oFQ+n3LWu/eLLwgm+41E8R2p7VEhnK5Nj4D8BEH+XSkMnXjVxmG7m3r0x1e3EfqQa5VNmnRMUJTn
bDJV/9yVlQWUWs1He740g6qIkKEO9luTgNSQ33pFF6TbLhKTeja4KEcg1fY533SHB9eJf/kbhXwT
9ctwwErtmxgOA8T4YuCC63F8mZQb80+ssH9iXnPjArHxSC0xLn+Uepxo6Jg7V0hhwSnH7Z4FXrIj
SrnvJgDBNHCraDa4k0/BpjOB3id5Cexsw2XplO8xj7lYg9u9H7viXGIfjqUWXZcBL+n2ZWESOZY2
pu5gY/SGrdW2EQKqFp+utjyVWM+oqrPiBwqE70LBZtLxNbNeU2sLzMCC9OBOrb8PCEtxvw6HGayP
hBp3mp/2t193H6xYtRMwFJlzxIEibM+1nmOmEm7W0UwnAmuDNyHh3jJl5QTlA+vTUtuEqBr5nev1
gIkeLSsOsgnjF+Ac/Y0bSLUxWeSdPSgmAZFm655phF6csjsKkdLBvPUAz6MjJfGXcLZ8U1eP+l2H
LQ1B++jmazy3+jCcoMxFvabPCw75okRhgwE1k6sSO3EU540XJXA=
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
