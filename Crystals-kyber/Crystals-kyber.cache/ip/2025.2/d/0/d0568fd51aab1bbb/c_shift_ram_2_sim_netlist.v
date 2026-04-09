// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Apr  9 09:50:09 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_shift_ram_2_sim_netlist.v
// Design      : c_shift_ram_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_shift_ram_2,c_shift_ram_v12_0_20,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_20,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_mode = "slave d_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [1:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_mode = "master q_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [1:0]Q;

  wire CLK;
  wire [1:0]D;
  wire [1:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "00" *) 
  (* c_default_data = "00" *) 
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
  (* c_sinit_val = "00" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "2" *) 
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
mAgQCoPFV/s/5EOQfI6XjhJjzRtqorn9Y2RcBDvnZKwbG+EVcJJwYbEwMyeCAM81hR743YV29f/R
RHwSQ0nUqBbc79gk1iWPj4GKednWYyx3Zb6mx/Z8Qf2/l+UtvR1vGtzPnfA0p29l00chB+netrvj
/jUB8UpuEVyvpZBInspNVZ+gt8pTaAKShLaQkEON6zKAmpx8vXk0oL+pXmcxVGvPZwvCAqHZQY5n
5G33zLWm4MSiSyhAilQ5PhnDtT3lMaXbUmrgWiqKf9QXfqOCLJPwtjwMMhAZEqwtxKRr5xJpQuTl
9LTGEuGwsh4jHN+k+8Zjg8r1GQFOUXl/y4FGxA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cM+B1WBSZM/aQCnG/0uYIDWtklxwtksa2Eu6TPz2PRwA0tj8TPJe/95x8KsBaCHcpxnph+X/6xrr
ohqLuPNhFUDoyDtllRg7tdZU+M4pl/1fHndRhKPRlNE9JUAfofr8hS8Qb3YT0Y1E+b7a4BZrAinO
LbZJzGZIKAF4G4oOfCV/I0LdIKojDZL1pqdL4DmyLc4cpAADySROy2AZjXMfAa8y14A/K+F65LqB
TF8IVsvLB3hOxS2dTxXsf5oPjTJb5YmiTP1V5L58jKUNTfo+hpz26sDeBkzIqvVV2nLBNNapyd5y
Ytsf/2F9mENLgAt/2JUQFpTvB8sCz07CVon+2g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5552)
`pragma protect data_block
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
hvAzIRQqpiaAUd6FjvBdb7FLRupqSTw=
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
