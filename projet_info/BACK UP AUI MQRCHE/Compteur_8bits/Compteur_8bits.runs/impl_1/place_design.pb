
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-349h px� 
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
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px� 
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
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px� 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
82default:defaultZ30-611h px� 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px� 
�

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2732.9532default:default2
0.0002default:default2
551962default:default2
673772default:defaultZ17-722h px� 
r
%s*common2Y
EPhase 1.1 Placer Initialization Netlist Sorting | Checksum: d211608a
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.03 . Memory (MB): peak = 2732.953 ; gain = 0.000 ; free physical = 55196 ; free virtual = 673772default:defaulth px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2732.9532default:default2
0.0002default:default2
551962default:default2
673772default:defaultZ17-722h px� 
�

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
�
9Poor placement for routing between an IO pin and BUFG. %s528*place2�
�This is normally an ERROR but the CLOCK_DEDICATED_ROUTE constraint is set to FALSE allowing your design to continue. The use of this override is highly discouraged as it may lead to very poor timing results. It is recommended that this error condition be corrected in the design.

	<MSGMETA::BEGIN::BLOCK>Clk_IBUF_inst<MSGMETA::END> (IBUF.O) is locked to IOB_X0Y13
	<MSGMETA::BEGIN::BLOCK>Clk_IBUF_BUFG_inst<MSGMETA::END> (BUFG.I) is provisionally placed by clockplacer on BUFGCTRL_X0Y0
"�
Clk_IBUF_inst2�This is normally an ERROR but the CLOCK_DEDICATED_ROUTE constraint is set to FALSE allowing your design to continue. The use of this override is highly discouraged as it may lead to very poor timing results. It is recommended that this error condition be corrected in the design.

	:" (IBUF.O) is locked to IOB_X0Y13
	"Z
Clk_IBUF_BUFG_inst:B (BUFG.I) is provisionally placed by clockplacer on BUFGCTRL_X0Y0
2default:default8Z30-574h px� 

%s*common2f
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: b5d2e6a0
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.39 ; elapsed = 00:00:00.22 . Memory (MB): peak = 2732.953 ; gain = 0.000 ; free physical = 55191 ; free virtual = 673752default:defaulth px� 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px� 
h
%s*common2O
;Phase 1.3 Build Placer Netlist Model | Checksum: 148414d8e
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.54 ; elapsed = 00:00:00.39 . Memory (MB): peak = 2732.953 ; gain = 0.000 ; free physical = 55190 ; free virtual = 673752default:defaulth px� 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px� 
e
%s*common2L
8Phase 1.4 Constrain Clocks/Macros | Checksum: 148414d8e
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.54 ; elapsed = 00:00:00.4 . Memory (MB): peak = 2732.953 ; gain = 0.000 ; free physical = 55190 ; free virtual = 673752default:defaulth px� 
a
%s*common2H
4Phase 1 Placer Initialization | Checksum: 148414d8e
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.55 ; elapsed = 00:00:00.4 . Memory (MB): peak = 2732.953 ; gain = 0.000 ; free physical = 55190 ; free virtual = 673752default:defaulth px� 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px� 
[
%s*common2B
.Phase 2.1 Floorplanning | Checksum: 148414d8e
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.55 ; elapsed = 00:00:00.42 . Memory (MB): peak = 2732.953 ; gain = 0.000 ; free physical = 55189 ; free virtual = 673742default:defaulth px� 
�

Phase %s%s
101*constraints2
2.2 2default:default25
!Update Timing before SLR Path Opt2default:defaultZ18-101h px� 
o
%s*common2V
BPhase 2.2 Update Timing before SLR Path Opt | Checksum: 148414d8e
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.55 ; elapsed = 00:00:00.42 . Memory (MB): peak = 2732.953 ; gain = 0.000 ; free physical = 55189 ; free virtual = 673742default:defaulth px� 
�

Phase %s%s
101*constraints2
2.3 2default:default24
 Post-Processing in Floorplanning2default:defaultZ18-101h px� 
n
%s*common2U
APhase 2.3 Post-Processing in Floorplanning | Checksum: 148414d8e
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.55 ; elapsed = 00:00:00.42 . Memory (MB): peak = 2732.953 ; gain = 0.000 ; free physical = 55189 ; free virtual = 673742default:defaulth px� 
x

Phase %s%s
101*constraints2
2.4 2default:default2)
Global Placement Core2default:defaultZ18-101h px� 
�
dTiming had been disabled during Placer and, therefore, physical synthesis in Placer will be skipped.29*	placeflowZ46-29h px� 
c
%s*common2J
6Phase 2.4 Global Placement Core | Checksum: 12ea4e437
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.64 . Memory (MB): peak = 2732.953 ; gain = 0.000 ; free physical = 55176 ; free virtual = 673622default:defaulth px� 
\
%s*common2C
/Phase 2 Global Placement | Checksum: 12ea4e437
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.64 . Memory (MB): peak = 2732.953 ; gain = 0.000 ; free physical = 55176 ; free virtual = 673622default:defaulth px� 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px� 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px� 
h
%s*common2O
;Phase 3.1 Commit Multi Column Macros | Checksum: 12ea4e437
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.64 . Memory (MB): peak = 2732.953 ; gain = 0.000 ; free physical = 55186 ; free virtual = 673722default:defaulth px� 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px� 
i
%s*common2P
<Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 4e2ffbbc
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.65 . Memory (MB): peak = 2732.953 ; gain = 0.000 ; free physical = 55186 ; free virtual = 673722default:defaulth px� 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px� 
c
%s*common2J
6Phase 3.3 Area Swap Optimization | Checksum: 77d01688
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.65 . Memory (MB): peak = 2732.953 ; gain = 0.000 ; free physical = 55186 ; free virtual = 673722default:defaulth px� 
�

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
k
%s*common2R
>Phase 3.4 Pipeline Register Optimization | Checksum: 77d01688
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.65 . Memory (MB): peak = 2732.953 ; gain = 0.000 ; free physical = 55186 ; free virtual = 673722default:defaulth px� 


