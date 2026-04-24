# sim_tb_rand_clk_gen.tcl
# Simulate tb_rand_clk_gen — tests MMCM lock, BUFGCTRL output frequencies,
# and absence of glitches on frand1/frand2.
# Requires Vivado unisims (MMCME2_ADV, BUFGCTRL, BUFG).
#
# Usage (Vivado Tcl console or batch mode):
#   source sim_tb_rand_clk_gen.tcl
# Or from a shell:
#   vivado -mode batch -source sim_tb_rand_clk_gen.tcl

set SCRIPT_DIR [file dirname [file normalize [info script]]]
set PRJ_FILE   [file join $SCRIPT_DIR "Crystals-kyber.xpr"]
set NH_DIR     [file join $SCRIPT_DIR "Crystals-kyber.srcs/new_hardware"]
set PRNG_DIR   [file join $SCRIPT_DIR "../pseudo-random-number-generator_verilog-main/main/verilog"]

open_project $PRJ_FILE

if {[get_filesets -quiet sim_tb_rand_clk_gen] eq ""} {
    create_fileset -simset sim_tb_rand_clk_gen
}
current_fileset -simset [get_filesets sim_tb_rand_clk_gen]

set files_to_add [list \
    [file join $PRNG_DIR "XORShifter.v"] \
    [file join $NH_DIR   "d_ff.sv"] \
    [file join $NH_DIR   "rng.sv"] \
    [file join $NH_DIR   "rand_clk_gen.sv"] \
    [file join $NH_DIR   "tb_rand_clk_gen.sv"] \
]
foreach f $files_to_add {
    if {[get_files -quiet -of_objects [get_filesets sim_tb_rand_clk_gen] $f] eq ""} {
        add_files -fileset sim_tb_rand_clk_gen $f
    }
}

set_property top tb_rand_clk_gen [get_filesets sim_tb_rand_clk_gen]
set_property top_lib xil_defaultlib [get_filesets sim_tb_rand_clk_gen]

# Clear any stale xelab options
set_property -name {xsim.elaborate.xelab.more_options} \
    -value {} \
    -objects [get_filesets sim_tb_rand_clk_gen]

launch_simulation -simset sim_tb_rand_clk_gen -mode behavioral
run -all

puts "INFO: tb_rand_clk_gen simulation complete."
