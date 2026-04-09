// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Apr  9 09:50:07 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim -rename_top c_shift_ram_9 -prefix
//               c_shift_ram_9_ c_shift_ram_0_sim_netlist.v
// Design      : c_shift_ram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_shift_ram_0,c_shift_ram_v12_0_20,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_20,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module c_shift_ram_9
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_mode = "slave d_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [11:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_mode = "master q_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [11:0]Q;

  wire CLK;
  wire [11:0]D;
  wire [11:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "000000000000" *) 
  (* c_default_data = "000000000000" *) 
  (* c_depth = "5" *) 
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
  (* c_sinit_val = "000000000000" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "12" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  c_shift_ram_9_c_shift_ram_v12_0_20 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2096)
`pragma protect data_block
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
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
hgbimxtmhjiJa+VRvn/t0+ZFmLwiEw5X8Cub8DOwhdvVXmxEO+6ioBDA07MnEriEhpjIvr8RUaqv
WLVvu5OTsvj1bwAay1i/MH8JPxOnzEdyOQLUFo6G1H5Oh9A2EuuUNzEQTEOUN4BctEHAnliJwteX
9pVTFw2laUDLBKmhdAeGO/++qlKQektARSG/Kneu8QZvz9XSRRKPcfi8RAJbrRGBpV2TKBUTw5bo
r+j0wtWg0jkKYQyczXckAVpjQBSYrL3YoREN2zFE9WN8EsxlhkqKeuZ1hc5hKyzUKMGjwdbcunar
fyACuy82cFkLM9Dt2NmEhJCAfefFpCZQ+G23+Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ba3dTvj37P3ABGo1poLIpjql7Di/RmaprH3cDBsUZiOAhuIiWfRtVCd4vNl1aOGz0x22M1MbEyAF
bxt1EcRiT9sqC8kEIv5GnCbtm7Uq4yH7zm0NPVIg3JgnV0H6xkx1qdHpobATSkC9Q8NaTY0e7Euc
mVqLqcNbl8ZqrZRLnelLmlkdC+58Os/DBlYBn9LOPnpAUmBERrwHvZX4TaW2wznMZjQseyrGw9fu
Wtwbhld9OOCl+4AWMCR/CUqSiwPAqL8XauYUZHBwPRHNgrcG4szuAtMw7Kx1OUABXudmMcPrV67H
sfxersRoYD3KNNaHWBtehiZ0IdFbo2SXen4Feg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13808)
`pragma protect data_block
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
DRwuCLSedtnP/acVEuc=
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
