// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Apr  9 09:50:47 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_shift_ram_8_sim_netlist.v
// Design      : c_shift_ram_8
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_shift_ram_8,c_shift_ram_v12_0_20,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_20,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2080)
`pragma protect data_block
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
/rknW8Ar4ycHblmiehH9rl+8ybrrkmqlfQcb5A==
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
jcUCdHW6A3G1BPlWsxlEkdKZbzBPPg/i0YIM0lAWAnNNRDq+WRRDjsSgJ+5xRNj/6+1Im2CLNcdp
GyX8v9I+hpeMGXf+5Tiemey/Zfj4WiEb0CYKv5NAwol0D1jfOarAPV2BNOzrFjzpkWHdxLlu8EEd
+xjkUrObVCJo77Y7cm6lxvlnnQ3/wV1sQML6fMvhmKTrpi/7xlQNPo9HJJ/Sn8JzE3C8SGNP+VRq
LEdsZc2gUDP46U4tn9irWq/91U4dSJ9A0wx7fBPaBf0S9wtuKc7oWVNax/2jSPbC+hetP5QzyPsJ
/AY3mQARbCiqbwuBUnlpC70a6yVjQ0BmXAiVCg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PEapw2SF1W3Ola4iFOHFndb7eeDzJyt13/48xST7o6xP4ciLetNhd56e/rfd9DkEmxPZNdP8OkfY
MLY9wFnl/IMoedSPFsR9gCmKSv96P8f7hv3Ib9tl1ob87uoIBvqLib1IPAC77O+eC601l7ENJnxm
Q3mRNFJd23Cd2q2Flb/GztTBxkPThydJOB3fO5xbIrZuOYucvmDs2GRPeosVdgHsjYkNtnvhO/xC
5sL8UmLgRlMgo+mHnsTD0HA5zvTv4j7UKb4WxuKqLqqfT/qj2mSyMvigiTWIYI8hjj32WSrZy4C1
gZx12dJsUZzuw83RW9ze9c/4yG7i1VrGXCnEJw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4688)
`pragma protect data_block
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
Ia/zfo4dX+NFJ81HZus=
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
