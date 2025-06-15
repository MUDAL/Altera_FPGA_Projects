# Ensure you're in the build directory before compiling sources and running simulation
# Reason: ModelSim auto-generated files will be dumped here
cd ../build

# Create libraries
vlib work

# Compile source files
vcom ../../src/lib/pkg.vhd
vcom ../../src/lib/sdram_controller.vhd
vcom ../testbench/pack_tb_header.vhd
vcom ../testbench/pack_tb_body.vhd
vcom ../testbench/sdram_behavioural_model/sdram_model.vhd
vcom ../testbench/sdram_controller_tb.vhd

# Load design unit (compiled file) into the simulation environment
vsim work.sdram_controller_tb

# Run the simulation
run -all
