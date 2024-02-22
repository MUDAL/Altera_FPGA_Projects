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

-- DATE "02/22/2024 19:09:23"

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
	sel : OUT std_logic_vector(3 DOWNTO 0)
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
-- sel[0]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sel[1]	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sel[2]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sel[3]	=>  Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
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
SIGNAL ww_sel : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter_4|clock_10KHz|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \counter_4|clock_10KHz|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rst_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \digit_index[0]~1_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \count~4_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \count~3_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \count~2_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \digit_index[1]~0_combout\ : std_logic;
SIGNAL \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \counter_2|Add1~0_combout\ : std_logic;
SIGNAL \counter_2|Add1~1\ : std_logic;
SIGNAL \counter_2|Add1~2_combout\ : std_logic;
SIGNAL \counter_2|Add1~3\ : std_logic;
SIGNAL \counter_2|Add1~4_combout\ : std_logic;
SIGNAL \counter_2|Add1~5\ : std_logic;
SIGNAL \counter_2|Add1~6_combout\ : std_logic;
SIGNAL \counter_2|Equal0~6_combout\ : std_logic;
SIGNAL \counter_2|Add1~7\ : std_logic;
SIGNAL \counter_2|Add1~8_combout\ : std_logic;
SIGNAL \counter_2|Add1~9\ : std_logic;
SIGNAL \counter_2|Add1~10_combout\ : std_logic;
SIGNAL \counter_2|Equal0~5_combout\ : std_logic;
SIGNAL \counter_2|clks~5_combout\ : std_logic;
SIGNAL \counter_2|Add1~11\ : std_logic;
SIGNAL \counter_2|Add1~12_combout\ : std_logic;
SIGNAL \counter_2|Add1~13\ : std_logic;
SIGNAL \counter_2|Add1~14_combout\ : std_logic;
SIGNAL \counter_2|clks~4_combout\ : std_logic;
SIGNAL \counter_2|Add1~15\ : std_logic;
SIGNAL \counter_2|Add1~16_combout\ : std_logic;
SIGNAL \counter_2|Add1~17\ : std_logic;
SIGNAL \counter_2|Add1~18_combout\ : std_logic;
SIGNAL \counter_2|clks~3_combout\ : std_logic;
SIGNAL \counter_2|Add1~19\ : std_logic;
SIGNAL \counter_2|Add1~20_combout\ : std_logic;
SIGNAL \counter_2|clks~2_combout\ : std_logic;
SIGNAL \counter_2|Add1~21\ : std_logic;
SIGNAL \counter_2|Add1~22_combout\ : std_logic;
SIGNAL \counter_2|Equal0~3_combout\ : std_logic;
SIGNAL \counter_2|Add1~23\ : std_logic;
SIGNAL \counter_2|Add1~24_combout\ : std_logic;
SIGNAL \counter_2|Add1~25\ : std_logic;
SIGNAL \counter_2|Add1~26_combout\ : std_logic;
SIGNAL \counter_2|Add1~27\ : std_logic;
SIGNAL \counter_2|Add1~28_combout\ : std_logic;
SIGNAL \counter_2|Add1~29\ : std_logic;
SIGNAL \counter_2|Add1~30_combout\ : std_logic;
SIGNAL \counter_2|clks~1_combout\ : std_logic;
SIGNAL \counter_2|Equal0~2_combout\ : std_logic;
SIGNAL \counter_2|Add1~31\ : std_logic;
SIGNAL \counter_2|Add1~32_combout\ : std_logic;
SIGNAL \counter_2|clks~0_combout\ : std_logic;
SIGNAL \counter_2|Add1~33\ : std_logic;
SIGNAL \counter_2|Add1~34_combout\ : std_logic;
SIGNAL \counter_2|Add1~35\ : std_logic;
SIGNAL \counter_2|Add1~36_combout\ : std_logic;
SIGNAL \counter_2|Add1~37\ : std_logic;
SIGNAL \counter_2|Add1~38_combout\ : std_logic;
SIGNAL \counter_2|Equal0~1_combout\ : std_logic;
SIGNAL \counter_2|Add1~39\ : std_logic;
SIGNAL \counter_2|Add1~40_combout\ : std_logic;
SIGNAL \counter_2|Add1~41\ : std_logic;
SIGNAL \counter_2|Add1~42_combout\ : std_logic;
SIGNAL \counter_2|Add1~43\ : std_logic;
SIGNAL \counter_2|Add1~44_combout\ : std_logic;
SIGNAL \counter_2|Add1~45\ : std_logic;
SIGNAL \counter_2|Add1~46_combout\ : std_logic;
SIGNAL \counter_2|Equal0~0_combout\ : std_logic;
SIGNAL \counter_2|Equal0~4_combout\ : std_logic;
SIGNAL \counter_2|Equal0~7_combout\ : std_logic;
SIGNAL \counter_2|digit[0]~3_combout\ : std_logic;
SIGNAL \counter_2|digit[2]~1_combout\ : std_logic;
SIGNAL \counter_2|digit~2_combout\ : std_logic;
SIGNAL \counter_2|digit~0_combout\ : std_logic;
SIGNAL \counter_1|Add1~0_combout\ : std_logic;
SIGNAL \counter_1|Add1~1\ : std_logic;
SIGNAL \counter_1|Add1~2_combout\ : std_logic;
SIGNAL \counter_1|Add1~3\ : std_logic;
SIGNAL \counter_1|Add1~4_combout\ : std_logic;
SIGNAL \counter_1|Add1~5\ : std_logic;
SIGNAL \counter_1|Add1~6_combout\ : std_logic;
SIGNAL \counter_1|Equal0~6_combout\ : std_logic;
SIGNAL \counter_1|Add1~7\ : std_logic;
SIGNAL \counter_1|Add1~8_combout\ : std_logic;
SIGNAL \counter_1|clks~4_combout\ : std_logic;
SIGNAL \counter_1|Add1~9\ : std_logic;
SIGNAL \counter_1|Add1~10_combout\ : std_logic;
SIGNAL \counter_1|Add1~11\ : std_logic;
SIGNAL \counter_1|Add1~12_combout\ : std_logic;
SIGNAL \counter_1|Add1~13\ : std_logic;
SIGNAL \counter_1|Add1~14_combout\ : std_logic;
SIGNAL \counter_1|Equal0~5_combout\ : std_logic;
SIGNAL \counter_1|Add1~15\ : std_logic;
SIGNAL \counter_1|Add1~16_combout\ : std_logic;
SIGNAL \counter_1|clks~3_combout\ : std_logic;
SIGNAL \counter_1|Add1~17\ : std_logic;
SIGNAL \counter_1|Add1~18_combout\ : std_logic;
SIGNAL \counter_1|clks~2_combout\ : std_logic;
SIGNAL \counter_1|Add1~19\ : std_logic;
SIGNAL \counter_1|Add1~20_combout\ : std_logic;
SIGNAL \counter_1|clks~1_combout\ : std_logic;
SIGNAL \counter_1|Add1~21\ : std_logic;
SIGNAL \counter_1|Add1~22_combout\ : std_logic;
SIGNAL \counter_1|Add1~23\ : std_logic;
SIGNAL \counter_1|Add1~24_combout\ : std_logic;
SIGNAL \counter_1|Add1~25\ : std_logic;
SIGNAL \counter_1|Add1~26_combout\ : std_logic;
SIGNAL \counter_1|clks~0_combout\ : std_logic;
SIGNAL \counter_1|Add1~27\ : std_logic;
SIGNAL \counter_1|Add1~28_combout\ : std_logic;
SIGNAL \counter_1|Add1~29\ : std_logic;
SIGNAL \counter_1|Add1~30_combout\ : std_logic;
SIGNAL \counter_1|Add1~31\ : std_logic;
SIGNAL \counter_1|Add1~32_combout\ : std_logic;
SIGNAL \counter_1|Add1~33\ : std_logic;
SIGNAL \counter_1|Add1~34_combout\ : std_logic;
SIGNAL \counter_1|Add1~35\ : std_logic;
SIGNAL \counter_1|Add1~36_combout\ : std_logic;
SIGNAL \counter_1|Add1~37\ : std_logic;
SIGNAL \counter_1|Add1~38_combout\ : std_logic;
SIGNAL \counter_1|Add1~39\ : std_logic;
SIGNAL \counter_1|Add1~40_combout\ : std_logic;
SIGNAL \counter_1|Add1~41\ : std_logic;
SIGNAL \counter_1|Add1~42_combout\ : std_logic;
SIGNAL \counter_1|Add1~43\ : std_logic;
SIGNAL \counter_1|Add1~44_combout\ : std_logic;
SIGNAL \counter_1|Add1~45\ : std_logic;
SIGNAL \counter_1|Add1~46_combout\ : std_logic;
SIGNAL \counter_1|Equal0~0_combout\ : std_logic;
SIGNAL \counter_1|Equal0~2_combout\ : std_logic;
SIGNAL \counter_1|Equal0~1_combout\ : std_logic;
SIGNAL \counter_1|Equal0~3_combout\ : std_logic;
SIGNAL \counter_1|Equal0~4_combout\ : std_logic;
SIGNAL \counter_1|Equal0~7_combout\ : std_logic;
SIGNAL \counter_1|digit[0]~3_combout\ : std_logic;
SIGNAL \counter_1|digit[2]~1_combout\ : std_logic;
SIGNAL \counter_1|digit~2_combout\ : std_logic;
SIGNAL \counter_1|digit~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \counter_3|digit[0]~3_combout\ : std_logic;
SIGNAL \counter_3|Add1~0_combout\ : std_logic;
SIGNAL \counter_3|Add1~1\ : std_logic;
SIGNAL \counter_3|Add1~2_combout\ : std_logic;
SIGNAL \counter_3|Add1~3\ : std_logic;
SIGNAL \counter_3|Add1~4_combout\ : std_logic;
SIGNAL \counter_3|Add1~5\ : std_logic;
SIGNAL \counter_3|Add1~6_combout\ : std_logic;
SIGNAL \counter_3|Equal0~6_combout\ : std_logic;
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
SIGNAL \counter_3|clks~5_combout\ : std_logic;
SIGNAL \counter_3|Add1~19\ : std_logic;
SIGNAL \counter_3|Add1~20_combout\ : std_logic;
SIGNAL \counter_3|Add1~21\ : std_logic;
SIGNAL \counter_3|Add1~22_combout\ : std_logic;
SIGNAL \counter_3|Add1~23\ : std_logic;
SIGNAL \counter_3|Add1~24_combout\ : std_logic;
SIGNAL \counter_3|Add1~25\ : std_logic;
SIGNAL \counter_3|Add1~26_combout\ : std_logic;
SIGNAL \counter_3|Add1~27\ : std_logic;
SIGNAL \counter_3|Add1~28_combout\ : std_logic;
SIGNAL \counter_3|clks~4_combout\ : std_logic;
SIGNAL \counter_3|Add1~29\ : std_logic;
SIGNAL \counter_3|Add1~30_combout\ : std_logic;
SIGNAL \counter_3|Add1~31\ : std_logic;
SIGNAL \counter_3|Add1~32_combout\ : std_logic;
SIGNAL \counter_3|clks~3_combout\ : std_logic;
SIGNAL \counter_3|Add1~33\ : std_logic;
SIGNAL \counter_3|Add1~34_combout\ : std_logic;
SIGNAL \counter_3|clks~2_combout\ : std_logic;
SIGNAL \counter_3|Add1~35\ : std_logic;
SIGNAL \counter_3|Add1~36_combout\ : std_logic;
SIGNAL \counter_3|clks~1_combout\ : std_logic;
SIGNAL \counter_3|Add1~37\ : std_logic;
SIGNAL \counter_3|Add1~38_combout\ : std_logic;
SIGNAL \counter_3|clks~0_combout\ : std_logic;
SIGNAL \counter_3|Add1~39\ : std_logic;
SIGNAL \counter_3|Add1~40_combout\ : std_logic;
SIGNAL \counter_3|Add1~41\ : std_logic;
SIGNAL \counter_3|Add1~42_combout\ : std_logic;
SIGNAL \counter_3|Add1~43\ : std_logic;
SIGNAL \counter_3|Add1~44_combout\ : std_logic;
SIGNAL \counter_3|Add1~45\ : std_logic;
SIGNAL \counter_3|Add1~46_combout\ : std_logic;
SIGNAL \counter_3|Equal0~0_combout\ : std_logic;
SIGNAL \counter_3|Equal0~2_combout\ : std_logic;
SIGNAL \counter_3|Equal0~1_combout\ : std_logic;
SIGNAL \counter_3|Equal0~3_combout\ : std_logic;
SIGNAL \counter_3|Equal0~4_combout\ : std_logic;
SIGNAL \counter_3|Add1~12_combout\ : std_logic;
SIGNAL \counter_3|clks~6_combout\ : std_logic;
SIGNAL \counter_3|Equal0~5_combout\ : std_logic;
SIGNAL \counter_3|Equal0~7_combout\ : std_logic;
SIGNAL \counter_3|digit[2]~1_combout\ : std_logic;
SIGNAL \counter_3|digit~2_combout\ : std_logic;
SIGNAL \counter_3|digit~0_combout\ : std_logic;
SIGNAL \counter_4|Add1~0_combout\ : std_logic;
SIGNAL \counter_4|Add1~1\ : std_logic;
SIGNAL \counter_4|Add1~2_combout\ : std_logic;
SIGNAL \counter_4|Add1~3\ : std_logic;
SIGNAL \counter_4|Add1~4_combout\ : std_logic;
SIGNAL \counter_4|Add1~5\ : std_logic;
SIGNAL \counter_4|Add1~6_combout\ : std_logic;
SIGNAL \counter_4|Equal0~6_combout\ : std_logic;
SIGNAL \counter_4|Add1~7\ : std_logic;
SIGNAL \counter_4|Add1~8_combout\ : std_logic;
SIGNAL \counter_4|Add1~9\ : std_logic;
SIGNAL \counter_4|Add1~10_combout\ : std_logic;
SIGNAL \counter_4|Add1~11\ : std_logic;
SIGNAL \counter_4|Add1~12_combout\ : std_logic;
SIGNAL \counter_4|Add1~13\ : std_logic;
SIGNAL \counter_4|Add1~14_combout\ : std_logic;
SIGNAL \counter_4|Equal0~5_combout\ : std_logic;
SIGNAL \counter_4|clks~9_combout\ : std_logic;
SIGNAL \counter_4|Add1~15\ : std_logic;
SIGNAL \counter_4|Add1~16_combout\ : std_logic;
SIGNAL \counter_4|Add1~17\ : std_logic;
SIGNAL \counter_4|Add1~18_combout\ : std_logic;
SIGNAL \counter_4|clks~8_combout\ : std_logic;
SIGNAL \counter_4|Add1~19\ : std_logic;
SIGNAL \counter_4|Add1~20_combout\ : std_logic;
SIGNAL \counter_4|clks~7_combout\ : std_logic;
SIGNAL \counter_4|Add1~21\ : std_logic;
SIGNAL \counter_4|Add1~22_combout\ : std_logic;
SIGNAL \counter_4|Equal0~3_combout\ : std_logic;
SIGNAL \counter_4|Add1~23\ : std_logic;
SIGNAL \counter_4|Add1~24_combout\ : std_logic;
SIGNAL \counter_4|clks~6_combout\ : std_logic;
SIGNAL \counter_4|Add1~25\ : std_logic;
SIGNAL \counter_4|Add1~26_combout\ : std_logic;
SIGNAL \counter_4|Add1~27\ : std_logic;
SIGNAL \counter_4|Add1~28_combout\ : std_logic;
SIGNAL \counter_4|Add1~29\ : std_logic;
SIGNAL \counter_4|Add1~30_combout\ : std_logic;
SIGNAL \counter_4|clks~5_combout\ : std_logic;
SIGNAL \counter_4|Equal0~2_combout\ : std_logic;
SIGNAL \counter_4|Add1~31\ : std_logic;
SIGNAL \counter_4|Add1~32_combout\ : std_logic;
SIGNAL \counter_4|Add1~33\ : std_logic;
SIGNAL \counter_4|Add1~34_combout\ : std_logic;
SIGNAL \counter_4|Add1~35\ : std_logic;
SIGNAL \counter_4|Add1~36_combout\ : std_logic;
SIGNAL \counter_4|Add1~37\ : std_logic;
SIGNAL \counter_4|Add1~38_combout\ : std_logic;
SIGNAL \counter_4|clks~4_combout\ : std_logic;
SIGNAL \counter_4|Equal0~1_combout\ : std_logic;
SIGNAL \counter_4|Add1~39\ : std_logic;
SIGNAL \counter_4|Add1~40_combout\ : std_logic;
SIGNAL \counter_4|clks~11_combout\ : std_logic;
SIGNAL \counter_4|Add1~41\ : std_logic;
SIGNAL \counter_4|Add1~42_combout\ : std_logic;
SIGNAL \counter_4|Add1~43\ : std_logic;
SIGNAL \counter_4|Add1~44_combout\ : std_logic;
SIGNAL \counter_4|Add1~45\ : std_logic;
SIGNAL \counter_4|Add1~46_combout\ : std_logic;
SIGNAL \counter_4|clks~10_combout\ : std_logic;
SIGNAL \counter_4|Equal0~0_combout\ : std_logic;
SIGNAL \counter_4|Equal0~4_combout\ : std_logic;
SIGNAL \counter_4|Equal0~7_combout\ : std_logic;
SIGNAL \counter_4|digit[0]~3_combout\ : std_logic;
SIGNAL \counter_4|digit[2]~1_combout\ : std_logic;
SIGNAL \counter_4|digit~2_combout\ : std_logic;
SIGNAL \counter_4|digit~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \rom|rom~0_combout\ : std_logic;
SIGNAL \rom|rom~1_combout\ : std_logic;
SIGNAL \rom|rom~2_combout\ : std_logic;
SIGNAL \rom|rom~3_combout\ : std_logic;
SIGNAL \rom|rom~4_combout\ : std_logic;
SIGNAL \rom|rom~5_combout\ : std_logic;
SIGNAL \rom|rom~6_combout\ : std_logic;
SIGNAL \shift_reg[1]~1_combout\ : std_logic;
SIGNAL \shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \shift_reg[0]~0_combout\ : std_logic;
SIGNAL \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \counter_2|digit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter_4|digit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter_3|digit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter_1|digit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL digit_index : std_logic_vector(2 DOWNTO 0);
SIGNAL shift_reg : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter_3|clks\ : std_logic_vector(23 DOWNTO 0);
SIGNAL count : std_logic_vector(15 DOWNTO 0);
SIGNAL \counter_4|clks\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \counter_2|clks\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \counter_1|clks\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \ALT_INV_rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL ALT_INV_shift_reg : std_logic_vector(3 DOWNTO 1);
SIGNAL \rom|ALT_INV_rom~6_combout\ : std_logic;

