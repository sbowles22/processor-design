
T
Command: %s
53*	vivadotcl2#
phys_opt_design2default:defaultZ4-113h px? 
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
?
^PhysOpt_Tcl_Interface Runtime Before Starting Physical Synthesis Task | CPU: %ss |  WALL: %ss
566*	vivadotcl2
1.002default:default2
0.152default:defaultZ4-1435h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1623.2112default:default2
0.0002default:defaultZ17-268h px? 
a

Starting %s Task
103*constraints2&
Physical Synthesis2default:defaultZ18-103h px? 
?

Phase %s%s
101*constraints2
1 2default:default25
!Physical Synthesis Initialization2default:defaultZ18-101h px? 
?
EMultithreading enabled for phys_opt_design using a maximum of %s CPUs380*physynth2
22default:defaultZ32-721h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-1.5782default:default2
-109.0952default:defaultZ32-619h px? 
U
@Phase 1 Physical Synthesis Initialization | Checksum: 10892b47b
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.149 . Memory (MB): peak = 1623.211 ; gain = 0.0002default:defaulth px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-1.5782default:default2
-109.0952default:defaultZ32-619h px? 
z

Phase %s%s
101*constraints2
2 2default:default2-
DSP Register Optimization2default:defaultZ18-101h px? 
j
FNo candidate cells for DSP register optimization found in the design.
274*physynthZ32-456h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
M
8Phase 2 DSP Register Optimization | Checksum: 10892b47b
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.160 . Memory (MB): peak = 1623.211 ; gain = 0.0002default:defaulth px? 
{

Phase %s%s
101*constraints2
3 2default:default2.
Critical Path Optimization2default:defaultZ18-101h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-1.5782default:default2
-109.0952default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2R
concept/M_temp_b_q_reg__0[17]concept/M_temp_b_q_reg__0[17]2default:default8Z32-702h px? 
?
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2h
(concept/M_temp_a_q_reg[-_n_0_1111111110](concept/M_temp_a_q_reg[-_n_0_1111111110]2default:default8Z32-572h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2h
(concept/M_temp_a_q_reg[-_n_0_1111111110](concept/M_temp_a_q_reg[-_n_0_1111111110]2default:default2^
#concept/M_temp_a_q_reg[-1111111110]	#concept/M_temp_a_q_reg[-1111111110]2default:default8Z32-662h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2h
(concept/M_temp_a_q_reg[-_n_0_1111111110](concept/M_temp_a_q_reg[-_n_0_1111111110]2default:default2
12default:default8Z32-81h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2h
(concept/M_temp_a_q_reg[-_n_0_1111111110](concept/M_temp_a_q_reg[-_n_0_1111111110]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-1.5712default:default2
-109.7112default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2r
-concept/M_temp_a_q_reg[-_n_0_1111111110]_repN-concept/M_temp_a_q_reg[-_n_0_1111111110]_repN2default:default2n
+concept/M_temp_a_q_reg[-1111111110]_replica	+concept/M_temp_a_q_reg[-1111111110]_replica2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2r
-concept/M_temp_a_q_reg[-_n_0_1111111110]_repN-concept/M_temp_a_q_reg[-_n_0_1111111110]_repN2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-1.5642default:default2
-109.0852default:defaultZ32-619h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2r
-concept/M_temp_a_q_reg[-_n_0_1111111110]_repN-concept/M_temp_a_q_reg[-_n_0_1111111110]_repN2default:default2n
+concept/M_temp_a_q_reg[-1111111110]_replica	+concept/M_temp_a_q_reg[-1111111110]_replica2default:default8Z32-662h px? 
?
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2r
-concept/M_temp_a_q_reg[-_n_0_1111111110]_repN-concept/M_temp_a_q_reg[-_n_0_1111111110]_repN2default:default8Z32-572h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
-concept/M_temp_a_q_reg[-_n_0_1111111110]_repN-concept/M_temp_a_q_reg[-_n_0_1111111110]_repN2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2L
concept/M_temp_b_q1__0[23]concept/M_temp_b_q1__0[23]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2N
concept/i__carry__0_i_2_n_0concept/i__carry__0_i_2_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
!concept/M_temp_b_q1__28_carry_n_5!concept/M_temp_b_q1__28_carry_n_52default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2b
%concept/M_temp_b_q1__28_carry_i_3_n_0%concept/M_temp_b_q1__28_carry_i_3_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2^
#concept/M_temp_b_q1__0_carry__0_n_7#concept/M_temp_b_q1__0_carry__0_n_72default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2X
 concept/M_temp_b_q1__0_carry_n_0 concept/M_temp_b_q1__0_carry_n_02default:default8Z32-702h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2`
$concept/M_temp_b_q1__0_carry_i_1_n_0$concept/M_temp_b_q1__0_carry_i_1_n_02default:default2X
 concept/M_temp_b_q1__0_carry_i_1	 concept/M_temp_b_q1__0_carry_i_12default:default8Z32-662h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2`
$concept/M_temp_b_q1__0_carry_i_1_n_0$concept/M_temp_b_q1__0_carry_i_1_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2J
concept/M_temp_b_q0_n_153concept/M_temp_b_q0_n_1532default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2(
clk_IBUFclk_IBUF2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
clkclk2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2R
concept/M_temp_b_q_reg__0[17]concept/M_temp_b_q_reg__0[17]2default:default8Z32-702h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2r
-concept/M_temp_a_q_reg[-_n_0_1111111110]_repN-concept/M_temp_a_q_reg[-_n_0_1111111110]_repN2default:default2n
+concept/M_temp_a_q_reg[-1111111110]_replica	+concept/M_temp_a_q_reg[-1111111110]_replica2default:default8Z32-662h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
-concept/M_temp_a_q_reg[-_n_0_1111111110]_repN-concept/M_temp_a_q_reg[-_n_0_1111111110]_repN2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2L
concept/M_temp_b_q1__0[23]concept/M_temp_b_q1__0[23]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2N
concept/i__carry__0_i_2_n_0concept/i__carry__0_i_2_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
!concept/M_temp_b_q1__28_carry_n_5!concept/M_temp_b_q1__28_carry_n_52default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2b
%concept/M_temp_b_q1__28_carry_i_3_n_0%concept/M_temp_b_q1__28_carry_i_3_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2^
#concept/M_temp_b_q1__0_carry__0_n_7#concept/M_temp_b_q1__0_carry__0_n_72default:default8Z32-702h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2`
$concept/M_temp_b_q1__0_carry_i_1_n_0$concept/M_temp_b_q1__0_carry_i_1_n_02default:default2X
 concept/M_temp_b_q1__0_carry_i_1	 concept/M_temp_b_q1__0_carry_i_12default:default8Z32-662h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2`
$concept/M_temp_b_q1__0_carry_i_1_n_0$concept/M_temp_b_q1__0_carry_i_1_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2(
clk_IBUFclk_IBUF2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
clkclk2default:default8Z32-702h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-1.5642default:default2
-109.0852default:defaultZ32-619h px? 
N
9Phase 3 Critical Path Optimization | Checksum: 10892b47b
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.657 . Memory (MB): peak = 1623.211 ; gain = 0.0002default:defaulth px? 
{

Phase %s%s
101*constraints2
4 2default:default2.
Critical Path Optimization2default:defaultZ18-101h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-1.5642default:default2
-109.0852default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2R
concept/M_temp_b_q_reg__0[17]concept/M_temp_b_q_reg__0[17]2default:default8Z32-702h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2r
-concept/M_temp_a_q_reg[-_n_0_1111111110]_repN-concept/M_temp_a_q_reg[-_n_0_1111111110]_repN2default:default2n
+concept/M_temp_a_q_reg[-1111111110]_replica	+concept/M_temp_a_q_reg[-1111111110]_replica2default:default8Z32-662h px? 
?
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2r
-concept/M_temp_a_q_reg[-_n_0_1111111110]_repN-concept/M_temp_a_q_reg[-_n_0_1111111110]_repN2default:default8Z32-572h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
-concept/M_temp_a_q_reg[-_n_0_1111111110]_repN-concept/M_temp_a_q_reg[-_n_0_1111111110]_repN2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2L
concept/M_temp_b_q1__0[23]concept/M_temp_b_q1__0[23]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2N
concept/i__carry__0_i_2_n_0concept/i__carry__0_i_2_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
!concept/M_temp_b_q1__28_carry_n_5!concept/M_temp_b_q1__28_carry_n_52default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2b
%concept/M_temp_b_q1__28_carry_i_3_n_0%concept/M_temp_b_q1__28_carry_i_3_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2^
#concept/M_temp_b_q1__0_carry__0_n_7#concept/M_temp_b_q1__0_carry__0_n_72default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2X
 concept/M_temp_b_q1__0_carry_n_0 concept/M_temp_b_q1__0_carry_n_02default:default8Z32-702h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2`
$concept/M_temp_b_q1__0_carry_i_1_n_0$concept/M_temp_b_q1__0_carry_i_1_n_02default:default2X
 concept/M_temp_b_q1__0_carry_i_1	 concept/M_temp_b_q1__0_carry_i_12default:default8Z32-662h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2`
$concept/M_temp_b_q1__0_carry_i_1_n_0$concept/M_temp_b_q1__0_carry_i_1_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2J
concept/M_temp_b_q0_n_153concept/M_temp_b_q0_n_1532default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2(
clk_IBUFclk_IBUF2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
clkclk2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2R
concept/M_temp_b_q_reg__0[17]concept/M_temp_b_q_reg__0[17]2default:default8Z32-702h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2r
-concept/M_temp_a_q_reg[-_n_0_1111111110]_repN-concept/M_temp_a_q_reg[-_n_0_1111111110]_repN2default:default2n
+concept/M_temp_a_q_reg[-1111111110]_replica	+concept/M_temp_a_q_reg[-1111111110]_replica2default:default8Z32-662h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
-concept/M_temp_a_q_reg[-_n_0_1111111110]_repN-concept/M_temp_a_q_reg[-_n_0_1111111110]_repN2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2L
concept/M_temp_b_q1__0[23]concept/M_temp_b_q1__0[23]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2N
concept/i__carry__0_i_2_n_0concept/i__carry__0_i_2_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
!concept/M_temp_b_q1__28_carry_n_5!concept/M_temp_b_q1__28_carry_n_52default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2b
%concept/M_temp_b_q1__28_carry_i_3_n_0%concept/M_temp_b_q1__28_carry_i_3_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2^
#concept/M_temp_b_q1__0_carry__0_n_7#concept/M_temp_b_q1__0_carry__0_n_72default:default8Z32-702h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2`
$concept/M_temp_b_q1__0_carry_i_1_n_0$concept/M_temp_b_q1__0_carry_i_1_n_02default:default2X
 concept/M_temp_b_q1__0_carry_i_1	 concept/M_temp_b_q1__0_carry_i_12default:default8Z32-662h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2`
$concept/M_temp_b_q1__0_carry_i_1_n_0$concept/M_temp_b_q1__0_carry_i_1_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2(
clk_IBUFclk_IBUF2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
clkclk2default:default8Z32-702h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-1.5642default:default2
-109.0852default:defaultZ32-619h px? 
N
9Phase 4 Critical Path Optimization | Checksum: 10892b47b
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.854 . Memory (MB): peak = 1623.211 ; gain = 0.0002default:defaulth px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0042default:default2
1623.2112default:default2
0.0002default:defaultZ17-268h px? 
?
>Post Physical Optimization Timing Summary | WNS=%s | TNS=%s |
318*physynth2
-1.5642default:default2
-109.0852default:defaultZ32-603h px? 
B
-
Summary of Physical Synthesis Optimizations
*commonh px? 
B
-============================================
*commonh px? 


*commonh px? 


*commonh px? 
?
?-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Optimization   |  WNS Gain (ns)  |  TNS Gain (ns)  |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  DSP Register   |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Critical Path  |          0.014  |          0.011  |            1  |              0  |                     2  |           0  |           2  |  00:00:01  |
|  Total          |          0.014  |          0.011  |            1  |              0  |                     2  |           0  |           3  |  00:00:01  |
-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 


*commonh px? 


*commonh px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1623.2112default:default2
0.0002default:defaultZ17-268h px? 
I
4Ending Physical Synthesis Task | Checksum: c2f6f0c4
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.860 . Memory (MB): peak = 1623.211 ; gain = 0.0002default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1462default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px? 
a
%s completed successfully
29*	vivadotcl2#
phys_opt_design2default:defaultZ4-42h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:002default:default2 
00:00:00.0552default:default2
1630.3752default:default2
7.1642default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
yC:/Users/User/Documents/alchitry/finalconcept/work/vivado/finalconcept/finalconcept.runs/impl_1/au_plus_top_0_physopt.dcp2default:defaultZ17-1381h px? 


End Record