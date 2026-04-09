// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Apr  9 09:50:48 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/lincoln/Documents/ECE/470/Kyber/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.gen/sources_1/ip/c_shift_ram_8/c_shift_ram_8_sim_netlist.v
// Design      : c_shift_ram_8
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_shift_ram_8,c_shift_ram_v12_0_20,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_20,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module c_shift_ram_8
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_mode = "slave d_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_mode = "master q_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "0" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "9" *) 
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
  (* c_sinit_val = "0" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "1" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  c_shift_ram_8_c_shift_ram_v12_0_20 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2064)
`pragma protect data_block
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
rzM6p5MRb2UDjJno
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
dHTqus27FTSfsG5xuFqvPFab3JoTk4B0fZJGiw9+y6OoB5NYPn8xLZ6h2ttR7NMYUKwcatFijKyT
5EUif8XKwmnJ2OLnm8wEDXpQ/TTxCk6KQ+Xt4mMJS5z5VwTE81jlATPx6SBK7k29T5xpSDZGDP1U
MTl79ieTkWiHokoiS8lVoQbwd9fFolJvVfXiT0b1bT0nZ3bKngx61CywP8RbFpgB+YP1gQhIxdkC
65zordMxKNgk1tPBkgtKweIHhZdoJgLJB4pTVR4QzgUlkOztHgtQtYNL2bfrv3O0TYg7nqO++au8
uFvlMicPDQiSIJrixUEjm+oZ1IOm5cuFqECj4A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nYmC8xvP5p+9VGK6YG8bHXrPpJ8zk2YSZC0L7X21VQBZeAyokoaMbywt9cBF6ssqVCJnsvW1eIXy
AiYY5ApLXTvoxjRkCmkX82iykpo615jhtQyISAky9mxiB0dQzfzQCvmPouVssnQy0FAUSn3ow8FB
UGpS2ZD6bPU0/FaNtlPaKXT5kx5G8q/IPwdDIdAB9+7N7CV0+GqrvJEftukOm/kbsYO018F0tx6p
lj/mfyZIIXIplhhPRLcgM+QuZcheDPoQu3zZ+A8NoLXR72+DG00JMmrlFn4S3/NDndfLfS4VJVqv
KC31/TxzSPCt034xG2Ms5EzU2o9zUJVch60a1A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4704)
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
