
w
Command: %s
53*	vivadotcl2F
2write_bitstream -force au_plus_top_0.bit -bin_file2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px? 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2>
 "(
cpu0/CLKcpu0/CLK2default:default2default:default2^
 "H
cpu0/M_ctr_q[9]_i_2__0/Ocpu0/M_ctr_q[9]_i_2__0/O2default:default2default:default2Z
 "D
cpu0/M_ctr_q[9]_i_2__0	cpu0/M_ctr_q[9]_i_2__02default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2\
 "F
timer/x_dim/M_y_dim_clktimer/x_dim/M_y_dim_clk2default:default2default:default2f
 "P
timer/x_dim/M_ctr_q[9]_i_2/Otimer/x_dim/M_ctr_q[9]_i_2/O2default:default2default:default2b
 "L
timer/x_dim/M_ctr_q[9]_i_2	timer/x_dim/M_ctr_q[9]_i_22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2?
 "j
)vga_screen_counter/x_dim/M_ctr_q_reg[5]_0)vga_screen_counter/x_dim/M_ctr_q_reg[5]_02default:default2default:default2?
 "p
,vga_screen_counter/x_dim/M_ctr_q[9]_i_3__0/O,vga_screen_counter/x_dim/M_ctr_q[9]_i_3__0/O2default:default2default:default2?
 "l
*vga_screen_counter/x_dim/M_ctr_q[9]_i_3__0	*vga_screen_counter/x_dim/M_ctr_q[9]_i_3__02default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 10 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2Z
 "D
cpu0/M_ctr_q[9]_i_2__0	cpu0/M_ctr_q[9]_i_2__02default:default2default:default2?
 "f
'vga_screen_counter/x_dim/M_ctr_q_reg[0]	'vga_screen_counter/x_dim/M_ctr_q_reg[0]2default:default"f
'vga_screen_counter/x_dim/M_ctr_q_reg[1]	'vga_screen_counter/x_dim/M_ctr_q_reg[1]2default:default"f
'vga_screen_counter/x_dim/M_ctr_q_reg[2]	'vga_screen_counter/x_dim/M_ctr_q_reg[2]2default:default"f
'vga_screen_counter/x_dim/M_ctr_q_reg[3]	'vga_screen_counter/x_dim/M_ctr_q_reg[3]2default:default"f
'vga_screen_counter/x_dim/M_ctr_q_reg[4]	'vga_screen_counter/x_dim/M_ctr_q_reg[4]2default:default"f
'vga_screen_counter/x_dim/M_ctr_q_reg[5]	'vga_screen_counter/x_dim/M_ctr_q_reg[5]2default:default"f
'vga_screen_counter/x_dim/M_ctr_q_reg[6]	'vga_screen_counter/x_dim/M_ctr_q_reg[6]2default:default"f
'vga_screen_counter/x_dim/M_ctr_q_reg[7]	'vga_screen_counter/x_dim/M_ctr_q_reg[7]2default:default"f
'vga_screen_counter/x_dim/M_ctr_q_reg[8]	'vga_screen_counter/x_dim/M_ctr_q_reg[8]2default:default"f
'vga_screen_counter/x_dim/M_ctr_q_reg[9]	'vga_screen_counter/x_dim/M_ctr_q_reg[9]2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?	
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 10 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2b
 "L
timer/x_dim/M_ctr_q[9]_i_2	timer/x_dim/M_ctr_q[9]_i_22default:default2default:default2?
 "L
timer/y_dim/M_ctr_q_reg[0]	timer/y_dim/M_ctr_q_reg[0]2default:default"L
timer/y_dim/M_ctr_q_reg[1]	timer/y_dim/M_ctr_q_reg[1]2default:default"L
timer/y_dim/M_ctr_q_reg[2]	timer/y_dim/M_ctr_q_reg[2]2default:default"L
timer/y_dim/M_ctr_q_reg[3]	timer/y_dim/M_ctr_q_reg[3]2default:default"L
timer/y_dim/M_ctr_q_reg[4]	timer/y_dim/M_ctr_q_reg[4]2default:default"L
timer/y_dim/M_ctr_q_reg[5]	timer/y_dim/M_ctr_q_reg[5]2default:default"L
timer/y_dim/M_ctr_q_reg[6]	timer/y_dim/M_ctr_q_reg[6]2default:default"L
timer/y_dim/M_ctr_q_reg[7]	timer/y_dim/M_ctr_q_reg[7]2default:default"L
timer/y_dim/M_ctr_q_reg[8]	timer/y_dim/M_ctr_q_reg[8]2default:default"L
timer/y_dim/M_ctr_q_reg[9]	timer/y_dim/M_ctr_q_reg[9]2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 10 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2?
 "l
