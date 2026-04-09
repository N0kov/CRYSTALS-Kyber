// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Apr  9 09:51:36 2026
// Host        : xanadu running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_generator_5_sim_netlist.v
// Design      : fifo_generator_5
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_5,fifo_generator_v13_2_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_14,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    srst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* x_interface_mode = "slave core_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input srst;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* x_interface_mode = "slave FIFO_WRITE" *) input [9:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* x_interface_mode = "slave FIFO_READ" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [9:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire clk;
  wire [9:0]din;
  wire [9:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [6:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [6:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [6:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "7" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "10" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "10" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "1" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "126" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "125" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "7" *) 
  (* C_RD_DEPTH = "128" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "7" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "7" *) 
  (* C_WR_DEPTH = "128" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "7" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_14 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(clk),
        .data_count(NLW_U0_data_count_UNCONNECTED[6:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[6:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(srst),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[6:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
UU0HctCtrDGjqiFgNj8KUV1CNrtLH1fzvWozH/S7aVj0RSc24esnSs0ybsApJYbLPSCW6MJRxlk8
TZTBIGKXHEs9iSJrHyeb7Q9LsfbX2O77j94jiFzmN8lM/LIVA6RCDBtX2LtKWWw0Ex0IvwdPy+Mg
2z4iCfTMzyceiAZWkhE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GF0Vw/gqBrc9IHG5aASlKQHzVjMUtBIwjnrAUquexOCvx+SSWyZN88WoE2YOio8l2Mng8jmA3ELb
iVwbk5kPsSQid3iLelRIejTGTCNP7ErmhAyw9N/gInxZrkBgF+99fwCp/qSFsRz+GkpjXlmNPLal
1m+CmI2mtQjH/zDmulZq9kFS9URMU7E3TrKSiNtdLMYc1ulwC3kFJ99geu/tuMfIrNOmA9KkJtnb
Zoy9fNs53bR+fUGBL5n7AwoO6cdU62PpktsyWXh1Gp6Ylf2HTT0CPMyzWbJQve0G4+iszllRawxG
r+FcAh4BuFpKqaFogcTloexA8MTZ9ICsGZkzkg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Hzytw/FfXpsPrE5ZowzcEV+nwakl1BirWDR+Iseu9nWPYk6Otw/UyzdfMGdUJQcXxjn8eODJUMPS
SLvHyIbu8M+iaMMz4+lNG/o0csNo8MO67HX9fxa4xkVOaSOTCzBVfRk3cjnK+OAXlJEZO2/F0Im7
evCVwWE8mv0p9yv9NZA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aYTxAf85PVmpAktzX89uf9AJXAUs8FLk2gaAmaPtMQhfYN72ydFe5GcOlR9/W705GnhW+LSDUX2b
XQnSvIzmqRMwIqE2sgix0W4aZDvptNpP2y+gttAzQaOhAd12INExGFaZxKro7f/cey7YiwGKPPah
zcBWMoHI2bIhFDe04i/Jt1MdciCe1haFyhwBCett8eV6Laia/DlHOXxqH2bLukgGZp5p2EYoM0T8
WwuwxJ3X0IIphS/uP6nXSuuuMQcAplYzcG4PLCMpn2Lo3HwmwSo5w+0N1NFI5LYfb6ZrdTXjRH+j
oHZlteBZzQ+4jNx7/nPPCnuUB8IFMROek8y3aQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
e6jDiYnzLTYk/3jC49X3YNnxEmaFBYGO/cl88hMTKYq1FltlAtsDFs47xPVxcrXJmXB6FiDcQKgy
Zcri+H61avSebr0yHZ1uigtfwqLvcivJwyCmMK1zZ+tk95pu+v8wQUekejQwCfm8d4EwcPtFRBCP
VuiAB7kH68VA/rKSNW/L3Ck+PVdkE6HHJnrneJm4Aial7Xm5QOsroJRJU/ObInH0MO+tgwAysCdd
6eCmjEBFQGTjmThY8W79EF9AQGGRTMTJSajCB65vB7j4uMsw7y2m2q5T1cf5FapbNOa5qVGM3ltu
WzPHL8ffpwsn/Um4FxL0m2OELCU3vijgWPxyYg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W4uYHM01gGeA2MU+ib2L/ExIRZJnY4G/4/BNSFnBkDMClm5bxdPZWGZhCUejE4JXBUBzvBBii0hv
o/qn9snazl844XvvPfn0rjgdMjBDDTUc14EhQ+t9LtnZFAV+z3wAIKGQaUOt5C451j/28rPyPkS0
kBiQMKRYL8V8HYzz8PJCw/2pMZh5nAGYlHVN7x7BRfHg/eGLL9Vxje7mRSIq9oPfHNxp9KvTPnEz
BAbFFeUiH6gtQHgv3loUdp74IXW+8+uJHlh0BbE4crWkB23UetPNvBTz30q+iGUe+Uy9cDako55V
AVXIMgciLrWVPF+qY5b7zySQkB4Xsfj+udkVyA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R0MJeGCQpSjYsGBWKKr56ZJi8ovYpLtniBxpCnrQicvQybY+fnPA8Daj6MXdCf3qwLF8yF5WCJ8s
qgsZvXSLz7hwsKVEId08i3cpwMDSnKdPTNXjuKS2h7UKOlcr6QZ5j31qcO2XbyCffpn/pAXTmv3a
wywj0bLNK61+JY8v+VTzUKzR370hK34Ryuts+hg1InhuHxLuVnu52lVOpk/PYUaA+w7ORS7AIzBm
Ic2Gs+gCO56TT/kHzEdPXDOhyRk/LG0ir7xXNq7VYILxVh4t9QTZ+TIjutFAhElz9ceEjJ95QYy+
i58LiAOmyF9ID0yxSSYM4KQAF2bqt9kvgdWRhg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
piBTg4FhL4gV7WxO2j/dIDXpMS0DVV+BCPbz6qHH74TfGEKWiiBMU6gK+ZbplwJNS8NHNyEzAlya
r4wgVpBFLdWysNz1JTSjKKJCO9JEQN5/H5jfiaYLOSRwE+N3Opc54BvT85yu1V+zTS+2aJj4AQ/f
gjyVCtr2A8YVv2zEjqFuQcYlcSxHTEk5eig4u36hHgzGJsmifFlP0OtE2NeoOMzFbBJe4LR9f1Ac
XQfLq8HilNwnOz4EYZGL9iJymjQ63NwSYfWcRjHVPPJXQFZSrWlI6V5kkz1/IDnPuelueoAKOk5K
OAAeaRjYDKgXhfse4B1Cy+u9f08zryJez9v+yfA14jVDkQQJp6a0qHJYuemefEFrmwJxSLUqG+Xq
QDK6/emEA9ZXoln0PNQyFzaEVDeFDZBn8LZi5SGL6f+TpO0acfI2jxa5+vCQHX/boxpyVjtxPh0W
Xjk7+E7CKFDmE6T/ZNnn7MRpaG1g4A2TEvSqCSRRnPprcg/+bRR6T6Sy

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GlYhuN+XgK/dKipYGy0F51EWCsMzdTtEw7DUl9GCeVeyU6B0qQxd4o+WGLqPzleHUcbSjTY0Zsbn
PYVk3cx1yet4akcLytYAGFXC4n/Xi+1UqMz5TGn6+YQTvRIQ3rDpVCwwETOtxY9exyURa9vrZwN6
wg8aS7eaMRDPPrD9XOy8sQT0WrdKizBToFy2xoVRXceycyYYY7TdZikow1sCVE5Dsq8WQ5SRprGB
6XOvNlQnaIlUCVafx8nFv91VsM31btEViBrUpTqFHJAuoebt0ZL+JlrQ5nOk7XQnw6AQ+0ZlOKba
q3Ttg2CqLMLHVI+1yNiz+OEKhmPV1D5J7vlPQQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
2gbN0jz/o58BxZjM7+eT+qN7Q3qHE0g1JsI7dvdgaVydBYqQVWbzuiZYLMAHv8yrsn9b32oHcBSE
0o5Cui6GiD7neKU4AljBAlKAaN9vmM7TfUunNvBpRwv61T0jxsnbQPWfLrtpbTXbXa9k+COT+cqb
xPXfz1KFKZR+jUVQfqg3k9yE8k42Qekbv3kD1KU/qey8yzrOiZWk3YSqYVf+xtUpOvJY52CMhroS
XNjVVkBPUu8Qp/8HAzxqzWi+9FMbOuRKapPdzyPMn/9u5V3oDa03Jlbl/wNvQRAMkkI4MR0Z6Fef
acPXE4lO4yrbdCI+/JWNiFnMhbPxxOqB2cgi5g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ijvB9ebv8UTsfEBOdwLX29OhkfU+M38mGG3GBCgYR1J/bZmxD6jFCxoFCEm1aKFgD1oURupMHfs1
c3MOeOmJ+miekD3bzrkO2GpRCnMbhKovUm5w9Qm7OnK1B25OU6+Xq1Ykk4tIi1xMOMYX8YKOrSrC
twPgnJ2VHr4FFKQ+p5YO7BYb6KtJrf3+2JKYjVPpp3gkR5SZklV/ugbHgXnKTC8NtjSnys5yM8fs
hXOpMWgzLJxxPm595q7fFP3rHvMyw7H7unYraHK+0uc9zTFZ4LHWuOQvc3TRUEmRmJmaag8nwld1
2cnhyhbuZqsuwb5+2W6amIYGSDb8gPS45qwzBg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 73280)
`pragma protect data_block
/AtPvr8JsBmWOFYy6ZCXvZTx3VuEVk0GqreigTD9ahejs76vFZK5QmmF8xHyL9RR9LV8edt9QyC4
QPIP1unG+UV0QrDipZxCFe/7G6qCPYg8t+Ct+fSKFmdbjG68CVGl0XeJ0gNQLCEfxRHs8rVG01ll
L529lA+7eX8LQPb7gVBv/Mu04IPKjFEQ36br7gf5Gz5yKvIwpjJO3aky449I4eEMk+oKRBnrKka7
gs91xrsvrGiyX/HT0mFTubQi8s1Bt1ZaxoDBCt2F+P88hniZMti/fcDGLq0b8Ah0Rb/97XwXe1aA
mlWIvkcfKKhKC6XPfNLgnHNzCV5AM3GgSmAG83ss+Q/XNJnLQc4ChG/MZOOJRNmSvpelbFq7Swy/
NvEY85tYhea8e4TYwTZpNARl3uv/DpnipfTphr2hhLZczupIQ9UDIReUvmXPmsOaI0UtXriQHBLa
4l1KCSEvxd5VckO7BH1P2qFA/UWWAFyuO9AjTbhPbUWhv6XT90LdtsjOXz5evOExGYeoPiUKJGAq
D5cEn1A32cuPy4xhxjq4wcsaLJ9sMpBjhMoAEfYJWcBeICU7vGEwXrd9O+p8eEeRzTDZQAiJHByO
+VCF+RHjaB8JQypRP+/302p6JRjphiifH0MV6a/Q1/wtH/m2Fucp1ANf6RzFRVIDE7XclbEefojG
ZDH2rcjUKRfp8TV8rrnLjmz/2xAovSyvLg28e3alk9fxgU91Qv/pHgefEvi6ZZA2WPYSl6YDZwGI
iNNuK5dCJ7vCIgNAdVc6tIA91f+Wte2Jyp54u95IR1AMTAV1eeki5mfxpcP3r7ZgrV0itlSwg5eY
12BGl9w9F3KpoQWc1Kzkfxh9KZQ5m8d1szodmK63tbqxI+bo7Za0UlS1H/e1LkVZHSO2+SFdQFio
4XBfNWoScue6MZCuMo6gSkvxMynkkBuYc4Fb8EHQdSYtKwVUe5G2r8Vm6UP8QmWkYxJ3K6O4dfZ5
mXZnf2T4FsVITRWmeg9PSDYrRTPFNiVOSF5mDgcmlAg3b5qKl+MprmmTZhipXYwu4tW4akY4Bnk/
eNzG0hRR20gCGmn6RjALZR3e40RxAA/DoVHm10e5IWnZN1Ujri4JdIh1k8IZKJwd1soU1nNjbqtl
KBV/7H0gPmeLBzQXzJIfG/Eg9lIVFO8p6yvkKeizshPJNzJEsaW7sO0mFRYbGcyhixAD7gUH2sX/
MhUtuHiRxLaMGE0Q3A65t0A0bWpN2fBlk2xmLDVLsiN/PcjgPAEQ+rlRKvqDH2ze2MkAWlKBj1r8
F4rnPbmrRcM+3JiXVOS/5+sN0ow1DOPKcK2FqpQhuuBDJ3heA5hRu04TmBj4kZmgGyoj6IQwCg16
DFxHHftlgoJ8eogg5AaMdfUP+FbdZeD6dwR+8LqG4wakHhwGoT2ra3aQDifE8VtuNdSWRpsSWQEd
3fj/fTnNSEyV2/h2ToOIwnnFRfZAGZm/gkm/UNIOkF5zkwU9rqTr48CVOrP16vn2gmw1FT12wHxp
AZgh2MdElZl9HWC9KSMzPWPFvZXOVpHAvMrNMPZSdOG6Kz01tOECvQcCBqylfnLQW3URXueky9MS
8wKsKF0XcO2kc5FRHxNgYJIDQcnpU9MDDi2gd9Hi4MVh5QVywTFqQIfPu6+YbxeUAn85F7oLrVTC
rqLIgpzF5Of6DynsAO07nzhIoZQ4DW1KsSawF6UvKUo5+vBK9Xoj9/OoB+00lEc/CempYadOgU25
A0hjKj02/KFQCZomMYA7uB0ZlVivFAIehZXcrCugbFYNTQ1VmW9sMGrhXYplTYIBddGqphr5gcy7
LBSqc1wVAtHVNT93wMvX4zV9Tm1pnQiPyLttAg66A8uciY+ozqaWxWBWnwefxpKFLlkKY7ty2FY3
dZ/vTWo5Z+HjWHTpMwun1KBgg+80+Nj+Wdfor4KB5NNhlc598RHMqzuk8pNSNtr7GZDMG6HTgFwY
zt/Z2YQuw1brTFa18u/rbbDRMg0s/T6LApqPpWMna0A8Q2gbE3q7nzqgIJLSRdPPMTLjISlO1zsr
X8FBpfKpzTGW8RO13FXcH64hg/FlyEkAZIBVmiVpKhn3X+9Tf9dDIFw+d7gsnvXmt/9xQOUvjjRt
XE0XfrIPoO00/WIP5d/JoPLqnfbDKt53CzxIFtElDxxIg9khImLvoHOVnDK92kL4NUNhcxe1gg1S
WX4DryOIKv11351X2f3GHCyiWaAb6Z01kaN43G9Y+tyCfkzFMp4dw6kC3eo7urTf12xQRk/42w4h
n7TrpMTBlnfOsjjMo/4eeVw9xq3tZsZyLm/0SL0KUkJqbnh3heeOfTQHhqsyhdljR2zg4V5hP2EN
Vk1sJOX0TZMR1Q9EJL+z19SDArAEIOkvyvQ3r/5xZ0VYxTMMOfwXIC08t/fErIO2RZA5YwcDcsXD
/BE3x8N7makzQ9O9zPMZPIEzo0sj1ZvowCuXvJ91nBCh+dPJQbRSJ57se1VPjxn1CXsaHAckDWlZ
00SAzsHA+Wr7AT9E1dF7m9f3D2oJD7QnoDaTTlIRShhXX4nk6YPUtfo8RGDQw1Es+KxHMr04NJic
4brg4cqhx9n6ehGDPefEdPFFW/c26lSKdoRGqUsyYFrH1OAXPcGTaRlUBKlEWXcxwjvsHQRS1CTL
socy2abwLmszUlgGf04ushKjwpQLfkwjPkpgjh37OJjlgmCsgYA90fYxdN98hqlOlg1U3A3N6EL9
+s6KqUxfiALa5dI47fVcTZklCKW4Qlvqdtjv3YEm2OTDudZKum5oYJHW+haOiUFdSWNRjciTsU6m
vXgzxsHyI+7YMfjoRnXVxP0+hD2bHHh+4XxPrQLcKhykYEi1ZpEmKQPt6LZQrMSIiRTLUrUafrT+
5W7x7ooLx3PsUyPABkYnR0vf0sIVpfoqzgl/3auXKLSDVJQYNzfONcdP/XASM15ObTtvGOzT8QO/
mAoE/h2EYUH2KnUD3kFbY5M14m7lWSPhr8U745FsgRiDop2dLIp1tbMjdslOSTufc8+G2lHquSwV
FU3f8+Kxxjws+FhQPvyVsk/XBjhRagFgC3WZ5+ljvztA8RDlFJmedJmsvBTGBu1pFIzLVd2HvYA9
iWhu+igsYurllC4kUB/zlkkJ9oMKiCTBCDpAWHn9pPT/v3hD8Vxnll6Une3/mRHiUVxF8APQRmnj
QZnMf5CFDo4AHYK8+1lP6cyoamwEAUnOEv6TP0rl2GJoXfTeOSeHYdXbNYgVdutgcT7ClZreVM+x
Cu7tdIQQtLa8URCmcFqeGH5SmfSJ97UtdANPn3MieDlfdTwp5QLQshscWd2oFFXjl7jnKHW+yu81
j+MlonBVa9KSNUqfXCvHc7OBpMrF5EcEw7sV1A2rGFlfCstMeMVcKNCTRKFpARViTL7KWHu47epg
+cgmBqzrLeMFygjJXNYW4bExZAjvJ8KdtnLFKq89gimIIMk1JRQDwoQt/KsY0iXcpWQ4xSksfEw3
gQVfYTok9VmivLHN8b+kYauigCFTFba1Jr6oK3+XH05MSPhSeyR0xY7d5TBMIkGztbuflfvpZmrL
9y+BJFw1WNVJqU27v3PkyUxGHpmZdn7N4QNuhLsQNdMW5XayPUyo2OGyoqqUG/ZGRp9tPkOjkYLI
i8qGUYFGHGcA0nfFFRoxT6u/lFioLShylluqAekTcAEgiPgJOUw/6gpLNKLW+jmTJSNqyTkJE6xG
kR0bAdM+pqtBg1/aQxBUXWHaEDNCys2ckJ2YYQvNPkP8uyMd6WXQlv///8SM549CMjVSGiYgtP6s
Kv6h0P53oFJ9Y+z031a+SJ2do79T1beAag8W8Ioi+u1TbuFVLS7hSsAkQhWYvJfQX7iNjzV7SiNI
wZNSUUWF3+Rh088qjGYqcxfwgtXC3vZtgC+ww0Irhsn8WizjdWIA8n9+ozQiQXIrdUO9o7+orsL2
W22A5ZhIgGr6xw0yX9zESTNP3dlvqbPVomNNYXq0YrPjYwKBpaCnp7+ZxcG1YmMGRs5N9Ngizv6f
HC+YTS29LmAomYWmdJaXC59mm8+U54DH68cci8f052BPAUQhgjygawgJ942TuGDT/raWxJnxa0HN
mYElNsY6IDmLR3IYNVAo0qxY/irumx5q/RDo1RJmX/kMEcW984LS1vulH5DzcqghagwzqHRQ3b0i
s3cCDcwuQHY7PyZBm4xeFAh4Bcq3BoTmaik2Ff0sE8u7GFkA9fnQEbyEdlMAP25slC0Eodio/tah
T/2mARe44SvY4L1s57cWEgHT/UUigUaHa+b2ClJxC2sFaWH6E2Ve03wx7rRV7h+ZhP8mQxadvwJ7
2olMXZeWm0c4GQ/AJgT6C/cyARi6oUpXws8pCkp7Cch58lfUhUpKwCj0eWw1BjDfuJ9FP4/9SwO6
tPjLl/7Xyh3ewtZnzRHKQg+PD9dilH7N7fMCuw2gPtkdJ5JmurXLbxZNU+0h7fNI4wMsd8rtJA74
XnUI/bRDNV3vaKZw4cxZD9SzDg/uXEq4Ua/Wf22mc3lFXmz8P3cmAnwIsLOuLv1NEMBSRyarAgIt
5BUb7AayXDUAVwvrpXYBc1e3lx4KlDvJ20vnxZ6s/l6nQb0c4mWaObTJEBoju+UI4/Fe1lr8+wkI
wM6S/AZuDMEqy5UN98m2O9u0G2GD6uagCdH7mj6PAckmXp5y4cHd0FC/KK4cnb2bpDMCAgpiKwQ7
hYOn6+SrWxC6qGX72wsrP3DGhVyhNiAHIr4xov8VlD2qpKgAgd+ZdhrHPgu/EmbIS1k1vZzpV9oo
3umHBKc8n3CKYb24SE56WB3CsFqmzrO+q6TXD3JH33KdQsAYyXYHtwd1OOX7hg5Rqg90J78o4AJQ
vT3Q6FjgGM20kllwQID8vYHOoZiEDp/3Dfndzp3TynR9Oe9n6GCHF5qiTY+MAbic+wRKRHrFjYuL
XXAm25mhZJUuW7dpq2xOUUlFPumbbNzZ6SrWDUgUiY1BPtK0VTLMST0D7FVrAO/htFZmpa/Qx+kq
/S+LCjf1ryyJRpCS7OXdgRVwgDpSOGLMA5fUyikg96XjdbYoNWQr2JEy3Y2TvB3cb9iXjY9oie5W
BDFn35OK6UG7tRx4yoLvPn1tRZaeCDlu6JVT1/Kzn+vtnz7UrwvwYju9CSjgyqXcmFXfPlR40SU/
50F5FV7dk1kzSndudICwyaiN49PzHTzATgzIn4k4h1UzK47fQ33b7CGbvsyxDs8iK6NhP9gJxxoY
/jUdUBE9YcmAtcN0Zy22h7yr5XQ7qn+9iv5XPq0O3tyDt1FwZxm85+ygnKFiAGrNItAdrlbk3MdL
NpnWjrdOzhwkVN7UfnHGBjKCzT42u9tEvU5rGjFa+w0YXUFEnx/XACAfqq8tf71PkcGDkiX8rr9d
BT8qY7PrRoSvL3CdVP4smHrm/DviOqcJNzfyV5f9SWgBq2vl4CUI+deMsTkvCqPFQXZCnWyx3CnI
zYVWW+4CNXBT0GL8P16U+RdD+fVeppq8jWmsVC8NV9CXIDrQiiLlxgTTfQ4UjALNJ7BRQmvg1uze
MKbX0pGEqwd0tR5K5YfpSZ7SvnZCLLXDc5ZJrEQ2la/OH3ZD2PzDBJx/iky8l76/sbh6UkjJrRgI
glW3yt93ZB+QZ9lQ9x0//RcteHPrhoaUczLfpwRJn+69ckG5Oo1vO6pjtqbE1B4Pjq9lpLWcHl0A
1ar+KfZXOQQCy8HO5kSR/82fQhBWhwUd6y8JfA+4QJlMY7wXgwCTGUApYhVhJUiCRh2jmVWgR3WR
zHkTUK/dVbnJhJZt4tod2MRWMLqVAcyC8QaknzHUP9emfTPEneB2B5c3cxhWUVvZURiEXSWu+l4G
4nupNyo9n3c6tQtPRbO2WCqe41F4L28BTNLhICCrsyhoHmYGxxeIYOQBEwpeccXr4RCNFCspYTS+
999UrYp4i194BCqiDZiY+StXUYyC0OA/zG22wfAjxwOlNCk2t/56C34GCm5vTScw1RRFZTMsGfnE
IzZ97vJsq7dXfh8Fa+X/NGgKxXcKIAJtIuQoGZGLjlkFQ5DnKyjrb1ZSDJhQ+hdaqtQabSR+bikD
qppRycnNAdTG/45xsnYq9wLYraSHXVg5wIoGYD6JSl9lN9TlV7rG2YLP8Bpb72Phw4Li3jYi1Sdo
d8F08g3tzJkfrFmmSx+M6MtTr9ufAWmomyiZj/kgIz2/h2D0G74KlCoRCc3fheBQI5m8rt1+U2dX
RX2k28Hocumw9G9S7zdZRbo1NdHckqia7uUNO6/C8JfZuN/bweit4hkJ/hy96pe1KQrJ0tWBrkQ2
gOO05PSZ45e5XzxZgr2k4RN50GFoN7lM515j8tbvXiS9ywYb+8yjLb5QbX1NrttoD6juQmqD8Lfp
FDme4qZ1R1atygPGphm3thxReX2EnTdgIlbpB5r1T9jFSAkHCQaZgZUS7G+5CDaGasiaD7kHRcTR
2+hleRXWyPw4Wj50ntrrDKrF8JBOHbwNlWi+qY7wDNKAz2zwjBdv4jqg4JQMDGDeJvkMCv3Zemzy
CjGsC9FaX+uwHGCDEux4RIeU3NK5J+iLIDoNZJsB4lF6Fo1NmBzQYJ/FSs1XQY903FqNM1tLGc2a
aDamhOrbeM1nR4yHY232d7Ja4a4Rr+cOjVc4VJQxjUwowJ49cWhyNDFWiRv3d9nGwKrKtk9cyDi2
II6VsmxofRo46jMaoGbzIgo7HPJS1WMgeWOvLcOPpDdrAzSuXguXTilspOs7kkRUp4MDBqP1XPrG
8eEE7anOP5Hl+5iCh02QccIylCa/FoV7nPuOyjqeClToiWsdsOHXGAJQYLkgFHmVS4TZRDNbm44e
r3D5gD9TGv+VRbRB2cQOYHU1PbaUu0pk+7T56NBMX4wiEtHrtGYZM9A+uLzJFPVUlZQbapjaKC5V
PAO3I+kByfrLvXtkd6Kqnl/ONxCCcc2agWzt5QjV/jwyn+3uYEPvwAZCOw/X855mQXmxepus0gZn
Msdxs+eSEkhPTe3L1OzyXrrwigWcDYJhFWZtQmn4LBH/m0x94jFpsqFJF+nWKGEt4ly0IqId7sv+
P/IBNHmnry5PRp/NORxVJ57zpBOD0lhnaWCSveYSCM6DDlce99S32vpDQssScqkIa6T8//TsFAoK
XGIIqDtDkjQGCjgvHBKvYtq9pnJeCJ5PGuhtR4DsE8rnjamoE41dFK+9YgBMKzFP36e/ZsR3IJu0
EK6x7y9p46JVS4wucfH7YtVSsCBDDpQSsBLJe+xGl/uSGsJ8SaSt52W1MF6H2yHQBHxLrK9Y6ksW
ZZhOqVOqSBuPHs39Z+FPh9/2m6fHtQhJGC1ybKOa+Ox7qWXeQ6s4rfOth4AnOquTBDsungM2wMmn
3Tkyq/9B2+iOl/i1C1B2nycd9rDBJEt58erS3HEut6K+74oeKLJSR+xjQ3jKjV4bn8u7i8UAsYgW
/xE1pV0KWkdbMJKKVQ38lO2sU5innX6SsgsBCW5Oh6qj5VGi0x0EOptfIuBCTOXOQO97m9nfE0dC
OJmxrWWl8PB4lQoHYyZjqYPXDZnj3QXroI7+4qgDzLyTfLQN/dhrvQ8T0GvoJxAeoXVt0L6dzDQG
qm3CB3tvVkWaMJuWy4jJkEUFfaRPThRCMwOqdDIgFZLpVaup0v3/IQVwpdXfAYhwfLODdulXo/oG
45hDRXFsFH8YyLdQUGyOnQs4rGmDUH9ubmFY2qlIZESYZJJouBIWRde70zF0Ps3nrO2ApmBzWFzM
Nxw6/qVkBHM4TDby7UrxP/3Am6BeUuojpd0B6NFJvY9co6OZ1+jODxgqFuMPatY5o7pnZPPjInWl
xOInR5ClL4b0qyzvH3PubbyaZ3eUipws9T8jCkNjSmuOK4c46nfyiZYLZxBU+ClGBB0IPbIlSzMd
/rjPkCBslCe6PdmgC6S+IAr3scRzcFwryDctaa1rnRoJ5U0UWv8Mqv4X7YVFB05kHmicotuD3pTF
b8/so6JBMARAgbnURErk8HlvqMWA2xqbctVk/VtJl/xNsYZeOtF2seDoPoqGoyuijWT5mSoR4UQm
sZeAIItFi/sIhFZ8pB1C0TY4c1aTXmWKC4rimpB5D+szx+k1gkJWZYyQSssOP7eLliuU/vJfcy5W
aCP8hja96zHT6woHvaqqYJVHXPhbLt+848kfDxX4Spx0lz4wrITykuc6pWJa7dGm4YEkI0vieujZ
G40R/YGYSeigbkmmENdMeyqBIOvXl5ceQUGB/TNznQZGJhKXyX0nJl/JM+0g6Ih/wer7IHwgKQ3X
KGaObue3gIPV6QrBz6xrdO9eDIlmE28WD+VGDgNJOzQtuioVAqaXSPnLIYwHyJF3B/1PTwWLx0Ke
q7AfyUAK95LQvRzm1NkVvrAbJNX/Z8/EJnleXuV2VTiVTyIklq3inBuJfLnmv6SaCm3dkKSJAnER
NLBhefE2w8BzZCPIASWsEoaHo4q6hfr4AyehdieLhFjbTzQY9OdhKxKe9gPk0V+Dvd2lhHFY/tvo
4odfOduY6rHznji6uCp1+EwRyWclD3qXDphAMjRtoJufczSS9c1TldN7c40GjC2aMowy/uH77iDZ
NXvXQFqeo6VEup97SwA5webbRFZM/VqAinTWaUQzWWzP3bOe6yRWjyHsHWNzDp6viFVq8k2rvDGs
S8UyPdd7Y5d2Ddr6BSW3MkRwcK0m6acMn1yd0DbHMiTBC3EwAP9GsDAfaPgR1JJ0C13MHL0aOzJS
3X1ggBt80NB9LhAYQm6bZAGkFqfppSFvTmGkhy5IsfDXnplYjVfyzfokGpoUtjNdQqLKLC7HOBxH
0ozyBlBHcx2Y6r2gHWUADo2VWdoH/lU+pStjFwUD9e1AlJQwoc+DpT1Pusk1ZfBSyV7QCH9LBTDi
Z7UcIAwrncsKhOHg/zXdO+3TIUTxpN3ynVxMd2qXVDYxYEyqyqFaIXJUnSNaVEZN7cVztn8AJXfV
+KnIG91ot9p/xxWrrOSTNfTTBr4FDfBBIt9i/NPztgkyLycIUmXPiSBSz8ggylHWaYyL2cLjM7ae
mnsNrTflatqJ+fNeFb4Ou7brw6dCk5EZZ4fdtkgkq2/1LSKbMDdU0BDpgkNSksuphpT6JcHbrLEJ
DC31ZjttnDXkaNgwj067+1Aog3zF7r25ny7t/2zbIDDTQwGAHgAoNqOXkOOYn9mRdgnktuGxPhU9
2iGHGuP2EGsW9Vvk+mtIPaWmn/zZJV2uN8f1BarUdJ5mgozuIiCJAtqktsScXSuS0kBcWv8N7d8C
NZxnJzq1hUv6k3FGvu67A8ZrgQoJV3nZ1bRfiiVV81XXsrHnnlfelIw4go0ZUY9W8KjXK85+rubo
VC+FDeDPl/JdpHHzB7zMRhJgDESq1OYJwtA9dx9kzZKmphTgDc9KWRnCQRJebO58Nq/adndcdY7Y
7uDb8fonUGgvIHbvfrydEthwC3IaBY8sAa/BAW8oxJ7iHVdQfEzENp5FEeH7ekCo/170TZefq8I6
LeFVdyU9Y4J2AjN1F5dZmdWpf6cnjbDiUbstAWzh/JqDR85ITnk2dLshKfQGLb9HHQG5MIa+JyZz
FqHXD1mH2/MZT/6rV09KgzLl6yvYswdDhFj95lxPQf4vtx3p6vn2iNmK6hk2tfFmdhHih/Z8mmyX
nqTiGt/6euNWuVBymLzvvG2XuD0h7sZXH+ghET9wnU9kZgzx4ujX/kKdTvpv70P08Oys/ARVhyui
eea17B+H8Ea9VBbhPgFihBQrknZCFFM6YIDqwFgApP1riIwr/5tOG3j4v1x4BJk4bbn3TSzyuu32
JwRALtT4ZzVxn/BTI8IZj5sQ3fUOr8aL0zga1qnFFz/1FhQMBFKiiMnefF6isgJDkkf/jz4vFlzR
caTHO/kcHY53fXXWKeyBKvJZtYdJLkIL2A2BMKDIZ2lqOZK7OkJ33igCkJsb+1Qq6cn+VYnEYPah
NEQ5+wnn6uwOHJLYE8fZu89fSOZsMiu/af+aZikU23VD1rhKMuF0V/BFl9V8UZjyTasPpQtBPDEW
7dFlb38pguHED911TwG4LQ0TgiovnrP0lgHkXoylUUieKiN0yRQdtgDJLFn6vV8HjktpRNhBJkjR
RbHmh0YY5z9Wk6SSFJGxhkncU7oxRfVn8HGFS2z3RZ/S3ISUGsyHTIleQMC0+/uxKnO3HrJs6uOv
+v9VNARuq43txz3f4NeUM+NSblM+uWhio6YrPVP7PE262y25CYMsytfVkxpfI8jgmmd46kkPtl6t
NyvD5gA6scddOfNQfL5ddIkBnrRTBTwUrKj7KleAXOt3DQvqTh2EAlRLgcecWP7ZSLID20QXiVXq
Gk/XqrqfWM6q+Cu9jDpBYozNswomYRZGGJ27DNVANMurok6yP3fmrIYwVo8NA716lyKa9tRRDSl1
4zzpGi3RKO7Y/Ydh6cFPDGFIJccrb3QU4sKDGm75/hvE/zUSiT75YXiZkH7Bon6O3Nr3R70iSpQ2
u6N7gqUh2+8tF5j9QLXM3IVMH+/cwgjO11nuj28RsWkcKmhhp0fBI77hyuxQWPVHmOX2RhQBYO5+
yzbgBNNO+CfT0kOMHXts3m5DpTsx/J8IQgN6nV/nLyJcj9kTZZYXBqhW3U4dwBJ62yWrVWdsDY6k
FNZeEs5SinxVhxMTh/gYhEUVD3RnDkDu6ziG7yqLP+0xFlXoqrRJo8bCWEFpfPHwDZXZDf2lrtlD
bH6U0n2hWnXtARIF7d20A76R5mHlmb0Mn9zC8TBvtpDOJljnImWyBonOvZuBWDshpv4fUv4cKpXg
xywKQnoSYJIpqwrAOpWBn4Pjm8HYBzWV9jZtLuxx8fmTPANB7ZajRKZYyaAuoQ+dZKGDVxWcHVnG
SeOntKNKS7EKVqjhZ4dX/nkgI0KsJ1V8g7SHI1BSYj3L7Sq32ZNv+ASPm3OJRRjy/5kigP3dwHKi
sHZP8wk+nsRye7o38Dh0jXiTXu5pQVcHwjBHOUEXUi2m1o9rjqGwzCVtmHfXwCygLbrKev/G9tPJ
44ZhiRTjV5j6x2MwpMxB/U/dajmDkG/+O3eQO8SsTnzjZCXBq/4iJfnsdFKcHyVfwMtaDtFRU7Rr
+D9NEegLxrJuyamRQUOPp1QHRJ7n+ASjUbQGj9Rz55mF0ALT0SIj7J2VQW2+7jEFHrspoaUl0dQ4
sy9alIsiIwXyU/DhAlndTzDyg4OmWCH1OUCrwQew8O1+v14cQakqxVTlaY4MeVEWSXeDqwK6xN03
NHBV7PoU///BbTkjto/exXx5wP10L4SfN5fv56f7f+rMJrnqTs/pObKEEVGknRoYOz3vjbFYCCbN
MOBABsf5nUCjjDDjG1IeGurKqRaRNC9YgkFef7j2CBj4oTsrA141OSLcDLkCIIPcqO24JooKfsCS
zT3hs5TzC0mEfYycA14qkm5xjhe00xxt37GDwPW8MUZvH6fTf04bttie+5Aw1dAmw/cJSV2BYGSF
wTPVlA9/NjHOzDKYWX52iFqvnOrF1vttpa0hRTG2XyVl4mPG9PVibWSfRLNpqzcfG/HKy/kd423t
9v9Pj/BCe6bJPE3MxRDVbdNgeBrn8BzikUGUA169RC9HzqQ3zVhhRNtxCIT9q20aS0LfinZY0Ggd
+HPbBK3J/LTTjj+qVCrDLPdhxLlRiyLB+noIE04SzT6zzRz8XuEAur01Xcbj6nHmjS40014DKGiv
sGW3qvBdEnnOF1h5SczbbYsSJtL2AFmU3ooLUbK2Iet/oSdmcNjo6M6f24wekU10Qjfb/KNkd+F0
kqTBg4EaFYGOMDDQus1Q6tA2suWn/s+D9schAxxHNCJe8IxDxigGNvs4Z1Cm4mY9kPHsg9iFv5MK
lW7mHiL3F+8w/XiOX5ZIfWLMU3awMJiVdHymVxSZaXgWjVOpLuksmnrOSY+Zwh5/tI1k+YZ0fXqZ
ZDVS8yP1iF5MLnTBKuU7R6DyOznwGQ7jrKmGfTt17iOIsxFFS5Q0CpiZpbApE3dROEcXwgnt3SWd
Pc/DkJLDHVnSTw7KC9qCIP8uB6njQndPvuxrff83n059Rq80rFh1q0YPdw6BAzgJoAvcj+y1yST9
CM7q1hu+InZIx6TT5wQIkTP4988wX6UOcJVL2OMf5iaoqh/zFvPq6Hf/6KYmh68MJh4YWypYYjvA
Y3VXevbgUSChw3FrnMe6GMr78ho/uqo5BBLD5pAQahY0UeqMxRtlcxXfMYXF+F05bN+V5JHW3M8A
XpCeUKu8FR29h7mS2FmE1A2f+ehO5HY4zQO6XTZIhwY0QxpJsajVuShaFWUz4Yxlgx+dEGR0Bjmo
kKgIj6VMxQAmkTYMZjVGd59fdBjfNdf4bYuelpL9aIVpdil7G4hvkWmKAsBXgObXIDxiWmECU0MC
tvSiXF0z6/XVN3j9hSfm3odaQEb/H+a17k4RenLE1RZxqDEiqIUbLa/0BdQDIvwwkISXoPrP8G2p
boroiFL0N48LFYRaNZ5hH4z21NwOBc3B5y50vomXTeWu+hQno+a48PlhvmfiPWowayGDSyCfwW0h
m2aTyheMLzsWxXG+yTjxTCEDlQWOuI2SPiJpCwt4BDkECUZmPV9MrnRHnt4d9N7FVIVM3UZkh1Uf
C9vE8fgtDX3rBXMmkvM17sTUcLxswou/lfR7xjvLDto7TFHJShmx6DMZ4qktkpeFB5CyIdi2Zn30
1cV1fFguOd7F2wu0CU3EQnzWtFNphgNEUh9/htMP/TEH5r2O1eX1OeQiTg09xB2Erufesq4Bx78n
ZGU3UE7ftpKi++BHVNk1sIDBqFQEokkmNgCuS8+/WZHo2jGkMLhsIzoqtp11AjVAmsjkZ13x95GR
0vmXUnm5D2d7rHvAnNphLx1SP2uAaGq82czTTQ12Fhf8aS40PEuovTJkGW/MSYAi4PouNsbs7X80
wEIuYG/VP010wXwYJKAuWynvFW44OjM01d2z/yhQK6csjqrZRdsmNtWlm2XUc7IGQFtp3eNI0dmT
OL3DjIVZC0lD8FIBn4gRot4znS7OwoDNZrqaRe578o5LcjMQ4Dm3fZdHx5ieF0HpPT0nE7Eso7FO
W5I29/1gmURHA+3SY8KMjQjueSfHUOq4QIRoSVoHB3RjX3bv5QnoHiCrap292Nq2tNR3rWSfXKql
Vuen9l6M62l5HUKFEgCZ6GFRGjlGnG+zCWuZExMNlia+fHEB2o46gTexbHGUTf548h4mlik5525j
znOQgkzwddIoTVZba362MfoDPn8nsngOPkd9qlgibcvNmVWhAUEq+QpG5yvfUU7e8IKUyYN2Zwk3
VeEnS1lfG+0iSY+70EjvEwGn2zkkl20qolAMVpmEQSh8AFmzH84U3sXwhzPgoVoU7pD4FjqCgbx9
KJiIDHILUA/MWKdfjB3ii7ScPo57pd45n6lcgwbC5xPWjlgtFdbfvloHQhu8/v3TK6dfWhCrHUjl
N5rWveY5Yx6sQRMeIg1Ol45XoWPhOX8aBxrvMetDnw/kgpgMjWsAD2hOsoAh8iMQbdwcSgSxQ8KL
Hrkq/irD7H8SRFBvCOMR1Ln0kaqk+qekwtIGtj48vv4ABiks0ICf2fQfxgQne1dUGaSXSTmC2iid
bmdbPIedtNAS3Nr4phR2yOxENdq1tn0PmjY7fY3lbgpF9Wa4UsqVaeHVKG26pK0RQAUwqV1nKyxc
PEMjHtsk5TQB0R39qC/x2dq4mTVzX2ICqdQGaNjDM8iFep+S7t2ZTyyOHghjHFQiqUYGcp3yXZbu
lPhoHNaAb9Fpn54r0TYWZoWhLwAv+XPyWVxMp7D0nsUWCvnRqcvVUOXOHCCZqDLlffvyNgN0V0yV
pW93cbdSZDisumL/uarZXgsUCs7JKlHkS/9k6nvHNWWY31XM/KGIlX5kjxuJ3BRWKX/RHksQuIK0
fIUicOOUkRZb4ekJSOCX8hMxbmQ1mWCdCIpvGSkKhJb1Sw5RzqJNjC2Y85vA9KLOpIKmvpCnTm2v
kTOwet2UlQE7yZ8gF2WbyufeyQ2zWjj23XDambaQm1vEvBaTVAUguF9h8p+1V3kOIVeAqYip77C9
CAbRlOVcnZsnRd8XbgQ8yJ6Pvu8iC0RG2BkckQ9EPxC9gopE3uj4mblVxDyDifASADdiUkpGs9nJ
RlpxoK2ne8SkP1wuxcEk4e0+KG0AaBBUIZSuxWKWnNrpO4MCMxDppVCg7LGQ2sEr6Ch4DdK2ZyAm
Ay2uRluKsl+Al1RUac0WsvUy9gFhqVnVXosC3AqUkcKNkPpFhBsi9fl8d3sSaHVtZ40aFQXf7b46
ctLkI30MlORgRdvlY0GybBcTGNAAnt1EBmm87rlzPgJkSvXlnLhe7OTVKkGWkM5Es6aXwbQ/s8C5
UZyjxL4hzcLuPRQD4yteA5WYqCkREY/oBjpFjCKz9nSyLBkm2VGPNgADc6V0pn2Uh2jmjzDVZ0T6
O73w7BVhUFySFlOVtSDxCPAMMKtn10nMtXxBTkb7D9kOrjid8x0A7dhhRp3QLuo1rq/A4mcm1Shj
DuWR647K7QC55WWOGHM1l2brd4nhFap796wcMt0Wg+f3M72SuYYK0XbWZsJZJ+iXopxd9C9N9NYX
weepzEHkddaSO8MIKdtsKziZafM338FuFBns6oZmOCtEPDPw3ONsveU4G7XK7i2jujs1zT8rbwG0
w1TIs7SoLhx4zhrYAQRWT8v700anweT1P8ukmtPt8P1QIJLalW7MEjyKINzVHtz+aOuRr+uryrIr
D2ORI/CIOofDBXNraPW/X5pK0tx7GUZqr6qiob4nX9y0RvJxCPsNtenQOwRhiow5YzcocJs/nZ3t
POOJ8lxn4pJCAYkt0FW+hLD5QetJV5FGSty66irM7YAF85TwhsYxyrCql/4K/gvPqX9IiHJn03KX
zi/f/3kiLjCX1c9186aPqTpGupkpl00mG0hjOfhgTPXnhxDFRvPOqm8PJN9KSBTP/wn0YakUaUdB
C3vvW3qo4z+v4DreeY9DSA7HrzpkCh2CdUe8oxF9u6I8weLHupaUTzMStn8+rWwq8hDZdlKOA6RN
fGp9UQEnkarvywSD1Bnea4aSiU+PywW0dXvyg+7olMiVYVc0iJ+slhBKLpYC7qWaGk8Z+rcEKy9R
+/xvyGb09CJutH37KwoBOfguMkfrnmbCgdqoil9jRqKWDRH4eKfsngt5jpGKnUMlPTMbusRPn1qp
OoLx/f/9Mus1oh+xbC60o7QJVQ44CTf+OCmw9XzDO8JwH2Hnqtcp1CRTe9HbVyng9ZNp4FQSS/rw
oRtt6GDU6V3wqExC+13X4s+wEZXo1Sy+J961S5JFP6CJhOLkigewtwDKsCEuD0e5T4IF5xpFhb2x
aJP3TdovKieF6KlpAXowJ356tMK4m69l9652i6HAMeJWE6+uVOht3lsAtq6Z79R5XzQ5WCxllrxA
ABvDhuRMCXMyzqg30WblWUJrrzjFLlU+YZVBMw17TgFNllKDFxgCk6M8eeZG2+AvmbXYqAwy0cTR
uzqajhuAecShchiFbP7zciuRCPNtxihDo4JCW1x/9FoXZe99SSyruTPh3d7+bnYhormPixA8sfWO
B9RAWMVZMrB7WXK7960q92MZr689jAjrxVoKErJ2n5ufaRyF0c+oG+SKidg0IwL/ssclwGNBD7tf
ymiaxheQzSu0g5kWOI35xdmRa6w/gjAuriCMbxLPrCWThpdBbMn1vLzWVcfYTXjxtToLu/Fyktg+
U0gTEFGqGYdDPA8CK8Q8onsCCWwZYPysAauEl+YNGBF3gVW3FFGGBLwybPVNvHXDPCfXTiZNY6R9
q+kgqqwUhLOSwNYZaQS0zFJ72q9lv85lUYFzNQUHLxVTHtvhz1NORJguO1Vz9WzWgok228kd5QJ+
O6hlbnkRZmz+5nRGNWzxrHKR01IaD+GN16AwTXZh2SFY8dRHKwyQLxcL9Y9F0vVp0ioscenz7Fxn
DCOX23t45KkSbCCTjX2ZiaX9rfDEudOjDQHyxU23HZezhsYFpKcmGWDRDRyyYXnAtVFZYOnK9Ryb
PZA47MsgOPQHCE8xl487RB1eZKU8ulX/mBd8bv+gZt9YJBql+mpAkd3RbPRVJCqedpHqbYuATGX8
laYvffsLIxtWNazcN9WTpJXmclMRAP4TXg7sGrdeYOoYKR3R9zH7xdJDIRCFIWXXasksUm0Epx69
r1mDQK2+4Vh+pN0BTouo+yh8kPBeQ8EMjADrDbUc1zMSm8beILn3hlTYaD8K61eFNmI5Hl8O2dAp
A6Q6JnJznJxnjrV3BHsHnrwIXq9VmuKaImCaI6rBJIJ/q6gtplPZeWHpe/C4hwZYsf1aKp5UkCkX
F/vCoilvAIX98SJxdzPuH1+6zq8DYgcdyhxZGuUhg7whuHGuoZGDWD5MzF4jxBo2OB03Q5SUm5nC
JT+SdWiwlaMYci6UbyQxzsfDx8/EBuWOcV/IYg2w3kW1HvzlZRnwTyHPwjD8Ax0jrz1C35Mxdy3i
7uGvSDJiTTSaFuRY7e4mbTIq4CeM1aTgQ31T8bzxzijw9GnJp0wRBK38jOwk0w4QNYQDsQqPoY9D
fWJOuKngHb8yDn6x9QCDtXiD5ssoLM/By63VsUh4Ir+pwW0h2TE8nZQsngWYbAXbxSatcziph/5j
WP8Dg8Y0PySDPQ8Sqwpnclutg7g6oMgcOCe1IcobOgh9AvqiP5WSfsDdK7Y4PmwXaqHuchBKJuHS
HcMkB6/IUkhlNnywNCVYMcgPsBvY299Ns4lg+PMRHUX9tzTjCy8JWv8IlkgHpYRnxegKV9cEv4oB
bydt161Vbu+pB9mG92nxwsqD/cQfXjGIyWqmmXmSaHnvujkSZqZIdq5GVTtwQgNE0XOB9G88Y/Dm
JfK2UorIOosSBwF3Pwvs3vB56L2tOuZ2JJ0aSQ8nEXQuRQ9tNV+Jj1gCDpBqdYmXANGknNFXgJK6
kcLpZVp5PEdMAIoPstGlFah/024+tw09W5FCghyHrRNNFz1V2ncG/YiYyzO2mfCrS5qi761GilpG
PUwW1P/gDB1Lvv66jWIMH+3MrQNycKLYqsLh2b62AEY08A6FEmbzUMF7FI1gM8Mgbk0o/zeXlC5V
XaQwcm/BoYnLxZ7jObcAwRJxLUJTGQeT52BV86AVoWxeLiSztORi9119Bk0PRUFP4OFhFgIHIcv1
Caug/zlMX5+UEjLeWZ7XPH0/07dLe0hij9xErv94Fypy3iGi+OWRYNg3zVVQi89uytaUcx7rc5ED
hsyS2FDwC5Dck0Ubka4waGijhg7wY4R2ARP19k8S9JdNrRExi8CNh6AKNi3oduYbbKJbHtA17yfP
pS7ab/azpRcBqVQSUSQAw+N5pJKq6vWQcpOGcrLMG52x74TaTUi2yT2vb6rwi9+Hpy1zVlBsxngS
KDrcXbH0xIfUYOk7W66VhpjfY8cvVImrDm8fi8OvvA9jXhYN7ty0/4V55elMGqPgS4eyfGQG4Bji
XkMUtf8xd7RryHTq5dRt7AriKDIhu/5nS5Vq+w/cvUPOWkQKStR7LaG52CpefSgZ7//OD9+J0KEK
desBcQYaLAt/NR24j00R7t6rBHfEFguCAv7UtyNj4Q0jKBGOV9qkGL0btiy9J100Ei9kKb9+IF7D
gIievPHDcvAZjkUyQUvHc6CvMVYICeMUaA1q2viVjkysU7SAofzLS1cQxUl2wGYa6UimJYnB021V
KqYYW4ZVHhktbz9wu1uVZtr290uZU+nbgPnslEJ0oibcTeHZXp8rxiQJ0JISouBIs6/RD4IztMfI
zjOoXyqooc3QqWerFntcGbY//PZNRmyE5iX7eOowow/PQHWz9wr1QzM1Y+zSTIuxJKXt6bf7BymH
g+ZaDyaI0b1K6ZctADifndKyg8/5TvBAMreM8srb3jnM1LGCR3W/0ry1DGAL4TgVl9nBmzyIKlzn
rZPNYBn/pKPPf15ecNLbOiSgMYR3xyL58m56X9zgcdAlLmt3zTFLVjYo2v1+8tRUPq4OdY/EJSoy
NmB0RvmK/2R7nkEg9oQ3A3YKWmzpmGxleKKZm8AWo9MkGDnhj9xk1zZEboeJIznXbgboY5L2YxA+
fLwf9X236f189qgblRhPI1KaSs/OyzDpkS+A2K8UJzNWAR8frckwq1e8HNwznZeoG94PeTZiP6OY
H2sdAiSUNFlJvI4XQD/xLhxYbNet+KIN6VcM+0lFSu/3LYUwXt+YL3hlDT5T8OpWN9D54+2LTmX+
txqOLcoP5VNeYnjK0IYg0A6P9PaqdIJbL8NxEnRrfoTnBqO3Qtz9C+e+UULf36NekmpbFIKutZdN
MRSqfBu8I+SEWBhs1CdjD5x2LF+FC1yS4uEuEnXhH3ucsGVZ2t+tPwl367olfApb7PGJCKXfGDXm
JKNox7FekgzyWvnnvKx3dZAVarZDwHYkFNSFOkjugk+QksXxMJMYt7uo2LlYgXSA7eBYPwQd+fE/
tFHv2/vH8b1KAdcWFcLBsas4wtNBQIFULrE5Ay/MueMBU45aE8EhYk+nuwqa/IeuhLu+Z4sCmSuU
6esgJAB87XoXXruJN50R2qWu9Xzy8dzmICtXx8m/uZcfMJkzBpDZHRtf2bnXtAel8cj3rptHcomC
aJptq2av2OdERrzgC1nWDTiiyecb+teyKLcNzqFfkbHw9GMe5QrH+OIoyr7Nkwtt67Cjyg1draYL
GpSEWJFIs2L4IpBI15Rhn/PJh4NJZeENO4fKmmaNyRXYeMPoWTl0IG6k+A/w4GGHtm2XR3oigDH4
P4FAkyWvSeX7fJIo8YmQEZLL6+nCBlf5OLVrymYQDBGb1GTm98v5Jer+hbsDrCzic61Kp08HxWgX
zWJNN57VNiILHEbEtQ/R1dyyX9Z3AxkaYY1tOgg3eQSlMKOhdI8xsMdcHbxUT1MHt78c6VQXCKcj
N+jcRjrSscRVsUKlIMkpZtHneSptCWu7Uho4AH/PVtlJ3u1qH3NS2PA2IbZJzIH76tDgyCDdQ+d6
/kvrYn6ezLUCd+bFsOrhykDSj3DsgFTBA4J0rXRng+xQWubc+tgslu7JRoFyE9f/3h3mvnduBOK/
irgMXBbfUjXQKBACHvvKbYoS9T1pxffr3E6WP9WYEMMe6c1SUrnxPH+dnGjBqoRUqqZChvBn0V+Y
e9ADxFde/Hu5oWrNofIRMu155l6jIirQK5jrlE3WacCgSkpTU9WMdkwQf8ugcTB42gs2SicXttCN
DsEivejdjoGX9sCVl9QTjreCXsmUgZsiA2f/J6Om7zEiHmUZ41wrygA8O8lzNPw+xacgd3UBgzIM
G+2CzRFR1Pqd6bcVjcujARYAAjdcMr6JedOARIHz61O38SMr96OmbyRwWgSaunoE3VS/kR5HG554
VmmUS+2Kp+1ioFalKVQ+GhNy592u+NSM+fQ6nmuIpESHXW5g17j/n0QrFF9cZctpepmlJ5JnPQl5
9XShLiFUq5NzEv4Co6QDWge0X7pzpkGLGJPyHHLeSgoH3iBXBp3sjJy4BUnwpg+ACnyzI4xVNFN4
Y7lwKHTpccoUCmsCDGNFBbQeo8gqCe4LYBgoMgqwI6QU/P+tcv65byTOKJ4ZHvDBRosteZBTALcj
cVLthMbvfGre+c7ZE7pWQyFHyn5OelpK31I28594nUmvU5QwgrjE9RlSszM/m7uETYeUxQf3vZrX
FnY0gJGcixpqn7TO1Ua5zKiJUf+iIjmvxnEBqNSG/RNom1Wtupy+pajis3nf9b4Mo22FLny3IVZr
5yUQXpS/JXWXBPAaUM8Rdb+OVxS+WmYguP0mjo6eaNxH+kSxJfjsSMr1/xy2oz4Qq2W0dmIivFqL
ieMwbOlxawSg5lC4EJqGj+KOfbPEKqvdiqe752tb4gRcNpptTP0SwRW5zT9rbMUG31s6+o0tnKfP
OXQ3kpmLGxHeyP0nTvHZUzJB+ef7Zf+s3POUewZcEdVlmDxz00xj+9O5BdDLX+yrVRe0qGZHS9be
fgY8Rpma7gbImmCHxCpcEcvjPoz3lZDVmqNjqcy0v1WuhR7YZMLG3qGmpn+b6vzECwa9B11LTzOL
OH9+NWwZGM9Jlf1d3f9vfdVc7f1xIOmOJKuGSU1h3qVnMERwjRBA+zXMkBRUf17D8XvM9QQT2KcQ
eRkPY7tm9dz+Zk7VzoxSSQrclz3XFmPSx45qp8E4Qwt4q1t4l372VU5UlBnUbiUSlDlpiK3yWP45
1D1cEx+TmfTrF1IgnD34XgBh7MNOCIGNtK6bpZT5yDsNungXNSevdznY67uYoSb0Fn2WcQYVugQn
Q4TW6M5mS/GDy59aNGU8Lgyq6z4seREZBkLcc2/12E/f9rYt5Ly4AT2Ekk2d4UkuvL+eQgpL8Qm9
ziK89AIKfjA5gFxSVPurKWwWvM/uGpGQLu+ZFpNbt7NWwpy7Fur4dYo2WkH8GpE4fJzQq7/FLmvV
m/wpGTRSrcE7oCLYPfYTx1tkfnQkbdYUyl5o1qBwAKMfKNtobLSbwtLG70+CFKdHj+aEG4QQI1bZ
SPviJykxx6fTPBL75EPhJ3D4xZxldp6ZPMaBvLIBWl6zwIS4oNk0Ymdy0l41t4gnbRy/RWSvsjn4
+L/FWMv69sZqr8vmCmqlObd5ZmNoyC78ygp4vKsEtIPiYApYKM2kaeKKEhGmE2jA4Wu6Yx87FgNr
tBzNtTABdIzdk63MucwB6Ycv1Lhm3aZMgzOxr+8JeP4OGPRO5BoBLHKhIQ4GGJ/RXzZcztXsjzWY
O5G1mdizHckgkist0B4Pq9FFHPSvViM5a637rikdl4TdYams2XuOxBTsy/mnCFtxCzjF2qqqHmWg
hbqs0HMvwMn0G880oeOB5Br/A2bhFTbSdi++p7zNPPoouDiYPAAj3/i3vlJVRXNVLi+/yUrkW0nj
nJg3L9c5zO1RBmuk3Tm2JZHoSCZ2A2643npphoVONhM/xhyfTeAF8xqtMhKJ4BL2R0agmHA0I04j
Z1WY7JYc8nnhwSbHqG95fWSFUhIXjBgefJqPVHqSBAnplWWqRsTvkVRDmNb0G0bHsJ5I1MjnxSbp
feIfUZZEqrC7utBJ9vu/H+Ww0d2x0iT+88AzX2l57ELCojAHpZRIVsL4YyRlv3y6SN6kCIqxIG78
UNPF1h7xVEdL34JSA2JHGiwdBIaJMx4HnUVXAC1QSDl7Ud7p+1qXU9AI+CHtyzxFUNEQDgOsUUWj
V2mXiN3W4HEAn6anCvwVEUGi7uDXV7O7VNpBCge6sKaVtH1dJz7S6D7u5sNljs2u/mIQ+aw1CRlh
PohtgZ7/MILLV6RlhmDdNn1olKaVRQEoBH1MbixRUjagsi4w8fAQnp2cbYuaJE68CI/DXD9UUshL
GuKZI1BkaBaOCl9GpejzlfC7GEgDt4UDx4qVsyF+FCLgQnRwIaBCqDxYwpyLOQOiAxnw1nFixlDu
DU0OokZgPvp/EYhWf3SAzeAOn5rWDQf/HoKmuskROpWpYo6U4cHa0dGd7WkJgfw76SgBD/vYWOp+
RL9RUkHPm57ftOPLuWgEoJKD1FCzMsJpvioxG/ni4xoEIlEUb1/PGTRdV9Bpwo1BSTrBXZmsR5A/
4RWuieU4bPGllsliZbGOEqRR1cEQBbcTfrNfLZeWzxKJj5q+hmQ4DQW6rUVn9Lt7+ATMk+PNcBI5
ItTmdyJQKJ0JpSPFU4+7vv0NV8yw4Q8xguOSrNM6nTyfk+nsCXwNJrWSb3zHNd3KwfNoYVFc6jl8
dvFTXPcoexz0hhzD79BNZB+KWxfWl4s/MpUHobELXvPciGfGeIi2tMlepqprwW7F42Hl8zjaeT98
Flks/KpVyQMUFlYluE63BUa68xMdZv1PYPf8wY5F8uJI2qUNTp40fxaPwOvJ2uFtk8hrgNm7Ndm1
Ry5htLq2hsTHOr2tv/w33jx12hPKqTFl8B34OXEwTF1r3FVp7qXIk+HlJKfuzbSn23OPflLsNNGm
FHunn4yTw4kHhQXvNKwefAO/1qRB9qjRMKX/kccxO+TS1nEzQm14O91Km/0buDK18G57K4JaAYU6
xYjkU+8m4ZHKYX9PCMaFwRECDlOA47jhpwJsybxIOd1lZ6UV/ZgfyFa+2Gt2haeljuYwwbjTtp7m
HKI/OS6zKoU552ETZzVhC1vh10Dt/wnQFBzMpJQhbl7hAq+fWkyABdUOksk0O+6JdkfumovijbC5
U7gYUZkeUVBONX1AbhWHP7pELNrxZhHbCgQi486XUasnFjvTnjPqZtdgy/kCkJp3jSxGH7AA+mtH
Zz2/B8Wzvq4nTcZ2NGcFSw3lOAGLucF+dh/TxJc2cm1pk9NIfzX/lr9sk5BlbIJugZYGXdEGOFyf
89zhGIDOPYumHSu+J8oFvn7VoxLy3MfmIOLRFu49OB37QtPtmlfZlNJEnljg8s7eE/d5QXFR1K8a
Q9l5qSre/4mIvzF+7SKvbzyFBCrpt2YOk4lldnilILZlhC644vz7JmRBOm+zkWT5jjSJrdG0CpRj
JdnkdN0/M8TcBa3vFlrgnacIWmqeIjrZXi9/dk+h1+LMqmihMHqW+ob1TDe/J8umt1e3ji0zgA+V
uwQ24TbFTu4iKKBpjdgRtaxcx6+cYHZwk3WXq4tHxR0Glnhihi7fi8HkJMI8jeacWH+mpMk/psat
V1zX9PtRI0FRQEw4ANC+T6lEpXPnktnMdlfqxvgIISFAKH1duR1CchhPOzkS28xuD2EjAJFJ2arK
qnT/HMn/fjAJyhnrpZ3k4RdaILyGxB7CiL/gN5+qy3PvpUSMDvnXnzvg2a68LDiXY8M/I84jhjeb
54r5BTkxv7cgiZvWN/EHquRNxe50Y1Z/8899RWYjmNP7ruypSbtHjexV7NmUH4u6LSJ6LYcBUSis
irQZ4GQR+LvGHn9rpdoTin3aitDh/ylRy7ycw5ueoXrYbJQ5D2ldkMKKCy2DQWjgmfaXjZuc8WSx
G8BOl80DsxPnlOacEzOqvID4SQI7TRtZ43Jl+zYtkLvf520HDlIV3vlU51wAzTU8eengTv3JOzAm
WCcafnXmQJ0q4mlVc3UPXyjvQns9lk1/GNSrdArsw5mIoeqVZDcezm8dgklLmC7HTWo+jMyixXcK
Kfm5FvLif8dbsCYif2UancrC/7BnABuaeRj4O+3Ngz0GnQ/PFboxu1i90v8MTlllMF80p1Vlq308
scrXx2PeNfEzCjasTH+fOTEtMtZw675SmiQ6a0LZ8kanhFACTAMHmIrdSva/LyZ2RmJUspo3QVSn
gPVT0pL7+bJhDPCqtgpQQblO8WnbYD6MXYGMfveKh5viXp7i6rL9q5CQlIKJLYMnGphhfpBxcVQl
b6kZcUIk/YBH/xcjTrHui9sSiaGa6JmPpp+teimshyzqQSC/+iAB/0k8YId4HWP3WxWA1w4lrOCX
j8Z2t2Q6YnKoz8gUj+zwDJbeK4xnOt9eVeQuXdDXrS4xTbkcL2OUJGaomPRkL0Ss9/1Ie7NzEztU
jEoSmSP8DGM8SD+KIEWhV5x5ar5asS7NnpsDmZ0v2OCl0JfKGlpg/n/MLF4jQ8g1a+bOkDKtrnSw
O5cbY8IugwVt4gjSEeOJikUgAyAyGXi58XvPkub60mMeoD3VQHy9Z5IoY7QBWaXYCWtzqeKzyaXk
Fb5IuitB1+IBUpCFwx9W0V9sr0suBT0jaWkkEusoiW8algVnZGMngF1UBoKrH30ZJxZF0L65xTF/
AiwuQByUn3/cHgRkyZsidNd3Qzpo/bjLJ2etgS/hbvl2kv6mBQHhWD9ezUYbZ0w1Ac5QRqrbfv3s
fmnFqDdmXJMfGH9Jk+jqmru3yA8DcyOLXkciQJ3mdP+Kp4yjQstey22axKkaTUh0j3hArcONYDdA
oWpHYuhiDedmoc/5lbk7Q8Ib8L7L3UniguJA4XrwLioq7X/4OY6QdUQHZFOb0sFRcp/qD9HgqWtZ
I0/w69FOToxLQGUhL+GGsX2lopQs1Q4pp0z70fmG+PN7eoICjxNpRuN3yw7rWEcvtLahPzSO45oF
Nvom9tRpeqzhWGAOU2oeNsly6EgrXUpQta+e0DJMZkFz5ZZHYzMXHbNGHeDWw85v2DS7beMFT3cc
xnJS/D6m+Pv4bKNkfzgYaF34u5L5aJ63tOAvsJg9LSFPc2p2gSavmbSurCIEedCtdS09oLymr6bl
LgXisdb7EeEi4PLBXZ3/XYWx7QugsQOwO1IqforJDpG6r2/LfUmKHiQFFgrpLhRqrBLe4qbEM+En
z71UONrLcULC3zlROJSDyEaN8VdUxJe6BJ/VT6IlR0RbQAcsgQ1x9B11va35YSCJeD97C2vNkdNE
x3RIE4JvKdO9co37iu1RLpTZKH5CPVyQUV+cPem+BElTzXuyyfYo+Jea12RQ9vunq0xi0CX6ZnEL
+J89YqY86N/s4xVYPjRZhr33K+vPezU5sDPTpbuIX1+KotR39dae/e36hLHlZmCo7H+fvd7HlJsx
sX0zxZdzPI8thdVJeDWIhvMkgzRsLRZbT8onogaAV4xpMZVE+wtD7wi/Aok4NrWvnrG04aQtxOaJ
NDQCQJzIxm22h6p7RkGTdDuqfMlGAJZ3xdCpjVYMRZr0yt6SzQXQZHGEhR4fGTdcjeGjBW1dlAEo
5cH9mR5wts7QwP1tJp21dj093/3cfXHDsKNSpfTlp1PFrByNlt6hA3RuyX2Ce/m20uKtnKdz/piI
NGrjxZ76lydH4++3wOocWj1PUU5jyNNV2c+/6GAm74qFy6PMFsDQc05VI4qE43UmL6uZct11ODAp
PHdTSTj6W+m06J/FUUXYrdUcN2q4BPpRkaorTuwFAheKlAfVMWFMW8L2uy//xwwn8jWYOo37WWCQ
OtQVIbAmgRKvpyxyrPc+Yd95rD/w6LWJo9HAf28ex7lC6agOJ15Zk7bE7o7i9p9ow6s86pb2gOqW
hl+my6RIYG+KxBi52p71eVqd05CzFTaoUdK3Ckg1acLYOiV7nz1g1djHHaoW26fBww5NynirBtBk
BqaRm0XUY31peumtDEfiQxUq/wkYSYbvntvWLoBCOycyiUNpSmyCRE7DCxJxuAPxLwIwM+0NDxyJ
ZE3dFm5vQLFGybogwyq6j7vElq5CCZxYaPPjovrE3K/fNeCxXMIKvHiSR8lhNAyhPV6aBSJYBnE8
RV5ILpe7dDILtHZeC1CnmsFsJ4K0Nnw9a0hrHjzBnsCuSYpPAjvDJA2SVlW3w6e4fvDYh4ciIzmN
fzB8a1B6Fxi9ATYA9TGWreeirbvbybzMrqduF1ow5o9kHoryCnHnKg5hMEnsxx21Afur2LZyyTrX
D4kZAMIk+H/0zVX72NHzWdvnw9pi7kWRy8HCK94N9kmAQ8epsvv+JVb94zf2z6C5BFXpR3lxACEC
HKqGLJMZ4i14XsgYGDd/2GS1rz76aHp2AsdmTp8qg79sJfmRlMnRDdc819kyF6zDaQaRETRVwtRK
v4rpnxsDVtiGxTK0wFZrrAouYqjpnZ58bIuBr530RBqmUYAaVv4/EsrQlNMLbe5BUdrKiLh/algB
Oax99XWr9ZKPwb5ZL7MReaJcLPaDL9Qno2yHxYGly1xROrnx5J2xKiO/oGgu8RdYVS5H5/p8AOZH
VzJPjAh72/Igq7h9fNeUX/+rKO0v3gT5AVl/gk8I3u/UOFYxy+hXXqzPT/cGKV5jYKJJZ0Zqoz22
hc1lbq74R4krbA9rSN7M/v4aVaZ1G5kMjvwwKIxGezouvkXbnNQ0+SpMp2jdm79xFJna/FConFFq
Dz8ij4E21qs20R1TR4BEqUnJ6+VBADfdOlJfhDPQeBb4qhcL8xMGzxmBc3c0EyY4FgXdH2cbgKou
jY/ihFs70O1ue0CiptPhBmpEYXqejJREh6drRNyTzeb8cjBdsoUcu3ZXdneB8uJGUHxT1I6BempZ
2G8qjTHdGBxaWZgGJGzLqiguKveVyAc5HVK85ZPT1B6zkOK32fwnYXW5fKdi81uVW7iODKdmYFHn
oMiE4yawEzES2btok9davZ4uMn96QGn4LN/EpEu8FTbb9+CeP67jCjZdkOYwjXlhN+xw2VpX/v0t
hruYJDHCtZcMFAXSthJ5v955xqcKTNYgbu18Sml0DAX6Vsv6NF0NB2DyOY41jQuGD4iXJQ2e1fDP
0527/ezEdihwWhdAy7450stM7pTYURtK01Sc+x/SxDQyhQWcHKcV1bQ3ZnJ+qrf3IgWz+jadeRmw
9cCdf1kiEvVY/I5+fim+qFz8D8J+1CmX+Kf2cX8hLi51oM5lAhf8Ctm+QlcyhYhea58nnJwsjwPt
HvfEKwVZTJpaja5BaWzLvWboh1J7px04I0yyxeShmSzujdErRImBZP74Ma4RsCQ32yE6fdofb7ja
feKU+LUy6liHx13YmvFWmGz7A3Eyp/jFJLynVNhfWHmOec+Go50UsfGa3zFWyqu2aDnSmIVWWxEK
CkuXu9hKn3BtSX0E/YDL6pMEKCw9dd7QflgwPUIln50ZEiPeqslORhYmuB+lVvJd8DpTFgoy4TBp
cIH0haQc4fYN8heVAH8wiiNNc+QOrUG5bZWZ8gAeE5Td36fL8Q/9hQCHdn8CoUtj8mFqSZKYk2tj
nNswtGJ8AcfTyNWNfEq+iQjFqn7YtYRAnwz+BVF7S4QwvvlpnWeQDCQjcuqbk6Vl/T0foGOW0Jku
gKSCBDKkPjcXr2U9p9N+sv6mkeLpQ5gEgyiRA47rjStXooZHW6hi8d6gY9+36CtrFbvSyC76/QFd
yp+yvrAOWp06uDWXK/r2BHlYCozT/cdkT4CtX9RV9nehWDySh8HRGV4kMO6CkDtq0LpyYKcZKGB5
gYNnBq123Cvai2g9CcScJ+fBB6OA6Q+tUDaqRf11x4ke9JoolHAEdKm4DYlF3OeVp0ny+Vk8PshT
zQRtne5m4S3i7DXh1m37JpxeaoAHZA8Q3b3hvQPKUoe3TcyTm9vCEZrf1ygFCPmkmEbEP+yKhLpA
mS3SEGhyM0PkJ9zjqID9cQ9nBtjqHNoRcqinleQdLXyEjpncjwNOwHxDWGFFrLvR3G9d+dIuDSBq
vlsAvld3RB8t6w6KnHv8+Jxs+ezsFCZozEu1yf/fiwnZoOeYDhmnjQKdgCBlJY4q7gRKyH1cPb2k
Mp2YQG9fLOwUVi0w+oYDGUR0lgdYioMquckBTHfLeAck9PvbpfW7ZfrAeuZMvGuDbjwieQRp0J09
GhYeBAsg1rYACKAv43HASzLOSLcJ7meLjLN0xPDCzkJwQziNLVvSQ588phLi23WzXiFdP1yJvvgi
ezeW95pnXf7yNn/IMiHh93WYwjVkuZZl5EP+CQF9nNfyNmoInOLVd0juUXJAGxNys+ljFkdKP4i7
ysmX3mnEPdI2bD1osnSGQYNWilNoOUsGmnzvZSy//d3JCF3C9yjMEoRx84tW40IWEBy2asY5fJda
r/xrL+xxV4OagDScUgkTj6ihRgUzQhq8fPdS67iSQHnfWBfovhmfTDReI/Xn49+yG6dR3I/g3OtN
ylzVha7rDwWTYT/jQf97rERSkAOTmwRXSV9NzZ/ATsAiQb2PFHF6oAilRCBTQAZgUR9Mozgu5/U6
s9dk+rLER6dpi/F0LzW6ISpkwsh56PLprwtFcO3KiPvIqeW9EtAyEAwQVyFSAIbI1fLr/pAIhCui
WTZXpEVCi7F8jO6up+ENsGfoXu1kW8heOXf73/mp1G/GPEZsgtEEuD2demWXDRX8CfHJWPnYs81o
X+EIi2EtQ0MqrbH0aR+fJ4IYWs8Wm99I2yxbtkcc9TsftWszgzibHBEuQ+htrwKbkbAWv4BPthwO
ll6wZkgBPxa//tUbMV9vE2YfXNOwkKk5yCNMyr/pTBOv56iXi2S8ho+mYGb3LtMGn2SZY+RSI0qD
mBcUG3wk2wLn7Ef7SWXtntOW6jQvVkwET+m6b1vMmfH1z/DheKj5bm2mWmBVxq6B6Cka2H5/+DIy
9ghdQUdwhWgUMca/JyWiMNJw3vtMInjNj70uMBLNo25Ue1K56ZxYtjK3UhuJJMl0nIaRjlm83DFp
uyAIzFLEIzudcVh7VXpBD9LYSoR+rCJSO5vMNepHq9GSBMyG2qCW+Ymrym01wPTu/nrhc9fut7e3
Roe3K5b9zHUcFLjTjRVJCn9gm/5aA80AVRBxKTttCjWdauMXs71xNwN4bilOnBT08FtajWnn0HZm
KNZbmnAF40qFFcROpEvX6Gy+6vslKNp9wG5bL0DoY/SjKZtYCzKJzyY79wyZRx3hieVS/oLhlS6u
s8sKi5/lhbq5KoS8wPsmX3eNyl1laD8CkwJVDPYj+xio1m7Lwos2T/WORLxzL7tgjazu2hIVCT5e
2P7Ob2/NIjWXOuI8/Y2UZmrOq2cwgfO9+4/IlABspMeDgQZF8IqYKFoOhQqV/QrqveXarnKZ/AII
W+KiAOfw7/bP9THCe8f3NMK9/dhjxaCyZJla8qRkMiWO9rtz1fwWEhjySwS87obWIT1z4twnI6m9
7OOo3TrhpiESWAvOYH0YdHpFE4G5ytxYKDj8EUOYJVoGvNvID8MBNnHgCHVL0ZKRQ4hMmgPgueQW
hJTtPCRKcbX7F0wFtnj8iaDDpbsoHl0FN2BT1C0FPUSfCA0zyInyM62t478Pl09yuQNofnCALvcL
JjfaL9C6GAtPNHXrt2GBd9DmHDh0igMFhNtC+pp/rsvJYJ5wecxd61t6c6L+j79YE5VEpCMFmD5H
ttZ60ptSijufUbYTGIhik+dz4cum4Y4Kev3IXN9Ck+7LjViAto9xIM6e3/kUaBKUSBcN6NOczoQi
3j8qv1l8ajC4O/zXmZsaskkH3OIBb1Cuo+NKAtic88YnRAtikrmJmzcyJ/v1SWqPxa/R+VZaJMUy
JXR/PdsWh0czLE3+goDQ8P3FwUuRTI8pdu+gaCxIQavzpVWm1Ca/WeOAENd4sTjYNL8FtK/YJv/2
qhiEUBxYWpS6GHbYV9u79RQzpwizypPG7AOry7+kvAao86XqpptpQyOyM4xQI8hvfywM0joxanPH
EU+5WiKAWlvzmXNuqsrMq98kE4vRqG/Cvg/QzrJkZOqQQj17xlMrz2dlvA24KIl3iNpO5BbhXItf
PyNL5uWoe87NCyutQpn+TERxJvbs78lsHgcD3G2W5Fb0oLDhkEHvbdkqYPGQ4wTsVMC8sLErYYK7
zVFCntr/VhGsr/Wh8NXNPsbWC+eH6Qpi9y6ww0GdotJtXvXZu4Pq93Gpn5gVqc1JXzV19FwJ1YEl
Hymnjk6sClRaz7sfzu+wRxwAeolMH8sHt3nRlD3Yk5zrT/PZkVosGEcEbAMQREAm/zBoRvyxKT/u
/Ii9Acijs1+NZf71wOvm1iV4toZwLtal0sFHQlyfLlURqdnboD8VQnDbya8r/FkZB1sghcUkZKWg
2LLSBaHBWK8wDb63hE+aNgfSCVXYVvvdfqnaw4D6xO1Xx8zg9Z1TAhFZDopRd26KSMtBA/1mzMaY
IXcIl6Ie5qfgpnBm4JioRGko6GB/XPKTmyA+tSoA1yyy1pC9WBkMHlOw0yGVutwQmbLpcRosSUax
GKKqZ11eaJpODhdQ1dr4tZla5z7TUUuDDV6I9ICJjlDGxzMSPX5GL55r+KasDg3zVVPQ1DdZM8Ee
SK+GPP4RHjedU2Dn8EbiewxswIuZ9owImHvNuMpeFULU1eCMZet0VMv7SEhMAoQtk2zwNiPWCGgc
QHQ2CPH90vr2jA1N/gEh2IXTk/m8RkXtOpCeYb/CwrC4ABl3zQedMkqRaSQyFQ0UT6rV7igfEWF+
3jr3Dlsh3n29aLFDNmWftNhgF6N3EtTG2NZ//FcN1LEdm4utdNamThcnJ//QctDC3q9jEHLW7h1X
yQWlxJtwuqqqJoUvuodgjLrehkW/xWVxJPJrQ0n0Dh+Bw8XCvszG46mbmRzEu6DCYfBLsifPhRHT
yQSD3JqyxklFbugPETwSsIDeuZiWLMpkpPAf+Yo6ht9cP/w0LjJDICUJyd9IGC5SemFGC4GxW9Sx
u1D8Bsna1gIKdOkrla2CMyLm+ZhMNVr35RQT9Ym9aSQow5bOU0CL+feOyvrMET5BsUwI2KasHjx+
H3A45LaOtdvkAisWGIwuY3d9zSnImc6RGseEWOrDV1sjj5xqJDltXwg+92mdSlm3fYlf6qRF4SqV
ckuMpINY/NvLcVlwV8Uk0lwJDJrhagPkpmAsyXK9YSAb6Yx96XoiskXd4C+xO09Jb0tFg+BGCTVj
nwoQu7p1jlaO9ej3yPU0AYJse7A4a0UUaeZx5H7sdySFr2cDY68e2yKGn6leS31Lc11ZiJUGGsid
9vTVxniUDi7dTSQOnIyelHeCqEl2iuYnSeORKkUr5WVxjYAUsk/TxAGCS+MaLtDqZIq6L8b7XaFa
bliFzULkK/AdYEswzPYnG3uPkKu4a+DOKzVqM4RIsQu4W8FaeUpvBQqdJZs/gQs9tg7S7p9Jdxz0
PEuXpIts4lwUvzBByB6D8qYm/8QqlxFMORTW88veIsOCd0/mXSfDHAZjQkqPlnqqQCw9guTIpFa9
oMwENtOeKCN4RBojUMLN612OZQDbW6ZR/hdEnHUkvGldV5gUwvjYiGtDMhoNru30XlXPzd0x0sF2
Dcd2D/SfMeKqJEsIH1yKnL6GRk7sFZ7lqMqoCzlAhUKBC75ZmY2V3YDunyRWYvwTDymrp+9qXHIi
/4kzq0fnWhqNnWqwLLhz6KZAa8f0d8w8Un4XQo4mgY8r3tPQVkcWcp75/gk/2rdawpfTJNqwTAvy
F3jQBbLuZaJ/XTKmeziyvP1GRf98vyq3KzFDKk4SFXJbeFr5pT+dHaWX7eZZlhLUivtAmmQXAhFy
nhs1cfvPrQiFD1MaGWz7/l7N3XAkLgnuoB+CTLSx/BFxsLVAo2hsTOfo6C3y81fk1VvvOS1d3/WL
7sfoo6YwQuKqy1rv8KJUz+hRVLghQ8mtbvPFY7wepM5OyIRVVDU38xn5eu5F4E3ZtydCkYEgZsUX
sD318hFf7vJFr9LLX1LpOWMNjv341Dfubi1eDag/kGgD4AWuYNI/axr7x2tsxbVtQHhB6Gmkwc56
pY5i7tcN96Ia0q928/udKGaxGMdeA6JnSY+gqDMdkqtaQvEDeBBpa9mCyW+JAeLscttGbwMfO04P
W7Hl6IsPAo2svdg6fKJyDsAAhTH3pkKkGktw8lJ+Bn7nBSarSLq/elPwUlY+23DjVoh5NH+3PviQ
9yeiLVIjhAjRmJz/p0NLT33MBnCi2B1SEx6l6nV636KOB0Z2CFVgq4dXhg1PO+xojMuVITaD8x3O
MxboDBJ6qBcrdgOffA6FCBXuqyYavFliAt9O18LSdAzO3HURoTdvuUftN3Qr9rquOhDmYPKZKNO9
BikJUgK2JqYGUDMA5E3eUhLyvlKy0/nNYU7KUVJhpvuwdGra/syt1j7NPDqN/6WVzh2JPoZ1CZzW
5icpA5RnUfUz5DR9f1KpoCHf8PyOggGFfzEhYTgEOBOQyT89rF+X+6HdpnVvxtNYa90ICrmbv8h7
Gm1gQqSJ5d/wqXS5ljRElxw7emiH54SayU31DRdV/98bb0nlco41iYuD+++GyK0ZIsFDm5kUl/oq
xlG/yni9WYFAEkzLrZdgnUyBlIaaNQxGME5aUpybBlNOGJH3PbV9zQ5u91pmiNRUYTdp4Dhqxxgd
8P+xaixpBttn0ckXQQ0YHjJtXPpSoZybUIlqKzQ2cj5qacxsWuwZm1e7v6A24O0eQQc0VBZKfVdX
P+JRRfL3nrUMF7DUz9JsxM9pTJ6emcEjkYNK/6rFhxjIhSdLY67XIA8KSZvymWaVXWHAWrMzAb74
vrz2Sjmg28gomCIcbn1zPZtX75HCkIScx1YBLnnrTiIHnZyDhSEJWRLv5hO9W5NM6VBu9gYCPFPD
cE8g+EnnFjpg3nyGL/14HnhgXGavVClGPEEG6K6n+6aGhfdx0XbABVe8eiJsNnQEbMXdHj4pvmpf
Behw7N868kurDRNBnomHrxExWfhlmC7vRqE66Q553FkWVbmG9uGirVW/9z2h6c754Q6ZmDH0pH1S
VacA67JnwCr2hbRQssMreM2lt8JLDQFBeXYQDdSH7kGt76Yo8iXhm1Yt68eEPRVAAzDJ1PmhM0oQ
dNzRUYLgvyQESY43UQnww4kJYGXn1gU1inGoRsUZOj7kvpx9jfGvKO8OHo8g/COmnjcUdv1HRaH0
JuvAlqTYPrBbpxMG643s+2s4HSLg7hAh56ony4HYqOgwZHgVIUFkVy+ljOUMq7vmVuejO4rVuglB
erYo/Tbk/aff5vzinXqkl35X4sWKV2iXUocknnFI+CnYIoui1q94stN0Z9kZNsHG3W6PsC78Fr1i
KbK7pXzkqupzqqoABMCUg9OtFl3+4fn7WIoN0j2upGGtfO0ZpZPqlQb5NYYg4RwWjQj6yALNMJAa
kJP7o8DnqJwHBPXf5UdrhRcSyQN4qHZ6VCX5QtfZ5BF3BnFlxqUy8+vBI6Lyd5om6IW75psd1XGl
8CVrqUdfp5TkXeFmFqUKT8jASBECOuFS0P6cHv4YXsk7KeAx12Z+FJp/8FDaOiPoxZBR89Az4w4v
V9bGO91Io2XwnSuS56KB/qsiVNHNktM2zjYFiQaeZtdyYoUsOCagaMJ7jMhRm47m7q9GIGHtAs94
bLMaGjxQ6TBhMFitZA2lSlSeaxWdVSEyMAR+NcffGANFRRDbgIK+qW1zbaPGp8HVVrn0Eq+vaLBO
4eytS5Ap7sGyrMIODVVi7SXrTK8/2jC7Bm8epczw3nAfJdalgJMLEcLvCHozr5O2fetFI2jt2i+f
JQRDIDiTGSk2FqqzbnQQCDph2m664MDXEJxYD5A5KslF/I+iJCXYOXnoNNZ7AsK4VeA8n9kguDsY
oXwlZsP8CcOq+tBfz+3jM7yp0KuL9bDJK5zmcIN6QXj3gmLpPQGieXaZ4Zurygngu4p7lbOHK3dS
WTnFuf/L1BLs3DZUcY6bivIMq22tDskjbgYRkw/nTabFquHmrnAXn/hN5tIEM83o6u6gKnpqVfWn
Wd6MwacrGWH3J+yTR10cWSpfkvO2oGJ8FfvLpvJeVzLk61btcdaq9d8gPtzD6He9oweDD7ZbKVoo
rUb0uUzZ1g6etelKvDmkN9k5E+gptIPDEoUB770zC+cNmoN2r9m0To1bfhBfiISXEPCNjHbtcypo
fD+yc6zFkvge67RnVQAbnYXgbZ++iCmOHsRew2pyMiuAiZOZe7fgt+HAI0tiHljE95649PiMRhxP
Z+v9tiHW25Coi+tHdthmJ1kDPLzSkT3LRERlVk0/48M4jw9g6yM6nU5g9fuqdKJ5qnW1UP2EX078
aBJBfmPf2dBfNq0//QUpNEw7eE7JCwWgsHFRbi8RkDWWaruxja3xNBD+DGwqZ3Vy6kzm4s78ZX2J
nj9QDRC9yTGiDwDm6dghLyr6p+/5CigQbLMPe6nm4uh+o8AHbTXTzbWxmc/CvKE+tsIBiGg+rVML
Y3LBsD924zSVfQnS99swRCFkJxzPXr4Xh0srmAwJxeN1gfzXTCpiHbO+PJ0S5NnofQkvQxco2dfE
xYafeq1y1xAmAiuP3aZOXoAiJH7jRoUKFMakBvX0mximpfcel8mseXqcL+qfuHOBswKioHxRrFEm
8kVN60Iub/s439ZDXclkKbmnQoDaYnUtidoz3YWZuc4xvpheZB7e/REdvOLWST6KXIqryzLmIelF
Cexh2v5Y8LWdb12c4AFbCc60MaqOWAYLX4MHP1kwJ3y/CtfHf5/pXzNonlJQJgyuGRsnqKxxHBcB
faAzImZDad6rkEc0k13CDBFhclmQ/HAqmTMPkjDsntID0L1vzr75HEMBDjq5uMfIobbYb9FUG8Sg
9bU8WRaK3MINWQg/Nb1Wpa6RljFy1p/jMWwFabYJmzQ3ex8R8/hKJm6lpY/YHH3mGzdkWsFXbGM1
7ExEj30kw8XnUVUX0V0AbT3N8l5VTWbvfRvidi0FdjntngjsuWTGrKpQPXDheP+Cv12Lgm1vgfY5
EGwsMh+c2gHY6+1C7X4Y9j6f48rc1UBlzq/0Ybx7GBNkvdyxsEqdysNYvYDN63Bm4fpgNxImtx+K
pD8uIYXtfZn1euvabEIlLFPJ1sdeXgxtPCT8L+J9cayldW6k6d++I6Z0z+EvLqKbUgdzpuVP/G/1
JKCCzZmqPGzvvtI3PxCBRS3FzTaQ59Or22sa7GYuMyQcvht5sQ7hEJ84BVofK6RJcNRVtjwW6i3n
DWdqNPzpU0PvqsLdjhM8Ei1dU8V4eSlDQdL7nW0kMvBmaKcfhd8Kq5KlzPOVZvTgPzEgzyCp+3ep
QTBaSYVZ08td+vBSjF/wz68KW9x4C7nWTXFEy0wJQ6a4lGYFsA6j4vFSKqRt4yiPQkHdK4cbtdt9
2atTWEobzLAxbuAZUtVtRc1SJG75B3Qa1d8TzYrJvrG2M1LqsoXkqKEyaEiuBZ6SKIj1M/+7BU76
rLrJZb6UPOeNeNoGWPEgTEZ9RZon2ASuaT40Id//EyEsK6FTaTrui9yYh6PIkxyrtExp9au0sg+G
MVUH1eKsJben6rkV+JlE/SHtF7ipMgainuW/3L3BuGAQkqMERvEpWD/0sOYIrWgwv2FKFFzqbWq7
EpfBBlMhfwVB7nxopc1X4VvNs03GM+pkH72WxpO5ypB8ig5aydmpeq0KQCNIQDfDaBcbkwCQapej
XyioFvxsU1XGc+AWsF0UnDWkUAqucQa3JdpOwjnjQzbpkMlPWQf1c6D89P16zYpCRtvs40Wi5eAU
163oJ5ucMhFizbnirEHevgtSfgXim4mdo4FoVUqO6ggBVhuW1mtJPski67xM3Gew5g8S8ohALmqS
vLDPbcyrUKC1caHvdjYl7VjXgNUHf7w54IEtRdIHbhyoLlS4M8dFyvcJhilJXVx+7jYHvasiOk5U
SOY4OiRdyyMI6LctWEKn4emnnPTJdyh3p1A86dMK3GoAz5gjgpjN9x+Ops5RQ+KfAWF9LbF+YKcU
9ijghAhztW1ngIw2HaLOdEhsWmI8e5hTzWQCrs7XKa+9PbvXVTy/FvFFlyIIkyWNs9cr7NC+d/bo
oIRCOXiV6D9sRcLvLxO8rlwMDemJlMic42sCD1KppAMHvc5AqhV+1rqsM21scvElwkVbalN/PWjX
BVQUnbXoHgAHRK6f+MF3RcDJ0R3oSjJia14g/8qd7sNvikxWwM5yVJjByYKEuxbtb+zys8VBNCbu
CYbDUx2I8vGkikpF60FdQxmxxV1mpdbKuotLRDRwnDAi1qI/tEaAKD0YxpUugraVS0Yuw+9xxO7p
WBoMUZFMizO2gKJrtZe8AeNrstRW3erMvvY6qSAuFK0qq/5NAnOyLLCFEoQ1+aCeq0AmzanfwNu0
eP+T/xkH0VH9MGuq/Y3YOJqVTvPZr9s3oo1SrOq7R4K86biRUXjpo+xNmfAp8g6bfVA/ETrTAOGF
gU1maYsa0E0JOxWMqyNJml6bt5K3BC9BfoYxCDkYBc9Th1WxiZx33AeRzB4IUAsxno0xQcKpSt85
yY6euuLhlZOF/846iZvHFIt4O5EnC1G5nRRZ/BcpAc+AGdqc6gF0wQ2LztTNCVE+HVQa6/II1UjB
Aqca5pwR4gcHxIH2l9iuA4na6haxvthpw3GNcYki1AOvkL0pzMwWGxF9FpS2FafcmyJ5dCF8Af7I
eh6AjudQFSZXNYKUrlAlw0IMgpdNVsLHs5WgJEKKtA6HOJ2/5dViIKSIstROFnxPo/kRtC7rVUBP
vYL5dOKcNEHnAovj+LEteYSiQ0sbCVr6dBTSd2ybGywI9OcJb58/MZk7G7oW5Uhkwx7fdYwaXCxT
Ten/3V3x6tcjLm2GfemYZjmBOXVPjnDMVe2jm/EvZLCOZffUZOpPaZ63vlmqHPhQG553MUA71clz
kJbJU9kZt9E9Diz7URSZziDI4COW5KPOKYCQ0752TDl1qOwArPDjQOYVwKA6WgkRMNu5jasNXWLu
sjgoeql7SZ6+qKm3UHpeXiGkqvUBfjheuSTo1CDlpCxQQFFvnCSHjrAuGsEzs4iIonYP9KBjFCp1
CB7kqe2MQsxh7LA72Osr22oPROBGtg9shDVdexLVHxjaSMz/NbslCTcVQbT9xyoMqCfphTO8iDXM
qrGApBM3EvXDKsnKRbVJey9FJXMyjEktqC8PX6mSh5DCzbUiSJ+a5cM1Ga/qSnRI7a4ylu+z1sgX
WanBg9xfmK/JFV6q8+604gdNziHUI9F61tOWtK0dj2pW+g9u3JK4NLsyTOZrO7lB1EdwHh/Euqsn
cC29lXl9QTyL68PBwxfrWG0EWQ7giWIsst0hXeVDyuOy2QPRvFxJYOOgcrTUj4sySn0eC+27sXne
y13TyJK5py7kxTw7eI3JwTNZbQp9RI+B+tdtVZr8o5xEZ4FO7MEP5vrEL8lLFJxlyXf7p0kxsAhd
vG9JJ/X+eJ0D/NH2H+88s3Z2O57j3303BYQhzo2DOPYkqKErAVhRyeD/HDZMXkGAXtBt5GBalkkm
OioU3C5YEKxjva1iSfQUC01l0KhHGazD1DZThNJslw1TwB/pyC6uUoswkWBrlSskoStymP8ZwOvF
m+XkEQhZh5cAow0xlBCPhkjdR8/7CsYTf+Pcupt5bTLyxJZYA1c6AZBU5RVULmzxK12Y1UMHGHkT
O+K6b0tA5bdZmJKaZERmG1pC/iGPd77AKWSQL6kc6t2eo2PDowAIPl1v9ciTMOYfk6fbsj8rQ0Fc
N1oI3oVL/ILOVU+tqljw+gngyQHkFVB8fUzWkqgnB1rAV71hCJLemnwuMi4QC8P5I9cl+OqspuxZ
OB7eGm/tGyAGWCyoMd7rRuOvVhed5r+DG1y4XCHQ2LjbmPHR8SkmmQWi4ql97xJVpGVvuRGflmdQ
vh00mI3PJ3iX8cjiG1iRibbsU/faQzfJH2T2fd/PV2Sl/vX0P7NKwYnGw054MDqVyFq1N++atYgm
Fo5PmlPj3qtrL8hK248VRXYOwhiob8MNzKhf5ydZjdo4BkQM4rkLblJIGEhSd3lTsoZoQ6/Vfyv6
T+ZCzeMIkK2E0k1iw5P9txmi+AEHXe9tgqsrQHSWUDfGK/eS2HlRlZGlMfpz3CxMFSWD58gKzlmY
QYI1HyyccBJsOZNUWJkRFFaR5oeXTEz28Ksunb6aJQFup84u5uoEAI116cK8iGcA/gQL87HhZIbu
Icf+sMahxd/HblPCDMZF2WU036I9AS+t1U7vYkNlTfoCwtCiRYPgQO6L3jPfR4GO0PyoTUU7gtzZ
+l1q8Gb+wYRhVqm71AKiVE5x54bUAnPVozxp9K3K3b94zKc+OO0odt/OVFPosQYRPzjomT9MhLb8
wA0s8aRCgonvZzweCV3X9coMuDtFAMehgheZnmm5w4p5jWDGdw0JX5IfpkN4gyMrpl0UmuGgjgzA
NUYN6bKxCOteMdT7648KQ0N2bV6FNadQawdUAPyGxIwXVwa3ikCU+ovvT0bfW3LlfI/uuK9ziuO9
T8i+fG3jtB3lrqjM8Y2kEvLCqT+qPVdGbZlJn3J7gnHDGOzt1BBh90rnF/UXGzFFAhtsfYPbaQXj
LvXU621o9psNhtl9c3sQDO8Ny08WsiprGq29zVWp++FZaHScTxA7ViokwpqiP6kk8r6zHcqb7dhm
4nrWjKwk5Edxv4oakzbQKwOca9GT7CORdMtIpzTTxP+OMzAAaOkcxsTASCN9fI40qoYo+8yEaiYu
/rhnrexRaaUVmi4lEWnD2UROM7aWhvd8METVi5j+04EPaOpE1x/49R4LVE22O/4WFmAgrMgJqhwZ
+N698wqP3lSBsQdFibB4561+Ko8HXwm/SntcOeq8cgSuBgGLXaDZ2c2zRECUfRmFWRFdpmqIFQO+
R7Y0Bd5NYW4W0x4iVZJkNeARplskv3HO6goeP0uZk/vVFkvBmvefZyxyDtsU6He0ddGBkJthBCvr
A/0FSqAyXA/hlc8nQLqljlY+Gg0dhWILfpzmE7SUZ2vHltV2ouLtGfffIVIlljZKaM19Kmb/3+m8
aoc4llCWeYbQ4Z8Ant00Gh6V0Qd5ZkQpUH7B4MPPnhrFPrvt9d+Nor3GX8oFhSzbBla5GedrTvWs
radtoQkyiuWo9poiNvdQqO//cOU6KiVhCO2ntmRrgAnj+Qpu8J9hqYR/Eenw5eh9wzFpVmaeREqu
nYMZuad3JeUesm/umONTnhhXTtYQQhK4CEHuPO4ZXx0cbrJkI6xh4BB+8TdPpVDV+mSWzfvHwp/+
DlfC+KLKGUu5fIxlEBG+/j5Q9URlT380CGGX7qTYX9xSBFnoSOiHIgK4K0Aiboqsegg+smho6wah
qUSdq5AAmhnMirLRfN1ZmtZvzhF9RvpHimxKzDi/iIoJRPkGjBDPlPFv5VUtEnRe4q8lGKjgtlKB
YxOIXocP/OAzluGCz7DdHhEGxXxsJ5TnphSGZ8YFwHdI2oETQ2cM999N5+rcDQgHPlrMyZ0UOSGm
7lTA6D/e26Zejrqmrxwi4sWd7fPlCsSw56rJMFzLhFoIt3tMf1v2J/JM6d/RSAv9uhh9rWoW8Utx
2iJfbfMWwZG4fF5qMMeRiPgTHrxULclhX2+DuGwF8lkWx3tRUutiZcwKTyXmVgUCXnTHy0gcO/Jf
Qu7lfq3t2NjhJ7zEt2KWyiROvVT7t7QIz6fbXoppyyrYHwuOXSL9dWjpUcQlP2qLCV5LV9xY1neM
poOdgpTL8Cz1C6iWt6mLh4k/cb4l+mr3kooK5NPZTFWg2HpYrTtNaF/3rzFZLNhY52W0u2ZYdne6
s9JzbKd/0hniPofQPcb/CN2yHQfxD2vvbtfVLc6v+MRrFPe8LBqMA0rRUwEYkJZGd8efkjFJaEQ4
WTZCrp+GkWV8oVJTKS8iEL0kvtdkf/K05lOohm8Cw878/JPfBgBNPcgDfs0rLpNnEjBKqnKvMt48
TCzsp4E7oYiioKkiyZdwEE/AlL3FdKqOL7zg7/rVQXui5KLgBvoBGFZXKtuAmMkSyPHCGhMd6e1Z
H84Ex4hINw9cO/y7VtlJiWMLy6L2T25/R5ekYEx2M3+WMbRQ4WQgY/h5M98OeuSFQktVKTVrKfCg
zfB+dvc9hb3uXJFKDM2hjVCQl4J1N652SkwEleflpwRGi5mXkK/XHPkQ48xesQ5IuD2hbDq8Q1y3
DvNKAZCe++7bKtdTz7jVoOy7AdkdO1IUf5kgJyt5MOygcZ4FECkT1VWZiSUyQU8qhGduoh+qAiC0
3nek9RsJ4onh84Gi4smdwDp8gkrZ4lOcb/jgbURYDrJ51bUw4EPKh/S7heT753ge9FNkKnCKEatG
l9rQQSG04MlL9NJEMvKfD0R1vKJozLn3vpLukGsDq9JJA06YDgk9mB3COApiNA4GNHAvQCtYGU0N
OPdO3GukOanriVftXXeSJEeKqeHhD6sETEdsrn7tFBtIQaa647lLxsTydI4eC4IWXUkOTpd6RNzv
FWAL7HMeVuT0v9Kkgf3wBWlhp86rzM+lER+jjGQqr4nNPQCXYIyMzcTHKWyDpjk1hNLB7MKl3Gid
pWgZMd24zoVahiDrsUYBjrqgMeqPuiLWRbT8RTMpIA2oAFtWvw8RB3sgdmKuSkAbRM/2Q1gVX4M5
3JAAMptH+SjGJ3i261ivTz3B7BWE8kNilkx/VqqxZXcqAEb8vH/X/zaQjUY7FcJ9cE4LG8uUXVjE
LLLMMWaooMrShYI9EppSxzkVO61xpPyMDhrIuXXvbGW9rZAuWkplh75ds8CNPdFsVFE3pIGk417O
4xvWZMpVqxLBhQIQAD8dGkTxzST2WdYyoD972zMoDZxL29SDSP7sOAzMyvvOrwWTpzNPshYkEu5B
jLR7euBJZ165zys1/MpFax2rwkusbx6F8cIQLGeu0P3PEhiDHWEpzoSQzKENaqFCnAfDu3wASqKe
EjPpMIDU4yKekQNUOS+RheeifljFsWfHlvqwcuFQy98VEGqm/FVQlWtsJka3NYIHSrlzLEtUDNjr
m+2/V7KUuR8CsUQHhQ6PMCrRu5WJxjsX4BMsXXcW2yBRucJYJbhY1FTOWExollucHm2KJFnTeD/Y
rROfL6m2dBjLGX7CjQqEtunlhmoJKv37k6iOc7FS+/Zuw1/pMQVAOJhVGRcxGnswULqLClFJB0xM
e1yzw3rIOroGQQwK3IZAfxL/T/NaBYs/bErptTUuaSMYHDdWFDl/vO01At5kzawmDoIxKDWTEUFk
kkPJwVd4czDLoRTzBu7NP0Mrw1ggPTaPehfJFMmw0OSmfP5LgvWhF2T6KEOfhdczSmZFEp/33x7i
cRtOfTICrZ6ozJvXhEn9cqkFI6tsyfJ8U7U6yHOCQqjpsHh4yYCMnqFCoavlV94wnv6YXPkbIMDp
ZyudkrdqgTu+myENbou8kQHmSkUeQSM8TyY+ZEyC7YRYm3Vj88murIvA7uQRt7zHpbdxrNsnw0AU
Yt9+dDEaef+JhjKZQPe+hE0Atn+sQ6OC4thmyR1wtVcc/TjuoLjDonWH1I+Bjj8V+3y3VtSaTRjq
Y2ZSLM73nsWLWXfW7jmXZD9iuwK+s9v3Y3Xckg/IoQ6vOjRz1jnWR7qh3MzCRuwYloxfPR8rMkCD
Z5E/iahdPu16wNA7TX+hwPyc5APmv3DddjSEtYuGJB4eAgrQeEl1DxyX1qjuJe7AFfwT0TY5DWaC
viTAXIjmEm9RZmMqKGZIUsSabru3zkVLNvqZ3Nub+mWtSpJH57OGfHsC7aN0icoZn3gVa0zQFplF
DYAUtk96IfUGR982O2u6dftB8yBegUb54Ue68aspfXjAmvJpLGPBMFDSDf4ChGxeJdsmVic6A58e
b0bd4lK1BdJblP7cmTIH8Aww5dIc5c4x8dDX+6XNszO89gFoLkVV56FdNgGqiGYqsKENLtkElkdF
crd+74vRmA/WlLD7fZ/yBqAdPej3AuLRXDZPZtKHcUORoeLf/A3hbV2pI4y02OJYRyy8KilQkP73
OgWsZixOzBXDX1VwQBq7XS7bYh7LMLJpxvVFdFM1OZk0L3Mz0vJyORb03sM1Vr0O78gnT5YELw2O
Htv1w3dVESaL68WBC/eVQ1KuBcNvMeZymQLfwc02ekdB8f8wx3q2KFp4NlnPtKXmOr+Yd5CT0c0W
WU2PYz3mlGr5NCm31i7j5iLZ/lWHQE9kipL30i1ZullpK1p710GHZXGwuUREfqstqOtI2dP1P3gO
ymOChnjmLoTKrRdRf2QsCeKU2FpBWOn3/Ix8bBXIPpNIILxDpbhRjBPAyFDfwd/yc1Klehs0pBkb
gRJWP+CIwFJdmjyYStfOOdJEcaIvuLr4ia83pT3oST4HsOnp2G8NnOcUJ9hlhR3TCr+HJqeEG+g5
QAG2jgjxE5Y1sXfiz393gHT5AtPIa8/7s0YGTGoV+0kKgXIp7C9r7LzdZCdude8O46RrLHJUkSrF
ofpGUWhW9lnBhULsnZHijMIA4KQ+wtoTWFr7cmQyiM9mmp41X/UR/6EMH3H1KQbjDYdx423UuxX5
X8Z0/p6uuj9UAweNtchpft9isi95ZYqYtg3DDfWhhXgjnxWT6oix/91gXemvg3HxWI2Uvwi+jclO
DR0yGFr2nyQRC/5DGkfLswLpJCbHFnfBBUKevV24wlp+OYCEAdL+DdGcRMMSFtfwAgzqvRLD5MM8
s258UydF+NUhKKao+3tSFBNhwG36yBCPa7//RwjWg2nxjz+eeb3o5IIEHv+PhnZaueM5f7xuCwKc
cIT1Ckn1gyJxbQndG3+RqHQxArINX1anzeaPQBP6IxAnZHySVg+Dr84GZQWZkcR1Hoxx+x4hDlAD
yTGhui4iD+8cTf9QXNpdgxLvy6T8Iu4W1gOleAx0ya7i8jlzt5f9G+zl84aHTEUXgPYn/3EGxTpp
lfhbtcQDwRlR7TqGZtwx1pZHSEn9coo05DDiaTNSzF3jt9eBK5rs0hykiI+vPrphUHS1InnZuKzX
mxAB9I4o9OuaSA1ek+MqNDVA2Gb/7UL+/sQKjcfmiUvY4xgf/WCTUAKeYnGkiuBedsoLhBJzbpPl
Z29r93e/ym/YLMTNdlhY/8zrrOD8QPKuVkIpO6Lb/ZUYf/kmiQfq9izHR8iAp3ub99QsWB4ahs9z
KbZDpA+4wQdSdOir7XlZRCRp924h+0quwpH43t/vyOnx3NjLw8Z8YjpVIX32GSdPfGma2vnniJmT
9iIcujDX/HVKP7APg1RgdNHakO44sN6qvofd9+JpSVytbQPMfRZKr6idwEu0N5pqRWeX+ItXJXCu
BfSRgd3Q/SteNsZoYuoi6dR/SvUtY1bDVKq+btrpHlKjDpnRfhGFuM/lkwtXQZFEbNcTKrnFBiCP
9sQD84AM9TdbMdmapv/pmRmSSN1u8unC0ronlkeW3WBCJ0DUvwewxV/4lw3N+mEjXwIaUNLew32W
ZwiXNGkhpKmGvHyAJvsIegrklyJ8bE8/tYjqIJmfAfRCfoIpInn0KkPDIHLB2hmwtEo9nlIPup0s
mMO742MO3grdtuW+gz9dfcjbUl82aetk3B1fuHQyO/IuDcyOx+JsqvFj38aqKvlyfXgR/ELEQPD3
W7OFkCtAjPR06bLefqhMsyCVzcZF8upWGNzhjmFf2zhva1mkhrixTpzI+OJaRvDYSEmMMClUTOvq
JKj6lhYkLvC1B0/9lV4os7Gl0O/jC9M+pzXAaOOLt7UfPhf6jZtc6X5L1/bNVIPdqsqmrUpyp0tq
3uUZz3XCPSeBGoL/FxhRcTnnw4dGXojDUkzbkcfp/CdQAqg4IoV/A5to6uh0DASgJGVhSVTvjVpy
UjP/guUl19tAd+KWjPv5o5WCDralc2yvQEldqSxmleG6bi1uZBBds2i0J20jtev+swospOUGQj2C
VoSKDpGKRmsyCHDDpmOtM8WUyRlLf68y73wyncXFHpojYTWy7yCGwR01o0O2uY40717eAMzwTzY4
ZxJVtsEakolYd1iy+LUS2sPDC/i5Z/AikYKZzmXZiSD7hpIWfBBeTDzVxvbrZxMxVwidxj/pbo5T
jf5V0i2jON6h5Zc/XKxnQbckld3VxUwykD2gopvEW48GCeYxOcNGQDnm5RjpN5GOlApGy0Nm+/VC
mRwc+yfpJlUGvJ5wE29tvPSfU9SUVXogpyKGYz2MsaNxBp9D8jMn/UE3QNQgP6q3/qAOtOoscj3L
lbpINAnVVJoXwIQ+mcfBUlGXdd990GXOZ9TZKxETx8sDdjxgKRB6r2zEJiK+XVmchYFah2dkvqyl
gr59gtrq/wg8Ip8L0bgBE6EsMZKvDbCGpHQsIqdu/27t/1amvuBsxEV9dC7rSHhkj7VAqsOMJITj
yvngCCDNpynGXRAvYhm8NtMd9LSN2NOAQG1hSMLaXASTNdGpH1sXYiaa8/02o2MpMfLHCmp9RL5i
U/fjuerBzsS/H43/C1ct7d1XbzPDkKsO7kXEFStB8YmSUjx/rEYWXZW21sbXDlkT82SmhvPGSy3C
VY+C72wLxX7abXyI5Do7VQmw59N5FKZHKXatkP9cBLwRn/ye7g1uU/RiztloxNyEe1KZy4bP6U7+
n+VkdwyVnpd+U/tLRFohG5UtZirMughfRWcG7lVC72giTdYffEiI1B1sKXc8Vmnp5xYcHxB17oNq
UERgqaaSklZ473qylWKJV1Vnwp1y6PHfK69naW1LyWm6l3gumkF1SsgDO5jKdgO/kaypxk67KDcy
8F4lpTs2eqgyp8zdbNoVgLetZTgL1er0/41Unmiwu6ZYN/UVBdwGeGFS95JEDMmO92TM2nndHdZk
K169Dy7avGZy5BfdMyXvdSzGGyoWoHCpaXDmFQTxmpdxADJ0n5ndJ3Wkw5E6cQZJ0Dx7LYPbO9uj
qWJ8nJZdusq4np/xQ9mVnXLP2HE35TtIAqIxBFvWKsfpU0ZdWKrBJrmBkBziQu0YZaFu25HF9t2F
cVgC1HAt5RrOAEZ9DDpqmfvK5WlS+ZbN2oH8tlPxcuvWCDhdl7JR6YRA4+uH8kNVZV6IaibrQrpz
tPxLsSOLYNjcMlEk3uu1W5ftqKKcFAEcgyqaBfbmAPfO0Ngs8GJLN8MoLxZHK+oOyuwl6N1S3Zbb
CtlwtW3uWSN/lOVFQVeCA8Cq2nT1lQ0AjEdqoPnHebQ9JJYo5G6fzw+xfCJpA7YddBLyiSdeweN9
+m0Cjaf7Kz0nDHRaDf/+MBojtnmmG42y222ZwCKXnOBAsf1hcZTzfJ3PsjRGK6M5IiGuwZk0A9Km
9+x02SBiDTIifbpdoL0F/6rLe3cUbFK9FVs/VmA8H6r2PHPWVMn4EVLET9PmQCtg4O8vkTUEgPvs
aFbbbYfPous3eKBBzFocCGZFu09OB6qbWm/Fay6hW7Pw7YvY4NXpxLpnNg16r5j2DEqw/Bqb57bx
tHxOC6ZHDeuU6yq5HGrtts/iejxFeh6eJnqXjd4VHrCZKQYIVFd3uhwtygqxfm7dEdwG36j1XUfj
f2fSlO4dVcs4uM2PyWUzwBOtI0A/iAa2XCtaolGudYXFD3EQHs76miA6JwjSeN4EtNIWADPceQTs
Wpq36OxEIHHrp60xAY4rygHHZwGFRMKRSKkoxBhp4zsyYDRpfI0tQ9lYGo+wzCnoxy9oEcLIjeD8
FarxVPC1TUSC32ZnZDc6siGJXz8oWpM8TIyGDYCm+RNk497UsC6nuHwsPKISnxeHPhHNtV+S/J8y
RC6MN067nTJZd+rDfl7jRj5OQD2W3rvGRq3qnUxAmRpBZ7tKBXXDNG+pL6ReZgCYKCCOh77dAMOD
gVKvJHwzMNlZIpo4YVA1CYyG/xgzYIujOqkcs24RGoupU/LWqbkSMtlIKVk6T1LfgmkyZaVhgGuj
kfGAs6vbt+LlSXMy68qFNOdHD20GgB5Vf7vtd8bsctlwHixBvyn3rmOvo/rkjyUeJrDXy9WDdaak
UFznK86pf0p7wZkuJpwo14a/Z745Dq4sHcUlguTVGP8nfNL9TTVSIcVgOO7TllFuD2Lv1/1M0TNb
QUxGDOKFr/INf0EAF6hc+3xYt3W/ErorkKZc+54Oucpt82CNUiywy2lMSACp9qoaBLUNGbCHbJ6t
HZ4Y2LeHy5yJR1tujj+bFSSAjlbO+5T8pwUtUUHxnEMIIQNciJlIuZTMFde3IpgQeLAly6QO5ffo
+JGZFdMU8eWsgn1RHSC9lv0Nc2va69Rqeo8yoFHrEeBbccWGaL8HNBSFZDt521FAwp8g2PKN8+Ld
x8HXcRS2wlUAcO5Jzd3UzgUrepH2tOvCSpZtc48qcCNZwdqnAh2qyhCRlwwf5xgcVSLrXmEkhd5p
h9a3j1mp+P/ZLC7QRDZlMMSXa4lUprhrR0uThwMKyTMGda0s9FH+qoGghX/CA/vAkBOMfCMuX80C
qeIeUXYCJbP6mSI7Xo5DiQM31Es2z0iNWcdXGDk3UKoew+q4w8MYeJv9BoFJ3wwDRsdhxLIFrRoC
PeZCmd91t8ch4garfkFTLNFJyilb7Gs+xbmdv3T7kZfHIRQ6CHwwEg4A+RmshjrSRfL1BPU9MtNl
RkEeaTFfqmN0/HXVH6Z+4eqCIMfgtYN5Cyw0EWBQNd2knpeRdvb/6fQ7dM52bDHGYR/6dzqyI/6j
eFuAh1qEzjmOLmlUxYj/JPLXSTcPCdFZJJT/n1gPViylVIRCLBOIw0m6MhxwNzBmrziN//eFgoV+
tZGyNP2wL/CyhhCfnViroDfFaiqKygVV5iuR63jQ/0D+t6Fm/DiGWVAmym1e4+QjN6w8i4sVjCYn
HwYr0UYsK6PI+4g+/LbFJryDBhR+aOtWvXTYXf2QSzOlE1xjRFQi4XXo2bFu97DPLWKLSY3HUsqy
/6PvnGLS+VW9tt4R8bhB754C+mwRn36uXmEStDF/3GJA1wuKnWI4PYQq6zItgjPKLVkoSh6QR45+
+3/REk/AYkfqUPNj9OoGxCSHDD48G8o6zxu/OayNfW2RAeIKX5HwoiiCfO+bRjBwRg2TJTiPWLMQ
TjLW1K+3LVHXsgN8KUuuO2rl/W0pEm5KXX88+H1SVwuUZRxYN534xAE6qvxlvBQc3zGwsZfiPL6p
tKOUGsEySlba9+7vaZuBiOoEcnY2vaC4aEvtdYZ/xRO2qskZxyjDMoZLEHQx/HxbpD5QDO5dcl68
E6QoVL4ESdBYkkhsD6q8B1qFw2aNCflhGn7Hmw6+5oAteuVv0fBfOdNy4hlhGn5mPJKPyfZokcnL
ztQOhNRD41J1v2emNJvbj3wlaQLGk4y+xTJtcxYXIubHPGUuIKF2W1HgyXtTQjUoujcWs8d4gQ8n
3Oh5ZcF+nOXSnDxsU/9WvCtZTdTOx2LTq+EBmzPHTm6epVznUS3A8ZwfmXce6SU3Md3V5sCNrm6T
CB41q7ldlk4yQfoF6JBIVZUOsidp9m2iOx3N5nRUBRrPer2ODZNYj+56kFTQYp4WFQNdaD6LVqTQ
8y9bZTA6/bFjM00nH6Fh2ibqyWcneDxpCCdOi2+fo/GNvJ2fIhxEQZzVX9OaWYVlf0cioZZqbBXO
DnkA8VDBTKH8N8VShkilWzLrNJEl4zTPkBUef6jA6GSKj/SofVUzWCh3PGFpa84ZW0vJx9wd2biO
z71UzXnRdTGo+D268I8PHmP4Ow4gpuJ3M3zv1sHIcSVh7o9fu65VmdZ8/zGO2yyp6KRHxC8mXpEi
3dNc4vSGUWj67qGN1uvo/IRYYcJYyK0BRil+MP3VKgL28M+2z+5r/jFmq8FOgUsQXveVMZtpUevs
/NonV7C4LRgvHtYofJ8erAzQwPsRFifnh9vgdSokXoZ9qwpqq7tPqZIIGBrt48VH8DUD3pRKC2k+
pUt5MZaf/6fk5dJ/CfAe3Rku5adufzGYkmD+2OkT3x4gCXAsMS0e7d/gSKCfYxH7OELHsKm3uwpE
ieRWXVlV5P6A4grCvm04aRtgQUKLHUiBpgaaHPO/q6EhonNLRIHlnbZrxgNY7UCQ+blTP59JhnhQ
UB2wIzor0vQtQNqoCGrMWO16yab8DzfhS0diwkgV0x8k8RJESqFqrA4fY/nWAXZzT8yBTAUxQBoj
W7Y3YdX3Vt4hNuA/YK0ya/z6F0cKRZIn3u4IByp+ptDUudGl2aNg0LCt0UXOa+2WtG7Y90XgHUya
FQSCKCJG1vBr1aZ/jYqVPgHssJayPHiF39WTCFBquvDfr8hSkmaqu9j9aWc1MRFw+K8c2/Jo+0z9
zPswqi8FY+xCpytrUwlMR1HARU2zVc3DIlFeRBXCRlxneoRlLdeRluLzSrNNqRX1KAfIjuLAM3yc
EOazHPSiWk3sJOJHl+eyzUc1zPWdx8ctjcgLGHDRZWocO9KE7YOTDIPNl4tD/qn9wWKEbtDjYj0z
pjJFr/YY5BiwdPliEP6O/Ko/4sQsArakj8zUO7YrB0GvVSWj7fxeGkzC+wncQXII69OCV+I38s9D
lubVKs3DQe7UFKac4J8e2oLYwPzuYAwCxPnq2RwvrwEhj2d8oXGEtL1YV3xdHpaoO4H/RloVNGCb
XTbOV0CITGkKmIgKn3CIShig13FKqagtRBrPlNVe4C+/WUCtzcUcF+zXs2ik1WFj4ebEZ9RN/JqB
ntkSR8CpEWHAE29VPO+FeYsEfoLd6G4Prhx4OjBW/2uuh/P0WUOj5f5yn1Mk6DynZsor1GToGefm
ilihoxYJpm7iSoMS87lAcJ+OQOAA5sfH9p5Zqq+vc/4ntOyk8HAILADxaasqItrMAZtli0xwXjVf
GL4B6FmZPKaFW/P18RAWpasiWRiMbto3F1kELXfL4BOd+QWT24ssGbq6d0DiDorRFEIzE360MNUZ
773gRKnkb1zgF3nUUufhtvIBOh4adIPe6F+8i+27GwuTZFARtuGdjnZ4jDMq35OQjzesbFCi17oh
I86sg4hgE+5BYgFhycZO3/fBnHPhbyg/HgK+KLY2IHNiLgXiOw72w9sKdtJukvpUdzuYxbEdgu+8
DglfMqsnmVpdkdi0IUpqes3+MmK0mivSv/QoCy44KzlmwmxZghX34wzUcIjExtpcBz2EVnps+k7O
rRBUKmhMH/ySPGYjGbTTQhsBe+wXm1lT9O2OIYeanQxK9OL/gzmkNyDqkApkCJAsy/OY/sR7DT47
iKQL6gqIctKYlEJc79KBXDJLLn17tF9h9wsEe6nLaHrgGNp1+VXMU7/NfPz/3p9NKBES4l++ZMox
tWQEhCHfbPkxY3oI2y2Cjj+MuF449KXBuA1qKgaowh77EGPnWNsc6mtNdrYyVRfldPIwpweMRlZM
dKzKNV1s361RmZCxAtornF4oZFR20r1OEqHT3FEWTsdz7xZNPRctXvGv4abi7IVFnAHxlJGr0M/r
TrOJewvuWTqS9RXmEwJAsCM18qSDM3llMlL5hsukcvwEnaeev6srQqvzTiWAVnfJ84iPirwIn1zh
iUo+S1plCJ5GflCD2Y/2mT5sWWux4YEnSCOvy2Bt/3erv6g3m+Gp2N+uXUAp+1v30gaoBQKrJZSE
4uZGPLH1f9iedKEwbPrwhk36KTWZp+ev8uQk0MBq7Nl5YJqJgNTglXYb61EfZTWAqTzvtJxQ/wM7
PbCCd23trUA9s1rL3nClci81dSOlBHg38Tz76yDY+tQy1fAeUzL9WfqR7KSGuZz1pgEFcR5ZvYZj
qmaj6OHuEwXyl8/968UYSs6s81vwRg87BabslTKZ3NFKA7I9SOfU5IEsHGZruLEY6B16xNjo02Fx
NOB6Izlt49hKjhriubAlD6PlrNecJJR/gc1vjc+YBuj3rPVIo4tgS/dekSBhYTUcJdlzuDCjghUQ
Xqeh3qG0kZivKjdpA/mS6yhRQm2fKhoUaxA5S9jGMpP6e/iaSJlraxiRx8aFtRGfwqg13wLLzdv6
BhhJd5E4ghx8CAEbBuARC8iaHzw6YcF9oQqemVScpqGgEcIW97UoBe9W6OkrTxz55oJfdFxSHaRl
l7uSY+8D8RifK/udjcmsT203x4K9VKZ1n3V8gsHfpIRskD721xgqbHsBLlcXT6cV4wKe95nZrHxt
0hgrZQWhrFj6FDFj72X9tCFkj0/ctEPGGpvrpZKgszu8MzhLGp3FAU7ko1Dra0oCtFwiqXFfIylY
O24cU9ZV4jDNFBWX8JusHIt2wF1BBEoXZXt5cH2q24yz3aAsvSAj177bmQV6pEvXF6L1hMh1HKG+
w8SnUWwkWJoUGUxMmb+spTAG8n8SRQZnVoqgothTYtpCShp4YzdYuZIQsN99Jg/f3e7/GwwI5JAy
gWn5WzQKtG8ZjPGqpXXdkoKe5ptUFvNeKNTaCWsH47WYUB/5j+XqLADlMfYrDXUSYPeTQNxOWDHo
5I+9ZdFcNp1/kZsisyOidtdCWyP4n0Xhfyvxex6eskYMTse8GoQwBl33W8W5HL6ZdWNFxK9b3yWH
nCcA3Rt6FrGvwc+/g+we3H1UWbmH7JIHtjtkU9RcgIUweJPxsfjP7C91dankbS/G11f1BVbJPQGt
mVnR4ywGHs5e157b9yb5DKJPllnmQC0sAoWtvJiOeCvIrHYsIqQYOgXWhczNSZj2C3s6A/Dc8v2J
wLzx/6lagkuGZ3pIA3V175UdAYmZAitXgAfQ/e+cPh3ZGXuUHzZd+7UVnLDunonnPThLLIe9D62p
pDtlepmFTYgBwneu1/n64qPyaZHLsmNCilS2bOlhEqJ+hR3mumrqMCDdJiFhdz4aC31SFw0U6a9c
7qKTewzw5wDavdRNc6Waq50HhzCslaNQvLjZ45MclxjNlK/HsPhmrfr4JwlVdvqq0OVKQBlOH19L
jgxKE4+sYGHDX2Bd3uV00075Z5xUmMQ6ilIozMat6lvFoSGZo5yjxR25nrICoWqQ/oDGXqLCWzfS
3duNxbGjDnCHvLHNRGUITpff2M5+gOJz0jwuHhmYqi5l//d+xN5BsBhlFCnSzFWJinVk20Z5TpKZ
/izwqdJ8We2o+BopvxqP0GCfMhAEFfaX1xqdHKSclnbQyUfbmM87rYQW52GN0EXsxquoxNgSDBUp
UbiVQjiIBu6i9VXFXwTj4VGsCjQxMWKuKzItp19tVDOpk/309ZL7xGYSZIe8hypn9oNWzYUW5yel
vbss3jYV3XU1Q4L7xr9hdAy1Cj9Cgj5npQADu43G8Uj9741Xp01lw55evbqQu7cTgFCEltQQZYdq
CPDBdk2POLuUCXpEhtdikBFxq7gTAFlzaP7s7uSK5kOzRRUwGDjjtLuI508Hmb1xi663645R6RAm
ZkqfKs8XqrVLRwcFOpP5hPbUot1Q6QQyODTbL7yZTGo22R5vofJE9kHXqYISiu9FxiEeYJiuh08u
G4Xv6DeHlONbn3y9i5xP5n0dXkPE3j4qAB2XWUAkRLcaNruljdRmYChVZA+z5dUsOf4luYno2KDB
rK6Dt5KPpBVYoC42sDpixij1UwyGjAiGLpJvLkqosuPAbeeKNOmQeUQ9+jEqk7yJjnfqFMj6KzCw
kXNDTB71YVaNxUCTJvjrqLlnalCuLJlyWW5ExsABtXCoTOU4Deqt8Q6V/vU+bNHPZ9oS3JttMv1S
2Np88ldzpAOEDUOVCfPWKEvi/uidgP749SgDjcF4dLVw0TFr2fNNsvFkwdTw35AX+Ob606Qjw25+
YEbLw3jpkDZUfJF0Wt81VeFfzdKVV5Cm5xT9P6i00Dsly0wptzIgMEqcHX76gpOdIWwNyLT9nbH7
kv1SMuoephMf47Te286rAy4Z1SkQr425H5GluF8x/WZD/PlCCvXzANcjL47U8iACY1k4xyjSZQKV
XomrUlB/+iL/9Jy3ixVJOGie9jWsPWntY+lmSfHKo6KiA+LkGWlUUsZTkN3sLmSLHBnmbGZ0s5Al
2sD/Xa2Vch7R7qIp4v1EiPkRBavUK6Wf8p/Y//UPI4OLGw7ati/LFt5UZ00RZnqe+ZkcHDwkNESA
5Oo/7O00RNkRNiXXV01dWPdk7ab5QTYJYy+vZ1lQ6C4qKEHACmh00JrpRNJdReWmvTN03P6vlmu6
YaoQrn8zNmBgjvPeRMBwZ2pYlOBUh0MD06lLJFIiy/4kA9o0KQ3Er5sO/ZvMCU6wWqi6JErHFGi7
7LfYT/8Pzk2LyvbmgKouW1sUD5AA75yfuWcn0R4xbXRupQTsBZoIq6Xs1o2la2VRkdVqEAr8RhY6
BU5wIKgyHnQgTE1Y5L+wH6Y2/iSmOoCqlNefBSSiH1PAOcenVss3UdSUiwzZz5M6GeoXGNE0EdC7
GFstgl6xNXe431RfNjKh1CeRWi5G6b4EVbCTpe3+6J9cv4/8DTFzTOl1RaSWbe8Ag9XMjgER7pIX
6heXkGD2nXGRJPZZxxcPnFdQJ0EH+TncWQOuHZ5BTff8bvky90DYeCKoHbVW0D277DlnRuMVGX47
OZ7qhMT/2yFdj6Td8kRcNSg05b4QdvGXI+iglQRI2Ab1bd49YcBgMDDiE9RVG32t2aOgMbpS9Q7E
dn+PoXjKRuviewijUKS8twvjcNUNz1wleUi9fG2VuxTYGroPrp2Lwwm4SKzYUp/HepUjAq+L0J5i
zKvPKWL0LGotU6yNyW9xLUMc9xNtmPiCIyHo9U+09pmNGqlKijvfeWvFeEsZ0A5jLxGg3zap5czg
P6U+yddoQ4EqV0/PjOdfzsuAQvCV+etFp8lcBq8wNltdC0coG5h2Ea8ZEfUEWlJ6gWniwkJnIRGw
CyBFgT5zWGWp4mbahTJOPrj82gmFWvObwJCPvMB5g/dNXE7aJc0FoEZqrbMS4K4Lw0vch4psUfdO
VWpulM6ACKpHuHG8BNTa3yDrpyYw0UEykHIAlv0jOQm7/dlBVzckxBgSJE+tMTgLyGojrm3OId8O
r7386/nWZvPGZy64MujumsdyDF67GxJ2yXEpCo8fYiR96ZLzsuBeBcKe2juZpRakl4998S9jxIXX
vyoFnqjB6+AlBE7sqPi9gHm3Ed2cEOkWj1t2YCgt4KuPid/t3Io7mrKvH/nnKQ3hpCKdUOwb0X8P
UqosoyqGaDmJ8U23cWeG6PMCMl56N6kqUV8UQuZdyeRKoqtnFdhMLKrH3h06NElqH7UnSaOFtld1
2CvpoEVZMHBYkwY/WrLDSgOcoc74meVAPJvTy0Z1OohqsTGtb0fFwREPYKfBeidydwi+oVhaOTBu
A/z3l3MtziGL0PeNPDDCvkbLk/g0TbJRDCIbIPthxE+hlMKpW0JqpNBINfOMjwaz0mneIl+OkRNF
ZKrWxoTvLNFfSu3K9Gb6t7skV+uduE/+MX+CSwa0ifoRcTggLQ6f8IzeIeVHkhbXOSZQhg0Axg9H
TfFl1dz39LNAkI7HmpdSY8N8l118Eu2RjV3ZSJU/DD0JIQ7MZuFZouhVNDSLwrOz+24E+XMNi1K5
r32zmz0UAG2M2HC01KSKIrYRUN7Lq+h2g+eQET28IKbLCj0qIWq2GmwOFuUZeiWAqYVJrRWSJSau
hsYZC+1b4g6nzsn0l2eQmgtso6fjjXL3SbF3dOhUKmGtHCRnVPYUDuZduN2TEHsoeIJsaYC4SYu0
uRpknsDClVsMf72c+bcgIEMV3UUXD3Zf1eAA9GWtWLsBlljfB6f8/sVxjCihQ8Q2dNAQrxoTr500
a+sXSlerd0GxZCle47N0qkTl66EUwAgtocCWq3y/BurhMN6jwHC2R/9SkMBZdFevUO4O8tyiHTw4
Dayg5dOnWxCv3NBWGgyV96+GdCQjhmsMHHizlgM9hvsINPKc1mSngglqeb3WpzjeQWVKpAIpUnuz
u/CjNcq4xmtAv64RDdoQiiMLTeDt+NmMIZwj9lpRZT8T4x7y1U2Pz+F8k6/woE4r+Ha0+fyWxSPi
IeAbhfxWsp/BGkueN+xFreulSxkmphuhR2kmlZtmJc1Ao6yUH5Gv8ycVa/R8m7v0QzfP7pWLwFay
iiARY17yMa1sP0XL0Bm9/o1EOf0Fir01XqS+k3rqZoJkhp+0b3N9n3/0/PADgT/z6K5Mw2zjRSM6
XrPs+xpsZMVBwuQm/6MHrNawznPURfQn1ojVyZbUOkIwOWbYSlOu/nSWLRBCX8wkaHwuPzNVlshi
Rakqu2sVr4ljl3ZW0GKaj52Wk0jd1UZUSTxXEGqZGPySWJx2AE5r0YT/olmy42R4WwCH2sBx4Vly
3GFXtAdZrlO7mMkJnZjKtX/hakG9YJSFvhBWkJ4UEaOs4fIcHXxNLaU3bkTiGIobkCNPs85LNNly
T6XtH4opQqeoduplXcq7Ci2BI95rBlM9JmVgdC6HIQ+fw6QGt0kBXvoFrAa4Eu8Jw7grTthefL3P
G3E/A051TzZKD01D2ydV3LA+Vurv12brrAHkOUybcc8yn8HODVpv6VZXmrZokARAwhl/OoVH86mU
TriEEZ5IVqgx1OZO9Tjq8j70/KUgPX59C8QA8VDWGgAhHigW727YHpAL5joEuCaiRvk2DW7MLqCz
vxwGHn5fep3IkgwCbQpDRha/le27PfxIi7VRUP8UGSz9Ual5s/O8+FFEREimUMlBYaq21qHYKsMS
YC4nf8rnmoZ2qOmvYXeS9xyJP0/WF2A9i5ec/0ZjDpJsfflDp+2945UqMdzHxnw+qVfm3NS1Qx8k
thUYOxTcocgNZZGY6+ekdut8aBIaBBDRZkYsa7TfpAYsGAGv/VTfhgy2IW5ZEc1FexKZNhfzAbya
pe31RM+nwRZRxC0YWshYHlymf76PZOCsYk8mr0dYmG2N0fYE1E5VuEDH3csbv+Bbq6Qn8N/hwu7m
OJwODGcJIDVLX6bPtU462xCDBZvaNdgeW8E+8tonOuf64dS5MeuOErKSoMJpv+dRDw2b5NH6vTUH
GsB3kY/MQ6LpKNtibZzSzRtlBDQtEi0j636NDGUfoSseiiZB+TNR3k2qtINzHL47+0s9wahI0yIV
V9C0vqR2LS0csvXhX5N/ovCoGuXd5XIxa5mD+o7jckOINIfngZB1zcRikUCZBI16jImJPKbXV/0e
BfsJS3Xgws1HaNFxRaZjoYFdH+buOKXOEOXibhkwZ2CBJxHuEAoy98FjaptMi3bHSDEJlckgL+YT
gUZr2LFHGwiGZIYj4J9Qk4PVmYdfAnbEZtak3qWs+UmboPA7FpCa1Y63HWe3dHgX/KHNs3lkJS6J
7LFnU7RtZbKh8AfL4tP4CLiOdMo94U7bXK22MiQGqwC89N+2Mv+dCvr9VRFfztYFpsAfBOs/Qa6N
RdmbmQR9tKlkZjZMOD4nltqqdg1lYXTTPC3anEpzZSf1xp6msB45foQkRkG3ogT1zhhp90X3vaF/
6mBpL3b4b0iwuv7pJTNdzcnsdJ7FBp91jlqThA48I5aRxfrpLWmRrHhWtfZsdV1drObUYk1LkqwK
PIC6X8Vljapim1nBG5NLuWwDQwZWFhqNDqLHbTH3QXEAohxTd9AWwlxiCUvgDpNzML4gimfPykuj
Gf1I0ABOKMEDi2LbqPr17XF1scqgah3FLcx/aZjfFHrOCPllsBZnJEfx4yn3n86cUBbqGvmeogS7
qINnsa+JZbfqVuD7YdxKl4iZ3cs6w53cAhimSR2zNAT08dbEK+df+rrIa2OkKsUZMCudSxLHqUvE
cRTw5S/0vVPzw0V7DKqHy1OqgPA8ZgpvpzHgC0bzmYg8GDMciIBo/mLoBm11gaHxzTlbvDjxeiWL
HGJ9xHxxtKhMy0sXwz9UaSVXm0SsQdsxEPph0r3skLYruSo4d5SRnYYuBnYfB1tjJ6l1yWHXGL1U
lb8dcqD3/3uXSxxxpPUx3ATLTkw36dFCjyvvbHz5k37qS73F72sJ1fgxtAUmZdxzQtjK5QNve3TX
yrMC1x08U5hWStXh9qZpY8af3F0oZ9JszTg4+qMnZQnxick5YvJnYT6uqZDjqbKtO7zxWs/21jKb
zPy1KDJfOF95HwkGRtF0W3evMNUEDKZj97SHJY/zz+bMYTEYRvHe2rLxjO+viTODppPpmawbBVbw
bqyBtA2jVqxLrjd+nZSOmsTAzMFy1peb/9vig2QHsRXusBP2Ae8xcQoaw062eVpFYXtxFDrlGOEI
1NXqK/5SLiXIcERB8amxiNjua9YoYNuJOf2fG+luZ2YQ3stReWKmDDDz5pgaWPTLK3LczZ2ENnUY
VUNUXblxUzP8BEkEDQxhJVg4NbNZymjUskKzBTCcEvW0kN9ofsFeq5Rv33h51KpoBG3yEkFEVszJ
6Lerb+S6ebzdv6X7ZafXEG2qScLw898w82/Re1LpWUxNT+w2Bo0OqBI0mvqLRj136KwqHKhGFlMk
6lYIxH5+5tLez9Yyx5mdqmizUF/uyfHGzMubqGNZ016qR3t95Mx9W7Lmb8S07N9lSULHmFcDUb9t
AgVCkZDmECYs23COyeJYAIfe7WBBi32EpFiXAOY6yBzV7RQBhMbX5Ad17z7Zo7abLg8LNck1IjcO
YL72jCtTnxt5vBB0hDhst2NIFgvLGTQG3Fendu37XXrt0w4zx1B2MvSNiYxHwwY1kUxbyQ+pZjzD
/jOP4eAPhR9gBWN68H6eMsPF9ovLf/sVBBSJ46At+2usJKF0/o3eK1yevyP2se+Nuq5vNX06g3QL
7mjk21HSUf2+XJDOmCyteadzFNa9bZJirlhdenoxui41pczg4v2D8GYjbtipDSCSUGxIQp7H+x9o
bIm6psd5OFUVN7xBxRPzmMVF9Ui10zpC5dylJLfmEij5AQCt0AdSbsmIBfLbXZ69zQ70Lz0OnvMG
wWER2zA5m8qOPNvlBb4c8UNkD+1DOuKDO5OJDUB95vmdZDdPoB0hyGhS0TVoBiIr3kCXd6Kv6eSf
5R7GmABV/AzreDHyyy3gZMm4ldZjgbXnqQjAXJns9KvAp29y/mT+bli7odu44byT/MJdQezgWwtE
IhKdBrYcm2/93WKRmyEiVxlyb0mfTTDZA1k5b4wTRWxPinpIP8rWvDgLR2BCBgc5SLUkNgr97jKi
jL4jevTZ1YP11k6rAU4OcGIPuIp/2syj5LMnmcpwHh4Q+v6JadE3Y2oOdtkYSNE2/hM6UNO8WSc9
vrGD9kzgL6tzE+C/I3SCdMQYJXA8gSBkl0EGSGdWuXW3Ev1qEOL01R24XaewJxmTJ05UGdVgpsuE
36OFcQNyhfHBtphrCJkpyaksPWXcXB3L9QcUS0ebHm8kZiOR9EvuMvPFjHGanjT+oMs+qRLmG+nH
Y3jHdRHaQOy2jopzawlRLhrZ3VmGh/74G13rDaWfB87bPFcDRe/I0qAtph7hT4bIvZFShwOCP7xZ
3eVnvIUqPmAeI7N3JKC869Wz8qtH697ElYIdtdBdtDrsUVXlCKDSphZZ4NYU2KZ8fovL+LbuLQnm
P8euXd09CDrYwPlyRJ2fIu6/Nb5BFyH3cPnpx0G53+Wrs/nT2ZhEUGCTrPCWlj4mxTQ/f02F4Yo7
uzU6RHHclRLOHUFZ2G2OM3jlzJzAw3oX+r0Ovytav8oaqSrErAYTg1oiec0SgvmnnEeTe8Ge+wJZ
YHT4yZ8pRCifa31God1tWvs8eD595BSO2b1Wj3X6WrB4I/aJAJ7widKeWJhBlwmpmGeEf9TKAd9L
eaBToIM1ENk61apXM1zDEspnB5RDViJTqyJI6XY79bTmVElVlAbYvubeuKG2WyPQIAxtGbjEqqAc
DZdMbrHQgY87UA2UdARqX2I18iD6eufGmqtjgrWk7zFTmOPxfL/aJLa/4jdxOASe2Ca1rmQPIIxm
0IFPgzvVnE925FWKgXgKQFc7IzUrmHs7PkQuxYCCHHrFcWJVskSLNyOy+MquI4M6Z6/PwhJ1pQMV
rLhzaEIKr1j/7d/cGbO3p0ChPJ4DepVJJGjggXuJHyYvCU3EdD5jONaN6Yci7XVb3jK3ItER55a2
JVplMlEIp9yRAVqUsKt4lqQTfxC57FIdyku9Ktok9LuUWNdcNk1773UCF+SLxwFzFRJcJAxINUiZ
0r10ckI3nH3KL5AjeZvREMf1FtICPg+6KHE4BiLKrQLo/VNddYCTrxqaus96K7Bnm2atg1LXlYCX
XrORfErQNluHpV621QpC45FsRmr1KT1F3Qkoyb7+6zfjViZiLEbO+1OYDQmw4KRqaQVD6wxm1sxw
pNKFjWlrLu6GbLGSsUiJRuTSMpcsDcZ05PcSNryNEXDHMvhtRGbO2Ev2GYCA6IufyZrE7Yrtg5VO
Wlmgfk242DR/hYpXzpStC+VctRtY3NdI3h/m+FpdnA655+xB51VeMHKm6+5uD1k0ac0EFwKJtu2K
wReRKTg+4OpWnWl9EUP3Bgrbge/L+GDXUy1X5AwPZ074giI72+fqhA0gRwmM7hMHs3ZQOnogJL0A
VB89crCl/32DSvfgrsGiCbLM93S1ZIPbppSu8ZF3EY/rgPK+kvzELb3MN8hFwUkytaFgMkiyenjh
7Lw9y3hCU4sUaqyrx4eCmSQ9yNmrWOo9h8oK7o4Z//mGVH8/cPf2Tg35KCkUn9cKeeZcuV8DZ+vP
Yq6drAl8e81ExsoMcZNDaqt3R52r8KSo3r+EgOl2efR5SoDY2T7PSQALtxuLOvLuC2IA1sQmL5E6
CvMpE0UIxKYAWdwVk2cbZkJnhI1DXCH8ck0EPbB98Qb2zD5qIxoNy+4hDNSgY43p2PrRA/SS6NiK
UzTSOWk/E0qhdB4aYp2nIypyl9lz+uuWxGMI6KX5VEdR6pi4AciuoMN36/aUIpYggE7lKjX5sqmQ
qAieQSebPwg8Bj4PzNhciQQWrlIqE7IeXGZmZvV0XyJG/SFcMMDP0TX8+rMg+MbwyQVovlfWJktC
ntoQ02V6PffwFxNXwpP8CQQt4x0uDEGCbKIJpnc/lKaFBGCZjdg2HT8Pcc7LweEOu2sJ61RLKnYE
yniEV65zwc8hX0Zevn+XzkbqnqvDXdtpZB49GlIfQ6dEOQDcomZTlZnOHhP4pPr9qPamTVislnJt
mwSpXHPKYSvqNnnBi8quSfcyXCqrFHheWaVVqHj8KlAI6t7qlRqVQv93lxBZ/kZMuJvZctXxE3gZ
nsYm68WsFopKnG+vRN+rBbFRNJR3jgRMLeWjr7glg5HGd6iogXneOsIAjPlCRhxbdhNUXdwyzqsb
4bRD5Krv/hWS/yBRrUdfr1zIsGTCE5GOqhwJWhGlcxo14B92rcDF/9cuHVxRDnBG1KNQQkWdWxt1
WzbcNJn3CnVviY2n7tilUcaDjCcmcT1XqPenXXHVHFWQK8AYkGN2R1lePe2SBP+ncp5DYNIRBhBs
cqsSutPomRd+PHIl7QE/pSwtUcxBFOqMl6X8qe7/PF2Cmuz+6oUjx6oww5wm99oViN3KQwoEwJEO
y8m9A0UV4WQT7imnE0JVdCljQyKWIQ/g2lSl6EKgYNF11oHc+lA06NyPC/ntS6oLoknimfLGSZ1u
74lo4ddHfRKFo6h+9ZJ5FHQC9+yDNHk/FhxbU2PARCnkGiU47xI5QTdzLA6QE+G92qNvf3IrYVrO
GBQk90CDYkkomuT1ZcOFz38AHHBBq4m43izLuJnplbCI9Ye8sgChvzOcz5KWdFfbik243njF/9NQ
l0QiATdSnISp1pLLaYLebTMuHZeSBkUdYqacc/grSnkysrZuQDjrPX+gaUQQAfRqHW4A17T0HNGN
CRfRZmAyBi7jbk0v7xVDA6sg0Nz+T04PCcXhjX9wA1jJrKr1gG5znI+c+ViPMm9U1FfEKgR3e9R9
TO0rwVi1fcVzb40udKEw3krQUdU8rKMVEecqh8Bz7PQPjYM+AQapuAeDfpcnQ+NzA2xHdGKIzpPK
yctdbk0F+pxq5ATgwZtTmkbBA4B7CBiTT0YmhNoowpQbXup2Eo3Xu/wCJM7pGwMOW0INYXF2FOr8
UuqTtglePzHj6EBXUtuSGPais+Bm+bMgobq8gZJP0sQy9UUtgfsforiW968V+nQYY0gJ4lkNgnRm
dI1yNR7Y8McMPK7K00Ifb+CCzTYwlptG1MatJ8liMgCWZy0Mg4Skwcts7++XsrU8aQiVse7iI7AX
cFjO0qfn64a4/lWcJBrcgEMxzNd05oBnUBC0Js6xo4wJG/DPrDRnVp7dwjgqeSInGA19f8fxOVCF
wu7YvZbDOfeYd2J6cNHXfKg066ETvdeGvO9C0JWXnmzFZDP+JVJ9OLShyh7Dxa/pAh7X+RJGo5XP
W9aCRAlnYdFE4RP6GRDQJ7U51Y2IICh3wGlvjIx17z0EzyVnjcRe3onRHbOjIjJX7XSSV2XguQfl
EyoqYHn3SN95K78EHt0dPdGHidIFXEDpsUDRyENilV7tFN5osZYUiOzFve18pl4EPplqjoZnqdeV
21kNNOaDu6VoXEVREvtQVeRuUli2OnZzeAL0wkrSgAGyGX0hDgpoUTb5ISCp9M5X7fxydxRyCYU7
+44A1A1U4d91Z+q9DpRH8LpCXmeq1GwRwX5duJSWbbld29YNvFmCqrhzd7hzdQcM/RQwGZPzONF/
yoCTQGPcjxAlnfR7MYw0PSJVU3GoxtuaYli6jcJGzmzEaxoP4VTcOB5cKVy3dXVc2uybzMxzTiqR
XhbHXUzAcERmERsof/FY0+o1+S5GC/F/VXyx1TO1dfngyblNy1sJFU7Hj/GRhGHK0g4zgn6CvNGe
5331r+mboXTqeHkLPPUqSJW7pfn7mklwzJhzNKDC/MVyy2/yOfwUy23NmvoReEr+4sefr6WqQMM3
7fATzdzCokupHpl9RoPrgxGlzDKHC6duW3Fwy/3Sx22WRr6OoXMvg0nqAMfGDmEF/C6ZqFb+Oaz9
YvSEt287azv/gr7BtUX5AnQ4iftLmEeBTbAhIDIslOw7U2H/KysO4HAD7c81lBiPUYP3V3u85lNq
OTvCSBC5S4peD9so9lFEBv8q/AVDLuk1534NyQqDg8q3v+IvgvTa0+Pu0TvZ419em24Q/peDfe9m
EDr+6350yMgkwuYw2hoWCmKIuX8FEMKDLTL22J4Hd5QYmMwLGmgFPq4fBpE7+uWAnHPHXVl2NCTf
tX77Jy+++slnDtmnWhoE7N7iz/0xTlmhIC3hvuGf/so5vQQROV3RJdnjqj2rLA3kPWW3c4E10/HU
S0Bub/iBQA4lagBqE4yOiDGPdOX9Y/ZvVDp6HeMVwyc7Y6HzvTmtWWaiaQ/TwRBXlxeZKDKYwFLz
hxMToBcZFv+WjGvU6KDjYkybfw6gMsDpnTNTRu5YLyhZTu+uotNym/6xxgON9MDJt1WZFjwVxxDu
pVpT15YrOYPXC5j/sd2VjDECXW16pyauodr2jb1R94cT07mV0XSOhqskSQH7tu3QdIdNb2F0GhMr
2zitT6hdEAje70ylAtXNRtW8wI/Lxux8sCjI6cN6YqGCQHG8/ny32TDwSwef03r8BvmynllyLwb6
923XvSVKF8bEhcRvYdn0Wo4B2nSjCDrNmnP067mH6bJQBJQOPxT4A9gdrnybGFv10Vmj3etdvecY
utHRAMEp8N0ejz8HtXbbHSoekln4gpxi6l3Nqdja62MT4vHOAMUMUZnnvLXFEBiK57uLViDpzLvA
YGfjJKVdl/hfhCfVSK1nfCWXyuafhbtKxlWvqlpRG8iu1yQQyMhubOW9KgK0guFaCRLUDcJMU72I
xUNwwenTvJf4JZc2JlUdUPX/tU3o+dw+9T4cREhoIz0JRUmYcYTkq6HoiS8RsKY+d1H9yLUlSM6m
gr/+aPisr0l4o4JlzA4MG+brGOYS5Y/Z7ADQR0j3p4CF8DMhCUq0t9FsAxACwOZkD4mFal2Jm+H4
PSjx+J75fGANcPVZu1GzD68OmrxxFcL78cyhI0CiDrmyzI3QNSzIFM5hOY1m7uLLzJl9CpXrRi7s
JLqyMZ12L7TskzAuAJP491O3qAXdbNp4Kw4iwfnryPgw67bCfBWnR3b5LGtYroIW4ILpqUYPGAHt
ET9icJEDCSIWS/1Y4qMrkLs91VpmTN8YTSLiSDe6u1XKcuZmDfCL+rJ99UIapzR2alepKWXUTgUW
VNv8JBtRv4goK1ImJ0MJhgJ2URClF4+s7v4GSnRLYURInAN6G0pakAV/5+4zJMfmAzj/Gv2sVKuB
29PaTdn3sxRq5lKDLj++rnTAUKunBFe8m9mQXroMuk9DKMmBqQlRXBhpX7GMqp19q5LWGmtQYUiU
IeeSqZ3TVjyV7+09gi0pfJXZ0mHqVd3/QkosFdOK53+dCduFy+9AkDPBXIxHcVqJHWl4WxIDSrRY
NQifUDfw5fiEoz1CasxiM6xE9FyjBMKf7DQB0bGxGRgA6NJ7+njDf3spoCpG03SPWEXxGFiW3wYH
BHhQKFNkexIEHSwOI2H100jGZ2Hmn8ulNMHYeSwmZOF6NBhhHq4GQmVEnFsQuYGS5oX9pQ0NVcQk
wA0Pv43oncy6hbSL3AI7w0fAtjKvaDurLKIBCkDxwEEFx0hnAlCoNMIbsYPHOZZqLEAegf8Cx8uj
J0zKD3qWuQgUart1MExhS307jzim572s1HjCvi9rJPG5CeINTy3rinYMppOZXoFTlA39IVN274Ch
YMcWcuFrbXc3pXbvUw7bULnGunzDvqic7aGLzT5Yt7gJncL5CK65fi+xWQh31qOiq1rQIu4OkApc
3FBjfTFylXG2cNTDa/MwuPODyEEdFI5YN/XpuZ5lVQBsznBB6HNHsLdWWiOY80xwVvgf3+AubYtk
ZD767XXo/V2KxukzlOZcuTEJKpC+KPkOlUouLuPvfY/4ynVnGVB1iJ6bqCmLjePx+LTFu4TB1iqv
VOZlUf7LLqP3LSgkZccsOEwObBljaZaPMOeihad5gO0rZka/919cvf6YZncBtzBg7ufYAarKIQrf
fMjMcLCFLQdTtrdcst7bPP7YLo8KzR8zahjQnQ55IMJlZUg5stgauPRduuZtzlLldxiSF4I6Knif
aTdF0aLm3qMAb2guGR9UvDAvawipZKLdqvfGmlXgnIwLSuFCRngL4jCSYTiezpTCSymX1WcS7geZ
WZ1TRKwCHLt5KTVRmvjvCtavRpdUENpLcvnJBeOBSzgp9+Decv2swgKrc5nB4Vh/C338FGBncVuX
RYGmkr5oLoD44sQMZwtxEueo8MG6+c8Fmz5AT9MjW2USXobDtiV69XUTzai9XchNCMdII8KRrmSW
VuPTwm9s8dlHGjKfnwQg4X+R1LZsA37W1TNrWaM7CCJ4MGCc6WzJhdR8FW2AWLdnyF3nTgJXC2Nl
8h3XYuocyyhUXSNb1CgnjFi5TLXWV2aarTIkkGMSPLqNxVUnL4gVGZPOBw0iX4dszhogLDIeYy48
jQBbUO0W5rANGWIanw2/8zgJK00TUOseWW1qJ5ZBM+lLOFHYPxm2vKLHrYEnBStjFtG7twk+5IGB
d25YGXRKnFswMIWI7BQeB33cCjVC5Wf0QhEwaw5erIB/8xtk+hiWxDxFycMSDH3eVKsFeUk0DP6S
RLHp4kiCzypmoi2NJV5ZAPi7TIIqyF5Zgez44SZhGjjvFWqtUOQeBRU+nuBF8cVL070MxZYmLiNu
kQbxoq8VY+gtkZTKoLO4k5P2Q3wyHwPjuEg7vNwJ7LbF5RZXUmM+HYKMwtZAkk2jRoB1b5OWFOfE
CxvTTMndPmFBfyP2h0O+cDge8zDEk/JmLxu1wHhAjq7QlZIiOYte+g41wFRCvtloIrry0v6O4mwz
/AOSwjhc9z9KayP3gls6FgfU2EGhuFUZ6jBVHOYzENKutv/bCUfKH6bMvg/C3aKkXcYIp+RFJDER
sHg/u1Herkt1uiXwl2gorIN8f6Zn8IFBp1Tgy07xztLuK/Xtc0617sS9haDFZ7MsT9EqR+0zDiUT
EKd061FW9jGMEGOytWxa1/TtVjQzWqPmF4w4BeFUi+BzLQMqisrn62veCMRnqbnIMqalI2gau2sa
QpxmSHR6gNmd3b7bLR7+8Gl6tGvFE+cJ6UWeaKgV4eRQjQepXGtz6ev1OH1bclvu/KzMxTKYUXxm
MMEW/rRZ6zGJ/m0rj27UiYYZ5ebN0pu7bNmWe1JWNq/s+qFbbUaU8npfVWBd8Mn31fMNyJIkas+c
lsV6RSSXjhUqkcXN//PmKy9WnrgJdRtkFBchaSrXkYH0V8cLCy5eDXC1nWNTHjRk45ZGPRK56rI6
4tsocpkoA9C0G0C3+pm+jZ5+K+UWhCHf3eok6mRyMBsj7CojJyAZtjVB3FyUyy4tctSaDG0CtpSE
fG1/zeHupwga7S2jcG7fL6pjEsfFF6BDpzJBmvOlbHFGC7Q3a4MJzK7ZEzo7tjTUM1DovlayBHY/
LVeZn2Cnlym+ByzrVbZqmV5LkRWdeaGnXNjLgmrL8FjWnuo6uB6SGe/NBdr2oZmCU3hY536L9vy7
rPv2+Icni2o3On5Dxok0FopWYNoWDxTRvz3T9vqHlkCCbkLPyExW1R+0W4P96C4S+shKWov5/Edj
waUVEXKxiqt9xIv5cbbpLOweNv2bT1sgA7f+/lOIVdocXeVodCROiaA6P1xy+W9I41TFaJQTHlPO
Goihne2sOxVWsC93hvj6oZyoyoec4llx762C1lcoQPmY+RUbaa/XDJvY9J06Iq/IXvgUEi15VfvZ
+Ux2rKHYn7PfndrPZF7ESTbk8hpCiOxChp30ANeG7gc3cKGmHcbR3lF2VosG3d4k7P9ogMXQD8XD
W0uxSEH1uSkWaOIW4Oi1E4oxejcvKfI4llxY2lulw0XeAYiLiqoaEr/KRufFkbIAk92Ft8fyOooi
lvHBA00HPqM1lDUsXK8qfl0hOwKq68mouO1bMcCW6onTT14ZoJtykF1M87gv/+CtzovWAHnHz06p
oWhv2efYOc60dXpgbhJ9N/NZuCVZPMv5DcvCqmFcGx4LqXuhKX+9AjyZnb+3CXqly6XqnDYtSco3
1KSlWLa6TGwNfCIMiFE1M5A+vwlNtpshvX7qEu6Dkg7H/e2bqDVMKdKVPFEafZrDpmB1qwI1Ht6G
WnD4am//30ZYUMbYT5yzGqRfApDQoHDwQ6Bmr9fwOigUeoowcWLJK3REmgVeq4K6SKlaKmX9R/Q1
gcC+1lwbDQT1zHenHGRG9gLIdJt8Uc2HuAXIV9qOz+inaRB+DTe/VLCeihzkPdRiHmfcisTIgW66
vnLCuiRhlsLxjmMTP/hhmsnTlHgN8/HZITGGI+kg5gfNSKwziKRskniPFzG+h0XPthjhT0lTMw3n
n0LoP+bQgmoJeqWF6qSwyk5HHPvMt0Eiq6q6CQMmhzPMaloYnTkj0J0l42H9bqEuONWvvfVtTh6Q
imJOdofgZtwWQhOBSuEiQT2jLZaRHE6k/ntdKMGNIt9tfuAOLg/cC/As/kZepBCVVA6tZN7oLc2Q
0KEx8VMIRfABPuAc+TxD/oEOubv8rUsAOGoXpgMKX9u+5UhA/G2aNeqLHnEUgL5vFIl0H5/vwrAp
GWkPHx3c+jAUUxj5TXwlW3HDNSjM7FHkaGQ84O2hs0YQO8bzaCgLzGp9esHjm/Zk1qV3c9dEbR36
3aRopBZD9UgDAhDrSYfYigdJTa4HVMExt1BKYqYD4IhAR5yRSpEsfk9puuS1edwB2E2sjNx9Alnk
+L+KO3ZKHepC7I2gdzoqxoITg5McfmGCxV0WtO/Szi7T0bdGTnLhb4RpHdFXPcrjWVFYIZTPaXcq
dMYOl1nciZjWMvJGpQDz25cxDgEx+R4MfxdHyOVikROXGWqLRMre56V2rDg7Zx6/5YxuEoxBS/WC
Wj6ny45FPFhO4yyVv9e0YephokIn/WipaUV+WyVzu0hBuKDvNME460bhN5dfLaaMK+148ZpHVdyc
O5Ev7giaBQdMmaPQYmtexC3JY5ZrEgDaYhAyvYaPMU3Rr6F8PqS2tv8AijPlcF0cT9hCxSHRzen8
CzmmgmYiJ2feL/uoRYV35PFgYkQxnFuAyjSt3Kj/g8bW2d5eRdETFbY0AklFgwy+5P6QS43rKNUX
QkN2EAjIMNzXHzdC05I/VqvpgH3SjI6yLN+yNXyjGZ6dyP8vBbGt6q47c/kzxrn56jfOKCXMk3aA
7qRW5wbudF+bw33J8DWhPdmB6xi0eday5bOJITJAEJFp7p2CxRp9ClguRoqJDNG9rz0rJN7sDf60
ZTIjie/qhs4hf1q5Rqz/8ArPKHerGIWqPJ76bNeC4TBQqeVLSt425MCUyKzvAfqBXrnrDjYwe6aV
IouDTPUNN/szWPbGCkVQ3MRDgbXR2iP4QLrdiHsR1noaw0KfKE7sGUZaNyLV0pTnSFny6w/y/UIF
TEGw6qUccEHmDok4f/4T/ErFt2/WiUx77P6Ucva/DU83DlqejyACxIS8ShjKQJS/8LxfTk1cvws8
jtN9+NuT9VC0IeP4bWSdvatkJX4PFOA6p0ExCn0VvYGxUXmaQYQdcUjn/9eI5d+pLz29mZSgaSkB
3S5fQxZxMKBcPO5QY59Vu2FW9wBJVxV2otj++0tQvp4msrXF4QJ/8hwDNeqdty/Jo4kQFpBifHoC
mTL5eel6mEeraOewBFupAgFX80pNPAHGcfYTk2P697xx6OZxuT4QFd5BqbLTDWYm9hD44dUw5lUq
jQEgXaP9hELBcWRgI7I6G+0dBt2hpV/E4LRPJhCgMYAzZ9XMPuHRIBjHQTQDm8BC8gdBlaFXfiwK
CxPu71AMs/z+ons9uy/91wNpqUflG4maDDs1oZCx7bRQoZAFdWQLtCA2i5isoguF6jiZwoQGhcuC
o8G8txTfiviUPsCsipqohgeeuNHMhTupa38Ik99i2wv03X7pWyQ13srwVVD0njozzjquxzAwCTGW
Z+pRi+jLYLz6e21zzqbfRY484dnZxC4Yw6es6B1MgErWNGrbm3mUiISC54sOn6KE9T1IDZzT2cxU
LTnx+VT0pBcjJVem7GoZD5dVADrUDT8bDFh+IT+CbAnYQgzxuZbE3sujQOsAJX3hAaglfK8vktXw
h+Ww8uJgx9yyMJRIc/zyaKyfi5p2j3Z2uhuDI324wapUtQrGLCxOQHGAoN64e7Nzao0nH12jpyr4
NTW7+Zv9mxDJVepybO898nGGUmek05iiO7SjODxWwDgeRaOmJm9oBU+sllGLqTMMYfLy+HGiwVNi
vXrwBu6AmULIwgeTjMj5wpfXENPlJQOUZ/aXGZf8To2ED0OtTg0QFkNiLkKxxZosezynhKMV9D55
FD5+pxcG6mT3DKIMOqWTAe3yNHp5pUsLTocnTTka73hWCwfTXr48v2wOcvU5s2RqQg2YXrI+UVaC
h0BrcNcDj/jEP5ySttbCgXN30NImv6Z1L87m1DM4P+oK8Jp/JixVm1HXDhWQs9KokGTSr5T4FE4O
tJLeaELMVzgXaOWIJux1GwwzdP6iBhbeQ/YOX7ESVmfVarxngo4to4qyOMh6PJXifg/kIbmEkxj5
ZR4OQAfiVlH2rlwJhr5EETgrw7CbbrYaRRVFXjondQzZJBTS+lm/40bcHo7NYYv6SFINL6yaJNMl
2DhUTq88h5DoNY0EORYCU6izAfeZoA9GNCC5cs6VncMVoM40NftnIOba3o7cIZUZ6Vk1d16TLMeh
Y67JPVSKP5F18xDPveUDosIkwXQD9OXu7kw+ivs/e6EE8kONMSKBgTwF5SyfeaSZ9T/Ce+/p8HzU
KF25BEvKTPJlS9LyzegWBOYyP6jshdk3hDp4GVN4n+iRO16dgY3EPlBUi/eHWf2RDTU9dysVQmYa
piAikGt0+nlQBgePpZWplhwSJG13HTbspGs0qKoQ8nxh+7W1ia19Ms8uR/ivqZFseUfYojmh5dl0
whqq09zbnig/25uVikhD7DY5jzUELRr1E7Vdpb+4w1xrbkbcpaJgMuM2Fflfws1v/9pLGGyCze3l
uht6ZFKE8wplrwE7MsuXPzK45N0ALF14Jsd2WGMum19PdbZBQRjLtI5INugcey7WlVsugD07I8BL
Rs8knO3Jw5aDOFl/9VEH/n3KqswM5k9oydSRvQVSQ7FEimYP3LEEcKZZajPtTWl7+ZQ50DHRHOyr
01gbogtOol7AbfNS1xUoX+g1AAp9GaTc9wi509xDPcaDz6eMT750sV1TFDGvDX/wS6F2pg2WNeTp
GhT33LI6xxvA7JkY/dw+Bau063GGHfOWyNt9SrJtjZ88uHcLfqblfkdGC7qpe7ZkkyUQEuVi73jn
B7orHzefmFCrIluwuHUkcbGnJ8JeNcYUmqCYsPm0aetbHXbYdoU0tTww5o2W25Clx2YbatpTpcVv
RMCFoPOE2V5G1NfXdc1fs8titqcANcPVOaXZ7QbyI9XgCc+N5Km/hvRafr1M7o9uTvnzfr6pRvVQ
APm0P4IW2wDoZtXpSmGJvpYEQtObfz1YlkXgEkXdr61PRoOCMSW4A62IWPBiOSR/K3V+9hWm13ap
B70tfWEx+uMX34C5gzZNJ+3CTnLUoi+09mcMRdPl6lXhWDCnmFAaVSScelWS8PfYLK8VjGBaXjmc
ptRwmmv3bzUmsdf9b9xywRDBNLveJjTEiiElIQx3DnC5rn92Ik4yssiQHcx7sH8Ru7TbxEk3KK6Y
DyZ7sz/Dk65rt/0GhpL0E+/bpUniEruRKNVgl/4jzPILjFssthBWUHYhT6bAngmLkd8aKKrb8z4b
dGNsB2+issFAjeLFQ0mHDKh6gjg1tRQYZdHQ+YH5aOTkU7AtDAyhXOMVxHXQhCAFEm10Z5bF7TfI
3Msej94yRoOg5myGAUoRQSpHdBzNmxBkAvCsEZ+g3R/jSEpF6Tta9aTnukVs6MA027GTqO/wY2Xu
n2lJERkWN0h5H1XkUDnLrAGcAsCSjLbY3Scs9GI4MIi35i0eRy5BrM+QROi/SmioF9afIuAhT+J2
8S3ai78unXu8r5gke9wrli1JuTjwaQy3cUNRNb3hn4L8gNmw2gpzNPnvhBp2VHZGwUW5ZvUnVY7h
ZkfJybLiRx02andZkBkxj/HV8hBznuzvxGLbUcnUrVYh9/1+oWTFH+5pmik9Lti/nMRxKyn9aQvh
n52uzR/bto15sPCQ4iv+X/F9w6jyZOxLDOj/A3AzpW22TM+gO02OCt2OXD8g+1tVRaE9T7UFArNZ
ggXW+m8mTV6HjxaAIny7rCDj/WxfLBne97XJHqER6TJvGR2HDceGa0yyrmxL+kD5Tre+tBypy28P
ViPVMZ4uApcdHWWkEZrBtp1sSsDtSHRRq4NBMsLE9N0d/JoS4iloUjpLe+pe4DZA8gFnP6bfwP+6
cjnRZ+S5QkUGal+bS2bHuBGz3mIIbs8sNTVPpSZkQW9ENv41KX/V8p4bwOEcX1OzGLzV4fJsRQ1T
UREK3L0qcX2D7kpVLWAPhkPi5T6Pc7iRkgn/Lse1vMpAXs2OA1NLTA5qisgVH8t44tehRveRS2KX
z4U1LV3CItk+B/J82KZGgmKVb2iSujXQr4RmBBjM5JGXfuoJv7yZCqSp9KBVFzhBidNi3usA6CZ8
FaMFdxPh6ro9UD4IY5gK9DzFI3RDTJcKgnrfWqfK2YRR4+MOpvUwYqP0yio+Ztr3yLQ7gFu6sRrH
cIrGtTddvWVWPP3YUjRayxU/vJ/pvL/pySrOokSqvYXRbjOlvOd3XLuCnnIkdeBTrP9OlWmGglWA
QywyrJyV0OwKB0rU7rTrVTpTTtmfhEngKTsH5tDD8KiMRJ66dovYrLIQGmIwEAtSMlTRr5kQqTrI
4hcntsyDGEAhjx6bkTlujivPRccIBa4jR8qXT7bfxopvwapLefBAebjK758p3uyFI1Xb1mcTqMOM
qHUxOc7UKBAszjCdx93v5vqcObKQ0rmyNSpdv83FMmv35mY8blf7dHiw0t8d2v1Eypb8Be5JOZEJ
r5FiTTRMvqR1q4zVxEqra89jsYKilbBHFq96NdBsb3E6cz3tIT71X5W3M1WyEKz2DEN/OaY2LJRs
hJLE07ORjFrHeVBIVkjO8ReDH8hI7G5NJSsJi8i/sqSBrVuX2/cf1HW8+0aMigUdNDd04l4lQfQF
g1BQQH2QCQ6EtRGuvoS57QguH7c9qO2AVvX9zFXRewUYCKSs71MksQOPmE0tnWUJOw4fpSIiEa9c
K/8+vnUK4SxBSvlUzSrHG4fDorF3fhsQezZHjJGLNS9k7g6CAmZ3zYSJKpIdf05fQKFUxZhJXK9r
HZlbXuGYO+iNJcUj4Ib4mACOXtVX40JPUn+iP83ceLKX1zuvcp3SkNAg9aasDI68gG1Ucp7TzHV9
hhLCEJklKWC+bdHxsUZsa9+Rx+Xkfndj/9Qjgtm4i/bfywpe/P9V18zRsWQg06vIGPPdC5kH5mr1
2tPPpqmUoa8YfVLqsI+7pTouGKQEZn/FVAyAAxTziUS7qXaeeFRZ8yPW033Vi7JGsVc3quSbfoOT
vR5J7fjDq5oH1G0XBUjWAxE+bFPTehfrTEefL+S2nwm1enRDxT1hGZX5hYSNyyd3LjFikVsem2ea
xlt4Otn0LK8lvHtWdGydbhkr+UPYQwCDl40VNdC3RDbfRpA75eTf43e+pC3XWGJ5oXc8QAYgnQM4
qKZ6df/EOEWcPW0iyYAN8z4pTI5+iGAAMOgxKMtCiNvG5iAROVfFV300aoKeAd1vY3PN/zfZ8qal
PT6GIdAP5FgTRlZkFuu0Q9az9Is17ykZjYeEK0lt87rmbEp+7gb6grDGa01KNbEmFUI6SEqzQEZE
MRYGCHjJoaViRqEcj1+Y0cVXvtKQ5c0ocZZAFLBOjH4ymHFEbaPd5pm5UUWVzhHQ3qNey0BMpCQk
ng8+5MWMd/+9zMFaMyMzivUFPFbn3Q0ZTxBzAv/8Yyt4UwvtxlEZcgncWZIv5/WYdgiEG16hgeuk
LJ/NZlelCTJ88WGrSv0EsXKD8Oj6FYKtbpByXbASXRJqZL8i4WBoHOUdy8HcRfWGauqyKbd2GEk0
WFF2+yp0nohweRUQ+AZQ7hJUEeGJQIzpTVPn/uo6jaYVY1E5eUTNaPObGFsOKOOZNDBIxDTPwfdr
7/6NlCYmhKL2OdSndx9EoyLwu8rjMEt/mjdJjtGWJUcYdQrV90JzmPp+nsQOehYz8KaOOxQPkh2e
Ku8fBlKG1KqpRXj5VbI8F6vxW3TsH8wrm9EZht1rUX9xQEZR/k3EFJuCaKJYk6ZBo9jFxsw+7G87
H3Cf24Q19op4i/nRZco8T/krICSfM7E8ZacaRAjYbxGI/sE7ZBKvWq5djl4FCxjmzg6WCkTfBYKW
LfcXkNb4QSV5Rntpg/ypDsK6bpy4REvGOyQ/hxWXv1za2ySrAaNC8ONUF382dG1X65poiROp8mLW
GwD9O7ijBvaNkC+MyRQEGO4+/YPoVS5jh9IavuRHrkmi0D9ngv9sRGuE2qCWyG+o3QEM6hb2H2Dr
dZ3qW3LlV5r2JV/fcx6/WfR//Ie0VgTC+ZznlhRBZOktZ+U7Ydtmy5wkIASGLjk6ueCECB2AZI0e
ga7QLtCUDKUU4ovDCrw5AFglPZxFpdnhNbAxGwC+UicJxq4/NER1p7DW0R4PbsZNiDBNpUC1AngS
nZfW34zrpjTXX1wAFeU7kjMcoK+pex4lDPqVfyEjTqfTgpTXHmn9S5iEE0ibm0xfNgtkBMWZOv+8
yhrxrDKGDMhMs5+u59PDFSt6VJp0kTDE0/Dsf4/aBxdKFMzx8kbPu83tZsB7gddMuk7/PwujLdxv
bJrkkylwpielv4xkdfh7r7X719TY7XKlsI39bZUfX8aaP8u+v9e1m+76kFoiexfhNGFjyVjNO7vi
K5e+jEZdr7h2ljQDYeqXf2u5ut9L7Hv2LCQrJ08r9sdXqwao79hE0A3lJkk+Fsbou9lX7jkmuwpv
EHj9Mn/MEiVEh5zMtWOH2kzCkoLXNVL47C6hyDSfCT593wnrF7UM3j6HPa2OJIH0MLhn2hkYVIg+
FcSbcwvUgWqIRYbDsHLDv5oHLI3Oxt0JopKUng1K7YsZt/x04Zhz7cPkXL/7E8o6SJQVM8GYMYmj
Ce4fbuzhz9ioZeii77IzEENkTi2E/Ineiheudnp2HrLnRwF6kVWqixbshCWxpw6wEfSOcM9iTBPS
HK8zpw4tQsLYEXs8zQ9vwQG3LZ1H2Yi874n+F1iuQnM//k0gK2IXm+IO6s3CeM9PG/JXYoRHjNMN
qtXmrNRBBvmcCbtd7upmj8jIT8QPt9XvnVRRLcWGus8IftBibmlBn7KJ7zPjgmWG9Ou3XpCv8cUC
mnNniD8mtXIuauyImrwZdH3qwWLO6g/2awU2wjm5Xyi5lxfH/ORBWkGnV+xF5DvisRxUdrOfUqLR
WlOYASvY26Z/S8OHTC1mmQ8vURGm08BvIH65IbnzwvS1A1ug+ZkQHEI23bbFxvxghP/Qv3cciw2k
CIVl5SsaFkcD62dahm4ncJAPC9NRQzC1io38mkeYroN3uBmpbkM8jqiEYWiSyrf4kvM5vpo31mA5
ZttKhAIzsvgNX4bCxxHLrkC9JhCWEHZN2YrwdMlOvtLsZjMUIPchF+4SukSEARROAVuwXgrCovuf
tNOcABcOrfXinfhQqo5H9dP4reuChiFfQgRUCBQJJX4mlte9v4v+LbEpjl2UT1ewez24yMAYraSY
IlQwSExskVDnKUymVQ6vcieUIPp8U8+M1xwh3j3jZkcFeEjVskGbbqk7OjZy3zsZRMrP2cJs+oP3
uKzOhyhfLaBKGpKRusdfSN7+m9s8yfw0bMdQsZb8pcUtvxQW6gJFHrCJmaQ+3/RNqY6c5+qe96ZO
l37K7VM0bps5M6n6WAg1z/ohbCqlHjPKx9jnk2+E2vIpdLxe9zokbEZwECQrddrC34hA1u3/3UCR
OPoPt1MA0vEHnpncvIE+QyGtupTZOQ7iVOqsGRccBDYMQtzV8h6xVmZEzLjnZPPr+5zpf2T1/Gg2
gS/6p0bZBdnOyV2OfSghcjAHinUBTai+Obxwp2e0H7Oq36oD6FV/50EYh+PIAcW6mpszYxNrV8IO
+rDcpxIWKDFX/RoOJPN8q4mrlwQjh0gxQsO2RJsUjsRjzhZ0pQeoP+b8EdaDyD/trocDC+X5F2Hv
C9mvHnkLkQfO4rQBwQx3qAsgRq7P4v6yfUBd2v6lARErcFj0oAxg45YKsOjRMTrLEZQz/YmAo6za
y61iezn9zPVjG4KlFWdC3Eysov2Epqpbk5vs8z+POuFmgropk/nha6kJaYWYovlRrYOqBg7wK6w/
VIsCz6rv2zgk+cUEPPaq5PWzHzfostT9nbcaYgE80rUYvRMnBxj7/3YX3oLiHHLrOk+KrZAUcRF4
easabw0tEJKNxcxkOxsfNeJkDy+RgzI0KLqq7/HIavuURJc6UuxtQPdtBr94PoVf7H6C8pCaLgJO
QLbqnW5IgWHIMEenvKbvDLF6EPMqLeNcZNMzPWXi2X/6cZYkSSrAnmKBv1I+jWcPhFLwUzqboker
BPQlHlJLQPtmh9m29CcDdMzhecY/Tz2/+cEbDlklEKlW7hy+j+y1uFKdVVMDZ8LZ33ZuwlfRVOAB
y0R2D82bkU1Qjt3Z8CwE0veXQzmyFVKF0mdV+6Yld/kOALeqDFKJvVC5ZGnLrRePR4JpjsL9s1KX
71tHMbYk6QA/yUZaJtdSFJsVMO1544m1+vY2SQqJCXWK05C8V72pYO8YTU2AH6ca5FK/OfDiRGGV
mlr7OM8XvJy/FnzUOqxN5mDo4nsAoQN/QVoWw978UtDz+bpgZniWNkrTuRV16ejLBuXeyV8eO2VC
lnqr0GSodpiOgm8XLQB4bCOIbCKy+3TmLtQlNxRhCSkRSxNqPswUyWWGDjsz1yfFpR4yVsseqGrW
GDgk37M3lJTpcAqVTemYykukfld26GcMbWjKS2E/ILMcDUdt0COT6W4VIhAOINBpPLSud8sq4XIr
MbXRPbci2MFm13DFLo/I5vAQ+oqKalhYrO0rIPmnNPHas1kajy2fKsGd++moBrqUveVEQTBaHhEf
GVNNJxnP4RBvirZLLwYOf2Gu+gtgD4V5r+3zD0z8ytoNjJyTV4et4TyNXi0Zx4t3bYUvFJlra571
IHz1bw2DkVN1YlO+1RJ87DmQfvZpfLG+u0XPngwx776x7tO+H/QDdAlWICsNFs6Ka3t3OVVyb131
cPJrYeGMrNQT0TAEr6umzLSvswr14wjmxCIiJFohrKbZDbxGE30BuaEXmDBc9uLK5tMkCgsp8Cp6
mXY090ij5X9gVQy+OO+lRWLNooYVwqIJX5RdSO0Tl1zlP63Eg9PcrYUc0j5CwPbD/nclDVFSxgO0
bf2GzBwt9rSFHBUjFeNHPSRd32vQjVlTuDMrcWUz/uXZHCjEueUEY7SMO9Nx7GeRbkK6ZiUueuGg
4RiolzVJ8ynfEMdoit2lJnh7rA+xybanIOFEoNg71Dc4Imis7yeBDGpbmk3w7sYPYOxl1F4ogHwS
4OGyd52zKf+MNEvxFX0sp6e08lhAkwAnx6D1JuoIUd8rtfeXOnhbrmq4lJTOXxWrms4Bx3nHnbF4
Nf+y4A3jcfYeWWNRVdJAwZUx931WI5XUrZAVwoJkvbwwZdQbGPMw4aKBo5MN2nrVHuvNYzQCYIVF
P0kB2XMJ13sOhC6wifZh3pDao8KP96IRVRIunki6jPldtPCI/eIdisft6+Pfqzoi4jCX2ZFAvieX
WlMmgOmsVxImQFUNwMfadGvbwWbD3QNpOfkn2jHMu3Zgwf2ZIl4vcoR9h5my/Z5hAyKkzcy14W9u
jFI6Vc0Jvutwh39yXdAboopvuOOnZ83dP+hrIJxelWJJu25F3727qydfamg3bRLjJ4ED6kKlJMtS
cEHgruNRHv+c/sIKQEWtiAzrIbD+i0BG+/kEv9U2MYZnuUbv37WIYC3pdzrEtz1jiu3aP5aGgL8p
qcNu63rb+h2Qi/K94qvJqGEATW/oue0bkQI+qrduQmoWraU0o05H/8YK8Nkj0fAkZ3jFYgu7f4nW
jlcbp+eb6YktDQzUFL/Wpn9c0hWcnxc+BVBAWsJ+l5oTWDr5J0sQ3X0tstA31qIiYIl9b8OSKxDp
fpuY/K7uY12l/uM5XT3Jzl3W3yMEj5yNW1OC3rZTtNJLClS8E1DLvgFV3liswQycW6AOmsvhpgz6
R/OzB9/Ic19JMJV2R4AbKfpoFWAPns7NOQNj+rnRjIrFfcwqTVe90YI2yfrHK6RWO1EW7g215kBA
j3BGLKGjPVamoeOtVAwAdIDh5Ogw3AztZIxSsOcVUPLglhV5hfZPaen5ymy2iTqC+hEMz+YAeVSW
QodC3U5KvHSa8Ud6TWKbS9bTx541NnFFVYYmiLs0qATrRVA8DNgLMjKR67I1UaFh9itIW27MpBp/
qFL/XnYw8ukV1T7cbNWCMkaZVR4QzTMagy0z5P84YNTrfuRY90cB+dYEie4nii6JMpGMOSSLiTfX
VvvPnTEbdCcbjMbEuti3iLkUHV4wvTSWd38pha57So40SpKzExKS2coIDuLBN6WcnyT0id9ht2Er
i/ivEkvHZP8aDzKgxXsHmSgUqNFgesKDaijJ9z4oio8BcPiY4LQYA7dxXVLQ4HkGkNSpyidMGjGW
tmCIBJ0vvTuyjYZvM6fngiIl7We5luMzLZGJR8yYoays+jGtv066yaU7bN2N/0pryNq9CKV/RyG6
UO3Wy2nPlbuWdfUhT0UMUtrCYsx9kswdw+Zg+7Qf0HJDr9bZtxgXEXO9f4GCU0Toe57r4P5zQzPh
k3qrGGx/iUkYa6akTPTIjkiCI9ZcE8rafl+YvNrhbB7UlUeglT7kgXUYOdb/5iYrrDqMy1VRPVfs
650wjL7tQzFitIFE9ivrOn3rDS3pjwG9bL8u2UZTf/pXzv4gdNwVKI6D7XMmi9WWeMHn+Rz98vCT
C65EpyT2fAMNwlTgMg/O9u5fG4HFNiIP6piZJwI2WFYHuD9XFvP7bds+kQwbA8bx7n2mm9L9TseI
RL5zScPpB6Pn3MkAnp7Pmnr7rNTDvgnaPwj5SKA1I0mw0S2ih9RiPJsJMypli0Zp2xXJ1YIPsTXd
JCPMMtp5cpx1PgNNWCfd987ovEM9mhVQDIYt0Bq2yEcq1gqWkZgPdeHKdYRIpfsQ9aarWxLhXaeB
9DikWpzg4Ymm0ED/zKQEezWJ0vJHgiZ9LF3Cpqhg9WJ902D4GiifXjgMxe6gu99PysS/V92Zk85q
GdtbkeNAdFO1OKTB4ORopIkfiNnl2E8zZX8haGYDNAmijm+kF9MyOj/kym38OjrMI+3nh4NdlWTW
liWDVaVyx3VPnpJuc0Wk7o4nHUuPsBmh2oItR1eOLn7lzPC34nKEOAr+nwyMcScQBZMWN4jgOBiP
PY8lglo4LOll84BdeYcM41MDTvYcj7ohR3MV3iUPunBXOUyNGwRws7nNOfCCckkgY1z4KDkbWmXR
RUf1zhCQn8md5wAmwKp4rUHX6aVe8lwwzxXGELEaBE3tJygGz3dU5Yu+rUdARLNCRT1eFsHhdNM+
+JryGY3Kfq5PBIv57gbwaen0Gnz7y9qu63NX3eDkSvccycbJIKIx7R7x2OBoBCfpZbLbltLicoW6
U13GypPVT3CLFmUy4pmVV91JU37JFWD0jkFqTR1kyew+U0MctU5fwSV/uuCADafCUaMqbWKonvAY
0SF4I27I1RE2JwL0vc4vykqDrbeR5wrIAQg30xgXOJKBXrbeGlgYnQ3BFcZS6rXPvmsdoPCoODRB
nHPF6hnpP/ssQXAHIac8vuZAhh36005+7LOvGdnuq2VAgfvgV/1EmkbHkXDMAcTi4ucIatGsYNbg
49Z4iXqrtMDmSGOLPNLGXsk+NU8arrPqx7A41rwgnXmI7whuDGi+B9cceIoW1Wt3GN+Sl20p3Goa
6jqU1+IuA3q545P8kZJRGa+wFyQQ1hStpAHK5g2bkMcg7iXLekWrBcyfAyj9rbAzJeQy1UtzAK7f
Qm/8kyqvyAIbAANckyTPgYLTJnthMuVloEtGCJKfjd8poNDn4Swn6uwVF+UQcIIwlfeHBn3Va6y3
4cDaDBQ4giFncP7x6DozEx4tGk1Elm5C2fjlpI8Agzi4e2eQGzEKM53vTpbLaKSukMJ2hLxfweiE
FUoHFMoPEchzjnBRAZQlMCviMNn2X3QHHaPIs4+phFJtKDJff/w3xx314CykDmWGV7MwT4bJD7r5
+PK02RYWtQt7S2JAebB+pZic7SGVYQvaSa+UxfSh1L5FPAkzYgXXzsKEbRgtDdTkcADsmsu3crsv
Q86EeaHX7hBCn1iMqeGuKVCVFR1xnZBDfa9hnkLqllhiWqH7bgz+UCKSHBAjjgAL/qzqeLZ/Kl9a
uy2NgdQ/w6QCPLNFVQPXJ2nIb/pbgpq38E7BPV46Dh9ByQcMKSJ785DJwvDt3UkGltBvod/EbD45
oKlc8f7EdQLZrA+rty6e6sNvp7+R0EZb17XTBbC0wIxCegaHhSuM9a7pi20yHQhWz7IgibXY7uVS
HD1QEx1eFDM1phywdzQ4O+eqhUJO6n2HF9u5MUUghKjtQsDoBdILuIMcKIjOXU03F9DzECVoJyhl
szy9/aQa5nd9+6KxxzUSTwztnshrP3j78uYJIC5lnhOEcAhyr4fRLAsdPS9n/HWfiSo2Rc3T7GzI
biiQaPJDQoeiSAk+M7pXkLCPmvY+z0DaDoHx/0ETPNN+lFLVF7kp67peCL0UxTC3q5svxMITdxlm
2sWwZlKx/eOusSIAdyAgt5H+neAS6AiY+iDSuBGp8ZHYJ3KVpsb81liEa5XPU16mEzpjQ8HIZ/oS
hnOryM4yK/nQhfLuxSDbnW1F1rjsZXf7jdRafwiAN3nsgmUMh52hEKWwpYbCK3agQRR2u2yJmaro
iZGl9SS64OixrZ7wgLt2zyP1zKyrGW3lvv55QMBrayv/dLi5ZAYhs7VNgE9MJk9C71S0qnHdLUyt
aX/JNtTpJDMI6xKyJktQzS6XpT47ehLvqyE29KXxMI63UO13Ep6VyXCA7pXiFvFV9yekfFzZ5dnl
m+jkWEXwY2TE1aG3lXec7yPzb3jFyPV9b8n5kDo0J2JJrY8OEZQ0P0ymj3LCTJQHYT//hrG6qkzY
b2vZMPLAq+H95bax8X2imcAdNAHKWegc8YMbzTN3nfZ0zGVyvu/c2vW+UiMwPHAtVXuNYorDt3TE
AuRJtT4gOC9k62c+8dpKsI4mgcLF7mt8MRhakHIjNIGNsGESShYOtw8Tv0QIKWu0GKA4V9awnFvf
HguwEHPkJ7nYyd3/LK2jg9jTK3FCC8wqu4+CQ11QqvEnPZn6X/gOFGXH080/wci/zhUGZJhjFLjF
v6whvNda8E9mfMA69uYjOM74xmksUlh3uBdYb3USFAgN5mFfCNCCL6yPoXBXKImbl5F0ycbHgfXR
o9Ng0rIlVfKv2AV2orJQ0ocwVlRvt6AgL7vmFkZ3mLHVVzL6FF3Gze9wvPVOWCqhkG9jdtslzZEG
n0iiu5rZ5TacXApBNCgLGm6gJR84T4pSm5w6fAbTMbFe3qgTvzDWKcQmhF8xE+CwTls5hG3laFZo
bOdA5RMErsS8t/ClGTiTbD66eM3XQPC0wvkBYCo7XFpyfnAwLqWUm2+IdIyW50n03cMpjJJlmNJJ
/AWWNKKN9Fohy+r7uVI5bDltSFkKIQX8KijtETg8mQYVk2vuSOI8hDIPzkfZm/rYBsqBHH93rm5x
fUfyBMiZ3DKj0hPwa7SEaMoNK/xHuWbPPFSKgspqimpSdbMKFVNLBm/PmsqUUBy0PKKPvXRsvuFu
qLf/DPrLGaZhfteao0Qz/X060K71oOPq6PpxhDd27fzjBIbIuaiY26LkRW/JQ1Xl1gKh/gsT4+Tz
9yO0DlNNVohW+wB8NQ8gZGgVNPvzVHWxT16h11L5AjcHapvjAuqk6QGKirryuSeXhtNI7qqbpqWn
bwYB1648k9Fh1XflvlqSjjxor+nLTdIR4ubOyivXjbDoAIMfXBBI2YaQjw4ELw5+ciq8Vgy0B70M
L8tztgrwDLbsT5GTOyrQakxMXzpOCCtTwbxNUDS2xatfg4Qw5scf0WaWPgOYrFBH9PoGxwv/c0f/
wMwtu7rei3frQosrAdpr/WFtdSF1blFNLvuonPtc2MEW/UBTbfIez73NdNULYU6Ibz98Zn2gyHWF
qVGlqPxf5vOgi/CdTPKMKlb7SKAeAdeZgsqAw7QdE+TWN8PjLrFXhs1JAyu2v+Y1mzN13yWzjksz
vfB/FIJJtvqM5u5/wfxWEhDPgCwAM9188Lh9krkPHb8ea+ioC3JinE3p4MG1H4oPZVLsjb1rrC1i
bcco5grzJ4n1UWBMNZ7uElPyuItJf31s3NyVobxP1w2G6ArP2hH1yqgMI21b/SFW19g7/q+fGWwB
83tc4zZ9E4duXCo5EN8fiZd1vJ/Z3JKo8EpbYOmnwHf5m+E4R8WkmA6EQ1US4JiQ2KXE1mU8dE0E
QiJix4KFmJJ3V8hESszBBLaj2VsE3owjFwEWdtP873byBtAllWM9WkT6vn3TCWxSo4JkEdAamhhX
5KqkOjo8N7+XTBoCgZlsH+zFDDPelCGClClE/jxYYjGFN/pJMxNGIYdu3G5O5HAETAcD+3uSJhVn
HfLpv42alnAZrvbEJmEeyYwOAkQLIpxvZETdJ96UuIJuQeU2UpBlZYaLZAxUKtJw6EZHoaCH5nIS
cTZGLmP5ZP8JhccDU5c8yX2HwU14s+HRWpZM8xHfSbT31rtBNAAiII+3A5WXV1AEmqa5JPjltyod
fflrylWiMX9RFidReLBGcMR8YId5oJc7FDElIZZKWWlmMqdOkA8MarOLoSRBLjKAhIZB14i4lffg
+98v21R0ldk4SaGqUHYluTlfvzR/eZde8+CW71XnoVWtGGpKJYtiFzk0TNGlOOd+oYoKII/D975F
VUgFpjXdeWbl0D7B013aON4Csy4oCobq6DM9owB3z661lvVFRMIRwLrSwTWbTzzrDjra5NRsNS+K
bSCI1dZNxEoqHdc6PD4ifQeoEsplvgNRIgeP78VGTzBIfn8dfiAc+qPzUKYHGND0KE3a0mainMMP
DMM/5CUibGzHbdeB5FyJCExVRdXBFVMxujyP8o8QsDwkb3xwXqA8W7EP9jEnLXCeoAjwEo9SMft4
rusVcLcqSWze+2z2YPai5rOkgJv6WXfbrTV6UNF6XwQXoRUpDxPIZLp7qjr4NtH+LUIL5KmdrEci
uSt3XVf7mOtsz7S6Vd2I8YXAJV9TyhrGULWfPsPBPYixFtx8biac5UHdsu+MxBqkysZX3ShZOrN4
L6T5mHTw9vLyHYRJ2+nE9S4wQ5YszJ9LvsXr5ED/RIFpmCX5yTLN//p/CfzkxiT7bAQ7zigB6O7D
rfCTtm70rL2vPnOUWihiEJfljb3V41rIy8lXjQlbKCAeZqmZ21aBuSyHeN7fZwuGLcQWZ5qEYVfE
V1LqRX0uQYstHuS2B2ehON/wfzpVpEisVOuKfxLDz7exzsocJHaRJR6QlBO2WX1zlbeB9b/Wk6bA
aMydLVCZKlBOc6BelXnrlxoRhCQFe8ho60y7E21G3jxdToWTGqfPobk5GRFK1WNPIAoc6tmAZeH5
8GCl0oJ0aPYHy4T0tFHrmxn/2SQYmII9iuLUiLKkZzJLQCyD4JrskGp4wFXm7shCB3Ro+7yJwuZD
GG+i7fnkrwWsxT/w8a/mdPYDebZprZY42k8vDYcgmPEjawQFSJYGu7o1mgqmyW1lClYk0dGEiZhM
+OhzVIHAQ01xv7ry3e9iXipLQUTRWbO1iiFyEGe/mXcLfnlpxOtE8PJ3TCflTZDn5J9lmPiz8KY5
EGJzS5W+km6H2wvT2eF9e+y41q1pBIpGopjUIrMqIA4nsjbqGh7h2hALUbFH4zWyDOgtPSbWZ/2M
T7dtQgwEf2jN3uQFf8j5d+YhD8NBHAm2guUENNsszfDtiup07IZSbkl2GWiMEl7eprlTgJynV0QD
3IeY8EOkLC3p9ZvFt52NXis1mkCj9giinpsufW4fQ+ISX8NNdFvb/1ZATrGoiM7ko3RRD7ymWe7T
fKxjA3J6G7wW9IgQLzFGdCxi2FKJ0DKd0YWmOb8r9okXJ6/KcRBjr0lJIgmV5cFp9xIzhbOUoLWG
K3qo3YcAM+skkrA8LE7vh72NU91vlqIytf/IW4VhWFPLzkhktu2O0MooldpQy9OUm1ul5atcGxYn
dADlmwwo1sT1UeNGl073OBM+FcvrimgkIFp7kmgqRwmPZNUAM7INCBr1A3HP5lwxuMa9lpRGPZal
rySZCFHeEslxeA8Ulo1aQxch3wAJCKC2+d3WgQ41+iR208DBOaN2YsLzwyRIOax5iUeXLP5gFI+t
6c5tdP0GaP36o8+fui/wZe26mtcL3RbgWDHJ0kN4qzd/0bE48g7nuzdRRzha8B+DzbiNtNNkBrgH
XjYzvSF1MgNkHEue5C3djkUoHS2tr/F8BWTqoblvM1te/P/urHKYnOk6UhiwViq4NZb/ei/mz5Gc
lG+NPDCqeCmkrXkNDwXqEPrQkOp2fR0jy4UX0vtg5mEFjdYGjRgE6jrNzWWS4Tqh73vwOWjqNMWT
TdXBHZoNoVVHeCxaoYQGwtjh2DvdgT7EZfE+o7EdyqbhmcTH5jng/x+fsnquVyM/lLE1sJD5cXuF
ABFtmEB6yQaBLZq3ELHtccGNdqBdUmBlmnLwMlK9I8bvIABLJGHOn9wsDPwfw1aE+/9/wtHy2Ffg
SGIyzeJc54VLskHYl+tVz2GB52RVBJSRtdRruQORdJ2YJr68RdUuU/4IIDHAYKF8WI0X9p3g6guH
ZkolQEg154+0mnDm+e3zZ+vYfGR5fjJGqM8nRY+9JjLEMnWmXBtpMf2up3Zibmmw/tXV8ShoPq/h
qYdI9HCJSAgqXKppt5KQ5zJRz5739maW4osAABtz0TQxhMcl5OcUce21uFF12XY69kazVA2PJNAJ
2rQd+YNYORvDAzTtmCY35p6xok9wm51TKmPZIO3doLKDwehg+riGiU2BR/+qZ5mpvnos5J+c1JdM
995KMLR861XX7Bkc/qenaO7L6Bnd5YdBJWwBxsqgW64xwxEQkgIQ0qfJrKx3s9cjrs//+M4zgZIL
ZqbCtqSs9F1r2uRc2Cpi+vreQ+5adxRVcUVdxcJvMUMq09pMcKWZkJ6rdRYC8mv/lXYq+Q2DyMHI
mcM97xRgzlk/XQQT0l3ACn8uzYqeAHvwgb3TDDIXhMeX2J4sVeu7ZouI9GmCACZXAl22mmvJdrSa
5QxHcIbjxSgBCRBHzMpzcnLhAm725Ew/rpVDoiarPYKrlFAjnBV9Ri5W1WoeHVPMqC/ieQ3aG4fG
sP3SKAQR7y8dmGlsKqH7oTQg1M3vQvmWdSwynXSztX6dixTGwnXLTRqwLrekslMYhCSdYYzdTa9a
mvEhXNacgdi5NH1NGsa/NEuTprP9YfwdAgOzbT+jaJSlpnp2kYrfWwaa0//WWo1CUaQlutOrhWxm
yQb+KFyXrcRcuweUz9qHqJoEHuX/x/wpk8lMPXuw19Irao33Upd8cCa1kUiLYyANalo5wZr9JQkk
3WUeV9oA9Eb9RbtlyG1rZviVuRfE2UrCch9T+k8dWf/L6PyPvr/mqIPqxfY8JB/0yJ1VpARkzpYW
Dv3Bhtyp+ognNV31jbRn8S7+xtCnhI9IwgcIOQimknIjQjWobqRz1IIoJHS+J1FIGX0pkvw5PZ+H
dBdy/yS9QRoKcKTKbVkrQMtvf602ZSSxl82TZiHkHkUfgaYf92nxU/KUHubzwxU/JTSAxc6Lfngq
qvPl4wq6TDJQGsCvMh8urnX3vfOstI756YiiQLvIJeMwhPBSqFo9q+MVSU3McO6vnf3+lxmlpPHk
d9zD60HwEmNctlxWFmL3IaNN6wdeT37wl0gog6d8JTneoP0RjrOEKS0FdPqHV0+48K3cj2ziLnsy
0UrQmZ2+iM0/A0i+qVhnm1Phg/w790vxbfbJTFXL9P0pE0IJk+OYUnSkwNUypHWxJwasC6d7bIm5
Ha9HyafAe50q9P57aZtxj+D35lNEkjYJ0KqqgkvDQWQbZGe/Zp6p0KdxymBQbiXTFuzC/BLwPEo1
Nx7aDealpsCX5mSfVyPHWDAYY0PmerC2yHromoNAqDs9duUKh+Uwj1eSP//jOFBB1fewrM5nLy+n
RWXR4T6ZElSHC2P6blWiFZICSks5v1KsXIADmagNKIs8Ui7lOq/0BwPKscOq3OtELqRm2mN+CBQF
dFjUShPr5RqAABDCOjlmhMNZbuYlM3otwou/dE7V82oR0mH3/64DiB1nEtSixhBWstbkyuq9NU6c
0NKJw1zwnCUzHyKP8SFyipCboSFVsm6ArOd45M5MCVBKcRb6QloIsRUA/vzO5N1QGibI2mRf87pf
fpeCLeZxSaFtbcpdBoD3xbw1Gf/UMlCt/U1P356f7iCS+dDzVXEbZaRI0alOMSzMEL+jVjhjvl1W
kvnk6PWPFV3+QowYouk7j0BYgnNkIorpDbZqZo2GzDTfoudi3BzEs6vHb1fNZQu5ze0AnFoUJ1mY
K6zYJm++pFFKpSqBMol4xL4rqTUvJFLuxIhMAiHS9bhTtvgY+iI8wIq1+CdwY7zE1C+Ls6XGrQMm
MnxKtiq5inedB5m8s6/aXgEjEOyO4oA/UrlpVVn/XcJSs7fTpExjleX9JdT7LfWcFRZB1gQerNXy
Av3Q3czS9twF7EmkDZRWJPz6TBUtk8Q64IP6la1+5shmYOigak/puI9I8S+xjO8gxzmpt3/72EwK
ArmQSWIjLG+1dxst0PiJGX23m/5VPs9kMNTkOeX3rF3z3SdtCX5a760YlVrTjVM0GxHS6MCvFSAd
Y9+SWqqQNcPJb+A643vGrpVHshqn2tlZ/0WtaSn3ckv+vN6ocj3W+wSR3Kv6onWAu7FkI1cr1r29
HV8CiR9kYEK6C0JNNcOt3P5yJBBuokcEushS0cLHc/bJ6bnDCTBBHviakWuFKtYQw7wgvk4cFUx/
rnlV3D1uvljVECGS516MCEQbd0DkOsDN+y7y6s2T7f2D7WOWKIHVMR1HqIV4o83tt0Vl4nEUCvM8
jxMT9qSuo7Y5HTS7KzkoM2ydSN/XrtxzHrhzqxekUBuISIHVg02Q+qx0VYCZu9GzoJnVAPesSQpD
RsE6wADKqntzK+j+HVUBGdVRfJXR/uKqn80Yl7OR/WHphGz3mLKGF2pcX3LnD7Zzdocw6+gSx4tp
hbWhO8lGiE5JVuGli6srF0qO9Lx6Fk0sA5j9UvX2a1nfGnaJNT0VyYbitHJsAEIFEPWIW/PACeiN
EnZdT3x6DqYtaDxgg7RVBO9EsnN1osnoStPLynwWhskQUBicfP5XrVCsUuX4lGu5CQdlXjmXoD+q
2pzd+6kouUujN4ivfTutqSx/y6oKgVN3aJMD9JhHoA6CBqp0z52t4lN6V54W5d+cYrNCySaows8B
A/d29BchjM8rZCBkdvhMu8lqsJ6OA5cxZTcVaZz4cXabwDE6txu0ds+g6yrPQNDWNsJPbxrP/tW5
0+SUUl/WAk/m9/ibLc6s5vn7Geubpbav5WuytkpB4iidmgr0vXKLvLsGsTq3Y6r8arzILK5BgMsg
h/lcyDXp5oBim/F67eS2IqYPf4iCHW2eg4zAi5WJDGUM8DdLZU0HJ4NbGBW8x0DPIYDN4g7L0Iy1
cpFMZeSpVKeALIV2xf6XMGEe58I+rRYFZtU1PDM+WtgHJJrctzpNUiGZ0QDwBLEnfVUAjsmFICOa
qGEJtgyI0VMLYDyYhf3l1Slt6sqba713rKcDC3kTvSPeh1RNRW5z8eJ1jHEtlxzArXJY001Q8oyf
p6uJl3IQLrC1H919gplIZbjOmw0dJABF0fTiynWDdflRJz7dwHXHOxyKVVrpjXlkrJfhC6Qm1QD8
PIKhJEfMvlfq7XaymNDlDNVdjPiccSFSupMTlkrZZYUHxMSPxVis2x3Arahas9cUiEQi1EDtCryy
mcP1oVIOiVE5DyF7p8rLY9sO/oY5Mt7EDZBF42PS9p+iLEzl+ib6DQHiZHCMmd9zy6DyntSvCAGN
5Lt54lOV1DM7iH5M+Qj/GP/rfF4VZnfqnn6tSzNS59CRefrARPospjlgqfDSYlNsabfteUxVzn2G
kMz6B3o6FADNCGDE/hybafnKXMl8A3E4hmmsVv4KkMcKTlgQ/B+mcwFbrLI3uiVtpq1bUYjuyUu7
Gf47GKy1c1BBkFke/jdGH7j4B+CKDv3+KXmwJ4nfZpi/zNJNCYT+JUCLbB7nb/ttCk5DSdtI5daL
BEZzbn3VO9oMnYQH2c0aKPayCo0JjITSCfGpwRyZe2WTcy+oKoyn6XE2sw+s07F6g7AIFj1ETkx7
bqK810U5+ggC6S1ogWGyyGigqM2KCPQGwzbqua08jf6NZ4CGSe+3w+OLi5pru8+BnikcpLuQeSWX
LgkgPyH4ZKQ1+bfE6F7+1qYayjNLTeKXXh0MQjgS8QL/f+xEoutS0fLBNTC9pt2fdfXE1bHLYuOs
aEGOE2S73QXGrrYafgxskJ8oXVJmDz2AAjkhb/B5WUILbjF0cgu4MPF7Yvk7Rb1QVyGl66cGkagA
zLRz/fSRQ+y8TtqZLhzwTGWLzhDGAOkiP7ISEoMI8I1/9p3ICyuriHi53yNa0YxTrQ8u588v11y1
y40r7UeTfJa7Xu+bCbTpji7ALEMBmCuNbH0VBBgunX0RawZiHAeQPHrf0s3oTWBSgFD5wqpihD65
LR3U5L3T7FwS/ItEbttsAuQAFgmQgQFUvAc0URG2hPvaj6q0JyMPcuxO1aA0nckdiaTQqers9U99
s1PUgNR8v5wolIijI2wVLem6xj0aNmebU9cwFL/lUEwPhFtHSdY1jGHFO5YYTiCLyOIrC9DvnwIj
Lb/IJ9L54nnqJaq4yeJx7dZqJPD4sm3al+8fX9S892gjTq4FVyYgJZDChaO84M0Xsx9HrLMqlXkA
oISUar0fFtVGnwVx/yfYbvPUvwITlnaMqIl1fiAa4Frxr9Cj3gBC1ZeUGwLEaf1fmE9glq6aIOS8
k30O8pAdwAUifXOWFbCx7GSGMeF4CxzJzKElpV/z1UG/nDSRGawTHYPbRGY1brkznhji/nFxNkEF
F9sngwusDVHQ/fE6MUBbyuXKk+c9ZQpiPL0UvjA4VHmTYJT6FVe2wLuyuGRlgZsNgAshajUDlhxq
+P9Yyr+STsILr46EnWhjHCYrOwPrvU2ClQsm9vbY3try+9MLEV6hQlZWs1A/txbvzC3LRYwBzipm
w+EJsEVQryyRxSGsRe4xiKSjGiCqcr1BJkY6DuD3y0L8YydOVFzSl/fysANCUSQGJXqn9SlessEI
SonHvLiDzWRP8q9z6QuYpI8mpre6EJGKJeZXFU8O9zuoSzxukPNRp0QSbK53ea+NtEo5GdjKh1mt
glTFVccCCaHmr+qjUv6wnyl3i7/yQuAq8J3+ZDl1sFGbaSzhe4qC1R1BW6Mptp3yQwmIvMhALX1j
+W6aW8Sk//V2Dpe+lSeexZbQiEPjhfGJAyBlQfi344U0piWrd74ey0yVQBQDrgDgNSQEqpisIYVU
CP36tbluDF5FyMEOGhXhdWC+rPvtc4UEt4SOFrFSVwvXG+baBa/3Zu9LZlljuEs0ojvX83nML0Io
l4UraafJy12OJjw9PuYDp7A+zXesKr7JFuyawnL/p8NnH1FJPMXilCRdxpManCQS9rxoCj9xnNxE
qC1gs//n/ivvSLjFLVMgx44c3EDFNpS6I/lqYGE7xbz0cvGHi93Dok7HCo4TnnKrnoQJpnzMLS1F
nLB2Kn1uue0zliqvX3iUoSGmp4NVcE1fBxf5fysizByoQ8IN8J3hOSJnqFrLDE2S4uLcvXRL5Xb2
FmfmmPMWli4O7xspw+C3hzbkKQHp0Eu+ZQ8GnV57t0reCj7k3cvSHD/idbwhYNH3gizjtVlcUGWk
p9LLELuuHBBqe25KUJPSGZk7IOrwpEFpvka0bwPB5Hr/QcBfErNNVVDzXV63uM/uI4/ElU9yrGFI
FFqCeTqJccecEIuKD8yMZw8FCHWE33JzuGHV1tsMMp1GjmDdiwkZgWEOlWWezEinCHrWnS/RccmO
C5aEwjxx8UN93JcPb6VqV2qZIZF4+avY28FtyUHpqrRKravoR5FHbQpAiGe7YYxHRtpIR0KnwENW
6/1BD+mIoBx6FwFKC011BSRe/+m5KRQgzhYr+qiSgLILAuj1uSgSBu+3LQJ8kX95KIUA130ni2Fl
BRgwo21qJomfPcwn7wqcRcLQ5rn+bxHvG+Uv+G5sfzphR4NWF99z7jE+XR9p2rAyEUh73m+6FrwH
HeyTGaVYTEoXgGLJdp5sFMWDv9YJtVcrAX6mO3LGSQKP6cYmBwyO7lsHn4iOoR9b9IUJm5LZmokL
HPXEj2ZrAlflymL5e1u+ltsxTjaZEqbk/LMtN1ivODbWJvcLGjwIIpJFgFXaPT6YfVk/7638TC6W
qk9fgFhtY8xy72XzQpoRI6tUVwYRqM0ydo1H6RU6leQrHjnkiV/SGCDVm2UDrqptCkttkvNTiwqY
zRsW1RkysCnMd8zr11C5T8B1hvApd1NPFolTJpMT5lHkc2tURYxAWUEWx7vVc5g9hkyCqrIEyZzh
N/wckwk4eRbmyd29CFaxpSGQWBec8U6oPYZLW4JUATcGhhrbFKidc8goQRjDQD/Q74xvjPtc2fMM
Sy+SUJPOVWqbtP8ReGNpZF/esmBOfCJRbWCTSEEcOl9gKcl0BuhHKQT7zUfHs5SmYQMOAEfvwi06
l0jTWj0YI9aoUtViKKLWGlztF59IKiIYUR2EbsGOChZVTxF0+EsAqLUypqNV/ettT0BtGllh1XOh
3OVu2YH3urAPihA6IVRQ8TbkgR/1Q4rMH0BOg6VM2mMVjFWFZMUDIkscFPF7F45OxYc+IOLZERLl
7qq6Zosh7dRbr/NP6C97hEtbPfhRAJujfFZ85+8lAn7SYpZA/hEJSvOVQgUWhB5X4j6W8rOPHRIY
OFIFObCgp2mHnY1xrSm0mqbXyhoWhqQEjWHbKRLjMLfqPiqI9upjZ+i0pFGVgliqJtsIvAfJmC8D
0t855r+bgy15e8tmlzd1TqB2de23IbLcE22FcvS/8SPfGoTuNCoyZIiAV5jlg4DaVqxwyDg8Jzle
GPDNwni+Z/9qwdgRT53PUyOI/HZkzEH9mxvIPkSU+WdYJHJF0uRco9WOTX9B2w8pu4Q7sJsMQopN
NKyeasaoZOIrjb5XS3CJ6F7v15dD5dKzhgUj3PJUyasY3j4FZyGk0vr4Ov/xNZSYlwHJiA5eAjwp
LdtijL9w5tG6t7W+kVBc/ozlHcvi0gXYhX5LWHt9Qo1//Jc5U6LtfY+TlhrH9zMPkux/UWjFbMbk
oaL0HK2zLuaLvYsYcpM4NavjkpG88O9mZsMhIRSVJg+tIENyotWmWtCb3yWX6mFR+dglVMP5FDzw
tCEK7Ikx7/Opl+d1HR6uKpCYEEIHHdJkGDIgFqgfCPEDOaB9Uyb6BfP+zYw84Asvbc6PpTkUugh+
twzh4T+sx7f1LjzUhd5AsTSV1B++36MdE9GMI/YJyQfBJT1uQEzcyF45ij3DPH6Elnd7m7emRmu7
l6X4B3/qZDoFd1VLIoqXzDzoGdKS+qFNxC3Z8/HSP79HKV/mciQR2Z2IOu+MX1nlrM4PpMoFRDYL
QMGflJBr41cBzUNPdLeR8raDcn2C7QDYhPhXgO8ADnHwhtOjvs7XtVs95eqjmyAoLZLKKt4HDTz0
j1Id1hfE1VNsG9L6vl0IYERDqW9gtLfO2kUr/h6Rmt38rJO2KpQnf/ReF4C51d185YGop+HcTOfW
Lo1mNNh4S74xHmFuZFb+e3eZ1EhyYL/He4adFWjCYWtQKGgRDMNqh4BB4gM9CWiqh9/3hl85BZZD
zJFh5mL7FEjqU2O3mNBTI9tDGUXiRKWu/5OfC4RU1X6V42qOfyVfkSObBMCBC91gieuW3LM64PuB
r+vRSp/LiyNIRhZp+vBrWg0i2aRZsKc/lOgz9U9dcgadAJUrAY4XtwoNRAOrtzKE+lCpO7pI/J0c
KxJw3R4AFZz+PUDNzDx7YT59ZsGMZ2WJ6jg8DPgslL8MgjTlEKgkMNBJpQbS5+bueLTXcBMqV25j
S6l4bOU5V0pF+rnTaceGv33VawosZBVmnS4UbYKrsoEZUV7oiQpSC9Q846vEiI76LVXoYIzC8oP2
CnrGHn//Fhvw7Go5EzJ1s8vCS076ol4lnRr8tN+QsRJhtruK93uCcdPXde94dMYp9xsukak1+Hae
U4WsAM53SEASMavaC9o7qXPH7ez/Sci3n0jJ5JN9fZS8l1hBRbl/LXFZJGHYRNQ3DZDfKB+tkeLw
lo6I6K3yUUdM+mFOQBUW9BUjWwHsiExq3+vQ7+wr1z3vPFdDsKtVPXXe0CxvXvq3sas6hM0Q7m30
caN8SAEh8kasoDegyKhz56Ubt/2R2gGJsZKSd3iGbXYFwQ9vsXBX+u0Ny7UaETzJ452AiHHLc9sg
ck1Oeg6I6ITb4gW7w5N2I62kRZ3+l/r4QNbpeYama0Ukhi0pCKEOfjhc/SIWM7d17RMJr+zuGLDr
6fi52Vc9L8LaOdKdAnX5APIn/eFGBnnJnsV4h2aNx2kDobDuAv/3/7V2b7GrL0yEuq6XRx36knZF
d/Y8EUcEKAonMczvBNP0yAy0W079M6HaPxRqMF+BrP3PDTaTzl2Ou6hKxecg2VcaSMYMZEP1MGM2
1lwxEWZyVmAIVihtYI2isVsmo1y9MubLCdG1PP9mX4JxJwtkpntlCLLOvzLKn1oIBmCtykKg5mns
CgqsleexxHMdeJ0pwLInK1Q+GGGrDAG8ySSgVZUXZrKUMRIucdPFl1g/9xXWFvwyzFL0a9jLv2Ho
4mcUs2rpeQjXqVnQgtV26WA8O+K4X8OlDoIyd1WCik56XYGYoMuJzdJlepcr75CGGPhPUS51o24b
D4v3Qrg9DTSmobTSJDYHKKD5fdSRwDisOKEjRSJERKUDKBWENrI+I+54P7+XtdBaw8UDHO5dHBoW
k69r7sBoqpZVhKEcHkkDJXm3dNBT0rFFCe9FHuCBqhn2RQSvP9OSsrn1ww3yxhkzE443pWV8mraU
A2W30TTfcbleT/q5h7wNF2AhMzl/GsM7VmToQ6rTqgQ/XUOYPU4VWCbEyElMN/XSSttKAT98WLeo
UHvbmuHpf1a8KOFfADEZB2YAJfD4jnHbE0x60eJdWW9oy9ubF06w7mASqCOHEYlapX+ipFO0dvgk
KDKkzGjifynPkJvyLGTx8w6oW+r92I8uexa9dafX+Kz3DKfQj4yk66eqrnHBQ2sULYAEx/8fmt/j
UfTvlw4veXDnb1s9s369U6KoWDg73S+lPTSNczkEnzKZdvqm+ZkqG6uq4XsFD+3P3Lx9iM8fR81W
XlwkydZTubC2jIOEWm6HkjwCcxEZev8CHeL00tfTPzbsYXOg1jUnu5FWbe/JsfLzJ4nDMY9BpqKn
Jr/YBUG1doQXEDA3cCy7CoA0TqxFG0qY99M7RRQk/qY9Z/pWaVIdXdv1y3Lhdab6TUmHO6vnkwbw
6428jqxNheYLU+4r8wVcEHGMeV0E587Gbq1ZNorO9LcVo23wUjrgz8G8irCAXIDpIz0HsrKX+AA1
LliSvCrQZj5I/liTl75yapjxlGJpb9QedFNdjB69+rgsvU7p5f9FAMOnFCpdxAcxMvTaoNfxT6MV
WWH+0zM/3ng7RTQQLKe9WFUiRa35hejsGLjqakHO5vEsBr7fOX0ZspiIfkDkbHJNAec5bGKsRBcD
qfx7QvySGl03TnHrc6+b3/hSdklNBmWTOyG0kTZgMsqdyZagCspgukfO5aU9p0Fj8z3fjpDiM7D8
7LCWSZ4kT+opzFWP79HUnDIMv14AGWl8K3jbUAL95zE+h6a4o4i2fgZhc5wrHBRQroqRNR/bD5lV
SfgUd3gz4pRSqA6dKkao0HBwUZR1eNDBjSIx8u5zLsFFTUbekAIsyS+x7eIL1wdF9Wtre8PlumdZ
y7saBSjociUESnVCjemqu0a4qpoR9I/B4NjjDcEL/TQc/M7VwvHILyPm4W9kyqg1xPh4jANlDyYr
5LWruiqwi2SC2JO+5SfFJ7lvQQFpqmUeTlbXS8qEljFzidjdzueQmPt3Qih9s9AMt8Npy3vOdpX6
nrqcHyonVQHp+zNMee1hA1lLQ2oIAgC7B+EDx2aN6O+dhzJCnRAXt8AuJ9Oqo2uG6SbA6Kf+QpVy
CNlKhD2t/eEr/wx3osWU9rumVGsq02MamoDdrlvN6T4Th8Fz7X2/EckYf3DG+1wgptHHzpCk/sxS
V91dwpl236j22l+t4+VLjTTDSBq8iSBNGCKy8Nx7uZqVenEmsoJAdkru2HbyBeiRcz9JUKDRwJqI
nEc0EuXb7AO9LfqSYCOvRwstELdjodz0yafHXqqC/oK32zxXQCwEzipFK0QPekpkzW3wFXbjhe1i
HoNxaVEmV09q6fGduKeG9zJ8OXF/TWIXoK5po1dquO+Re8YnSC4XwOOh/Isg1VrLvua6MxpkellJ
9besf3oCSJBWhUBzSK4eobdyZrcE1huq8+1/ZTxupxZxlK7jCHHibvMukfIjt7lcnthrJII4MC5P
QDwm0psIKDYT1VqLynDVyno8cB1j6Ryd8aPTKqpqxYthrFupxBcrY9jVTjmI1K9Gch6YnJ5ZMyrM
Bd5dPYlr/ZaSOZnxmI7lwouEcNRktzroR5mHdURAx5q2aHl7ynYprViMH5Wt/ZFFAGAgqf0x5GRi
uQfxDrcBUIslTM2yvkEVVpvZxuJaLlwLjYtjB7T/s0BJsFOu/6NFNlJwo6PtL9z5XONQELqXB0cu
YJNd4geTWw2Ug3A2EAJc0m5vgrD7wGctyDjqr98gvVBjhYXJPQyhBhcEiLS02pjA/R1LYfRE9Q8k
BQn5VrfPE4W+IKo1zk/DWMwboM2DZUwEuy4g+oL2omqlaQbM0JTdUjzFmSKDpLQm3oHlBIDKnAYw
uLjQBn57+Khvqs0ge58CJUfzKxcyoN2z6lFprFiPc+y6VslC4v3vjuRqdB0F3wIY82eFAkBTkU29
cZ38abOpiB0PGoIcA4rnpQIDXKPOJuDQ/wrIEJ8Kx/lRaFlsJfqVe3XM3MM4LQZ8RPr67JO76Tn0
NixFQKOni/ALZuqysdzdTpPpghwwtpW83gp/NY2/Xy4Fb4/CKE32ZgD4W/m4AcXViQAJHxVcoshj
pcgn6K4PD7o76SExY3xuQXieTjQ80IAnx4hX//bkX2W1QWzhdp7/xmF9jx8hP3Teumg1MzAQi5Ng
YrtxMDJcDvt7aoKd0JLCVnKISubYBMIWKSE9Yg0hqLFfnoIKyhqBTEMjwlVr+Q84/btWBULyxFUV
Cr+1/3I1AA4lhZo3+NdINx9sxgi6B8d/ZDja74O1dTJN/aowcYv+7rY5FCfqGz1hRiHqIJ1oPWJ+
RBCqTk1Hdp10YA1dCHAZH3mowzxsme+3+Xfyz1HMUVqYRNyaHSSH/18jF2tOC4EUF1urWsMEllA0
jOyIhzG/Z5X/ksEjp+LjCavfMUabX2ESHAu4cKPF7gkk7seh9e8NVm0ASHRfezqAHzj1eIm+Yla4
lPQ518aFLb5CY+HjPee9iQ483GulG4hek9iaoFrJj3UhnDPJtiw25M9nuv42IYMSW9VLxYdb5OaT
3uXzZ6S03eERKkqodvMnetD5Aq/E+0xhbibvez4Rlsu+m1Nfj2kwMsK8q7iNqP/yO4M63DzVXCgM
lC/cMTToPp9FBLZnxlln+ZA10qmsCRtL9vyb3emHLg+Mp6WnsokDcCzmaDq0b1J589oQl5SKiRXs
121VD3HcSxUUFGFOtxxN67c6MKDHWsV44jIuwp5duYN2ZKptQkUrUs0GXrBloye69mmUz1Wb+7IG
JqO9HdRhs/Hdz1rRmB177T6m+KjlXCTKAg7D+DJFXb0r5jPFIQZgtzdDy5LgiJ+TLBYqSAjtcq7i
X4uPoR9BCqgXgtbbtXXtkq6JuXS0uTm+bWF+KALalfTCDU9N8mnM0Im6PsjVDmJP17Ky/VecZaD7
Az20CYZ2WjDGQIegotHU0Ty2KGWIqkgv3JLR8FUmiQzKeB5Y+Ha+bO9ydNmcOWaPns9wuZuDRnUk
jzXLgVqxGleAx/d1zV+hXDAtjYknhLiEF2G1+ai1sCq64SzUq5WhpLJSFSro2/A8wgRfwNuqeHhJ
8DOud6OkCG1FX/PjKXLm4vnQstBOaiTKeh51m3/z/Uk+K+AbMlFVDId9ua12XfZ5BGX1reSoGmHL
SSQzeVkMsIJikT0EsY/eeTzODcdd05xK/mIsVKB87by0zFLvq+DPGlc+lKg3bxSxfXXP0r91o00k
qgr0w94eNXZ6R0Ue2+h3nh+CCkXKPyO1+7lcnbM62FxX8e+tn9q2vXtlIqhQ5E59Z+3wZaXssWtM
QABfNIRBbhvgiQiO7s04TKFWTCiqdxYuXBsQe0fwe2sVbInmN1UaEjaD7qc3IhuvvRA9uwDJCmXv
9rVoxGqhEdIrUZPAejFQFW2c0UHhXfECPijzBdS/MnuElx9A6YxBN9ebpzqzhHFXyiofaelH6mfy
0YDOTiNyLNtUz0azm6cjnp2Oy2MXfeWGk8TvNuZlj48JCp7jDtaGE3uZ75aROpv6a9ijopaT44yG
8c8iQyJMuVvqo8HM1egNKSTOcOflLoxntA985L2sB8EcETVkmGTHHOy4z4B9Nx+rMwbhGCJsIYF/
fHKRC+84OwDC4RrlM6YhGog27sEaVHsOEhfKx9lrLk+yOu0TR9fhVU6wv0iR0xiFhuV+5rBhcXcn
SXCOOHhrQ8da67htv1OLU05SJ1aY+eZhWjdxvtM0WlJSQrgSxQMsRWpvuFbkpCkLoNbjusr7swYT
/Kk8KE2PJhY1EQTUiNXM6VHS5Dklfq1xr8T/1MN3K8VSzPA5gKAI+8oF6QrxdjO600QQny3cNP4d
UUTj/JM868r1UNcsCTt2hK51/JY/1kMWDX014wwiXGDC6tb+z4jqeGu+ZfZKBWuSGDXYit6wlfM+
+DS7EqU+2UP/BrIuov76NVF3eygZqght7XGOvhD8rtZwPlPo9rpJpS9GUh5qy4CEo1QseaizI3Y4
Twhk/jIp+eTEsctcAyQWfYatl33yhX8AtEwwEXB6Fx7nMNpqMn9ckCDiPi5gcshAEJ2cELmZW8Ha
aVJqQJUFfHsZ+J3DE0od3Ou5LOUruaipBnzb8Jl2pWyzNtR8kdWjJ6zVws+gnAwkbTI4HGq8vBeQ
CD/7ulqmCOuf+HACK30P2I6HvBTkrQp4eN276pzIXH1FrMikewaZSUs/zU1lePJ/VPcmfJVMeqgO
CguTVloQOmN0BjawzotE5YpL/ka9r4wLCda4+ySVyKlcpjMdd+kDPU75QE/7+C5RR8wKp4EwhPce
57mNbL1knc3Cap39MdQlD3dSoJA1an2qkY3Jp6JVP5P7gDf/mZ0M5iF1t2dnhuvRqkPXGR9zuxxc
s+MA/2Ue4tsdW21KsIZjlf2+viqTnTR8ghyekC0Mo+xHPk1/4NmSwpnNkW/kuwfPj1B3K4beLJIo
hp6RrEp4iSX5culSYx8Sxz8Cfj6o+ZHiX086m8DLGs+wHP4OPr07MhICS5zAtNELO/r8hB98PRne
d4q+3qLvdrbEjq4B4+Sm/FZYlXBOedbD6qdDf53WmQKcdAN8cOzV8/KSvb0hitnNt6cToe64r/Xc
LF/KI/GNPOlafQice71xZOnnT38EMkfj2kRI2t0o4/tmHkv1Pa1xRx079NPu+pHdSIkEeeAD1bvz
p7L8H1IQuvE+pK5mBR7yGOvq2t1l2cbVGAhTurbhAwu7DtB4nEvmbv0e7OiKtuRzPVbpjiPlcMuM
56eoUGTZ+TSavko98Zl1QapXT9uKjHQ25Jo5ip6dZw8Noprzi8vzR3QUIZz3uIKr4Fcu67SMqa9E
SjtLlcG9Dv1qOkpJsE9IA0Rsp21ld5wBXIBK+X7VprjfCn8t/Sq7quXyCCY4K9BYYI9gWa+7jJ2p
KNi2Dcww9DaovxtmoH3qdb34Ho8SuXLu5WblJVQ6JdKTGWpoDSjKpXU3RE2F5xUnDZFLG2XCj2fw
XR6DZQbHvKZnyW330aUUWT9f/lk/V4WawfIvixJOj96AV2+/QZ5sazzroLMWkMcbvEegT7XA9+GH
vkdTRgJD1/5OBRxKOh1YFx1BB/pCkl4ZiNED3eJiJtcQ2xoiZhFAkzusmZPxzt4vsntcz7HiNXJs
IlOsWErxKVSIv9rUVtzz0w3LD+w+M86b5RdIgcBs/F0pn1sdlJIcrD34Mfkt5BAY0aG8X5vLNCT6
D8AYnbwI8j1l0i4G2hPiQSdzAfiZxEcCLdehfTSq/BjSRjt0ibyg07RPmIf6fT8xIoG+1CxXCS6b
OgpuOLpL4V5v66neW61ebyb9dgM1DTczR9vUhD5cnO6DBw6JozHYjpobZnMQ8FIFjcEHAdKBepyo
zgvCGWJK3Sp9Kk9qJAKDEFur5MoWTuK/EodnLCDetYt5rsqWwjg48+vY6gJEQ20cVhDoP4iT/04j
ojf+Es2Y2IssrwDVd0O9Qf1VnpHwNnoPcwspyIT2qqLNiVSON+V6lS976Y95LYrlGqmboOQSYYlH
4fHWLEHq1RhUu+D0W3QeTbooK0rSOgxdGrVhy7s6ula0Vq2qkWgvvv7afkmmLIAwKuJO2tFm6U1Q
v/Beyz8vSKfyZw9JdvbRvlBHiW08WsTFPJ4AIvhn5zIKC/7wK2AP4y/cT09zQe5fHZQPjesOiSrh
0m2XcRncrLnFVhwiaFSwM0Or6bq30FaeF3UA3wfUldN9HCiY1E/kaqYOIgL5iMe4YOGMXCQgfoDr
lzP6Vt4YzIPFwQfjmfewCd/9bpoMH2QasCu1O7OqV+C/vXS0wuXC+CYF1E3F2goQWzebh9Jak0rw
R+wvBX00u0IWuKNMJbfh0JTBgDdZM2pQJVnIF3SyTfG3trCv0/4J8VCUXQ/VzD2eKx92y7KAqcWD
DnztYn7cf9COwrigK5lwLHizYPzMcyGTPJJD0z/0i81vNOzFU6zgIHkOoRrgTP5L7/vsJ6/3yDHz
2D/WRiIQVOWplWgH/h546DXY22WrzX8izsxsvw0J4DYzqyNrFZDauXVhW7froTzgsCX8PJfqiRr2
X6Ua0XU9G05yVStQ2GFRNAm2LI/SmZuRssEowcvfgzzQybehtBnKcFrqXMks3EWgoJgR4v8qBRGr
nyCjYJBeT5aqpL9CMKaRC+RRrpfPwYztkB8dfxIvirqnzRVOB8Lxz4t0ogxMUTLX4O6wvZ+zyLQu
PjSbI/KBdERactgoLC+1yS1d8qCLtnvPJyfio2/oRoRBzPH2gf2bk5UlULWikKnrGHsouHDdGSfV
TC35lq0ahtQBuiLncS7SYYaZhlCbJBidvWI62D5BBb951GxawX+/orD4j6CYLoMTNqkMl44RAP7F
YcSNU7r76Afv17mqCVcJG6pVrzFyWWyVL81Ug4v2Z9uJHM+13F/akIxarTe4FcBCN4v+AhqQuhbS
Q+Jvr8TcLX4q13+OMxSlvbsV9tGZ3nsHvmhtN19ltLnftqCgFpHWqExz1MK7SNqzuao96ULdrTtw
Lf/XWcarKTdctyO/RwElC0wudfXqO7mUHMcUwbBQR2RFAVwJFsWQWBDfVP3GzEYK+AL+SM/lWt8i
IXJoEJxuV2Kya0OEuURLylAtakTvp7bLYAYBt2Bp9yREfGyQcBUJKxn1Eb+J799C80FXJLn8YIDg
FPTvorXVBw5T6UUNisKB4FRrdNzc4GZLRFAxmD0/YOrm37k4/4NrBZeuHJD1/lYScBWTbLggHyDg
KvRFyWiZDxtR0rdFvlLi60AlnPF/3hEGA46o5Y/5HZq96Gujnvb0Ylz8XRYWTTyVEYw7DlVH0WQz
iCHHckKm0pqY/OBBGRxY2lnIAfISecCa1zhcy0KxZYu4OxrEV8JS2ZC4Bq7mxdbpjFxyp0abVJOT
xGl64F9N9J5f8l+GvxWiRxd1qIMZ3204VdcpUx2BaUZL/atB6Zj0zyzaJsokm3t1OaUkSNaV39y9
weY1W3j4ElY6+u1pvg4jhzIf3XgfQjrpFOYvjYZGTYchIfGmoOb2r4P8pC5XeGFSwfY8hVVLfNis
h5kFMUuocaBMXxy2f3oiVOn55nWXoBX3l/ys0R6mtHGqc6i/TjkcxlNKGeqgYUc0nykv4oW60Ucm
uUJWixmBIb4AzD8vCyts3fqME/JuKJAVSDmc7QgiZ5xueIRLheBznUerJ+Ck0RHRCMAntZYv1E4U
91R6bhvnyDdNNR088eaLKL8CxOK0kaU5xdNx9CfbMrKPqDPr5ANG7CK3BIURW8xaJRNKFJ5aRDMH
/CNKE3q75L383AUGg/isYe2Q7PEE1wzu/dUW0NREqIhm4VrbropSRIB4+KD4G0xNIlkiWW6rY4yO
AV7F5oTYHmFhOQLW5oxJO7Z1acqVezYTOivDcnLL6HndvbXbW53D2AGoi/AgZl8qXMD9iuVf3Siq
E9iFQ7vXhOVorbt30d3lX9oT0Da10ibQFORC4ZBbGdMO+BZgK9UTYCZRbnUN5limbpCmY656FwUl
ML8xFObRyHnlxbvq5oJoJjvFvW4avrHK01f05BNce2XSlhIDUZDkACbsQn72moevq5sXwq3wYxKq
KezVN6SGWB/3wW+DOCM15bmb2cTNkV9x16tyHl5afDyONxPw2kuik2AXfWegzHLIT+1O18GtgCrR
RatlbaWOewLNcGST4mXn5DZdaKs18XjaZsZOOumARXFAfF1HGMOEQfKYWgSTUNF6tQmr7xxN6OEl
4ANbt9QMuXLc6lqqgn1GbMIubpx/5yZIBTS49EPIo28t1WNnXYEceik6osn7M7MXJE5IBMCYERt0
9yjjrCpDp+CkV+xShr9m6DUE9Od4czmP8BCWLM2h2JK07ObxbysDPiGnoRdZQxkvBCLThf72DoKq
bIPSPxunkoCnR0OUvy9loLCn/+5Blp30uMCufqH9+DhgmE6vUi3RNYmEWrWp8v166nSA+dxuqYzW
yTttL1zZOJjHx1s64c53xb9IblfYwFn2SS/8AiV6kiLbHdOCRYUxg/kMZFfGt5heRhq7Fe7L1qr+
0Ppz8MRtXtiKaXc+Mo8zq99cFXMAeGg277PiMiwDoCOmrJPoMJj+5IqyMXjiYCYc4gxR3JLZpTby
jRP4TWu6pPulM0bdWs0dh710uEKC1fwvCv8x/S5kuFf//ShT+zdfZO8/F98joY0ERiBSyZS1hYw7
AARWn4l47qPyaBVzoUPLPacRDExtVLWef7HnHzLUqIMGJAysu36j8uo+l5jff5OUmnVyjob+2JbQ
fV4yJqqxm9mxam9penS5krGf6Zn0j10lsgNuKlTa1T3qeCGPw9oxXkJgX3/5pLwDxIH+e3BiTgDs
kuJwiOpYVKhCgJqLJnDIRQCqGtDn+s1u5vkdHqO+l7t4vDqJyFHQZQNUHxHFVKIuSQFE+nYoswjz
j1AJcyI6p97Eob3lodi3ohvy5zb1mn6jCj+qOds5FyFx4ZyshqTcgFSpINX7QNi416Oxf03h6uN9
EoahfIOFGrQmrA8pyerG7GNwirA4lGECg1LcbnT+YApNB/0=
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
