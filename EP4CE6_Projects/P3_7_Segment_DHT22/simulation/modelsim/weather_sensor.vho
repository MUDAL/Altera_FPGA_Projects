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

-- DATE "01/30/2024 22:25:42"

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
	dp : OUT std_logic;
	seg : OUT std_logic_vector(6 DOWNTO 0);
	sel : OUT std_logic_vector(3 DOWNTO 0)
	);
END weather_sensor;

-- Design Ports Information
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
SIGNAL ww_dp : std_logic;
SIGNAL ww_seg : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \io~output_o\ : std_logic;
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
SIGNAL \dht22_one_wire|state.ST_IDLE~feeder_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \dht22_one_wire|state.ST_IDLE~q\ : std_logic;
SIGNAL \dht22_one_wire|clks[0]~20_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector3~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|state.ST_ACK~q\ : std_logic;
SIGNAL \dht22_one_wire|Selector8~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector0~9_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal3~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks[9]~39\ : std_logic;
SIGNAL \dht22_one_wire|clks[10]~40_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks[10]~41\ : std_logic;
SIGNAL \dht22_one_wire|clks[11]~42_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks[11]~43\ : std_logic;
SIGNAL \dht22_one_wire|clks[12]~44_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal3~1_combout\ : std_logic;
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
SIGNAL \dht22_one_wire|LessThan1~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|LessThan1~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal3~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|state.ST_CHECK~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|state.ST_CHECK~q\ : std_logic;
SIGNAL \dht22_one_wire|WideOr3~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|WideOr3~combout\ : std_logic;
SIGNAL \dht22_one_wire|bit_count~0_combout\ : std_logic;
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
SIGNAL \dht22_one_wire|Equal4~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector0~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector6~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|state.ST_DONE~q\ : std_logic;
SIGNAL \dht22_one_wire|Selector8~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal3~3_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal3~5_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal3~4_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal3~6_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector0~3_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector0~4_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal2~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal2~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal2~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal2~3_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector8~1_combout\ : std_logic;
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
SIGNAL \dht22_one_wire|Selector0~10_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector0~11_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector1~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|state.ST_START~q\ : std_logic;
SIGNAL \dht22_one_wire|Selector0~12_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector2~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|state.ST_PRE_ACK~q\ : std_logic;
SIGNAL \dht22_one_wire|Selector0~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector15~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector4~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector4~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|state.ST_SAMPLE~q\ : std_logic;
SIGNAL \io~input_o\ : std_logic;
SIGNAL \dht22_one_wire|read_io~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|read_io~q\ : std_logic;
SIGNAL \dht22_one_wire|old_io_state~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|old_io_state~q\ : std_logic;
SIGNAL \dht22_one_wire|state_transition~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector0~5_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector0~6_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector0~7_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector0~8_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector5~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|state.ST_PROCESS_DATA~q\ : std_logic;
SIGNAL \dht22_one_wire|LessThan1~5_combout\ : std_logic;
SIGNAL \dht22_one_wire|LessThan1~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|LessThan1~3_combout\ : std_logic;
SIGNAL \dht22_one_wire|LessThan1~4_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector15~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|io~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|io~en_q\ : std_logic;
SIGNAL \display|digit_index[0]~1_combout\ : std_logic;
SIGNAL \display|Add0~0_combout\ : std_logic;
SIGNAL \display|Add0~1\ : std_logic;
SIGNAL \display|Add0~2_combout\ : std_logic;
SIGNAL \display|Add0~3\ : std_logic;
SIGNAL \display|Add0~4_combout\ : std_logic;
SIGNAL \display|Add0~5\ : std_logic;
SIGNAL \display|Add0~6_combout\ : std_logic;
SIGNAL \display|Add0~7\ : std_logic;
SIGNAL \display|Add0~8_combout\ : std_logic;
SIGNAL \display|count~4_combout\ : std_logic;
SIGNAL \display|Add0~9\ : std_logic;
SIGNAL \display|Add0~10_combout\ : std_logic;
SIGNAL \display|Add0~11\ : std_logic;
SIGNAL \display|Add0~12_combout\ : std_logic;
SIGNAL \display|Add0~13\ : std_logic;
SIGNAL \display|Add0~14_combout\ : std_logic;
SIGNAL \display|Add0~15\ : std_logic;
SIGNAL \display|Add0~16_combout\ : std_logic;
SIGNAL \display|count~3_combout\ : std_logic;
SIGNAL \display|Add0~17\ : std_logic;
SIGNAL \display|Add0~18_combout\ : std_logic;
SIGNAL \display|count~2_combout\ : std_logic;
SIGNAL \display|Equal0~2_combout\ : std_logic;
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
SIGNAL \display|Equal0~1_combout\ : std_logic;
SIGNAL \display|Equal0~3_combout\ : std_logic;
SIGNAL \display|Add0~27\ : std_logic;
SIGNAL \display|Add0~28_combout\ : std_logic;
SIGNAL \display|Add0~29\ : std_logic;
SIGNAL \display|Add0~30_combout\ : std_logic;
SIGNAL \display|Equal0~0_combout\ : std_logic;
SIGNAL \display|Equal0~4_combout\ : std_logic;
SIGNAL \display|digit_index[1]~0_combout\ : std_logic;
SIGNAL \display|Mux0~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector1~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~3_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~2_combout\ : std_logic;
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
SIGNAL \dht22_one_wire|Add1~34_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~35\ : std_logic;
SIGNAL \dht22_one_wire|Add1~36_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~32_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~28_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~26_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~30_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~24_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~18_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~22_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~12_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~16_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~8_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~14_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~10_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~4_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~6_combout\ : std_logic;
SIGNAL \dht22_one_wire|LessThan0~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|LessThan0~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~20_combout\ : std_logic;
SIGNAL \dht22_one_wire|LessThan0~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|LessThan0~3_combout\ : std_logic;
SIGNAL \dht22_one_wire|LessThan0~4_combout\ : std_logic;
SIGNAL \dht22_one_wire|LessThan0~5_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add1~37\ : std_logic;
SIGNAL \dht22_one_wire|Add1~38_combout\ : std_logic;
SIGNAL \dht22_one_wire|LessThan0~6_combout\ : std_logic;
SIGNAL \dht22_one_wire|one_wire_buff[1]~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[14]~6_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~9_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~7_combout\ : std_logic;
SIGNAL \dht22_one_wire|one_wire_buff[14]~14_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[1]~11_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector9~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[1]~9_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~1\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~3\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~5\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~7\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~8_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~5\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~6_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~38_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[5]~feeder_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~4_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~11_combout\ : std_logic;
SIGNAL \dht22_one_wire|one_wire_buff[10]~12_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~7\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~9\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~10_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~9\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~11\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~12_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~33_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[7]~feeder_combout\ : std_logic;
SIGNAL \dht22_one_wire|one_wire_buff[8]~7_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~11\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~12_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~13\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~14_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~32_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[8]~feeder_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~8_combout\ : std_logic;
SIGNAL \dht22_one_wire|one_wire_buff[7]~6_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~13\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~14_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~15\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~16_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~31_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[9]~feeder_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|one_wire_buff[6]~5_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~15\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~16_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~17\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~18_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~30_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[10]~feeder_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~6_combout\ : std_logic;
SIGNAL \dht22_one_wire|one_wire_buff[5]~4_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~19\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~20_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~17\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~18_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~29_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[11]~feeder_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~5_combout\ : std_logic;
SIGNAL \dht22_one_wire|one_wire_buff[4]~3_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~21\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~22_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~19\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~20_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~28_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[12]~feeder_combout\ : std_logic;
SIGNAL \dht22_one_wire|one_wire_buff[3]~2_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~23\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~24_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~21\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~22_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~39_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[13]~feeder_combout\ : std_logic;
SIGNAL \dht22_one_wire|one_wire_buff[2]~13_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~25\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~27\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~28_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~23\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~25\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~26_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[15]~3_combout\ : std_logic;
SIGNAL \dht22_one_wire|one_wire_buff[0]~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[15]~2_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[15]~5_combout\ : std_logic;
SIGNAL \dht22_data_bcd|LessThan3~2_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[10]~4_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~24_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~26_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[14]~7_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[14]~8_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector1~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~8_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~10_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~37_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[6]~feeder_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~10_combout\ : std_logic;
SIGNAL \dht22_one_wire|one_wire_buff[9]~11_combout\ : std_logic;
SIGNAL \dht22_data_bcd|LessThan3~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|LessThan0~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|LessThan0~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|LessThan3~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~2_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~36_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[2]~feeder_combout\ : std_logic;
SIGNAL \dht22_one_wire|one_wire_buff[13]~10_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~1\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~2_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~4_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~35_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[3]~feeder_combout\ : std_logic;
SIGNAL \dht22_one_wire|one_wire_buff[12]~9_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~3\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~4_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~6_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~34_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[4]~feeder_combout\ : std_logic;
SIGNAL \dht22_one_wire|one_wire_buff[11]~8_combout\ : std_logic;
SIGNAL \dht22_data_bcd|LessThan0~2_combout\ : std_logic;
SIGNAL \dht22_data_bcd|LessThan0~3_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector1~3_combout\ : std_logic;
SIGNAL \dht22_data_bcd|state.ST_IDLE~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|state.ST_IDLE~q\ : std_logic;
SIGNAL \dht22_data_bcd|Selector2~4_combout\ : std_logic;
SIGNAL \dht22_data_bcd|state.ST_DONE~q\ : std_logic;
SIGNAL \dht22_data_bcd|Selector1~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector1~4_combout\ : std_logic;
SIGNAL \dht22_data_bcd|state.ST_CALC~q\ : std_logic;
SIGNAL \dht22_data_bcd|Selector10~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector9~2_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector9~3_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add2~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector8~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector8~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|bcd_reg[0]~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector6~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector5~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector5~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector4~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector4~1_combout\ : std_logic;
SIGNAL \display|Mux2~0_combout\ : std_logic;
SIGNAL \display|Mux2~1_combout\ : std_logic;
SIGNAL \display|Mux3~0_combout\ : std_logic;
SIGNAL \display|Mux3~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector9~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector7~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector7~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector3~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector3~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|bcd_reg[11]~feeder_combout\ : std_logic;
SIGNAL \display|Mux1~0_combout\ : std_logic;
SIGNAL \display|Mux1~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|bcd_reg[4]~feeder_combout\ : std_logic;
SIGNAL \Add0~1_cout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \count~11_combout\ : std_logic;
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
SIGNAL \count~10_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \count~9_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \count~8_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \count~7_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \count~6_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \count~5_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \count~4_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \count~3_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \count~2_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \param~0_combout\ : std_logic;
SIGNAL \param~q\ : std_logic;
SIGNAL \dht22_one_wire|one_wire_buff[15]~15_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[0]~10_combout\ : std_logic;
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
SIGNAL \display|shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \display|shift_reg[0]~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dht22_one_wire|clks\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \dht22_data_bcd|hundreds_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \display|digit_index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \display|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dht22_data_bcd|bcd_reg\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \display|shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL \dht22_data_bcd|tens_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dht22_one_wire|one_wire_buff\ : std_logic_vector(0 TO 39);
SIGNAL \dht22_one_wire|bit_count\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \dht22_one_wire|clk_stamp\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \dht22_data_bcd|ALT_INV_state.ST_CALC~q\ : std_logic;
SIGNAL \display|ALT_INV_shift_reg\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \display|rom|ALT_INV_rom~6_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|ALT_INV_state.ST_PROCESS_DATA~q\ : std_logic;
SIGNAL \dht22_one_wire|ALT_INV_io~en_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_rst_n <= rst_n;
ww_clk <= clk;
dp <= ww_dp;
seg <= ww_seg;
sel <= ww_sel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst_n~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\dht22_data_bcd|ALT_INV_state.ST_CALC~q\ <= NOT \dht22_data_bcd|state.ST_CALC~q\;
\display|ALT_INV_shift_reg\(3) <= NOT \display|shift_reg\(3);
\display|ALT_INV_shift_reg\(2) <= NOT \display|shift_reg\(2);
\display|ALT_INV_shift_reg\(1) <= NOT \display|shift_reg\(1);
\display|rom|ALT_INV_rom~6_combout\ <= NOT \display|rom|rom~6_combout\;
\display|ALT_INV_Mux0~0_combout\ <= NOT \display|Mux0~0_combout\;
\dht22_one_wire|ALT_INV_state.ST_PROCESS_DATA~q\ <= NOT \dht22_one_wire|state.ST_PROCESS_DATA~q\;
\dht22_one_wire|ALT_INV_io~en_q\ <= NOT \dht22_one_wire|io~en_q\;
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

-- Location: LCCOMB_X25_Y16_N24
\dht22_one_wire|state.ST_IDLE~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|state.ST_IDLE~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \dht22_one_wire|state.ST_IDLE~feeder_combout\);

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

-- Location: FF_X25_Y16_N25
\dht22_one_wire|state.ST_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|state.ST_IDLE~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|state.ST_IDLE~q\);

-- Location: LCCOMB_X24_Y17_N12
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

-- Location: LCCOMB_X22_Y16_N30
\dht22_one_wire|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector3~0_combout\ = (!\dht22_one_wire|Selector0~11_combout\ & ((\dht22_one_wire|Selector0~8_combout\ & (\dht22_one_wire|Selector0~2_combout\)) # (!\dht22_one_wire|Selector0~8_combout\ & ((\dht22_one_wire|state.ST_ACK~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Selector0~8_combout\,
	datab => \dht22_one_wire|Selector0~2_combout\,
	datac => \dht22_one_wire|state.ST_ACK~q\,
	datad => \dht22_one_wire|Selector0~11_combout\,
	combout => \dht22_one_wire|Selector3~0_combout\);

-- Location: FF_X22_Y16_N31
\dht22_one_wire|state.ST_ACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|Selector3~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|state.ST_ACK~q\);

-- Location: LCCOMB_X22_Y16_N16
\dht22_one_wire|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector8~0_combout\ = (!\dht22_one_wire|state.ST_ACK~q\ & !\dht22_one_wire|state.ST_SAMPLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_one_wire|state.ST_ACK~q\,
	datad => \dht22_one_wire|state.ST_SAMPLE~q\,
	combout => \dht22_one_wire|Selector8~0_combout\);

