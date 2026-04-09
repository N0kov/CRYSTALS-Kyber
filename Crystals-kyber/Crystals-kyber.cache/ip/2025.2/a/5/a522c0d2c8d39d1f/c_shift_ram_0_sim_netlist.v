// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Apr  9 09:50:07 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_shift_ram_0_sim_netlist.v
// Design      : c_shift_ram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_shift_ram_0,c_shift_ram_v12_0_20,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_20,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2160)
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13904)
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
