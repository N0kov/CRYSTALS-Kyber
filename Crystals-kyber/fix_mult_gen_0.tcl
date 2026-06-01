set SCRIPT_DIR [file dirname [file normalize [info script]]]
set PRJ_FILE   [file join $SCRIPT_DIR "Crystals-kyber.xpr"]
open_project $PRJ_FILE

puts "================ BEFORE ================"
set ip [get_ips mult_gen_0]
puts "IP object        : $ip"
puts "IS_LOCKED        : [get_property IS_LOCKED $ip]"
puts "IPDEF            : [get_property IPDEF $ip]"
puts "IP part property : [get_property CONFIG.Component_Name $ip]"
puts "Synth source files registered for mult_gen_0:"
foreach f [get_files -all -of_objects $ip -filter {USED_IN =~ *synthesis*}] {
    puts "   $f   (file_type=[get_property FILE_TYPE $f])"
}

puts ""
puts "=========== UPGRADE + REGENERATE ============"
if {[catch {upgrade_ip [get_ips mult_gen_0]} err]} { puts "upgrade_ip err: $err" }
if {[catch {reset_target all [get_ips mult_gen_0]} err]} { puts "reset_target err: $err" }
if {[catch {generate_target all [get_ips mult_gen_0]} err]} { puts "generate_target err: $err" }

puts ""
puts "================ AFTER ================="
set ip [get_ips mult_gen_0]
puts "IS_LOCKED        : [get_property IS_LOCKED $ip]"
puts "Synth source files registered for mult_gen_0:"
foreach f [get_files -all -of_objects $ip -filter {USED_IN =~ *synthesis*}] {
    puts "   $f   (file_type=[get_property FILE_TYPE $f])"
}

puts ""
puts "============ TRY ELABORATION ============"
catch {config_webtalk -user off}
set_property top Kyber_top_protected [current_fileset]
set_property generic {COUNTERMEASURE=MASKING} [current_fileset]
foreach xci [glob -nocomplain [file join $SCRIPT_DIR "Crystals-kyber.srcs/sources_1/ip/*/*.xci"]] {
    catch {read_ip -quiet $xci}
}
set_param ips.enableIPCacheLiteLoad 1
if {[catch {synth_design -top Kyber_top_protected -generic COUNTERMEASURE=MASKING -rtl} err]} {
    puts "RTL elab errored: $err"
} else {
    puts "RTL elab OK"
}
