# Copyright (C) 2020  Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions 
# and other software and tools, and any partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License 
# Subscription Agreement, the Intel Quartus Prime License Agreement,
# the Intel FPGA IP License Agreement, or other applicable license
# agreement, including, without limitation, that your use is for
# the sole purpose of programming logic devices manufactured by
# Intel and sold by Intel or its authorized distributors.  Please
# refer to the applicable agreement for further details, at
# https://fpgasoftware.intel.com/eula.

# Quartus Prime: Generate Tcl File for Project
# File: seg_display.tcl
# Generated on: Fri May 23 13:42:56 2025

# Load Quartus Prime Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "seg_display"]} {
		puts "Project seg_display is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists seg_display]} {
		project_open -revision seg_display seg_display
	} else {
		project_new -revision seg_display seg_display
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "Cyclone IV E"
	set_global_assignment -name DEVICE EP4CE6E22C8
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 20.1.1
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "18:09:58  JANUARY 14, 2024"
	set_global_assignment -name LAST_QUARTUS_VERSION "20.1.1 Lite Edition"
	set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 1
	set_global_assignment -name NOMINAL_CORE_SUPPLY_VOLTAGE 1.2V
	set_global_assignment -name EDA_DESIGN_ENTRY_SYNTHESIS_TOOL Custom
	set_global_assignment -name EDA_INPUT_DATA_FORMAT VHDL -section_id eda_design_synthesis
	set_global_assignment -name EDA_SIMULATION_TOOL "<None>"
	set_global_assignment -name EDA_TIME_SCALE "1 ps" -section_id eda_simulation
	set_global_assignment -name EDA_RUN_TOOL_AUTOMATICALLY OFF -section_id eda_simulation
	set_global_assignment -name EDA_OUTPUT_DATA_FORMAT NONE -section_id eda_simulation
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_timing
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_symbol
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_signal_integrity
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_boundary_scan
	set_global_assignment -name POWER_PRESET_COOLING_SOLUTION "23 MM HEAT SINK WITH 200 LFPM AIRFLOW"
	set_global_assignment -name POWER_BOARD_THERMAL_MODEL "NONE (CONSERVATIVE)"
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
	set_global_assignment -name VHDL_FILE ../src/seg_display.vhd
	set_global_assignment -name VHDL_FILE ../src/lib/seg_rom.vhd
	set_global_assignment -name VHDL_FILE ../src/lib/seg_counter.vhd
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to seg[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to seg[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to seg[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to seg[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to seg[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to seg[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to seg[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to seg
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dig
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to rst_n
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to clk
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sel[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sel[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sel[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sel[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sel	
	set_location_assignment PIN_128 -to seg[0]
	set_location_assignment PIN_121 -to seg[1]
	set_location_assignment PIN_125 -to seg[2]
	set_location_assignment PIN_129 -to seg[3]
	set_location_assignment PIN_132 -to seg[4]
	set_location_assignment PIN_126 -to seg[5]
	set_location_assignment PIN_124 -to seg[6]
	set_location_assignment PIN_25 -to rst_n
	set_location_assignment PIN_23 -to clk
	set_location_assignment PIN_137 -to sel[3]
	set_location_assignment PIN_136 -to sel[2]
	set_location_assignment PIN_135 -to sel[1]
	set_location_assignment PIN_133 -to sel[0]
	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

	# Commit assignments
	export_assignments

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}
