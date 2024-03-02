transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {vga_main.vho}

vcom -93 -work work {L:/VHDL/Intel_FPGA_Projects/EP4CE6_Projects/VGA/VGA_Part_1/simulation/modelsim/vga_main.vht}

vsim -t 1ps -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  vga_main_vhd_tst

add wave *
view structure
view signals
run -all
