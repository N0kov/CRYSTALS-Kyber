# sim_tb_Kyber_top_protected.tcl
# Simulate tb_Kyber_top_protected — full end-to-end KEM with duplication and
# clock randomization countermeasure. Requires Vivado unisims.
#
# Output files written to the simulation run directory:
#   output_ser_prot.txt  — Core1 server words (key generation + decapsulation)
#   output_cli_prot.txt  — Core1 client words (encapsulation)
#
# The last 8 rows of each file are the 256-bit shared key in 32-bit
# little-endian words. These should match the corresponding rows in
# output_ser.txt / output_cli.txt produced by the original Kyber_tb.v
# (both use count=0 KAT seeds).
#
# Usage (Vivado Tcl console or batch mode):
#   source sim_tb_Kyber_top_protected.tcl
# Or from a shell:
#   vivado -mode batch -source sim_tb_Kyber_top_protected.tcl

set SCRIPT_DIR  [file dirname [file normalize [info script]]]
set PRJ_FILE    [file join $SCRIPT_DIR "Crystals-kyber.xpr"]
set NH_DIR      [file join $SCRIPT_DIR "Crystals-kyber.srcs/new_hardware"]
set SRC_NEW     [file join $SCRIPT_DIR "Crystals-kyber.srcs/sources_1/new"]
set SRC_IMP     [file join $SCRIPT_DIR "Crystals-kyber.srcs/sources_1/imports"]
set PRNG_DIR    [file join $SCRIPT_DIR "../pseudo-random-number-generator_verilog-main/main/verilog"]
set X2X_SRC     [file join $SCRIPT_DIR "../X2X-main/src"]
set X2X_TB      [file join $SCRIPT_DIR "../X2X-main/src_tb"]

open_project $PRJ_FILE

if {[get_filesets -quiet sim_tb_kyber_prot] eq ""} {
    create_fileset -simset sim_tb_kyber_prot
}
current_fileset -simset [get_filesets sim_tb_kyber_prot]

# All design sources — ordered so dependencies come before dependents.
# IP sim models are already compiled into the project's IP cache and are
# picked up automatically by launch_simulation via the project IP filesets.
set files_to_add [list \
    [file join $PRNG_DIR "XORShifter.v"] \
    [file join $NH_DIR   "d_ff.sv"] \
    [file join $NH_DIR   "clock_mux.sv"] \
    [file join $NH_DIR   "rng.sv"] \
    [file join $NH_DIR   "mask_polyfifo_x4.sv"] \
    [file join $X2X_SRC  "D_reg.sv"] \
    [file join $X2X_SRC  "D_reg_NEG_EDGE.sv"] \
    [file join $X2X_SRC  "fullXOR.sv"] \
    [file join $X2X_SRC  "SecXOR.sv"] \
    [file join $X2X_SRC  "SecNOT.sv"] \
    [file join $X2X_SRC  "SecAnd.sv"] \
    [file join $X2X_SRC  "SecAnd_NEG_EDGE.sv"] \
    [file join $X2X_SRC  "SecOR_ALT.sv"] \
    [file join $X2X_SRC  "SecANDOR_ALT.sv"] \
    [file join $X2X_SRC  "triangle.sv"] \
    [file join $X2X_SRC  "box_HALFCYCLE.sv"] \
    [file join $X2X_SRC  "SecAdd_HALFCYCLE_STREAM.sv"] \
    [file join $X2X_SRC  "MaskConversion_2SHARE_HALFCYCLE_STREAM.sv"] \
    [file join $X2X_SRC  "MaskConversion_3SHARE_HALFCYCLE_STREAM.sv"] \
    [file join $X2X_SRC  "MaskConversion_HALFCYCLE_STREAM.sv"] \
    [file join $X2X_TB   "PRNG.sv"] \
    [file join $X2X_TB   "PRNG_engine_2SHARE.sv"] \
    [file join $X2X_TB   "PRNG_engine_3SHARE.sv"] \
    [file join $X2X_TB   "PRNG_engine_STREAM.sv"] \
    [file join $NH_DIR   "masked_threshold_compare.sv"] \
    [file join $NH_DIR   "masked_compress_d1.sv"] \
    [file join $NH_DIR   "rand_clk_gen.sv"] \
    [file join $SRC_IMP  "imports/_to_32bits.v"] \
    [file join $SRC_IMP  "imports/decode_Client.v"] \
    [file join $SRC_IMP  "imports/decode_Server.v"] \
    [file join $SRC_IMP  "imports/encode_Client.v"] \
    [file join $SRC_IMP  "imports/encode_Server.v"] \
    [file join $SRC_IMP  "new/butterfly_Client.v"] \
    [file join $SRC_IMP  "new/butterfly_Server.v"] \
    [file join $SRC_IMP  "new/hash_core_Client.v"] \
    [file join $SRC_IMP  "new/hash_core_Server.v"] \
    [file join $SRC_IMP  "new/Kyber_Client.v"] \
    [file join $SRC_IMP  "new/Kyber_Server.v"] \
    [file join $SRC_IMP  "new/LUT.v"] \
    [file join $SRC_IMP  "new/NTT_core_Client.v"] \
    [file join $SRC_IMP  "new/NTT_core_Server.v"] \
    [file join $SRC_IMP  "new/pattern.v"] \
    [file join $SRC_IMP  "new/reduc.v"] \
    [file join $SRC_NEW  "decode_keccak.v"] \
    [file join $SRC_NEW  "mux4to2.v"] \
    [file join $SRC_NEW  "Kyber_top.v"] \
    [file join $SRC_IMP  "new/NTT_core_Client_masked.v"] \
    [file join $SRC_IMP  "new/NTT_core_Server_masked.v"] \
    [file join $SRC_IMP  "new/Kyber_Client_masked.v"] \
    [file join $SRC_IMP  "new/Kyber_Server_masked.v"] \
    [file join $SRC_NEW  "Kyber_top_masked.v"] \
    [file join $NH_DIR   "Kyber_top_protected.sv"] \
    [file join $NH_DIR   "tb_Kyber_top_protected.sv"] \
]
foreach f $files_to_add {
    if {[get_files -quiet -of_objects [get_filesets sim_tb_kyber_prot] $f] eq ""} {
        add_files -fileset sim_tb_kyber_prot $f
    }
}

set_property top tb_Kyber_top_protected [get_filesets sim_tb_kyber_prot]
set_property top_lib xil_defaultlib [get_filesets sim_tb_kyber_prot]

# Phase A: NTT_core_Server_masked.v uses SystemVerilog-only constructs
# (unpacked array port connects to X2X). Tell Vivado to parse it as SV.
set_property file_type "SystemVerilog" \
    [get_files -of_objects [get_filesets sim_tb_kyber_prot] \
        "*NTT_core_Server_masked.v"]

# Clear any stale xelab options that may have been saved in the project
set_property -name {xsim.elaborate.xelab.more_options} \
    -value {} \
    -objects [get_filesets sim_tb_kyber_prot]

# Run to $stop (testbench handles its own timeout)
launch_simulation -simset sim_tb_kyber_prot -mode behavioral
run -all

# Report where output files landed
set sim_run_dir [get_property directory [current_run -simulation]]
puts "INFO: Simulation complete."
puts "INFO: Output files in: $sim_run_dir"
puts "INFO:   output_ser_prot.txt"
puts "INFO:   output_cli_prot.txt"
puts "INFO: Diff last 8 lines against output_ser.txt / output_cli.txt to verify shared key."
