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
# File: ir_lcd_main.tcl
# Generated on: Fri May 23 14:47:29 2025

# Load Quartus Prime Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "ir_lcd_main"]} {
		puts "Project ir_lcd_main is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists ir_lcd_main]} {
		project_open -revision ir_lcd_main ir_lcd_main
	} else {
		project_new -revision ir_lcd_main ir_lcd_main
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "Cyclone IV E"
	set_global_assignment -name DEVICE EP4CE6E22C8
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 20.1.1
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "13:22:07  MARCH 25, 2024"
	set_global_assignment -name LAST_QUARTUS_VERSION "20.1.1 Lite Edition"
	set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 1
	set_global_assignment -name NOMINAL_CORE_SUPPLY_VOLTAGE 1.2V
	set_global_assignment -name EDA_DESIGN_ENTRY_SYNTHESIS_TOOL Custom
	set_global_assignment -name EDA_INPUT_DATA_FORMAT VHDL -section_id eda_design_synthesis
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_timing
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_symbol
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_signal_integrity
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_boundary_scan
	set_global_assignment -name ENABLE_SIGNALTAP OFF
	set_global_assignment -name USE_SIGNALTAP_FILE output_files/stp1.stp
	set_global_assignment -name POWER_PRESET_COOLING_SOLUTION "23 MM HEAT SINK WITH 200 LFPM AIRFLOW"
	set_global_assignment -name POWER_BOARD_THERMAL_MODEL "NONE (CONSERVATIVE)"
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
	set_global_assignment -name VHDL_FILE ../src/ir_lcd_main.vhd
	set_global_assignment -name VHDL_FILE ../src/lib/tl1838_lcd_interface.vhd
	set_global_assignment -name VHDL_FILE ../src/lib/tl1838_decoder.vhd
	set_global_assignment -name VHDL_FILE ../src/lib/lcd_driver.vhd
	set_location_assignment PIN_23 -to clk
	set_location_assignment PIN_11 -to db[7]
	set_location_assignment PIN_7 -to db[6]
	set_location_assignment PIN_10 -to db[5]
	set_location_assignment PIN_2 -to db[4]
	set_location_assignment PIN_3 -to db[3]
	set_location_assignment PIN_144 -to db[2]
	set_location_assignment PIN_1 -to db[1]
	set_location_assignment PIN_142 -to db[0]
	set_location_assignment PIN_143 -to en
	set_location_assignment PIN_141 -to rs
	set_location_assignment PIN_25 -to rst_n
	set_location_assignment PIN_138 -to rw
	set_location_assignment PIN_100 -to ir
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to clk
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to db[7]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to db[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to db[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to db[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to db[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to db[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to db[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to db[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to db
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to en
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ir
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to rs
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to rst_n
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to rw
	set_location_assignment PIN_85 -to err
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to err
	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

	# Commit assignments
	export_assignments

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}
