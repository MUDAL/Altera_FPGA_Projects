# Create directories for storing test vectors
# NB: Parent directory must be named "file" to tally with VHDL testbench
cd ..
file mkdir file/main

# Execute Python script to generate test vectors and status report files
cd python_scripts
exec python main_testvectors.py

# Ensure you're in the build directory before compiling sources and running simulation
# Reason: ModelSim auto-generated files will be dumped here
cd ../build

# Set Quartus installation directory
# Accept Quartus install path as a variable, or set a default fallback
if {![info exists quartus_root]} {
    if {[info exists env(MY_QUARTUS_PATH)]} {
        set quartus_root $env(MY_QUARTUS_PATH)
    } else {
        puts "ERROR: quartus_root not set and MY_QUARTUS_PATH environment variable not found."
        quit -code 1
    }
}

# Construct paths
set simlib_path "$quartus_root/eda/sim_lib"

# Create libraries
vlib work
vlib altera_mf 

# Map created libraries to physical directories
vmap work work
vmap altera_mf altera_mf   

# Compile Altera MegaFunctions into their libraries
vcom -work altera_mf $simlib_path/altera_mf_components.vhd
vcom -work altera_mf $simlib_path/altera_mf.vhd
vcom -work altera_mf ../../src/lib/pll/pll.vhd

# Compile other source files
vcom ../../src/lib/encoder.vhd
vcom ../../src/lib/spi_tx.vhd
vcom ../../src/lib/uart_rx.vhd
vcom ../../src/lib/fifo/fifo_ram.vhd
vcom ../../src/lib/fifo/fifo_control.vhd
vcom ../../src/lib/fifo/fifo.vhd
vcom ../../src/rgb_display.vhd
vcom ../testbench/pack_tb_header.vhd
vcom ../testbench/pack_tb_body.vhd
vcom ../testbench/rgb_display_tb.vhd

# Load design unit (compiled file) into the simulation environment
vsim work.rgb_display_tb

# Run the simulation
run -all
