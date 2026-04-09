// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Apr  9 09:50:08 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_shift_ram_3_sim_netlist.v
// Design      : c_shift_ram_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_shift_ram_3,c_shift_ram_v12_0_20,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_20,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_mode = "slave d_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [5:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_mode = "master q_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [5:0]Q;

  wire CLK;
  wire [5:0]D;
  wire [5:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "000000" *) 
  (* c_default_data = "000000" *) 
  (* c_depth = "10" *) 
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
  (* c_sinit_val = "000000" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "6" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2112)
`pragma protect data_block
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
eyWI
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
LRziHo2rexYzqlgcxZ1ZkvAUolmmgYn1KsWRfqAdrWCL6bPXyTQwLxOM5l04t9vHPJceoKmbmmT+
R2Zo6/yQSCYq4WiYmYx1HY+k67YxG+L0pIB+CDuS2fVGLrw8aiNIAXUdSUwNpTWtaFem54Eyw8ob
O+6lXadDRzIa3kJzO3jkjYWI7KGpHnLo/tWehACoat3RFgc81hxcYSU1nxTlph+LfHkthxbFNImr
x+/hpw+26USYQnIbwSHtd1qeAD3UsRbYjmlZKpEAah2RMW4jaJy8gfHycukoPcfRsc80ylgDlyUG
XBEf9A5Y7w6wPMBnJtkQRHdA6KgIVhR6Y+FO3A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
62Tay3Wn4mJ02nGHQR0m9Z2PENn4+bPJPKB5ZRYx4WnPsrqChAsui1U5CXqqfHNxbkmRVKhB2bT8
CVmf626YHZFU4cgoi/qOUzAsZr3JtXSgHG3MwezzTVJHJ0T2wOrTj2RHnSlg4FBMLj7BOe9RKG2d
nIqUEm/MmwjihUS/YDpGGDUoXJLa9Aiz44CKaYJ56bptnH/XHiH2exkTargoySea7zCSrDLleF9c
oMke5LsD8HrUh5utf9eyxkGQ7T57erUlGuTNDfY31CWW/3yTGsdnxdPp9vMbMsvvcslZRZYy5PMf
5acZrHB32hhsJKswpoyVUo8GFQF6kwvqkCEnWA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8864)
`pragma protect data_block
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
ItZp1oyj/8KXIt3kO4TGADeHlmGG0cBcd2YGt68=
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
