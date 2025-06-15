# Create directory and "verification.txt" file inside it
# NB: Parent directory must be named "file" to tally with VHDL testbench
cd ..
file mkdir file
set f [open file/verification.txt w]
close $f

# Ensure you're in the build directory before compiling sources and running simulation
# Reason: ModelSim auto-generated files will be dumped here
cd build

# Create libraries
vlib work

# Compile source files
vcom ../../src/lib/pkg.vhd
vcom ../../src/lib/clock_divider.vhd
vcom ../../src/lib/camera_interface.vhd
vcom ../../src/lib/fifo/fifo_ram.vhd
vcom ../../src/lib/fifo/fifo_control.vhd
vcom ../../src/lib/fifo/fifo_main.vhd
vcom ../../src/lib/sdram_controller.vhd
vcom ../../src/lib/vga/vga_sync.vhd
vcom ../../src/lib/vga/vga_main.vhd
vcom ../testbench/pack_tb_header.vhd
vcom ../testbench/pack_tb_body.vhd
vcom ../testbench/sdram_behavioural_model/sdram_model.vhd
vcom ../testbench/frame_capture_main_tb.vhd

# Load design unit (compiled file) into the simulation environment
vsim work.frame_capture_main_tb

# Run the simulation
run -all