BEGIN

ww_rst_n <= rst_n;
ww_clk <= clk;
seg <= ww_seg;
sel <= ww_sel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\counter_4|clock_10KHz|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk\(0) <= \counter_4|clock_10KHz|altpll_component|auto_generated|pll1_CLK_bus\(0);
\counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk\(1) <= \counter_4|clock_10KHz|altpll_component|auto_generated|pll1_CLK_bus\(1);
\counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk\(2) <= \counter_4|clock_10KHz|altpll_component|auto_generated|pll1_CLK_bus\(2);
\counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk\(3) <= \counter_4|clock_10KHz|altpll_component|auto_generated|pll1_CLK_bus\(3);
\counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk\(4) <= \counter_4|clock_10KHz|altpll_component|auto_generated|pll1_CLK_bus\(4);

\rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst_n~input_o\);

\counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk\(0));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst_n~inputclkctrl_outclk\ <= NOT \rst_n~inputclkctrl_outclk\;
ALT_INV_shift_reg(3) <= NOT shift_reg(3);
ALT_INV_shift_reg(2) <= NOT shift_reg(2);
ALT_INV_shift_reg(1) <= NOT shift_reg(1);
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
\sel[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => shift_reg(0),
	devoe => ww_devoe,
	o => ww_sel(0));

-- Location: IOOBUF_X11_Y24_N16
\sel[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_shift_reg(1),
	devoe => ww_devoe,
	o => ww_sel(1));

-- Location: IOOBUF_X9_Y24_N9
\sel[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_shift_reg(2),
	devoe => ww_devoe,
	o => ww_sel(2));

