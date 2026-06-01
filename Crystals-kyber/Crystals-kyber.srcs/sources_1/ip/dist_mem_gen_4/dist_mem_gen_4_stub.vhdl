-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
-- Date        : Fri May 29 14:07:04 2026
-- Host        : xanadu running 64-bit Manjaro Linux
-- Command     : write_vhdl -force -mode synth_stub
--               /data/claude_sandbox/CRYSTALS-Kyber/Crystals-kyber/Crystals-kyber.srcs/sources_1/ip/dist_mem_gen_4/dist_mem_gen_4_stub.vhdl
-- Design      : dist_mem_gen_4
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dist_mem_gen_4 is
  Port ( 
    a : in STD_LOGIC_VECTOR ( 6 downto 0 );
    d : in STD_LOGIC_VECTOR ( 23 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 6 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    qdpo : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of dist_mem_gen_4 : entity is "dist_mem_gen_4,dist_mem_gen_v8_0_17,{}";
  attribute RDI_HAS_ANNOTATION : string;
  attribute RDI_HAS_ANNOTATION of dist_mem_gen_4 : entity is "1";
  attribute core_generation_info : string;
  attribute core_generation_info of dist_mem_gen_4 : entity is "dist_mem_gen_4,dist_mem_gen_v8_0_17,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=dist_mem_gen,x_ipVersion=8.0,x_ipCoreRevision=17,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_FAMILY=artix7,C_ADDR_WIDTH=7,C_DEFAULT_DATA=0,C_DEPTH=128,C_HAS_CLK=1,C_HAS_D=1,C_HAS_DPO=0,C_HAS_DPRA=1,C_HAS_I_CE=0,C_HAS_QDPO=1,C_HAS_QDPO_CE=0,C_HAS_QDPO_CLK=0,C_HAS_QDPO_RST=0,C_HAS_QDPO_SRST=0,C_HAS_QSPO=0,C_HAS_QSPO_CE=0,C_HAS_QSPO_RST=0,C_HAS_QSPO_SRST=0,C_HAS_SPO=0,C_HAS_WE=1,C_MEM_INIT_FILE=no_coe_file_loaded,C_ELABORATION_DIR=./,C_MEM_TYPE=4,C_PIPELINE_STAGES=0,C_QCE_JOINED=0,C_QUALIFY_WE=0,C_READ_MIF=0,C_REG_A_D_INPUTS=0,C_REG_DPRA_INPUT=0,C_SYNC_ENABLE=1,C_WIDTH=24,C_PARSER_TYPE=1}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of dist_mem_gen_4 : entity is "yes";
end dist_mem_gen_4;

architecture stub of dist_mem_gen_4 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "a[6:0],d[23:0],dpra[6:0],clk,we,qdpo[23:0]";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "dist_mem_gen_v8_0_17,Vivado 2025.2";
begin
end;
