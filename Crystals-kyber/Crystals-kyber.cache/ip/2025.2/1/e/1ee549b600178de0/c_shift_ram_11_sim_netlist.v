// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Apr  9 09:50:09 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_shift_ram_11_sim_netlist.v
// Design      : c_shift_ram_11
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_shift_ram_11,c_shift_ram_v12_0_20,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_20,Vivado 2025.2" *) 
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
GtAo/Zswy5RtL3AuHdKeLxxwJn06Lf/gx5I0zQ==
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
DU22J9WUOvTzCyyHbv/FAAwol4wddUrJk3u4OlRqOgHE4xhBAUJoTC1gHHG2t1I0nl+y26/TBA6p
qWtN7yyrL+eX6InVF9dmEDGKI7o9LhCRlZ+KDj2hMfL3AdF7r634wu7WSBrbLGQMkBHCamjzO0OT
G+9q5+Lk5M6K9F+q09XwGY6my76O1qq4MznAOL3GuQ/jfDH/gmuXwrU/kek+FL5B280ASj+A6kSu
fCs6/37RBzDGZ9uKAydASL2Rfg/y8AY4lHLeXUgXFc4+rT/uGd6vNVb2t4BS8qv2Jl/i0Q5cSIiS
vj67G106WaG5bB/wz1Lc4cNvTNLxJD7PY9B9xw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
5N4rgvTHy/JtnJw8IIQxDnA0FCOMUuysOigNyEiQ4gHDzXzzh+xyxscZdVEzjL8N3jmK/ePUAgUL
XZHOLNbFLM92/G813nK0JNGOyFWX7wOLbfN/dKp483xtx8A2nVU8nztracS8OYPBKw32/NZ95ZHr
WHcILTCy0msu68NnOhq2+zrmTYjc85N8xJLqBCswEHm0gy5qvi7Dcc/0rVYDHyHtcT5tUgdzmduk
a1JT3qWilyWTlP1QXuB6beCxAsLfRZGUMG/sKA/5rBLJhjMytgxMRiZyL4VEjbckd3pmBJvlekva
6Dp2YHEFuWUHmJehIX4UZIA3CILSyi+ud5NrPg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4688)
`pragma protect data_block
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
Fp3ji53G8wStuHLkh7c=
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
