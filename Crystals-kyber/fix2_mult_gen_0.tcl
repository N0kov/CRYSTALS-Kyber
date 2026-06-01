set SCRIPT_DIR [file dirname [file normalize [info script]]]
set PRJ_FILE   [file join $SCRIPT_DIR "Crystals-kyber.xpr"]
open_project $PRJ_FILE

puts "============ PROJECT TARGET LANGUAGE ============"
puts "target_language : [get_property target_language [current_project]]"
puts "simulator_lang  : [get_property simulator_language [current_project]]"

puts ""
puts "============ mult_gen_0 LIBRARY OF SYNTH FILES ============"
foreach f [get_files -all -of_objects [get_ips mult_gen_0] -filter {FILE_TYPE == VHDL}] {
    set lib [get_property LIBRARY $f]
    puts "   LIB=$lib   USED_IN=[get_property USED_IN $f]   $f"
}

puts ""
puts "============ mult_gen_0 SYNTH-CHECKPOINT-MODE ============"
puts "synth_checkpoint_mode : [get_property synth_checkpoint_mode [get_files mult_gen_0.xci]]"
puts "generate_synth_checkpoint: [get_property generate_synth_checkpoint [get_files mult_gen_0.xci]]"

puts ""
puts "============ ATTEMPT: synth_ip standalone ============"
if {[catch {synth_ip [get_ips mult_gen_0]} err]} {
    puts "synth_ip err: $err"
} else {
    puts "synth_ip OK"
}

puts ""
puts "============ AFTER synth_ip ============"
foreach f [get_files -all -of_objects [get_ips mult_gen_0] -filter {USED_IN =~ *synthesis*}] {
    puts "   $f   (file_type=[get_property FILE_TYPE $f])"
}
