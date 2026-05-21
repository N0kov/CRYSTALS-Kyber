// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon May  4 17:47:36 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /data/claude_sandbox/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.gen/sources_1/ip/c_shift_ram_8/c_shift_ram_8_sim_netlist.v
// Design      : c_shift_ram_8
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
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
+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
GuZA/6VhSw2ZAcMu
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
cNrkF/7keJQC0KUFKiiKD1AssVfQPvSFLv3IYalGYST4edCk/38Z/Q0rlqBj4NFc3JJVzfEkzVxl
kkTC8riGU2FlKrA6Ip7UVR0o+N65z41h6nOdTm09BURLqYv6PEMcEJhr9984Y0F5J9oaqwFc/TUM
JXn2WrZKlhyPHZA0tiYkknGrNDxZ8yF5gzZWeQdoyigmPAsq9pmVp+teLvnmH4EBiwqRyHQz6L9U
PnmSDbPjDyRa6IaacDLDLNIFaFw8SBmRSOtcQgNUO/+Z4eDawZrrwpuLGHVZj2AW1XYPMSZQV+bX
cMbPgIolpWYngGhisWs1NWqXEBHdIwF5MX6OrQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E2vS0f4T0M9WUEGECvyYoZ66TI5UExkOR7c3D41qXiR3tTa/DhTXa9r/LTaNby2N/wiYDiDV7WLh
PWUYVObxyXWWE/rREzG+Ajqp61+qNb9JxnQr/bKZ0XmH5FWliu0FcENN9P6mvUcjQ4ZriWq7XCaI
2OBMBqgyBwTGg/TG9mE3WOXqZyc1bwtKUFpt73rNwPH5SyZXX/geFT/2RNSXIMlVd+VUnyDldE3w
G455K8OV2FRLuN5H1GbwFCjOhwMAb99U3hVTTJ6fLPfjfe1DvE+y5xzjNftb4stenT85UhmsJtgA
yLrCAKxzalsF+WNco/0O7yWQPeOAgWQWz10l/g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4704)
`pragma protect data_block
+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
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
