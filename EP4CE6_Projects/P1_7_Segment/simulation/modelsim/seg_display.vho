-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "01/16/2024 22:19:23"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	seg_display IS
    PORT (
	rst_n : IN std_logic;
	clk : IN std_logic;
	seg : OUT std_logic_vector(6 DOWNTO 0);
	dig : OUT std_logic_vector(3 DOWNTO 0)
	);
END seg_display;

-- Design Ports Information
-- seg[0]	=>  Location: PIN_128,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg[1]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg[2]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg[3]	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg[4]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg[5]	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg[6]	=>  Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dig[0]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dig[1]	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dig[2]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dig[3]	=>  Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- rst_n	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF seg_display IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_seg : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_dig : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter_3|clock_10KHz|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \counter_3|clock_10KHz|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rst_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_nCEO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~obuf_o\ : std_logic;
SIGNAL \~ALTERA_nCEO~~obuf_o\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \counter_3|count[0]~3_combout\ : std_logic;
SIGNAL \counter_3|Add1~0_combout\ : std_logic;
SIGNAL \counter_3|Add1~1\ : std_logic;
SIGNAL \counter_3|Add1~2_combout\ : std_logic;
SIGNAL \counter_3|Add1~3\ : std_logic;
SIGNAL \counter_3|Add1~4_combout\ : std_logic;
SIGNAL \counter_3|Add1~5\ : std_logic;
SIGNAL \counter_3|Add1~6_combout\ : std_logic;
SIGNAL \counter_3|Add1~7\ : std_logic;
SIGNAL \counter_3|Add1~8_combout\ : std_logic;
SIGNAL \counter_3|Add1~9\ : std_logic;
SIGNAL \counter_3|Add1~10_combout\ : std_logic;
SIGNAL \counter_3|Add1~11\ : std_logic;
SIGNAL \counter_3|Add1~13\ : std_logic;
SIGNAL \counter_3|Add1~14_combout\ : std_logic;
SIGNAL \counter_3|Add1~15\ : std_logic;
SIGNAL \counter_3|Add1~16_combout\ : std_logic;
SIGNAL \counter_3|Add1~17\ : std_logic;
SIGNAL \counter_3|Add1~18_combout\ : std_logic;
SIGNAL \counter_3|Equal0~6_combout\ : std_logic;
SIGNAL \counter_3|clk_counter~5_combout\ : std_logic;
SIGNAL \counter_3|Add1~19\ : std_logic;
SIGNAL \counter_3|Add1~20_combout\ : std_logic;
SIGNAL \counter_3|Add1~21\ : std_logic;
SIGNAL \counter_3|Add1~22_combout\ : std_logic;
SIGNAL \counter_3|Equal0~3_combout\ : std_logic;
SIGNAL \counter_3|Add1~23\ : std_logic;
SIGNAL \counter_3|Add1~24_combout\ : std_logic;
SIGNAL \counter_3|Add1~25\ : std_logic;
SIGNAL \counter_3|Add1~26_combout\ : std_logic;
SIGNAL \counter_3|Add1~27\ : std_logic;
SIGNAL \counter_3|Add1~28_combout\ : std_logic;
SIGNAL \counter_3|clk_counter~4_combout\ : std_logic;
SIGNAL \counter_3|Add1~29\ : std_logic;
SIGNAL \counter_3|Add1~30_combout\ : std_logic;
SIGNAL \counter_3|Equal0~2_combout\ : std_logic;
SIGNAL \counter_3|Add1~31\ : std_logic;
SIGNAL \counter_3|Add1~32_combout\ : std_logic;
SIGNAL \counter_3|clk_counter~3_combout\ : std_logic;
SIGNAL \counter_3|Add1~33\ : std_logic;
SIGNAL \counter_3|Add1~34_combout\ : std_logic;
SIGNAL \counter_3|clk_counter~2_combout\ : std_logic;
SIGNAL \counter_3|Add1~35\ : std_logic;
SIGNAL \counter_3|Add1~36_combout\ : std_logic;
SIGNAL \counter_3|clk_counter~1_combout\ : std_logic;
SIGNAL \counter_3|Add1~37\ : std_logic;
SIGNAL \counter_3|Add1~38_combout\ : std_logic;
SIGNAL \counter_3|clk_counter~0_combout\ : std_logic;
SIGNAL \counter_3|Equal0~1_combout\ : std_logic;
SIGNAL \counter_3|Add1~39\ : std_logic;
SIGNAL \counter_3|Add1~40_combout\ : std_logic;
SIGNAL \counter_3|Add1~41\ : std_logic;
SIGNAL \counter_3|Add1~42_combout\ : std_logic;
SIGNAL \counter_3|Add1~43\ : std_logic;
SIGNAL \counter_3|Add1~44_combout\ : std_logic;
SIGNAL \counter_3|Add1~45\ : std_logic;
SIGNAL \counter_3|Add1~46_combout\ : std_logic;
SIGNAL \counter_3|Equal0~0_combout\ : std_logic;
SIGNAL \counter_3|Equal0~4_combout\ : std_logic;
SIGNAL \counter_3|Add1~12_combout\ : std_logic;
SIGNAL \counter_3|clk_counter~6_combout\ : std_logic;
SIGNAL \counter_3|Equal0~5_combout\ : std_logic;
SIGNAL \counter_3|Equal0~7_combout\ : std_logic;
SIGNAL \counter_3|count[2]~1_combout\ : std_logic;
SIGNAL \counter_3|count~0_combout\ : std_logic;
SIGNAL \counter_3|count~2_combout\ : std_logic;
SIGNAL \rom|rom~0_combout\ : std_logic;
SIGNAL \rom|rom~1_combout\ : std_logic;
SIGNAL \rom|rom~2_combout\ : std_logic;
SIGNAL \rom|rom~3_combout\ : std_logic;
SIGNAL \rom|rom~4_combout\ : std_logic;
SIGNAL \rom|rom~5_combout\ : std_logic;
SIGNAL \rom|rom~6_combout\ : std_logic;
SIGNAL \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \counter_3|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter_3|clk_counter\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \ALT_INV_rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \rom|ALT_INV_rom~6_combout\ : std_logic;

