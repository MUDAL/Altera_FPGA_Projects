# Create clock constraints
create_clock -name clock -period 20.000 [get_ports {clk}] 

# Automatically apply a generate clock on the output of PLLs
# This command can be safely left in the SDC even if there's no PLL
derive_pll_clocks

# Derive clock uncertainty
derive_clock_uncertainty

# Set false path (for asynchronous ports)
set_false_path -from [get_ports {rst_n button_in dq[*] data_in[*] vsync href pclk}]  
set_false_path -to   [get_ports {xclk dq[*] sclk cke cs_n ras_n cas_n we_n addr[*] bank[*] udqm ldqm vga_hsync vga_vsync vga_rgb[*]}] 