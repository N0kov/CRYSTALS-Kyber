# synth_audit.tcl - Run synthesis on Kyber_top and produce timing/utilization
# reports for path-imbalance analysis. Out-of-context (no I/O constraints).

set SCRIPT_DIR [file dirname [file normalize [info script]]]
set OUT_DIR    [file join $SCRIPT_DIR "audit_reports"]
file mkdir $OUT_DIR

open_project [file join $SCRIPT_DIR "Crystals-kyber.xpr"]

# Use synth_1 (which targets Kyber_top per project default)
reset_run synth_1
launch_runs synth_1 -jobs 8
wait_on_run synth_1

# Open the synthesized design and pull reports
open_run synth_1 -name synth_1

report_timing_summary -file [file join $OUT_DIR timing_summary_synth.rpt]
report_timing -max_paths 20 -delay_type max -sort_by group \
    -input_pins -file [file join $OUT_DIR top20_max_paths.rpt]
report_timing -max_paths 20 -delay_type min -sort_by group \
    -input_pins -file [file join $OUT_DIR top20_min_paths.rpt]
report_utilization -file [file join $OUT_DIR utilization_synth.rpt]
report_utilization -hierarchical -file [file join $OUT_DIR utilization_hier.rpt]

# Per-module slack distribution (proxy for per-module path-length)
report_design_analysis -logic_level_distribution \
    -logic_level_distribution_paths 1000 \
    -file [file join $OUT_DIR logic_levels.rpt]

puts "AUDIT: reports written to $OUT_DIR"
close_design
