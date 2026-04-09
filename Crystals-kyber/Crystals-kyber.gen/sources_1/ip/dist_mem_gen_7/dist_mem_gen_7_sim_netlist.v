// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Apr  9 09:50:57 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/lincoln/Documents/ECE/470/Kyber/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.gen/sources_1/ip/dist_mem_gen_7/dist_mem_gen_7_sim_netlist.v
// Design      : dist_mem_gen_7
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_7,dist_mem_gen_v8_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_17,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module dist_mem_gen_7
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
  (* c_mem_init_file = "dist_mem_gen_7.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "12" *) 
  (* is_du_within_envelope = "true" *) 
  dist_mem_gen_7_dist_mem_gen_v8_0_17 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12352)
`pragma protect data_block
ecs6y3ro+UhLNBCLAKoR6H2xlzdlPa8fWBLkQJM2TKiOqxwxmxQ3mtS9Jmza6S6nyXAB7L+nh+8D
ztjsA9U6EEHRI+fiTv/GylrAiouopuqkAfdjaE7j9Q55rmeM6hAAmZ5/F2ljcAmIfhWXe1sbZb2B
VkrdKSxHGHByzn+kpUfzZuVPBOEwRk8DFeJdVIcD1MU7UzkAcf7pLHRg8295vgOF/zsySkNTO36q
LH1mKE5m8sOH973LZgZPBikndrJ2EU7E/wb6vb9Ux3Gi7a+gscvTRyeKDhYqP/iATnaXxT4+YW/A
+Z5FM2KBcLcPXf/oBxCyW8kWJn54aJU/8anW7rIE8zfkeqFU2Ybv929aPYK2Bfff9k7NWPIN7KgN
r8YoI9xbP6ZUm9nyNYfV4jAL84uTIcIBxG9TRj7Q8E6hn5YE/xLSoffvjL2DV+ejpCNBFe6QK2+g
96AThAUfRWzeQvaKXEB7qrNUuWbgEBNt12UTJZJaOt9++k23AGFh4p7UyV6+9TM0YRv5O6RNIrkB
XUnQ3xJXqe76isfhxQzZWEGrUYtrKsnPdUJPPc65o+4xO/mPCmoWjqVeSMX/MPvG2rJHLEA25VY8
y0N37HwCIkNtHHlVsuRhKW7/FHGYMkFQfWD7BypQZfDTnOmnJ3rkLQ68wsx6orjcw5bT8fN7ftCv
VcqF2hz1MD/H9VztIfIw/UGGl2G8w5Ou+/wB7vnBm3zsjVB0UKG9X03UxhE2hhhsYANBxiraN3pn
Xh+YqtmQxw2vlSA53fDaDLg6od5njY/Hp5mZmXy0kpsybwJV3fUXJo4Nya2ShL4entI3h4cQ19Kk
dQsR25qi50BUuAaFDHgZ+K5AqTTfAdHDJ5f5xw8HmAP9k+PCHSnnkCVr4homEg0HG7W5C55PVv4r
hWHt7QwBqgcPJeXn7eH0W30hEugyu8a4begSgoKjEx8vcTwo7GFj2WenE7+jmCXoQ/YC3WjW3Jco
RjJSIPwunTNSlHUe6s1BvHgyX0ocynnWyNUuVwD5iwceXJ0nxNMD5RYYENn5mCwPER51czl6a/3u
jxpVV51hp9mNMiRlhzvKxSq1SlyP5XGdgzF/GcJdevN9lKqwdNDunBkgciHvqPc+/vz4t3U3hpfn
o/eyQE7Llxz5o6fMwFGTeyzEJ5bbcyedNsbGPZ2U3K2D5aN7b1SPNzv3TEYPcnmB1B9iQ30Ulf7N
JQg3iU6JBOiam6ApFDqCQqYAxe7zdXdObLVWscnHCW2Aac2HyyjG3MtPiQ8hyoHE4zsL4f//Sy4Y
IQ8+EWnLfBiiJ98abicaa7gHULU0Ut9wyVFriIFbrKQ1im6R1PScG78Zks5j8jvWs5XvGYlf5QPN
3ZmzcwJ3U/gpNJ/R9FXpIxaC4PoDL303QtFY9Y7HGH6y2jFBAcxQTWpc9k24911CbbrWy35FIspP
hvgyDAYIg1HkxNGyPyR3BjhtbRltKWR5VZkedbV4NmXbOxoZ1dtBZK0adCA16oJ4iOIEQNFj2uRj
9EChQoiXAx2jE4U6M2gPtKTFiaTQe6fCF1J3cDrOIGEKRVlS1o06BmJCZKRTMoFx1y6qTFiuQux5
yIEUX42+TREui/+t1V5N1XiTCGcmXgCKNaM2kmx0OlcdI4yUgYUq4kj2hVYMJyW5ij6vos54cVvA
e/Zs64kopEGHybrBeZiVphca4D4HSeLxgioGjTfl7OkmzBy5DXypxcOfF9aqU97N1x/6j3VFXqSn
04zPnMWUmXIKy4fsP4sWuCfI+ZzpXyJzfrKlZjR1TebZUg7cmMvLgTX5kHxZQYYcTv+AKKIaQGsz
YQX175g42s+mOa0Lo12ehYcvuAKEtXLtwSo0CYPY0JCq9FnvhYO5zRa2ruTAhtgdAa5X6rjmMzNy
icZV5F0hM4Xg33TbGR1GPisopYiL2rhzODP8Ol5Tqr2xcc6MfY3EUdTLoSa4JtK/rjvp4/xsGgnL
tUUzfSVZBdpyQAkP8EgPQuHjwUamM8g5mebq1DHs32JdnphtCYXtV6YmGrtE7g0Ac0iT81jDK3bs
XKQWMoug6y/ua+v/56LxiopXP7RUlbLdxDlKUFayx02cykFC44HkK60WZQOQuwjtBl5/9NuwbqQa
NOjYrkWLcOAFRktcW63NKFWF3hNr6GqOB4FfQMLr06GQ3UHSBcmVnH2B0L4KK6GuKI0ENz64lA3G
NwanzRLwTeVPlsdt3Sr5VFJHNd8/mXqGpCG/BmbhoPXVSj7/5l96QAi9XnazfFda7ihNeGQ7rC3A
OUPijTS+JMvqjSzPtI2ilneJA/xHd8Yv2izQiKru1hZCbFZLBnWqW6AhcMdEceug/ywtPkNQ/ZiU
RomHDEcTkd5oPSpJKq3oitdunYa5cEitKF1z9/581uClZIvOBqIqBkwQOIQAI9rKX7SBM0pQqglU
ihvWDrnvM5oMs5BhoE/thspWVZduwT+HppP907S8vxv5Ex9bOsY5tDj569kjzHpfrszXtNK6vfaM
eTDwjLdybacEUtDTJiVGGby96Q0pTMJfbnnjiu4xqW04sCHbIsTAhAV/dB5HQRpCg/ozkx+bCRV1
zADOMaDSyr8GHhiA5sRJP9IGo0C3VPWqRYEGR8WNllgo4M6wr4JMtoEjmKN1kaGJ1KInFYYACn0r
JNyPHNi40WF3Rq7ZnvZGBPdpB3MhysZr+TSD+y228Iqaegb7eVOvj0Jyoz7N6n4rctJ7h5JrThDQ
kKL2tk9QXWNDrfT8Oo7Bt+K1T6S4IvIbANy2B7C6iiKL/OXcN1QYM9O/0PFnNwFhS9vrjtANMym0
5XMFkJH4+pz5kIdDCLZS300kEhvey39cc0bl53/7j9z+9b24BbeWVXlyP4mLT2fmVJU+xJs+Vwm0
ynPTBu/gD9vYLLhBiBD33rEwBbsxtN1AsdFoJiJ0pgrhfn/kIyNcEgmyhCBPMSUn1QeG4/QOe/Qk
IlbVa9gjjgrSJicOMAdFDUvnCr8ixuNIQkpCBX+5z1lP+d4Ck1kgJT6cXz5A1p1m18EPnl4VbWms
NI6qB8cSQz4KTOHOOOVDXMPlz9mNFvHX61cvUSw69dcdidPArzGzU4w44hCdBoA7vrGna7AVsJJW
3Nqm7ncLJAJOB3UI41QMTBf+m41neRefgKDV67TSTxMiyxMG0VrUkcWVGUlRNn+eT0VTvawvARye
oLWPgyqCmTVqg3aSp6GJbKHshogJYv6pzsn9cw1F4BjUusSAPzxUuyhdFanFlYfvkBR74rH/6I8e
/vtpt7ZMqFLn5GTcQLirBDz3SNHURrQEFhLrG1sXjhQpLrhQ5ksrv1Ji/BXk6MgWiZrBHi/kox+M
zq9y9Eohp9sE7uXWYSzYQKXsahm6v7Id2frWFrsesTkc7pXINExrcERnwbWB193hdGlyqpCT6p+Q
kKMBfEMSeQN9iuXaGaO6VOOs0CLmVA968qwNexJoTR5qZqknZNxUFKu2gTKxAJb64eG7Im1o5ZI0
FlTZEiV6ky5QZ/wcZRwr+/NIdv6JZYYpi+JOoGwB7qDurIYmV+Te29gG0FzGDUkDcOCGofXjebgH
16XLjJW23i6CPY00YHFRq74DsSR94fBEA4m6bC+eMrHt9MM8zy6cNE1jxVILZWpS8MeXU1Xky9/D
CTnsRRIklXrWNlPvgqZ+jjw53rIsVNXrvChZUIQN68kdFDvsrD8cfIqRBPvFxcs5orPlnYuUOqub
yzC+NWPbsa/UqlWedcoVSLtHWofvKTqQ/1kjQqABBWQYAFiW+utB2D4XOqfT7W8OsiEXy9G9XYob
03dY4nG1SHXVr2MVvjBpSMH5OtWjGwJ2UsOwUDzV8DPOok/KkqvDW+RIYwb2i5KTPpHpjtHIgpuq
EBh3VpBkFDcZv+iwhdbkChZbm72T3aZA/EfXHn6+bVc/U2r/By8KSkPHZ1eWkS5xnWe7MBPufztw
mAOGRWStEBQpYKe7XsIBlv5AhQgRsqL8C+NtM/VbXyDnweL9L0bbA9+lZYEMf3Lf6qfAN5kggYy4
y2eYhS+LpdLfLlOQNXIZMHo19sqqqXNnS9lF9aBrxc6WAg0h5E/OAxhuDO7XAZ6vi+B3EbMqI4iB
gX2zEpqN9wApnDeBCaUG+gf0sC8xxPXOXSGX0kyKI+N5g4DitjBsMqOwcdTjFapUHUyDNvLDEtwp
YcI8hEfqbK6DqsSbit9PAv4WuM4phSxJ97xROFGOUQW/4zSxjpWdyY+vSooEL7gH6Sx7mOU78rtY
gcxLRka48C2vu9jODVLd8ECGyOTTYFPFaehQl0r8ZQkzAjKlTYZgkre9tFYLdTmMBqmJKkQXljGi
xu7kZNXwJ1U/rvK6mxXhOAsQSXn/kl/+Xj1/WlFyxnFf8nLA3EChaZIzwtBzarkgu6bXBcJhGN7j
HncQ7eElrH+4kexHLuYMlub8LRPdGW00jh9rPCPz+83Nz9kDxhHtV9oM1nhSDX20zrJfj3jg6cMx
XZU9cj3cDlkooRfnOjJ9Nlge6rKLlfKezzjr4pUvexjCNvJIhZ1wELXk0lV/9xN4+om0OE76/y/t
HxJrZ5ghdrG+QBDEZQJIIyawmi4QrlgEt1uGWaotd55rJ4JHtSQ/UJ76Cmxmp87/jSHn2mOj0/93
HhS62MVLOp3ocSqlGjcgV7lu1D/C0Aic8CyxyVHkqRKsPgTL7xcpYGIt9zTH8m9kjK/rGs50rpB/
WDv7Sg/f+ZAOjjPjz7lgAWrl51vZKSnRA/e/CKvGa+9z60JRI4S3khWLmVYOEt75mJ5XWY32p0La
dYP3S+Oi+Q6j8tW+PpKSu54iArGF0ZdM1l6Al7Y8dt+vTTWp8LoRYMjAfPdyPq3ldK23tRuFJ86k
xk7DeMMEcVu8kmSC8DubXFtvQplGODj0Q2kdW5HLEUrJq3kecuUlHDF7o3fs0VKuRaPmoTJpiQCD
eETzYtTPNGtIGyiYJ2SwzEdmqf/jCzQoarSHuYYQuAlKIy9PzhbAaL9p+vljwyeEtqPHfDMRsslt
c2iaSZKRRxklKY6Jyhe5hF41GDBrFkApnNbuIb0mkuYpnbw7s2MBDlq7vPlLijnl5nwrcXh0BzBE
aQll8ZQWizMwkJkaGsi/zicymFgFU7gRsRkGAMPNusEf8RQO2foqBe5zwL/hVcghYm1n6SP/BDk8
CvBWOaSObsDfDV5OYkYxzaENb6u5RzH3I5BSDLdjwtMmeOsRR96xFWjDXMgqBxwJk+J0aP2Nry/i
x359lJy2ezCtydhrzesbVd8l9UHxDrkIkaLB4Q8PlWZ5Ms3i/6pU4AmQlQDG6r1mVdv1Pr4cxg4F
xxK6o6rFbMo4VYpZgK9yCJmTfRqJBki0upkONBTiMvRjnJ1eWhJLQ9dy7fArpmAgwuufhLYnqs/u
hQE27cSlgYHCuu2YQIeBl86pSNFFsweXB0dxqBhSarjUb5k76dFpMEKAT8tgUj6m5nkt2OQQrSyI
gKnzdmsTha+dQv8E5ZSaFOuxO5TPBt893RfYYZLuFV/S8g/rz+e52UYkv6rs+SKM46FMEVQrEw7W
4lw/xAU9g2FUqWzlgPi85mMWOh2/i/RoxFGSD+Cuh++nh6V+zl1w05ygzOPDi7FpRw+RG2P53Jud
nYVzT/mVhXtFBqwlPdpBCdEqY7AzvVro1oS0V03I7WYzyQVINyZtOlNZ02CnMKbljMXeKitkh3E1
gj0FUnJPC9vrcrmSk2nHX8SoOZ/uuXYUdkwpwjYzSDk+FCLkvU65wdHRKqIGjOZnLN88/SrXkytu
2vnA52w+vf+o1edi4TbXcX0If64vrWFY6YTUvvJ9YpzvAxZ3ooszBPd6sfUg2LWpgngc071lZ2Dg
Lqn04PCsTCyBlkPo8St6guhF+3Kizdz5HISd92tunHIxdfHUy1Z2uXlF69/FCAh6C+RZEUv0C5hY
StSypXvVf+nMPnTwQyn/yiIjUnwbmbZr0f9MBVORRpscRkdtE7SgiSImXKXCkELCrkl32DaCEv8Z
FQyFD5i1x4K0jQFIbMHriXUonD7e+v5SRNvgBv+gYzuTbfceaucMyXPZ9iXLvtwoeLTaQAShh18P
Q9Rlc+27/9LccJJ7RI+g5HuKEVikWKe6xlBlNhKTfr+8BXXpYKVNc8AqNyMsqJQsCBBAYpXLre5/
D6GPe6CoP8jidIHugchbkugLwFVEvsV4mqUq0IEFNP18KihMFkw8bg2ABqOVLMu5kuBCc/U0ovH7
g9/Xub6To+QqMzThpvEMtlVMd4PlSBylFEWx9sDVdKDgR1GZqYaenHmYCV56c1ReH/IkVLN323ME
3FVYYpP8MIk07M1xvIt+CGyKSLfHIZPXHu457Ohc1NJK6x5z622cv+KtNXLXV1BucXwdMFmuH83/
BVdflV+glA1Gq+KxXczR3AxW83FdNhV4ohvxZGXvH7zWrR60bAKrUFk8EKaVggDsgxDKALJgpGer
1LIo6++t4Bk1iz17RAM4Z6qIhhyFK/mdUiaEnbse8bkOh5vjWUV/UuYjCb0YT6NWU9bkUO6wriq/
mo6dMTrLQysfffhGx32EucCzIbvxy7h7M+kUNgX2gnvgnoks8Qc3uTZpxbMrBc3n1tzMB26Rg6Ul
jfLLa/jRsRpXBd7Cj/RRHqbJsZnaLvwlWHZDUUZTMngjqElXxLCAf++Ds18r0zlsq+Yy9/hqEniH
Z1GVU92NtAnbcovoG4DcvvYJdvv5VUnt/fd0gJt9GpWR6+e6ivvERYfpqeQmi32ZNs44+sVn5GCk
+KhPOwd3r25aUSa8SjBwhl0RRwkyvVjdAx5chTI5Z7GcpsjOHi9Nwo3DnuvfhWfK8i9BiEYRafnP
9w9qpTT4nTPAc8by2Dv2w1eDfchUEX/HM1Ni4WdNHgmcXJ1nZMuEf1znoGK7vN3JQZCYjPimmTlK
7cMfAwVUwopb7gnBgPn1g3no7NWaerKiWHCNQOoMn8I9YH7ko1CqBLbLjqUKYJh9KfyRWRlPl01/
BZ2kVdX4cB5noZuRtwlyWZgQ+mVfegoElIzkjwJ4ULyhG91YWYm9IrIMlPAb0kZOxY5Fwe3FdG8U
mRBPzfxH2AKdKN1YujWqtKBGxporWaUfaX889wNXCHdXhy03oJ6OX7NiajZClV9sdKwdAMuTuFQu
TxOqgnAApTtLbjVmYYcZZZu9i4KBZ7YS1Q+9OXi/kEzIzbvHv8kcRI9IcNrnx4Qy3Uu0lYn9os4b
FzvQL2A3hI8c8aVSgVh9MbEMGKEKCt2g58v3odAJ7rR2QJs1Sq9a6ULbhmrh5rMTyeInP9GSVvuu
InkWODMf77bFK7vv0Vs0LxeskyJ+JTtmjIl2f0uZADmT4uMFTQ1tNiviiVBHLKAPyIxs7dbRGTyr
RJ2xaedz4D7o2rA+nqNjtUn49jbU/UpW3rpVXNTQqqXgShu1eo21fPdPkzC0Jmwwfjzk1wuoSrO4
WH4pOr8npt0c+KsGXe0sg8wFgOVGU267/fiCJC1MhBVCdu5hVylgN2k2rvjXOqbC3AXLv6vLn01O
VpwsdeVwEtOrgF1kPea79z7FQPD6br9NzGwQYm3KtobPbhMUO9Pgbr+fRBLtbcgEkQdYt7hoBR6o
6y0Al8V0E2GgGXOs+wYM0+ai962C7jTg9rw7FhIyC1D/HtMr7frwNmqlWvcjGcsz3dPMsg7e40zY
j+Mw7/hfoIbQsps98qZJFjQ8F9t34RzElLHIeGCdOGFsRB4RpImS/SnDsfp0E6q/PmwV2imTq7HO
Z89dasDvRiZ69lOEkEVrDzQgi/muDniJnd+JEQDp86zBoV0evduurCRNxJ40ePpDAtgtacGqeU8E
IGrBWhlBsCoUeCg2G70Mahbi1UENTw3eSQ+o11zU6jXYpcOfgvNdDDKPKJ5MfkQug+H9/scG6Bzh
CqMXkUQrmD8l32S1y/4SCSMEIw4jAHnlw20YyCRmZ6mLCJxsLfTm+FOW5Ord5u+P+SfFcNlU7OAI
2ZFouy5/5+2sZ3O+JcA3T/CMVO431GSw5vjQ/AclKMX1bX1dy2oQiuUt+e3jSPEbXpsFGh5rt7PL
fcZmTGnA5zYjEdFB6rjcVji8hcaI62PRTRqafVesmVFHmS+9pUkjfC0oO2wL5InynTPXHBBBrvn9
9wOlsXxlG/6O9f9x1irqojZdBU/GNu7vKQlLegNoexAtvk/qX6uIzeHBy4PmxqAbe9JHgvSminh4
58WCTONRSiXSSB4q5yHBLinccmT+9v+oyox2krv/uAS5vdfWVYJFP0WL7daEn7x+EDYJxX3/nU+V
QOssfJcmRjIwzatQAtZrsIc2De0pYQW71jHIvbyLPQw/WNCRpEU72rW+SYDwzGId4KOnl+ZfRl6Z
h6s6311GVxLy1l279BqoggHaR3p0oo5lKjUuvLg4hmZW3my9rPBog89i756jN4iAQbUAD8Zi74iy
eKanM/L7UqnGozxife9flI+Y38d/MDr3Rp8oYSusPhiJyfRYZOgXsdBaYzT/lt8DAXRFdFOM+VWs
C+MpJh8uyq0jPdwJjdFTBn+9UjcKA1qd6dCAEP0zewUW03A9uFnJ6hoSV2LpSuEfvQZNb//bAaJR
O6rOaPkuypJFvvdcabeIuS9A+FUSdD8R+HkLyKC/KkfSLfJttXO4BcYTyZ3fewYLvmu5IE5IePYb
bZC4ppP/m/oGKyJSd5sUI944LraOkU6PkKPaDXkMenE5s+rFAceHiK4NbjeCvHmOBe8nCq7/IOKM
MubbC0WUf2iIURJY1IrUyvZY/2EPsLqRWJP2uMtY1Roihjd7fSllOQRykUrQoa4FvSOjwcOWv3i+
0sB121KsNiW8jdNFk5ITBoHLNa+FVg1UVm+IKetET5p9BMCa6o0IfsqYmFTriIKAA4LnWLnoHTWr
+lLlP998w8457b9yhco2qWx0FsvmeYl1r/yYEaiSJE3wsq4B8S+QcrVfpz3D84q/xU6fjeXAv+qe
D0kH6r6FjNTVk19qaz/h7Gg+fOiEe7kxFpNYazOMRD1m5LK/xKfs5p3coQMhoEWNgIBbl2r1a3Bw
2WYXJyCA5aR7gl9FiVTBdoq5pK2uDKTCydGLsIXkgqcejZ2JJB4AhNzHNV5QDPgi9wzGQG3AO+G8
UoZ+GuK3QhO3OQlZmebzHsGtMYjBVV6gBJFvWhHHSEZxjcfxJm28LkfuU014YocwitLcUbZ2wGqO
98hozlINPevnu+fBcYAW+mLB6r8bV13JwOP9DUpab+jOOLmn/yg357ouhjiGq/479OJzG5aYwHBQ
dGrBkdUBz2le5YG5bqeOZue1B5CCenBIkHxpVXITB5GSX5REj+P36e+b0mLk0TbuPYds/k2L8guY
8HGTs+IiQSQWJ9Clr9Df1Sw/RM9WF7YZd0wMrgipWkC41HxAW9WomtuuNXUW3Le1B2F2ncRcIlAM
NXAtb97hIsCat1gOKx9j9EIqOsXXErD/WlwloRLsU1uGGIKQ5MQ/YPDsQiLBQgI65sU32MDHuhDf
JhaLIfOEq6QzzPZaDqWud2DtaeRFx69kn4EiPGk3J0O/ooflPoGok363htNbxapESk9LXxXe4WZZ
YPSTSAz4ukLmWKeED0AT3SUG9YRTHyNnTk2+gI3jkPvNQNrYayavzA/WGB0M1n22+SU6awnGZwU7
SiL/2a1qnuXKuoHCzM/WCIo2pgnkejEAvRKu57+xK6y4rHF1tY0p1jYVpPlO+o/8Em7FjXKwikQL
ObO3zHREAbs9k5E24EAd9EzebX81iJQtgJJHDcNmQRsbL8w8vn3ddIx0/uNKsUeeeYpzxxgMTYE+
hynUO3Tzwll/LFKMVlRQiDxj9yk2sBgSvqN5VKH7CFM+ya6gXPm84essEULkEv34/QxpXIAqQ8Vf
MS8RtQn3q4GBTy/tmcCqcXtrdTHZYf5zdfZ23n97Zde5xgcDoORzyN4q+HfCUGIwQjdSdalJnpNs
uV4fzzSH8NmDfMAm9rCYOXu5mmm5j4zX2O7EgAZyAYCcN9XY0VIokO6oBOKPxna0kUv6k8Udef6h
ymluHHQhJQUtFCW9M5g2LsptuZh9ffUZOobF/UVFsFWPtnrcc7bqi4lBQds32qnJdgUi8OVqPLiH
nbIxXLTY1vOOI5wyvZkiEcYTUqcj7aX/LzSC6YLZbPOKLD3x7Fqva5O0rRlpYT03Hf9aXv18951g
c6f+pc0WBHHTDUk0SY9Odwtdf0+AB3wkgOLmtYCK9za9myDw2qRxgar7jsk97ArDKhM9FeWvsELU
Ox2d6tjjBbrXc20V6qcEerC8CiwcL10exufH/Hj/XCF9KBarOE9fhYLs+jh7D1qyxQCzRPZW9LOG
MI/VafIw/4KOBDklEkbnUmqnLZyaEld0WzfsCKEWYsHyO1ALOmnFyDuEcaGNBbDDeOVZhTGpI1N/
yrP0jT3i3Y6U6pSJIuYtUZNBLPOynMa30Tc9/eGxoOYRs+EGw4gILTspmRiwVOS9U38x9xfjNj5C
kj+xL7FqOldMPBdcttRSV87kSSUxLNhWvOCW734gtEc0lG3+dEZst+VQI9UwSrsoiPNjRx8cEdn5
DyFn5myVWpVDLoObzjJnVSzScoGcvrd0AFAhr8TaHEkUiw0hn0sHzE6ovr5SCQcExNmgPMAhM8PM
swY3Mw4EoMP3pYH2/CSQ5WkRv5ZtxCAmJaXTlKIwNZKULuMD6CncsvAA5bVlyvMLCT6sYaHd6NtN
Nyi+HMcjasrCgt7PqiIrK852KPZOiaZH6+O8ukaTGAIWSE1ZE/8YLXkUuKK76pMC+has5heyvy/Y
ZIbQIMc8NjCBPLFRE3g+VMNfQpr2IiE76/86lMJUp+YDBPObXdwPkyHfyARAmftaa3xHUFS1IQbT
q/TVjruTHP/raN76E1/+Gcmkjddmzsk4DKxD0cw8ohRIbeRwE3PUpom2Rf9mJGm2GuTeHGMoHH76
/y21PtCrQMvePl/JTbo5DR1VXKNxpnfnU7WE8dhzVCn7IYvhsl/ll7SMmZ5msBxAeF1ZH31wiEvY
v9IQtm9WAhH6taTYUb7NfcSUDSgfm7gSdlCi6aV6X3CZRv7lbV2O4IZTfmnP7fZ/jUZKq/9KvqIw
PeoUbSoey9YpPLqRKLe2ROVm5eIsejfp3zu2cXG+WARAat891sSzua7gBGgeL7fJn05+V/7/InKZ
M7L+zww4l40V9LYe2NJgQBNOn+XkKtZMteTIBkEc8lC9NGWL5Tc+5EltTruD4Z3FlQYG7GZyKCZZ
hFNp+yTS2wOeQ+oHvcc5S6h70DJd3A+/hUw7Wfffxy8AMcrsQuv8brps8eSlmqdx3mcH3QKEpPpZ
y+iOY6kblTtNyaBHIuZlpPiH5Owk3wEadsbiBPWws3QlEGm4JlrCh2xsB0LhzKCaDfwQ7OytTowa
LWXNQ/L+hJ0QUknMSuYT0XZDrpmHQb8qVcMct/obzEB1yXDyEh1V9wMsoMobVcEpOymduAD7c13N
61MpEvw/AwqGzjMBnlYv72UUJbB2Sr9qd5CAgxxkEbrhDAfr0yvc5ZYuFq2/iKDDnUOyJ15f7epG
r/aVGsk4TRShXsQ64vrbHV2GRS6nmpOFuX//DLofC9K/AI7BGj4wAPJsjrt+kX8TOOAoDn1e4HH5
BZHam/ZA3pQl3+xMhM5zEEC5BplkYwpGX02wbCIGDsZPGIxwgX9cvrgvPnPznNH87fVijnORphiL
PVATFkhkZs+PMeXqdN4APivyVL4gX6F5NOw8JTOp3KVtimhaaSxXsu40cBd8bsWzM3a+Pvr6Bi34
Bb1EOOZZAQLOW7bD7gV594t/buJ0rbafeW98Wjxs4nuQBzqJhSKuQVY7s5spCASqQj9P49XI6Pdp
65CNYHB4DrZwplGUegzRxODwBU47bxz59H+igF7gVKOa8SWyKAT9lXh2kzkFKBxV6TX1wCUAzN7A
AY4982tcMUVgnX9KzoXtFFcC9tF+5VSYM8py0Der9vQj7OlG8jFIB+kNX5136au8IA6RGlW5b3ga
mB/KEj8EgAL/dshXbeN71kXMfk+yzF1Gwj6lgcXzcaKNMbKAF/YKtZ6OLxkHdUi8KcVmMl8kQ1Gl
Nr/9+55WCGCaKIErmKnnyjmbNSNxg/8d3OXa5OfqBdHJLuSWJqa7iB26ToqDBhxVSN0Vsp1OArLD
uPq6WpGZ4OnXeBPV8bN1Rs40xcYYKIRj6gEec3xr65nuKRcmu4sviNn2NkhjOFg3DwgfpuvQDCeQ
KC1COZ61m83LWW8JObxhkoBKtr2lS2NfIXzog5O8jzGnBpIZ5zIi6RrmpJuMuUqauIHnwUOWupGE
iFub8m9mH2KjtotPVKivdsBrUKpqRLUTgFO7zDlBidriwSbjqYRb3Uqso6swOBQRnual568aGKlO
wVdmyzVLRWDKqhDSWm7RlCodL5jQQ03c5TKPKC9iZQL0mpBaPKxtIHzxcUxmGDAgjCh+Qvdlem3u
YexFLdYOzjC02xVzE9fBJe/OgdlYABrKtxjFPuEBrDeUoq+ujaTdfnylVXk5U4iEvJ7sCDXhTp5D
TOpI4kyN21z/Bt79Y58IWRXpiBSF1mZhEHGUlf1Sfrda+2iVrDNVeMw0ct+B8yZVFDaEOnBkK3Wp
OjPSSlAcyYQ2uMjDSwgNcg0cxDmta6bwcyhiARG3/+R1lANDaNzZZglM/UffSEL32YQ4nammJiW5
muULO70QsemwIlfD8MbQ1ZluakIK4hBleXEqGs1qpzN1e3OCqVAuWXPMPhPp5/B5auP/JuWZq4zI
3DO/NxTgZj7pohDtvKW2TqsGPoo4XhV1pmmk2Xq+hxzatIz1EzoWfZR/4L2Ou5AEqmWB8Pf+3iut
NFM86kcrbZujVVZHTfKYkGnWFiQ2+FIKLn2nR93vbAVwRR+yTHopuEcoEvZYlIKDdBgN9kDVMx7d
rHzylu3eDVYV8ywDFfWC/Zw3DG/QtttKSV8CGXPGeIuWdtWPVflHm85HtNH4rGm6OsPXCzB2Givb
EfTIehhZSF5plCTkFa+VlFMhqB0VEBl4lwlC4Qjb1YeVdwnU0QYWQSej6YsZAlVLSIgkIV2RXx4U
yFJk6FaznJV0gt0r2n9ejueYUNL8NXhdpJtgc/5XQAz4JxIZvvqf49Ny+B5ek0LVZ/wSWknWRiyc
j2JVmyc3GpNsS4LDPSNGcNJsHg5XZjURoWW/3pfdY4FlBQb5W1a8DJYbQgGGUWWFh6zT5VxxFVwR
egEy19f/azrppbJebCoj+oSmsxyos12YzjXnymOZZvCLh3Ie1Q0oeJ9qawrlAJ39Zph6ric+wpEA
38wh2xOSh3ApdxyRfxUKA/lJADDmBXof6dFpavo8YGIf28EvtS5QM7caBccOiCt10W4ZUiPD8UV0
jNDr4nk3Mqa1HWO9CEf5raPrxAc9s1nlk0gDl9HlDmLuLEdr6nwHSwE0kiWfRgktsV75mVEKzwhQ
QBT6bBKIIS8X/Zp2DQLa/S245uNQcAzCnHnbkrbFTxm3F59O7XK4i1NulpVo0XsQNrxI5Nw9ujzu
Tmg7iQK6406HjHQWIlrND3r9agkIUpnN5zihfXfZnVitF+2L2i5AOB91p/DdICCc5gDFeX6BSHEl
cZtJjvGzWWimG2E1ILZNKYS91FiH+DykSrd/aIROUDNP5eSKbdNPgci9/xLQKLQzqtwpebbRVjZB
7NS3wC3+Paai6HMAdfqv7FDzJPzqshl+ZuzOwsh8jvqkkWxn9arSYzjL24EsVgz0FUgrFCXBueha
Y4qqfi9XzdmYewTnKPhjzxvgHFfqbce3WHmJnSvQtUentgikVamXR1ciseoSfh9bFsYP7EGQ1ea3
KoAPL8v7iWGntID2MP0pA9sVuY8BTV00YP78IrOSQj230Nt3oFel5szDnYglY2mKpVzEM+Dgu1ek
rBLTX2N9FLvGSL8zHPDuDERQwplNMeZEYSMDC4tMzKPfE/rOur+mYAviCxke808LotMJxji41zW0
YYvoXO07HsOpQ/13Du+8RaiZfKDrjAZHV2JksBNwn4Nov9fangv0oI3FQ9dxwK7Oi4Yr9nGAivoA
I/RrKa3VBwDQAmaZ9baZ7GrzIF8XNvmoAY6VVR84cKMVEvi8QsGIn06B2XPnYofFmrckOrIRRs8F
EFMIlqpeltvMHUEro4pIE47uQAfXVthWqf+AREmD8Rkuunq6+KrnqfYVSdy4UPM0DIZ7VigsiEgA
8Wo2kmUw9PZANtkBPz18zSWQM1rDulqjTbb/K04qNPommlPprjREa77JtDEs9X2lhPGpduQNBihq
CpmPUjKbIxekMWMVN+SJh7oeLJLxlROTt7k/eP6896zfXJM/oA0CI8aKiVCTY8actvUvlmKktEDG
ivPTtfmlM31MDCgmw0L+W1F2U5e45uWnSqCIJgR/ac4DCdDKCEJG8r0KOwUxBSot/58MRI1BZBPp
8vC/lU1d8Pe7ZWeubYa9bt3kUZviIobGWbXjYc9UEMK+6StEMH8HTdOAdSVRCC26+/aWiJ5HlV9V
OZc/KThb9djC6/FYMn1DT5e9+WMtSFkfx7kZqsraXZeM1V7mmMZ2JMGgs5COcpEr0hoG4PuoHv+v
M90aYnyusVOVnnNOi4b/V9mDlKyyV6yi02tQdNGxr4xfBkL9BRxc8nRNj0zTD/vTXiM1lUEn5czi
w8s/03kB+r6Y2VTCYxyiNVWh3nJJ9Ce7E2t1061Xh8h/E++XAfJRL3im+VjD2IGMqezanMve+HKv
wNws1/BvO355NPh11X5Je/9gcrGa4RYyT8J6/P+3CigxRMkgygHckLq3QyeFqaracoxvRox5thn3
7BuASkriBMgg61q5W0IRhfSQaElslAxebiwQtd1Ct/n/J2ZKrxlEJwcnGxBs2LrFT9vPxleOfR7g
PlGP3b13B2kBIKGSmcc2DO2uocD2SLzHwUa7QRXGiVEdOPZWHpiUZO3lHcLV9fjxapppz45iLkOs
DGiKNbCeKAZW/RPVAKaQfJPTTwj8bD45idBEEu+d3rGPerJuAjBfqGMIREBtdW0W1h/7CQKhmAzN
QztZ6357ikM7UPBJtmiW2MwypIH0tJ8h3CCfGhY8L6Pvm59MwGvAxCLP9mab2Jx5zIlxH4yVx+u0
hc4AI14EgB7SFpYIXuGWikm0X4GEnkXHbDPFMZfpjApd9KRqlQK+jPGFhI8v4dmBvC1G9bkNJYsX
NRBjEg6pCuFtf6y4pvO0z+VV859a4c6YORh4gQYiVpaYZ+d54dZ2mT1UDNw88/q2cVCgR6Li0uGc
sGIMO8lfgk+xfs9ue9WQ/Kq4safkX7Mn4ouFtgLmt2dRBliJkeh+1NHR4W6FnEDy24lHQ5LQxgYn
Q9TF/gypkAQJy9rYiO8OBDhQam1insXvRTSwCBNA6rxsGkOdizZfYd2+5HwTr0309e0qztJ5t4gr
vSTVhW5s73y3Hai1cAW9WYU1Ez4DPD2k84d7hZoJO91nnYMkC98Fnl4yGjrtbp8/25Uu3OD4sKE0
GUH/DhfhyZuYykxHPGlfrrpbUQWxuoor+KU1AAapHZKjgcJZgeGm3elg6tiHu1KEEZtIf3+h2r1C
1iM15jlLY4Y7+P65Ro7Oxgc3yhz1cDu4mGMTlWH034j9FRRzv4cRhEtCarHyhhjAnfXWR+bbdtRk
OyENt53fQlEuXxaovGmwpmoebLlVHNWgOeZR86N9xM/19BUdIOQx4gSDFAmnjVCP8bEXyL7/NVhi
MGsXTum2/556XmsUC2GdOMbJvZyxBWG8demTxtW01d0H+Qk9Yc7LxJ1zUAu5D0kGLsS/NhA4DZ/g
iqwlJXMc+CYEJOGXSyLNdVa4mMPnslbr04Bl8X1JWQEwGNvA8qHTpFI1utFG90gsqY8EqOu1Cxyw
ahLNnDrrBSB5WFJClwmhTXFqW4UnveP4JFw3wym4OeHkM6cIykRPbhq5KTsGxICFE326X571OftA
UlwZ2dTHSFKP+Vd1DcQdwRUbhrVq31zYZdU/cj06o0XkpEOPSMJ8GRbJWk4XL4I70VKbtpYw+5zI
43Z6Xt4WveN06cBR4cuvz52o8nouabSq9OnBk/07pzvuXsICpfq4tjYHcbStmwEYV3hyOi3QdVew
iAWUK5aFd9Fx4PCKzgh1idl8WBmp4SIOYv+g4DTrMiuPEsqqXKBJVIdzkOx0aFHf+qfVLm8xvlxE
14ioQLdAilyh9Y262z1Vn/7eB9ivPLLWr6XVn5moBhuCSe5lfslbH3KGlrlhINr7X3CpDy0qMq4Z
n0J5LCKaENnWoS40bnRfQNGr6hPT4uhO7ezKpoCtCX/Ti7++kvm5jAK9H8UKUZsutWD7bcEPQqXW
WcB4DWBrNTcC8ZOygHYa+wRFweFso0LCCziGgSGHZVKedg6xVMZrQfSLg+SIIkaTgmKzTuw7oyVJ
DgTSkj85luAbONVzAnHDyhp2EBeXXBPK7sApsCADNLZ19uBjXIq7ug==
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