-- Location: LCCOMB_X25_Y17_N6
\dht22_one_wire|Selector0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector0~9_combout\ = (!\dht22_one_wire|clks\(2) & (!\dht22_one_wire|clks\(5) & (!\dht22_one_wire|clks\(4) & !\dht22_one_wire|clks\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(2),
	datab => \dht22_one_wire|clks\(5),
	datac => \dht22_one_wire|clks\(4),
	datad => \dht22_one_wire|clks\(3),
	combout => \dht22_one_wire|Selector0~9_combout\);

-- Location: LCCOMB_X24_Y17_N4
\dht22_one_wire|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal3~0_combout\ = (\dht22_one_wire|clks\(0) & (\dht22_one_wire|clks\(1) & \dht22_one_wire|clks\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(0),
	datac => \dht22_one_wire|clks\(1),
	datad => \dht22_one_wire|clks\(8),
	combout => \dht22_one_wire|Equal3~0_combout\);

-- Location: LCCOMB_X24_Y17_N30
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

-- Location: LCCOMB_X24_Y16_N0
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

-- Location: FF_X24_Y16_N1
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

-- Location: LCCOMB_X24_Y16_N2
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

-- Location: FF_X24_Y16_N3
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

-- Location: LCCOMB_X24_Y16_N4
\dht22_one_wire|clks[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks[12]~44_combout\ = (\dht22_one_wire|clks\(12) & (\dht22_one_wire|clks[11]~43\ $ (GND))) # (!\dht22_one_wire|clks\(12) & (!\dht22_one_wire|clks[11]~43\ & VCC))
-- \dht22_one_wire|clks[12]~45\ = CARRY((\dht22_one_wire|clks\(12) & !\dht22_one_wire|clks[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|clks\(12),
	datad => VCC,
	cin => \dht22_one_wire|clks[11]~43\,
	combout => \dht22_one_wire|clks[12]~44_combout\,
	cout => \dht22_one_wire|clks[12]~45\);

-- Location: FF_X24_Y16_N5
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

-- Location: LCCOMB_X25_Y16_N14
\dht22_one_wire|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal3~1_combout\ = (\dht22_one_wire|clks\(7) & (!\dht22_one_wire|clks\(12) & \dht22_one_wire|clks\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(7),
	datac => \dht22_one_wire|clks\(12),
	datad => \dht22_one_wire|clks\(6),
	combout => \dht22_one_wire|Equal3~1_combout\);

-- Location: LCCOMB_X24_Y16_N6
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

-- Location: FF_X24_Y16_N7
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

-- Location: LCCOMB_X24_Y16_N8
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

-- Location: FF_X24_Y16_N9
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

-- Location: LCCOMB_X24_Y16_N10
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

-- Location: FF_X24_Y16_N11
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

-- Location: LCCOMB_X24_Y16_N12
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

-- Location: FF_X24_Y16_N13
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

-- Location: LCCOMB_X24_Y16_N14
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

-- Location: FF_X24_Y16_N15
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

-- Location: LCCOMB_X24_Y16_N16
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

-- Location: FF_X24_Y16_N17
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

-- Location: LCCOMB_X24_Y16_N18
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

-- Location: FF_X24_Y16_N19
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

-- Location: LCCOMB_X25_Y16_N4
\dht22_one_wire|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|LessThan1~1_combout\ = (!\dht22_one_wire|clks\(19) & (!\dht22_one_wire|clks\(18) & !\dht22_one_wire|clks\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|clks\(19),
	datac => \dht22_one_wire|clks\(18),
	datad => \dht22_one_wire|clks\(16),
	combout => \dht22_one_wire|LessThan1~1_combout\);

-- Location: LCCOMB_X24_Y16_N24
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

-- Location: LCCOMB_X25_Y16_N28
\dht22_one_wire|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal3~2_combout\ = (\dht22_one_wire|Equal3~0_combout\ & (\dht22_one_wire|Equal3~1_combout\ & (\dht22_one_wire|LessThan1~1_combout\ & \dht22_one_wire|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Equal3~0_combout\,
	datab => \dht22_one_wire|Equal3~1_combout\,
	datac => \dht22_one_wire|LessThan1~1_combout\,
	datad => \dht22_one_wire|LessThan1~0_combout\,
	combout => \dht22_one_wire|Equal3~2_combout\);

-- Location: LCCOMB_X25_Y16_N26
\dht22_one_wire|state.ST_CHECK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|state.ST_CHECK~0_combout\ = (\dht22_one_wire|state.ST_CHECK~q\) # ((\dht22_one_wire|Selector0~9_combout\ & (\dht22_one_wire|Selector0~10_combout\ & \dht22_one_wire|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Selector0~9_combout\,
	datab => \dht22_one_wire|Selector0~10_combout\,
	datac => \dht22_one_wire|state.ST_CHECK~q\,
	datad => \dht22_one_wire|Equal3~2_combout\,
	combout => \dht22_one_wire|state.ST_CHECK~0_combout\);

-- Location: FF_X25_Y16_N27
\dht22_one_wire|state.ST_CHECK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|state.ST_CHECK~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|state.ST_CHECK~q\);

-- Location: LCCOMB_X25_Y16_N20
\dht22_one_wire|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|WideOr3~0_combout\ = (!\dht22_one_wire|state.ST_CHECK~q\ & (\dht22_one_wire|state.ST_IDLE~q\ & (!\dht22_one_wire|state.ST_PRE_ACK~q\ & \dht22_one_wire|Selector8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_CHECK~q\,
	datab => \dht22_one_wire|state.ST_IDLE~q\,
	datac => \dht22_one_wire|state.ST_PRE_ACK~q\,
	datad => \dht22_one_wire|Selector8~0_combout\,
	combout => \dht22_one_wire|WideOr3~0_combout\);

-- Location: LCCOMB_X21_Y17_N2
\dht22_one_wire|WideOr3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|WideOr3~combout\ = (\dht22_one_wire|state.ST_START~q\) # (!\dht22_one_wire|WideOr3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_one_wire|state.ST_START~q\,
	datad => \dht22_one_wire|WideOr3~0_combout\,
	combout => \dht22_one_wire|WideOr3~combout\);

-- Location: LCCOMB_X25_Y17_N20
\dht22_one_wire|bit_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|bit_count~0_combout\ = (\dht22_one_wire|old_io_state~q\ & !\dht22_one_wire|read_io~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|old_io_state~q\,
	datad => \dht22_one_wire|read_io~q\,
	combout => \dht22_one_wire|bit_count~0_combout\);

-- Location: LCCOMB_X21_Y17_N10
\dht22_one_wire|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add2~0_combout\ = (\dht22_one_wire|bit_count\(0) & (\dht22_one_wire|bit_count~0_combout\ $ (VCC))) # (!\dht22_one_wire|bit_count\(0) & (\dht22_one_wire|bit_count~0_combout\ & VCC))
-- \dht22_one_wire|Add2~1\ = CARRY((\dht22_one_wire|bit_count\(0) & \dht22_one_wire|bit_count~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|bit_count\(0),
	datab => \dht22_one_wire|bit_count~0_combout\,
	datad => VCC,
	combout => \dht22_one_wire|Add2~0_combout\,
	cout => \dht22_one_wire|Add2~1\);

-- Location: LCCOMB_X21_Y17_N26
\dht22_one_wire|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector14~0_combout\ = (\dht22_one_wire|Add2~0_combout\ & ((\dht22_one_wire|state.ST_PROCESS_DATA~q\) # ((\dht22_one_wire|WideOr3~combout\ & \dht22_one_wire|bit_count\(0))))) # (!\dht22_one_wire|Add2~0_combout\ & 
-- (\dht22_one_wire|WideOr3~combout\ & (\dht22_one_wire|bit_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Add2~0_combout\,
	datab => \dht22_one_wire|WideOr3~combout\,
	datac => \dht22_one_wire|bit_count\(0),
	datad => \dht22_one_wire|state.ST_PROCESS_DATA~q\,
	combout => \dht22_one_wire|Selector14~0_combout\);

-- Location: FF_X21_Y17_N27
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

-- Location: LCCOMB_X21_Y17_N12
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

-- Location: LCCOMB_X21_Y17_N30
\dht22_one_wire|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector13~0_combout\ = (\dht22_one_wire|Add2~2_combout\ & ((\dht22_one_wire|state.ST_PROCESS_DATA~q\) # ((\dht22_one_wire|WideOr3~combout\ & \dht22_one_wire|bit_count\(1))))) # (!\dht22_one_wire|Add2~2_combout\ & 
-- (\dht22_one_wire|WideOr3~combout\ & (\dht22_one_wire|bit_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Add2~2_combout\,
	datab => \dht22_one_wire|WideOr3~combout\,
	datac => \dht22_one_wire|bit_count\(1),
	datad => \dht22_one_wire|state.ST_PROCESS_DATA~q\,
	combout => \dht22_one_wire|Selector13~0_combout\);

-- Location: FF_X21_Y17_N31
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

-- Location: LCCOMB_X21_Y17_N14
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

-- Location: LCCOMB_X21_Y17_N0
\dht22_one_wire|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector12~0_combout\ = (\dht22_one_wire|state.ST_PROCESS_DATA~q\ & ((\dht22_one_wire|Add2~4_combout\) # ((\dht22_one_wire|bit_count\(2) & \dht22_one_wire|WideOr3~combout\)))) # (!\dht22_one_wire|state.ST_PROCESS_DATA~q\ & 
-- (((\dht22_one_wire|bit_count\(2) & \dht22_one_wire|WideOr3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_PROCESS_DATA~q\,
	datab => \dht22_one_wire|Add2~4_combout\,
	datac => \dht22_one_wire|bit_count\(2),
	datad => \dht22_one_wire|WideOr3~combout\,
	combout => \dht22_one_wire|Selector12~0_combout\);

-- Location: FF_X21_Y17_N1
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

-- Location: LCCOMB_X21_Y17_N16
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

-- Location: LCCOMB_X21_Y17_N28
\dht22_one_wire|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector11~0_combout\ = (\dht22_one_wire|state.ST_PROCESS_DATA~q\ & ((\dht22_one_wire|Add2~6_combout\) # ((\dht22_one_wire|bit_count\(3) & \dht22_one_wire|WideOr3~combout\)))) # (!\dht22_one_wire|state.ST_PROCESS_DATA~q\ & 
-- (((\dht22_one_wire|bit_count\(3) & \dht22_one_wire|WideOr3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_PROCESS_DATA~q\,
	datab => \dht22_one_wire|Add2~6_combout\,
	datac => \dht22_one_wire|bit_count\(3),
	datad => \dht22_one_wire|WideOr3~combout\,
	combout => \dht22_one_wire|Selector11~0_combout\);

-- Location: FF_X21_Y17_N29
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

-- Location: LCCOMB_X21_Y17_N18
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

-- Location: LCCOMB_X25_Y17_N26
\dht22_one_wire|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector10~0_combout\ = (\dht22_one_wire|state.ST_PROCESS_DATA~q\ & ((\dht22_one_wire|Add2~8_combout\) # ((\dht22_one_wire|WideOr3~combout\ & \dht22_one_wire|bit_count\(4))))) # (!\dht22_one_wire|state.ST_PROCESS_DATA~q\ & 
-- (\dht22_one_wire|WideOr3~combout\ & (\dht22_one_wire|bit_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_PROCESS_DATA~q\,
	datab => \dht22_one_wire|WideOr3~combout\,
	datac => \dht22_one_wire|bit_count\(4),
	datad => \dht22_one_wire|Add2~8_combout\,
	combout => \dht22_one_wire|Selector10~0_combout\);

-- Location: FF_X25_Y17_N27
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

-- Location: LCCOMB_X21_Y17_N20
\dht22_one_wire|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add2~10_combout\ = \dht22_one_wire|bit_count\(5) $ (\dht22_one_wire|Add2~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|bit_count\(5),
	cin => \dht22_one_wire|Add2~9\,
	combout => \dht22_one_wire|Add2~10_combout\);

-- Location: LCCOMB_X21_Y17_N8
\dht22_one_wire|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector9~0_combout\ = (\dht22_one_wire|state.ST_PROCESS_DATA~q\ & ((\dht22_one_wire|Add2~10_combout\) # ((\dht22_one_wire|bit_count\(5) & \dht22_one_wire|WideOr3~combout\)))) # (!\dht22_one_wire|state.ST_PROCESS_DATA~q\ & 
-- (((\dht22_one_wire|bit_count\(5) & \dht22_one_wire|WideOr3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_PROCESS_DATA~q\,
	datab => \dht22_one_wire|Add2~10_combout\,
	datac => \dht22_one_wire|bit_count\(5),
	datad => \dht22_one_wire|WideOr3~combout\,
	combout => \dht22_one_wire|Selector9~0_combout\);

-- Location: FF_X21_Y17_N9
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

-- Location: LCCOMB_X21_Y17_N4
\dht22_one_wire|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal4~0_combout\ = (!\dht22_one_wire|bit_count\(0) & (!\dht22_one_wire|bit_count\(1) & !\dht22_one_wire|bit_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|bit_count\(0),
	datac => \dht22_one_wire|bit_count\(1),
	datad => \dht22_one_wire|bit_count\(2),
	combout => \dht22_one_wire|Equal4~0_combout\);

-- Location: LCCOMB_X21_Y17_N24
\dht22_one_wire|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal4~1_combout\ = (!\dht22_one_wire|bit_count\(4) & (\dht22_one_wire|bit_count\(5) & (\dht22_one_wire|Equal4~0_combout\ & \dht22_one_wire|bit_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|bit_count\(4),
	datab => \dht22_one_wire|bit_count\(5),
	datac => \dht22_one_wire|Equal4~0_combout\,
	datad => \dht22_one_wire|bit_count\(3),
	combout => \dht22_one_wire|Equal4~1_combout\);

-- Location: LCCOMB_X22_Y16_N4
\dht22_one_wire|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector0~1_combout\ = (\dht22_one_wire|Equal4~1_combout\ & \dht22_one_wire|state.ST_PROCESS_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_one_wire|Equal4~1_combout\,
	datad => \dht22_one_wire|state.ST_PROCESS_DATA~q\,
	combout => \dht22_one_wire|Selector0~1_combout\);

-- Location: LCCOMB_X22_Y16_N24
\dht22_one_wire|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector6~0_combout\ = (!\dht22_one_wire|Selector0~11_combout\ & ((\dht22_one_wire|Selector0~8_combout\ & (\dht22_one_wire|Selector0~1_combout\)) # (!\dht22_one_wire|Selector0~8_combout\ & ((\dht22_one_wire|state.ST_DONE~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Selector0~8_combout\,
	datab => \dht22_one_wire|Selector0~1_combout\,
	datac => \dht22_one_wire|state.ST_DONE~q\,
	datad => \dht22_one_wire|Selector0~11_combout\,
	combout => \dht22_one_wire|Selector6~0_combout\);

-- Location: FF_X22_Y16_N25
\dht22_one_wire|state.ST_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|Selector6~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|state.ST_DONE~q\);

-- Location: LCCOMB_X22_Y16_N26
\dht22_one_wire|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector8~2_combout\ = ((\dht22_one_wire|state.ST_DONE~q\) # ((\dht22_one_wire|state.ST_PROCESS_DATA~q\ & !\dht22_one_wire|Equal4~1_combout\))) # (!\dht22_one_wire|Selector8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_PROCESS_DATA~q\,
	datab => \dht22_one_wire|Selector8~0_combout\,
	datac => \dht22_one_wire|Equal4~1_combout\,
	datad => \dht22_one_wire|state.ST_DONE~q\,
	combout => \dht22_one_wire|Selector8~2_combout\);

-- Location: LCCOMB_X25_Y17_N30
\dht22_one_wire|Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal3~3_combout\ = (\dht22_one_wire|clks\(2) & (\dht22_one_wire|clks\(9) & (\dht22_one_wire|clks\(3) & \dht22_one_wire|clks\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(2),
	datab => \dht22_one_wire|clks\(9),
	datac => \dht22_one_wire|clks\(3),
	datad => \dht22_one_wire|clks\(10),
	combout => \dht22_one_wire|Equal3~3_combout\);

-- Location: LCCOMB_X25_Y16_N2
\dht22_one_wire|Equal3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal3~5_combout\ = (\dht22_one_wire|LessThan1~0_combout\ & (\dht22_one_wire|LessThan1~1_combout\ & \dht22_one_wire|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|LessThan1~0_combout\,
	datac => \dht22_one_wire|LessThan1~1_combout\,
	datad => \dht22_one_wire|Equal3~0_combout\,
	combout => \dht22_one_wire|Equal3~5_combout\);

-- Location: LCCOMB_X25_Y16_N18
\dht22_one_wire|Equal3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal3~4_combout\ = (!\dht22_one_wire|clks\(5) & (!\dht22_one_wire|clks\(4) & !\dht22_one_wire|clks\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|clks\(5),
	datac => \dht22_one_wire|clks\(4),
	datad => \dht22_one_wire|clks\(11),
	combout => \dht22_one_wire|Equal3~4_combout\);

-- Location: LCCOMB_X25_Y16_N10
\dht22_one_wire|Equal3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal3~6_combout\ = (\dht22_one_wire|Equal3~3_combout\ & (\dht22_one_wire|Equal3~5_combout\ & (\dht22_one_wire|Equal3~1_combout\ & \dht22_one_wire|Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Equal3~3_combout\,
	datab => \dht22_one_wire|Equal3~5_combout\,
	datac => \dht22_one_wire|Equal3~1_combout\,
	datad => \dht22_one_wire|Equal3~4_combout\,
	combout => \dht22_one_wire|Equal3~6_combout\);

-- Location: LCCOMB_X24_Y17_N6
\dht22_one_wire|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector0~3_combout\ = (\dht22_one_wire|clks\(4) & (\dht22_one_wire|clks\(2) & (\dht22_one_wire|clks\(9) & \dht22_one_wire|clks\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(4),
	datab => \dht22_one_wire|clks\(2),
	datac => \dht22_one_wire|clks\(9),
	datad => \dht22_one_wire|clks\(3),
	combout => \dht22_one_wire|Selector0~3_combout\);

-- Location: LCCOMB_X24_Y16_N30
\dht22_one_wire|Selector0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector0~4_combout\ = (!\dht22_one_wire|clks\(6) & (\dht22_one_wire|clks\(12) & (\dht22_one_wire|Selector0~3_combout\ & \dht22_one_wire|clks\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(6),
	datab => \dht22_one_wire|clks\(12),
	datac => \dht22_one_wire|Selector0~3_combout\,
	datad => \dht22_one_wire|clks\(11),
	combout => \dht22_one_wire|Selector0~4_combout\);

-- Location: LCCOMB_X24_Y16_N20
\dht22_one_wire|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal2~2_combout\ = (\dht22_one_wire|clks\(15) & (\dht22_one_wire|clks\(18) & (\dht22_one_wire|clks\(16) & \dht22_one_wire|clks\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(15),
	datab => \dht22_one_wire|clks\(18),
	datac => \dht22_one_wire|clks\(16),
	datad => \dht22_one_wire|clks\(13),
	combout => \dht22_one_wire|Equal2~2_combout\);

-- Location: LCCOMB_X24_Y16_N28
\dht22_one_wire|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal2~0_combout\ = (!\dht22_one_wire|clks\(17) & (!\dht22_one_wire|clks\(10) & (!\dht22_one_wire|clks\(14) & \dht22_one_wire|clks\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(17),
	datab => \dht22_one_wire|clks\(10),
	datac => \dht22_one_wire|clks\(14),
	datad => \dht22_one_wire|clks\(7),
	combout => \dht22_one_wire|Equal2~0_combout\);

-- Location: LCCOMB_X24_Y16_N22
\dht22_one_wire|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal2~1_combout\ = (!\dht22_one_wire|clks\(5) & (\dht22_one_wire|Equal3~0_combout\ & \dht22_one_wire|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(5),
	datac => \dht22_one_wire|Equal3~0_combout\,
	datad => \dht22_one_wire|Equal2~0_combout\,
	combout => \dht22_one_wire|Equal2~1_combout\);

-- Location: LCCOMB_X24_Y16_N26
\dht22_one_wire|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal2~3_combout\ = (\dht22_one_wire|Selector0~4_combout\ & (\dht22_one_wire|Equal2~2_combout\ & (\dht22_one_wire|Equal2~1_combout\ & \dht22_one_wire|clks\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Selector0~4_combout\,
	datab => \dht22_one_wire|Equal2~2_combout\,
	datac => \dht22_one_wire|Equal2~1_combout\,
	datad => \dht22_one_wire|clks\(19),
	combout => \dht22_one_wire|Equal2~3_combout\);

-- Location: LCCOMB_X23_Y16_N20
\dht22_one_wire|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector8~1_combout\ = (\dht22_one_wire|state.ST_START~q\ & !\dht22_one_wire|Equal2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_one_wire|state.ST_START~q\,
	datad => \dht22_one_wire|Equal2~3_combout\,
	combout => \dht22_one_wire|Selector8~1_combout\);

-- Location: LCCOMB_X23_Y16_N22
\dht22_one_wire|Selector8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector8~3_combout\ = (!\dht22_one_wire|Selector8~2_combout\ & (!\dht22_one_wire|Selector8~1_combout\ & ((\dht22_one_wire|Equal3~6_combout\) # (!\dht22_one_wire|state.ST_PRE_ACK~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Selector8~2_combout\,
	datab => \dht22_one_wire|state.ST_PRE_ACK~q\,
	datac => \dht22_one_wire|Equal3~6_combout\,
	datad => \dht22_one_wire|Selector8~1_combout\,
	combout => \dht22_one_wire|Selector8~3_combout\);

-- Location: FF_X24_Y17_N13
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

-- Location: LCCOMB_X24_Y17_N14
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

-- Location: FF_X24_Y17_N15
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

-- Location: LCCOMB_X24_Y17_N16
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

-- Location: FF_X24_Y17_N17
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

-- Location: LCCOMB_X24_Y17_N18
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

-- Location: FF_X24_Y17_N19
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

-- Location: LCCOMB_X24_Y17_N20
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

-- Location: FF_X24_Y17_N21
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

-- Location: LCCOMB_X24_Y17_N22
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

-- Location: FF_X24_Y17_N23
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

-- Location: LCCOMB_X24_Y17_N24
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

-- Location: FF_X24_Y17_N25
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

-- Location: LCCOMB_X24_Y17_N26
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

-- Location: FF_X24_Y17_N27
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

-- Location: LCCOMB_X24_Y17_N28
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

-- Location: FF_X24_Y17_N29
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

-- Location: FF_X24_Y17_N31
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

-- Location: LCCOMB_X23_Y16_N30
\dht22_one_wire|Selector0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector0~10_combout\ = (!\dht22_one_wire|clks\(9) & (\dht22_one_wire|clks\(11) & (!\dht22_one_wire|clks\(10) & \dht22_one_wire|state.ST_DONE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(9),
	datab => \dht22_one_wire|clks\(11),
	datac => \dht22_one_wire|clks\(10),
	datad => \dht22_one_wire|state.ST_DONE~q\,
	combout => \dht22_one_wire|Selector0~10_combout\);

-- Location: LCCOMB_X25_Y16_N22
\dht22_one_wire|Selector0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector0~11_combout\ = (\dht22_one_wire|Selector0~10_combout\ & (\dht22_one_wire|Selector0~9_combout\ & \dht22_one_wire|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|Selector0~10_combout\,
	datac => \dht22_one_wire|Selector0~9_combout\,
	datad => \dht22_one_wire|Equal3~2_combout\,
	combout => \dht22_one_wire|Selector0~11_combout\);

-- Location: LCCOMB_X22_Y16_N6
\dht22_one_wire|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector1~0_combout\ = (!\dht22_one_wire|Selector0~11_combout\ & (((!\dht22_one_wire|Selector0~8_combout\ & \dht22_one_wire|state.ST_START~q\)) # (!\dht22_one_wire|state.ST_IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Selector0~8_combout\,
	datab => \dht22_one_wire|state.ST_IDLE~q\,
	datac => \dht22_one_wire|state.ST_START~q\,
	datad => \dht22_one_wire|Selector0~11_combout\,
	combout => \dht22_one_wire|Selector1~0_combout\);

-- Location: FF_X22_Y16_N7
\dht22_one_wire|state.ST_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|Selector1~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|state.ST_START~q\);

-- Location: LCCOMB_X22_Y16_N18
\dht22_one_wire|Selector0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector0~12_combout\ = (\dht22_one_wire|state.ST_START~q\ & \dht22_one_wire|Equal2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_START~q\,
	datad => \dht22_one_wire|Equal2~3_combout\,
	combout => \dht22_one_wire|Selector0~12_combout\);

-- Location: LCCOMB_X22_Y16_N8
\dht22_one_wire|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector2~0_combout\ = (!\dht22_one_wire|Selector0~11_combout\ & ((\dht22_one_wire|Selector0~8_combout\ & (\dht22_one_wire|Selector0~12_combout\)) # (!\dht22_one_wire|Selector0~8_combout\ & ((\dht22_one_wire|state.ST_PRE_ACK~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Selector0~8_combout\,
	datab => \dht22_one_wire|Selector0~12_combout\,
	datac => \dht22_one_wire|state.ST_PRE_ACK~q\,
	datad => \dht22_one_wire|Selector0~11_combout\,
	combout => \dht22_one_wire|Selector2~0_combout\);

-- Location: FF_X22_Y16_N9
\dht22_one_wire|state.ST_PRE_ACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|Selector2~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|state.ST_PRE_ACK~q\);

-- Location: LCCOMB_X25_Y16_N12
\dht22_one_wire|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector0~2_combout\ = (\dht22_one_wire|state.ST_PRE_ACK~q\ & (\dht22_one_wire|Equal3~2_combout\ & (\dht22_one_wire|Equal3~3_combout\ & \dht22_one_wire|Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_PRE_ACK~q\,
	datab => \dht22_one_wire|Equal3~2_combout\,
	datac => \dht22_one_wire|Equal3~3_combout\,
	datad => \dht22_one_wire|Equal3~4_combout\,
	combout => \dht22_one_wire|Selector0~2_combout\);

-- Location: LCCOMB_X22_Y16_N0
\dht22_one_wire|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector15~0_combout\ = (\dht22_one_wire|state.ST_IDLE~q\ & ((!\dht22_one_wire|Equal2~3_combout\) # (!\dht22_one_wire|state.ST_START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_START~q\,
	datac => \dht22_one_wire|state.ST_IDLE~q\,
	datad => \dht22_one_wire|Equal2~3_combout\,
	combout => \dht22_one_wire|Selector15~0_combout\);

-- Location: LCCOMB_X22_Y16_N20
\dht22_one_wire|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector4~0_combout\ = (!\dht22_one_wire|state.ST_SAMPLE~q\ & (!\dht22_one_wire|Selector0~2_combout\ & \dht22_one_wire|Selector15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|state.ST_SAMPLE~q\,
	datac => \dht22_one_wire|Selector0~2_combout\,
	datad => \dht22_one_wire|Selector15~0_combout\,
	combout => \dht22_one_wire|Selector4~0_combout\);

-- Location: LCCOMB_X22_Y16_N2
\dht22_one_wire|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector4~1_combout\ = (\dht22_one_wire|Selector0~8_combout\ & (\dht22_one_wire|Selector4~0_combout\ & (!\dht22_one_wire|Selector0~1_combout\ & !\dht22_one_wire|Selector0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Selector0~8_combout\,
	datab => \dht22_one_wire|Selector4~0_combout\,
	datac => \dht22_one_wire|Selector0~1_combout\,
	datad => \dht22_one_wire|Selector0~11_combout\,
	combout => \dht22_one_wire|Selector4~1_combout\);

-- Location: FF_X22_Y16_N3
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

-- Location: LCCOMB_X25_Y17_N10
\dht22_one_wire|read_io~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|read_io~0_combout\ = (\dht22_one_wire|state.ST_SAMPLE~q\ & ((\io~input_o\))) # (!\dht22_one_wire|state.ST_SAMPLE~q\ & (\dht22_one_wire|read_io~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_SAMPLE~q\,
	datac => \dht22_one_wire|read_io~q\,
	datad => \io~input_o\,
	combout => \dht22_one_wire|read_io~0_combout\);

-- Location: FF_X25_Y17_N11
\dht22_one_wire|read_io\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|read_io~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|read_io~q\);

-- Location: LCCOMB_X25_Y17_N24
\dht22_one_wire|old_io_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|old_io_state~0_combout\ = (\dht22_one_wire|old_io_state~q\ & ((!\dht22_one_wire|state_transition~0_combout\))) # (!\dht22_one_wire|old_io_state~q\ & (\dht22_one_wire|read_io~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|read_io~q\,
	datac => \dht22_one_wire|old_io_state~q\,
	datad => \dht22_one_wire|state_transition~0_combout\,
	combout => \dht22_one_wire|old_io_state~0_combout\);

-- Location: FF_X25_Y17_N25
\dht22_one_wire|old_io_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|old_io_state~0_combout\,
	asdata => \dht22_one_wire|old_io_state~q\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dht22_one_wire|ALT_INV_state.ST_PROCESS_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|old_io_state~q\);

-- Location: LCCOMB_X25_Y17_N12
\dht22_one_wire|state_transition~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|state_transition~0_combout\ = \dht22_one_wire|old_io_state~q\ $ (\dht22_one_wire|read_io~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|old_io_state~q\,
	datad => \dht22_one_wire|read_io~q\,
	combout => \dht22_one_wire|state_transition~0_combout\);

-- Location: LCCOMB_X25_Y16_N8
\dht22_one_wire|Selector0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector0~5_combout\ = (\dht22_one_wire|state.ST_ACK~q\ & (\dht22_one_wire|clks\(5) & (!\dht22_one_wire|clks\(7) & !\dht22_one_wire|state.ST_PROCESS_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_ACK~q\,
	datab => \dht22_one_wire|clks\(5),
	datac => \dht22_one_wire|clks\(7),
	datad => \dht22_one_wire|state.ST_PROCESS_DATA~q\,
	combout => \dht22_one_wire|Selector0~5_combout\);

-- Location: LCCOMB_X25_Y16_N30
\dht22_one_wire|Selector0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector0~6_combout\ = (\dht22_one_wire|clks\(10) & (\dht22_one_wire|Selector0~4_combout\ & (\dht22_one_wire|Selector0~5_combout\ & \dht22_one_wire|Equal3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(10),
	datab => \dht22_one_wire|Selector0~4_combout\,
	datac => \dht22_one_wire|Selector0~5_combout\,
	datad => \dht22_one_wire|Equal3~5_combout\,
	combout => \dht22_one_wire|Selector0~6_combout\);

-- Location: LCCOMB_X22_Y16_N12
\dht22_one_wire|Selector0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector0~7_combout\ = (\dht22_one_wire|Selector0~6_combout\) # ((\dht22_one_wire|state.ST_PROCESS_DATA~q\ & ((\dht22_one_wire|Equal4~1_combout\) # (!\dht22_one_wire|state_transition~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_PROCESS_DATA~q\,
	datab => \dht22_one_wire|state_transition~0_combout\,
	datac => \dht22_one_wire|Equal4~1_combout\,
	datad => \dht22_one_wire|Selector0~6_combout\,
	combout => \dht22_one_wire|Selector0~7_combout\);

-- Location: LCCOMB_X22_Y16_N22
\dht22_one_wire|Selector0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector0~8_combout\ = (\dht22_one_wire|Selector0~7_combout\) # ((\dht22_one_wire|state.ST_SAMPLE~q\) # ((\dht22_one_wire|Selector0~2_combout\) # (!\dht22_one_wire|Selector15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Selector0~7_combout\,
	datab => \dht22_one_wire|state.ST_SAMPLE~q\,
	datac => \dht22_one_wire|Selector0~2_combout\,
	datad => \dht22_one_wire|Selector15~0_combout\,
	combout => \dht22_one_wire|Selector0~8_combout\);

-- Location: LCCOMB_X22_Y16_N10
\dht22_one_wire|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector5~0_combout\ = (!\dht22_one_wire|Selector0~11_combout\ & ((\dht22_one_wire|state.ST_SAMPLE~q\) # ((!\dht22_one_wire|Selector0~8_combout\ & \dht22_one_wire|state.ST_PROCESS_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Selector0~8_combout\,
	datab => \dht22_one_wire|state.ST_SAMPLE~q\,
	datac => \dht22_one_wire|state.ST_PROCESS_DATA~q\,
	datad => \dht22_one_wire|Selector0~11_combout\,
	combout => \dht22_one_wire|Selector5~0_combout\);

-- Location: FF_X22_Y16_N11
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

-- Location: LCCOMB_X25_Y16_N0
\dht22_one_wire|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|LessThan1~5_combout\ = (\dht22_one_wire|LessThan1~1_combout\ & (!\dht22_one_wire|clks\(12) & \dht22_one_wire|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|LessThan1~1_combout\,
	datac => \dht22_one_wire|clks\(12),
	datad => \dht22_one_wire|LessThan1~0_combout\,
	combout => \dht22_one_wire|LessThan1~5_combout\);

-- Location: LCCOMB_X25_Y17_N0
\dht22_one_wire|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|LessThan1~2_combout\ = ((!\dht22_one_wire|clks\(8)) # (!\dht22_one_wire|clks\(7))) # (!\dht22_one_wire|clks\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(6),
	datac => \dht22_one_wire|clks\(7),
	datad => \dht22_one_wire|clks\(8),
	combout => \dht22_one_wire|LessThan1~2_combout\);

-- Location: LCCOMB_X25_Y17_N22
\dht22_one_wire|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|LessThan1~3_combout\ = (\dht22_one_wire|LessThan1~2_combout\) # ((\dht22_one_wire|Selector0~9_combout\ & ((!\dht22_one_wire|clks\(0)) # (!\dht22_one_wire|clks\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(1),
	datab => \dht22_one_wire|LessThan1~2_combout\,
	datac => \dht22_one_wire|clks\(0),
	datad => \dht22_one_wire|Selector0~9_combout\,
	combout => \dht22_one_wire|LessThan1~3_combout\);

-- Location: LCCOMB_X25_Y17_N16
\dht22_one_wire|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|LessThan1~4_combout\ = ((!\dht22_one_wire|clks\(9) & (\dht22_one_wire|LessThan1~3_combout\ & !\dht22_one_wire|clks\(10)))) # (!\dht22_one_wire|clks\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(11),
	datab => \dht22_one_wire|clks\(9),
	datac => \dht22_one_wire|LessThan1~3_combout\,
	datad => \dht22_one_wire|clks\(10),
	combout => \dht22_one_wire|LessThan1~4_combout\);

-- Location: LCCOMB_X22_Y17_N2
\dht22_one_wire|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector15~1_combout\ = ((\dht22_one_wire|state.ST_DONE~q\ & ((!\dht22_one_wire|LessThan1~4_combout\) # (!\dht22_one_wire|LessThan1~5_combout\)))) # (!\dht22_one_wire|Selector15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_DONE~q\,
	datab => \dht22_one_wire|LessThan1~5_combout\,
	datac => \dht22_one_wire|LessThan1~4_combout\,
	datad => \dht22_one_wire|Selector15~0_combout\,
	combout => \dht22_one_wire|Selector15~1_combout\);

-- Location: LCCOMB_X22_Y17_N20
\dht22_one_wire|io~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|io~1_combout\ = (\dht22_one_wire|Selector15~1_combout\ & ((\dht22_one_wire|state.ST_PROCESS_DATA~q\) # ((!\dht22_one_wire|WideOr3~0_combout\)))) # (!\dht22_one_wire|Selector15~1_combout\ & (((\dht22_one_wire|io~en_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_PROCESS_DATA~q\,
	datab => \dht22_one_wire|WideOr3~0_combout\,
	datac => \dht22_one_wire|io~en_q\,
	datad => \dht22_one_wire|Selector15~1_combout\,
	combout => \dht22_one_wire|io~1_combout\);

-- Location: FF_X22_Y17_N21
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

-- Location: LCCOMB_X17_Y17_N16
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

-- Location: LCCOMB_X16_Y17_N0
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

-- Location: FF_X16_Y13_N31
\display|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \display|Add0~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|count\(0));

-- Location: LCCOMB_X16_Y17_N2
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

-- Location: FF_X16_Y13_N27
\display|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \display|Add0~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|count\(1));

-- Location: LCCOMB_X16_Y17_N4
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

-- Location: FF_X16_Y17_N5
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

-- Location: LCCOMB_X16_Y17_N6
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

-- Location: FF_X16_Y17_N7
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

-- Location: LCCOMB_X16_Y17_N8
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

-- Location: LCCOMB_X17_Y17_N20
\display|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|count~4_combout\ = (!\display|Equal0~4_combout\ & \display|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display|Equal0~4_combout\,
	datad => \display|Add0~8_combout\,
	combout => \display|count~4_combout\);

-- Location: FF_X17_Y17_N21
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

-- Location: LCCOMB_X16_Y17_N10
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

-- Location: FF_X16_Y17_N11
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

-- Location: LCCOMB_X16_Y17_N12
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

-- Location: FF_X16_Y17_N13
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

-- Location: LCCOMB_X16_Y17_N14
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

-- Location: FF_X16_Y17_N15
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

-- Location: LCCOMB_X16_Y17_N16
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

-- Location: LCCOMB_X17_Y17_N4
\display|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|count~3_combout\ = (\display|Add0~16_combout\ & !\display|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display|Add0~16_combout\,
	datad => \display|Equal0~4_combout\,
	combout => \display|count~3_combout\);

-- Location: FF_X17_Y17_N5
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

-- Location: LCCOMB_X16_Y17_N18
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

-- Location: LCCOMB_X17_Y17_N14
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

-- Location: FF_X17_Y17_N15
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

-- Location: LCCOMB_X17_Y17_N10
\display|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~2_combout\ = (!\display|count\(7) & (\display|count\(9) & (\display|count\(8) & !\display|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(7),
	datab => \display|count\(9),
	datac => \display|count\(8),
	datad => \display|count\(6),
	combout => \display|Equal0~2_combout\);

-- Location: LCCOMB_X16_Y17_N20
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

-- Location: LCCOMB_X17_Y17_N2
\display|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|count~1_combout\ = (!\display|Equal0~4_combout\ & \display|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display|Equal0~4_combout\,
	datad => \display|Add0~20_combout\,
	combout => \display|count~1_combout\);

-- Location: FF_X17_Y17_N3
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

-- Location: LCCOMB_X16_Y17_N22
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

-- Location: FF_X16_Y17_N23
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

-- Location: LCCOMB_X16_Y17_N24
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

-- Location: FF_X16_Y17_N25
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

-- Location: LCCOMB_X16_Y17_N26
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

-- Location: LCCOMB_X17_Y17_N12
\display|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|count~0_combout\ = (\display|Add0~26_combout\ & !\display|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display|Add0~26_combout\,
	datad => \display|Equal0~4_combout\,
	combout => \display|count~0_combout\);

-- Location: FF_X17_Y17_N13
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

-- Location: LCCOMB_X17_Y17_N24
\display|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~1_combout\ = (\display|count\(13) & (!\display|count\(11) & (\display|count\(10) & !\display|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(13),
	datab => \display|count\(11),
	datac => \display|count\(10),
	datad => \display|count\(12),
	combout => \display|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y17_N26
\display|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~3_combout\ = (!\display|count\(4) & (\display|count\(3) & (\display|count\(2) & !\display|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(4),
	datab => \display|count\(3),
	datac => \display|count\(2),
	datad => \display|count\(5),
	combout => \display|Equal0~3_combout\);

-- Location: LCCOMB_X16_Y17_N28
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

-- Location: FF_X16_Y17_N29
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

-- Location: LCCOMB_X16_Y17_N30
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

-- Location: FF_X16_Y17_N31
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

-- Location: LCCOMB_X17_Y17_N18
\display|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~0_combout\ = (!\display|count\(14) & (!\display|count\(15) & (\display|count\(0) & \display|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(14),
	datab => \display|count\(15),
	datac => \display|count\(0),
	datad => \display|count\(1),
	combout => \display|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y17_N0
\display|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~4_combout\ = (\display|Equal0~2_combout\ & (\display|Equal0~1_combout\ & (\display|Equal0~3_combout\ & \display|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Equal0~2_combout\,
	datab => \display|Equal0~1_combout\,
	datac => \display|Equal0~3_combout\,
	datad => \display|Equal0~0_combout\,
	combout => \display|Equal0~4_combout\);

-- Location: FF_X17_Y17_N17
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

-- Location: LCCOMB_X18_Y18_N24
\display|digit_index[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|digit_index[1]~0_combout\ = \display|digit_index\(1) $ (((\display|Equal0~4_combout\ & \display|digit_index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Equal0~4_combout\,
	datac => \display|digit_index\(1),
	datad => \display|digit_index\(0),
	combout => \display|digit_index[1]~0_combout\);

-- Location: FF_X18_Y18_N25
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

-- Location: LCCOMB_X18_Y18_N2
\display|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux0~0_combout\ = (!\display|digit_index\(0) & \display|digit_index\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display|digit_index\(0),
	datad => \display|digit_index\(1),
	combout => \display|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y16_N28
\dht22_data_bcd|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector1~2_combout\ = (!\dht22_one_wire|state.ST_DONE~q\ & \dht22_data_bcd|state.ST_DONE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|state.ST_DONE~q\,
	datad => \dht22_data_bcd|state.ST_DONE~q\,
	combout => \dht22_data_bcd|Selector1~2_combout\);

-- Location: LCCOMB_X21_Y17_N22
\dht22_one_wire|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~0_combout\ = (\dht22_one_wire|state.ST_PROCESS_DATA~q\ & (!\dht22_one_wire|bit_count\(5) & (!\dht22_one_wire|bit_count\(4) & \dht22_one_wire|bit_count~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_PROCESS_DATA~q\,
	datab => \dht22_one_wire|bit_count\(5),
	datac => \dht22_one_wire|bit_count\(4),
	datad => \dht22_one_wire|bit_count~0_combout\,
	combout => \dht22_one_wire|Decoder0~0_combout\);

-- Location: LCCOMB_X25_Y17_N2
\dht22_one_wire|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~3_combout\ = (\dht22_one_wire|bit_count\(0) & (!\dht22_one_wire|bit_count\(3) & \dht22_one_wire|Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|bit_count\(0),
	datac => \dht22_one_wire|bit_count\(3),
	datad => \dht22_one_wire|Decoder0~0_combout\,
	combout => \dht22_one_wire|Decoder0~3_combout\);

-- Location: LCCOMB_X24_Y18_N28
\dht22_one_wire|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~2_combout\ = (!\dht22_one_wire|bit_count\(2) & !\dht22_one_wire|bit_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_one_wire|bit_count\(2),
	datad => \dht22_one_wire|bit_count\(1),
	combout => \dht22_one_wire|Decoder0~2_combout\);

-- Location: LCCOMB_X25_Y17_N18
\dht22_one_wire|clk_stamp[19]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clk_stamp[19]~0_combout\ = (\dht22_one_wire|read_io~q\ & (!\dht22_one_wire|old_io_state~q\ & \dht22_one_wire|state.ST_PROCESS_DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|read_io~q\,
	datab => \dht22_one_wire|old_io_state~q\,
	datad => \dht22_one_wire|state.ST_PROCESS_DATA~q\,
	combout => \dht22_one_wire|clk_stamp[19]~0_combout\);

-- Location: FF_X23_Y16_N15
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

-- Location: FF_X23_Y16_N13
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

-- Location: FF_X23_Y16_N11
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

-- Location: FF_X23_Y16_N9
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

-- Location: FF_X23_Y16_N7
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

-- Location: FF_X23_Y16_N5
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

-- Location: FF_X23_Y16_N3
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

-- Location: FF_X23_Y16_N1
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

-- Location: FF_X23_Y17_N31
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

-- Location: FF_X23_Y17_N29
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

-- Location: FF_X23_Y17_N27
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

-- Location: FF_X23_Y17_N25
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

-- Location: FF_X23_Y17_N23
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

-- Location: FF_X23_Y17_N21
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

-- Location: FF_X23_Y17_N19
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

-- Location: FF_X23_Y17_N17
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

-- Location: FF_X23_Y17_N15
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

-- Location: FF_X23_Y17_N13
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

-- Location: LCCOMB_X23_Y17_N12
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

-- Location: LCCOMB_X23_Y17_N14
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

-- Location: LCCOMB_X23_Y17_N16
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

-- Location: LCCOMB_X23_Y17_N18
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

-- Location: LCCOMB_X23_Y17_N20
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

-- Location: LCCOMB_X23_Y17_N22
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

-- Location: LCCOMB_X23_Y17_N24
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

-- Location: LCCOMB_X23_Y17_N26
\dht22_one_wire|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add1~14_combout\ = (\dht22_one_wire|clk_stamp\(7) & ((\dht22_one_wire|clks\(7) & (!\dht22_one_wire|Add1~13\)) # (!\dht22_one_wire|clks\(7) & ((\dht22_one_wire|Add1~13\) # (GND))))) # (!\dht22_one_wire|clk_stamp\(7) & 
-- ((\dht22_one_wire|clks\(7) & (\dht22_one_wire|Add1~13\ & VCC)) # (!\dht22_one_wire|clks\(7) & (!\dht22_one_wire|Add1~13\))))
-- \dht22_one_wire|Add1~15\ = CARRY((\dht22_one_wire|clk_stamp\(7) & ((!\dht22_one_wire|Add1~13\) # (!\dht22_one_wire|clks\(7)))) # (!\dht22_one_wire|clk_stamp\(7) & (!\dht22_one_wire|clks\(7) & !\dht22_one_wire|Add1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clk_stamp\(7),
	datab => \dht22_one_wire|clks\(7),
	datad => VCC,
	cin => \dht22_one_wire|Add1~13\,
	combout => \dht22_one_wire|Add1~14_combout\,
	cout => \dht22_one_wire|Add1~15\);

-- Location: LCCOMB_X23_Y17_N28
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

-- Location: LCCOMB_X23_Y17_N30
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

-- Location: LCCOMB_X23_Y16_N0
\dht22_one_wire|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add1~20_combout\ = ((\dht22_one_wire|clks\(10) $ (\dht22_one_wire|clk_stamp\(10) $ (\dht22_one_wire|Add1~19\)))) # (GND)
-- \dht22_one_wire|Add1~21\ = CARRY((\dht22_one_wire|clks\(10) & ((!\dht22_one_wire|Add1~19\) # (!\dht22_one_wire|clk_stamp\(10)))) # (!\dht22_one_wire|clks\(10) & (!\dht22_one_wire|clk_stamp\(10) & !\dht22_one_wire|Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks\(10),
	datab => \dht22_one_wire|clk_stamp\(10),
	datad => VCC,
	cin => \dht22_one_wire|Add1~19\,
	combout => \dht22_one_wire|Add1~20_combout\,
	cout => \dht22_one_wire|Add1~21\);

-- Location: LCCOMB_X23_Y16_N2
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

-- Location: LCCOMB_X23_Y16_N4
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

-- Location: LCCOMB_X23_Y16_N6
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

-- Location: LCCOMB_X23_Y16_N8
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

-- Location: LCCOMB_X23_Y16_N10
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

-- Location: LCCOMB_X23_Y16_N12
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

-- Location: LCCOMB_X23_Y16_N14
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

-- Location: FF_X23_Y16_N17
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

-- Location: LCCOMB_X23_Y16_N16
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

-- Location: LCCOMB_X22_Y17_N14
\dht22_one_wire|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|LessThan0~0_combout\ = (!\dht22_one_wire|Add1~4_combout\ & (!\dht22_one_wire|Add1~6_combout\ & ((!\dht22_one_wire|Add1~2_combout\) # (!\dht22_one_wire|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Add1~0_combout\,
	datab => \dht22_one_wire|Add1~4_combout\,
	datac => \dht22_one_wire|Add1~2_combout\,
	datad => \dht22_one_wire|Add1~6_combout\,
	combout => \dht22_one_wire|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y17_N8
\dht22_one_wire|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|LessThan0~1_combout\ = (\dht22_one_wire|Add1~14_combout\ & ((\dht22_one_wire|Add1~8_combout\) # ((\dht22_one_wire|Add1~10_combout\) # (!\dht22_one_wire|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Add1~8_combout\,
	datab => \dht22_one_wire|Add1~14_combout\,
	datac => \dht22_one_wire|Add1~10_combout\,
	datad => \dht22_one_wire|LessThan0~0_combout\,
	combout => \dht22_one_wire|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y17_N6
\dht22_one_wire|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|LessThan0~2_combout\ = (!\dht22_one_wire|Add1~20_combout\ & (((!\dht22_one_wire|LessThan0~1_combout\) # (!\dht22_one_wire|Add1~16_combout\)) # (!\dht22_one_wire|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Add1~12_combout\,
	datab => \dht22_one_wire|Add1~16_combout\,
	datac => \dht22_one_wire|LessThan0~1_combout\,
	datad => \dht22_one_wire|Add1~20_combout\,
	combout => \dht22_one_wire|LessThan0~2_combout\);

-- Location: LCCOMB_X23_Y17_N0
\dht22_one_wire|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|LessThan0~3_combout\ = (!\dht22_one_wire|Add1~24_combout\ & (((!\dht22_one_wire|Add1~18_combout\ & \dht22_one_wire|LessThan0~2_combout\)) # (!\dht22_one_wire|Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Add1~24_combout\,
	datab => \dht22_one_wire|Add1~18_combout\,
	datac => \dht22_one_wire|Add1~22_combout\,
	datad => \dht22_one_wire|LessThan0~2_combout\,
	combout => \dht22_one_wire|LessThan0~3_combout\);

-- Location: LCCOMB_X23_Y17_N10
\dht22_one_wire|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|LessThan0~4_combout\ = (!\dht22_one_wire|Add1~28_combout\ & (!\dht22_one_wire|Add1~26_combout\ & (!\dht22_one_wire|Add1~30_combout\ & \dht22_one_wire|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Add1~28_combout\,
	datab => \dht22_one_wire|Add1~26_combout\,
	datac => \dht22_one_wire|Add1~30_combout\,
	datad => \dht22_one_wire|LessThan0~3_combout\,
	combout => \dht22_one_wire|LessThan0~4_combout\);

-- Location: LCCOMB_X23_Y17_N4
\dht22_one_wire|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|LessThan0~5_combout\ = (!\dht22_one_wire|Add1~32_combout\ & \dht22_one_wire|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Add1~32_combout\,
	datad => \dht22_one_wire|LessThan0~4_combout\,
	combout => \dht22_one_wire|LessThan0~5_combout\);

-- Location: FF_X23_Y16_N19
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

-- Location: LCCOMB_X23_Y16_N18
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

-- Location: LCCOMB_X23_Y17_N2
\dht22_one_wire|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|LessThan0~6_combout\ = (!\dht22_one_wire|Add1~34_combout\ & (!\dht22_one_wire|Add1~36_combout\ & (\dht22_one_wire|LessThan0~5_combout\ & !\dht22_one_wire|Add1~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Add1~34_combout\,
	datab => \dht22_one_wire|Add1~36_combout\,
	datac => \dht22_one_wire|LessThan0~5_combout\,
	datad => \dht22_one_wire|Add1~38_combout\,
	combout => \dht22_one_wire|LessThan0~6_combout\);

-- Location: LCCOMB_X24_Y17_N0
\dht22_one_wire|one_wire_buff[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|one_wire_buff[1]~1_combout\ = (\dht22_one_wire|Decoder0~3_combout\ & ((\dht22_one_wire|Decoder0~2_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~2_combout\ & (\dht22_one_wire|one_wire_buff\(1))))) # 
-- (!\dht22_one_wire|Decoder0~3_combout\ & (((\dht22_one_wire|one_wire_buff\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~3_combout\,
	datab => \dht22_one_wire|Decoder0~2_combout\,
	datac => \dht22_one_wire|one_wire_buff\(1),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|one_wire_buff[1]~1_combout\);

-- Location: FF_X24_Y17_N1
\dht22_one_wire|one_wire_buff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|one_wire_buff[1]~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|one_wire_buff\(1));

-- Location: LCCOMB_X22_Y18_N12
\dht22_data_bcd|num_reg[14]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[14]~6_combout\ = (\dht22_data_bcd|state.ST_DONE~q\ & (((\dht22_data_bcd|num_reg\(14))))) # (!\dht22_data_bcd|state.ST_DONE~q\ & (\dht22_one_wire|one_wire_buff\(1) & ((!\dht22_data_bcd|state.ST_CALC~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|one_wire_buff\(1),
	datab => \dht22_data_bcd|state.ST_DONE~q\,
	datac => \dht22_data_bcd|num_reg\(14),
	datad => \dht22_data_bcd|state.ST_CALC~q\,
	combout => \dht22_data_bcd|num_reg[14]~6_combout\);

-- Location: LCCOMB_X25_Y17_N8
\dht22_one_wire|Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~9_combout\ = (\dht22_one_wire|bit_count\(3) & \dht22_one_wire|Decoder0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_one_wire|bit_count\(3),
	datad => \dht22_one_wire|Decoder0~0_combout\,
	combout => \dht22_one_wire|Decoder0~9_combout\);

-- Location: LCCOMB_X24_Y18_N12
\dht22_one_wire|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~7_combout\ = (!\dht22_one_wire|bit_count\(0) & (\dht22_one_wire|bit_count\(2) & \dht22_one_wire|bit_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|bit_count\(0),
	datac => \dht22_one_wire|bit_count\(2),
	datad => \dht22_one_wire|bit_count\(1),
	combout => \dht22_one_wire|Decoder0~7_combout\);

-- Location: LCCOMB_X22_Y17_N10
\dht22_one_wire|one_wire_buff[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|one_wire_buff[14]~14_combout\ = (\dht22_one_wire|Decoder0~9_combout\ & ((\dht22_one_wire|Decoder0~7_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~7_combout\ & (\dht22_one_wire|one_wire_buff\(14))))) # 
-- (!\dht22_one_wire|Decoder0~9_combout\ & (((\dht22_one_wire|one_wire_buff\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~9_combout\,
	datab => \dht22_one_wire|Decoder0~7_combout\,
	datac => \dht22_one_wire|one_wire_buff\(14),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|one_wire_buff[14]~14_combout\);

-- Location: FF_X22_Y17_N11
\dht22_one_wire|one_wire_buff[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|one_wire_buff[14]~14_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|one_wire_buff\(14));

-- Location: LCCOMB_X21_Y18_N0
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

-- Location: LCCOMB_X21_Y16_N24
\dht22_data_bcd|num~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num~0_combout\ = (!\dht22_data_bcd|num_reg\(15) & (!\dht22_data_bcd|num_reg\(14) & (!\dht22_data_bcd|LessThan0~3_combout\ & \dht22_data_bcd|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(15),
	datab => \dht22_data_bcd|num_reg\(14),
	datac => \dht22_data_bcd|LessThan0~3_combout\,
	datad => \dht22_data_bcd|LessThan3~1_combout\,
	combout => \dht22_data_bcd|num~0_combout\);

-- Location: LCCOMB_X21_Y16_N30
\dht22_data_bcd|num_reg[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[1]~11_combout\ = (\dht22_data_bcd|state.ST_CALC~q\ & (((\dht22_data_bcd|Add3~0_combout\ & \dht22_data_bcd|num~0_combout\)))) # (!\dht22_data_bcd|state.ST_CALC~q\ & (\dht22_one_wire|one_wire_buff\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|one_wire_buff\(14),
	datab => \dht22_data_bcd|Add3~0_combout\,
	datac => \dht22_data_bcd|state.ST_CALC~q\,
	datad => \dht22_data_bcd|num~0_combout\,
	combout => \dht22_data_bcd|num_reg[1]~11_combout\);

-- Location: LCCOMB_X21_Y16_N18
\dht22_data_bcd|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector9~0_combout\ = (\dht22_data_bcd|state.ST_CALC~q\ & !\dht22_data_bcd|num~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_data_bcd|state.ST_CALC~q\,
	datad => \dht22_data_bcd|num~0_combout\,
	combout => \dht22_data_bcd|Selector9~0_combout\);

-- Location: LCCOMB_X21_Y16_N22
\dht22_data_bcd|num_reg[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[1]~9_combout\ = (\dht22_data_bcd|state.ST_DONE~q\ & (((\dht22_data_bcd|num_reg\(1))))) # (!\dht22_data_bcd|state.ST_DONE~q\ & ((\dht22_data_bcd|num_reg[1]~11_combout\) # ((\dht22_data_bcd|num_reg\(1) & 
-- \dht22_data_bcd|Selector9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg[1]~11_combout\,
	datab => \dht22_data_bcd|state.ST_DONE~q\,
	datac => \dht22_data_bcd|num_reg\(1),
	datad => \dht22_data_bcd|Selector9~0_combout\,
	combout => \dht22_data_bcd|num_reg[1]~9_combout\);

-- Location: FF_X21_Y16_N23
\dht22_data_bcd|num_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|num_reg[1]~9_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(1));

-- Location: LCCOMB_X21_Y18_N2
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

-- Location: LCCOMB_X21_Y18_N4
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

-- Location: LCCOMB_X21_Y18_N6
\dht22_data_bcd|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add3~6_combout\ = (\dht22_data_bcd|num_reg\(4) & (\dht22_data_bcd|Add3~5\ & VCC)) # (!\dht22_data_bcd|num_reg\(4) & (!\dht22_data_bcd|Add3~5\))
-- \dht22_data_bcd|Add3~7\ = CARRY((!\dht22_data_bcd|num_reg\(4) & !\dht22_data_bcd|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_data_bcd|num_reg\(4),
	datad => VCC,
	cin => \dht22_data_bcd|Add3~5\,
	combout => \dht22_data_bcd|Add3~6_combout\,
	cout => \dht22_data_bcd|Add3~7\);

-- Location: LCCOMB_X21_Y18_N8
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

-- Location: LCCOMB_X23_Y18_N4
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

-- Location: LCCOMB_X23_Y18_N6
\dht22_data_bcd|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~6_combout\ = (\dht22_data_bcd|num_reg\(5) & (!\dht22_data_bcd|Add1~5\)) # (!\dht22_data_bcd|num_reg\(5) & ((\dht22_data_bcd|Add1~5\) # (GND)))
-- \dht22_data_bcd|Add1~7\ = CARRY((!\dht22_data_bcd|Add1~5\) # (!\dht22_data_bcd|num_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(5),
	datad => VCC,
	cin => \dht22_data_bcd|Add1~5\,
	combout => \dht22_data_bcd|Add1~6_combout\,
	cout => \dht22_data_bcd|Add1~7\);

-- Location: LCCOMB_X24_Y18_N6
\dht22_data_bcd|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~38_combout\ = (\dht22_data_bcd|Selector1~0_combout\ & ((\dht22_data_bcd|LessThan3~1_combout\ & (\dht22_data_bcd|Add3~8_combout\)) # (!\dht22_data_bcd|LessThan3~1_combout\ & ((\dht22_data_bcd|Add1~6_combout\))))) # 
-- (!\dht22_data_bcd|Selector1~0_combout\ & (((\dht22_data_bcd|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|Add3~8_combout\,
	datab => \dht22_data_bcd|Selector1~0_combout\,
	datac => \dht22_data_bcd|Add1~6_combout\,
	datad => \dht22_data_bcd|LessThan3~1_combout\,
	combout => \dht22_data_bcd|Add1~38_combout\);

-- Location: LCCOMB_X24_Y18_N4
\dht22_data_bcd|num_reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[5]~feeder_combout\ = \dht22_data_bcd|Add1~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dht22_data_bcd|Add1~38_combout\,
	combout => \dht22_data_bcd|num_reg[5]~feeder_combout\);

-- Location: LCCOMB_X22_Y17_N12
\dht22_one_wire|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~4_combout\ = (!\dht22_one_wire|bit_count\(2) & \dht22_one_wire|bit_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|bit_count\(2),
	datac => \dht22_one_wire|bit_count\(1),
	combout => \dht22_one_wire|Decoder0~4_combout\);

-- Location: LCCOMB_X25_Y17_N4
\dht22_one_wire|Decoder0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~11_combout\ = (\dht22_one_wire|Decoder0~0_combout\ & (\dht22_one_wire|bit_count\(3) & !\dht22_one_wire|bit_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|Decoder0~0_combout\,
	datac => \dht22_one_wire|bit_count\(3),
	datad => \dht22_one_wire|bit_count\(0),
	combout => \dht22_one_wire|Decoder0~11_combout\);

-- Location: LCCOMB_X22_Y17_N26
\dht22_one_wire|one_wire_buff[10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|one_wire_buff[10]~12_combout\ = (\dht22_one_wire|Decoder0~4_combout\ & ((\dht22_one_wire|Decoder0~11_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~11_combout\ & (\dht22_one_wire|one_wire_buff\(10))))) # 
-- (!\dht22_one_wire|Decoder0~4_combout\ & (((\dht22_one_wire|one_wire_buff\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~4_combout\,
	datab => \dht22_one_wire|Decoder0~11_combout\,
	datac => \dht22_one_wire|one_wire_buff\(10),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|one_wire_buff[10]~12_combout\);

-- Location: FF_X22_Y17_N27
\dht22_one_wire|one_wire_buff[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|one_wire_buff[10]~12_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|one_wire_buff\(10));

-- Location: FF_X24_Y18_N5
\dht22_data_bcd|num_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|num_reg[5]~feeder_combout\,
	asdata => \dht22_one_wire|one_wire_buff\(10),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dht22_data_bcd|ALT_INV_state.ST_CALC~q\,
	ena => \dht22_data_bcd|num_reg[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(5));

-- Location: LCCOMB_X23_Y18_N8
\dht22_data_bcd|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~8_combout\ = (\dht22_data_bcd|num_reg\(6) & (\dht22_data_bcd|Add1~7\ $ (GND))) # (!\dht22_data_bcd|num_reg\(6) & (!\dht22_data_bcd|Add1~7\ & VCC))
-- \dht22_data_bcd|Add1~9\ = CARRY((\dht22_data_bcd|num_reg\(6) & !\dht22_data_bcd|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_data_bcd|num_reg\(6),
	datad => VCC,
	cin => \dht22_data_bcd|Add1~7\,
	combout => \dht22_data_bcd|Add1~8_combout\,
	cout => \dht22_data_bcd|Add1~9\);

-- Location: LCCOMB_X23_Y18_N10
\dht22_data_bcd|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~10_combout\ = (\dht22_data_bcd|num_reg\(7) & (\dht22_data_bcd|Add1~9\ & VCC)) # (!\dht22_data_bcd|num_reg\(7) & (!\dht22_data_bcd|Add1~9\))
-- \dht22_data_bcd|Add1~11\ = CARRY((!\dht22_data_bcd|num_reg\(7) & !\dht22_data_bcd|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(7),
	datad => VCC,
	cin => \dht22_data_bcd|Add1~9\,
	combout => \dht22_data_bcd|Add1~10_combout\,
	cout => \dht22_data_bcd|Add1~11\);

-- Location: LCCOMB_X21_Y18_N10
\dht22_data_bcd|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add3~10_combout\ = (\dht22_data_bcd|num_reg\(6) & (\dht22_data_bcd|Add3~9\ & VCC)) # (!\dht22_data_bcd|num_reg\(6) & (!\dht22_data_bcd|Add3~9\))
-- \dht22_data_bcd|Add3~11\ = CARRY((!\dht22_data_bcd|num_reg\(6) & !\dht22_data_bcd|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_data_bcd|num_reg\(6),
	datad => VCC,
	cin => \dht22_data_bcd|Add3~9\,
	combout => \dht22_data_bcd|Add3~10_combout\,
	cout => \dht22_data_bcd|Add3~11\);

-- Location: LCCOMB_X21_Y18_N12
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

-- Location: LCCOMB_X24_Y18_N24
\dht22_data_bcd|Add1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~33_combout\ = (\dht22_data_bcd|Selector1~0_combout\ & ((\dht22_data_bcd|LessThan3~1_combout\ & ((\dht22_data_bcd|Add3~12_combout\))) # (!\dht22_data_bcd|LessThan3~1_combout\ & (\dht22_data_bcd|Add1~10_combout\)))) # 
-- (!\dht22_data_bcd|Selector1~0_combout\ & (\dht22_data_bcd|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|Add1~10_combout\,
	datab => \dht22_data_bcd|Selector1~0_combout\,
	datac => \dht22_data_bcd|Add3~12_combout\,
	datad => \dht22_data_bcd|LessThan3~1_combout\,
	combout => \dht22_data_bcd|Add1~33_combout\);

-- Location: LCCOMB_X25_Y18_N2
\dht22_data_bcd|num_reg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[7]~feeder_combout\ = \dht22_data_bcd|Add1~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dht22_data_bcd|Add1~33_combout\,
	combout => \dht22_data_bcd|num_reg[7]~feeder_combout\);

-- Location: LCCOMB_X22_Y17_N30
\dht22_one_wire|one_wire_buff[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|one_wire_buff[8]~7_combout\ = (\dht22_one_wire|Decoder0~9_combout\ & ((\dht22_one_wire|Equal4~0_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Equal4~0_combout\ & (\dht22_one_wire|one_wire_buff\(8))))) # 
-- (!\dht22_one_wire|Decoder0~9_combout\ & (((\dht22_one_wire|one_wire_buff\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~9_combout\,
	datab => \dht22_one_wire|Equal4~0_combout\,
	datac => \dht22_one_wire|one_wire_buff\(8),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|one_wire_buff[8]~7_combout\);

-- Location: FF_X22_Y17_N31
\dht22_one_wire|one_wire_buff[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|one_wire_buff[8]~7_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|one_wire_buff\(8));

-- Location: FF_X25_Y18_N3
\dht22_data_bcd|num_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|num_reg[7]~feeder_combout\,
	asdata => \dht22_one_wire|one_wire_buff\(8),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dht22_data_bcd|ALT_INV_state.ST_CALC~q\,
	ena => \dht22_data_bcd|num_reg[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(7));

-- Location: LCCOMB_X23_Y18_N12
\dht22_data_bcd|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~12_combout\ = (\dht22_data_bcd|num_reg\(8) & ((GND) # (!\dht22_data_bcd|Add1~11\))) # (!\dht22_data_bcd|num_reg\(8) & (\dht22_data_bcd|Add1~11\ $ (GND)))
-- \dht22_data_bcd|Add1~13\ = CARRY((\dht22_data_bcd|num_reg\(8)) # (!\dht22_data_bcd|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_data_bcd|num_reg\(8),
	datad => VCC,
	cin => \dht22_data_bcd|Add1~11\,
	combout => \dht22_data_bcd|Add1~12_combout\,
	cout => \dht22_data_bcd|Add1~13\);

-- Location: LCCOMB_X21_Y18_N14
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

-- Location: LCCOMB_X22_Y18_N6
\dht22_data_bcd|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~32_combout\ = (\dht22_data_bcd|LessThan3~1_combout\ & ((\dht22_data_bcd|Selector1~0_combout\ & ((\dht22_data_bcd|Add3~14_combout\))) # (!\dht22_data_bcd|Selector1~0_combout\ & (\dht22_data_bcd|Add1~12_combout\)))) # 
-- (!\dht22_data_bcd|LessThan3~1_combout\ & (\dht22_data_bcd|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|LessThan3~1_combout\,
	datab => \dht22_data_bcd|Add1~12_combout\,
	datac => \dht22_data_bcd|Selector1~0_combout\,
	datad => \dht22_data_bcd|Add3~14_combout\,
	combout => \dht22_data_bcd|Add1~32_combout\);

-- Location: LCCOMB_X25_Y18_N0
\dht22_data_bcd|num_reg[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[8]~feeder_combout\ = \dht22_data_bcd|Add1~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dht22_data_bcd|Add1~32_combout\,
	combout => \dht22_data_bcd|num_reg[8]~feeder_combout\);

-- Location: LCCOMB_X24_Y18_N22
\dht22_one_wire|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~8_combout\ = (\dht22_one_wire|bit_count\(2) & \dht22_one_wire|bit_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_one_wire|bit_count\(2),
	datad => \dht22_one_wire|bit_count\(1),
	combout => \dht22_one_wire|Decoder0~8_combout\);

-- Location: LCCOMB_X24_Y17_N2
\dht22_one_wire|one_wire_buff[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|one_wire_buff[7]~6_combout\ = (\dht22_one_wire|Decoder0~3_combout\ & ((\dht22_one_wire|Decoder0~8_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~8_combout\ & (\dht22_one_wire|one_wire_buff\(7))))) # 
-- (!\dht22_one_wire|Decoder0~3_combout\ & (((\dht22_one_wire|one_wire_buff\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~3_combout\,
	datab => \dht22_one_wire|Decoder0~8_combout\,
	datac => \dht22_one_wire|one_wire_buff\(7),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|one_wire_buff[7]~6_combout\);

-- Location: FF_X24_Y17_N3
\dht22_one_wire|one_wire_buff[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|one_wire_buff[7]~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|one_wire_buff\(7));

-- Location: FF_X25_Y18_N1
\dht22_data_bcd|num_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|num_reg[8]~feeder_combout\,
	asdata => \dht22_one_wire|one_wire_buff\(7),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dht22_data_bcd|ALT_INV_state.ST_CALC~q\,
	ena => \dht22_data_bcd|num_reg[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(8));

-- Location: LCCOMB_X23_Y18_N14
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

-- Location: LCCOMB_X21_Y18_N16
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

-- Location: LCCOMB_X22_Y18_N0
\dht22_data_bcd|Add1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~31_combout\ = (\dht22_data_bcd|Selector1~0_combout\ & ((\dht22_data_bcd|LessThan3~1_combout\ & ((\dht22_data_bcd|Add3~16_combout\))) # (!\dht22_data_bcd|LessThan3~1_combout\ & (\dht22_data_bcd|Add1~14_combout\)))) # 
-- (!\dht22_data_bcd|Selector1~0_combout\ & (\dht22_data_bcd|Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|Selector1~0_combout\,
	datab => \dht22_data_bcd|Add1~14_combout\,
	datac => \dht22_data_bcd|Add3~16_combout\,
	datad => \dht22_data_bcd|LessThan3~1_combout\,
	combout => \dht22_data_bcd|Add1~31_combout\);

-- Location: LCCOMB_X25_Y18_N18
\dht22_data_bcd|num_reg[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[9]~feeder_combout\ = \dht22_data_bcd|Add1~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dht22_data_bcd|Add1~31_combout\,
	combout => \dht22_data_bcd|num_reg[9]~feeder_combout\);

-- Location: LCCOMB_X25_Y17_N28
\dht22_one_wire|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~1_combout\ = (!\dht22_one_wire|bit_count\(3) & \dht22_one_wire|Decoder0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_one_wire|bit_count\(3),
	datad => \dht22_one_wire|Decoder0~0_combout\,
	combout => \dht22_one_wire|Decoder0~1_combout\);

-- Location: LCCOMB_X22_Y17_N28
\dht22_one_wire|one_wire_buff[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|one_wire_buff[6]~5_combout\ = (\dht22_one_wire|Decoder0~1_combout\ & ((\dht22_one_wire|Decoder0~7_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~7_combout\ & (\dht22_one_wire|one_wire_buff\(6))))) # 
-- (!\dht22_one_wire|Decoder0~1_combout\ & (((\dht22_one_wire|one_wire_buff\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~1_combout\,
	datab => \dht22_one_wire|Decoder0~7_combout\,
	datac => \dht22_one_wire|one_wire_buff\(6),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|one_wire_buff[6]~5_combout\);

-- Location: FF_X22_Y17_N29
\dht22_one_wire|one_wire_buff[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|one_wire_buff[6]~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|one_wire_buff\(6));

-- Location: FF_X25_Y18_N19
\dht22_data_bcd|num_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|num_reg[9]~feeder_combout\,
	asdata => \dht22_one_wire|one_wire_buff\(6),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dht22_data_bcd|ALT_INV_state.ST_CALC~q\,
	ena => \dht22_data_bcd|num_reg[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(9));

-- Location: LCCOMB_X23_Y18_N16
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

-- Location: LCCOMB_X21_Y18_N18
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

-- Location: LCCOMB_X24_Y18_N10
\dht22_data_bcd|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~30_combout\ = (\dht22_data_bcd|LessThan3~1_combout\ & ((\dht22_data_bcd|Selector1~0_combout\ & ((\dht22_data_bcd|Add3~18_combout\))) # (!\dht22_data_bcd|Selector1~0_combout\ & (\dht22_data_bcd|Add1~16_combout\)))) # 
-- (!\dht22_data_bcd|LessThan3~1_combout\ & (((\dht22_data_bcd|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|LessThan3~1_combout\,
	datab => \dht22_data_bcd|Selector1~0_combout\,
	datac => \dht22_data_bcd|Add1~16_combout\,
	datad => \dht22_data_bcd|Add3~18_combout\,
	combout => \dht22_data_bcd|Add1~30_combout\);

-- Location: LCCOMB_X25_Y18_N24
\dht22_data_bcd|num_reg[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[10]~feeder_combout\ = \dht22_data_bcd|Add1~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dht22_data_bcd|Add1~30_combout\,
	combout => \dht22_data_bcd|num_reg[10]~feeder_combout\);

-- Location: LCCOMB_X24_Y18_N30
\dht22_one_wire|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~6_combout\ = (\dht22_one_wire|bit_count\(2) & !\dht22_one_wire|bit_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_one_wire|bit_count\(2),
	datad => \dht22_one_wire|bit_count\(1),
	combout => \dht22_one_wire|Decoder0~6_combout\);

-- Location: LCCOMB_X22_Y17_N18
\dht22_one_wire|one_wire_buff[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|one_wire_buff[5]~4_combout\ = (\dht22_one_wire|Decoder0~6_combout\ & ((\dht22_one_wire|Decoder0~3_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~3_combout\ & (\dht22_one_wire|one_wire_buff\(5))))) # 
-- (!\dht22_one_wire|Decoder0~6_combout\ & (((\dht22_one_wire|one_wire_buff\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~6_combout\,
	datab => \dht22_one_wire|Decoder0~3_combout\,
	datac => \dht22_one_wire|one_wire_buff\(5),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|one_wire_buff[5]~4_combout\);

-- Location: FF_X22_Y17_N19
\dht22_one_wire|one_wire_buff[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|one_wire_buff[5]~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|one_wire_buff\(5));

-- Location: FF_X25_Y18_N25
\dht22_data_bcd|num_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|num_reg[10]~feeder_combout\,
	asdata => \dht22_one_wire|one_wire_buff\(5),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dht22_data_bcd|ALT_INV_state.ST_CALC~q\,
	ena => \dht22_data_bcd|num_reg[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(10));

-- Location: LCCOMB_X21_Y18_N20
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

-- Location: LCCOMB_X23_Y18_N18
\dht22_data_bcd|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~18_combout\ = (\dht22_data_bcd|num_reg\(11) & (\dht22_data_bcd|Add1~17\ & VCC)) # (!\dht22_data_bcd|num_reg\(11) & (!\dht22_data_bcd|Add1~17\))
-- \dht22_data_bcd|Add1~19\ = CARRY((!\dht22_data_bcd|num_reg\(11) & !\dht22_data_bcd|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_data_bcd|num_reg\(11),
	datad => VCC,
	cin => \dht22_data_bcd|Add1~17\,
	combout => \dht22_data_bcd|Add1~18_combout\,
	cout => \dht22_data_bcd|Add1~19\);

-- Location: LCCOMB_X24_Y18_N20
\dht22_data_bcd|Add1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~29_combout\ = (\dht22_data_bcd|LessThan3~1_combout\ & ((\dht22_data_bcd|Selector1~0_combout\ & (\dht22_data_bcd|Add3~20_combout\)) # (!\dht22_data_bcd|Selector1~0_combout\ & ((\dht22_data_bcd|Add1~18_combout\))))) # 
-- (!\dht22_data_bcd|LessThan3~1_combout\ & (((\dht22_data_bcd|Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|LessThan3~1_combout\,
	datab => \dht22_data_bcd|Selector1~0_combout\,
	datac => \dht22_data_bcd|Add3~20_combout\,
	datad => \dht22_data_bcd|Add1~18_combout\,
	combout => \dht22_data_bcd|Add1~29_combout\);

-- Location: LCCOMB_X25_Y18_N10
\dht22_data_bcd|num_reg[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[11]~feeder_combout\ = \dht22_data_bcd|Add1~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dht22_data_bcd|Add1~29_combout\,
	combout => \dht22_data_bcd|num_reg[11]~feeder_combout\);

-- Location: LCCOMB_X21_Y17_N6
\dht22_one_wire|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~5_combout\ = (!\dht22_one_wire|bit_count\(0) & (!\dht22_one_wire|bit_count\(3) & \dht22_one_wire|Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|bit_count\(0),
	datab => \dht22_one_wire|bit_count\(3),
	datac => \dht22_one_wire|Decoder0~0_combout\,
	combout => \dht22_one_wire|Decoder0~5_combout\);

-- Location: LCCOMB_X22_Y17_N0
\dht22_one_wire|one_wire_buff[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|one_wire_buff[4]~3_combout\ = (\dht22_one_wire|Decoder0~6_combout\ & ((\dht22_one_wire|Decoder0~5_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~5_combout\ & (\dht22_one_wire|one_wire_buff\(4))))) # 
-- (!\dht22_one_wire|Decoder0~6_combout\ & (((\dht22_one_wire|one_wire_buff\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~6_combout\,
	datab => \dht22_one_wire|Decoder0~5_combout\,
	datac => \dht22_one_wire|one_wire_buff\(4),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|one_wire_buff[4]~3_combout\);

-- Location: FF_X22_Y17_N1
\dht22_one_wire|one_wire_buff[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|one_wire_buff[4]~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|one_wire_buff\(4));

-- Location: FF_X25_Y18_N11
\dht22_data_bcd|num_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|num_reg[11]~feeder_combout\,
	asdata => \dht22_one_wire|one_wire_buff\(4),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dht22_data_bcd|ALT_INV_state.ST_CALC~q\,
	ena => \dht22_data_bcd|num_reg[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(11));

-- Location: LCCOMB_X21_Y18_N22
\dht22_data_bcd|Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add3~22_combout\ = (\dht22_data_bcd|num_reg\(12) & (\dht22_data_bcd|Add3~21\ & VCC)) # (!\dht22_data_bcd|num_reg\(12) & (!\dht22_data_bcd|Add3~21\))
-- \dht22_data_bcd|Add3~23\ = CARRY((!\dht22_data_bcd|num_reg\(12) & !\dht22_data_bcd|Add3~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(12),
	datad => VCC,
	cin => \dht22_data_bcd|Add3~21\,
	combout => \dht22_data_bcd|Add3~22_combout\,
	cout => \dht22_data_bcd|Add3~23\);

-- Location: LCCOMB_X23_Y18_N20
\dht22_data_bcd|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~20_combout\ = (\dht22_data_bcd|num_reg\(12) & ((GND) # (!\dht22_data_bcd|Add1~19\))) # (!\dht22_data_bcd|num_reg\(12) & (\dht22_data_bcd|Add1~19\ $ (GND)))
-- \dht22_data_bcd|Add1~21\ = CARRY((\dht22_data_bcd|num_reg\(12)) # (!\dht22_data_bcd|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(12),
	datad => VCC,
	cin => \dht22_data_bcd|Add1~19\,
	combout => \dht22_data_bcd|Add1~20_combout\,
	cout => \dht22_data_bcd|Add1~21\);

-- Location: LCCOMB_X24_Y18_N2
\dht22_data_bcd|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~28_combout\ = (\dht22_data_bcd|LessThan3~1_combout\ & ((\dht22_data_bcd|Selector1~0_combout\ & (\dht22_data_bcd|Add3~22_combout\)) # (!\dht22_data_bcd|Selector1~0_combout\ & ((\dht22_data_bcd|Add1~20_combout\))))) # 
-- (!\dht22_data_bcd|LessThan3~1_combout\ & (((\dht22_data_bcd|Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|LessThan3~1_combout\,
	datab => \dht22_data_bcd|Selector1~0_combout\,
	datac => \dht22_data_bcd|Add3~22_combout\,
	datad => \dht22_data_bcd|Add1~20_combout\,
	combout => \dht22_data_bcd|Add1~28_combout\);

-- Location: LCCOMB_X25_Y18_N16
\dht22_data_bcd|num_reg[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[12]~feeder_combout\ = \dht22_data_bcd|Add1~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dht22_data_bcd|Add1~28_combout\,
	combout => \dht22_data_bcd|num_reg[12]~feeder_combout\);

-- Location: LCCOMB_X22_Y17_N6
\dht22_one_wire|one_wire_buff[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|one_wire_buff[3]~2_combout\ = (\dht22_one_wire|Decoder0~4_combout\ & ((\dht22_one_wire|Decoder0~3_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~3_combout\ & (\dht22_one_wire|one_wire_buff\(3))))) # 
-- (!\dht22_one_wire|Decoder0~4_combout\ & (((\dht22_one_wire|one_wire_buff\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~4_combout\,
	datab => \dht22_one_wire|Decoder0~3_combout\,
	datac => \dht22_one_wire|one_wire_buff\(3),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|one_wire_buff[3]~2_combout\);

-- Location: FF_X22_Y17_N7
\dht22_one_wire|one_wire_buff[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|one_wire_buff[3]~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|one_wire_buff\(3));

-- Location: FF_X25_Y18_N17
\dht22_data_bcd|num_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|num_reg[12]~feeder_combout\,
	asdata => \dht22_one_wire|one_wire_buff\(3),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dht22_data_bcd|ALT_INV_state.ST_CALC~q\,
	ena => \dht22_data_bcd|num_reg[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(12));

-- Location: LCCOMB_X21_Y18_N24
\dht22_data_bcd|Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add3~24_combout\ = (\dht22_data_bcd|num_reg\(13) & ((GND) # (!\dht22_data_bcd|Add3~23\))) # (!\dht22_data_bcd|num_reg\(13) & (\dht22_data_bcd|Add3~23\ $ (GND)))
-- \dht22_data_bcd|Add3~25\ = CARRY((\dht22_data_bcd|num_reg\(13)) # (!\dht22_data_bcd|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_data_bcd|num_reg\(13),
	datad => VCC,
	cin => \dht22_data_bcd|Add3~23\,
	combout => \dht22_data_bcd|Add3~24_combout\,
	cout => \dht22_data_bcd|Add3~25\);

-- Location: LCCOMB_X23_Y18_N22
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

-- Location: LCCOMB_X24_Y18_N16
\dht22_data_bcd|Add1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~39_combout\ = (\dht22_data_bcd|LessThan3~1_combout\ & ((\dht22_data_bcd|Selector1~0_combout\ & (\dht22_data_bcd|Add3~24_combout\)) # (!\dht22_data_bcd|Selector1~0_combout\ & ((\dht22_data_bcd|Add1~22_combout\))))) # 
-- (!\dht22_data_bcd|LessThan3~1_combout\ & (((\dht22_data_bcd|Add1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|LessThan3~1_combout\,
	datab => \dht22_data_bcd|Selector1~0_combout\,
	datac => \dht22_data_bcd|Add3~24_combout\,
	datad => \dht22_data_bcd|Add1~22_combout\,
	combout => \dht22_data_bcd|Add1~39_combout\);

-- Location: LCCOMB_X24_Y18_N14
\dht22_data_bcd|num_reg[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[13]~feeder_combout\ = \dht22_data_bcd|Add1~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dht22_data_bcd|Add1~39_combout\,
	combout => \dht22_data_bcd|num_reg[13]~feeder_combout\);

-- Location: LCCOMB_X22_Y17_N24
\dht22_one_wire|one_wire_buff[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|one_wire_buff[2]~13_combout\ = (\dht22_one_wire|Decoder0~4_combout\ & ((\dht22_one_wire|Decoder0~5_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~5_combout\ & (\dht22_one_wire|one_wire_buff\(2))))) # 
-- (!\dht22_one_wire|Decoder0~4_combout\ & (((\dht22_one_wire|one_wire_buff\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~4_combout\,
	datab => \dht22_one_wire|Decoder0~5_combout\,
	datac => \dht22_one_wire|one_wire_buff\(2),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|one_wire_buff[2]~13_combout\);

-- Location: FF_X22_Y17_N25
\dht22_one_wire|one_wire_buff[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|one_wire_buff[2]~13_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|one_wire_buff\(2));

-- Location: FF_X24_Y18_N15
\dht22_data_bcd|num_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|num_reg[13]~feeder_combout\,
	asdata => \dht22_one_wire|one_wire_buff\(2),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dht22_data_bcd|ALT_INV_state.ST_CALC~q\,
	ena => \dht22_data_bcd|num_reg[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(13));

-- Location: LCCOMB_X21_Y18_N26
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

-- Location: LCCOMB_X21_Y18_N28
\dht22_data_bcd|Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add3~28_combout\ = \dht22_data_bcd|Add3~27\ $ (\dht22_data_bcd|num_reg\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dht22_data_bcd|num_reg\(15),
	cin => \dht22_data_bcd|Add3~27\,
	combout => \dht22_data_bcd|Add3~28_combout\);

-- Location: LCCOMB_X23_Y18_N24
\dht22_data_bcd|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~24_combout\ = (\dht22_data_bcd|num_reg\(14) & ((GND) # (!\dht22_data_bcd|Add1~23\))) # (!\dht22_data_bcd|num_reg\(14) & (\dht22_data_bcd|Add1~23\ $ (GND)))
-- \dht22_data_bcd|Add1~25\ = CARRY((\dht22_data_bcd|num_reg\(14)) # (!\dht22_data_bcd|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_data_bcd|num_reg\(14),
	datad => VCC,
	cin => \dht22_data_bcd|Add1~23\,
	combout => \dht22_data_bcd|Add1~24_combout\,
	cout => \dht22_data_bcd|Add1~25\);

-- Location: LCCOMB_X23_Y18_N26
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

-- Location: LCCOMB_X22_Y18_N30
\dht22_data_bcd|num_reg[15]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[15]~3_combout\ = (\dht22_data_bcd|LessThan3~1_combout\ & ((\dht22_data_bcd|Selector1~0_combout\ & (\dht22_data_bcd|Add3~28_combout\)) # (!\dht22_data_bcd|Selector1~0_combout\ & ((\dht22_data_bcd|Add1~26_combout\))))) # 
-- (!\dht22_data_bcd|LessThan3~1_combout\ & (((\dht22_data_bcd|Add1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|LessThan3~1_combout\,
	datab => \dht22_data_bcd|Add3~28_combout\,
	datac => \dht22_data_bcd|Selector1~0_combout\,
	datad => \dht22_data_bcd|Add1~26_combout\,
	combout => \dht22_data_bcd|num_reg[15]~3_combout\);

-- Location: LCCOMB_X22_Y17_N4
\dht22_one_wire|one_wire_buff[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|one_wire_buff[0]~0_combout\ = (\dht22_one_wire|Decoder0~1_combout\ & ((\dht22_one_wire|Equal4~0_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Equal4~0_combout\ & (\dht22_one_wire|one_wire_buff\(0))))) # 
-- (!\dht22_one_wire|Decoder0~1_combout\ & (((\dht22_one_wire|one_wire_buff\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~1_combout\,
	datab => \dht22_one_wire|Equal4~0_combout\,
	datac => \dht22_one_wire|one_wire_buff\(0),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|one_wire_buff[0]~0_combout\);

-- Location: FF_X22_Y17_N5
\dht22_one_wire|one_wire_buff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|one_wire_buff[0]~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|one_wire_buff\(0));

-- Location: LCCOMB_X22_Y18_N28
\dht22_data_bcd|num_reg[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[15]~2_combout\ = (\dht22_data_bcd|state.ST_DONE~q\ & (\dht22_data_bcd|num_reg\(15))) # (!\dht22_data_bcd|state.ST_DONE~q\ & (((!\dht22_data_bcd|state.ST_CALC~q\ & \dht22_one_wire|one_wire_buff\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(15),
	datab => \dht22_data_bcd|state.ST_CALC~q\,
	datac => \dht22_one_wire|one_wire_buff\(0),
	datad => \dht22_data_bcd|state.ST_DONE~q\,
	combout => \dht22_data_bcd|num_reg[15]~2_combout\);

-- Location: LCCOMB_X22_Y18_N2
\dht22_data_bcd|num_reg[15]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[15]~5_combout\ = (\dht22_data_bcd|num_reg[15]~2_combout\) # ((\dht22_data_bcd|num_reg[15]~3_combout\ & (\dht22_data_bcd|state.ST_CALC~q\ & \dht22_data_bcd|num_reg[10]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg[15]~3_combout\,
	datab => \dht22_data_bcd|state.ST_CALC~q\,
	datac => \dht22_data_bcd|num_reg[10]~4_combout\,
	datad => \dht22_data_bcd|num_reg[15]~2_combout\,
	combout => \dht22_data_bcd|num_reg[15]~5_combout\);

-- Location: FF_X22_Y18_N3
\dht22_data_bcd|num_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|num_reg[15]~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(15));

-- Location: LCCOMB_X25_Y18_N28
\dht22_data_bcd|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|LessThan3~2_combout\ = (!\dht22_data_bcd|num_reg\(15) & (!\dht22_data_bcd|num_reg\(14) & \dht22_data_bcd|LessThan3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(15),
	datac => \dht22_data_bcd|num_reg\(14),
	datad => \dht22_data_bcd|LessThan3~1_combout\,
	combout => \dht22_data_bcd|LessThan3~2_combout\);

-- Location: LCCOMB_X25_Y18_N26
\dht22_data_bcd|num_reg[10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[10]~4_combout\ = (!\dht22_data_bcd|state.ST_DONE~q\ & (((!\dht22_data_bcd|LessThan0~3_combout\) # (!\dht22_data_bcd|state.ST_CALC~q\)) # (!\dht22_data_bcd|LessThan3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_DONE~q\,
	datab => \dht22_data_bcd|LessThan3~2_combout\,
	datac => \dht22_data_bcd|state.ST_CALC~q\,
	datad => \dht22_data_bcd|LessThan0~3_combout\,
	combout => \dht22_data_bcd|num_reg[10]~4_combout\);

-- Location: LCCOMB_X22_Y18_N18
\dht22_data_bcd|num_reg[14]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[14]~7_combout\ = (\dht22_data_bcd|Selector1~0_combout\ & ((\dht22_data_bcd|LessThan3~1_combout\ & ((\dht22_data_bcd|Add3~26_combout\))) # (!\dht22_data_bcd|LessThan3~1_combout\ & (\dht22_data_bcd|Add1~24_combout\)))) # 
-- (!\dht22_data_bcd|Selector1~0_combout\ & (\dht22_data_bcd|Add1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|Selector1~0_combout\,
	datab => \dht22_data_bcd|Add1~24_combout\,
	datac => \dht22_data_bcd|Add3~26_combout\,
	datad => \dht22_data_bcd|LessThan3~1_combout\,
	combout => \dht22_data_bcd|num_reg[14]~7_combout\);

-- Location: LCCOMB_X22_Y18_N4
\dht22_data_bcd|num_reg[14]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[14]~8_combout\ = (\dht22_data_bcd|num_reg[14]~6_combout\) # ((\dht22_data_bcd|state.ST_CALC~q\ & (\dht22_data_bcd|num_reg[10]~4_combout\ & \dht22_data_bcd|num_reg[14]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg[14]~6_combout\,
	datab => \dht22_data_bcd|state.ST_CALC~q\,
	datac => \dht22_data_bcd|num_reg[10]~4_combout\,
	datad => \dht22_data_bcd|num_reg[14]~7_combout\,
	combout => \dht22_data_bcd|num_reg[14]~8_combout\);

-- Location: FF_X22_Y18_N5
\dht22_data_bcd|num_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|num_reg[14]~8_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(14));

-- Location: LCCOMB_X22_Y18_N26
\dht22_data_bcd|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector1~0_combout\ = (!\dht22_data_bcd|num_reg\(14) & !\dht22_data_bcd|num_reg\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_data_bcd|num_reg\(14),
	datad => \dht22_data_bcd|num_reg\(15),
	combout => \dht22_data_bcd|Selector1~0_combout\);

-- Location: LCCOMB_X23_Y18_N30
\dht22_data_bcd|Add1~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~37_combout\ = (\dht22_data_bcd|LessThan3~1_combout\ & ((\dht22_data_bcd|Selector1~0_combout\ & ((\dht22_data_bcd|Add3~10_combout\))) # (!\dht22_data_bcd|Selector1~0_combout\ & (\dht22_data_bcd|Add1~8_combout\)))) # 
-- (!\dht22_data_bcd|LessThan3~1_combout\ & (((\dht22_data_bcd|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|LessThan3~1_combout\,
	datab => \dht22_data_bcd|Selector1~0_combout\,
	datac => \dht22_data_bcd|Add1~8_combout\,
	datad => \dht22_data_bcd|Add3~10_combout\,
	combout => \dht22_data_bcd|Add1~37_combout\);

-- Location: LCCOMB_X24_Y18_N26
\dht22_data_bcd|num_reg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[6]~feeder_combout\ = \dht22_data_bcd|Add1~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dht22_data_bcd|Add1~37_combout\,
	combout => \dht22_data_bcd|num_reg[6]~feeder_combout\);

-- Location: LCCOMB_X25_Y17_N14
\dht22_one_wire|Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~10_combout\ = (\dht22_one_wire|Decoder0~0_combout\ & (\dht22_one_wire|bit_count\(3) & \dht22_one_wire|bit_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|Decoder0~0_combout\,
	datac => \dht22_one_wire|bit_count\(3),
	datad => \dht22_one_wire|bit_count\(0),
	combout => \dht22_one_wire|Decoder0~10_combout\);

-- Location: LCCOMB_X24_Y17_N8
\dht22_one_wire|one_wire_buff[9]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|one_wire_buff[9]~11_combout\ = (\dht22_one_wire|Decoder0~10_combout\ & ((\dht22_one_wire|Decoder0~2_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~2_combout\ & (\dht22_one_wire|one_wire_buff\(9))))) # 
-- (!\dht22_one_wire|Decoder0~10_combout\ & (((\dht22_one_wire|one_wire_buff\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~10_combout\,
	datab => \dht22_one_wire|Decoder0~2_combout\,
	datac => \dht22_one_wire|one_wire_buff\(9),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|one_wire_buff[9]~11_combout\);

-- Location: FF_X24_Y17_N9
\dht22_one_wire|one_wire_buff[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|one_wire_buff[9]~11_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|one_wire_buff\(9));

-- Location: FF_X24_Y18_N27
\dht22_data_bcd|num_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|num_reg[6]~feeder_combout\,
	asdata => \dht22_one_wire|one_wire_buff\(9),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dht22_data_bcd|ALT_INV_state.ST_CALC~q\,
	ena => \dht22_data_bcd|num_reg[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(6));

-- Location: LCCOMB_X24_Y18_N0
\dht22_data_bcd|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|LessThan3~0_combout\ = ((!\dht22_data_bcd|num_reg\(4) & (!\dht22_data_bcd|num_reg\(2) & !\dht22_data_bcd|num_reg\(3)))) # (!\dht22_data_bcd|num_reg\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(4),
	datab => \dht22_data_bcd|num_reg\(2),
	datac => \dht22_data_bcd|num_reg\(6),
	datad => \dht22_data_bcd|num_reg\(3),
	combout => \dht22_data_bcd|LessThan3~0_combout\);

-- Location: LCCOMB_X25_Y18_N22
\dht22_data_bcd|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|LessThan0~0_combout\ = (!\dht22_data_bcd|num_reg\(11) & (!\dht22_data_bcd|num_reg\(9) & (!\dht22_data_bcd|num_reg\(10) & !\dht22_data_bcd|num_reg\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(11),
	datab => \dht22_data_bcd|num_reg\(9),
	datac => \dht22_data_bcd|num_reg\(10),
	datad => \dht22_data_bcd|num_reg\(12),
	combout => \dht22_data_bcd|LessThan0~0_combout\);

-- Location: LCCOMB_X25_Y18_N4
\dht22_data_bcd|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|LessThan0~1_combout\ = (!\dht22_data_bcd|num_reg\(7) & (\dht22_data_bcd|LessThan0~0_combout\ & !\dht22_data_bcd|num_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_data_bcd|num_reg\(7),
	datac => \dht22_data_bcd|LessThan0~0_combout\,
	datad => \dht22_data_bcd|num_reg\(8),
	combout => \dht22_data_bcd|LessThan0~1_combout\);

-- Location: LCCOMB_X25_Y18_N6
\dht22_data_bcd|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|LessThan3~1_combout\ = (\dht22_data_bcd|LessThan0~1_combout\ & (!\dht22_data_bcd|num_reg\(13) & ((\dht22_data_bcd|LessThan3~0_combout\) # (!\dht22_data_bcd|num_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|LessThan3~0_combout\,
	datab => \dht22_data_bcd|LessThan0~1_combout\,
	datac => \dht22_data_bcd|num_reg\(5),
	datad => \dht22_data_bcd|num_reg\(13),
	combout => \dht22_data_bcd|LessThan3~1_combout\);

-- Location: LCCOMB_X23_Y18_N0
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

-- Location: LCCOMB_X23_Y18_N28
\dht22_data_bcd|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~36_combout\ = (\dht22_data_bcd|LessThan3~1_combout\ & ((\dht22_data_bcd|Selector1~0_combout\ & ((\dht22_data_bcd|Add3~2_combout\))) # (!\dht22_data_bcd|Selector1~0_combout\ & (\dht22_data_bcd|Add1~0_combout\)))) # 
-- (!\dht22_data_bcd|LessThan3~1_combout\ & (\dht22_data_bcd|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|LessThan3~1_combout\,
	datab => \dht22_data_bcd|Add1~0_combout\,
	datac => \dht22_data_bcd|Add3~2_combout\,
	datad => \dht22_data_bcd|Selector1~0_combout\,
	combout => \dht22_data_bcd|Add1~36_combout\);

-- Location: LCCOMB_X24_Y18_N8
\dht22_data_bcd|num_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[2]~feeder_combout\ = \dht22_data_bcd|Add1~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dht22_data_bcd|Add1~36_combout\,
	combout => \dht22_data_bcd|num_reg[2]~feeder_combout\);

-- Location: LCCOMB_X22_Y17_N16
\dht22_one_wire|one_wire_buff[13]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|one_wire_buff[13]~10_combout\ = (\dht22_one_wire|Decoder0~6_combout\ & ((\dht22_one_wire|Decoder0~10_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~10_combout\ & (\dht22_one_wire|one_wire_buff\(13))))) # 
-- (!\dht22_one_wire|Decoder0~6_combout\ & (((\dht22_one_wire|one_wire_buff\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~6_combout\,
	datab => \dht22_one_wire|Decoder0~10_combout\,
	datac => \dht22_one_wire|one_wire_buff\(13),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|one_wire_buff[13]~10_combout\);

-- Location: FF_X22_Y17_N17
\dht22_one_wire|one_wire_buff[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|one_wire_buff[13]~10_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|one_wire_buff\(13));

-- Location: FF_X24_Y18_N9
\dht22_data_bcd|num_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|num_reg[2]~feeder_combout\,
	asdata => \dht22_one_wire|one_wire_buff\(13),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dht22_data_bcd|ALT_INV_state.ST_CALC~q\,
	ena => \dht22_data_bcd|num_reg[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(2));

-- Location: LCCOMB_X23_Y18_N2
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

-- Location: LCCOMB_X22_Y18_N10
\dht22_data_bcd|Add1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~35_combout\ = (\dht22_data_bcd|Selector1~0_combout\ & ((\dht22_data_bcd|LessThan3~1_combout\ & ((\dht22_data_bcd|Add3~4_combout\))) # (!\dht22_data_bcd|LessThan3~1_combout\ & (\dht22_data_bcd|Add1~2_combout\)))) # 
-- (!\dht22_data_bcd|Selector1~0_combout\ & (\dht22_data_bcd|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|Add1~2_combout\,
	datab => \dht22_data_bcd|Add3~4_combout\,
	datac => \dht22_data_bcd|Selector1~0_combout\,
	datad => \dht22_data_bcd|LessThan3~1_combout\,
	combout => \dht22_data_bcd|Add1~35_combout\);

-- Location: LCCOMB_X22_Y18_N20
\dht22_data_bcd|num_reg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[3]~feeder_combout\ = \dht22_data_bcd|Add1~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dht22_data_bcd|Add1~35_combout\,
	combout => \dht22_data_bcd|num_reg[3]~feeder_combout\);

-- Location: LCCOMB_X22_Y17_N22
\dht22_one_wire|one_wire_buff[12]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|one_wire_buff[12]~9_combout\ = (\dht22_one_wire|Decoder0~6_combout\ & ((\dht22_one_wire|Decoder0~11_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~11_combout\ & (\dht22_one_wire|one_wire_buff\(12))))) # 
-- (!\dht22_one_wire|Decoder0~6_combout\ & (((\dht22_one_wire|one_wire_buff\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~6_combout\,
	datab => \dht22_one_wire|Decoder0~11_combout\,
	datac => \dht22_one_wire|one_wire_buff\(12),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|one_wire_buff[12]~9_combout\);

-- Location: FF_X22_Y17_N23
\dht22_one_wire|one_wire_buff[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|one_wire_buff[12]~9_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|one_wire_buff\(12));

-- Location: FF_X22_Y18_N21
\dht22_data_bcd|num_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|num_reg[3]~feeder_combout\,
	asdata => \dht22_one_wire|one_wire_buff\(12),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dht22_data_bcd|ALT_INV_state.ST_CALC~q\,
	ena => \dht22_data_bcd|num_reg[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(3));

-- Location: LCCOMB_X22_Y18_N24
\dht22_data_bcd|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~34_combout\ = (\dht22_data_bcd|Selector1~0_combout\ & ((\dht22_data_bcd|LessThan3~1_combout\ & ((\dht22_data_bcd|Add3~6_combout\))) # (!\dht22_data_bcd|LessThan3~1_combout\ & (\dht22_data_bcd|Add1~4_combout\)))) # 
-- (!\dht22_data_bcd|Selector1~0_combout\ & (\dht22_data_bcd|Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|Add1~4_combout\,
	datab => \dht22_data_bcd|Add3~6_combout\,
	datac => \dht22_data_bcd|Selector1~0_combout\,
	datad => \dht22_data_bcd|LessThan3~1_combout\,
	combout => \dht22_data_bcd|Add1~34_combout\);

-- Location: LCCOMB_X25_Y18_N12
\dht22_data_bcd|num_reg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[4]~feeder_combout\ = \dht22_data_bcd|Add1~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dht22_data_bcd|Add1~34_combout\,
	combout => \dht22_data_bcd|num_reg[4]~feeder_combout\);

-- Location: LCCOMB_X22_Y17_N8
\dht22_one_wire|one_wire_buff[11]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|one_wire_buff[11]~8_combout\ = (\dht22_one_wire|Decoder0~4_combout\ & ((\dht22_one_wire|Decoder0~10_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~10_combout\ & (\dht22_one_wire|one_wire_buff\(11))))) # 
-- (!\dht22_one_wire|Decoder0~4_combout\ & (((\dht22_one_wire|one_wire_buff\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~4_combout\,
	datab => \dht22_one_wire|Decoder0~10_combout\,
	datac => \dht22_one_wire|one_wire_buff\(11),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|one_wire_buff[11]~8_combout\);

-- Location: FF_X22_Y17_N9
\dht22_one_wire|one_wire_buff[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|one_wire_buff[11]~8_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|one_wire_buff\(11));

-- Location: FF_X25_Y18_N13
\dht22_data_bcd|num_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|num_reg[4]~feeder_combout\,
	asdata => \dht22_one_wire|one_wire_buff\(11),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dht22_data_bcd|ALT_INV_state.ST_CALC~q\,
	ena => \dht22_data_bcd|num_reg[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(4));

-- Location: LCCOMB_X21_Y18_N30
\dht22_data_bcd|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|LessThan0~2_combout\ = (!\dht22_data_bcd|num_reg\(6) & (((!\dht22_data_bcd|num_reg\(1) & !\dht22_data_bcd|num_reg\(2))) # (!\dht22_data_bcd|num_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(3),
	datab => \dht22_data_bcd|num_reg\(6),
	datac => \dht22_data_bcd|num_reg\(1),
	datad => \dht22_data_bcd|num_reg\(2),
	combout => \dht22_data_bcd|LessThan0~2_combout\);

-- Location: LCCOMB_X25_Y18_N20
\dht22_data_bcd|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|LessThan0~3_combout\ = (!\dht22_data_bcd|num_reg\(4) & (\dht22_data_bcd|LessThan0~1_combout\ & (!\dht22_data_bcd|num_reg\(5) & \dht22_data_bcd|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(4),
	datab => \dht22_data_bcd|LessThan0~1_combout\,
	datac => \dht22_data_bcd|num_reg\(5),
	datad => \dht22_data_bcd|LessThan0~2_combout\,
	combout => \dht22_data_bcd|LessThan0~3_combout\);

-- Location: LCCOMB_X24_Y18_N18
\dht22_data_bcd|Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector1~3_combout\ = (\dht22_data_bcd|LessThan0~3_combout\ & (!\dht22_data_bcd|num_reg\(13) & (\dht22_data_bcd|state.ST_CALC~q\ & \dht22_data_bcd|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|LessThan0~3_combout\,
	datab => \dht22_data_bcd|num_reg\(13),
	datac => \dht22_data_bcd|state.ST_CALC~q\,
	datad => \dht22_data_bcd|Selector1~0_combout\,
	combout => \dht22_data_bcd|Selector1~3_combout\);

-- Location: LCCOMB_X23_Y16_N28
\dht22_data_bcd|state.ST_IDLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|state.ST_IDLE~0_combout\ = (\dht22_data_bcd|Selector1~1_combout\ & ((\dht22_data_bcd|Selector1~3_combout\ & (!\dht22_data_bcd|Selector1~2_combout\)) # (!\dht22_data_bcd|Selector1~3_combout\ & ((\dht22_data_bcd|state.ST_IDLE~q\))))) # 
-- (!\dht22_data_bcd|Selector1~1_combout\ & (!\dht22_data_bcd|Selector1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|Selector1~1_combout\,
	datab => \dht22_data_bcd|Selector1~2_combout\,
	datac => \dht22_data_bcd|state.ST_IDLE~q\,
	datad => \dht22_data_bcd|Selector1~3_combout\,
	combout => \dht22_data_bcd|state.ST_IDLE~0_combout\);

-- Location: FF_X23_Y16_N29
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

-- Location: LCCOMB_X23_Y16_N26
\dht22_data_bcd|Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector2~4_combout\ = (\dht22_data_bcd|state.ST_DONE~q\ & (\dht22_one_wire|state.ST_DONE~q\ & ((\dht22_data_bcd|state.ST_IDLE~q\) # (\dht22_data_bcd|Selector1~3_combout\)))) # (!\dht22_data_bcd|state.ST_DONE~q\ & 
-- (((\dht22_data_bcd|Selector1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_IDLE~q\,
	datab => \dht22_one_wire|state.ST_DONE~q\,
	datac => \dht22_data_bcd|state.ST_DONE~q\,
	datad => \dht22_data_bcd|Selector1~3_combout\,
	combout => \dht22_data_bcd|Selector2~4_combout\);

-- Location: FF_X23_Y16_N27
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

-- Location: LCCOMB_X22_Y16_N14
\dht22_data_bcd|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector1~1_combout\ = (\dht22_one_wire|state.ST_DONE~q\ & ((\dht22_data_bcd|state.ST_IDLE~q\))) # (!\dht22_one_wire|state.ST_DONE~q\ & (!\dht22_data_bcd|state.ST_DONE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|state.ST_DONE~q\,
	datac => \dht22_data_bcd|state.ST_DONE~q\,
	datad => \dht22_data_bcd|state.ST_IDLE~q\,
	combout => \dht22_data_bcd|Selector1~1_combout\);

-- Location: LCCOMB_X23_Y16_N24
\dht22_data_bcd|Selector1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector1~4_combout\ = (!\dht22_data_bcd|Selector1~3_combout\ & ((\dht22_data_bcd|Selector1~1_combout\ & ((\dht22_data_bcd|state.ST_CALC~q\))) # (!\dht22_data_bcd|Selector1~1_combout\ & (!\dht22_data_bcd|Selector1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|Selector1~1_combout\,
	datab => \dht22_data_bcd|Selector1~2_combout\,
	datac => \dht22_data_bcd|state.ST_CALC~q\,
	datad => \dht22_data_bcd|Selector1~3_combout\,
	combout => \dht22_data_bcd|Selector1~4_combout\);

-- Location: FF_X23_Y16_N25
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

-- Location: LCCOMB_X21_Y16_N0
\dht22_data_bcd|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector10~0_combout\ = (\dht22_data_bcd|tens_reg\(0) & ((\dht22_data_bcd|state.ST_DONE~q\) # ((\dht22_data_bcd|state.ST_CALC~q\ & !\dht22_data_bcd|num~0_combout\)))) # (!\dht22_data_bcd|tens_reg\(0) & (\dht22_data_bcd|state.ST_CALC~q\ & 
-- ((\dht22_data_bcd|num~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_CALC~q\,
	datab => \dht22_data_bcd|state.ST_DONE~q\,
	datac => \dht22_data_bcd|tens_reg\(0),
	datad => \dht22_data_bcd|num~0_combout\,
	combout => \dht22_data_bcd|Selector10~0_combout\);

-- Location: FF_X21_Y16_N1
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

-- Location: LCCOMB_X21_Y16_N26
\dht22_data_bcd|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector9~2_combout\ = (\dht22_data_bcd|state.ST_CALC~q\ & (\dht22_data_bcd|num~0_combout\ & (\dht22_data_bcd|tens_reg\(0) $ (\dht22_data_bcd|tens_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_CALC~q\,
	datab => \dht22_data_bcd|tens_reg\(0),
	datac => \dht22_data_bcd|tens_reg\(1),
	datad => \dht22_data_bcd|num~0_combout\,
	combout => \dht22_data_bcd|Selector9~2_combout\);

-- Location: LCCOMB_X21_Y16_N14
\dht22_data_bcd|Selector9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector9~3_combout\ = (\dht22_data_bcd|Selector9~2_combout\) # ((\dht22_data_bcd|tens_reg\(1) & ((\dht22_data_bcd|state.ST_DONE~q\) # (\dht22_data_bcd|Selector9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|Selector9~2_combout\,
	datab => \dht22_data_bcd|state.ST_DONE~q\,
	datac => \dht22_data_bcd|tens_reg\(1),
	datad => \dht22_data_bcd|Selector9~0_combout\,
	combout => \dht22_data_bcd|Selector9~3_combout\);

-- Location: FF_X21_Y16_N15
\dht22_data_bcd|tens_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector9~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|tens_reg\(1));

-- Location: LCCOMB_X21_Y16_N16
\dht22_data_bcd|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add2~0_combout\ = (\dht22_data_bcd|tens_reg\(1) & \dht22_data_bcd|tens_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_data_bcd|tens_reg\(1),
	datad => \dht22_data_bcd|tens_reg\(0),
	combout => \dht22_data_bcd|Add2~0_combout\);

-- Location: LCCOMB_X21_Y16_N6
\dht22_data_bcd|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector8~0_combout\ = (\dht22_data_bcd|state.ST_CALC~q\ & (\dht22_data_bcd|num~0_combout\ & (\dht22_data_bcd|Add2~0_combout\ $ (\dht22_data_bcd|tens_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|Add2~0_combout\,
	datab => \dht22_data_bcd|tens_reg\(2),
	datac => \dht22_data_bcd|state.ST_CALC~q\,
	datad => \dht22_data_bcd|num~0_combout\,
	combout => \dht22_data_bcd|Selector8~0_combout\);

-- Location: LCCOMB_X21_Y16_N28
\dht22_data_bcd|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector8~1_combout\ = (\dht22_data_bcd|Selector8~0_combout\) # ((\dht22_data_bcd|tens_reg\(2) & ((\dht22_data_bcd|state.ST_DONE~q\) # (\dht22_data_bcd|Selector9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|Selector8~0_combout\,
	datab => \dht22_data_bcd|state.ST_DONE~q\,
	datac => \dht22_data_bcd|tens_reg\(2),
	datad => \dht22_data_bcd|Selector9~0_combout\,
	combout => \dht22_data_bcd|Selector8~1_combout\);

-- Location: FF_X21_Y16_N29
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

-- Location: LCCOMB_X25_Y18_N30
\dht22_data_bcd|bcd_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|bcd_reg[0]~0_combout\ = (\dht22_data_bcd|Selector1~0_combout\ & (\dht22_data_bcd|LessThan0~3_combout\ & (\dht22_data_bcd|state.ST_CALC~q\ & \dht22_data_bcd|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|Selector1~0_combout\,
	datab => \dht22_data_bcd|LessThan0~3_combout\,
	datac => \dht22_data_bcd|state.ST_CALC~q\,
	datad => \dht22_data_bcd|LessThan3~1_combout\,
	combout => \dht22_data_bcd|bcd_reg[0]~0_combout\);

-- Location: FF_X19_Y18_N3
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

-- Location: FF_X19_Y18_N17
\dht22_data_bcd|bcd_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_data_bcd|num_reg\(2),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_data_bcd|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|bcd_reg\(2));

-- Location: LCCOMB_X19_Y18_N14
\dht22_data_bcd|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector6~0_combout\ = (\dht22_data_bcd|hundreds_reg\(0) & ((\dht22_data_bcd|state.ST_DONE~q\) # ((\dht22_data_bcd|state.ST_CALC~q\ & \dht22_data_bcd|LessThan3~2_combout\)))) # (!\dht22_data_bcd|hundreds_reg\(0) & 
-- (((\dht22_data_bcd|state.ST_CALC~q\ & !\dht22_data_bcd|LessThan3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_DONE~q\,
	datab => \dht22_data_bcd|state.ST_CALC~q\,
	datac => \dht22_data_bcd|hundreds_reg\(0),
	datad => \dht22_data_bcd|LessThan3~2_combout\,
	combout => \dht22_data_bcd|Selector6~0_combout\);

-- Location: FF_X19_Y18_N15
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

-- Location: LCCOMB_X19_Y18_N4
\dht22_data_bcd|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector5~0_combout\ = (\dht22_data_bcd|state.ST_CALC~q\ & (\dht22_data_bcd|hundreds_reg\(1) $ (((\dht22_data_bcd|hundreds_reg\(0) & !\dht22_data_bcd|LessThan3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_CALC~q\,
	datab => \dht22_data_bcd|hundreds_reg\(0),
	datac => \dht22_data_bcd|hundreds_reg\(1),
	datad => \dht22_data_bcd|LessThan3~2_combout\,
	combout => \dht22_data_bcd|Selector5~0_combout\);

-- Location: LCCOMB_X19_Y18_N26
\dht22_data_bcd|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector5~1_combout\ = (\dht22_data_bcd|Selector5~0_combout\) # ((\dht22_data_bcd|state.ST_DONE~q\ & \dht22_data_bcd|hundreds_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_DONE~q\,
	datab => \dht22_data_bcd|Selector5~0_combout\,
	datac => \dht22_data_bcd|hundreds_reg\(1),
	combout => \dht22_data_bcd|Selector5~1_combout\);

-- Location: FF_X19_Y18_N27
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

-- Location: LCCOMB_X19_Y18_N20
\dht22_data_bcd|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector4~0_combout\ = (\dht22_data_bcd|hundreds_reg\(0) & (\dht22_data_bcd|hundreds_reg\(1) & !\dht22_data_bcd|LessThan3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_data_bcd|hundreds_reg\(0),
	datac => \dht22_data_bcd|hundreds_reg\(1),
	datad => \dht22_data_bcd|LessThan3~2_combout\,
	combout => \dht22_data_bcd|Selector4~0_combout\);

-- Location: LCCOMB_X19_Y18_N22
\dht22_data_bcd|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector4~1_combout\ = (\dht22_data_bcd|hundreds_reg\(2) & ((\dht22_data_bcd|state.ST_DONE~q\) # ((\dht22_data_bcd|state.ST_CALC~q\ & !\dht22_data_bcd|Selector4~0_combout\)))) # (!\dht22_data_bcd|hundreds_reg\(2) & 
-- (((\dht22_data_bcd|state.ST_CALC~q\ & \dht22_data_bcd|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_DONE~q\,
	datab => \dht22_data_bcd|state.ST_CALC~q\,
	datac => \dht22_data_bcd|hundreds_reg\(2),
	datad => \dht22_data_bcd|Selector4~0_combout\,
	combout => \dht22_data_bcd|Selector4~1_combout\);

-- Location: FF_X19_Y18_N23
\dht22_data_bcd|hundreds_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector4~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|hundreds_reg\(2));

-- Location: FF_X19_Y18_N25
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

-- Location: LCCOMB_X19_Y18_N16
\display|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux2~0_combout\ = (\display|digit_index\(0) & ((\display|digit_index\(1) & ((\dht22_data_bcd|bcd_reg\(10)))) # (!\display|digit_index\(1) & (\dht22_data_bcd|bcd_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_index\(0),
	datab => \display|digit_index\(1),
	datac => \dht22_data_bcd|bcd_reg\(2),
	datad => \dht22_data_bcd|bcd_reg\(10),
	combout => \display|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y18_N2
\display|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux2~1_combout\ = (\display|Mux2~0_combout\) # ((!\display|digit_index\(0) & (\display|digit_index\(1) & \dht22_data_bcd|bcd_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_index\(0),
	datab => \display|digit_index\(1),
	datac => \dht22_data_bcd|bcd_reg\(6),
	datad => \display|Mux2~0_combout\,
	combout => \display|Mux2~1_combout\);

-- Location: FF_X19_Y18_N5
\dht22_data_bcd|bcd_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_data_bcd|hundreds_reg\(1),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_data_bcd|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|bcd_reg\(9));

-- Location: FF_X18_Y18_N19
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

-- Location: LCCOMB_X18_Y18_N18
\display|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux3~0_combout\ = (\display|digit_index\(1) & ((\display|digit_index\(0) & (\dht22_data_bcd|bcd_reg\(9))) # (!\display|digit_index\(0) & ((\dht22_data_bcd|bcd_reg\(5)))))) # (!\display|digit_index\(1) & (((!\display|digit_index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|bcd_reg\(9),
	datab => \display|digit_index\(1),
	datac => \dht22_data_bcd|bcd_reg\(5),
	datad => \display|digit_index\(0),
	combout => \display|Mux3~0_combout\);

-- Location: FF_X18_Y18_N29
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

-- Location: LCCOMB_X18_Y18_N28
\display|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux3~1_combout\ = (\display|Mux3~0_combout\) # ((\dht22_data_bcd|bcd_reg\(1) & !\display|digit_index\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display|Mux3~0_combout\,
	datac => \dht22_data_bcd|bcd_reg\(1),
	datad => \display|digit_index\(1),
	combout => \display|Mux3~1_combout\);

-- Location: FF_X19_Y18_N9
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

-- Location: LCCOMB_X21_Y16_N8
\dht22_data_bcd|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector9~1_combout\ = (\dht22_data_bcd|state.ST_CALC~q\ & \dht22_data_bcd|num~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_data_bcd|state.ST_CALC~q\,
	datad => \dht22_data_bcd|num~0_combout\,
	combout => \dht22_data_bcd|Selector9~1_combout\);

-- Location: LCCOMB_X21_Y16_N12
\dht22_data_bcd|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector7~0_combout\ = (\dht22_data_bcd|Selector9~1_combout\ & (\dht22_data_bcd|tens_reg\(3) $ (((\dht22_data_bcd|Add2~0_combout\ & \dht22_data_bcd|tens_reg\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|tens_reg\(3),
	datab => \dht22_data_bcd|Add2~0_combout\,
	datac => \dht22_data_bcd|Selector9~1_combout\,
	datad => \dht22_data_bcd|tens_reg\(2),
	combout => \dht22_data_bcd|Selector7~0_combout\);

-- Location: LCCOMB_X21_Y16_N10
\dht22_data_bcd|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector7~1_combout\ = (\dht22_data_bcd|Selector7~0_combout\) # ((\dht22_data_bcd|tens_reg\(3) & ((\dht22_data_bcd|state.ST_DONE~q\) # (\dht22_data_bcd|Selector9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|Selector7~0_combout\,
	datab => \dht22_data_bcd|state.ST_DONE~q\,
	datac => \dht22_data_bcd|tens_reg\(3),
	datad => \dht22_data_bcd|Selector9~0_combout\,
	combout => \dht22_data_bcd|Selector7~1_combout\);

-- Location: FF_X21_Y16_N11
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

-- Location: FF_X19_Y18_N1
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

-- Location: LCCOMB_X19_Y18_N18
\dht22_data_bcd|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector3~0_combout\ = (\dht22_data_bcd|hundreds_reg\(1) & (\dht22_data_bcd|hundreds_reg\(0) & (\dht22_data_bcd|hundreds_reg\(2) & !\dht22_data_bcd|LessThan3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|hundreds_reg\(1),
	datab => \dht22_data_bcd|hundreds_reg\(0),
	datac => \dht22_data_bcd|hundreds_reg\(2),
	datad => \dht22_data_bcd|LessThan3~2_combout\,
	combout => \dht22_data_bcd|Selector3~0_combout\);

-- Location: LCCOMB_X19_Y18_N12
\dht22_data_bcd|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector3~1_combout\ = (\dht22_data_bcd|hundreds_reg\(3) & ((\dht22_data_bcd|state.ST_DONE~q\) # ((\dht22_data_bcd|state.ST_CALC~q\ & !\dht22_data_bcd|Selector3~0_combout\)))) # (!\dht22_data_bcd|hundreds_reg\(3) & 
-- (((\dht22_data_bcd|state.ST_CALC~q\ & \dht22_data_bcd|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_DONE~q\,
	datab => \dht22_data_bcd|state.ST_CALC~q\,
	datac => \dht22_data_bcd|hundreds_reg\(3),
	datad => \dht22_data_bcd|Selector3~0_combout\,
	combout => \dht22_data_bcd|Selector3~1_combout\);

-- Location: FF_X19_Y18_N13
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

-- Location: LCCOMB_X19_Y18_N28
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

-- Location: FF_X19_Y18_N29
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

-- Location: LCCOMB_X19_Y18_N0
\display|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux1~0_combout\ = (\display|digit_index\(0) & (\display|digit_index\(1) & ((\dht22_data_bcd|bcd_reg\(11))))) # (!\display|digit_index\(0) & (((\dht22_data_bcd|bcd_reg\(7))) # (!\display|digit_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_index\(0),
	datab => \display|digit_index\(1),
	datac => \dht22_data_bcd|bcd_reg\(7),
	datad => \dht22_data_bcd|bcd_reg\(11),
	combout => \display|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y18_N8
\display|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux1~1_combout\ = (\display|Mux1~0_combout\) # ((!\display|digit_index\(1) & \dht22_data_bcd|bcd_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display|digit_index\(1),
	datac => \dht22_data_bcd|bcd_reg\(3),
	datad => \display|Mux1~0_combout\,
	combout => \display|Mux1~1_combout\);

-- Location: LCCOMB_X19_Y18_N30
\dht22_data_bcd|bcd_reg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|bcd_reg[4]~feeder_combout\ = \dht22_data_bcd|tens_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dht22_data_bcd|tens_reg\(0),
	combout => \dht22_data_bcd|bcd_reg[4]~feeder_combout\);

-- Location: FF_X19_Y18_N31
\dht22_data_bcd|bcd_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|bcd_reg[4]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|bcd_reg\(4));

-- Location: FF_X19_Y18_N7
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

-- Location: LCCOMB_X16_Y13_N2
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_cout\ = CARRY((\display|count\(0) & \display|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(0),
	datab => \display|count\(1),
	datad => VCC,
	cout => \Add0~1_cout\);

-- Location: LCCOMB_X16_Y13_N4
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (count(2) & (!\Add0~1_cout\)) # (!count(2) & ((\Add0~1_cout\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1_cout\) # (!count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \Add0~1_cout\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X16_Y13_N5
\count[2]\ : dffeas
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
	q => count(2));

-- Location: LCCOMB_X16_Y13_N6
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (count(3) & (\Add0~3\ $ (GND))) # (!count(3) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((count(3) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X16_Y13_N7
\count[3]\ : dffeas
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
	q => count(3));

-- Location: LCCOMB_X16_Y13_N8
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (count(4) & (!\Add0~5\)) # (!count(4) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X16_Y13_N9
\count[4]\ : dffeas
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
	q => count(4));

-- Location: LCCOMB_X16_Y13_N10
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (count(5) & (\Add0~7\ $ (GND))) # (!count(5) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((count(5) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X16_Y13_N11
\count[5]\ : dffeas
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
	q => count(5));

-- Location: LCCOMB_X17_Y13_N30
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (count(5) & (count(2) & (count(3) & count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datab => count(2),
	datac => count(3),
	datad => count(4),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X16_Y13_N12
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (count(6) & (!\Add0~9\)) # (!count(6) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!count(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X16_Y13_N13
\count[6]\ : dffeas
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
	q => count(6));

-- Location: LCCOMB_X16_Y13_N14
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (count(7) & (\Add0~11\ $ (GND))) # (!count(7) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((count(7) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X16_Y13_N15
\count[7]\ : dffeas
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
	q => count(7));

-- Location: LCCOMB_X16_Y13_N16
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (count(8) & (!\Add0~13\)) # (!count(8) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!count(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X17_Y12_N16
\count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~11_combout\ = (\Add0~14_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	datad => \Equal0~10_combout\,
	combout => \count~11_combout\);

-- Location: FF_X17_Y12_N17
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~11_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X16_Y13_N18
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (count(9) & (\Add0~15\ $ (GND))) # (!count(9) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((count(9) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X16_Y13_N19
\count[9]\ : dffeas
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
	q => count(9));

-- Location: LCCOMB_X16_Y13_N20
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (count(10) & (!\Add0~17\)) # (!count(10) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!count(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X16_Y13_N21
\count[10]\ : dffeas
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
	q => count(10));

-- Location: LCCOMB_X16_Y13_N22
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (count(11) & (\Add0~19\ $ (GND))) # (!count(11) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((count(11) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X16_Y13_N23
\count[11]\ : dffeas
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
	q => count(11));

-- Location: LCCOMB_X16_Y13_N24
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (count(12) & (!\Add0~21\)) # (!count(12) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!count(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X16_Y13_N25
\count[12]\ : dffeas
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
	q => count(12));

-- Location: LCCOMB_X16_Y13_N26
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (count(13) & (\Add0~23\ $ (GND))) # (!count(13) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((count(13) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X17_Y13_N20
\count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~10_combout\ = (\Add0~24_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~24_combout\,
	datad => \Equal0~10_combout\,
	combout => \count~10_combout\);

-- Location: FF_X17_Y13_N21
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~10_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X16_Y13_N28
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (count(14) & (!\Add0~25\)) # (!count(14) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!count(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X16_Y13_N0
\count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~9_combout\ = (\Add0~26_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~26_combout\,
	datac => \Equal0~10_combout\,
	combout => \count~9_combout\);

-- Location: FF_X16_Y13_N1
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~9_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X16_Y13_N30
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (count(15) & (\Add0~27\ $ (GND))) # (!count(15) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((count(15) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(15),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X17_Y13_N28
\count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~8_combout\ = (\Add0~28_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~28_combout\,
	datac => \Equal0~10_combout\,
	combout => \count~8_combout\);

-- Location: FF_X17_Y13_N29
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~8_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X16_Y12_N0
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (count(16) & (!\Add0~29\)) # (!count(16) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!count(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X17_Y13_N22
\count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~7_combout\ = (!\Equal0~10_combout\ & \Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \Add0~30_combout\,
	combout => \count~7_combout\);

-- Location: FF_X17_Y13_N23
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~7_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X16_Y12_N2
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (count(17) & (\Add0~31\ $ (GND))) # (!count(17) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((count(17) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X16_Y12_N3
\count[17]\ : dffeas
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
	q => count(17));

-- Location: LCCOMB_X16_Y12_N4
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (count(18) & (!\Add0~33\)) # (!count(18) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!count(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(18),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X17_Y12_N26
\count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~6_combout\ = (\Add0~34_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~34_combout\,
	datad => \Equal0~10_combout\,
	combout => \count~6_combout\);

-- Location: FF_X17_Y12_N27
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X16_Y12_N6
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (count(19) & (\Add0~35\ $ (GND))) # (!count(19) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((count(19) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X16_Y12_N7
\count[19]\ : dffeas
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
	q => count(19));

-- Location: LCCOMB_X16_Y12_N8
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (count(20) & (!\Add0~37\)) # (!count(20) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!count(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X17_Y12_N28
\count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~5_combout\ = (!\Equal0~10_combout\ & \Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datad => \Add0~38_combout\,
	combout => \count~5_combout\);

-- Location: FF_X17_Y12_N29
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X16_Y12_N10
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (count(21) & (\Add0~39\ $ (GND))) # (!count(21) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((count(21) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X17_Y12_N30
\count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~4_combout\ = (!\Equal0~10_combout\ & \Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datad => \Add0~40_combout\,
	combout => \count~4_combout\);

-- Location: FF_X17_Y12_N31
\count[21]\ : dffeas
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
	q => count(21));

-- Location: LCCOMB_X16_Y12_N12
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (count(22) & (!\Add0~41\)) # (!count(22) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!count(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(22),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X17_Y12_N22
\count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~3_combout\ = (!\Equal0~10_combout\ & \Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datac => \Add0~42_combout\,
	combout => \count~3_combout\);

-- Location: FF_X17_Y12_N23
\count[22]\ : dffeas
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
	q => count(22));

-- Location: LCCOMB_X16_Y12_N14
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (count(23) & (\Add0~43\ $ (GND))) # (!count(23) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((count(23) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(23),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X17_Y12_N4
\count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~2_combout\ = (!\Equal0~10_combout\ & \Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datad => \Add0~44_combout\,
	combout => \count~2_combout\);

-- Location: FF_X17_Y12_N5
\count[23]\ : dffeas
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
	q => count(23));

-- Location: LCCOMB_X16_Y12_N16
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (count(24) & (!\Add0~45\)) # (!count(24) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!count(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(24),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X17_Y12_N14
\count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~1_combout\ = (\Add0~46_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~46_combout\,
	datad => \Equal0~10_combout\,
	combout => \count~1_combout\);

-- Location: FF_X17_Y12_N15
\count[24]\ : dffeas
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
	q => count(24));

-- Location: LCCOMB_X16_Y12_N18
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (count(25) & (\Add0~47\ $ (GND))) # (!count(25) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((count(25) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(25),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X16_Y12_N19
\count[25]\ : dffeas
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
	q => count(25));

-- Location: LCCOMB_X16_Y12_N20
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (count(26) & (!\Add0~49\)) # (!count(26) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!count(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X17_Y12_N6
\count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~0_combout\ = (!\Equal0~10_combout\ & \Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datad => \Add0~50_combout\,
	combout => \count~0_combout\);

-- Location: FF_X17_Y12_N7
\count[26]\ : dffeas
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
	q => count(26));

-- Location: LCCOMB_X16_Y12_N22
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (count(27) & (\Add0~51\ $ (GND))) # (!count(27) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((count(27) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X16_Y12_N23
\count[27]\ : dffeas
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
	q => count(27));

-- Location: LCCOMB_X16_Y12_N24
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (count(28) & (!\Add0~53\)) # (!count(28) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!count(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(28),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X16_Y12_N25
\count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(28));

-- Location: LCCOMB_X16_Y12_N26
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (count(29) & (\Add0~55\ $ (GND))) # (!count(29) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((count(29) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(29),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X16_Y12_N27
\count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(29));

-- Location: LCCOMB_X17_Y12_N24
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (count(26) & (!count(28) & (!count(29) & !count(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datab => count(28),
	datac => count(29),
	datad => count(27),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X17_Y12_N20
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (count(22) & (count(24) & (count(23) & !count(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datab => count(24),
	datac => count(23),
	datad => count(25),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X16_Y12_N28
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (count(30) & (!\Add0~57\)) # (!count(30) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!count(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(30),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: FF_X16_Y12_N29
\count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(30));

-- Location: LCCOMB_X16_Y12_N30
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = count(31) $ (!\Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	cin => \Add0~59\,
	combout => \Add0~60_combout\);

-- Location: FF_X16_Y12_N31
\count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(31));

-- Location: LCCOMB_X17_Y12_N8
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\display|count\(0) & (!count(31) & (\display|count\(1) & !count(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(0),
	datab => count(31),
	datac => \display|count\(1),
	datad => count(30),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X17_Y12_N12
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (count(21) & (!count(19) & (count(18) & count(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datab => count(19),
	datac => count(18),
	datad => count(20),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X17_Y12_N18
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~2_combout\ & (\Equal0~0_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X17_Y13_N26
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (count(14) & count(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(14),
	datad => count(15),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X17_Y13_N18
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!count(12) & (!count(11) & (count(13) & !count(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datab => count(11),
	datac => count(13),
	datad => count(10),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X17_Y13_N24
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (count(16) & (!count(17) & (\Equal0~5_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datab => count(17),
	datac => \Equal0~5_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X17_Y12_N10
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!count(9) & (!count(8) & (count(6) & count(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datab => count(8),
	datac => count(6),
	datad => count(7),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X17_Y12_N0
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~9_combout\ & (\Equal0~4_combout\ & (\Equal0~7_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X17_Y13_N0
\param~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \param~0_combout\ = \param~q\ $ (((\Equal0~10_combout\ & \rst_n~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \rst_n~input_o\,
	datac => \param~q\,
	combout => \param~0_combout\);

-- Location: FF_X17_Y13_N1
param : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \param~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \param~q\);

-- Location: LCCOMB_X24_Y17_N10
\dht22_one_wire|one_wire_buff[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|one_wire_buff[15]~15_combout\ = (\dht22_one_wire|Decoder0~10_combout\ & ((\dht22_one_wire|Decoder0~8_combout\ & ((!\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~8_combout\ & (\dht22_one_wire|one_wire_buff\(15))))) # 
-- (!\dht22_one_wire|Decoder0~10_combout\ & (((\dht22_one_wire|one_wire_buff\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~10_combout\,
	datab => \dht22_one_wire|Decoder0~8_combout\,
	datac => \dht22_one_wire|one_wire_buff\(15),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|one_wire_buff[15]~15_combout\);

-- Location: FF_X24_Y17_N11
\dht22_one_wire|one_wire_buff[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|one_wire_buff[15]~15_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|one_wire_buff\(15));

-- Location: LCCOMB_X21_Y16_N20
\dht22_data_bcd|num_reg[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[0]~10_combout\ = (\dht22_data_bcd|state.ST_IDLE~q\ & ((\dht22_data_bcd|num_reg\(0)))) # (!\dht22_data_bcd|state.ST_IDLE~q\ & (\dht22_one_wire|one_wire_buff\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|one_wire_buff\(15),
	datac => \dht22_data_bcd|num_reg\(0),
	datad => \dht22_data_bcd|state.ST_IDLE~q\,
	combout => \dht22_data_bcd|num_reg[0]~10_combout\);

-- Location: FF_X21_Y16_N21
\dht22_data_bcd|num_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|num_reg[0]~10_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(0));

-- Location: FF_X18_Y18_N13
\dht22_data_bcd|bcd_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_data_bcd|num_reg\(0),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_data_bcd|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|bcd_reg\(0));

-- Location: LCCOMB_X18_Y18_N12
\display|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux4~0_combout\ = (\display|digit_index\(0) & (((\dht22_data_bcd|bcd_reg\(0)) # (\display|digit_index\(1))))) # (!\display|digit_index\(0) & (!\param~q\ & ((!\display|digit_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \param~q\,
	datab => \display|digit_index\(0),
	datac => \dht22_data_bcd|bcd_reg\(0),
	datad => \display|digit_index\(1),
	combout => \display|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y18_N6
\display|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux4~1_combout\ = (\display|digit_index\(1) & ((\display|Mux4~0_combout\ & ((\dht22_data_bcd|bcd_reg\(8)))) # (!\display|Mux4~0_combout\ & (\dht22_data_bcd|bcd_reg\(4))))) # (!\display|digit_index\(1) & (((\display|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|bcd_reg\(4),
	datab => \display|digit_index\(1),
	datac => \dht22_data_bcd|bcd_reg\(8),
	datad => \display|Mux4~0_combout\,
	combout => \display|Mux4~1_combout\);

-- Location: LCCOMB_X18_Y18_N10
\display|rom|rom~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|rom|rom~0_combout\ = (\display|Mux2~1_combout\ & (!\display|Mux3~1_combout\ & (!\display|Mux1~1_combout\ & !\display|Mux4~1_combout\))) # (!\display|Mux2~1_combout\ & (\display|Mux4~1_combout\ & (\display|Mux3~1_combout\ $ 
-- (!\display|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Mux2~1_combout\,
	datab => \display|Mux3~1_combout\,
	datac => \display|Mux1~1_combout\,
	datad => \display|Mux4~1_combout\,
	combout => \display|rom|rom~0_combout\);

-- Location: LCCOMB_X19_Y18_N10
\display|rom|rom~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|rom|rom~1_combout\ = (\display|Mux2~1_combout\ & (!\display|Mux1~1_combout\ & (\display|Mux3~1_combout\ $ (\display|Mux4~1_combout\)))) # (!\display|Mux2~1_combout\ & (\display|Mux3~1_combout\ & (\display|Mux1~1_combout\ & 
-- !\display|Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Mux2~1_combout\,
	datab => \display|Mux3~1_combout\,
	datac => \display|Mux1~1_combout\,
	datad => \display|Mux4~1_combout\,
	combout => \display|rom|rom~1_combout\);

-- Location: LCCOMB_X18_Y18_N0
\display|rom|rom~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|rom|rom~2_combout\ = (!\display|Mux2~1_combout\ & (\display|Mux3~1_combout\ & !\display|Mux4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Mux2~1_combout\,
	datab => \display|Mux3~1_combout\,
	datad => \display|Mux4~1_combout\,
	combout => \display|rom|rom~2_combout\);

-- Location: LCCOMB_X18_Y18_N22
\display|rom|rom~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|rom|rom~3_combout\ = (\display|Mux2~1_combout\ & (!\display|Mux1~1_combout\ & (\display|Mux3~1_combout\ $ (!\display|Mux4~1_combout\)))) # (!\display|Mux2~1_combout\ & (\display|Mux4~1_combout\ & (\display|Mux3~1_combout\ $ 
-- (!\display|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Mux2~1_combout\,
	datab => \display|Mux3~1_combout\,
	datac => \display|Mux1~1_combout\,
	datad => \display|Mux4~1_combout\,
	combout => \display|rom|rom~3_combout\);

-- Location: LCCOMB_X18_Y18_N20
\display|rom|rom~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|rom|rom~4_combout\ = (\display|Mux3~1_combout\ & (((!\display|Mux1~1_combout\ & \display|Mux4~1_combout\)))) # (!\display|Mux3~1_combout\ & ((\display|Mux2~1_combout\ & (!\display|Mux1~1_combout\)) # (!\display|Mux2~1_combout\ & 
-- ((\display|Mux4~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Mux2~1_combout\,
	datab => \display|Mux3~1_combout\,
	datac => \display|Mux1~1_combout\,
	datad => \display|Mux4~1_combout\,
	combout => \display|rom|rom~4_combout\);

-- Location: LCCOMB_X18_Y18_N26
\display|rom|rom~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|rom|rom~5_combout\ = (!\display|Mux1~1_combout\ & ((\display|Mux2~1_combout\ & (\display|Mux3~1_combout\ & \display|Mux4~1_combout\)) # (!\display|Mux2~1_combout\ & ((\display|Mux3~1_combout\) # (\display|Mux4~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Mux2~1_combout\,
	datab => \display|Mux3~1_combout\,
	datac => \display|Mux1~1_combout\,
	datad => \display|Mux4~1_combout\,
	combout => \display|rom|rom~5_combout\);

-- Location: LCCOMB_X18_Y18_N8
\display|rom|rom~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|rom|rom~6_combout\ = (\display|Mux4~1_combout\ & ((\display|Mux1~1_combout\) # (\display|Mux2~1_combout\ $ (\display|Mux3~1_combout\)))) # (!\display|Mux4~1_combout\ & ((\display|Mux2~1_combout\) # (\display|Mux3~1_combout\ $ 
-- (\display|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Mux2~1_combout\,
	datab => \display|Mux3~1_combout\,
	datac => \display|Mux1~1_combout\,
	datad => \display|Mux4~1_combout\,
	combout => \display|rom|rom~6_combout\);

-- Location: LCCOMB_X17_Y17_N28
\display|shift_reg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|shift_reg[1]~1_combout\ = !\display|shift_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display|shift_reg\(0),
	combout => \display|shift_reg[1]~1_combout\);

-- Location: FF_X17_Y17_N29
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

-- Location: LCCOMB_X17_Y17_N22
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

-- Location: FF_X17_Y17_N23
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

-- Location: LCCOMB_X17_Y17_N8
\display|shift_reg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|shift_reg[3]~feeder_combout\ = \display|shift_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display|shift_reg\(2),
	combout => \display|shift_reg[3]~feeder_combout\);

-- Location: FF_X17_Y17_N9
\display|shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display|shift_reg[3]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \display|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|shift_reg\(3));

-- Location: LCCOMB_X17_Y17_N30
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

-- Location: FF_X17_Y17_N31
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


