// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Apr  9 09:50:11 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/lincoln/Documents/ECE/470/Kyber/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.gen/sources_1/ip/c_shift_ram_1/c_shift_ram_1_sim_netlist.v
// Design      : c_shift_ram_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_shift_ram_1,c_shift_ram_v12_0_20,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_20,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module c_shift_ram_1
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_mode = "slave d_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [3:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_mode = "master q_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [3:0]Q;

  wire CLK;
  wire [3:0]D;
  wire [3:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "0000" *) 
  (* c_default_data = "0000" *) 
  (* c_depth = "6" *) 
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
  (* c_sinit_val = "0000" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "4" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  c_shift_ram_1_c_shift_ram_v12_0_20 U0
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
T2Uncdnesz+V9glXaHQ0ucixyB/A/OHXt/IRyADQqSGE6muPhvR+lV3MxEzjj7dov5xTTYYgBk0q
y2PQ87tHq5QVdEJcFbaHhcgeLPsI8mjUFrL9zWPGHL6TE525ClajzNBJtnQgdinfCjq5areA3/ai
o7bcf5sDs9TolbS7XAyiPsVaAqObkLRJ1FnhHT9CsbkHQKSPn2nzLN8a1gm1vp58FsByYtiPeV9O
XQ8QyadC5GhfqG0lWEtjeTwOzfZmbbQRYX8x47FxCqKqoFgmRs03GdM5kuLYaeHyV6TUrbuOnJtv
xJRCMjMicIoo+MrKbZStzUxhX1lFH1Ff7otYYExV8DJ16X60IaIr67V1EewRoGLrmezS70ZND0yV
VFWRyMHkDyiq/NiKHWDczK9kIEG3J0itv10cMD9+Y/Zzn59VhaKpGpVofdnVdKS8h3Ko3BJb7KX9
r3CqB5Rc06D24S4zCGq5oLr+OmLC7wghs+anhY6QmsCXYrz4uwwdMZCSetm1t14gQUWzs8XKGN5w
VTIetJq08AT4oJY9oTpQ5Vc+ZGBNMMYwb9VWhDCG4wgPSNKadjivLIAKhdPFLofGQiRPqIAoyIpq
hLWooMuQ1Alt24uAnpA96WAiI75jr9t06GzIQ9mT9FGszmxnJVni9sMJk8LIql6nwkvMeqGcrps5
ZEFXSl1IrTHQ3Lx7JK5y5tCvrPWDx5kHMau5RZ2Lv++EJ8nwiCrFcpDgdrmio23Da8crKuVpBOOK
vROkautRxB47eEgD0/RWlKWMtKWPT/FHR8uF49JwPGymDIGiNalEmVzgpOhfdYOJnchSYYGSX/35
/5ra+uW3DqPPYcV0KQmGJglMLudfYFsTIQ5qd7qrv4YR1DlMkcamdtzfyqkJLzjppwK5C9E47/SR
YcC9UBseY+rPmLWKP+Ccg55zMNwo1TjJbjUvl0MLgc4eD1+JkLrHcQ2RXA/+svYD8flwsu7d7mj9
ZE8p3QmOsNw+ieNKbaNC6IgzKgCj0IucMFd/yVwIo1tbWqtIBjJhguu+Kz4w5ypGfu4cqXHHUg+9
uwP4uwirkJJttvtyIb3eab+mXO9qbp9YZl16gnVfLCMMYWCvMpVB42HYpoRqz2eBGZxntobYnKhR
/pa2WMkwEAwIvZxEo1Wfpvg9ETKj8vWCSOLJoZ7NLc66kVXmr5YtZeRF536jyVL5Is8e4/cJx1pq
sFNQCljvmn/EErLT2+VTOI8EgT+F8uxY/S0rxpdNxu8M4aOdxufKyNn7zF/8F93cUkxwsM/PUcvP
4r76BxiBSN7C1u4NJqnUEmlzekt1QyVoFaivcuZiow9lCq+lPjfXVogy0pctyyp0A1LDQJPIX85H
6knoIgd0XaSKgMIdtXDH0Sww1zYWTI2OIp+beqRZM0XZsudaEHTaYLp5foi7a1/Zk2vqewdCHo5B
uKVTDtIxHyz8/3UvwCo0//C8wHwAOgkOYlItg+nZS23ZYBgSc7BGb4sz38FthOdnYtq/pbgoE2XO
yQMBAVNlh/iJODwghOWEtOwis58SotYj3PmB6Nx+NytK4rCq0h//bsbX/CnSTznlaCJwXzG0DcIQ
lZ4AnEUysOpJtzWf3cQdzkauh5w8V0DslbHACnb8gNXlEgxRdFFF7XnmRsu9ZYrIrBA5kYbCBm8H
AxzdbFGwy0EtaIH/ET+owSG/39MTbG/yn8bi+uUNf1OJgwk/hqIDjRr5bUaLKdIt8iP4kOnUoVOU
vUJmOb4cO4U8Fujn2gD3YB/1vexYN4wjcNuLMWPvxOZfouuWpcx6h9axMrD2tGYuTtFYPWhfqg5J
VNYUi6i5AROylrqHhI32u1jozH3Y1J6sDRCE0nwo+IYuQKEibNNfMfZD4TXJWjCGzDquOkA8A8Na
zXUl8IcF8ZpvSpVbs4QWrkZoGKA3rB+Xz2n7+zwcLdpqD7xK5kkusdUmueQprA+UejtSpD43EYQ5
hJD4HxcHkKzghyd9UmtQBP7GgAMeoUIXQOFV4Iee4MzFHRgZZOOVIiQX++4tMAN/Oyi4rjVtygYH
iIc99lhDlHs2iItfGriXN11BxH+vY4UvNOa/NL65CATeW/mOhS1Xa3t25zIo4QogS6vMVMPGuC3T
NQACH4WH6fyBB47vt8HoF56uX7p610ByhSgU46eRHDNajW5OQkZDGe5InKbAHA11I8SLIFWe3Y+x
++GXatCoanR1vMyZUR0pHvwytxdueO7z8vUj16X1ARzkyYl4YaFar5xrgDu83dfD1J6J/BElmku8
tIxOjNsEGsXVGFsJwFJSvsLdvUKbU4VV+zeo8tQnn41o+SN+fLmbmzprIgppVxH6vxMD2LmkozWt
nHsFqgFkyL2tqGHBVC8KTfaLLBMkxS+wLUXnCOJU3/ek36Y9X1ri3FuIoQXJZNsSF/g/OroMHfzm
v+0u+bin2TyQd5HfeZx71G1y+H24pj1dJLE4LWJgGzo8VBBWD4tE07H6iLmsakj9O69kZ2u3DP/z
HHjEKfDAKl7c8G3GqBYr/xNw6nnvxFmQ3ADGFdJyGfXxqLpHLEItd++2YMqow6zSaZrJPFK7fKst
yqEEMBcDL++ArqCcFio9GcpFmcK9CdSm6nazzJohV3+qQDLPbB7QvMaIDIGvIJeVM1IjKO8KhFy7
IDyglKUyzjvqjEgUgtnkYUnxSMvP3EO2NJGQDnarMS2qnC5iFuP2PhmG4TPVyMB+tNkaOQ8f1Yil
4oqIB3y8H1M4Q3mlhwn4VOYJ4UKkD6P9lWNNUWE5Yfdk4Fm7lvEDmADRBPU=
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
Cwy0Z4uaAFbB11hhoJilVnB5yb4GxtBdyga/1YZitzTSIhm0iqGa8gKUtclNG5tBLq5mDCZE8tIz
x3wSEyOeSGaOVjee0L4l2W69B5dpkxcBMhvXgAOGbLZ2FgNY1yy4Ks8jjRTTmZOiCwvPg4epSRhF
VRj42r5di0l11K8m/kzwQYcW+Fdt7FMoycXnNwVTd25OWrOdGTeWWpuMuyitezroruAxZCyppjMK
ur0QEfM/UMhEmBq+XzKp06XmZYY0JqkFlJoN44g5EROepru1KKOBqjCwP5svQ5lL8h8jhIuy6Ah5
/O4tGv/JlQpeVPoHwp02e/7XTM++lxg2QmojPA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JrVIKCjvwDoj6Sl6who7y3cJchwTbiarLHSoS9EdmVV9V9WuviufCzUwdSl4mIdf66LOJTPYOlzp
vMPoKf7zx1hF5rrWzTMJhQJ+KgBx/HSgJEHbvkUCDHBtrFLW/mxM2BauVyn+3UEygww3FKU5Uxhm
0WFmq2Rn/j/Nmo2JWO0Lapw8brcEm1sj5fCEUGkWuDfnm7Q7voKY+thlyhWT4DdhlXUtvn9QtEKA
/yrhITSNBfh7hx/uQwVs5P5oOkAtkUogQPjI+WLqd7BHNgFRiRsPwh08X1gyspkD5M5XVcGIE2gD
XUIPK7/jRUgqHYjM5lOju9O4XixOu+LbHWwNeQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7216)
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
