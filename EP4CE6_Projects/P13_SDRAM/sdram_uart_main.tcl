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
# File: sdram_uart_main.tcl
# Generated on: Sun Jun 15 22:02:10 2025

# Load Quartus Prime Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "sdram_uart_main"]} {
		puts "Project sdram_uart_main is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists sdram_uart_main]} {
		project_open -revision sdram_uart_main sdram_uart_main
	} else {
		project_new -revision sdram_uart_main sdram_uart_main
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "Cyclone IV E"
	set_global_assignment -name DEVICE EP4CE6E22C8
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 20.1.1
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "15:25:14  DECEMBER 16, 2024"
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
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
	set_global_assignment -name ENABLE_SIGNALTAP OFF
	set_global_assignment -name USE_SIGNALTAP_FILE ../signal_tap/sdram_uart.stp
	set_global_assignment -name POWER_PRESET_COOLING_SOLUTION "23 MM HEAT SINK WITH 200 LFPM AIRFLOW"
	set_global_assignment -name POWER_BOARD_THERMAL_MODEL "NONE (CONSERVATIVE)"
	set_global_assignment -name ENABLE_OCT_DONE OFF
	set_global_assignment -name ENABLE_CONFIGURATION_PINS OFF
	set_global_assignment -name ENABLE_BOOT_SEL_PIN OFF
	set_global_assignment -name USE_CONFIGURATION_DEVICE OFF
	set_global_assignment -name CRC_ERROR_OPEN_DRAIN OFF
	set_global_assignment -name STRATIX_DEVICE_IO_STANDARD "3.3-V LVTTL"
	set_global_assignment -name OUTPUT_IO_TIMING_NEAR_END_VMEAS "HALF VCCIO" -rise
	set_global_assignment -name OUTPUT_IO_TIMING_NEAR_END_VMEAS "HALF VCCIO" -fall
	set_global_assignment -name OUTPUT_IO_TIMING_FAR_END_VMEAS "HALF SIGNAL SWING" -rise
	set_global_assignment -name OUTPUT_IO_TIMING_FAR_END_VMEAS "HALF SIGNAL SWING" -fall
	set_global_assignment -name SIGNALTAP_FILE ../signal_tap/sdram_uart.stp
	set_global_assignment -name VHDL_FILE ../src/sdram_uart_main.vhd
	set_global_assignment -name SDC_FILE ../constraints/sdram_uart_main.sdc
	set_global_assignment -name VHDL_FILE ../src/lib/pll/pll.vhd
	set_global_assignment -name QIP_FILE ../src/lib/pll/pll.qip
	set_global_assignment -name SOURCE_FILE ../src/lib/pll/pll.cmp
	set_global_assignment -name VHDL_FILE ../src/lib/fifo/fifo_ram.vhd
	set_global_assignment -name VHDL_FILE ../src/lib/fifo/fifo_main.vhd
	set_global_assignment -name VHDL_FILE ../src/lib/fifo/fifo_control.vhd
	set_global_assignment -name VHDL_FILE ../src/lib/uart_tx.vhd
	set_global_assignment -name VHDL_FILE ../src/lib/sdram_controller.vhd
	set_global_assignment -name VHDL_FILE ../src/lib/pkg.vhd
	set_global_assignment -name VHDL_FILE ../src/lib/data_source.vhd
	set_global_assignment -name VHDL_FILE ../src/lib/button.vhd
	set_location_assignment PIN_88 -to buttons[0]
	set_location_assignment PIN_91 -to buttons[1]
	set_location_assignment PIN_59 -to addr[11]
	set_location_assignment PIN_75 -to addr[10]
	set_location_assignment PIN_60 -to addr[9]
	set_location_assignment PIN_64 -to addr[8]
	set_location_assignment PIN_65 -to addr[7]
	set_location_assignment PIN_66 -to addr[6]
	set_location_assignment PIN_67 -to addr[5]
	set_location_assignment PIN_68 -to addr[4]
	set_location_assignment PIN_83 -to addr[3]
	set_location_assignment PIN_80 -to addr[2]
	set_location_assignment PIN_77 -to addr[1]
	set_location_assignment PIN_76 -to addr[0]
	set_location_assignment PIN_74 -to bank[1]
	set_location_assignment PIN_73 -to bank[0]
	set_location_assignment PIN_70 -to cas_n
	set_location_assignment PIN_58 -to cke
	set_location_assignment PIN_23 -to clk
	set_location_assignment PIN_72 -to cs_n
	set_location_assignment PIN_44 -to dq[15]
	set_location_assignment PIN_46 -to dq[14]
	set_location_assignment PIN_49 -to dq[13]
	set_location_assignment PIN_50 -to dq[12]
	set_location_assignment PIN_51 -to dq[11]
	set_location_assignment PIN_52 -to dq[10]
	set_location_assignment PIN_53 -to dq[9]
	set_location_assignment PIN_54 -to dq[8]
	set_location_assignment PIN_39 -to dq[7]
	set_location_assignment PIN_38 -to dq[6]
	set_location_assignment PIN_34 -to dq[5]
	set_location_assignment PIN_33 -to dq[4]
	set_location_assignment PIN_32 -to dq[3]
	set_location_assignment PIN_31 -to dq[2]
	set_location_assignment PIN_30 -to dq[1]
	set_location_assignment PIN_28 -to dq[0]
	set_location_assignment PIN_42 -to ldqm
	set_location_assignment PIN_55 -to udqm
	set_location_assignment PIN_71 -to ras_n
	set_location_assignment PIN_25 -to rst_n
	set_location_assignment PIN_69 -to we_n
	set_location_assignment PIN_43 -to sclk
	set_location_assignment PIN_115 -to uart_out
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to addr[11]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to addr[10]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to addr[9]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to addr[8]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to addr[7]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to addr[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to addr[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to addr[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to addr[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to addr[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to addr[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to addr[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to addr
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to bank[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to bank[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to bank
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to cas_n
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to cke
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to clk
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to cs_n
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to we_n
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to udqm
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sclk
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to rst_n
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ras_n
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ldqm
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dq[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dq[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dq[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dq[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dq[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dq[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dq[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dq[7]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dq[8]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dq[9]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dq[10]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dq[11]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dq[12]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dq[13]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dq[14]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dq[15]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dq
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to buttons[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to buttons[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to buttons
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to uart_out
	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

	# Commit assignments
	export_assignments

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}
