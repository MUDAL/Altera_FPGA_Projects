# Create directories for storing test vectors
# NB: Parent directory must be named "file" to tally with VHDL testbench
cd ..
file mkdir file/ram

# Execute Python script to generate test vectors and status report files
cd python_scripts
if {$tcl_platform(os) eq "Windows NT"} {
    exec python ram_testvectors.py
} else {
    exec python3 ram_testvectors.py
}

# Ensure you're in the build directory before compiling sources and running simulation
# Reason: ModelSim auto-generated files will be dumped here
cd ../build

# Create libraries
vlib work

# Compile source files
vcom ../../src/lib/fifo/fifo_ram.vhd
vcom ../testbench/pack_tb_header.vhd
vcom ../testbench/pack_tb_body.vhd
vcom ../testbench/fifo_ram_tb.vhd

# Load design unit (compiled file) into the simulation environment
vsim work.fifo_ram_tb

# Run the simulation
run -all