BEGIN

ww_rst_n <= rst_n;
ww_clk <= clk;
seg <= ww_seg;
dig <= ww_dig;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\counter_3|clock_10KHz|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk\(0) <= \counter_3|clock_10KHz|altpll_component|auto_generated|pll1_CLK_bus\(0);
\counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk\(1) <= \counter_3|clock_10KHz|altpll_component|auto_generated|pll1_CLK_bus\(1);
\counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk\(2) <= \counter_3|clock_10KHz|altpll_component|auto_generated|pll1_CLK_bus\(2);
\counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk\(3) <= \counter_3|clock_10KHz|altpll_component|auto_generated|pll1_CLK_bus\(3);
\counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk\(4) <= \counter_3|clock_10KHz|altpll_component|auto_generated|pll1_CLK_bus\(4);

\rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst_n~input_o\);

\counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk\(0));
\ALT_INV_rst_n~inputclkctrl_outclk\ <= NOT \rst_n~inputclkctrl_outclk\;
\rom|ALT_INV_rom~6_combout\ <= NOT \rom|rom~6_combout\;

-- Location: IOOBUF_X16_Y24_N16
\seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom|rom~0_combout\,
	devoe => ww_devoe,
	o => ww_seg(0));

-- Location: IOOBUF_X23_Y24_N16
\seg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom|rom~1_combout\,
	devoe => ww_devoe,
	o => ww_seg(1));

-- Location: IOOBUF_X18_Y24_N23
\seg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom|rom~2_combout\,
	devoe => ww_devoe,
	o => ww_seg(2));

-- Location: IOOBUF_X16_Y24_N23
\seg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom|rom~3_combout\,
	devoe => ww_devoe,
	o => ww_seg(3));

-- Location: IOOBUF_X13_Y24_N16
\seg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom|rom~4_combout\,
	devoe => ww_devoe,
	o => ww_seg(4));

-- Location: IOOBUF_X16_Y24_N2
\seg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom|rom~5_combout\,
	devoe => ww_devoe,
	o => ww_seg(5));

-- Location: IOOBUF_X18_Y24_N16
\seg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom|ALT_INV_rom~6_combout\,
	devoe => ww_devoe,
	o => ww_seg(6));

-- Location: IOOBUF_X13_Y24_N23
\dig[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dig(0));

-- Location: IOOBUF_X11_Y24_N16
\dig[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dig(1));

-- Location: IOOBUF_X9_Y24_N9
\dig[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dig(2));

-- Location: IOOBUF_X7_Y24_N2
\dig[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dig(3));

-- Location: IOIBUF_X0_Y11_N22
\rst_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: CLKCTRL_G3
\rst_n~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst_n~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: PLL_1
\counter_3|clock_10KHz|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 60,
	c0_initial => 1,
	c0_low => 60,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 250,
	c1_initial => 1,
	c1_low => 250,
	c1_mode => "even",
	c1_ph => 0,
	c1_use_casc_in => "on",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c1",
	clk0_divide_by => 5000,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \ALT_INV_rst_n~inputclkctrl_outclk\,
	fbin => \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \counter_3|clock_10KHz|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \counter_3|clock_10KHz|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G4
\counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X18_Y20_N24
\counter_3|count[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|count[0]~3_combout\ = !\counter_3|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_3|count\(0),
	combout => \counter_3|count[0]~3_combout\);