*vga_screen_counter/x_dim/M_ctr_q[9]_i_3__0	*vga_screen_counter/x_dim/M_ctr_q[9]_i_3__02default:default2default:default2?
 "f
'vga_screen_counter/y_dim/M_ctr_q_reg[0]	'vga_screen_counter/y_dim/M_ctr_q_reg[0]2default:default"f
'vga_screen_counter/y_dim/M_ctr_q_reg[1]	'vga_screen_counter/y_dim/M_ctr_q_reg[1]2default:default"f
'vga_screen_counter/y_dim/M_ctr_q_reg[2]	'vga_screen_counter/y_dim/M_ctr_q_reg[2]2default:default"f
'vga_screen_counter/y_dim/M_ctr_q_reg[3]	'vga_screen_counter/y_dim/M_ctr_q_reg[3]2default:default"f
'vga_screen_counter/y_dim/M_ctr_q_reg[4]	'vga_screen_counter/y_dim/M_ctr_q_reg[4]2default:default"f
'vga_screen_counter/y_dim/M_ctr_q_reg[5]	'vga_screen_counter/y_dim/M_ctr_q_reg[5]2default:default"f
'vga_screen_counter/y_dim/M_ctr_q_reg[6]	'vga_screen_counter/y_dim/M_ctr_q_reg[6]2default:default"f
'vga_screen_counter/y_dim/M_ctr_q_reg[7]	'vga_screen_counter/y_dim/M_ctr_q_reg[7]2default:default"f
'vga_screen_counter/y_dim/M_ctr_q_reg[8]	'vga_screen_counter/y_dim/M_ctr_q_reg[8]2default:default"f
'vga_screen_counter/y_dim/M_ctr_q_reg[9]	'vga_screen_counter/y_dim/M_ctr_q_reg[9]2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
f
DRC finished with %s
1905*	planAhead2(
0 Errors, 6 Warnings2default:defaultZ12-3199h px? 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px? 
i
)Running write_bitstream with %s threads.
1750*designutils2
82default:defaultZ20-2272h px? 
?
Loading data files...
1271*designutilsZ12-1165h px? 
>
Loading site data...
1273*designutilsZ12-1167h px? 
?
Loading route data...
1272*designutilsZ12-1166h px? 
?
Processing options...
1362*designutilsZ12-1514h px? 
<
Creating bitmap...
1249*designutilsZ12-1141h px? 
7
Creating bitstream...
7*	bitstreamZ40-7h px? 
f
%Bitstream compression saved %s bits.
26*	bitstream2
232804802default:defaultZ40-26h px? 
d
Writing bitstream %s...
11*	bitstream2'
./au_plus_top_0.bit2default:defaultZ40-11h px? 
d
Writing bitstream %s...
11*	bitstream2'
./au_plus_top_0.bin2default:defaultZ40-11h px? 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px? 
?
?WebTalk data collection is mandatory when using a WebPACK part without a full Vivado license. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.*projecth px? 
?
?'%s' has been successfully sent to Xilinx on %s. For additional details about this file, please refer to the Webtalk help file at %s.
186*common2?
}/home/spencer/processor-design/spencer-final/work/vivado/spencer-final/spencer-final.runs/impl_1/usage_statistics_webtalk.xml2default:default2,
Thu Nov 18 06:05:33 20212default:default2M
9/tools/Xilinx/Vivado/2021.1/doc/webtalk_introduction.html2default:defaultZ17-186h px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
132default:default2
62default:default2
02default:default2
02default:defaultZ4-41h px? 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2%
write_bitstream: 2default:default2
00:00:152default:default2
00:00:142default:default2
3442.9772default:default2
219.3712default:default2
42502default:default2
111282default:defaultZ17-722h px? 


End Record