# Ensure you're in the build directory before compiling sources and running simulation
# Reason: ModelSim auto-generated files will be dumped here

# Create libraries
vlib work

# Compile source files
vcom ../../src/lib/lcd_driver.vhd
vcom ../testbench/pack_tb_header.vhd
vcom ../testbench/pack_tb_body.vhd
vcom ../testbench/lcd_driver_tb.vhd

# Load design unit (compiled file) into the simulation environment
vsim work.lcd_driver_tb

# Run the simulation
run -all