-- Location: IOOBUF_X7_Y24_N2
\sel[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_shift_reg(3),
	devoe => ww_devoe,
	o => ww_sel(3));

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

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X19_Y19_N26
\digit_index[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit_index[0]~1_combout\ = !digit_index(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => digit_index(0),
	combout => \digit_index[0]~1_combout\);

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

-- Location: LCCOMB_X21_Y19_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = count(0) $ (VCC)
-- \Add0~1\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X21_Y19_N1
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X21_Y19_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (count(1) & (!\Add0~1\)) # (!count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X21_Y19_N3
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X21_Y19_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (count(2) & (\Add0~3\ $ (GND))) # (!count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X21_Y19_N5
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X21_Y19_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (count(3) & (!\Add0~5\)) # (!count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X21_Y19_N7
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X21_Y19_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (count(4) & (\Add0~7\ $ (GND))) # (!count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X19_Y19_N16
\count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~4_combout\ = (!\Equal0~4_combout\ & \Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~4_combout\,
	datad => \Add0~8_combout\,
	combout => \count~4_combout\);

-- Location: FF_X19_Y19_N17
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X21_Y19_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (count(5) & (!\Add0~9\)) # (!count(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X21_Y19_N11
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X21_Y19_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (count(6) & (\Add0~11\ $ (GND))) # (!count(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((count(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X21_Y19_N13
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X21_Y19_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (count(7) & (!\Add0~13\)) # (!count(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X21_Y19_N15
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X21_Y19_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (count(8) & (\Add0~15\ $ (GND))) # (!count(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((count(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X19_Y19_N28
\count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~3_combout\ = (!\Equal0~4_combout\ & \Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~4_combout\,
	datad => \Add0~16_combout\,
	combout => \count~3_combout\);

-- Location: FF_X19_Y19_N29
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X21_Y19_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (count(9) & (!\Add0~17\)) # (!count(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X19_Y19_N18
\count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~2_combout\ = (!\Equal0~4_combout\ & \Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~4_combout\,
	datad => \Add0~18_combout\,
	combout => \count~2_combout\);

-- Location: FF_X19_Y19_N19
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X21_Y19_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (count(10) & (\Add0~19\ $ (GND))) # (!count(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((count(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X19_Y19_N24
\count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~1_combout\ = (!\Equal0~4_combout\ & \Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~4_combout\,
	datad => \Add0~20_combout\,
	combout => \count~1_combout\);

-- Location: FF_X19_Y19_N25
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X21_Y19_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (count(11) & (!\Add0~21\)) # (!count(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X21_Y19_N23
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X19_Y19_N30
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!count(11) & (count(10) & (count(9) & count(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datab => count(10),
	datac => count(9),
	datad => count(8),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X19_Y19_N20
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (count(3) & (count(1) & (count(2) & count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(1),
	datac => count(2),
	datad => count(0),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X21_Y19_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (count(12) & (\Add0~23\ $ (GND))) # (!count(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((count(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X21_Y19_N25
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X21_Y19_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (count(13) & (!\Add0~25\)) # (!count(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X19_Y19_N4
\count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~0_combout\ = (!\Equal0~4_combout\ & \Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~4_combout\,
	datad => \Add0~26_combout\,
	combout => \count~0_combout\);

-- Location: FF_X19_Y19_N5
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X21_Y19_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (count(14) & (\Add0~27\ $ (GND))) # (!count(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((count(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: FF_X21_Y19_N29
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~28_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X21_Y19_N30
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = count(15) $ (\Add0~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	cin => \Add0~29\,
	combout => \Add0~30_combout\);

-- Location: FF_X21_Y19_N31
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X19_Y19_N22
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!count(15) & (!count(14) & (count(13) & !count(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datab => count(14),
	datac => count(13),
	datad => count(12),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X19_Y19_N10
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!count(6) & (!count(4) & (!count(7) & !count(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datab => count(4),
	datac => count(7),
	datad => count(5),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X19_Y19_N14
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~3_combout\ & (\Equal0~0_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: FF_X19_Y19_N27
\digit_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \digit_index[0]~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_index(0));

-- Location: LCCOMB_X19_Y19_N8
\digit_index[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit_index[1]~0_combout\ = digit_index(1) $ (((digit_index(0) & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit_index(0),
	datab => \Equal0~4_combout\,
	datac => digit_index(1),
	combout => \digit_index[1]~0_combout\);

-- Location: FF_X19_Y19_N9
\digit_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \digit_index[1]~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_index(1));

-- Location: PLL_1
\counter_4|clock_10KHz|altpll_component|auto_generated|pll1\ : cycloneive_pll
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
	fbin => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \counter_4|clock_10KHz|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G4
\counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X3_Y18_N8
\counter_2|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|Add1~0_combout\ = \counter_2|clks\(0) $ (VCC)
-- \counter_2|Add1~1\ = CARRY(\counter_2|clks\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_2|clks\(0),
	datad => VCC,
	combout => \counter_2|Add1~0_combout\,
	cout => \counter_2|Add1~1\);

-- Location: FF_X3_Y18_N9
\counter_2|clks[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_2|Add1~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_2|clks\(0));

-- Location: LCCOMB_X3_Y18_N10
\counter_2|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|Add1~2_combout\ = (\counter_2|clks\(1) & (!\counter_2|Add1~1\)) # (!\counter_2|clks\(1) & ((\counter_2|Add1~1\) # (GND)))
-- \counter_2|Add1~3\ = CARRY((!\counter_2|Add1~1\) # (!\counter_2|clks\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_2|clks\(1),
	datad => VCC,
	cin => \counter_2|Add1~1\,
	combout => \counter_2|Add1~2_combout\,
	cout => \counter_2|Add1~3\);

-- Location: FF_X3_Y18_N11
\counter_2|clks[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_2|Add1~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_2|clks\(1));

-- Location: LCCOMB_X3_Y18_N12
\counter_2|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|Add1~4_combout\ = (\counter_2|clks\(2) & (\counter_2|Add1~3\ $ (GND))) # (!\counter_2|clks\(2) & (!\counter_2|Add1~3\ & VCC))
-- \counter_2|Add1~5\ = CARRY((\counter_2|clks\(2) & !\counter_2|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_2|clks\(2),
	datad => VCC,
	cin => \counter_2|Add1~3\,
	combout => \counter_2|Add1~4_combout\,
	cout => \counter_2|Add1~5\);

-- Location: FF_X3_Y18_N13
\counter_2|clks[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_2|Add1~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_2|clks\(2));

-- Location: LCCOMB_X3_Y18_N14
\counter_2|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|Add1~6_combout\ = (\counter_2|clks\(3) & (!\counter_2|Add1~5\)) # (!\counter_2|clks\(3) & ((\counter_2|Add1~5\) # (GND)))
-- \counter_2|Add1~7\ = CARRY((!\counter_2|Add1~5\) # (!\counter_2|clks\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_2|clks\(3),
	datad => VCC,
	cin => \counter_2|Add1~5\,
	combout => \counter_2|Add1~6_combout\,
	cout => \counter_2|Add1~7\);

-- Location: FF_X3_Y18_N15
\counter_2|clks[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_2|Add1~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_2|clks\(3));

-- Location: LCCOMB_X3_Y18_N4
\counter_2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|Equal0~6_combout\ = (\counter_2|clks\(2) & (\counter_2|clks\(0) & (\counter_2|clks\(3) & \counter_2|clks\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_2|clks\(2),
	datab => \counter_2|clks\(0),
	datac => \counter_2|clks\(3),
	datad => \counter_2|clks\(1),
	combout => \counter_2|Equal0~6_combout\);

-- Location: LCCOMB_X3_Y18_N16
\counter_2|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|Add1~8_combout\ = (\counter_2|clks\(4) & (\counter_2|Add1~7\ $ (GND))) # (!\counter_2|clks\(4) & (!\counter_2|Add1~7\ & VCC))
-- \counter_2|Add1~9\ = CARRY((\counter_2|clks\(4) & !\counter_2|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_2|clks\(4),
	datad => VCC,
	cin => \counter_2|Add1~7\,
	combout => \counter_2|Add1~8_combout\,
	cout => \counter_2|Add1~9\);

-- Location: FF_X3_Y18_N17
\counter_2|clks[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_2|Add1~8_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_2|clks\(4));

-- Location: LCCOMB_X3_Y18_N18
\counter_2|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|Add1~10_combout\ = (\counter_2|clks\(5) & (!\counter_2|Add1~9\)) # (!\counter_2|clks\(5) & ((\counter_2|Add1~9\) # (GND)))
-- \counter_2|Add1~11\ = CARRY((!\counter_2|Add1~9\) # (!\counter_2|clks\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_2|clks\(5),
	datad => VCC,
	cin => \counter_2|Add1~9\,
	combout => \counter_2|Add1~10_combout\,
	cout => \counter_2|Add1~11\);

-- Location: LCCOMB_X3_Y18_N2
\counter_2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|Equal0~5_combout\ = (\counter_2|clks\(4) & (!\counter_2|clks\(6) & (\counter_2|clks\(7) & !\counter_2|clks\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_2|clks\(4),
	datab => \counter_2|clks\(6),
	datac => \counter_2|clks\(7),
	datad => \counter_2|clks\(5),
	combout => \counter_2|Equal0~5_combout\);

-- Location: LCCOMB_X4_Y18_N18
\counter_2|clks~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|clks~5_combout\ = (\counter_2|Add1~10_combout\ & (((!\counter_2|Equal0~5_combout\) # (!\counter_2|Equal0~6_combout\)) # (!\counter_2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_2|Equal0~4_combout\,
	datab => \counter_2|Add1~10_combout\,
	datac => \counter_2|Equal0~6_combout\,
	datad => \counter_2|Equal0~5_combout\,
	combout => \counter_2|clks~5_combout\);

-- Location: FF_X4_Y18_N19
\counter_2|clks[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_2|clks~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_2|clks\(5));

-- Location: LCCOMB_X3_Y18_N20
\counter_2|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|Add1~12_combout\ = (\counter_2|clks\(6) & (\counter_2|Add1~11\ $ (GND))) # (!\counter_2|clks\(6) & (!\counter_2|Add1~11\ & VCC))
-- \counter_2|Add1~13\ = CARRY((\counter_2|clks\(6) & !\counter_2|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_2|clks\(6),
	datad => VCC,
	cin => \counter_2|Add1~11\,
	combout => \counter_2|Add1~12_combout\,
	cout => \counter_2|Add1~13\);

-- Location: FF_X3_Y18_N21
\counter_2|clks[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_2|Add1~12_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_2|clks\(6));

-- Location: LCCOMB_X3_Y18_N22
\counter_2|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|Add1~14_combout\ = (\counter_2|clks\(7) & (!\counter_2|Add1~13\)) # (!\counter_2|clks\(7) & ((\counter_2|Add1~13\) # (GND)))
-- \counter_2|Add1~15\ = CARRY((!\counter_2|Add1~13\) # (!\counter_2|clks\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_2|clks\(7),
	datad => VCC,
	cin => \counter_2|Add1~13\,
	combout => \counter_2|Add1~14_combout\,
	cout => \counter_2|Add1~15\);

-- Location: LCCOMB_X4_Y18_N0
\counter_2|clks~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|clks~4_combout\ = (\counter_2|Add1~14_combout\ & (((!\counter_2|Equal0~5_combout\) # (!\counter_2|Equal0~6_combout\)) # (!\counter_2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_2|Equal0~4_combout\,
	datab => \counter_2|Add1~14_combout\,
	datac => \counter_2|Equal0~6_combout\,
	datad => \counter_2|Equal0~5_combout\,
	combout => \counter_2|clks~4_combout\);

-- Location: FF_X4_Y18_N1
\counter_2|clks[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_2|clks~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_2|clks\(7));

-- Location: LCCOMB_X3_Y18_N24
\counter_2|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|Add1~16_combout\ = (\counter_2|clks\(8) & (\counter_2|Add1~15\ $ (GND))) # (!\counter_2|clks\(8) & (!\counter_2|Add1~15\ & VCC))
-- \counter_2|Add1~17\ = CARRY((\counter_2|clks\(8) & !\counter_2|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_2|clks\(8),
	datad => VCC,
	cin => \counter_2|Add1~15\,
	combout => \counter_2|Add1~16_combout\,
	cout => \counter_2|Add1~17\);

-- Location: FF_X3_Y18_N25
\counter_2|clks[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_2|Add1~16_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_2|clks\(8));

-- Location: LCCOMB_X3_Y18_N26
\counter_2|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|Add1~18_combout\ = (\counter_2|clks\(9) & (!\counter_2|Add1~17\)) # (!\counter_2|clks\(9) & ((\counter_2|Add1~17\) # (GND)))
-- \counter_2|Add1~19\ = CARRY((!\counter_2|Add1~17\) # (!\counter_2|clks\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_2|clks\(9),
	datad => VCC,
	cin => \counter_2|Add1~17\,
	combout => \counter_2|Add1~18_combout\,
	cout => \counter_2|Add1~19\);

-- Location: LCCOMB_X4_Y18_N22
\counter_2|clks~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|clks~3_combout\ = (\counter_2|Add1~18_combout\ & (((!\counter_2|Equal0~5_combout\) # (!\counter_2|Equal0~6_combout\)) # (!\counter_2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_2|Add1~18_combout\,
	datab => \counter_2|Equal0~4_combout\,
	datac => \counter_2|Equal0~6_combout\,
	datad => \counter_2|Equal0~5_combout\,
	combout => \counter_2|clks~3_combout\);

-- Location: FF_X4_Y18_N23
\counter_2|clks[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_2|clks~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_2|clks\(9));

-- Location: LCCOMB_X3_Y18_N28
\counter_2|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|Add1~20_combout\ = (\counter_2|clks\(10) & (\counter_2|Add1~19\ $ (GND))) # (!\counter_2|clks\(10) & (!\counter_2|Add1~19\ & VCC))
-- \counter_2|Add1~21\ = CARRY((\counter_2|clks\(10) & !\counter_2|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_2|clks\(10),
	datad => VCC,
	cin => \counter_2|Add1~19\,
	combout => \counter_2|Add1~20_combout\,
	cout => \counter_2|Add1~21\);

-- Location: LCCOMB_X4_Y18_N20
\counter_2|clks~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|clks~2_combout\ = (\counter_2|Add1~20_combout\ & (((!\counter_2|Equal0~5_combout\) # (!\counter_2|Equal0~6_combout\)) # (!\counter_2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_2|Equal0~4_combout\,
	datab => \counter_2|Add1~20_combout\,
	datac => \counter_2|Equal0~6_combout\,
	datad => \counter_2|Equal0~5_combout\,
	combout => \counter_2|clks~2_combout\);

-- Location: FF_X4_Y18_N21
\counter_2|clks[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_2|clks~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_2|clks\(10));

-- Location: LCCOMB_X3_Y18_N30
\counter_2|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|Add1~22_combout\ = (\counter_2|clks\(11) & (!\counter_2|Add1~21\)) # (!\counter_2|clks\(11) & ((\counter_2|Add1~21\) # (GND)))
-- \counter_2|Add1~23\ = CARRY((!\counter_2|Add1~21\) # (!\counter_2|clks\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_2|clks\(11),
	datad => VCC,
	cin => \counter_2|Add1~21\,
	combout => \counter_2|Add1~22_combout\,
	cout => \counter_2|Add1~23\);

-- Location: FF_X3_Y18_N31
\counter_2|clks[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_2|Add1~22_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_2|clks\(11));

-- Location: LCCOMB_X3_Y18_N0
\counter_2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|Equal0~3_combout\ = (\counter_2|clks\(10) & (!\counter_2|clks\(8) & (!\counter_2|clks\(11) & \counter_2|clks\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_2|clks\(10),
	datab => \counter_2|clks\(8),
	datac => \counter_2|clks\(11),
	datad => \counter_2|clks\(9),
	combout => \counter_2|Equal0~3_combout\);

-- Location: LCCOMB_X3_Y17_N0
\counter_2|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|Add1~24_combout\ = (\counter_2|clks\(12) & (\counter_2|Add1~23\ $ (GND))) # (!\counter_2|clks\(12) & (!\counter_2|Add1~23\ & VCC))
-- \counter_2|Add1~25\ = CARRY((\counter_2|clks\(12) & !\counter_2|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_2|clks\(12),
	datad => VCC,
	cin => \counter_2|Add1~23\,
	combout => \counter_2|Add1~24_combout\,
	cout => \counter_2|Add1~25\);

-- Location: FF_X3_Y17_N1
\counter_2|clks[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_2|Add1~24_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_2|clks\(12));

-- Location: LCCOMB_X3_Y17_N2
\counter_2|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|Add1~26_combout\ = (\counter_2|clks\(13) & (!\counter_2|Add1~25\)) # (!\counter_2|clks\(13) & ((\counter_2|Add1~25\) # (GND)))
-- \counter_2|Add1~27\ = CARRY((!\counter_2|Add1~25\) # (!\counter_2|clks\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_2|clks\(13),
	datad => VCC,
	cin => \counter_2|Add1~25\,
	combout => \counter_2|Add1~26_combout\,
	cout => \counter_2|Add1~27\);

-- Location: FF_X3_Y17_N3
\counter_2|clks[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_2|Add1~26_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_2|clks\(13));

-- Location: LCCOMB_X3_Y17_N4
\counter_2|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|Add1~28_combout\ = (\counter_2|clks\(14) & (\counter_2|Add1~27\ $ (GND))) # (!\counter_2|clks\(14) & (!\counter_2|Add1~27\ & VCC))
-- \counter_2|Add1~29\ = CARRY((\counter_2|clks\(14) & !\counter_2|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_2|clks\(14),
	datad => VCC,
	cin => \counter_2|Add1~27\,
	combout => \counter_2|Add1~28_combout\,
	cout => \counter_2|Add1~29\);

-- Location: FF_X3_Y17_N5
\counter_2|clks[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_2|Add1~28_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_2|clks\(14));

-- Location: LCCOMB_X3_Y17_N6
\counter_2|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|Add1~30_combout\ = (\counter_2|clks\(15) & (!\counter_2|Add1~29\)) # (!\counter_2|clks\(15) & ((\counter_2|Add1~29\) # (GND)))
-- \counter_2|Add1~31\ = CARRY((!\counter_2|Add1~29\) # (!\counter_2|clks\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_2|clks\(15),
	datad => VCC,
	cin => \counter_2|Add1~29\,
	combout => \counter_2|Add1~30_combout\,
	cout => \counter_2|Add1~31\);

-- Location: LCCOMB_X4_Y18_N10
\counter_2|clks~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|clks~1_combout\ = (\counter_2|Add1~30_combout\ & (((!\counter_2|Equal0~5_combout\) # (!\counter_2|Equal0~6_combout\)) # (!\counter_2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_2|Add1~30_combout\,
	datab => \counter_2|Equal0~4_combout\,
	datac => \counter_2|Equal0~6_combout\,
	datad => \counter_2|Equal0~5_combout\,
	combout => \counter_2|clks~1_combout\);

-- Location: FF_X4_Y18_N11
\counter_2|clks[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_2|clks~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_2|clks\(15));

-- Location: LCCOMB_X3_Y17_N28
\counter_2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|Equal0~2_combout\ = (\counter_2|clks\(15) & (!\counter_2|clks\(13) & (!\counter_2|clks\(14) & !\counter_2|clks\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_2|clks\(15),
	datab => \counter_2|clks\(13),
	datac => \counter_2|clks\(14),
	datad => \counter_2|clks\(12),
	combout => \counter_2|Equal0~2_combout\);

-- Location: LCCOMB_X3_Y17_N8
\counter_2|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|Add1~32_combout\ = (\counter_2|clks\(16) & (\counter_2|Add1~31\ $ (GND))) # (!\counter_2|clks\(16) & (!\counter_2|Add1~31\ & VCC))
-- \counter_2|Add1~33\ = CARRY((\counter_2|clks\(16) & !\counter_2|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_2|clks\(16),
	datad => VCC,
	cin => \counter_2|Add1~31\,
	combout => \counter_2|Add1~32_combout\,
	cout => \counter_2|Add1~33\);

-- Location: LCCOMB_X4_Y18_N24
\counter_2|clks~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|clks~0_combout\ = (\counter_2|Add1~32_combout\ & (((!\counter_2|Equal0~5_combout\) # (!\counter_2|Equal0~4_combout\)) # (!\counter_2|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_2|Add1~32_combout\,
	datab => \counter_2|Equal0~6_combout\,
	datac => \counter_2|Equal0~4_combout\,
	datad => \counter_2|Equal0~5_combout\,
	combout => \counter_2|clks~0_combout\);

-- Location: FF_X4_Y18_N25
\counter_2|clks[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_2|clks~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_2|clks\(16));

-- Location: LCCOMB_X3_Y17_N10
\counter_2|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|Add1~34_combout\ = (\counter_2|clks\(17) & (!\counter_2|Add1~33\)) # (!\counter_2|clks\(17) & ((\counter_2|Add1~33\) # (GND)))
-- \counter_2|Add1~35\ = CARRY((!\counter_2|Add1~33\) # (!\counter_2|clks\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_2|clks\(17),
	datad => VCC,
	cin => \counter_2|Add1~33\,
	combout => \counter_2|Add1~34_combout\,
	cout => \counter_2|Add1~35\);

-- Location: FF_X3_Y17_N11
\counter_2|clks[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_2|Add1~34_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_2|clks\(17));

-- Location: LCCOMB_X3_Y17_N12
\counter_2|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|Add1~36_combout\ = (\counter_2|clks\(18) & (\counter_2|Add1~35\ $ (GND))) # (!\counter_2|clks\(18) & (!\counter_2|Add1~35\ & VCC))
-- \counter_2|Add1~37\ = CARRY((\counter_2|clks\(18) & !\counter_2|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_2|clks\(18),
	datad => VCC,
	cin => \counter_2|Add1~35\,
	combout => \counter_2|Add1~36_combout\,
	cout => \counter_2|Add1~37\);

-- Location: FF_X3_Y17_N13
\counter_2|clks[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_2|Add1~36_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_2|clks\(18));

-- Location: LCCOMB_X3_Y17_N14
\counter_2|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|Add1~38_combout\ = (\counter_2|clks\(19) & (!\counter_2|Add1~37\)) # (!\counter_2|clks\(19) & ((\counter_2|Add1~37\) # (GND)))
-- \counter_2|Add1~39\ = CARRY((!\counter_2|Add1~37\) # (!\counter_2|clks\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_2|clks\(19),
	datad => VCC,
	cin => \counter_2|Add1~37\,
	combout => \counter_2|Add1~38_combout\,
	cout => \counter_2|Add1~39\);

-- Location: FF_X3_Y17_N15
\counter_2|clks[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_2|Add1~38_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_2|clks\(19));

-- Location: LCCOMB_X3_Y17_N26
\counter_2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|Equal0~1_combout\ = (!\counter_2|clks\(17) & (!\counter_2|clks\(18) & (!\counter_2|clks\(19) & \counter_2|clks\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_2|clks\(17),
	datab => \counter_2|clks\(18),
	datac => \counter_2|clks\(19),
	datad => \counter_2|clks\(16),
	combout => \counter_2|Equal0~1_combout\);

-- Location: LCCOMB_X3_Y17_N16
\counter_2|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|Add1~40_combout\ = (\counter_2|clks\(20) & (\counter_2|Add1~39\ $ (GND))) # (!\counter_2|clks\(20) & (!\counter_2|Add1~39\ & VCC))
-- \counter_2|Add1~41\ = CARRY((\counter_2|clks\(20) & !\counter_2|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_2|clks\(20),
	datad => VCC,
	cin => \counter_2|Add1~39\,
	combout => \counter_2|Add1~40_combout\,
	cout => \counter_2|Add1~41\);

-- Location: FF_X3_Y17_N17
\counter_2|clks[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_2|Add1~40_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_2|clks\(20));

-- Location: LCCOMB_X3_Y17_N18
\counter_2|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|Add1~42_combout\ = (\counter_2|clks\(21) & (!\counter_2|Add1~41\)) # (!\counter_2|clks\(21) & ((\counter_2|Add1~41\) # (GND)))
-- \counter_2|Add1~43\ = CARRY((!\counter_2|Add1~41\) # (!\counter_2|clks\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_2|clks\(21),
	datad => VCC,
	cin => \counter_2|Add1~41\,
	combout => \counter_2|Add1~42_combout\,
	cout => \counter_2|Add1~43\);

-- Location: FF_X3_Y17_N19
\counter_2|clks[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_2|Add1~42_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_2|clks\(21));

-- Location: LCCOMB_X3_Y17_N20
\counter_2|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|Add1~44_combout\ = (\counter_2|clks\(22) & (\counter_2|Add1~43\ $ (GND))) # (!\counter_2|clks\(22) & (!\counter_2|Add1~43\ & VCC))
-- \counter_2|Add1~45\ = CARRY((\counter_2|clks\(22) & !\counter_2|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_2|clks\(22),
	datad => VCC,
	cin => \counter_2|Add1~43\,
	combout => \counter_2|Add1~44_combout\,
	cout => \counter_2|Add1~45\);

-- Location: FF_X3_Y17_N21
\counter_2|clks[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_2|Add1~44_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_2|clks\(22));

-- Location: LCCOMB_X3_Y17_N22
\counter_2|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|Add1~46_combout\ = \counter_2|clks\(23) $ (\counter_2|Add1~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_2|clks\(23),
	cin => \counter_2|Add1~45\,
	combout => \counter_2|Add1~46_combout\);

-- Location: FF_X3_Y17_N23
\counter_2|clks[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_2|Add1~46_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_2|clks\(23));

-- Location: LCCOMB_X3_Y17_N24
\counter_2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|Equal0~0_combout\ = (!\counter_2|clks\(20) & (!\counter_2|clks\(21) & (!\counter_2|clks\(23) & !\counter_2|clks\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_2|clks\(20),
	datab => \counter_2|clks\(21),
	datac => \counter_2|clks\(23),
	datad => \counter_2|clks\(22),
	combout => \counter_2|Equal0~0_combout\);

-- Location: LCCOMB_X3_Y17_N30
\counter_2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|Equal0~4_combout\ = (\counter_2|Equal0~3_combout\ & (\counter_2|Equal0~2_combout\ & (\counter_2|Equal0~1_combout\ & \counter_2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_2|Equal0~3_combout\,
	datab => \counter_2|Equal0~2_combout\,
	datac => \counter_2|Equal0~1_combout\,
	datad => \counter_2|Equal0~0_combout\,
	combout => \counter_2|Equal0~4_combout\);

-- Location: LCCOMB_X8_Y18_N0
\counter_2|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|Equal0~7_combout\ = (\counter_2|Equal0~6_combout\ & (\counter_2|Equal0~4_combout\ & \counter_2|Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_2|Equal0~6_combout\,
	datab => \counter_2|Equal0~4_combout\,
	datac => \counter_2|Equal0~5_combout\,
	combout => \counter_2|Equal0~7_combout\);

-- Location: LCCOMB_X8_Y18_N24
\counter_2|digit[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|digit[0]~3_combout\ = !\counter_2|digit\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_2|digit\(0),
	combout => \counter_2|digit[0]~3_combout\);

-- Location: FF_X8_Y18_N25
\counter_2|digit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_2|digit[0]~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \counter_2|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_2|digit\(0));

-- Location: LCCOMB_X8_Y18_N28
\counter_2|digit[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|digit[2]~1_combout\ = \counter_2|digit\(2) $ (((\counter_2|digit\(1) & (\counter_2|Equal0~7_combout\ & \counter_2|digit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_2|digit\(1),
	datab => \counter_2|Equal0~7_combout\,
	datac => \counter_2|digit\(2),
	datad => \counter_2|digit\(0),
	combout => \counter_2|digit[2]~1_combout\);

-- Location: FF_X8_Y18_N29
\counter_2|digit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_2|digit[2]~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_2|digit\(2));

-- Location: LCCOMB_X8_Y18_N22
\counter_2|digit~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|digit~2_combout\ = (\counter_2|digit\(1) & (\counter_2|digit\(3) $ (((\counter_2|digit\(2) & \counter_2|digit\(0)))))) # (!\counter_2|digit\(1) & (\counter_2|digit\(3) & ((\counter_2|digit\(2)) # (!\counter_2|digit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_2|digit\(1),
	datab => \counter_2|digit\(2),
	datac => \counter_2|digit\(3),
	datad => \counter_2|digit\(0),
	combout => \counter_2|digit~2_combout\);

-- Location: FF_X8_Y18_N23
\counter_2|digit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_2|digit~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \counter_2|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_2|digit\(3));

-- Location: LCCOMB_X8_Y18_N26
\counter_2|digit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_2|digit~0_combout\ = (\counter_2|digit\(1) & (((!\counter_2|digit\(0))))) # (!\counter_2|digit\(1) & (\counter_2|digit\(0) & ((\counter_2|digit\(2)) # (!\counter_2|digit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_2|digit\(3),
	datab => \counter_2|digit\(2),
	datac => \counter_2|digit\(1),
	datad => \counter_2|digit\(0),
	combout => \counter_2|digit~0_combout\);

-- Location: FF_X8_Y18_N27
\counter_2|digit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_2|digit~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \counter_2|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_2|digit\(1));

-- Location: LCCOMB_X13_Y20_N8
\counter_1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|Add1~0_combout\ = \counter_1|clks\(0) $ (VCC)
-- \counter_1|Add1~1\ = CARRY(\counter_1|clks\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_1|clks\(0),
	datad => VCC,
	combout => \counter_1|Add1~0_combout\,
	cout => \counter_1|Add1~1\);

-- Location: FF_X13_Y20_N9
\counter_1|clks[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_1|Add1~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|clks\(0));

-- Location: LCCOMB_X13_Y20_N10
\counter_1|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|Add1~2_combout\ = (\counter_1|clks\(1) & (!\counter_1|Add1~1\)) # (!\counter_1|clks\(1) & ((\counter_1|Add1~1\) # (GND)))
-- \counter_1|Add1~3\ = CARRY((!\counter_1|Add1~1\) # (!\counter_1|clks\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_1|clks\(1),
	datad => VCC,
	cin => \counter_1|Add1~1\,
	combout => \counter_1|Add1~2_combout\,
	cout => \counter_1|Add1~3\);

-- Location: FF_X13_Y20_N11
\counter_1|clks[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_1|Add1~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|clks\(1));

-- Location: LCCOMB_X13_Y20_N12
\counter_1|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|Add1~4_combout\ = (\counter_1|clks\(2) & (\counter_1|Add1~3\ $ (GND))) # (!\counter_1|clks\(2) & (!\counter_1|Add1~3\ & VCC))
-- \counter_1|Add1~5\ = CARRY((\counter_1|clks\(2) & !\counter_1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_1|clks\(2),
	datad => VCC,
	cin => \counter_1|Add1~3\,
	combout => \counter_1|Add1~4_combout\,
	cout => \counter_1|Add1~5\);

-- Location: FF_X13_Y20_N13
\counter_1|clks[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_1|Add1~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|clks\(2));

-- Location: LCCOMB_X13_Y20_N14
\counter_1|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|Add1~6_combout\ = (\counter_1|clks\(3) & (!\counter_1|Add1~5\)) # (!\counter_1|clks\(3) & ((\counter_1|Add1~5\) # (GND)))
-- \counter_1|Add1~7\ = CARRY((!\counter_1|Add1~5\) # (!\counter_1|clks\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_1|clks\(3),
	datad => VCC,
	cin => \counter_1|Add1~5\,
	combout => \counter_1|Add1~6_combout\,
	cout => \counter_1|Add1~7\);

-- Location: FF_X13_Y20_N15
\counter_1|clks[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_1|Add1~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|clks\(3));

-- Location: LCCOMB_X13_Y20_N6
\counter_1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|Equal0~6_combout\ = (\counter_1|clks\(2) & (\counter_1|clks\(0) & (\counter_1|clks\(3) & \counter_1|clks\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_1|clks\(2),
	datab => \counter_1|clks\(0),
	datac => \counter_1|clks\(3),
	datad => \counter_1|clks\(1),
	combout => \counter_1|Equal0~6_combout\);

-- Location: LCCOMB_X13_Y20_N16
\counter_1|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|Add1~8_combout\ = (\counter_1|clks\(4) & (\counter_1|Add1~7\ $ (GND))) # (!\counter_1|clks\(4) & (!\counter_1|Add1~7\ & VCC))
-- \counter_1|Add1~9\ = CARRY((\counter_1|clks\(4) & !\counter_1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_1|clks\(4),
	datad => VCC,
	cin => \counter_1|Add1~7\,
	combout => \counter_1|Add1~8_combout\,
	cout => \counter_1|Add1~9\);

-- Location: LCCOMB_X14_Y20_N4
\counter_1|clks~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|clks~4_combout\ = (\counter_1|Add1~8_combout\ & (((!\counter_1|Equal0~6_combout\) # (!\counter_1|Equal0~5_combout\)) # (!\counter_1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_1|Equal0~4_combout\,
	datab => \counter_1|Equal0~5_combout\,
	datac => \counter_1|Equal0~6_combout\,
	datad => \counter_1|Add1~8_combout\,
	combout => \counter_1|clks~4_combout\);

-- Location: FF_X14_Y20_N5
\counter_1|clks[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_1|clks~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|clks\(4));

-- Location: LCCOMB_X13_Y20_N18
\counter_1|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|Add1~10_combout\ = (\counter_1|clks\(5) & (!\counter_1|Add1~9\)) # (!\counter_1|clks\(5) & ((\counter_1|Add1~9\) # (GND)))
-- \counter_1|Add1~11\ = CARRY((!\counter_1|Add1~9\) # (!\counter_1|clks\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_1|clks\(5),
	datad => VCC,
	cin => \counter_1|Add1~9\,
	combout => \counter_1|Add1~10_combout\,
	cout => \counter_1|Add1~11\);

-- Location: FF_X13_Y20_N19
\counter_1|clks[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_1|Add1~10_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|clks\(5));

-- Location: LCCOMB_X13_Y20_N20
\counter_1|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|Add1~12_combout\ = (\counter_1|clks\(6) & (\counter_1|Add1~11\ $ (GND))) # (!\counter_1|clks\(6) & (!\counter_1|Add1~11\ & VCC))
-- \counter_1|Add1~13\ = CARRY((\counter_1|clks\(6) & !\counter_1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_1|clks\(6),
	datad => VCC,
	cin => \counter_1|Add1~11\,
	combout => \counter_1|Add1~12_combout\,
	cout => \counter_1|Add1~13\);

-- Location: FF_X13_Y20_N21
\counter_1|clks[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_1|Add1~12_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|clks\(6));

-- Location: LCCOMB_X13_Y20_N22
\counter_1|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|Add1~14_combout\ = (\counter_1|clks\(7) & (!\counter_1|Add1~13\)) # (!\counter_1|clks\(7) & ((\counter_1|Add1~13\) # (GND)))
-- \counter_1|Add1~15\ = CARRY((!\counter_1|Add1~13\) # (!\counter_1|clks\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_1|clks\(7),
	datad => VCC,
	cin => \counter_1|Add1~13\,
	combout => \counter_1|Add1~14_combout\,
	cout => \counter_1|Add1~15\);

-- Location: FF_X13_Y20_N23
\counter_1|clks[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_1|Add1~14_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|clks\(7));

-- Location: LCCOMB_X13_Y20_N4
\counter_1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|Equal0~5_combout\ = (!\counter_1|clks\(4) & (!\counter_1|clks\(6) & (!\counter_1|clks\(7) & !\counter_1|clks\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_1|clks\(4),
	datab => \counter_1|clks\(6),
	datac => \counter_1|clks\(7),
	datad => \counter_1|clks\(5),
	combout => \counter_1|Equal0~5_combout\);

-- Location: LCCOMB_X13_Y20_N24
\counter_1|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|Add1~16_combout\ = (\counter_1|clks\(8) & (\counter_1|Add1~15\ $ (GND))) # (!\counter_1|clks\(8) & (!\counter_1|Add1~15\ & VCC))
-- \counter_1|Add1~17\ = CARRY((\counter_1|clks\(8) & !\counter_1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_1|clks\(8),
	datad => VCC,
	cin => \counter_1|Add1~15\,
	combout => \counter_1|Add1~16_combout\,
	cout => \counter_1|Add1~17\);

-- Location: LCCOMB_X13_Y20_N0
\counter_1|clks~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|clks~3_combout\ = (\counter_1|Add1~16_combout\ & (((!\counter_1|Equal0~4_combout\) # (!\counter_1|Equal0~5_combout\)) # (!\counter_1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_1|Equal0~6_combout\,
	datab => \counter_1|Add1~16_combout\,
	datac => \counter_1|Equal0~5_combout\,
	datad => \counter_1|Equal0~4_combout\,
	combout => \counter_1|clks~3_combout\);

-- Location: FF_X13_Y20_N1
\counter_1|clks[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_1|clks~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|clks\(8));

-- Location: LCCOMB_X13_Y20_N26
\counter_1|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|Add1~18_combout\ = (\counter_1|clks\(9) & (!\counter_1|Add1~17\)) # (!\counter_1|clks\(9) & ((\counter_1|Add1~17\) # (GND)))
-- \counter_1|Add1~19\ = CARRY((!\counter_1|Add1~17\) # (!\counter_1|clks\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_1|clks\(9),
	datad => VCC,
	cin => \counter_1|Add1~17\,
	combout => \counter_1|Add1~18_combout\,
	cout => \counter_1|Add1~19\);

-- Location: LCCOMB_X14_Y20_N18
\counter_1|clks~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|clks~2_combout\ = (\counter_1|Add1~18_combout\ & (((!\counter_1|Equal0~4_combout\) # (!\counter_1|Equal0~6_combout\)) # (!\counter_1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_1|Add1~18_combout\,
	datab => \counter_1|Equal0~5_combout\,
	datac => \counter_1|Equal0~6_combout\,
	datad => \counter_1|Equal0~4_combout\,
	combout => \counter_1|clks~2_combout\);

-- Location: FF_X14_Y20_N19
\counter_1|clks[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_1|clks~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|clks\(9));

-- Location: LCCOMB_X13_Y20_N28
\counter_1|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|Add1~20_combout\ = (\counter_1|clks\(10) & (\counter_1|Add1~19\ $ (GND))) # (!\counter_1|clks\(10) & (!\counter_1|Add1~19\ & VCC))
-- \counter_1|Add1~21\ = CARRY((\counter_1|clks\(10) & !\counter_1|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_1|clks\(10),
	datad => VCC,
	cin => \counter_1|Add1~19\,
	combout => \counter_1|Add1~20_combout\,
	cout => \counter_1|Add1~21\);

-- Location: LCCOMB_X14_Y20_N24
\counter_1|clks~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|clks~1_combout\ = (\counter_1|Add1~20_combout\ & (((!\counter_1|Equal0~5_combout\) # (!\counter_1|Equal0~6_combout\)) # (!\counter_1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_1|Equal0~4_combout\,
	datab => \counter_1|Equal0~6_combout\,
	datac => \counter_1|Equal0~5_combout\,
	datad => \counter_1|Add1~20_combout\,
	combout => \counter_1|clks~1_combout\);

-- Location: FF_X14_Y20_N25
\counter_1|clks[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_1|clks~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|clks\(10));

-- Location: LCCOMB_X13_Y20_N30
\counter_1|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|Add1~22_combout\ = (\counter_1|clks\(11) & (!\counter_1|Add1~21\)) # (!\counter_1|clks\(11) & ((\counter_1|Add1~21\) # (GND)))
-- \counter_1|Add1~23\ = CARRY((!\counter_1|Add1~21\) # (!\counter_1|clks\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_1|clks\(11),
	datad => VCC,
	cin => \counter_1|Add1~21\,
	combout => \counter_1|Add1~22_combout\,
	cout => \counter_1|Add1~23\);

-- Location: FF_X13_Y20_N31
\counter_1|clks[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_1|Add1~22_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|clks\(11));

-- Location: LCCOMB_X13_Y19_N0
\counter_1|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|Add1~24_combout\ = (\counter_1|clks\(12) & (\counter_1|Add1~23\ $ (GND))) # (!\counter_1|clks\(12) & (!\counter_1|Add1~23\ & VCC))
-- \counter_1|Add1~25\ = CARRY((\counter_1|clks\(12) & !\counter_1|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_1|clks\(12),
	datad => VCC,
	cin => \counter_1|Add1~23\,
	combout => \counter_1|Add1~24_combout\,
	cout => \counter_1|Add1~25\);

-- Location: FF_X13_Y19_N1
\counter_1|clks[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_1|Add1~24_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|clks\(12));

-- Location: LCCOMB_X13_Y19_N2
\counter_1|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|Add1~26_combout\ = (\counter_1|clks\(13) & (!\counter_1|Add1~25\)) # (!\counter_1|clks\(13) & ((\counter_1|Add1~25\) # (GND)))
-- \counter_1|Add1~27\ = CARRY((!\counter_1|Add1~25\) # (!\counter_1|clks\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_1|clks\(13),
	datad => VCC,
	cin => \counter_1|Add1~25\,
	combout => \counter_1|Add1~26_combout\,
	cout => \counter_1|Add1~27\);

-- Location: LCCOMB_X14_Y19_N24
\counter_1|clks~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|clks~0_combout\ = (\counter_1|Add1~26_combout\ & (((!\counter_1|Equal0~5_combout\) # (!\counter_1|Equal0~6_combout\)) # (!\counter_1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_1|Add1~26_combout\,
	datab => \counter_1|Equal0~4_combout\,
	datac => \counter_1|Equal0~6_combout\,
	datad => \counter_1|Equal0~5_combout\,
	combout => \counter_1|clks~0_combout\);

-- Location: FF_X14_Y19_N25
\counter_1|clks[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_1|clks~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|clks\(13));

-- Location: LCCOMB_X13_Y19_N4
\counter_1|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|Add1~28_combout\ = (\counter_1|clks\(14) & (\counter_1|Add1~27\ $ (GND))) # (!\counter_1|clks\(14) & (!\counter_1|Add1~27\ & VCC))
-- \counter_1|Add1~29\ = CARRY((\counter_1|clks\(14) & !\counter_1|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_1|clks\(14),
	datad => VCC,
	cin => \counter_1|Add1~27\,
	combout => \counter_1|Add1~28_combout\,
	cout => \counter_1|Add1~29\);

-- Location: FF_X13_Y19_N5
\counter_1|clks[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_1|Add1~28_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|clks\(14));

-- Location: LCCOMB_X13_Y19_N6
\counter_1|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|Add1~30_combout\ = (\counter_1|clks\(15) & (!\counter_1|Add1~29\)) # (!\counter_1|clks\(15) & ((\counter_1|Add1~29\) # (GND)))
-- \counter_1|Add1~31\ = CARRY((!\counter_1|Add1~29\) # (!\counter_1|clks\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_1|clks\(15),
	datad => VCC,
	cin => \counter_1|Add1~29\,
	combout => \counter_1|Add1~30_combout\,
	cout => \counter_1|Add1~31\);

-- Location: FF_X13_Y19_N7
\counter_1|clks[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_1|Add1~30_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|clks\(15));

-- Location: LCCOMB_X13_Y19_N8
\counter_1|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|Add1~32_combout\ = (\counter_1|clks\(16) & (\counter_1|Add1~31\ $ (GND))) # (!\counter_1|clks\(16) & (!\counter_1|Add1~31\ & VCC))
-- \counter_1|Add1~33\ = CARRY((\counter_1|clks\(16) & !\counter_1|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_1|clks\(16),
	datad => VCC,
	cin => \counter_1|Add1~31\,
	combout => \counter_1|Add1~32_combout\,
	cout => \counter_1|Add1~33\);

-- Location: FF_X13_Y19_N9
\counter_1|clks[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_1|Add1~32_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|clks\(16));

-- Location: LCCOMB_X13_Y19_N10
\counter_1|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|Add1~34_combout\ = (\counter_1|clks\(17) & (!\counter_1|Add1~33\)) # (!\counter_1|clks\(17) & ((\counter_1|Add1~33\) # (GND)))
-- \counter_1|Add1~35\ = CARRY((!\counter_1|Add1~33\) # (!\counter_1|clks\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_1|clks\(17),
	datad => VCC,
	cin => \counter_1|Add1~33\,
	combout => \counter_1|Add1~34_combout\,
	cout => \counter_1|Add1~35\);

-- Location: FF_X13_Y19_N11
\counter_1|clks[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_1|Add1~34_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|clks\(17));

-- Location: LCCOMB_X13_Y19_N12
\counter_1|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|Add1~36_combout\ = (\counter_1|clks\(18) & (\counter_1|Add1~35\ $ (GND))) # (!\counter_1|clks\(18) & (!\counter_1|Add1~35\ & VCC))
-- \counter_1|Add1~37\ = CARRY((\counter_1|clks\(18) & !\counter_1|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_1|clks\(18),
	datad => VCC,
	cin => \counter_1|Add1~35\,
	combout => \counter_1|Add1~36_combout\,
	cout => \counter_1|Add1~37\);

-- Location: FF_X13_Y19_N13
\counter_1|clks[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_1|Add1~36_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|clks\(18));

-- Location: LCCOMB_X13_Y19_N14
\counter_1|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|Add1~38_combout\ = (\counter_1|clks\(19) & (!\counter_1|Add1~37\)) # (!\counter_1|clks\(19) & ((\counter_1|Add1~37\) # (GND)))
-- \counter_1|Add1~39\ = CARRY((!\counter_1|Add1~37\) # (!\counter_1|clks\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_1|clks\(19),
	datad => VCC,
	cin => \counter_1|Add1~37\,
	combout => \counter_1|Add1~38_combout\,
	cout => \counter_1|Add1~39\);

-- Location: FF_X13_Y19_N15
\counter_1|clks[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_1|Add1~38_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|clks\(19));

-- Location: LCCOMB_X13_Y19_N16
\counter_1|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|Add1~40_combout\ = (\counter_1|clks\(20) & (\counter_1|Add1~39\ $ (GND))) # (!\counter_1|clks\(20) & (!\counter_1|Add1~39\ & VCC))
-- \counter_1|Add1~41\ = CARRY((\counter_1|clks\(20) & !\counter_1|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_1|clks\(20),
	datad => VCC,
	cin => \counter_1|Add1~39\,
	combout => \counter_1|Add1~40_combout\,
	cout => \counter_1|Add1~41\);

-- Location: FF_X13_Y19_N17
\counter_1|clks[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_1|Add1~40_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|clks\(20));

-- Location: LCCOMB_X13_Y19_N18
\counter_1|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|Add1~42_combout\ = (\counter_1|clks\(21) & (!\counter_1|Add1~41\)) # (!\counter_1|clks\(21) & ((\counter_1|Add1~41\) # (GND)))
-- \counter_1|Add1~43\ = CARRY((!\counter_1|Add1~41\) # (!\counter_1|clks\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_1|clks\(21),
	datad => VCC,
	cin => \counter_1|Add1~41\,
	combout => \counter_1|Add1~42_combout\,
	cout => \counter_1|Add1~43\);

-- Location: FF_X13_Y19_N19
\counter_1|clks[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_1|Add1~42_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|clks\(21));

-- Location: LCCOMB_X13_Y19_N20
\counter_1|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|Add1~44_combout\ = (\counter_1|clks\(22) & (\counter_1|Add1~43\ $ (GND))) # (!\counter_1|clks\(22) & (!\counter_1|Add1~43\ & VCC))
-- \counter_1|Add1~45\ = CARRY((\counter_1|clks\(22) & !\counter_1|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_1|clks\(22),
	datad => VCC,
	cin => \counter_1|Add1~43\,
	combout => \counter_1|Add1~44_combout\,
	cout => \counter_1|Add1~45\);

-- Location: FF_X13_Y19_N21
\counter_1|clks[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_1|Add1~44_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|clks\(22));

-- Location: LCCOMB_X13_Y19_N22
\counter_1|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|Add1~46_combout\ = \counter_1|clks\(23) $ (\counter_1|Add1~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_1|clks\(23),
	cin => \counter_1|Add1~45\,
	combout => \counter_1|Add1~46_combout\);

-- Location: FF_X13_Y19_N23
\counter_1|clks[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_1|Add1~46_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|clks\(23));

-- Location: LCCOMB_X13_Y19_N24
\counter_1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|Equal0~0_combout\ = (!\counter_1|clks\(20) & (!\counter_1|clks\(22) & (!\counter_1|clks\(23) & !\counter_1|clks\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_1|clks\(20),
	datab => \counter_1|clks\(22),
	datac => \counter_1|clks\(23),
	datad => \counter_1|clks\(21),
	combout => \counter_1|Equal0~0_combout\);

-- Location: LCCOMB_X13_Y19_N28
\counter_1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|Equal0~2_combout\ = (!\counter_1|clks\(15) & (!\counter_1|clks\(12) & (!\counter_1|clks\(14) & \counter_1|clks\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_1|clks\(15),
	datab => \counter_1|clks\(12),
	datac => \counter_1|clks\(14),
	datad => \counter_1|clks\(13),
	combout => \counter_1|Equal0~2_combout\);

-- Location: LCCOMB_X13_Y19_N26
\counter_1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|Equal0~1_combout\ = (!\counter_1|clks\(18) & (!\counter_1|clks\(16) & (!\counter_1|clks\(19) & !\counter_1|clks\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_1|clks\(18),
	datab => \counter_1|clks\(16),
	datac => \counter_1|clks\(19),
	datad => \counter_1|clks\(17),
	combout => \counter_1|Equal0~1_combout\);

-- Location: LCCOMB_X13_Y20_N2
\counter_1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|Equal0~3_combout\ = (\counter_1|clks\(8) & (\counter_1|clks\(9) & (!\counter_1|clks\(11) & \counter_1|clks\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_1|clks\(8),
	datab => \counter_1|clks\(9),
	datac => \counter_1|clks\(11),
	datad => \counter_1|clks\(10),
	combout => \counter_1|Equal0~3_combout\);

-- Location: LCCOMB_X13_Y19_N30
\counter_1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|Equal0~4_combout\ = (\counter_1|Equal0~0_combout\ & (\counter_1|Equal0~2_combout\ & (\counter_1|Equal0~1_combout\ & \counter_1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_1|Equal0~0_combout\,
	datab => \counter_1|Equal0~2_combout\,
	datac => \counter_1|Equal0~1_combout\,
	datad => \counter_1|Equal0~3_combout\,
	combout => \counter_1|Equal0~4_combout\);

-- Location: LCCOMB_X14_Y19_N2
\counter_1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|Equal0~7_combout\ = (\counter_1|Equal0~4_combout\ & (\counter_1|Equal0~6_combout\ & \counter_1|Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_1|Equal0~4_combout\,
	datac => \counter_1|Equal0~6_combout\,
	datad => \counter_1|Equal0~5_combout\,
	combout => \counter_1|Equal0~7_combout\);

-- Location: LCCOMB_X14_Y19_N0
\counter_1|digit[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|digit[0]~3_combout\ = !\counter_1|digit\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_1|digit\(0),
	combout => \counter_1|digit[0]~3_combout\);

-- Location: FF_X14_Y19_N1
\counter_1|digit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_1|digit[0]~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \counter_1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|digit\(0));

-- Location: LCCOMB_X14_Y19_N4
\counter_1|digit[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|digit[2]~1_combout\ = \counter_1|digit\(2) $ (((\counter_1|digit\(1) & (\counter_1|Equal0~7_combout\ & \counter_1|digit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_1|digit\(1),
	datab => \counter_1|Equal0~7_combout\,
	datac => \counter_1|digit\(2),
	datad => \counter_1|digit\(0),
	combout => \counter_1|digit[2]~1_combout\);

-- Location: FF_X14_Y19_N5
\counter_1|digit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_1|digit[2]~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|digit\(2));

-- Location: LCCOMB_X14_Y19_N6
\counter_1|digit~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|digit~2_combout\ = (\counter_1|digit\(1) & (\counter_1|digit\(3) $ (((\counter_1|digit\(2) & \counter_1|digit\(0)))))) # (!\counter_1|digit\(1) & (\counter_1|digit\(3) & ((\counter_1|digit\(2)) # (!\counter_1|digit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_1|digit\(1),
	datab => \counter_1|digit\(2),
	datac => \counter_1|digit\(3),
	datad => \counter_1|digit\(0),
	combout => \counter_1|digit~2_combout\);

-- Location: FF_X14_Y19_N7
\counter_1|digit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_1|digit~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \counter_1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|digit\(3));

-- Location: LCCOMB_X14_Y19_N10
\counter_1|digit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_1|digit~0_combout\ = (\counter_1|digit\(1) & (((!\counter_1|digit\(0))))) # (!\counter_1|digit\(1) & (\counter_1|digit\(0) & ((\counter_1|digit\(2)) # (!\counter_1|digit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_1|digit\(3),
	datab => \counter_1|digit\(2),
	datac => \counter_1|digit\(1),
	datad => \counter_1|digit\(0),
	combout => \counter_1|digit~0_combout\);

-- Location: FF_X14_Y19_N11
\counter_1|digit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_1|digit~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \counter_1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1|digit\(1));

-- Location: LCCOMB_X17_Y20_N28
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (digit_index(1) & (((digit_index(0))))) # (!digit_index(1) & ((digit_index(0) & (\counter_2|digit\(1))) # (!digit_index(0) & ((\counter_1|digit\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_2|digit\(1),
	datab => \counter_1|digit\(1),
	datac => digit_index(1),
	datad => digit_index(0),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X14_Y15_N0
\counter_3|digit[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|digit[0]~3_combout\ = !\counter_3|digit\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_3|digit\(0),
	combout => \counter_3|digit[0]~3_combout\);

-- Location: LCCOMB_X17_Y16_N8
\counter_3|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~0_combout\ = \counter_3|clks\(0) $ (VCC)
-- \counter_3|Add1~1\ = CARRY(\counter_3|clks\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_3|clks\(0),
	datad => VCC,
	combout => \counter_3|Add1~0_combout\,
	cout => \counter_3|Add1~1\);

-- Location: FF_X17_Y16_N9
\counter_3|clks[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|Add1~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clks\(0));

-- Location: LCCOMB_X17_Y16_N10
\counter_3|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~2_combout\ = (\counter_3|clks\(1) & (!\counter_3|Add1~1\)) # (!\counter_3|clks\(1) & ((\counter_3|Add1~1\) # (GND)))
-- \counter_3|Add1~3\ = CARRY((!\counter_3|Add1~1\) # (!\counter_3|clks\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|clks\(1),
	datad => VCC,
	cin => \counter_3|Add1~1\,
	combout => \counter_3|Add1~2_combout\,
	cout => \counter_3|Add1~3\);

-- Location: FF_X17_Y16_N11
\counter_3|clks[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|Add1~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clks\(1));

-- Location: LCCOMB_X17_Y16_N12
\counter_3|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~4_combout\ = (\counter_3|clks\(2) & (\counter_3|Add1~3\ $ (GND))) # (!\counter_3|clks\(2) & (!\counter_3|Add1~3\ & VCC))
-- \counter_3|Add1~5\ = CARRY((\counter_3|clks\(2) & !\counter_3|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|clks\(2),
	datad => VCC,
	cin => \counter_3|Add1~3\,
	combout => \counter_3|Add1~4_combout\,
	cout => \counter_3|Add1~5\);

-- Location: FF_X17_Y16_N13
\counter_3|clks[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|Add1~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clks\(2));

-- Location: LCCOMB_X17_Y16_N14
\counter_3|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~6_combout\ = (\counter_3|clks\(3) & (!\counter_3|Add1~5\)) # (!\counter_3|clks\(3) & ((\counter_3|Add1~5\) # (GND)))
-- \counter_3|Add1~7\ = CARRY((!\counter_3|Add1~5\) # (!\counter_3|clks\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_3|clks\(3),
	datad => VCC,
	cin => \counter_3|Add1~5\,
	combout => \counter_3|Add1~6_combout\,
	cout => \counter_3|Add1~7\);

-- Location: FF_X17_Y16_N15
\counter_3|clks[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|Add1~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clks\(3));

-- Location: LCCOMB_X17_Y16_N6
\counter_3|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Equal0~6_combout\ = (\counter_3|clks\(2) & (\counter_3|clks\(0) & (\counter_3|clks\(3) & \counter_3|clks\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|clks\(2),
	datab => \counter_3|clks\(0),
	datac => \counter_3|clks\(3),
	datad => \counter_3|clks\(1),
	combout => \counter_3|Equal0~6_combout\);

-- Location: LCCOMB_X17_Y16_N16
\counter_3|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~8_combout\ = (\counter_3|clks\(4) & (\counter_3|Add1~7\ $ (GND))) # (!\counter_3|clks\(4) & (!\counter_3|Add1~7\ & VCC))
-- \counter_3|Add1~9\ = CARRY((\counter_3|clks\(4) & !\counter_3|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_3|clks\(4),
	datad => VCC,
	cin => \counter_3|Add1~7\,
	combout => \counter_3|Add1~8_combout\,
	cout => \counter_3|Add1~9\);

-- Location: FF_X17_Y16_N17
\counter_3|clks[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|Add1~8_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clks\(4));

-- Location: LCCOMB_X17_Y16_N18
\counter_3|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~10_combout\ = (\counter_3|clks\(5) & (!\counter_3|Add1~9\)) # (!\counter_3|clks\(5) & ((\counter_3|Add1~9\) # (GND)))
-- \counter_3|Add1~11\ = CARRY((!\counter_3|Add1~9\) # (!\counter_3|clks\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_3|clks\(5),
	datad => VCC,
	cin => \counter_3|Add1~9\,
	combout => \counter_3|Add1~10_combout\,
	cout => \counter_3|Add1~11\);

-- Location: FF_X17_Y16_N19
\counter_3|clks[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|Add1~10_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clks\(5));

-- Location: LCCOMB_X17_Y16_N20
\counter_3|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~12_combout\ = (\counter_3|clks\(6) & (\counter_3|Add1~11\ $ (GND))) # (!\counter_3|clks\(6) & (!\counter_3|Add1~11\ & VCC))
-- \counter_3|Add1~13\ = CARRY((\counter_3|clks\(6) & !\counter_3|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_3|clks\(6),
	datad => VCC,
	cin => \counter_3|Add1~11\,
	combout => \counter_3|Add1~12_combout\,
	cout => \counter_3|Add1~13\);

-- Location: LCCOMB_X17_Y16_N22
\counter_3|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~14_combout\ = (\counter_3|clks\(7) & (!\counter_3|Add1~13\)) # (!\counter_3|clks\(7) & ((\counter_3|Add1~13\) # (GND)))
-- \counter_3|Add1~15\ = CARRY((!\counter_3|Add1~13\) # (!\counter_3|clks\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|clks\(7),
	datad => VCC,
	cin => \counter_3|Add1~13\,
	combout => \counter_3|Add1~14_combout\,
	cout => \counter_3|Add1~15\);

-- Location: FF_X17_Y16_N23
\counter_3|clks[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|Add1~14_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clks\(7));

-- Location: LCCOMB_X17_Y16_N24
\counter_3|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~16_combout\ = (\counter_3|clks\(8) & (\counter_3|Add1~15\ $ (GND))) # (!\counter_3|clks\(8) & (!\counter_3|Add1~15\ & VCC))
-- \counter_3|Add1~17\ = CARRY((\counter_3|clks\(8) & !\counter_3|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_3|clks\(8),
	datad => VCC,
	cin => \counter_3|Add1~15\,
	combout => \counter_3|Add1~16_combout\,
	cout => \counter_3|Add1~17\);

-- Location: FF_X17_Y16_N25
\counter_3|clks[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|Add1~16_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clks\(8));

-- Location: LCCOMB_X17_Y16_N26
\counter_3|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~18_combout\ = (\counter_3|clks\(9) & (!\counter_3|Add1~17\)) # (!\counter_3|clks\(9) & ((\counter_3|Add1~17\) # (GND)))
-- \counter_3|Add1~19\ = CARRY((!\counter_3|Add1~17\) # (!\counter_3|clks\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|clks\(9),
	datad => VCC,
	cin => \counter_3|Add1~17\,
	combout => \counter_3|Add1~18_combout\,
	cout => \counter_3|Add1~19\);

-- Location: LCCOMB_X16_Y16_N16
\counter_3|clks~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|clks~5_combout\ = (\counter_3|Add1~18_combout\ & (((!\counter_3|Equal0~5_combout\) # (!\counter_3|Equal0~4_combout\)) # (!\counter_3|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|Equal0~6_combout\,
	datab => \counter_3|Equal0~4_combout\,
	datac => \counter_3|Equal0~5_combout\,
	datad => \counter_3|Add1~18_combout\,
	combout => \counter_3|clks~5_combout\);

-- Location: FF_X16_Y16_N17
\counter_3|clks[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|clks~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clks\(9));

-- Location: LCCOMB_X17_Y16_N28
\counter_3|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~20_combout\ = (\counter_3|clks\(10) & (\counter_3|Add1~19\ $ (GND))) # (!\counter_3|clks\(10) & (!\counter_3|Add1~19\ & VCC))
-- \counter_3|Add1~21\ = CARRY((\counter_3|clks\(10) & !\counter_3|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_3|clks\(10),
	datad => VCC,
	cin => \counter_3|Add1~19\,
	combout => \counter_3|Add1~20_combout\,
	cout => \counter_3|Add1~21\);

-- Location: FF_X17_Y16_N29
\counter_3|clks[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|Add1~20_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clks\(10));

-- Location: LCCOMB_X17_Y16_N30
\counter_3|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~22_combout\ = (\counter_3|clks\(11) & (!\counter_3|Add1~21\)) # (!\counter_3|clks\(11) & ((\counter_3|Add1~21\) # (GND)))
-- \counter_3|Add1~23\ = CARRY((!\counter_3|Add1~21\) # (!\counter_3|clks\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|clks\(11),
	datad => VCC,
	cin => \counter_3|Add1~21\,
	combout => \counter_3|Add1~22_combout\,
	cout => \counter_3|Add1~23\);

-- Location: FF_X17_Y16_N31
\counter_3|clks[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|Add1~22_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clks\(11));

-- Location: LCCOMB_X17_Y15_N0
\counter_3|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~24_combout\ = (\counter_3|clks\(12) & (\counter_3|Add1~23\ $ (GND))) # (!\counter_3|clks\(12) & (!\counter_3|Add1~23\ & VCC))
-- \counter_3|Add1~25\ = CARRY((\counter_3|clks\(12) & !\counter_3|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_3|clks\(12),
	datad => VCC,
	cin => \counter_3|Add1~23\,
	combout => \counter_3|Add1~24_combout\,
	cout => \counter_3|Add1~25\);

-- Location: FF_X17_Y15_N1
\counter_3|clks[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|Add1~24_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clks\(12));

-- Location: LCCOMB_X17_Y15_N2
\counter_3|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~26_combout\ = (\counter_3|clks\(13) & (!\counter_3|Add1~25\)) # (!\counter_3|clks\(13) & ((\counter_3|Add1~25\) # (GND)))
-- \counter_3|Add1~27\ = CARRY((!\counter_3|Add1~25\) # (!\counter_3|clks\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_3|clks\(13),
	datad => VCC,
	cin => \counter_3|Add1~25\,
	combout => \counter_3|Add1~26_combout\,
	cout => \counter_3|Add1~27\);

-- Location: FF_X17_Y15_N3
\counter_3|clks[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|Add1~26_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clks\(13));

-- Location: LCCOMB_X17_Y15_N4
\counter_3|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~28_combout\ = (\counter_3|clks\(14) & (\counter_3|Add1~27\ $ (GND))) # (!\counter_3|clks\(14) & (!\counter_3|Add1~27\ & VCC))
-- \counter_3|Add1~29\ = CARRY((\counter_3|clks\(14) & !\counter_3|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|clks\(14),
	datad => VCC,
	cin => \counter_3|Add1~27\,
	combout => \counter_3|Add1~28_combout\,
	cout => \counter_3|Add1~29\);

-- Location: LCCOMB_X16_Y15_N14
\counter_3|clks~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|clks~4_combout\ = (\counter_3|Add1~28_combout\ & (((!\counter_3|Equal0~6_combout\) # (!\counter_3|Equal0~5_combout\)) # (!\counter_3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|Equal0~4_combout\,
	datab => \counter_3|Add1~28_combout\,
	datac => \counter_3|Equal0~5_combout\,
	datad => \counter_3|Equal0~6_combout\,
	combout => \counter_3|clks~4_combout\);

-- Location: FF_X16_Y15_N15
\counter_3|clks[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|clks~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clks\(14));

-- Location: LCCOMB_X17_Y15_N6
\counter_3|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~30_combout\ = (\counter_3|clks\(15) & (!\counter_3|Add1~29\)) # (!\counter_3|clks\(15) & ((\counter_3|Add1~29\) # (GND)))
-- \counter_3|Add1~31\ = CARRY((!\counter_3|Add1~29\) # (!\counter_3|clks\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|clks\(15),
	datad => VCC,
	cin => \counter_3|Add1~29\,
	combout => \counter_3|Add1~30_combout\,
	cout => \counter_3|Add1~31\);

-- Location: FF_X17_Y15_N7
\counter_3|clks[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|Add1~30_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clks\(15));

-- Location: LCCOMB_X17_Y15_N8
\counter_3|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~32_combout\ = (\counter_3|clks\(16) & (\counter_3|Add1~31\ $ (GND))) # (!\counter_3|clks\(16) & (!\counter_3|Add1~31\ & VCC))
-- \counter_3|Add1~33\ = CARRY((\counter_3|clks\(16) & !\counter_3|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_3|clks\(16),
	datad => VCC,
	cin => \counter_3|Add1~31\,
	combout => \counter_3|Add1~32_combout\,
	cout => \counter_3|Add1~33\);

-- Location: LCCOMB_X17_Y15_N24
\counter_3|clks~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|clks~3_combout\ = (\counter_3|Add1~32_combout\ & (((!\counter_3|Equal0~5_combout\) # (!\counter_3|Equal0~6_combout\)) # (!\counter_3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|Equal0~4_combout\,
	datab => \counter_3|Add1~32_combout\,
	datac => \counter_3|Equal0~6_combout\,
	datad => \counter_3|Equal0~5_combout\,
	combout => \counter_3|clks~3_combout\);

-- Location: FF_X17_Y15_N25
\counter_3|clks[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|clks~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clks\(16));

-- Location: LCCOMB_X17_Y15_N10
\counter_3|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~34_combout\ = (\counter_3|clks\(17) & (!\counter_3|Add1~33\)) # (!\counter_3|clks\(17) & ((\counter_3|Add1~33\) # (GND)))
-- \counter_3|Add1~35\ = CARRY((!\counter_3|Add1~33\) # (!\counter_3|clks\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|clks\(17),
	datad => VCC,
	cin => \counter_3|Add1~33\,
	combout => \counter_3|Add1~34_combout\,
	cout => \counter_3|Add1~35\);

-- Location: LCCOMB_X14_Y15_N24
\counter_3|clks~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|clks~2_combout\ = (\counter_3|Add1~34_combout\ & (((!\counter_3|Equal0~6_combout\) # (!\counter_3|Equal0~4_combout\)) # (!\counter_3|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|Equal0~5_combout\,
	datab => \counter_3|Equal0~4_combout\,
	datac => \counter_3|Add1~34_combout\,
	datad => \counter_3|Equal0~6_combout\,
	combout => \counter_3|clks~2_combout\);

-- Location: FF_X14_Y15_N25
\counter_3|clks[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|clks~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clks\(17));

-- Location: LCCOMB_X17_Y15_N12
\counter_3|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~36_combout\ = (\counter_3|clks\(18) & (\counter_3|Add1~35\ $ (GND))) # (!\counter_3|clks\(18) & (!\counter_3|Add1~35\ & VCC))
-- \counter_3|Add1~37\ = CARRY((\counter_3|clks\(18) & !\counter_3|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|clks\(18),
	datad => VCC,
	cin => \counter_3|Add1~35\,
	combout => \counter_3|Add1~36_combout\,
	cout => \counter_3|Add1~37\);

-- Location: LCCOMB_X16_Y15_N12
\counter_3|clks~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|clks~1_combout\ = (\counter_3|Add1~36_combout\ & (((!\counter_3|Equal0~6_combout\) # (!\counter_3|Equal0~5_combout\)) # (!\counter_3|Equal0~4_combout\)))

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
	combout => \counter_3|clks~1_combout\);

-- Location: FF_X16_Y15_N13
\counter_3|clks[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|clks~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clks\(18));

-- Location: LCCOMB_X17_Y15_N14
\counter_3|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~38_combout\ = (\counter_3|clks\(19) & (!\counter_3|Add1~37\)) # (!\counter_3|clks\(19) & ((\counter_3|Add1~37\) # (GND)))
-- \counter_3|Add1~39\ = CARRY((!\counter_3|Add1~37\) # (!\counter_3|clks\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|clks\(19),
	datad => VCC,
	cin => \counter_3|Add1~37\,
	combout => \counter_3|Add1~38_combout\,
	cout => \counter_3|Add1~39\);

-- Location: LCCOMB_X16_Y15_N2
\counter_3|clks~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|clks~0_combout\ = (\counter_3|Add1~38_combout\ & (((!\counter_3|Equal0~6_combout\) # (!\counter_3|Equal0~5_combout\)) # (!\counter_3|Equal0~4_combout\)))

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
	combout => \counter_3|clks~0_combout\);

-- Location: FF_X16_Y15_N3
\counter_3|clks[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|clks~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clks\(19));

-- Location: LCCOMB_X17_Y15_N16
\counter_3|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~40_combout\ = (\counter_3|clks\(20) & (\counter_3|Add1~39\ $ (GND))) # (!\counter_3|clks\(20) & (!\counter_3|Add1~39\ & VCC))
-- \counter_3|Add1~41\ = CARRY((\counter_3|clks\(20) & !\counter_3|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_3|clks\(20),
	datad => VCC,
	cin => \counter_3|Add1~39\,
	combout => \counter_3|Add1~40_combout\,
	cout => \counter_3|Add1~41\);

-- Location: FF_X17_Y15_N17
\counter_3|clks[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|Add1~40_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clks\(20));

-- Location: LCCOMB_X17_Y15_N18
\counter_3|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~42_combout\ = (\counter_3|clks\(21) & (!\counter_3|Add1~41\)) # (!\counter_3|clks\(21) & ((\counter_3|Add1~41\) # (GND)))
-- \counter_3|Add1~43\ = CARRY((!\counter_3|Add1~41\) # (!\counter_3|clks\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_3|clks\(21),
	datad => VCC,
	cin => \counter_3|Add1~41\,
	combout => \counter_3|Add1~42_combout\,
	cout => \counter_3|Add1~43\);

-- Location: FF_X17_Y15_N19
\counter_3|clks[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|Add1~42_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clks\(21));

-- Location: LCCOMB_X17_Y15_N20
\counter_3|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~44_combout\ = (\counter_3|clks\(22) & (\counter_3|Add1~43\ $ (GND))) # (!\counter_3|clks\(22) & (!\counter_3|Add1~43\ & VCC))
-- \counter_3|Add1~45\ = CARRY((\counter_3|clks\(22) & !\counter_3|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_3|clks\(22),
	datad => VCC,
	cin => \counter_3|Add1~43\,
	combout => \counter_3|Add1~44_combout\,
	cout => \counter_3|Add1~45\);

-- Location: FF_X17_Y15_N21
\counter_3|clks[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|Add1~44_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clks\(22));

-- Location: LCCOMB_X17_Y15_N22
\counter_3|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Add1~46_combout\ = \counter_3|clks\(23) $ (\counter_3|Add1~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|clks\(23),
	cin => \counter_3|Add1~45\,
	combout => \counter_3|Add1~46_combout\);

-- Location: FF_X17_Y15_N23
\counter_3|clks[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|Add1~46_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clks\(23));

-- Location: LCCOMB_X16_Y15_N8
\counter_3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Equal0~0_combout\ = (!\counter_3|clks\(23) & (!\counter_3|clks\(21) & (!\counter_3|clks\(22) & !\counter_3|clks\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|clks\(23),
	datab => \counter_3|clks\(21),
	datac => \counter_3|clks\(22),
	datad => \counter_3|clks\(20),
	combout => \counter_3|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y15_N28
\counter_3|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Equal0~2_combout\ = (!\counter_3|clks\(15) & (!\counter_3|clks\(13) & (\counter_3|clks\(14) & !\counter_3|clks\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|clks\(15),
	datab => \counter_3|clks\(13),
	datac => \counter_3|clks\(14),
	datad => \counter_3|clks\(12),
	combout => \counter_3|Equal0~2_combout\);

-- Location: LCCOMB_X17_Y15_N26
\counter_3|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Equal0~1_combout\ = (\counter_3|clks\(19) & (\counter_3|clks\(16) & (\counter_3|clks\(17) & \counter_3|clks\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|clks\(19),
	datab => \counter_3|clks\(16),
	datac => \counter_3|clks\(17),
	datad => \counter_3|clks\(18),
	combout => \counter_3|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y16_N0
\counter_3|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Equal0~3_combout\ = (\counter_3|clks\(9) & (!\counter_3|clks\(10) & (!\counter_3|clks\(11) & !\counter_3|clks\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|clks\(9),
	datab => \counter_3|clks\(10),
	datac => \counter_3|clks\(11),
	datad => \counter_3|clks\(8),
	combout => \counter_3|Equal0~3_combout\);

-- Location: LCCOMB_X17_Y15_N30
\counter_3|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Equal0~4_combout\ = (\counter_3|Equal0~0_combout\ & (\counter_3|Equal0~2_combout\ & (\counter_3|Equal0~1_combout\ & \counter_3|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|Equal0~0_combout\,
	datab => \counter_3|Equal0~2_combout\,
	datac => \counter_3|Equal0~1_combout\,
	datad => \counter_3|Equal0~3_combout\,
	combout => \counter_3|Equal0~4_combout\);

-- Location: LCCOMB_X17_Y16_N2
\counter_3|clks~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|clks~6_combout\ = (\counter_3|Add1~12_combout\ & (((!\counter_3|Equal0~6_combout\) # (!\counter_3|Equal0~5_combout\)) # (!\counter_3|Equal0~4_combout\)))

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
	combout => \counter_3|clks~6_combout\);

-- Location: FF_X17_Y16_N3
\counter_3|clks[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|clks~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|clks\(6));

-- Location: LCCOMB_X17_Y16_N4
\counter_3|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Equal0~5_combout\ = (!\counter_3|clks\(6) & (\counter_3|clks\(5) & (!\counter_3|clks\(7) & \counter_3|clks\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|clks\(6),
	datab => \counter_3|clks\(5),
	datac => \counter_3|clks\(7),
	datad => \counter_3|clks\(4),
	combout => \counter_3|Equal0~5_combout\);

-- Location: LCCOMB_X14_Y15_N2
\counter_3|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|Equal0~7_combout\ = (\counter_3|Equal0~5_combout\ & (\counter_3|Equal0~4_combout\ & \counter_3|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|Equal0~5_combout\,
	datab => \counter_3|Equal0~4_combout\,
	datad => \counter_3|Equal0~6_combout\,
	combout => \counter_3|Equal0~7_combout\);

-- Location: FF_X14_Y15_N1
\counter_3|digit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|digit[0]~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \counter_3|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|digit\(0));

-- Location: LCCOMB_X14_Y15_N12
\counter_3|digit[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|digit[2]~1_combout\ = \counter_3|digit\(2) $ (((\counter_3|digit\(1) & (\counter_3|Equal0~7_combout\ & \counter_3|digit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|digit\(1),
	datab => \counter_3|Equal0~7_combout\,
	datac => \counter_3|digit\(2),
	datad => \counter_3|digit\(0),
	combout => \counter_3|digit[2]~1_combout\);

-- Location: FF_X14_Y15_N13
\counter_3|digit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|digit[2]~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|digit\(2));

-- Location: LCCOMB_X14_Y15_N30
\counter_3|digit~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|digit~2_combout\ = (\counter_3|digit\(1) & (\counter_3|digit\(3) $ (((\counter_3|digit\(0) & \counter_3|digit\(2)))))) # (!\counter_3|digit\(1) & (\counter_3|digit\(3) & ((\counter_3|digit\(2)) # (!\counter_3|digit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|digit\(1),
	datab => \counter_3|digit\(0),
	datac => \counter_3|digit\(3),
	datad => \counter_3|digit\(2),
	combout => \counter_3|digit~2_combout\);

-- Location: FF_X14_Y15_N31
\counter_3|digit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|digit~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \counter_3|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|digit\(3));

-- Location: LCCOMB_X14_Y15_N26
\counter_3|digit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_3|digit~0_combout\ = (\counter_3|digit\(0) & (!\counter_3|digit\(1) & ((\counter_3|digit\(2)) # (!\counter_3|digit\(3))))) # (!\counter_3|digit\(0) & (((\counter_3|digit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|digit\(3),
	datab => \counter_3|digit\(0),
	datac => \counter_3|digit\(1),
	datad => \counter_3|digit\(2),
	combout => \counter_3|digit~0_combout\);

-- Location: FF_X14_Y15_N27
\counter_3|digit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_3|digit~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \counter_3|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_3|digit\(1));

-- Location: LCCOMB_X24_Y20_N8
\counter_4|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|Add1~0_combout\ = \counter_4|clks\(0) $ (VCC)
-- \counter_4|Add1~1\ = CARRY(\counter_4|clks\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_4|clks\(0),
	datad => VCC,
	combout => \counter_4|Add1~0_combout\,
	cout => \counter_4|Add1~1\);

-- Location: FF_X24_Y20_N9
\counter_4|clks[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_4|Add1~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4|clks\(0));

-- Location: LCCOMB_X24_Y20_N10
\counter_4|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|Add1~2_combout\ = (\counter_4|clks\(1) & (!\counter_4|Add1~1\)) # (!\counter_4|clks\(1) & ((\counter_4|Add1~1\) # (GND)))
-- \counter_4|Add1~3\ = CARRY((!\counter_4|Add1~1\) # (!\counter_4|clks\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4|clks\(1),
	datad => VCC,
	cin => \counter_4|Add1~1\,
	combout => \counter_4|Add1~2_combout\,
	cout => \counter_4|Add1~3\);

-- Location: FF_X24_Y20_N11
\counter_4|clks[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_4|Add1~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4|clks\(1));

-- Location: LCCOMB_X24_Y20_N12
\counter_4|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|Add1~4_combout\ = (\counter_4|clks\(2) & (\counter_4|Add1~3\ $ (GND))) # (!\counter_4|clks\(2) & (!\counter_4|Add1~3\ & VCC))
-- \counter_4|Add1~5\ = CARRY((\counter_4|clks\(2) & !\counter_4|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4|clks\(2),
	datad => VCC,
	cin => \counter_4|Add1~3\,
	combout => \counter_4|Add1~4_combout\,
	cout => \counter_4|Add1~5\);

-- Location: FF_X24_Y20_N13
\counter_4|clks[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_4|Add1~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4|clks\(2));

-- Location: LCCOMB_X24_Y20_N14
\counter_4|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|Add1~6_combout\ = (\counter_4|clks\(3) & (!\counter_4|Add1~5\)) # (!\counter_4|clks\(3) & ((\counter_4|Add1~5\) # (GND)))
-- \counter_4|Add1~7\ = CARRY((!\counter_4|Add1~5\) # (!\counter_4|clks\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_4|clks\(3),
	datad => VCC,
	cin => \counter_4|Add1~5\,
	combout => \counter_4|Add1~6_combout\,
	cout => \counter_4|Add1~7\);

-- Location: FF_X24_Y20_N15
\counter_4|clks[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_4|Add1~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4|clks\(3));

-- Location: LCCOMB_X24_Y20_N4
\counter_4|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|Equal0~6_combout\ = (\counter_4|clks\(2) & (\counter_4|clks\(3) & (\counter_4|clks\(0) & \counter_4|clks\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4|clks\(2),
	datab => \counter_4|clks\(3),
	datac => \counter_4|clks\(0),
	datad => \counter_4|clks\(1),
	combout => \counter_4|Equal0~6_combout\);

-- Location: LCCOMB_X24_Y20_N16
\counter_4|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|Add1~8_combout\ = (\counter_4|clks\(4) & (\counter_4|Add1~7\ $ (GND))) # (!\counter_4|clks\(4) & (!\counter_4|Add1~7\ & VCC))
-- \counter_4|Add1~9\ = CARRY((\counter_4|clks\(4) & !\counter_4|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_4|clks\(4),
	datad => VCC,
	cin => \counter_4|Add1~7\,
	combout => \counter_4|Add1~8_combout\,
	cout => \counter_4|Add1~9\);

-- Location: FF_X24_Y20_N17
\counter_4|clks[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_4|Add1~8_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4|clks\(4));

-- Location: LCCOMB_X24_Y20_N18
\counter_4|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|Add1~10_combout\ = (\counter_4|clks\(5) & (!\counter_4|Add1~9\)) # (!\counter_4|clks\(5) & ((\counter_4|Add1~9\) # (GND)))
-- \counter_4|Add1~11\ = CARRY((!\counter_4|Add1~9\) # (!\counter_4|clks\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_4|clks\(5),
	datad => VCC,
	cin => \counter_4|Add1~9\,
	combout => \counter_4|Add1~10_combout\,
	cout => \counter_4|Add1~11\);

-- Location: FF_X24_Y20_N19
\counter_4|clks[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_4|Add1~10_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4|clks\(5));

-- Location: LCCOMB_X24_Y20_N20
\counter_4|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|Add1~12_combout\ = (\counter_4|clks\(6) & (\counter_4|Add1~11\ $ (GND))) # (!\counter_4|clks\(6) & (!\counter_4|Add1~11\ & VCC))
-- \counter_4|Add1~13\ = CARRY((\counter_4|clks\(6) & !\counter_4|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_4|clks\(6),
	datad => VCC,
	cin => \counter_4|Add1~11\,
	combout => \counter_4|Add1~12_combout\,
	cout => \counter_4|Add1~13\);

-- Location: FF_X24_Y20_N21
\counter_4|clks[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_4|Add1~12_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4|clks\(6));

-- Location: LCCOMB_X24_Y20_N22
\counter_4|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|Add1~14_combout\ = (\counter_4|clks\(7) & (!\counter_4|Add1~13\)) # (!\counter_4|clks\(7) & ((\counter_4|Add1~13\) # (GND)))
-- \counter_4|Add1~15\ = CARRY((!\counter_4|Add1~13\) # (!\counter_4|clks\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4|clks\(7),
	datad => VCC,
	cin => \counter_4|Add1~13\,
	combout => \counter_4|Add1~14_combout\,
	cout => \counter_4|Add1~15\);

-- Location: LCCOMB_X24_Y20_N2
\counter_4|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|Equal0~5_combout\ = (!\counter_4|clks\(7) & (\counter_4|clks\(5) & (\counter_4|clks\(6) & \counter_4|clks\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4|clks\(7),
	datab => \counter_4|clks\(5),
	datac => \counter_4|clks\(6),
	datad => \counter_4|clks\(4),
	combout => \counter_4|Equal0~5_combout\);

-- Location: LCCOMB_X23_Y20_N14
\counter_4|clks~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|clks~9_combout\ = (\counter_4|Add1~14_combout\ & (((!\counter_4|Equal0~5_combout\) # (!\counter_4|Equal0~4_combout\)) # (!\counter_4|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4|Equal0~6_combout\,
	datab => \counter_4|Equal0~4_combout\,
	datac => \counter_4|Add1~14_combout\,
	datad => \counter_4|Equal0~5_combout\,
	combout => \counter_4|clks~9_combout\);

-- Location: FF_X23_Y20_N15
\counter_4|clks[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_4|clks~9_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4|clks\(7));

-- Location: LCCOMB_X24_Y20_N24
\counter_4|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|Add1~16_combout\ = (\counter_4|clks\(8) & (\counter_4|Add1~15\ $ (GND))) # (!\counter_4|clks\(8) & (!\counter_4|Add1~15\ & VCC))
-- \counter_4|Add1~17\ = CARRY((\counter_4|clks\(8) & !\counter_4|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_4|clks\(8),
	datad => VCC,
	cin => \counter_4|Add1~15\,
	combout => \counter_4|Add1~16_combout\,
	cout => \counter_4|Add1~17\);

-- Location: FF_X24_Y20_N25
\counter_4|clks[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_4|Add1~16_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4|clks\(8));

-- Location: LCCOMB_X24_Y20_N26
\counter_4|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|Add1~18_combout\ = (\counter_4|clks\(9) & (!\counter_4|Add1~17\)) # (!\counter_4|clks\(9) & ((\counter_4|Add1~17\) # (GND)))
-- \counter_4|Add1~19\ = CARRY((!\counter_4|Add1~17\) # (!\counter_4|clks\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4|clks\(9),
	datad => VCC,
	cin => \counter_4|Add1~17\,
	combout => \counter_4|Add1~18_combout\,
	cout => \counter_4|Add1~19\);

-- Location: LCCOMB_X23_Y20_N12
\counter_4|clks~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|clks~8_combout\ = (\counter_4|Add1~18_combout\ & (((!\counter_4|Equal0~5_combout\) # (!\counter_4|Equal0~4_combout\)) # (!\counter_4|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4|Equal0~6_combout\,
	datab => \counter_4|Add1~18_combout\,
	datac => \counter_4|Equal0~4_combout\,
	datad => \counter_4|Equal0~5_combout\,
	combout => \counter_4|clks~8_combout\);

-- Location: FF_X23_Y20_N13
\counter_4|clks[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_4|clks~8_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4|clks\(9));

-- Location: LCCOMB_X24_Y20_N28
\counter_4|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|Add1~20_combout\ = (\counter_4|clks\(10) & (\counter_4|Add1~19\ $ (GND))) # (!\counter_4|clks\(10) & (!\counter_4|Add1~19\ & VCC))
-- \counter_4|Add1~21\ = CARRY((\counter_4|clks\(10) & !\counter_4|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4|clks\(10),
	datad => VCC,
	cin => \counter_4|Add1~19\,
	combout => \counter_4|Add1~20_combout\,
	cout => \counter_4|Add1~21\);

-- Location: LCCOMB_X23_Y20_N2
\counter_4|clks~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|clks~7_combout\ = (\counter_4|Add1~20_combout\ & (((!\counter_4|Equal0~5_combout\) # (!\counter_4|Equal0~4_combout\)) # (!\counter_4|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4|Equal0~6_combout\,
	datab => \counter_4|Add1~20_combout\,
	datac => \counter_4|Equal0~4_combout\,
	datad => \counter_4|Equal0~5_combout\,
	combout => \counter_4|clks~7_combout\);

-- Location: FF_X23_Y20_N3
\counter_4|clks[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_4|clks~7_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4|clks\(10));

-- Location: LCCOMB_X24_Y20_N30
\counter_4|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|Add1~22_combout\ = (\counter_4|clks\(11) & (!\counter_4|Add1~21\)) # (!\counter_4|clks\(11) & ((\counter_4|Add1~21\) # (GND)))
-- \counter_4|Add1~23\ = CARRY((!\counter_4|Add1~21\) # (!\counter_4|clks\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4|clks\(11),
	datad => VCC,
	cin => \counter_4|Add1~21\,
	combout => \counter_4|Add1~22_combout\,
	cout => \counter_4|Add1~23\);

-- Location: FF_X24_Y20_N31
\counter_4|clks[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_4|Add1~22_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4|clks\(11));

-- Location: LCCOMB_X24_Y20_N0
\counter_4|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|Equal0~3_combout\ = (\counter_4|clks\(9) & (!\counter_4|clks\(8) & (!\counter_4|clks\(11) & \counter_4|clks\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4|clks\(9),
	datab => \counter_4|clks\(8),
	datac => \counter_4|clks\(11),
	datad => \counter_4|clks\(10),
	combout => \counter_4|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y19_N0
\counter_4|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|Add1~24_combout\ = (\counter_4|clks\(12) & (\counter_4|Add1~23\ $ (GND))) # (!\counter_4|clks\(12) & (!\counter_4|Add1~23\ & VCC))
-- \counter_4|Add1~25\ = CARRY((\counter_4|clks\(12) & !\counter_4|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_4|clks\(12),
	datad => VCC,
	cin => \counter_4|Add1~23\,
	combout => \counter_4|Add1~24_combout\,
	cout => \counter_4|Add1~25\);

-- Location: LCCOMB_X23_Y20_N16
\counter_4|clks~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|clks~6_combout\ = (\counter_4|Add1~24_combout\ & (((!\counter_4|Equal0~5_combout\) # (!\counter_4|Equal0~4_combout\)) # (!\counter_4|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4|Equal0~6_combout\,
	datab => \counter_4|Equal0~4_combout\,
	datac => \counter_4|Add1~24_combout\,
	datad => \counter_4|Equal0~5_combout\,
	combout => \counter_4|clks~6_combout\);

-- Location: FF_X23_Y20_N17
\counter_4|clks[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_4|clks~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4|clks\(12));

-- Location: LCCOMB_X24_Y19_N2
\counter_4|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|Add1~26_combout\ = (\counter_4|clks\(13) & (!\counter_4|Add1~25\)) # (!\counter_4|clks\(13) & ((\counter_4|Add1~25\) # (GND)))
-- \counter_4|Add1~27\ = CARRY((!\counter_4|Add1~25\) # (!\counter_4|clks\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_4|clks\(13),
	datad => VCC,
	cin => \counter_4|Add1~25\,
	combout => \counter_4|Add1~26_combout\,
	cout => \counter_4|Add1~27\);

-- Location: FF_X24_Y19_N3
\counter_4|clks[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_4|Add1~26_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4|clks\(13));

-- Location: LCCOMB_X24_Y19_N4
\counter_4|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|Add1~28_combout\ = (\counter_4|clks\(14) & (\counter_4|Add1~27\ $ (GND))) # (!\counter_4|clks\(14) & (!\counter_4|Add1~27\ & VCC))
-- \counter_4|Add1~29\ = CARRY((\counter_4|clks\(14) & !\counter_4|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_4|clks\(14),
	datad => VCC,
	cin => \counter_4|Add1~27\,
	combout => \counter_4|Add1~28_combout\,
	cout => \counter_4|Add1~29\);

-- Location: FF_X24_Y19_N5
\counter_4|clks[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_4|Add1~28_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4|clks\(14));

-- Location: LCCOMB_X24_Y19_N6
\counter_4|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|Add1~30_combout\ = (\counter_4|clks\(15) & (!\counter_4|Add1~29\)) # (!\counter_4|clks\(15) & ((\counter_4|Add1~29\) # (GND)))
-- \counter_4|Add1~31\ = CARRY((!\counter_4|Add1~29\) # (!\counter_4|clks\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4|clks\(15),
	datad => VCC,
	cin => \counter_4|Add1~29\,
	combout => \counter_4|Add1~30_combout\,
	cout => \counter_4|Add1~31\);

-- Location: LCCOMB_X23_Y20_N30
\counter_4|clks~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|clks~5_combout\ = (\counter_4|Add1~30_combout\ & (((!\counter_4|Equal0~5_combout\) # (!\counter_4|Equal0~4_combout\)) # (!\counter_4|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4|Equal0~6_combout\,
	datab => \counter_4|Equal0~4_combout\,
	datac => \counter_4|Add1~30_combout\,
	datad => \counter_4|Equal0~5_combout\,
	combout => \counter_4|clks~5_combout\);

-- Location: FF_X23_Y20_N31
\counter_4|clks[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_4|clks~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4|clks\(15));

-- Location: LCCOMB_X24_Y19_N28
\counter_4|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|Equal0~2_combout\ = (\counter_4|clks\(15) & (\counter_4|clks\(12) & (!\counter_4|clks\(14) & !\counter_4|clks\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4|clks\(15),
	datab => \counter_4|clks\(12),
	datac => \counter_4|clks\(14),
	datad => \counter_4|clks\(13),
	combout => \counter_4|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y19_N8
\counter_4|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|Add1~32_combout\ = (\counter_4|clks\(16) & (\counter_4|Add1~31\ $ (GND))) # (!\counter_4|clks\(16) & (!\counter_4|Add1~31\ & VCC))
-- \counter_4|Add1~33\ = CARRY((\counter_4|clks\(16) & !\counter_4|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_4|clks\(16),
	datad => VCC,
	cin => \counter_4|Add1~31\,
	combout => \counter_4|Add1~32_combout\,
	cout => \counter_4|Add1~33\);

-- Location: FF_X24_Y19_N9
\counter_4|clks[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_4|Add1~32_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4|clks\(16));

-- Location: LCCOMB_X24_Y19_N10
\counter_4|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|Add1~34_combout\ = (\counter_4|clks\(17) & (!\counter_4|Add1~33\)) # (!\counter_4|clks\(17) & ((\counter_4|Add1~33\) # (GND)))
-- \counter_4|Add1~35\ = CARRY((!\counter_4|Add1~33\) # (!\counter_4|clks\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4|clks\(17),
	datad => VCC,
	cin => \counter_4|Add1~33\,
	combout => \counter_4|Add1~34_combout\,
	cout => \counter_4|Add1~35\);

-- Location: FF_X24_Y19_N11
\counter_4|clks[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_4|Add1~34_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4|clks\(17));

-- Location: LCCOMB_X24_Y19_N12
\counter_4|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|Add1~36_combout\ = (\counter_4|clks\(18) & (\counter_4|Add1~35\ $ (GND))) # (!\counter_4|clks\(18) & (!\counter_4|Add1~35\ & VCC))
-- \counter_4|Add1~37\ = CARRY((\counter_4|clks\(18) & !\counter_4|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4|clks\(18),
	datad => VCC,
	cin => \counter_4|Add1~35\,
	combout => \counter_4|Add1~36_combout\,
	cout => \counter_4|Add1~37\);

-- Location: FF_X24_Y19_N13
\counter_4|clks[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_4|Add1~36_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4|clks\(18));

-- Location: LCCOMB_X24_Y19_N14
\counter_4|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|Add1~38_combout\ = (\counter_4|clks\(19) & (!\counter_4|Add1~37\)) # (!\counter_4|clks\(19) & ((\counter_4|Add1~37\) # (GND)))
-- \counter_4|Add1~39\ = CARRY((!\counter_4|Add1~37\) # (!\counter_4|clks\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4|clks\(19),
	datad => VCC,
	cin => \counter_4|Add1~37\,
	combout => \counter_4|Add1~38_combout\,
	cout => \counter_4|Add1~39\);

-- Location: LCCOMB_X23_Y20_N4
\counter_4|clks~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|clks~4_combout\ = (\counter_4|Add1~38_combout\ & (((!\counter_4|Equal0~5_combout\) # (!\counter_4|Equal0~4_combout\)) # (!\counter_4|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4|Equal0~6_combout\,
	datab => \counter_4|Equal0~4_combout\,
	datac => \counter_4|Add1~38_combout\,
	datad => \counter_4|Equal0~5_combout\,
	combout => \counter_4|clks~4_combout\);

-- Location: FF_X23_Y20_N5
\counter_4|clks[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_4|clks~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4|clks\(19));

-- Location: LCCOMB_X24_Y19_N26
\counter_4|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|Equal0~1_combout\ = (!\counter_4|clks\(18) & (!\counter_4|clks\(16) & (\counter_4|clks\(19) & !\counter_4|clks\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4|clks\(18),
	datab => \counter_4|clks\(16),
	datac => \counter_4|clks\(19),
	datad => \counter_4|clks\(17),
	combout => \counter_4|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y19_N16
\counter_4|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|Add1~40_combout\ = (\counter_4|clks\(20) & (\counter_4|Add1~39\ $ (GND))) # (!\counter_4|clks\(20) & (!\counter_4|Add1~39\ & VCC))
-- \counter_4|Add1~41\ = CARRY((\counter_4|clks\(20) & !\counter_4|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_4|clks\(20),
	datad => VCC,
	cin => \counter_4|Add1~39\,
	combout => \counter_4|Add1~40_combout\,
	cout => \counter_4|Add1~41\);

-- Location: LCCOMB_X23_Y20_N26
\counter_4|clks~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|clks~11_combout\ = (\counter_4|Add1~40_combout\ & (((!\counter_4|Equal0~5_combout\) # (!\counter_4|Equal0~4_combout\)) # (!\counter_4|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4|Equal0~6_combout\,
	datab => \counter_4|Equal0~4_combout\,
	datac => \counter_4|Add1~40_combout\,
	datad => \counter_4|Equal0~5_combout\,
	combout => \counter_4|clks~11_combout\);

-- Location: FF_X23_Y20_N27
\counter_4|clks[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_4|clks~11_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4|clks\(20));

-- Location: LCCOMB_X24_Y19_N18
\counter_4|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|Add1~42_combout\ = (\counter_4|clks\(21) & (!\counter_4|Add1~41\)) # (!\counter_4|clks\(21) & ((\counter_4|Add1~41\) # (GND)))
-- \counter_4|Add1~43\ = CARRY((!\counter_4|Add1~41\) # (!\counter_4|clks\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_4|clks\(21),
	datad => VCC,
	cin => \counter_4|Add1~41\,
	combout => \counter_4|Add1~42_combout\,
	cout => \counter_4|Add1~43\);

-- Location: FF_X24_Y19_N19
\counter_4|clks[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_4|Add1~42_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4|clks\(21));

-- Location: LCCOMB_X24_Y19_N20
\counter_4|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|Add1~44_combout\ = (\counter_4|clks\(22) & (\counter_4|Add1~43\ $ (GND))) # (!\counter_4|clks\(22) & (!\counter_4|Add1~43\ & VCC))
-- \counter_4|Add1~45\ = CARRY((\counter_4|clks\(22) & !\counter_4|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter_4|clks\(22),
	datad => VCC,
	cin => \counter_4|Add1~43\,
	combout => \counter_4|Add1~44_combout\,
	cout => \counter_4|Add1~45\);

-- Location: FF_X24_Y19_N21
\counter_4|clks[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_4|Add1~44_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4|clks\(22));

-- Location: LCCOMB_X24_Y19_N22
\counter_4|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|Add1~46_combout\ = \counter_4|clks\(23) $ (\counter_4|Add1~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4|clks\(23),
	cin => \counter_4|Add1~45\,
	combout => \counter_4|Add1~46_combout\);

-- Location: LCCOMB_X23_Y20_N8
\counter_4|clks~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|clks~10_combout\ = (\counter_4|Add1~46_combout\ & (((!\counter_4|Equal0~5_combout\) # (!\counter_4|Equal0~4_combout\)) # (!\counter_4|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4|Equal0~6_combout\,
	datab => \counter_4|Equal0~4_combout\,
	datac => \counter_4|Add1~46_combout\,
	datad => \counter_4|Equal0~5_combout\,
	combout => \counter_4|clks~10_combout\);

-- Location: FF_X23_Y20_N9
\counter_4|clks[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_4|clks~10_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4|clks\(23));

-- Location: LCCOMB_X24_Y19_N24
\counter_4|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|Equal0~0_combout\ = (\counter_4|clks\(23) & (!\counter_4|clks\(22) & (\counter_4|clks\(20) & !\counter_4|clks\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4|clks\(23),
	datab => \counter_4|clks\(22),
	datac => \counter_4|clks\(20),
	datad => \counter_4|clks\(21),
	combout => \counter_4|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y19_N30
\counter_4|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|Equal0~4_combout\ = (\counter_4|Equal0~3_combout\ & (\counter_4|Equal0~2_combout\ & (\counter_4|Equal0~1_combout\ & \counter_4|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4|Equal0~3_combout\,
	datab => \counter_4|Equal0~2_combout\,
	datac => \counter_4|Equal0~1_combout\,
	datad => \counter_4|Equal0~0_combout\,
	combout => \counter_4|Equal0~4_combout\);

-- Location: LCCOMB_X23_Y20_N0
\counter_4|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|Equal0~7_combout\ = (\counter_4|Equal0~6_combout\ & (\counter_4|Equal0~4_combout\ & \counter_4|Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4|Equal0~6_combout\,
	datab => \counter_4|Equal0~4_combout\,
	datad => \counter_4|Equal0~5_combout\,
	combout => \counter_4|Equal0~7_combout\);

-- Location: LCCOMB_X23_Y20_N24
\counter_4|digit[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|digit[0]~3_combout\ = !\counter_4|digit\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_4|digit\(0),
	combout => \counter_4|digit[0]~3_combout\);

-- Location: FF_X23_Y20_N25
\counter_4|digit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_4|digit[0]~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \counter_4|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4|digit\(0));

-- Location: LCCOMB_X23_Y20_N28
\counter_4|digit[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|digit[2]~1_combout\ = \counter_4|digit\(2) $ (((\counter_4|digit\(1) & (\counter_4|Equal0~7_combout\ & \counter_4|digit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4|digit\(1),
	datab => \counter_4|Equal0~7_combout\,
	datac => \counter_4|digit\(2),
	datad => \counter_4|digit\(0),
	combout => \counter_4|digit[2]~1_combout\);

-- Location: FF_X23_Y20_N29
\counter_4|digit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_4|digit[2]~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4|digit\(2));

-- Location: LCCOMB_X23_Y20_N22
\counter_4|digit~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|digit~2_combout\ = (\counter_4|digit\(1) & (\counter_4|digit\(3) $ (((\counter_4|digit\(2) & \counter_4|digit\(0)))))) # (!\counter_4|digit\(1) & (\counter_4|digit\(3) & ((\counter_4|digit\(2)) # (!\counter_4|digit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4|digit\(1),
	datab => \counter_4|digit\(2),
	datac => \counter_4|digit\(3),
	datad => \counter_4|digit\(0),
	combout => \counter_4|digit~2_combout\);

-- Location: FF_X23_Y20_N23
\counter_4|digit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_4|digit~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \counter_4|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4|digit\(3));

-- Location: LCCOMB_X23_Y20_N10
\counter_4|digit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4|digit~0_combout\ = (\counter_4|digit\(1) & (((!\counter_4|digit\(0))))) # (!\counter_4|digit\(1) & (\counter_4|digit\(0) & ((\counter_4|digit\(2)) # (!\counter_4|digit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4|digit\(3),
	datab => \counter_4|digit\(2),
	datac => \counter_4|digit\(1),
	datad => \counter_4|digit\(0),
	combout => \counter_4|digit~0_combout\);

-- Location: FF_X23_Y20_N11
\counter_4|digit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_4|clock_10KHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter_4|digit~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \counter_4|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4|digit\(1));

-- Location: LCCOMB_X17_Y20_N6
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (digit_index(1) & ((\Mux2~0_combout\ & ((\counter_4|digit\(1)))) # (!\Mux2~0_combout\ & (\counter_3|digit\(1))))) # (!digit_index(1) & (\Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit_index(1),
	datab => \Mux2~0_combout\,
	datac => \counter_3|digit\(1),
	datad => \counter_4|digit\(1),
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X17_Y20_N18
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (digit_index(1) & (((digit_index(0))))) # (!digit_index(1) & ((digit_index(0) & (\counter_2|digit\(3))) # (!digit_index(0) & ((\counter_1|digit\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_2|digit\(3),
	datab => \counter_1|digit\(3),
	datac => digit_index(1),
	datad => digit_index(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X17_Y20_N20
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & (((\counter_4|digit\(3)) # (!digit_index(1))))) # (!\Mux0~0_combout\ & (\counter_3|digit\(3) & (digit_index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_3|digit\(3),
	datab => \Mux0~0_combout\,
	datac => digit_index(1),
	datad => \counter_4|digit\(3),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X17_Y20_N8
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (digit_index(1) & (((digit_index(0))))) # (!digit_index(1) & ((digit_index(0) & (\counter_2|digit\(0))) # (!digit_index(0) & ((\counter_1|digit\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit_index(1),
	datab => \counter_2|digit\(0),
	datac => \counter_1|digit\(0),
	datad => digit_index(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X17_Y20_N26
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (digit_index(1) & ((\Mux3~0_combout\ & ((\counter_4|digit\(0)))) # (!\Mux3~0_combout\ & (\counter_3|digit\(0))))) # (!digit_index(1) & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit_index(1),
	datab => \counter_3|digit\(0),
	datac => \Mux3~0_combout\,
	datad => \counter_4|digit\(0),
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X17_Y19_N0
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (digit_index(1) & (((\counter_3|digit\(2)) # (digit_index(0))))) # (!digit_index(1) & (\counter_1|digit\(2) & ((!digit_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_1|digit\(2),
	datab => \counter_3|digit\(2),
	datac => digit_index(1),
	datad => digit_index(0),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X17_Y20_N16
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ & (((\counter_4|digit\(2)) # (!digit_index(0))))) # (!\Mux1~0_combout\ & (\counter_2|digit\(2) & ((digit_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_2|digit\(2),
	datab => \Mux1~0_combout\,
	datac => \counter_4|digit\(2),
	datad => digit_index(0),
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X17_Y20_N14
\rom|rom~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|rom~0_combout\ = (!\Mux2~1_combout\ & (!\Mux0~1_combout\ & (\Mux3~1_combout\ $ (\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux3~1_combout\,
	datad => \Mux1~1_combout\,
	combout => \rom|rom~0_combout\);

-- Location: LCCOMB_X17_Y20_N0
\rom|rom~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|rom~1_combout\ = (!\Mux0~1_combout\ & (\Mux1~1_combout\ & (\Mux2~1_combout\ $ (\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux3~1_combout\,
	datad => \Mux1~1_combout\,
	combout => \rom|rom~1_combout\);

-- Location: LCCOMB_X17_Y20_N2
\rom|rom~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|rom~2_combout\ = (\Mux2~1_combout\ & (!\Mux0~1_combout\ & (!\Mux3~1_combout\ & !\Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux3~1_combout\,
	datad => \Mux1~1_combout\,
	combout => \rom|rom~2_combout\);

-- Location: LCCOMB_X17_Y20_N4
\rom|rom~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|rom~3_combout\ = (!\Mux0~1_combout\ & ((\Mux2~1_combout\ & (\Mux3~1_combout\ & \Mux1~1_combout\)) # (!\Mux2~1_combout\ & (\Mux3~1_combout\ $ (\Mux1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux3~1_combout\,
	datad => \Mux1~1_combout\,
	combout => \rom|rom~3_combout\);

-- Location: LCCOMB_X17_Y20_N22
\rom|rom~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|rom~4_combout\ = (\Mux2~1_combout\ & (!\Mux0~1_combout\ & (\Mux3~1_combout\))) # (!\Mux2~1_combout\ & ((\Mux1~1_combout\ & (!\Mux0~1_combout\)) # (!\Mux1~1_combout\ & ((\Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux3~1_combout\,
	datad => \Mux1~1_combout\,
	combout => \rom|rom~4_combout\);

-- Location: LCCOMB_X17_Y20_N24
\rom|rom~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|rom~5_combout\ = (!\Mux0~1_combout\ & ((\Mux2~1_combout\ & ((\Mux3~1_combout\) # (!\Mux1~1_combout\))) # (!\Mux2~1_combout\ & (\Mux3~1_combout\ & !\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux3~1_combout\,
	datad => \Mux1~1_combout\,
	combout => \rom|rom~5_combout\);

-- Location: LCCOMB_X17_Y20_N10
\rom|rom~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|rom~6_combout\ = (\Mux0~1_combout\) # ((\Mux2~1_combout\ & ((!\Mux1~1_combout\) # (!\Mux3~1_combout\))) # (!\Mux2~1_combout\ & ((\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux3~1_combout\,
	datad => \Mux1~1_combout\,
	combout => \rom|rom~6_combout\);

-- Location: LCCOMB_X19_Y19_N6
\shift_reg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift_reg[1]~1_combout\ = !shift_reg(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => shift_reg(0),
	combout => \shift_reg[1]~1_combout\);

-- Location: FF_X19_Y19_N7
\shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shift_reg[1]~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_reg(1));

-- Location: LCCOMB_X19_Y19_N0
\shift_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift_reg[2]~feeder_combout\ = shift_reg(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => shift_reg(1),
	combout => \shift_reg[2]~feeder_combout\);

-- Location: FF_X19_Y19_N1
\shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shift_reg[2]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_reg(2));

-- Location: LCCOMB_X19_Y19_N2
\shift_reg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift_reg[3]~feeder_combout\ = shift_reg(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => shift_reg(2),
	combout => \shift_reg[3]~feeder_combout\);

-- Location: FF_X19_Y19_N3
\shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shift_reg[3]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_reg(3));

-- Location: LCCOMB_X19_Y19_N12
\shift_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift_reg[0]~0_combout\ = !shift_reg(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => shift_reg(3),
	combout => \shift_reg[0]~0_combout\);

-- Location: FF_X19_Y19_N13
\shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shift_reg[0]~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_reg(0));
END structure;


