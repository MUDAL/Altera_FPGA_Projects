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

-- DATE "02/22/2024 19:03:48"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	distance_sensor IS
    PORT (
	rst_n : IN std_logic;
	clk : IN std_logic;
	echo : IN std_logic;
	trig : OUT std_logic;
	dp : OUT std_logic;
	seg : OUT std_logic_vector(6 DOWNTO 0);
	sel : OUT std_logic_vector(3 DOWNTO 0)
	);
END distance_sensor;

-- Design Ports Information
-- trig	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dp	=>  Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
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
-- clk	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst_n	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- echo	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF distance_sensor IS
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
SIGNAL ww_echo : std_logic;
SIGNAL ww_trig : std_logic;
SIGNAL ww_dp : std_logic;
SIGNAL ww_seg : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \trig~output_o\ : std_logic;
SIGNAL \dp~output_o\ : std_logic;
SIGNAL \seg[0]~output_o\ : std_logic;
SIGNAL \seg[1]~output_o\ : std_logic;
SIGNAL \seg[2]~output_o\ : std_logic;
SIGNAL \seg[3]~output_o\ : std_logic;
SIGNAL \seg[4]~output_o\ : std_logic;
SIGNAL \seg[5]~output_o\ : std_logic;
SIGNAL \seg[6]~output_o\ : std_logic;
SIGNAL \sel[0]~output_o\ : std_logic;
SIGNAL \sel[1]~output_o\ : std_logic;
SIGNAL \sel[2]~output_o\ : std_logic;
SIGNAL \sel[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \hcsr04_inst|Selector7~0_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \hcsr04_inst|done_reg~q\ : std_logic;
SIGNAL \hcsr04_inst|clks[0]~6_combout\ : std_logic;
SIGNAL \hcsr04_inst|clks[0]~7\ : std_logic;
SIGNAL \hcsr04_inst|clks[1]~8_combout\ : std_logic;
SIGNAL \hcsr04_inst|clks[1]~9\ : std_logic;
SIGNAL \hcsr04_inst|clks[2]~10_combout\ : std_logic;
SIGNAL \hcsr04_inst|clks[2]~11\ : std_logic;
SIGNAL \hcsr04_inst|clks[3]~12_combout\ : std_logic;
SIGNAL \hcsr04_inst|clks[3]~13\ : std_logic;
SIGNAL \hcsr04_inst|clks[4]~14_combout\ : std_logic;
SIGNAL \hcsr04_inst|clks[4]~15\ : std_logic;
SIGNAL \hcsr04_inst|clks[5]~16_combout\ : std_logic;
SIGNAL \hcsr04_inst|micro_clks[15]~0_combout\ : std_logic;
SIGNAL \echo~input_o\ : std_logic;
SIGNAL \hcsr04_inst|new_io_reg~0_combout\ : std_logic;
SIGNAL \hcsr04_inst|new_io_reg~q\ : std_logic;
SIGNAL \hcsr04_inst|old_io_reg~0_combout\ : std_logic;
SIGNAL \hcsr04_inst|old_io_reg~q\ : std_logic;
SIGNAL \hcsr04_inst|Selector3~0_combout\ : std_logic;
SIGNAL \hcsr04_inst|Selector3~1_combout\ : std_logic;
SIGNAL \hcsr04_inst|state.ST_MEASURE~q\ : std_logic;
SIGNAL \hcsr04_inst|Selector6~0_combout\ : std_logic;
SIGNAL \hcsr04_inst|micro_clks[15]~1_combout\ : std_logic;
SIGNAL \hcsr04_inst|Add0~0_combout\ : std_logic;
SIGNAL \hcsr04_inst|micro_clks[0]~18_combout\ : std_logic;
SIGNAL \hcsr04_inst|Add0~1\ : std_logic;
SIGNAL \hcsr04_inst|Add0~2_combout\ : std_logic;
SIGNAL \hcsr04_inst|micro_clks[1]~17_combout\ : std_logic;
SIGNAL \hcsr04_inst|Add0~3\ : std_logic;
SIGNAL \hcsr04_inst|Add0~4_combout\ : std_logic;
SIGNAL \hcsr04_inst|micro_clks[2]~16_combout\ : std_logic;
SIGNAL \hcsr04_inst|Add0~5\ : std_logic;
SIGNAL \hcsr04_inst|Add0~6_combout\ : std_logic;
SIGNAL \hcsr04_inst|micro_clks[3]~15_combout\ : std_logic;
SIGNAL \hcsr04_inst|Equal1~3_combout\ : std_logic;
SIGNAL \hcsr04_inst|Add0~7\ : std_logic;
SIGNAL \hcsr04_inst|Add0~8_combout\ : std_logic;
SIGNAL \hcsr04_inst|micro_clks[4]~14_combout\ : std_logic;
SIGNAL \hcsr04_inst|Add0~9\ : std_logic;
SIGNAL \hcsr04_inst|Add0~10_combout\ : std_logic;
SIGNAL \hcsr04_inst|micro_clks[5]~13_combout\ : std_logic;
SIGNAL \hcsr04_inst|Add0~11\ : std_logic;
SIGNAL \hcsr04_inst|Add0~12_combout\ : std_logic;
SIGNAL \hcsr04_inst|micro_clks[6]~12_combout\ : std_logic;
SIGNAL \hcsr04_inst|Add0~13\ : std_logic;
SIGNAL \hcsr04_inst|Add0~14_combout\ : std_logic;
SIGNAL \hcsr04_inst|micro_clks[7]~11_combout\ : std_logic;
SIGNAL \hcsr04_inst|Add0~15\ : std_logic;
SIGNAL \hcsr04_inst|Add0~16_combout\ : std_logic;
SIGNAL \hcsr04_inst|micro_clks[8]~10_combout\ : std_logic;
SIGNAL \hcsr04_inst|Add0~17\ : std_logic;
SIGNAL \hcsr04_inst|Add0~18_combout\ : std_logic;
SIGNAL \hcsr04_inst|micro_clks[9]~9_combout\ : std_logic;
SIGNAL \hcsr04_inst|Add0~19\ : std_logic;
SIGNAL \hcsr04_inst|Add0~20_combout\ : std_logic;
SIGNAL \hcsr04_inst|micro_clks[10]~8_combout\ : std_logic;
SIGNAL \hcsr04_inst|Add0~21\ : std_logic;
SIGNAL \hcsr04_inst|Add0~22_combout\ : std_logic;
SIGNAL \hcsr04_inst|micro_clks[11]~7_combout\ : std_logic;
SIGNAL \hcsr04_inst|Equal1~1_combout\ : std_logic;
SIGNAL \hcsr04_inst|Equal1~2_combout\ : std_logic;
SIGNAL \hcsr04_inst|Add0~23\ : std_logic;
SIGNAL \hcsr04_inst|Add0~24_combout\ : std_logic;
SIGNAL \hcsr04_inst|micro_clks[12]~6_combout\ : std_logic;
SIGNAL \hcsr04_inst|Add0~25\ : std_logic;
SIGNAL \hcsr04_inst|Add0~26_combout\ : std_logic;
SIGNAL \hcsr04_inst|micro_clks[13]~5_combout\ : std_logic;
SIGNAL \hcsr04_inst|Add0~27\ : std_logic;
SIGNAL \hcsr04_inst|Add0~29\ : std_logic;
SIGNAL \hcsr04_inst|Add0~30_combout\ : std_logic;
SIGNAL \hcsr04_inst|micro_clks[15]~3_combout\ : std_logic;
SIGNAL \hcsr04_inst|Equal1~0_combout\ : std_logic;
SIGNAL \hcsr04_inst|Equal1~4_combout\ : std_logic;
SIGNAL \hcsr04_inst|Selector6~1_combout\ : std_logic;
SIGNAL \hcsr04_inst|micro_clks[15]~2_combout\ : std_logic;
SIGNAL \hcsr04_inst|Add0~28_combout\ : std_logic;
SIGNAL \hcsr04_inst|micro_clks[14]~4_combout\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[0]~16_combout\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[0]~feeder_combout\ : std_logic;
SIGNAL \hcsr04_inst|Selector2~0_combout\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[15]~48_combout\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[0]~17\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[1]~18_combout\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[1]~19\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[2]~20_combout\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[2]~feeder_combout\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[2]~21\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[3]~22_combout\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[3]~23\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[4]~24_combout\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[4]~25\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[5]~26_combout\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[5]~27\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[6]~28_combout\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[6]~29\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[7]~30_combout\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[7]~feeder_combout\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[7]~31\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[8]~32_combout\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[8]~33\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[9]~34_combout\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[9]~35\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[10]~36_combout\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[10]~37\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[11]~38_combout\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[11]~39\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[12]~40_combout\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[12]~41\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[13]~42_combout\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[13]~43\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[14]~44_combout\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[14]~45\ : std_logic;
SIGNAL \hcsr04_inst|pos_reg[15]~46_combout\ : std_logic;
SIGNAL \Mult0|mult_core|_~3_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[3][10]~23_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[3][9]~22_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[3][6]~18_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[3][7]~20_combout\ : std_logic;
SIGNAL \Mult0|mult_core|_~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][10]~19_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][9]~1_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[3][5]~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][6]~3_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[3][4]~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[3][3]~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][7]~5_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~15\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~17\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|_~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][10]~6_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][9]~7_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][6]~8_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][7]~9_combout\ : std_logic;
SIGNAL \Mult0|mult_core|_~1_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][10]~10_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][5]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][9]~11_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][4]~12_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][8]~13_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][3]~14_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][7]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][5]~15_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][4]~16_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][3]~17_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[10]~20\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[11]~22\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[12]~24\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[13]~26\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[14]~28\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[15]~30\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[16]~32\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[17]~34\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[18]~38\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[19]~40\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[20]~42\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[21]~44\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[22]~46\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[23]~47_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[20]~41_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[19]~39_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[18]~37_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[17]~33_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[16]~31_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[16]~feeder_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[15]~29_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[15]~feeder_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[14]~27_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[13]~25_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[13]~feeder_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[12]~23_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[12]~feeder_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[11]~21_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[11]~feeder_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[10]~19_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[10]~feeder_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[22]~45_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[21]~43_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~29\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~31\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~33\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~35\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~36_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~31\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~33\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~34_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|LessThan3~3_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|LessThan2~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|LessThan2~2_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|LessThan2~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|LessThan2~3_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|LessThan2~4_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector2~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|LessThan4~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|LessThan4~2_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|LessThan4~3_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|LessThan4~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|LessThan4~4_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[18]~17_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num~6_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[3]~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][3]~25_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[18]~18_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|combinational_logic~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~1\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~2_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num~3_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num~4_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num~5_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[4]~1_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][4]~24_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~1\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~2_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~3\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~4_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num~2_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[5]~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][5]~21_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~1\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~2_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~3\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~4_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~5\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~6_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[18]~35_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector36~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector36~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector36~2_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[18]~36_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~5\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~6_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~1\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~2_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~3\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~4_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~7\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~8_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector35~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector35~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector35~2_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~3\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~4_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~5\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~6_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~9\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~10_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~7\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~8_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector34~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector34~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector34~2_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~5\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~7\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~9\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~11\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~13\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~15\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~17\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~19\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~21\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~23\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~25\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~27\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~29\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~30_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~31\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~32_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector21~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector21~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~31\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~32_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~33\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~34_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~35\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~36_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~37\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~38_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector20~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector20~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector2~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|num_reg[18]~49_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector2~2_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|state.ST_DONE~q\ : std_logic;
SIGNAL \dec_to_bcd_inst|state.ST_IDLE~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|state.ST_IDLE~q\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector1~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector1~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|state.ST_CALC~q\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~6_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~9\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~10_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~11\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~12_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~7\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~8_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector33~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector33~1_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector33~2_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~9\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~10_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~8_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~11\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~12_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~13\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~14_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector32~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector32~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~13\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~14_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~10_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~11\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~12_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~15\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~16_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector31~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector31~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~13\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~14_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~12_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~17\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~18_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~15\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~16_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector30~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector30~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~17\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~18_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~14_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~15\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~16_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~19\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~20_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector29~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector29~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~17\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~18_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~16_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~19\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~20_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~21\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~22_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector28~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector28~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~21\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~22_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~19\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~20_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~23\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~24_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector27~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~18_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector27~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~21\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~22_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~20_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~23\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~24_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~25\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~26_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector26~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector26~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~27\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~28_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~25\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~26_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~22_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~23\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~24_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector25~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector25~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~25\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~26_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~24_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~30_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~27\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~28_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector24~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector24~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~29\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~30_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~27\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~28_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~26_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector23~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~32_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector23~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~29\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~30_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~28_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~32_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~34_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector22~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector22~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|LessThan3~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|LessThan3~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|LessThan3~2_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|tens~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|unit~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~37\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add5~38_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~39\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add7~40_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~33\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add1~34_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~35\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add3~36_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector19~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector19~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|combinational_logic~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|bcd_reg[0]~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|done_reg~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|done_reg~q\ : std_logic;
SIGNAL \display_inst|Add0~0_combout\ : std_logic;
SIGNAL \display_inst|Add0~1\ : std_logic;
SIGNAL \display_inst|Add0~2_combout\ : std_logic;
SIGNAL \Add0~1_cout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \clks~7_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \clks~6_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \clks~5_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \clks~4_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \clks~3_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \clks~2_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \clks~1_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \clks~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \en~0_combout\ : std_logic;
SIGNAL \en~q\ : std_logic;
SIGNAL \hcsr04_inst|Selector1~0_combout\ : std_logic;
SIGNAL \hcsr04_inst|Selector1~1_combout\ : std_logic;
SIGNAL \hcsr04_inst|state.ST_TRIG~q\ : std_logic;
SIGNAL \hcsr04_inst|Selector1~2_combout\ : std_logic;
SIGNAL \hcsr04_inst|Selector2~1_combout\ : std_logic;
SIGNAL \hcsr04_inst|state.ST_SAMPLE~q\ : std_logic;
SIGNAL \hcsr04_inst|Selector4~0_combout\ : std_logic;
SIGNAL \hcsr04_inst|Selector4~1_combout\ : std_logic;
SIGNAL \hcsr04_inst|Selector4~2_combout\ : std_logic;
SIGNAL \hcsr04_inst|state.ST_DONE~q\ : std_logic;
SIGNAL \hcsr04_inst|Selector0~0_combout\ : std_logic;
SIGNAL \hcsr04_inst|state.ST_IDLE~q\ : std_logic;
SIGNAL \hcsr04_inst|Selector5~0_combout\ : std_logic;
SIGNAL \hcsr04_inst|trig_reg~q\ : std_logic;
SIGNAL \display_inst|digit_index[0]~1_combout\ : std_logic;
SIGNAL \display_inst|Add0~3\ : std_logic;
SIGNAL \display_inst|Add0~4_combout\ : std_logic;
SIGNAL \display_inst|Add0~5\ : std_logic;
SIGNAL \display_inst|Add0~6_combout\ : std_logic;
SIGNAL \display_inst|Add0~7\ : std_logic;
SIGNAL \display_inst|Add0~8_combout\ : std_logic;
SIGNAL \display_inst|count~4_combout\ : std_logic;
SIGNAL \display_inst|Add0~9\ : std_logic;
SIGNAL \display_inst|Add0~10_combout\ : std_logic;
SIGNAL \display_inst|Add0~11\ : std_logic;
SIGNAL \display_inst|Add0~12_combout\ : std_logic;
SIGNAL \display_inst|Add0~13\ : std_logic;
SIGNAL \display_inst|Add0~14_combout\ : std_logic;
SIGNAL \display_inst|Add0~15\ : std_logic;
SIGNAL \display_inst|Add0~16_combout\ : std_logic;
SIGNAL \display_inst|count~3_combout\ : std_logic;
SIGNAL \display_inst|Add0~17\ : std_logic;
SIGNAL \display_inst|Add0~18_combout\ : std_logic;
SIGNAL \display_inst|count~2_combout\ : std_logic;
SIGNAL \display_inst|Add0~19\ : std_logic;
SIGNAL \display_inst|Add0~20_combout\ : std_logic;
SIGNAL \display_inst|count~1_combout\ : std_logic;
SIGNAL \display_inst|Add0~21\ : std_logic;
SIGNAL \display_inst|Add0~22_combout\ : std_logic;
SIGNAL \display_inst|Add0~23\ : std_logic;
SIGNAL \display_inst|Add0~24_combout\ : std_logic;
SIGNAL \display_inst|Add0~25\ : std_logic;
SIGNAL \display_inst|Add0~26_combout\ : std_logic;
SIGNAL \display_inst|count~0_combout\ : std_logic;
SIGNAL \display_inst|Equal0~1_combout\ : std_logic;
SIGNAL \display_inst|Add0~27\ : std_logic;
SIGNAL \display_inst|Add0~28_combout\ : std_logic;
SIGNAL \display_inst|Add0~29\ : std_logic;
SIGNAL \display_inst|Add0~30_combout\ : std_logic;
SIGNAL \display_inst|Equal0~0_combout\ : std_logic;
SIGNAL \display_inst|Equal0~2_combout\ : std_logic;
SIGNAL \display_inst|Equal0~3_combout\ : std_logic;
SIGNAL \display_inst|Equal0~4_combout\ : std_logic;
SIGNAL \display_inst|digit_index[1]~0_combout\ : std_logic;
SIGNAL \display_inst|Mux0~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector18~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector17~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector17~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector16~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector16~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector15~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector15~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector13~2_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector14~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector14~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector13~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector13~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector13~3_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector12~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector12~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add4~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector11~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector11~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|bcd_reg[7]~feeder_combout\ : std_logic;
SIGNAL \display_inst|Mux1~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|tens~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector8~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector10~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector9~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector9~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add2~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector8~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add2~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector7~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector5~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector6~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector4~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector5~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add0~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector4~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Add0~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|Selector3~0_combout\ : std_logic;
SIGNAL \display_inst|Mux1~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|bcd_reg[6]~feeder_combout\ : std_logic;
SIGNAL \display_inst|Mux2~0_combout\ : std_logic;
SIGNAL \display_inst|Mux2~1_combout\ : std_logic;
SIGNAL \display_inst|Mux3~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|bcd_reg[9]~feeder_combout\ : std_logic;
SIGNAL \display_inst|Mux3~1_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|bcd_reg[4]~feeder_combout\ : std_logic;
SIGNAL \display_inst|Mux4~0_combout\ : std_logic;
SIGNAL \display_inst|Mux4~1_combout\ : std_logic;
SIGNAL \display_inst|rom|rom~0_combout\ : std_logic;
SIGNAL \display_inst|rom|rom~1_combout\ : std_logic;
SIGNAL \display_inst|rom|rom~2_combout\ : std_logic;
SIGNAL \display_inst|rom|rom~3_combout\ : std_logic;
SIGNAL \display_inst|rom|rom~4_combout\ : std_logic;
SIGNAL \display_inst|rom|rom~5_combout\ : std_logic;
SIGNAL \display_inst|rom|rom~6_combout\ : std_logic;
SIGNAL \display_inst|shift_reg[1]~1_combout\ : std_logic;
SIGNAL \display_inst|shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \display_inst|shift_reg[0]~0_combout\ : std_logic;
SIGNAL \hcsr04_inst|clks\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \dec_to_bcd_inst|num_reg\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \dec_to_bcd_inst|tens_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \hcsr04_inst|pos_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \display_inst|digit_index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \display_inst|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dec_to_bcd_inst|bcd_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \display_inst|shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \hcsr04_inst|micro_clks\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dec_to_bcd_inst|unit_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dec_to_bcd_inst|tenths_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dec_to_bcd_inst|hundreds_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL clks : std_logic_vector(27 DOWNTO 0);
SIGNAL \display_inst|ALT_INV_shift_reg\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \display_inst|rom|ALT_INV_rom~6_combout\ : std_logic;
SIGNAL \display_inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \dec_to_bcd_inst|ALT_INV_state.ST_DONE~q\ : std_logic;
SIGNAL \dec_to_bcd_inst|ALT_INV_state.ST_CALC~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_rst_n <= rst_n;
ww_clk <= clk;
ww_echo <= echo;
trig <= ww_trig;
dp <= ww_dp;
seg <= ww_seg;
sel <= ww_sel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst_n~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\display_inst|ALT_INV_shift_reg\(3) <= NOT \display_inst|shift_reg\(3);
\display_inst|ALT_INV_shift_reg\(2) <= NOT \display_inst|shift_reg\(2);
\display_inst|ALT_INV_shift_reg\(1) <= NOT \display_inst|shift_reg\(1);
\display_inst|rom|ALT_INV_rom~6_combout\ <= NOT \display_inst|rom|rom~6_combout\;
\display_inst|ALT_INV_Mux0~0_combout\ <= NOT \display_inst|Mux0~0_combout\;
\dec_to_bcd_inst|ALT_INV_state.ST_DONE~q\ <= NOT \dec_to_bcd_inst|state.ST_DONE~q\;
\dec_to_bcd_inst|ALT_INV_state.ST_CALC~q\ <= NOT \dec_to_bcd_inst|state.ST_CALC~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y3_N23
\trig~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hcsr04_inst|trig_reg~q\,
	devoe => ww_devoe,
	o => \trig~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\dp~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \dp~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|rom|rom~0_combout\,
	devoe => ww_devoe,
	o => \seg[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\seg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|rom|rom~1_combout\,
	devoe => ww_devoe,
	o => \seg[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\seg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|rom|rom~2_combout\,
	devoe => ww_devoe,
	o => \seg[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\seg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|rom|rom~3_combout\,
	devoe => ww_devoe,
	o => \seg[3]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\seg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|rom|rom~4_combout\,
	devoe => ww_devoe,
	o => \seg[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\seg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|rom|rom~5_combout\,
	devoe => ww_devoe,
	o => \seg[5]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\seg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|rom|ALT_INV_rom~6_combout\,
	devoe => ww_devoe,
	o => \seg[6]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\sel[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|shift_reg\(0),
	devoe => ww_devoe,
	o => \sel[0]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\sel[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|ALT_INV_shift_reg\(1),
	devoe => ww_devoe,
	o => \sel[1]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\sel[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|ALT_INV_shift_reg\(2),
	devoe => ww_devoe,
	o => \sel[2]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\sel[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|ALT_INV_shift_reg\(3),
	devoe => ww_devoe,
	o => \sel[3]~output_o\);

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

-- Location: LCCOMB_X19_Y8_N16
\hcsr04_inst|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Selector7~0_combout\ = (\hcsr04_inst|state.ST_DONE~q\) # ((\hcsr04_inst|state.ST_IDLE~q\ & \hcsr04_inst|done_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|state.ST_IDLE~q\,
	datac => \hcsr04_inst|done_reg~q\,
	datad => \hcsr04_inst|state.ST_DONE~q\,
	combout => \hcsr04_inst|Selector7~0_combout\);

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

-- Location: FF_X19_Y8_N17
\hcsr04_inst|done_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|Selector7~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|done_reg~q\);

-- Location: LCCOMB_X18_Y8_N12
\hcsr04_inst|clks[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|clks[0]~6_combout\ = \hcsr04_inst|clks\(0) $ (VCC)
-- \hcsr04_inst|clks[0]~7\ = CARRY(\hcsr04_inst|clks\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|clks\(0),
	datad => VCC,
	combout => \hcsr04_inst|clks[0]~6_combout\,
	cout => \hcsr04_inst|clks[0]~7\);

-- Location: FF_X18_Y8_N13
\hcsr04_inst|clks[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|clks[0]~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \hcsr04_inst|micro_clks[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|clks\(0));

-- Location: LCCOMB_X18_Y8_N14
\hcsr04_inst|clks[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|clks[1]~8_combout\ = (\hcsr04_inst|clks\(1) & (!\hcsr04_inst|clks[0]~7\)) # (!\hcsr04_inst|clks\(1) & ((\hcsr04_inst|clks[0]~7\) # (GND)))
-- \hcsr04_inst|clks[1]~9\ = CARRY((!\hcsr04_inst|clks[0]~7\) # (!\hcsr04_inst|clks\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hcsr04_inst|clks\(1),
	datad => VCC,
	cin => \hcsr04_inst|clks[0]~7\,
	combout => \hcsr04_inst|clks[1]~8_combout\,
	cout => \hcsr04_inst|clks[1]~9\);

-- Location: FF_X18_Y8_N15
\hcsr04_inst|clks[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|clks[1]~8_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \hcsr04_inst|micro_clks[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|clks\(1));

-- Location: LCCOMB_X18_Y8_N16
\hcsr04_inst|clks[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|clks[2]~10_combout\ = (\hcsr04_inst|clks\(2) & (\hcsr04_inst|clks[1]~9\ $ (GND))) # (!\hcsr04_inst|clks\(2) & (!\hcsr04_inst|clks[1]~9\ & VCC))
-- \hcsr04_inst|clks[2]~11\ = CARRY((\hcsr04_inst|clks\(2) & !\hcsr04_inst|clks[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hcsr04_inst|clks\(2),
	datad => VCC,
	cin => \hcsr04_inst|clks[1]~9\,
	combout => \hcsr04_inst|clks[2]~10_combout\,
	cout => \hcsr04_inst|clks[2]~11\);

-- Location: FF_X18_Y8_N17
\hcsr04_inst|clks[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|clks[2]~10_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \hcsr04_inst|micro_clks[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|clks\(2));

-- Location: LCCOMB_X18_Y8_N18
\hcsr04_inst|clks[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|clks[3]~12_combout\ = (\hcsr04_inst|clks\(3) & (!\hcsr04_inst|clks[2]~11\)) # (!\hcsr04_inst|clks\(3) & ((\hcsr04_inst|clks[2]~11\) # (GND)))
-- \hcsr04_inst|clks[3]~13\ = CARRY((!\hcsr04_inst|clks[2]~11\) # (!\hcsr04_inst|clks\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hcsr04_inst|clks\(3),
	datad => VCC,
	cin => \hcsr04_inst|clks[2]~11\,
	combout => \hcsr04_inst|clks[3]~12_combout\,
	cout => \hcsr04_inst|clks[3]~13\);

-- Location: FF_X18_Y8_N19
\hcsr04_inst|clks[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|clks[3]~12_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \hcsr04_inst|micro_clks[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|clks\(3));

-- Location: LCCOMB_X18_Y8_N20
\hcsr04_inst|clks[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|clks[4]~14_combout\ = (\hcsr04_inst|clks\(4) & (\hcsr04_inst|clks[3]~13\ $ (GND))) # (!\hcsr04_inst|clks\(4) & (!\hcsr04_inst|clks[3]~13\ & VCC))
-- \hcsr04_inst|clks[4]~15\ = CARRY((\hcsr04_inst|clks\(4) & !\hcsr04_inst|clks[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hcsr04_inst|clks\(4),
	datad => VCC,
	cin => \hcsr04_inst|clks[3]~13\,
	combout => \hcsr04_inst|clks[4]~14_combout\,
	cout => \hcsr04_inst|clks[4]~15\);

-- Location: FF_X18_Y8_N21
\hcsr04_inst|clks[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|clks[4]~14_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \hcsr04_inst|micro_clks[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|clks\(4));

-- Location: LCCOMB_X18_Y8_N22
\hcsr04_inst|clks[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|clks[5]~16_combout\ = \hcsr04_inst|clks\(5) $ (\hcsr04_inst|clks[4]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|clks\(5),
	cin => \hcsr04_inst|clks[4]~15\,
	combout => \hcsr04_inst|clks[5]~16_combout\);

-- Location: FF_X18_Y8_N23
\hcsr04_inst|clks[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|clks[5]~16_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \hcsr04_inst|micro_clks[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|clks\(5));

-- Location: LCCOMB_X18_Y8_N4
\hcsr04_inst|micro_clks[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|micro_clks[15]~0_combout\ = ((\hcsr04_inst|clks\(3)) # ((\hcsr04_inst|clks\(1)) # (\hcsr04_inst|clks\(2)))) # (!\hcsr04_inst|clks\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|clks\(0),
	datab => \hcsr04_inst|clks\(3),
	datac => \hcsr04_inst|clks\(1),
	datad => \hcsr04_inst|clks\(2),
	combout => \hcsr04_inst|micro_clks[15]~0_combout\);

-- Location: IOIBUF_X34_Y2_N15
\echo~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_echo,
	o => \echo~input_o\);

-- Location: LCCOMB_X19_Y8_N12
\hcsr04_inst|new_io_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|new_io_reg~0_combout\ = (\hcsr04_inst|state.ST_SAMPLE~q\ & ((\echo~input_o\))) # (!\hcsr04_inst|state.ST_SAMPLE~q\ & (\hcsr04_inst|new_io_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|state.ST_SAMPLE~q\,
	datac => \hcsr04_inst|new_io_reg~q\,
	datad => \echo~input_o\,
	combout => \hcsr04_inst|new_io_reg~0_combout\);

-- Location: FF_X19_Y8_N13
\hcsr04_inst|new_io_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|new_io_reg~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|new_io_reg~q\);

-- Location: LCCOMB_X19_Y8_N24
\hcsr04_inst|old_io_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|old_io_reg~0_combout\ = (\hcsr04_inst|state.ST_MEASURE~q\ & ((\hcsr04_inst|new_io_reg~q\))) # (!\hcsr04_inst|state.ST_MEASURE~q\ & (\hcsr04_inst|old_io_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|state.ST_MEASURE~q\,
	datac => \hcsr04_inst|old_io_reg~q\,
	datad => \hcsr04_inst|new_io_reg~q\,
	combout => \hcsr04_inst|old_io_reg~0_combout\);

-- Location: FF_X19_Y8_N25
\hcsr04_inst|old_io_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|old_io_reg~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|old_io_reg~q\);

-- Location: LCCOMB_X19_Y8_N4
\hcsr04_inst|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Selector3~0_combout\ = (\hcsr04_inst|state.ST_MEASURE~q\ & (!\hcsr04_inst|old_io_reg~q\ & ((\hcsr04_inst|new_io_reg~q\)))) # (!\hcsr04_inst|state.ST_MEASURE~q\ & (((\hcsr04_inst|state.ST_SAMPLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|state.ST_MEASURE~q\,
	datab => \hcsr04_inst|old_io_reg~q\,
	datac => \hcsr04_inst|state.ST_SAMPLE~q\,
	datad => \hcsr04_inst|new_io_reg~q\,
	combout => \hcsr04_inst|Selector3~0_combout\);

-- Location: LCCOMB_X19_Y8_N22
\hcsr04_inst|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Selector3~1_combout\ = (\hcsr04_inst|Selector3~0_combout\ & ((!\en~q\) # (!\hcsr04_inst|state.ST_DONE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|state.ST_DONE~q\,
	datac => \hcsr04_inst|Selector3~0_combout\,
	datad => \en~q\,
	combout => \hcsr04_inst|Selector3~1_combout\);

-- Location: FF_X19_Y8_N23
\hcsr04_inst|state.ST_MEASURE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|Selector3~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|state.ST_MEASURE~q\);

-- Location: LCCOMB_X19_Y8_N18
\hcsr04_inst|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Selector6~0_combout\ = (\hcsr04_inst|state.ST_MEASURE~q\ & ((\hcsr04_inst|new_io_reg~q\) # ((\hcsr04_inst|old_io_reg~q\ & \hcsr04_inst|state.ST_SAMPLE~q\)))) # (!\hcsr04_inst|state.ST_MEASURE~q\ & (\hcsr04_inst|old_io_reg~q\ & 
-- (\hcsr04_inst|state.ST_SAMPLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|state.ST_MEASURE~q\,
	datab => \hcsr04_inst|old_io_reg~q\,
	datac => \hcsr04_inst|state.ST_SAMPLE~q\,
	datad => \hcsr04_inst|new_io_reg~q\,
	combout => \hcsr04_inst|Selector6~0_combout\);

-- Location: LCCOMB_X18_Y8_N6
\hcsr04_inst|micro_clks[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|micro_clks[15]~1_combout\ = (\hcsr04_inst|clks\(5) & (\hcsr04_inst|clks\(4) & (!\hcsr04_inst|micro_clks[15]~0_combout\ & \hcsr04_inst|Selector6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|clks\(5),
	datab => \hcsr04_inst|clks\(4),
	datac => \hcsr04_inst|micro_clks[15]~0_combout\,
	datad => \hcsr04_inst|Selector6~1_combout\,
	combout => \hcsr04_inst|micro_clks[15]~1_combout\);

-- Location: LCCOMB_X18_Y7_N0
\hcsr04_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Add0~0_combout\ = \hcsr04_inst|micro_clks\(0) $ (VCC)
-- \hcsr04_inst|Add0~1\ = CARRY(\hcsr04_inst|micro_clks\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hcsr04_inst|micro_clks\(0),
	datad => VCC,
	combout => \hcsr04_inst|Add0~0_combout\,
	cout => \hcsr04_inst|Add0~1\);

-- Location: LCCOMB_X18_Y8_N26
\hcsr04_inst|micro_clks[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|micro_clks[0]~18_combout\ = (\hcsr04_inst|micro_clks[15]~1_combout\ & ((\hcsr04_inst|Add0~0_combout\) # ((\hcsr04_inst|micro_clks\(0) & !\hcsr04_inst|micro_clks[15]~2_combout\)))) # (!\hcsr04_inst|micro_clks[15]~1_combout\ & 
-- (((\hcsr04_inst|micro_clks\(0) & !\hcsr04_inst|micro_clks[15]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|micro_clks[15]~1_combout\,
	datab => \hcsr04_inst|Add0~0_combout\,
	datac => \hcsr04_inst|micro_clks\(0),
	datad => \hcsr04_inst|micro_clks[15]~2_combout\,
	combout => \hcsr04_inst|micro_clks[0]~18_combout\);

-- Location: FF_X18_Y8_N27
\hcsr04_inst|micro_clks[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|micro_clks[0]~18_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|micro_clks\(0));

-- Location: LCCOMB_X18_Y7_N2
\hcsr04_inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Add0~2_combout\ = (\hcsr04_inst|micro_clks\(1) & (!\hcsr04_inst|Add0~1\)) # (!\hcsr04_inst|micro_clks\(1) & ((\hcsr04_inst|Add0~1\) # (GND)))
-- \hcsr04_inst|Add0~3\ = CARRY((!\hcsr04_inst|Add0~1\) # (!\hcsr04_inst|micro_clks\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|micro_clks\(1),
	datad => VCC,
	cin => \hcsr04_inst|Add0~1\,
	combout => \hcsr04_inst|Add0~2_combout\,
	cout => \hcsr04_inst|Add0~3\);

-- Location: LCCOMB_X18_Y8_N28
\hcsr04_inst|micro_clks[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|micro_clks[1]~17_combout\ = (\hcsr04_inst|micro_clks[15]~1_combout\ & ((\hcsr04_inst|Add0~2_combout\) # ((\hcsr04_inst|micro_clks\(1) & !\hcsr04_inst|micro_clks[15]~2_combout\)))) # (!\hcsr04_inst|micro_clks[15]~1_combout\ & 
-- (((\hcsr04_inst|micro_clks\(1) & !\hcsr04_inst|micro_clks[15]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|micro_clks[15]~1_combout\,
	datab => \hcsr04_inst|Add0~2_combout\,
	datac => \hcsr04_inst|micro_clks\(1),
	datad => \hcsr04_inst|micro_clks[15]~2_combout\,
	combout => \hcsr04_inst|micro_clks[1]~17_combout\);

-- Location: FF_X18_Y8_N29
\hcsr04_inst|micro_clks[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|micro_clks[1]~17_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|micro_clks\(1));

-- Location: LCCOMB_X18_Y7_N4
\hcsr04_inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Add0~4_combout\ = (\hcsr04_inst|micro_clks\(2) & (\hcsr04_inst|Add0~3\ $ (GND))) # (!\hcsr04_inst|micro_clks\(2) & (!\hcsr04_inst|Add0~3\ & VCC))
-- \hcsr04_inst|Add0~5\ = CARRY((\hcsr04_inst|micro_clks\(2) & !\hcsr04_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|micro_clks\(2),
	datad => VCC,
	cin => \hcsr04_inst|Add0~3\,
	combout => \hcsr04_inst|Add0~4_combout\,
	cout => \hcsr04_inst|Add0~5\);

-- Location: LCCOMB_X18_Y8_N30
\hcsr04_inst|micro_clks[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|micro_clks[2]~16_combout\ = (\hcsr04_inst|Add0~4_combout\ & ((\hcsr04_inst|micro_clks[15]~1_combout\) # ((!\hcsr04_inst|micro_clks[15]~2_combout\ & \hcsr04_inst|micro_clks\(2))))) # (!\hcsr04_inst|Add0~4_combout\ & 
-- (!\hcsr04_inst|micro_clks[15]~2_combout\ & (\hcsr04_inst|micro_clks\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|Add0~4_combout\,
	datab => \hcsr04_inst|micro_clks[15]~2_combout\,
	datac => \hcsr04_inst|micro_clks\(2),
	datad => \hcsr04_inst|micro_clks[15]~1_combout\,
	combout => \hcsr04_inst|micro_clks[2]~16_combout\);

-- Location: FF_X18_Y8_N31
\hcsr04_inst|micro_clks[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|micro_clks[2]~16_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|micro_clks\(2));

-- Location: LCCOMB_X18_Y7_N6
\hcsr04_inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Add0~6_combout\ = (\hcsr04_inst|micro_clks\(3) & (!\hcsr04_inst|Add0~5\)) # (!\hcsr04_inst|micro_clks\(3) & ((\hcsr04_inst|Add0~5\) # (GND)))
-- \hcsr04_inst|Add0~7\ = CARRY((!\hcsr04_inst|Add0~5\) # (!\hcsr04_inst|micro_clks\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hcsr04_inst|micro_clks\(3),
	datad => VCC,
	cin => \hcsr04_inst|Add0~5\,
	combout => \hcsr04_inst|Add0~6_combout\,
	cout => \hcsr04_inst|Add0~7\);

-- Location: LCCOMB_X18_Y8_N0
\hcsr04_inst|micro_clks[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|micro_clks[3]~15_combout\ = (\hcsr04_inst|Add0~6_combout\ & ((\hcsr04_inst|micro_clks[15]~1_combout\) # ((!\hcsr04_inst|micro_clks[15]~2_combout\ & \hcsr04_inst|micro_clks\(3))))) # (!\hcsr04_inst|Add0~6_combout\ & 
-- (!\hcsr04_inst|micro_clks[15]~2_combout\ & (\hcsr04_inst|micro_clks\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|Add0~6_combout\,
	datab => \hcsr04_inst|micro_clks[15]~2_combout\,
	datac => \hcsr04_inst|micro_clks\(3),
	datad => \hcsr04_inst|micro_clks[15]~1_combout\,
	combout => \hcsr04_inst|micro_clks[3]~15_combout\);

-- Location: FF_X18_Y8_N1
\hcsr04_inst|micro_clks[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|micro_clks[3]~15_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|micro_clks\(3));

-- Location: LCCOMB_X18_Y8_N8
\hcsr04_inst|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Equal1~3_combout\ = (\hcsr04_inst|micro_clks\(2) & (\hcsr04_inst|micro_clks\(1) & (!\hcsr04_inst|micro_clks\(0) & \hcsr04_inst|micro_clks\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|micro_clks\(2),
	datab => \hcsr04_inst|micro_clks\(1),
	datac => \hcsr04_inst|micro_clks\(0),
	datad => \hcsr04_inst|micro_clks\(3),
	combout => \hcsr04_inst|Equal1~3_combout\);

-- Location: LCCOMB_X18_Y7_N8
\hcsr04_inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Add0~8_combout\ = (\hcsr04_inst|micro_clks\(4) & (\hcsr04_inst|Add0~7\ $ (GND))) # (!\hcsr04_inst|micro_clks\(4) & (!\hcsr04_inst|Add0~7\ & VCC))
-- \hcsr04_inst|Add0~9\ = CARRY((\hcsr04_inst|micro_clks\(4) & !\hcsr04_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hcsr04_inst|micro_clks\(4),
	datad => VCC,
	cin => \hcsr04_inst|Add0~7\,
	combout => \hcsr04_inst|Add0~8_combout\,
	cout => \hcsr04_inst|Add0~9\);

-- Location: LCCOMB_X19_Y7_N10
\hcsr04_inst|micro_clks[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|micro_clks[4]~14_combout\ = (\hcsr04_inst|micro_clks[15]~2_combout\ & (\hcsr04_inst|micro_clks[15]~1_combout\ & ((\hcsr04_inst|Add0~8_combout\)))) # (!\hcsr04_inst|micro_clks[15]~2_combout\ & ((\hcsr04_inst|micro_clks\(4)) # 
-- ((\hcsr04_inst|micro_clks[15]~1_combout\ & \hcsr04_inst|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|micro_clks[15]~2_combout\,
	datab => \hcsr04_inst|micro_clks[15]~1_combout\,
	datac => \hcsr04_inst|micro_clks\(4),
	datad => \hcsr04_inst|Add0~8_combout\,
	combout => \hcsr04_inst|micro_clks[4]~14_combout\);

-- Location: FF_X19_Y7_N11
\hcsr04_inst|micro_clks[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|micro_clks[4]~14_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|micro_clks\(4));

-- Location: LCCOMB_X18_Y7_N10
\hcsr04_inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Add0~10_combout\ = (\hcsr04_inst|micro_clks\(5) & (!\hcsr04_inst|Add0~9\)) # (!\hcsr04_inst|micro_clks\(5) & ((\hcsr04_inst|Add0~9\) # (GND)))
-- \hcsr04_inst|Add0~11\ = CARRY((!\hcsr04_inst|Add0~9\) # (!\hcsr04_inst|micro_clks\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hcsr04_inst|micro_clks\(5),
	datad => VCC,
	cin => \hcsr04_inst|Add0~9\,
	combout => \hcsr04_inst|Add0~10_combout\,
	cout => \hcsr04_inst|Add0~11\);

-- Location: LCCOMB_X19_Y7_N12
\hcsr04_inst|micro_clks[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|micro_clks[5]~13_combout\ = (\hcsr04_inst|micro_clks[15]~2_combout\ & (\hcsr04_inst|Add0~10_combout\ & ((\hcsr04_inst|micro_clks[15]~1_combout\)))) # (!\hcsr04_inst|micro_clks[15]~2_combout\ & ((\hcsr04_inst|micro_clks\(5)) # 
-- ((\hcsr04_inst|Add0~10_combout\ & \hcsr04_inst|micro_clks[15]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|micro_clks[15]~2_combout\,
	datab => \hcsr04_inst|Add0~10_combout\,
	datac => \hcsr04_inst|micro_clks\(5),
	datad => \hcsr04_inst|micro_clks[15]~1_combout\,
	combout => \hcsr04_inst|micro_clks[5]~13_combout\);

-- Location: FF_X19_Y7_N13
\hcsr04_inst|micro_clks[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|micro_clks[5]~13_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|micro_clks\(5));

-- Location: LCCOMB_X18_Y7_N12
\hcsr04_inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Add0~12_combout\ = (\hcsr04_inst|micro_clks\(6) & (\hcsr04_inst|Add0~11\ $ (GND))) # (!\hcsr04_inst|micro_clks\(6) & (!\hcsr04_inst|Add0~11\ & VCC))
-- \hcsr04_inst|Add0~13\ = CARRY((\hcsr04_inst|micro_clks\(6) & !\hcsr04_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|micro_clks\(6),
	datad => VCC,
	cin => \hcsr04_inst|Add0~11\,
	combout => \hcsr04_inst|Add0~12_combout\,
	cout => \hcsr04_inst|Add0~13\);

-- Location: LCCOMB_X19_Y7_N6
\hcsr04_inst|micro_clks[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|micro_clks[6]~12_combout\ = (\hcsr04_inst|micro_clks[15]~2_combout\ & (\hcsr04_inst|Add0~12_combout\ & ((\hcsr04_inst|micro_clks[15]~1_combout\)))) # (!\hcsr04_inst|micro_clks[15]~2_combout\ & ((\hcsr04_inst|micro_clks\(6)) # 
-- ((\hcsr04_inst|Add0~12_combout\ & \hcsr04_inst|micro_clks[15]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|micro_clks[15]~2_combout\,
	datab => \hcsr04_inst|Add0~12_combout\,
	datac => \hcsr04_inst|micro_clks\(6),
	datad => \hcsr04_inst|micro_clks[15]~1_combout\,
	combout => \hcsr04_inst|micro_clks[6]~12_combout\);

-- Location: FF_X19_Y7_N7
\hcsr04_inst|micro_clks[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|micro_clks[6]~12_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|micro_clks\(6));

-- Location: LCCOMB_X18_Y7_N14
\hcsr04_inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Add0~14_combout\ = (\hcsr04_inst|micro_clks\(7) & (!\hcsr04_inst|Add0~13\)) # (!\hcsr04_inst|micro_clks\(7) & ((\hcsr04_inst|Add0~13\) # (GND)))
-- \hcsr04_inst|Add0~15\ = CARRY((!\hcsr04_inst|Add0~13\) # (!\hcsr04_inst|micro_clks\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|micro_clks\(7),
	datad => VCC,
	cin => \hcsr04_inst|Add0~13\,
	combout => \hcsr04_inst|Add0~14_combout\,
	cout => \hcsr04_inst|Add0~15\);

-- Location: LCCOMB_X19_Y7_N4
\hcsr04_inst|micro_clks[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|micro_clks[7]~11_combout\ = (\hcsr04_inst|micro_clks[15]~2_combout\ & (\hcsr04_inst|Add0~14_combout\ & ((\hcsr04_inst|micro_clks[15]~1_combout\)))) # (!\hcsr04_inst|micro_clks[15]~2_combout\ & ((\hcsr04_inst|micro_clks\(7)) # 
-- ((\hcsr04_inst|Add0~14_combout\ & \hcsr04_inst|micro_clks[15]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|micro_clks[15]~2_combout\,
	datab => \hcsr04_inst|Add0~14_combout\,
	datac => \hcsr04_inst|micro_clks\(7),
	datad => \hcsr04_inst|micro_clks[15]~1_combout\,
	combout => \hcsr04_inst|micro_clks[7]~11_combout\);

-- Location: FF_X19_Y7_N5
\hcsr04_inst|micro_clks[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|micro_clks[7]~11_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|micro_clks\(7));

-- Location: LCCOMB_X18_Y7_N16
\hcsr04_inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Add0~16_combout\ = (\hcsr04_inst|micro_clks\(8) & (\hcsr04_inst|Add0~15\ $ (GND))) # (!\hcsr04_inst|micro_clks\(8) & (!\hcsr04_inst|Add0~15\ & VCC))
-- \hcsr04_inst|Add0~17\ = CARRY((\hcsr04_inst|micro_clks\(8) & !\hcsr04_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hcsr04_inst|micro_clks\(8),
	datad => VCC,
	cin => \hcsr04_inst|Add0~15\,
	combout => \hcsr04_inst|Add0~16_combout\,
	cout => \hcsr04_inst|Add0~17\);

-- Location: LCCOMB_X19_Y7_N16
\hcsr04_inst|micro_clks[8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|micro_clks[8]~10_combout\ = (\hcsr04_inst|micro_clks[15]~2_combout\ & (\hcsr04_inst|Add0~16_combout\ & ((\hcsr04_inst|micro_clks[15]~1_combout\)))) # (!\hcsr04_inst|micro_clks[15]~2_combout\ & ((\hcsr04_inst|micro_clks\(8)) # 
-- ((\hcsr04_inst|Add0~16_combout\ & \hcsr04_inst|micro_clks[15]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|micro_clks[15]~2_combout\,
	datab => \hcsr04_inst|Add0~16_combout\,
	datac => \hcsr04_inst|micro_clks\(8),
	datad => \hcsr04_inst|micro_clks[15]~1_combout\,
	combout => \hcsr04_inst|micro_clks[8]~10_combout\);

-- Location: FF_X19_Y7_N17
\hcsr04_inst|micro_clks[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|micro_clks[8]~10_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|micro_clks\(8));

-- Location: LCCOMB_X18_Y7_N18
\hcsr04_inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Add0~18_combout\ = (\hcsr04_inst|micro_clks\(9) & (!\hcsr04_inst|Add0~17\)) # (!\hcsr04_inst|micro_clks\(9) & ((\hcsr04_inst|Add0~17\) # (GND)))
-- \hcsr04_inst|Add0~19\ = CARRY((!\hcsr04_inst|Add0~17\) # (!\hcsr04_inst|micro_clks\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|micro_clks\(9),
	datad => VCC,
	cin => \hcsr04_inst|Add0~17\,
	combout => \hcsr04_inst|Add0~18_combout\,
	cout => \hcsr04_inst|Add0~19\);

-- Location: LCCOMB_X19_Y7_N30
\hcsr04_inst|micro_clks[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|micro_clks[9]~9_combout\ = (\hcsr04_inst|micro_clks[15]~2_combout\ & (\hcsr04_inst|Add0~18_combout\ & ((\hcsr04_inst|micro_clks[15]~1_combout\)))) # (!\hcsr04_inst|micro_clks[15]~2_combout\ & ((\hcsr04_inst|micro_clks\(9)) # 
-- ((\hcsr04_inst|Add0~18_combout\ & \hcsr04_inst|micro_clks[15]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|micro_clks[15]~2_combout\,
	datab => \hcsr04_inst|Add0~18_combout\,
	datac => \hcsr04_inst|micro_clks\(9),
	datad => \hcsr04_inst|micro_clks[15]~1_combout\,
	combout => \hcsr04_inst|micro_clks[9]~9_combout\);

-- Location: FF_X19_Y7_N31
\hcsr04_inst|micro_clks[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|micro_clks[9]~9_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|micro_clks\(9));

-- Location: LCCOMB_X18_Y7_N20
\hcsr04_inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Add0~20_combout\ = (\hcsr04_inst|micro_clks\(10) & (\hcsr04_inst|Add0~19\ $ (GND))) # (!\hcsr04_inst|micro_clks\(10) & (!\hcsr04_inst|Add0~19\ & VCC))
-- \hcsr04_inst|Add0~21\ = CARRY((\hcsr04_inst|micro_clks\(10) & !\hcsr04_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hcsr04_inst|micro_clks\(10),
	datad => VCC,
	cin => \hcsr04_inst|Add0~19\,
	combout => \hcsr04_inst|Add0~20_combout\,
	cout => \hcsr04_inst|Add0~21\);

-- Location: LCCOMB_X19_Y7_N0
\hcsr04_inst|micro_clks[10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|micro_clks[10]~8_combout\ = (\hcsr04_inst|micro_clks[15]~2_combout\ & (\hcsr04_inst|Add0~20_combout\ & ((\hcsr04_inst|micro_clks[15]~1_combout\)))) # (!\hcsr04_inst|micro_clks[15]~2_combout\ & ((\hcsr04_inst|micro_clks\(10)) # 
-- ((\hcsr04_inst|Add0~20_combout\ & \hcsr04_inst|micro_clks[15]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|micro_clks[15]~2_combout\,
	datab => \hcsr04_inst|Add0~20_combout\,
	datac => \hcsr04_inst|micro_clks\(10),
	datad => \hcsr04_inst|micro_clks[15]~1_combout\,
	combout => \hcsr04_inst|micro_clks[10]~8_combout\);

-- Location: FF_X19_Y7_N1
\hcsr04_inst|micro_clks[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|micro_clks[10]~8_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|micro_clks\(10));

-- Location: LCCOMB_X18_Y7_N22
\hcsr04_inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Add0~22_combout\ = (\hcsr04_inst|micro_clks\(11) & (!\hcsr04_inst|Add0~21\)) # (!\hcsr04_inst|micro_clks\(11) & ((\hcsr04_inst|Add0~21\) # (GND)))
-- \hcsr04_inst|Add0~23\ = CARRY((!\hcsr04_inst|Add0~21\) # (!\hcsr04_inst|micro_clks\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hcsr04_inst|micro_clks\(11),
	datad => VCC,
	cin => \hcsr04_inst|Add0~21\,
	combout => \hcsr04_inst|Add0~22_combout\,
	cout => \hcsr04_inst|Add0~23\);

-- Location: LCCOMB_X19_Y7_N22
\hcsr04_inst|micro_clks[11]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|micro_clks[11]~7_combout\ = (\hcsr04_inst|micro_clks[15]~2_combout\ & (\hcsr04_inst|Add0~22_combout\ & ((\hcsr04_inst|micro_clks[15]~1_combout\)))) # (!\hcsr04_inst|micro_clks[15]~2_combout\ & ((\hcsr04_inst|micro_clks\(11)) # 
-- ((\hcsr04_inst|Add0~22_combout\ & \hcsr04_inst|micro_clks[15]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|micro_clks[15]~2_combout\,
	datab => \hcsr04_inst|Add0~22_combout\,
	datac => \hcsr04_inst|micro_clks\(11),
	datad => \hcsr04_inst|micro_clks[15]~1_combout\,
	combout => \hcsr04_inst|micro_clks[11]~7_combout\);

-- Location: FF_X19_Y7_N23
\hcsr04_inst|micro_clks[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|micro_clks[11]~7_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|micro_clks\(11));

-- Location: LCCOMB_X19_Y7_N18
\hcsr04_inst|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Equal1~1_combout\ = (!\hcsr04_inst|micro_clks\(11) & (!\hcsr04_inst|micro_clks\(10) & (!\hcsr04_inst|micro_clks\(9) & !\hcsr04_inst|micro_clks\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|micro_clks\(11),
	datab => \hcsr04_inst|micro_clks\(10),
	datac => \hcsr04_inst|micro_clks\(9),
	datad => \hcsr04_inst|micro_clks\(8),
	combout => \hcsr04_inst|Equal1~1_combout\);

-- Location: LCCOMB_X19_Y7_N8
\hcsr04_inst|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Equal1~2_combout\ = (!\hcsr04_inst|micro_clks\(4) & (!\hcsr04_inst|micro_clks\(5) & (!\hcsr04_inst|micro_clks\(7) & !\hcsr04_inst|micro_clks\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|micro_clks\(4),
	datab => \hcsr04_inst|micro_clks\(5),
	datac => \hcsr04_inst|micro_clks\(7),
	datad => \hcsr04_inst|micro_clks\(6),
	combout => \hcsr04_inst|Equal1~2_combout\);

-- Location: LCCOMB_X18_Y7_N24
\hcsr04_inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Add0~24_combout\ = (\hcsr04_inst|micro_clks\(12) & (\hcsr04_inst|Add0~23\ $ (GND))) # (!\hcsr04_inst|micro_clks\(12) & (!\hcsr04_inst|Add0~23\ & VCC))
-- \hcsr04_inst|Add0~25\ = CARRY((\hcsr04_inst|micro_clks\(12) & !\hcsr04_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hcsr04_inst|micro_clks\(12),
	datad => VCC,
	cin => \hcsr04_inst|Add0~23\,
	combout => \hcsr04_inst|Add0~24_combout\,
	cout => \hcsr04_inst|Add0~25\);

-- Location: LCCOMB_X19_Y7_N26
\hcsr04_inst|micro_clks[12]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|micro_clks[12]~6_combout\ = (\hcsr04_inst|micro_clks[15]~2_combout\ & (\hcsr04_inst|Add0~24_combout\ & ((\hcsr04_inst|micro_clks[15]~1_combout\)))) # (!\hcsr04_inst|micro_clks[15]~2_combout\ & ((\hcsr04_inst|micro_clks\(12)) # 
-- ((\hcsr04_inst|Add0~24_combout\ & \hcsr04_inst|micro_clks[15]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|micro_clks[15]~2_combout\,
	datab => \hcsr04_inst|Add0~24_combout\,
	datac => \hcsr04_inst|micro_clks\(12),
	datad => \hcsr04_inst|micro_clks[15]~1_combout\,
	combout => \hcsr04_inst|micro_clks[12]~6_combout\);

-- Location: FF_X19_Y7_N27
\hcsr04_inst|micro_clks[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|micro_clks[12]~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|micro_clks\(12));

-- Location: LCCOMB_X18_Y7_N26
\hcsr04_inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Add0~26_combout\ = (\hcsr04_inst|micro_clks\(13) & (!\hcsr04_inst|Add0~25\)) # (!\hcsr04_inst|micro_clks\(13) & ((\hcsr04_inst|Add0~25\) # (GND)))
-- \hcsr04_inst|Add0~27\ = CARRY((!\hcsr04_inst|Add0~25\) # (!\hcsr04_inst|micro_clks\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|micro_clks\(13),
	datad => VCC,
	cin => \hcsr04_inst|Add0~25\,
	combout => \hcsr04_inst|Add0~26_combout\,
	cout => \hcsr04_inst|Add0~27\);

-- Location: LCCOMB_X19_Y7_N24
\hcsr04_inst|micro_clks[13]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|micro_clks[13]~5_combout\ = (\hcsr04_inst|Add0~26_combout\ & ((\hcsr04_inst|micro_clks[15]~1_combout\) # ((!\hcsr04_inst|micro_clks[15]~2_combout\ & \hcsr04_inst|micro_clks\(13))))) # (!\hcsr04_inst|Add0~26_combout\ & 
-- (!\hcsr04_inst|micro_clks[15]~2_combout\ & (\hcsr04_inst|micro_clks\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|Add0~26_combout\,
	datab => \hcsr04_inst|micro_clks[15]~2_combout\,
	datac => \hcsr04_inst|micro_clks\(13),
	datad => \hcsr04_inst|micro_clks[15]~1_combout\,
	combout => \hcsr04_inst|micro_clks[13]~5_combout\);

-- Location: FF_X19_Y7_N25
\hcsr04_inst|micro_clks[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|micro_clks[13]~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|micro_clks\(13));

-- Location: LCCOMB_X18_Y7_N28
\hcsr04_inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Add0~28_combout\ = (\hcsr04_inst|micro_clks\(14) & (\hcsr04_inst|Add0~27\ $ (GND))) # (!\hcsr04_inst|micro_clks\(14) & (!\hcsr04_inst|Add0~27\ & VCC))
-- \hcsr04_inst|Add0~29\ = CARRY((\hcsr04_inst|micro_clks\(14) & !\hcsr04_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|micro_clks\(14),
	datad => VCC,
	cin => \hcsr04_inst|Add0~27\,
	combout => \hcsr04_inst|Add0~28_combout\,
	cout => \hcsr04_inst|Add0~29\);

-- Location: LCCOMB_X18_Y7_N30
\hcsr04_inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Add0~30_combout\ = \hcsr04_inst|Add0~29\ $ (\hcsr04_inst|micro_clks\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \hcsr04_inst|micro_clks\(15),
	cin => \hcsr04_inst|Add0~29\,
	combout => \hcsr04_inst|Add0~30_combout\);

-- Location: LCCOMB_X19_Y7_N28
\hcsr04_inst|micro_clks[15]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|micro_clks[15]~3_combout\ = (\hcsr04_inst|micro_clks[15]~2_combout\ & (\hcsr04_inst|Add0~30_combout\ & ((\hcsr04_inst|micro_clks[15]~1_combout\)))) # (!\hcsr04_inst|micro_clks[15]~2_combout\ & ((\hcsr04_inst|micro_clks\(15)) # 
-- ((\hcsr04_inst|Add0~30_combout\ & \hcsr04_inst|micro_clks[15]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|micro_clks[15]~2_combout\,
	datab => \hcsr04_inst|Add0~30_combout\,
	datac => \hcsr04_inst|micro_clks\(15),
	datad => \hcsr04_inst|micro_clks[15]~1_combout\,
	combout => \hcsr04_inst|micro_clks[15]~3_combout\);

-- Location: FF_X19_Y7_N29
\hcsr04_inst|micro_clks[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|micro_clks[15]~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|micro_clks\(15));

-- Location: LCCOMB_X19_Y7_N20
\hcsr04_inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Equal1~0_combout\ = (!\hcsr04_inst|micro_clks\(15) & (!\hcsr04_inst|micro_clks\(13) & (!\hcsr04_inst|micro_clks\(12) & !\hcsr04_inst|micro_clks\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|micro_clks\(15),
	datab => \hcsr04_inst|micro_clks\(13),
	datac => \hcsr04_inst|micro_clks\(12),
	datad => \hcsr04_inst|micro_clks\(14),
	combout => \hcsr04_inst|Equal1~0_combout\);

-- Location: LCCOMB_X19_Y7_N14
\hcsr04_inst|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Equal1~4_combout\ = (\hcsr04_inst|Equal1~3_combout\ & (\hcsr04_inst|Equal1~1_combout\ & (\hcsr04_inst|Equal1~2_combout\ & \hcsr04_inst|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|Equal1~3_combout\,
	datab => \hcsr04_inst|Equal1~1_combout\,
	datac => \hcsr04_inst|Equal1~2_combout\,
	datad => \hcsr04_inst|Equal1~0_combout\,
	combout => \hcsr04_inst|Equal1~4_combout\);

-- Location: LCCOMB_X18_Y8_N10
\hcsr04_inst|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Selector6~1_combout\ = (\hcsr04_inst|Selector6~0_combout\) # ((\hcsr04_inst|state.ST_TRIG~q\ & !\hcsr04_inst|Equal1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hcsr04_inst|Selector6~0_combout\,
	datac => \hcsr04_inst|state.ST_TRIG~q\,
	datad => \hcsr04_inst|Equal1~4_combout\,
	combout => \hcsr04_inst|Selector6~1_combout\);

-- Location: LCCOMB_X18_Y8_N24
\hcsr04_inst|micro_clks[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|micro_clks[15]~2_combout\ = ((\hcsr04_inst|clks\(5) & (\hcsr04_inst|clks\(4) & !\hcsr04_inst|micro_clks[15]~0_combout\))) # (!\hcsr04_inst|Selector6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|clks\(5),
	datab => \hcsr04_inst|clks\(4),
	datac => \hcsr04_inst|micro_clks[15]~0_combout\,
	datad => \hcsr04_inst|Selector6~1_combout\,
	combout => \hcsr04_inst|micro_clks[15]~2_combout\);

-- Location: LCCOMB_X19_Y7_N2
\hcsr04_inst|micro_clks[14]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|micro_clks[14]~4_combout\ = (\hcsr04_inst|micro_clks[15]~2_combout\ & (\hcsr04_inst|Add0~28_combout\ & ((\hcsr04_inst|micro_clks[15]~1_combout\)))) # (!\hcsr04_inst|micro_clks[15]~2_combout\ & ((\hcsr04_inst|micro_clks\(14)) # 
-- ((\hcsr04_inst|Add0~28_combout\ & \hcsr04_inst|micro_clks[15]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|micro_clks[15]~2_combout\,
	datab => \hcsr04_inst|Add0~28_combout\,
	datac => \hcsr04_inst|micro_clks\(14),
	datad => \hcsr04_inst|micro_clks[15]~1_combout\,
	combout => \hcsr04_inst|micro_clks[14]~4_combout\);

-- Location: FF_X19_Y7_N3
\hcsr04_inst|micro_clks[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|micro_clks[14]~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|micro_clks\(14));

-- Location: LCCOMB_X19_Y10_N0
\hcsr04_inst|pos_reg[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|pos_reg[0]~16_combout\ = (\hcsr04_inst|pos_reg\(0) & (\hcsr04_inst|micro_clks\(0) $ (VCC))) # (!\hcsr04_inst|pos_reg\(0) & ((\hcsr04_inst|micro_clks\(0)) # (GND)))
-- \hcsr04_inst|pos_reg[0]~17\ = CARRY((\hcsr04_inst|micro_clks\(0)) # (!\hcsr04_inst|pos_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|pos_reg\(0),
	datab => \hcsr04_inst|micro_clks\(0),
	datad => VCC,
	combout => \hcsr04_inst|pos_reg[0]~16_combout\,
	cout => \hcsr04_inst|pos_reg[0]~17\);

-- Location: LCCOMB_X18_Y10_N8
\hcsr04_inst|pos_reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|pos_reg[0]~feeder_combout\ = \hcsr04_inst|pos_reg[0]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hcsr04_inst|pos_reg[0]~16_combout\,
	combout => \hcsr04_inst|pos_reg[0]~feeder_combout\);

-- Location: LCCOMB_X19_Y8_N0
\hcsr04_inst|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Selector2~0_combout\ = (!\hcsr04_inst|old_io_reg~q\ & \hcsr04_inst|new_io_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hcsr04_inst|old_io_reg~q\,
	datad => \hcsr04_inst|new_io_reg~q\,
	combout => \hcsr04_inst|Selector2~0_combout\);

-- Location: LCCOMB_X19_Y8_N14
\hcsr04_inst|pos_reg[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|pos_reg[15]~48_combout\ = (\hcsr04_inst|state.ST_MEASURE~q\ & (\hcsr04_inst|new_io_reg~q\ $ (\hcsr04_inst|old_io_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|new_io_reg~q\,
	datac => \hcsr04_inst|state.ST_MEASURE~q\,
	datad => \hcsr04_inst|old_io_reg~q\,
	combout => \hcsr04_inst|pos_reg[15]~48_combout\);

-- Location: FF_X18_Y10_N9
\hcsr04_inst|pos_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|pos_reg[0]~feeder_combout\,
	asdata => \hcsr04_inst|micro_clks\(0),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \hcsr04_inst|Selector2~0_combout\,
	ena => \hcsr04_inst|pos_reg[15]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|pos_reg\(0));

-- Location: LCCOMB_X19_Y10_N2
\hcsr04_inst|pos_reg[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|pos_reg[1]~18_combout\ = (\hcsr04_inst|micro_clks\(1) & ((\hcsr04_inst|pos_reg\(1) & (!\hcsr04_inst|pos_reg[0]~17\)) # (!\hcsr04_inst|pos_reg\(1) & (\hcsr04_inst|pos_reg[0]~17\ & VCC)))) # (!\hcsr04_inst|micro_clks\(1) & 
-- ((\hcsr04_inst|pos_reg\(1) & ((\hcsr04_inst|pos_reg[0]~17\) # (GND))) # (!\hcsr04_inst|pos_reg\(1) & (!\hcsr04_inst|pos_reg[0]~17\))))
-- \hcsr04_inst|pos_reg[1]~19\ = CARRY((\hcsr04_inst|micro_clks\(1) & (\hcsr04_inst|pos_reg\(1) & !\hcsr04_inst|pos_reg[0]~17\)) # (!\hcsr04_inst|micro_clks\(1) & ((\hcsr04_inst|pos_reg\(1)) # (!\hcsr04_inst|pos_reg[0]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|micro_clks\(1),
	datab => \hcsr04_inst|pos_reg\(1),
	datad => VCC,
	cin => \hcsr04_inst|pos_reg[0]~17\,
	combout => \hcsr04_inst|pos_reg[1]~18_combout\,
	cout => \hcsr04_inst|pos_reg[1]~19\);

-- Location: FF_X19_Y10_N3
\hcsr04_inst|pos_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|pos_reg[1]~18_combout\,
	asdata => \hcsr04_inst|micro_clks\(1),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \hcsr04_inst|Selector2~0_combout\,
	ena => \hcsr04_inst|pos_reg[15]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|pos_reg\(1));

-- Location: LCCOMB_X19_Y10_N4
\hcsr04_inst|pos_reg[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|pos_reg[2]~20_combout\ = ((\hcsr04_inst|pos_reg\(2) $ (\hcsr04_inst|micro_clks\(2) $ (\hcsr04_inst|pos_reg[1]~19\)))) # (GND)
-- \hcsr04_inst|pos_reg[2]~21\ = CARRY((\hcsr04_inst|pos_reg\(2) & (\hcsr04_inst|micro_clks\(2) & !\hcsr04_inst|pos_reg[1]~19\)) # (!\hcsr04_inst|pos_reg\(2) & ((\hcsr04_inst|micro_clks\(2)) # (!\hcsr04_inst|pos_reg[1]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|pos_reg\(2),
	datab => \hcsr04_inst|micro_clks\(2),
	datad => VCC,
	cin => \hcsr04_inst|pos_reg[1]~19\,
	combout => \hcsr04_inst|pos_reg[2]~20_combout\,
	cout => \hcsr04_inst|pos_reg[2]~21\);

-- Location: LCCOMB_X18_Y10_N26
\hcsr04_inst|pos_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|pos_reg[2]~feeder_combout\ = \hcsr04_inst|pos_reg[2]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hcsr04_inst|pos_reg[2]~20_combout\,
	combout => \hcsr04_inst|pos_reg[2]~feeder_combout\);

-- Location: FF_X18_Y10_N27
\hcsr04_inst|pos_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|pos_reg[2]~feeder_combout\,
	asdata => \hcsr04_inst|micro_clks\(2),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \hcsr04_inst|Selector2~0_combout\,
	ena => \hcsr04_inst|pos_reg[15]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|pos_reg\(2));

-- Location: LCCOMB_X19_Y10_N6
\hcsr04_inst|pos_reg[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|pos_reg[3]~22_combout\ = (\hcsr04_inst|pos_reg\(3) & ((\hcsr04_inst|micro_clks\(3) & (!\hcsr04_inst|pos_reg[2]~21\)) # (!\hcsr04_inst|micro_clks\(3) & ((\hcsr04_inst|pos_reg[2]~21\) # (GND))))) # (!\hcsr04_inst|pos_reg\(3) & 
-- ((\hcsr04_inst|micro_clks\(3) & (\hcsr04_inst|pos_reg[2]~21\ & VCC)) # (!\hcsr04_inst|micro_clks\(3) & (!\hcsr04_inst|pos_reg[2]~21\))))
-- \hcsr04_inst|pos_reg[3]~23\ = CARRY((\hcsr04_inst|pos_reg\(3) & ((!\hcsr04_inst|pos_reg[2]~21\) # (!\hcsr04_inst|micro_clks\(3)))) # (!\hcsr04_inst|pos_reg\(3) & (!\hcsr04_inst|micro_clks\(3) & !\hcsr04_inst|pos_reg[2]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|pos_reg\(3),
	datab => \hcsr04_inst|micro_clks\(3),
	datad => VCC,
	cin => \hcsr04_inst|pos_reg[2]~21\,
	combout => \hcsr04_inst|pos_reg[3]~22_combout\,
	cout => \hcsr04_inst|pos_reg[3]~23\);

-- Location: FF_X19_Y10_N7
\hcsr04_inst|pos_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|pos_reg[3]~22_combout\,
	asdata => \hcsr04_inst|micro_clks\(3),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \hcsr04_inst|Selector2~0_combout\,
	ena => \hcsr04_inst|pos_reg[15]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|pos_reg\(3));

-- Location: LCCOMB_X19_Y10_N8
\hcsr04_inst|pos_reg[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|pos_reg[4]~24_combout\ = ((\hcsr04_inst|micro_clks\(4) $ (\hcsr04_inst|pos_reg\(4) $ (\hcsr04_inst|pos_reg[3]~23\)))) # (GND)
-- \hcsr04_inst|pos_reg[4]~25\ = CARRY((\hcsr04_inst|micro_clks\(4) & ((!\hcsr04_inst|pos_reg[3]~23\) # (!\hcsr04_inst|pos_reg\(4)))) # (!\hcsr04_inst|micro_clks\(4) & (!\hcsr04_inst|pos_reg\(4) & !\hcsr04_inst|pos_reg[3]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|micro_clks\(4),
	datab => \hcsr04_inst|pos_reg\(4),
	datad => VCC,
	cin => \hcsr04_inst|pos_reg[3]~23\,
	combout => \hcsr04_inst|pos_reg[4]~24_combout\,
	cout => \hcsr04_inst|pos_reg[4]~25\);

-- Location: FF_X19_Y10_N9
\hcsr04_inst|pos_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|pos_reg[4]~24_combout\,
	asdata => \hcsr04_inst|micro_clks\(4),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \hcsr04_inst|Selector2~0_combout\,
	ena => \hcsr04_inst|pos_reg[15]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|pos_reg\(4));

-- Location: LCCOMB_X19_Y10_N10
\hcsr04_inst|pos_reg[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|pos_reg[5]~26_combout\ = (\hcsr04_inst|pos_reg\(5) & ((\hcsr04_inst|micro_clks\(5) & (!\hcsr04_inst|pos_reg[4]~25\)) # (!\hcsr04_inst|micro_clks\(5) & ((\hcsr04_inst|pos_reg[4]~25\) # (GND))))) # (!\hcsr04_inst|pos_reg\(5) & 
-- ((\hcsr04_inst|micro_clks\(5) & (\hcsr04_inst|pos_reg[4]~25\ & VCC)) # (!\hcsr04_inst|micro_clks\(5) & (!\hcsr04_inst|pos_reg[4]~25\))))
-- \hcsr04_inst|pos_reg[5]~27\ = CARRY((\hcsr04_inst|pos_reg\(5) & ((!\hcsr04_inst|pos_reg[4]~25\) # (!\hcsr04_inst|micro_clks\(5)))) # (!\hcsr04_inst|pos_reg\(5) & (!\hcsr04_inst|micro_clks\(5) & !\hcsr04_inst|pos_reg[4]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|pos_reg\(5),
	datab => \hcsr04_inst|micro_clks\(5),
	datad => VCC,
	cin => \hcsr04_inst|pos_reg[4]~25\,
	combout => \hcsr04_inst|pos_reg[5]~26_combout\,
	cout => \hcsr04_inst|pos_reg[5]~27\);

-- Location: FF_X19_Y10_N11
\hcsr04_inst|pos_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|pos_reg[5]~26_combout\,
	asdata => \hcsr04_inst|micro_clks\(5),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \hcsr04_inst|Selector2~0_combout\,
	ena => \hcsr04_inst|pos_reg[15]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|pos_reg\(5));

-- Location: LCCOMB_X19_Y10_N12
\hcsr04_inst|pos_reg[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|pos_reg[6]~28_combout\ = ((\hcsr04_inst|pos_reg\(6) $ (\hcsr04_inst|micro_clks\(6) $ (\hcsr04_inst|pos_reg[5]~27\)))) # (GND)
-- \hcsr04_inst|pos_reg[6]~29\ = CARRY((\hcsr04_inst|pos_reg\(6) & (\hcsr04_inst|micro_clks\(6) & !\hcsr04_inst|pos_reg[5]~27\)) # (!\hcsr04_inst|pos_reg\(6) & ((\hcsr04_inst|micro_clks\(6)) # (!\hcsr04_inst|pos_reg[5]~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|pos_reg\(6),
	datab => \hcsr04_inst|micro_clks\(6),
	datad => VCC,
	cin => \hcsr04_inst|pos_reg[5]~27\,
	combout => \hcsr04_inst|pos_reg[6]~28_combout\,
	cout => \hcsr04_inst|pos_reg[6]~29\);

-- Location: FF_X19_Y10_N13
\hcsr04_inst|pos_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|pos_reg[6]~28_combout\,
	asdata => \hcsr04_inst|micro_clks\(6),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \hcsr04_inst|Selector2~0_combout\,
	ena => \hcsr04_inst|pos_reg[15]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|pos_reg\(6));

-- Location: LCCOMB_X19_Y10_N14
\hcsr04_inst|pos_reg[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|pos_reg[7]~30_combout\ = (\hcsr04_inst|micro_clks\(7) & ((\hcsr04_inst|pos_reg\(7) & (!\hcsr04_inst|pos_reg[6]~29\)) # (!\hcsr04_inst|pos_reg\(7) & (\hcsr04_inst|pos_reg[6]~29\ & VCC)))) # (!\hcsr04_inst|micro_clks\(7) & 
-- ((\hcsr04_inst|pos_reg\(7) & ((\hcsr04_inst|pos_reg[6]~29\) # (GND))) # (!\hcsr04_inst|pos_reg\(7) & (!\hcsr04_inst|pos_reg[6]~29\))))
-- \hcsr04_inst|pos_reg[7]~31\ = CARRY((\hcsr04_inst|micro_clks\(7) & (\hcsr04_inst|pos_reg\(7) & !\hcsr04_inst|pos_reg[6]~29\)) # (!\hcsr04_inst|micro_clks\(7) & ((\hcsr04_inst|pos_reg\(7)) # (!\hcsr04_inst|pos_reg[6]~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|micro_clks\(7),
	datab => \hcsr04_inst|pos_reg\(7),
	datad => VCC,
	cin => \hcsr04_inst|pos_reg[6]~29\,
	combout => \hcsr04_inst|pos_reg[7]~30_combout\,
	cout => \hcsr04_inst|pos_reg[7]~31\);

-- Location: LCCOMB_X18_Y10_N24
\hcsr04_inst|pos_reg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|pos_reg[7]~feeder_combout\ = \hcsr04_inst|pos_reg[7]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hcsr04_inst|pos_reg[7]~30_combout\,
	combout => \hcsr04_inst|pos_reg[7]~feeder_combout\);

-- Location: FF_X18_Y10_N25
\hcsr04_inst|pos_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|pos_reg[7]~feeder_combout\,
	asdata => \hcsr04_inst|micro_clks\(7),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \hcsr04_inst|Selector2~0_combout\,
	ena => \hcsr04_inst|pos_reg[15]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|pos_reg\(7));

-- Location: LCCOMB_X19_Y10_N16
\hcsr04_inst|pos_reg[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|pos_reg[8]~32_combout\ = ((\hcsr04_inst|micro_clks\(8) $ (\hcsr04_inst|pos_reg\(8) $ (\hcsr04_inst|pos_reg[7]~31\)))) # (GND)
-- \hcsr04_inst|pos_reg[8]~33\ = CARRY((\hcsr04_inst|micro_clks\(8) & ((!\hcsr04_inst|pos_reg[7]~31\) # (!\hcsr04_inst|pos_reg\(8)))) # (!\hcsr04_inst|micro_clks\(8) & (!\hcsr04_inst|pos_reg\(8) & !\hcsr04_inst|pos_reg[7]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|micro_clks\(8),
	datab => \hcsr04_inst|pos_reg\(8),
	datad => VCC,
	cin => \hcsr04_inst|pos_reg[7]~31\,
	combout => \hcsr04_inst|pos_reg[8]~32_combout\,
	cout => \hcsr04_inst|pos_reg[8]~33\);

-- Location: FF_X19_Y10_N17
\hcsr04_inst|pos_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|pos_reg[8]~32_combout\,
	asdata => \hcsr04_inst|micro_clks\(8),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \hcsr04_inst|Selector2~0_combout\,
	ena => \hcsr04_inst|pos_reg[15]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|pos_reg\(8));

-- Location: LCCOMB_X19_Y10_N18
\hcsr04_inst|pos_reg[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|pos_reg[9]~34_combout\ = (\hcsr04_inst|pos_reg\(9) & ((\hcsr04_inst|micro_clks\(9) & (!\hcsr04_inst|pos_reg[8]~33\)) # (!\hcsr04_inst|micro_clks\(9) & ((\hcsr04_inst|pos_reg[8]~33\) # (GND))))) # (!\hcsr04_inst|pos_reg\(9) & 
-- ((\hcsr04_inst|micro_clks\(9) & (\hcsr04_inst|pos_reg[8]~33\ & VCC)) # (!\hcsr04_inst|micro_clks\(9) & (!\hcsr04_inst|pos_reg[8]~33\))))
-- \hcsr04_inst|pos_reg[9]~35\ = CARRY((\hcsr04_inst|pos_reg\(9) & ((!\hcsr04_inst|pos_reg[8]~33\) # (!\hcsr04_inst|micro_clks\(9)))) # (!\hcsr04_inst|pos_reg\(9) & (!\hcsr04_inst|micro_clks\(9) & !\hcsr04_inst|pos_reg[8]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|pos_reg\(9),
	datab => \hcsr04_inst|micro_clks\(9),
	datad => VCC,
	cin => \hcsr04_inst|pos_reg[8]~33\,
	combout => \hcsr04_inst|pos_reg[9]~34_combout\,
	cout => \hcsr04_inst|pos_reg[9]~35\);

-- Location: FF_X19_Y10_N19
\hcsr04_inst|pos_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|pos_reg[9]~34_combout\,
	asdata => \hcsr04_inst|micro_clks\(9),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \hcsr04_inst|Selector2~0_combout\,
	ena => \hcsr04_inst|pos_reg[15]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|pos_reg\(9));

-- Location: LCCOMB_X19_Y10_N20
\hcsr04_inst|pos_reg[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|pos_reg[10]~36_combout\ = ((\hcsr04_inst|micro_clks\(10) $ (\hcsr04_inst|pos_reg\(10) $ (\hcsr04_inst|pos_reg[9]~35\)))) # (GND)
-- \hcsr04_inst|pos_reg[10]~37\ = CARRY((\hcsr04_inst|micro_clks\(10) & ((!\hcsr04_inst|pos_reg[9]~35\) # (!\hcsr04_inst|pos_reg\(10)))) # (!\hcsr04_inst|micro_clks\(10) & (!\hcsr04_inst|pos_reg\(10) & !\hcsr04_inst|pos_reg[9]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|micro_clks\(10),
	datab => \hcsr04_inst|pos_reg\(10),
	datad => VCC,
	cin => \hcsr04_inst|pos_reg[9]~35\,
	combout => \hcsr04_inst|pos_reg[10]~36_combout\,
	cout => \hcsr04_inst|pos_reg[10]~37\);

-- Location: FF_X19_Y10_N21
\hcsr04_inst|pos_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|pos_reg[10]~36_combout\,
	asdata => \hcsr04_inst|micro_clks\(10),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \hcsr04_inst|Selector2~0_combout\,
	ena => \hcsr04_inst|pos_reg[15]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|pos_reg\(10));

-- Location: LCCOMB_X19_Y10_N22
\hcsr04_inst|pos_reg[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|pos_reg[11]~38_combout\ = (\hcsr04_inst|pos_reg\(11) & ((\hcsr04_inst|micro_clks\(11) & (!\hcsr04_inst|pos_reg[10]~37\)) # (!\hcsr04_inst|micro_clks\(11) & ((\hcsr04_inst|pos_reg[10]~37\) # (GND))))) # (!\hcsr04_inst|pos_reg\(11) & 
-- ((\hcsr04_inst|micro_clks\(11) & (\hcsr04_inst|pos_reg[10]~37\ & VCC)) # (!\hcsr04_inst|micro_clks\(11) & (!\hcsr04_inst|pos_reg[10]~37\))))
-- \hcsr04_inst|pos_reg[11]~39\ = CARRY((\hcsr04_inst|pos_reg\(11) & ((!\hcsr04_inst|pos_reg[10]~37\) # (!\hcsr04_inst|micro_clks\(11)))) # (!\hcsr04_inst|pos_reg\(11) & (!\hcsr04_inst|micro_clks\(11) & !\hcsr04_inst|pos_reg[10]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|pos_reg\(11),
	datab => \hcsr04_inst|micro_clks\(11),
	datad => VCC,
	cin => \hcsr04_inst|pos_reg[10]~37\,
	combout => \hcsr04_inst|pos_reg[11]~38_combout\,
	cout => \hcsr04_inst|pos_reg[11]~39\);

-- Location: FF_X19_Y10_N23
\hcsr04_inst|pos_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|pos_reg[11]~38_combout\,
	asdata => \hcsr04_inst|micro_clks\(11),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \hcsr04_inst|Selector2~0_combout\,
	ena => \hcsr04_inst|pos_reg[15]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|pos_reg\(11));

-- Location: LCCOMB_X19_Y10_N24
\hcsr04_inst|pos_reg[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|pos_reg[12]~40_combout\ = ((\hcsr04_inst|micro_clks\(12) $ (\hcsr04_inst|pos_reg\(12) $ (\hcsr04_inst|pos_reg[11]~39\)))) # (GND)
-- \hcsr04_inst|pos_reg[12]~41\ = CARRY((\hcsr04_inst|micro_clks\(12) & ((!\hcsr04_inst|pos_reg[11]~39\) # (!\hcsr04_inst|pos_reg\(12)))) # (!\hcsr04_inst|micro_clks\(12) & (!\hcsr04_inst|pos_reg\(12) & !\hcsr04_inst|pos_reg[11]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|micro_clks\(12),
	datab => \hcsr04_inst|pos_reg\(12),
	datad => VCC,
	cin => \hcsr04_inst|pos_reg[11]~39\,
	combout => \hcsr04_inst|pos_reg[12]~40_combout\,
	cout => \hcsr04_inst|pos_reg[12]~41\);

-- Location: FF_X19_Y10_N25
\hcsr04_inst|pos_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|pos_reg[12]~40_combout\,
	asdata => \hcsr04_inst|micro_clks\(12),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \hcsr04_inst|Selector2~0_combout\,
	ena => \hcsr04_inst|pos_reg[15]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|pos_reg\(12));

-- Location: LCCOMB_X19_Y10_N26
\hcsr04_inst|pos_reg[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|pos_reg[13]~42_combout\ = (\hcsr04_inst|micro_clks\(13) & ((\hcsr04_inst|pos_reg\(13) & (!\hcsr04_inst|pos_reg[12]~41\)) # (!\hcsr04_inst|pos_reg\(13) & (\hcsr04_inst|pos_reg[12]~41\ & VCC)))) # (!\hcsr04_inst|micro_clks\(13) & 
-- ((\hcsr04_inst|pos_reg\(13) & ((\hcsr04_inst|pos_reg[12]~41\) # (GND))) # (!\hcsr04_inst|pos_reg\(13) & (!\hcsr04_inst|pos_reg[12]~41\))))
-- \hcsr04_inst|pos_reg[13]~43\ = CARRY((\hcsr04_inst|micro_clks\(13) & (\hcsr04_inst|pos_reg\(13) & !\hcsr04_inst|pos_reg[12]~41\)) # (!\hcsr04_inst|micro_clks\(13) & ((\hcsr04_inst|pos_reg\(13)) # (!\hcsr04_inst|pos_reg[12]~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|micro_clks\(13),
	datab => \hcsr04_inst|pos_reg\(13),
	datad => VCC,
	cin => \hcsr04_inst|pos_reg[12]~41\,
	combout => \hcsr04_inst|pos_reg[13]~42_combout\,
	cout => \hcsr04_inst|pos_reg[13]~43\);

-- Location: FF_X19_Y10_N27
\hcsr04_inst|pos_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|pos_reg[13]~42_combout\,
	asdata => \hcsr04_inst|micro_clks\(13),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \hcsr04_inst|Selector2~0_combout\,
	ena => \hcsr04_inst|pos_reg[15]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|pos_reg\(13));

-- Location: LCCOMB_X19_Y10_N28
\hcsr04_inst|pos_reg[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|pos_reg[14]~44_combout\ = ((\hcsr04_inst|micro_clks\(14) $ (\hcsr04_inst|pos_reg\(14) $ (\hcsr04_inst|pos_reg[13]~43\)))) # (GND)
-- \hcsr04_inst|pos_reg[14]~45\ = CARRY((\hcsr04_inst|micro_clks\(14) & ((!\hcsr04_inst|pos_reg[13]~43\) # (!\hcsr04_inst|pos_reg\(14)))) # (!\hcsr04_inst|micro_clks\(14) & (!\hcsr04_inst|pos_reg\(14) & !\hcsr04_inst|pos_reg[13]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|micro_clks\(14),
	datab => \hcsr04_inst|pos_reg\(14),
	datad => VCC,
	cin => \hcsr04_inst|pos_reg[13]~43\,
	combout => \hcsr04_inst|pos_reg[14]~44_combout\,
	cout => \hcsr04_inst|pos_reg[14]~45\);

-- Location: FF_X19_Y10_N29
\hcsr04_inst|pos_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|pos_reg[14]~44_combout\,
	asdata => \hcsr04_inst|micro_clks\(14),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \hcsr04_inst|Selector2~0_combout\,
	ena => \hcsr04_inst|pos_reg[15]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|pos_reg\(14));

-- Location: LCCOMB_X19_Y10_N30
\hcsr04_inst|pos_reg[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|pos_reg[15]~46_combout\ = \hcsr04_inst|micro_clks\(15) $ (\hcsr04_inst|pos_reg[14]~45\ $ (!\hcsr04_inst|pos_reg\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|micro_clks\(15),
	datad => \hcsr04_inst|pos_reg\(15),
	cin => \hcsr04_inst|pos_reg[14]~45\,
	combout => \hcsr04_inst|pos_reg[15]~46_combout\);

-- Location: FF_X19_Y10_N31
\hcsr04_inst|pos_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|pos_reg[15]~46_combout\,
	asdata => \hcsr04_inst|micro_clks\(15),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \hcsr04_inst|Selector2~0_combout\,
	ena => \hcsr04_inst|pos_reg[15]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|pos_reg\(15));

-- Location: LCCOMB_X22_Y11_N20
\Mult0|mult_core|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|_~3_combout\ = (\hcsr04_inst|pos_reg\(14) & \hcsr04_inst|pos_reg\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hcsr04_inst|pos_reg\(14),
	datad => \hcsr04_inst|pos_reg\(15),
	combout => \Mult0|mult_core|_~3_combout\);

-- Location: LCCOMB_X23_Y11_N30
\Mult0|mult_core|romout[3][10]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[3][10]~23_combout\ = (\hcsr04_inst|pos_reg\(14) & (\hcsr04_inst|pos_reg\(13) & !\hcsr04_inst|pos_reg\(15))) # (!\hcsr04_inst|pos_reg\(14) & ((\hcsr04_inst|pos_reg\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|pos_reg\(14),
	datac => \hcsr04_inst|pos_reg\(13),
	datad => \hcsr04_inst|pos_reg\(15),
	combout => \Mult0|mult_core|romout[3][10]~23_combout\);

-- Location: LCCOMB_X19_Y11_N4
\Mult0|mult_core|romout[3][9]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[3][9]~22_combout\ = (\hcsr04_inst|pos_reg\(14) & ((\hcsr04_inst|pos_reg\(13) & (\hcsr04_inst|pos_reg\(12) & \hcsr04_inst|pos_reg\(15))) # (!\hcsr04_inst|pos_reg\(13) & ((!\hcsr04_inst|pos_reg\(15)))))) # (!\hcsr04_inst|pos_reg\(14) 
-- & ((\hcsr04_inst|pos_reg\(12) & ((\hcsr04_inst|pos_reg\(13)) # (\hcsr04_inst|pos_reg\(15)))) # (!\hcsr04_inst|pos_reg\(12) & (\hcsr04_inst|pos_reg\(13) & \hcsr04_inst|pos_reg\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|pos_reg\(12),
	datab => \hcsr04_inst|pos_reg\(14),
	datac => \hcsr04_inst|pos_reg\(13),
	datad => \hcsr04_inst|pos_reg\(15),
	combout => \Mult0|mult_core|romout[3][9]~22_combout\);

-- Location: LCCOMB_X23_Y11_N2
\Mult0|mult_core|romout[3][6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[3][6]~18_combout\ = (\hcsr04_inst|pos_reg\(14) & ((\hcsr04_inst|pos_reg\(12) & (!\hcsr04_inst|pos_reg\(13) & !\hcsr04_inst|pos_reg\(15))) # (!\hcsr04_inst|pos_reg\(12) & (\hcsr04_inst|pos_reg\(13) & \hcsr04_inst|pos_reg\(15))))) # 
-- (!\hcsr04_inst|pos_reg\(14) & ((\hcsr04_inst|pos_reg\(12) & (\hcsr04_inst|pos_reg\(13) & \hcsr04_inst|pos_reg\(15))) # (!\hcsr04_inst|pos_reg\(12) & (\hcsr04_inst|pos_reg\(13) $ (\hcsr04_inst|pos_reg\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|pos_reg\(14),
	datab => \hcsr04_inst|pos_reg\(12),
	datac => \hcsr04_inst|pos_reg\(13),
	datad => \hcsr04_inst|pos_reg\(15),
	combout => \Mult0|mult_core|romout[3][6]~18_combout\);

-- Location: LCCOMB_X23_Y10_N2
\Mult0|mult_core|romout[3][7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[3][7]~20_combout\ = (\hcsr04_inst|pos_reg\(12) & ((\hcsr04_inst|pos_reg\(15) & ((\hcsr04_inst|pos_reg\(13)) # (!\hcsr04_inst|pos_reg\(14)))) # (!\hcsr04_inst|pos_reg\(15) & (\hcsr04_inst|pos_reg\(13) $ 
-- (\hcsr04_inst|pos_reg\(14)))))) # (!\hcsr04_inst|pos_reg\(12) & ((\hcsr04_inst|pos_reg\(15) & ((\hcsr04_inst|pos_reg\(14)) # (!\hcsr04_inst|pos_reg\(13)))) # (!\hcsr04_inst|pos_reg\(15) & ((\hcsr04_inst|pos_reg\(13)) # (!\hcsr04_inst|pos_reg\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|pos_reg\(12),
	datab => \hcsr04_inst|pos_reg\(15),
	datac => \hcsr04_inst|pos_reg\(13),
	datad => \hcsr04_inst|pos_reg\(14),
	combout => \Mult0|mult_core|romout[3][7]~20_combout\);

-- Location: LCCOMB_X23_Y11_N28
\Mult0|mult_core|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|_~2_combout\ = (\hcsr04_inst|pos_reg\(11) & \hcsr04_inst|pos_reg\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hcsr04_inst|pos_reg\(11),
	datad => \hcsr04_inst|pos_reg\(10),
	combout => \Mult0|mult_core|_~2_combout\);

-- Location: LCCOMB_X19_Y11_N6
\Mult0|mult_core|romout[2][10]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][10]~19_combout\ = (\hcsr04_inst|pos_reg\(11) & ((!\hcsr04_inst|pos_reg\(10)))) # (!\hcsr04_inst|pos_reg\(11) & (\hcsr04_inst|pos_reg\(9) & \hcsr04_inst|pos_reg\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hcsr04_inst|pos_reg\(11),
	datac => \hcsr04_inst|pos_reg\(9),
	datad => \hcsr04_inst|pos_reg\(10),
	combout => \Mult0|mult_core|romout[2][10]~19_combout\);

-- Location: LCCOMB_X19_Y11_N8
\Mult0|mult_core|romout[2][9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][9]~1_combout\ = (\hcsr04_inst|pos_reg\(10) & ((\hcsr04_inst|pos_reg\(11) & (\hcsr04_inst|pos_reg\(9) & \hcsr04_inst|pos_reg\(8))) # (!\hcsr04_inst|pos_reg\(11) & (!\hcsr04_inst|pos_reg\(9))))) # (!\hcsr04_inst|pos_reg\(10) & 
-- ((\hcsr04_inst|pos_reg\(11) & ((\hcsr04_inst|pos_reg\(9)) # (\hcsr04_inst|pos_reg\(8)))) # (!\hcsr04_inst|pos_reg\(11) & (\hcsr04_inst|pos_reg\(9) & \hcsr04_inst|pos_reg\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|pos_reg\(10),
	datab => \hcsr04_inst|pos_reg\(11),
	datac => \hcsr04_inst|pos_reg\(9),
	datad => \hcsr04_inst|pos_reg\(8),
	combout => \Mult0|mult_core|romout[2][9]~1_combout\);

-- Location: LCCOMB_X23_Y11_N24
\Mult0|mult_core|romout[3][5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[3][5]~0_combout\ = \hcsr04_inst|pos_reg\(15) $ (((\hcsr04_inst|pos_reg\(14) & (\hcsr04_inst|pos_reg\(12) $ (!\hcsr04_inst|pos_reg\(13)))) # (!\hcsr04_inst|pos_reg\(14) & (\hcsr04_inst|pos_reg\(12) & !\hcsr04_inst|pos_reg\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|pos_reg\(14),
	datab => \hcsr04_inst|pos_reg\(12),
	datac => \hcsr04_inst|pos_reg\(13),
	datad => \hcsr04_inst|pos_reg\(15),
	combout => \Mult0|mult_core|romout[3][5]~0_combout\);

-- Location: LCCOMB_X19_Y11_N16
\Mult0|mult_core|romout[2][6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][6]~3_combout\ = (\hcsr04_inst|pos_reg\(10) & ((\hcsr04_inst|pos_reg\(11) & (\hcsr04_inst|pos_reg\(9) & !\hcsr04_inst|pos_reg\(8))) # (!\hcsr04_inst|pos_reg\(11) & (!\hcsr04_inst|pos_reg\(9) & \hcsr04_inst|pos_reg\(8))))) # 
-- (!\hcsr04_inst|pos_reg\(10) & ((\hcsr04_inst|pos_reg\(11) & (\hcsr04_inst|pos_reg\(9) $ (!\hcsr04_inst|pos_reg\(8)))) # (!\hcsr04_inst|pos_reg\(11) & (\hcsr04_inst|pos_reg\(9) & !\hcsr04_inst|pos_reg\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|pos_reg\(10),
	datab => \hcsr04_inst|pos_reg\(11),
	datac => \hcsr04_inst|pos_reg\(9),
	datad => \hcsr04_inst|pos_reg\(8),
	combout => \Mult0|mult_core|romout[2][6]~3_combout\);

-- Location: LCCOMB_X19_Y11_N26
\Mult0|mult_core|romout[3][4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[3][4]~2_combout\ = \hcsr04_inst|pos_reg\(14) $ (((!\hcsr04_inst|pos_reg\(12) & \hcsr04_inst|pos_reg\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|pos_reg\(12),
	datac => \hcsr04_inst|pos_reg\(13),
	datad => \hcsr04_inst|pos_reg\(14),
	combout => \Mult0|mult_core|romout[3][4]~2_combout\);

-- Location: LCCOMB_X23_Y11_N26
\Mult0|mult_core|romout[3][3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[3][3]~4_combout\ = \hcsr04_inst|pos_reg\(13) $ (\hcsr04_inst|pos_reg\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hcsr04_inst|pos_reg\(13),
	datad => \hcsr04_inst|pos_reg\(12),
	combout => \Mult0|mult_core|romout[3][3]~4_combout\);

-- Location: LCCOMB_X23_Y11_N0
\Mult0|mult_core|romout[2][7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][7]~5_combout\ = (\hcsr04_inst|pos_reg\(11) & ((\hcsr04_inst|pos_reg\(9) & ((\hcsr04_inst|pos_reg\(8)) # (\hcsr04_inst|pos_reg\(10)))) # (!\hcsr04_inst|pos_reg\(9) & ((!\hcsr04_inst|pos_reg\(10)) # (!\hcsr04_inst|pos_reg\(8)))))) 
-- # (!\hcsr04_inst|pos_reg\(11) & ((\hcsr04_inst|pos_reg\(9) & ((!\hcsr04_inst|pos_reg\(10)) # (!\hcsr04_inst|pos_reg\(8)))) # (!\hcsr04_inst|pos_reg\(9) & (\hcsr04_inst|pos_reg\(8) $ (!\hcsr04_inst|pos_reg\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|pos_reg\(11),
	datab => \hcsr04_inst|pos_reg\(9),
	datac => \hcsr04_inst|pos_reg\(8),
	datad => \hcsr04_inst|pos_reg\(10),
	combout => \Mult0|mult_core|romout[2][7]~5_combout\);

-- Location: LCCOMB_X23_Y11_N4
\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ = (\Mult0|mult_core|romout[2][6]~3_combout\ & (\hcsr04_inst|pos_reg\(12) $ (VCC))) # (!\Mult0|mult_core|romout[2][6]~3_combout\ & (\hcsr04_inst|pos_reg\(12) & VCC))
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\ = CARRY((\Mult0|mult_core|romout[2][6]~3_combout\ & \hcsr04_inst|pos_reg\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[2][6]~3_combout\,
	datab => \hcsr04_inst|pos_reg\(12),
	datad => VCC,
	combout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\,
	cout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\);

-- Location: LCCOMB_X23_Y11_N6
\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ = (\Mult0|mult_core|romout[3][3]~4_combout\ & ((\Mult0|mult_core|romout[2][7]~5_combout\ & (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\)) # 
-- (!\Mult0|mult_core|romout[2][7]~5_combout\ & (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\ & VCC)))) # (!\Mult0|mult_core|romout[3][3]~4_combout\ & ((\Mult0|mult_core|romout[2][7]~5_combout\ & 
-- ((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\) # (GND))) # (!\Mult0|mult_core|romout[2][7]~5_combout\ & (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\))))
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~3\ = CARRY((\Mult0|mult_core|romout[3][3]~4_combout\ & (\Mult0|mult_core|romout[2][7]~5_combout\ & !\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\)) # (!\Mult0|mult_core|romout[3][3]~4_combout\ 
-- & ((\Mult0|mult_core|romout[2][7]~5_combout\) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[3][3]~4_combout\,
	datab => \Mult0|mult_core|romout[2][7]~5_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\,
	combout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\,
	cout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~3\);

-- Location: LCCOMB_X23_Y11_N8
\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\ = ((\Mult0|mult_core|romout[2][6]~3_combout\ $ (\Mult0|mult_core|romout[3][4]~2_combout\ $ (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~3\)))) # (GND)
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~5\ = CARRY((\Mult0|mult_core|romout[2][6]~3_combout\ & ((\Mult0|mult_core|romout[3][4]~2_combout\) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~3\))) # 
-- (!\Mult0|mult_core|romout[2][6]~3_combout\ & (\Mult0|mult_core|romout[3][4]~2_combout\ & !\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[2][6]~3_combout\,
	datab => \Mult0|mult_core|romout[3][4]~2_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~3\,
	combout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\,
	cout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~5\);

-- Location: LCCOMB_X23_Y11_N10
\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\ = (\Mult0|mult_core|romout[2][9]~1_combout\ & ((\Mult0|mult_core|romout[3][5]~0_combout\ & (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~5\ & VCC)) # 
-- (!\Mult0|mult_core|romout[3][5]~0_combout\ & (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~5\)))) # (!\Mult0|mult_core|romout[2][9]~1_combout\ & ((\Mult0|mult_core|romout[3][5]~0_combout\ & 
-- (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~5\)) # (!\Mult0|mult_core|romout[3][5]~0_combout\ & ((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~5\) # (GND)))))
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~7\ = CARRY((\Mult0|mult_core|romout[2][9]~1_combout\ & (!\Mult0|mult_core|romout[3][5]~0_combout\ & !\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~5\)) # 
-- (!\Mult0|mult_core|romout[2][9]~1_combout\ & ((!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~5\) # (!\Mult0|mult_core|romout[3][5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[2][9]~1_combout\,
	datab => \Mult0|mult_core|romout[3][5]~0_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~5\,
	combout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\,
	cout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~7\);

-- Location: LCCOMB_X23_Y11_N12
\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~8_combout\ = ((\Mult0|mult_core|romout[2][10]~19_combout\ $ (\Mult0|mult_core|romout[3][6]~18_combout\ $ (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~7\)))) # (GND)
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~9\ = CARRY((\Mult0|mult_core|romout[2][10]~19_combout\ & ((\Mult0|mult_core|romout[3][6]~18_combout\) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~7\))) # 
-- (!\Mult0|mult_core|romout[2][10]~19_combout\ & (\Mult0|mult_core|romout[3][6]~18_combout\ & !\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[2][10]~19_combout\,
	datab => \Mult0|mult_core|romout[3][6]~18_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~7\,
	combout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~8_combout\,
	cout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~9\);

-- Location: LCCOMB_X23_Y11_N14
\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~10_combout\ = (\Mult0|mult_core|romout[3][7]~20_combout\ & ((\Mult0|mult_core|_~2_combout\ & (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~9\)) # (!\Mult0|mult_core|_~2_combout\ & 
-- ((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~9\) # (GND))))) # (!\Mult0|mult_core|romout[3][7]~20_combout\ & ((\Mult0|mult_core|_~2_combout\ & (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~9\ & VCC)) # (!\Mult0|mult_core|_~2_combout\ & 
-- (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~9\))))
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~11\ = CARRY((\Mult0|mult_core|romout[3][7]~20_combout\ & ((!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~9\) # (!\Mult0|mult_core|_~2_combout\))) # (!\Mult0|mult_core|romout[3][7]~20_combout\ & 
-- (!\Mult0|mult_core|_~2_combout\ & !\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[3][7]~20_combout\,
	datab => \Mult0|mult_core|_~2_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~9\,
	combout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~10_combout\,
	cout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~11\);

-- Location: LCCOMB_X23_Y11_N16
\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~12_combout\ = (\Mult0|mult_core|romout[3][6]~18_combout\ & (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~11\ $ (GND))) # (!\Mult0|mult_core|romout[3][6]~18_combout\ & 
-- (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~11\ & VCC))
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~13\ = CARRY((\Mult0|mult_core|romout[3][6]~18_combout\ & !\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|romout[3][6]~18_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~11\,
	combout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~12_combout\,
	cout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~13\);

-- Location: LCCOMB_X23_Y11_N18
\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~14_combout\ = (\Mult0|mult_core|romout[3][9]~22_combout\ & (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~13\)) # (!\Mult0|mult_core|romout[3][9]~22_combout\ & 
-- ((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~13\) # (GND)))
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~15\ = CARRY((!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~13\) # (!\Mult0|mult_core|romout[3][9]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|romout[3][9]~22_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~13\,
	combout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~14_combout\,
	cout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~15\);

-- Location: LCCOMB_X23_Y11_N20
\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~16_combout\ = (\Mult0|mult_core|romout[3][10]~23_combout\ & (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~15\ $ (GND))) # (!\Mult0|mult_core|romout[3][10]~23_combout\ & 
-- (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~15\ & VCC))
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~17\ = CARRY((\Mult0|mult_core|romout[3][10]~23_combout\ & !\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[3][10]~23_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~15\,
	combout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~16_combout\,
	cout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~17\);

-- Location: LCCOMB_X23_Y11_N22
\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~18_combout\ = \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~17\ $ (\Mult0|mult_core|_~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|mult_core|_~3_combout\,
	cin => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~17\,
	combout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~18_combout\);

-- Location: LCCOMB_X17_Y10_N28
\Mult0|mult_core|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|_~0_combout\ = (\hcsr04_inst|pos_reg\(6) & \hcsr04_inst|pos_reg\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hcsr04_inst|pos_reg\(6),
	datad => \hcsr04_inst|pos_reg\(7),
	combout => \Mult0|mult_core|_~0_combout\);

-- Location: LCCOMB_X18_Y10_N30
\Mult0|mult_core|romout[1][10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][10]~6_combout\ = (\hcsr04_inst|pos_reg\(6) & (\hcsr04_inst|pos_reg\(5) & !\hcsr04_inst|pos_reg\(7))) # (!\hcsr04_inst|pos_reg\(6) & ((\hcsr04_inst|pos_reg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hcsr04_inst|pos_reg\(5),
	datac => \hcsr04_inst|pos_reg\(6),
	datad => \hcsr04_inst|pos_reg\(7),
	combout => \Mult0|mult_core|romout[1][10]~6_combout\);

-- Location: LCCOMB_X18_Y10_N12
\Mult0|mult_core|romout[1][9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][9]~7_combout\ = (\hcsr04_inst|pos_reg\(7) & ((\hcsr04_inst|pos_reg\(5) & ((\hcsr04_inst|pos_reg\(4)) # (!\hcsr04_inst|pos_reg\(6)))) # (!\hcsr04_inst|pos_reg\(5) & (!\hcsr04_inst|pos_reg\(6) & \hcsr04_inst|pos_reg\(4))))) # 
-- (!\hcsr04_inst|pos_reg\(7) & ((\hcsr04_inst|pos_reg\(5) & (!\hcsr04_inst|pos_reg\(6) & \hcsr04_inst|pos_reg\(4))) # (!\hcsr04_inst|pos_reg\(5) & (\hcsr04_inst|pos_reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|pos_reg\(7),
	datab => \hcsr04_inst|pos_reg\(5),
	datac => \hcsr04_inst|pos_reg\(6),
	datad => \hcsr04_inst|pos_reg\(4),
	combout => \Mult0|mult_core|romout[1][9]~7_combout\);

-- Location: LCCOMB_X18_Y10_N10
\Mult0|mult_core|romout[1][6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][6]~8_combout\ = (\hcsr04_inst|pos_reg\(7) & ((\hcsr04_inst|pos_reg\(5) & (\hcsr04_inst|pos_reg\(6) $ (\hcsr04_inst|pos_reg\(4)))) # (!\hcsr04_inst|pos_reg\(5) & (!\hcsr04_inst|pos_reg\(6) & !\hcsr04_inst|pos_reg\(4))))) # 
-- (!\hcsr04_inst|pos_reg\(7) & ((\hcsr04_inst|pos_reg\(5) & (!\hcsr04_inst|pos_reg\(6) & !\hcsr04_inst|pos_reg\(4))) # (!\hcsr04_inst|pos_reg\(5) & (\hcsr04_inst|pos_reg\(6) & \hcsr04_inst|pos_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|pos_reg\(7),
	datab => \hcsr04_inst|pos_reg\(5),
	datac => \hcsr04_inst|pos_reg\(6),
	datad => \hcsr04_inst|pos_reg\(4),
	combout => \Mult0|mult_core|romout[1][6]~8_combout\);

-- Location: LCCOMB_X18_Y10_N20
\Mult0|mult_core|romout[1][7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][7]~9_combout\ = (\hcsr04_inst|pos_reg\(7) & ((\hcsr04_inst|pos_reg\(5) & ((\hcsr04_inst|pos_reg\(6)) # (\hcsr04_inst|pos_reg\(4)))) # (!\hcsr04_inst|pos_reg\(5) & ((!\hcsr04_inst|pos_reg\(4)) # (!\hcsr04_inst|pos_reg\(6)))))) # 
-- (!\hcsr04_inst|pos_reg\(7) & ((\hcsr04_inst|pos_reg\(5) & ((!\hcsr04_inst|pos_reg\(4)) # (!\hcsr04_inst|pos_reg\(6)))) # (!\hcsr04_inst|pos_reg\(5) & (\hcsr04_inst|pos_reg\(6) $ (!\hcsr04_inst|pos_reg\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|pos_reg\(7),
	datab => \hcsr04_inst|pos_reg\(5),
	datac => \hcsr04_inst|pos_reg\(6),
	datad => \hcsr04_inst|pos_reg\(4),
	combout => \Mult0|mult_core|romout[1][7]~9_combout\);

-- Location: LCCOMB_X18_Y10_N14
\Mult0|mult_core|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|_~1_combout\ = (\hcsr04_inst|pos_reg\(2) & \hcsr04_inst|pos_reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hcsr04_inst|pos_reg\(2),
	datad => \hcsr04_inst|pos_reg\(3),
	combout => \Mult0|mult_core|_~1_combout\);

-- Location: LCCOMB_X18_Y10_N4
\Mult0|mult_core|romout[0][10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][10]~10_combout\ = (\hcsr04_inst|pos_reg\(2) & (\hcsr04_inst|pos_reg\(1) & !\hcsr04_inst|pos_reg\(3))) # (!\hcsr04_inst|pos_reg\(2) & ((\hcsr04_inst|pos_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|pos_reg\(1),
	datac => \hcsr04_inst|pos_reg\(2),
	datad => \hcsr04_inst|pos_reg\(3),
	combout => \Mult0|mult_core|romout[0][10]~10_combout\);

-- Location: LCCOMB_X18_Y10_N2
\Mult0|mult_core|romout[1][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][5]~combout\ = \hcsr04_inst|pos_reg\(7) $ (((\hcsr04_inst|pos_reg\(5) & (\hcsr04_inst|pos_reg\(6) & \hcsr04_inst|pos_reg\(4))) # (!\hcsr04_inst|pos_reg\(5) & (\hcsr04_inst|pos_reg\(6) $ (\hcsr04_inst|pos_reg\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|pos_reg\(7),
	datab => \hcsr04_inst|pos_reg\(5),
	datac => \hcsr04_inst|pos_reg\(6),
	datad => \hcsr04_inst|pos_reg\(4),
	combout => \Mult0|mult_core|romout[1][5]~combout\);

-- Location: LCCOMB_X18_Y10_N16
\Mult0|mult_core|romout[0][9]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][9]~11_combout\ = (\hcsr04_inst|pos_reg\(3) & ((\hcsr04_inst|pos_reg\(0) & ((\hcsr04_inst|pos_reg\(1)) # (!\hcsr04_inst|pos_reg\(2)))) # (!\hcsr04_inst|pos_reg\(0) & (!\hcsr04_inst|pos_reg\(2) & \hcsr04_inst|pos_reg\(1))))) # 
-- (!\hcsr04_inst|pos_reg\(3) & ((\hcsr04_inst|pos_reg\(2) & ((!\hcsr04_inst|pos_reg\(1)))) # (!\hcsr04_inst|pos_reg\(2) & (\hcsr04_inst|pos_reg\(0) & \hcsr04_inst|pos_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|pos_reg\(3),
	datab => \hcsr04_inst|pos_reg\(0),
	datac => \hcsr04_inst|pos_reg\(2),
	datad => \hcsr04_inst|pos_reg\(1),
	combout => \Mult0|mult_core|romout[0][9]~11_combout\);

-- Location: LCCOMB_X18_Y10_N6
\Mult0|mult_core|romout[1][4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][4]~12_combout\ = \hcsr04_inst|pos_reg\(6) $ (((\hcsr04_inst|pos_reg\(5) & !\hcsr04_inst|pos_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hcsr04_inst|pos_reg\(6),
	datac => \hcsr04_inst|pos_reg\(5),
	datad => \hcsr04_inst|pos_reg\(4),
	combout => \Mult0|mult_core|romout[1][4]~12_combout\);

-- Location: LCCOMB_X18_Y10_N28
\Mult0|mult_core|romout[0][8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][8]~13_combout\ = (\hcsr04_inst|pos_reg\(1) & ((\hcsr04_inst|pos_reg\(0) & (!\hcsr04_inst|pos_reg\(2) & \hcsr04_inst|pos_reg\(3))) # (!\hcsr04_inst|pos_reg\(0) & (\hcsr04_inst|pos_reg\(2) $ (!\hcsr04_inst|pos_reg\(3)))))) # 
-- (!\hcsr04_inst|pos_reg\(1) & ((\hcsr04_inst|pos_reg\(0) & (\hcsr04_inst|pos_reg\(2) & !\hcsr04_inst|pos_reg\(3))) # (!\hcsr04_inst|pos_reg\(0) & (!\hcsr04_inst|pos_reg\(2) & \hcsr04_inst|pos_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|pos_reg\(1),
	datab => \hcsr04_inst|pos_reg\(0),
	datac => \hcsr04_inst|pos_reg\(2),
	datad => \hcsr04_inst|pos_reg\(3),
	combout => \Mult0|mult_core|romout[0][8]~13_combout\);

-- Location: LCCOMB_X17_Y10_N30
\Mult0|mult_core|romout[1][3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][3]~14_combout\ = \hcsr04_inst|pos_reg\(5) $ (\hcsr04_inst|pos_reg\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hcsr04_inst|pos_reg\(5),
	datad => \hcsr04_inst|pos_reg\(4),
	combout => \Mult0|mult_core|romout[1][3]~14_combout\);

-- Location: LCCOMB_X18_Y10_N18
\Mult0|mult_core|romout[0][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][7]~combout\ = (\hcsr04_inst|pos_reg\(3) & ((\hcsr04_inst|pos_reg\(0) & (\hcsr04_inst|pos_reg\(2) & !\hcsr04_inst|pos_reg\(1))) # (!\hcsr04_inst|pos_reg\(0) & (!\hcsr04_inst|pos_reg\(2) & \hcsr04_inst|pos_reg\(1))))) # 
-- (!\hcsr04_inst|pos_reg\(3) & ((\hcsr04_inst|pos_reg\(0) & (\hcsr04_inst|pos_reg\(2) $ (!\hcsr04_inst|pos_reg\(1)))) # (!\hcsr04_inst|pos_reg\(0) & (\hcsr04_inst|pos_reg\(2) & !\hcsr04_inst|pos_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|pos_reg\(3),
	datab => \hcsr04_inst|pos_reg\(0),
	datac => \hcsr04_inst|pos_reg\(2),
	datad => \hcsr04_inst|pos_reg\(1),
	combout => \Mult0|mult_core|romout[0][7]~combout\);

-- Location: LCCOMB_X17_Y10_N4
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\hcsr04_inst|pos_reg\(4) & (\Mult0|mult_core|romout[0][8]~13_combout\ $ (VCC))) # (!\hcsr04_inst|pos_reg\(4) & (\Mult0|mult_core|romout[0][8]~13_combout\ & VCC))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\hcsr04_inst|pos_reg\(4) & \Mult0|mult_core|romout[0][8]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|pos_reg\(4),
	datab => \Mult0|mult_core|romout[0][8]~13_combout\,
	datad => VCC,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X17_Y10_N6
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\Mult0|mult_core|romout[1][3]~14_combout\ & ((\Mult0|mult_core|romout[0][7]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # 
-- (!\Mult0|mult_core|romout[0][7]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\Mult0|mult_core|romout[1][3]~14_combout\ & ((\Mult0|mult_core|romout[0][7]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) 
-- # (!\Mult0|mult_core|romout[0][7]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\Mult0|mult_core|romout[1][3]~14_combout\ & (!\Mult0|mult_core|romout[0][7]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # 
-- (!\Mult0|mult_core|romout[1][3]~14_combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\Mult0|mult_core|romout[0][7]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][3]~14_combout\,
	datab => \Mult0|mult_core|romout[0][7]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X17_Y10_N8
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = ((\Mult0|mult_core|romout[1][4]~12_combout\ $ (\Mult0|mult_core|romout[0][8]~13_combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\Mult0|mult_core|romout[1][4]~12_combout\ & ((\Mult0|mult_core|romout[0][8]~13_combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\))) # 
-- (!\Mult0|mult_core|romout[1][4]~12_combout\ & (\Mult0|mult_core|romout[0][8]~13_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][4]~12_combout\,
	datab => \Mult0|mult_core|romout[0][8]~13_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X17_Y10_N10
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\Mult0|mult_core|romout[1][5]~combout\ & ((\Mult0|mult_core|romout[0][9]~11_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # 
-- (!\Mult0|mult_core|romout[0][9]~11_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # (!\Mult0|mult_core|romout[1][5]~combout\ & ((\Mult0|mult_core|romout[0][9]~11_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\Mult0|mult_core|romout[0][9]~11_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((\Mult0|mult_core|romout[1][5]~combout\ & (!\Mult0|mult_core|romout[0][9]~11_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\Mult0|mult_core|romout[1][5]~combout\ & 
-- ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\Mult0|mult_core|romout[0][9]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][5]~combout\,
	datab => \Mult0|mult_core|romout[0][9]~11_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X17_Y10_N12
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\Mult0|mult_core|romout[0][10]~10_combout\ $ (\Mult0|mult_core|romout[1][6]~8_combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\Mult0|mult_core|romout[0][10]~10_combout\ & ((\Mult0|mult_core|romout[1][6]~8_combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\))) # 
-- (!\Mult0|mult_core|romout[0][10]~10_combout\ & (\Mult0|mult_core|romout[1][6]~8_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][10]~10_combout\,
	datab => \Mult0|mult_core|romout[1][6]~8_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X17_Y10_N14
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\Mult0|mult_core|romout[1][7]~9_combout\ & ((\Mult0|mult_core|_~1_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # (!\Mult0|mult_core|_~1_combout\ & 
-- ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (GND))))) # (!\Mult0|mult_core|romout[1][7]~9_combout\ & ((\Mult0|mult_core|_~1_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ & VCC)) # (!\Mult0|mult_core|_~1_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY((\Mult0|mult_core|romout[1][7]~9_combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (!\Mult0|mult_core|_~1_combout\))) # (!\Mult0|mult_core|romout[1][7]~9_combout\ & 
-- (!\Mult0|mult_core|_~1_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][7]~9_combout\,
	datab => \Mult0|mult_core|_~1_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X17_Y10_N16
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = (\Mult0|mult_core|romout[1][6]~8_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ $ (GND))) # (!\Mult0|mult_core|romout[1][6]~8_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ & VCC))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ = CARRY((\Mult0|mult_core|romout[1][6]~8_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|romout[1][6]~8_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X17_Y10_N18
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ = (\Mult0|mult_core|romout[1][9]~7_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # (!\Mult0|mult_core|romout[1][9]~7_combout\ & 
-- ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (GND)))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ = CARRY((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (!\Mult0|mult_core|romout[1][9]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|romout[1][9]~7_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X17_Y10_N20
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ = (\Mult0|mult_core|romout[1][10]~6_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ $ (GND))) # (!\Mult0|mult_core|romout[1][10]~6_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ & VCC))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ = CARRY((\Mult0|mult_core|romout[1][10]~6_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][10]~6_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\);

-- Location: LCCOMB_X17_Y10_N22
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ = \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ $ (\Mult0|mult_core|_~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|mult_core|_~0_combout\,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\);

-- Location: LCCOMB_X23_Y10_N22
\Mult0|mult_core|romout[2][5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][5]~15_combout\ = \hcsr04_inst|pos_reg\(11) $ (((\hcsr04_inst|pos_reg\(10) & (\hcsr04_inst|pos_reg\(8) $ (!\hcsr04_inst|pos_reg\(9)))) # (!\hcsr04_inst|pos_reg\(10) & (\hcsr04_inst|pos_reg\(8) & !\hcsr04_inst|pos_reg\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|pos_reg\(10),
	datab => \hcsr04_inst|pos_reg\(8),
	datac => \hcsr04_inst|pos_reg\(11),
	datad => \hcsr04_inst|pos_reg\(9),
	combout => \Mult0|mult_core|romout[2][5]~15_combout\);

-- Location: LCCOMB_X22_Y10_N28
\Mult0|mult_core|romout[2][4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][4]~16_combout\ = \hcsr04_inst|pos_reg\(10) $ (((!\hcsr04_inst|pos_reg\(8) & \hcsr04_inst|pos_reg\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hcsr04_inst|pos_reg\(8),
	datac => \hcsr04_inst|pos_reg\(9),
	datad => \hcsr04_inst|pos_reg\(10),
	combout => \Mult0|mult_core|romout[2][4]~16_combout\);

-- Location: LCCOMB_X23_Y10_N28
\Mult0|mult_core|romout[2][3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][3]~17_combout\ = \hcsr04_inst|pos_reg\(8) $ (\hcsr04_inst|pos_reg\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hcsr04_inst|pos_reg\(8),
	datad => \hcsr04_inst|pos_reg\(9),
	combout => \Mult0|mult_core|romout[2][3]~17_combout\);

-- Location: LCCOMB_X22_Y10_N0
\dec_to_bcd_inst|num_reg[10]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num_reg[10]~19_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (\hcsr04_inst|pos_reg\(8) $ (VCC))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (\hcsr04_inst|pos_reg\(8) & VCC))
-- \dec_to_bcd_inst|num_reg[10]~20\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & \hcsr04_inst|pos_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datab => \hcsr04_inst|pos_reg\(8),
	datad => VCC,
	combout => \dec_to_bcd_inst|num_reg[10]~19_combout\,
	cout => \dec_to_bcd_inst|num_reg[10]~20\);

-- Location: LCCOMB_X22_Y10_N2
\dec_to_bcd_inst|num_reg[11]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num_reg[11]~21_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((\Mult0|mult_core|romout[2][3]~17_combout\ & (\dec_to_bcd_inst|num_reg[10]~20\ & VCC)) # (!\Mult0|mult_core|romout[2][3]~17_combout\ & 
-- (!\dec_to_bcd_inst|num_reg[10]~20\)))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((\Mult0|mult_core|romout[2][3]~17_combout\ & (!\dec_to_bcd_inst|num_reg[10]~20\)) # (!\Mult0|mult_core|romout[2][3]~17_combout\ & 
-- ((\dec_to_bcd_inst|num_reg[10]~20\) # (GND)))))
-- \dec_to_bcd_inst|num_reg[11]~22\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (!\Mult0|mult_core|romout[2][3]~17_combout\ & !\dec_to_bcd_inst|num_reg[10]~20\)) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((!\dec_to_bcd_inst|num_reg[10]~20\) # (!\Mult0|mult_core|romout[2][3]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datab => \Mult0|mult_core|romout[2][3]~17_combout\,
	datad => VCC,
	cin => \dec_to_bcd_inst|num_reg[10]~20\,
	combout => \dec_to_bcd_inst|num_reg[11]~21_combout\,
	cout => \dec_to_bcd_inst|num_reg[11]~22\);

-- Location: LCCOMB_X22_Y10_N4
\dec_to_bcd_inst|num_reg[12]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num_reg[12]~23_combout\ = ((\Mult0|mult_core|romout[2][4]~16_combout\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ $ (!\dec_to_bcd_inst|num_reg[11]~22\)))) # (GND)
-- \dec_to_bcd_inst|num_reg[12]~24\ = CARRY((\Mult0|mult_core|romout[2][4]~16_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\) # (!\dec_to_bcd_inst|num_reg[11]~22\))) # (!\Mult0|mult_core|romout[2][4]~16_combout\ & 
-- (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & !\dec_to_bcd_inst|num_reg[11]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[2][4]~16_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \dec_to_bcd_inst|num_reg[11]~22\,
	combout => \dec_to_bcd_inst|num_reg[12]~23_combout\,
	cout => \dec_to_bcd_inst|num_reg[12]~24\);

-- Location: LCCOMB_X22_Y10_N6
\dec_to_bcd_inst|num_reg[13]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num_reg[13]~25_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & ((\Mult0|mult_core|romout[2][5]~15_combout\ & (\dec_to_bcd_inst|num_reg[12]~24\ & VCC)) # (!\Mult0|mult_core|romout[2][5]~15_combout\ & 
-- (!\dec_to_bcd_inst|num_reg[12]~24\)))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & ((\Mult0|mult_core|romout[2][5]~15_combout\ & (!\dec_to_bcd_inst|num_reg[12]~24\)) # (!\Mult0|mult_core|romout[2][5]~15_combout\ & 
-- ((\dec_to_bcd_inst|num_reg[12]~24\) # (GND)))))
-- \dec_to_bcd_inst|num_reg[13]~26\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & (!\Mult0|mult_core|romout[2][5]~15_combout\ & !\dec_to_bcd_inst|num_reg[12]~24\)) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & ((!\dec_to_bcd_inst|num_reg[12]~24\) # (!\Mult0|mult_core|romout[2][5]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	datab => \Mult0|mult_core|romout[2][5]~15_combout\,
	datad => VCC,
	cin => \dec_to_bcd_inst|num_reg[12]~24\,
	combout => \dec_to_bcd_inst|num_reg[13]~25_combout\,
	cout => \dec_to_bcd_inst|num_reg[13]~26\);

-- Location: LCCOMB_X22_Y10_N8
\dec_to_bcd_inst|num_reg[14]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num_reg[14]~27_combout\ = ((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ $ (!\dec_to_bcd_inst|num_reg[13]~26\)))) # (GND)
-- \dec_to_bcd_inst|num_reg[14]~28\ = CARRY((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\) # (!\dec_to_bcd_inst|num_reg[13]~26\))) # 
-- (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & !\dec_to_bcd_inst|num_reg[13]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \dec_to_bcd_inst|num_reg[13]~26\,
	combout => \dec_to_bcd_inst|num_reg[14]~27_combout\,
	cout => \dec_to_bcd_inst|num_reg[14]~28\);

-- Location: LCCOMB_X22_Y10_N10
\dec_to_bcd_inst|num_reg[15]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num_reg[15]~29_combout\ = (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & (\dec_to_bcd_inst|num_reg[14]~28\ & VCC)) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & (!\dec_to_bcd_inst|num_reg[14]~28\)))) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & 
-- (!\dec_to_bcd_inst|num_reg[14]~28\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & ((\dec_to_bcd_inst|num_reg[14]~28\) # (GND)))))
-- \dec_to_bcd_inst|num_reg[15]~30\ = CARRY((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & !\dec_to_bcd_inst|num_reg[14]~28\)) # 
-- (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ & ((!\dec_to_bcd_inst|num_reg[14]~28\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \dec_to_bcd_inst|num_reg[14]~28\,
	combout => \dec_to_bcd_inst|num_reg[15]~29_combout\,
	cout => \dec_to_bcd_inst|num_reg[15]~30\);

-- Location: LCCOMB_X22_Y10_N12
\dec_to_bcd_inst|num_reg[16]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num_reg[16]~31_combout\ = (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\ & (\dec_to_bcd_inst|num_reg[15]~30\ $ (GND))) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\ & 
-- (!\dec_to_bcd_inst|num_reg[15]~30\ & VCC))
-- \dec_to_bcd_inst|num_reg[16]~32\ = CARRY((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\ & !\dec_to_bcd_inst|num_reg[15]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \dec_to_bcd_inst|num_reg[15]~30\,
	combout => \dec_to_bcd_inst|num_reg[16]~31_combout\,
	cout => \dec_to_bcd_inst|num_reg[16]~32\);

-- Location: LCCOMB_X22_Y10_N14
\dec_to_bcd_inst|num_reg[17]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num_reg[17]~33_combout\ = (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\ & (!\dec_to_bcd_inst|num_reg[16]~32\)) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\ & ((\dec_to_bcd_inst|num_reg[16]~32\) # 
-- (GND)))
-- \dec_to_bcd_inst|num_reg[17]~34\ = CARRY((!\dec_to_bcd_inst|num_reg[16]~32\) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \dec_to_bcd_inst|num_reg[16]~32\,
	combout => \dec_to_bcd_inst|num_reg[17]~33_combout\,
	cout => \dec_to_bcd_inst|num_reg[17]~34\);

-- Location: LCCOMB_X22_Y10_N16
\dec_to_bcd_inst|num_reg[18]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num_reg[18]~37_combout\ = (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~8_combout\ & (\dec_to_bcd_inst|num_reg[17]~34\ $ (GND))) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~8_combout\ & 
-- (!\dec_to_bcd_inst|num_reg[17]~34\ & VCC))
-- \dec_to_bcd_inst|num_reg[18]~38\ = CARRY((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~8_combout\ & !\dec_to_bcd_inst|num_reg[17]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \dec_to_bcd_inst|num_reg[17]~34\,
	combout => \dec_to_bcd_inst|num_reg[18]~37_combout\,
	cout => \dec_to_bcd_inst|num_reg[18]~38\);

-- Location: LCCOMB_X22_Y10_N18
\dec_to_bcd_inst|num_reg[19]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num_reg[19]~39_combout\ = (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~10_combout\ & (!\dec_to_bcd_inst|num_reg[18]~38\)) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~10_combout\ & ((\dec_to_bcd_inst|num_reg[18]~38\) 
-- # (GND)))
-- \dec_to_bcd_inst|num_reg[19]~40\ = CARRY((!\dec_to_bcd_inst|num_reg[18]~38\) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \dec_to_bcd_inst|num_reg[18]~38\,
	combout => \dec_to_bcd_inst|num_reg[19]~39_combout\,
	cout => \dec_to_bcd_inst|num_reg[19]~40\);

-- Location: LCCOMB_X22_Y10_N20
\dec_to_bcd_inst|num_reg[20]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num_reg[20]~41_combout\ = (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~12_combout\ & (\dec_to_bcd_inst|num_reg[19]~40\ $ (GND))) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~12_combout\ & 
-- (!\dec_to_bcd_inst|num_reg[19]~40\ & VCC))
-- \dec_to_bcd_inst|num_reg[20]~42\ = CARRY((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~12_combout\ & !\dec_to_bcd_inst|num_reg[19]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \dec_to_bcd_inst|num_reg[19]~40\,
	combout => \dec_to_bcd_inst|num_reg[20]~41_combout\,
	cout => \dec_to_bcd_inst|num_reg[20]~42\);

-- Location: LCCOMB_X22_Y10_N22
\dec_to_bcd_inst|num_reg[21]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num_reg[21]~43_combout\ = (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~14_combout\ & (!\dec_to_bcd_inst|num_reg[20]~42\)) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~14_combout\ & ((\dec_to_bcd_inst|num_reg[20]~42\) 
-- # (GND)))
-- \dec_to_bcd_inst|num_reg[21]~44\ = CARRY((!\dec_to_bcd_inst|num_reg[20]~42\) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \dec_to_bcd_inst|num_reg[20]~42\,
	combout => \dec_to_bcd_inst|num_reg[21]~43_combout\,
	cout => \dec_to_bcd_inst|num_reg[21]~44\);

-- Location: LCCOMB_X22_Y10_N24
\dec_to_bcd_inst|num_reg[22]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num_reg[22]~45_combout\ = (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~16_combout\ & (\dec_to_bcd_inst|num_reg[21]~44\ $ (GND))) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~16_combout\ & 
-- (!\dec_to_bcd_inst|num_reg[21]~44\ & VCC))
-- \dec_to_bcd_inst|num_reg[22]~46\ = CARRY((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~16_combout\ & !\dec_to_bcd_inst|num_reg[21]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \dec_to_bcd_inst|num_reg[21]~44\,
	combout => \dec_to_bcd_inst|num_reg[22]~45_combout\,
	cout => \dec_to_bcd_inst|num_reg[22]~46\);

-- Location: LCCOMB_X22_Y10_N26
\dec_to_bcd_inst|num_reg[23]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num_reg[23]~47_combout\ = \dec_to_bcd_inst|num_reg[22]~46\ $ (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~18_combout\,
	cin => \dec_to_bcd_inst|num_reg[22]~46\,
	combout => \dec_to_bcd_inst|num_reg[23]~47_combout\);

-- Location: LCCOMB_X21_Y10_N0
\dec_to_bcd_inst|num_reg[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num_reg[16]~feeder_combout\ = \dec_to_bcd_inst|num_reg[16]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dec_to_bcd_inst|num_reg[16]~31_combout\,
	combout => \dec_to_bcd_inst|num_reg[16]~feeder_combout\);

-- Location: LCCOMB_X22_Y13_N8
\dec_to_bcd_inst|num_reg[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num_reg[15]~feeder_combout\ = \dec_to_bcd_inst|num_reg[15]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dec_to_bcd_inst|num_reg[15]~29_combout\,
	combout => \dec_to_bcd_inst|num_reg[15]~feeder_combout\);

-- Location: LCCOMB_X21_Y10_N20
\dec_to_bcd_inst|num_reg[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num_reg[13]~feeder_combout\ = \dec_to_bcd_inst|num_reg[13]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dec_to_bcd_inst|num_reg[13]~25_combout\,
	combout => \dec_to_bcd_inst|num_reg[13]~feeder_combout\);

-- Location: LCCOMB_X21_Y10_N16
\dec_to_bcd_inst|num_reg[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num_reg[12]~feeder_combout\ = \dec_to_bcd_inst|num_reg[12]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dec_to_bcd_inst|num_reg[12]~23_combout\,
	combout => \dec_to_bcd_inst|num_reg[12]~feeder_combout\);

-- Location: LCCOMB_X21_Y10_N2
\dec_to_bcd_inst|num_reg[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num_reg[11]~feeder_combout\ = \dec_to_bcd_inst|num_reg[11]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dec_to_bcd_inst|num_reg[11]~21_combout\,
	combout => \dec_to_bcd_inst|num_reg[11]~feeder_combout\);

-- Location: LCCOMB_X21_Y10_N26
\dec_to_bcd_inst|num_reg[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num_reg[10]~feeder_combout\ = \dec_to_bcd_inst|num_reg[10]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dec_to_bcd_inst|num_reg[10]~19_combout\,
	combout => \dec_to_bcd_inst|num_reg[10]~feeder_combout\);

-- Location: LCCOMB_X24_Y13_N8
\dec_to_bcd_inst|Add7~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add7~28_combout\ = (\dec_to_bcd_inst|num_reg\(17) & ((GND) # (!\dec_to_bcd_inst|Add7~27\))) # (!\dec_to_bcd_inst|num_reg\(17) & (\dec_to_bcd_inst|Add7~27\ $ (GND)))
-- \dec_to_bcd_inst|Add7~29\ = CARRY((\dec_to_bcd_inst|num_reg\(17)) # (!\dec_to_bcd_inst|Add7~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(17),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add7~27\,
	combout => \dec_to_bcd_inst|Add7~28_combout\,
	cout => \dec_to_bcd_inst|Add7~29\);

-- Location: LCCOMB_X24_Y13_N10
\dec_to_bcd_inst|Add7~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add7~30_combout\ = (\dec_to_bcd_inst|num_reg\(18) & (\dec_to_bcd_inst|Add7~29\ & VCC)) # (!\dec_to_bcd_inst|num_reg\(18) & (!\dec_to_bcd_inst|Add7~29\))
-- \dec_to_bcd_inst|Add7~31\ = CARRY((!\dec_to_bcd_inst|num_reg\(18) & !\dec_to_bcd_inst|Add7~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(18),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add7~29\,
	combout => \dec_to_bcd_inst|Add7~30_combout\,
	cout => \dec_to_bcd_inst|Add7~31\);

-- Location: LCCOMB_X24_Y13_N12
\dec_to_bcd_inst|Add7~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add7~32_combout\ = (\dec_to_bcd_inst|num_reg\(19) & ((GND) # (!\dec_to_bcd_inst|Add7~31\))) # (!\dec_to_bcd_inst|num_reg\(19) & (\dec_to_bcd_inst|Add7~31\ $ (GND)))
-- \dec_to_bcd_inst|Add7~33\ = CARRY((\dec_to_bcd_inst|num_reg\(19)) # (!\dec_to_bcd_inst|Add7~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(19),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add7~31\,
	combout => \dec_to_bcd_inst|Add7~32_combout\,
	cout => \dec_to_bcd_inst|Add7~33\);

-- Location: LCCOMB_X24_Y13_N14
\dec_to_bcd_inst|Add7~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add7~34_combout\ = (\dec_to_bcd_inst|num_reg\(20) & (\dec_to_bcd_inst|Add7~33\ & VCC)) # (!\dec_to_bcd_inst|num_reg\(20) & (!\dec_to_bcd_inst|Add7~33\))
-- \dec_to_bcd_inst|Add7~35\ = CARRY((!\dec_to_bcd_inst|num_reg\(20) & !\dec_to_bcd_inst|Add7~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(20),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add7~33\,
	combout => \dec_to_bcd_inst|Add7~34_combout\,
	cout => \dec_to_bcd_inst|Add7~35\);

-- Location: LCCOMB_X24_Y13_N16
\dec_to_bcd_inst|Add7~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add7~36_combout\ = (\dec_to_bcd_inst|num_reg\(21) & ((GND) # (!\dec_to_bcd_inst|Add7~35\))) # (!\dec_to_bcd_inst|num_reg\(21) & (\dec_to_bcd_inst|Add7~35\ $ (GND)))
-- \dec_to_bcd_inst|Add7~37\ = CARRY((\dec_to_bcd_inst|num_reg\(21)) # (!\dec_to_bcd_inst|Add7~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(21),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add7~35\,
	combout => \dec_to_bcd_inst|Add7~36_combout\,
	cout => \dec_to_bcd_inst|Add7~37\);

-- Location: LCCOMB_X21_Y13_N10
\dec_to_bcd_inst|Add5~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add5~30_combout\ = (\dec_to_bcd_inst|num_reg\(19) & (\dec_to_bcd_inst|Add5~29\ & VCC)) # (!\dec_to_bcd_inst|num_reg\(19) & (!\dec_to_bcd_inst|Add5~29\))
-- \dec_to_bcd_inst|Add5~31\ = CARRY((!\dec_to_bcd_inst|num_reg\(19) & !\dec_to_bcd_inst|Add5~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(19),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add5~29\,
	combout => \dec_to_bcd_inst|Add5~30_combout\,
	cout => \dec_to_bcd_inst|Add5~31\);

-- Location: LCCOMB_X21_Y13_N12
\dec_to_bcd_inst|Add5~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add5~32_combout\ = (\dec_to_bcd_inst|num_reg\(20) & ((GND) # (!\dec_to_bcd_inst|Add5~31\))) # (!\dec_to_bcd_inst|num_reg\(20) & (\dec_to_bcd_inst|Add5~31\ $ (GND)))
-- \dec_to_bcd_inst|Add5~33\ = CARRY((\dec_to_bcd_inst|num_reg\(20)) # (!\dec_to_bcd_inst|Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(20),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add5~31\,
	combout => \dec_to_bcd_inst|Add5~32_combout\,
	cout => \dec_to_bcd_inst|Add5~33\);

-- Location: LCCOMB_X21_Y13_N14
\dec_to_bcd_inst|Add5~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add5~34_combout\ = (\dec_to_bcd_inst|num_reg\(21) & (\dec_to_bcd_inst|Add5~33\ & VCC)) # (!\dec_to_bcd_inst|num_reg\(21) & (!\dec_to_bcd_inst|Add5~33\))
-- \dec_to_bcd_inst|Add5~35\ = CARRY((!\dec_to_bcd_inst|num_reg\(21) & !\dec_to_bcd_inst|Add5~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(21),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add5~33\,
	combout => \dec_to_bcd_inst|Add5~34_combout\,
	cout => \dec_to_bcd_inst|Add5~35\);

-- Location: LCCOMB_X23_Y12_N18
\dec_to_bcd_inst|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|LessThan3~3_combout\ = (\dec_to_bcd_inst|tens~0_combout\ & (!\dec_to_bcd_inst|num_reg\(23) & (!\dec_to_bcd_inst|num_reg\(22) & !\dec_to_bcd_inst|num_reg\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|tens~0_combout\,
	datab => \dec_to_bcd_inst|num_reg\(23),
	datac => \dec_to_bcd_inst|num_reg\(22),
	datad => \dec_to_bcd_inst|num_reg\(21),
	combout => \dec_to_bcd_inst|LessThan3~3_combout\);

-- Location: LCCOMB_X22_Y12_N26
\dec_to_bcd_inst|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|LessThan2~0_combout\ = (!\dec_to_bcd_inst|num_reg\(19) & (!\dec_to_bcd_inst|num_reg\(20) & (!\dec_to_bcd_inst|num_reg\(18) & !\dec_to_bcd_inst|num_reg\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(19),
	datab => \dec_to_bcd_inst|num_reg\(20),
	datac => \dec_to_bcd_inst|num_reg\(18),
	datad => \dec_to_bcd_inst|num_reg\(17),
	combout => \dec_to_bcd_inst|LessThan2~0_combout\);

-- Location: LCCOMB_X22_Y12_N4
\dec_to_bcd_inst|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|LessThan2~2_combout\ = (!\dec_to_bcd_inst|num_reg\(8) & (((!\dec_to_bcd_inst|num_reg\(5) & !\dec_to_bcd_inst|num_reg\(6))) # (!\dec_to_bcd_inst|num_reg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(7),
	datab => \dec_to_bcd_inst|num_reg\(5),
	datac => \dec_to_bcd_inst|num_reg\(6),
	datad => \dec_to_bcd_inst|num_reg\(8),
	combout => \dec_to_bcd_inst|LessThan2~2_combout\);

-- Location: LCCOMB_X22_Y12_N20
\dec_to_bcd_inst|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|LessThan2~1_combout\ = (!\dec_to_bcd_inst|num_reg\(12) & (!\dec_to_bcd_inst|num_reg\(11) & (!\dec_to_bcd_inst|num_reg\(13) & !\dec_to_bcd_inst|num_reg\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(12),
	datab => \dec_to_bcd_inst|num_reg\(11),
	datac => \dec_to_bcd_inst|num_reg\(13),
	datad => \dec_to_bcd_inst|num_reg\(14),
	combout => \dec_to_bcd_inst|LessThan2~1_combout\);

-- Location: LCCOMB_X22_Y12_N16
\dec_to_bcd_inst|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|LessThan2~3_combout\ = (\dec_to_bcd_inst|LessThan2~1_combout\ & (((\dec_to_bcd_inst|LessThan2~2_combout\) # (!\dec_to_bcd_inst|num_reg\(10))) # (!\dec_to_bcd_inst|num_reg\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(9),
	datab => \dec_to_bcd_inst|num_reg\(10),
	datac => \dec_to_bcd_inst|LessThan2~2_combout\,
	datad => \dec_to_bcd_inst|LessThan2~1_combout\,
	combout => \dec_to_bcd_inst|LessThan2~3_combout\);

-- Location: LCCOMB_X22_Y12_N18
\dec_to_bcd_inst|LessThan2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|LessThan2~4_combout\ = (\dec_to_bcd_inst|LessThan2~0_combout\ & (((\dec_to_bcd_inst|LessThan2~3_combout\) # (!\dec_to_bcd_inst|num_reg\(16))) # (!\dec_to_bcd_inst|num_reg\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(15),
	datab => \dec_to_bcd_inst|num_reg\(16),
	datac => \dec_to_bcd_inst|LessThan2~0_combout\,
	datad => \dec_to_bcd_inst|LessThan2~3_combout\,
	combout => \dec_to_bcd_inst|LessThan2~4_combout\);

-- Location: LCCOMB_X21_Y12_N14
\dec_to_bcd_inst|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add3~0_combout\ = \dec_to_bcd_inst|num_reg\(5) $ (VCC)
-- \dec_to_bcd_inst|Add3~1\ = CARRY(\dec_to_bcd_inst|num_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(5),
	datad => VCC,
	combout => \dec_to_bcd_inst|Add3~0_combout\,
	cout => \dec_to_bcd_inst|Add3~1\);

-- Location: LCCOMB_X21_Y14_N12
\dec_to_bcd_inst|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add5~0_combout\ = \dec_to_bcd_inst|num_reg\(4) $ (VCC)
-- \dec_to_bcd_inst|Add5~1\ = CARRY(\dec_to_bcd_inst|num_reg\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(4),
	datad => VCC,
	combout => \dec_to_bcd_inst|Add5~0_combout\,
	cout => \dec_to_bcd_inst|Add5~1\);

-- Location: LCCOMB_X23_Y10_N4
\dec_to_bcd_inst|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector2~0_combout\ = (!\dec_to_bcd_inst|num_reg\(21) & !\dec_to_bcd_inst|num_reg\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(21),
	datad => \dec_to_bcd_inst|num_reg\(22),
	combout => \dec_to_bcd_inst|Selector2~0_combout\);

-- Location: LCCOMB_X21_Y10_N24
\dec_to_bcd_inst|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|LessThan4~1_combout\ = (!\dec_to_bcd_inst|num_reg\(12) & !\dec_to_bcd_inst|num_reg\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(12),
	datad => \dec_to_bcd_inst|num_reg\(11),
	combout => \dec_to_bcd_inst|LessThan4~1_combout\);

-- Location: LCCOMB_X22_Y12_N10
\dec_to_bcd_inst|LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|LessThan4~2_combout\ = (!\dec_to_bcd_inst|num_reg\(7) & (!\dec_to_bcd_inst|num_reg\(5) & (!\dec_to_bcd_inst|num_reg\(6) & !\dec_to_bcd_inst|num_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(7),
	datab => \dec_to_bcd_inst|num_reg\(5),
	datac => \dec_to_bcd_inst|num_reg\(6),
	datad => \dec_to_bcd_inst|num_reg\(4),
	combout => \dec_to_bcd_inst|LessThan4~2_combout\);

-- Location: LCCOMB_X22_Y12_N8
\dec_to_bcd_inst|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|LessThan4~3_combout\ = (((\dec_to_bcd_inst|LessThan4~2_combout\) # (!\dec_to_bcd_inst|num_reg\(10))) # (!\dec_to_bcd_inst|num_reg\(8))) # (!\dec_to_bcd_inst|num_reg\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(9),
	datab => \dec_to_bcd_inst|num_reg\(8),
	datac => \dec_to_bcd_inst|num_reg\(10),
	datad => \dec_to_bcd_inst|LessThan4~2_combout\,
	combout => \dec_to_bcd_inst|LessThan4~3_combout\);

-- Location: LCCOMB_X22_Y12_N12
\dec_to_bcd_inst|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|LessThan4~0_combout\ = (!\dec_to_bcd_inst|num_reg\(15) & (!\dec_to_bcd_inst|num_reg\(16) & (\dec_to_bcd_inst|LessThan2~0_combout\ & !\dec_to_bcd_inst|num_reg\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(15),
	datab => \dec_to_bcd_inst|num_reg\(16),
	datac => \dec_to_bcd_inst|LessThan2~0_combout\,
	datad => \dec_to_bcd_inst|num_reg\(14),
	combout => \dec_to_bcd_inst|LessThan4~0_combout\);

-- Location: LCCOMB_X22_Y12_N22
\dec_to_bcd_inst|LessThan4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|LessThan4~4_combout\ = (\dec_to_bcd_inst|LessThan4~0_combout\ & (((\dec_to_bcd_inst|LessThan4~1_combout\ & \dec_to_bcd_inst|LessThan4~3_combout\)) # (!\dec_to_bcd_inst|num_reg\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(13),
	datab => \dec_to_bcd_inst|LessThan4~1_combout\,
	datac => \dec_to_bcd_inst|LessThan4~3_combout\,
	datad => \dec_to_bcd_inst|LessThan4~0_combout\,
	combout => \dec_to_bcd_inst|LessThan4~4_combout\);

-- Location: LCCOMB_X21_Y10_N30
\dec_to_bcd_inst|num_reg[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num_reg[18]~17_combout\ = (!\dec_to_bcd_inst|num_reg\(10) & (!\dec_to_bcd_inst|num_reg\(13) & (!\dec_to_bcd_inst|num_reg\(11) & !\dec_to_bcd_inst|num_reg\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(10),
	datab => \dec_to_bcd_inst|num_reg\(13),
	datac => \dec_to_bcd_inst|num_reg\(11),
	datad => \dec_to_bcd_inst|num_reg\(12),
	combout => \dec_to_bcd_inst|num_reg[18]~17_combout\);

-- Location: LCCOMB_X22_Y12_N30
\dec_to_bcd_inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|LessThan0~1_combout\ = ((!\dec_to_bcd_inst|num_reg\(5)) # (!\dec_to_bcd_inst|num_reg\(7))) # (!\dec_to_bcd_inst|num_reg\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(6),
	datac => \dec_to_bcd_inst|num_reg\(7),
	datad => \dec_to_bcd_inst|num_reg\(5),
	combout => \dec_to_bcd_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X24_Y14_N12
\dec_to_bcd_inst|Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add7~0_combout\ = \dec_to_bcd_inst|num_reg\(3) $ (VCC)
-- \dec_to_bcd_inst|Add7~1\ = CARRY(\dec_to_bcd_inst|num_reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(3),
	datad => VCC,
	combout => \dec_to_bcd_inst|Add7~0_combout\,
	cout => \dec_to_bcd_inst|Add7~1\);

-- Location: LCCOMB_X23_Y14_N10
\dec_to_bcd_inst|num~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num~6_combout\ = (\dec_to_bcd_inst|unit~0_combout\ & (\dec_to_bcd_inst|combinational_logic~0_combout\ & !\dec_to_bcd_inst|combinational_logic~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|unit~0_combout\,
	datac => \dec_to_bcd_inst|combinational_logic~0_combout\,
	datad => \dec_to_bcd_inst|combinational_logic~1_combout\,
	combout => \dec_to_bcd_inst|num~6_combout\);

-- Location: LCCOMB_X24_Y14_N4
\dec_to_bcd_inst|num_reg[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num_reg[3]~2_combout\ = (\dec_to_bcd_inst|num~6_combout\ & (\dec_to_bcd_inst|Add7~0_combout\)) # (!\dec_to_bcd_inst|num~6_combout\ & ((\dec_to_bcd_inst|num_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Add7~0_combout\,
	datac => \dec_to_bcd_inst|num_reg\(3),
	datad => \dec_to_bcd_inst|num~6_combout\,
	combout => \dec_to_bcd_inst|num_reg[3]~2_combout\);

-- Location: LCCOMB_X17_Y10_N24
\Mult0|mult_core|romout[0][3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][3]~25_combout\ = \hcsr04_inst|pos_reg\(0) $ (\hcsr04_inst|pos_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hcsr04_inst|pos_reg\(0),
	datac => \hcsr04_inst|pos_reg\(1),
	combout => \Mult0|mult_core|romout[0][3]~25_combout\);

-- Location: FF_X24_Y14_N5
\dec_to_bcd_inst|num_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|num_reg[3]~2_combout\,
	asdata => \Mult0|mult_core|romout[0][3]~25_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dec_to_bcd_inst|ALT_INV_state.ST_CALC~q\,
	ena => \dec_to_bcd_inst|ALT_INV_state.ST_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|num_reg\(3));

-- Location: LCCOMB_X22_Y14_N0
\dec_to_bcd_inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|LessThan0~0_combout\ = (((!\dec_to_bcd_inst|num_reg\(4) & !\dec_to_bcd_inst|num_reg\(3))) # (!\dec_to_bcd_inst|num_reg\(9))) # (!\dec_to_bcd_inst|num_reg\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(4),
	datab => \dec_to_bcd_inst|num_reg\(3),
	datac => \dec_to_bcd_inst|num_reg\(8),
	datad => \dec_to_bcd_inst|num_reg\(9),
	combout => \dec_to_bcd_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X22_Y12_N28
\dec_to_bcd_inst|num_reg[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num_reg[18]~18_combout\ = (\dec_to_bcd_inst|LessThan4~0_combout\ & (\dec_to_bcd_inst|num_reg[18]~17_combout\ & ((\dec_to_bcd_inst|LessThan0~1_combout\) # (\dec_to_bcd_inst|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|LessThan4~0_combout\,
	datab => \dec_to_bcd_inst|num_reg[18]~17_combout\,
	datac => \dec_to_bcd_inst|LessThan0~1_combout\,
	datad => \dec_to_bcd_inst|LessThan0~0_combout\,
	combout => \dec_to_bcd_inst|num_reg[18]~18_combout\);

-- Location: LCCOMB_X22_Y12_N2
\dec_to_bcd_inst|combinational_logic~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|combinational_logic~1_combout\ = (\dec_to_bcd_inst|num_reg\(23)) # (((\dec_to_bcd_inst|num_reg[18]~18_combout\) # (!\dec_to_bcd_inst|LessThan4~4_combout\)) # (!\dec_to_bcd_inst|Selector2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(23),
	datab => \dec_to_bcd_inst|Selector2~0_combout\,
	datac => \dec_to_bcd_inst|LessThan4~4_combout\,
	datad => \dec_to_bcd_inst|num_reg[18]~18_combout\,
	combout => \dec_to_bcd_inst|combinational_logic~1_combout\);

-- Location: LCCOMB_X24_Y14_N14
\dec_to_bcd_inst|Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add7~2_combout\ = (\dec_to_bcd_inst|num_reg\(4) & (\dec_to_bcd_inst|Add7~1\ & VCC)) # (!\dec_to_bcd_inst|num_reg\(4) & (!\dec_to_bcd_inst|Add7~1\))
-- \dec_to_bcd_inst|Add7~3\ = CARRY((!\dec_to_bcd_inst|num_reg\(4) & !\dec_to_bcd_inst|Add7~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(4),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add7~1\,
	combout => \dec_to_bcd_inst|Add7~2_combout\,
	cout => \dec_to_bcd_inst|Add7~3\);

-- Location: LCCOMB_X21_Y11_N28
\dec_to_bcd_inst|num~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num~3_combout\ = (\dec_to_bcd_inst|combinational_logic~0_combout\ & ((\dec_to_bcd_inst|combinational_logic~1_combout\ & (\dec_to_bcd_inst|num_reg\(4))) # (!\dec_to_bcd_inst|combinational_logic~1_combout\ & 
-- ((\dec_to_bcd_inst|Add7~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|combinational_logic~1_combout\,
	datab => \dec_to_bcd_inst|num_reg\(4),
	datac => \dec_to_bcd_inst|Add7~2_combout\,
	datad => \dec_to_bcd_inst|combinational_logic~0_combout\,
	combout => \dec_to_bcd_inst|num~3_combout\);

-- Location: LCCOMB_X21_Y11_N22
\dec_to_bcd_inst|num~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num~4_combout\ = (\dec_to_bcd_inst|num~3_combout\) # ((!\dec_to_bcd_inst|combinational_logic~0_combout\ & \dec_to_bcd_inst|Add5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|combinational_logic~0_combout\,
	datac => \dec_to_bcd_inst|Add5~0_combout\,
	datad => \dec_to_bcd_inst|num~3_combout\,
	combout => \dec_to_bcd_inst|num~4_combout\);

-- Location: LCCOMB_X22_Y11_N26
\dec_to_bcd_inst|num~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num~5_combout\ = (((!\dec_to_bcd_inst|LessThan2~4_combout\ & \dec_to_bcd_inst|Selector2~0_combout\)) # (!\dec_to_bcd_inst|tens~0_combout\)) # (!\dec_to_bcd_inst|Selector2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Selector2~1_combout\,
	datab => \dec_to_bcd_inst|LessThan2~4_combout\,
	datac => \dec_to_bcd_inst|Selector2~0_combout\,
	datad => \dec_to_bcd_inst|tens~0_combout\,
	combout => \dec_to_bcd_inst|num~5_combout\);

-- Location: LCCOMB_X21_Y11_N24
\dec_to_bcd_inst|num_reg[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num_reg[4]~1_combout\ = (\dec_to_bcd_inst|num~5_combout\ & ((\dec_to_bcd_inst|num_reg\(4)))) # (!\dec_to_bcd_inst|num~5_combout\ & (\dec_to_bcd_inst|num~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num~4_combout\,
	datac => \dec_to_bcd_inst|num_reg\(4),
	datad => \dec_to_bcd_inst|num~5_combout\,
	combout => \dec_to_bcd_inst|num_reg[4]~1_combout\);

-- Location: LCCOMB_X18_Y10_N22
\Mult0|mult_core|romout[0][4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][4]~24_combout\ = \hcsr04_inst|pos_reg\(2) $ (((!\hcsr04_inst|pos_reg\(0) & \hcsr04_inst|pos_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hcsr04_inst|pos_reg\(0),
	datac => \hcsr04_inst|pos_reg\(2),
	datad => \hcsr04_inst|pos_reg\(1),
	combout => \Mult0|mult_core|romout[0][4]~24_combout\);

-- Location: FF_X21_Y11_N25
\dec_to_bcd_inst|num_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|num_reg[4]~1_combout\,
	asdata => \Mult0|mult_core|romout[0][4]~24_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dec_to_bcd_inst|ALT_INV_state.ST_CALC~q\,
	ena => \dec_to_bcd_inst|ALT_INV_state.ST_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|num_reg\(4));

-- Location: LCCOMB_X21_Y14_N14
\dec_to_bcd_inst|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add5~2_combout\ = (\dec_to_bcd_inst|num_reg\(5) & (\dec_to_bcd_inst|Add5~1\ & VCC)) # (!\dec_to_bcd_inst|num_reg\(5) & (!\dec_to_bcd_inst|Add5~1\))
-- \dec_to_bcd_inst|Add5~3\ = CARRY((!\dec_to_bcd_inst|num_reg\(5) & !\dec_to_bcd_inst|Add5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(5),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add5~1\,
	combout => \dec_to_bcd_inst|Add5~2_combout\,
	cout => \dec_to_bcd_inst|Add5~3\);

-- Location: LCCOMB_X21_Y14_N4
\dec_to_bcd_inst|num~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num~0_combout\ = (\dec_to_bcd_inst|LessThan2~4_combout\ & (((\dec_to_bcd_inst|Add5~2_combout\ & !\dec_to_bcd_inst|combinational_logic~0_combout\)))) # (!\dec_to_bcd_inst|LessThan2~4_combout\ & (\dec_to_bcd_inst|Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Add3~0_combout\,
	datab => \dec_to_bcd_inst|LessThan2~4_combout\,
	datac => \dec_to_bcd_inst|Add5~2_combout\,
	datad => \dec_to_bcd_inst|combinational_logic~0_combout\,
	combout => \dec_to_bcd_inst|num~0_combout\);

-- Location: LCCOMB_X24_Y14_N16
\dec_to_bcd_inst|Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add7~4_combout\ = (\dec_to_bcd_inst|num_reg\(5) & (\dec_to_bcd_inst|Add7~3\ $ (GND))) # (!\dec_to_bcd_inst|num_reg\(5) & (!\dec_to_bcd_inst|Add7~3\ & VCC))
-- \dec_to_bcd_inst|Add7~5\ = CARRY((\dec_to_bcd_inst|num_reg\(5) & !\dec_to_bcd_inst|Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(5),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add7~3\,
	combout => \dec_to_bcd_inst|Add7~4_combout\,
	cout => \dec_to_bcd_inst|Add7~5\);

-- Location: LCCOMB_X21_Y14_N10
\dec_to_bcd_inst|num~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num~1_combout\ = (\dec_to_bcd_inst|combinational_logic~1_combout\ & (\dec_to_bcd_inst|num_reg\(5))) # (!\dec_to_bcd_inst|combinational_logic~1_combout\ & ((\dec_to_bcd_inst|Add7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(5),
	datac => \dec_to_bcd_inst|Add7~4_combout\,
	datad => \dec_to_bcd_inst|combinational_logic~1_combout\,
	combout => \dec_to_bcd_inst|num~1_combout\);

-- Location: LCCOMB_X21_Y14_N8
\dec_to_bcd_inst|num~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num~2_combout\ = (\dec_to_bcd_inst|num~0_combout\) # ((\dec_to_bcd_inst|combinational_logic~0_combout\ & (\dec_to_bcd_inst|LessThan2~4_combout\ & \dec_to_bcd_inst|num~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|combinational_logic~0_combout\,
	datab => \dec_to_bcd_inst|LessThan2~4_combout\,
	datac => \dec_to_bcd_inst|num~0_combout\,
	datad => \dec_to_bcd_inst|num~1_combout\,
	combout => \dec_to_bcd_inst|num~2_combout\);

-- Location: LCCOMB_X22_Y12_N24
\dec_to_bcd_inst|num_reg[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num_reg[5]~0_combout\ = (\dec_to_bcd_inst|LessThan3~3_combout\ & ((\dec_to_bcd_inst|num~2_combout\))) # (!\dec_to_bcd_inst|LessThan3~3_combout\ & (\dec_to_bcd_inst|num_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|LessThan3~3_combout\,
	datac => \dec_to_bcd_inst|num_reg\(5),
	datad => \dec_to_bcd_inst|num~2_combout\,
	combout => \dec_to_bcd_inst|num_reg[5]~0_combout\);

-- Location: LCCOMB_X18_Y10_N0
\Mult0|mult_core|romout[0][5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][5]~21_combout\ = \hcsr04_inst|pos_reg\(3) $ (((\hcsr04_inst|pos_reg\(0) & (\hcsr04_inst|pos_reg\(2) $ (!\hcsr04_inst|pos_reg\(1)))) # (!\hcsr04_inst|pos_reg\(0) & (\hcsr04_inst|pos_reg\(2) & !\hcsr04_inst|pos_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|pos_reg\(3),
	datab => \hcsr04_inst|pos_reg\(0),
	datac => \hcsr04_inst|pos_reg\(2),
	datad => \hcsr04_inst|pos_reg\(1),
	combout => \Mult0|mult_core|romout[0][5]~21_combout\);

-- Location: FF_X22_Y12_N25
\dec_to_bcd_inst|num_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|num_reg[5]~0_combout\,
	asdata => \Mult0|mult_core|romout[0][5]~21_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dec_to_bcd_inst|ALT_INV_state.ST_CALC~q\,
	ena => \dec_to_bcd_inst|ALT_INV_state.ST_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|num_reg\(5));

-- Location: LCCOMB_X21_Y12_N16
\dec_to_bcd_inst|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add3~2_combout\ = (\dec_to_bcd_inst|num_reg\(6) & (\dec_to_bcd_inst|Add3~1\ & VCC)) # (!\dec_to_bcd_inst|num_reg\(6) & (!\dec_to_bcd_inst|Add3~1\))
-- \dec_to_bcd_inst|Add3~3\ = CARRY((!\dec_to_bcd_inst|num_reg\(6) & !\dec_to_bcd_inst|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(6),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add3~1\,
	combout => \dec_to_bcd_inst|Add3~2_combout\,
	cout => \dec_to_bcd_inst|Add3~3\);

-- Location: LCCOMB_X23_Y13_N14
\dec_to_bcd_inst|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add1~0_combout\ = \dec_to_bcd_inst|num_reg\(6) $ (VCC)
-- \dec_to_bcd_inst|Add1~1\ = CARRY(\dec_to_bcd_inst|num_reg\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(6),
	datad => VCC,
	combout => \dec_to_bcd_inst|Add1~0_combout\,
	cout => \dec_to_bcd_inst|Add1~1\);

-- Location: LCCOMB_X21_Y14_N16
\dec_to_bcd_inst|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add5~4_combout\ = (\dec_to_bcd_inst|num_reg\(6) & ((GND) # (!\dec_to_bcd_inst|Add5~3\))) # (!\dec_to_bcd_inst|num_reg\(6) & (\dec_to_bcd_inst|Add5~3\ $ (GND)))
-- \dec_to_bcd_inst|Add5~5\ = CARRY((\dec_to_bcd_inst|num_reg\(6)) # (!\dec_to_bcd_inst|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(6),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add5~3\,
	combout => \dec_to_bcd_inst|Add5~4_combout\,
	cout => \dec_to_bcd_inst|Add5~5\);

-- Location: LCCOMB_X24_Y14_N18
\dec_to_bcd_inst|Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add7~6_combout\ = (\dec_to_bcd_inst|num_reg\(6) & (!\dec_to_bcd_inst|Add7~5\)) # (!\dec_to_bcd_inst|num_reg\(6) & ((\dec_to_bcd_inst|Add7~5\) # (GND)))
-- \dec_to_bcd_inst|Add7~7\ = CARRY((!\dec_to_bcd_inst|Add7~5\) # (!\dec_to_bcd_inst|num_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(6),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add7~5\,
	combout => \dec_to_bcd_inst|Add7~6_combout\,
	cout => \dec_to_bcd_inst|Add7~7\);

-- Location: LCCOMB_X22_Y13_N16
\dec_to_bcd_inst|num_reg[18]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num_reg[18]~35_combout\ = (\dec_to_bcd_inst|unit~0_combout\ & (((!\dec_to_bcd_inst|combinational_logic~0_combout\)))) # (!\dec_to_bcd_inst|unit~0_combout\ & (((!\dec_to_bcd_inst|Selector2~1_combout\)) # 
-- (!\dec_to_bcd_inst|tens~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|tens~0_combout\,
	datab => \dec_to_bcd_inst|combinational_logic~0_combout\,
	datac => \dec_to_bcd_inst|Selector2~1_combout\,
	datad => \dec_to_bcd_inst|unit~0_combout\,
	combout => \dec_to_bcd_inst|num_reg[18]~35_combout\);

-- Location: LCCOMB_X21_Y12_N12
\dec_to_bcd_inst|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector36~0_combout\ = (\dec_to_bcd_inst|unit~0_combout\ & ((\dec_to_bcd_inst|num_reg[18]~35_combout\ & (\dec_to_bcd_inst|Add5~4_combout\)) # (!\dec_to_bcd_inst|num_reg[18]~35_combout\ & ((\dec_to_bcd_inst|Add7~6_combout\))))) # 
-- (!\dec_to_bcd_inst|unit~0_combout\ & (((\dec_to_bcd_inst|num_reg[18]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Add5~4_combout\,
	datab => \dec_to_bcd_inst|Add7~6_combout\,
	datac => \dec_to_bcd_inst|unit~0_combout\,
	datad => \dec_to_bcd_inst|num_reg[18]~35_combout\,
	combout => \dec_to_bcd_inst|Selector36~0_combout\);

-- Location: LCCOMB_X21_Y12_N10
\dec_to_bcd_inst|Selector36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector36~1_combout\ = (\dec_to_bcd_inst|unit~0_combout\ & (((\dec_to_bcd_inst|Selector36~0_combout\)))) # (!\dec_to_bcd_inst|unit~0_combout\ & ((\dec_to_bcd_inst|Selector36~0_combout\ & ((\dec_to_bcd_inst|Add1~0_combout\))) # 
-- (!\dec_to_bcd_inst|Selector36~0_combout\ & (\dec_to_bcd_inst|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|unit~0_combout\,
	datab => \dec_to_bcd_inst|Add3~2_combout\,
	datac => \dec_to_bcd_inst|Add1~0_combout\,
	datad => \dec_to_bcd_inst|Selector36~0_combout\,
	combout => \dec_to_bcd_inst|Selector36~1_combout\);

-- Location: LCCOMB_X22_Y12_N14
\dec_to_bcd_inst|Selector36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector36~2_combout\ = (\dec_to_bcd_inst|state.ST_CALC~q\ & ((\dec_to_bcd_inst|Selector36~1_combout\))) # (!\dec_to_bcd_inst|state.ST_CALC~q\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|state.ST_CALC~q\,
	datac => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datad => \dec_to_bcd_inst|Selector36~1_combout\,
	combout => \dec_to_bcd_inst|Selector36~2_combout\);

-- Location: LCCOMB_X22_Y11_N30
\dec_to_bcd_inst|num_reg[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num_reg[18]~36_combout\ = (!\dec_to_bcd_inst|state.ST_DONE~q\ & (((!\dec_to_bcd_inst|num_reg[18]~18_combout\) # (!\dec_to_bcd_inst|state.ST_CALC~q\)) # (!\dec_to_bcd_inst|Selector2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Selector2~1_combout\,
	datab => \dec_to_bcd_inst|state.ST_CALC~q\,
	datac => \dec_to_bcd_inst|state.ST_DONE~q\,
	datad => \dec_to_bcd_inst|num_reg[18]~18_combout\,
	combout => \dec_to_bcd_inst|num_reg[18]~36_combout\);

-- Location: FF_X22_Y12_N15
\dec_to_bcd_inst|num_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|Selector36~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dec_to_bcd_inst|num_reg[18]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|num_reg\(6));

-- Location: LCCOMB_X21_Y14_N18
\dec_to_bcd_inst|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add5~6_combout\ = (\dec_to_bcd_inst|num_reg\(7) & (\dec_to_bcd_inst|Add5~5\ & VCC)) # (!\dec_to_bcd_inst|num_reg\(7) & (!\dec_to_bcd_inst|Add5~5\))
-- \dec_to_bcd_inst|Add5~7\ = CARRY((!\dec_to_bcd_inst|num_reg\(7) & !\dec_to_bcd_inst|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(7),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add5~5\,
	combout => \dec_to_bcd_inst|Add5~6_combout\,
	cout => \dec_to_bcd_inst|Add5~7\);

-- Location: LCCOMB_X23_Y13_N16
\dec_to_bcd_inst|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add1~2_combout\ = (\dec_to_bcd_inst|num_reg\(7) & (\dec_to_bcd_inst|Add1~1\ & VCC)) # (!\dec_to_bcd_inst|num_reg\(7) & (!\dec_to_bcd_inst|Add1~1\))
-- \dec_to_bcd_inst|Add1~3\ = CARRY((!\dec_to_bcd_inst|num_reg\(7) & !\dec_to_bcd_inst|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(7),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add1~1\,
	combout => \dec_to_bcd_inst|Add1~2_combout\,
	cout => \dec_to_bcd_inst|Add1~3\);

-- Location: LCCOMB_X21_Y12_N18
\dec_to_bcd_inst|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add3~4_combout\ = (\dec_to_bcd_inst|num_reg\(7) & (\dec_to_bcd_inst|Add3~3\ $ (GND))) # (!\dec_to_bcd_inst|num_reg\(7) & (!\dec_to_bcd_inst|Add3~3\ & VCC))
-- \dec_to_bcd_inst|Add3~5\ = CARRY((\dec_to_bcd_inst|num_reg\(7) & !\dec_to_bcd_inst|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(7),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add3~3\,
	combout => \dec_to_bcd_inst|Add3~4_combout\,
	cout => \dec_to_bcd_inst|Add3~5\);

-- Location: LCCOMB_X24_Y14_N20
\dec_to_bcd_inst|Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add7~8_combout\ = (\dec_to_bcd_inst|num_reg\(7) & (\dec_to_bcd_inst|Add7~7\ $ (GND))) # (!\dec_to_bcd_inst|num_reg\(7) & (!\dec_to_bcd_inst|Add7~7\ & VCC))
-- \dec_to_bcd_inst|Add7~9\ = CARRY((\dec_to_bcd_inst|num_reg\(7) & !\dec_to_bcd_inst|Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(7),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add7~7\,
	combout => \dec_to_bcd_inst|Add7~8_combout\,
	cout => \dec_to_bcd_inst|Add7~9\);

-- Location: LCCOMB_X21_Y12_N8
\dec_to_bcd_inst|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector35~0_combout\ = (\dec_to_bcd_inst|unit~0_combout\ & (((\dec_to_bcd_inst|Add7~8_combout\ & !\dec_to_bcd_inst|num_reg[18]~35_combout\)))) # (!\dec_to_bcd_inst|unit~0_combout\ & ((\dec_to_bcd_inst|Add3~4_combout\) # 
-- ((\dec_to_bcd_inst|num_reg[18]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|unit~0_combout\,
	datab => \dec_to_bcd_inst|Add3~4_combout\,
	datac => \dec_to_bcd_inst|Add7~8_combout\,
	datad => \dec_to_bcd_inst|num_reg[18]~35_combout\,
	combout => \dec_to_bcd_inst|Selector35~0_combout\);

-- Location: LCCOMB_X21_Y12_N6
\dec_to_bcd_inst|Selector35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector35~1_combout\ = (\dec_to_bcd_inst|Selector35~0_combout\ & (((\dec_to_bcd_inst|Add1~2_combout\) # (!\dec_to_bcd_inst|num_reg[18]~35_combout\)))) # (!\dec_to_bcd_inst|Selector35~0_combout\ & (\dec_to_bcd_inst|Add5~6_combout\ & 
-- ((\dec_to_bcd_inst|num_reg[18]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Add5~6_combout\,
	datab => \dec_to_bcd_inst|Add1~2_combout\,
	datac => \dec_to_bcd_inst|Selector35~0_combout\,
	datad => \dec_to_bcd_inst|num_reg[18]~35_combout\,
	combout => \dec_to_bcd_inst|Selector35~1_combout\);

-- Location: LCCOMB_X21_Y12_N0
\dec_to_bcd_inst|Selector35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector35~2_combout\ = (\dec_to_bcd_inst|state.ST_CALC~q\ & ((\dec_to_bcd_inst|Selector35~1_combout\))) # (!\dec_to_bcd_inst|state.ST_CALC~q\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datab => \dec_to_bcd_inst|state.ST_CALC~q\,
	datad => \dec_to_bcd_inst|Selector35~1_combout\,
	combout => \dec_to_bcd_inst|Selector35~2_combout\);

-- Location: FF_X21_Y12_N1
\dec_to_bcd_inst|num_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|Selector35~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dec_to_bcd_inst|num_reg[18]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|num_reg\(7));

-- Location: LCCOMB_X23_Y13_N18
\dec_to_bcd_inst|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add1~4_combout\ = (\dec_to_bcd_inst|num_reg\(8) & ((GND) # (!\dec_to_bcd_inst|Add1~3\))) # (!\dec_to_bcd_inst|num_reg\(8) & (\dec_to_bcd_inst|Add1~3\ $ (GND)))
-- \dec_to_bcd_inst|Add1~5\ = CARRY((\dec_to_bcd_inst|num_reg\(8)) # (!\dec_to_bcd_inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(8),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add1~3\,
	combout => \dec_to_bcd_inst|Add1~4_combout\,
	cout => \dec_to_bcd_inst|Add1~5\);

-- Location: LCCOMB_X21_Y12_N20
\dec_to_bcd_inst|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add3~6_combout\ = (\dec_to_bcd_inst|num_reg\(8) & (\dec_to_bcd_inst|Add3~5\ & VCC)) # (!\dec_to_bcd_inst|num_reg\(8) & (!\dec_to_bcd_inst|Add3~5\))
-- \dec_to_bcd_inst|Add3~7\ = CARRY((!\dec_to_bcd_inst|num_reg\(8) & !\dec_to_bcd_inst|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(8),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add3~5\,
	combout => \dec_to_bcd_inst|Add3~6_combout\,
	cout => \dec_to_bcd_inst|Add3~7\);

-- Location: LCCOMB_X24_Y14_N22
\dec_to_bcd_inst|Add7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add7~10_combout\ = (\dec_to_bcd_inst|num_reg\(8) & (!\dec_to_bcd_inst|Add7~9\)) # (!\dec_to_bcd_inst|num_reg\(8) & ((\dec_to_bcd_inst|Add7~9\) # (GND)))
-- \dec_to_bcd_inst|Add7~11\ = CARRY((!\dec_to_bcd_inst|Add7~9\) # (!\dec_to_bcd_inst|num_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(8),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add7~9\,
	combout => \dec_to_bcd_inst|Add7~10_combout\,
	cout => \dec_to_bcd_inst|Add7~11\);

-- Location: LCCOMB_X21_Y14_N20
\dec_to_bcd_inst|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add5~8_combout\ = (\dec_to_bcd_inst|num_reg\(8) & (\dec_to_bcd_inst|Add5~7\ $ (GND))) # (!\dec_to_bcd_inst|num_reg\(8) & (!\dec_to_bcd_inst|Add5~7\ & VCC))
-- \dec_to_bcd_inst|Add5~9\ = CARRY((\dec_to_bcd_inst|num_reg\(8) & !\dec_to_bcd_inst|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(8),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add5~7\,
	combout => \dec_to_bcd_inst|Add5~8_combout\,
	cout => \dec_to_bcd_inst|Add5~9\);

-- Location: LCCOMB_X23_Y13_N10
\dec_to_bcd_inst|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector34~0_combout\ = (\dec_to_bcd_inst|unit~0_combout\ & ((\dec_to_bcd_inst|num_reg[18]~35_combout\ & ((\dec_to_bcd_inst|Add5~8_combout\))) # (!\dec_to_bcd_inst|num_reg[18]~35_combout\ & (\dec_to_bcd_inst|Add7~10_combout\)))) # 
-- (!\dec_to_bcd_inst|unit~0_combout\ & (((\dec_to_bcd_inst|num_reg[18]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|unit~0_combout\,
	datab => \dec_to_bcd_inst|Add7~10_combout\,
	datac => \dec_to_bcd_inst|num_reg[18]~35_combout\,
	datad => \dec_to_bcd_inst|Add5~8_combout\,
	combout => \dec_to_bcd_inst|Selector34~0_combout\);

-- Location: LCCOMB_X23_Y13_N8
\dec_to_bcd_inst|Selector34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector34~1_combout\ = (\dec_to_bcd_inst|unit~0_combout\ & (((\dec_to_bcd_inst|Selector34~0_combout\)))) # (!\dec_to_bcd_inst|unit~0_combout\ & ((\dec_to_bcd_inst|Selector34~0_combout\ & (\dec_to_bcd_inst|Add1~4_combout\)) # 
-- (!\dec_to_bcd_inst|Selector34~0_combout\ & ((\dec_to_bcd_inst|Add3~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|unit~0_combout\,
	datab => \dec_to_bcd_inst|Add1~4_combout\,
	datac => \dec_to_bcd_inst|Add3~6_combout\,
	datad => \dec_to_bcd_inst|Selector34~0_combout\,
	combout => \dec_to_bcd_inst|Selector34~1_combout\);

-- Location: LCCOMB_X23_Y12_N22
\dec_to_bcd_inst|Selector34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector34~2_combout\ = (\dec_to_bcd_inst|state.ST_CALC~q\ & ((\dec_to_bcd_inst|Selector34~1_combout\))) # (!\dec_to_bcd_inst|state.ST_CALC~q\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|state.ST_CALC~q\,
	datac => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datad => \dec_to_bcd_inst|Selector34~1_combout\,
	combout => \dec_to_bcd_inst|Selector34~2_combout\);

-- Location: FF_X23_Y12_N23
\dec_to_bcd_inst|num_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|Selector34~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dec_to_bcd_inst|num_reg[18]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|num_reg\(8));

-- Location: LCCOMB_X23_Y13_N20
\dec_to_bcd_inst|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add1~6_combout\ = (\dec_to_bcd_inst|num_reg\(9) & (!\dec_to_bcd_inst|Add1~5\)) # (!\dec_to_bcd_inst|num_reg\(9) & ((\dec_to_bcd_inst|Add1~5\) # (GND)))
-- \dec_to_bcd_inst|Add1~7\ = CARRY((!\dec_to_bcd_inst|Add1~5\) # (!\dec_to_bcd_inst|num_reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(9),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add1~5\,
	combout => \dec_to_bcd_inst|Add1~6_combout\,
	cout => \dec_to_bcd_inst|Add1~7\);

-- Location: LCCOMB_X23_Y13_N22
\dec_to_bcd_inst|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add1~8_combout\ = (\dec_to_bcd_inst|num_reg\(10) & ((GND) # (!\dec_to_bcd_inst|Add1~7\))) # (!\dec_to_bcd_inst|num_reg\(10) & (\dec_to_bcd_inst|Add1~7\ $ (GND)))
-- \dec_to_bcd_inst|Add1~9\ = CARRY((\dec_to_bcd_inst|num_reg\(10)) # (!\dec_to_bcd_inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(10),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add1~7\,
	combout => \dec_to_bcd_inst|Add1~8_combout\,
	cout => \dec_to_bcd_inst|Add1~9\);

-- Location: LCCOMB_X23_Y13_N24
\dec_to_bcd_inst|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add1~10_combout\ = (\dec_to_bcd_inst|num_reg\(11) & (\dec_to_bcd_inst|Add1~9\ & VCC)) # (!\dec_to_bcd_inst|num_reg\(11) & (!\dec_to_bcd_inst|Add1~9\))
-- \dec_to_bcd_inst|Add1~11\ = CARRY((!\dec_to_bcd_inst|num_reg\(11) & !\dec_to_bcd_inst|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(11),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add1~9\,
	combout => \dec_to_bcd_inst|Add1~10_combout\,
	cout => \dec_to_bcd_inst|Add1~11\);

-- Location: LCCOMB_X23_Y13_N26
\dec_to_bcd_inst|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add1~12_combout\ = (\dec_to_bcd_inst|num_reg\(12) & ((GND) # (!\dec_to_bcd_inst|Add1~11\))) # (!\dec_to_bcd_inst|num_reg\(12) & (\dec_to_bcd_inst|Add1~11\ $ (GND)))
-- \dec_to_bcd_inst|Add1~13\ = CARRY((\dec_to_bcd_inst|num_reg\(12)) # (!\dec_to_bcd_inst|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(12),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add1~11\,
	combout => \dec_to_bcd_inst|Add1~12_combout\,
	cout => \dec_to_bcd_inst|Add1~13\);

-- Location: LCCOMB_X23_Y13_N28
\dec_to_bcd_inst|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add1~14_combout\ = (\dec_to_bcd_inst|num_reg\(13) & (\dec_to_bcd_inst|Add1~13\ & VCC)) # (!\dec_to_bcd_inst|num_reg\(13) & (!\dec_to_bcd_inst|Add1~13\))
-- \dec_to_bcd_inst|Add1~15\ = CARRY((!\dec_to_bcd_inst|num_reg\(13) & !\dec_to_bcd_inst|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(13),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add1~13\,
	combout => \dec_to_bcd_inst|Add1~14_combout\,
	cout => \dec_to_bcd_inst|Add1~15\);

-- Location: LCCOMB_X23_Y13_N30
\dec_to_bcd_inst|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add1~16_combout\ = (\dec_to_bcd_inst|num_reg\(14) & (\dec_to_bcd_inst|Add1~15\ $ (GND))) # (!\dec_to_bcd_inst|num_reg\(14) & (!\dec_to_bcd_inst|Add1~15\ & VCC))
-- \dec_to_bcd_inst|Add1~17\ = CARRY((\dec_to_bcd_inst|num_reg\(14) & !\dec_to_bcd_inst|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(14),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add1~15\,
	combout => \dec_to_bcd_inst|Add1~16_combout\,
	cout => \dec_to_bcd_inst|Add1~17\);

-- Location: LCCOMB_X23_Y12_N0
\dec_to_bcd_inst|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add1~18_combout\ = (\dec_to_bcd_inst|num_reg\(15) & (\dec_to_bcd_inst|Add1~17\ & VCC)) # (!\dec_to_bcd_inst|num_reg\(15) & (!\dec_to_bcd_inst|Add1~17\))
-- \dec_to_bcd_inst|Add1~19\ = CARRY((!\dec_to_bcd_inst|num_reg\(15) & !\dec_to_bcd_inst|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(15),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add1~17\,
	combout => \dec_to_bcd_inst|Add1~18_combout\,
	cout => \dec_to_bcd_inst|Add1~19\);

-- Location: LCCOMB_X23_Y12_N2
\dec_to_bcd_inst|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add1~20_combout\ = (\dec_to_bcd_inst|num_reg\(16) & (\dec_to_bcd_inst|Add1~19\ $ (GND))) # (!\dec_to_bcd_inst|num_reg\(16) & (!\dec_to_bcd_inst|Add1~19\ & VCC))
-- \dec_to_bcd_inst|Add1~21\ = CARRY((\dec_to_bcd_inst|num_reg\(16) & !\dec_to_bcd_inst|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(16),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add1~19\,
	combout => \dec_to_bcd_inst|Add1~20_combout\,
	cout => \dec_to_bcd_inst|Add1~21\);

-- Location: LCCOMB_X23_Y12_N4
\dec_to_bcd_inst|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add1~22_combout\ = (\dec_to_bcd_inst|num_reg\(17) & (!\dec_to_bcd_inst|Add1~21\)) # (!\dec_to_bcd_inst|num_reg\(17) & ((\dec_to_bcd_inst|Add1~21\) # (GND)))
-- \dec_to_bcd_inst|Add1~23\ = CARRY((!\dec_to_bcd_inst|Add1~21\) # (!\dec_to_bcd_inst|num_reg\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(17),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add1~21\,
	combout => \dec_to_bcd_inst|Add1~22_combout\,
	cout => \dec_to_bcd_inst|Add1~23\);

-- Location: LCCOMB_X23_Y12_N6
\dec_to_bcd_inst|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add1~24_combout\ = (\dec_to_bcd_inst|num_reg\(18) & (\dec_to_bcd_inst|Add1~23\ $ (GND))) # (!\dec_to_bcd_inst|num_reg\(18) & (!\dec_to_bcd_inst|Add1~23\ & VCC))
-- \dec_to_bcd_inst|Add1~25\ = CARRY((\dec_to_bcd_inst|num_reg\(18) & !\dec_to_bcd_inst|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(18),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add1~23\,
	combout => \dec_to_bcd_inst|Add1~24_combout\,
	cout => \dec_to_bcd_inst|Add1~25\);

-- Location: LCCOMB_X23_Y12_N8
\dec_to_bcd_inst|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add1~26_combout\ = (\dec_to_bcd_inst|num_reg\(19) & (!\dec_to_bcd_inst|Add1~25\)) # (!\dec_to_bcd_inst|num_reg\(19) & ((\dec_to_bcd_inst|Add1~25\) # (GND)))
-- \dec_to_bcd_inst|Add1~27\ = CARRY((!\dec_to_bcd_inst|Add1~25\) # (!\dec_to_bcd_inst|num_reg\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(19),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add1~25\,
	combout => \dec_to_bcd_inst|Add1~26_combout\,
	cout => \dec_to_bcd_inst|Add1~27\);

-- Location: LCCOMB_X23_Y12_N10
\dec_to_bcd_inst|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add1~28_combout\ = (\dec_to_bcd_inst|num_reg\(20) & ((GND) # (!\dec_to_bcd_inst|Add1~27\))) # (!\dec_to_bcd_inst|num_reg\(20) & (\dec_to_bcd_inst|Add1~27\ $ (GND)))
-- \dec_to_bcd_inst|Add1~29\ = CARRY((\dec_to_bcd_inst|num_reg\(20)) # (!\dec_to_bcd_inst|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(20),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add1~27\,
	combout => \dec_to_bcd_inst|Add1~28_combout\,
	cout => \dec_to_bcd_inst|Add1~29\);

-- Location: LCCOMB_X23_Y12_N12
\dec_to_bcd_inst|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add1~30_combout\ = (\dec_to_bcd_inst|num_reg\(21) & (\dec_to_bcd_inst|Add1~29\ & VCC)) # (!\dec_to_bcd_inst|num_reg\(21) & (!\dec_to_bcd_inst|Add1~29\))
-- \dec_to_bcd_inst|Add1~31\ = CARRY((!\dec_to_bcd_inst|num_reg\(21) & !\dec_to_bcd_inst|Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(21),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add1~29\,
	combout => \dec_to_bcd_inst|Add1~30_combout\,
	cout => \dec_to_bcd_inst|Add1~31\);

-- Location: LCCOMB_X21_Y11_N12
\dec_to_bcd_inst|Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add3~30_combout\ = (\dec_to_bcd_inst|num_reg\(20) & (\dec_to_bcd_inst|Add3~29\ & VCC)) # (!\dec_to_bcd_inst|num_reg\(20) & (!\dec_to_bcd_inst|Add3~29\))
-- \dec_to_bcd_inst|Add3~31\ = CARRY((!\dec_to_bcd_inst|num_reg\(20) & !\dec_to_bcd_inst|Add3~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(20),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add3~29\,
	combout => \dec_to_bcd_inst|Add3~30_combout\,
	cout => \dec_to_bcd_inst|Add3~31\);

-- Location: LCCOMB_X21_Y11_N14
\dec_to_bcd_inst|Add3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add3~32_combout\ = (\dec_to_bcd_inst|num_reg\(21) & ((GND) # (!\dec_to_bcd_inst|Add3~31\))) # (!\dec_to_bcd_inst|num_reg\(21) & (\dec_to_bcd_inst|Add3~31\ $ (GND)))
-- \dec_to_bcd_inst|Add3~33\ = CARRY((\dec_to_bcd_inst|num_reg\(21)) # (!\dec_to_bcd_inst|Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(21),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add3~31\,
	combout => \dec_to_bcd_inst|Add3~32_combout\,
	cout => \dec_to_bcd_inst|Add3~33\);

-- Location: LCCOMB_X23_Y10_N0
\dec_to_bcd_inst|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector21~0_combout\ = (\dec_to_bcd_inst|unit~0_combout\ & (((!\dec_to_bcd_inst|num_reg[18]~35_combout\)))) # (!\dec_to_bcd_inst|unit~0_combout\ & ((\dec_to_bcd_inst|num_reg[18]~35_combout\ & (\dec_to_bcd_inst|Add1~30_combout\)) # 
-- (!\dec_to_bcd_inst|num_reg[18]~35_combout\ & ((\dec_to_bcd_inst|Add3~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Add1~30_combout\,
	datab => \dec_to_bcd_inst|unit~0_combout\,
	datac => \dec_to_bcd_inst|num_reg[18]~35_combout\,
	datad => \dec_to_bcd_inst|Add3~32_combout\,
	combout => \dec_to_bcd_inst|Selector21~0_combout\);

-- Location: LCCOMB_X23_Y10_N14
\dec_to_bcd_inst|Selector21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector21~1_combout\ = (\dec_to_bcd_inst|unit~0_combout\ & ((\dec_to_bcd_inst|Selector21~0_combout\ & (\dec_to_bcd_inst|Add7~36_combout\)) # (!\dec_to_bcd_inst|Selector21~0_combout\ & ((\dec_to_bcd_inst|Add5~34_combout\))))) # 
-- (!\dec_to_bcd_inst|unit~0_combout\ & (((\dec_to_bcd_inst|Selector21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Add7~36_combout\,
	datab => \dec_to_bcd_inst|unit~0_combout\,
	datac => \dec_to_bcd_inst|Add5~34_combout\,
	datad => \dec_to_bcd_inst|Selector21~0_combout\,
	combout => \dec_to_bcd_inst|Selector21~1_combout\);

-- Location: FF_X22_Y10_N23
\dec_to_bcd_inst|num_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|num_reg[21]~43_combout\,
	asdata => \dec_to_bcd_inst|Selector21~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dec_to_bcd_inst|state.ST_CALC~q\,
	ena => \dec_to_bcd_inst|num_reg[18]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|num_reg\(21));

-- Location: LCCOMB_X23_Y12_N14
\dec_to_bcd_inst|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add1~32_combout\ = (\dec_to_bcd_inst|num_reg\(22) & ((GND) # (!\dec_to_bcd_inst|Add1~31\))) # (!\dec_to_bcd_inst|num_reg\(22) & (\dec_to_bcd_inst|Add1~31\ $ (GND)))
-- \dec_to_bcd_inst|Add1~33\ = CARRY((\dec_to_bcd_inst|num_reg\(22)) # (!\dec_to_bcd_inst|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(22),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add1~31\,
	combout => \dec_to_bcd_inst|Add1~32_combout\,
	cout => \dec_to_bcd_inst|Add1~33\);

-- Location: LCCOMB_X21_Y11_N16
\dec_to_bcd_inst|Add3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add3~34_combout\ = (\dec_to_bcd_inst|num_reg\(22) & (\dec_to_bcd_inst|Add3~33\ & VCC)) # (!\dec_to_bcd_inst|num_reg\(22) & (!\dec_to_bcd_inst|Add3~33\))
-- \dec_to_bcd_inst|Add3~35\ = CARRY((!\dec_to_bcd_inst|num_reg\(22) & !\dec_to_bcd_inst|Add3~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(22),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add3~33\,
	combout => \dec_to_bcd_inst|Add3~34_combout\,
	cout => \dec_to_bcd_inst|Add3~35\);

-- Location: LCCOMB_X21_Y13_N16
\dec_to_bcd_inst|Add5~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add5~36_combout\ = (\dec_to_bcd_inst|num_reg\(22) & ((GND) # (!\dec_to_bcd_inst|Add5~35\))) # (!\dec_to_bcd_inst|num_reg\(22) & (\dec_to_bcd_inst|Add5~35\ $ (GND)))
-- \dec_to_bcd_inst|Add5~37\ = CARRY((\dec_to_bcd_inst|num_reg\(22)) # (!\dec_to_bcd_inst|Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(22),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add5~35\,
	combout => \dec_to_bcd_inst|Add5~36_combout\,
	cout => \dec_to_bcd_inst|Add5~37\);

-- Location: LCCOMB_X24_Y13_N18
\dec_to_bcd_inst|Add7~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add7~38_combout\ = (\dec_to_bcd_inst|num_reg\(22) & (\dec_to_bcd_inst|Add7~37\ & VCC)) # (!\dec_to_bcd_inst|num_reg\(22) & (!\dec_to_bcd_inst|Add7~37\))
-- \dec_to_bcd_inst|Add7~39\ = CARRY((!\dec_to_bcd_inst|num_reg\(22) & !\dec_to_bcd_inst|Add7~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(22),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add7~37\,
	combout => \dec_to_bcd_inst|Add7~38_combout\,
	cout => \dec_to_bcd_inst|Add7~39\);

-- Location: LCCOMB_X23_Y10_N24
\dec_to_bcd_inst|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector20~0_combout\ = (\dec_to_bcd_inst|unit~0_combout\ & ((\dec_to_bcd_inst|num_reg[18]~35_combout\ & (\dec_to_bcd_inst|Add5~36_combout\)) # (!\dec_to_bcd_inst|num_reg[18]~35_combout\ & ((\dec_to_bcd_inst|Add7~38_combout\))))) # 
-- (!\dec_to_bcd_inst|unit~0_combout\ & (((\dec_to_bcd_inst|num_reg[18]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Add5~36_combout\,
	datab => \dec_to_bcd_inst|unit~0_combout\,
	datac => \dec_to_bcd_inst|num_reg[18]~35_combout\,
	datad => \dec_to_bcd_inst|Add7~38_combout\,
	combout => \dec_to_bcd_inst|Selector20~0_combout\);

-- Location: LCCOMB_X23_Y10_N10
\dec_to_bcd_inst|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector20~1_combout\ = (\dec_to_bcd_inst|unit~0_combout\ & (((\dec_to_bcd_inst|Selector20~0_combout\)))) # (!\dec_to_bcd_inst|unit~0_combout\ & ((\dec_to_bcd_inst|Selector20~0_combout\ & (\dec_to_bcd_inst|Add1~32_combout\)) # 
-- (!\dec_to_bcd_inst|Selector20~0_combout\ & ((\dec_to_bcd_inst|Add3~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Add1~32_combout\,
	datab => \dec_to_bcd_inst|unit~0_combout\,
	datac => \dec_to_bcd_inst|Add3~34_combout\,
	datad => \dec_to_bcd_inst|Selector20~0_combout\,
	combout => \dec_to_bcd_inst|Selector20~1_combout\);

-- Location: FF_X22_Y10_N25
\dec_to_bcd_inst|num_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|num_reg[22]~45_combout\,
	asdata => \dec_to_bcd_inst|Selector20~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dec_to_bcd_inst|state.ST_CALC~q\,
	ena => \dec_to_bcd_inst|num_reg[18]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|num_reg\(22));

-- Location: LCCOMB_X21_Y11_N26
\dec_to_bcd_inst|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector2~1_combout\ = (!\dec_to_bcd_inst|num_reg\(22) & (!\dec_to_bcd_inst|num_reg\(21) & !\dec_to_bcd_inst|num_reg\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(22),
	datac => \dec_to_bcd_inst|num_reg\(21),
	datad => \dec_to_bcd_inst|num_reg\(23),
	combout => \dec_to_bcd_inst|Selector2~1_combout\);

-- Location: LCCOMB_X22_Y11_N28
\dec_to_bcd_inst|num_reg[18]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|num_reg[18]~49_combout\ = (\dec_to_bcd_inst|state.ST_CALC~q\ & (\dec_to_bcd_inst|Selector2~1_combout\ & \dec_to_bcd_inst|num_reg[18]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|state.ST_CALC~q\,
	datac => \dec_to_bcd_inst|Selector2~1_combout\,
	datad => \dec_to_bcd_inst|num_reg[18]~18_combout\,
	combout => \dec_to_bcd_inst|num_reg[18]~49_combout\);

-- Location: LCCOMB_X22_Y11_N8
\dec_to_bcd_inst|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector2~2_combout\ = (\dec_to_bcd_inst|state.ST_DONE~q\ & (\hcsr04_inst|done_reg~q\ & ((\dec_to_bcd_inst|state.ST_IDLE~q\) # (\dec_to_bcd_inst|num_reg[18]~49_combout\)))) # (!\dec_to_bcd_inst|state.ST_DONE~q\ & 
-- (((\dec_to_bcd_inst|num_reg[18]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|state.ST_IDLE~q\,
	datab => \hcsr04_inst|done_reg~q\,
	datac => \dec_to_bcd_inst|state.ST_DONE~q\,
	datad => \dec_to_bcd_inst|num_reg[18]~49_combout\,
	combout => \dec_to_bcd_inst|Selector2~2_combout\);

-- Location: FF_X22_Y11_N9
\dec_to_bcd_inst|state.ST_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|Selector2~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|state.ST_DONE~q\);

-- Location: LCCOMB_X22_Y11_N22
\dec_to_bcd_inst|state.ST_IDLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|state.ST_IDLE~0_combout\ = (\hcsr04_inst|done_reg~q\) # ((!\dec_to_bcd_inst|state.ST_DONE~q\ & ((\dec_to_bcd_inst|state.ST_IDLE~q\) # (\dec_to_bcd_inst|num_reg[18]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|done_reg~q\,
	datab => \dec_to_bcd_inst|state.ST_DONE~q\,
	datac => \dec_to_bcd_inst|state.ST_IDLE~q\,
	datad => \dec_to_bcd_inst|num_reg[18]~49_combout\,
	combout => \dec_to_bcd_inst|state.ST_IDLE~0_combout\);

-- Location: FF_X22_Y11_N23
\dec_to_bcd_inst|state.ST_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|state.ST_IDLE~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|state.ST_IDLE~q\);

-- Location: LCCOMB_X22_Y11_N0
\dec_to_bcd_inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector1~0_combout\ = (\dec_to_bcd_inst|state.ST_CALC~q\ & ((\dec_to_bcd_inst|state.ST_DONE~q\))) # (!\dec_to_bcd_inst|state.ST_CALC~q\ & (\dec_to_bcd_inst|state.ST_IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|state.ST_IDLE~q\,
	datab => \dec_to_bcd_inst|state.ST_CALC~q\,
	datac => \dec_to_bcd_inst|state.ST_DONE~q\,
	combout => \dec_to_bcd_inst|Selector1~0_combout\);

-- Location: LCCOMB_X22_Y11_N4
\dec_to_bcd_inst|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector1~1_combout\ = (!\dec_to_bcd_inst|num_reg[18]~49_combout\ & ((\hcsr04_inst|done_reg~q\ & ((\dec_to_bcd_inst|state.ST_CALC~q\) # (!\dec_to_bcd_inst|Selector1~0_combout\))) # (!\hcsr04_inst|done_reg~q\ & 
-- (!\dec_to_bcd_inst|Selector1~0_combout\ & \dec_to_bcd_inst|state.ST_CALC~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|done_reg~q\,
	datab => \dec_to_bcd_inst|Selector1~0_combout\,
	datac => \dec_to_bcd_inst|state.ST_CALC~q\,
	datad => \dec_to_bcd_inst|num_reg[18]~49_combout\,
	combout => \dec_to_bcd_inst|Selector1~1_combout\);

-- Location: FF_X22_Y11_N5
\dec_to_bcd_inst|state.ST_CALC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|Selector1~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|state.ST_CALC~q\);

-- Location: LCCOMB_X21_Y14_N22
\dec_to_bcd_inst|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add5~10_combout\ = (\dec_to_bcd_inst|num_reg\(9) & (!\dec_to_bcd_inst|Add5~9\)) # (!\dec_to_bcd_inst|num_reg\(9) & ((\dec_to_bcd_inst|Add5~9\) # (GND)))
-- \dec_to_bcd_inst|Add5~11\ = CARRY((!\dec_to_bcd_inst|Add5~9\) # (!\dec_to_bcd_inst|num_reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(9),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add5~9\,
	combout => \dec_to_bcd_inst|Add5~10_combout\,
	cout => \dec_to_bcd_inst|Add5~11\);

-- Location: LCCOMB_X24_Y14_N24
\dec_to_bcd_inst|Add7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add7~12_combout\ = (\dec_to_bcd_inst|num_reg\(9) & (\dec_to_bcd_inst|Add7~11\ $ (GND))) # (!\dec_to_bcd_inst|num_reg\(9) & (!\dec_to_bcd_inst|Add7~11\ & VCC))
-- \dec_to_bcd_inst|Add7~13\ = CARRY((\dec_to_bcd_inst|num_reg\(9) & !\dec_to_bcd_inst|Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(9),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add7~11\,
	combout => \dec_to_bcd_inst|Add7~12_combout\,
	cout => \dec_to_bcd_inst|Add7~13\);

-- Location: LCCOMB_X21_Y12_N22
\dec_to_bcd_inst|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add3~8_combout\ = (\dec_to_bcd_inst|num_reg\(9) & (\dec_to_bcd_inst|Add3~7\ $ (GND))) # (!\dec_to_bcd_inst|num_reg\(9) & (!\dec_to_bcd_inst|Add3~7\ & VCC))
-- \dec_to_bcd_inst|Add3~9\ = CARRY((\dec_to_bcd_inst|num_reg\(9) & !\dec_to_bcd_inst|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(9),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add3~7\,
	combout => \dec_to_bcd_inst|Add3~8_combout\,
	cout => \dec_to_bcd_inst|Add3~9\);

-- Location: LCCOMB_X23_Y13_N6
\dec_to_bcd_inst|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector33~0_combout\ = (\dec_to_bcd_inst|num_reg[18]~35_combout\ & (((!\dec_to_bcd_inst|unit~0_combout\)))) # (!\dec_to_bcd_inst|num_reg[18]~35_combout\ & ((\dec_to_bcd_inst|unit~0_combout\ & (\dec_to_bcd_inst|Add7~12_combout\)) # 
-- (!\dec_to_bcd_inst|unit~0_combout\ & ((\dec_to_bcd_inst|Add3~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Add7~12_combout\,
	datab => \dec_to_bcd_inst|Add3~8_combout\,
	datac => \dec_to_bcd_inst|num_reg[18]~35_combout\,
	datad => \dec_to_bcd_inst|unit~0_combout\,
	combout => \dec_to_bcd_inst|Selector33~0_combout\);

-- Location: LCCOMB_X23_Y13_N12
\dec_to_bcd_inst|Selector33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector33~1_combout\ = (\dec_to_bcd_inst|num_reg[18]~35_combout\ & ((\dec_to_bcd_inst|Selector33~0_combout\ & (\dec_to_bcd_inst|Add1~6_combout\)) # (!\dec_to_bcd_inst|Selector33~0_combout\ & ((\dec_to_bcd_inst|Add5~10_combout\))))) # 
-- (!\dec_to_bcd_inst|num_reg[18]~35_combout\ & (((\dec_to_bcd_inst|Selector33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg[18]~35_combout\,
	datab => \dec_to_bcd_inst|Add1~6_combout\,
	datac => \dec_to_bcd_inst|Add5~10_combout\,
	datad => \dec_to_bcd_inst|Selector33~0_combout\,
	combout => \dec_to_bcd_inst|Selector33~1_combout\);

-- Location: LCCOMB_X22_Y12_N6
\dec_to_bcd_inst|Selector33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector33~2_combout\ = (\dec_to_bcd_inst|state.ST_CALC~q\ & (\dec_to_bcd_inst|Selector33~1_combout\)) # (!\dec_to_bcd_inst|state.ST_CALC~q\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|state.ST_CALC~q\,
	datac => \dec_to_bcd_inst|Selector33~1_combout\,
	datad => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	combout => \dec_to_bcd_inst|Selector33~2_combout\);

-- Location: FF_X22_Y12_N7
\dec_to_bcd_inst|num_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|Selector33~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dec_to_bcd_inst|num_reg[18]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|num_reg\(9));

-- Location: LCCOMB_X21_Y12_N24
\dec_to_bcd_inst|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add3~10_combout\ = (\dec_to_bcd_inst|num_reg\(10) & (!\dec_to_bcd_inst|Add3~9\)) # (!\dec_to_bcd_inst|num_reg\(10) & ((\dec_to_bcd_inst|Add3~9\) # (GND)))
-- \dec_to_bcd_inst|Add3~11\ = CARRY((!\dec_to_bcd_inst|Add3~9\) # (!\dec_to_bcd_inst|num_reg\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(10),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add3~9\,
	combout => \dec_to_bcd_inst|Add3~10_combout\,
	cout => \dec_to_bcd_inst|Add3~11\);

-- Location: LCCOMB_X21_Y14_N24
\dec_to_bcd_inst|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add5~12_combout\ = (\dec_to_bcd_inst|num_reg\(10) & (\dec_to_bcd_inst|Add5~11\ $ (GND))) # (!\dec_to_bcd_inst|num_reg\(10) & (!\dec_to_bcd_inst|Add5~11\ & VCC))
-- \dec_to_bcd_inst|Add5~13\ = CARRY((\dec_to_bcd_inst|num_reg\(10) & !\dec_to_bcd_inst|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(10),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add5~11\,
	combout => \dec_to_bcd_inst|Add5~12_combout\,
	cout => \dec_to_bcd_inst|Add5~13\);

-- Location: LCCOMB_X24_Y14_N26
\dec_to_bcd_inst|Add7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add7~14_combout\ = (\dec_to_bcd_inst|num_reg\(10) & (\dec_to_bcd_inst|Add7~13\ & VCC)) # (!\dec_to_bcd_inst|num_reg\(10) & (!\dec_to_bcd_inst|Add7~13\))
-- \dec_to_bcd_inst|Add7~15\ = CARRY((!\dec_to_bcd_inst|num_reg\(10) & !\dec_to_bcd_inst|Add7~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(10),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add7~13\,
	combout => \dec_to_bcd_inst|Add7~14_combout\,
	cout => \dec_to_bcd_inst|Add7~15\);

-- Location: LCCOMB_X22_Y13_N26
\dec_to_bcd_inst|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector32~0_combout\ = (\dec_to_bcd_inst|unit~0_combout\ & ((\dec_to_bcd_inst|num_reg[18]~35_combout\ & (\dec_to_bcd_inst|Add5~12_combout\)) # (!\dec_to_bcd_inst|num_reg[18]~35_combout\ & ((\dec_to_bcd_inst|Add7~14_combout\))))) # 
-- (!\dec_to_bcd_inst|unit~0_combout\ & (((\dec_to_bcd_inst|num_reg[18]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Add5~12_combout\,
	datab => \dec_to_bcd_inst|unit~0_combout\,
	datac => \dec_to_bcd_inst|Add7~14_combout\,
	datad => \dec_to_bcd_inst|num_reg[18]~35_combout\,
	combout => \dec_to_bcd_inst|Selector32~0_combout\);

-- Location: LCCOMB_X21_Y10_N22
\dec_to_bcd_inst|Selector32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector32~1_combout\ = (\dec_to_bcd_inst|unit~0_combout\ & (((\dec_to_bcd_inst|Selector32~0_combout\)))) # (!\dec_to_bcd_inst|unit~0_combout\ & ((\dec_to_bcd_inst|Selector32~0_combout\ & ((\dec_to_bcd_inst|Add1~8_combout\))) # 
-- (!\dec_to_bcd_inst|Selector32~0_combout\ & (\dec_to_bcd_inst|Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Add3~10_combout\,
	datab => \dec_to_bcd_inst|Add1~8_combout\,
	datac => \dec_to_bcd_inst|unit~0_combout\,
	datad => \dec_to_bcd_inst|Selector32~0_combout\,
	combout => \dec_to_bcd_inst|Selector32~1_combout\);

-- Location: FF_X21_Y10_N27
\dec_to_bcd_inst|num_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|num_reg[10]~feeder_combout\,
	asdata => \dec_to_bcd_inst|Selector32~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dec_to_bcd_inst|state.ST_CALC~q\,
	ena => \dec_to_bcd_inst|num_reg[18]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|num_reg\(10));

-- Location: LCCOMB_X21_Y14_N26
\dec_to_bcd_inst|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add5~14_combout\ = (\dec_to_bcd_inst|num_reg\(11) & (\dec_to_bcd_inst|Add5~13\ & VCC)) # (!\dec_to_bcd_inst|num_reg\(11) & (!\dec_to_bcd_inst|Add5~13\))
-- \dec_to_bcd_inst|Add5~15\ = CARRY((!\dec_to_bcd_inst|num_reg\(11) & !\dec_to_bcd_inst|Add5~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(11),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add5~13\,
	combout => \dec_to_bcd_inst|Add5~14_combout\,
	cout => \dec_to_bcd_inst|Add5~15\);

-- Location: LCCOMB_X21_Y12_N26
\dec_to_bcd_inst|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add3~12_combout\ = (\dec_to_bcd_inst|num_reg\(11) & ((GND) # (!\dec_to_bcd_inst|Add3~11\))) # (!\dec_to_bcd_inst|num_reg\(11) & (\dec_to_bcd_inst|Add3~11\ $ (GND)))
-- \dec_to_bcd_inst|Add3~13\ = CARRY((\dec_to_bcd_inst|num_reg\(11)) # (!\dec_to_bcd_inst|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(11),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add3~11\,
	combout => \dec_to_bcd_inst|Add3~12_combout\,
	cout => \dec_to_bcd_inst|Add3~13\);

-- Location: LCCOMB_X24_Y14_N28
\dec_to_bcd_inst|Add7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add7~16_combout\ = (\dec_to_bcd_inst|num_reg\(11) & ((GND) # (!\dec_to_bcd_inst|Add7~15\))) # (!\dec_to_bcd_inst|num_reg\(11) & (\dec_to_bcd_inst|Add7~15\ $ (GND)))
-- \dec_to_bcd_inst|Add7~17\ = CARRY((\dec_to_bcd_inst|num_reg\(11)) # (!\dec_to_bcd_inst|Add7~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(11),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add7~15\,
	combout => \dec_to_bcd_inst|Add7~16_combout\,
	cout => \dec_to_bcd_inst|Add7~17\);

-- Location: LCCOMB_X21_Y10_N18
\dec_to_bcd_inst|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector31~0_combout\ = (\dec_to_bcd_inst|unit~0_combout\ & (((\dec_to_bcd_inst|Add7~16_combout\ & !\dec_to_bcd_inst|num_reg[18]~35_combout\)))) # (!\dec_to_bcd_inst|unit~0_combout\ & ((\dec_to_bcd_inst|Add3~12_combout\) # 
-- ((\dec_to_bcd_inst|num_reg[18]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Add3~12_combout\,
	datab => \dec_to_bcd_inst|Add7~16_combout\,
	datac => \dec_to_bcd_inst|unit~0_combout\,
	datad => \dec_to_bcd_inst|num_reg[18]~35_combout\,
	combout => \dec_to_bcd_inst|Selector31~0_combout\);

-- Location: LCCOMB_X21_Y10_N12
\dec_to_bcd_inst|Selector31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector31~1_combout\ = (\dec_to_bcd_inst|num_reg[18]~35_combout\ & ((\dec_to_bcd_inst|Selector31~0_combout\ & ((\dec_to_bcd_inst|Add1~10_combout\))) # (!\dec_to_bcd_inst|Selector31~0_combout\ & (\dec_to_bcd_inst|Add5~14_combout\)))) # 
-- (!\dec_to_bcd_inst|num_reg[18]~35_combout\ & (((\dec_to_bcd_inst|Selector31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Add5~14_combout\,
	datab => \dec_to_bcd_inst|num_reg[18]~35_combout\,
	datac => \dec_to_bcd_inst|Add1~10_combout\,
	datad => \dec_to_bcd_inst|Selector31~0_combout\,
	combout => \dec_to_bcd_inst|Selector31~1_combout\);

-- Location: FF_X21_Y10_N3
\dec_to_bcd_inst|num_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|num_reg[11]~feeder_combout\,
	asdata => \dec_to_bcd_inst|Selector31~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dec_to_bcd_inst|state.ST_CALC~q\,
	ena => \dec_to_bcd_inst|num_reg[18]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|num_reg\(11));

-- Location: LCCOMB_X21_Y12_N28
\dec_to_bcd_inst|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add3~14_combout\ = (\dec_to_bcd_inst|num_reg\(12) & (\dec_to_bcd_inst|Add3~13\ & VCC)) # (!\dec_to_bcd_inst|num_reg\(12) & (!\dec_to_bcd_inst|Add3~13\))
-- \dec_to_bcd_inst|Add3~15\ = CARRY((!\dec_to_bcd_inst|num_reg\(12) & !\dec_to_bcd_inst|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(12),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add3~13\,
	combout => \dec_to_bcd_inst|Add3~14_combout\,
	cout => \dec_to_bcd_inst|Add3~15\);

-- Location: LCCOMB_X24_Y14_N30
\dec_to_bcd_inst|Add7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add7~18_combout\ = (\dec_to_bcd_inst|num_reg\(12) & (\dec_to_bcd_inst|Add7~17\ & VCC)) # (!\dec_to_bcd_inst|num_reg\(12) & (!\dec_to_bcd_inst|Add7~17\))
-- \dec_to_bcd_inst|Add7~19\ = CARRY((!\dec_to_bcd_inst|num_reg\(12) & !\dec_to_bcd_inst|Add7~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(12),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add7~17\,
	combout => \dec_to_bcd_inst|Add7~18_combout\,
	cout => \dec_to_bcd_inst|Add7~19\);

-- Location: LCCOMB_X21_Y14_N28
\dec_to_bcd_inst|Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add5~16_combout\ = (\dec_to_bcd_inst|num_reg\(12) & ((GND) # (!\dec_to_bcd_inst|Add5~15\))) # (!\dec_to_bcd_inst|num_reg\(12) & (\dec_to_bcd_inst|Add5~15\ $ (GND)))
-- \dec_to_bcd_inst|Add5~17\ = CARRY((\dec_to_bcd_inst|num_reg\(12)) # (!\dec_to_bcd_inst|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(12),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add5~15\,
	combout => \dec_to_bcd_inst|Add5~16_combout\,
	cout => \dec_to_bcd_inst|Add5~17\);

-- Location: LCCOMB_X21_Y10_N6
\dec_to_bcd_inst|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector30~0_combout\ = (\dec_to_bcd_inst|unit~0_combout\ & ((\dec_to_bcd_inst|num_reg[18]~35_combout\ & ((\dec_to_bcd_inst|Add5~16_combout\))) # (!\dec_to_bcd_inst|num_reg[18]~35_combout\ & (\dec_to_bcd_inst|Add7~18_combout\)))) # 
-- (!\dec_to_bcd_inst|unit~0_combout\ & (((\dec_to_bcd_inst|num_reg[18]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Add7~18_combout\,
	datab => \dec_to_bcd_inst|Add5~16_combout\,
	datac => \dec_to_bcd_inst|unit~0_combout\,
	datad => \dec_to_bcd_inst|num_reg[18]~35_combout\,
	combout => \dec_to_bcd_inst|Selector30~0_combout\);

-- Location: LCCOMB_X21_Y10_N8
\dec_to_bcd_inst|Selector30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector30~1_combout\ = (\dec_to_bcd_inst|unit~0_combout\ & (((\dec_to_bcd_inst|Selector30~0_combout\)))) # (!\dec_to_bcd_inst|unit~0_combout\ & ((\dec_to_bcd_inst|Selector30~0_combout\ & ((\dec_to_bcd_inst|Add1~12_combout\))) # 
-- (!\dec_to_bcd_inst|Selector30~0_combout\ & (\dec_to_bcd_inst|Add3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Add3~14_combout\,
	datab => \dec_to_bcd_inst|Add1~12_combout\,
	datac => \dec_to_bcd_inst|unit~0_combout\,
	datad => \dec_to_bcd_inst|Selector30~0_combout\,
	combout => \dec_to_bcd_inst|Selector30~1_combout\);

-- Location: FF_X21_Y10_N17
\dec_to_bcd_inst|num_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|num_reg[12]~feeder_combout\,
	asdata => \dec_to_bcd_inst|Selector30~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dec_to_bcd_inst|state.ST_CALC~q\,
	ena => \dec_to_bcd_inst|num_reg[18]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|num_reg\(12));

-- Location: LCCOMB_X21_Y14_N30
\dec_to_bcd_inst|Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add5~18_combout\ = (\dec_to_bcd_inst|num_reg\(13) & (!\dec_to_bcd_inst|Add5~17\)) # (!\dec_to_bcd_inst|num_reg\(13) & ((\dec_to_bcd_inst|Add5~17\) # (GND)))
-- \dec_to_bcd_inst|Add5~19\ = CARRY((!\dec_to_bcd_inst|Add5~17\) # (!\dec_to_bcd_inst|num_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(13),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add5~17\,
	combout => \dec_to_bcd_inst|Add5~18_combout\,
	cout => \dec_to_bcd_inst|Add5~19\);

-- Location: LCCOMB_X21_Y12_N30
\dec_to_bcd_inst|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add3~16_combout\ = (\dec_to_bcd_inst|num_reg\(13) & ((GND) # (!\dec_to_bcd_inst|Add3~15\))) # (!\dec_to_bcd_inst|num_reg\(13) & (\dec_to_bcd_inst|Add3~15\ $ (GND)))
-- \dec_to_bcd_inst|Add3~17\ = CARRY((\dec_to_bcd_inst|num_reg\(13)) # (!\dec_to_bcd_inst|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(13),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add3~15\,
	combout => \dec_to_bcd_inst|Add3~16_combout\,
	cout => \dec_to_bcd_inst|Add3~17\);

-- Location: LCCOMB_X24_Y13_N0
\dec_to_bcd_inst|Add7~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add7~20_combout\ = (\dec_to_bcd_inst|num_reg\(13) & ((GND) # (!\dec_to_bcd_inst|Add7~19\))) # (!\dec_to_bcd_inst|num_reg\(13) & (\dec_to_bcd_inst|Add7~19\ $ (GND)))
-- \dec_to_bcd_inst|Add7~21\ = CARRY((\dec_to_bcd_inst|num_reg\(13)) # (!\dec_to_bcd_inst|Add7~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(13),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add7~19\,
	combout => \dec_to_bcd_inst|Add7~20_combout\,
	cout => \dec_to_bcd_inst|Add7~21\);

-- Location: LCCOMB_X21_Y10_N10
\dec_to_bcd_inst|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector29~0_combout\ = (\dec_to_bcd_inst|unit~0_combout\ & (((\dec_to_bcd_inst|Add7~20_combout\ & !\dec_to_bcd_inst|num_reg[18]~35_combout\)))) # (!\dec_to_bcd_inst|unit~0_combout\ & ((\dec_to_bcd_inst|Add3~16_combout\) # 
-- ((\dec_to_bcd_inst|num_reg[18]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Add3~16_combout\,
	datab => \dec_to_bcd_inst|unit~0_combout\,
	datac => \dec_to_bcd_inst|Add7~20_combout\,
	datad => \dec_to_bcd_inst|num_reg[18]~35_combout\,
	combout => \dec_to_bcd_inst|Selector29~0_combout\);

-- Location: LCCOMB_X21_Y10_N28
\dec_to_bcd_inst|Selector29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector29~1_combout\ = (\dec_to_bcd_inst|num_reg[18]~35_combout\ & ((\dec_to_bcd_inst|Selector29~0_combout\ & ((\dec_to_bcd_inst|Add1~14_combout\))) # (!\dec_to_bcd_inst|Selector29~0_combout\ & (\dec_to_bcd_inst|Add5~18_combout\)))) # 
-- (!\dec_to_bcd_inst|num_reg[18]~35_combout\ & (((\dec_to_bcd_inst|Selector29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Add5~18_combout\,
	datab => \dec_to_bcd_inst|num_reg[18]~35_combout\,
	datac => \dec_to_bcd_inst|Add1~14_combout\,
	datad => \dec_to_bcd_inst|Selector29~0_combout\,
	combout => \dec_to_bcd_inst|Selector29~1_combout\);

-- Location: FF_X21_Y10_N21
\dec_to_bcd_inst|num_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|num_reg[13]~feeder_combout\,
	asdata => \dec_to_bcd_inst|Selector29~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dec_to_bcd_inst|state.ST_CALC~q\,
	ena => \dec_to_bcd_inst|num_reg[18]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|num_reg\(13));

-- Location: LCCOMB_X21_Y11_N0
\dec_to_bcd_inst|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add3~18_combout\ = (\dec_to_bcd_inst|num_reg\(14) & (\dec_to_bcd_inst|Add3~17\ & VCC)) # (!\dec_to_bcd_inst|num_reg\(14) & (!\dec_to_bcd_inst|Add3~17\))
-- \dec_to_bcd_inst|Add3~19\ = CARRY((!\dec_to_bcd_inst|num_reg\(14) & !\dec_to_bcd_inst|Add3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(14),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add3~17\,
	combout => \dec_to_bcd_inst|Add3~18_combout\,
	cout => \dec_to_bcd_inst|Add3~19\);

-- Location: LCCOMB_X21_Y13_N0
\dec_to_bcd_inst|Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add5~20_combout\ = (\dec_to_bcd_inst|num_reg\(14) & ((GND) # (!\dec_to_bcd_inst|Add5~19\))) # (!\dec_to_bcd_inst|num_reg\(14) & (\dec_to_bcd_inst|Add5~19\ $ (GND)))
-- \dec_to_bcd_inst|Add5~21\ = CARRY((\dec_to_bcd_inst|num_reg\(14)) # (!\dec_to_bcd_inst|Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(14),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add5~19\,
	combout => \dec_to_bcd_inst|Add5~20_combout\,
	cout => \dec_to_bcd_inst|Add5~21\);

-- Location: LCCOMB_X24_Y13_N2
\dec_to_bcd_inst|Add7~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add7~22_combout\ = (\dec_to_bcd_inst|num_reg\(14) & (\dec_to_bcd_inst|Add7~21\ & VCC)) # (!\dec_to_bcd_inst|num_reg\(14) & (!\dec_to_bcd_inst|Add7~21\))
-- \dec_to_bcd_inst|Add7~23\ = CARRY((!\dec_to_bcd_inst|num_reg\(14) & !\dec_to_bcd_inst|Add7~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(14),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add7~21\,
	combout => \dec_to_bcd_inst|Add7~22_combout\,
	cout => \dec_to_bcd_inst|Add7~23\);

-- Location: LCCOMB_X23_Y10_N16
\dec_to_bcd_inst|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector28~0_combout\ = (\dec_to_bcd_inst|unit~0_combout\ & ((\dec_to_bcd_inst|num_reg[18]~35_combout\ & (\dec_to_bcd_inst|Add5~20_combout\)) # (!\dec_to_bcd_inst|num_reg[18]~35_combout\ & ((\dec_to_bcd_inst|Add7~22_combout\))))) # 
-- (!\dec_to_bcd_inst|unit~0_combout\ & (((\dec_to_bcd_inst|num_reg[18]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Add5~20_combout\,
	datab => \dec_to_bcd_inst|unit~0_combout\,
	datac => \dec_to_bcd_inst|num_reg[18]~35_combout\,
	datad => \dec_to_bcd_inst|Add7~22_combout\,
	combout => \dec_to_bcd_inst|Selector28~0_combout\);

-- Location: LCCOMB_X23_Y10_N30
\dec_to_bcd_inst|Selector28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector28~1_combout\ = (\dec_to_bcd_inst|unit~0_combout\ & (((\dec_to_bcd_inst|Selector28~0_combout\)))) # (!\dec_to_bcd_inst|unit~0_combout\ & ((\dec_to_bcd_inst|Selector28~0_combout\ & ((\dec_to_bcd_inst|Add1~16_combout\))) # 
-- (!\dec_to_bcd_inst|Selector28~0_combout\ & (\dec_to_bcd_inst|Add3~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Add3~18_combout\,
	datab => \dec_to_bcd_inst|Add1~16_combout\,
	datac => \dec_to_bcd_inst|unit~0_combout\,
	datad => \dec_to_bcd_inst|Selector28~0_combout\,
	combout => \dec_to_bcd_inst|Selector28~1_combout\);

-- Location: FF_X22_Y10_N9
\dec_to_bcd_inst|num_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|num_reg[14]~27_combout\,
	asdata => \dec_to_bcd_inst|Selector28~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dec_to_bcd_inst|state.ST_CALC~q\,
	ena => \dec_to_bcd_inst|num_reg[18]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|num_reg\(14));

-- Location: LCCOMB_X21_Y13_N2
\dec_to_bcd_inst|Add5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add5~22_combout\ = (\dec_to_bcd_inst|num_reg\(15) & (\dec_to_bcd_inst|Add5~21\ & VCC)) # (!\dec_to_bcd_inst|num_reg\(15) & (!\dec_to_bcd_inst|Add5~21\))
-- \dec_to_bcd_inst|Add5~23\ = CARRY((!\dec_to_bcd_inst|num_reg\(15) & !\dec_to_bcd_inst|Add5~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(15),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add5~21\,
	combout => \dec_to_bcd_inst|Add5~22_combout\,
	cout => \dec_to_bcd_inst|Add5~23\);

-- Location: LCCOMB_X21_Y11_N2
\dec_to_bcd_inst|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add3~20_combout\ = (\dec_to_bcd_inst|num_reg\(15) & (\dec_to_bcd_inst|Add3~19\ $ (GND))) # (!\dec_to_bcd_inst|num_reg\(15) & (!\dec_to_bcd_inst|Add3~19\ & VCC))
-- \dec_to_bcd_inst|Add3~21\ = CARRY((\dec_to_bcd_inst|num_reg\(15) & !\dec_to_bcd_inst|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(15),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add3~19\,
	combout => \dec_to_bcd_inst|Add3~20_combout\,
	cout => \dec_to_bcd_inst|Add3~21\);

-- Location: LCCOMB_X24_Y13_N4
\dec_to_bcd_inst|Add7~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add7~24_combout\ = (\dec_to_bcd_inst|num_reg\(15) & ((GND) # (!\dec_to_bcd_inst|Add7~23\))) # (!\dec_to_bcd_inst|num_reg\(15) & (\dec_to_bcd_inst|Add7~23\ $ (GND)))
-- \dec_to_bcd_inst|Add7~25\ = CARRY((\dec_to_bcd_inst|num_reg\(15)) # (!\dec_to_bcd_inst|Add7~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(15),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add7~23\,
	combout => \dec_to_bcd_inst|Add7~24_combout\,
	cout => \dec_to_bcd_inst|Add7~25\);

-- Location: LCCOMB_X22_Y13_N4
\dec_to_bcd_inst|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector27~0_combout\ = (\dec_to_bcd_inst|unit~0_combout\ & (((\dec_to_bcd_inst|Add7~24_combout\ & !\dec_to_bcd_inst|num_reg[18]~35_combout\)))) # (!\dec_to_bcd_inst|unit~0_combout\ & ((\dec_to_bcd_inst|Add3~20_combout\) # 
-- ((\dec_to_bcd_inst|num_reg[18]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Add3~20_combout\,
	datab => \dec_to_bcd_inst|unit~0_combout\,
	datac => \dec_to_bcd_inst|Add7~24_combout\,
	datad => \dec_to_bcd_inst|num_reg[18]~35_combout\,
	combout => \dec_to_bcd_inst|Selector27~0_combout\);

-- Location: LCCOMB_X22_Y13_N14
\dec_to_bcd_inst|Selector27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector27~1_combout\ = (\dec_to_bcd_inst|num_reg[18]~35_combout\ & ((\dec_to_bcd_inst|Selector27~0_combout\ & ((\dec_to_bcd_inst|Add1~18_combout\))) # (!\dec_to_bcd_inst|Selector27~0_combout\ & (\dec_to_bcd_inst|Add5~22_combout\)))) # 
-- (!\dec_to_bcd_inst|num_reg[18]~35_combout\ & (((\dec_to_bcd_inst|Selector27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Add5~22_combout\,
	datab => \dec_to_bcd_inst|num_reg[18]~35_combout\,
	datac => \dec_to_bcd_inst|Selector27~0_combout\,
	datad => \dec_to_bcd_inst|Add1~18_combout\,
	combout => \dec_to_bcd_inst|Selector27~1_combout\);

-- Location: FF_X22_Y13_N9
\dec_to_bcd_inst|num_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|num_reg[15]~feeder_combout\,
	asdata => \dec_to_bcd_inst|Selector27~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dec_to_bcd_inst|state.ST_CALC~q\,
	ena => \dec_to_bcd_inst|num_reg[18]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|num_reg\(15));

-- Location: LCCOMB_X21_Y11_N4
\dec_to_bcd_inst|Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add3~22_combout\ = (\dec_to_bcd_inst|num_reg\(16) & (!\dec_to_bcd_inst|Add3~21\)) # (!\dec_to_bcd_inst|num_reg\(16) & ((\dec_to_bcd_inst|Add3~21\) # (GND)))
-- \dec_to_bcd_inst|Add3~23\ = CARRY((!\dec_to_bcd_inst|Add3~21\) # (!\dec_to_bcd_inst|num_reg\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(16),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add3~21\,
	combout => \dec_to_bcd_inst|Add3~22_combout\,
	cout => \dec_to_bcd_inst|Add3~23\);

-- Location: LCCOMB_X21_Y13_N4
\dec_to_bcd_inst|Add5~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add5~24_combout\ = (\dec_to_bcd_inst|num_reg\(16) & ((GND) # (!\dec_to_bcd_inst|Add5~23\))) # (!\dec_to_bcd_inst|num_reg\(16) & (\dec_to_bcd_inst|Add5~23\ $ (GND)))
-- \dec_to_bcd_inst|Add5~25\ = CARRY((\dec_to_bcd_inst|num_reg\(16)) # (!\dec_to_bcd_inst|Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(16),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add5~23\,
	combout => \dec_to_bcd_inst|Add5~24_combout\,
	cout => \dec_to_bcd_inst|Add5~25\);

-- Location: LCCOMB_X24_Y13_N6
\dec_to_bcd_inst|Add7~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add7~26_combout\ = (\dec_to_bcd_inst|num_reg\(16) & (\dec_to_bcd_inst|Add7~25\ & VCC)) # (!\dec_to_bcd_inst|num_reg\(16) & (!\dec_to_bcd_inst|Add7~25\))
-- \dec_to_bcd_inst|Add7~27\ = CARRY((!\dec_to_bcd_inst|num_reg\(16) & !\dec_to_bcd_inst|Add7~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(16),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add7~25\,
	combout => \dec_to_bcd_inst|Add7~26_combout\,
	cout => \dec_to_bcd_inst|Add7~27\);

-- Location: LCCOMB_X21_Y13_N28
\dec_to_bcd_inst|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector26~0_combout\ = (\dec_to_bcd_inst|unit~0_combout\ & ((\dec_to_bcd_inst|num_reg[18]~35_combout\ & (\dec_to_bcd_inst|Add5~24_combout\)) # (!\dec_to_bcd_inst|num_reg[18]~35_combout\ & ((\dec_to_bcd_inst|Add7~26_combout\))))) # 
-- (!\dec_to_bcd_inst|unit~0_combout\ & (((\dec_to_bcd_inst|num_reg[18]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Add5~24_combout\,
	datab => \dec_to_bcd_inst|unit~0_combout\,
	datac => \dec_to_bcd_inst|Add7~26_combout\,
	datad => \dec_to_bcd_inst|num_reg[18]~35_combout\,
	combout => \dec_to_bcd_inst|Selector26~0_combout\);

-- Location: LCCOMB_X21_Y10_N4
\dec_to_bcd_inst|Selector26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector26~1_combout\ = (\dec_to_bcd_inst|unit~0_combout\ & (((\dec_to_bcd_inst|Selector26~0_combout\)))) # (!\dec_to_bcd_inst|unit~0_combout\ & ((\dec_to_bcd_inst|Selector26~0_combout\ & ((\dec_to_bcd_inst|Add1~20_combout\))) # 
-- (!\dec_to_bcd_inst|Selector26~0_combout\ & (\dec_to_bcd_inst|Add3~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|unit~0_combout\,
	datab => \dec_to_bcd_inst|Add3~22_combout\,
	datac => \dec_to_bcd_inst|Add1~20_combout\,
	datad => \dec_to_bcd_inst|Selector26~0_combout\,
	combout => \dec_to_bcd_inst|Selector26~1_combout\);

-- Location: FF_X21_Y10_N1
\dec_to_bcd_inst|num_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|num_reg[16]~feeder_combout\,
	asdata => \dec_to_bcd_inst|Selector26~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dec_to_bcd_inst|state.ST_CALC~q\,
	ena => \dec_to_bcd_inst|num_reg[18]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|num_reg\(16));

-- Location: LCCOMB_X21_Y13_N6
\dec_to_bcd_inst|Add5~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add5~26_combout\ = (\dec_to_bcd_inst|num_reg\(17) & (\dec_to_bcd_inst|Add5~25\ & VCC)) # (!\dec_to_bcd_inst|num_reg\(17) & (!\dec_to_bcd_inst|Add5~25\))
-- \dec_to_bcd_inst|Add5~27\ = CARRY((!\dec_to_bcd_inst|num_reg\(17) & !\dec_to_bcd_inst|Add5~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(17),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add5~25\,
	combout => \dec_to_bcd_inst|Add5~26_combout\,
	cout => \dec_to_bcd_inst|Add5~27\);

-- Location: LCCOMB_X21_Y11_N6
\dec_to_bcd_inst|Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add3~24_combout\ = (\dec_to_bcd_inst|num_reg\(17) & ((GND) # (!\dec_to_bcd_inst|Add3~23\))) # (!\dec_to_bcd_inst|num_reg\(17) & (\dec_to_bcd_inst|Add3~23\ $ (GND)))
-- \dec_to_bcd_inst|Add3~25\ = CARRY((\dec_to_bcd_inst|num_reg\(17)) # (!\dec_to_bcd_inst|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(17),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add3~23\,
	combout => \dec_to_bcd_inst|Add3~24_combout\,
	cout => \dec_to_bcd_inst|Add3~25\);

-- Location: LCCOMB_X22_Y13_N10
\dec_to_bcd_inst|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector25~0_combout\ = (\dec_to_bcd_inst|unit~0_combout\ & (((\dec_to_bcd_inst|num_reg[18]~35_combout\)))) # (!\dec_to_bcd_inst|unit~0_combout\ & ((\dec_to_bcd_inst|num_reg[18]~35_combout\ & (\dec_to_bcd_inst|Add1~22_combout\)) # 
-- (!\dec_to_bcd_inst|num_reg[18]~35_combout\ & ((\dec_to_bcd_inst|Add3~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Add1~22_combout\,
	datab => \dec_to_bcd_inst|unit~0_combout\,
	datac => \dec_to_bcd_inst|Add3~24_combout\,
	datad => \dec_to_bcd_inst|num_reg[18]~35_combout\,
	combout => \dec_to_bcd_inst|Selector25~0_combout\);

-- Location: LCCOMB_X22_Y13_N12
\dec_to_bcd_inst|Selector25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector25~1_combout\ = (\dec_to_bcd_inst|unit~0_combout\ & ((\dec_to_bcd_inst|Selector25~0_combout\ & ((\dec_to_bcd_inst|Add5~26_combout\))) # (!\dec_to_bcd_inst|Selector25~0_combout\ & (\dec_to_bcd_inst|Add7~28_combout\)))) # 
-- (!\dec_to_bcd_inst|unit~0_combout\ & (((\dec_to_bcd_inst|Selector25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Add7~28_combout\,
	datab => \dec_to_bcd_inst|unit~0_combout\,
	datac => \dec_to_bcd_inst|Add5~26_combout\,
	datad => \dec_to_bcd_inst|Selector25~0_combout\,
	combout => \dec_to_bcd_inst|Selector25~1_combout\);

-- Location: FF_X22_Y10_N15
\dec_to_bcd_inst|num_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|num_reg[17]~33_combout\,
	asdata => \dec_to_bcd_inst|Selector25~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dec_to_bcd_inst|state.ST_CALC~q\,
	ena => \dec_to_bcd_inst|num_reg[18]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|num_reg\(17));

-- Location: LCCOMB_X21_Y11_N8
\dec_to_bcd_inst|Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add3~26_combout\ = (\dec_to_bcd_inst|num_reg\(18) & (\dec_to_bcd_inst|Add3~25\ & VCC)) # (!\dec_to_bcd_inst|num_reg\(18) & (!\dec_to_bcd_inst|Add3~25\))
-- \dec_to_bcd_inst|Add3~27\ = CARRY((!\dec_to_bcd_inst|num_reg\(18) & !\dec_to_bcd_inst|Add3~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(18),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add3~25\,
	combout => \dec_to_bcd_inst|Add3~26_combout\,
	cout => \dec_to_bcd_inst|Add3~27\);

-- Location: LCCOMB_X21_Y13_N8
\dec_to_bcd_inst|Add5~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add5~28_combout\ = (\dec_to_bcd_inst|num_reg\(18) & ((GND) # (!\dec_to_bcd_inst|Add5~27\))) # (!\dec_to_bcd_inst|num_reg\(18) & (\dec_to_bcd_inst|Add5~27\ $ (GND)))
-- \dec_to_bcd_inst|Add5~29\ = CARRY((\dec_to_bcd_inst|num_reg\(18)) # (!\dec_to_bcd_inst|Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(18),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add5~27\,
	combout => \dec_to_bcd_inst|Add5~28_combout\,
	cout => \dec_to_bcd_inst|Add5~29\);

-- Location: LCCOMB_X23_Y10_N18
\dec_to_bcd_inst|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector24~0_combout\ = (\dec_to_bcd_inst|unit~0_combout\ & ((\dec_to_bcd_inst|num_reg[18]~35_combout\ & ((\dec_to_bcd_inst|Add5~28_combout\))) # (!\dec_to_bcd_inst|num_reg[18]~35_combout\ & (\dec_to_bcd_inst|Add7~30_combout\)))) # 
-- (!\dec_to_bcd_inst|unit~0_combout\ & (((\dec_to_bcd_inst|num_reg[18]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|unit~0_combout\,
	datab => \dec_to_bcd_inst|Add7~30_combout\,
	datac => \dec_to_bcd_inst|num_reg[18]~35_combout\,
	datad => \dec_to_bcd_inst|Add5~28_combout\,
	combout => \dec_to_bcd_inst|Selector24~0_combout\);

-- Location: LCCOMB_X23_Y10_N8
\dec_to_bcd_inst|Selector24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector24~1_combout\ = (\dec_to_bcd_inst|unit~0_combout\ & (((\dec_to_bcd_inst|Selector24~0_combout\)))) # (!\dec_to_bcd_inst|unit~0_combout\ & ((\dec_to_bcd_inst|Selector24~0_combout\ & ((\dec_to_bcd_inst|Add1~24_combout\))) # 
-- (!\dec_to_bcd_inst|Selector24~0_combout\ & (\dec_to_bcd_inst|Add3~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Add3~26_combout\,
	datab => \dec_to_bcd_inst|Add1~24_combout\,
	datac => \dec_to_bcd_inst|unit~0_combout\,
	datad => \dec_to_bcd_inst|Selector24~0_combout\,
	combout => \dec_to_bcd_inst|Selector24~1_combout\);

-- Location: FF_X22_Y10_N17
\dec_to_bcd_inst|num_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|num_reg[18]~37_combout\,
	asdata => \dec_to_bcd_inst|Selector24~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dec_to_bcd_inst|state.ST_CALC~q\,
	ena => \dec_to_bcd_inst|num_reg[18]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|num_reg\(18));

-- Location: LCCOMB_X21_Y11_N10
\dec_to_bcd_inst|Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add3~28_combout\ = (\dec_to_bcd_inst|num_reg\(19) & ((GND) # (!\dec_to_bcd_inst|Add3~27\))) # (!\dec_to_bcd_inst|num_reg\(19) & (\dec_to_bcd_inst|Add3~27\ $ (GND)))
-- \dec_to_bcd_inst|Add3~29\ = CARRY((\dec_to_bcd_inst|num_reg\(19)) # (!\dec_to_bcd_inst|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|num_reg\(19),
	datad => VCC,
	cin => \dec_to_bcd_inst|Add3~27\,
	combout => \dec_to_bcd_inst|Add3~28_combout\,
	cout => \dec_to_bcd_inst|Add3~29\);

-- Location: LCCOMB_X22_Y13_N30
\dec_to_bcd_inst|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector23~0_combout\ = (\dec_to_bcd_inst|unit~0_combout\ & (((\dec_to_bcd_inst|num_reg[18]~35_combout\)))) # (!\dec_to_bcd_inst|unit~0_combout\ & ((\dec_to_bcd_inst|num_reg[18]~35_combout\ & ((\dec_to_bcd_inst|Add1~26_combout\))) # 
-- (!\dec_to_bcd_inst|num_reg[18]~35_combout\ & (\dec_to_bcd_inst|Add3~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Add3~28_combout\,
	datab => \dec_to_bcd_inst|unit~0_combout\,
	datac => \dec_to_bcd_inst|Add1~26_combout\,
	datad => \dec_to_bcd_inst|num_reg[18]~35_combout\,
	combout => \dec_to_bcd_inst|Selector23~0_combout\);

-- Location: LCCOMB_X22_Y13_N24
\dec_to_bcd_inst|Selector23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector23~1_combout\ = (\dec_to_bcd_inst|unit~0_combout\ & ((\dec_to_bcd_inst|Selector23~0_combout\ & (\dec_to_bcd_inst|Add5~30_combout\)) # (!\dec_to_bcd_inst|Selector23~0_combout\ & ((\dec_to_bcd_inst|Add7~32_combout\))))) # 
-- (!\dec_to_bcd_inst|unit~0_combout\ & (((\dec_to_bcd_inst|Selector23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Add5~30_combout\,
	datab => \dec_to_bcd_inst|unit~0_combout\,
	datac => \dec_to_bcd_inst|Selector23~0_combout\,
	datad => \dec_to_bcd_inst|Add7~32_combout\,
	combout => \dec_to_bcd_inst|Selector23~1_combout\);

-- Location: FF_X22_Y10_N19
\dec_to_bcd_inst|num_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|num_reg[19]~39_combout\,
	asdata => \dec_to_bcd_inst|Selector23~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dec_to_bcd_inst|state.ST_CALC~q\,
	ena => \dec_to_bcd_inst|num_reg[18]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|num_reg\(19));

-- Location: LCCOMB_X23_Y13_N4
\dec_to_bcd_inst|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector22~0_combout\ = (\dec_to_bcd_inst|unit~0_combout\ & ((\dec_to_bcd_inst|num_reg[18]~35_combout\ & (\dec_to_bcd_inst|Add5~32_combout\)) # (!\dec_to_bcd_inst|num_reg[18]~35_combout\ & ((\dec_to_bcd_inst|Add7~34_combout\))))) # 
-- (!\dec_to_bcd_inst|unit~0_combout\ & (((\dec_to_bcd_inst|num_reg[18]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|unit~0_combout\,
	datab => \dec_to_bcd_inst|Add5~32_combout\,
	datac => \dec_to_bcd_inst|num_reg[18]~35_combout\,
	datad => \dec_to_bcd_inst|Add7~34_combout\,
	combout => \dec_to_bcd_inst|Selector22~0_combout\);

-- Location: LCCOMB_X22_Y10_N30
\dec_to_bcd_inst|Selector22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector22~1_combout\ = (\dec_to_bcd_inst|unit~0_combout\ & (((\dec_to_bcd_inst|Selector22~0_combout\)))) # (!\dec_to_bcd_inst|unit~0_combout\ & ((\dec_to_bcd_inst|Selector22~0_combout\ & ((\dec_to_bcd_inst|Add1~28_combout\))) # 
-- (!\dec_to_bcd_inst|Selector22~0_combout\ & (\dec_to_bcd_inst|Add3~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|unit~0_combout\,
	datab => \dec_to_bcd_inst|Add3~30_combout\,
	datac => \dec_to_bcd_inst|Add1~28_combout\,
	datad => \dec_to_bcd_inst|Selector22~0_combout\,
	combout => \dec_to_bcd_inst|Selector22~1_combout\);

-- Location: FF_X22_Y10_N21
\dec_to_bcd_inst|num_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|num_reg[20]~41_combout\,
	asdata => \dec_to_bcd_inst|Selector22~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dec_to_bcd_inst|state.ST_CALC~q\,
	ena => \dec_to_bcd_inst|num_reg[18]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|num_reg\(20));

-- Location: LCCOMB_X22_Y13_N22
\dec_to_bcd_inst|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|LessThan3~0_combout\ = (((!\dec_to_bcd_inst|num_reg\(14) & !\dec_to_bcd_inst|num_reg\(15))) # (!\dec_to_bcd_inst|num_reg\(16))) # (!\dec_to_bcd_inst|num_reg\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(14),
	datab => \dec_to_bcd_inst|num_reg\(15),
	datac => \dec_to_bcd_inst|num_reg\(17),
	datad => \dec_to_bcd_inst|num_reg\(16),
	combout => \dec_to_bcd_inst|LessThan3~0_combout\);

-- Location: LCCOMB_X21_Y12_N2
\dec_to_bcd_inst|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|LessThan3~1_combout\ = ((!\dec_to_bcd_inst|num_reg\(7) & (!\dec_to_bcd_inst|num_reg\(6) & !\dec_to_bcd_inst|num_reg\(8)))) # (!\dec_to_bcd_inst|num_reg\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(9),
	datab => \dec_to_bcd_inst|num_reg\(7),
	datac => \dec_to_bcd_inst|num_reg\(6),
	datad => \dec_to_bcd_inst|num_reg\(8),
	combout => \dec_to_bcd_inst|LessThan3~1_combout\);

-- Location: LCCOMB_X22_Y13_N28
\dec_to_bcd_inst|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|LessThan3~2_combout\ = (\dec_to_bcd_inst|LessThan3~0_combout\) # ((\dec_to_bcd_inst|num_reg[18]~17_combout\ & (!\dec_to_bcd_inst|num_reg\(15) & \dec_to_bcd_inst|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg[18]~17_combout\,
	datab => \dec_to_bcd_inst|num_reg\(15),
	datac => \dec_to_bcd_inst|LessThan3~0_combout\,
	datad => \dec_to_bcd_inst|LessThan3~1_combout\,
	combout => \dec_to_bcd_inst|LessThan3~2_combout\);

-- Location: LCCOMB_X22_Y13_N6
\dec_to_bcd_inst|tens~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|tens~0_combout\ = (!\dec_to_bcd_inst|num_reg\(20) & (((\dec_to_bcd_inst|LessThan3~2_combout\) # (!\dec_to_bcd_inst|num_reg\(18))) # (!\dec_to_bcd_inst|num_reg\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(20),
	datab => \dec_to_bcd_inst|num_reg\(19),
	datac => \dec_to_bcd_inst|num_reg\(18),
	datad => \dec_to_bcd_inst|LessThan3~2_combout\,
	combout => \dec_to_bcd_inst|tens~0_combout\);

-- Location: LCCOMB_X22_Y13_N0
\dec_to_bcd_inst|unit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|unit~0_combout\ = (\dec_to_bcd_inst|tens~0_combout\ & (!\dec_to_bcd_inst|num_reg\(23) & (\dec_to_bcd_inst|Selector2~0_combout\ & \dec_to_bcd_inst|LessThan2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|tens~0_combout\,
	datab => \dec_to_bcd_inst|num_reg\(23),
	datac => \dec_to_bcd_inst|Selector2~0_combout\,
	datad => \dec_to_bcd_inst|LessThan2~4_combout\,
	combout => \dec_to_bcd_inst|unit~0_combout\);

-- Location: LCCOMB_X21_Y13_N18
\dec_to_bcd_inst|Add5~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add5~38_combout\ = \dec_to_bcd_inst|Add5~37\ $ (!\dec_to_bcd_inst|num_reg\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dec_to_bcd_inst|num_reg\(23),
	cin => \dec_to_bcd_inst|Add5~37\,
	combout => \dec_to_bcd_inst|Add5~38_combout\);

-- Location: LCCOMB_X24_Y13_N20
\dec_to_bcd_inst|Add7~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add7~40_combout\ = \dec_to_bcd_inst|Add7~39\ $ (\dec_to_bcd_inst|num_reg\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dec_to_bcd_inst|num_reg\(23),
	cin => \dec_to_bcd_inst|Add7~39\,
	combout => \dec_to_bcd_inst|Add7~40_combout\);

-- Location: LCCOMB_X23_Y12_N16
\dec_to_bcd_inst|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add1~34_combout\ = \dec_to_bcd_inst|Add1~33\ $ (!\dec_to_bcd_inst|num_reg\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dec_to_bcd_inst|num_reg\(23),
	cin => \dec_to_bcd_inst|Add1~33\,
	combout => \dec_to_bcd_inst|Add1~34_combout\);

-- Location: LCCOMB_X21_Y11_N18
\dec_to_bcd_inst|Add3~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add3~36_combout\ = \dec_to_bcd_inst|Add3~35\ $ (\dec_to_bcd_inst|num_reg\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dec_to_bcd_inst|num_reg\(23),
	cin => \dec_to_bcd_inst|Add3~35\,
	combout => \dec_to_bcd_inst|Add3~36_combout\);

-- Location: LCCOMB_X22_Y13_N20
\dec_to_bcd_inst|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector19~0_combout\ = (\dec_to_bcd_inst|unit~0_combout\ & (((!\dec_to_bcd_inst|num_reg[18]~35_combout\)))) # (!\dec_to_bcd_inst|unit~0_combout\ & ((\dec_to_bcd_inst|num_reg[18]~35_combout\ & (\dec_to_bcd_inst|Add1~34_combout\)) # 
-- (!\dec_to_bcd_inst|num_reg[18]~35_combout\ & ((\dec_to_bcd_inst|Add3~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|unit~0_combout\,
	datab => \dec_to_bcd_inst|Add1~34_combout\,
	datac => \dec_to_bcd_inst|Add3~36_combout\,
	datad => \dec_to_bcd_inst|num_reg[18]~35_combout\,
	combout => \dec_to_bcd_inst|Selector19~0_combout\);

-- Location: LCCOMB_X22_Y13_N2
\dec_to_bcd_inst|Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector19~1_combout\ = (\dec_to_bcd_inst|unit~0_combout\ & ((\dec_to_bcd_inst|Selector19~0_combout\ & ((\dec_to_bcd_inst|Add7~40_combout\))) # (!\dec_to_bcd_inst|Selector19~0_combout\ & (\dec_to_bcd_inst|Add5~38_combout\)))) # 
-- (!\dec_to_bcd_inst|unit~0_combout\ & (((\dec_to_bcd_inst|Selector19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|unit~0_combout\,
	datab => \dec_to_bcd_inst|Add5~38_combout\,
	datac => \dec_to_bcd_inst|Add7~40_combout\,
	datad => \dec_to_bcd_inst|Selector19~0_combout\,
	combout => \dec_to_bcd_inst|Selector19~1_combout\);

-- Location: FF_X22_Y10_N27
\dec_to_bcd_inst|num_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|num_reg[23]~47_combout\,
	asdata => \dec_to_bcd_inst|Selector19~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dec_to_bcd_inst|state.ST_CALC~q\,
	ena => \dec_to_bcd_inst|num_reg[18]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|num_reg\(23));

-- Location: LCCOMB_X22_Y12_N0
\dec_to_bcd_inst|combinational_logic~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|combinational_logic~0_combout\ = (\dec_to_bcd_inst|num_reg\(23)) # (((\dec_to_bcd_inst|LessThan4~4_combout\) # (!\dec_to_bcd_inst|LessThan2~4_combout\)) # (!\dec_to_bcd_inst|Selector2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|num_reg\(23),
	datab => \dec_to_bcd_inst|Selector2~0_combout\,
	datac => \dec_to_bcd_inst|LessThan4~4_combout\,
	datad => \dec_to_bcd_inst|LessThan2~4_combout\,
	combout => \dec_to_bcd_inst|combinational_logic~0_combout\);

-- Location: LCCOMB_X22_Y14_N4
\dec_to_bcd_inst|bcd_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|bcd_reg[0]~0_combout\ = (\dec_to_bcd_inst|combinational_logic~0_combout\ & (\dec_to_bcd_inst|combinational_logic~1_combout\ & (\dec_to_bcd_inst|state.ST_CALC~q\ & \dec_to_bcd_inst|unit~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|combinational_logic~0_combout\,
	datab => \dec_to_bcd_inst|combinational_logic~1_combout\,
	datac => \dec_to_bcd_inst|state.ST_CALC~q\,
	datad => \dec_to_bcd_inst|unit~0_combout\,
	combout => \dec_to_bcd_inst|bcd_reg[0]~0_combout\);

-- Location: LCCOMB_X23_Y14_N0
\dec_to_bcd_inst|done_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|done_reg~0_combout\ = (\dec_to_bcd_inst|done_reg~q\ & ((\hcsr04_inst|done_reg~q\) # ((!\dec_to_bcd_inst|state.ST_DONE~q\)))) # (!\dec_to_bcd_inst|done_reg~q\ & (((\dec_to_bcd_inst|bcd_reg[0]~0_combout\ & 
-- !\dec_to_bcd_inst|state.ST_DONE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|done_reg~q\,
	datab => \dec_to_bcd_inst|bcd_reg[0]~0_combout\,
	datac => \dec_to_bcd_inst|done_reg~q\,
	datad => \dec_to_bcd_inst|state.ST_DONE~q\,
	combout => \dec_to_bcd_inst|done_reg~0_combout\);

-- Location: FF_X23_Y14_N1
\dec_to_bcd_inst|done_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|done_reg~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|done_reg~q\);

-- Location: LCCOMB_X12_Y18_N0
\display_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|Add0~0_combout\ = \display_inst|count\(0) $ (VCC)
-- \display_inst|Add0~1\ = CARRY(\display_inst|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|count\(0),
	datad => VCC,
	combout => \display_inst|Add0~0_combout\,
	cout => \display_inst|Add0~1\);

-- Location: FF_X12_Y18_N1
\display_inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display_inst|Add0~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|count\(0));

-- Location: LCCOMB_X12_Y18_N2
\display_inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|Add0~2_combout\ = (\display_inst|count\(1) & (!\display_inst|Add0~1\)) # (!\display_inst|count\(1) & ((\display_inst|Add0~1\) # (GND)))
-- \display_inst|Add0~3\ = CARRY((!\display_inst|Add0~1\) # (!\display_inst|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|count\(1),
	datad => VCC,
	cin => \display_inst|Add0~1\,
	combout => \display_inst|Add0~2_combout\,
	cout => \display_inst|Add0~3\);

-- Location: FF_X12_Y18_N3
\display_inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display_inst|Add0~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|count\(1));

-- Location: LCCOMB_X12_Y16_N6
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_cout\ = CARRY((\display_inst|count\(1) & \display_inst|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|count\(1),
	datab => \display_inst|count\(0),
	datad => VCC,
	cout => \Add0~1_cout\);

-- Location: LCCOMB_X12_Y16_N8
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (clks(2) & (!\Add0~1_cout\)) # (!clks(2) & ((\Add0~1_cout\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1_cout\) # (!clks(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clks(2),
	datad => VCC,
	cin => \Add0~1_cout\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X12_Y16_N9
\clks[2]\ : dffeas
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
	q => clks(2));

-- Location: LCCOMB_X12_Y16_N10
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (clks(3) & (\Add0~3\ $ (GND))) # (!clks(3) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((clks(3) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clks(3),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X12_Y16_N11
\clks[3]\ : dffeas
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
	q => clks(3));

-- Location: LCCOMB_X12_Y16_N12
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (clks(4) & (!\Add0~5\)) # (!clks(4) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!clks(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clks(4),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X12_Y16_N13
\clks[4]\ : dffeas
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
	q => clks(4));

-- Location: LCCOMB_X12_Y16_N14
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (clks(5) & (\Add0~7\ $ (GND))) # (!clks(5) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((clks(5) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clks(5),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X12_Y16_N15
\clks[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clks(5));

-- Location: LCCOMB_X12_Y16_N16
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (clks(6) & (!\Add0~9\)) # (!clks(6) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!clks(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clks(6),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X12_Y16_N17
\clks[6]\ : dffeas
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
	q => clks(6));

-- Location: LCCOMB_X12_Y16_N18
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (clks(7) & (\Add0~11\ $ (GND))) # (!clks(7) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((clks(7) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clks(7),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X12_Y16_N19
\clks[7]\ : dffeas
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
	q => clks(7));

-- Location: LCCOMB_X12_Y16_N20
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (clks(8) & (!\Add0~13\)) # (!clks(8) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!clks(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clks(8),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X12_Y16_N21
\clks[8]\ : dffeas
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
	q => clks(8));

-- Location: LCCOMB_X12_Y16_N22
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (clks(9) & (\Add0~15\ $ (GND))) # (!clks(9) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((clks(9) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clks(9),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X13_Y16_N24
\clks~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clks~7_combout\ = (\Add0~16_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~16_combout\,
	datad => \Equal0~8_combout\,
	combout => \clks~7_combout\);

-- Location: FF_X13_Y16_N25
\clks[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clks~7_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clks(9));

-- Location: LCCOMB_X12_Y16_N2
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (clks(6) & (clks(8) & (clks(7) & !clks(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clks(6),
	datab => clks(8),
	datac => clks(7),
	datad => clks(9),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X12_Y16_N24
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (clks(10) & (!\Add0~17\)) # (!clks(10) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!clks(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clks(10),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X12_Y16_N25
\clks[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clks(10));

-- Location: LCCOMB_X12_Y16_N26
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (clks(11) & (\Add0~19\ $ (GND))) # (!clks(11) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((clks(11) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clks(11),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X13_Y16_N2
\clks~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clks~6_combout\ = (\Add0~20_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~20_combout\,
	datad => \Equal0~8_combout\,
	combout => \clks~6_combout\);

-- Location: FF_X13_Y16_N3
\clks[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clks~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clks(11));

-- Location: LCCOMB_X12_Y16_N28
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (clks(12) & (!\Add0~21\)) # (!clks(12) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!clks(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clks(12),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X13_Y16_N4
\clks~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clks~5_combout\ = (\Add0~22_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~22_combout\,
	datad => \Equal0~8_combout\,
	combout => \clks~5_combout\);

-- Location: FF_X13_Y16_N5
\clks[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clks~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clks(12));

-- Location: LCCOMB_X12_Y16_N30
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (clks(13) & (\Add0~23\ $ (GND))) # (!clks(13) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((clks(13) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clks(13),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X12_Y16_N31
\clks[13]\ : dffeas
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
	q => clks(13));

-- Location: LCCOMB_X12_Y16_N4
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (clks(11) & (!clks(10) & (!clks(13) & clks(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clks(11),
	datab => clks(10),
	datac => clks(13),
	datad => clks(12),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X12_Y16_N0
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (clks(4) & (clks(2) & (clks(5) & clks(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clks(4),
	datab => clks(2),
	datac => clks(5),
	datad => clks(3),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X12_Y15_N0
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (clks(14) & (!\Add0~25\)) # (!clks(14) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!clks(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clks(14),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X13_Y15_N4
\clks~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clks~4_combout\ = (!\Equal0~8_combout\ & \Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datad => \Add0~26_combout\,
	combout => \clks~4_combout\);

-- Location: FF_X13_Y15_N5
\clks[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clks~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clks(14));

-- Location: LCCOMB_X12_Y15_N2
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (clks(15) & (\Add0~27\ $ (GND))) # (!clks(15) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((clks(15) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clks(15),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: FF_X12_Y15_N3
\clks[15]\ : dffeas
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
	q => clks(15));

-- Location: LCCOMB_X12_Y15_N4
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (clks(16) & (!\Add0~29\)) # (!clks(16) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!clks(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clks(16),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X12_Y15_N5
\clks[16]\ : dffeas
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
	q => clks(16));

-- Location: LCCOMB_X12_Y15_N6
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (clks(17) & (\Add0~31\ $ (GND))) # (!clks(17) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((clks(17) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clks(17),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X13_Y15_N6
\clks~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clks~3_combout\ = (!\Equal0~8_combout\ & \Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datac => \Add0~32_combout\,
	combout => \clks~3_combout\);

-- Location: FF_X13_Y15_N7
\clks[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clks~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clks(17));

-- Location: LCCOMB_X12_Y15_N8
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (clks(18) & (!\Add0~33\)) # (!clks(18) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!clks(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clks(18),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X12_Y15_N9
\clks[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clks(18));

-- Location: LCCOMB_X12_Y15_N10
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (clks(19) & (\Add0~35\ $ (GND))) # (!clks(19) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((clks(19) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clks(19),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X12_Y15_N11
\clks[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clks(19));

-- Location: LCCOMB_X12_Y15_N12
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (clks(20) & (!\Add0~37\)) # (!clks(20) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!clks(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clks(20),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: FF_X12_Y15_N13
\clks[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~38_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clks(20));

-- Location: LCCOMB_X12_Y15_N14
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (clks(21) & (\Add0~39\ $ (GND))) # (!clks(21) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((clks(21) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clks(21),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X13_Y15_N2
\clks~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clks~2_combout\ = (!\Equal0~8_combout\ & \Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~8_combout\,
	datad => \Add0~40_combout\,
	combout => \clks~2_combout\);

-- Location: FF_X13_Y15_N3
\clks[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clks~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clks(21));

-- Location: LCCOMB_X12_Y15_N16
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (clks(22) & (!\Add0~41\)) # (!clks(22) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!clks(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clks(22),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X12_Y15_N30
\clks~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clks~1_combout\ = (!\Equal0~8_combout\ & \Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~8_combout\,
	datad => \Add0~42_combout\,
	combout => \clks~1_combout\);

-- Location: FF_X12_Y15_N31
\clks[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clks~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clks(22));

-- Location: LCCOMB_X12_Y15_N18
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (clks(23) & (\Add0~43\ $ (GND))) # (!clks(23) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((clks(23) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clks(23),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: FF_X12_Y15_N19
\clks[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clks(23));

-- Location: LCCOMB_X12_Y15_N20
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (clks(24) & (!\Add0~45\)) # (!clks(24) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!clks(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clks(24),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X12_Y15_N21
\clks[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clks(24));

-- Location: LCCOMB_X12_Y15_N22
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (clks(25) & (\Add0~47\ $ (GND))) # (!clks(25) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((clks(25) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clks(25),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X12_Y15_N28
\clks~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clks~0_combout\ = (\Add0~48_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~48_combout\,
	datad => \Equal0~8_combout\,
	combout => \clks~0_combout\);

-- Location: FF_X12_Y15_N29
\clks[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clks~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clks(25));

-- Location: LCCOMB_X13_Y15_N12
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!clks(23) & (!clks(24) & (clks(25) & clks(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clks(23),
	datab => clks(24),
	datac => clks(25),
	datad => clks(22),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X13_Y15_N16
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!clks(18) & (clks(21) & (!clks(19) & !clks(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clks(18),
	datab => clks(21),
	datac => clks(19),
	datad => clks(20),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X13_Y15_N22
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!clks(15) & (clks(14) & (!clks(16) & clks(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clks(15),
	datab => clks(14),
	datac => clks(16),
	datad => clks(17),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X12_Y15_N24
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (clks(26) & (!\Add0~49\)) # (!clks(26) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!clks(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clks(26),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X12_Y15_N25
\clks[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clks(26));

-- Location: LCCOMB_X12_Y15_N26
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = clks(27) $ (!\Add0~51\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clks(27),
	cin => \Add0~51\,
	combout => \Add0~52_combout\);

-- Location: FF_X12_Y15_N27
\clks[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clks(27));

-- Location: LCCOMB_X13_Y15_N18
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!clks(27) & (!clks(26) & (\display_inst|count\(1) & \display_inst|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clks(27),
	datab => clks(26),
	datac => \display_inst|count\(1),
	datad => \display_inst|count\(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X13_Y15_N28
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~2_combout\ & (\Equal0~3_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X13_Y15_N26
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~6_combout\ & (\Equal0~5_combout\ & (\Equal0~7_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X13_Y15_N8
\en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \en~0_combout\ = (\Equal0~8_combout\ & (\dec_to_bcd_inst|done_reg~q\)) # (!\Equal0~8_combout\ & ((\en~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|done_reg~q\,
	datac => \en~q\,
	datad => \Equal0~8_combout\,
	combout => \en~0_combout\);

-- Location: FF_X13_Y15_N9
en : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \en~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \en~q\);

-- Location: LCCOMB_X19_Y8_N28
\hcsr04_inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Selector1~0_combout\ = (\hcsr04_inst|state.ST_TRIG~q\) # ((!\hcsr04_inst|state.ST_IDLE~q\ & !\en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|state.ST_IDLE~q\,
	datab => \hcsr04_inst|state.ST_TRIG~q\,
	datad => \en~q\,
	combout => \hcsr04_inst|Selector1~0_combout\);

-- Location: LCCOMB_X19_Y8_N20
\hcsr04_inst|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Selector1~1_combout\ = (!\hcsr04_inst|state.ST_SAMPLE~q\ & (\hcsr04_inst|Selector1~0_combout\ & ((!\hcsr04_inst|Equal1~4_combout\) # (!\hcsr04_inst|state.ST_TRIG~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|state.ST_SAMPLE~q\,
	datab => \hcsr04_inst|Selector1~0_combout\,
	datac => \hcsr04_inst|state.ST_TRIG~q\,
	datad => \hcsr04_inst|Equal1~4_combout\,
	combout => \hcsr04_inst|Selector1~1_combout\);

-- Location: FF_X19_Y8_N21
\hcsr04_inst|state.ST_TRIG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|Selector1~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|state.ST_TRIG~q\);

-- Location: LCCOMB_X18_Y8_N2
\hcsr04_inst|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Selector1~2_combout\ = (\hcsr04_inst|state.ST_TRIG~q\ & \hcsr04_inst|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hcsr04_inst|state.ST_TRIG~q\,
	datad => \hcsr04_inst|Equal1~4_combout\,
	combout => \hcsr04_inst|Selector1~2_combout\);

-- Location: LCCOMB_X19_Y8_N30
\hcsr04_inst|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Selector2~1_combout\ = (\hcsr04_inst|state.ST_MEASURE~q\ & ((\hcsr04_inst|old_io_reg~q\ & ((\hcsr04_inst|new_io_reg~q\))) # (!\hcsr04_inst|old_io_reg~q\ & ((\hcsr04_inst|Selector1~2_combout\) # (!\hcsr04_inst|new_io_reg~q\))))) # 
-- (!\hcsr04_inst|state.ST_MEASURE~q\ & (\hcsr04_inst|Selector1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|Selector1~2_combout\,
	datab => \hcsr04_inst|old_io_reg~q\,
	datac => \hcsr04_inst|state.ST_MEASURE~q\,
	datad => \hcsr04_inst|new_io_reg~q\,
	combout => \hcsr04_inst|Selector2~1_combout\);

-- Location: FF_X19_Y8_N31
\hcsr04_inst|state.ST_SAMPLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|Selector2~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|state.ST_SAMPLE~q\);

-- Location: LCCOMB_X19_Y8_N2
\hcsr04_inst|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Selector4~0_combout\ = (!\hcsr04_inst|new_io_reg~q\ & (\hcsr04_inst|state.ST_MEASURE~q\ & \hcsr04_inst|old_io_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|new_io_reg~q\,
	datac => \hcsr04_inst|state.ST_MEASURE~q\,
	datad => \hcsr04_inst|old_io_reg~q\,
	combout => \hcsr04_inst|Selector4~0_combout\);

-- Location: LCCOMB_X19_Y8_N26
\hcsr04_inst|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Selector4~1_combout\ = (\hcsr04_inst|state.ST_DONE~q\ & (!\en~q\ & ((\hcsr04_inst|Selector2~0_combout\) # (!\hcsr04_inst|state.ST_MEASURE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|state.ST_DONE~q\,
	datab => \hcsr04_inst|Selector2~0_combout\,
	datac => \hcsr04_inst|state.ST_MEASURE~q\,
	datad => \en~q\,
	combout => \hcsr04_inst|Selector4~1_combout\);

-- Location: LCCOMB_X19_Y8_N6
\hcsr04_inst|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Selector4~2_combout\ = (\hcsr04_inst|Selector4~0_combout\) # ((!\hcsr04_inst|state.ST_SAMPLE~q\ & (\hcsr04_inst|Selector4~1_combout\ & !\hcsr04_inst|Selector1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|state.ST_SAMPLE~q\,
	datab => \hcsr04_inst|Selector4~0_combout\,
	datac => \hcsr04_inst|Selector4~1_combout\,
	datad => \hcsr04_inst|Selector1~2_combout\,
	combout => \hcsr04_inst|Selector4~2_combout\);

-- Location: FF_X19_Y8_N7
\hcsr04_inst|state.ST_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|Selector4~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|state.ST_DONE~q\);

-- Location: LCCOMB_X19_Y8_N10
\hcsr04_inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Selector0~0_combout\ = ((!\hcsr04_inst|state.ST_DONE~q\ & \hcsr04_inst|state.ST_IDLE~q\)) # (!\en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|state.ST_DONE~q\,
	datac => \hcsr04_inst|state.ST_IDLE~q\,
	datad => \en~q\,
	combout => \hcsr04_inst|Selector0~0_combout\);

-- Location: FF_X19_Y8_N11
\hcsr04_inst|state.ST_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|Selector0~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|state.ST_IDLE~q\);

-- Location: LCCOMB_X19_Y8_N8
\hcsr04_inst|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hcsr04_inst|Selector5~0_combout\ = (\hcsr04_inst|state.ST_TRIG~q\ & (((!\hcsr04_inst|Equal1~4_combout\)))) # (!\hcsr04_inst|state.ST_TRIG~q\ & (\hcsr04_inst|state.ST_IDLE~q\ & (\hcsr04_inst|trig_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hcsr04_inst|state.ST_IDLE~q\,
	datab => \hcsr04_inst|state.ST_TRIG~q\,
	datac => \hcsr04_inst|trig_reg~q\,
	datad => \hcsr04_inst|Equal1~4_combout\,
	combout => \hcsr04_inst|Selector5~0_combout\);

-- Location: FF_X19_Y8_N9
\hcsr04_inst|trig_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hcsr04_inst|Selector5~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hcsr04_inst|trig_reg~q\);

-- Location: LCCOMB_X13_Y18_N12
\display_inst|digit_index[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|digit_index[0]~1_combout\ = !\display_inst|digit_index\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|digit_index\(0),
	combout => \display_inst|digit_index[0]~1_combout\);

-- Location: LCCOMB_X12_Y18_N4
\display_inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|Add0~4_combout\ = (\display_inst|count\(2) & (\display_inst|Add0~3\ $ (GND))) # (!\display_inst|count\(2) & (!\display_inst|Add0~3\ & VCC))
-- \display_inst|Add0~5\ = CARRY((\display_inst|count\(2) & !\display_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|count\(2),
	datad => VCC,
	cin => \display_inst|Add0~3\,
	combout => \display_inst|Add0~4_combout\,
	cout => \display_inst|Add0~5\);

-- Location: FF_X12_Y18_N5
\display_inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display_inst|Add0~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|count\(2));

-- Location: LCCOMB_X12_Y18_N6
\display_inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|Add0~6_combout\ = (\display_inst|count\(3) & (!\display_inst|Add0~5\)) # (!\display_inst|count\(3) & ((\display_inst|Add0~5\) # (GND)))
-- \display_inst|Add0~7\ = CARRY((!\display_inst|Add0~5\) # (!\display_inst|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|count\(3),
	datad => VCC,
	cin => \display_inst|Add0~5\,
	combout => \display_inst|Add0~6_combout\,
	cout => \display_inst|Add0~7\);

-- Location: FF_X12_Y18_N7
\display_inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display_inst|Add0~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|count\(3));

-- Location: LCCOMB_X12_Y18_N8
\display_inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|Add0~8_combout\ = (\display_inst|count\(4) & (\display_inst|Add0~7\ $ (GND))) # (!\display_inst|count\(4) & (!\display_inst|Add0~7\ & VCC))
-- \display_inst|Add0~9\ = CARRY((\display_inst|count\(4) & !\display_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|count\(4),
	datad => VCC,
	cin => \display_inst|Add0~7\,
	combout => \display_inst|Add0~8_combout\,
	cout => \display_inst|Add0~9\);

-- Location: LCCOMB_X13_Y18_N18
\display_inst|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|count~4_combout\ = (!\display_inst|Equal0~4_combout\ & \display_inst|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|Equal0~4_combout\,
	datad => \display_inst|Add0~8_combout\,
	combout => \display_inst|count~4_combout\);

-- Location: FF_X13_Y18_N19
\display_inst|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display_inst|count~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|count\(4));

-- Location: LCCOMB_X12_Y18_N10
\display_inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|Add0~10_combout\ = (\display_inst|count\(5) & (!\display_inst|Add0~9\)) # (!\display_inst|count\(5) & ((\display_inst|Add0~9\) # (GND)))
-- \display_inst|Add0~11\ = CARRY((!\display_inst|Add0~9\) # (!\display_inst|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|count\(5),
	datad => VCC,
	cin => \display_inst|Add0~9\,
	combout => \display_inst|Add0~10_combout\,
	cout => \display_inst|Add0~11\);

-- Location: FF_X12_Y18_N11
\display_inst|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display_inst|Add0~10_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|count\(5));

-- Location: LCCOMB_X12_Y18_N12
\display_inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|Add0~12_combout\ = (\display_inst|count\(6) & (\display_inst|Add0~11\ $ (GND))) # (!\display_inst|count\(6) & (!\display_inst|Add0~11\ & VCC))
-- \display_inst|Add0~13\ = CARRY((\display_inst|count\(6) & !\display_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|count\(6),
	datad => VCC,
	cin => \display_inst|Add0~11\,
	combout => \display_inst|Add0~12_combout\,
	cout => \display_inst|Add0~13\);

-- Location: FF_X12_Y18_N13
\display_inst|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display_inst|Add0~12_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|count\(6));

-- Location: LCCOMB_X12_Y18_N14
\display_inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|Add0~14_combout\ = (\display_inst|count\(7) & (!\display_inst|Add0~13\)) # (!\display_inst|count\(7) & ((\display_inst|Add0~13\) # (GND)))
-- \display_inst|Add0~15\ = CARRY((!\display_inst|Add0~13\) # (!\display_inst|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|count\(7),
	datad => VCC,
	cin => \display_inst|Add0~13\,
	combout => \display_inst|Add0~14_combout\,
	cout => \display_inst|Add0~15\);

-- Location: FF_X12_Y18_N15
\display_inst|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display_inst|Add0~14_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|count\(7));

-- Location: LCCOMB_X12_Y18_N16
\display_inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|Add0~16_combout\ = (\display_inst|count\(8) & (\display_inst|Add0~15\ $ (GND))) # (!\display_inst|count\(8) & (!\display_inst|Add0~15\ & VCC))
-- \display_inst|Add0~17\ = CARRY((\display_inst|count\(8) & !\display_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|count\(8),
	datad => VCC,
	cin => \display_inst|Add0~15\,
	combout => \display_inst|Add0~16_combout\,
	cout => \display_inst|Add0~17\);

-- Location: LCCOMB_X13_Y18_N28
\display_inst|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|count~3_combout\ = (\display_inst|Add0~16_combout\ & !\display_inst|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|Add0~16_combout\,
	datad => \display_inst|Equal0~4_combout\,
	combout => \display_inst|count~3_combout\);

-- Location: FF_X13_Y18_N29
\display_inst|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display_inst|count~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|count\(8));

-- Location: LCCOMB_X12_Y18_N18
\display_inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|Add0~18_combout\ = (\display_inst|count\(9) & (!\display_inst|Add0~17\)) # (!\display_inst|count\(9) & ((\display_inst|Add0~17\) # (GND)))
-- \display_inst|Add0~19\ = CARRY((!\display_inst|Add0~17\) # (!\display_inst|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|count\(9),
	datad => VCC,
	cin => \display_inst|Add0~17\,
	combout => \display_inst|Add0~18_combout\,
	cout => \display_inst|Add0~19\);

-- Location: LCCOMB_X13_Y18_N30
\display_inst|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|count~2_combout\ = (!\display_inst|Equal0~4_combout\ & \display_inst|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|Equal0~4_combout\,
	datad => \display_inst|Add0~18_combout\,
	combout => \display_inst|count~2_combout\);

-- Location: FF_X13_Y18_N31
\display_inst|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display_inst|count~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|count\(9));

-- Location: LCCOMB_X12_Y18_N20
\display_inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|Add0~20_combout\ = (\display_inst|count\(10) & (\display_inst|Add0~19\ $ (GND))) # (!\display_inst|count\(10) & (!\display_inst|Add0~19\ & VCC))
-- \display_inst|Add0~21\ = CARRY((\display_inst|count\(10) & !\display_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|count\(10),
	datad => VCC,
	cin => \display_inst|Add0~19\,
	combout => \display_inst|Add0~20_combout\,
	cout => \display_inst|Add0~21\);

-- Location: LCCOMB_X13_Y18_N6
\display_inst|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|count~1_combout\ = (!\display_inst|Equal0~4_combout\ & \display_inst|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|Equal0~4_combout\,
	datad => \display_inst|Add0~20_combout\,
	combout => \display_inst|count~1_combout\);

-- Location: FF_X13_Y18_N7
\display_inst|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display_inst|count~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|count\(10));

-- Location: LCCOMB_X12_Y18_N22
\display_inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|Add0~22_combout\ = (\display_inst|count\(11) & (!\display_inst|Add0~21\)) # (!\display_inst|count\(11) & ((\display_inst|Add0~21\) # (GND)))
-- \display_inst|Add0~23\ = CARRY((!\display_inst|Add0~21\) # (!\display_inst|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|count\(11),
	datad => VCC,
	cin => \display_inst|Add0~21\,
	combout => \display_inst|Add0~22_combout\,
	cout => \display_inst|Add0~23\);

-- Location: FF_X12_Y18_N23
\display_inst|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display_inst|Add0~22_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|count\(11));

-- Location: LCCOMB_X12_Y18_N24
\display_inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|Add0~24_combout\ = (\display_inst|count\(12) & (\display_inst|Add0~23\ $ (GND))) # (!\display_inst|count\(12) & (!\display_inst|Add0~23\ & VCC))
-- \display_inst|Add0~25\ = CARRY((\display_inst|count\(12) & !\display_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|count\(12),
	datad => VCC,
	cin => \display_inst|Add0~23\,
	combout => \display_inst|Add0~24_combout\,
	cout => \display_inst|Add0~25\);

-- Location: FF_X12_Y18_N25
\display_inst|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display_inst|Add0~24_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|count\(12));

-- Location: LCCOMB_X12_Y18_N26
\display_inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|Add0~26_combout\ = (\display_inst|count\(13) & (!\display_inst|Add0~25\)) # (!\display_inst|count\(13) & ((\display_inst|Add0~25\) # (GND)))
-- \display_inst|Add0~27\ = CARRY((!\display_inst|Add0~25\) # (!\display_inst|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|count\(13),
	datad => VCC,
	cin => \display_inst|Add0~25\,
	combout => \display_inst|Add0~26_combout\,
	cout => \display_inst|Add0~27\);

-- Location: LCCOMB_X13_Y18_N4
\display_inst|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|count~0_combout\ = (\display_inst|Add0~26_combout\ & !\display_inst|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|Add0~26_combout\,
	datad => \display_inst|Equal0~4_combout\,
	combout => \display_inst|count~0_combout\);

-- Location: FF_X13_Y18_N5
\display_inst|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display_inst|count~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|count\(13));

-- Location: LCCOMB_X13_Y18_N10
\display_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|Equal0~1_combout\ = (\display_inst|count\(10) & (!\display_inst|count\(12) & (\display_inst|count\(13) & !\display_inst|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|count\(10),
	datab => \display_inst|count\(12),
	datac => \display_inst|count\(13),
	datad => \display_inst|count\(11),
	combout => \display_inst|Equal0~1_combout\);

-- Location: LCCOMB_X12_Y18_N28
\display_inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|Add0~28_combout\ = (\display_inst|count\(14) & (\display_inst|Add0~27\ $ (GND))) # (!\display_inst|count\(14) & (!\display_inst|Add0~27\ & VCC))
-- \display_inst|Add0~29\ = CARRY((\display_inst|count\(14) & !\display_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|count\(14),
	datad => VCC,
	cin => \display_inst|Add0~27\,
	combout => \display_inst|Add0~28_combout\,
	cout => \display_inst|Add0~29\);

-- Location: FF_X12_Y18_N29
\display_inst|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display_inst|Add0~28_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|count\(14));

-- Location: LCCOMB_X12_Y18_N30
\display_inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|Add0~30_combout\ = \display_inst|count\(15) $ (\display_inst|Add0~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|count\(15),
	cin => \display_inst|Add0~29\,
	combout => \display_inst|Add0~30_combout\);

-- Location: FF_X12_Y18_N31
\display_inst|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display_inst|Add0~30_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|count\(15));

-- Location: LCCOMB_X13_Y18_N20
\display_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|Equal0~0_combout\ = (\display_inst|count\(1) & (!\display_inst|count\(15) & (\display_inst|count\(0) & !\display_inst|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|count\(1),
	datab => \display_inst|count\(15),
	datac => \display_inst|count\(0),
	datad => \display_inst|count\(14),
	combout => \display_inst|Equal0~0_combout\);

-- Location: LCCOMB_X13_Y18_N8
\display_inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|Equal0~2_combout\ = (!\display_inst|count\(6) & (\display_inst|count\(8) & (\display_inst|count\(9) & !\display_inst|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|count\(6),
	datab => \display_inst|count\(8),
	datac => \display_inst|count\(9),
	datad => \display_inst|count\(7),
	combout => \display_inst|Equal0~2_combout\);

-- Location: LCCOMB_X13_Y18_N16
\display_inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|Equal0~3_combout\ = (!\display_inst|count\(5) & (\display_inst|count\(2) & (\display_inst|count\(3) & !\display_inst|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|count\(5),
	datab => \display_inst|count\(2),
	datac => \display_inst|count\(3),
	datad => \display_inst|count\(4),
	combout => \display_inst|Equal0~3_combout\);

-- Location: LCCOMB_X13_Y18_N24
\display_inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|Equal0~4_combout\ = (\display_inst|Equal0~1_combout\ & (\display_inst|Equal0~0_combout\ & (\display_inst|Equal0~2_combout\ & \display_inst|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|Equal0~1_combout\,
	datab => \display_inst|Equal0~0_combout\,
	datac => \display_inst|Equal0~2_combout\,
	datad => \display_inst|Equal0~3_combout\,
	combout => \display_inst|Equal0~4_combout\);

-- Location: FF_X13_Y18_N13
\display_inst|digit_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display_inst|digit_index[0]~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \display_inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|digit_index\(0));

-- Location: LCCOMB_X13_Y18_N26
\display_inst|digit_index[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|digit_index[1]~0_combout\ = \display_inst|digit_index\(1) $ (((\display_inst|digit_index\(0) & \display_inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|digit_index\(0),
	datac => \display_inst|digit_index\(1),
	datad => \display_inst|Equal0~4_combout\,
	combout => \display_inst|digit_index[1]~0_combout\);

-- Location: FF_X13_Y18_N27
\display_inst|digit_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display_inst|digit_index[1]~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|digit_index\(1));

-- Location: LCCOMB_X13_Y18_N2
\display_inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|Mux0~0_combout\ = (\display_inst|digit_index\(0) & !\display_inst|digit_index\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|digit_index\(0),
	datad => \display_inst|digit_index\(1),
	combout => \display_inst|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y14_N22
\dec_to_bcd_inst|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector18~0_combout\ = (\dec_to_bcd_inst|tenths_reg\(0) & ((\dec_to_bcd_inst|state.ST_DONE~q\) # ((\dec_to_bcd_inst|state.ST_CALC~q\ & !\dec_to_bcd_inst|num~6_combout\)))) # (!\dec_to_bcd_inst|tenths_reg\(0) & 
-- (\dec_to_bcd_inst|state.ST_CALC~q\ & ((\dec_to_bcd_inst|num~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|state.ST_CALC~q\,
	datab => \dec_to_bcd_inst|state.ST_DONE~q\,
	datac => \dec_to_bcd_inst|tenths_reg\(0),
	datad => \dec_to_bcd_inst|num~6_combout\,
	combout => \dec_to_bcd_inst|Selector18~0_combout\);

-- Location: FF_X23_Y14_N23
\dec_to_bcd_inst|tenths_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|Selector18~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|tenths_reg\(0));

-- Location: LCCOMB_X23_Y14_N28
\dec_to_bcd_inst|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector17~0_combout\ = (\dec_to_bcd_inst|state.ST_CALC~q\ & (\dec_to_bcd_inst|tenths_reg\(1) $ (((\dec_to_bcd_inst|tenths_reg\(0) & \dec_to_bcd_inst|num~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|state.ST_CALC~q\,
	datab => \dec_to_bcd_inst|tenths_reg\(1),
	datac => \dec_to_bcd_inst|tenths_reg\(0),
	datad => \dec_to_bcd_inst|num~6_combout\,
	combout => \dec_to_bcd_inst|Selector17~0_combout\);

-- Location: LCCOMB_X23_Y14_N30
\dec_to_bcd_inst|Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector17~1_combout\ = (\dec_to_bcd_inst|Selector17~0_combout\) # ((\dec_to_bcd_inst|state.ST_DONE~q\ & \dec_to_bcd_inst|tenths_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|state.ST_DONE~q\,
	datac => \dec_to_bcd_inst|tenths_reg\(1),
	datad => \dec_to_bcd_inst|Selector17~0_combout\,
	combout => \dec_to_bcd_inst|Selector17~1_combout\);

-- Location: FF_X23_Y14_N31
\dec_to_bcd_inst|tenths_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|Selector17~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|tenths_reg\(1));

-- Location: LCCOMB_X23_Y14_N24
\dec_to_bcd_inst|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector16~0_combout\ = (\dec_to_bcd_inst|tenths_reg\(1) & (\dec_to_bcd_inst|tenths_reg\(0) & \dec_to_bcd_inst|num~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|tenths_reg\(1),
	datac => \dec_to_bcd_inst|tenths_reg\(0),
	datad => \dec_to_bcd_inst|num~6_combout\,
	combout => \dec_to_bcd_inst|Selector16~0_combout\);

-- Location: LCCOMB_X23_Y14_N8
\dec_to_bcd_inst|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector16~1_combout\ = (\dec_to_bcd_inst|tenths_reg\(2) & ((\dec_to_bcd_inst|state.ST_DONE~q\) # ((\dec_to_bcd_inst|state.ST_CALC~q\ & !\dec_to_bcd_inst|Selector16~0_combout\)))) # (!\dec_to_bcd_inst|tenths_reg\(2) & 
-- (\dec_to_bcd_inst|state.ST_CALC~q\ & ((\dec_to_bcd_inst|Selector16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|state.ST_CALC~q\,
	datab => \dec_to_bcd_inst|state.ST_DONE~q\,
	datac => \dec_to_bcd_inst|tenths_reg\(2),
	datad => \dec_to_bcd_inst|Selector16~0_combout\,
	combout => \dec_to_bcd_inst|Selector16~1_combout\);

-- Location: FF_X23_Y14_N9
\dec_to_bcd_inst|tenths_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|Selector16~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|tenths_reg\(2));

-- Location: LCCOMB_X23_Y14_N20
\dec_to_bcd_inst|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector15~0_combout\ = (\dec_to_bcd_inst|tenths_reg\(0) & (\dec_to_bcd_inst|tenths_reg\(1) & (\dec_to_bcd_inst|tenths_reg\(2) & \dec_to_bcd_inst|num~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|tenths_reg\(0),
	datab => \dec_to_bcd_inst|tenths_reg\(1),
	datac => \dec_to_bcd_inst|tenths_reg\(2),
	datad => \dec_to_bcd_inst|num~6_combout\,
	combout => \dec_to_bcd_inst|Selector15~0_combout\);

-- Location: LCCOMB_X23_Y14_N26
\dec_to_bcd_inst|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector15~1_combout\ = (\dec_to_bcd_inst|tenths_reg\(3) & ((\dec_to_bcd_inst|state.ST_DONE~q\) # ((\dec_to_bcd_inst|state.ST_CALC~q\ & !\dec_to_bcd_inst|Selector15~0_combout\)))) # (!\dec_to_bcd_inst|tenths_reg\(3) & 
-- (\dec_to_bcd_inst|state.ST_CALC~q\ & ((\dec_to_bcd_inst|Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|state.ST_CALC~q\,
	datab => \dec_to_bcd_inst|state.ST_DONE~q\,
	datac => \dec_to_bcd_inst|tenths_reg\(3),
	datad => \dec_to_bcd_inst|Selector15~0_combout\,
	combout => \dec_to_bcd_inst|Selector15~1_combout\);

-- Location: FF_X23_Y14_N27
\dec_to_bcd_inst|tenths_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|Selector15~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|tenths_reg\(3));

-- Location: FF_X23_Y14_N5
\dec_to_bcd_inst|bcd_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dec_to_bcd_inst|tenths_reg\(3),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dec_to_bcd_inst|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|bcd_reg\(3));

-- Location: LCCOMB_X19_Y14_N2
\dec_to_bcd_inst|Selector13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector13~2_combout\ = (\dec_to_bcd_inst|state.ST_CALC~q\ & ((\dec_to_bcd_inst|combinational_logic~0_combout\) # (!\dec_to_bcd_inst|unit~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|state.ST_CALC~q\,
	datac => \dec_to_bcd_inst|unit~0_combout\,
	datad => \dec_to_bcd_inst|combinational_logic~0_combout\,
	combout => \dec_to_bcd_inst|Selector13~2_combout\);

-- Location: LCCOMB_X19_Y14_N24
\dec_to_bcd_inst|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector14~0_combout\ = (\dec_to_bcd_inst|state.ST_CALC~q\ & (\dec_to_bcd_inst|unit_reg\(0) $ (((\dec_to_bcd_inst|unit~0_combout\ & !\dec_to_bcd_inst|combinational_logic~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|unit_reg\(0),
	datab => \dec_to_bcd_inst|state.ST_CALC~q\,
	datac => \dec_to_bcd_inst|unit~0_combout\,
	datad => \dec_to_bcd_inst|combinational_logic~0_combout\,
	combout => \dec_to_bcd_inst|Selector14~0_combout\);

-- Location: LCCOMB_X19_Y14_N12
\dec_to_bcd_inst|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector14~1_combout\ = (\dec_to_bcd_inst|Selector14~0_combout\) # ((\dec_to_bcd_inst|state.ST_DONE~q\ & \dec_to_bcd_inst|unit_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|state.ST_DONE~q\,
	datac => \dec_to_bcd_inst|unit_reg\(0),
	datad => \dec_to_bcd_inst|Selector14~0_combout\,
	combout => \dec_to_bcd_inst|Selector14~1_combout\);

-- Location: FF_X19_Y14_N13
\dec_to_bcd_inst|unit_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|Selector14~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|unit_reg\(0));

-- Location: LCCOMB_X19_Y14_N18
\dec_to_bcd_inst|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector13~0_combout\ = (\dec_to_bcd_inst|state.ST_CALC~q\ & (\dec_to_bcd_inst|unit~0_combout\ & !\dec_to_bcd_inst|combinational_logic~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_bcd_inst|state.ST_CALC~q\,
	datac => \dec_to_bcd_inst|unit~0_combout\,
	datad => \dec_to_bcd_inst|combinational_logic~0_combout\,
	combout => \dec_to_bcd_inst|Selector13~0_combout\);

-- Location: LCCOMB_X19_Y14_N28
\dec_to_bcd_inst|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector13~1_combout\ = (\dec_to_bcd_inst|Selector13~0_combout\ & (\dec_to_bcd_inst|unit_reg\(1) $ (\dec_to_bcd_inst|unit_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|unit_reg\(1),
	datac => \dec_to_bcd_inst|unit_reg\(0),
	datad => \dec_to_bcd_inst|Selector13~0_combout\,
	combout => \dec_to_bcd_inst|Selector13~1_combout\);

-- Location: LCCOMB_X19_Y14_N6
\dec_to_bcd_inst|Selector13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector13~3_combout\ = (\dec_to_bcd_inst|Selector13~1_combout\) # ((\dec_to_bcd_inst|unit_reg\(1) & ((\dec_to_bcd_inst|state.ST_DONE~q\) # (\dec_to_bcd_inst|Selector13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|state.ST_DONE~q\,
	datab => \dec_to_bcd_inst|Selector13~2_combout\,
	datac => \dec_to_bcd_inst|unit_reg\(1),
	datad => \dec_to_bcd_inst|Selector13~1_combout\,
	combout => \dec_to_bcd_inst|Selector13~3_combout\);

-- Location: FF_X19_Y14_N7
\dec_to_bcd_inst|unit_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|Selector13~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|unit_reg\(1));

-- Location: LCCOMB_X19_Y14_N20
\dec_to_bcd_inst|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector12~0_combout\ = (\dec_to_bcd_inst|Selector13~0_combout\ & (\dec_to_bcd_inst|unit_reg\(2) $ (((\dec_to_bcd_inst|unit_reg\(1) & \dec_to_bcd_inst|unit_reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|unit_reg\(1),
	datab => \dec_to_bcd_inst|unit_reg\(0),
	datac => \dec_to_bcd_inst|unit_reg\(2),
	datad => \dec_to_bcd_inst|Selector13~0_combout\,
	combout => \dec_to_bcd_inst|Selector12~0_combout\);

-- Location: LCCOMB_X19_Y14_N4
\dec_to_bcd_inst|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector12~1_combout\ = (\dec_to_bcd_inst|Selector12~0_combout\) # ((\dec_to_bcd_inst|unit_reg\(2) & ((\dec_to_bcd_inst|state.ST_DONE~q\) # (\dec_to_bcd_inst|Selector13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|state.ST_DONE~q\,
	datab => \dec_to_bcd_inst|Selector13~2_combout\,
	datac => \dec_to_bcd_inst|unit_reg\(2),
	datad => \dec_to_bcd_inst|Selector12~0_combout\,
	combout => \dec_to_bcd_inst|Selector12~1_combout\);

-- Location: FF_X19_Y14_N5
\dec_to_bcd_inst|unit_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|Selector12~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|unit_reg\(2));

-- Location: LCCOMB_X19_Y14_N22
\dec_to_bcd_inst|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add4~0_combout\ = \dec_to_bcd_inst|unit_reg\(3) $ (((\dec_to_bcd_inst|unit_reg\(1) & (\dec_to_bcd_inst|unit_reg\(0) & \dec_to_bcd_inst|unit_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|unit_reg\(1),
	datab => \dec_to_bcd_inst|unit_reg\(0),
	datac => \dec_to_bcd_inst|unit_reg\(2),
	datad => \dec_to_bcd_inst|unit_reg\(3),
	combout => \dec_to_bcd_inst|Add4~0_combout\);

-- Location: LCCOMB_X19_Y14_N16
\dec_to_bcd_inst|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector11~0_combout\ = (\dec_to_bcd_inst|Add4~0_combout\ & (\dec_to_bcd_inst|state.ST_CALC~q\ & (\dec_to_bcd_inst|unit~0_combout\ & !\dec_to_bcd_inst|combinational_logic~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Add4~0_combout\,
	datab => \dec_to_bcd_inst|state.ST_CALC~q\,
	datac => \dec_to_bcd_inst|unit~0_combout\,
	datad => \dec_to_bcd_inst|combinational_logic~0_combout\,
	combout => \dec_to_bcd_inst|Selector11~0_combout\);

-- Location: LCCOMB_X19_Y14_N10
\dec_to_bcd_inst|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector11~1_combout\ = (\dec_to_bcd_inst|Selector11~0_combout\) # ((\dec_to_bcd_inst|unit_reg\(3) & ((\dec_to_bcd_inst|state.ST_DONE~q\) # (\dec_to_bcd_inst|Selector13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|state.ST_DONE~q\,
	datab => \dec_to_bcd_inst|Selector13~2_combout\,
	datac => \dec_to_bcd_inst|unit_reg\(3),
	datad => \dec_to_bcd_inst|Selector11~0_combout\,
	combout => \dec_to_bcd_inst|Selector11~1_combout\);

-- Location: FF_X19_Y14_N11
\dec_to_bcd_inst|unit_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|Selector11~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|unit_reg\(3));

-- Location: LCCOMB_X22_Y14_N12
\dec_to_bcd_inst|bcd_reg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|bcd_reg[7]~feeder_combout\ = \dec_to_bcd_inst|unit_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dec_to_bcd_inst|unit_reg\(3),
	combout => \dec_to_bcd_inst|bcd_reg[7]~feeder_combout\);

-- Location: FF_X22_Y14_N13
\dec_to_bcd_inst|bcd_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|bcd_reg[7]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dec_to_bcd_inst|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|bcd_reg\(7));

-- Location: LCCOMB_X23_Y14_N4
\display_inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|Mux1~0_combout\ = (\display_inst|digit_index\(0) & ((\display_inst|digit_index\(1)) # ((\dec_to_bcd_inst|bcd_reg\(7))))) # (!\display_inst|digit_index\(0) & (!\display_inst|digit_index\(1) & (\dec_to_bcd_inst|bcd_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|digit_index\(0),
	datab => \display_inst|digit_index\(1),
	datac => \dec_to_bcd_inst|bcd_reg\(3),
	datad => \dec_to_bcd_inst|bcd_reg\(7),
	combout => \display_inst|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y13_N18
\dec_to_bcd_inst|tens~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|tens~1_combout\ = (\dec_to_bcd_inst|tens~0_combout\ & (!\dec_to_bcd_inst|num_reg\(23) & (\dec_to_bcd_inst|Selector2~0_combout\ & !\dec_to_bcd_inst|LessThan2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|tens~0_combout\,
	datab => \dec_to_bcd_inst|num_reg\(23),
	datac => \dec_to_bcd_inst|Selector2~0_combout\,
	datad => \dec_to_bcd_inst|LessThan2~4_combout\,
	combout => \dec_to_bcd_inst|tens~1_combout\);

-- Location: LCCOMB_X22_Y14_N22
\dec_to_bcd_inst|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector8~0_combout\ = (\dec_to_bcd_inst|state.ST_DONE~q\) # ((\dec_to_bcd_inst|state.ST_CALC~q\ & !\dec_to_bcd_inst|tens~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|state.ST_CALC~q\,
	datab => \dec_to_bcd_inst|state.ST_DONE~q\,
	datad => \dec_to_bcd_inst|tens~1_combout\,
	combout => \dec_to_bcd_inst|Selector8~0_combout\);

-- Location: LCCOMB_X22_Y14_N8
\dec_to_bcd_inst|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector10~0_combout\ = (\dec_to_bcd_inst|tens_reg\(0) & ((\dec_to_bcd_inst|state.ST_DONE~q\) # ((\dec_to_bcd_inst|state.ST_CALC~q\ & !\dec_to_bcd_inst|tens~1_combout\)))) # (!\dec_to_bcd_inst|tens_reg\(0) & 
-- (\dec_to_bcd_inst|state.ST_CALC~q\ & ((\dec_to_bcd_inst|tens~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|state.ST_CALC~q\,
	datab => \dec_to_bcd_inst|state.ST_DONE~q\,
	datac => \dec_to_bcd_inst|tens_reg\(0),
	datad => \dec_to_bcd_inst|tens~1_combout\,
	combout => \dec_to_bcd_inst|Selector10~0_combout\);

-- Location: FF_X22_Y14_N9
\dec_to_bcd_inst|tens_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|Selector10~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|tens_reg\(0));

-- Location: LCCOMB_X22_Y14_N16
\dec_to_bcd_inst|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector9~0_combout\ = (\dec_to_bcd_inst|state.ST_CALC~q\ & \dec_to_bcd_inst|tens~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|state.ST_CALC~q\,
	datad => \dec_to_bcd_inst|tens~1_combout\,
	combout => \dec_to_bcd_inst|Selector9~0_combout\);

-- Location: LCCOMB_X22_Y14_N6
\dec_to_bcd_inst|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector9~1_combout\ = (\dec_to_bcd_inst|tens_reg\(1) & ((\dec_to_bcd_inst|Selector8~0_combout\) # ((!\dec_to_bcd_inst|tens_reg\(0) & \dec_to_bcd_inst|Selector9~0_combout\)))) # (!\dec_to_bcd_inst|tens_reg\(1) & 
-- (((\dec_to_bcd_inst|tens_reg\(0) & \dec_to_bcd_inst|Selector9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Selector8~0_combout\,
	datab => \dec_to_bcd_inst|tens_reg\(0),
	datac => \dec_to_bcd_inst|tens_reg\(1),
	datad => \dec_to_bcd_inst|Selector9~0_combout\,
	combout => \dec_to_bcd_inst|Selector9~1_combout\);

-- Location: FF_X22_Y14_N7
\dec_to_bcd_inst|tens_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|Selector9~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|tens_reg\(1));

-- Location: LCCOMB_X22_Y14_N10
\dec_to_bcd_inst|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add2~0_combout\ = \dec_to_bcd_inst|tens_reg\(2) $ (((\dec_to_bcd_inst|tens_reg\(1) & \dec_to_bcd_inst|tens_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|tens_reg\(1),
	datac => \dec_to_bcd_inst|tens_reg\(0),
	datad => \dec_to_bcd_inst|tens_reg\(2),
	combout => \dec_to_bcd_inst|Add2~0_combout\);

-- Location: LCCOMB_X22_Y14_N14
\dec_to_bcd_inst|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector8~1_combout\ = (\dec_to_bcd_inst|Add2~0_combout\ & ((\dec_to_bcd_inst|Selector9~0_combout\) # ((\dec_to_bcd_inst|Selector8~0_combout\ & \dec_to_bcd_inst|tens_reg\(2))))) # (!\dec_to_bcd_inst|Add2~0_combout\ & 
-- (\dec_to_bcd_inst|Selector8~0_combout\ & (\dec_to_bcd_inst|tens_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Add2~0_combout\,
	datab => \dec_to_bcd_inst|Selector8~0_combout\,
	datac => \dec_to_bcd_inst|tens_reg\(2),
	datad => \dec_to_bcd_inst|Selector9~0_combout\,
	combout => \dec_to_bcd_inst|Selector8~1_combout\);

-- Location: FF_X22_Y14_N15
\dec_to_bcd_inst|tens_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|Selector8~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|tens_reg\(2));

-- Location: LCCOMB_X22_Y14_N28
\dec_to_bcd_inst|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add2~1_combout\ = \dec_to_bcd_inst|tens_reg\(3) $ (((\dec_to_bcd_inst|tens_reg\(2) & (\dec_to_bcd_inst|tens_reg\(0) & \dec_to_bcd_inst|tens_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|tens_reg\(2),
	datab => \dec_to_bcd_inst|tens_reg\(0),
	datac => \dec_to_bcd_inst|tens_reg\(3),
	datad => \dec_to_bcd_inst|tens_reg\(1),
	combout => \dec_to_bcd_inst|Add2~1_combout\);

-- Location: LCCOMB_X22_Y14_N2
\dec_to_bcd_inst|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector7~0_combout\ = (\dec_to_bcd_inst|Selector8~0_combout\ & ((\dec_to_bcd_inst|tens_reg\(3)) # ((\dec_to_bcd_inst|Add2~1_combout\ & \dec_to_bcd_inst|Selector9~0_combout\)))) # (!\dec_to_bcd_inst|Selector8~0_combout\ & 
-- (\dec_to_bcd_inst|Add2~1_combout\ & ((\dec_to_bcd_inst|Selector9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Selector8~0_combout\,
	datab => \dec_to_bcd_inst|Add2~1_combout\,
	datac => \dec_to_bcd_inst|tens_reg\(3),
	datad => \dec_to_bcd_inst|Selector9~0_combout\,
	combout => \dec_to_bcd_inst|Selector7~0_combout\);

-- Location: FF_X22_Y14_N3
\dec_to_bcd_inst|tens_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|Selector7~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|tens_reg\(3));

-- Location: FF_X22_Y14_N21
\dec_to_bcd_inst|bcd_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dec_to_bcd_inst|tens_reg\(3),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dec_to_bcd_inst|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|bcd_reg\(11));

-- Location: LCCOMB_X22_Y11_N24
\dec_to_bcd_inst|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector5~0_combout\ = (\dec_to_bcd_inst|state.ST_CALC~q\ & ((!\dec_to_bcd_inst|tens~0_combout\) # (!\dec_to_bcd_inst|Selector2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Selector2~1_combout\,
	datac => \dec_to_bcd_inst|state.ST_CALC~q\,
	datad => \dec_to_bcd_inst|tens~0_combout\,
	combout => \dec_to_bcd_inst|Selector5~0_combout\);

-- Location: LCCOMB_X23_Y12_N28
\dec_to_bcd_inst|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector6~0_combout\ = (\dec_to_bcd_inst|hundreds_reg\(0) & ((\dec_to_bcd_inst|state.ST_DONE~q\) # ((\dec_to_bcd_inst|state.ST_CALC~q\ & \dec_to_bcd_inst|LessThan3~3_combout\)))) # (!\dec_to_bcd_inst|hundreds_reg\(0) & 
-- (((\dec_to_bcd_inst|state.ST_CALC~q\ & !\dec_to_bcd_inst|LessThan3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|state.ST_DONE~q\,
	datab => \dec_to_bcd_inst|state.ST_CALC~q\,
	datac => \dec_to_bcd_inst|hundreds_reg\(0),
	datad => \dec_to_bcd_inst|LessThan3~3_combout\,
	combout => \dec_to_bcd_inst|Selector6~0_combout\);

-- Location: FF_X23_Y12_N29
\dec_to_bcd_inst|hundreds_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|Selector6~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|hundreds_reg\(0));

-- Location: LCCOMB_X22_Y11_N2
\dec_to_bcd_inst|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector4~0_combout\ = (\dec_to_bcd_inst|state.ST_DONE~q\) # ((\dec_to_bcd_inst|Selector2~1_combout\ & (\dec_to_bcd_inst|state.ST_CALC~q\ & \dec_to_bcd_inst|tens~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Selector2~1_combout\,
	datab => \dec_to_bcd_inst|state.ST_CALC~q\,
	datac => \dec_to_bcd_inst|state.ST_DONE~q\,
	datad => \dec_to_bcd_inst|tens~0_combout\,
	combout => \dec_to_bcd_inst|Selector4~0_combout\);

-- Location: LCCOMB_X22_Y11_N10
\dec_to_bcd_inst|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector5~1_combout\ = (\dec_to_bcd_inst|hundreds_reg\(1) & ((\dec_to_bcd_inst|Selector4~0_combout\) # ((\dec_to_bcd_inst|Selector5~0_combout\ & !\dec_to_bcd_inst|hundreds_reg\(0))))) # (!\dec_to_bcd_inst|hundreds_reg\(1) & 
-- (\dec_to_bcd_inst|Selector5~0_combout\ & (\dec_to_bcd_inst|hundreds_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Selector5~0_combout\,
	datab => \dec_to_bcd_inst|hundreds_reg\(0),
	datac => \dec_to_bcd_inst|hundreds_reg\(1),
	datad => \dec_to_bcd_inst|Selector4~0_combout\,
	combout => \dec_to_bcd_inst|Selector5~1_combout\);

-- Location: FF_X22_Y11_N11
\dec_to_bcd_inst|hundreds_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|Selector5~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|hundreds_reg\(1));

-- Location: LCCOMB_X22_Y11_N6
\dec_to_bcd_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add0~0_combout\ = \dec_to_bcd_inst|hundreds_reg\(2) $ (((\dec_to_bcd_inst|hundreds_reg\(1) & \dec_to_bcd_inst|hundreds_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|hundreds_reg\(1),
	datab => \dec_to_bcd_inst|hundreds_reg\(2),
	datac => \dec_to_bcd_inst|hundreds_reg\(0),
	combout => \dec_to_bcd_inst|Add0~0_combout\);

-- Location: LCCOMB_X22_Y11_N16
\dec_to_bcd_inst|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector4~1_combout\ = (\dec_to_bcd_inst|Add0~0_combout\ & ((\dec_to_bcd_inst|Selector5~0_combout\) # ((\dec_to_bcd_inst|hundreds_reg\(2) & \dec_to_bcd_inst|Selector4~0_combout\)))) # (!\dec_to_bcd_inst|Add0~0_combout\ & 
-- (((\dec_to_bcd_inst|hundreds_reg\(2) & \dec_to_bcd_inst|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Add0~0_combout\,
	datab => \dec_to_bcd_inst|Selector5~0_combout\,
	datac => \dec_to_bcd_inst|hundreds_reg\(2),
	datad => \dec_to_bcd_inst|Selector4~0_combout\,
	combout => \dec_to_bcd_inst|Selector4~1_combout\);

-- Location: FF_X22_Y11_N17
\dec_to_bcd_inst|hundreds_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|Selector4~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|hundreds_reg\(2));

-- Location: LCCOMB_X22_Y11_N12
\dec_to_bcd_inst|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Add0~1_combout\ = \dec_to_bcd_inst|hundreds_reg\(3) $ (((\dec_to_bcd_inst|hundreds_reg\(1) & (\dec_to_bcd_inst|hundreds_reg\(0) & \dec_to_bcd_inst|hundreds_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|hundreds_reg\(1),
	datab => \dec_to_bcd_inst|hundreds_reg\(3),
	datac => \dec_to_bcd_inst|hundreds_reg\(0),
	datad => \dec_to_bcd_inst|hundreds_reg\(2),
	combout => \dec_to_bcd_inst|Add0~1_combout\);

-- Location: LCCOMB_X22_Y11_N14
\dec_to_bcd_inst|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|Selector3~0_combout\ = (\dec_to_bcd_inst|Add0~1_combout\ & ((\dec_to_bcd_inst|Selector5~0_combout\) # ((\dec_to_bcd_inst|hundreds_reg\(3) & \dec_to_bcd_inst|Selector4~0_combout\)))) # (!\dec_to_bcd_inst|Add0~1_combout\ & 
-- (((\dec_to_bcd_inst|hundreds_reg\(3) & \dec_to_bcd_inst|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|Add0~1_combout\,
	datab => \dec_to_bcd_inst|Selector5~0_combout\,
	datac => \dec_to_bcd_inst|hundreds_reg\(3),
	datad => \dec_to_bcd_inst|Selector4~0_combout\,
	combout => \dec_to_bcd_inst|Selector3~0_combout\);

-- Location: FF_X22_Y11_N15
\dec_to_bcd_inst|hundreds_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|Selector3~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|hundreds_reg\(3));

-- Location: FF_X22_Y14_N25
\dec_to_bcd_inst|bcd_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dec_to_bcd_inst|hundreds_reg\(3),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dec_to_bcd_inst|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|bcd_reg\(15));

-- Location: LCCOMB_X22_Y14_N24
\display_inst|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|Mux1~1_combout\ = (\display_inst|Mux1~0_combout\ & (((\dec_to_bcd_inst|bcd_reg\(15)) # (!\display_inst|digit_index\(1))))) # (!\display_inst|Mux1~0_combout\ & (\dec_to_bcd_inst|bcd_reg\(11) & ((\display_inst|digit_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|Mux1~0_combout\,
	datab => \dec_to_bcd_inst|bcd_reg\(11),
	datac => \dec_to_bcd_inst|bcd_reg\(15),
	datad => \display_inst|digit_index\(1),
	combout => \display_inst|Mux1~1_combout\);

-- Location: LCCOMB_X23_Y14_N18
\dec_to_bcd_inst|bcd_reg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|bcd_reg[6]~feeder_combout\ = \dec_to_bcd_inst|unit_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dec_to_bcd_inst|unit_reg\(2),
	combout => \dec_to_bcd_inst|bcd_reg[6]~feeder_combout\);

-- Location: FF_X23_Y14_N19
\dec_to_bcd_inst|bcd_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|bcd_reg[6]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dec_to_bcd_inst|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|bcd_reg\(6));

-- Location: FF_X23_Y14_N17
\dec_to_bcd_inst|bcd_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dec_to_bcd_inst|hundreds_reg\(2),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dec_to_bcd_inst|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|bcd_reg\(14));

-- Location: FF_X23_Y14_N13
\dec_to_bcd_inst|bcd_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dec_to_bcd_inst|tenths_reg\(2),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dec_to_bcd_inst|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|bcd_reg\(2));

-- Location: FF_X22_Y14_N23
\dec_to_bcd_inst|bcd_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dec_to_bcd_inst|tens_reg\(2),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dec_to_bcd_inst|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|bcd_reg\(10));

-- Location: LCCOMB_X23_Y14_N12
\display_inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|Mux2~0_combout\ = (\display_inst|digit_index\(0) & (\display_inst|digit_index\(1))) # (!\display_inst|digit_index\(0) & ((\display_inst|digit_index\(1) & ((\dec_to_bcd_inst|bcd_reg\(10)))) # (!\display_inst|digit_index\(1) & 
-- (\dec_to_bcd_inst|bcd_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|digit_index\(0),
	datab => \display_inst|digit_index\(1),
	datac => \dec_to_bcd_inst|bcd_reg\(2),
	datad => \dec_to_bcd_inst|bcd_reg\(10),
	combout => \display_inst|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y14_N16
\display_inst|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|Mux2~1_combout\ = (\display_inst|digit_index\(0) & ((\display_inst|Mux2~0_combout\ & ((\dec_to_bcd_inst|bcd_reg\(14)))) # (!\display_inst|Mux2~0_combout\ & (\dec_to_bcd_inst|bcd_reg\(6))))) # (!\display_inst|digit_index\(0) & 
-- (((\display_inst|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|digit_index\(0),
	datab => \dec_to_bcd_inst|bcd_reg\(6),
	datac => \dec_to_bcd_inst|bcd_reg\(14),
	datad => \display_inst|Mux2~0_combout\,
	combout => \display_inst|Mux2~1_combout\);

-- Location: FF_X22_Y14_N17
\dec_to_bcd_inst|bcd_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dec_to_bcd_inst|unit_reg\(1),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dec_to_bcd_inst|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|bcd_reg\(5));

-- Location: FF_X22_Y14_N31
\dec_to_bcd_inst|bcd_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dec_to_bcd_inst|tenths_reg\(1),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dec_to_bcd_inst|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|bcd_reg\(1));

-- Location: LCCOMB_X22_Y14_N30
\display_inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|Mux3~0_combout\ = (\display_inst|digit_index\(0) & ((\dec_to_bcd_inst|bcd_reg\(5)) # ((\display_inst|digit_index\(1))))) # (!\display_inst|digit_index\(0) & (((\dec_to_bcd_inst|bcd_reg\(1) & !\display_inst|digit_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|bcd_reg\(5),
	datab => \display_inst|digit_index\(0),
	datac => \dec_to_bcd_inst|bcd_reg\(1),
	datad => \display_inst|digit_index\(1),
	combout => \display_inst|Mux3~0_combout\);

-- Location: LCCOMB_X22_Y14_N18
\dec_to_bcd_inst|bcd_reg[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|bcd_reg[9]~feeder_combout\ = \dec_to_bcd_inst|tens_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dec_to_bcd_inst|tens_reg\(1),
	combout => \dec_to_bcd_inst|bcd_reg[9]~feeder_combout\);

-- Location: FF_X22_Y14_N19
\dec_to_bcd_inst|bcd_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|bcd_reg[9]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dec_to_bcd_inst|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|bcd_reg\(9));

-- Location: FF_X22_Y14_N27
\dec_to_bcd_inst|bcd_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dec_to_bcd_inst|hundreds_reg\(1),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dec_to_bcd_inst|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|bcd_reg\(13));

-- Location: LCCOMB_X22_Y14_N26
\display_inst|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|Mux3~1_combout\ = (\display_inst|Mux3~0_combout\ & (((\dec_to_bcd_inst|bcd_reg\(13)) # (!\display_inst|digit_index\(1))))) # (!\display_inst|Mux3~0_combout\ & (\dec_to_bcd_inst|bcd_reg\(9) & ((\display_inst|digit_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|Mux3~0_combout\,
	datab => \dec_to_bcd_inst|bcd_reg\(9),
	datac => \dec_to_bcd_inst|bcd_reg\(13),
	datad => \display_inst|digit_index\(1),
	combout => \display_inst|Mux3~1_combout\);

-- Location: FF_X22_Y14_N11
\dec_to_bcd_inst|bcd_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dec_to_bcd_inst|tens_reg\(0),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dec_to_bcd_inst|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|bcd_reg\(8));

-- Location: FF_X23_Y14_N15
\dec_to_bcd_inst|bcd_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dec_to_bcd_inst|hundreds_reg\(0),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dec_to_bcd_inst|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|bcd_reg\(12));

-- Location: FF_X23_Y14_N7
\dec_to_bcd_inst|bcd_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dec_to_bcd_inst|tenths_reg\(0),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dec_to_bcd_inst|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|bcd_reg\(0));

-- Location: LCCOMB_X23_Y14_N2
\dec_to_bcd_inst|bcd_reg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_bcd_inst|bcd_reg[4]~feeder_combout\ = \dec_to_bcd_inst|unit_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dec_to_bcd_inst|unit_reg\(0),
	combout => \dec_to_bcd_inst|bcd_reg[4]~feeder_combout\);

-- Location: FF_X23_Y14_N3
\dec_to_bcd_inst|bcd_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_to_bcd_inst|bcd_reg[4]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dec_to_bcd_inst|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec_to_bcd_inst|bcd_reg\(4));

-- Location: LCCOMB_X23_Y14_N6
\display_inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|Mux4~0_combout\ = (\display_inst|digit_index\(0) & ((\display_inst|digit_index\(1)) # ((\dec_to_bcd_inst|bcd_reg\(4))))) # (!\display_inst|digit_index\(0) & (!\display_inst|digit_index\(1) & (\dec_to_bcd_inst|bcd_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|digit_index\(0),
	datab => \display_inst|digit_index\(1),
	datac => \dec_to_bcd_inst|bcd_reg\(0),
	datad => \dec_to_bcd_inst|bcd_reg\(4),
	combout => \display_inst|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y14_N14
\display_inst|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|Mux4~1_combout\ = (\display_inst|digit_index\(1) & ((\display_inst|Mux4~0_combout\ & ((\dec_to_bcd_inst|bcd_reg\(12)))) # (!\display_inst|Mux4~0_combout\ & (\dec_to_bcd_inst|bcd_reg\(8))))) # (!\display_inst|digit_index\(1) & 
-- (((\display_inst|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_bcd_inst|bcd_reg\(8),
	datab => \display_inst|digit_index\(1),
	datac => \dec_to_bcd_inst|bcd_reg\(12),
	datad => \display_inst|Mux4~0_combout\,
	combout => \display_inst|Mux4~1_combout\);

-- Location: LCCOMB_X19_Y20_N8
\display_inst|rom|rom~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|rom|rom~0_combout\ = (!\display_inst|Mux1~1_combout\ & (!\display_inst|Mux3~1_combout\ & (\display_inst|Mux2~1_combout\ $ (\display_inst|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|Mux1~1_combout\,
	datab => \display_inst|Mux2~1_combout\,
	datac => \display_inst|Mux3~1_combout\,
	datad => \display_inst|Mux4~1_combout\,
	combout => \display_inst|rom|rom~0_combout\);

-- Location: LCCOMB_X19_Y20_N6
\display_inst|rom|rom~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|rom|rom~1_combout\ = (!\display_inst|Mux1~1_combout\ & (\display_inst|Mux2~1_combout\ & (\display_inst|Mux3~1_combout\ $ (\display_inst|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|Mux1~1_combout\,
	datab => \display_inst|Mux2~1_combout\,
	datac => \display_inst|Mux3~1_combout\,
	datad => \display_inst|Mux4~1_combout\,
	combout => \display_inst|rom|rom~1_combout\);

-- Location: LCCOMB_X19_Y20_N0
\display_inst|rom|rom~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|rom|rom~2_combout\ = (!\display_inst|Mux1~1_combout\ & (!\display_inst|Mux2~1_combout\ & (\display_inst|Mux3~1_combout\ & !\display_inst|Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|Mux1~1_combout\,
	datab => \display_inst|Mux2~1_combout\,
	datac => \display_inst|Mux3~1_combout\,
	datad => \display_inst|Mux4~1_combout\,
	combout => \display_inst|rom|rom~2_combout\);

-- Location: LCCOMB_X19_Y20_N22
\display_inst|rom|rom~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|rom|rom~3_combout\ = (!\display_inst|Mux1~1_combout\ & ((\display_inst|Mux2~1_combout\ & (\display_inst|Mux3~1_combout\ $ (!\display_inst|Mux4~1_combout\))) # (!\display_inst|Mux2~1_combout\ & (!\display_inst|Mux3~1_combout\ & 
-- \display_inst|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|Mux1~1_combout\,
	datab => \display_inst|Mux2~1_combout\,
	datac => \display_inst|Mux3~1_combout\,
	datad => \display_inst|Mux4~1_combout\,
	combout => \display_inst|rom|rom~3_combout\);

-- Location: LCCOMB_X19_Y20_N4
\display_inst|rom|rom~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|rom|rom~4_combout\ = (\display_inst|Mux3~1_combout\ & (!\display_inst|Mux1~1_combout\ & ((\display_inst|Mux4~1_combout\)))) # (!\display_inst|Mux3~1_combout\ & ((\display_inst|Mux2~1_combout\ & (!\display_inst|Mux1~1_combout\)) # 
-- (!\display_inst|Mux2~1_combout\ & ((\display_inst|Mux4~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|Mux1~1_combout\,
	datab => \display_inst|Mux2~1_combout\,
	datac => \display_inst|Mux3~1_combout\,
	datad => \display_inst|Mux4~1_combout\,
	combout => \display_inst|rom|rom~4_combout\);

-- Location: LCCOMB_X19_Y20_N26
\display_inst|rom|rom~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|rom|rom~5_combout\ = (!\display_inst|Mux1~1_combout\ & ((\display_inst|Mux2~1_combout\ & (\display_inst|Mux3~1_combout\ & \display_inst|Mux4~1_combout\)) # (!\display_inst|Mux2~1_combout\ & ((\display_inst|Mux3~1_combout\) # 
-- (\display_inst|Mux4~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|Mux1~1_combout\,
	datab => \display_inst|Mux2~1_combout\,
	datac => \display_inst|Mux3~1_combout\,
	datad => \display_inst|Mux4~1_combout\,
	combout => \display_inst|rom|rom~5_combout\);

-- Location: LCCOMB_X19_Y20_N12
\display_inst|rom|rom~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|rom|rom~6_combout\ = (\display_inst|Mux1~1_combout\) # ((\display_inst|Mux2~1_combout\ & ((!\display_inst|Mux4~1_combout\) # (!\display_inst|Mux3~1_combout\))) # (!\display_inst|Mux2~1_combout\ & (\display_inst|Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|Mux1~1_combout\,
	datab => \display_inst|Mux2~1_combout\,
	datac => \display_inst|Mux3~1_combout\,
	datad => \display_inst|Mux4~1_combout\,
	combout => \display_inst|rom|rom~6_combout\);

-- Location: LCCOMB_X13_Y18_N14
\display_inst|shift_reg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|shift_reg[1]~1_combout\ = !\display_inst|shift_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \display_inst|shift_reg\(0),
	combout => \display_inst|shift_reg[1]~1_combout\);

-- Location: FF_X13_Y18_N15
\display_inst|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display_inst|shift_reg[1]~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \display_inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|shift_reg\(1));

-- Location: FF_X13_Y18_N3
\display_inst|shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \display_inst|shift_reg\(1),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \display_inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|shift_reg\(2));

-- Location: LCCOMB_X13_Y18_N22
\display_inst|shift_reg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|shift_reg[3]~feeder_combout\ = \display_inst|shift_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \display_inst|shift_reg\(2),
	combout => \display_inst|shift_reg[3]~feeder_combout\);

-- Location: FF_X13_Y18_N23
\display_inst|shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display_inst|shift_reg[3]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \display_inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|shift_reg\(3));

-- Location: LCCOMB_X13_Y18_N0
\display_inst|shift_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|shift_reg[0]~0_combout\ = !\display_inst|shift_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|shift_reg\(3),
	combout => \display_inst|shift_reg[0]~0_combout\);

-- Location: FF_X13_Y18_N1
\display_inst|shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display_inst|shift_reg[0]~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \display_inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|shift_reg\(0));

ww_trig <= \trig~output_o\;

ww_dp <= \dp~output_o\;

ww_seg(0) <= \seg[0]~output_o\;

ww_seg(1) <= \seg[1]~output_o\;

ww_seg(2) <= \seg[2]~output_o\;

ww_seg(3) <= \seg[3]~output_o\;

ww_seg(4) <= \seg[4]~output_o\;

ww_seg(5) <= \seg[5]~output_o\;

ww_seg(6) <= \seg[6]~output_o\;

ww_sel(0) <= \sel[0]~output_o\;

ww_sel(1) <= \sel[1]~output_o\;

ww_sel(2) <= \sel[2]~output_o\;

ww_sel(3) <= \sel[3]~output_o\;
END structure;


