# Create directories for storing test vectors
# NB: Parent directory must be named "file" to tally with VHDL testbench
cd ..
file mkdir file/main

# Execute Python script to generate test vectors and status report files
cd python_scripts
exec python3 main_testvectors.py

# Ensure you're in the build directory before compiling sources and running simulation
# Reason: ModelSim auto-generated files will be dumped here
cd ../build

# Create libraries
vlib work

# Compile source files
vcom ../../src/lib/ps2.vhd
vcom ../../src/lib/uart.vhd
vcom ../../src/ps2_uart_main.vhd
vcom ../testbench/pack_tb_header.vhd
vcom ../testbench/pack_tb_body.vhd
vcom ../testbench/ps2_uart_main_tb.vhd

# Load design unit (compiled file) into the simulation environment
vsim work.ps2_uart_main_tb

# Run the simulation
run -all
