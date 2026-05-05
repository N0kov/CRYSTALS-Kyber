# sim_tb_ntt_dout_linearity.tcl
# Phase 2b investigation: empirically test whether NTT_core_Client.dout
# is linear in din (i.e., whether wrapper-style masking can recover the
# unmasked dout via subtraction). If it isn't, the Option-1 plan is dead
# and we need to pivot.

set SCRIPT_DIR [file dirname [file normalize [info script]]]
set PRJ_FILE   [file join $SCRIPT_DIR "Crystals-kyber.xpr"]
set NH_DIR     [file join $SCRIPT_DIR "Crystals-kyber.srcs/new_hardware"]
set SRC_NEW    [file join $SCRIPT_DIR "Crystals-kyber.srcs/sources_1/new"]
set SRC_IMP    [file join $SCRIPT_DIR "Crystals-kyber.srcs/sources_1/imports"]
set PRNG_DIR   [file join $SCRIPT_DIR "../pseudo-random-number-generator_verilog-main/main/verilog"]

open_project $PRJ_FILE

if {[get_filesets -quiet sim_tb_ntt_lin] eq ""} {
    create_fileset -simset sim_tb_ntt_lin
}
current_fileset -simset [get_filesets sim_tb_ntt_lin]

set files_to_add [list \
    [file join $SRC_IMP "imports/_to_32bits.v"] \
    [file join $SRC_IMP "new/butterfly_Client.v"] \
    [file join $SRC_IMP "new/Kyber_Client.v"] \
    [file join $SRC_IMP "new/LUT.v"] \
    [file join $SRC_IMP "new/NTT_core_Client.v"] \
    [file join $SRC_IMP "new/pattern.v"] \
    [file join $SRC_IMP "new/reduc.v"] \
    [file join $SRC_NEW  "mux4to2.v"] \
    [file join $NH_DIR   "tb_ntt_dout_linearity.sv"] \
]
foreach f $files_to_add {
    if {[get_files -quiet -of_objects [get_filesets sim_tb_ntt_lin] $f] eq ""} {
        add_files -fileset sim_tb_ntt_lin $f
    }
}

set_property top tb_ntt_dout_linearity [get_filesets sim_tb_ntt_lin]
set_property top_lib xil_defaultlib [get_filesets sim_tb_ntt_lin]

set_property -name {xsim.elaborate.xelab.more_options} \
    -value {} \
    -objects [get_filesets sim_tb_ntt_lin]

launch_simulation -simset sim_tb_ntt_lin -mode behavioral
run -all

puts "INFO: tb_ntt_dout_linearity simulation complete."