-- Location: LCCOMB_X22_Y9_N8
\counter_3|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~0_combout\ = \counter_3|clk_counter\(0) $ (VCC)
-- \counter_3|Add1~1\ = CARRY(\counter_3|clk_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_3|clk_counter\(0),
	datad => VCC,
	combout => \counter_3|Add1~0_combout\,
	cout => \counter_3|Add1~1\);

-- Location: FF_X22_Y9_N9
\counter_3|clk_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|Add1~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clk_counter\(0));

-- Location: LCCOMB_X22_Y9_N10
\counter_3|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~2_combout\ = (\counter_3|clk_counter\(1) & (!\counter_3|Add1~1\)) # (!\counter_3|clk_counter\(1) & ((\counter_3|Add1~1\) # (GND)))
-- \counter_3|Add1~3\ = CARRY((!\counter_3|Add1~1\) # (!\counter_3|clk_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|clk_counter\(1),
	datad => VCC,
	cin => \counter_3|Add1~1\,
	combout => \counter_3|Add1~2_combout\,
	cout => \counter_3|Add1~3\);

-- Location: FF_X22_Y9_N11
\counter_3|clk_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|Add1~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clk_counter\(1));

-- Location: LCCOMB_X22_Y9_N12
\counter_3|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~4_combout\ = (\counter_3|clk_counter\(2) & (\counter_3|Add1~3\ $ (GND))) # (!\counter_3|clk_counter\(2) & (!\counter_3|Add1~3\ & VCC))
-- \counter_3|Add1~5\ = CARRY((\counter_3|clk_counter\(2) & !\counter_3|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|clk_counter\(2),
	datad => VCC,
	cin => \counter_3|Add1~3\,
	combout => \counter_3|Add1~4_combout\,
	cout => \counter_3|Add1~5\);

-- Location: FF_X22_Y9_N13
\counter_3|clk_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|Add1~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clk_counter\(2));

-- Location: LCCOMB_X22_Y9_N14
\counter_3|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~6_combout\ = (\counter_3|clk_counter\(3) & (!\counter_3|Add1~5\)) # (!\counter_3|clk_counter\(3) & ((\counter_3|Add1~5\) # (GND)))
-- \counter_3|Add1~7\ = CARRY((!\counter_3|Add1~5\) # (!\counter_3|clk_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_3|clk_counter\(3),
	datad => VCC,
	cin => \counter_3|Add1~5\,
	combout => \counter_3|Add1~6_combout\,
	cout => \counter_3|Add1~7\);

-- Location: FF_X22_Y9_N15
\counter_3|clk_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|Add1~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clk_counter\(3));

-- Location: LCCOMB_X22_Y9_N16
\counter_3|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~8_combout\ = (\counter_3|clk_counter\(4) & (\counter_3|Add1~7\ $ (GND))) # (!\counter_3|clk_counter\(4) & (!\counter_3|Add1~7\ & VCC))
-- \counter_3|Add1~9\ = CARRY((\counter_3|clk_counter\(4) & !\counter_3|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_3|clk_counter\(4),
	datad => VCC,
	cin => \counter_3|Add1~7\,
	combout => \counter_3|Add1~8_combout\,
	cout => \counter_3|Add1~9\);

-- Location: FF_X22_Y9_N17
\counter_3|clk_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|Add1~8_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clk_counter\(4));

-- Location: LCCOMB_X22_Y9_N18
\counter_3|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~10_combout\ = (\counter_3|clk_counter\(5) & (!\counter_3|Add1~9\)) # (!\counter_3|clk_counter\(5) & ((\counter_3|Add1~9\) # (GND)))
-- \counter_3|Add1~11\ = CARRY((!\counter_3|Add1~9\) # (!\counter_3|clk_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_3|clk_counter\(5),
	datad => VCC,
	cin => \counter_3|Add1~9\,
	combout => \counter_3|Add1~10_combout\,
	cout => \counter_3|Add1~11\);

-- Location: FF_X22_Y9_N19
\counter_3|clk_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|Add1~10_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clk_counter\(5));

-- Location: LCCOMB_X22_Y9_N20
\counter_3|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~12_combout\ = (\counter_3|clk_counter\(6) & (\counter_3|Add1~11\ $ (GND))) # (!\counter_3|clk_counter\(6) & (!\counter_3|Add1~11\ & VCC))
-- \counter_3|Add1~13\ = CARRY((\counter_3|clk_counter\(6) & !\counter_3|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_3|clk_counter\(6),
	datad => VCC,
	cin => \counter_3|Add1~11\,
	combout => \counter_3|Add1~12_combout\,
	cout => \counter_3|Add1~13\);

-- Location: LCCOMB_X22_Y9_N22
\counter_3|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~14_combout\ = (\counter_3|clk_counter\(7) & (!\counter_3|Add1~13\)) # (!\counter_3|clk_counter\(7) & ((\counter_3|Add1~13\) # (GND)))
-- \counter_3|Add1~15\ = CARRY((!\counter_3|Add1~13\) # (!\counter_3|clk_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|clk_counter\(7),
	datad => VCC,
	cin => \counter_3|Add1~13\,
	combout => \counter_3|Add1~14_combout\,
	cout => \counter_3|Add1~15\);

-- Location: FF_X22_Y9_N23
\counter_3|clk_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|Add1~14_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clk_counter\(7));

