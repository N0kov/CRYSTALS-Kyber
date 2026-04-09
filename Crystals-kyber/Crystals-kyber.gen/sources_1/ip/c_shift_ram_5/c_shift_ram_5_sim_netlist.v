// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Apr  9 09:50:50 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/lincoln/Documents/ECE/470/Kyber/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.gen/sources_1/ip/c_shift_ram_5/c_shift_ram_5_sim_netlist.v
// Design      : c_shift_ram_5
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_shift_ram_5,c_shift_ram_v12_0_20,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_20,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module c_shift_ram_5
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
  c_shift_ram_5_c_shift_ram_v12_0_20 U0
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
fJ4M
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
ErKrKBAgbbEYtUOkqm3bY/dGEcf5J6LOE7dZzG3GSmz3HC+2aVCPP5rT5C9haQJVB4h2orlUv/2h
9z2hxde5wDpvfsuL1iuacGNmv3jASv7Y84aUd858h9mtvZfv4cTIYBNtU5sMhXBVaTAIMjBUCxiX
inSYPGskXFkENBIdHB6yD0mmZ0OpnmBYWTb++Mr7T3y0HeScPJJnoZXiYdqiEN36hxgGOpB7rxAu
y4foInSJdSw5KvvPHx54q9nFI2gxrq5qnKGzENwZVlLUP36yGtV+XfCIGEv7FD88c8pufL7PDeF3
XHUAl0bfvO7p/iG7rnurkgonTxx2dlWJ/gH4yA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
xGtKcgPq3UZPCWBKj+t1ctDFLYqZeQ1AjbpFg4yruGKeuDJNewcXTwGpfdLyHZSJlonrY09mN1oH
GYyHRbETtKGP0U/7y07rKityWqAiQxY39dMoNhaxUJPfXdnudhSS30tQfSj9o8NB36wODu/ukbuW
5I9KZ83a+W/jywJ7N9UvnMfSgcIzrs5L8KUAsEnA8FIZ5yBP6u3v9FHn6Kq4vnVxLoGbgRMS7T2L
t4eJZwkUZ1PO2RKLdyHTD92pSiswBBotAEMnoLIudbhJKS/G21XqYyBxs/PxNyefkwsnd9zZavL1
XQor4xTpKwUTSeXOSOp2twkp3bt4wA/RRMZiRQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9792)
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
