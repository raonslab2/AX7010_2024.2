## ==============================================================
## File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
## Version: 2017.4
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
## 
## ==============================================================

#
# define some helpful variables, dirs, etc.
#
source ./settings.tcl
source ./extraction.tcl

set projectName mult_constant
set solutionName solution1
set targetPart ${device}${package}${speed}
set outputBaseName $top_module
set outputDir ./report 
file mkdir $outputDir

# create project 
create_project project . -part $targetPart -force
set_property target_language $language [current_project]


# setup design sources and constraints
set hdlfs [glob -nocomplain ./*.vhd ./*.v]
if {$hdlfs != "" } {
    add_files -norecurse $hdlfs
}
set xdcfs [glob -nocomplain ./*.xdc]
if {$xdcfs != "" } {
    add_files -fileset constrs_1 -norecurse $xdcfs
}

# vivado scripts to generate IP
set tclfiles [glob -nocomplain *_ip.tcl]
if { $tclfiles != ""} {
    foreach file $tclfiles {
         source $file
    }
}

# properties setting
if { $add_io_buffers == "false" } {
    set_property -name {STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS} -value {-no_iobuf -mode out_of_context} -objects [get_runs synth_1]
}

# XPM library support
set_property XPM_LIBRARIES {XPM_MEMORY} [current_project]
# launch run synth
launch_runs synth_1
wait_on_run synth_1
open_run synth_1
# write a few files and reports after synthesis
report_utilization -file $outputDir/${outputBaseName}_utilization_synth.rpt
report_timing -file $outputDir/${outputBaseName}_timing_synth.rpt

# launch run impl
set_property STEPS.PHYS_OPT_DESIGN.IS_ENABLED true [get_runs impl_1]
launch_runs impl_1
wait_on_run impl_1
open_run impl_1
# write a few files and reports after route
report_timing_summary -file $outputDir/${outputBaseName}_timing_routed.rpt
report_utilization -file $outputDir/${outputBaseName}_utilization_routed.rpt

if { [catch { compile_reports_rodin $top_module $language $targetPart $projectName $solutionName } err] } {
    puts "@E \[IMPL-251\] Errors occured while compiling report: $err"
    exit 1
}
