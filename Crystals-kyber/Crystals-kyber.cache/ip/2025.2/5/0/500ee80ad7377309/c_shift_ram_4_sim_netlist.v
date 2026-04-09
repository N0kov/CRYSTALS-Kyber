// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Apr  9 09:50:48 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_shift_ram_4_sim_netlist.v
// Design      : c_shift_ram_4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_shift_ram_4,c_shift_ram_v12_0_20,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_20,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_mode = "slave d_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [7:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_mode = "master q_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [7:0]Q;

  wire CLK;
  wire [7:0]D;
  wire [7:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "00000000" *) 
  (* c_default_data = "00000000" *) 
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
  (* c_sinit_val = "00000000" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "8" *) 
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
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
oZ7evkVhNBfRAEQalVZlqmeOrg==
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
bJ/dEC9vvpoNqUP3DOtO+6DrLSbAG4HHhxnAYBWuWj85KfcO7GbeJ8iLZclIDtuIRGQuwZEF51wi
3w3VI+omnqtb6OhNHlC2jwfm+cEqmml3ZnBHHcR6DUFDHSal7YgojAx5bU7iLI3kWWURwqP2GOeG
/ar8rGAFioF6DHsyiCAZUzIek3eiW4tQo9fq7zfQHA5tzwSNPE3UKfWBVGinZU8g7+srMdrbUPbV
0nC7zE9W8w0RSa3TOofs7DPI+0JNND2iBfTsL5y1x2G2ZG2KJnYImFDoyIzFOZTYxQthq7pyLPlZ
QzTOjTIB7NHmKK+MNnlrieTv5wm3uAGhTE+g6Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
yeLmzDdQglVtPzXHpXRZ5eQg8uVjGJxT5GASRAitKyjj6qgr6gUWeiWyp1N8cUWDxzqKoIETmKz5
SaSsyrj3t9JFPetHpnxxBudwkejv8EEYXCKnmj9AsFOZL9XZYTugXMV2vHD4Q+8C3eEWj/siGcuI
Jo0JpJoZQH1qis9CmlqPfKkf/9fnQEhj1Ro1SDNjslQdmsmvhVU5XsUs+x8BIIwu8J6Xh3ECEJL3
zdr/KMSev6/A0udavOht/7Pg8ZJyLm7zq7+BoeqDM26yOd14WQLn6ivMHKjoCWjn10egmfKK9jRn
20sigUlllUy2kbFSbGI2qG22FsjzbOu5qwYpjQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10624)
`pragma protect data_block
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
wEX29LrQ7HkdOYYc7Qz7rS4EqdVNuQ==
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
