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

-- DATE "01/31/2024 14:40:55"

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

ENTITY 	weather_sensor IS
    PORT (
	rst_n : IN std_logic;
	clk : IN std_logic;
	io : INOUT std_logic;
	led : OUT std_logic;
	dp : OUT std_logic;
	seg : OUT std_logic_vector(6 DOWNTO 0);
	sel : OUT std_logic_vector(3 DOWNTO 0)
	);
END weather_sensor;

-- Design Ports Information
-- led	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- io	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- clk	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst_n	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF weather_sensor IS
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
SIGNAL ww_led : std_logic;
SIGNAL ww_dp : std_logic;
SIGNAL ww_seg : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \io~output_o\ : std_logic;
SIGNAL \led~output_o\ : std_logic;
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
SIGNAL \dht22_one_wire|clks[0]~20_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \dht22_one_wire|clks[10]~41\ : std_logic;
SIGNAL \dht22_one_wire|clks[11]~42_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks[11]~43\ : std_logic;
SIGNAL \dht22_one_wire|clks[12]~44_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks[12]~45\ : std_logic;
SIGNAL \dht22_one_wire|clks[13]~46_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks[13]~47\ : std_logic;
SIGNAL \dht22_one_wire|clks[14]~48_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks[14]~49\ : std_logic;
SIGNAL \dht22_one_wire|clks[15]~50_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks[15]~51\ : std_logic;
SIGNAL \dht22_one_wire|clks[16]~52_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks[16]~53\ : std_logic;
SIGNAL \dht22_one_wire|clks[17]~54_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks[17]~55\ : std_logic;
SIGNAL \dht22_one_wire|clks[18]~56_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks[18]~57\ : std_logic;
SIGNAL \dht22_one_wire|clks[19]~58_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal1~4_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal1~5_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal1~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal2~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal1~3_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal1~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal1~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector2~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector4~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector7~3_combout\ : std_logic;
SIGNAL \dht22_one_wire|LessThan1~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|LessThan1~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal2~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal2~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector7~4_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector4~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|state.ST_SAMPLE~q\ : std_logic;
SIGNAL \dht22_one_wire|Selector7~8_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector2~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|state.ST_PRE_ACK~q\ : std_logic;
SIGNAL \dht22_one_wire|Selector3~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|state.ST_ACK~q\ : std_logic;
SIGNAL \dht22_one_wire|WideOr2~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|WideOr2~combout\ : std_logic;
SIGNAL \io~input_o\ : std_logic;
SIGNAL \dht22_one_wire|new_io~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|new_io~q\ : std_logic;
SIGNAL \dht22_one_wire|state_transition~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|old_io~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|old_io~q\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[32]~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add2~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector14~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add2~1\ : std_logic;
SIGNAL \dht22_one_wire|Add2~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector13~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add2~3\ : std_logic;
SIGNAL \dht22_one_wire|Add2~4_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector12~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add2~5\ : std_logic;
SIGNAL \dht22_one_wire|Add2~6_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector11~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add2~7\ : std_logic;
SIGNAL \dht22_one_wire|Add2~8_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector10~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add2~9\ : std_logic;
SIGNAL \dht22_one_wire|Add2~10_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector9~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal4~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector6~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector6~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|state.ST_DONE~q\ : std_logic;
SIGNAL \dht22_one_wire|done~combout\ : std_logic;
SIGNAL \display|Add0~0_combout\ : std_logic;
SIGNAL \display|Add0~1\ : std_logic;
SIGNAL \display|Add0~2_combout\ : std_logic;
SIGNAL \display|Add0~3\ : std_logic;
SIGNAL \display|Add0~4_combout\ : std_logic;
SIGNAL \display|Add0~5\ : std_logic;
SIGNAL \display|Add0~6_combout\ : std_logic;
SIGNAL \Add0~1_cout\ : std_logic;
SIGNAL \Add0~3_cout\ : std_logic;
SIGNAL \Add0~5_cout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \one_wire_count~11_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \one_wire_count~10_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \one_wire_count~9_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \one_wire_count~8_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \one_wire_count~7_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \one_wire_count~6_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \one_wire_count~5_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \one_wire_count~4_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \one_wire_count~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \one_wire_count~2_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \one_wire_count~1_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \one_wire_count~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \display|Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \en_dht22~q\ : std_logic;
SIGNAL \dht22_one_wire|Selector0~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|state.ST_IDLE~q\ : std_logic;
SIGNAL \dht22_one_wire|Selector1~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector1~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|state.ST_START~q\ : std_logic;
SIGNAL \dht22_one_wire|Selector8~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal2~4_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector8~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal3~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal3~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector7~9_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector8~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector8~3_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks[0]~21\ : std_logic;
SIGNAL \dht22_one_wire|clks[1]~22_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks[1]~23\ : std_logic;
SIGNAL \dht22_one_wire|clks[2]~24_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks[2]~25\ : std_logic;
SIGNAL \dht22_one_wire|clks[3]~26_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks[3]~27\ : std_logic;
SIGNAL \dht22_one_wire|clks[4]~28_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks[4]~29\ : std_logic;
SIGNAL \dht22_one_wire|clks[5]~30_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks[5]~31\ : std_logic;
SIGNAL \dht22_one_wire|clks[6]~32_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks[6]~33\ : std_logic;
SIGNAL \dht22_one_wire|clks[7]~34_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks[7]~35\ : std_logic;
SIGNAL \dht22_one_wire|clks[8]~36_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks[8]~37\ : std_logic;
SIGNAL \dht22_one_wire|clks[9]~38_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks[9]~39\ : std_logic;
SIGNAL \dht22_one_wire|clks[10]~40_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal2~3_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector3~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector7~5_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector7~6_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector7~7_combout\ : std_logic;
SIGNAL \dht22_one_wire|state.ST_CHECK~q\ : std_logic;
SIGNAL \dht22_one_wire|Selector1~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector5~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|state.ST_PROCESS_DATA~q\ : std_logic;
SIGNAL \dht22_one_wire|WideOr2~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|LessThan1~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|LessThan1~3_combout\ : std_logic;
SIGNAL \dht22_one_wire|LessThan1~4_combout\ : std_logic;
SIGNAL \dht22_one_wire|LessThan1~5_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector15~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector15~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|io~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|io~en_q\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~10_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal4~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|clk_stamp[19]~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~1\ : std_logic;
SIGNAL \dht22_one_wire|Add1~3\ : std_logic;
SIGNAL \dht22_one_wire|Add1~5\ : std_logic;
SIGNAL \dht22_one_wire|Add1~7\ : std_logic;
SIGNAL \dht22_one_wire|Add1~9\ : std_logic;
SIGNAL \dht22_one_wire|Add1~11\ : std_logic;
SIGNAL \dht22_one_wire|Add1~13\ : std_logic;
SIGNAL \dht22_one_wire|Add1~15\ : std_logic;
SIGNAL \dht22_one_wire|Add1~17\ : std_logic;
SIGNAL \dht22_one_wire|Add1~19\ : std_logic;
SIGNAL \dht22_one_wire|Add1~21\ : std_logic;
SIGNAL \dht22_one_wire|Add1~23\ : std_logic;
SIGNAL \dht22_one_wire|Add1~25\ : std_logic;
SIGNAL \dht22_one_wire|Add1~27\ : std_logic;
SIGNAL \dht22_one_wire|Add1~29\ : std_logic;
SIGNAL \dht22_one_wire|Add1~31\ : std_logic;
SIGNAL \dht22_one_wire|Add1~33\ : std_logic;
SIGNAL \dht22_one_wire|Add1~35\ : std_logic;
SIGNAL \dht22_one_wire|Add1~37\ : std_logic;
SIGNAL \dht22_one_wire|Add1~38_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~36_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~34_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~32_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~26_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~28_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~24_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~18_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~20_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~22_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~10_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~8_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~4_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~6_combout\ : std_logic;
SIGNAL \dht22_one_wire|LessThan0~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~12_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~14_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~16_combout\ : std_logic;
SIGNAL \dht22_one_wire|LessThan0~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|LessThan0~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|LessThan0~3_combout\ : std_logic;
SIGNAL \dht22_one_wire|LessThan0~4_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~30_combout\ : std_logic;
SIGNAL \dht22_one_wire|LessThan0~5_combout\ : std_logic;
SIGNAL \dht22_one_wire|LessThan0~6_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[37]~11_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~7_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~8_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[13]~19_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~9_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[5]~20_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~3_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[6]~8_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[14]~7_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[7]~10_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[15]~9_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add3~1\ : std_logic;
SIGNAL \dht22_one_wire|Add3~3\ : std_logic;
SIGNAL \dht22_one_wire|Add3~4_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~4_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~6_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[21]~16_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~12_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[29]~15_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~5_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[30]~3_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[22]~4_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[23]~6_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[31]~5_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add4~1\ : std_logic;
SIGNAL \dht22_one_wire|Add4~3\ : std_logic;
SIGNAL \dht22_one_wire|Add4~4_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add3~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add4~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add3~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add4~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|check_sum[0]~1\ : std_logic;
SIGNAL \dht22_one_wire|check_sum[1]~3\ : std_logic;
SIGNAL \dht22_one_wire|check_sum[2]~4_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~11_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[36]~12_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[20]~14_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[28]~13_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add4~5\ : std_logic;
SIGNAL \dht22_one_wire|Add4~6_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[12]~17_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[4]~18_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add3~5\ : std_logic;
SIGNAL \dht22_one_wire|Add3~6_combout\ : std_logic;
SIGNAL \dht22_one_wire|check_sum[2]~5\ : std_logic;
SIGNAL \dht22_one_wire|check_sum[3]~6_combout\ : std_logic;
SIGNAL \dht22_one_wire|valid~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|check_sum[0]~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[39]~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|check_sum[1]~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[38]~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|valid~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal4~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~22_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[0]~37_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~21_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[8]~36_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~20_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[1]~39_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~17_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[9]~38_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[10]~27_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~15_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[2]~28_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[11]~29_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~16_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[3]~30_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add3~7\ : std_logic;
SIGNAL \dht22_one_wire|Add3~9\ : std_logic;
SIGNAL \dht22_one_wire|Add3~11\ : std_logic;
SIGNAL \dht22_one_wire|Add3~13\ : std_logic;
SIGNAL \dht22_one_wire|Add3~14_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~18_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[16]~33_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[24]~32_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[17]~35_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~19_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[25]~34_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[18]~24_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~14_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[26]~23_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[19]~26_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[27]~25_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add4~7\ : std_logic;
SIGNAL \dht22_one_wire|Add4~9\ : std_logic;
SIGNAL \dht22_one_wire|Add4~11\ : std_logic;
SIGNAL \dht22_one_wire|Add4~13\ : std_logic;
SIGNAL \dht22_one_wire|Add4~14_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add4~12_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add3~12_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add4~10_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add3~10_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add4~8_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add3~8_combout\ : std_logic;
SIGNAL \dht22_one_wire|check_sum[3]~7\ : std_logic;
SIGNAL \dht22_one_wire|check_sum[4]~9\ : std_logic;
SIGNAL \dht22_one_wire|check_sum[5]~11\ : std_logic;
SIGNAL \dht22_one_wire|check_sum[6]~13\ : std_logic;
SIGNAL \dht22_one_wire|check_sum[7]~14_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~13_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[35]~21_combout\ : std_logic;
SIGNAL \dht22_one_wire|check_sum[4]~8_combout\ : std_logic;
SIGNAL \dht22_one_wire|check_sum[5]~10_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[34]~22_combout\ : std_logic;
SIGNAL \dht22_one_wire|valid~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[32]~31_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_buff[33]~40_combout\ : std_logic;
SIGNAL \dht22_one_wire|check_sum[6]~12_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal5~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|valid~3_combout\ : std_logic;
SIGNAL \dht22_one_wire|valid~4_combout\ : std_logic;
SIGNAL \display|digit_index[0]~1_combout\ : std_logic;
SIGNAL \display|Add0~7\ : std_logic;
SIGNAL \display|Add0~8_combout\ : std_logic;
SIGNAL \display|count~4_combout\ : std_logic;
SIGNAL \display|Add0~9\ : std_logic;
SIGNAL \display|Add0~10_combout\ : std_logic;
SIGNAL \display|Add0~11\ : std_logic;
SIGNAL \display|Add0~12_combout\ : std_logic;
SIGNAL \display|Add0~13\ : std_logic;
SIGNAL \display|Add0~14_combout\ : std_logic;
SIGNAL \display|Equal0~3_combout\ : std_logic;
SIGNAL \display|Add0~15\ : std_logic;
SIGNAL \display|Add0~16_combout\ : std_logic;
SIGNAL \display|count~3_combout\ : std_logic;
SIGNAL \display|Add0~17\ : std_logic;
SIGNAL \display|Add0~18_combout\ : std_logic;
SIGNAL \display|count~2_combout\ : std_logic;
SIGNAL \display|Add0~19\ : std_logic;
SIGNAL \display|Add0~20_combout\ : std_logic;
SIGNAL \display|count~1_combout\ : std_logic;
SIGNAL \display|Add0~21\ : std_logic;
SIGNAL \display|Add0~22_combout\ : std_logic;
SIGNAL \display|Add0~23\ : std_logic;
SIGNAL \display|Add0~24_combout\ : std_logic;
SIGNAL \display|Add0~25\ : std_logic;
SIGNAL \display|Add0~26_combout\ : std_logic;
SIGNAL \display|count~0_combout\ : std_logic;
SIGNAL \display|Add0~27\ : std_logic;
SIGNAL \display|Add0~28_combout\ : std_logic;
SIGNAL \display|Add0~29\ : std_logic;
SIGNAL \display|Add0~30_combout\ : std_logic;
SIGNAL \display|Equal0~1_combout\ : std_logic;
SIGNAL \display|Equal0~2_combout\ : std_logic;
SIGNAL \display|Equal0~4_combout\ : std_logic;
SIGNAL \display|digit_index[1]~0_combout\ : std_logic;
SIGNAL \display|Mux0~0_combout\ : std_logic;
SIGNAL \param~0_combout\ : std_logic;
SIGNAL \param~q\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[1]~3_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~1\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~2_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector24~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector24~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[10]~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|LessThan0~2_combout\ : std_logic;
SIGNAL \dht22_data_bcd|LessThan0~3_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[10]~2_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~1\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~2_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~3\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~4_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector23~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector23~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~3\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~4_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~5\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~6_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector22~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector22~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~5\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~6_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~7\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~8_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector21~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector21~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~7\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~8_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~9\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~10_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector20~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector20~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~11\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~12_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector19~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~9\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~10_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector19~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~11\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~12_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~13\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~14_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector18~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector18~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~15\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~16_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector17~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~13\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~14_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector17~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~15\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~16_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~17\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~18_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector16~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector16~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~17\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~18_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~19\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~20_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector15~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector15~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~19\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~20_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~21\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~22_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector14~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector14~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|LessThan0~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|LessThan0~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~21\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~22_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~23\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~24_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector13~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector13~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~23\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~24_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~25\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~26_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector12~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector12~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector1~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|LessThan3~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[10]~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~25\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~26_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~27\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~28_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector11~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector11~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|done_reg~3_combout\ : std_logic;
SIGNAL \dht22_data_bcd|done_reg~2_combout\ : std_logic;
SIGNAL \dht22_data_bcd|done_reg~q\ : std_logic;
SIGNAL \Add1~1_cout\ : std_logic;
SIGNAL \Add1~3_cout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \converter_count~5_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \converter_count~4_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \converter_count~3_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \converter_count~2_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \converter_count~1_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \converter_count~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \en_converter~0_combout\ : std_logic;
SIGNAL \en_converter~q\ : std_logic;
SIGNAL \dht22_data_bcd|Selector1~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector1~3_combout\ : std_logic;
SIGNAL \dht22_data_bcd|state.ST_IDLE~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|state.ST_IDLE~q\ : std_logic;
SIGNAL \dht22_data_bcd|Selector2~4_combout\ : std_logic;
SIGNAL \dht22_data_bcd|state.ST_DONE~q\ : std_logic;
SIGNAL \dht22_data_bcd|Selector1~2_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector1~4_combout\ : std_logic;
SIGNAL \dht22_data_bcd|state.ST_CALC~q\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[1]~4_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[1]~5_combout\ : std_logic;
SIGNAL \dht22_data_bcd|bcd_reg[0]~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector10~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector9~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector9~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector6~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector5~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector5~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|bcd_reg[9]~feeder_combout\ : std_logic;
SIGNAL \display|Mux3~0_combout\ : std_logic;
SIGNAL \display|Mux3~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector8~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector8~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|bcd_reg[2]~feeder_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector4~3_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector4~2_combout\ : std_logic;
SIGNAL \display|Mux2~0_combout\ : std_logic;
SIGNAL \display|Mux2~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector3~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector3~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|bcd_reg[11]~feeder_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector7~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector7~1_combout\ : std_logic;
SIGNAL \display|Mux1~0_combout\ : std_logic;
SIGNAL \display|Mux1~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[0]~6_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[0]~7_combout\ : std_logic;
SIGNAL \dht22_data_bcd|bcd_reg[0]~feeder_combout\ : std_logic;
SIGNAL \display|Mux4~0_combout\ : std_logic;
SIGNAL \display|Mux4~1_combout\ : std_logic;
SIGNAL \display|rom|rom~0_combout\ : std_logic;
SIGNAL \display|rom|rom~1_combout\ : std_logic;
SIGNAL \display|rom|rom~2_combout\ : std_logic;
SIGNAL \display|rom|rom~3_combout\ : std_logic;
SIGNAL \display|rom|rom~4_combout\ : std_logic;
SIGNAL \display|rom|rom~5_combout\ : std_logic;
SIGNAL \display|rom|rom~6_combout\ : std_logic;
SIGNAL \display|shift_reg[1]~1_combout\ : std_logic;
SIGNAL \display|shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \display|shift_reg[0]~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \dht22_one_wire|data_buff\ : std_logic_vector(0 TO 39);
SIGNAL \display|digit_index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \display|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dht22_data_bcd|bcd_reg\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \dht22_one_wire|bit_count\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \display|shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dht22_data_bcd|tens_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dht22_one_wire|clk_stamp\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \dht22_data_bcd|num_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL one_wire_count : std_logic_vector(26 DOWNTO 0);
SIGNAL \dht22_data_bcd|hundreds_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL converter_count : std_logic_vector(9 DOWNTO 0);
SIGNAL \dht22_one_wire|ALT_INV_io~en_q\ : std_logic;
SIGNAL \dht22_one_wire|ALT_INV_state.ST_PROCESS_DATA~q\ : std_logic;
SIGNAL \display|ALT_INV_shift_reg\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \display|rom|ALT_INV_rom~6_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|ALT_INV_valid~4_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_rst_n <= rst_n;
ww_clk <= clk;
led <= ww_led;
dp <= ww_dp;
seg <= ww_seg;
sel <= ww_sel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst_n~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\dht22_one_wire|ALT_INV_io~en_q\ <= NOT \dht22_one_wire|io~en_q\;
\dht22_one_wire|ALT_INV_state.ST_PROCESS_DATA~q\ <= NOT \dht22_one_wire|state.ST_PROCESS_DATA~q\;
\display|ALT_INV_shift_reg\(3) <= NOT \display|shift_reg\(3);
\display|ALT_INV_shift_reg\(2) <= NOT \display|shift_reg\(2);
\display|ALT_INV_shift_reg\(1) <= NOT \display|shift_reg\(1);
\display|rom|ALT_INV_rom~6_combout\ <= NOT \display|rom|rom~6_combout\;
\display|ALT_INV_Mux0~0_combout\ <= NOT \display|Mux0~0_combout\;
\dht22_one_wire|ALT_INV_valid~4_combout\ <= NOT \dht22_one_wire|valid~4_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X28_Y24_N9
\io~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \dht22_one_wire|ALT_INV_io~en_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \io~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\led~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dht22_one_wire|ALT_INV_valid~4_combout\,
	devoe => ww_devoe,
	o => \led~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\dp~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|ALT_INV_Mux0~0_combout\,
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
	i => \display|rom|rom~0_combout\,
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
	i => \display|rom|rom~1_combout\,
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
	i => \display|rom|rom~2_combout\,
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
	i => \display|rom|rom~3_combout\,
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
	i => \display|rom|rom~4_combout\,
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
	i => \display|rom|rom~5_combout\,
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
	i => \display|rom|ALT_INV_rom~6_combout\,
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
	i => \display|shift_reg\(0),
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
	i => \display|ALT_INV_shift_reg\(1),
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
	i => \display|ALT_INV_shift_reg\(2),
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
	i => \display|ALT_INV_shift_reg\(3),
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