Phase %s%s
101*constraints2
3.5 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px� 
j
%s*common2Q
=Phase 3.5 Small Shape Detail Placement | Checksum: 103f4b4d5
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.72 . Memory (MB): peak = 2732.953 ; gain = 0.000 ; free physical = 55182 ; free virtual = 673682default:defaulth px� 
u

Phase %s%s
101*constraints2
3.6 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px� 
`
%s*common2G
3Phase 3.6 Re-assign LUT pins | Checksum: 103f4b4d5
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.72 . Memory (MB): peak = 2732.953 ; gain = 0.000 ; free physical = 55182 ; free virtual = 673682default:defaulth px� 
�

Phase %s%s
101*constraints2
3.7 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
l
%s*common2S
?Phase 3.7 Pipeline Register Optimization | Checksum: 103f4b4d5
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.72 . Memory (MB): peak = 2732.953 ; gain = 0.000 ; free physical = 55182 ; free virtual = 673682default:defaulth px� 
\
%s*common2C
/Phase 3 Detail Placement | Checksum: 103f4b4d5
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.73 . Memory (MB): peak = 2732.953 ; gain = 0.000 ; free physical = 55182 ; free virtual = 673682default:defaulth px� 
�

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px� 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px� 
f
%s*common2M
9Phase 4.1 Post Commit Optimization | Checksum: 103f4b4d5
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.75 . Memory (MB): peak = 2732.953 ; gain = 0.000 ; free physical = 55181 ; free virtual = 673682default:defaulth px� 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px� 
d
%s*common2K
7Phase 4.2 Post Placement Cleanup | Checksum: 103f4b4d5
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.75 . Memory (MB): peak = 2732.953 ; gain = 0.000 ; free physical = 55181 ; free virtual = 673682default:defaulth px� 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px� 


Phase %s%s
101*constraints2
4.3.1 2default:default2.
Print Estimated Congestion2default:defaultZ18-101h px� 
�
'Post-Placement Estimated Congestion %s
38*	placeflow2�
�
 ____________________________________________________
|           | Global Congestion | Short Congestion  |
| Direction | Region Size       | Region Size       |
|___________|___________________|___________________|
|      North|                1x1|                1x1|
|___________|___________________|___________________|
|      South|                1x1|                1x1|
|___________|___________________|___________________|
|       East|                1x1|                1x1|
|___________|___________________|___________________|
|       West|                1x1|                1x1|
|___________|___________________|___________________|
2default:defaultZ30-612h px� 
j
%s*common2Q
=Phase 4.3.1 Print Estimated Congestion | Checksum: 103f4b4d5
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.75 . Memory (MB): peak = 2732.953 ; gain = 0.000 ; free physical = 55181 ; free virtual = 673682default:defaulth px� 
^
%s*common2E
1Phase 4.3 Placer Reporting | Checksum: 103f4b4d5
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.75 . Memory (MB): peak = 2732.953 ; gain = 0.000 ; free physical = 55181 ; free virtual = 673682default:defaulth px� 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2732.9532default:default2
0.0002default:default2
551812default:default2
673682default:defaultZ17-722h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.75 . Memory (MB): peak = 2732.953 ; gain = 0.000 ; free physical = 55181 ; free virtual = 673682default:defaulth px� 
t
%s*common2[
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 1addcec5c
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.75 . Memory (MB): peak = 2732.953 ; gain = 0.000 ; free physical = 55181 ; free virtual = 673682default:defaulth px� 
V
%s*common2=
)Ending Placer Task | Checksum: 18575d960
2default:defaulth px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.75 . Memory (MB): peak = 2732.953 ; gain = 0.000 ; free physical = 55181 ; free virtual = 673682default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
432default:default2
22default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px� 
i
%s4*runtcl2M
9Executing : report_io -file Compteur_8bits_io_placed.rpt
2default:defaulth px� 
�
�report_io: Time (s): cpu = 00:00:00.11 ; elapsed = 00:00:00.13 . Memory (MB): peak = 2732.953 ; gain = 0.000 ; free physical = 55185 ; free virtual = 67371
*commonh px� 
�
%s4*runtcl2�
tExecuting : report_utilization -file Compteur_8bits_utilization_placed.rpt -pb Compteur_8bits_utilization_placed.pb
2default:defaulth px� 
�
%s4*runtcl2j
VExecuting : report_control_sets -verbose -file Compteur_8bits_control_sets_placed.rpt
2default:defaulth px� 
�
�report_control_sets: Time (s): cpu = 00:00:00.04 ; elapsed = 00:00:00.09 . Memory (MB): peak = 2732.953 ; gain = 0.000 ; free physical = 55177 ; free virtual = 67364
*commonh px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
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
00:00:00.112default:default2
00:00:00.082default:default2
2732.9532default:default2
0.0002default:default2
551852default:default2
673722default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2~
j/home/rbonnet/Documents/4A/projet_info/Compteur_8bits/Compteur_8bits.runs/impl_1/Compteur_8bits_placed.dcp2default:defaultZ17-1381h px� 


End Record