-- Location: LCCOMB_X22_Y9_N24
\counter_3|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~16_combout\ = (\counter_3|clk_counter\(8) & (\counter_3|Add1~15\ $ (GND))) # (!\counter_3|clk_counter\(8) & (!\counter_3|Add1~15\ & VCC))
-- \counter_3|Add1~17\ = CARRY((\counter_3|clk_counter\(8) & !\counter_3|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_3|clk_counter\(8),
	datad => VCC,
	cin => \counter_3|Add1~15\,
	combout => \counter_3|Add1~16_combout\,
	cout => \counter_3|Add1~17\);

-- Location: FF_X22_Y9_N25
\counter_3|clk_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|Add1~16_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clk_counter\(8));

-- Location: LCCOMB_X22_Y9_N26
\counter_3|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~18_combout\ = (\counter_3|clk_counter\(9) & (!\counter_3|Add1~17\)) # (!\counter_3|clk_counter\(9) & ((\counter_3|Add1~17\) # (GND)))
-- \counter_3|Add1~19\ = CARRY((!\counter_3|Add1~17\) # (!\counter_3|clk_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_3|clk_counter\(9),
	datad => VCC,
	cin => \counter_3|Add1~17\,
	combout => \counter_3|Add1~18_combout\,
	cout => \counter_3|Add1~19\);

