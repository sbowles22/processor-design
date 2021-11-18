set projDir "/home/spencer/processor-design/vga_test/work/vivado"
set projName "vga_test"
set topName top
set device xc7a100tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "/home/spencer/processor-design/vga_test/work/verilog/au_plus_top_0.v" "/home/spencer/processor-design/vga_test/work/verilog/reset_conditioner_1.v" "/home/spencer/processor-design/vga_test/work/verilog/ind_sta_vga_timer_2.v" "/home/spencer/processor-design/vga_test/work/verilog/counter_3.v" "/home/spencer/processor-design/vga_test/work/verilog/counter_4.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "/home/spencer/processor-design/vga_test/work/constraint/alchitry.xdc" "/home/spencer/processor-design/vga_test/work/constraint/vga.xdc" "/home/spencer/Downloads/alchitry-labs-1.2.5/library/components/au.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 12
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 12
wait_on_run impl_1
