
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px� 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
82default:defaultZ35-254h px� 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px� 
B
-Phase 1 Build RT Design | Checksum: 5caf0662
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:12 ; elapsed = 00:00:10 . Memory (MB): peak = 2598.297 ; gain = 0.000 ; free physical = 23109 ; free virtual = 267472default:defaulth px� 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px� 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px� 
A
,Phase 2.1 Create Timer | Checksum: 5caf0662
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:12 ; elapsed = 00:00:10 . Memory (MB): peak = 2607.281 ; gain = 8.984 ; free physical = 23078 ; free virtual = 267162default:defaulth px� 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px� 
M
8Phase 2.2 Fix Topology Constraints | Checksum: 5caf0662
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:12 ; elapsed = 00:00:10 . Memory (MB): peak = 2639.281 ; gain = 40.984 ; free physical = 23043 ; free virtual = 266822default:defaulth px� 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px� 
F
1Phase 2.3 Pre Route Cleanup | Checksum: 5caf0662
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:12 ; elapsed = 00:00:10 . Memory (MB): peak = 2639.281 ; gain = 40.984 ; free physical = 23043 ; free virtual = 266822default:defaulth px� 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px� 
C
.Phase 2.4 Update Timing | Checksum: 146f32d47
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:12 ; elapsed = 00:00:10 . Memory (MB): peak = 2655.336 ; gain = 57.039 ; free physical = 23033 ; free virtual = 266722default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=7.519  | TNS=0.000  | WHS=-0.165 | THS=-14.546|
2default:defaultZ35-416h px� 
I
4Phase 2 Router Initialization | Checksum: 159d5b12f
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:13 ; elapsed = 00:00:11 . Memory (MB): peak = 2655.336 ; gain = 57.039 ; free physical = 23033 ; free virtual = 266722default:defaulth px� 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px� 
B
-Phase 3 Initial Routing | Checksum: d6c109b0
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:13 ; elapsed = 00:00:11 . Memory (MB): peak = 2655.336 ; gain = 57.039 ; free physical = 23038 ; free virtual = 266762default:defaulth px� 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px� 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=7.696  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
H
3Phase 4.1 Global Iteration 0 | Checksum: 11b238617
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:13 ; elapsed = 00:00:11 . Memory (MB): peak = 2655.336 ; gain = 57.039 ; free physical = 23038 ; free virtual = 266772default:defaulth px� 
F
1Phase 4 Rip-up And Reroute | Checksum: 11b238617
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:13 ; elapsed = 00:00:11 . Memory (MB): peak = 2655.336 ; gain = 57.039 ; free physical = 23038 ; free virtual = 266772default:defaulth px� 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px� 
C
.Phase 5.1 Delay CleanUp | Checksum: 11b238617
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:13 ; elapsed = 00:00:11 . Memory (MB): peak = 2655.336 ; gain = 57.039 ; free physical = 23038 ; free virtual = 266772default:defaulth px� 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px� 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 11b238617
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:13 ; elapsed = 00:00:11 . Memory (MB): peak = 2655.336 ; gain = 57.039 ; free physical = 23038 ; free virtual = 266772default:defaulth px� 
O
:Phase 5 Delay and Skew Optimization | Checksum: 11b238617
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:13 ; elapsed = 00:00:11 . Memory (MB): peak = 2655.336 ; gain = 57.039 ; free physical = 23038 ; free virtual = 266772default:defaulth px� 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 6.1.1 Update Timing | Checksum: 14df7eb41
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:13 ; elapsed = 00:00:11 . Memory (MB): peak = 2655.336 ; gain = 57.039 ; free physical = 23038 ; free virtual = 266772default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=7.812  | TNS=0.000  | WHS=0.112  | THS=0.000  |
2default:defaultZ35-416h px� 
C
.Phase 6.1 Hold Fix Iter | Checksum: 14df7eb41
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:13 ; elapsed = 00:00:11 . Memory (MB): peak = 2655.336 ; gain = 57.039 ; free physical = 23038 ; free virtual = 266772default:defaulth px� 
A
,Phase 6 Post Hold Fix | Checksum: 14df7eb41
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:13 ; elapsed = 00:00:11 . Memory (MB): peak = 2655.336 ; gain = 57.039 ; free physical = 23038 ; free virtual = 266772default:defaulth px� 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px� 
B
-Phase 7 Route finalize | Checksum: 14df7eb41
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:13 ; elapsed = 00:00:11 . Memory (MB): peak = 2655.336 ; gain = 57.039 ; free physical = 23038 ; free virtual = 266772default:defaulth px� 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px� 
I
4Phase 8 Verifying routed nets | Checksum: 14df7eb41
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:13 ; elapsed = 00:00:11 . Memory (MB): peak = 2655.336 ; gain = 57.039 ; free physical = 23037 ; free virtual = 266752default:defaulth px� 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px� 
E
0Phase 9 Depositing Routes | Checksum: 10be4c367
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:13 ; elapsed = 00:00:11 . Memory (MB): peak = 2655.336 ; gain = 57.039 ; free physical = 23037 ; free virtual = 266752default:defaulth px� 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px� 
�
Estimated Timing Summary %s
57*route2J
6| WNS=7.812  | TNS=0.000  | WHS=0.112  | THS=0.000  |
2default:defaultZ35-57h px� 
�
�The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
127*routeZ35-327h px� 
G
2Phase 10 Post Router Timing | Checksum: 10be4c367
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:13 ; elapsed = 00:00:11 . Memory (MB): peak = 2655.336 ; gain = 57.039 ; free physical = 23037 ; free virtual = 266752default:defaulth px� 
@
Router Completed Successfully
2*	routeflowZ35-16h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:13 ; elapsed = 00:00:11 . Memory (MB): peak = 2655.336 ; gain = 57.039 ; free physical = 23074 ; free virtual = 267122default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
702default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
route_design: 2default:default2
00:00:152default:default2
00:02:032default:default2
2655.3362default:default2
90.3552default:default2
230502default:default2
266892default:defaultZ17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2655.3362default:default2
0.0002default:default2
230502default:default2
266892default:defaultZ17-722h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:00.142default:default2
00:00:00.242default:default2
2655.3362default:default2
0.0002default:default2
230432default:default2
266842default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2w
c/nas/ei/home/ge93zow/fpga_clock_module/lab/skeleton/projlab/projlab.runs/impl_1/hardware_routed.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
mExecuting : report_drc -file hardware_drc_routed.rpt -pb hardware_drc_routed.pb -rpx hardware_drc_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2t
`report_drc -file hardware_drc_routed.rpt -pb hardware_drc_routed.pb -rpx hardware_drc_routed.rpx2default:defaultZ4-113h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
168*coretcl2�
g/nas/ei/home/ge93zow/fpga_clock_module/lab/skeleton/projlab/projlab.runs/impl_1/hardware_drc_routed.rptg/nas/ei/home/ge93zow/fpga_clock_module/lab/skeleton/projlab/projlab.runs/impl_1/hardware_drc_routed.rpt2default:default8Z2-168h px� 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px� 
�
%s4*runtcl2�
�Executing : report_methodology -file hardware_methodology_drc_routed.rpt -pb hardware_methodology_drc_routed.pb -rpx hardware_methodology_drc_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
�report_methodology -file hardware_methodology_drc_routed.rpt -pb hardware_methodology_drc_routed.pb -rpx hardware_methodology_drc_routed.rpx2default:defaultZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
Y
$Running Methodology with %s threads
74*drc2
82default:defaultZ23-133h px� 
�
2The results of Report Methodology are in file %s.
450*coretcl2�
s/nas/ei/home/ge93zow/fpga_clock_module/lab/skeleton/projlab/projlab.runs/impl_1/hardware_methodology_drc_routed.rpts/nas/ei/home/ge93zow/fpga_clock_module/lab/skeleton/projlab/projlab.runs/impl_1/hardware_methodology_drc_routed.rpt2default:default8Z2-1520h px� 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px� 
�
%s4*runtcl2�
}Executing : report_power -file hardware_power_routed.rpt -pb hardware_power_summary_routed.pb -rpx hardware_power_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
preport_power -file hardware_power_routed.rpt -pb hardware_power_summary_routed.pb -rpx hardware_power_routed.rpx2default:defaultZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
822default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px� 
�
%s4*runtcl2q
]Executing : report_route_status -file hardware_route_status.rpt -pb hardware_route_status.pb
2default:defaulth px� 
�
%s4*runtcl2�
�Executing : report_timing_summary -max_paths 10 -file hardware_timing_summary_routed.rpt -pb hardware_timing_summary_routed.pb -rpx hardware_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px� 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -3, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px� 
�
%s4*runtcl2e
QExecuting : report_incremental_reuse -file hardware_incremental_reuse_routed.rpt
2default:defaulth px� 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px� 
�
%s4*runtcl2e
QExecuting : report_clock_utilization -file hardware_clock_utilization_routed.rpt
2default:defaulth px� 
�
%s4*runtcl2�
�Executing : report_bus_skew -warn_on_violation -file hardware_bus_skew_routed.rpt -pb hardware_bus_skew_routed.pb -rpx hardware_bus_skew_routed.rpx
2default:defaulth px� 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -3, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px� 


End Record