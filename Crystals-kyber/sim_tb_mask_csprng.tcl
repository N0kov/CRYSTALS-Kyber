# sim_tb_mask_csprng.tcl
# Phase 1 of plan_masked_ntt_option1.md.
# Runs tb_mask_csprng.sv to validate the rejection-sampling mask source.
# No Xilinx primitives required (PRNG mode); pure behavioral SystemVerilog.
#
# Usage:
#   vivado -mode batch -source sim_tb_mask_csprng.tcl

set SCRIPT_DIR [file dirname [file normalize [info script]]]
set PRJ_FILE   [file join $SCRIPT_DIR "Crystals-kyber.xpr"]
set NH_DIR     [file join $SCRIPT_DIR "Crystals-kyber.srcs/new_hardware"]
set PRNG_DIR   [file join $SCRIPT_DIR "../pseudo-random-number-generator_verilog-main/main/verilog"]

open_project $PRJ_FILE

if {[get_filesets -quiet sim_tb_mask_csprng] eq ""} {
    create_fileset -simset sim_tb_mask_csprng
}
current_fileset -simset [get_filesets sim_tb_mask_csprng]

set files_to_add [list \
    [file join $PRNG_DIR "XORShifter.v"] \
    [file join $NH_DIR   "rng.sv"] \
    [file join $NH_DIR   "mask_csprng.sv"] \
    [file join $NH_DIR   "tb_mask_csprng.sv"] \
]
foreach f $files_to_add {
    if {[get_files -quiet -of_objects [get_filesets sim_tb_mask_csprng] $f] eq ""} {
        add_files -fileset sim_tb_mask_csprng $f
    }
}

set_property top tb_mask_csprng [get_filesets sim_tb_mask_csprng]
set_property top_lib xil_defaultlib [get_filesets sim_tb_mask_csprng]

# Clear any stale xelab options
set_property -name {xsim.elaborate.xelab.more_options} \
    -value {} \
    -objects [get_filesets sim_tb_mask_csprng]

launch_simulation -simset sim_tb_mask_csprng -mode behavioral
run -all

puts "INFO: tb_mask_csprng simulation complete."
