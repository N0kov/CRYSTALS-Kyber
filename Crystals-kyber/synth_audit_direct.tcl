

set SCRIPT_DIR [file dirname [file normalize [info script]]]
set OUT_DIR    [file join $SCRIPT_DIR "audit_reports"]
file mkdir $OUT_DIR

open_project [file join $SCRIPT_DIR "Crystals-kyber.xpr"]

synth_design -top Kyber_top -part [get_property PART [current_project]]

report_timing_summary -file [file join $OUT_DIR timing_summary_synth.rpt]
report_timing -max_paths 20 -delay_type max -sort_by group \
    -input_pins -file [file join $OUT_DIR top20_max_paths.rpt]
report_utilization -file [file join $OUT_DIR utilization_synth.rpt]
report_utilization -hierarchical -file [file join $OUT_DIR utilization_hier.rpt]

puts "AUDIT: reports written to $OUT_DIR"
close_design
