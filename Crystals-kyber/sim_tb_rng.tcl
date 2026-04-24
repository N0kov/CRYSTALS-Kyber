# sim_tb_rng.tcl
# Simulate tb_rng — tests the PRNG (XORShift) path of rng.sv.
# No Xilinx primitives required; pure behavioral simulation.
#
# Usage (Vivado Tcl console or batch mode):
#   source sim_tb_rng.tcl
# Or from a shell:
#   vivado -mode batch -source sim_tb_rng.tcl

set SCRIPT_DIR [file dirname [file normalize [info script]]]
set PRJ_FILE   [file join $SCRIPT_DIR "Crystals-kyber.xpr"]
set NH_DIR     [file join $SCRIPT_DIR "Crystals-kyber.srcs/new_hardware"]
set PRNG_DIR   [file join $SCRIPT_DIR "../pseudo-random-number-generator_verilog-main/main/verilog"]
set SIM_DIR    [file join $SCRIPT_DIR "Crystals-kyber.sim/sim_tb_rng/behav/xsim"]

# Open project so IP libraries are available
open_project $PRJ_FILE

# Create simulation fileset if it doesn't exist
if {[get_filesets -quiet sim_tb_rng] eq ""} {
    create_fileset -simset sim_tb_rng
}
current_fileset -simset [get_filesets sim_tb_rng]

# Add source files needed for this simulation
set files_to_add [list \
    [file join $PRNG_DIR  "XORShifter.v"] \
    [file join $NH_DIR    "rng.sv"] \
    [file join $NH_DIR    "tb_rng.sv"] \
]
foreach f $files_to_add {
    if {[get_files -quiet -of_objects [get_filesets sim_tb_rng] $f] eq ""} {
        add_files -fileset sim_tb_rng $f
    }
}

# Set simulation top
set_property top tb_rng [get_filesets sim_tb_rng]
set_property top_lib xil_defaultlib [get_filesets sim_tb_rng]

# Run simulation
launch_simulation -simset sim_tb_rng -mode behavioral
run -all

puts "INFO: tb_rng simulation complete."