-- Location: LCCOMB_X22_Y9_N6
\counter_3|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Equal0~6_combout\ = (\counter_3|clk_counter\(1) & (\counter_3|clk_counter\(0) & (\counter_3|clk_counter\(3) & \counter_3|clk_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|clk_counter\(1),
	datab => \counter_3|clk_counter\(0),
	datac => \counter_3|clk_counter\(3),
	datad => \counter_3|clk_counter\(2),
	combout => \counter_3|Equal0~6_combout\);

-- Location: LCCOMB_X22_Y9_N0
\counter_3|clk_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|clk_counter~5_combout\ = (\counter_3|Add1~18_combout\ & (((!\counter_3|Equal0~6_combout\) # (!\counter_3|Equal0~5_combout\)) # (!\counter_3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|Equal0~4_combout\,
	datab => \counter_3|Add1~18_combout\,
	datac => \counter_3|Equal0~5_combout\,
	datad => \counter_3|Equal0~6_combout\,
	combout => \counter_3|clk_counter~5_combout\);

-- Location: FF_X22_Y9_N1
\counter_3|clk_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|clk_counter~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clk_counter\(9));

-- Location: LCCOMB_X22_Y9_N28
\counter_3|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~20_combout\ = (\counter_3|clk_counter\(10) & (\counter_3|Add1~19\ $ (GND))) # (!\counter_3|clk_counter\(10) & (!\counter_3|Add1~19\ & VCC))
-- \counter_3|Add1~21\ = CARRY((\counter_3|clk_counter\(10) & !\counter_3|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_3|clk_counter\(10),
	datad => VCC,
	cin => \counter_3|Add1~19\,
	combout => \counter_3|Add1~20_combout\,
	cout => \counter_3|Add1~21\);

-- Location: FF_X22_Y9_N29
\counter_3|clk_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|Add1~20_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clk_counter\(10));

-- Location: LCCOMB_X22_Y9_N30
\counter_3|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~22_combout\ = (\counter_3|clk_counter\(11) & (!\counter_3|Add1~21\)) # (!\counter_3|clk_counter\(11) & ((\counter_3|Add1~21\) # (GND)))
-- \counter_3|Add1~23\ = CARRY((!\counter_3|Add1~21\) # (!\counter_3|clk_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|clk_counter\(11),
	datad => VCC,
	cin => \counter_3|Add1~21\,
	combout => \counter_3|Add1~22_combout\,
	cout => \counter_3|Add1~23\);

-- Location: FF_X22_Y9_N31
\counter_3|clk_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|Add1~22_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clk_counter\(11));

-- Location: LCCOMB_X22_Y9_N2
\counter_3|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Equal0~3_combout\ = (!\counter_3|clk_counter\(10) & (!\counter_3|clk_counter\(8) & (!\counter_3|clk_counter\(11) & \counter_3|clk_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|clk_counter\(10),
	datab => \counter_3|clk_counter\(8),
	datac => \counter_3|clk_counter\(11),
	datad => \counter_3|clk_counter\(9),
	combout => \counter_3|Equal0~3_combout\);

-- Location: LCCOMB_X22_Y8_N0
\counter_3|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~24_combout\ = (\counter_3|clk_counter\(12) & (\counter_3|Add1~23\ $ (GND))) # (!\counter_3|clk_counter\(12) & (!\counter_3|Add1~23\ & VCC))
-- \counter_3|Add1~25\ = CARRY((\counter_3|clk_counter\(12) & !\counter_3|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_3|clk_counter\(12),
	datad => VCC,
	cin => \counter_3|Add1~23\,
	combout => \counter_3|Add1~24_combout\,
	cout => \counter_3|Add1~25\);

-- Location: FF_X22_Y8_N1
\counter_3|clk_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|Add1~24_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clk_counter\(12));

-- Location: LCCOMB_X22_Y8_N2
\counter_3|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~26_combout\ = (\counter_3|clk_counter\(13) & (!\counter_3|Add1~25\)) # (!\counter_3|clk_counter\(13) & ((\counter_3|Add1~25\) # (GND)))
-- \counter_3|Add1~27\ = CARRY((!\counter_3|Add1~25\) # (!\counter_3|clk_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_3|clk_counter\(13),
	datad => VCC,
	cin => \counter_3|Add1~25\,
	combout => \counter_3|Add1~26_combout\,
	cout => \counter_3|Add1~27\);

-- Location: FF_X22_Y8_N3
\counter_3|clk_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|Add1~26_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clk_counter\(13));

-- Location: LCCOMB_X22_Y8_N4
\counter_3|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~28_combout\ = (\counter_3|clk_counter\(14) & (\counter_3|Add1~27\ $ (GND))) # (!\counter_3|clk_counter\(14) & (!\counter_3|Add1~27\ & VCC))
-- \counter_3|Add1~29\ = CARRY((\counter_3|clk_counter\(14) & !\counter_3|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_3|clk_counter\(14),
	datad => VCC,
	cin => \counter_3|Add1~27\,
	combout => \counter_3|Add1~28_combout\,
	cout => \counter_3|Add1~29\);

-- Location: LCCOMB_X21_Y8_N24
\counter_3|clk_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|clk_counter~4_combout\ = (\counter_3|Add1~28_combout\ & (((!\counter_3|Equal0~5_combout\) # (!\counter_3|Equal0~6_combout\)) # (!\counter_3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|Equal0~4_combout\,
	datab => \counter_3|Equal0~6_combout\,
	datac => \counter_3|Equal0~5_combout\,
	datad => \counter_3|Add1~28_combout\,
	combout => \counter_3|clk_counter~4_combout\);

-- Location: FF_X21_Y8_N25
\counter_3|clk_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|clk_counter~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clk_counter\(14));

-- Location: LCCOMB_X22_Y8_N6
\counter_3|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~30_combout\ = (\counter_3|clk_counter\(15) & (!\counter_3|Add1~29\)) # (!\counter_3|clk_counter\(15) & ((\counter_3|Add1~29\) # (GND)))
-- \counter_3|Add1~31\ = CARRY((!\counter_3|Add1~29\) # (!\counter_3|clk_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|clk_counter\(15),
	datad => VCC,
	cin => \counter_3|Add1~29\,
	combout => \counter_3|Add1~30_combout\,
	cout => \counter_3|Add1~31\);

-- Location: FF_X22_Y8_N7
\counter_3|clk_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|Add1~30_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clk_counter\(15));

-- Location: LCCOMB_X22_Y8_N28
\counter_3|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Equal0~2_combout\ = (!\counter_3|clk_counter\(15) & (!\counter_3|clk_counter\(13) & (\counter_3|clk_counter\(14) & !\counter_3|clk_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|clk_counter\(15),
	datab => \counter_3|clk_counter\(13),
	datac => \counter_3|clk_counter\(14),
	datad => \counter_3|clk_counter\(12),
	combout => \counter_3|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y8_N8
\counter_3|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~32_combout\ = (\counter_3|clk_counter\(16) & (\counter_3|Add1~31\ $ (GND))) # (!\counter_3|clk_counter\(16) & (!\counter_3|Add1~31\ & VCC))
-- \counter_3|Add1~33\ = CARRY((\counter_3|clk_counter\(16) & !\counter_3|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|clk_counter\(16),
	datad => VCC,
	cin => \counter_3|Add1~31\,
	combout => \counter_3|Add1~32_combout\,
	cout => \counter_3|Add1~33\);

-- Location: LCCOMB_X21_Y8_N14
\counter_3|clk_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|clk_counter~3_combout\ = (\counter_3|Add1~32_combout\ & (((!\counter_3|Equal0~6_combout\) # (!\counter_3|Equal0~5_combout\)) # (!\counter_3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|Equal0~4_combout\,
	datab => \counter_3|Add1~32_combout\,
	datac => \counter_3|Equal0~5_combout\,
	datad => \counter_3|Equal0~6_combout\,
	combout => \counter_3|clk_counter~3_combout\);

-- Location: FF_X21_Y8_N15
\counter_3|clk_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|clk_counter~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clk_counter\(16));

-- Location: LCCOMB_X22_Y8_N10
\counter_3|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~34_combout\ = (\counter_3|clk_counter\(17) & (!\counter_3|Add1~33\)) # (!\counter_3|clk_counter\(17) & ((\counter_3|Add1~33\) # (GND)))
-- \counter_3|Add1~35\ = CARRY((!\counter_3|Add1~33\) # (!\counter_3|clk_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|clk_counter\(17),
	datad => VCC,
	cin => \counter_3|Add1~33\,
	combout => \counter_3|Add1~34_combout\,
	cout => \counter_3|Add1~35\);

-- Location: LCCOMB_X21_Y8_N12
\counter_3|clk_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|clk_counter~2_combout\ = (\counter_3|Add1~34_combout\ & (((!\counter_3|Equal0~6_combout\) # (!\counter_3|Equal0~5_combout\)) # (!\counter_3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|Equal0~4_combout\,
	datab => \counter_3|Add1~34_combout\,
	datac => \counter_3|Equal0~5_combout\,
	datad => \counter_3|Equal0~6_combout\,
	combout => \counter_3|clk_counter~2_combout\);

-- Location: FF_X21_Y8_N13
\counter_3|clk_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|clk_counter~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clk_counter\(17));

-- Location: LCCOMB_X22_Y8_N12
\counter_3|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~36_combout\ = (\counter_3|clk_counter\(18) & (\counter_3|Add1~35\ $ (GND))) # (!\counter_3|clk_counter\(18) & (!\counter_3|Add1~35\ & VCC))
-- \counter_3|Add1~37\ = CARRY((\counter_3|clk_counter\(18) & !\counter_3|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|clk_counter\(18),
	datad => VCC,
	cin => \counter_3|Add1~35\,
	combout => \counter_3|Add1~36_combout\,
	cout => \counter_3|Add1~37\);

-- Location: LCCOMB_X21_Y8_N2
\counter_3|clk_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|clk_counter~1_combout\ = (\counter_3|Add1~36_combout\ & (((!\counter_3|Equal0~6_combout\) # (!\counter_3|Equal0~5_combout\)) # (!\counter_3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|Equal0~4_combout\,
	datab => \counter_3|Add1~36_combout\,
	datac => \counter_3|Equal0~5_combout\,
	datad => \counter_3|Equal0~6_combout\,
	combout => \counter_3|clk_counter~1_combout\);

-- Location: FF_X21_Y8_N3
\counter_3|clk_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|clk_counter~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clk_counter\(18));

-- Location: LCCOMB_X22_Y8_N14
\counter_3|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~38_combout\ = (\counter_3|clk_counter\(19) & (!\counter_3|Add1~37\)) # (!\counter_3|clk_counter\(19) & ((\counter_3|Add1~37\) # (GND)))
-- \counter_3|Add1~39\ = CARRY((!\counter_3|Add1~37\) # (!\counter_3|clk_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|clk_counter\(19),
	datad => VCC,
	cin => \counter_3|Add1~37\,
	combout => \counter_3|Add1~38_combout\,
	cout => \counter_3|Add1~39\);

-- Location: LCCOMB_X21_Y8_N16
\counter_3|clk_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|clk_counter~0_combout\ = (\counter_3|Add1~38_combout\ & (((!\counter_3|Equal0~6_combout\) # (!\counter_3|Equal0~5_combout\)) # (!\counter_3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|Equal0~4_combout\,
	datab => \counter_3|Add1~38_combout\,
	datac => \counter_3|Equal0~5_combout\,
	datad => \counter_3|Equal0~6_combout\,
	combout => \counter_3|clk_counter~0_combout\);

-- Location: FF_X21_Y8_N17
\counter_3|clk_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|clk_counter~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clk_counter\(19));

-- Location: LCCOMB_X22_Y8_N26
\counter_3|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Equal0~1_combout\ = (\counter_3|clk_counter\(17) & (\counter_3|clk_counter\(16) & (\counter_3|clk_counter\(19) & \counter_3|clk_counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|clk_counter\(17),
	datab => \counter_3|clk_counter\(16),
	datac => \counter_3|clk_counter\(19),
	datad => \counter_3|clk_counter\(18),
	combout => \counter_3|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y8_N16
\counter_3|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~40_combout\ = (\counter_3|clk_counter\(20) & (\counter_3|Add1~39\ $ (GND))) # (!\counter_3|clk_counter\(20) & (!\counter_3|Add1~39\ & VCC))
-- \counter_3|Add1~41\ = CARRY((\counter_3|clk_counter\(20) & !\counter_3|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_3|clk_counter\(20),
	datad => VCC,
	cin => \counter_3|Add1~39\,
	combout => \counter_3|Add1~40_combout\,
	cout => \counter_3|Add1~41\);

-- Location: FF_X22_Y8_N17
\counter_3|clk_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|Add1~40_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clk_counter\(20));

-- Location: LCCOMB_X22_Y8_N18
\counter_3|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~42_combout\ = (\counter_3|clk_counter\(21) & (!\counter_3|Add1~41\)) # (!\counter_3|clk_counter\(21) & ((\counter_3|Add1~41\) # (GND)))
-- \counter_3|Add1~43\ = CARRY((!\counter_3|Add1~41\) # (!\counter_3|clk_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_3|clk_counter\(21),
	datad => VCC,
	cin => \counter_3|Add1~41\,
	combout => \counter_3|Add1~42_combout\,
	cout => \counter_3|Add1~43\);

-- Location: FF_X22_Y8_N19
\counter_3|clk_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|Add1~42_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clk_counter\(21));

-- Location: LCCOMB_X22_Y8_N20
\counter_3|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~44_combout\ = (\counter_3|clk_counter\(22) & (\counter_3|Add1~43\ $ (GND))) # (!\counter_3|clk_counter\(22) & (!\counter_3|Add1~43\ & VCC))
-- \counter_3|Add1~45\ = CARRY((\counter_3|clk_counter\(22) & !\counter_3|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_3|clk_counter\(22),
	datad => VCC,
	cin => \counter_3|Add1~43\,
	combout => \counter_3|Add1~44_combout\,
	cout => \counter_3|Add1~45\);

-- Location: FF_X22_Y8_N21
\counter_3|clk_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|Add1~44_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clk_counter\(22));

-- Location: LCCOMB_X22_Y8_N22
\counter_3|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~46_combout\ = \counter_3|clk_counter\(23) $ (\counter_3|Add1~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|clk_counter\(23),
	cin => \counter_3|Add1~45\,
	combout => \counter_3|Add1~46_combout\);

-- Location: FF_X22_Y8_N23
\counter_3|clk_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|Add1~46_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clk_counter\(23));

-- Location: LCCOMB_X22_Y8_N24
\counter_3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Equal0~0_combout\ = (!\counter_3|clk_counter\(22) & (!\counter_3|clk_counter\(21) & (!\counter_3|clk_counter\(23) & !\counter_3|clk_counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|clk_counter\(22),
	datab => \counter_3|clk_counter\(21),
	datac => \counter_3|clk_counter\(23),
	datad => \counter_3|clk_counter\(20),
	combout => \counter_3|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y8_N30
\counter_3|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Equal0~4_combout\ = (\counter_3|Equal0~3_combout\ & (\counter_3|Equal0~2_combout\ & (\counter_3|Equal0~1_combout\ & \counter_3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|Equal0~3_combout\,
	datab => \counter_3|Equal0~2_combout\,
	datac => \counter_3|Equal0~1_combout\,
	datad => \counter_3|Equal0~0_combout\,
	combout => \counter_3|Equal0~4_combout\);

-- Location: LCCOMB_X22_Y9_N4
\counter_3|clk_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|clk_counter~6_combout\ = (\counter_3|Add1~12_combout\ & (((!\counter_3|Equal0~6_combout\) # (!\counter_3|Equal0~5_combout\)) # (!\counter_3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|Equal0~4_combout\,
	datab => \counter_3|Add1~12_combout\,
	datac => \counter_3|Equal0~5_combout\,
	datad => \counter_3|Equal0~6_combout\,
	combout => \counter_3|clk_counter~6_combout\);

-- Location: FF_X22_Y9_N5
\counter_3|clk_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|clk_counter~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clk_counter\(6));

-- Location: LCCOMB_X21_Y9_N16
\counter_3|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Equal0~5_combout\ = (!\counter_3|clk_counter\(6) & (\counter_3|clk_counter\(4) & (\counter_3|clk_counter\(5) & !\counter_3|clk_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|clk_counter\(6),
	datab => \counter_3|clk_counter\(4),
	datac => \counter_3|clk_counter\(5),
	datad => \counter_3|clk_counter\(7),
	combout => \counter_3|Equal0~5_combout\);

-- Location: LCCOMB_X21_Y8_N10
\counter_3|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Equal0~7_combout\ = (\counter_3|Equal0~5_combout\ & (\counter_3|Equal0~4_combout\ & \counter_3|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_3|Equal0~5_combout\,
	datac => \counter_3|Equal0~4_combout\,
	datad => \counter_3|Equal0~6_combout\,
	combout => \counter_3|Equal0~7_combout\);

-- Location: FF_X18_Y20_N25
\counter_3|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|count[0]~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \counter_3|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|count\(0));

-- Location: LCCOMB_X18_Y20_N28
\counter_3|count[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|count[2]~1_combout\ = \counter_3|count\(2) $ (((\counter_3|count\(1) & (\counter_3|count\(0) & \counter_3|Equal0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|count\(1),
	datab => \counter_3|count\(0),
	datac => \counter_3|count\(2),
	datad => \counter_3|Equal0~7_combout\,
	combout => \counter_3|count[2]~1_combout\);

-- Location: FF_X18_Y20_N29
\counter_3|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|count[2]~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|count\(2));

-- Location: LCCOMB_X18_Y20_N26
\counter_3|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|count~0_combout\ = (\counter_3|count\(0) & (!\counter_3|count\(1) & ((\counter_3|count\(2)) # (!\counter_3|count\(3))))) # (!\counter_3|count\(0) & (((\counter_3|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|count\(3),
	datab => \counter_3|count\(0),
	datac => \counter_3|count\(1),
	datad => \counter_3|count\(2),
	combout => \counter_3|count~0_combout\);

-- Location: FF_X18_Y20_N27
\counter_3|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|count~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \counter_3|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|count\(1));

-- Location: LCCOMB_X18_Y20_N6
\counter_3|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|count~2_combout\ = (\counter_3|count\(1) & (\counter_3|count\(3) $ (((\counter_3|count\(0) & \counter_3|count\(2)))))) # (!\counter_3|count\(1) & (\counter_3|count\(3) & ((\counter_3|count\(2)) # (!\counter_3|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|count\(1),
	datab => \counter_3|count\(0),
	datac => \counter_3|count\(3),
	datad => \counter_3|count\(2),
	combout => \counter_3|count~2_combout\);

-- Location: FF_X18_Y20_N7
\counter_3|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_3|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|count~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \counter_3|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|count\(3));

-- Location: LCCOMB_X18_Y20_N8
\rom|rom~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|rom~0_combout\ = (!\counter_3|count\(3) & (!\counter_3|count\(1) & (\counter_3|count\(0) $ (\counter_3|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|count\(3),
	datab => \counter_3|count\(0),
	datac => \counter_3|count\(1),
	datad => \counter_3|count\(2),
	combout => \rom|rom~0_combout\);

-- Location: LCCOMB_X18_Y20_N2
\rom|rom~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|rom~1_combout\ = (!\counter_3|count\(3) & (\counter_3|count\(2) & (\counter_3|count\(0) $ (\counter_3|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|count\(3),
	datab => \counter_3|count\(0),
	datac => \counter_3|count\(1),
	datad => \counter_3|count\(2),
	combout => \rom|rom~1_combout\);

-- Location: LCCOMB_X18_Y20_N12
\rom|rom~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|rom~2_combout\ = (!\counter_3|count\(3) & (!\counter_3|count\(0) & (\counter_3|count\(1) & !\counter_3|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|count\(3),
	datab => \counter_3|count\(0),
	datac => \counter_3|count\(1),
	datad => \counter_3|count\(2),
	combout => \rom|rom~2_combout\);

-- Location: LCCOMB_X18_Y20_N14
\rom|rom~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|rom~3_combout\ = (!\counter_3|count\(3) & ((\counter_3|count\(0) & (\counter_3|count\(1) $ (!\counter_3|count\(2)))) # (!\counter_3|count\(0) & (!\counter_3|count\(1) & \counter_3|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|count\(3),
	datab => \counter_3|count\(0),
	datac => \counter_3|count\(1),
	datad => \counter_3|count\(2),
	combout => \rom|rom~3_combout\);

-- Location: LCCOMB_X18_Y20_N0
\rom|rom~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|rom~4_combout\ = (\counter_3|count\(1) & (!\counter_3|count\(3) & (\counter_3|count\(0)))) # (!\counter_3|count\(1) & ((\counter_3|count\(2) & (!\counter_3|count\(3))) # (!\counter_3|count\(2) & ((\counter_3|count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|count\(3),
	datab => \counter_3|count\(0),
	datac => \counter_3|count\(1),
	datad => \counter_3|count\(2),
	combout => \rom|rom~4_combout\);

-- Location: LCCOMB_X18_Y20_N10
\rom|rom~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|rom~5_combout\ = (!\counter_3|count\(3) & ((\counter_3|count\(0) & ((\counter_3|count\(1)) # (!\counter_3|count\(2)))) # (!\counter_3|count\(0) & (\counter_3|count\(1) & !\counter_3|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|count\(3),
	datab => \counter_3|count\(0),
	datac => \counter_3|count\(1),
	datad => \counter_3|count\(2),
	combout => \rom|rom~5_combout\);

-- Location: LCCOMB_X18_Y20_N4
\rom|rom~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|rom~6_combout\ = (\counter_3|count\(3)) # ((\counter_3|count\(1) & ((!\counter_3|count\(2)) # (!\counter_3|count\(0)))) # (!\counter_3|count\(1) & ((\counter_3|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|count\(3),
	datab => \counter_3|count\(0),
	datac => \counter_3|count\(1),
	datad => \counter_3|count\(2),
	combout => \rom|rom~6_combout\);
END structure;


