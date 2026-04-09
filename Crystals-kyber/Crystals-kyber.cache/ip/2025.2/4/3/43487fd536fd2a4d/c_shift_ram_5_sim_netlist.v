// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Apr  9 09:50:49 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_shift_ram_5_sim_netlist.v
// Design      : c_shift_ram_5
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_shift_ram_5,c_shift_ram_v12_0_20,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_20,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_mode = "slave d_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [6:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_mode = "master q_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [6:0]Q;

  wire CLK;
  wire [6:0]D;
  wire [6:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "0000000" *) 
  (* c_default_data = "0000000" *) 
  (* c_depth = "12" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_sinit_val = "0000000" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "7" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_20 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CLe4hIBuPoGhpVl7WcpdPrkOqRB4Jx17xO25OhKMzcudPtO7fyzQcLT1Hwfd0j30ICv/93MrjmYk
VkhpZR9EpEAjIIkPAj6Uz1DaF5W+ZmnNsekRAyk+3Lm7DCkEdldRunmAMklLXDYSE0BHPyNZb6/O
1fVccxPwFw6jSpxzyJ8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ACw/whBd4sJPjEXsPWy+A9hsrulOjhl03yGnO0wIJb/8lOFB6tmCM94OcdNwiMaV6kg8YzX1Zq7/
NE2RxoRW0a7WAr7xvZPy265UGSafgRDCpO1KBNNkYutsmHT7D2OLTvT4FaHp5hZFRk+z43Ve8ygQ
YJTKyx5ivjb/80JLBvE8hnVCpYkZN6VnhMHuf1XLNa0oxWLQ2z+ODAbTE0KVd6D6DWycqrbcGtw9
RfO96KL4+hS2NraPUOWRVGCJvHh+C9oFURQ8sSL1vIHuy9U+A+C/triRYJ4Yl8X5mPDgDSLb9GaP
flIuoeMAprVt1E/Bi7vgnF6kuuRtRrRwCbGG1A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
WhGTCsy16/t+nTOk+CGv7tpQem4v8f0JcfhtmHJKBQmUKRgMWECn1vAxv7cTlF5fBXBuNPE5ekvE
eE5xvFBz6Hn8xUu09f8xFM1K5WhbovRkMP3+0G0ookHnjX6DsYKCCqav35emaqOkBS5JhVj2EBPk
XLtGUbRCypldy9j1hdo=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HTqbg+eKkopQi5dj/L+szqmPwRpBkCcaMjACO+UpXthtee/no4xSMcGn8abIY3SPv4TzrnuqqXPm
0AF2N3wLbDTLOGfRyerYPQtOSICnY0YK1FpPbRpt8J37qRX06v29OCgAKQCRzqcyktN979XHA61i
y9kXKs0ecYFb/aEJn+r/Ms4/zkik5QDSibn9rXgrCIaAq3oV/qy4/eOC1I7HxFJ7pQLvD6TaOwrX
4JOp3lWwPc+YVayAWfwfSM8th7MZKBhpSD1StLeBRJc4CJ5oDLwaMgHEFCXxx3pyxq8QdKSuHOu3
Wi8mjTwcR+O/8mCaI/EQL04GZntygGZa6NRnQQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
o91QaUL83RhelLkEm4+751/SyYIekusmli7rQ/VnKAUITjkJaEGeiMiekUqrom206GlehlLCRUuJ
Qk6ai4cQrpKj2AErAd0Y5kUpeM5RS+aWpFjtOYrSHMdr4rMfgbsw35qJ6v9hjgJLVLLd2hyabIYi
/IO+Syqy221cIW0MUUpzoOJ9CjxdiirdkOfTk4p5NvXD0hVLjTWo5izC8MmrhTohoXTCLeDPBtni
h9yjKz34xbfDJ73edDWDKZuzkcksNcD8JDufI8TXjti6zIBBimw59rFhS2J51ljYPnYfZPiVePJ5
N7uOtLgm5YB9EYVkYBImzlegfvfeWKMlMPTN2Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lJKy9Zjha63A0h02ApuEz30etxi10kyaT0MM37kT8C079RoQxr/jzSdPRVB6DZEoEoxq3B3ZtFpY
YjPONLB3n6tCjDMSDQ3C1I1mBthQK6OvvTRuHUxb1l9/aLvQKKbftHNrYBApn8VpMjP6CLucAxZp
+odccI1IV35j33TcUjek8yCrtxEmdzWv0t5wOEQA4WTFVG1fU6/a+jfGVGHnhJhasL7Jl0YilFPM
HWd3rJlyr2xUSar0v6pd0AVRt6yFuPoCpA/gavX0kZRv+AugezxEfo89yWvJY2XTRZkZi3hMrZuv
vLK4usOzcbsPeMWzlO01N6DMHirnppE7yicsAA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qZguQpkzQaubvif4ozJshLhSpVr4NjQRAvIToSXk4wKAhLoTGGfhff6h7uytylGeHmy/9jn719Sv
HAjAigAvx8FgkAdQ9HshMaw6B/CLhf7qqwtfgiEb8k4WEUmEBTliot58LPV7jCEMD1VBzZWYR4K/
F/3P7X3moGjkrFh9KcmMY5GwF7k9LuqZmEI6DK0O8ZCX0hTQnQ2olSPRWHDbVMSNk21ob6q2E7m5
xpDVITSJEGo0sugVShTUXPzIS2aLKbIkU7M7Hafar7cSxwCvM01LmXbK2kk/TJ1BnxjpTLKgqxru
qHGOZsfM5HZn/M3rQKeaLTsgoxJg0TzUyDcG2Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
hKe8IASictRpxK+UNDyBjdExv+cunUPc6ZpI+7czTzAehV4HfB+YDHOd05j6V2WSrIfjaa5Yc1RS
G3r38XeIaYh1ZL1ZSXdIVLclvWkAD0ZTUVklwYY6ca20tDHHAciXUrro3jg9kGe8H2Gojjw+VQZC
vGGdV4/DF3pjMdpz4nyJJWNfnYLPmx19+G3AsjJsk77LkeQJ3ac7KA942yZdeDmv4Gv409a95Tsb
ybgnN5fxmPfJ1KacG4k/Zu07i7vPA7/85FRrgptHJL0ytlZgmOydqGwz345i+KR6+tR6P3ZfO0s6
zos96acnjsr2RnP6pIJ30EKJj+IMY98YqW+6wBHZ1tOwA0LCIHrVhIyGe0B5IXV4RAxNY/K/8cZ4
j/W2apPE52Pk/hvYFtfyEVf1mS/lGq/t2LznNsZMt82q93Jb8hxwC6Zd8lrmm2hfqYfOAmlZmf6O
EfYHOP1GurKAmfr07eaBzMSZGJa/fC0AncpmpYD7OL9jcP2lP5UBi+qa

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HO+y/HjEaXV9is2kIeddm5ja325WYl9z3UGUIfNECIbhm1CsOvhNxo06AGFh3AtmMj1fkyl7FpO4
5p6qJPGuMnf7KaoL2lbPdT1FmXinUUneD7TyneDl5s/cvecL9iNEtBuembSpR8uFQlqW3j5MnIU0
UISBysTQ8EGO9RDHkRKXJVBUPunFpCoxViEHDwuLeOfZnsSUNCm1TQkVN6lCJVpqMXGrell2v+/D
+BJWT6gUeDiXDTY/zYKkdaf1QckERhcVJjNORVmQDjxTeDa6GJ1AmksSzrK2M3vTp9axAcWS5ak3
FP7Oo1kxa1CXdzBltgltp8wxugADWHbPbfb6Kw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2128)
`pragma protect data_block
7Mw2u66i3aZAlQMSyZTQBK8HLftISLm8MurdIPbZ4SPNWSqf/kAgFB9BTk1+rE0cIt66Nqdjb1T9
taydrRCSma0BHbhkF4KosLW0iHbzyFQ18bjTne7lhTJa6srqDKgv0/d3aC08+3LQxsbXnI5+ER7i
LzKFc2sQyVhJNxvOSMAAk2xdITtZtmLZuUNk8/k9o8reiSPnH0STxzG24TK3JNJUIWGCSBCNR+dK
tJHdFOKCC42HiGTNSkBg10X6vyBcscBThacXC66l49lQfbieq73WDaACnUNa7KRt1gs1BU28SfBb
xzKwAYbdl3uDUuKTiVAklUE5ht0dBJWvjW9mt8MHuSXm4ZvT5OMTbKADNr3PBouttsAVcMmarJwb
K0RWfDZPhSRok6nemAjx5D+AOJrpsqWmphaKOXIPheVF4+IZIdRXROwu2tD70oDtZx4t9YHwig84
N2a1B6uvVmW9YhpPHsHj2eAP1EnaV1FKPrZK2PDR3t3L4zk4cqfEYONtcQMZ9FALNO9N5PoAYNjH
KPQmkCwmeFv57mFx2MWuqj5Vhf9JL1ImALXzFZ2Jv4gLA/MyXcFjWYfz6WYgwISaDxFKz5QOeRMP
urEHYLqUazpANAPpCMPoSUT5isN1QLI8f3+ISxPDiXm5Fd5WBpQuLwJo2ok+Zvfg3BVUZsc9Uoqg
j7D3Ymtt+Mm7nghi1aIepJ8nKEPz0LayUEGxhEklOJiXBh1pRM4isVIvWph77rrrAn2VzdutwZ6c
7LkdqB7ZISdJTmRSe1VIDp8yZbUF7qni0dgB7z4rynTiRLMGYVTUfN+zqVVFGxGaTive3Fc/wfMr
GT/hNv9GFfP52RPQFaolgmZaiJyqSQ4snU4sILlLCGgpW/3N+wL3v9TGT7ArG6emp2vWAbT/9ZS9
fvYZm5AlRKICbJum8EdMGmUibFqHifTy1KLJOfYatvBedKBLXTOHUsiGsp8N64w+/QZqe7tWPM9G
VQ1sFwlKCbr4Az5S8vXA9X9bXliguApzI4qUawje4vO4sBNKpFgAzPRfUBHHP6z6DrYkA6ALEG5P
3vHMgkfHVHK/cARXJ5oonTGbVKU8qtKYhrntvDw7hMYNjhZR+vDtDyKk68DGMWRSuDEmve+6EIYg
62su8mOXqm0025zrOtW8F/2b1nD0UY0/zp/T6mRvBL2lzvKJ8XGXRtdj4OhRu2UfVdL/Es1RaJrX
khWvjBOiNyZnUY5SD2eF13TTfgMrPcyJElthYOAiuvj88Bat1QUOG3/new36/M7+8CxXcuQ/ah65
PKMa2ClFWwJXVBgaxM/MPyc+0B6urpdOTKV6ILkqwmJhn1EVLpDu6YDBbgs5PdItX0oni+J3ZuNo
j9Ld6JoFTEk9QIGJuJdaipcU3YZdtwbsgnJd3ycBNhiuIpBEKy5p14aP0HPWgKzRi7kItVTsgt5x
eH5v6RHpW4tg4kpq6+rT1vl32a4t4Kz04X5ytP5XXBk+cfRVt4PXne7E8g8k90halUd2Z2AgX7AK
uQQbhLsz3ue/ruFBm2U3rER3Jxaj6aK++IJWXSbSgCknbdILati442r6e2Q8KtwQZJ8K+kGcdawY
X86GhdhfZ1A7gSOGkaIede5E8YSrNvJG/K5DGVDe0T93BOo1c563wLoagjL3qycoJllQ0Fi5ix2K
90j2UxEN9SbSqfFZs7JDHrxR0qtsNLxJO6Dpy6K9l7KNwud9hhxOLcNcDk4/zK5iNDqhVLYcwhtD
3GNjj8KZ1H9tz0Sxp75ks7/TpLiBayOFfWiELT7UcxpBQO4g4ouGufunSGeebVJsWGy5N2Lq6isN
/PUlvcXkJCi0TcQ3R9/2r4AnLe2gL88G2Su+PiVKlQAZLVeiD7nM5Gpn+4O1apPNXTQQXRvbV9AP
/FGyeDFKIJAl8YOD8R/jLI4qarZ99ZdUaMBQ6zrUYYg/7q0+65Sk2YWUp96L4lLyUADurboYNkcW
1R8nQD/DNM5K37ZmFLUvdV9igoqGfEnmD8NCz2VgEREwQ0uKdDBgueLzF0aAoY/SDg8sFJ7BNoVT
mMJfDWd/fZxe9Vy6mHD1knxa+on9S7pJYRqWF/DGGK9/SBtdzlsMhaAPUGkKE1XrLOHANMPK+mlF
TfHpUVizts4oOPpDQhIgy8ipoOTkM1sSQQGd9ouAUWEG6clnIAj8HHmlLqydK28ROd4XG0Yagavb
JjDzcD1jH0B6lSHPttuUpasMSNROrK7BrPh8ulu34lKdoxh7xX/Uqyxl2ljn3maWFzO0VtL2saO4
INP5Q6jp8vp+Lh8FX8D/FSdSK3As7TEcngK/J0LtqqfQtP/q/SLWqdYZ0udYCPeCi4d8xS744WxM
XdgqFYwSUGgPxATQOXpv65icHsdYajQDtvjsngAhHXaJRBbqwlEDq4vZhT+gBTrZ4Ny5ZQXD3HAn
bqeSrIvi0Z6yuRXFiXGSnI7hKCwnR/cbi4LoYzOCVS7ia0H8WPX3BYmmXS4VVny/38ULghepEJbA
uUx2eaMEdXuIVR07UhH390URZsbVH2i9Gre9gHiC8QvXe2TjctOtJAzrjyhCek1fQKMd+tw7TLxc
9KCTf8uAE0qIzjFAjh/ddGcGvLQ6yVsx7pindiJOIq4C50HzhHDie69xmXjB/MjaTeqd2z6IWWDu
/oYVWkXURpNQuMmXzsvswRtvSf3z9jbVp3yPIbeCTdt2RWjooRbu9BYgEJ28ofv00jZtewzeIHyS
q9A5U4jzSlQHgsmA6koVBplM2A+EKHEQjaU3QCA9+w7+IKoC5AHHlNYO65FZOPo/MOIWCpTHC3lW
gjxvLL/u6ODMY3qsdKk0Rev1Ow==
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CLe4hIBuPoGhpVl7WcpdPrkOqRB4Jx17xO25OhKMzcudPtO7fyzQcLT1Hwfd0j30ICv/93MrjmYk
VkhpZR9EpEAjIIkPAj6Uz1DaF5W+ZmnNsekRAyk+3Lm7DCkEdldRunmAMklLXDYSE0BHPyNZb6/O
1fVccxPwFw6jSpxzyJ8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ACw/whBd4sJPjEXsPWy+A9hsrulOjhl03yGnO0wIJb/8lOFB6tmCM94OcdNwiMaV6kg8YzX1Zq7/
NE2RxoRW0a7WAr7xvZPy265UGSafgRDCpO1KBNNkYutsmHT7D2OLTvT4FaHp5hZFRk+z43Ve8ygQ
YJTKyx5ivjb/80JLBvE8hnVCpYkZN6VnhMHuf1XLNa0oxWLQ2z+ODAbTE0KVd6D6DWycqrbcGtw9
RfO96KL4+hS2NraPUOWRVGCJvHh+C9oFURQ8sSL1vIHuy9U+A+C/triRYJ4Yl8X5mPDgDSLb9GaP
flIuoeMAprVt1E/Bi7vgnF6kuuRtRrRwCbGG1A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
WhGTCsy16/t+nTOk+CGv7tpQem4v8f0JcfhtmHJKBQmUKRgMWECn1vAxv7cTlF5fBXBuNPE5ekvE
eE5xvFBz6Hn8xUu09f8xFM1K5WhbovRkMP3+0G0ookHnjX6DsYKCCqav35emaqOkBS5JhVj2EBPk
XLtGUbRCypldy9j1hdo=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HTqbg+eKkopQi5dj/L+szqmPwRpBkCcaMjACO+UpXthtee/no4xSMcGn8abIY3SPv4TzrnuqqXPm
0AF2N3wLbDTLOGfRyerYPQtOSICnY0YK1FpPbRpt8J37qRX06v29OCgAKQCRzqcyktN979XHA61i
y9kXKs0ecYFb/aEJn+r/Ms4/zkik5QDSibn9rXgrCIaAq3oV/qy4/eOC1I7HxFJ7pQLvD6TaOwrX
4JOp3lWwPc+YVayAWfwfSM8th7MZKBhpSD1StLeBRJc4CJ5oDLwaMgHEFCXxx3pyxq8QdKSuHOu3
Wi8mjTwcR+O/8mCaI/EQL04GZntygGZa6NRnQQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
o91QaUL83RhelLkEm4+751/SyYIekusmli7rQ/VnKAUITjkJaEGeiMiekUqrom206GlehlLCRUuJ
Qk6ai4cQrpKj2AErAd0Y5kUpeM5RS+aWpFjtOYrSHMdr4rMfgbsw35qJ6v9hjgJLVLLd2hyabIYi
/IO+Syqy221cIW0MUUpzoOJ9CjxdiirdkOfTk4p5NvXD0hVLjTWo5izC8MmrhTohoXTCLeDPBtni
h9yjKz34xbfDJ73edDWDKZuzkcksNcD8JDufI8TXjti6zIBBimw59rFhS2J51ljYPnYfZPiVePJ5
N7uOtLgm5YB9EYVkYBImzlegfvfeWKMlMPTN2Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lJKy9Zjha63A0h02ApuEz30etxi10kyaT0MM37kT8C079RoQxr/jzSdPRVB6DZEoEoxq3B3ZtFpY
YjPONLB3n6tCjDMSDQ3C1I1mBthQK6OvvTRuHUxb1l9/aLvQKKbftHNrYBApn8VpMjP6CLucAxZp
+odccI1IV35j33TcUjek8yCrtxEmdzWv0t5wOEQA4WTFVG1fU6/a+jfGVGHnhJhasL7Jl0YilFPM
HWd3rJlyr2xUSar0v6pd0AVRt6yFuPoCpA/gavX0kZRv+AugezxEfo89yWvJY2XTRZkZi3hMrZuv
vLK4usOzcbsPeMWzlO01N6DMHirnppE7yicsAA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qZguQpkzQaubvif4ozJshLhSpVr4NjQRAvIToSXk4wKAhLoTGGfhff6h7uytylGeHmy/9jn719Sv
HAjAigAvx8FgkAdQ9HshMaw6B/CLhf7qqwtfgiEb8k4WEUmEBTliot58LPV7jCEMD1VBzZWYR4K/
F/3P7X3moGjkrFh9KcmMY5GwF7k9LuqZmEI6DK0O8ZCX0hTQnQ2olSPRWHDbVMSNk21ob6q2E7m5
xpDVITSJEGo0sugVShTUXPzIS2aLKbIkU7M7Hafar7cSxwCvM01LmXbK2kk/TJ1BnxjpTLKgqxru
qHGOZsfM5HZn/M3rQKeaLTsgoxJg0TzUyDcG2Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
hKe8IASictRpxK+UNDyBjdExv+cunUPc6ZpI+7czTzAehV4HfB+YDHOd05j6V2WSrIfjaa5Yc1RS
G3r38XeIaYh1ZL1ZSXdIVLclvWkAD0ZTUVklwYY6ca20tDHHAciXUrro3jg9kGe8H2Gojjw+VQZC
vGGdV4/DF3pjMdpz4nyJJWNfnYLPmx19+G3AsjJsk77LkeQJ3ac7KA942yZdeDmv4Gv409a95Tsb
ybgnN5fxmPfJ1KacG4k/Zu07i7vPA7/85FRrgptHJL0ytlZgmOydqGwz345i+KR6+tR6P3ZfO0s6
zos96acnjsr2RnP6pIJ30EKJj+IMY98YqW+6wBHZ1tOwA0LCIHrVhIyGe0B5IXV4RAxNY/K/8cZ4
j/W2apPE52Pk/hvYFtfyEVf1mS/lGq/t2LznNsZMt82q93Jb8hxwC6Zd8lrmm2hfqYfOAmlZmf6O
EfYHOP1GurKAmfr07eaBzMSZGJa/fC0AncpmpYD7OL9jcP2lP5UBi+qa

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HO+y/HjEaXV9is2kIeddm5ja325WYl9z3UGUIfNECIbhm1CsOvhNxo06AGFh3AtmMj1fkyl7FpO4
5p6qJPGuMnf7KaoL2lbPdT1FmXinUUneD7TyneDl5s/cvecL9iNEtBuembSpR8uFQlqW3j5MnIU0
UISBysTQ8EGO9RDHkRKXJVBUPunFpCoxViEHDwuLeOfZnsSUNCm1TQkVN6lCJVpqMXGrell2v+/D
+BJWT6gUeDiXDTY/zYKkdaf1QckERhcVJjNORVmQDjxTeDa6GJ1AmksSzrK2M3vTp9axAcWS5ak3
FP7Oo1kxa1CXdzBltgltp8wxugADWHbPbfb6Kw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XrzJX80+9riJ7f/ZyYBm0sCKQy/MHUVNwcmODm/cm7gyS0Q7bCDmHgkVOf5iFWQO6c40TPkeZmTh
Fkw1Z5jYrbxCnhJ+/QOtTjDMFz/vVMoZtWA6Q8MzyhSQbrZg6f+L4EDBuDPx3BhoHmWyXQWLDnoe
rSbUXcN+4AjS5U2kfz3X41DMC7kb7fmgayN1Kpmoc6QSmgAlGb6aVVqPjpWQKyqEmKDs4zR2O2/8
aRWb20BqHNshWrCObwjXR8QYWOzjsGZNGIrRjDRkYe3F+aEpoMA56COXWy1FhpaPNm9WZD4MycgA
YxN2cJUeuolISTvloQLYSLnvqmmfQmMmWf4oqQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zf64hLhavI1zbBGEOvdLWX6f9b+ru/FlLOSJTVwsVBqQYuur983wD0DUgZ0axxB4UNEzCeDh0idi
ALEgKMpJUVCfdLNgZZhVGQgKSXliXZ8mu1+zdGaYAdJ+hAvlrURdMUORPgqQoaIcm/is9egdgK21
bdIkbHJxB0jtoI+fmDfYEYnpR6DKfLFzG6WsiEmQ91vsKTR2E/LQNjDX3e0FDCDQRXziWwle1h7J
vl2h4287dvS9KZtICDCHLM3zf6x8X+VgJp6cQYnB+QBc+hQlwBJaB73K855nSP+LjJ5EObO1mM8l
EdKM/eHwX8pQ4yslosvynru8dWYpQgumoEpbUg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9776)
`pragma protect data_block
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
7UWvgIsIuiMqw5wOZtp3v4a+Q6wrqgjoXh9+nsQ=
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