-- Location: LCCOMB_X24_Y19_N12
\dht22_one_wire|clks[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks[0]~20_combout\ = \dht22_one_wire|clks\(0) $ (VCC)
-- \dht22_one_wire|clks[0]~21\ = CARRY(\dht22_one_wire|clks\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(0),
	datad => VCC,
	combout => \dht22_one_wire|clks[0]~20_combout\,
	cout => \dht22_one_wire|clks[0]~21\);

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

-- Location: LCCOMB_X24_Y18_N0
\dht22_one_wire|clks[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks[10]~40_combout\ = (\dht22_one_wire|clks\(10) & (\dht22_one_wire|clks[9]~39\ $ (GND))) # (!\dht22_one_wire|clks\(10) & (!\dht22_one_wire|clks[9]~39\ & VCC))
-- \dht22_one_wire|clks[10]~41\ = CARRY((\dht22_one_wire|clks\(10) & !\dht22_one_wire|clks[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|clks\(10),
	datad => VCC,
	cin => \dht22_one_wire|clks[9]~39\,
	combout => \dht22_one_wire|clks[10]~40_combout\,
	cout => \dht22_one_wire|clks[10]~41\);

-- Location: LCCOMB_X24_Y18_N2
\dht22_one_wire|clks[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks[11]~42_combout\ = (\dht22_one_wire|clks\(11) & (!\dht22_one_wire|clks[10]~41\)) # (!\dht22_one_wire|clks\(11) & ((\dht22_one_wire|clks[10]~41\) # (GND)))
-- \dht22_one_wire|clks[11]~43\ = CARRY((!\dht22_one_wire|clks[10]~41\) # (!\dht22_one_wire|clks\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|clks\(11),
	datad => VCC,
	cin => \dht22_one_wire|clks[10]~41\,
	combout => \dht22_one_wire|clks[11]~42_combout\,
	cout => \dht22_one_wire|clks[11]~43\);

-- Location: FF_X24_Y18_N3
\dht22_one_wire|clks[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks[11]~42_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \dht22_one_wire|Selector8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks\(11));

-- Location: LCCOMB_X24_Y18_N4
\dht22_one_wire|clks[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks[12]~44_combout\ = (\dht22_one_wire|clks\(12) & (\dht22_one_wire|clks[11]~43\ $ (GND))) # (!\dht22_one_wire|clks\(12) & (!\dht22_one_wire|clks[11]~43\ & VCC))
-- \dht22_one_wire|clks[12]~45\ = CARRY((\dht22_one_wire|clks\(12) & !\dht22_one_wire|clks[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(12),
	datad => VCC,
	cin => \dht22_one_wire|clks[11]~43\,
	combout => \dht22_one_wire|clks[12]~44_combout\,
	cout => \dht22_one_wire|clks[12]~45\);

-- Location: FF_X24_Y18_N5
\dht22_one_wire|clks[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks[12]~44_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \dht22_one_wire|Selector8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks\(12));

-- Location: LCCOMB_X24_Y18_N6
\dht22_one_wire|clks[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks[13]~46_combout\ = (\dht22_one_wire|clks\(13) & (!\dht22_one_wire|clks[12]~45\)) # (!\dht22_one_wire|clks\(13) & ((\dht22_one_wire|clks[12]~45\) # (GND)))
-- \dht22_one_wire|clks[13]~47\ = CARRY((!\dht22_one_wire|clks[12]~45\) # (!\dht22_one_wire|clks\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(13),
	datad => VCC,
	cin => \dht22_one_wire|clks[12]~45\,
	combout => \dht22_one_wire|clks[13]~46_combout\,
	cout => \dht22_one_wire|clks[13]~47\);

-- Location: FF_X24_Y18_N7
\dht22_one_wire|clks[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks[13]~46_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \dht22_one_wire|Selector8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks\(13));

-- Location: LCCOMB_X24_Y18_N8
\dht22_one_wire|clks[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks[14]~48_combout\ = (\dht22_one_wire|clks\(14) & (\dht22_one_wire|clks[13]~47\ $ (GND))) # (!\dht22_one_wire|clks\(14) & (!\dht22_one_wire|clks[13]~47\ & VCC))
-- \dht22_one_wire|clks[14]~49\ = CARRY((\dht22_one_wire|clks\(14) & !\dht22_one_wire|clks[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|clks\(14),
	datad => VCC,
	cin => \dht22_one_wire|clks[13]~47\,
	combout => \dht22_one_wire|clks[14]~48_combout\,
	cout => \dht22_one_wire|clks[14]~49\);

-- Location: FF_X24_Y18_N9
\dht22_one_wire|clks[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks[14]~48_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \dht22_one_wire|Selector8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks\(14));

-- Location: LCCOMB_X24_Y18_N10
\dht22_one_wire|clks[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks[15]~50_combout\ = (\dht22_one_wire|clks\(15) & (!\dht22_one_wire|clks[14]~49\)) # (!\dht22_one_wire|clks\(15) & ((\dht22_one_wire|clks[14]~49\) # (GND)))
-- \dht22_one_wire|clks[15]~51\ = CARRY((!\dht22_one_wire|clks[14]~49\) # (!\dht22_one_wire|clks\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(15),
	datad => VCC,
	cin => \dht22_one_wire|clks[14]~49\,
	combout => \dht22_one_wire|clks[15]~50_combout\,
	cout => \dht22_one_wire|clks[15]~51\);

-- Location: FF_X24_Y18_N11
\dht22_one_wire|clks[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks[15]~50_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \dht22_one_wire|Selector8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks\(15));

-- Location: LCCOMB_X24_Y18_N12
\dht22_one_wire|clks[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks[16]~52_combout\ = (\dht22_one_wire|clks\(16) & (\dht22_one_wire|clks[15]~51\ $ (GND))) # (!\dht22_one_wire|clks\(16) & (!\dht22_one_wire|clks[15]~51\ & VCC))
-- \dht22_one_wire|clks[16]~53\ = CARRY((\dht22_one_wire|clks\(16) & !\dht22_one_wire|clks[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(16),
	datad => VCC,
	cin => \dht22_one_wire|clks[15]~51\,
	combout => \dht22_one_wire|clks[16]~52_combout\,
	cout => \dht22_one_wire|clks[16]~53\);

-- Location: FF_X24_Y18_N13
\dht22_one_wire|clks[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks[16]~52_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \dht22_one_wire|Selector8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks\(16));

-- Location: LCCOMB_X24_Y18_N14
\dht22_one_wire|clks[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks[17]~54_combout\ = (\dht22_one_wire|clks\(17) & (!\dht22_one_wire|clks[16]~53\)) # (!\dht22_one_wire|clks\(17) & ((\dht22_one_wire|clks[16]~53\) # (GND)))
-- \dht22_one_wire|clks[17]~55\ = CARRY((!\dht22_one_wire|clks[16]~53\) # (!\dht22_one_wire|clks\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|clks\(17),
	datad => VCC,
	cin => \dht22_one_wire|clks[16]~53\,
	combout => \dht22_one_wire|clks[17]~54_combout\,
	cout => \dht22_one_wire|clks[17]~55\);

-- Location: FF_X24_Y18_N15
\dht22_one_wire|clks[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks[17]~54_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \dht22_one_wire|Selector8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks\(17));

-- Location: LCCOMB_X24_Y18_N16
\dht22_one_wire|clks[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks[18]~56_combout\ = (\dht22_one_wire|clks\(18) & (\dht22_one_wire|clks[17]~55\ $ (GND))) # (!\dht22_one_wire|clks\(18) & (!\dht22_one_wire|clks[17]~55\ & VCC))
-- \dht22_one_wire|clks[18]~57\ = CARRY((\dht22_one_wire|clks\(18) & !\dht22_one_wire|clks[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|clks\(18),
	datad => VCC,
	cin => \dht22_one_wire|clks[17]~55\,
	combout => \dht22_one_wire|clks[18]~56_combout\,
	cout => \dht22_one_wire|clks[18]~57\);

-- Location: FF_X24_Y18_N17
\dht22_one_wire|clks[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks[18]~56_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \dht22_one_wire|Selector8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks\(18));

-- Location: LCCOMB_X24_Y18_N18
\dht22_one_wire|clks[19]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks[19]~58_combout\ = \dht22_one_wire|clks[18]~57\ $ (\dht22_one_wire|clks\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dht22_one_wire|clks\(19),
	cin => \dht22_one_wire|clks[18]~57\,
	combout => \dht22_one_wire|clks[19]~58_combout\);

-- Location: FF_X24_Y18_N19
\dht22_one_wire|clks[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks[19]~58_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \dht22_one_wire|Selector8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks\(19));

-- Location: LCCOMB_X24_Y18_N24
\dht22_one_wire|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal1~4_combout\ = (\dht22_one_wire|clks\(18) & \dht22_one_wire|clks\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|clks\(18),
	datad => \dht22_one_wire|clks\(16),
	combout => \dht22_one_wire|Equal1~4_combout\);

-- Location: LCCOMB_X24_Y18_N26
\dht22_one_wire|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal1~5_combout\ = (\dht22_one_wire|clks\(13) & (\dht22_one_wire|clks\(19) & (\dht22_one_wire|clks\(15) & \dht22_one_wire|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(13),
	datab => \dht22_one_wire|clks\(19),
	datac => \dht22_one_wire|clks\(15),
	datad => \dht22_one_wire|Equal1~4_combout\,
	combout => \dht22_one_wire|Equal1~5_combout\);

-- Location: LCCOMB_X24_Y19_N10
\dht22_one_wire|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal1~2_combout\ = (!\dht22_one_wire|clks\(5) & (!\dht22_one_wire|clks\(14) & (\dht22_one_wire|clks\(7) & !\dht22_one_wire|clks\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(5),
	datab => \dht22_one_wire|clks\(14),
	datac => \dht22_one_wire|clks\(7),
	datad => \dht22_one_wire|clks\(17),
	combout => \dht22_one_wire|Equal1~2_combout\);

-- Location: LCCOMB_X24_Y19_N0
\dht22_one_wire|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal2~0_combout\ = (\dht22_one_wire|clks\(0) & (\dht22_one_wire|clks\(1) & \dht22_one_wire|clks\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(0),
	datac => \dht22_one_wire|clks\(1),
	datad => \dht22_one_wire|clks\(8),
	combout => \dht22_one_wire|Equal2~0_combout\);

-- Location: LCCOMB_X25_Y19_N2
\dht22_one_wire|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal1~3_combout\ = (\dht22_one_wire|Equal1~2_combout\ & (!\dht22_one_wire|clks\(10) & \dht22_one_wire|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Equal1~2_combout\,
	datab => \dht22_one_wire|clks\(10),
	datad => \dht22_one_wire|Equal2~0_combout\,
	combout => \dht22_one_wire|Equal1~3_combout\);

-- Location: LCCOMB_X24_Y19_N4
\dht22_one_wire|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal1~0_combout\ = (\dht22_one_wire|clks\(9) & (\dht22_one_wire|clks\(3) & (\dht22_one_wire|clks\(2) & \dht22_one_wire|clks\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(9),
	datab => \dht22_one_wire|clks\(3),
	datac => \dht22_one_wire|clks\(2),
	datad => \dht22_one_wire|clks\(4),
	combout => \dht22_one_wire|Equal1~0_combout\);

-- Location: LCCOMB_X25_Y19_N12
\dht22_one_wire|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal1~1_combout\ = (\dht22_one_wire|clks\(11) & (\dht22_one_wire|clks\(12) & (\dht22_one_wire|Equal1~0_combout\ & !\dht22_one_wire|clks\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(11),
	datab => \dht22_one_wire|clks\(12),
	datac => \dht22_one_wire|Equal1~0_combout\,
	datad => \dht22_one_wire|clks\(6),
	combout => \dht22_one_wire|Equal1~1_combout\);

-- Location: LCCOMB_X25_Y19_N0
\dht22_one_wire|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector2~0_combout\ = (\dht22_one_wire|Equal1~5_combout\ & (\dht22_one_wire|Equal1~3_combout\ & (\dht22_one_wire|state.ST_START~q\ & \dht22_one_wire|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Equal1~5_combout\,
	datab => \dht22_one_wire|Equal1~3_combout\,
	datac => \dht22_one_wire|state.ST_START~q\,
	datad => \dht22_one_wire|Equal1~1_combout\,
	combout => \dht22_one_wire|Selector2~0_combout\);

-- Location: LCCOMB_X25_Y20_N16
\dht22_one_wire|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector4~0_combout\ = (!\dht22_one_wire|state.ST_SAMPLE~q\ & (!\dht22_one_wire|Selector1~0_combout\ & (!\dht22_one_wire|Selector6~0_combout\ & !\dht22_one_wire|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_SAMPLE~q\,
	datab => \dht22_one_wire|Selector1~0_combout\,
	datac => \dht22_one_wire|Selector6~0_combout\,
	datad => \dht22_one_wire|Selector2~0_combout\,
	combout => \dht22_one_wire|Selector4~0_combout\);

-- Location: LCCOMB_X23_Y19_N8
\dht22_one_wire|Selector7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector7~3_combout\ = (!\dht22_one_wire|clks\(3) & (!\dht22_one_wire|clks\(9) & (!\dht22_one_wire|clks\(2) & !\dht22_one_wire|clks\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(3),
	datab => \dht22_one_wire|clks\(9),
	datac => \dht22_one_wire|clks\(2),
	datad => \dht22_one_wire|clks\(10),
	combout => \dht22_one_wire|Selector7~3_combout\);

-- Location: LCCOMB_X24_Y18_N28
\dht22_one_wire|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|LessThan1~0_combout\ = (!\dht22_one_wire|clks\(15) & (!\dht22_one_wire|clks\(17) & (!\dht22_one_wire|clks\(14) & !\dht22_one_wire|clks\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(15),
	datab => \dht22_one_wire|clks\(17),
	datac => \dht22_one_wire|clks\(14),
	datad => \dht22_one_wire|clks\(13),
	combout => \dht22_one_wire|LessThan1~0_combout\);

-- Location: LCCOMB_X24_Y18_N22
\dht22_one_wire|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|LessThan1~1_combout\ = (!\dht22_one_wire|clks\(16) & (!\dht22_one_wire|clks\(18) & (\dht22_one_wire|LessThan1~0_combout\ & !\dht22_one_wire|clks\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(16),
	datab => \dht22_one_wire|clks\(18),
	datac => \dht22_one_wire|LessThan1~0_combout\,
	datad => \dht22_one_wire|clks\(19),
	combout => \dht22_one_wire|LessThan1~1_combout\);

-- Location: LCCOMB_X25_Y19_N4
\dht22_one_wire|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal2~1_combout\ = (!\dht22_one_wire|clks\(4) & (\dht22_one_wire|clks\(6) & (\dht22_one_wire|clks\(7) & !\dht22_one_wire|clks\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(4),
	datab => \dht22_one_wire|clks\(6),
	datac => \dht22_one_wire|clks\(7),
	datad => \dht22_one_wire|clks\(5),
	combout => \dht22_one_wire|Equal2~1_combout\);

-- Location: LCCOMB_X25_Y19_N18
\dht22_one_wire|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal2~2_combout\ = (\dht22_one_wire|LessThan1~1_combout\ & (\dht22_one_wire|Equal2~1_combout\ & (!\dht22_one_wire|clks\(12) & \dht22_one_wire|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|LessThan1~1_combout\,
	datab => \dht22_one_wire|Equal2~1_combout\,
	datac => \dht22_one_wire|clks\(12),
	datad => \dht22_one_wire|Equal2~0_combout\,
	combout => \dht22_one_wire|Equal2~2_combout\);

-- Location: LCCOMB_X25_Y19_N16
\dht22_one_wire|Selector7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector7~4_combout\ = (\dht22_one_wire|state.ST_DONE~q\ & (\dht22_one_wire|Selector7~3_combout\ & (\dht22_one_wire|clks\(11) & \dht22_one_wire|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_DONE~q\,
	datab => \dht22_one_wire|Selector7~3_combout\,
	datac => \dht22_one_wire|clks\(11),
	datad => \dht22_one_wire|Equal2~2_combout\,
	combout => \dht22_one_wire|Selector7~4_combout\);

-- Location: LCCOMB_X25_Y20_N6
\dht22_one_wire|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector4~1_combout\ = (!\dht22_one_wire|Selector3~0_combout\ & (\dht22_one_wire|Selector4~0_combout\ & (!\dht22_one_wire|Selector7~4_combout\ & !\dht22_one_wire|Selector1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Selector3~0_combout\,
	datab => \dht22_one_wire|Selector4~0_combout\,
	datac => \dht22_one_wire|Selector7~4_combout\,
	datad => \dht22_one_wire|Selector1~1_combout\,
	combout => \dht22_one_wire|Selector4~1_combout\);

-- Location: FF_X25_Y20_N7
\dht22_one_wire|state.ST_SAMPLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|Selector4~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|state.ST_SAMPLE~q\);

-- Location: LCCOMB_X25_Y20_N2
\dht22_one_wire|Selector7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector7~8_combout\ = (\dht22_one_wire|Selector7~6_combout\) # ((\dht22_one_wire|state.ST_CHECK~q\ & \en_dht22~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|state.ST_CHECK~q\,
	datac => \dht22_one_wire|Selector7~6_combout\,
	datad => \en_dht22~q\,
	combout => \dht22_one_wire|Selector7~8_combout\);

-- Location: LCCOMB_X25_Y20_N8
\dht22_one_wire|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector2~1_combout\ = (\dht22_one_wire|Selector1~1_combout\ & (((\dht22_one_wire|state.ST_PRE_ACK~q\ & !\dht22_one_wire|Selector7~8_combout\)))) # (!\dht22_one_wire|Selector1~1_combout\ & ((\dht22_one_wire|Selector2~0_combout\) # 
-- ((\dht22_one_wire|state.ST_PRE_ACK~q\ & !\dht22_one_wire|Selector7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Selector1~1_combout\,
	datab => \dht22_one_wire|Selector2~0_combout\,
	datac => \dht22_one_wire|state.ST_PRE_ACK~q\,
	datad => \dht22_one_wire|Selector7~8_combout\,
	combout => \dht22_one_wire|Selector2~1_combout\);

-- Location: FF_X25_Y20_N9
\dht22_one_wire|state.ST_PRE_ACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|Selector2~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|state.ST_PRE_ACK~q\);

-- Location: LCCOMB_X25_Y20_N30
\dht22_one_wire|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector3~1_combout\ = (\dht22_one_wire|Selector1~1_combout\ & (((\dht22_one_wire|state.ST_ACK~q\ & !\dht22_one_wire|Selector7~8_combout\)))) # (!\dht22_one_wire|Selector1~1_combout\ & ((\dht22_one_wire|Selector3~0_combout\) # 
-- ((\dht22_one_wire|state.ST_ACK~q\ & !\dht22_one_wire|Selector7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Selector1~1_combout\,
	datab => \dht22_one_wire|Selector3~0_combout\,
	datac => \dht22_one_wire|state.ST_ACK~q\,
	datad => \dht22_one_wire|Selector7~8_combout\,
	combout => \dht22_one_wire|Selector3~1_combout\);

-- Location: FF_X25_Y20_N31
\dht22_one_wire|state.ST_ACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|Selector3~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|state.ST_ACK~q\);

-- Location: LCCOMB_X25_Y20_N14
\dht22_one_wire|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|WideOr2~0_combout\ = (!\dht22_one_wire|state.ST_PRE_ACK~q\ & (!\dht22_one_wire|state.ST_CHECK~q\ & (!\dht22_one_wire|state.ST_ACK~q\ & \dht22_one_wire|state.ST_IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_PRE_ACK~q\,
	datab => \dht22_one_wire|state.ST_CHECK~q\,
	datac => \dht22_one_wire|state.ST_ACK~q\,
	datad => \dht22_one_wire|state.ST_IDLE~q\,
	combout => \dht22_one_wire|WideOr2~0_combout\);

-- Location: LCCOMB_X26_Y20_N22
\dht22_one_wire|WideOr2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|WideOr2~combout\ = (\dht22_one_wire|state.ST_START~q\) # ((\dht22_one_wire|state.ST_SAMPLE~q\) # (!\dht22_one_wire|WideOr2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|state.ST_START~q\,
	datac => \dht22_one_wire|state.ST_SAMPLE~q\,
	datad => \dht22_one_wire|WideOr2~0_combout\,
	combout => \dht22_one_wire|WideOr2~combout\);

-- Location: IOIBUF_X28_Y24_N8
\io~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io,
	o => \io~input_o\);

-- Location: LCCOMB_X26_Y20_N10
\dht22_one_wire|new_io~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|new_io~0_combout\ = (\dht22_one_wire|state.ST_SAMPLE~q\ & ((\io~input_o\))) # (!\dht22_one_wire|state.ST_SAMPLE~q\ & (\dht22_one_wire|new_io~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|state.ST_SAMPLE~q\,
	datac => \dht22_one_wire|new_io~q\,
	datad => \io~input_o\,
	combout => \dht22_one_wire|new_io~0_combout\);

-- Location: FF_X26_Y20_N11
\dht22_one_wire|new_io\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|new_io~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|new_io~q\);

-- Location: LCCOMB_X26_Y20_N4
\dht22_one_wire|state_transition~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|state_transition~0_combout\ = \dht22_one_wire|new_io~q\ $ (\dht22_one_wire|old_io~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|new_io~q\,
	datad => \dht22_one_wire|old_io~q\,
	combout => \dht22_one_wire|state_transition~0_combout\);

-- Location: LCCOMB_X26_Y20_N12
\dht22_one_wire|old_io~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|old_io~0_combout\ = (\dht22_one_wire|old_io~q\ & ((!\dht22_one_wire|state_transition~0_combout\))) # (!\dht22_one_wire|old_io~q\ & (\dht22_one_wire|new_io~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|new_io~q\,
	datab => \dht22_one_wire|state_transition~0_combout\,
	datac => \dht22_one_wire|old_io~q\,
	combout => \dht22_one_wire|old_io~0_combout\);

-- Location: FF_X26_Y20_N13
\dht22_one_wire|old_io\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|old_io~0_combout\,
	asdata => \dht22_one_wire|old_io~q\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dht22_one_wire|ALT_INV_state.ST_PROCESS_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|old_io~q\);

-- Location: LCCOMB_X26_Y20_N16
\dht22_one_wire|data_buff[32]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[32]~0_combout\ = (!\dht22_one_wire|new_io~q\ & \dht22_one_wire|old_io~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|new_io~q\,
	datad => \dht22_one_wire|old_io~q\,
	combout => \dht22_one_wire|data_buff[32]~0_combout\);

-- Location: LCCOMB_X26_Y18_N2
\dht22_one_wire|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add2~0_combout\ = (\dht22_one_wire|bit_count\(0) & (\dht22_one_wire|data_buff[32]~0_combout\ $ (VCC))) # (!\dht22_one_wire|bit_count\(0) & (\dht22_one_wire|data_buff[32]~0_combout\ & VCC))
-- \dht22_one_wire|Add2~1\ = CARRY((\dht22_one_wire|bit_count\(0) & \dht22_one_wire|data_buff[32]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|bit_count\(0),
	datab => \dht22_one_wire|data_buff[32]~0_combout\,
	datad => VCC,
	combout => \dht22_one_wire|Add2~0_combout\,
	cout => \dht22_one_wire|Add2~1\);

-- Location: LCCOMB_X26_Y18_N24
\dht22_one_wire|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector14~0_combout\ = (\dht22_one_wire|WideOr2~combout\ & ((\dht22_one_wire|bit_count\(0)) # ((\dht22_one_wire|state.ST_PROCESS_DATA~q\ & \dht22_one_wire|Add2~0_combout\)))) # (!\dht22_one_wire|WideOr2~combout\ & 
-- (\dht22_one_wire|state.ST_PROCESS_DATA~q\ & ((\dht22_one_wire|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|WideOr2~combout\,
	datab => \dht22_one_wire|state.ST_PROCESS_DATA~q\,
	datac => \dht22_one_wire|bit_count\(0),
	datad => \dht22_one_wire|Add2~0_combout\,
	combout => \dht22_one_wire|Selector14~0_combout\);

-- Location: FF_X26_Y18_N25
\dht22_one_wire|bit_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|Selector14~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|bit_count\(0));

-- Location: LCCOMB_X26_Y18_N4
\dht22_one_wire|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add2~2_combout\ = (\dht22_one_wire|bit_count\(1) & (!\dht22_one_wire|Add2~1\)) # (!\dht22_one_wire|bit_count\(1) & ((\dht22_one_wire|Add2~1\) # (GND)))
-- \dht22_one_wire|Add2~3\ = CARRY((!\dht22_one_wire|Add2~1\) # (!\dht22_one_wire|bit_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|bit_count\(1),
	datad => VCC,
	cin => \dht22_one_wire|Add2~1\,
	combout => \dht22_one_wire|Add2~2_combout\,
	cout => \dht22_one_wire|Add2~3\);

-- Location: LCCOMB_X26_Y18_N22
\dht22_one_wire|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector13~0_combout\ = (\dht22_one_wire|WideOr2~combout\ & ((\dht22_one_wire|bit_count\(1)) # ((\dht22_one_wire|Add2~2_combout\ & \dht22_one_wire|state.ST_PROCESS_DATA~q\)))) # (!\dht22_one_wire|WideOr2~combout\ & 
-- (\dht22_one_wire|Add2~2_combout\ & ((\dht22_one_wire|state.ST_PROCESS_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|WideOr2~combout\,
	datab => \dht22_one_wire|Add2~2_combout\,
	datac => \dht22_one_wire|bit_count\(1),
	datad => \dht22_one_wire|state.ST_PROCESS_DATA~q\,
	combout => \dht22_one_wire|Selector13~0_combout\);

-- Location: FF_X26_Y18_N23
\dht22_one_wire|bit_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|Selector13~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|bit_count\(1));

-- Location: LCCOMB_X26_Y18_N6
\dht22_one_wire|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add2~4_combout\ = (\dht22_one_wire|bit_count\(2) & (\dht22_one_wire|Add2~3\ $ (GND))) # (!\dht22_one_wire|bit_count\(2) & (!\dht22_one_wire|Add2~3\ & VCC))
-- \dht22_one_wire|Add2~5\ = CARRY((\dht22_one_wire|bit_count\(2) & !\dht22_one_wire|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|bit_count\(2),
	datad => VCC,
	cin => \dht22_one_wire|Add2~3\,
	combout => \dht22_one_wire|Add2~4_combout\,
	cout => \dht22_one_wire|Add2~5\);

-- Location: LCCOMB_X26_Y18_N0
\dht22_one_wire|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector12~0_combout\ = (\dht22_one_wire|WideOr2~combout\ & ((\dht22_one_wire|bit_count\(2)) # ((\dht22_one_wire|state.ST_PROCESS_DATA~q\ & \dht22_one_wire|Add2~4_combout\)))) # (!\dht22_one_wire|WideOr2~combout\ & 
-- (\dht22_one_wire|state.ST_PROCESS_DATA~q\ & ((\dht22_one_wire|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|WideOr2~combout\,
	datab => \dht22_one_wire|state.ST_PROCESS_DATA~q\,
	datac => \dht22_one_wire|bit_count\(2),
	datad => \dht22_one_wire|Add2~4_combout\,
	combout => \dht22_one_wire|Selector12~0_combout\);

-- Location: FF_X26_Y18_N1
\dht22_one_wire|bit_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|Selector12~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|bit_count\(2));

-- Location: LCCOMB_X26_Y18_N8
\dht22_one_wire|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add2~6_combout\ = (\dht22_one_wire|bit_count\(3) & (!\dht22_one_wire|Add2~5\)) # (!\dht22_one_wire|bit_count\(3) & ((\dht22_one_wire|Add2~5\) # (GND)))
-- \dht22_one_wire|Add2~7\ = CARRY((!\dht22_one_wire|Add2~5\) # (!\dht22_one_wire|bit_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|bit_count\(3),
	datad => VCC,
	cin => \dht22_one_wire|Add2~5\,
	combout => \dht22_one_wire|Add2~6_combout\,
	cout => \dht22_one_wire|Add2~7\);

-- Location: LCCOMB_X26_Y18_N14
\dht22_one_wire|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector11~0_combout\ = (\dht22_one_wire|WideOr2~combout\ & ((\dht22_one_wire|bit_count\(3)) # ((\dht22_one_wire|Add2~6_combout\ & \dht22_one_wire|state.ST_PROCESS_DATA~q\)))) # (!\dht22_one_wire|WideOr2~combout\ & 
-- (\dht22_one_wire|Add2~6_combout\ & ((\dht22_one_wire|state.ST_PROCESS_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|WideOr2~combout\,
	datab => \dht22_one_wire|Add2~6_combout\,
	datac => \dht22_one_wire|bit_count\(3),
	datad => \dht22_one_wire|state.ST_PROCESS_DATA~q\,
	combout => \dht22_one_wire|Selector11~0_combout\);

-- Location: FF_X26_Y18_N15
\dht22_one_wire|bit_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|Selector11~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|bit_count\(3));

-- Location: LCCOMB_X26_Y18_N10
\dht22_one_wire|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add2~8_combout\ = (\dht22_one_wire|bit_count\(4) & (\dht22_one_wire|Add2~7\ $ (GND))) # (!\dht22_one_wire|bit_count\(4) & (!\dht22_one_wire|Add2~7\ & VCC))
-- \dht22_one_wire|Add2~9\ = CARRY((\dht22_one_wire|bit_count\(4) & !\dht22_one_wire|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|bit_count\(4),
	datad => VCC,
	cin => \dht22_one_wire|Add2~7\,
	combout => \dht22_one_wire|Add2~8_combout\,
	cout => \dht22_one_wire|Add2~9\);

-- Location: LCCOMB_X26_Y18_N26
\dht22_one_wire|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector10~0_combout\ = (\dht22_one_wire|WideOr2~combout\ & ((\dht22_one_wire|bit_count\(4)) # ((\dht22_one_wire|state.ST_PROCESS_DATA~q\ & \dht22_one_wire|Add2~8_combout\)))) # (!\dht22_one_wire|WideOr2~combout\ & 
-- (\dht22_one_wire|state.ST_PROCESS_DATA~q\ & ((\dht22_one_wire|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|WideOr2~combout\,
	datab => \dht22_one_wire|state.ST_PROCESS_DATA~q\,
	datac => \dht22_one_wire|bit_count\(4),
	datad => \dht22_one_wire|Add2~8_combout\,
	combout => \dht22_one_wire|Selector10~0_combout\);

-- Location: FF_X26_Y18_N27
\dht22_one_wire|bit_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|Selector10~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|bit_count\(4));

-- Location: LCCOMB_X26_Y18_N12
\dht22_one_wire|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add2~10_combout\ = \dht22_one_wire|Add2~9\ $ (\dht22_one_wire|bit_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dht22_one_wire|bit_count\(5),
	cin => \dht22_one_wire|Add2~9\,
	combout => \dht22_one_wire|Add2~10_combout\);

-- Location: LCCOMB_X26_Y18_N28
\dht22_one_wire|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector9~0_combout\ = (\dht22_one_wire|WideOr2~combout\ & ((\dht22_one_wire|bit_count\(5)) # ((\dht22_one_wire|state.ST_PROCESS_DATA~q\ & \dht22_one_wire|Add2~10_combout\)))) # (!\dht22_one_wire|WideOr2~combout\ & 
-- (\dht22_one_wire|state.ST_PROCESS_DATA~q\ & ((\dht22_one_wire|Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|WideOr2~combout\,
	datab => \dht22_one_wire|state.ST_PROCESS_DATA~q\,
	datac => \dht22_one_wire|bit_count\(5),
	datad => \dht22_one_wire|Add2~10_combout\,
	combout => \dht22_one_wire|Selector9~0_combout\);

-- Location: FF_X26_Y18_N29
\dht22_one_wire|bit_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|Selector9~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|bit_count\(5));

-- Location: LCCOMB_X25_Y18_N30
\dht22_one_wire|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal4~0_combout\ = (!\dht22_one_wire|bit_count\(0) & (\dht22_one_wire|bit_count\(3) & (!\dht22_one_wire|bit_count\(2) & !\dht22_one_wire|bit_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|bit_count\(0),
	datab => \dht22_one_wire|bit_count\(3),
	datac => \dht22_one_wire|bit_count\(2),
	datad => \dht22_one_wire|bit_count\(1),
	combout => \dht22_one_wire|Equal4~0_combout\);

-- Location: LCCOMB_X25_Y18_N16
\dht22_one_wire|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector6~0_combout\ = (\dht22_one_wire|state.ST_PROCESS_DATA~q\ & (\dht22_one_wire|bit_count\(5) & (\dht22_one_wire|Equal4~0_combout\ & !\dht22_one_wire|bit_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_PROCESS_DATA~q\,
	datab => \dht22_one_wire|bit_count\(5),
	datac => \dht22_one_wire|Equal4~0_combout\,
	datad => \dht22_one_wire|bit_count\(4),
	combout => \dht22_one_wire|Selector6~0_combout\);

-- Location: LCCOMB_X25_Y20_N26
\dht22_one_wire|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector6~1_combout\ = (\dht22_one_wire|Selector1~1_combout\ & (((\dht22_one_wire|state.ST_DONE~q\ & !\dht22_one_wire|Selector7~8_combout\)))) # (!\dht22_one_wire|Selector1~1_combout\ & ((\dht22_one_wire|Selector6~0_combout\) # 
-- ((\dht22_one_wire|state.ST_DONE~q\ & !\dht22_one_wire|Selector7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Selector1~1_combout\,
	datab => \dht22_one_wire|Selector6~0_combout\,
	datac => \dht22_one_wire|state.ST_DONE~q\,
	datad => \dht22_one_wire|Selector7~8_combout\,
	combout => \dht22_one_wire|Selector6~1_combout\);

-- Location: FF_X25_Y20_N27
\dht22_one_wire|state.ST_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|Selector6~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|state.ST_DONE~q\);

-- Location: LCCOMB_X25_Y20_N28
\dht22_one_wire|done\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|done~combout\ = (\dht22_one_wire|state.ST_DONE~q\) # (\dht22_one_wire|state.ST_CHECK~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_DONE~q\,
	datad => \dht22_one_wire|state.ST_CHECK~q\,
	combout => \dht22_one_wire|done~combout\);

-- Location: LCCOMB_X17_Y21_N0
\display|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~0_combout\ = \display|count\(0) $ (VCC)
-- \display|Add0~1\ = CARRY(\display|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display|count\(0),
	datad => VCC,
	combout => \display|Add0~0_combout\,
	cout => \display|Add0~1\);

-- Location: FF_X17_Y21_N1
\display|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display|Add0~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|count\(0));

-- Location: LCCOMB_X17_Y21_N2
\display|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~2_combout\ = (\display|count\(1) & (!\display|Add0~1\)) # (!\display|count\(1) & ((\display|Add0~1\) # (GND)))
-- \display|Add0~3\ = CARRY((!\display|Add0~1\) # (!\display|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display|count\(1),
	datad => VCC,
	cin => \display|Add0~1\,
	combout => \display|Add0~2_combout\,
	cout => \display|Add0~3\);

-- Location: FF_X17_Y21_N3
\display|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display|Add0~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|count\(1));

-- Location: LCCOMB_X17_Y21_N4
\display|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~4_combout\ = (\display|count\(2) & (\display|Add0~3\ $ (GND))) # (!\display|count\(2) & (!\display|Add0~3\ & VCC))
-- \display|Add0~5\ = CARRY((\display|count\(2) & !\display|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display|count\(2),
	datad => VCC,
	cin => \display|Add0~3\,
	combout => \display|Add0~4_combout\,
	cout => \display|Add0~5\);

-- Location: FF_X17_Y21_N5
\display|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display|Add0~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|count\(2));

-- Location: LCCOMB_X17_Y21_N6
\display|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~6_combout\ = (\display|count\(3) & (!\display|Add0~5\)) # (!\display|count\(3) & ((\display|Add0~5\) # (GND)))
-- \display|Add0~7\ = CARRY((!\display|Add0~5\) # (!\display|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(3),
	datad => VCC,
	cin => \display|Add0~5\,
	combout => \display|Add0~6_combout\,
	cout => \display|Add0~7\);

-- Location: FF_X17_Y21_N7
\display|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display|Add0~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|count\(3));

-- Location: LCCOMB_X18_Y21_N6
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_cout\ = CARRY((\display|count\(1) & \display|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(1),
	datab => \display|count\(0),
	datad => VCC,
	cout => \Add0~1_cout\);

-- Location: LCCOMB_X18_Y21_N8
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_cout\ = CARRY((!\Add0~1_cout\) # (!\display|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display|count\(2),
	datad => VCC,
	cin => \Add0~1_cout\,
	cout => \Add0~3_cout\);

-- Location: LCCOMB_X18_Y21_N10
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_cout\ = CARRY((\display|count\(3) & !\Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display|count\(3),
	datad => VCC,
	cin => \Add0~3_cout\,
	cout => \Add0~5_cout\);

-- Location: LCCOMB_X18_Y21_N12
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (one_wire_count(4) & (!\Add0~5_cout\)) # (!one_wire_count(4) & ((\Add0~5_cout\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5_cout\) # (!one_wire_count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => one_wire_count(4),
	datad => VCC,
	cin => \Add0~5_cout\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X18_Y21_N13
\one_wire_count[4]\ : dffeas
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
	q => one_wire_count(4));

-- Location: LCCOMB_X18_Y21_N14
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (one_wire_count(5) & (\Add0~7\ $ (GND))) # (!one_wire_count(5) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((one_wire_count(5) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => one_wire_count(5),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X18_Y21_N15
\one_wire_count[5]\ : dffeas
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
	q => one_wire_count(5));

-- Location: LCCOMB_X18_Y21_N16
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (one_wire_count(6) & (!\Add0~9\)) # (!one_wire_count(6) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!one_wire_count(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => one_wire_count(6),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X18_Y21_N17
\one_wire_count[6]\ : dffeas
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
	q => one_wire_count(6));

-- Location: LCCOMB_X18_Y21_N18
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (one_wire_count(7) & (\Add0~11\ $ (GND))) # (!one_wire_count(7) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((one_wire_count(7) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => one_wire_count(7),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X18_Y21_N19
\one_wire_count[7]\ : dffeas
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
	q => one_wire_count(7));

-- Location: LCCOMB_X18_Y21_N20
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (one_wire_count(8) & (!\Add0~13\)) # (!one_wire_count(8) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!one_wire_count(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => one_wire_count(8),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X18_Y21_N0
\one_wire_count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \one_wire_count~11_combout\ = (!\Equal0~7_combout\ & \Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~14_combout\,
	combout => \one_wire_count~11_combout\);

-- Location: FF_X18_Y21_N1
\one_wire_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \one_wire_count~11_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => one_wire_count(8));

-- Location: LCCOMB_X18_Y21_N22
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (one_wire_count(9) & (\Add0~15\ $ (GND))) # (!one_wire_count(9) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((one_wire_count(9) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => one_wire_count(9),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X18_Y21_N23
\one_wire_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => one_wire_count(9));

-- Location: LCCOMB_X18_Y21_N24
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (one_wire_count(10) & (!\Add0~17\)) # (!one_wire_count(10) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!one_wire_count(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => one_wire_count(10),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X18_Y21_N25
\one_wire_count[10]\ : dffeas
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
	q => one_wire_count(10));

-- Location: LCCOMB_X18_Y21_N26
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (one_wire_count(11) & (\Add0~19\ $ (GND))) # (!one_wire_count(11) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((one_wire_count(11) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => one_wire_count(11),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X18_Y21_N27
\one_wire_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => one_wire_count(11));

-- Location: LCCOMB_X18_Y21_N28
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (one_wire_count(12) & (!\Add0~21\)) # (!one_wire_count(12) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!one_wire_count(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => one_wire_count(12),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X18_Y21_N29
\one_wire_count[12]\ : dffeas
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
	q => one_wire_count(12));

-- Location: LCCOMB_X18_Y21_N30
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (one_wire_count(13) & (\Add0~23\ $ (GND))) # (!one_wire_count(13) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((one_wire_count(13) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => one_wire_count(13),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X17_Y20_N2
\one_wire_count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \one_wire_count~10_combout\ = (!\Equal0~7_combout\ & \Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datac => \Add0~24_combout\,
	combout => \one_wire_count~10_combout\);

-- Location: FF_X17_Y20_N3
\one_wire_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \one_wire_count~10_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => one_wire_count(13));

-- Location: LCCOMB_X18_Y20_N0
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (one_wire_count(14) & (!\Add0~25\)) # (!one_wire_count(14) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!one_wire_count(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => one_wire_count(14),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X17_Y20_N20
\one_wire_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \one_wire_count~9_combout\ = (!\Equal0~7_combout\ & \Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datac => \Add0~26_combout\,
	combout => \one_wire_count~9_combout\);

-- Location: FF_X17_Y20_N21
\one_wire_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \one_wire_count~9_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => one_wire_count(14));

-- Location: LCCOMB_X18_Y20_N2
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (one_wire_count(15) & (\Add0~27\ $ (GND))) # (!one_wire_count(15) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((one_wire_count(15) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => one_wire_count(15),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X17_Y20_N18
\one_wire_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \one_wire_count~8_combout\ = (!\Equal0~7_combout\ & \Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~28_combout\,
	combout => \one_wire_count~8_combout\);

-- Location: FF_X17_Y20_N19
\one_wire_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \one_wire_count~8_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => one_wire_count(15));

-- Location: LCCOMB_X18_Y20_N4
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (one_wire_count(16) & (!\Add0~29\)) # (!one_wire_count(16) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!one_wire_count(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => one_wire_count(16),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X17_Y20_N8
\one_wire_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \one_wire_count~7_combout\ = (!\Equal0~7_combout\ & \Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~30_combout\,
	combout => \one_wire_count~7_combout\);

-- Location: FF_X17_Y20_N9
\one_wire_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \one_wire_count~7_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => one_wire_count(16));

-- Location: LCCOMB_X18_Y20_N6
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (one_wire_count(17) & (\Add0~31\ $ (GND))) # (!one_wire_count(17) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((one_wire_count(17) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => one_wire_count(17),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X18_Y20_N7
\one_wire_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => one_wire_count(17));

-- Location: LCCOMB_X18_Y20_N8
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (one_wire_count(18) & (!\Add0~33\)) # (!one_wire_count(18) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!one_wire_count(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => one_wire_count(18),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X17_Y20_N14
\one_wire_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \one_wire_count~6_combout\ = (!\Equal0~7_combout\ & \Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datac => \Add0~34_combout\,
	combout => \one_wire_count~6_combout\);

-- Location: FF_X17_Y20_N15
\one_wire_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \one_wire_count~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => one_wire_count(18));

-- Location: LCCOMB_X18_Y20_N10
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (one_wire_count(19) & (\Add0~35\ $ (GND))) # (!one_wire_count(19) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((one_wire_count(19) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => one_wire_count(19),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X18_Y20_N11
\one_wire_count[19]\ : dffeas
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
	q => one_wire_count(19));

-- Location: LCCOMB_X18_Y20_N12
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (one_wire_count(20) & (!\Add0~37\)) # (!one_wire_count(20) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!one_wire_count(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => one_wire_count(20),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X18_Y20_N26
\one_wire_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \one_wire_count~5_combout\ = (!\Equal0~7_combout\ & \Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datad => \Add0~38_combout\,
	combout => \one_wire_count~5_combout\);

-- Location: FF_X18_Y20_N27
\one_wire_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \one_wire_count~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => one_wire_count(20));

-- Location: LCCOMB_X18_Y20_N14
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (one_wire_count(21) & (\Add0~39\ $ (GND))) # (!one_wire_count(21) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((one_wire_count(21) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => one_wire_count(21),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X18_Y20_N28
\one_wire_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \one_wire_count~4_combout\ = (\Add0~40_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~40_combout\,
	datad => \Equal0~7_combout\,
	combout => \one_wire_count~4_combout\);

-- Location: FF_X18_Y20_N29
\one_wire_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \one_wire_count~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => one_wire_count(21));

-- Location: LCCOMB_X18_Y20_N16
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (one_wire_count(22) & (!\Add0~41\)) # (!one_wire_count(22) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!one_wire_count(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => one_wire_count(22),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X17_Y20_N6
\one_wire_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \one_wire_count~3_combout\ = (!\Equal0~7_combout\ & \Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~42_combout\,
	combout => \one_wire_count~3_combout\);

-- Location: FF_X17_Y20_N7
\one_wire_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \one_wire_count~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => one_wire_count(22));

-- Location: LCCOMB_X17_Y20_N12
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (one_wire_count(22) & (one_wire_count(21) & (!one_wire_count(19) & one_wire_count(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => one_wire_count(22),
	datab => one_wire_count(21),
	datac => one_wire_count(19),
	datad => one_wire_count(20),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X18_Y20_N18
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (one_wire_count(23) & (\Add0~43\ $ (GND))) # (!one_wire_count(23) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((one_wire_count(23) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => one_wire_count(23),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X17_Y20_N26
\one_wire_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \one_wire_count~2_combout\ = (!\Equal0~7_combout\ & \Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~44_combout\,
	combout => \one_wire_count~2_combout\);

-- Location: FF_X17_Y20_N27
\one_wire_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \one_wire_count~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => one_wire_count(23));

-- Location: LCCOMB_X18_Y20_N20
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (one_wire_count(24) & (!\Add0~45\)) # (!one_wire_count(24) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!one_wire_count(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => one_wire_count(24),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X17_Y20_N16
\one_wire_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \one_wire_count~1_combout\ = (!\Equal0~7_combout\ & \Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datac => \Add0~46_combout\,
	combout => \one_wire_count~1_combout\);

-- Location: FF_X17_Y20_N17
\one_wire_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \one_wire_count~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => one_wire_count(24));

-- Location: LCCOMB_X18_Y20_N22
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (one_wire_count(25) & (\Add0~47\ $ (GND))) # (!one_wire_count(25) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((one_wire_count(25) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => one_wire_count(25),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X18_Y20_N23
\one_wire_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => one_wire_count(25));

-- Location: LCCOMB_X18_Y20_N24
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = one_wire_count(26) $ (\Add0~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => one_wire_count(26),
	cin => \Add0~49\,
	combout => \Add0~50_combout\);

-- Location: LCCOMB_X18_Y20_N30
\one_wire_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \one_wire_count~0_combout\ = (!\Equal0~7_combout\ & \Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datad => \Add0~50_combout\,
	combout => \one_wire_count~0_combout\);

-- Location: FF_X18_Y20_N31
\one_wire_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \one_wire_count~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => one_wire_count(26));

-- Location: LCCOMB_X17_Y20_N24
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (one_wire_count(23) & (one_wire_count(24) & (one_wire_count(26) & !one_wire_count(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => one_wire_count(23),
	datab => one_wire_count(24),
	datac => one_wire_count(26),
	datad => one_wire_count(25),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X16_Y21_N22
\display|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~0_combout\ = (\display|count\(2) & (\display|count\(0) & (\display|count\(1) & \display|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(2),
	datab => \display|count\(0),
	datac => \display|count\(1),
	datad => \display|count\(3),
	combout => \display|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y20_N28
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!one_wire_count(17) & (one_wire_count(18) & (one_wire_count(16) & one_wire_count(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => one_wire_count(17),
	datab => one_wire_count(18),
	datac => one_wire_count(16),
	datad => one_wire_count(15),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X17_Y20_N30
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Equal0~1_combout\ & (\Equal0~0_combout\ & (\display|Equal0~0_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \display|Equal0~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X17_Y20_N4
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!one_wire_count(11) & (one_wire_count(14) & (!one_wire_count(12) & one_wire_count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => one_wire_count(11),
	datab => one_wire_count(14),
	datac => one_wire_count(12),
	datad => one_wire_count(13),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X18_Y21_N2
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!one_wire_count(10) & (one_wire_count(7) & (!one_wire_count(9) & !one_wire_count(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => one_wire_count(10),
	datab => one_wire_count(7),
	datac => one_wire_count(9),
	datad => one_wire_count(8),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X18_Y21_N4
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (one_wire_count(4) & (one_wire_count(5) & one_wire_count(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => one_wire_count(4),
	datac => one_wire_count(5),
	datad => one_wire_count(6),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X17_Y20_N22
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~3_combout\ & (\Equal0~4_combout\ & (\Equal0~5_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: FF_X25_Y20_N29
en_dht22 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|done~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \en_dht22~q\);

-- Location: LCCOMB_X25_Y20_N18
\dht22_one_wire|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector0~0_combout\ = ((!\dht22_one_wire|state.ST_CHECK~q\ & \dht22_one_wire|state.ST_IDLE~q\)) # (!\en_dht22~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|state.ST_CHECK~q\,
	datac => \dht22_one_wire|state.ST_IDLE~q\,
	datad => \en_dht22~q\,
	combout => \dht22_one_wire|Selector0~0_combout\);

-- Location: FF_X25_Y20_N19
\dht22_one_wire|state.ST_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|Selector0~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|state.ST_IDLE~q\);

-- Location: LCCOMB_X26_Y20_N18
\dht22_one_wire|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector1~0_combout\ = (!\dht22_one_wire|state.ST_IDLE~q\ & !\en_dht22~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|state.ST_IDLE~q\,
	datad => \en_dht22~q\,
	combout => \dht22_one_wire|Selector1~0_combout\);

-- Location: LCCOMB_X25_Y20_N4
\dht22_one_wire|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector1~2_combout\ = (\dht22_one_wire|Selector1~1_combout\ & (((\dht22_one_wire|state.ST_START~q\ & !\dht22_one_wire|Selector7~8_combout\)))) # (!\dht22_one_wire|Selector1~1_combout\ & ((\dht22_one_wire|Selector1~0_combout\) # 
-- ((\dht22_one_wire|state.ST_START~q\ & !\dht22_one_wire|Selector7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Selector1~1_combout\,
	datab => \dht22_one_wire|Selector1~0_combout\,
	datac => \dht22_one_wire|state.ST_START~q\,
	datad => \dht22_one_wire|Selector7~8_combout\,
	combout => \dht22_one_wire|Selector1~2_combout\);

-- Location: FF_X25_Y20_N5
\dht22_one_wire|state.ST_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|Selector1~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|state.ST_START~q\);

-- Location: LCCOMB_X25_Y19_N30
\dht22_one_wire|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector8~0_combout\ = (\dht22_one_wire|state.ST_START~q\ & (((!\dht22_one_wire|Equal1~1_combout\) # (!\dht22_one_wire|Equal1~3_combout\)) # (!\dht22_one_wire|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Equal1~5_combout\,
	datab => \dht22_one_wire|Equal1~3_combout\,
	datac => \dht22_one_wire|state.ST_START~q\,
	datad => \dht22_one_wire|Equal1~1_combout\,
	combout => \dht22_one_wire|Selector8~0_combout\);

-- Location: LCCOMB_X25_Y19_N14
\dht22_one_wire|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal2~4_combout\ = (\dht22_one_wire|Equal2~3_combout\ & (!\dht22_one_wire|clks\(11) & \dht22_one_wire|Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Equal2~3_combout\,
	datac => \dht22_one_wire|clks\(11),
	datad => \dht22_one_wire|Equal2~2_combout\,
	combout => \dht22_one_wire|Equal2~4_combout\);

-- Location: LCCOMB_X25_Y20_N20
\dht22_one_wire|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector8~1_combout\ = (\dht22_one_wire|state.ST_SAMPLE~q\) # ((\dht22_one_wire|state.ST_DONE~q\) # ((!\en_dht22~q\ & !\dht22_one_wire|state.ST_IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_SAMPLE~q\,
	datab => \en_dht22~q\,
	datac => \dht22_one_wire|state.ST_DONE~q\,
	datad => \dht22_one_wire|state.ST_IDLE~q\,
	combout => \dht22_one_wire|Selector8~1_combout\);

-- Location: LCCOMB_X25_Y19_N26
\dht22_one_wire|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal3~0_combout\ = (\dht22_one_wire|clks\(5) & (!\dht22_one_wire|clks\(7) & \dht22_one_wire|clks\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|clks\(5),
	datac => \dht22_one_wire|clks\(7),
	datad => \dht22_one_wire|clks\(10),
	combout => \dht22_one_wire|Equal3~0_combout\);

-- Location: LCCOMB_X25_Y19_N8
\dht22_one_wire|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal3~1_combout\ = (\dht22_one_wire|LessThan1~1_combout\ & (\dht22_one_wire|Equal2~0_combout\ & (\dht22_one_wire|Equal3~0_combout\ & \dht22_one_wire|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|LessThan1~1_combout\,
	datab => \dht22_one_wire|Equal2~0_combout\,
	datac => \dht22_one_wire|Equal3~0_combout\,
	datad => \dht22_one_wire|Equal1~1_combout\,
	combout => \dht22_one_wire|Equal3~1_combout\);

-- Location: LCCOMB_X25_Y18_N2
\dht22_one_wire|Selector7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector7~9_combout\ = (\dht22_one_wire|state.ST_PROCESS_DATA~q\ & (((\dht22_one_wire|bit_count\(4)) # (!\dht22_one_wire|Equal4~0_combout\)) # (!\dht22_one_wire|bit_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_PROCESS_DATA~q\,
	datab => \dht22_one_wire|bit_count\(5),
	datac => \dht22_one_wire|Equal4~0_combout\,
	datad => \dht22_one_wire|bit_count\(4),
	combout => \dht22_one_wire|Selector7~9_combout\);

-- Location: LCCOMB_X25_Y19_N28
\dht22_one_wire|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector8~2_combout\ = (\dht22_one_wire|Selector8~1_combout\) # ((\dht22_one_wire|Selector7~9_combout\) # ((\dht22_one_wire|state.ST_ACK~q\ & !\dht22_one_wire|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_ACK~q\,
	datab => \dht22_one_wire|Selector8~1_combout\,
	datac => \dht22_one_wire|Equal3~1_combout\,
	datad => \dht22_one_wire|Selector7~9_combout\,
	combout => \dht22_one_wire|Selector8~2_combout\);

-- Location: LCCOMB_X25_Y19_N20
\dht22_one_wire|Selector8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector8~3_combout\ = (!\dht22_one_wire|Selector8~0_combout\ & (!\dht22_one_wire|Selector8~2_combout\ & ((\dht22_one_wire|Equal2~4_combout\) # (!\dht22_one_wire|state.ST_PRE_ACK~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Selector8~0_combout\,
	datab => \dht22_one_wire|state.ST_PRE_ACK~q\,
	datac => \dht22_one_wire|Equal2~4_combout\,
	datad => \dht22_one_wire|Selector8~2_combout\,
	combout => \dht22_one_wire|Selector8~3_combout\);

-- Location: FF_X24_Y19_N13
\dht22_one_wire|clks[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks[0]~20_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \dht22_one_wire|Selector8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks\(0));

-- Location: LCCOMB_X24_Y19_N14
\dht22_one_wire|clks[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks[1]~22_combout\ = (\dht22_one_wire|clks\(1) & (!\dht22_one_wire|clks[0]~21\)) # (!\dht22_one_wire|clks\(1) & ((\dht22_one_wire|clks[0]~21\) # (GND)))
-- \dht22_one_wire|clks[1]~23\ = CARRY((!\dht22_one_wire|clks[0]~21\) # (!\dht22_one_wire|clks\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|clks\(1),
	datad => VCC,
	cin => \dht22_one_wire|clks[0]~21\,
	combout => \dht22_one_wire|clks[1]~22_combout\,
	cout => \dht22_one_wire|clks[1]~23\);

-- Location: FF_X24_Y19_N15
\dht22_one_wire|clks[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks[1]~22_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \dht22_one_wire|Selector8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks\(1));

-- Location: LCCOMB_X24_Y19_N16
\dht22_one_wire|clks[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks[2]~24_combout\ = (\dht22_one_wire|clks\(2) & (\dht22_one_wire|clks[1]~23\ $ (GND))) # (!\dht22_one_wire|clks\(2) & (!\dht22_one_wire|clks[1]~23\ & VCC))
-- \dht22_one_wire|clks[2]~25\ = CARRY((\dht22_one_wire|clks\(2) & !\dht22_one_wire|clks[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|clks\(2),
	datad => VCC,
	cin => \dht22_one_wire|clks[1]~23\,
	combout => \dht22_one_wire|clks[2]~24_combout\,
	cout => \dht22_one_wire|clks[2]~25\);

-- Location: FF_X24_Y19_N17
\dht22_one_wire|clks[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks[2]~24_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \dht22_one_wire|Selector8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks\(2));

-- Location: LCCOMB_X24_Y19_N18
\dht22_one_wire|clks[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks[3]~26_combout\ = (\dht22_one_wire|clks\(3) & (!\dht22_one_wire|clks[2]~25\)) # (!\dht22_one_wire|clks\(3) & ((\dht22_one_wire|clks[2]~25\) # (GND)))
-- \dht22_one_wire|clks[3]~27\ = CARRY((!\dht22_one_wire|clks[2]~25\) # (!\dht22_one_wire|clks\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|clks\(3),
	datad => VCC,
	cin => \dht22_one_wire|clks[2]~25\,
	combout => \dht22_one_wire|clks[3]~26_combout\,
	cout => \dht22_one_wire|clks[3]~27\);

-- Location: FF_X24_Y19_N19
\dht22_one_wire|clks[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks[3]~26_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \dht22_one_wire|Selector8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks\(3));

-- Location: LCCOMB_X24_Y19_N20
\dht22_one_wire|clks[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks[4]~28_combout\ = (\dht22_one_wire|clks\(4) & (\dht22_one_wire|clks[3]~27\ $ (GND))) # (!\dht22_one_wire|clks\(4) & (!\dht22_one_wire|clks[3]~27\ & VCC))
-- \dht22_one_wire|clks[4]~29\ = CARRY((\dht22_one_wire|clks\(4) & !\dht22_one_wire|clks[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|clks\(4),
	datad => VCC,
	cin => \dht22_one_wire|clks[3]~27\,
	combout => \dht22_one_wire|clks[4]~28_combout\,
	cout => \dht22_one_wire|clks[4]~29\);

-- Location: FF_X24_Y19_N21
\dht22_one_wire|clks[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks[4]~28_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \dht22_one_wire|Selector8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks\(4));

-- Location: LCCOMB_X24_Y19_N22
\dht22_one_wire|clks[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks[5]~30_combout\ = (\dht22_one_wire|clks\(5) & (!\dht22_one_wire|clks[4]~29\)) # (!\dht22_one_wire|clks\(5) & ((\dht22_one_wire|clks[4]~29\) # (GND)))
-- \dht22_one_wire|clks[5]~31\ = CARRY((!\dht22_one_wire|clks[4]~29\) # (!\dht22_one_wire|clks\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(5),
	datad => VCC,
	cin => \dht22_one_wire|clks[4]~29\,
	combout => \dht22_one_wire|clks[5]~30_combout\,
	cout => \dht22_one_wire|clks[5]~31\);

-- Location: FF_X24_Y19_N23
\dht22_one_wire|clks[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks[5]~30_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \dht22_one_wire|Selector8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks\(5));

-- Location: LCCOMB_X24_Y19_N24
\dht22_one_wire|clks[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks[6]~32_combout\ = (\dht22_one_wire|clks\(6) & (\dht22_one_wire|clks[5]~31\ $ (GND))) # (!\dht22_one_wire|clks\(6) & (!\dht22_one_wire|clks[5]~31\ & VCC))
-- \dht22_one_wire|clks[6]~33\ = CARRY((\dht22_one_wire|clks\(6) & !\dht22_one_wire|clks[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|clks\(6),
	datad => VCC,
	cin => \dht22_one_wire|clks[5]~31\,
	combout => \dht22_one_wire|clks[6]~32_combout\,
	cout => \dht22_one_wire|clks[6]~33\);

-- Location: FF_X24_Y19_N25
\dht22_one_wire|clks[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks[6]~32_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \dht22_one_wire|Selector8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks\(6));

-- Location: LCCOMB_X24_Y19_N26
\dht22_one_wire|clks[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks[7]~34_combout\ = (\dht22_one_wire|clks\(7) & (!\dht22_one_wire|clks[6]~33\)) # (!\dht22_one_wire|clks\(7) & ((\dht22_one_wire|clks[6]~33\) # (GND)))
-- \dht22_one_wire|clks[7]~35\ = CARRY((!\dht22_one_wire|clks[6]~33\) # (!\dht22_one_wire|clks\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(7),
	datad => VCC,
	cin => \dht22_one_wire|clks[6]~33\,
	combout => \dht22_one_wire|clks[7]~34_combout\,
	cout => \dht22_one_wire|clks[7]~35\);

-- Location: FF_X24_Y19_N27
\dht22_one_wire|clks[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks[7]~34_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \dht22_one_wire|Selector8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks\(7));

-- Location: LCCOMB_X24_Y19_N28
\dht22_one_wire|clks[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks[8]~36_combout\ = (\dht22_one_wire|clks\(8) & (\dht22_one_wire|clks[7]~35\ $ (GND))) # (!\dht22_one_wire|clks\(8) & (!\dht22_one_wire|clks[7]~35\ & VCC))
-- \dht22_one_wire|clks[8]~37\ = CARRY((\dht22_one_wire|clks\(8) & !\dht22_one_wire|clks[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|clks\(8),
	datad => VCC,
	cin => \dht22_one_wire|clks[7]~35\,
	combout => \dht22_one_wire|clks[8]~36_combout\,
	cout => \dht22_one_wire|clks[8]~37\);

-- Location: FF_X24_Y19_N29
\dht22_one_wire|clks[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks[8]~36_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \dht22_one_wire|Selector8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks\(8));

-- Location: LCCOMB_X24_Y19_N30
\dht22_one_wire|clks[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks[9]~38_combout\ = (\dht22_one_wire|clks\(9) & (!\dht22_one_wire|clks[8]~37\)) # (!\dht22_one_wire|clks\(9) & ((\dht22_one_wire|clks[8]~37\) # (GND)))
-- \dht22_one_wire|clks[9]~39\ = CARRY((!\dht22_one_wire|clks[8]~37\) # (!\dht22_one_wire|clks\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(9),
	datad => VCC,
	cin => \dht22_one_wire|clks[8]~37\,
	combout => \dht22_one_wire|clks[9]~38_combout\,
	cout => \dht22_one_wire|clks[9]~39\);

-- Location: FF_X24_Y19_N31
\dht22_one_wire|clks[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks[9]~38_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \dht22_one_wire|Selector8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks\(9));

-- Location: FF_X24_Y18_N1
\dht22_one_wire|clks[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks[10]~40_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \dht22_one_wire|Selector8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks\(10));

-- Location: LCCOMB_X24_Y19_N2
\dht22_one_wire|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal2~3_combout\ = (\dht22_one_wire|clks\(10) & (\dht22_one_wire|clks\(2) & (\dht22_one_wire|clks\(9) & \dht22_one_wire|clks\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(10),
	datab => \dht22_one_wire|clks\(2),
	datac => \dht22_one_wire|clks\(9),
	datad => \dht22_one_wire|clks\(3),
	combout => \dht22_one_wire|Equal2~3_combout\);

-- Location: LCCOMB_X25_Y19_N10
\dht22_one_wire|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector3~0_combout\ = (\dht22_one_wire|Equal2~3_combout\ & (\dht22_one_wire|state.ST_PRE_ACK~q\ & (!\dht22_one_wire|clks\(11) & \dht22_one_wire|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Equal2~3_combout\,
	datab => \dht22_one_wire|state.ST_PRE_ACK~q\,
	datac => \dht22_one_wire|clks\(11),
	datad => \dht22_one_wire|Equal2~2_combout\,
	combout => \dht22_one_wire|Selector3~0_combout\);

-- Location: LCCOMB_X25_Y20_N10
\dht22_one_wire|Selector7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector7~5_combout\ = (\dht22_one_wire|state.ST_PROCESS_DATA~q\ & (!\dht22_one_wire|state_transition~0_combout\)) # (!\dht22_one_wire|state.ST_PROCESS_DATA~q\ & (((\dht22_one_wire|state.ST_ACK~q\ & \dht22_one_wire|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state_transition~0_combout\,
	datab => \dht22_one_wire|state.ST_PROCESS_DATA~q\,
	datac => \dht22_one_wire|state.ST_ACK~q\,
	datad => \dht22_one_wire|Equal3~1_combout\,
	combout => \dht22_one_wire|Selector7~5_combout\);

-- Location: LCCOMB_X25_Y20_N22
\dht22_one_wire|Selector7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector7~6_combout\ = (\dht22_one_wire|Selector3~0_combout\) # (((\dht22_one_wire|Selector7~4_combout\) # (\dht22_one_wire|Selector7~5_combout\)) # (!\dht22_one_wire|Selector4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Selector3~0_combout\,
	datab => \dht22_one_wire|Selector4~0_combout\,
	datac => \dht22_one_wire|Selector7~4_combout\,
	datad => \dht22_one_wire|Selector7~5_combout\,
	combout => \dht22_one_wire|Selector7~6_combout\);

-- Location: LCCOMB_X25_Y20_N24
\dht22_one_wire|Selector7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector7~7_combout\ = (\dht22_one_wire|Selector7~6_combout\ & (\dht22_one_wire|Selector7~4_combout\ & ((!\en_dht22~q\) # (!\dht22_one_wire|state.ST_CHECK~q\)))) # (!\dht22_one_wire|Selector7~6_combout\ & 
-- (((\dht22_one_wire|state.ST_CHECK~q\ & !\en_dht22~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Selector7~6_combout\,
	datab => \dht22_one_wire|Selector7~4_combout\,
	datac => \dht22_one_wire|state.ST_CHECK~q\,
	datad => \en_dht22~q\,
	combout => \dht22_one_wire|Selector7~7_combout\);

-- Location: FF_X25_Y20_N25
\dht22_one_wire|state.ST_CHECK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|Selector7~7_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|state.ST_CHECK~q\);

-- Location: LCCOMB_X25_Y20_N12
\dht22_one_wire|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector1~1_combout\ = ((\dht22_one_wire|state.ST_CHECK~q\ & \en_dht22~q\)) # (!\dht22_one_wire|Selector7~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|state.ST_CHECK~q\,
	datac => \dht22_one_wire|Selector7~6_combout\,
	datad => \en_dht22~q\,
	combout => \dht22_one_wire|Selector1~1_combout\);

-- Location: LCCOMB_X25_Y20_N0
\dht22_one_wire|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector5~0_combout\ = (\dht22_one_wire|Selector1~1_combout\ & (((\dht22_one_wire|state.ST_PROCESS_DATA~q\ & !\dht22_one_wire|Selector7~8_combout\)))) # (!\dht22_one_wire|Selector1~1_combout\ & ((\dht22_one_wire|state.ST_SAMPLE~q\) # 
-- ((\dht22_one_wire|state.ST_PROCESS_DATA~q\ & !\dht22_one_wire|Selector7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Selector1~1_combout\,
	datab => \dht22_one_wire|state.ST_SAMPLE~q\,
	datac => \dht22_one_wire|state.ST_PROCESS_DATA~q\,
	datad => \dht22_one_wire|Selector7~8_combout\,
	combout => \dht22_one_wire|Selector5~0_combout\);

-- Location: FF_X25_Y20_N1
\dht22_one_wire|state.ST_PROCESS_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|Selector5~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|state.ST_PROCESS_DATA~q\);

-- Location: LCCOMB_X26_Y20_N2
\dht22_one_wire|WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|WideOr2~1_combout\ = (!\dht22_one_wire|state.ST_SAMPLE~q\ & \dht22_one_wire|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_one_wire|state.ST_SAMPLE~q\,
	datad => \dht22_one_wire|WideOr2~0_combout\,
	combout => \dht22_one_wire|WideOr2~1_combout\);

-- Location: LCCOMB_X24_Y19_N8
\dht22_one_wire|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|LessThan1~2_combout\ = ((!\dht22_one_wire|clks\(8)) # (!\dht22_one_wire|clks\(7))) # (!\dht22_one_wire|clks\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|clks\(6),
	datac => \dht22_one_wire|clks\(7),
	datad => \dht22_one_wire|clks\(8),
	combout => \dht22_one_wire|LessThan1~2_combout\);

-- Location: LCCOMB_X24_Y19_N6
\dht22_one_wire|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|LessThan1~3_combout\ = (!\dht22_one_wire|clks\(2) & (!\dht22_one_wire|clks\(3) & ((!\dht22_one_wire|clks\(1)) # (!\dht22_one_wire|clks\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(0),
	datab => \dht22_one_wire|clks\(2),
	datac => \dht22_one_wire|clks\(1),
	datad => \dht22_one_wire|clks\(3),
	combout => \dht22_one_wire|LessThan1~3_combout\);

-- Location: LCCOMB_X25_Y19_N6
\dht22_one_wire|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|LessThan1~4_combout\ = (\dht22_one_wire|LessThan1~2_combout\) # ((\dht22_one_wire|LessThan1~3_combout\ & (!\dht22_one_wire|clks\(4) & !\dht22_one_wire|clks\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|LessThan1~2_combout\,
	datab => \dht22_one_wire|LessThan1~3_combout\,
	datac => \dht22_one_wire|clks\(4),
	datad => \dht22_one_wire|clks\(5),
	combout => \dht22_one_wire|LessThan1~4_combout\);

-- Location: LCCOMB_X25_Y19_N24
\dht22_one_wire|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|LessThan1~5_combout\ = ((\dht22_one_wire|LessThan1~4_combout\ & (!\dht22_one_wire|clks\(9) & !\dht22_one_wire|clks\(10)))) # (!\dht22_one_wire|clks\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|LessThan1~4_combout\,
	datab => \dht22_one_wire|clks\(9),
	datac => \dht22_one_wire|clks\(11),
	datad => \dht22_one_wire|clks\(10),
	combout => \dht22_one_wire|LessThan1~5_combout\);

-- Location: LCCOMB_X25_Y19_N22
\dht22_one_wire|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector15~0_combout\ = (\dht22_one_wire|state.ST_DONE~q\ & (((\dht22_one_wire|clks\(12)) # (!\dht22_one_wire|LessThan1~5_combout\)) # (!\dht22_one_wire|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|LessThan1~1_combout\,
	datab => \dht22_one_wire|LessThan1~5_combout\,
	datac => \dht22_one_wire|clks\(12),
	datad => \dht22_one_wire|state.ST_DONE~q\,
	combout => \dht22_one_wire|Selector15~0_combout\);

-- Location: LCCOMB_X26_Y20_N20
\dht22_one_wire|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector15~1_combout\ = (\dht22_one_wire|Selector15~0_combout\) # ((\dht22_one_wire|Selector2~0_combout\) # ((!\dht22_one_wire|state.ST_IDLE~q\ & !\en_dht22~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Selector15~0_combout\,
	datab => \dht22_one_wire|state.ST_IDLE~q\,
	datac => \dht22_one_wire|Selector2~0_combout\,
	datad => \en_dht22~q\,
	combout => \dht22_one_wire|Selector15~1_combout\);

-- Location: LCCOMB_X26_Y20_N6
\dht22_one_wire|io~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|io~1_combout\ = (\dht22_one_wire|Selector15~1_combout\ & ((\dht22_one_wire|state.ST_PROCESS_DATA~q\) # ((!\dht22_one_wire|WideOr2~1_combout\)))) # (!\dht22_one_wire|Selector15~1_combout\ & (((\dht22_one_wire|io~en_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_PROCESS_DATA~q\,
	datab => \dht22_one_wire|WideOr2~1_combout\,
	datac => \dht22_one_wire|io~en_q\,
	datad => \dht22_one_wire|Selector15~1_combout\,
	combout => \dht22_one_wire|io~1_combout\);

-- Location: FF_X26_Y20_N7
\dht22_one_wire|io~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|io~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|io~en_q\);

-- Location: LCCOMB_X25_Y18_N8
\dht22_one_wire|Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~10_combout\ = (!\dht22_one_wire|bit_count\(1) & \dht22_one_wire|bit_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|bit_count\(1),
	datac => \dht22_one_wire|bit_count\(0),
	combout => \dht22_one_wire|Decoder0~10_combout\);

-- Location: LCCOMB_X26_Y18_N20
\dht22_one_wire|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal4~1_combout\ = (!\dht22_one_wire|bit_count\(4) & \dht22_one_wire|bit_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_one_wire|bit_count\(4),
	datad => \dht22_one_wire|bit_count\(5),
	combout => \dht22_one_wire|Equal4~1_combout\);

-- Location: LCCOMB_X26_Y18_N18
\dht22_one_wire|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~0_combout\ = (\dht22_one_wire|state.ST_PROCESS_DATA~q\ & (!\dht22_one_wire|bit_count\(3) & (\dht22_one_wire|data_buff[32]~0_combout\ & \dht22_one_wire|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_PROCESS_DATA~q\,
	datab => \dht22_one_wire|bit_count\(3),
	datac => \dht22_one_wire|data_buff[32]~0_combout\,
	datad => \dht22_one_wire|Equal4~1_combout\,
	combout => \dht22_one_wire|Decoder0~0_combout\);

-- Location: LCCOMB_X26_Y18_N16
\dht22_one_wire|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~1_combout\ = (\dht22_one_wire|bit_count\(2) & \dht22_one_wire|Decoder0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|bit_count\(2),
	datad => \dht22_one_wire|Decoder0~0_combout\,
	combout => \dht22_one_wire|Decoder0~1_combout\);

-- Location: LCCOMB_X26_Y20_N28
\dht22_one_wire|clk_stamp[19]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clk_stamp[19]~0_combout\ = (\dht22_one_wire|new_io~q\ & (\dht22_one_wire|state.ST_PROCESS_DATA~q\ & !\dht22_one_wire|old_io~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|new_io~q\,
	datac => \dht22_one_wire|state.ST_PROCESS_DATA~q\,
	datad => \dht22_one_wire|old_io~q\,
	combout => \dht22_one_wire|clk_stamp[19]~0_combout\);

-- Location: FF_X23_Y18_N19
\dht22_one_wire|clk_stamp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks\(19),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|clk_stamp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clk_stamp\(19));

-- Location: FF_X23_Y18_N17
\dht22_one_wire|clk_stamp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks\(18),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|clk_stamp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clk_stamp\(18));

-- Location: FF_X23_Y18_N15
\dht22_one_wire|clk_stamp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks\(17),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|clk_stamp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clk_stamp\(17));

-- Location: FF_X23_Y18_N13
\dht22_one_wire|clk_stamp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks\(16),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|clk_stamp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clk_stamp\(16));

-- Location: FF_X23_Y18_N11
\dht22_one_wire|clk_stamp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks\(15),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|clk_stamp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clk_stamp\(15));

-- Location: FF_X23_Y18_N9
\dht22_one_wire|clk_stamp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks\(14),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|clk_stamp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clk_stamp\(14));

-- Location: FF_X23_Y18_N7
\dht22_one_wire|clk_stamp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks\(13),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|clk_stamp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clk_stamp\(13));

-- Location: FF_X23_Y18_N5
\dht22_one_wire|clk_stamp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks\(12),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|clk_stamp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clk_stamp\(12));

-- Location: FF_X23_Y18_N3
\dht22_one_wire|clk_stamp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks\(11),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|clk_stamp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clk_stamp\(11));

-- Location: FF_X23_Y18_N1
\dht22_one_wire|clk_stamp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks\(10),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|clk_stamp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clk_stamp\(10));

-- Location: FF_X23_Y19_N31
\dht22_one_wire|clk_stamp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks\(9),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|clk_stamp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clk_stamp\(9));

-- Location: FF_X23_Y19_N29
\dht22_one_wire|clk_stamp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks\(8),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|clk_stamp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clk_stamp\(8));

-- Location: FF_X23_Y19_N27
\dht22_one_wire|clk_stamp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks\(7),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|clk_stamp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clk_stamp\(7));

-- Location: FF_X23_Y19_N25
\dht22_one_wire|clk_stamp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks\(6),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|clk_stamp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clk_stamp\(6));

-- Location: FF_X23_Y19_N23
\dht22_one_wire|clk_stamp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks\(5),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|clk_stamp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clk_stamp\(5));

-- Location: FF_X23_Y19_N21
\dht22_one_wire|clk_stamp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks\(4),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|clk_stamp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clk_stamp\(4));

-- Location: FF_X23_Y19_N19
\dht22_one_wire|clk_stamp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks\(3),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|clk_stamp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clk_stamp\(3));

-- Location: FF_X23_Y19_N17
\dht22_one_wire|clk_stamp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks\(2),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|clk_stamp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clk_stamp\(2));

-- Location: FF_X23_Y19_N15
\dht22_one_wire|clk_stamp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks\(1),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|clk_stamp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clk_stamp\(1));

-- Location: FF_X23_Y19_N13
\dht22_one_wire|clk_stamp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks\(0),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|clk_stamp[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clk_stamp\(0));

-- Location: LCCOMB_X23_Y19_N12
\dht22_one_wire|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add1~0_combout\ = (\dht22_one_wire|clk_stamp\(0) & (\dht22_one_wire|clks\(0) $ (VCC))) # (!\dht22_one_wire|clk_stamp\(0) & ((\dht22_one_wire|clks\(0)) # (GND)))
-- \dht22_one_wire|Add1~1\ = CARRY((\dht22_one_wire|clks\(0)) # (!\dht22_one_wire|clk_stamp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clk_stamp\(0),
	datab => \dht22_one_wire|clks\(0),
	datad => VCC,
	combout => \dht22_one_wire|Add1~0_combout\,
	cout => \dht22_one_wire|Add1~1\);

-- Location: LCCOMB_X23_Y19_N14
\dht22_one_wire|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add1~2_combout\ = (\dht22_one_wire|clk_stamp\(1) & ((\dht22_one_wire|clks\(1) & (!\dht22_one_wire|Add1~1\)) # (!\dht22_one_wire|clks\(1) & ((\dht22_one_wire|Add1~1\) # (GND))))) # (!\dht22_one_wire|clk_stamp\(1) & 
-- ((\dht22_one_wire|clks\(1) & (\dht22_one_wire|Add1~1\ & VCC)) # (!\dht22_one_wire|clks\(1) & (!\dht22_one_wire|Add1~1\))))
-- \dht22_one_wire|Add1~3\ = CARRY((\dht22_one_wire|clk_stamp\(1) & ((!\dht22_one_wire|Add1~1\) # (!\dht22_one_wire|clks\(1)))) # (!\dht22_one_wire|clk_stamp\(1) & (!\dht22_one_wire|clks\(1) & !\dht22_one_wire|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clk_stamp\(1),
	datab => \dht22_one_wire|clks\(1),
	datad => VCC,
	cin => \dht22_one_wire|Add1~1\,
	combout => \dht22_one_wire|Add1~2_combout\,
	cout => \dht22_one_wire|Add1~3\);

-- Location: LCCOMB_X23_Y19_N16
\dht22_one_wire|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add1~4_combout\ = ((\dht22_one_wire|clks\(2) $ (\dht22_one_wire|clk_stamp\(2) $ (\dht22_one_wire|Add1~3\)))) # (GND)
-- \dht22_one_wire|Add1~5\ = CARRY((\dht22_one_wire|clks\(2) & ((!\dht22_one_wire|Add1~3\) # (!\dht22_one_wire|clk_stamp\(2)))) # (!\dht22_one_wire|clks\(2) & (!\dht22_one_wire|clk_stamp\(2) & !\dht22_one_wire|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(2),
	datab => \dht22_one_wire|clk_stamp\(2),
	datad => VCC,
	cin => \dht22_one_wire|Add1~3\,
	combout => \dht22_one_wire|Add1~4_combout\,
	cout => \dht22_one_wire|Add1~5\);

-- Location: LCCOMB_X23_Y19_N18
\dht22_one_wire|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add1~6_combout\ = (\dht22_one_wire|clks\(3) & ((\dht22_one_wire|clk_stamp\(3) & (!\dht22_one_wire|Add1~5\)) # (!\dht22_one_wire|clk_stamp\(3) & (\dht22_one_wire|Add1~5\ & VCC)))) # (!\dht22_one_wire|clks\(3) & 
-- ((\dht22_one_wire|clk_stamp\(3) & ((\dht22_one_wire|Add1~5\) # (GND))) # (!\dht22_one_wire|clk_stamp\(3) & (!\dht22_one_wire|Add1~5\))))
-- \dht22_one_wire|Add1~7\ = CARRY((\dht22_one_wire|clks\(3) & (\dht22_one_wire|clk_stamp\(3) & !\dht22_one_wire|Add1~5\)) # (!\dht22_one_wire|clks\(3) & ((\dht22_one_wire|clk_stamp\(3)) # (!\dht22_one_wire|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(3),
	datab => \dht22_one_wire|clk_stamp\(3),
	datad => VCC,
	cin => \dht22_one_wire|Add1~5\,
	combout => \dht22_one_wire|Add1~6_combout\,
	cout => \dht22_one_wire|Add1~7\);

-- Location: LCCOMB_X23_Y19_N20
\dht22_one_wire|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add1~8_combout\ = ((\dht22_one_wire|clks\(4) $ (\dht22_one_wire|clk_stamp\(4) $ (\dht22_one_wire|Add1~7\)))) # (GND)
-- \dht22_one_wire|Add1~9\ = CARRY((\dht22_one_wire|clks\(4) & ((!\dht22_one_wire|Add1~7\) # (!\dht22_one_wire|clk_stamp\(4)))) # (!\dht22_one_wire|clks\(4) & (!\dht22_one_wire|clk_stamp\(4) & !\dht22_one_wire|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(4),
	datab => \dht22_one_wire|clk_stamp\(4),
	datad => VCC,
	cin => \dht22_one_wire|Add1~7\,
	combout => \dht22_one_wire|Add1~8_combout\,
	cout => \dht22_one_wire|Add1~9\);

-- Location: LCCOMB_X23_Y19_N22
\dht22_one_wire|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add1~10_combout\ = (\dht22_one_wire|clks\(5) & ((\dht22_one_wire|clk_stamp\(5) & (!\dht22_one_wire|Add1~9\)) # (!\dht22_one_wire|clk_stamp\(5) & (\dht22_one_wire|Add1~9\ & VCC)))) # (!\dht22_one_wire|clks\(5) & 
-- ((\dht22_one_wire|clk_stamp\(5) & ((\dht22_one_wire|Add1~9\) # (GND))) # (!\dht22_one_wire|clk_stamp\(5) & (!\dht22_one_wire|Add1~9\))))
-- \dht22_one_wire|Add1~11\ = CARRY((\dht22_one_wire|clks\(5) & (\dht22_one_wire|clk_stamp\(5) & !\dht22_one_wire|Add1~9\)) # (!\dht22_one_wire|clks\(5) & ((\dht22_one_wire|clk_stamp\(5)) # (!\dht22_one_wire|Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(5),
	datab => \dht22_one_wire|clk_stamp\(5),
	datad => VCC,
	cin => \dht22_one_wire|Add1~9\,
	combout => \dht22_one_wire|Add1~10_combout\,
	cout => \dht22_one_wire|Add1~11\);

-- Location: LCCOMB_X23_Y19_N24
\dht22_one_wire|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add1~12_combout\ = ((\dht22_one_wire|clks\(6) $ (\dht22_one_wire|clk_stamp\(6) $ (\dht22_one_wire|Add1~11\)))) # (GND)
-- \dht22_one_wire|Add1~13\ = CARRY((\dht22_one_wire|clks\(6) & ((!\dht22_one_wire|Add1~11\) # (!\dht22_one_wire|clk_stamp\(6)))) # (!\dht22_one_wire|clks\(6) & (!\dht22_one_wire|clk_stamp\(6) & !\dht22_one_wire|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(6),
	datab => \dht22_one_wire|clk_stamp\(6),
	datad => VCC,
	cin => \dht22_one_wire|Add1~11\,
	combout => \dht22_one_wire|Add1~12_combout\,
	cout => \dht22_one_wire|Add1~13\);

-- Location: LCCOMB_X23_Y19_N26
\dht22_one_wire|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add1~14_combout\ = (\dht22_one_wire|clks\(7) & ((\dht22_one_wire|clk_stamp\(7) & (!\dht22_one_wire|Add1~13\)) # (!\dht22_one_wire|clk_stamp\(7) & (\dht22_one_wire|Add1~13\ & VCC)))) # (!\dht22_one_wire|clks\(7) & 
-- ((\dht22_one_wire|clk_stamp\(7) & ((\dht22_one_wire|Add1~13\) # (GND))) # (!\dht22_one_wire|clk_stamp\(7) & (!\dht22_one_wire|Add1~13\))))
-- \dht22_one_wire|Add1~15\ = CARRY((\dht22_one_wire|clks\(7) & (\dht22_one_wire|clk_stamp\(7) & !\dht22_one_wire|Add1~13\)) # (!\dht22_one_wire|clks\(7) & ((\dht22_one_wire|clk_stamp\(7)) # (!\dht22_one_wire|Add1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(7),
	datab => \dht22_one_wire|clk_stamp\(7),
	datad => VCC,
	cin => \dht22_one_wire|Add1~13\,
	combout => \dht22_one_wire|Add1~14_combout\,
	cout => \dht22_one_wire|Add1~15\);

-- Location: LCCOMB_X23_Y19_N28
\dht22_one_wire|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add1~16_combout\ = ((\dht22_one_wire|clks\(8) $ (\dht22_one_wire|clk_stamp\(8) $ (\dht22_one_wire|Add1~15\)))) # (GND)
-- \dht22_one_wire|Add1~17\ = CARRY((\dht22_one_wire|clks\(8) & ((!\dht22_one_wire|Add1~15\) # (!\dht22_one_wire|clk_stamp\(8)))) # (!\dht22_one_wire|clks\(8) & (!\dht22_one_wire|clk_stamp\(8) & !\dht22_one_wire|Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(8),
	datab => \dht22_one_wire|clk_stamp\(8),
	datad => VCC,
	cin => \dht22_one_wire|Add1~15\,
	combout => \dht22_one_wire|Add1~16_combout\,
	cout => \dht22_one_wire|Add1~17\);

-- Location: LCCOMB_X23_Y19_N30
\dht22_one_wire|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add1~18_combout\ = (\dht22_one_wire|clk_stamp\(9) & ((\dht22_one_wire|clks\(9) & (!\dht22_one_wire|Add1~17\)) # (!\dht22_one_wire|clks\(9) & ((\dht22_one_wire|Add1~17\) # (GND))))) # (!\dht22_one_wire|clk_stamp\(9) & 
-- ((\dht22_one_wire|clks\(9) & (\dht22_one_wire|Add1~17\ & VCC)) # (!\dht22_one_wire|clks\(9) & (!\dht22_one_wire|Add1~17\))))
-- \dht22_one_wire|Add1~19\ = CARRY((\dht22_one_wire|clk_stamp\(9) & ((!\dht22_one_wire|Add1~17\) # (!\dht22_one_wire|clks\(9)))) # (!\dht22_one_wire|clk_stamp\(9) & (!\dht22_one_wire|clks\(9) & !\dht22_one_wire|Add1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clk_stamp\(9),
	datab => \dht22_one_wire|clks\(9),
	datad => VCC,
	cin => \dht22_one_wire|Add1~17\,
	combout => \dht22_one_wire|Add1~18_combout\,
	cout => \dht22_one_wire|Add1~19\);

-- Location: LCCOMB_X23_Y18_N0
\dht22_one_wire|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add1~20_combout\ = ((\dht22_one_wire|clk_stamp\(10) $ (\dht22_one_wire|clks\(10) $ (\dht22_one_wire|Add1~19\)))) # (GND)
-- \dht22_one_wire|Add1~21\ = CARRY((\dht22_one_wire|clk_stamp\(10) & (\dht22_one_wire|clks\(10) & !\dht22_one_wire|Add1~19\)) # (!\dht22_one_wire|clk_stamp\(10) & ((\dht22_one_wire|clks\(10)) # (!\dht22_one_wire|Add1~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clk_stamp\(10),
	datab => \dht22_one_wire|clks\(10),
	datad => VCC,
	cin => \dht22_one_wire|Add1~19\,
	combout => \dht22_one_wire|Add1~20_combout\,
	cout => \dht22_one_wire|Add1~21\);

-- Location: LCCOMB_X23_Y18_N2
\dht22_one_wire|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add1~22_combout\ = (\dht22_one_wire|clk_stamp\(11) & ((\dht22_one_wire|clks\(11) & (!\dht22_one_wire|Add1~21\)) # (!\dht22_one_wire|clks\(11) & ((\dht22_one_wire|Add1~21\) # (GND))))) # (!\dht22_one_wire|clk_stamp\(11) & 
-- ((\dht22_one_wire|clks\(11) & (\dht22_one_wire|Add1~21\ & VCC)) # (!\dht22_one_wire|clks\(11) & (!\dht22_one_wire|Add1~21\))))
-- \dht22_one_wire|Add1~23\ = CARRY((\dht22_one_wire|clk_stamp\(11) & ((!\dht22_one_wire|Add1~21\) # (!\dht22_one_wire|clks\(11)))) # (!\dht22_one_wire|clk_stamp\(11) & (!\dht22_one_wire|clks\(11) & !\dht22_one_wire|Add1~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clk_stamp\(11),
	datab => \dht22_one_wire|clks\(11),
	datad => VCC,
	cin => \dht22_one_wire|Add1~21\,
	combout => \dht22_one_wire|Add1~22_combout\,
	cout => \dht22_one_wire|Add1~23\);

-- Location: LCCOMB_X23_Y18_N4
\dht22_one_wire|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add1~24_combout\ = ((\dht22_one_wire|clk_stamp\(12) $ (\dht22_one_wire|clks\(12) $ (\dht22_one_wire|Add1~23\)))) # (GND)
-- \dht22_one_wire|Add1~25\ = CARRY((\dht22_one_wire|clk_stamp\(12) & (\dht22_one_wire|clks\(12) & !\dht22_one_wire|Add1~23\)) # (!\dht22_one_wire|clk_stamp\(12) & ((\dht22_one_wire|clks\(12)) # (!\dht22_one_wire|Add1~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clk_stamp\(12),
	datab => \dht22_one_wire|clks\(12),
	datad => VCC,
	cin => \dht22_one_wire|Add1~23\,
	combout => \dht22_one_wire|Add1~24_combout\,
	cout => \dht22_one_wire|Add1~25\);

-- Location: LCCOMB_X23_Y18_N6
\dht22_one_wire|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add1~26_combout\ = (\dht22_one_wire|clk_stamp\(13) & ((\dht22_one_wire|clks\(13) & (!\dht22_one_wire|Add1~25\)) # (!\dht22_one_wire|clks\(13) & ((\dht22_one_wire|Add1~25\) # (GND))))) # (!\dht22_one_wire|clk_stamp\(13) & 
-- ((\dht22_one_wire|clks\(13) & (\dht22_one_wire|Add1~25\ & VCC)) # (!\dht22_one_wire|clks\(13) & (!\dht22_one_wire|Add1~25\))))
-- \dht22_one_wire|Add1~27\ = CARRY((\dht22_one_wire|clk_stamp\(13) & ((!\dht22_one_wire|Add1~25\) # (!\dht22_one_wire|clks\(13)))) # (!\dht22_one_wire|clk_stamp\(13) & (!\dht22_one_wire|clks\(13) & !\dht22_one_wire|Add1~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clk_stamp\(13),
	datab => \dht22_one_wire|clks\(13),
	datad => VCC,
	cin => \dht22_one_wire|Add1~25\,
	combout => \dht22_one_wire|Add1~26_combout\,
	cout => \dht22_one_wire|Add1~27\);

-- Location: LCCOMB_X23_Y18_N8
\dht22_one_wire|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add1~28_combout\ = ((\dht22_one_wire|clk_stamp\(14) $ (\dht22_one_wire|clks\(14) $ (\dht22_one_wire|Add1~27\)))) # (GND)
-- \dht22_one_wire|Add1~29\ = CARRY((\dht22_one_wire|clk_stamp\(14) & (\dht22_one_wire|clks\(14) & !\dht22_one_wire|Add1~27\)) # (!\dht22_one_wire|clk_stamp\(14) & ((\dht22_one_wire|clks\(14)) # (!\dht22_one_wire|Add1~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clk_stamp\(14),
	datab => \dht22_one_wire|clks\(14),
	datad => VCC,
	cin => \dht22_one_wire|Add1~27\,
	combout => \dht22_one_wire|Add1~28_combout\,
	cout => \dht22_one_wire|Add1~29\);

-- Location: LCCOMB_X23_Y18_N10
\dht22_one_wire|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add1~30_combout\ = (\dht22_one_wire|clk_stamp\(15) & ((\dht22_one_wire|clks\(15) & (!\dht22_one_wire|Add1~29\)) # (!\dht22_one_wire|clks\(15) & ((\dht22_one_wire|Add1~29\) # (GND))))) # (!\dht22_one_wire|clk_stamp\(15) & 
-- ((\dht22_one_wire|clks\(15) & (\dht22_one_wire|Add1~29\ & VCC)) # (!\dht22_one_wire|clks\(15) & (!\dht22_one_wire|Add1~29\))))
-- \dht22_one_wire|Add1~31\ = CARRY((\dht22_one_wire|clk_stamp\(15) & ((!\dht22_one_wire|Add1~29\) # (!\dht22_one_wire|clks\(15)))) # (!\dht22_one_wire|clk_stamp\(15) & (!\dht22_one_wire|clks\(15) & !\dht22_one_wire|Add1~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clk_stamp\(15),
	datab => \dht22_one_wire|clks\(15),
	datad => VCC,
	cin => \dht22_one_wire|Add1~29\,
	combout => \dht22_one_wire|Add1~30_combout\,
	cout => \dht22_one_wire|Add1~31\);

-- Location: LCCOMB_X23_Y18_N12
\dht22_one_wire|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add1~32_combout\ = ((\dht22_one_wire|clk_stamp\(16) $ (\dht22_one_wire|clks\(16) $ (\dht22_one_wire|Add1~31\)))) # (GND)
-- \dht22_one_wire|Add1~33\ = CARRY((\dht22_one_wire|clk_stamp\(16) & (\dht22_one_wire|clks\(16) & !\dht22_one_wire|Add1~31\)) # (!\dht22_one_wire|clk_stamp\(16) & ((\dht22_one_wire|clks\(16)) # (!\dht22_one_wire|Add1~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clk_stamp\(16),
	datab => \dht22_one_wire|clks\(16),
	datad => VCC,
	cin => \dht22_one_wire|Add1~31\,
	combout => \dht22_one_wire|Add1~32_combout\,
	cout => \dht22_one_wire|Add1~33\);

-- Location: LCCOMB_X23_Y18_N14
\dht22_one_wire|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add1~34_combout\ = (\dht22_one_wire|clk_stamp\(17) & ((\dht22_one_wire|clks\(17) & (!\dht22_one_wire|Add1~33\)) # (!\dht22_one_wire|clks\(17) & ((\dht22_one_wire|Add1~33\) # (GND))))) # (!\dht22_one_wire|clk_stamp\(17) & 
-- ((\dht22_one_wire|clks\(17) & (\dht22_one_wire|Add1~33\ & VCC)) # (!\dht22_one_wire|clks\(17) & (!\dht22_one_wire|Add1~33\))))
-- \dht22_one_wire|Add1~35\ = CARRY((\dht22_one_wire|clk_stamp\(17) & ((!\dht22_one_wire|Add1~33\) # (!\dht22_one_wire|clks\(17)))) # (!\dht22_one_wire|clk_stamp\(17) & (!\dht22_one_wire|clks\(17) & !\dht22_one_wire|Add1~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clk_stamp\(17),
	datab => \dht22_one_wire|clks\(17),
	datad => VCC,
	cin => \dht22_one_wire|Add1~33\,
	combout => \dht22_one_wire|Add1~34_combout\,
	cout => \dht22_one_wire|Add1~35\);

-- Location: LCCOMB_X23_Y18_N16
\dht22_one_wire|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add1~36_combout\ = ((\dht22_one_wire|clks\(18) $ (\dht22_one_wire|clk_stamp\(18) $ (\dht22_one_wire|Add1~35\)))) # (GND)
-- \dht22_one_wire|Add1~37\ = CARRY((\dht22_one_wire|clks\(18) & ((!\dht22_one_wire|Add1~35\) # (!\dht22_one_wire|clk_stamp\(18)))) # (!\dht22_one_wire|clks\(18) & (!\dht22_one_wire|clk_stamp\(18) & !\dht22_one_wire|Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(18),
	datab => \dht22_one_wire|clk_stamp\(18),
	datad => VCC,
	cin => \dht22_one_wire|Add1~35\,
	combout => \dht22_one_wire|Add1~36_combout\,
	cout => \dht22_one_wire|Add1~37\);

-- Location: LCCOMB_X23_Y18_N18
\dht22_one_wire|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add1~38_combout\ = \dht22_one_wire|clks\(19) $ (\dht22_one_wire|Add1~37\ $ (!\dht22_one_wire|clk_stamp\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(19),
	datad => \dht22_one_wire|clk_stamp\(19),
	cin => \dht22_one_wire|Add1~37\,
	combout => \dht22_one_wire|Add1~38_combout\);

-- Location: LCCOMB_X23_Y19_N4
\dht22_one_wire|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|LessThan0~1_combout\ = (!\dht22_one_wire|Add1~4_combout\ & (!\dht22_one_wire|Add1~6_combout\ & ((!\dht22_one_wire|Add1~2_combout\) # (!\dht22_one_wire|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Add1~0_combout\,
	datab => \dht22_one_wire|Add1~2_combout\,
	datac => \dht22_one_wire|Add1~4_combout\,
	datad => \dht22_one_wire|Add1~6_combout\,
	combout => \dht22_one_wire|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y19_N6
\dht22_one_wire|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|LessThan0~0_combout\ = ((!\dht22_one_wire|Add1~16_combout\) # (!\dht22_one_wire|Add1~14_combout\)) # (!\dht22_one_wire|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|Add1~12_combout\,
	datac => \dht22_one_wire|Add1~14_combout\,
	datad => \dht22_one_wire|Add1~16_combout\,
	combout => \dht22_one_wire|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y19_N2
\dht22_one_wire|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|LessThan0~2_combout\ = (\dht22_one_wire|LessThan0~0_combout\) # ((!\dht22_one_wire|Add1~10_combout\ & (!\dht22_one_wire|Add1~8_combout\ & \dht22_one_wire|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Add1~10_combout\,
	datab => \dht22_one_wire|Add1~8_combout\,
	datac => \dht22_one_wire|LessThan0~1_combout\,
	datad => \dht22_one_wire|LessThan0~0_combout\,
	combout => \dht22_one_wire|LessThan0~2_combout\);

-- Location: LCCOMB_X23_Y18_N24
\dht22_one_wire|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|LessThan0~3_combout\ = ((!\dht22_one_wire|Add1~18_combout\ & (!\dht22_one_wire|Add1~20_combout\ & \dht22_one_wire|LessThan0~2_combout\))) # (!\dht22_one_wire|Add1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Add1~18_combout\,
	datab => \dht22_one_wire|Add1~20_combout\,
	datac => \dht22_one_wire|Add1~22_combout\,
	datad => \dht22_one_wire|LessThan0~2_combout\,
	combout => \dht22_one_wire|LessThan0~3_combout\);

-- Location: LCCOMB_X23_Y18_N26
\dht22_one_wire|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|LessThan0~4_combout\ = (!\dht22_one_wire|Add1~26_combout\ & (!\dht22_one_wire|Add1~28_combout\ & (!\dht22_one_wire|Add1~24_combout\ & \dht22_one_wire|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Add1~26_combout\,
	datab => \dht22_one_wire|Add1~28_combout\,
	datac => \dht22_one_wire|Add1~24_combout\,
	datad => \dht22_one_wire|LessThan0~3_combout\,
	combout => \dht22_one_wire|LessThan0~4_combout\);

-- Location: LCCOMB_X23_Y18_N20
\dht22_one_wire|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|LessThan0~5_combout\ = (!\dht22_one_wire|Add1~32_combout\ & (\dht22_one_wire|LessThan0~4_combout\ & !\dht22_one_wire|Add1~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Add1~32_combout\,
	datac => \dht22_one_wire|LessThan0~4_combout\,
	datad => \dht22_one_wire|Add1~30_combout\,
	combout => \dht22_one_wire|LessThan0~5_combout\);

-- Location: LCCOMB_X23_Y18_N22
\dht22_one_wire|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|LessThan0~6_combout\ = (!\dht22_one_wire|Add1~38_combout\ & (!\dht22_one_wire|Add1~36_combout\ & (!\dht22_one_wire|Add1~34_combout\ & \dht22_one_wire|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Add1~38_combout\,
	datab => \dht22_one_wire|Add1~36_combout\,
	datac => \dht22_one_wire|Add1~34_combout\,
	datad => \dht22_one_wire|LessThan0~5_combout\,
	combout => \dht22_one_wire|LessThan0~6_combout\);

-- Location: LCCOMB_X22_Y18_N6
\dht22_one_wire|data_buff[37]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[37]~11_combout\ = (\dht22_one_wire|Decoder0~10_combout\ & ((\dht22_one_wire|Decoder0~1_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~1_combout\ & (\dht22_one_wire|data_buff\(37))))) # 
-- (!\dht22_one_wire|Decoder0~10_combout\ & (((\dht22_one_wire|data_buff\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~10_combout\,
	datab => \dht22_one_wire|Decoder0~1_combout\,
	datac => \dht22_one_wire|data_buff\(37),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[37]~11_combout\);

-- Location: FF_X22_Y18_N7
\dht22_one_wire|data_buff[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[37]~11_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(37));

-- Location: LCCOMB_X25_Y18_N0
\dht22_one_wire|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~7_combout\ = (\dht22_one_wire|data_buff[32]~0_combout\ & (!\dht22_one_wire|bit_count\(4) & (\dht22_one_wire|state.ST_PROCESS_DATA~q\ & !\dht22_one_wire|bit_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff[32]~0_combout\,
	datab => \dht22_one_wire|bit_count\(4),
	datac => \dht22_one_wire|state.ST_PROCESS_DATA~q\,
	datad => \dht22_one_wire|bit_count\(5),
	combout => \dht22_one_wire|Decoder0~7_combout\);

-- Location: LCCOMB_X22_Y19_N10
\dht22_one_wire|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~8_combout\ = (\dht22_one_wire|bit_count\(3) & (\dht22_one_wire|bit_count\(2) & \dht22_one_wire|Decoder0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|bit_count\(3),
	datab => \dht22_one_wire|bit_count\(2),
	datad => \dht22_one_wire|Decoder0~7_combout\,
	combout => \dht22_one_wire|Decoder0~8_combout\);

-- Location: LCCOMB_X21_Y18_N4
\dht22_one_wire|data_buff[13]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[13]~19_combout\ = (\dht22_one_wire|Decoder0~8_combout\ & ((\dht22_one_wire|Decoder0~10_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~10_combout\ & (\dht22_one_wire|data_buff\(13))))) # 
-- (!\dht22_one_wire|Decoder0~8_combout\ & (((\dht22_one_wire|data_buff\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~8_combout\,
	datab => \dht22_one_wire|Decoder0~10_combout\,
	datac => \dht22_one_wire|data_buff\(13),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[13]~19_combout\);

-- Location: FF_X21_Y18_N5
\dht22_one_wire|data_buff[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[13]~19_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(13));

-- Location: LCCOMB_X25_Y18_N14
\dht22_one_wire|Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~9_combout\ = (!\dht22_one_wire|bit_count\(3) & (\dht22_one_wire|bit_count\(2) & \dht22_one_wire|Decoder0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|bit_count\(3),
	datac => \dht22_one_wire|bit_count\(2),
	datad => \dht22_one_wire|Decoder0~7_combout\,
	combout => \dht22_one_wire|Decoder0~9_combout\);

-- Location: LCCOMB_X22_Y18_N20
\dht22_one_wire|data_buff[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[5]~20_combout\ = (\dht22_one_wire|Decoder0~10_combout\ & ((\dht22_one_wire|Decoder0~9_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~9_combout\ & (\dht22_one_wire|data_buff\(5))))) # 
-- (!\dht22_one_wire|Decoder0~10_combout\ & (((\dht22_one_wire|data_buff\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~10_combout\,
	datab => \dht22_one_wire|Decoder0~9_combout\,
	datac => \dht22_one_wire|data_buff\(5),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[5]~20_combout\);

-- Location: FF_X22_Y18_N21
\dht22_one_wire|data_buff[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[5]~20_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(5));

-- Location: LCCOMB_X25_Y18_N20
\dht22_one_wire|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~3_combout\ = (\dht22_one_wire|bit_count\(1) & !\dht22_one_wire|bit_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|bit_count\(1),
	datac => \dht22_one_wire|bit_count\(0),
	combout => \dht22_one_wire|Decoder0~3_combout\);

-- Location: LCCOMB_X22_Y18_N12
\dht22_one_wire|data_buff[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[6]~8_combout\ = (\dht22_one_wire|Decoder0~3_combout\ & ((\dht22_one_wire|Decoder0~9_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~9_combout\ & (\dht22_one_wire|data_buff\(6))))) # 
-- (!\dht22_one_wire|Decoder0~3_combout\ & (((\dht22_one_wire|data_buff\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~3_combout\,
	datab => \dht22_one_wire|Decoder0~9_combout\,
	datac => \dht22_one_wire|data_buff\(6),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[6]~8_combout\);

-- Location: FF_X22_Y18_N13
\dht22_one_wire|data_buff[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[6]~8_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(6));

-- Location: LCCOMB_X22_Y18_N2
\dht22_one_wire|data_buff[14]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[14]~7_combout\ = (\dht22_one_wire|Decoder0~3_combout\ & ((\dht22_one_wire|Decoder0~8_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~8_combout\ & (\dht22_one_wire|data_buff\(14))))) # 
-- (!\dht22_one_wire|Decoder0~3_combout\ & (((\dht22_one_wire|data_buff\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~3_combout\,
	datab => \dht22_one_wire|Decoder0~8_combout\,
	datac => \dht22_one_wire|data_buff\(14),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[14]~7_combout\);

-- Location: FF_X22_Y18_N3
\dht22_one_wire|data_buff[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[14]~7_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(14));

-- Location: LCCOMB_X25_Y18_N26
\dht22_one_wire|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~2_combout\ = (\dht22_one_wire|bit_count\(1) & \dht22_one_wire|bit_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|bit_count\(1),
	datac => \dht22_one_wire|bit_count\(0),
	combout => \dht22_one_wire|Decoder0~2_combout\);

-- Location: LCCOMB_X21_Y18_N22
\dht22_one_wire|data_buff[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[7]~10_combout\ = (\dht22_one_wire|Decoder0~9_combout\ & ((\dht22_one_wire|Decoder0~2_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~2_combout\ & (\dht22_one_wire|data_buff\(7))))) # 
-- (!\dht22_one_wire|Decoder0~9_combout\ & (((\dht22_one_wire|data_buff\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~9_combout\,
	datab => \dht22_one_wire|Decoder0~2_combout\,
	datac => \dht22_one_wire|data_buff\(7),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[7]~10_combout\);

-- Location: FF_X21_Y18_N23
\dht22_one_wire|data_buff[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[7]~10_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(7));

-- Location: LCCOMB_X21_Y18_N0
\dht22_one_wire|data_buff[15]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[15]~9_combout\ = (\dht22_one_wire|Decoder0~8_combout\ & ((\dht22_one_wire|Decoder0~2_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~2_combout\ & (\dht22_one_wire|data_buff\(15))))) # 
-- (!\dht22_one_wire|Decoder0~8_combout\ & (((\dht22_one_wire|data_buff\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~8_combout\,
	datab => \dht22_one_wire|Decoder0~2_combout\,
	datac => \dht22_one_wire|data_buff\(15),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[15]~9_combout\);

-- Location: FF_X21_Y18_N1
\dht22_one_wire|data_buff[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[15]~9_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(15));

-- Location: LCCOMB_X22_Y16_N12
\dht22_one_wire|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add3~0_combout\ = (\dht22_one_wire|data_buff\(7) & (\dht22_one_wire|data_buff\(15) $ (VCC))) # (!\dht22_one_wire|data_buff\(7) & (\dht22_one_wire|data_buff\(15) & VCC))
-- \dht22_one_wire|Add3~1\ = CARRY((\dht22_one_wire|data_buff\(7) & \dht22_one_wire|data_buff\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(7),
	datab => \dht22_one_wire|data_buff\(15),
	datad => VCC,
	combout => \dht22_one_wire|Add3~0_combout\,
	cout => \dht22_one_wire|Add3~1\);

-- Location: LCCOMB_X22_Y16_N14
\dht22_one_wire|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add3~2_combout\ = (\dht22_one_wire|data_buff\(6) & ((\dht22_one_wire|data_buff\(14) & (\dht22_one_wire|Add3~1\ & VCC)) # (!\dht22_one_wire|data_buff\(14) & (!\dht22_one_wire|Add3~1\)))) # (!\dht22_one_wire|data_buff\(6) & 
-- ((\dht22_one_wire|data_buff\(14) & (!\dht22_one_wire|Add3~1\)) # (!\dht22_one_wire|data_buff\(14) & ((\dht22_one_wire|Add3~1\) # (GND)))))
-- \dht22_one_wire|Add3~3\ = CARRY((\dht22_one_wire|data_buff\(6) & (!\dht22_one_wire|data_buff\(14) & !\dht22_one_wire|Add3~1\)) # (!\dht22_one_wire|data_buff\(6) & ((!\dht22_one_wire|Add3~1\) # (!\dht22_one_wire|data_buff\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(6),
	datab => \dht22_one_wire|data_buff\(14),
	datad => VCC,
	cin => \dht22_one_wire|Add3~1\,
	combout => \dht22_one_wire|Add3~2_combout\,
	cout => \dht22_one_wire|Add3~3\);

-- Location: LCCOMB_X22_Y16_N16
\dht22_one_wire|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add3~4_combout\ = ((\dht22_one_wire|data_buff\(13) $ (\dht22_one_wire|data_buff\(5) $ (!\dht22_one_wire|Add3~3\)))) # (GND)
-- \dht22_one_wire|Add3~5\ = CARRY((\dht22_one_wire|data_buff\(13) & ((\dht22_one_wire|data_buff\(5)) # (!\dht22_one_wire|Add3~3\))) # (!\dht22_one_wire|data_buff\(13) & (\dht22_one_wire|data_buff\(5) & !\dht22_one_wire|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(13),
	datab => \dht22_one_wire|data_buff\(5),
	datad => VCC,
	cin => \dht22_one_wire|Add3~3\,
	combout => \dht22_one_wire|Add3~4_combout\,
	cout => \dht22_one_wire|Add3~5\);

-- Location: LCCOMB_X25_Y18_N10
\dht22_one_wire|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~4_combout\ = (\dht22_one_wire|data_buff[32]~0_combout\ & (\dht22_one_wire|bit_count\(4) & (\dht22_one_wire|state.ST_PROCESS_DATA~q\ & !\dht22_one_wire|bit_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff[32]~0_combout\,
	datab => \dht22_one_wire|bit_count\(4),
	datac => \dht22_one_wire|state.ST_PROCESS_DATA~q\,
	datad => \dht22_one_wire|bit_count\(5),
	combout => \dht22_one_wire|Decoder0~4_combout\);

-- Location: LCCOMB_X21_Y18_N28
\dht22_one_wire|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~6_combout\ = (!\dht22_one_wire|bit_count\(3) & (\dht22_one_wire|Decoder0~4_combout\ & \dht22_one_wire|bit_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|bit_count\(3),
	datab => \dht22_one_wire|Decoder0~4_combout\,
	datac => \dht22_one_wire|bit_count\(2),
	combout => \dht22_one_wire|Decoder0~6_combout\);

-- Location: LCCOMB_X23_Y18_N28
\dht22_one_wire|data_buff[21]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[21]~16_combout\ = (\dht22_one_wire|Decoder0~10_combout\ & ((\dht22_one_wire|Decoder0~6_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~6_combout\ & (\dht22_one_wire|data_buff\(21))))) # 
-- (!\dht22_one_wire|Decoder0~10_combout\ & (((\dht22_one_wire|data_buff\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~10_combout\,
	datab => \dht22_one_wire|Decoder0~6_combout\,
	datac => \dht22_one_wire|data_buff\(21),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[21]~16_combout\);

-- Location: FF_X23_Y18_N29
\dht22_one_wire|data_buff[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[21]~16_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(21));

-- Location: LCCOMB_X21_Y18_N14
\dht22_one_wire|Decoder0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~12_combout\ = (\dht22_one_wire|bit_count\(2) & (\dht22_one_wire|Decoder0~10_combout\ & (\dht22_one_wire|Decoder0~4_combout\ & \dht22_one_wire|bit_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|bit_count\(2),
	datab => \dht22_one_wire|Decoder0~10_combout\,
	datac => \dht22_one_wire|Decoder0~4_combout\,
	datad => \dht22_one_wire|bit_count\(3),
	combout => \dht22_one_wire|Decoder0~12_combout\);

-- Location: LCCOMB_X22_Y18_N26
\dht22_one_wire|data_buff[29]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[29]~15_combout\ = (\dht22_one_wire|Decoder0~12_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~12_combout\ & (\dht22_one_wire|data_buff\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~12_combout\,
	datac => \dht22_one_wire|data_buff\(29),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[29]~15_combout\);

-- Location: FF_X22_Y18_N27
\dht22_one_wire|data_buff[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[29]~15_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(29));

-- Location: LCCOMB_X19_Y18_N0
\dht22_one_wire|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~5_combout\ = (\dht22_one_wire|bit_count\(3) & (\dht22_one_wire|bit_count\(2) & \dht22_one_wire|Decoder0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|bit_count\(3),
	datac => \dht22_one_wire|bit_count\(2),
	datad => \dht22_one_wire|Decoder0~4_combout\,
	combout => \dht22_one_wire|Decoder0~5_combout\);

-- Location: LCCOMB_X22_Y18_N22
\dht22_one_wire|data_buff[30]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[30]~3_combout\ = (\dht22_one_wire|Decoder0~3_combout\ & ((\dht22_one_wire|Decoder0~5_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~5_combout\ & (\dht22_one_wire|data_buff\(30))))) # 
-- (!\dht22_one_wire|Decoder0~3_combout\ & (((\dht22_one_wire|data_buff\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~3_combout\,
	datab => \dht22_one_wire|Decoder0~5_combout\,
	datac => \dht22_one_wire|data_buff\(30),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[30]~3_combout\);

-- Location: FF_X22_Y18_N23
\dht22_one_wire|data_buff[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[30]~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(30));

-- Location: LCCOMB_X21_Y18_N16
\dht22_one_wire|data_buff[22]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[22]~4_combout\ = (\dht22_one_wire|Decoder0~3_combout\ & ((\dht22_one_wire|Decoder0~6_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~6_combout\ & (\dht22_one_wire|data_buff\(22))))) # 
-- (!\dht22_one_wire|Decoder0~3_combout\ & (((\dht22_one_wire|data_buff\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~3_combout\,
	datab => \dht22_one_wire|Decoder0~6_combout\,
	datac => \dht22_one_wire|data_buff\(22),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[22]~4_combout\);

-- Location: FF_X21_Y18_N17
\dht22_one_wire|data_buff[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[22]~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(22));

-- Location: LCCOMB_X21_Y18_N18
\dht22_one_wire|data_buff[23]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[23]~6_combout\ = (\dht22_one_wire|Decoder0~6_combout\ & ((\dht22_one_wire|Decoder0~2_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~2_combout\ & (\dht22_one_wire|data_buff\(23))))) # 
-- (!\dht22_one_wire|Decoder0~6_combout\ & (((\dht22_one_wire|data_buff\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~6_combout\,
	datab => \dht22_one_wire|Decoder0~2_combout\,
	datac => \dht22_one_wire|data_buff\(23),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[23]~6_combout\);

-- Location: FF_X21_Y18_N19
\dht22_one_wire|data_buff[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[23]~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(23));

-- Location: LCCOMB_X22_Y18_N0
\dht22_one_wire|data_buff[31]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[31]~5_combout\ = (\dht22_one_wire|Decoder0~2_combout\ & ((\dht22_one_wire|Decoder0~5_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~5_combout\ & (\dht22_one_wire|data_buff\(31))))) # 
-- (!\dht22_one_wire|Decoder0~2_combout\ & (((\dht22_one_wire|data_buff\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~2_combout\,
	datab => \dht22_one_wire|Decoder0~5_combout\,
	datac => \dht22_one_wire|data_buff\(31),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[31]~5_combout\);

-- Location: FF_X22_Y18_N1
\dht22_one_wire|data_buff[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[31]~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(31));

-- Location: LCCOMB_X21_Y16_N4
\dht22_one_wire|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add4~0_combout\ = (\dht22_one_wire|data_buff\(23) & (\dht22_one_wire|data_buff\(31) $ (VCC))) # (!\dht22_one_wire|data_buff\(23) & (\dht22_one_wire|data_buff\(31) & VCC))
-- \dht22_one_wire|Add4~1\ = CARRY((\dht22_one_wire|data_buff\(23) & \dht22_one_wire|data_buff\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(23),
	datab => \dht22_one_wire|data_buff\(31),
	datad => VCC,
	combout => \dht22_one_wire|Add4~0_combout\,
	cout => \dht22_one_wire|Add4~1\);

-- Location: LCCOMB_X21_Y16_N6
\dht22_one_wire|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add4~2_combout\ = (\dht22_one_wire|data_buff\(30) & ((\dht22_one_wire|data_buff\(22) & (\dht22_one_wire|Add4~1\ & VCC)) # (!\dht22_one_wire|data_buff\(22) & (!\dht22_one_wire|Add4~1\)))) # (!\dht22_one_wire|data_buff\(30) & 
-- ((\dht22_one_wire|data_buff\(22) & (!\dht22_one_wire|Add4~1\)) # (!\dht22_one_wire|data_buff\(22) & ((\dht22_one_wire|Add4~1\) # (GND)))))
-- \dht22_one_wire|Add4~3\ = CARRY((\dht22_one_wire|data_buff\(30) & (!\dht22_one_wire|data_buff\(22) & !\dht22_one_wire|Add4~1\)) # (!\dht22_one_wire|data_buff\(30) & ((!\dht22_one_wire|Add4~1\) # (!\dht22_one_wire|data_buff\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(30),
	datab => \dht22_one_wire|data_buff\(22),
	datad => VCC,
	cin => \dht22_one_wire|Add4~1\,
	combout => \dht22_one_wire|Add4~2_combout\,
	cout => \dht22_one_wire|Add4~3\);

-- Location: LCCOMB_X21_Y16_N8
\dht22_one_wire|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add4~4_combout\ = ((\dht22_one_wire|data_buff\(21) $ (\dht22_one_wire|data_buff\(29) $ (!\dht22_one_wire|Add4~3\)))) # (GND)
-- \dht22_one_wire|Add4~5\ = CARRY((\dht22_one_wire|data_buff\(21) & ((\dht22_one_wire|data_buff\(29)) # (!\dht22_one_wire|Add4~3\))) # (!\dht22_one_wire|data_buff\(21) & (\dht22_one_wire|data_buff\(29) & !\dht22_one_wire|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(21),
	datab => \dht22_one_wire|data_buff\(29),
	datad => VCC,
	cin => \dht22_one_wire|Add4~3\,
	combout => \dht22_one_wire|Add4~4_combout\,
	cout => \dht22_one_wire|Add4~5\);

-- Location: LCCOMB_X23_Y16_N12
\dht22_one_wire|check_sum[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|check_sum[0]~0_combout\ = (\dht22_one_wire|Add3~0_combout\ & (\dht22_one_wire|Add4~0_combout\ $ (VCC))) # (!\dht22_one_wire|Add3~0_combout\ & (\dht22_one_wire|Add4~0_combout\ & VCC))
-- \dht22_one_wire|check_sum[0]~1\ = CARRY((\dht22_one_wire|Add3~0_combout\ & \dht22_one_wire|Add4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Add3~0_combout\,
	datab => \dht22_one_wire|Add4~0_combout\,
	datad => VCC,
	combout => \dht22_one_wire|check_sum[0]~0_combout\,
	cout => \dht22_one_wire|check_sum[0]~1\);

-- Location: LCCOMB_X23_Y16_N14
\dht22_one_wire|check_sum[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|check_sum[1]~2_combout\ = (\dht22_one_wire|Add3~2_combout\ & ((\dht22_one_wire|Add4~2_combout\ & (\dht22_one_wire|check_sum[0]~1\ & VCC)) # (!\dht22_one_wire|Add4~2_combout\ & (!\dht22_one_wire|check_sum[0]~1\)))) # 
-- (!\dht22_one_wire|Add3~2_combout\ & ((\dht22_one_wire|Add4~2_combout\ & (!\dht22_one_wire|check_sum[0]~1\)) # (!\dht22_one_wire|Add4~2_combout\ & ((\dht22_one_wire|check_sum[0]~1\) # (GND)))))
-- \dht22_one_wire|check_sum[1]~3\ = CARRY((\dht22_one_wire|Add3~2_combout\ & (!\dht22_one_wire|Add4~2_combout\ & !\dht22_one_wire|check_sum[0]~1\)) # (!\dht22_one_wire|Add3~2_combout\ & ((!\dht22_one_wire|check_sum[0]~1\) # 
-- (!\dht22_one_wire|Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Add3~2_combout\,
	datab => \dht22_one_wire|Add4~2_combout\,
	datad => VCC,
	cin => \dht22_one_wire|check_sum[0]~1\,
	combout => \dht22_one_wire|check_sum[1]~2_combout\,
	cout => \dht22_one_wire|check_sum[1]~3\);

-- Location: LCCOMB_X23_Y16_N16
\dht22_one_wire|check_sum[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|check_sum[2]~4_combout\ = ((\dht22_one_wire|Add3~4_combout\ $ (\dht22_one_wire|Add4~4_combout\ $ (!\dht22_one_wire|check_sum[1]~3\)))) # (GND)
-- \dht22_one_wire|check_sum[2]~5\ = CARRY((\dht22_one_wire|Add3~4_combout\ & ((\dht22_one_wire|Add4~4_combout\) # (!\dht22_one_wire|check_sum[1]~3\))) # (!\dht22_one_wire|Add3~4_combout\ & (\dht22_one_wire|Add4~4_combout\ & 
-- !\dht22_one_wire|check_sum[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Add3~4_combout\,
	datab => \dht22_one_wire|Add4~4_combout\,
	datad => VCC,
	cin => \dht22_one_wire|check_sum[1]~3\,
	combout => \dht22_one_wire|check_sum[2]~4_combout\,
	cout => \dht22_one_wire|check_sum[2]~5\);

-- Location: LCCOMB_X19_Y18_N22
\dht22_one_wire|Decoder0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~11_combout\ = (!\dht22_one_wire|bit_count\(1) & !\dht22_one_wire|bit_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|bit_count\(1),
	datac => \dht22_one_wire|bit_count\(0),
	combout => \dht22_one_wire|Decoder0~11_combout\);

-- Location: LCCOMB_X22_Y18_N24
\dht22_one_wire|data_buff[36]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[36]~12_combout\ = (\dht22_one_wire|Decoder0~11_combout\ & ((\dht22_one_wire|Decoder0~1_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~1_combout\ & (\dht22_one_wire|data_buff\(36))))) # 
-- (!\dht22_one_wire|Decoder0~11_combout\ & (((\dht22_one_wire|data_buff\(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~11_combout\,
	datab => \dht22_one_wire|Decoder0~1_combout\,
	datac => \dht22_one_wire|data_buff\(36),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[36]~12_combout\);

-- Location: FF_X22_Y18_N25
\dht22_one_wire|data_buff[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[36]~12_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(36));

-- Location: LCCOMB_X22_Y18_N8
\dht22_one_wire|data_buff[20]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[20]~14_combout\ = (\dht22_one_wire|Decoder0~11_combout\ & ((\dht22_one_wire|Decoder0~6_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~6_combout\ & (\dht22_one_wire|data_buff\(20))))) # 
-- (!\dht22_one_wire|Decoder0~11_combout\ & (((\dht22_one_wire|data_buff\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~11_combout\,
	datab => \dht22_one_wire|Decoder0~6_combout\,
	datac => \dht22_one_wire|data_buff\(20),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[20]~14_combout\);

-- Location: FF_X22_Y18_N9
\dht22_one_wire|data_buff[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[20]~14_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(20));

-- Location: LCCOMB_X22_Y18_N18
\dht22_one_wire|data_buff[28]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[28]~13_combout\ = (\dht22_one_wire|Decoder0~11_combout\ & ((\dht22_one_wire|Decoder0~5_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~5_combout\ & (\dht22_one_wire|data_buff\(28))))) # 
-- (!\dht22_one_wire|Decoder0~11_combout\ & (((\dht22_one_wire|data_buff\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~11_combout\,
	datab => \dht22_one_wire|Decoder0~5_combout\,
	datac => \dht22_one_wire|data_buff\(28),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[28]~13_combout\);

-- Location: FF_X22_Y18_N19
\dht22_one_wire|data_buff[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[28]~13_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(28));

-- Location: LCCOMB_X21_Y16_N10
\dht22_one_wire|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add4~6_combout\ = (\dht22_one_wire|data_buff\(20) & ((\dht22_one_wire|data_buff\(28) & (\dht22_one_wire|Add4~5\ & VCC)) # (!\dht22_one_wire|data_buff\(28) & (!\dht22_one_wire|Add4~5\)))) # (!\dht22_one_wire|data_buff\(20) & 
-- ((\dht22_one_wire|data_buff\(28) & (!\dht22_one_wire|Add4~5\)) # (!\dht22_one_wire|data_buff\(28) & ((\dht22_one_wire|Add4~5\) # (GND)))))
-- \dht22_one_wire|Add4~7\ = CARRY((\dht22_one_wire|data_buff\(20) & (!\dht22_one_wire|data_buff\(28) & !\dht22_one_wire|Add4~5\)) # (!\dht22_one_wire|data_buff\(20) & ((!\dht22_one_wire|Add4~5\) # (!\dht22_one_wire|data_buff\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(20),
	datab => \dht22_one_wire|data_buff\(28),
	datad => VCC,
	cin => \dht22_one_wire|Add4~5\,
	combout => \dht22_one_wire|Add4~6_combout\,
	cout => \dht22_one_wire|Add4~7\);

-- Location: LCCOMB_X21_Y18_N8
\dht22_one_wire|data_buff[12]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[12]~17_combout\ = (\dht22_one_wire|Decoder0~8_combout\ & ((\dht22_one_wire|Decoder0~11_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~11_combout\ & (\dht22_one_wire|data_buff\(12))))) # 
-- (!\dht22_one_wire|Decoder0~8_combout\ & (((\dht22_one_wire|data_buff\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~8_combout\,
	datab => \dht22_one_wire|Decoder0~11_combout\,
	datac => \dht22_one_wire|data_buff\(12),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[12]~17_combout\);

-- Location: FF_X21_Y18_N9
\dht22_one_wire|data_buff[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[12]~17_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(12));

-- Location: LCCOMB_X21_Y18_N10
\dht22_one_wire|data_buff[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[4]~18_combout\ = (\dht22_one_wire|Decoder0~9_combout\ & ((\dht22_one_wire|Decoder0~11_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~11_combout\ & (\dht22_one_wire|data_buff\(4))))) # 
-- (!\dht22_one_wire|Decoder0~9_combout\ & (((\dht22_one_wire|data_buff\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~9_combout\,
	datab => \dht22_one_wire|Decoder0~11_combout\,
	datac => \dht22_one_wire|data_buff\(4),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[4]~18_combout\);

-- Location: FF_X21_Y18_N11
\dht22_one_wire|data_buff[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[4]~18_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(4));

-- Location: LCCOMB_X22_Y16_N18
\dht22_one_wire|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add3~6_combout\ = (\dht22_one_wire|data_buff\(12) & ((\dht22_one_wire|data_buff\(4) & (\dht22_one_wire|Add3~5\ & VCC)) # (!\dht22_one_wire|data_buff\(4) & (!\dht22_one_wire|Add3~5\)))) # (!\dht22_one_wire|data_buff\(12) & 
-- ((\dht22_one_wire|data_buff\(4) & (!\dht22_one_wire|Add3~5\)) # (!\dht22_one_wire|data_buff\(4) & ((\dht22_one_wire|Add3~5\) # (GND)))))
-- \dht22_one_wire|Add3~7\ = CARRY((\dht22_one_wire|data_buff\(12) & (!\dht22_one_wire|data_buff\(4) & !\dht22_one_wire|Add3~5\)) # (!\dht22_one_wire|data_buff\(12) & ((!\dht22_one_wire|Add3~5\) # (!\dht22_one_wire|data_buff\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(12),
	datab => \dht22_one_wire|data_buff\(4),
	datad => VCC,
	cin => \dht22_one_wire|Add3~5\,
	combout => \dht22_one_wire|Add3~6_combout\,
	cout => \dht22_one_wire|Add3~7\);

-- Location: LCCOMB_X23_Y16_N18
\dht22_one_wire|check_sum[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|check_sum[3]~6_combout\ = (\dht22_one_wire|Add4~6_combout\ & ((\dht22_one_wire|Add3~6_combout\ & (\dht22_one_wire|check_sum[2]~5\ & VCC)) # (!\dht22_one_wire|Add3~6_combout\ & (!\dht22_one_wire|check_sum[2]~5\)))) # 
-- (!\dht22_one_wire|Add4~6_combout\ & ((\dht22_one_wire|Add3~6_combout\ & (!\dht22_one_wire|check_sum[2]~5\)) # (!\dht22_one_wire|Add3~6_combout\ & ((\dht22_one_wire|check_sum[2]~5\) # (GND)))))
-- \dht22_one_wire|check_sum[3]~7\ = CARRY((\dht22_one_wire|Add4~6_combout\ & (!\dht22_one_wire|Add3~6_combout\ & !\dht22_one_wire|check_sum[2]~5\)) # (!\dht22_one_wire|Add4~6_combout\ & ((!\dht22_one_wire|check_sum[2]~5\) # 
-- (!\dht22_one_wire|Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Add4~6_combout\,
	datab => \dht22_one_wire|Add3~6_combout\,
	datad => VCC,
	cin => \dht22_one_wire|check_sum[2]~5\,
	combout => \dht22_one_wire|check_sum[3]~6_combout\,
	cout => \dht22_one_wire|check_sum[3]~7\);

-- Location: LCCOMB_X23_Y16_N10
\dht22_one_wire|valid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|valid~1_combout\ = (\dht22_one_wire|data_buff\(37) & (\dht22_one_wire|check_sum[2]~4_combout\ & (\dht22_one_wire|data_buff\(36) $ (!\dht22_one_wire|check_sum[3]~6_combout\)))) # (!\dht22_one_wire|data_buff\(37) & 
-- (!\dht22_one_wire|check_sum[2]~4_combout\ & (\dht22_one_wire|data_buff\(36) $ (!\dht22_one_wire|check_sum[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(37),
	datab => \dht22_one_wire|check_sum[2]~4_combout\,
	datac => \dht22_one_wire|data_buff\(36),
	datad => \dht22_one_wire|check_sum[3]~6_combout\,
	combout => \dht22_one_wire|valid~1_combout\);

-- Location: LCCOMB_X22_Y18_N28
\dht22_one_wire|data_buff[39]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[39]~1_combout\ = (\dht22_one_wire|Decoder0~2_combout\ & ((\dht22_one_wire|Decoder0~1_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~1_combout\ & (\dht22_one_wire|data_buff\(39))))) # 
-- (!\dht22_one_wire|Decoder0~2_combout\ & (((\dht22_one_wire|data_buff\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~2_combout\,
	datab => \dht22_one_wire|Decoder0~1_combout\,
	datac => \dht22_one_wire|data_buff\(39),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[39]~1_combout\);

-- Location: FF_X22_Y18_N29
\dht22_one_wire|data_buff[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[39]~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(39));

-- Location: LCCOMB_X24_Y18_N20
\dht22_one_wire|data_buff[38]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[38]~2_combout\ = (\dht22_one_wire|Decoder0~3_combout\ & ((\dht22_one_wire|Decoder0~1_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~1_combout\ & (\dht22_one_wire|data_buff\(38))))) # 
-- (!\dht22_one_wire|Decoder0~3_combout\ & (((\dht22_one_wire|data_buff\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~3_combout\,
	datab => \dht22_one_wire|Decoder0~1_combout\,
	datac => \dht22_one_wire|data_buff\(38),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[38]~2_combout\);

-- Location: FF_X24_Y18_N21
\dht22_one_wire|data_buff[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[38]~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(38));

-- Location: LCCOMB_X23_Y16_N8
\dht22_one_wire|valid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|valid~0_combout\ = (\dht22_one_wire|check_sum[0]~0_combout\ & (\dht22_one_wire|data_buff\(39) & (\dht22_one_wire|check_sum[1]~2_combout\ $ (!\dht22_one_wire|data_buff\(38))))) # (!\dht22_one_wire|check_sum[0]~0_combout\ & 
-- (!\dht22_one_wire|data_buff\(39) & (\dht22_one_wire|check_sum[1]~2_combout\ $ (!\dht22_one_wire|data_buff\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|check_sum[0]~0_combout\,
	datab => \dht22_one_wire|data_buff\(39),
	datac => \dht22_one_wire|check_sum[1]~2_combout\,
	datad => \dht22_one_wire|data_buff\(38),
	combout => \dht22_one_wire|valid~0_combout\);

-- Location: LCCOMB_X25_Y18_N6
\dht22_one_wire|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal4~2_combout\ = (!\dht22_one_wire|bit_count\(0) & (!\dht22_one_wire|bit_count\(1) & !\dht22_one_wire|bit_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|bit_count\(0),
	datab => \dht22_one_wire|bit_count\(1),
	datac => \dht22_one_wire|bit_count\(2),
	combout => \dht22_one_wire|Equal4~2_combout\);

-- Location: LCCOMB_X22_Y19_N16
\dht22_one_wire|Decoder0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~22_combout\ = (!\dht22_one_wire|bit_count\(3) & (\dht22_one_wire|Equal4~2_combout\ & \dht22_one_wire|Decoder0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|bit_count\(3),
	datac => \dht22_one_wire|Equal4~2_combout\,
	datad => \dht22_one_wire|Decoder0~7_combout\,
	combout => \dht22_one_wire|Decoder0~22_combout\);

-- Location: LCCOMB_X22_Y19_N8
\dht22_one_wire|data_buff[0]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[0]~37_combout\ = (\dht22_one_wire|Decoder0~22_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~22_combout\ & (\dht22_one_wire|data_buff\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|Decoder0~22_combout\,
	datac => \dht22_one_wire|data_buff\(0),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[0]~37_combout\);

-- Location: FF_X22_Y19_N9
\dht22_one_wire|data_buff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[0]~37_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(0));

-- Location: LCCOMB_X22_Y19_N26
\dht22_one_wire|Decoder0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~21_combout\ = (\dht22_one_wire|bit_count\(3) & (\dht22_one_wire|Equal4~2_combout\ & \dht22_one_wire|Decoder0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|bit_count\(3),
	datac => \dht22_one_wire|Equal4~2_combout\,
	datad => \dht22_one_wire|Decoder0~7_combout\,
	combout => \dht22_one_wire|Decoder0~21_combout\);

-- Location: LCCOMB_X22_Y19_N30
\dht22_one_wire|data_buff[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[8]~36_combout\ = (\dht22_one_wire|Decoder0~21_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~21_combout\ & (\dht22_one_wire|data_buff\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~21_combout\,
	datac => \dht22_one_wire|data_buff\(8),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[8]~36_combout\);

-- Location: FF_X22_Y19_N31
\dht22_one_wire|data_buff[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[8]~36_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(8));

-- Location: LCCOMB_X19_Y18_N12
\dht22_one_wire|Decoder0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~20_combout\ = (!\dht22_one_wire|bit_count\(3) & (!\dht22_one_wire|bit_count\(1) & (!\dht22_one_wire|bit_count\(2) & \dht22_one_wire|bit_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|bit_count\(3),
	datab => \dht22_one_wire|bit_count\(1),
	datac => \dht22_one_wire|bit_count\(2),
	datad => \dht22_one_wire|bit_count\(0),
	combout => \dht22_one_wire|Decoder0~20_combout\);

-- Location: LCCOMB_X22_Y16_N30
\dht22_one_wire|data_buff[1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[1]~39_combout\ = (\dht22_one_wire|Decoder0~20_combout\ & ((\dht22_one_wire|Decoder0~7_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~7_combout\ & (\dht22_one_wire|data_buff\(1))))) # 
-- (!\dht22_one_wire|Decoder0~20_combout\ & (((\dht22_one_wire|data_buff\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~20_combout\,
	datab => \dht22_one_wire|Decoder0~7_combout\,
	datac => \dht22_one_wire|data_buff\(1),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[1]~39_combout\);

-- Location: FF_X22_Y16_N31
\dht22_one_wire|data_buff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[1]~39_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(1));

-- Location: LCCOMB_X22_Y19_N20
\dht22_one_wire|Decoder0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~17_combout\ = (\dht22_one_wire|bit_count\(3) & (!\dht22_one_wire|bit_count\(2) & \dht22_one_wire|Decoder0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|bit_count\(3),
	datab => \dht22_one_wire|bit_count\(2),
	datad => \dht22_one_wire|Decoder0~7_combout\,
	combout => \dht22_one_wire|Decoder0~17_combout\);

-- Location: LCCOMB_X23_Y18_N30
\dht22_one_wire|data_buff[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[9]~38_combout\ = (\dht22_one_wire|Decoder0~10_combout\ & ((\dht22_one_wire|Decoder0~17_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~17_combout\ & (\dht22_one_wire|data_buff\(9))))) # 
-- (!\dht22_one_wire|Decoder0~10_combout\ & (((\dht22_one_wire|data_buff\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~10_combout\,
	datab => \dht22_one_wire|Decoder0~17_combout\,
	datac => \dht22_one_wire|data_buff\(9),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[9]~38_combout\);

-- Location: FF_X23_Y18_N31
\dht22_one_wire|data_buff[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[9]~38_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(9));

-- Location: LCCOMB_X22_Y19_N28
\dht22_one_wire|data_buff[10]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[10]~27_combout\ = (\dht22_one_wire|Decoder0~3_combout\ & ((\dht22_one_wire|Decoder0~17_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~17_combout\ & (\dht22_one_wire|data_buff\(10))))) # 
-- (!\dht22_one_wire|Decoder0~3_combout\ & (((\dht22_one_wire|data_buff\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~3_combout\,
	datab => \dht22_one_wire|Decoder0~17_combout\,
	datac => \dht22_one_wire|data_buff\(10),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[10]~27_combout\);

-- Location: FF_X22_Y19_N29
\dht22_one_wire|data_buff[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[10]~27_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(10));

-- Location: LCCOMB_X19_Y18_N28
\dht22_one_wire|Decoder0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~15_combout\ = (!\dht22_one_wire|bit_count\(0) & (!\dht22_one_wire|bit_count\(2) & (!\dht22_one_wire|bit_count\(3) & \dht22_one_wire|bit_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|bit_count\(0),
	datab => \dht22_one_wire|bit_count\(2),
	datac => \dht22_one_wire|bit_count\(3),
	datad => \dht22_one_wire|bit_count\(1),
	combout => \dht22_one_wire|Decoder0~15_combout\);

-- Location: LCCOMB_X22_Y16_N8
\dht22_one_wire|data_buff[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[2]~28_combout\ = (\dht22_one_wire|Decoder0~15_combout\ & ((\dht22_one_wire|Decoder0~7_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~7_combout\ & (\dht22_one_wire|data_buff\(2))))) # 
-- (!\dht22_one_wire|Decoder0~15_combout\ & (((\dht22_one_wire|data_buff\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~15_combout\,
	datab => \dht22_one_wire|Decoder0~7_combout\,
	datac => \dht22_one_wire|data_buff\(2),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[2]~28_combout\);

-- Location: FF_X22_Y16_N9
\dht22_one_wire|data_buff[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[2]~28_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(2));

-- Location: LCCOMB_X21_Y18_N30
\dht22_one_wire|data_buff[11]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[11]~29_combout\ = (\dht22_one_wire|Decoder0~17_combout\ & ((\dht22_one_wire|Decoder0~2_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~2_combout\ & (\dht22_one_wire|data_buff\(11))))) # 
-- (!\dht22_one_wire|Decoder0~17_combout\ & (((\dht22_one_wire|data_buff\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~17_combout\,
	datab => \dht22_one_wire|Decoder0~2_combout\,
	datac => \dht22_one_wire|data_buff\(11),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[11]~29_combout\);

-- Location: FF_X21_Y18_N31
\dht22_one_wire|data_buff[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[11]~29_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(11));

-- Location: LCCOMB_X25_Y18_N28
\dht22_one_wire|Decoder0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~16_combout\ = (\dht22_one_wire|bit_count\(0) & (\dht22_one_wire|bit_count\(1) & (!\dht22_one_wire|bit_count\(2) & !\dht22_one_wire|bit_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|bit_count\(0),
	datab => \dht22_one_wire|bit_count\(1),
	datac => \dht22_one_wire|bit_count\(2),
	datad => \dht22_one_wire|bit_count\(3),
	combout => \dht22_one_wire|Decoder0~16_combout\);

-- Location: LCCOMB_X25_Y18_N18
\dht22_one_wire|data_buff[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[3]~30_combout\ = (\dht22_one_wire|Decoder0~16_combout\ & ((\dht22_one_wire|Decoder0~7_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~7_combout\ & (\dht22_one_wire|data_buff\(3))))) # 
-- (!\dht22_one_wire|Decoder0~16_combout\ & (((\dht22_one_wire|data_buff\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~16_combout\,
	datab => \dht22_one_wire|Decoder0~7_combout\,
	datac => \dht22_one_wire|data_buff\(3),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[3]~30_combout\);

-- Location: FF_X25_Y18_N19
\dht22_one_wire|data_buff[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[3]~30_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(3));

-- Location: LCCOMB_X22_Y16_N20
\dht22_one_wire|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add3~8_combout\ = ((\dht22_one_wire|data_buff\(11) $ (\dht22_one_wire|data_buff\(3) $ (!\dht22_one_wire|Add3~7\)))) # (GND)
-- \dht22_one_wire|Add3~9\ = CARRY((\dht22_one_wire|data_buff\(11) & ((\dht22_one_wire|data_buff\(3)) # (!\dht22_one_wire|Add3~7\))) # (!\dht22_one_wire|data_buff\(11) & (\dht22_one_wire|data_buff\(3) & !\dht22_one_wire|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(11),
	datab => \dht22_one_wire|data_buff\(3),
	datad => VCC,
	cin => \dht22_one_wire|Add3~7\,
	combout => \dht22_one_wire|Add3~8_combout\,
	cout => \dht22_one_wire|Add3~9\);

-- Location: LCCOMB_X22_Y16_N22
\dht22_one_wire|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add3~10_combout\ = (\dht22_one_wire|data_buff\(10) & ((\dht22_one_wire|data_buff\(2) & (\dht22_one_wire|Add3~9\ & VCC)) # (!\dht22_one_wire|data_buff\(2) & (!\dht22_one_wire|Add3~9\)))) # (!\dht22_one_wire|data_buff\(10) & 
-- ((\dht22_one_wire|data_buff\(2) & (!\dht22_one_wire|Add3~9\)) # (!\dht22_one_wire|data_buff\(2) & ((\dht22_one_wire|Add3~9\) # (GND)))))
-- \dht22_one_wire|Add3~11\ = CARRY((\dht22_one_wire|data_buff\(10) & (!\dht22_one_wire|data_buff\(2) & !\dht22_one_wire|Add3~9\)) # (!\dht22_one_wire|data_buff\(10) & ((!\dht22_one_wire|Add3~9\) # (!\dht22_one_wire|data_buff\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(10),
	datab => \dht22_one_wire|data_buff\(2),
	datad => VCC,
	cin => \dht22_one_wire|Add3~9\,
	combout => \dht22_one_wire|Add3~10_combout\,
	cout => \dht22_one_wire|Add3~11\);

-- Location: LCCOMB_X22_Y16_N24
\dht22_one_wire|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add3~12_combout\ = ((\dht22_one_wire|data_buff\(1) $ (\dht22_one_wire|data_buff\(9) $ (!\dht22_one_wire|Add3~11\)))) # (GND)
-- \dht22_one_wire|Add3~13\ = CARRY((\dht22_one_wire|data_buff\(1) & ((\dht22_one_wire|data_buff\(9)) # (!\dht22_one_wire|Add3~11\))) # (!\dht22_one_wire|data_buff\(1) & (\dht22_one_wire|data_buff\(9) & !\dht22_one_wire|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(1),
	datab => \dht22_one_wire|data_buff\(9),
	datad => VCC,
	cin => \dht22_one_wire|Add3~11\,
	combout => \dht22_one_wire|Add3~12_combout\,
	cout => \dht22_one_wire|Add3~13\);

-- Location: LCCOMB_X22_Y16_N26
\dht22_one_wire|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add3~14_combout\ = \dht22_one_wire|data_buff\(0) $ (\dht22_one_wire|Add3~13\ $ (\dht22_one_wire|data_buff\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(0),
	datad => \dht22_one_wire|data_buff\(8),
	cin => \dht22_one_wire|Add3~13\,
	combout => \dht22_one_wire|Add3~14_combout\);

-- Location: LCCOMB_X19_Y18_N10
\dht22_one_wire|Decoder0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~18_combout\ = (!\dht22_one_wire|bit_count\(0) & (!\dht22_one_wire|bit_count\(2) & (!\dht22_one_wire|bit_count\(3) & !\dht22_one_wire|bit_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|bit_count\(0),
	datab => \dht22_one_wire|bit_count\(2),
	datac => \dht22_one_wire|bit_count\(3),
	datad => \dht22_one_wire|bit_count\(1),
	combout => \dht22_one_wire|Decoder0~18_combout\);

-- Location: LCCOMB_X19_Y18_N30
\dht22_one_wire|data_buff[16]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[16]~33_combout\ = (\dht22_one_wire|Decoder0~18_combout\ & ((\dht22_one_wire|Decoder0~4_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~4_combout\ & (\dht22_one_wire|data_buff\(16))))) # 
-- (!\dht22_one_wire|Decoder0~18_combout\ & (((\dht22_one_wire|data_buff\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~18_combout\,
	datab => \dht22_one_wire|Decoder0~4_combout\,
	datac => \dht22_one_wire|data_buff\(16),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[16]~33_combout\);

-- Location: FF_X19_Y18_N31
\dht22_one_wire|data_buff[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[16]~33_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(16));

-- Location: LCCOMB_X22_Y18_N30
\dht22_one_wire|data_buff[24]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[24]~32_combout\ = (\dht22_one_wire|Equal4~0_combout\ & ((\dht22_one_wire|Decoder0~4_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~4_combout\ & (\dht22_one_wire|data_buff\(24))))) # 
-- (!\dht22_one_wire|Equal4~0_combout\ & (((\dht22_one_wire|data_buff\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Equal4~0_combout\,
	datab => \dht22_one_wire|Decoder0~4_combout\,
	datac => \dht22_one_wire|data_buff\(24),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[24]~32_combout\);

-- Location: FF_X22_Y18_N31
\dht22_one_wire|data_buff[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[24]~32_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(24));

-- Location: LCCOMB_X22_Y18_N4
\dht22_one_wire|data_buff[17]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[17]~35_combout\ = (\dht22_one_wire|Decoder0~20_combout\ & ((\dht22_one_wire|Decoder0~4_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~4_combout\ & (\dht22_one_wire|data_buff\(17))))) # 
-- (!\dht22_one_wire|Decoder0~20_combout\ & (((\dht22_one_wire|data_buff\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~20_combout\,
	datab => \dht22_one_wire|Decoder0~4_combout\,
	datac => \dht22_one_wire|data_buff\(17),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[17]~35_combout\);

-- Location: FF_X22_Y18_N5
\dht22_one_wire|data_buff[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[17]~35_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(17));

-- Location: LCCOMB_X25_Y18_N24
\dht22_one_wire|Decoder0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~19_combout\ = (\dht22_one_wire|Decoder0~4_combout\ & (\dht22_one_wire|bit_count\(3) & (!\dht22_one_wire|bit_count\(2) & \dht22_one_wire|Decoder0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~4_combout\,
	datab => \dht22_one_wire|bit_count\(3),
	datac => \dht22_one_wire|bit_count\(2),
	datad => \dht22_one_wire|Decoder0~10_combout\,
	combout => \dht22_one_wire|Decoder0~19_combout\);

-- Location: LCCOMB_X24_Y18_N30
\dht22_one_wire|data_buff[25]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[25]~34_combout\ = (\dht22_one_wire|Decoder0~19_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~19_combout\ & (\dht22_one_wire|data_buff\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|Decoder0~19_combout\,
	datac => \dht22_one_wire|data_buff\(25),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[25]~34_combout\);

-- Location: FF_X24_Y18_N31
\dht22_one_wire|data_buff[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[25]~34_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(25));

-- Location: LCCOMB_X19_Y18_N24
\dht22_one_wire|data_buff[18]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[18]~24_combout\ = (\dht22_one_wire|Decoder0~15_combout\ & ((\dht22_one_wire|Decoder0~4_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~4_combout\ & (\dht22_one_wire|data_buff\(18))))) # 
-- (!\dht22_one_wire|Decoder0~15_combout\ & (((\dht22_one_wire|data_buff\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~15_combout\,
	datab => \dht22_one_wire|Decoder0~4_combout\,
	datac => \dht22_one_wire|data_buff\(18),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[18]~24_combout\);

-- Location: FF_X19_Y18_N25
\dht22_one_wire|data_buff[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[18]~24_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(18));

-- Location: LCCOMB_X25_Y18_N22
\dht22_one_wire|Decoder0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~14_combout\ = (\dht22_one_wire|Decoder0~4_combout\ & (!\dht22_one_wire|bit_count\(2) & \dht22_one_wire|bit_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~4_combout\,
	datab => \dht22_one_wire|bit_count\(2),
	datac => \dht22_one_wire|bit_count\(3),
	combout => \dht22_one_wire|Decoder0~14_combout\);

-- Location: LCCOMB_X24_Y17_N30
\dht22_one_wire|data_buff[26]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[26]~23_combout\ = (\dht22_one_wire|Decoder0~14_combout\ & ((\dht22_one_wire|Decoder0~3_combout\ & (!\dht22_one_wire|LessThan0~6_combout\)) # (!\dht22_one_wire|Decoder0~3_combout\ & ((\dht22_one_wire|data_buff\(26)))))) # 
-- (!\dht22_one_wire|Decoder0~14_combout\ & (((\dht22_one_wire|data_buff\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~14_combout\,
	datab => \dht22_one_wire|LessThan0~6_combout\,
	datac => \dht22_one_wire|data_buff\(26),
	datad => \dht22_one_wire|Decoder0~3_combout\,
	combout => \dht22_one_wire|data_buff[26]~23_combout\);

-- Location: FF_X24_Y17_N31
\dht22_one_wire|data_buff[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[26]~23_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(26));

-- Location: LCCOMB_X22_Y18_N16
\dht22_one_wire|data_buff[19]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[19]~26_combout\ = (\dht22_one_wire|Decoder0~16_combout\ & ((\dht22_one_wire|Decoder0~4_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~4_combout\ & (\dht22_one_wire|data_buff\(19))))) # 
-- (!\dht22_one_wire|Decoder0~16_combout\ & (((\dht22_one_wire|data_buff\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~16_combout\,
	datab => \dht22_one_wire|Decoder0~4_combout\,
	datac => \dht22_one_wire|data_buff\(19),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[19]~26_combout\);

-- Location: FF_X22_Y18_N17
\dht22_one_wire|data_buff[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[19]~26_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(19));

-- Location: LCCOMB_X25_Y18_N12
\dht22_one_wire|data_buff[27]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[27]~25_combout\ = (\dht22_one_wire|Decoder0~2_combout\ & ((\dht22_one_wire|Decoder0~14_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~14_combout\ & (\dht22_one_wire|data_buff\(27))))) # 
-- (!\dht22_one_wire|Decoder0~2_combout\ & (((\dht22_one_wire|data_buff\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~2_combout\,
	datab => \dht22_one_wire|Decoder0~14_combout\,
	datac => \dht22_one_wire|data_buff\(27),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[27]~25_combout\);

-- Location: FF_X25_Y18_N13
\dht22_one_wire|data_buff[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[27]~25_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(27));

-- Location: LCCOMB_X21_Y16_N12
\dht22_one_wire|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add4~8_combout\ = ((\dht22_one_wire|data_buff\(19) $ (\dht22_one_wire|data_buff\(27) $ (!\dht22_one_wire|Add4~7\)))) # (GND)
-- \dht22_one_wire|Add4~9\ = CARRY((\dht22_one_wire|data_buff\(19) & ((\dht22_one_wire|data_buff\(27)) # (!\dht22_one_wire|Add4~7\))) # (!\dht22_one_wire|data_buff\(19) & (\dht22_one_wire|data_buff\(27) & !\dht22_one_wire|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(19),
	datab => \dht22_one_wire|data_buff\(27),
	datad => VCC,
	cin => \dht22_one_wire|Add4~7\,
	combout => \dht22_one_wire|Add4~8_combout\,
	cout => \dht22_one_wire|Add4~9\);

-- Location: LCCOMB_X21_Y16_N14
\dht22_one_wire|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add4~10_combout\ = (\dht22_one_wire|data_buff\(18) & ((\dht22_one_wire|data_buff\(26) & (\dht22_one_wire|Add4~9\ & VCC)) # (!\dht22_one_wire|data_buff\(26) & (!\dht22_one_wire|Add4~9\)))) # (!\dht22_one_wire|data_buff\(18) & 
-- ((\dht22_one_wire|data_buff\(26) & (!\dht22_one_wire|Add4~9\)) # (!\dht22_one_wire|data_buff\(26) & ((\dht22_one_wire|Add4~9\) # (GND)))))
-- \dht22_one_wire|Add4~11\ = CARRY((\dht22_one_wire|data_buff\(18) & (!\dht22_one_wire|data_buff\(26) & !\dht22_one_wire|Add4~9\)) # (!\dht22_one_wire|data_buff\(18) & ((!\dht22_one_wire|Add4~9\) # (!\dht22_one_wire|data_buff\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(18),
	datab => \dht22_one_wire|data_buff\(26),
	datad => VCC,
	cin => \dht22_one_wire|Add4~9\,
	combout => \dht22_one_wire|Add4~10_combout\,
	cout => \dht22_one_wire|Add4~11\);

-- Location: LCCOMB_X21_Y16_N16
\dht22_one_wire|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add4~12_combout\ = ((\dht22_one_wire|data_buff\(17) $ (\dht22_one_wire|data_buff\(25) $ (!\dht22_one_wire|Add4~11\)))) # (GND)
-- \dht22_one_wire|Add4~13\ = CARRY((\dht22_one_wire|data_buff\(17) & ((\dht22_one_wire|data_buff\(25)) # (!\dht22_one_wire|Add4~11\))) # (!\dht22_one_wire|data_buff\(17) & (\dht22_one_wire|data_buff\(25) & !\dht22_one_wire|Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(17),
	datab => \dht22_one_wire|data_buff\(25),
	datad => VCC,
	cin => \dht22_one_wire|Add4~11\,
	combout => \dht22_one_wire|Add4~12_combout\,
	cout => \dht22_one_wire|Add4~13\);

-- Location: LCCOMB_X21_Y16_N18
\dht22_one_wire|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add4~14_combout\ = \dht22_one_wire|data_buff\(16) $ (\dht22_one_wire|Add4~13\ $ (\dht22_one_wire|data_buff\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|data_buff\(16),
	datad => \dht22_one_wire|data_buff\(24),
	cin => \dht22_one_wire|Add4~13\,
	combout => \dht22_one_wire|Add4~14_combout\);

-- Location: LCCOMB_X23_Y16_N20
\dht22_one_wire|check_sum[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|check_sum[4]~8_combout\ = ((\dht22_one_wire|Add4~8_combout\ $ (\dht22_one_wire|Add3~8_combout\ $ (!\dht22_one_wire|check_sum[3]~7\)))) # (GND)
-- \dht22_one_wire|check_sum[4]~9\ = CARRY((\dht22_one_wire|Add4~8_combout\ & ((\dht22_one_wire|Add3~8_combout\) # (!\dht22_one_wire|check_sum[3]~7\))) # (!\dht22_one_wire|Add4~8_combout\ & (\dht22_one_wire|Add3~8_combout\ & 
-- !\dht22_one_wire|check_sum[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Add4~8_combout\,
	datab => \dht22_one_wire|Add3~8_combout\,
	datad => VCC,
	cin => \dht22_one_wire|check_sum[3]~7\,
	combout => \dht22_one_wire|check_sum[4]~8_combout\,
	cout => \dht22_one_wire|check_sum[4]~9\);

-- Location: LCCOMB_X23_Y16_N22
\dht22_one_wire|check_sum[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|check_sum[5]~10_combout\ = (\dht22_one_wire|Add4~10_combout\ & ((\dht22_one_wire|Add3~10_combout\ & (\dht22_one_wire|check_sum[4]~9\ & VCC)) # (!\dht22_one_wire|Add3~10_combout\ & (!\dht22_one_wire|check_sum[4]~9\)))) # 
-- (!\dht22_one_wire|Add4~10_combout\ & ((\dht22_one_wire|Add3~10_combout\ & (!\dht22_one_wire|check_sum[4]~9\)) # (!\dht22_one_wire|Add3~10_combout\ & ((\dht22_one_wire|check_sum[4]~9\) # (GND)))))
-- \dht22_one_wire|check_sum[5]~11\ = CARRY((\dht22_one_wire|Add4~10_combout\ & (!\dht22_one_wire|Add3~10_combout\ & !\dht22_one_wire|check_sum[4]~9\)) # (!\dht22_one_wire|Add4~10_combout\ & ((!\dht22_one_wire|check_sum[4]~9\) # 
-- (!\dht22_one_wire|Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Add4~10_combout\,
	datab => \dht22_one_wire|Add3~10_combout\,
	datad => VCC,
	cin => \dht22_one_wire|check_sum[4]~9\,
	combout => \dht22_one_wire|check_sum[5]~10_combout\,
	cout => \dht22_one_wire|check_sum[5]~11\);

-- Location: LCCOMB_X23_Y16_N24
\dht22_one_wire|check_sum[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|check_sum[6]~12_combout\ = ((\dht22_one_wire|Add4~12_combout\ $ (\dht22_one_wire|Add3~12_combout\ $ (!\dht22_one_wire|check_sum[5]~11\)))) # (GND)
-- \dht22_one_wire|check_sum[6]~13\ = CARRY((\dht22_one_wire|Add4~12_combout\ & ((\dht22_one_wire|Add3~12_combout\) # (!\dht22_one_wire|check_sum[5]~11\))) # (!\dht22_one_wire|Add4~12_combout\ & (\dht22_one_wire|Add3~12_combout\ & 
-- !\dht22_one_wire|check_sum[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Add4~12_combout\,
	datab => \dht22_one_wire|Add3~12_combout\,
	datad => VCC,
	cin => \dht22_one_wire|check_sum[5]~11\,
	combout => \dht22_one_wire|check_sum[6]~12_combout\,
	cout => \dht22_one_wire|check_sum[6]~13\);

-- Location: LCCOMB_X23_Y16_N26
\dht22_one_wire|check_sum[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|check_sum[7]~14_combout\ = \dht22_one_wire|Add3~14_combout\ $ (\dht22_one_wire|Add4~14_combout\ $ (\dht22_one_wire|check_sum[6]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Add3~14_combout\,
	datab => \dht22_one_wire|Add4~14_combout\,
	cin => \dht22_one_wire|check_sum[6]~13\,
	combout => \dht22_one_wire|check_sum[7]~14_combout\);

-- Location: LCCOMB_X26_Y18_N30
\dht22_one_wire|Decoder0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~13_combout\ = (!\dht22_one_wire|bit_count\(2) & \dht22_one_wire|Decoder0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|bit_count\(2),
	datad => \dht22_one_wire|Decoder0~0_combout\,
	combout => \dht22_one_wire|Decoder0~13_combout\);

-- Location: LCCOMB_X22_Y18_N10
\dht22_one_wire|data_buff[35]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[35]~21_combout\ = (\dht22_one_wire|Decoder0~2_combout\ & ((\dht22_one_wire|Decoder0~13_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~13_combout\ & (\dht22_one_wire|data_buff\(35))))) # 
-- (!\dht22_one_wire|Decoder0~2_combout\ & (((\dht22_one_wire|data_buff\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~2_combout\,
	datab => \dht22_one_wire|Decoder0~13_combout\,
	datac => \dht22_one_wire|data_buff\(35),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[35]~21_combout\);

-- Location: FF_X22_Y18_N11
\dht22_one_wire|data_buff[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[35]~21_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(35));

-- Location: LCCOMB_X24_Y17_N28
\dht22_one_wire|data_buff[34]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[34]~22_combout\ = (\dht22_one_wire|Decoder0~13_combout\ & ((\dht22_one_wire|Decoder0~3_combout\ & (!\dht22_one_wire|LessThan0~6_combout\)) # (!\dht22_one_wire|Decoder0~3_combout\ & ((\dht22_one_wire|data_buff\(34)))))) # 
-- (!\dht22_one_wire|Decoder0~13_combout\ & (((\dht22_one_wire|data_buff\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~13_combout\,
	datab => \dht22_one_wire|LessThan0~6_combout\,
	datac => \dht22_one_wire|data_buff\(34),
	datad => \dht22_one_wire|Decoder0~3_combout\,
	combout => \dht22_one_wire|data_buff[34]~22_combout\);

-- Location: FF_X24_Y17_N29
\dht22_one_wire|data_buff[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[34]~22_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(34));

-- Location: LCCOMB_X23_Y16_N28
\dht22_one_wire|valid~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|valid~2_combout\ = (\dht22_one_wire|data_buff\(35) & (\dht22_one_wire|check_sum[4]~8_combout\ & (\dht22_one_wire|check_sum[5]~10_combout\ $ (!\dht22_one_wire|data_buff\(34))))) # (!\dht22_one_wire|data_buff\(35) & 
-- (!\dht22_one_wire|check_sum[4]~8_combout\ & (\dht22_one_wire|check_sum[5]~10_combout\ $ (!\dht22_one_wire|data_buff\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(35),
	datab => \dht22_one_wire|check_sum[4]~8_combout\,
	datac => \dht22_one_wire|check_sum[5]~10_combout\,
	datad => \dht22_one_wire|data_buff\(34),
	combout => \dht22_one_wire|valid~2_combout\);

-- Location: LCCOMB_X25_Y18_N4
\dht22_one_wire|data_buff[32]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[32]~31_combout\ = (\dht22_one_wire|Equal4~2_combout\ & ((\dht22_one_wire|Decoder0~0_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~0_combout\ & (\dht22_one_wire|data_buff\(32))))) # 
-- (!\dht22_one_wire|Equal4~2_combout\ & (((\dht22_one_wire|data_buff\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Equal4~2_combout\,
	datab => \dht22_one_wire|Decoder0~0_combout\,
	datac => \dht22_one_wire|data_buff\(32),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[32]~31_combout\);

-- Location: FF_X25_Y18_N5
\dht22_one_wire|data_buff[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[32]~31_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(32));

-- Location: LCCOMB_X22_Y18_N14
\dht22_one_wire|data_buff[33]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_buff[33]~40_combout\ = (\dht22_one_wire|Decoder0~10_combout\ & ((\dht22_one_wire|Decoder0~13_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~13_combout\ & (\dht22_one_wire|data_buff\(33))))) # 
-- (!\dht22_one_wire|Decoder0~10_combout\ & (((\dht22_one_wire|data_buff\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~10_combout\,
	datab => \dht22_one_wire|Decoder0~13_combout\,
	datac => \dht22_one_wire|data_buff\(33),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_buff[33]~40_combout\);

-- Location: FF_X22_Y18_N15
\dht22_one_wire|data_buff[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_buff[33]~40_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_buff\(33));

-- Location: LCCOMB_X23_Y16_N6
\dht22_one_wire|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal5~0_combout\ = \dht22_one_wire|data_buff\(33) $ (\dht22_one_wire|check_sum[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_one_wire|data_buff\(33),
	datad => \dht22_one_wire|check_sum[6]~12_combout\,
	combout => \dht22_one_wire|Equal5~0_combout\);

-- Location: LCCOMB_X23_Y16_N4
\dht22_one_wire|valid~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|valid~3_combout\ = (\dht22_one_wire|valid~2_combout\ & (!\dht22_one_wire|Equal5~0_combout\ & (\dht22_one_wire|check_sum[7]~14_combout\ $ (!\dht22_one_wire|data_buff\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|check_sum[7]~14_combout\,
	datab => \dht22_one_wire|valid~2_combout\,
	datac => \dht22_one_wire|data_buff\(32),
	datad => \dht22_one_wire|Equal5~0_combout\,
	combout => \dht22_one_wire|valid~3_combout\);

-- Location: LCCOMB_X23_Y16_N30
\dht22_one_wire|valid~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|valid~4_combout\ = (\dht22_one_wire|valid~1_combout\ & (\dht22_one_wire|valid~0_combout\ & (\dht22_one_wire|valid~3_combout\ & \dht22_one_wire|state.ST_CHECK~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|valid~1_combout\,
	datab => \dht22_one_wire|valid~0_combout\,
	datac => \dht22_one_wire|valid~3_combout\,
	datad => \dht22_one_wire|state.ST_CHECK~q\,
	combout => \dht22_one_wire|valid~4_combout\);

-- Location: LCCOMB_X16_Y21_N4
\display|digit_index[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|digit_index[0]~1_combout\ = !\display|digit_index\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display|digit_index\(0),
	combout => \display|digit_index[0]~1_combout\);

-- Location: LCCOMB_X17_Y21_N8
\display|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~8_combout\ = (\display|count\(4) & (\display|Add0~7\ $ (GND))) # (!\display|count\(4) & (!\display|Add0~7\ & VCC))
-- \display|Add0~9\ = CARRY((\display|count\(4) & !\display|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(4),
	datad => VCC,
	cin => \display|Add0~7\,
	combout => \display|Add0~8_combout\,
	cout => \display|Add0~9\);

-- Location: LCCOMB_X16_Y21_N12
\display|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|count~4_combout\ = (\display|Add0~8_combout\ & !\display|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display|Add0~8_combout\,
	datad => \display|Equal0~4_combout\,
	combout => \display|count~4_combout\);

-- Location: FF_X16_Y21_N13
\display|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display|count~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|count\(4));

-- Location: LCCOMB_X17_Y21_N10
\display|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~10_combout\ = (\display|count\(5) & (!\display|Add0~9\)) # (!\display|count\(5) & ((\display|Add0~9\) # (GND)))
-- \display|Add0~11\ = CARRY((!\display|Add0~9\) # (!\display|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(5),
	datad => VCC,
	cin => \display|Add0~9\,
	combout => \display|Add0~10_combout\,
	cout => \display|Add0~11\);

-- Location: FF_X17_Y21_N11
\display|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display|Add0~10_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|count\(5));

-- Location: LCCOMB_X17_Y21_N12
\display|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~12_combout\ = (\display|count\(6) & (\display|Add0~11\ $ (GND))) # (!\display|count\(6) & (!\display|Add0~11\ & VCC))
-- \display|Add0~13\ = CARRY((\display|count\(6) & !\display|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(6),
	datad => VCC,
	cin => \display|Add0~11\,
	combout => \display|Add0~12_combout\,
	cout => \display|Add0~13\);

-- Location: FF_X17_Y21_N13
\display|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display|Add0~12_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|count\(6));

-- Location: LCCOMB_X17_Y21_N14
\display|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~14_combout\ = (\display|count\(7) & (!\display|Add0~13\)) # (!\display|count\(7) & ((\display|Add0~13\) # (GND)))
-- \display|Add0~15\ = CARRY((!\display|Add0~13\) # (!\display|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display|count\(7),
	datad => VCC,
	cin => \display|Add0~13\,
	combout => \display|Add0~14_combout\,
	cout => \display|Add0~15\);

-- Location: FF_X17_Y21_N15
\display|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display|Add0~14_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|count\(7));

-- Location: LCCOMB_X16_Y21_N26
\display|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~3_combout\ = (!\display|count\(6) & (!\display|count\(7) & (!\display|count\(5) & !\display|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(6),
	datab => \display|count\(7),
	datac => \display|count\(5),
	datad => \display|count\(4),
	combout => \display|Equal0~3_combout\);

-- Location: LCCOMB_X17_Y21_N16
\display|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~16_combout\ = (\display|count\(8) & (\display|Add0~15\ $ (GND))) # (!\display|count\(8) & (!\display|Add0~15\ & VCC))
-- \display|Add0~17\ = CARRY((\display|count\(8) & !\display|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(8),
	datad => VCC,
	cin => \display|Add0~15\,
	combout => \display|Add0~16_combout\,
	cout => \display|Add0~17\);

-- Location: LCCOMB_X16_Y21_N16
\display|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|count~3_combout\ = (!\display|Equal0~4_combout\ & \display|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display|Equal0~4_combout\,
	datad => \display|Add0~16_combout\,
	combout => \display|count~3_combout\);

-- Location: FF_X16_Y21_N17
\display|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display|count~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|count\(8));

-- Location: LCCOMB_X17_Y21_N18
\display|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~18_combout\ = (\display|count\(9) & (!\display|Add0~17\)) # (!\display|count\(9) & ((\display|Add0~17\) # (GND)))
-- \display|Add0~19\ = CARRY((!\display|Add0~17\) # (!\display|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display|count\(9),
	datad => VCC,
	cin => \display|Add0~17\,
	combout => \display|Add0~18_combout\,
	cout => \display|Add0~19\);

-- Location: LCCOMB_X16_Y21_N6
\display|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|count~2_combout\ = (!\display|Equal0~4_combout\ & \display|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display|Equal0~4_combout\,
	datad => \display|Add0~18_combout\,
	combout => \display|count~2_combout\);

-- Location: FF_X16_Y21_N7
\display|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display|count~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|count\(9));

-- Location: LCCOMB_X17_Y21_N20
\display|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~20_combout\ = (\display|count\(10) & (\display|Add0~19\ $ (GND))) # (!\display|count\(10) & (!\display|Add0~19\ & VCC))
-- \display|Add0~21\ = CARRY((\display|count\(10) & !\display|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(10),
	datad => VCC,
	cin => \display|Add0~19\,
	combout => \display|Add0~20_combout\,
	cout => \display|Add0~21\);

-- Location: LCCOMB_X16_Y21_N0
\display|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|count~1_combout\ = (\display|Add0~20_combout\ & !\display|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display|Add0~20_combout\,
	datad => \display|Equal0~4_combout\,
	combout => \display|count~1_combout\);

-- Location: FF_X16_Y21_N1
\display|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display|count~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|count\(10));

-- Location: LCCOMB_X17_Y21_N22
\display|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~22_combout\ = (\display|count\(11) & (!\display|Add0~21\)) # (!\display|count\(11) & ((\display|Add0~21\) # (GND)))
-- \display|Add0~23\ = CARRY((!\display|Add0~21\) # (!\display|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(11),
	datad => VCC,
	cin => \display|Add0~21\,
	combout => \display|Add0~22_combout\,
	cout => \display|Add0~23\);

-- Location: FF_X17_Y21_N23
\display|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display|Add0~22_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|count\(11));

-- Location: LCCOMB_X17_Y21_N24
\display|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~24_combout\ = (\display|count\(12) & (\display|Add0~23\ $ (GND))) # (!\display|count\(12) & (!\display|Add0~23\ & VCC))
-- \display|Add0~25\ = CARRY((\display|count\(12) & !\display|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display|count\(12),
	datad => VCC,
	cin => \display|Add0~23\,
	combout => \display|Add0~24_combout\,
	cout => \display|Add0~25\);

-- Location: FF_X17_Y21_N25
\display|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display|Add0~24_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|count\(12));

-- Location: LCCOMB_X17_Y21_N26
\display|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~26_combout\ = (\display|count\(13) & (!\display|Add0~25\)) # (!\display|count\(13) & ((\display|Add0~25\) # (GND)))
-- \display|Add0~27\ = CARRY((!\display|Add0~25\) # (!\display|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display|count\(13),
	datad => VCC,
	cin => \display|Add0~25\,
	combout => \display|Add0~26_combout\,
	cout => \display|Add0~27\);

-- Location: LCCOMB_X16_Y21_N24
\display|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|count~0_combout\ = (!\display|Equal0~4_combout\ & \display|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display|Equal0~4_combout\,
	datad => \display|Add0~26_combout\,
	combout => \display|count~0_combout\);

-- Location: FF_X16_Y21_N25
\display|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display|count~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|count\(13));

-- Location: LCCOMB_X17_Y21_N28
\display|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~28_combout\ = (\display|count\(14) & (\display|Add0~27\ $ (GND))) # (!\display|count\(14) & (!\display|Add0~27\ & VCC))
-- \display|Add0~29\ = CARRY((\display|count\(14) & !\display|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display|count\(14),
	datad => VCC,
	cin => \display|Add0~27\,
	combout => \display|Add0~28_combout\,
	cout => \display|Add0~29\);

-- Location: FF_X17_Y21_N29
\display|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display|Add0~28_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|count\(14));

-- Location: LCCOMB_X17_Y21_N30
\display|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~30_combout\ = \display|count\(15) $ (\display|Add0~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(15),
	cin => \display|Add0~29\,
	combout => \display|Add0~30_combout\);

-- Location: FF_X17_Y21_N31
\display|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display|Add0~30_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|count\(15));

-- Location: LCCOMB_X16_Y21_N14
\display|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~1_combout\ = (!\display|count\(12) & (\display|count\(13) & (!\display|count\(15) & !\display|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(12),
	datab => \display|count\(13),
	datac => \display|count\(15),
	datad => \display|count\(14),
	combout => \display|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y21_N18
\display|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~2_combout\ = (\display|count\(9) & (\display|count\(8) & (\display|count\(10) & !\display|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(9),
	datab => \display|count\(8),
	datac => \display|count\(10),
	datad => \display|count\(11),
	combout => \display|Equal0~2_combout\);

-- Location: LCCOMB_X16_Y21_N28
\display|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~4_combout\ = (\display|Equal0~3_combout\ & (\display|Equal0~1_combout\ & (\display|Equal0~0_combout\ & \display|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Equal0~3_combout\,
	datab => \display|Equal0~1_combout\,
	datac => \display|Equal0~0_combout\,
	datad => \display|Equal0~2_combout\,
	combout => \display|Equal0~4_combout\);

-- Location: FF_X16_Y21_N5
\display|digit_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display|digit_index[0]~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \display|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|digit_index\(0));

-- Location: LCCOMB_X18_Y19_N16
\display|digit_index[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|digit_index[1]~0_combout\ = \display|digit_index\(1) $ (((\display|digit_index\(0) & \display|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_index\(0),
	datac => \display|digit_index\(1),
	datad => \display|Equal0~4_combout\,
	combout => \display|digit_index[1]~0_combout\);

-- Location: FF_X18_Y19_N17
\display|digit_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display|digit_index[1]~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|digit_index\(1));

-- Location: LCCOMB_X18_Y19_N10
\display|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux0~0_combout\ = (!\display|digit_index\(0) & \display|digit_index\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display|digit_index\(0),
	datad => \display|digit_index\(1),
	combout => \display|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y20_N8
\param~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \param~0_combout\ = !\param~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \param~q\,
	combout => \param~0_combout\);

-- Location: FF_X19_Y20_N9
param : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \param~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \param~q\);

-- Location: LCCOMB_X21_Y19_N2
\dht22_data_bcd|num_reg[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[1]~3_combout\ = (\param~q\ & (\dht22_one_wire|data_buff\(30))) # (!\param~q\ & ((\dht22_one_wire|data_buff\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \param~q\,
	datac => \dht22_one_wire|data_buff\(30),
	datad => \dht22_one_wire|data_buff\(14),
	combout => \dht22_data_bcd|num_reg[1]~3_combout\);

-- Location: LCCOMB_X22_Y17_N0
\dht22_data_bcd|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add3~0_combout\ = \dht22_data_bcd|num_reg\(1) $ (VCC)
-- \dht22_data_bcd|Add3~1\ = CARRY(\dht22_data_bcd|num_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_data_bcd|num_reg\(1),
	datad => VCC,
	combout => \dht22_data_bcd|Add3~0_combout\,
	cout => \dht22_data_bcd|Add3~1\);

-- Location: LCCOMB_X22_Y17_N2
\dht22_data_bcd|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add3~2_combout\ = (\dht22_data_bcd|num_reg\(2) & (\dht22_data_bcd|Add3~1\ & VCC)) # (!\dht22_data_bcd|num_reg\(2) & (!\dht22_data_bcd|Add3~1\))
-- \dht22_data_bcd|Add3~3\ = CARRY((!\dht22_data_bcd|num_reg\(2) & !\dht22_data_bcd|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_data_bcd|num_reg\(2),
	datad => VCC,
	cin => \dht22_data_bcd|Add3~1\,
	combout => \dht22_data_bcd|Add3~2_combout\,
	cout => \dht22_data_bcd|Add3~3\);

-- Location: LCCOMB_X21_Y18_N26
\dht22_data_bcd|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector24~0_combout\ = (\dht22_data_bcd|state.ST_CALC~q\ & (((\dht22_data_bcd|Add3~2_combout\) # (\dht22_data_bcd|num_reg[10]~0_combout\)))) # (!\dht22_data_bcd|state.ST_CALC~q\ & (\dht22_one_wire|data_buff\(29) & 
-- ((!\dht22_data_bcd|num_reg[10]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_CALC~q\,
	datab => \dht22_one_wire|data_buff\(29),
	datac => \dht22_data_bcd|Add3~2_combout\,
	datad => \dht22_data_bcd|num_reg[10]~0_combout\,
	combout => \dht22_data_bcd|Selector24~0_combout\);

-- Location: LCCOMB_X22_Y20_N0
\dht22_data_bcd|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~0_combout\ = \dht22_data_bcd|num_reg\(2) $ (VCC)
-- \dht22_data_bcd|Add1~1\ = CARRY(\dht22_data_bcd|num_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_data_bcd|num_reg\(2),
	datad => VCC,
	combout => \dht22_data_bcd|Add1~0_combout\,
	cout => \dht22_data_bcd|Add1~1\);

-- Location: LCCOMB_X21_Y18_N24
\dht22_data_bcd|Selector24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector24~1_combout\ = (\dht22_data_bcd|Selector24~0_combout\ & (((\dht22_data_bcd|Add1~0_combout\) # (!\dht22_data_bcd|num_reg[10]~0_combout\)))) # (!\dht22_data_bcd|Selector24~0_combout\ & (\dht22_one_wire|data_buff\(13) & 
-- ((\dht22_data_bcd|num_reg[10]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|Selector24~0_combout\,
	datab => \dht22_one_wire|data_buff\(13),
	datac => \dht22_data_bcd|Add1~0_combout\,
	datad => \dht22_data_bcd|num_reg[10]~0_combout\,
	combout => \dht22_data_bcd|Selector24~1_combout\);

-- Location: LCCOMB_X21_Y17_N30
\dht22_data_bcd|num_reg[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[10]~1_combout\ = (\dht22_data_bcd|num~0_combout\ & !\dht22_data_bcd|num_reg\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_data_bcd|num~0_combout\,
	datad => \dht22_data_bcd|num_reg\(15),
	combout => \dht22_data_bcd|num_reg[10]~1_combout\);

-- Location: LCCOMB_X23_Y17_N26
\dht22_data_bcd|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|LessThan0~2_combout\ = (!\dht22_data_bcd|num_reg\(6) & (((!\dht22_data_bcd|num_reg\(2) & !\dht22_data_bcd|num_reg\(1))) # (!\dht22_data_bcd|num_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(6),
	datab => \dht22_data_bcd|num_reg\(2),
	datac => \dht22_data_bcd|num_reg\(1),
	datad => \dht22_data_bcd|num_reg\(3),
	combout => \dht22_data_bcd|LessThan0~2_combout\);

-- Location: LCCOMB_X21_Y17_N18
\dht22_data_bcd|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|LessThan0~3_combout\ = (!\dht22_data_bcd|num_reg\(4) & (!\dht22_data_bcd|num_reg\(5) & (\dht22_data_bcd|LessThan0~1_combout\ & \dht22_data_bcd|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(4),
	datab => \dht22_data_bcd|num_reg\(5),
	datac => \dht22_data_bcd|LessThan0~1_combout\,
	datad => \dht22_data_bcd|LessThan0~2_combout\,
	combout => \dht22_data_bcd|LessThan0~3_combout\);

-- Location: LCCOMB_X21_Y17_N20
\dht22_data_bcd|num_reg[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[10]~2_combout\ = (!\dht22_data_bcd|state.ST_DONE~q\ & (((!\dht22_data_bcd|LessThan0~3_combout\) # (!\dht22_data_bcd|num_reg[10]~1_combout\)) # (!\dht22_data_bcd|state.ST_CALC~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_DONE~q\,
	datab => \dht22_data_bcd|state.ST_CALC~q\,
	datac => \dht22_data_bcd|num_reg[10]~1_combout\,
	datad => \dht22_data_bcd|LessThan0~3_combout\,
	combout => \dht22_data_bcd|num_reg[10]~2_combout\);

-- Location: FF_X21_Y18_N25
\dht22_data_bcd|num_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector24~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|num_reg[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(2));

-- Location: LCCOMB_X22_Y20_N2
\dht22_data_bcd|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~2_combout\ = (\dht22_data_bcd|num_reg\(3) & (\dht22_data_bcd|Add1~1\ & VCC)) # (!\dht22_data_bcd|num_reg\(3) & (!\dht22_data_bcd|Add1~1\))
-- \dht22_data_bcd|Add1~3\ = CARRY((!\dht22_data_bcd|num_reg\(3) & !\dht22_data_bcd|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_data_bcd|num_reg\(3),
	datad => VCC,
	cin => \dht22_data_bcd|Add1~1\,
	combout => \dht22_data_bcd|Add1~2_combout\,
	cout => \dht22_data_bcd|Add1~3\);

-- Location: LCCOMB_X22_Y17_N4
\dht22_data_bcd|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add3~4_combout\ = (\dht22_data_bcd|num_reg\(3) & (\dht22_data_bcd|Add3~3\ $ (GND))) # (!\dht22_data_bcd|num_reg\(3) & (!\dht22_data_bcd|Add3~3\ & VCC))
-- \dht22_data_bcd|Add3~5\ = CARRY((\dht22_data_bcd|num_reg\(3) & !\dht22_data_bcd|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(3),
	datad => VCC,
	cin => \dht22_data_bcd|Add3~3\,
	combout => \dht22_data_bcd|Add3~4_combout\,
	cout => \dht22_data_bcd|Add3~5\);

-- Location: LCCOMB_X22_Y19_N0
\dht22_data_bcd|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector23~0_combout\ = (\dht22_data_bcd|state.ST_CALC~q\ & ((\dht22_data_bcd|Add3~4_combout\) # ((\dht22_data_bcd|num_reg[10]~0_combout\)))) # (!\dht22_data_bcd|state.ST_CALC~q\ & (((\dht22_one_wire|data_buff\(28) & 
-- !\dht22_data_bcd|num_reg[10]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|Add3~4_combout\,
	datab => \dht22_data_bcd|state.ST_CALC~q\,
	datac => \dht22_one_wire|data_buff\(28),
	datad => \dht22_data_bcd|num_reg[10]~0_combout\,
	combout => \dht22_data_bcd|Selector23~0_combout\);

-- Location: LCCOMB_X22_Y19_N18
\dht22_data_bcd|Selector23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector23~1_combout\ = (\dht22_data_bcd|Selector23~0_combout\ & (((\dht22_data_bcd|Add1~2_combout\) # (!\dht22_data_bcd|num_reg[10]~0_combout\)))) # (!\dht22_data_bcd|Selector23~0_combout\ & (\dht22_one_wire|data_buff\(12) & 
-- ((\dht22_data_bcd|num_reg[10]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(12),
	datab => \dht22_data_bcd|Add1~2_combout\,
	datac => \dht22_data_bcd|Selector23~0_combout\,
	datad => \dht22_data_bcd|num_reg[10]~0_combout\,
	combout => \dht22_data_bcd|Selector23~1_combout\);

-- Location: FF_X22_Y19_N19
\dht22_data_bcd|num_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector23~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|num_reg[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(3));

-- Location: LCCOMB_X22_Y20_N4
\dht22_data_bcd|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~4_combout\ = (\dht22_data_bcd|num_reg\(4) & ((GND) # (!\dht22_data_bcd|Add1~3\))) # (!\dht22_data_bcd|num_reg\(4) & (\dht22_data_bcd|Add1~3\ $ (GND)))
-- \dht22_data_bcd|Add1~5\ = CARRY((\dht22_data_bcd|num_reg\(4)) # (!\dht22_data_bcd|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(4),
	datad => VCC,
	cin => \dht22_data_bcd|Add1~3\,
	combout => \dht22_data_bcd|Add1~4_combout\,
	cout => \dht22_data_bcd|Add1~5\);

-- Location: LCCOMB_X22_Y17_N6
\dht22_data_bcd|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add3~6_combout\ = (\dht22_data_bcd|num_reg\(4) & (\dht22_data_bcd|Add3~5\ & VCC)) # (!\dht22_data_bcd|num_reg\(4) & (!\dht22_data_bcd|Add3~5\))
-- \dht22_data_bcd|Add3~7\ = CARRY((!\dht22_data_bcd|num_reg\(4) & !\dht22_data_bcd|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(4),
	datad => VCC,
	cin => \dht22_data_bcd|Add3~5\,
	combout => \dht22_data_bcd|Add3~6_combout\,
	cout => \dht22_data_bcd|Add3~7\);

-- Location: LCCOMB_X23_Y17_N28
\dht22_data_bcd|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector22~0_combout\ = (\dht22_data_bcd|num_reg[10]~0_combout\ & (((\dht22_data_bcd|state.ST_CALC~q\)))) # (!\dht22_data_bcd|num_reg[10]~0_combout\ & ((\dht22_data_bcd|state.ST_CALC~q\ & ((\dht22_data_bcd|Add3~6_combout\))) # 
-- (!\dht22_data_bcd|state.ST_CALC~q\ & (\dht22_one_wire|data_buff\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(27),
	datab => \dht22_data_bcd|Add3~6_combout\,
	datac => \dht22_data_bcd|num_reg[10]~0_combout\,
	datad => \dht22_data_bcd|state.ST_CALC~q\,
	combout => \dht22_data_bcd|Selector22~0_combout\);

-- Location: LCCOMB_X23_Y17_N4
\dht22_data_bcd|Selector22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector22~1_combout\ = (\dht22_data_bcd|num_reg[10]~0_combout\ & ((\dht22_data_bcd|Selector22~0_combout\ & ((\dht22_data_bcd|Add1~4_combout\))) # (!\dht22_data_bcd|Selector22~0_combout\ & (\dht22_one_wire|data_buff\(11))))) # 
-- (!\dht22_data_bcd|num_reg[10]~0_combout\ & (((\dht22_data_bcd|Selector22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(11),
	datab => \dht22_data_bcd|Add1~4_combout\,
	datac => \dht22_data_bcd|num_reg[10]~0_combout\,
	datad => \dht22_data_bcd|Selector22~0_combout\,
	combout => \dht22_data_bcd|Selector22~1_combout\);

-- Location: FF_X23_Y17_N5
\dht22_data_bcd|num_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector22~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|num_reg[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(4));

-- Location: LCCOMB_X22_Y20_N6
\dht22_data_bcd|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~6_combout\ = (\dht22_data_bcd|num_reg\(5) & (!\dht22_data_bcd|Add1~5\)) # (!\dht22_data_bcd|num_reg\(5) & ((\dht22_data_bcd|Add1~5\) # (GND)))
-- \dht22_data_bcd|Add1~7\ = CARRY((!\dht22_data_bcd|Add1~5\) # (!\dht22_data_bcd|num_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_data_bcd|num_reg\(5),
	datad => VCC,
	cin => \dht22_data_bcd|Add1~5\,
	combout => \dht22_data_bcd|Add1~6_combout\,
	cout => \dht22_data_bcd|Add1~7\);

-- Location: LCCOMB_X22_Y17_N8
\dht22_data_bcd|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add3~8_combout\ = (\dht22_data_bcd|num_reg\(5) & ((GND) # (!\dht22_data_bcd|Add3~7\))) # (!\dht22_data_bcd|num_reg\(5) & (\dht22_data_bcd|Add3~7\ $ (GND)))
-- \dht22_data_bcd|Add3~9\ = CARRY((\dht22_data_bcd|num_reg\(5)) # (!\dht22_data_bcd|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_data_bcd|num_reg\(5),
	datad => VCC,
	cin => \dht22_data_bcd|Add3~7\,
	combout => \dht22_data_bcd|Add3~8_combout\,
	cout => \dht22_data_bcd|Add3~9\);

-- Location: LCCOMB_X23_Y17_N16
\dht22_data_bcd|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector21~0_combout\ = (\dht22_data_bcd|state.ST_CALC~q\ & (((\dht22_data_bcd|num_reg[10]~0_combout\) # (\dht22_data_bcd|Add3~8_combout\)))) # (!\dht22_data_bcd|state.ST_CALC~q\ & (\dht22_one_wire|data_buff\(26) & 
-- (!\dht22_data_bcd|num_reg[10]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(26),
	datab => \dht22_data_bcd|state.ST_CALC~q\,
	datac => \dht22_data_bcd|num_reg[10]~0_combout\,
	datad => \dht22_data_bcd|Add3~8_combout\,
	combout => \dht22_data_bcd|Selector21~0_combout\);

-- Location: LCCOMB_X23_Y17_N12
\dht22_data_bcd|Selector21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector21~1_combout\ = (\dht22_data_bcd|num_reg[10]~0_combout\ & ((\dht22_data_bcd|Selector21~0_combout\ & ((\dht22_data_bcd|Add1~6_combout\))) # (!\dht22_data_bcd|Selector21~0_combout\ & (\dht22_one_wire|data_buff\(10))))) # 
-- (!\dht22_data_bcd|num_reg[10]~0_combout\ & (((\dht22_data_bcd|Selector21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(10),
	datab => \dht22_data_bcd|Add1~6_combout\,
	datac => \dht22_data_bcd|num_reg[10]~0_combout\,
	datad => \dht22_data_bcd|Selector21~0_combout\,
	combout => \dht22_data_bcd|Selector21~1_combout\);

-- Location: FF_X23_Y17_N13
\dht22_data_bcd|num_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector21~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|num_reg[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(5));

-- Location: LCCOMB_X22_Y20_N8
\dht22_data_bcd|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~8_combout\ = (\dht22_data_bcd|num_reg\(6) & (\dht22_data_bcd|Add1~7\ $ (GND))) # (!\dht22_data_bcd|num_reg\(6) & (!\dht22_data_bcd|Add1~7\ & VCC))
-- \dht22_data_bcd|Add1~9\ = CARRY((\dht22_data_bcd|num_reg\(6) & !\dht22_data_bcd|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(6),
	datad => VCC,
	cin => \dht22_data_bcd|Add1~7\,
	combout => \dht22_data_bcd|Add1~8_combout\,
	cout => \dht22_data_bcd|Add1~9\);

-- Location: LCCOMB_X22_Y17_N10
\dht22_data_bcd|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add3~10_combout\ = (\dht22_data_bcd|num_reg\(6) & (\dht22_data_bcd|Add3~9\ & VCC)) # (!\dht22_data_bcd|num_reg\(6) & (!\dht22_data_bcd|Add3~9\))
-- \dht22_data_bcd|Add3~11\ = CARRY((!\dht22_data_bcd|num_reg\(6) & !\dht22_data_bcd|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(6),
	datad => VCC,
	cin => \dht22_data_bcd|Add3~9\,
	combout => \dht22_data_bcd|Add3~10_combout\,
	cout => \dht22_data_bcd|Add3~11\);

-- Location: LCCOMB_X23_Y17_N18
\dht22_data_bcd|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector20~0_combout\ = (\dht22_data_bcd|state.ST_CALC~q\ & (((\dht22_data_bcd|num_reg[10]~0_combout\) # (\dht22_data_bcd|Add3~10_combout\)))) # (!\dht22_data_bcd|state.ST_CALC~q\ & (\dht22_one_wire|data_buff\(25) & 
-- (!\dht22_data_bcd|num_reg[10]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(25),
	datab => \dht22_data_bcd|state.ST_CALC~q\,
	datac => \dht22_data_bcd|num_reg[10]~0_combout\,
	datad => \dht22_data_bcd|Add3~10_combout\,
	combout => \dht22_data_bcd|Selector20~0_combout\);

-- Location: LCCOMB_X23_Y17_N6
\dht22_data_bcd|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector20~1_combout\ = (\dht22_data_bcd|num_reg[10]~0_combout\ & ((\dht22_data_bcd|Selector20~0_combout\ & ((\dht22_data_bcd|Add1~8_combout\))) # (!\dht22_data_bcd|Selector20~0_combout\ & (\dht22_one_wire|data_buff\(9))))) # 
-- (!\dht22_data_bcd|num_reg[10]~0_combout\ & (((\dht22_data_bcd|Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(9),
	datab => \dht22_data_bcd|Add1~8_combout\,
	datac => \dht22_data_bcd|num_reg[10]~0_combout\,
	datad => \dht22_data_bcd|Selector20~0_combout\,
	combout => \dht22_data_bcd|Selector20~1_combout\);

-- Location: FF_X23_Y17_N7
\dht22_data_bcd|num_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector20~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|num_reg[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(6));

-- Location: LCCOMB_X22_Y17_N12
\dht22_data_bcd|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add3~12_combout\ = (\dht22_data_bcd|num_reg\(7) & ((GND) # (!\dht22_data_bcd|Add3~11\))) # (!\dht22_data_bcd|num_reg\(7) & (\dht22_data_bcd|Add3~11\ $ (GND)))
-- \dht22_data_bcd|Add3~13\ = CARRY((\dht22_data_bcd|num_reg\(7)) # (!\dht22_data_bcd|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_data_bcd|num_reg\(7),
	datad => VCC,
	cin => \dht22_data_bcd|Add3~11\,
	combout => \dht22_data_bcd|Add3~12_combout\,
	cout => \dht22_data_bcd|Add3~13\);

-- Location: LCCOMB_X22_Y19_N14
\dht22_data_bcd|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector19~0_combout\ = (\dht22_data_bcd|state.ST_CALC~q\ & (((\dht22_data_bcd|Add3~12_combout\) # (\dht22_data_bcd|num_reg[10]~0_combout\)))) # (!\dht22_data_bcd|state.ST_CALC~q\ & (\dht22_one_wire|data_buff\(24) & 
-- ((!\dht22_data_bcd|num_reg[10]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(24),
	datab => \dht22_data_bcd|state.ST_CALC~q\,
	datac => \dht22_data_bcd|Add3~12_combout\,
	datad => \dht22_data_bcd|num_reg[10]~0_combout\,
	combout => \dht22_data_bcd|Selector19~0_combout\);

-- Location: LCCOMB_X22_Y20_N10
\dht22_data_bcd|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~10_combout\ = (\dht22_data_bcd|num_reg\(7) & (\dht22_data_bcd|Add1~9\ & VCC)) # (!\dht22_data_bcd|num_reg\(7) & (!\dht22_data_bcd|Add1~9\))
-- \dht22_data_bcd|Add1~11\ = CARRY((!\dht22_data_bcd|num_reg\(7) & !\dht22_data_bcd|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_data_bcd|num_reg\(7),
	datad => VCC,
	cin => \dht22_data_bcd|Add1~9\,
	combout => \dht22_data_bcd|Add1~10_combout\,
	cout => \dht22_data_bcd|Add1~11\);

-- Location: LCCOMB_X22_Y19_N24
\dht22_data_bcd|Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector19~1_combout\ = (\dht22_data_bcd|num_reg[10]~0_combout\ & ((\dht22_data_bcd|Selector19~0_combout\ & ((\dht22_data_bcd|Add1~10_combout\))) # (!\dht22_data_bcd|Selector19~0_combout\ & (\dht22_one_wire|data_buff\(8))))) # 
-- (!\dht22_data_bcd|num_reg[10]~0_combout\ & (\dht22_data_bcd|Selector19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg[10]~0_combout\,
	datab => \dht22_data_bcd|Selector19~0_combout\,
	datac => \dht22_one_wire|data_buff\(8),
	datad => \dht22_data_bcd|Add1~10_combout\,
	combout => \dht22_data_bcd|Selector19~1_combout\);

-- Location: FF_X22_Y19_N25
\dht22_data_bcd|num_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector19~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|num_reg[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(7));

-- Location: LCCOMB_X22_Y20_N12
\dht22_data_bcd|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~12_combout\ = (\dht22_data_bcd|num_reg\(8) & ((GND) # (!\dht22_data_bcd|Add1~11\))) # (!\dht22_data_bcd|num_reg\(8) & (\dht22_data_bcd|Add1~11\ $ (GND)))
-- \dht22_data_bcd|Add1~13\ = CARRY((\dht22_data_bcd|num_reg\(8)) # (!\dht22_data_bcd|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(8),
	datad => VCC,
	cin => \dht22_data_bcd|Add1~11\,
	combout => \dht22_data_bcd|Add1~12_combout\,
	cout => \dht22_data_bcd|Add1~13\);

-- Location: LCCOMB_X22_Y17_N14
\dht22_data_bcd|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add3~14_combout\ = (\dht22_data_bcd|num_reg\(8) & (\dht22_data_bcd|Add3~13\ & VCC)) # (!\dht22_data_bcd|num_reg\(8) & (!\dht22_data_bcd|Add3~13\))
-- \dht22_data_bcd|Add3~15\ = CARRY((!\dht22_data_bcd|num_reg\(8) & !\dht22_data_bcd|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_data_bcd|num_reg\(8),
	datad => VCC,
	cin => \dht22_data_bcd|Add3~13\,
	combout => \dht22_data_bcd|Add3~14_combout\,
	cout => \dht22_data_bcd|Add3~15\);

-- Location: LCCOMB_X21_Y18_N20
\dht22_data_bcd|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector18~0_combout\ = (\dht22_data_bcd|state.ST_CALC~q\ & ((\dht22_data_bcd|Add3~14_combout\) # ((\dht22_data_bcd|num_reg[10]~0_combout\)))) # (!\dht22_data_bcd|state.ST_CALC~q\ & (((\dht22_one_wire|data_buff\(23) & 
-- !\dht22_data_bcd|num_reg[10]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|Add3~14_combout\,
	datab => \dht22_one_wire|data_buff\(23),
	datac => \dht22_data_bcd|state.ST_CALC~q\,
	datad => \dht22_data_bcd|num_reg[10]~0_combout\,
	combout => \dht22_data_bcd|Selector18~0_combout\);

-- Location: LCCOMB_X21_Y18_N2
\dht22_data_bcd|Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector18~1_combout\ = (\dht22_data_bcd|num_reg[10]~0_combout\ & ((\dht22_data_bcd|Selector18~0_combout\ & ((\dht22_data_bcd|Add1~12_combout\))) # (!\dht22_data_bcd|Selector18~0_combout\ & (\dht22_one_wire|data_buff\(7))))) # 
-- (!\dht22_data_bcd|num_reg[10]~0_combout\ & (((\dht22_data_bcd|Selector18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(7),
	datab => \dht22_data_bcd|num_reg[10]~0_combout\,
	datac => \dht22_data_bcd|Add1~12_combout\,
	datad => \dht22_data_bcd|Selector18~0_combout\,
	combout => \dht22_data_bcd|Selector18~1_combout\);

-- Location: FF_X21_Y18_N3
\dht22_data_bcd|num_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector18~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|num_reg[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(8));

-- Location: LCCOMB_X22_Y17_N16
\dht22_data_bcd|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add3~16_combout\ = (\dht22_data_bcd|num_reg\(9) & ((GND) # (!\dht22_data_bcd|Add3~15\))) # (!\dht22_data_bcd|num_reg\(9) & (\dht22_data_bcd|Add3~15\ $ (GND)))
-- \dht22_data_bcd|Add3~17\ = CARRY((\dht22_data_bcd|num_reg\(9)) # (!\dht22_data_bcd|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(9),
	datad => VCC,
	cin => \dht22_data_bcd|Add3~15\,
	combout => \dht22_data_bcd|Add3~16_combout\,
	cout => \dht22_data_bcd|Add3~17\);

-- Location: LCCOMB_X21_Y17_N28
\dht22_data_bcd|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector17~0_combout\ = (\dht22_data_bcd|state.ST_CALC~q\ & (((\dht22_data_bcd|Add3~16_combout\) # (\dht22_data_bcd|num_reg[10]~0_combout\)))) # (!\dht22_data_bcd|state.ST_CALC~q\ & (\dht22_one_wire|data_buff\(22) & 
-- ((!\dht22_data_bcd|num_reg[10]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(22),
	datab => \dht22_data_bcd|Add3~16_combout\,
	datac => \dht22_data_bcd|state.ST_CALC~q\,
	datad => \dht22_data_bcd|num_reg[10]~0_combout\,
	combout => \dht22_data_bcd|Selector17~0_combout\);

-- Location: LCCOMB_X22_Y20_N14
\dht22_data_bcd|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~14_combout\ = (\dht22_data_bcd|num_reg\(9) & (\dht22_data_bcd|Add1~13\ & VCC)) # (!\dht22_data_bcd|num_reg\(9) & (!\dht22_data_bcd|Add1~13\))
-- \dht22_data_bcd|Add1~15\ = CARRY((!\dht22_data_bcd|num_reg\(9) & !\dht22_data_bcd|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(9),
	datad => VCC,
	cin => \dht22_data_bcd|Add1~13\,
	combout => \dht22_data_bcd|Add1~14_combout\,
	cout => \dht22_data_bcd|Add1~15\);

-- Location: LCCOMB_X21_Y17_N2
\dht22_data_bcd|Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector17~1_combout\ = (\dht22_data_bcd|Selector17~0_combout\ & (((\dht22_data_bcd|Add1~14_combout\) # (!\dht22_data_bcd|num_reg[10]~0_combout\)))) # (!\dht22_data_bcd|Selector17~0_combout\ & (\dht22_one_wire|data_buff\(6) & 
-- ((\dht22_data_bcd|num_reg[10]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(6),
	datab => \dht22_data_bcd|Selector17~0_combout\,
	datac => \dht22_data_bcd|Add1~14_combout\,
	datad => \dht22_data_bcd|num_reg[10]~0_combout\,
	combout => \dht22_data_bcd|Selector17~1_combout\);

-- Location: FF_X21_Y17_N3
\dht22_data_bcd|num_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector17~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|num_reg[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(9));

-- Location: LCCOMB_X22_Y20_N16
\dht22_data_bcd|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~16_combout\ = (\dht22_data_bcd|num_reg\(10) & ((GND) # (!\dht22_data_bcd|Add1~15\))) # (!\dht22_data_bcd|num_reg\(10) & (\dht22_data_bcd|Add1~15\ $ (GND)))
-- \dht22_data_bcd|Add1~17\ = CARRY((\dht22_data_bcd|num_reg\(10)) # (!\dht22_data_bcd|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(10),
	datad => VCC,
	cin => \dht22_data_bcd|Add1~15\,
	combout => \dht22_data_bcd|Add1~16_combout\,
	cout => \dht22_data_bcd|Add1~17\);

-- Location: LCCOMB_X22_Y17_N18
\dht22_data_bcd|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add3~18_combout\ = (\dht22_data_bcd|num_reg\(10) & (\dht22_data_bcd|Add3~17\ & VCC)) # (!\dht22_data_bcd|num_reg\(10) & (!\dht22_data_bcd|Add3~17\))
-- \dht22_data_bcd|Add3~19\ = CARRY((!\dht22_data_bcd|num_reg\(10) & !\dht22_data_bcd|Add3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(10),
	datad => VCC,
	cin => \dht22_data_bcd|Add3~17\,
	combout => \dht22_data_bcd|Add3~18_combout\,
	cout => \dht22_data_bcd|Add3~19\);

-- Location: LCCOMB_X21_Y17_N22
\dht22_data_bcd|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector16~0_combout\ = (\dht22_data_bcd|state.ST_CALC~q\ & (((\dht22_data_bcd|Add3~18_combout\) # (\dht22_data_bcd|num_reg[10]~0_combout\)))) # (!\dht22_data_bcd|state.ST_CALC~q\ & (\dht22_one_wire|data_buff\(21) & 
-- ((!\dht22_data_bcd|num_reg[10]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(21),
	datab => \dht22_data_bcd|Add3~18_combout\,
	datac => \dht22_data_bcd|state.ST_CALC~q\,
	datad => \dht22_data_bcd|num_reg[10]~0_combout\,
	combout => \dht22_data_bcd|Selector16~0_combout\);

-- Location: LCCOMB_X21_Y17_N16
\dht22_data_bcd|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector16~1_combout\ = (\dht22_data_bcd|Selector16~0_combout\ & ((\dht22_data_bcd|Add1~16_combout\) # ((!\dht22_data_bcd|num_reg[10]~0_combout\)))) # (!\dht22_data_bcd|Selector16~0_combout\ & (((\dht22_one_wire|data_buff\(5) & 
-- \dht22_data_bcd|num_reg[10]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|Add1~16_combout\,
	datab => \dht22_one_wire|data_buff\(5),
	datac => \dht22_data_bcd|Selector16~0_combout\,
	datad => \dht22_data_bcd|num_reg[10]~0_combout\,
	combout => \dht22_data_bcd|Selector16~1_combout\);

-- Location: FF_X21_Y17_N17
\dht22_data_bcd|num_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector16~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|num_reg[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(10));

-- Location: LCCOMB_X22_Y20_N18
\dht22_data_bcd|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~18_combout\ = (\dht22_data_bcd|num_reg\(11) & (\dht22_data_bcd|Add1~17\ & VCC)) # (!\dht22_data_bcd|num_reg\(11) & (!\dht22_data_bcd|Add1~17\))
-- \dht22_data_bcd|Add1~19\ = CARRY((!\dht22_data_bcd|num_reg\(11) & !\dht22_data_bcd|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(11),
	datad => VCC,
	cin => \dht22_data_bcd|Add1~17\,
	combout => \dht22_data_bcd|Add1~18_combout\,
	cout => \dht22_data_bcd|Add1~19\);

-- Location: LCCOMB_X22_Y17_N20
\dht22_data_bcd|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add3~20_combout\ = (\dht22_data_bcd|num_reg\(11) & ((GND) # (!\dht22_data_bcd|Add3~19\))) # (!\dht22_data_bcd|num_reg\(11) & (\dht22_data_bcd|Add3~19\ $ (GND)))
-- \dht22_data_bcd|Add3~21\ = CARRY((\dht22_data_bcd|num_reg\(11)) # (!\dht22_data_bcd|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(11),
	datad => VCC,
	cin => \dht22_data_bcd|Add3~19\,
	combout => \dht22_data_bcd|Add3~20_combout\,
	cout => \dht22_data_bcd|Add3~21\);

-- Location: LCCOMB_X21_Y18_N6
\dht22_data_bcd|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector15~0_combout\ = (\dht22_data_bcd|state.ST_CALC~q\ & ((\dht22_data_bcd|num_reg[10]~0_combout\) # ((\dht22_data_bcd|Add3~20_combout\)))) # (!\dht22_data_bcd|state.ST_CALC~q\ & (!\dht22_data_bcd|num_reg[10]~0_combout\ & 
-- (\dht22_one_wire|data_buff\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_CALC~q\,
	datab => \dht22_data_bcd|num_reg[10]~0_combout\,
	datac => \dht22_one_wire|data_buff\(20),
	datad => \dht22_data_bcd|Add3~20_combout\,
	combout => \dht22_data_bcd|Selector15~0_combout\);

-- Location: LCCOMB_X21_Y18_N12
\dht22_data_bcd|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector15~1_combout\ = (\dht22_data_bcd|num_reg[10]~0_combout\ & ((\dht22_data_bcd|Selector15~0_combout\ & ((\dht22_data_bcd|Add1~18_combout\))) # (!\dht22_data_bcd|Selector15~0_combout\ & (\dht22_one_wire|data_buff\(4))))) # 
-- (!\dht22_data_bcd|num_reg[10]~0_combout\ & (((\dht22_data_bcd|Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(4),
	datab => \dht22_data_bcd|num_reg[10]~0_combout\,
	datac => \dht22_data_bcd|Add1~18_combout\,
	datad => \dht22_data_bcd|Selector15~0_combout\,
	combout => \dht22_data_bcd|Selector15~1_combout\);

-- Location: FF_X21_Y18_N13
\dht22_data_bcd|num_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector15~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|num_reg[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(11));

-- Location: LCCOMB_X22_Y20_N20
\dht22_data_bcd|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~20_combout\ = (\dht22_data_bcd|num_reg\(12) & ((GND) # (!\dht22_data_bcd|Add1~19\))) # (!\dht22_data_bcd|num_reg\(12) & (\dht22_data_bcd|Add1~19\ $ (GND)))
-- \dht22_data_bcd|Add1~21\ = CARRY((\dht22_data_bcd|num_reg\(12)) # (!\dht22_data_bcd|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_data_bcd|num_reg\(12),
	datad => VCC,
	cin => \dht22_data_bcd|Add1~19\,
	combout => \dht22_data_bcd|Add1~20_combout\,
	cout => \dht22_data_bcd|Add1~21\);

-- Location: LCCOMB_X22_Y17_N22
\dht22_data_bcd|Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add3~22_combout\ = (\dht22_data_bcd|num_reg\(12) & (\dht22_data_bcd|Add3~21\ & VCC)) # (!\dht22_data_bcd|num_reg\(12) & (!\dht22_data_bcd|Add3~21\))
-- \dht22_data_bcd|Add3~23\ = CARRY((!\dht22_data_bcd|num_reg\(12) & !\dht22_data_bcd|Add3~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_data_bcd|num_reg\(12),
	datad => VCC,
	cin => \dht22_data_bcd|Add3~21\,
	combout => \dht22_data_bcd|Add3~22_combout\,
	cout => \dht22_data_bcd|Add3~23\);

-- Location: LCCOMB_X22_Y19_N12
\dht22_data_bcd|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector14~0_combout\ = (\dht22_data_bcd|num_reg[10]~0_combout\ & (\dht22_data_bcd|state.ST_CALC~q\)) # (!\dht22_data_bcd|num_reg[10]~0_combout\ & ((\dht22_data_bcd|state.ST_CALC~q\ & ((\dht22_data_bcd|Add3~22_combout\))) # 
-- (!\dht22_data_bcd|state.ST_CALC~q\ & (\dht22_one_wire|data_buff\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg[10]~0_combout\,
	datab => \dht22_data_bcd|state.ST_CALC~q\,
	datac => \dht22_one_wire|data_buff\(19),
	datad => \dht22_data_bcd|Add3~22_combout\,
	combout => \dht22_data_bcd|Selector14~0_combout\);

-- Location: LCCOMB_X22_Y19_N22
\dht22_data_bcd|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector14~1_combout\ = (\dht22_data_bcd|num_reg[10]~0_combout\ & ((\dht22_data_bcd|Selector14~0_combout\ & (\dht22_data_bcd|Add1~20_combout\)) # (!\dht22_data_bcd|Selector14~0_combout\ & ((\dht22_one_wire|data_buff\(3)))))) # 
-- (!\dht22_data_bcd|num_reg[10]~0_combout\ & (((\dht22_data_bcd|Selector14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg[10]~0_combout\,
	datab => \dht22_data_bcd|Add1~20_combout\,
	datac => \dht22_one_wire|data_buff\(3),
	datad => \dht22_data_bcd|Selector14~0_combout\,
	combout => \dht22_data_bcd|Selector14~1_combout\);

-- Location: FF_X22_Y19_N23
\dht22_data_bcd|num_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector14~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|num_reg[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(12));

-- Location: LCCOMB_X21_Y17_N0
\dht22_data_bcd|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|LessThan0~0_combout\ = (!\dht22_data_bcd|num_reg\(11) & (!\dht22_data_bcd|num_reg\(9) & (!\dht22_data_bcd|num_reg\(12) & !\dht22_data_bcd|num_reg\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(11),
	datab => \dht22_data_bcd|num_reg\(9),
	datac => \dht22_data_bcd|num_reg\(12),
	datad => \dht22_data_bcd|num_reg\(10),
	combout => \dht22_data_bcd|LessThan0~0_combout\);

-- Location: LCCOMB_X21_Y17_N26
\dht22_data_bcd|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|LessThan0~1_combout\ = (\dht22_data_bcd|LessThan0~0_combout\ & (!\dht22_data_bcd|num_reg\(8) & !\dht22_data_bcd|num_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_data_bcd|LessThan0~0_combout\,
	datac => \dht22_data_bcd|num_reg\(8),
	datad => \dht22_data_bcd|num_reg\(7),
	combout => \dht22_data_bcd|LessThan0~1_combout\);

-- Location: LCCOMB_X22_Y20_N22
\dht22_data_bcd|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~22_combout\ = (\dht22_data_bcd|num_reg\(13) & (\dht22_data_bcd|Add1~21\ & VCC)) # (!\dht22_data_bcd|num_reg\(13) & (!\dht22_data_bcd|Add1~21\))
-- \dht22_data_bcd|Add1~23\ = CARRY((!\dht22_data_bcd|num_reg\(13) & !\dht22_data_bcd|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_data_bcd|num_reg\(13),
	datad => VCC,
	cin => \dht22_data_bcd|Add1~21\,
	combout => \dht22_data_bcd|Add1~22_combout\,
	cout => \dht22_data_bcd|Add1~23\);

-- Location: LCCOMB_X22_Y17_N24
\dht22_data_bcd|Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add3~24_combout\ = (\dht22_data_bcd|num_reg\(13) & ((GND) # (!\dht22_data_bcd|Add3~23\))) # (!\dht22_data_bcd|num_reg\(13) & (\dht22_data_bcd|Add3~23\ $ (GND)))
-- \dht22_data_bcd|Add3~25\ = CARRY((\dht22_data_bcd|num_reg\(13)) # (!\dht22_data_bcd|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(13),
	datad => VCC,
	cin => \dht22_data_bcd|Add3~23\,
	combout => \dht22_data_bcd|Add3~24_combout\,
	cout => \dht22_data_bcd|Add3~25\);

-- Location: LCCOMB_X22_Y16_N28
\dht22_data_bcd|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector13~0_combout\ = (\dht22_data_bcd|state.ST_CALC~q\ & (((\dht22_data_bcd|Add3~24_combout\) # (\dht22_data_bcd|num_reg[10]~0_combout\)))) # (!\dht22_data_bcd|state.ST_CALC~q\ & (\dht22_one_wire|data_buff\(18) & 
-- ((!\dht22_data_bcd|num_reg[10]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(18),
	datab => \dht22_data_bcd|state.ST_CALC~q\,
	datac => \dht22_data_bcd|Add3~24_combout\,
	datad => \dht22_data_bcd|num_reg[10]~0_combout\,
	combout => \dht22_data_bcd|Selector13~0_combout\);

-- Location: LCCOMB_X22_Y16_N10
\dht22_data_bcd|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector13~1_combout\ = (\dht22_data_bcd|num_reg[10]~0_combout\ & ((\dht22_data_bcd|Selector13~0_combout\ & (\dht22_data_bcd|Add1~22_combout\)) # (!\dht22_data_bcd|Selector13~0_combout\ & ((\dht22_one_wire|data_buff\(2)))))) # 
-- (!\dht22_data_bcd|num_reg[10]~0_combout\ & (((\dht22_data_bcd|Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg[10]~0_combout\,
	datab => \dht22_data_bcd|Add1~22_combout\,
	datac => \dht22_one_wire|data_buff\(2),
	datad => \dht22_data_bcd|Selector13~0_combout\,
	combout => \dht22_data_bcd|Selector13~1_combout\);

-- Location: FF_X22_Y16_N11
\dht22_data_bcd|num_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector13~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|num_reg[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(13));

-- Location: LCCOMB_X22_Y20_N24
\dht22_data_bcd|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~24_combout\ = (\dht22_data_bcd|num_reg\(14) & ((GND) # (!\dht22_data_bcd|Add1~23\))) # (!\dht22_data_bcd|num_reg\(14) & (\dht22_data_bcd|Add1~23\ $ (GND)))
-- \dht22_data_bcd|Add1~25\ = CARRY((\dht22_data_bcd|num_reg\(14)) # (!\dht22_data_bcd|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(14),
	datad => VCC,
	cin => \dht22_data_bcd|Add1~23\,
	combout => \dht22_data_bcd|Add1~24_combout\,
	cout => \dht22_data_bcd|Add1~25\);

-- Location: LCCOMB_X22_Y17_N26
\dht22_data_bcd|Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add3~26_combout\ = (\dht22_data_bcd|num_reg\(14) & (\dht22_data_bcd|Add3~25\ & VCC)) # (!\dht22_data_bcd|num_reg\(14) & (!\dht22_data_bcd|Add3~25\))
-- \dht22_data_bcd|Add3~27\ = CARRY((!\dht22_data_bcd|num_reg\(14) & !\dht22_data_bcd|Add3~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(14),
	datad => VCC,
	cin => \dht22_data_bcd|Add3~25\,
	combout => \dht22_data_bcd|Add3~26_combout\,
	cout => \dht22_data_bcd|Add3~27\);

-- Location: LCCOMB_X22_Y16_N6
\dht22_data_bcd|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector12~0_combout\ = (\dht22_data_bcd|state.ST_CALC~q\ & (((\dht22_data_bcd|Add3~26_combout\) # (\dht22_data_bcd|num_reg[10]~0_combout\)))) # (!\dht22_data_bcd|state.ST_CALC~q\ & (\dht22_one_wire|data_buff\(17) & 
-- ((!\dht22_data_bcd|num_reg[10]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(17),
	datab => \dht22_data_bcd|state.ST_CALC~q\,
	datac => \dht22_data_bcd|Add3~26_combout\,
	datad => \dht22_data_bcd|num_reg[10]~0_combout\,
	combout => \dht22_data_bcd|Selector12~0_combout\);

-- Location: LCCOMB_X22_Y16_N4
\dht22_data_bcd|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector12~1_combout\ = (\dht22_data_bcd|num_reg[10]~0_combout\ & ((\dht22_data_bcd|Selector12~0_combout\ & ((\dht22_data_bcd|Add1~24_combout\))) # (!\dht22_data_bcd|Selector12~0_combout\ & (\dht22_one_wire|data_buff\(1))))) # 
-- (!\dht22_data_bcd|num_reg[10]~0_combout\ & (((\dht22_data_bcd|Selector12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(1),
	datab => \dht22_data_bcd|Add1~24_combout\,
	datac => \dht22_data_bcd|num_reg[10]~0_combout\,
	datad => \dht22_data_bcd|Selector12~0_combout\,
	combout => \dht22_data_bcd|Selector12~1_combout\);

-- Location: FF_X22_Y16_N5
\dht22_data_bcd|num_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector12~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|num_reg[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(14));

-- Location: LCCOMB_X22_Y16_N0
\dht22_data_bcd|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector1~0_combout\ = (!\dht22_data_bcd|num_reg\(14) & !\dht22_data_bcd|num_reg\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_data_bcd|num_reg\(14),
	datad => \dht22_data_bcd|num_reg\(13),
	combout => \dht22_data_bcd|Selector1~0_combout\);

-- Location: LCCOMB_X22_Y17_N30
\dht22_data_bcd|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|LessThan3~0_combout\ = ((!\dht22_data_bcd|num_reg\(2) & (!\dht22_data_bcd|num_reg\(3) & !\dht22_data_bcd|num_reg\(4)))) # (!\dht22_data_bcd|num_reg\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(6),
	datab => \dht22_data_bcd|num_reg\(2),
	datac => \dht22_data_bcd|num_reg\(3),
	datad => \dht22_data_bcd|num_reg\(4),
	combout => \dht22_data_bcd|LessThan3~0_combout\);

-- Location: LCCOMB_X21_Y17_N8
\dht22_data_bcd|num~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num~0_combout\ = (\dht22_data_bcd|LessThan0~1_combout\ & (\dht22_data_bcd|Selector1~0_combout\ & ((\dht22_data_bcd|LessThan3~0_combout\) # (!\dht22_data_bcd|num_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|LessThan0~1_combout\,
	datab => \dht22_data_bcd|num_reg\(5),
	datac => \dht22_data_bcd|Selector1~0_combout\,
	datad => \dht22_data_bcd|LessThan3~0_combout\,
	combout => \dht22_data_bcd|num~0_combout\);

-- Location: LCCOMB_X22_Y19_N6
\dht22_data_bcd|num_reg[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[10]~0_combout\ = (\dht22_data_bcd|state.ST_CALC~q\ & (((\dht22_data_bcd|num_reg\(15)) # (!\dht22_data_bcd|num~0_combout\)))) # (!\dht22_data_bcd|state.ST_CALC~q\ & (!\param~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \param~q\,
	datab => \dht22_data_bcd|state.ST_CALC~q\,
	datac => \dht22_data_bcd|num_reg\(15),
	datad => \dht22_data_bcd|num~0_combout\,
	combout => \dht22_data_bcd|num_reg[10]~0_combout\);

-- Location: LCCOMB_X22_Y20_N26
\dht22_data_bcd|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~26_combout\ = \dht22_data_bcd|Add1~25\ $ (!\dht22_data_bcd|num_reg\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dht22_data_bcd|num_reg\(15),
	cin => \dht22_data_bcd|Add1~25\,
	combout => \dht22_data_bcd|Add1~26_combout\);

-- Location: LCCOMB_X22_Y17_N28
\dht22_data_bcd|Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add3~28_combout\ = \dht22_data_bcd|num_reg\(15) $ (\dht22_data_bcd|Add3~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_data_bcd|num_reg\(15),
	cin => \dht22_data_bcd|Add3~27\,
	combout => \dht22_data_bcd|Add3~28_combout\);

-- Location: LCCOMB_X22_Y19_N2
\dht22_data_bcd|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector11~0_combout\ = (\dht22_data_bcd|state.ST_CALC~q\ & (((\dht22_data_bcd|Add3~28_combout\) # (\dht22_data_bcd|num_reg[10]~0_combout\)))) # (!\dht22_data_bcd|state.ST_CALC~q\ & (\dht22_one_wire|data_buff\(16) & 
-- ((!\dht22_data_bcd|num_reg[10]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(16),
	datab => \dht22_data_bcd|state.ST_CALC~q\,
	datac => \dht22_data_bcd|Add3~28_combout\,
	datad => \dht22_data_bcd|num_reg[10]~0_combout\,
	combout => \dht22_data_bcd|Selector11~0_combout\);

-- Location: LCCOMB_X22_Y19_N4
\dht22_data_bcd|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector11~1_combout\ = (\dht22_data_bcd|num_reg[10]~0_combout\ & ((\dht22_data_bcd|Selector11~0_combout\ & ((\dht22_data_bcd|Add1~26_combout\))) # (!\dht22_data_bcd|Selector11~0_combout\ & (\dht22_one_wire|data_buff\(0))))) # 
-- (!\dht22_data_bcd|num_reg[10]~0_combout\ & (((\dht22_data_bcd|Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg[10]~0_combout\,
	datab => \dht22_one_wire|data_buff\(0),
	datac => \dht22_data_bcd|Add1~26_combout\,
	datad => \dht22_data_bcd|Selector11~0_combout\,
	combout => \dht22_data_bcd|Selector11~1_combout\);

-- Location: FF_X22_Y19_N5
\dht22_data_bcd|num_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector11~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|num_reg[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(15));

-- Location: LCCOMB_X21_Y19_N10
\dht22_data_bcd|done_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|done_reg~3_combout\ = (!\dht22_data_bcd|num_reg\(15) & (\dht22_data_bcd|LessThan0~3_combout\ & (\dht22_data_bcd|state.ST_CALC~q\ & \dht22_data_bcd|num~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(15),
	datab => \dht22_data_bcd|LessThan0~3_combout\,
	datac => \dht22_data_bcd|state.ST_CALC~q\,
	datad => \dht22_data_bcd|num~0_combout\,
	combout => \dht22_data_bcd|done_reg~3_combout\);

-- Location: LCCOMB_X21_Y19_N8
\dht22_data_bcd|done_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|done_reg~2_combout\ = (\dht22_data_bcd|state.ST_DONE~q\ & (\en_converter~q\ & (\dht22_data_bcd|done_reg~q\))) # (!\dht22_data_bcd|state.ST_DONE~q\ & (((\dht22_data_bcd|done_reg~q\) # (\dht22_data_bcd|done_reg~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_DONE~q\,
	datab => \en_converter~q\,
	datac => \dht22_data_bcd|done_reg~q\,
	datad => \dht22_data_bcd|done_reg~3_combout\,
	combout => \dht22_data_bcd|done_reg~2_combout\);

-- Location: FF_X21_Y19_N9
\dht22_data_bcd|done_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|done_reg~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|done_reg~q\);

-- Location: LCCOMB_X16_Y22_N12
\Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~1_cout\ = CARRY((\display|count\(1) & \display|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(1),
	datab => \display|count\(0),
	datad => VCC,
	cout => \Add1~1_cout\);

-- Location: LCCOMB_X16_Y22_N14
\Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~3_cout\ = CARRY((!\Add1~1_cout\) # (!\display|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display|count\(2),
	datad => VCC,
	cin => \Add1~1_cout\,
	cout => \Add1~3_cout\);

-- Location: LCCOMB_X16_Y22_N16
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (converter_count(3) & (\Add1~3_cout\ $ (GND))) # (!converter_count(3) & (!\Add1~3_cout\ & VCC))
-- \Add1~5\ = CARRY((converter_count(3) & !\Add1~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => converter_count(3),
	datad => VCC,
	cin => \Add1~3_cout\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X16_Y22_N30
\converter_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \converter_count~5_combout\ = (\Add1~4_combout\ & !\Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~4_combout\,
	datad => \Equal1~2_combout\,
	combout => \converter_count~5_combout\);

-- Location: FF_X16_Y22_N31
\converter_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \converter_count~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => converter_count(3));

-- Location: LCCOMB_X16_Y22_N18
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (converter_count(4) & (!\Add1~5\)) # (!converter_count(4) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!converter_count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => converter_count(4),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: FF_X16_Y22_N19
\converter_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => converter_count(4));

-- Location: LCCOMB_X16_Y22_N20
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (converter_count(5) & (\Add1~7\ $ (GND))) # (!converter_count(5) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((converter_count(5) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => converter_count(5),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X16_Y22_N8
\converter_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \converter_count~4_combout\ = (\Add1~8_combout\ & !\Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~8_combout\,
	datad => \Equal1~2_combout\,
	combout => \converter_count~4_combout\);

-- Location: FF_X16_Y22_N9
\converter_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \converter_count~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => converter_count(5));

-- Location: LCCOMB_X16_Y22_N22
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (converter_count(6) & (!\Add1~9\)) # (!converter_count(6) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!converter_count(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => converter_count(6),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X16_Y22_N2
\converter_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \converter_count~3_combout\ = (\Add1~10_combout\ & !\Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~10_combout\,
	datad => \Equal1~2_combout\,
	combout => \converter_count~3_combout\);

-- Location: FF_X16_Y22_N3
\converter_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \converter_count~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => converter_count(6));

-- Location: LCCOMB_X16_Y22_N24
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (converter_count(7) & (\Add1~11\ $ (GND))) # (!converter_count(7) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((converter_count(7) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => converter_count(7),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X16_Y22_N4
\converter_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \converter_count~2_combout\ = (\Add1~12_combout\ & !\Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~12_combout\,
	datad => \Equal1~2_combout\,
	combout => \converter_count~2_combout\);

-- Location: FF_X16_Y22_N5
\converter_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \converter_count~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => converter_count(7));

-- Location: LCCOMB_X16_Y22_N26
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (converter_count(8) & (!\Add1~13\)) # (!converter_count(8) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!converter_count(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => converter_count(8),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X16_Y22_N6
\converter_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \converter_count~1_combout\ = (\Add1~14_combout\ & !\Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~14_combout\,
	datad => \Equal1~2_combout\,
	combout => \converter_count~1_combout\);

-- Location: FF_X16_Y22_N7
\converter_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \converter_count~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => converter_count(8));

-- Location: LCCOMB_X17_Y22_N2
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (converter_count(5) & (converter_count(7) & (converter_count(8) & converter_count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => converter_count(5),
	datab => converter_count(7),
	datac => converter_count(8),
	datad => converter_count(6),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X16_Y22_N28
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = \Add1~15\ $ (!converter_count(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => converter_count(9),
	cin => \Add1~15\,
	combout => \Add1~16_combout\);

-- Location: LCCOMB_X16_Y22_N0
\converter_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \converter_count~0_combout\ = (\Add1~16_combout\ & !\Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~16_combout\,
	datad => \Equal1~2_combout\,
	combout => \converter_count~0_combout\);

-- Location: FF_X16_Y22_N1
\converter_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \converter_count~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => converter_count(9));

-- Location: LCCOMB_X17_Y22_N24
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\display|count\(1) & (\display|count\(0) & (converter_count(9) & \display|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(1),
	datab => \display|count\(0),
	datac => converter_count(9),
	datad => \display|count\(2),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X16_Y22_N10
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\Equal1~1_combout\ & (!converter_count(4) & (!converter_count(3) & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => converter_count(4),
	datac => converter_count(3),
	datad => \Equal1~0_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X21_Y19_N18
\en_converter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \en_converter~0_combout\ = (\Equal1~2_combout\ & (!\dht22_data_bcd|done_reg~q\)) # (!\Equal1~2_combout\ & ((\en_converter~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_data_bcd|done_reg~q\,
	datac => \en_converter~q\,
	datad => \Equal1~2_combout\,
	combout => \en_converter~0_combout\);

-- Location: FF_X21_Y19_N19
en_converter : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \en_converter~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \en_converter~q\);

-- Location: LCCOMB_X21_Y19_N20
\dht22_data_bcd|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector1~1_combout\ = (\en_converter~q\ & ((\dht22_data_bcd|state.ST_IDLE~q\))) # (!\en_converter~q\ & (!\dht22_data_bcd|state.ST_DONE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_DONE~q\,
	datab => \dht22_data_bcd|state.ST_IDLE~q\,
	datad => \en_converter~q\,
	combout => \dht22_data_bcd|Selector1~1_combout\);

-- Location: LCCOMB_X21_Y19_N28
\dht22_data_bcd|Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector1~3_combout\ = (\dht22_data_bcd|state.ST_CALC~q\ & (\dht22_data_bcd|Selector1~0_combout\ & (\dht22_data_bcd|LessThan0~3_combout\ & !\dht22_data_bcd|num_reg\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_CALC~q\,
	datab => \dht22_data_bcd|Selector1~0_combout\,
	datac => \dht22_data_bcd|LessThan0~3_combout\,
	datad => \dht22_data_bcd|num_reg\(15),
	combout => \dht22_data_bcd|Selector1~3_combout\);

-- Location: LCCOMB_X21_Y19_N4
\dht22_data_bcd|state.ST_IDLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|state.ST_IDLE~0_combout\ = (\dht22_data_bcd|Selector1~1_combout\ & ((\dht22_data_bcd|Selector1~3_combout\ & (!\dht22_data_bcd|Selector1~2_combout\)) # (!\dht22_data_bcd|Selector1~3_combout\ & ((\dht22_data_bcd|state.ST_IDLE~q\))))) # 
-- (!\dht22_data_bcd|Selector1~1_combout\ & (!\dht22_data_bcd|Selector1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|Selector1~2_combout\,
	datab => \dht22_data_bcd|Selector1~1_combout\,
	datac => \dht22_data_bcd|state.ST_IDLE~q\,
	datad => \dht22_data_bcd|Selector1~3_combout\,
	combout => \dht22_data_bcd|state.ST_IDLE~0_combout\);

-- Location: FF_X21_Y19_N5
\dht22_data_bcd|state.ST_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|state.ST_IDLE~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|state.ST_IDLE~q\);

-- Location: LCCOMB_X21_Y19_N24
\dht22_data_bcd|Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector2~4_combout\ = (\dht22_data_bcd|state.ST_DONE~q\ & (\en_converter~q\ & ((\dht22_data_bcd|state.ST_IDLE~q\) # (\dht22_data_bcd|Selector1~3_combout\)))) # (!\dht22_data_bcd|state.ST_DONE~q\ & 
-- (((\dht22_data_bcd|Selector1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_IDLE~q\,
	datab => \en_converter~q\,
	datac => \dht22_data_bcd|state.ST_DONE~q\,
	datad => \dht22_data_bcd|Selector1~3_combout\,
	combout => \dht22_data_bcd|Selector2~4_combout\);

-- Location: FF_X21_Y19_N25
\dht22_data_bcd|state.ST_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector2~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|state.ST_DONE~q\);

-- Location: LCCOMB_X21_Y19_N12
\dht22_data_bcd|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector1~2_combout\ = (\dht22_data_bcd|state.ST_DONE~q\ & !\en_converter~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_DONE~q\,
	datab => \en_converter~q\,
	combout => \dht22_data_bcd|Selector1~2_combout\);

-- Location: LCCOMB_X21_Y19_N30
\dht22_data_bcd|Selector1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector1~4_combout\ = (!\dht22_data_bcd|Selector1~3_combout\ & ((\dht22_data_bcd|Selector1~1_combout\ & ((\dht22_data_bcd|state.ST_CALC~q\))) # (!\dht22_data_bcd|Selector1~1_combout\ & (!\dht22_data_bcd|Selector1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|Selector1~2_combout\,
	datab => \dht22_data_bcd|Selector1~1_combout\,
	datac => \dht22_data_bcd|state.ST_CALC~q\,
	datad => \dht22_data_bcd|Selector1~3_combout\,
	combout => \dht22_data_bcd|Selector1~4_combout\);

-- Location: FF_X21_Y19_N31
\dht22_data_bcd|state.ST_CALC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector1~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|state.ST_CALC~q\);

-- Location: LCCOMB_X19_Y19_N20
\dht22_data_bcd|num~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num~1_combout\ = (!\dht22_data_bcd|num_reg\(15) & (\dht22_data_bcd|num~0_combout\ & !\dht22_data_bcd|LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_data_bcd|num_reg\(15),
	datac => \dht22_data_bcd|num~0_combout\,
	datad => \dht22_data_bcd|LessThan0~3_combout\,
	combout => \dht22_data_bcd|num~1_combout\);

-- Location: LCCOMB_X19_Y19_N22
\dht22_data_bcd|num_reg[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[1]~4_combout\ = (\dht22_data_bcd|state.ST_DONE~q\ & (\dht22_data_bcd|num_reg\(1))) # (!\dht22_data_bcd|state.ST_DONE~q\ & ((\dht22_data_bcd|num~1_combout\ & ((\dht22_data_bcd|Add3~0_combout\))) # (!\dht22_data_bcd|num~1_combout\ & 
-- (\dht22_data_bcd|num_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(1),
	datab => \dht22_data_bcd|state.ST_DONE~q\,
	datac => \dht22_data_bcd|Add3~0_combout\,
	datad => \dht22_data_bcd|num~1_combout\,
	combout => \dht22_data_bcd|num_reg[1]~4_combout\);

-- Location: LCCOMB_X19_Y19_N6
\dht22_data_bcd|num_reg[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[1]~5_combout\ = (\dht22_data_bcd|state.ST_CALC~q\ & (((\dht22_data_bcd|num_reg[1]~4_combout\)))) # (!\dht22_data_bcd|state.ST_CALC~q\ & ((\dht22_data_bcd|state.ST_DONE~q\ & ((\dht22_data_bcd|num_reg[1]~4_combout\))) # 
-- (!\dht22_data_bcd|state.ST_DONE~q\ & (\dht22_data_bcd|num_reg[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg[1]~3_combout\,
	datab => \dht22_data_bcd|state.ST_CALC~q\,
	datac => \dht22_data_bcd|num_reg[1]~4_combout\,
	datad => \dht22_data_bcd|state.ST_DONE~q\,
	combout => \dht22_data_bcd|num_reg[1]~5_combout\);

-- Location: FF_X19_Y19_N7
\dht22_data_bcd|num_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|num_reg[1]~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(1));

-- Location: LCCOMB_X21_Y19_N0
\dht22_data_bcd|bcd_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|bcd_reg[0]~0_combout\ = (!\dht22_data_bcd|num_reg\(15) & (\dht22_data_bcd|LessThan0~3_combout\ & (\dht22_data_bcd|state.ST_CALC~q\ & \dht22_data_bcd|num~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(15),
	datab => \dht22_data_bcd|LessThan0~3_combout\,
	datac => \dht22_data_bcd|state.ST_CALC~q\,
	datad => \dht22_data_bcd|num~0_combout\,
	combout => \dht22_data_bcd|bcd_reg[0]~0_combout\);

-- Location: FF_X19_Y19_N5
\dht22_data_bcd|bcd_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_data_bcd|num_reg\(1),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_data_bcd|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|bcd_reg\(1));

-- Location: LCCOMB_X19_Y19_N8
\dht22_data_bcd|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector10~0_combout\ = (\dht22_data_bcd|tens_reg\(0) & ((\dht22_data_bcd|state.ST_DONE~q\) # ((\dht22_data_bcd|state.ST_CALC~q\ & !\dht22_data_bcd|num~1_combout\)))) # (!\dht22_data_bcd|tens_reg\(0) & (\dht22_data_bcd|state.ST_CALC~q\ & 
-- ((\dht22_data_bcd|num~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_CALC~q\,
	datab => \dht22_data_bcd|state.ST_DONE~q\,
	datac => \dht22_data_bcd|tens_reg\(0),
	datad => \dht22_data_bcd|num~1_combout\,
	combout => \dht22_data_bcd|Selector10~0_combout\);

-- Location: FF_X19_Y19_N9
\dht22_data_bcd|tens_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector10~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|tens_reg\(0));

-- Location: LCCOMB_X19_Y19_N0
\dht22_data_bcd|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector9~0_combout\ = (\dht22_data_bcd|state.ST_CALC~q\ & (\dht22_data_bcd|tens_reg\(1) $ (((\dht22_data_bcd|tens_reg\(0) & \dht22_data_bcd|num~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|tens_reg\(1),
	datab => \dht22_data_bcd|state.ST_CALC~q\,
	datac => \dht22_data_bcd|tens_reg\(0),
	datad => \dht22_data_bcd|num~1_combout\,
	combout => \dht22_data_bcd|Selector9~0_combout\);

-- Location: LCCOMB_X19_Y19_N10
\dht22_data_bcd|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector9~1_combout\ = (\dht22_data_bcd|Selector9~0_combout\) # ((\dht22_data_bcd|state.ST_DONE~q\ & \dht22_data_bcd|tens_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_data_bcd|state.ST_DONE~q\,
	datac => \dht22_data_bcd|tens_reg\(1),
	datad => \dht22_data_bcd|Selector9~0_combout\,
	combout => \dht22_data_bcd|Selector9~1_combout\);

-- Location: FF_X19_Y19_N11
\dht22_data_bcd|tens_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector9~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|tens_reg\(1));

-- Location: FF_X19_Y19_N25
\dht22_data_bcd|bcd_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_data_bcd|tens_reg\(1),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_data_bcd|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|bcd_reg\(5));

-- Location: LCCOMB_X21_Y17_N12
\dht22_data_bcd|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector6~0_combout\ = (\dht22_data_bcd|hundreds_reg\(0) & ((\dht22_data_bcd|state.ST_DONE~q\) # ((\dht22_data_bcd|state.ST_CALC~q\ & \dht22_data_bcd|num_reg[10]~1_combout\)))) # (!\dht22_data_bcd|hundreds_reg\(0) & 
-- (((\dht22_data_bcd|state.ST_CALC~q\ & !\dht22_data_bcd|num_reg[10]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_DONE~q\,
	datab => \dht22_data_bcd|state.ST_CALC~q\,
	datac => \dht22_data_bcd|hundreds_reg\(0),
	datad => \dht22_data_bcd|num_reg[10]~1_combout\,
	combout => \dht22_data_bcd|Selector6~0_combout\);

-- Location: FF_X21_Y17_N13
\dht22_data_bcd|hundreds_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector6~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|hundreds_reg\(0));

-- Location: LCCOMB_X21_Y17_N10
\dht22_data_bcd|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector5~0_combout\ = (\dht22_data_bcd|state.ST_CALC~q\ & (\dht22_data_bcd|hundreds_reg\(1) $ (((!\dht22_data_bcd|num_reg[10]~1_combout\ & \dht22_data_bcd|hundreds_reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg[10]~1_combout\,
	datab => \dht22_data_bcd|hundreds_reg\(1),
	datac => \dht22_data_bcd|state.ST_CALC~q\,
	datad => \dht22_data_bcd|hundreds_reg\(0),
	combout => \dht22_data_bcd|Selector5~0_combout\);

-- Location: LCCOMB_X21_Y17_N14
\dht22_data_bcd|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector5~1_combout\ = (\dht22_data_bcd|Selector5~0_combout\) # ((\dht22_data_bcd|state.ST_DONE~q\ & \dht22_data_bcd|hundreds_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_DONE~q\,
	datac => \dht22_data_bcd|hundreds_reg\(1),
	datad => \dht22_data_bcd|Selector5~0_combout\,
	combout => \dht22_data_bcd|Selector5~1_combout\);

-- Location: FF_X21_Y17_N15
\dht22_data_bcd|hundreds_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector5~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|hundreds_reg\(1));

-- Location: LCCOMB_X21_Y19_N26
\dht22_data_bcd|bcd_reg[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|bcd_reg[9]~feeder_combout\ = \dht22_data_bcd|hundreds_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_data_bcd|hundreds_reg\(1),
	combout => \dht22_data_bcd|bcd_reg[9]~feeder_combout\);

-- Location: FF_X21_Y19_N27
\dht22_data_bcd|bcd_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|bcd_reg[9]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|bcd_reg\(9));

-- Location: LCCOMB_X19_Y19_N24
\display|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux3~0_combout\ = (\display|digit_index\(0) & (\display|digit_index\(1) & ((\dht22_data_bcd|bcd_reg\(9))))) # (!\display|digit_index\(0) & (((\dht22_data_bcd|bcd_reg\(5))) # (!\display|digit_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_index\(0),
	datab => \display|digit_index\(1),
	datac => \dht22_data_bcd|bcd_reg\(5),
	datad => \dht22_data_bcd|bcd_reg\(9),
	combout => \display|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y19_N4
\display|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux3~1_combout\ = (\display|Mux3~0_combout\) # ((!\display|digit_index\(1) & \dht22_data_bcd|bcd_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_index\(1),
	datac => \dht22_data_bcd|bcd_reg\(1),
	datad => \display|Mux3~0_combout\,
	combout => \display|Mux3~1_combout\);

-- Location: LCCOMB_X19_Y19_N12
\dht22_data_bcd|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector8~0_combout\ = (\dht22_data_bcd|tens_reg\(1) & (\dht22_data_bcd|tens_reg\(0) & \dht22_data_bcd|num~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|tens_reg\(1),
	datac => \dht22_data_bcd|tens_reg\(0),
	datad => \dht22_data_bcd|num~1_combout\,
	combout => \dht22_data_bcd|Selector8~0_combout\);

-- Location: LCCOMB_X19_Y19_N14
\dht22_data_bcd|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector8~1_combout\ = (\dht22_data_bcd|tens_reg\(2) & ((\dht22_data_bcd|state.ST_DONE~q\) # ((\dht22_data_bcd|state.ST_CALC~q\ & !\dht22_data_bcd|Selector8~0_combout\)))) # (!\dht22_data_bcd|tens_reg\(2) & 
-- (\dht22_data_bcd|state.ST_CALC~q\ & ((\dht22_data_bcd|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_CALC~q\,
	datab => \dht22_data_bcd|state.ST_DONE~q\,
	datac => \dht22_data_bcd|tens_reg\(2),
	datad => \dht22_data_bcd|Selector8~0_combout\,
	combout => \dht22_data_bcd|Selector8~1_combout\);

-- Location: FF_X19_Y19_N15
\dht22_data_bcd|tens_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector8~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|tens_reg\(2));

-- Location: FF_X19_Y19_N3
\dht22_data_bcd|bcd_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_data_bcd|tens_reg\(2),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_data_bcd|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|bcd_reg\(6));

-- Location: LCCOMB_X21_Y19_N14
\dht22_data_bcd|bcd_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|bcd_reg[2]~feeder_combout\ = \dht22_data_bcd|num_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dht22_data_bcd|num_reg\(2),
	combout => \dht22_data_bcd|bcd_reg[2]~feeder_combout\);

-- Location: FF_X21_Y19_N15
\dht22_data_bcd|bcd_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|bcd_reg[2]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|bcd_reg\(2));

-- Location: LCCOMB_X21_Y17_N6
\dht22_data_bcd|Selector4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector4~3_combout\ = (\dht22_data_bcd|hundreds_reg\(1) & (\dht22_data_bcd|hundreds_reg\(0) & ((\dht22_data_bcd|num_reg\(15)) # (!\dht22_data_bcd|num~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(15),
	datab => \dht22_data_bcd|hundreds_reg\(1),
	datac => \dht22_data_bcd|num~0_combout\,
	datad => \dht22_data_bcd|hundreds_reg\(0),
	combout => \dht22_data_bcd|Selector4~3_combout\);

-- Location: LCCOMB_X21_Y17_N24
\dht22_data_bcd|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector4~2_combout\ = (\dht22_data_bcd|hundreds_reg\(2) & ((\dht22_data_bcd|state.ST_DONE~q\) # ((\dht22_data_bcd|state.ST_CALC~q\ & !\dht22_data_bcd|Selector4~3_combout\)))) # (!\dht22_data_bcd|hundreds_reg\(2) & 
-- (((\dht22_data_bcd|state.ST_CALC~q\ & \dht22_data_bcd|Selector4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_DONE~q\,
	datab => \dht22_data_bcd|state.ST_CALC~q\,
	datac => \dht22_data_bcd|hundreds_reg\(2),
	datad => \dht22_data_bcd|Selector4~3_combout\,
	combout => \dht22_data_bcd|Selector4~2_combout\);

-- Location: FF_X21_Y17_N25
\dht22_data_bcd|hundreds_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector4~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|hundreds_reg\(2));

-- Location: FF_X21_Y19_N21
\dht22_data_bcd|bcd_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_data_bcd|hundreds_reg\(2),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_data_bcd|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|bcd_reg\(10));

-- Location: LCCOMB_X18_Y19_N20
\display|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux2~0_combout\ = (\display|digit_index\(0) & ((\display|digit_index\(1) & ((\dht22_data_bcd|bcd_reg\(10)))) # (!\display|digit_index\(1) & (\dht22_data_bcd|bcd_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|bcd_reg\(2),
	datab => \display|digit_index\(1),
	datac => \display|digit_index\(0),
	datad => \dht22_data_bcd|bcd_reg\(10),
	combout => \display|Mux2~0_combout\);

-- Location: LCCOMB_X18_Y19_N14
\display|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux2~1_combout\ = (\display|Mux2~0_combout\) # ((\dht22_data_bcd|bcd_reg\(6) & (!\display|digit_index\(0) & \display|digit_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|bcd_reg\(6),
	datab => \display|Mux2~0_combout\,
	datac => \display|digit_index\(0),
	datad => \display|digit_index\(1),
	combout => \display|Mux2~1_combout\);

-- Location: LCCOMB_X21_Y17_N4
\dht22_data_bcd|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector3~0_combout\ = (\dht22_data_bcd|hundreds_reg\(0) & (\dht22_data_bcd|hundreds_reg\(1) & (!\dht22_data_bcd|num_reg[10]~1_combout\ & \dht22_data_bcd|hundreds_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|hundreds_reg\(0),
	datab => \dht22_data_bcd|hundreds_reg\(1),
	datac => \dht22_data_bcd|num_reg[10]~1_combout\,
	datad => \dht22_data_bcd|hundreds_reg\(2),
	combout => \dht22_data_bcd|Selector3~0_combout\);

-- Location: LCCOMB_X19_Y19_N28
\dht22_data_bcd|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector3~1_combout\ = (\dht22_data_bcd|hundreds_reg\(3) & ((\dht22_data_bcd|state.ST_DONE~q\) # ((\dht22_data_bcd|state.ST_CALC~q\ & !\dht22_data_bcd|Selector3~0_combout\)))) # (!\dht22_data_bcd|hundreds_reg\(3) & 
-- (\dht22_data_bcd|state.ST_CALC~q\ & ((\dht22_data_bcd|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_CALC~q\,
	datab => \dht22_data_bcd|state.ST_DONE~q\,
	datac => \dht22_data_bcd|hundreds_reg\(3),
	datad => \dht22_data_bcd|Selector3~0_combout\,
	combout => \dht22_data_bcd|Selector3~1_combout\);

-- Location: FF_X19_Y19_N29
\dht22_data_bcd|hundreds_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector3~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|hundreds_reg\(3));

-- Location: LCCOMB_X18_Y19_N24
\dht22_data_bcd|bcd_reg[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|bcd_reg[11]~feeder_combout\ = \dht22_data_bcd|hundreds_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dht22_data_bcd|hundreds_reg\(3),
	combout => \dht22_data_bcd|bcd_reg[11]~feeder_combout\);

-- Location: FF_X18_Y19_N25
\dht22_data_bcd|bcd_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|bcd_reg[11]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|bcd_reg\(11));

-- Location: LCCOMB_X19_Y19_N2
\dht22_data_bcd|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector7~0_combout\ = (\dht22_data_bcd|tens_reg\(1) & (\dht22_data_bcd|tens_reg\(0) & (\dht22_data_bcd|tens_reg\(2) & \dht22_data_bcd|num~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|tens_reg\(1),
	datab => \dht22_data_bcd|tens_reg\(0),
	datac => \dht22_data_bcd|tens_reg\(2),
	datad => \dht22_data_bcd|num~1_combout\,
	combout => \dht22_data_bcd|Selector7~0_combout\);

-- Location: LCCOMB_X19_Y19_N30
\dht22_data_bcd|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector7~1_combout\ = (\dht22_data_bcd|tens_reg\(3) & ((\dht22_data_bcd|state.ST_DONE~q\) # ((\dht22_data_bcd|state.ST_CALC~q\ & !\dht22_data_bcd|Selector7~0_combout\)))) # (!\dht22_data_bcd|tens_reg\(3) & 
-- (\dht22_data_bcd|state.ST_CALC~q\ & ((\dht22_data_bcd|Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_CALC~q\,
	datab => \dht22_data_bcd|state.ST_DONE~q\,
	datac => \dht22_data_bcd|tens_reg\(3),
	datad => \dht22_data_bcd|Selector7~0_combout\,
	combout => \dht22_data_bcd|Selector7~1_combout\);

-- Location: FF_X19_Y19_N31
\dht22_data_bcd|tens_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector7~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|tens_reg\(3));

-- Location: FF_X18_Y19_N31
\dht22_data_bcd|bcd_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_data_bcd|tens_reg\(3),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_data_bcd|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|bcd_reg\(7));

-- Location: LCCOMB_X18_Y19_N30
\display|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux1~0_combout\ = (\display|digit_index\(0) & (\dht22_data_bcd|bcd_reg\(11) & ((\display|digit_index\(1))))) # (!\display|digit_index\(0) & (((\dht22_data_bcd|bcd_reg\(7)) # (!\display|digit_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_index\(0),
	datab => \dht22_data_bcd|bcd_reg\(11),
	datac => \dht22_data_bcd|bcd_reg\(7),
	datad => \display|digit_index\(1),
	combout => \display|Mux1~0_combout\);

-- Location: FF_X21_Y19_N13
\dht22_data_bcd|bcd_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_data_bcd|num_reg\(3),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_data_bcd|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|bcd_reg\(3));

-- Location: LCCOMB_X18_Y19_N8
\display|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux1~1_combout\ = (\display|Mux1~0_combout\) # ((!\display|digit_index\(1) & \dht22_data_bcd|bcd_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display|digit_index\(1),
	datac => \display|Mux1~0_combout\,
	datad => \dht22_data_bcd|bcd_reg\(3),
	combout => \display|Mux1~1_combout\);

-- Location: FF_X19_Y19_N17
\dht22_data_bcd|bcd_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_data_bcd|tens_reg\(0),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_data_bcd|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|bcd_reg\(4));

-- Location: FF_X19_Y19_N27
\dht22_data_bcd|bcd_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_data_bcd|hundreds_reg\(0),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_data_bcd|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|bcd_reg\(8));

-- Location: LCCOMB_X21_Y19_N22
\dht22_data_bcd|num_reg[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[0]~6_combout\ = (!\dht22_data_bcd|state.ST_IDLE~q\ & ((\param~q\ & (\dht22_one_wire|data_buff\(31))) # (!\param~q\ & ((\dht22_one_wire|data_buff\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_buff\(31),
	datab => \dht22_one_wire|data_buff\(15),
	datac => \dht22_data_bcd|state.ST_IDLE~q\,
	datad => \param~q\,
	combout => \dht22_data_bcd|num_reg[0]~6_combout\);

-- Location: LCCOMB_X21_Y19_N6
\dht22_data_bcd|num_reg[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[0]~7_combout\ = (\dht22_data_bcd|num_reg[0]~6_combout\) # ((\dht22_data_bcd|state.ST_IDLE~q\ & \dht22_data_bcd|num_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg[0]~6_combout\,
	datab => \dht22_data_bcd|state.ST_IDLE~q\,
	datac => \dht22_data_bcd|num_reg\(0),
	combout => \dht22_data_bcd|num_reg[0]~7_combout\);

-- Location: FF_X21_Y19_N7
\dht22_data_bcd|num_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|num_reg[0]~7_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(0));

-- Location: LCCOMB_X21_Y19_N16
\dht22_data_bcd|bcd_reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|bcd_reg[0]~feeder_combout\ = \dht22_data_bcd|num_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dht22_data_bcd|num_reg\(0),
	combout => \dht22_data_bcd|bcd_reg[0]~feeder_combout\);

-- Location: FF_X21_Y19_N17
\dht22_data_bcd|bcd_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|bcd_reg[0]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|bcd_reg\(0));

-- Location: LCCOMB_X19_Y19_N18
\display|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux4~0_combout\ = (\display|digit_index\(1) & (((\display|digit_index\(0))))) # (!\display|digit_index\(1) & ((\display|digit_index\(0) & ((\dht22_data_bcd|bcd_reg\(0)))) # (!\display|digit_index\(0) & (!\param~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_index\(1),
	datab => \param~q\,
	datac => \display|digit_index\(0),
	datad => \dht22_data_bcd|bcd_reg\(0),
	combout => \display|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y19_N26
\display|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux4~1_combout\ = (\display|digit_index\(1) & ((\display|Mux4~0_combout\ & ((\dht22_data_bcd|bcd_reg\(8)))) # (!\display|Mux4~0_combout\ & (\dht22_data_bcd|bcd_reg\(4))))) # (!\display|digit_index\(1) & (((\display|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_index\(1),
	datab => \dht22_data_bcd|bcd_reg\(4),
	datac => \dht22_data_bcd|bcd_reg\(8),
	datad => \display|Mux4~0_combout\,
	combout => \display|Mux4~1_combout\);

-- Location: LCCOMB_X18_Y19_N22
\display|rom|rom~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|rom|rom~0_combout\ = (\display|Mux3~1_combout\ & (!\display|Mux2~1_combout\ & (\display|Mux1~1_combout\ & \display|Mux4~1_combout\))) # (!\display|Mux3~1_combout\ & (!\display|Mux1~1_combout\ & (\display|Mux2~1_combout\ $ 
-- (\display|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Mux3~1_combout\,
	datab => \display|Mux2~1_combout\,
	datac => \display|Mux1~1_combout\,
	datad => \display|Mux4~1_combout\,
	combout => \display|rom|rom~0_combout\);

-- Location: LCCOMB_X18_Y19_N28
\display|rom|rom~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|rom|rom~1_combout\ = (\display|Mux3~1_combout\ & (!\display|Mux4~1_combout\ & (\display|Mux2~1_combout\ $ (\display|Mux1~1_combout\)))) # (!\display|Mux3~1_combout\ & (\display|Mux2~1_combout\ & (!\display|Mux1~1_combout\ & 
-- \display|Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Mux3~1_combout\,
	datab => \display|Mux2~1_combout\,
	datac => \display|Mux1~1_combout\,
	datad => \display|Mux4~1_combout\,
	combout => \display|rom|rom~1_combout\);

-- Location: LCCOMB_X18_Y19_N2
\display|rom|rom~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|rom|rom~2_combout\ = (\display|Mux3~1_combout\ & (!\display|Mux2~1_combout\ & !\display|Mux4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Mux3~1_combout\,
	datac => \display|Mux2~1_combout\,
	datad => \display|Mux4~1_combout\,
	combout => \display|rom|rom~2_combout\);

-- Location: LCCOMB_X18_Y19_N12
\display|rom|rom~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|rom|rom~3_combout\ = (\display|Mux3~1_combout\ & (\display|Mux4~1_combout\ & (\display|Mux2~1_combout\ $ (\display|Mux1~1_combout\)))) # (!\display|Mux3~1_combout\ & (!\display|Mux1~1_combout\ & (\display|Mux2~1_combout\ $ 
-- (\display|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Mux3~1_combout\,
	datab => \display|Mux2~1_combout\,
	datac => \display|Mux1~1_combout\,
	datad => \display|Mux4~1_combout\,
	combout => \display|rom|rom~3_combout\);

-- Location: LCCOMB_X18_Y19_N26
\display|rom|rom~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|rom|rom~4_combout\ = (\display|Mux3~1_combout\ & (((!\display|Mux1~1_combout\ & \display|Mux4~1_combout\)))) # (!\display|Mux3~1_combout\ & ((\display|Mux2~1_combout\ & (!\display|Mux1~1_combout\)) # (!\display|Mux2~1_combout\ & 
-- ((\display|Mux4~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Mux3~1_combout\,
	datab => \display|Mux2~1_combout\,
	datac => \display|Mux1~1_combout\,
	datad => \display|Mux4~1_combout\,
	combout => \display|rom|rom~4_combout\);

-- Location: LCCOMB_X18_Y19_N0
\display|rom|rom~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|rom|rom~5_combout\ = (!\display|Mux1~1_combout\ & ((\display|Mux3~1_combout\ & ((\display|Mux4~1_combout\) # (!\display|Mux2~1_combout\))) # (!\display|Mux3~1_combout\ & (!\display|Mux2~1_combout\ & \display|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Mux3~1_combout\,
	datab => \display|Mux2~1_combout\,
	datac => \display|Mux1~1_combout\,
	datad => \display|Mux4~1_combout\,
	combout => \display|rom|rom~5_combout\);

-- Location: LCCOMB_X18_Y19_N18
\display|rom|rom~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|rom|rom~6_combout\ = (\display|Mux4~1_combout\ & ((\display|Mux1~1_combout\) # (\display|Mux3~1_combout\ $ (\display|Mux2~1_combout\)))) # (!\display|Mux4~1_combout\ & ((\display|Mux2~1_combout\) # (\display|Mux3~1_combout\ $ 
-- (\display|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Mux3~1_combout\,
	datab => \display|Mux2~1_combout\,
	datac => \display|Mux1~1_combout\,
	datad => \display|Mux4~1_combout\,
	combout => \display|rom|rom~6_combout\);

-- Location: LCCOMB_X16_Y21_N20
\display|shift_reg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|shift_reg[1]~1_combout\ = !\display|shift_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \display|shift_reg\(0),
	combout => \display|shift_reg[1]~1_combout\);

-- Location: FF_X16_Y21_N21
\display|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display|shift_reg[1]~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \display|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|shift_reg\(1));

-- Location: LCCOMB_X16_Y21_N30
\display|shift_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|shift_reg[2]~feeder_combout\ = \display|shift_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \display|shift_reg\(1),
	combout => \display|shift_reg[2]~feeder_combout\);

-- Location: FF_X16_Y21_N31
\display|shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display|shift_reg[2]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \display|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|shift_reg\(2));

-- Location: FF_X16_Y21_N9
\display|shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \display|shift_reg\(2),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \display|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|shift_reg\(3));

-- Location: LCCOMB_X16_Y21_N10
\display|shift_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|shift_reg[0]~0_combout\ = !\display|shift_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display|shift_reg\(3),
	combout => \display|shift_reg[0]~0_combout\);

-- Location: FF_X16_Y21_N11
\display|shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display|shift_reg[0]~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \display|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|shift_reg\(0));

ww_led <= \led~output_o\;

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

io <= \io~output_o\;
END structure;


