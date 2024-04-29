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

-- DATE "04/29/2024 19:24:49"

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
	io : BUFFER std_logic;
	led : BUFFER std_logic;
	dp : BUFFER std_logic;
	seg : BUFFER std_logic_vector(6 DOWNTO 0);
	sel : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END weather_sensor;

-- Design Ports Information
-- led	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
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
-- io	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
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
SIGNAL ww_io : std_logic;
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
SIGNAL \dht22_one_wire|clks_reg[0]~57_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[1]~19_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[1]~20\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[2]~21_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[2]~22\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[3]~23_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector5~3_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[3]~24\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[4]~25_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[4]~26\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[5]~27_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[5]~28\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[6]~29_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[6]~30\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[7]~31_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[7]~32\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[8]~33_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[8]~34\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[9]~35_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[9]~36\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[10]~37_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[10]~38\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[11]~39_combout\ : std_logic;
SIGNAL \dht22_one_wire|pw[0]~1\ : std_logic;
SIGNAL \dht22_one_wire|pw[1]~3\ : std_logic;
SIGNAL \dht22_one_wire|pw[2]~5\ : std_logic;
SIGNAL \dht22_one_wire|pw[3]~7\ : std_logic;
SIGNAL \dht22_one_wire|pw[4]~9\ : std_logic;
SIGNAL \dht22_one_wire|pw[5]~11\ : std_logic;
SIGNAL \dht22_one_wire|pw[6]~13\ : std_logic;
SIGNAL \dht22_one_wire|pw[7]~15\ : std_logic;
SIGNAL \dht22_one_wire|pw[8]~17\ : std_logic;
SIGNAL \dht22_one_wire|pw[9]~19\ : std_logic;
SIGNAL \dht22_one_wire|pw[10]~21\ : std_logic;
SIGNAL \dht22_one_wire|pw[11]~22_combout\ : std_logic;
SIGNAL \dht22_one_wire|pw[10]~20_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[11]~40\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[12]~41_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[12]~42\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[13]~43_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[13]~44\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[14]~45_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[14]~46\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[15]~47_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[15]~48\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[16]~49_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[16]~50\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[17]~51_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[17]~52\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[18]~53_combout\ : std_logic;
SIGNAL \dht22_one_wire|pw[11]~23\ : std_logic;
SIGNAL \dht22_one_wire|pw[12]~25\ : std_logic;
SIGNAL \dht22_one_wire|pw[13]~27\ : std_logic;
SIGNAL \dht22_one_wire|pw[14]~29\ : std_logic;
SIGNAL \dht22_one_wire|pw[15]~31\ : std_logic;
SIGNAL \dht22_one_wire|pw[16]~33\ : std_logic;
SIGNAL \dht22_one_wire|pw[17]~35\ : std_logic;
SIGNAL \dht22_one_wire|pw[18]~36_combout\ : std_logic;
SIGNAL \dht22_one_wire|pw[17]~34_combout\ : std_logic;
SIGNAL \dht22_one_wire|pw[16]~32_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal0~5_combout\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[18]~54\ : std_logic;
SIGNAL \dht22_one_wire|clks_reg[19]~55_combout\ : std_logic;
SIGNAL \dht22_one_wire|pw[18]~37\ : std_logic;
SIGNAL \dht22_one_wire|pw[19]~38_combout\ : std_logic;
SIGNAL \dht22_one_wire|pw[14]~28_combout\ : std_logic;
SIGNAL \dht22_one_wire|pw[15]~30_combout\ : std_logic;
SIGNAL \dht22_one_wire|pw[12]~24_combout\ : std_logic;
SIGNAL \dht22_one_wire|pw[6]~12_combout\ : std_logic;
SIGNAL \dht22_one_wire|pw[4]~8_combout\ : std_logic;
SIGNAL \dht22_one_wire|pw[9]~18_combout\ : std_logic;
SIGNAL \dht22_one_wire|pw[2]~4_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal0~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal0~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|pw[1]~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|pw[0]~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|pw[13]~26_combout\ : std_logic;
SIGNAL \dht22_one_wire|pw[5]~10_combout\ : std_logic;
SIGNAL \dht22_one_wire|pw[8]~16_combout\ : std_logic;
SIGNAL \dht22_one_wire|pw[7]~14_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal0~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal0~3_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal0~4_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal0~6_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector0~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|state.ST_IDLE~q\ : std_logic;
SIGNAL \dht22_one_wire|Selector4~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal4~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal4~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal4~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|LessThan0~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal4~3_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector4~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector4~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector2~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector2~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|state.ST_PRE_ACK~q\ : std_logic;
SIGNAL \dht22_one_wire|Selector5~10_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector5~11_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector5~12_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector3~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|state.ST_ACK~q\ : std_logic;
SIGNAL \dht22_one_wire|Selector5~5_combout\ : std_logic;
SIGNAL \io~input_o\ : std_logic;
SIGNAL \dht22_one_wire|new_io_reg~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|new_io_reg~q\ : std_logic;
SIGNAL \dht22_one_wire|old_io_reg~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|old_io_reg~q\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|index_reg[0]~6_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector6~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|state.ST_DONE~q\ : std_logic;
SIGNAL \dht22_one_wire|Selector34~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|index_reg[0]~7\ : std_logic;
SIGNAL \dht22_one_wire|index_reg[1]~8_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector33~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|index_reg[1]~9\ : std_logic;
SIGNAL \dht22_one_wire|index_reg[2]~10_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector32~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|index_reg[2]~11\ : std_logic;
SIGNAL \dht22_one_wire|index_reg[3]~12_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector31~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|index_reg[3]~13\ : std_logic;
SIGNAL \dht22_one_wire|index_reg[4]~14_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector30~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal3~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|index_reg[4]~15\ : std_logic;
SIGNAL \dht22_one_wire|index_reg[5]~16_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector29~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal3~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector5~4_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector5~6_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector5~7_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector5~8_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector5~9_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector5~14_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector5~13_combout\ : std_logic;
SIGNAL \dht22_one_wire|state.ST_PROCESS~q\ : std_logic;
SIGNAL \dht22_one_wire|Equal3~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector6~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector4~3_combout\ : std_logic;
SIGNAL \dht22_one_wire|state.ST_SAMPLE~q\ : std_logic;
SIGNAL \dht22_one_wire|stamp_reg[5]~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|stamp_reg[5]~3_combout\ : std_logic;
SIGNAL \dht22_one_wire|stamp_reg[5]~4_combout\ : std_logic;
SIGNAL \dht22_one_wire|stamp_reg[5]~5_combout\ : std_logic;
SIGNAL \dht22_one_wire|stamp_reg[5]~6_combout\ : std_logic;
SIGNAL \dht22_one_wire|pw[3]~6_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector7~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector7~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector7~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector7~3_combout\ : std_logic;
SIGNAL \dht22_one_wire|state.ST_CHECK~q\ : std_logic;
SIGNAL \dht22_one_wire|done~0_combout\ : std_logic;
SIGNAL \Add0~1_cout\ : std_logic;
SIGNAL \Add0~3_cout\ : std_logic;
SIGNAL \Add0~5_cout\ : std_logic;
SIGNAL \Add0~7_cout\ : std_logic;
SIGNAL \Add0~9_cout\ : std_logic;
SIGNAL \Add0~11_cout\ : std_logic;
SIGNAL \Add0~13_cout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \dht22_count~11_combout\ : std_logic;
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
SIGNAL \dht22_count~10_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \dht22_count~9_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \dht22_count~8_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \dht22_count~7_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \dht22_count~6_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \dht22_count~5_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \dht22_count~4_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \dht22_count~3_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \dht22_count~2_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \dht22_count~1_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \dht22_count~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \display|Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \en_dht22~q\ : std_logic;
SIGNAL \dht22_one_wire|Selector1~4_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector1~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector1~3_combout\ : std_logic;
SIGNAL \dht22_one_wire|state.ST_START~q\ : std_logic;
SIGNAL \dht22_one_wire|Selector8~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Selector8~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|io_reg~q\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~20_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~6_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~9_combout\ : std_logic;
SIGNAL \dht22_one_wire|LessThan0~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|LessThan0~3_combout\ : std_logic;
SIGNAL \dht22_one_wire|LessThan0~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|LessThan0~4_combout\ : std_logic;
SIGNAL \dht22_one_wire|LessThan0~5_combout\ : std_logic;
SIGNAL \dht22_one_wire|LessThan0~6_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[27]~24_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~21_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[19]~25_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~7_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~16_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[20]~13_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~15_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[28]~12_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~17_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[29]~14_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~18_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[21]~15_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~8_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[22]~3_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~5_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[30]~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[23]~5_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[31]~4_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add4~1\ : std_logic;
SIGNAL \dht22_one_wire|Add4~3\ : std_logic;
SIGNAL \dht22_one_wire|Add4~5\ : std_logic;
SIGNAL \dht22_one_wire|Add4~7\ : std_logic;
SIGNAL \dht22_one_wire|Add4~8_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~10_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~12_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[11]~28_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[3]~29_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~11_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[12]~16_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[4]~17_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[5]~19_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[13]~18_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[14]~6_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[6]~7_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[7]~9_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[15]~8_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add3~1\ : std_logic;
SIGNAL \dht22_one_wire|Add3~3\ : std_logic;
SIGNAL \dht22_one_wire|Add3~5\ : std_logic;
SIGNAL \dht22_one_wire|Add3~7\ : std_logic;
SIGNAL \dht22_one_wire|Add3~8_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add4~6_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add3~6_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add3~4_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add4~4_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add3~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add4~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add3~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add4~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|check_sum[0]~1\ : std_logic;
SIGNAL \dht22_one_wire|check_sum[1]~3\ : std_logic;
SIGNAL \dht22_one_wire|check_sum[2]~5\ : std_logic;
SIGNAL \dht22_one_wire|check_sum[3]~7\ : std_logic;
SIGNAL \dht22_one_wire|check_sum[4]~8_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~3_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~19_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[35]~20_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~4_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[34]~21_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[10]~26_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[2]~27_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add3~9\ : std_logic;
SIGNAL \dht22_one_wire|Add3~10_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[18]~23_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[26]~22_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add4~9\ : std_logic;
SIGNAL \dht22_one_wire|Add4~10_combout\ : std_logic;
SIGNAL \dht22_one_wire|check_sum[4]~9\ : std_logic;
SIGNAL \dht22_one_wire|check_sum[5]~10_combout\ : std_logic;
SIGNAL \dht22_one_wire|valid~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal3~3_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[32]~30_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[33]~39_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~22_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[17]~34_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[25]~33_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add4~11\ : std_logic;
SIGNAL \dht22_one_wire|Add4~12_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[1]~38_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[9]~37_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add3~11\ : std_logic;
SIGNAL \dht22_one_wire|Add3~12_combout\ : std_logic;
SIGNAL \dht22_one_wire|check_sum[5]~11\ : std_logic;
SIGNAL \dht22_one_wire|check_sum[6]~12_combout\ : std_logic;
SIGNAL \dht22_one_wire|Equal5~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[8]~35_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[0]~36_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add3~13\ : std_logic;
SIGNAL \dht22_one_wire|Add3~14_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[16]~32_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[24]~31_combout\ : std_logic;
SIGNAL \dht22_one_wire|Add4~13\ : std_logic;
SIGNAL \dht22_one_wire|Add4~14_combout\ : std_logic;
SIGNAL \dht22_one_wire|check_sum[6]~13\ : std_logic;
SIGNAL \dht22_one_wire|check_sum[7]~14_combout\ : std_logic;
SIGNAL \dht22_one_wire|valid~3_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~14_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[36]~11_combout\ : std_logic;
SIGNAL \dht22_one_wire|check_sum[3]~6_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~13_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[37]~10_combout\ : std_logic;
SIGNAL \dht22_one_wire|check_sum[2]~4_combout\ : std_logic;
SIGNAL \dht22_one_wire|valid~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|check_sum[1]~2_combout\ : std_logic;
SIGNAL \dht22_one_wire|Decoder0~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[39]~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|data_reg[38]~1_combout\ : std_logic;
SIGNAL \dht22_one_wire|check_sum[0]~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|valid~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|valid~combout\ : std_logic;
SIGNAL \display|digit_index[0]~1_combout\ : std_logic;
SIGNAL \display|Add0~1_cout\ : std_logic;
SIGNAL \display|Add0~3_cout\ : std_logic;
SIGNAL \display|Add0~5_cout\ : std_logic;
SIGNAL \display|Add0~6_combout\ : std_logic;
SIGNAL \display|count~4_combout\ : std_logic;
SIGNAL \display|Add0~7\ : std_logic;
SIGNAL \display|Add0~8_combout\ : std_logic;
SIGNAL \display|Add0~9\ : std_logic;
SIGNAL \display|Add0~10_combout\ : std_logic;
SIGNAL \display|Add0~11\ : std_logic;
SIGNAL \display|Add0~12_combout\ : std_logic;
SIGNAL \display|Add0~13\ : std_logic;
SIGNAL \display|Add0~14_combout\ : std_logic;
SIGNAL \display|count~3_combout\ : std_logic;
SIGNAL \display|Add0~15\ : std_logic;
SIGNAL \display|Add0~16_combout\ : std_logic;
SIGNAL \display|count~2_combout\ : std_logic;
SIGNAL \display|Add0~17\ : std_logic;
SIGNAL \display|Add0~18_combout\ : std_logic;
SIGNAL \display|count~1_combout\ : std_logic;
SIGNAL \display|Add0~19\ : std_logic;
SIGNAL \display|Add0~20_combout\ : std_logic;
SIGNAL \display|Add0~21\ : std_logic;
SIGNAL \display|Add0~22_combout\ : std_logic;
SIGNAL \display|Add0~23\ : std_logic;
SIGNAL \display|Add0~24_combout\ : std_logic;
SIGNAL \display|count~0_combout\ : std_logic;
SIGNAL \display|Add0~25\ : std_logic;
SIGNAL \display|Add0~26_combout\ : std_logic;
SIGNAL \display|Add0~27\ : std_logic;
SIGNAL \display|Add0~28_combout\ : std_logic;
SIGNAL \display|Equal0~1_combout\ : std_logic;
SIGNAL \display|Equal0~2_combout\ : std_logic;
SIGNAL \display|Equal0~3_combout\ : std_logic;
SIGNAL \display|Equal0~4_combout\ : std_logic;
SIGNAL \display|digit_index[1]~0_combout\ : std_logic;
SIGNAL \display|Mux0~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|tens_reg[0]~2_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~7\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~9\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~10_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~7\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~8_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector12~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector12~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~23\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~25\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~26_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~27\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~28_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector3~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector3~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[6]~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[6]~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[6]~3_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~9\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~10_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~11\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~12_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector11~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector11~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~11\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~12_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~13\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~14_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector10~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector10~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~13\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~14_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~15\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~16_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector9~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector9~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~15\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~16_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~17\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~18_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector8~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector8~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~17\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~18_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~19\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~20_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector7~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector7~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~19\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~20_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~21\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~22_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector6~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector6~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~21\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~22_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~23\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~24_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector5~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector5~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~25\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~26_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector4~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~24_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector4~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num~2_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[1]~5_combout\ : std_logic;
SIGNAL \param~0_combout\ : std_logic;
SIGNAL \param~q\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[1]~4_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[1]~6_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~1\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~2_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector16~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector16~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~1\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~3\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~5\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~6_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~8_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector13~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector13~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|LessThan3~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|LessThan0~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|LessThan0~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|LessThan3~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[6]~2_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~3\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~4_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector15~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~2_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector15~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~5\ : std_logic;
SIGNAL \dht22_data_bcd|Add3~6_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector14~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add1~4_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector14~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|LessThan0~2_combout\ : std_logic;
SIGNAL \dht22_data_bcd|LessThan0~3_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector2~5_combout\ : std_logic;
SIGNAL \dht22_data_bcd|state.ST_IDLE~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|state.ST_IDLE~q\ : std_logic;
SIGNAL \dht22_data_bcd|Selector2~4_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector1~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|state.ST_CALC~q\ : std_logic;
SIGNAL \dht22_data_bcd|Selector26~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|done_reg~q\ : std_logic;
SIGNAL \dht22_data_bcd|Selector2~6_combout\ : std_logic;
SIGNAL \dht22_data_bcd|state.ST_DONE~q\ : std_logic;
SIGNAL \dht22_data_bcd|Selector21~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|hundreds_reg[0]~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector20~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector19~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|bcd_reg[10]~feeder_combout\ : std_logic;
SIGNAL \display|Mux2~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector25~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|tens_reg[0]~3_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector24~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector23~0_combout\ : std_logic;
SIGNAL \display|Mux2~1_combout\ : std_logic;
SIGNAL \display|Mux3~0_combout\ : std_logic;
SIGNAL \display|Mux3~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add0~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector18~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|bcd_reg[11]~feeder_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Add2~0_combout\ : std_logic;
SIGNAL \dht22_data_bcd|Selector22~0_combout\ : std_logic;
SIGNAL \display|Mux1~0_combout\ : std_logic;
SIGNAL \display|Mux1~1_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[0]~7_combout\ : std_logic;
SIGNAL \dht22_data_bcd|num_reg[0]~8_combout\ : std_logic;
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
SIGNAL \display|shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dht22_one_wire|clks_reg\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \dht22_data_bcd|bcd_reg\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \dht22_one_wire|index_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \dht22_one_wire|data_reg\ : std_logic_vector(0 TO 39);
SIGNAL \display|digit_index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \dht22_one_wire|stamp_reg\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \dht22_data_bcd|tens_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \display|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dht22_data_bcd|num_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL dht22_count : std_logic_vector(26 DOWNTO 0);
SIGNAL \dht22_data_bcd|hundreds_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dht22_one_wire|ALT_INV_io_reg~q\ : std_logic;
SIGNAL \dht22_one_wire|ALT_INV_state.ST_PROCESS~q\ : std_logic;
SIGNAL \display|ALT_INV_shift_reg\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \display|rom|ALT_INV_rom~6_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \dht22_one_wire|ALT_INV_valid~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_rst_n <= rst_n;
ww_clk <= clk;
io <= ww_io;
led <= ww_led;
dp <= ww_dp;
seg <= ww_seg;
sel <= ww_sel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst_n~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\dht22_one_wire|ALT_INV_io_reg~q\ <= NOT \dht22_one_wire|io_reg~q\;
\dht22_one_wire|ALT_INV_state.ST_PROCESS~q\ <= NOT \dht22_one_wire|state.ST_PROCESS~q\;
\display|ALT_INV_shift_reg\(3) <= NOT \display|shift_reg\(3);
\display|ALT_INV_shift_reg\(2) <= NOT \display|shift_reg\(2);
\display|ALT_INV_shift_reg\(1) <= NOT \display|shift_reg\(1);
\display|rom|ALT_INV_rom~6_combout\ <= NOT \display|rom|rom~6_combout\;
\display|ALT_INV_Mux0~0_combout\ <= NOT \display|Mux0~0_combout\;
\dht22_one_wire|ALT_INV_valid~combout\ <= NOT \dht22_one_wire|valid~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X28_Y24_N23
\io~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \dht22_one_wire|ALT_INV_io_reg~q\,
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
	i => \dht22_one_wire|ALT_INV_valid~combout\,
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

-- Location: LCCOMB_X23_Y17_N4
\dht22_one_wire|clks_reg[0]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks_reg[0]~57_combout\ = !\dht22_one_wire|clks_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_one_wire|clks_reg\(0),
	combout => \dht22_one_wire|clks_reg[0]~57_combout\);

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

-- Location: FF_X23_Y17_N5
\dht22_one_wire|clks_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks_reg[0]~57_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks_reg\(0));

-- Location: LCCOMB_X23_Y17_N14
\dht22_one_wire|clks_reg[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks_reg[1]~19_combout\ = (\dht22_one_wire|clks_reg\(1) & (\dht22_one_wire|clks_reg\(0) $ (VCC))) # (!\dht22_one_wire|clks_reg\(1) & (\dht22_one_wire|clks_reg\(0) & VCC))
-- \dht22_one_wire|clks_reg[1]~20\ = CARRY((\dht22_one_wire|clks_reg\(1) & \dht22_one_wire|clks_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks_reg\(1),
	datab => \dht22_one_wire|clks_reg\(0),
	datad => VCC,
	combout => \dht22_one_wire|clks_reg[1]~19_combout\,
	cout => \dht22_one_wire|clks_reg[1]~20\);

-- Location: FF_X23_Y17_N15
\dht22_one_wire|clks_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks_reg[1]~19_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks_reg\(1));

-- Location: LCCOMB_X23_Y17_N16
\dht22_one_wire|clks_reg[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks_reg[2]~21_combout\ = (\dht22_one_wire|clks_reg\(2) & (!\dht22_one_wire|clks_reg[1]~20\)) # (!\dht22_one_wire|clks_reg\(2) & ((\dht22_one_wire|clks_reg[1]~20\) # (GND)))
-- \dht22_one_wire|clks_reg[2]~22\ = CARRY((!\dht22_one_wire|clks_reg[1]~20\) # (!\dht22_one_wire|clks_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|clks_reg\(2),
	datad => VCC,
	cin => \dht22_one_wire|clks_reg[1]~20\,
	combout => \dht22_one_wire|clks_reg[2]~21_combout\,
	cout => \dht22_one_wire|clks_reg[2]~22\);

-- Location: FF_X23_Y17_N17
\dht22_one_wire|clks_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks_reg[2]~21_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks_reg\(2));

-- Location: LCCOMB_X23_Y17_N18
\dht22_one_wire|clks_reg[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks_reg[3]~23_combout\ = (\dht22_one_wire|clks_reg\(3) & (\dht22_one_wire|clks_reg[2]~22\ $ (GND))) # (!\dht22_one_wire|clks_reg\(3) & (!\dht22_one_wire|clks_reg[2]~22\ & VCC))
-- \dht22_one_wire|clks_reg[3]~24\ = CARRY((\dht22_one_wire|clks_reg\(3) & !\dht22_one_wire|clks_reg[2]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|clks_reg\(3),
	datad => VCC,
	cin => \dht22_one_wire|clks_reg[2]~22\,
	combout => \dht22_one_wire|clks_reg[3]~23_combout\,
	cout => \dht22_one_wire|clks_reg[3]~24\);

-- Location: FF_X24_Y17_N5
\dht22_one_wire|clks_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks_reg[3]~23_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks_reg\(3));

-- Location: LCCOMB_X28_Y16_N14
\dht22_one_wire|Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector5~3_combout\ = (\dht22_one_wire|state.ST_CHECK~q\ & \en_dht22~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_one_wire|state.ST_CHECK~q\,
	datad => \en_dht22~q\,
	combout => \dht22_one_wire|Selector5~3_combout\);

-- Location: LCCOMB_X23_Y17_N20
\dht22_one_wire|clks_reg[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks_reg[4]~25_combout\ = (\dht22_one_wire|clks_reg\(4) & (!\dht22_one_wire|clks_reg[3]~24\)) # (!\dht22_one_wire|clks_reg\(4) & ((\dht22_one_wire|clks_reg[3]~24\) # (GND)))
-- \dht22_one_wire|clks_reg[4]~26\ = CARRY((!\dht22_one_wire|clks_reg[3]~24\) # (!\dht22_one_wire|clks_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|clks_reg\(4),
	datad => VCC,
	cin => \dht22_one_wire|clks_reg[3]~24\,
	combout => \dht22_one_wire|clks_reg[4]~25_combout\,
	cout => \dht22_one_wire|clks_reg[4]~26\);

-- Location: FF_X23_Y17_N21
\dht22_one_wire|clks_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks_reg[4]~25_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks_reg\(4));

-- Location: LCCOMB_X23_Y17_N22
\dht22_one_wire|clks_reg[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks_reg[5]~27_combout\ = (\dht22_one_wire|clks_reg\(5) & (\dht22_one_wire|clks_reg[4]~26\ $ (GND))) # (!\dht22_one_wire|clks_reg\(5) & (!\dht22_one_wire|clks_reg[4]~26\ & VCC))
-- \dht22_one_wire|clks_reg[5]~28\ = CARRY((\dht22_one_wire|clks_reg\(5) & !\dht22_one_wire|clks_reg[4]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks_reg\(5),
	datad => VCC,
	cin => \dht22_one_wire|clks_reg[4]~26\,
	combout => \dht22_one_wire|clks_reg[5]~27_combout\,
	cout => \dht22_one_wire|clks_reg[5]~28\);

-- Location: FF_X23_Y17_N23
\dht22_one_wire|clks_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks_reg[5]~27_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks_reg\(5));

-- Location: LCCOMB_X23_Y17_N24
\dht22_one_wire|clks_reg[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks_reg[6]~29_combout\ = (\dht22_one_wire|clks_reg\(6) & (!\dht22_one_wire|clks_reg[5]~28\)) # (!\dht22_one_wire|clks_reg\(6) & ((\dht22_one_wire|clks_reg[5]~28\) # (GND)))
-- \dht22_one_wire|clks_reg[6]~30\ = CARRY((!\dht22_one_wire|clks_reg[5]~28\) # (!\dht22_one_wire|clks_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|clks_reg\(6),
	datad => VCC,
	cin => \dht22_one_wire|clks_reg[5]~28\,
	combout => \dht22_one_wire|clks_reg[6]~29_combout\,
	cout => \dht22_one_wire|clks_reg[6]~30\);

-- Location: FF_X23_Y17_N25
\dht22_one_wire|clks_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks_reg[6]~29_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks_reg\(6));

-- Location: LCCOMB_X23_Y17_N26
\dht22_one_wire|clks_reg[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks_reg[7]~31_combout\ = (\dht22_one_wire|clks_reg\(7) & (\dht22_one_wire|clks_reg[6]~30\ $ (GND))) # (!\dht22_one_wire|clks_reg\(7) & (!\dht22_one_wire|clks_reg[6]~30\ & VCC))
-- \dht22_one_wire|clks_reg[7]~32\ = CARRY((\dht22_one_wire|clks_reg\(7) & !\dht22_one_wire|clks_reg[6]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks_reg\(7),
	datad => VCC,
	cin => \dht22_one_wire|clks_reg[6]~30\,
	combout => \dht22_one_wire|clks_reg[7]~31_combout\,
	cout => \dht22_one_wire|clks_reg[7]~32\);

-- Location: FF_X23_Y17_N27
\dht22_one_wire|clks_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks_reg[7]~31_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks_reg\(7));

-- Location: LCCOMB_X23_Y17_N28
\dht22_one_wire|clks_reg[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks_reg[8]~33_combout\ = (\dht22_one_wire|clks_reg\(8) & (!\dht22_one_wire|clks_reg[7]~32\)) # (!\dht22_one_wire|clks_reg\(8) & ((\dht22_one_wire|clks_reg[7]~32\) # (GND)))
-- \dht22_one_wire|clks_reg[8]~34\ = CARRY((!\dht22_one_wire|clks_reg[7]~32\) # (!\dht22_one_wire|clks_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|clks_reg\(8),
	datad => VCC,
	cin => \dht22_one_wire|clks_reg[7]~32\,
	combout => \dht22_one_wire|clks_reg[8]~33_combout\,
	cout => \dht22_one_wire|clks_reg[8]~34\);

-- Location: FF_X23_Y17_N29
\dht22_one_wire|clks_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks_reg[8]~33_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks_reg\(8));

-- Location: LCCOMB_X23_Y17_N30
\dht22_one_wire|clks_reg[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks_reg[9]~35_combout\ = (\dht22_one_wire|clks_reg\(9) & (\dht22_one_wire|clks_reg[8]~34\ $ (GND))) # (!\dht22_one_wire|clks_reg\(9) & (!\dht22_one_wire|clks_reg[8]~34\ & VCC))
-- \dht22_one_wire|clks_reg[9]~36\ = CARRY((\dht22_one_wire|clks_reg\(9) & !\dht22_one_wire|clks_reg[8]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks_reg\(9),
	datad => VCC,
	cin => \dht22_one_wire|clks_reg[8]~34\,
	combout => \dht22_one_wire|clks_reg[9]~35_combout\,
	cout => \dht22_one_wire|clks_reg[9]~36\);

-- Location: FF_X23_Y17_N31
\dht22_one_wire|clks_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks_reg[9]~35_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks_reg\(9));

-- Location: LCCOMB_X23_Y16_N0
\dht22_one_wire|clks_reg[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks_reg[10]~37_combout\ = (\dht22_one_wire|clks_reg\(10) & (!\dht22_one_wire|clks_reg[9]~36\)) # (!\dht22_one_wire|clks_reg\(10) & ((\dht22_one_wire|clks_reg[9]~36\) # (GND)))
-- \dht22_one_wire|clks_reg[10]~38\ = CARRY((!\dht22_one_wire|clks_reg[9]~36\) # (!\dht22_one_wire|clks_reg\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|clks_reg\(10),
	datad => VCC,
	cin => \dht22_one_wire|clks_reg[9]~36\,
	combout => \dht22_one_wire|clks_reg[10]~37_combout\,
	cout => \dht22_one_wire|clks_reg[10]~38\);

-- Location: FF_X23_Y16_N1
\dht22_one_wire|clks_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks_reg[10]~37_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks_reg\(10));

-- Location: LCCOMB_X23_Y16_N2
\dht22_one_wire|clks_reg[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks_reg[11]~39_combout\ = (\dht22_one_wire|clks_reg\(11) & (\dht22_one_wire|clks_reg[10]~38\ $ (GND))) # (!\dht22_one_wire|clks_reg\(11) & (!\dht22_one_wire|clks_reg[10]~38\ & VCC))
-- \dht22_one_wire|clks_reg[11]~40\ = CARRY((\dht22_one_wire|clks_reg\(11) & !\dht22_one_wire|clks_reg[10]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|clks_reg\(11),
	datad => VCC,
	cin => \dht22_one_wire|clks_reg[10]~38\,
	combout => \dht22_one_wire|clks_reg[11]~39_combout\,
	cout => \dht22_one_wire|clks_reg[11]~40\);

-- Location: FF_X23_Y16_N3
\dht22_one_wire|clks_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks_reg[11]~39_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks_reg\(11));

-- Location: FF_X24_Y16_N3
\dht22_one_wire|stamp_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks_reg\(11),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|stamp_reg[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|stamp_reg\(11));

-- Location: FF_X24_Y16_N1
\dht22_one_wire|stamp_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks_reg\(10),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|stamp_reg[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|stamp_reg\(10));

-- Location: FF_X24_Y17_N31
\dht22_one_wire|stamp_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks_reg\(9),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|stamp_reg[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|stamp_reg\(9));

-- Location: FF_X24_Y17_N29
\dht22_one_wire|stamp_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks_reg\(8),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|stamp_reg[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|stamp_reg\(8));

-- Location: FF_X24_Y17_N27
\dht22_one_wire|stamp_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks_reg\(7),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|stamp_reg[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|stamp_reg\(7));

-- Location: FF_X24_Y17_N25
\dht22_one_wire|stamp_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks_reg\(6),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|stamp_reg[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|stamp_reg\(6));

-- Location: FF_X24_Y17_N23
\dht22_one_wire|stamp_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks_reg\(5),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|stamp_reg[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|stamp_reg\(5));

-- Location: FF_X24_Y17_N21
\dht22_one_wire|stamp_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks_reg\(4),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|stamp_reg[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|stamp_reg\(4));

-- Location: FF_X24_Y17_N17
\dht22_one_wire|stamp_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks_reg\(2),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|stamp_reg[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|stamp_reg\(2));

-- Location: FF_X24_Y17_N15
\dht22_one_wire|stamp_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks_reg\(1),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|stamp_reg[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|stamp_reg\(1));

-- Location: FF_X24_Y17_N13
\dht22_one_wire|stamp_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks_reg\(0),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|stamp_reg[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|stamp_reg\(0));

-- Location: LCCOMB_X24_Y17_N12
\dht22_one_wire|pw[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|pw[0]~0_combout\ = (\dht22_one_wire|stamp_reg\(0) & (\dht22_one_wire|clks_reg\(0) $ (VCC))) # (!\dht22_one_wire|stamp_reg\(0) & ((\dht22_one_wire|clks_reg\(0)) # (GND)))
-- \dht22_one_wire|pw[0]~1\ = CARRY((\dht22_one_wire|clks_reg\(0)) # (!\dht22_one_wire|stamp_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|stamp_reg\(0),
	datab => \dht22_one_wire|clks_reg\(0),
	datad => VCC,
	combout => \dht22_one_wire|pw[0]~0_combout\,
	cout => \dht22_one_wire|pw[0]~1\);

-- Location: LCCOMB_X24_Y17_N14
\dht22_one_wire|pw[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|pw[1]~2_combout\ = (\dht22_one_wire|clks_reg\(1) & ((\dht22_one_wire|stamp_reg\(1) & (!\dht22_one_wire|pw[0]~1\)) # (!\dht22_one_wire|stamp_reg\(1) & (\dht22_one_wire|pw[0]~1\ & VCC)))) # (!\dht22_one_wire|clks_reg\(1) & 
-- ((\dht22_one_wire|stamp_reg\(1) & ((\dht22_one_wire|pw[0]~1\) # (GND))) # (!\dht22_one_wire|stamp_reg\(1) & (!\dht22_one_wire|pw[0]~1\))))
-- \dht22_one_wire|pw[1]~3\ = CARRY((\dht22_one_wire|clks_reg\(1) & (\dht22_one_wire|stamp_reg\(1) & !\dht22_one_wire|pw[0]~1\)) # (!\dht22_one_wire|clks_reg\(1) & ((\dht22_one_wire|stamp_reg\(1)) # (!\dht22_one_wire|pw[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks_reg\(1),
	datab => \dht22_one_wire|stamp_reg\(1),
	datad => VCC,
	cin => \dht22_one_wire|pw[0]~1\,
	combout => \dht22_one_wire|pw[1]~2_combout\,
	cout => \dht22_one_wire|pw[1]~3\);

-- Location: LCCOMB_X24_Y17_N16
\dht22_one_wire|pw[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|pw[2]~4_combout\ = ((\dht22_one_wire|clks_reg\(2) $ (\dht22_one_wire|stamp_reg\(2) $ (\dht22_one_wire|pw[1]~3\)))) # (GND)
-- \dht22_one_wire|pw[2]~5\ = CARRY((\dht22_one_wire|clks_reg\(2) & ((!\dht22_one_wire|pw[1]~3\) # (!\dht22_one_wire|stamp_reg\(2)))) # (!\dht22_one_wire|clks_reg\(2) & (!\dht22_one_wire|stamp_reg\(2) & !\dht22_one_wire|pw[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks_reg\(2),
	datab => \dht22_one_wire|stamp_reg\(2),
	datad => VCC,
	cin => \dht22_one_wire|pw[1]~3\,
	combout => \dht22_one_wire|pw[2]~4_combout\,
	cout => \dht22_one_wire|pw[2]~5\);

-- Location: LCCOMB_X24_Y17_N18
\dht22_one_wire|pw[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|pw[3]~6_combout\ = (\dht22_one_wire|clks_reg\(3) & ((\dht22_one_wire|stamp_reg\(3) & (!\dht22_one_wire|pw[2]~5\)) # (!\dht22_one_wire|stamp_reg\(3) & (\dht22_one_wire|pw[2]~5\ & VCC)))) # (!\dht22_one_wire|clks_reg\(3) & 
-- ((\dht22_one_wire|stamp_reg\(3) & ((\dht22_one_wire|pw[2]~5\) # (GND))) # (!\dht22_one_wire|stamp_reg\(3) & (!\dht22_one_wire|pw[2]~5\))))
-- \dht22_one_wire|pw[3]~7\ = CARRY((\dht22_one_wire|clks_reg\(3) & (\dht22_one_wire|stamp_reg\(3) & !\dht22_one_wire|pw[2]~5\)) # (!\dht22_one_wire|clks_reg\(3) & ((\dht22_one_wire|stamp_reg\(3)) # (!\dht22_one_wire|pw[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks_reg\(3),
	datab => \dht22_one_wire|stamp_reg\(3),
	datad => VCC,
	cin => \dht22_one_wire|pw[2]~5\,
	combout => \dht22_one_wire|pw[3]~6_combout\,
	cout => \dht22_one_wire|pw[3]~7\);

-- Location: LCCOMB_X24_Y17_N20
\dht22_one_wire|pw[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|pw[4]~8_combout\ = ((\dht22_one_wire|stamp_reg\(4) $ (\dht22_one_wire|clks_reg\(4) $ (\dht22_one_wire|pw[3]~7\)))) # (GND)
-- \dht22_one_wire|pw[4]~9\ = CARRY((\dht22_one_wire|stamp_reg\(4) & (\dht22_one_wire|clks_reg\(4) & !\dht22_one_wire|pw[3]~7\)) # (!\dht22_one_wire|stamp_reg\(4) & ((\dht22_one_wire|clks_reg\(4)) # (!\dht22_one_wire|pw[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|stamp_reg\(4),
	datab => \dht22_one_wire|clks_reg\(4),
	datad => VCC,
	cin => \dht22_one_wire|pw[3]~7\,
	combout => \dht22_one_wire|pw[4]~8_combout\,
	cout => \dht22_one_wire|pw[4]~9\);

-- Location: LCCOMB_X24_Y17_N22
\dht22_one_wire|pw[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|pw[5]~10_combout\ = (\dht22_one_wire|clks_reg\(5) & ((\dht22_one_wire|stamp_reg\(5) & (!\dht22_one_wire|pw[4]~9\)) # (!\dht22_one_wire|stamp_reg\(5) & (\dht22_one_wire|pw[4]~9\ & VCC)))) # (!\dht22_one_wire|clks_reg\(5) & 
-- ((\dht22_one_wire|stamp_reg\(5) & ((\dht22_one_wire|pw[4]~9\) # (GND))) # (!\dht22_one_wire|stamp_reg\(5) & (!\dht22_one_wire|pw[4]~9\))))
-- \dht22_one_wire|pw[5]~11\ = CARRY((\dht22_one_wire|clks_reg\(5) & (\dht22_one_wire|stamp_reg\(5) & !\dht22_one_wire|pw[4]~9\)) # (!\dht22_one_wire|clks_reg\(5) & ((\dht22_one_wire|stamp_reg\(5)) # (!\dht22_one_wire|pw[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks_reg\(5),
	datab => \dht22_one_wire|stamp_reg\(5),
	datad => VCC,
	cin => \dht22_one_wire|pw[4]~9\,
	combout => \dht22_one_wire|pw[5]~10_combout\,
	cout => \dht22_one_wire|pw[5]~11\);

-- Location: LCCOMB_X24_Y17_N24
\dht22_one_wire|pw[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|pw[6]~12_combout\ = ((\dht22_one_wire|clks_reg\(6) $ (\dht22_one_wire|stamp_reg\(6) $ (\dht22_one_wire|pw[5]~11\)))) # (GND)
-- \dht22_one_wire|pw[6]~13\ = CARRY((\dht22_one_wire|clks_reg\(6) & ((!\dht22_one_wire|pw[5]~11\) # (!\dht22_one_wire|stamp_reg\(6)))) # (!\dht22_one_wire|clks_reg\(6) & (!\dht22_one_wire|stamp_reg\(6) & !\dht22_one_wire|pw[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks_reg\(6),
	datab => \dht22_one_wire|stamp_reg\(6),
	datad => VCC,
	cin => \dht22_one_wire|pw[5]~11\,
	combout => \dht22_one_wire|pw[6]~12_combout\,
	cout => \dht22_one_wire|pw[6]~13\);

-- Location: LCCOMB_X24_Y17_N26
\dht22_one_wire|pw[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|pw[7]~14_combout\ = (\dht22_one_wire|clks_reg\(7) & ((\dht22_one_wire|stamp_reg\(7) & (!\dht22_one_wire|pw[6]~13\)) # (!\dht22_one_wire|stamp_reg\(7) & (\dht22_one_wire|pw[6]~13\ & VCC)))) # (!\dht22_one_wire|clks_reg\(7) & 
-- ((\dht22_one_wire|stamp_reg\(7) & ((\dht22_one_wire|pw[6]~13\) # (GND))) # (!\dht22_one_wire|stamp_reg\(7) & (!\dht22_one_wire|pw[6]~13\))))
-- \dht22_one_wire|pw[7]~15\ = CARRY((\dht22_one_wire|clks_reg\(7) & (\dht22_one_wire|stamp_reg\(7) & !\dht22_one_wire|pw[6]~13\)) # (!\dht22_one_wire|clks_reg\(7) & ((\dht22_one_wire|stamp_reg\(7)) # (!\dht22_one_wire|pw[6]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks_reg\(7),
	datab => \dht22_one_wire|stamp_reg\(7),
	datad => VCC,
	cin => \dht22_one_wire|pw[6]~13\,
	combout => \dht22_one_wire|pw[7]~14_combout\,
	cout => \dht22_one_wire|pw[7]~15\);

-- Location: LCCOMB_X24_Y17_N28
\dht22_one_wire|pw[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|pw[8]~16_combout\ = ((\dht22_one_wire|clks_reg\(8) $ (\dht22_one_wire|stamp_reg\(8) $ (\dht22_one_wire|pw[7]~15\)))) # (GND)
-- \dht22_one_wire|pw[8]~17\ = CARRY((\dht22_one_wire|clks_reg\(8) & ((!\dht22_one_wire|pw[7]~15\) # (!\dht22_one_wire|stamp_reg\(8)))) # (!\dht22_one_wire|clks_reg\(8) & (!\dht22_one_wire|stamp_reg\(8) & !\dht22_one_wire|pw[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks_reg\(8),
	datab => \dht22_one_wire|stamp_reg\(8),
	datad => VCC,
	cin => \dht22_one_wire|pw[7]~15\,
	combout => \dht22_one_wire|pw[8]~16_combout\,
	cout => \dht22_one_wire|pw[8]~17\);

-- Location: LCCOMB_X24_Y17_N30
\dht22_one_wire|pw[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|pw[9]~18_combout\ = (\dht22_one_wire|stamp_reg\(9) & ((\dht22_one_wire|clks_reg\(9) & (!\dht22_one_wire|pw[8]~17\)) # (!\dht22_one_wire|clks_reg\(9) & ((\dht22_one_wire|pw[8]~17\) # (GND))))) # (!\dht22_one_wire|stamp_reg\(9) & 
-- ((\dht22_one_wire|clks_reg\(9) & (\dht22_one_wire|pw[8]~17\ & VCC)) # (!\dht22_one_wire|clks_reg\(9) & (!\dht22_one_wire|pw[8]~17\))))
-- \dht22_one_wire|pw[9]~19\ = CARRY((\dht22_one_wire|stamp_reg\(9) & ((!\dht22_one_wire|pw[8]~17\) # (!\dht22_one_wire|clks_reg\(9)))) # (!\dht22_one_wire|stamp_reg\(9) & (!\dht22_one_wire|clks_reg\(9) & !\dht22_one_wire|pw[8]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|stamp_reg\(9),
	datab => \dht22_one_wire|clks_reg\(9),
	datad => VCC,
	cin => \dht22_one_wire|pw[8]~17\,
	combout => \dht22_one_wire|pw[9]~18_combout\,
	cout => \dht22_one_wire|pw[9]~19\);

-- Location: LCCOMB_X24_Y16_N0
\dht22_one_wire|pw[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|pw[10]~20_combout\ = ((\dht22_one_wire|clks_reg\(10) $ (\dht22_one_wire|stamp_reg\(10) $ (\dht22_one_wire|pw[9]~19\)))) # (GND)
-- \dht22_one_wire|pw[10]~21\ = CARRY((\dht22_one_wire|clks_reg\(10) & ((!\dht22_one_wire|pw[9]~19\) # (!\dht22_one_wire|stamp_reg\(10)))) # (!\dht22_one_wire|clks_reg\(10) & (!\dht22_one_wire|stamp_reg\(10) & !\dht22_one_wire|pw[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks_reg\(10),
	datab => \dht22_one_wire|stamp_reg\(10),
	datad => VCC,
	cin => \dht22_one_wire|pw[9]~19\,
	combout => \dht22_one_wire|pw[10]~20_combout\,
	cout => \dht22_one_wire|pw[10]~21\);

-- Location: LCCOMB_X24_Y16_N2
\dht22_one_wire|pw[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|pw[11]~22_combout\ = (\dht22_one_wire|clks_reg\(11) & ((\dht22_one_wire|stamp_reg\(11) & (!\dht22_one_wire|pw[10]~21\)) # (!\dht22_one_wire|stamp_reg\(11) & (\dht22_one_wire|pw[10]~21\ & VCC)))) # (!\dht22_one_wire|clks_reg\(11) & 
-- ((\dht22_one_wire|stamp_reg\(11) & ((\dht22_one_wire|pw[10]~21\) # (GND))) # (!\dht22_one_wire|stamp_reg\(11) & (!\dht22_one_wire|pw[10]~21\))))
-- \dht22_one_wire|pw[11]~23\ = CARRY((\dht22_one_wire|clks_reg\(11) & (\dht22_one_wire|stamp_reg\(11) & !\dht22_one_wire|pw[10]~21\)) # (!\dht22_one_wire|clks_reg\(11) & ((\dht22_one_wire|stamp_reg\(11)) # (!\dht22_one_wire|pw[10]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks_reg\(11),
	datab => \dht22_one_wire|stamp_reg\(11),
	datad => VCC,
	cin => \dht22_one_wire|pw[10]~21\,
	combout => \dht22_one_wire|pw[11]~22_combout\,
	cout => \dht22_one_wire|pw[11]~23\);

-- Location: LCCOMB_X23_Y16_N4
\dht22_one_wire|clks_reg[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks_reg[12]~41_combout\ = (\dht22_one_wire|clks_reg\(12) & (!\dht22_one_wire|clks_reg[11]~40\)) # (!\dht22_one_wire|clks_reg\(12) & ((\dht22_one_wire|clks_reg[11]~40\) # (GND)))
-- \dht22_one_wire|clks_reg[12]~42\ = CARRY((!\dht22_one_wire|clks_reg[11]~40\) # (!\dht22_one_wire|clks_reg\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|clks_reg\(12),
	datad => VCC,
	cin => \dht22_one_wire|clks_reg[11]~40\,
	combout => \dht22_one_wire|clks_reg[12]~41_combout\,
	cout => \dht22_one_wire|clks_reg[12]~42\);

-- Location: FF_X23_Y16_N5
\dht22_one_wire|clks_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks_reg[12]~41_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks_reg\(12));

-- Location: LCCOMB_X23_Y16_N6
\dht22_one_wire|clks_reg[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks_reg[13]~43_combout\ = (\dht22_one_wire|clks_reg\(13) & (\dht22_one_wire|clks_reg[12]~42\ $ (GND))) # (!\dht22_one_wire|clks_reg\(13) & (!\dht22_one_wire|clks_reg[12]~42\ & VCC))
-- \dht22_one_wire|clks_reg[13]~44\ = CARRY((\dht22_one_wire|clks_reg\(13) & !\dht22_one_wire|clks_reg[12]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks_reg\(13),
	datad => VCC,
	cin => \dht22_one_wire|clks_reg[12]~42\,
	combout => \dht22_one_wire|clks_reg[13]~43_combout\,
	cout => \dht22_one_wire|clks_reg[13]~44\);

-- Location: FF_X23_Y16_N7
\dht22_one_wire|clks_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks_reg[13]~43_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks_reg\(13));

-- Location: LCCOMB_X23_Y16_N8
\dht22_one_wire|clks_reg[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks_reg[14]~45_combout\ = (\dht22_one_wire|clks_reg\(14) & (!\dht22_one_wire|clks_reg[13]~44\)) # (!\dht22_one_wire|clks_reg\(14) & ((\dht22_one_wire|clks_reg[13]~44\) # (GND)))
-- \dht22_one_wire|clks_reg[14]~46\ = CARRY((!\dht22_one_wire|clks_reg[13]~44\) # (!\dht22_one_wire|clks_reg\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|clks_reg\(14),
	datad => VCC,
	cin => \dht22_one_wire|clks_reg[13]~44\,
	combout => \dht22_one_wire|clks_reg[14]~45_combout\,
	cout => \dht22_one_wire|clks_reg[14]~46\);

-- Location: FF_X23_Y16_N9
\dht22_one_wire|clks_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks_reg[14]~45_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks_reg\(14));

-- Location: LCCOMB_X23_Y16_N10
\dht22_one_wire|clks_reg[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks_reg[15]~47_combout\ = (\dht22_one_wire|clks_reg\(15) & (\dht22_one_wire|clks_reg[14]~46\ $ (GND))) # (!\dht22_one_wire|clks_reg\(15) & (!\dht22_one_wire|clks_reg[14]~46\ & VCC))
-- \dht22_one_wire|clks_reg[15]~48\ = CARRY((\dht22_one_wire|clks_reg\(15) & !\dht22_one_wire|clks_reg[14]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks_reg\(15),
	datad => VCC,
	cin => \dht22_one_wire|clks_reg[14]~46\,
	combout => \dht22_one_wire|clks_reg[15]~47_combout\,
	cout => \dht22_one_wire|clks_reg[15]~48\);

-- Location: FF_X23_Y16_N11
\dht22_one_wire|clks_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks_reg[15]~47_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks_reg\(15));

-- Location: LCCOMB_X23_Y16_N12
\dht22_one_wire|clks_reg[16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks_reg[16]~49_combout\ = (\dht22_one_wire|clks_reg\(16) & (!\dht22_one_wire|clks_reg[15]~48\)) # (!\dht22_one_wire|clks_reg\(16) & ((\dht22_one_wire|clks_reg[15]~48\) # (GND)))
-- \dht22_one_wire|clks_reg[16]~50\ = CARRY((!\dht22_one_wire|clks_reg[15]~48\) # (!\dht22_one_wire|clks_reg\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks_reg\(16),
	datad => VCC,
	cin => \dht22_one_wire|clks_reg[15]~48\,
	combout => \dht22_one_wire|clks_reg[16]~49_combout\,
	cout => \dht22_one_wire|clks_reg[16]~50\);

-- Location: FF_X23_Y16_N13
\dht22_one_wire|clks_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks_reg[16]~49_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks_reg\(16));

-- Location: LCCOMB_X23_Y16_N14
\dht22_one_wire|clks_reg[17]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks_reg[17]~51_combout\ = (\dht22_one_wire|clks_reg\(17) & (\dht22_one_wire|clks_reg[16]~50\ $ (GND))) # (!\dht22_one_wire|clks_reg\(17) & (!\dht22_one_wire|clks_reg[16]~50\ & VCC))
-- \dht22_one_wire|clks_reg[17]~52\ = CARRY((\dht22_one_wire|clks_reg\(17) & !\dht22_one_wire|clks_reg[16]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|clks_reg\(17),
	datad => VCC,
	cin => \dht22_one_wire|clks_reg[16]~50\,
	combout => \dht22_one_wire|clks_reg[17]~51_combout\,
	cout => \dht22_one_wire|clks_reg[17]~52\);

-- Location: FF_X23_Y16_N15
\dht22_one_wire|clks_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks_reg[17]~51_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks_reg\(17));

-- Location: LCCOMB_X23_Y16_N16
\dht22_one_wire|clks_reg[18]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks_reg[18]~53_combout\ = (\dht22_one_wire|clks_reg\(18) & (!\dht22_one_wire|clks_reg[17]~52\)) # (!\dht22_one_wire|clks_reg\(18) & ((\dht22_one_wire|clks_reg[17]~52\) # (GND)))
-- \dht22_one_wire|clks_reg[18]~54\ = CARRY((!\dht22_one_wire|clks_reg[17]~52\) # (!\dht22_one_wire|clks_reg\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|clks_reg\(18),
	datad => VCC,
	cin => \dht22_one_wire|clks_reg[17]~52\,
	combout => \dht22_one_wire|clks_reg[18]~53_combout\,
	cout => \dht22_one_wire|clks_reg[18]~54\);

-- Location: FF_X23_Y16_N17
\dht22_one_wire|clks_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks_reg[18]~53_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks_reg\(18));

-- Location: FF_X24_Y16_N17
\dht22_one_wire|stamp_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks_reg\(18),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|stamp_reg[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|stamp_reg\(18));

-- Location: FF_X24_Y16_N15
\dht22_one_wire|stamp_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks_reg\(17),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|stamp_reg[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|stamp_reg\(17));

-- Location: FF_X24_Y16_N13
\dht22_one_wire|stamp_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks_reg\(16),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|stamp_reg[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|stamp_reg\(16));

-- Location: FF_X24_Y16_N11
\dht22_one_wire|stamp_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks_reg\(15),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|stamp_reg[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|stamp_reg\(15));

-- Location: FF_X24_Y16_N9
\dht22_one_wire|stamp_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks_reg\(14),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|stamp_reg[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|stamp_reg\(14));

-- Location: FF_X24_Y16_N7
\dht22_one_wire|stamp_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks_reg\(13),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|stamp_reg[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|stamp_reg\(13));

-- Location: FF_X24_Y16_N5
\dht22_one_wire|stamp_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks_reg\(12),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|stamp_reg[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|stamp_reg\(12));

-- Location: LCCOMB_X24_Y16_N4
\dht22_one_wire|pw[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|pw[12]~24_combout\ = ((\dht22_one_wire|stamp_reg\(12) $ (\dht22_one_wire|clks_reg\(12) $ (\dht22_one_wire|pw[11]~23\)))) # (GND)
-- \dht22_one_wire|pw[12]~25\ = CARRY((\dht22_one_wire|stamp_reg\(12) & (\dht22_one_wire|clks_reg\(12) & !\dht22_one_wire|pw[11]~23\)) # (!\dht22_one_wire|stamp_reg\(12) & ((\dht22_one_wire|clks_reg\(12)) # (!\dht22_one_wire|pw[11]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|stamp_reg\(12),
	datab => \dht22_one_wire|clks_reg\(12),
	datad => VCC,
	cin => \dht22_one_wire|pw[11]~23\,
	combout => \dht22_one_wire|pw[12]~24_combout\,
	cout => \dht22_one_wire|pw[12]~25\);

-- Location: LCCOMB_X24_Y16_N6
\dht22_one_wire|pw[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|pw[13]~26_combout\ = (\dht22_one_wire|stamp_reg\(13) & ((\dht22_one_wire|clks_reg\(13) & (!\dht22_one_wire|pw[12]~25\)) # (!\dht22_one_wire|clks_reg\(13) & ((\dht22_one_wire|pw[12]~25\) # (GND))))) # (!\dht22_one_wire|stamp_reg\(13) & 
-- ((\dht22_one_wire|clks_reg\(13) & (\dht22_one_wire|pw[12]~25\ & VCC)) # (!\dht22_one_wire|clks_reg\(13) & (!\dht22_one_wire|pw[12]~25\))))
-- \dht22_one_wire|pw[13]~27\ = CARRY((\dht22_one_wire|stamp_reg\(13) & ((!\dht22_one_wire|pw[12]~25\) # (!\dht22_one_wire|clks_reg\(13)))) # (!\dht22_one_wire|stamp_reg\(13) & (!\dht22_one_wire|clks_reg\(13) & !\dht22_one_wire|pw[12]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|stamp_reg\(13),
	datab => \dht22_one_wire|clks_reg\(13),
	datad => VCC,
	cin => \dht22_one_wire|pw[12]~25\,
	combout => \dht22_one_wire|pw[13]~26_combout\,
	cout => \dht22_one_wire|pw[13]~27\);

-- Location: LCCOMB_X24_Y16_N8
\dht22_one_wire|pw[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|pw[14]~28_combout\ = ((\dht22_one_wire|stamp_reg\(14) $ (\dht22_one_wire|clks_reg\(14) $ (\dht22_one_wire|pw[13]~27\)))) # (GND)
-- \dht22_one_wire|pw[14]~29\ = CARRY((\dht22_one_wire|stamp_reg\(14) & (\dht22_one_wire|clks_reg\(14) & !\dht22_one_wire|pw[13]~27\)) # (!\dht22_one_wire|stamp_reg\(14) & ((\dht22_one_wire|clks_reg\(14)) # (!\dht22_one_wire|pw[13]~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|stamp_reg\(14),
	datab => \dht22_one_wire|clks_reg\(14),
	datad => VCC,
	cin => \dht22_one_wire|pw[13]~27\,
	combout => \dht22_one_wire|pw[14]~28_combout\,
	cout => \dht22_one_wire|pw[14]~29\);

-- Location: LCCOMB_X24_Y16_N10
\dht22_one_wire|pw[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|pw[15]~30_combout\ = (\dht22_one_wire|stamp_reg\(15) & ((\dht22_one_wire|clks_reg\(15) & (!\dht22_one_wire|pw[14]~29\)) # (!\dht22_one_wire|clks_reg\(15) & ((\dht22_one_wire|pw[14]~29\) # (GND))))) # (!\dht22_one_wire|stamp_reg\(15) & 
-- ((\dht22_one_wire|clks_reg\(15) & (\dht22_one_wire|pw[14]~29\ & VCC)) # (!\dht22_one_wire|clks_reg\(15) & (!\dht22_one_wire|pw[14]~29\))))
-- \dht22_one_wire|pw[15]~31\ = CARRY((\dht22_one_wire|stamp_reg\(15) & ((!\dht22_one_wire|pw[14]~29\) # (!\dht22_one_wire|clks_reg\(15)))) # (!\dht22_one_wire|stamp_reg\(15) & (!\dht22_one_wire|clks_reg\(15) & !\dht22_one_wire|pw[14]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|stamp_reg\(15),
	datab => \dht22_one_wire|clks_reg\(15),
	datad => VCC,
	cin => \dht22_one_wire|pw[14]~29\,
	combout => \dht22_one_wire|pw[15]~30_combout\,
	cout => \dht22_one_wire|pw[15]~31\);

-- Location: LCCOMB_X24_Y16_N12
\dht22_one_wire|pw[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|pw[16]~32_combout\ = ((\dht22_one_wire|stamp_reg\(16) $ (\dht22_one_wire|clks_reg\(16) $ (\dht22_one_wire|pw[15]~31\)))) # (GND)
-- \dht22_one_wire|pw[16]~33\ = CARRY((\dht22_one_wire|stamp_reg\(16) & (\dht22_one_wire|clks_reg\(16) & !\dht22_one_wire|pw[15]~31\)) # (!\dht22_one_wire|stamp_reg\(16) & ((\dht22_one_wire|clks_reg\(16)) # (!\dht22_one_wire|pw[15]~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|stamp_reg\(16),
	datab => \dht22_one_wire|clks_reg\(16),
	datad => VCC,
	cin => \dht22_one_wire|pw[15]~31\,
	combout => \dht22_one_wire|pw[16]~32_combout\,
	cout => \dht22_one_wire|pw[16]~33\);

-- Location: LCCOMB_X24_Y16_N14
\dht22_one_wire|pw[17]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|pw[17]~34_combout\ = (\dht22_one_wire|stamp_reg\(17) & ((\dht22_one_wire|clks_reg\(17) & (!\dht22_one_wire|pw[16]~33\)) # (!\dht22_one_wire|clks_reg\(17) & ((\dht22_one_wire|pw[16]~33\) # (GND))))) # (!\dht22_one_wire|stamp_reg\(17) & 
-- ((\dht22_one_wire|clks_reg\(17) & (\dht22_one_wire|pw[16]~33\ & VCC)) # (!\dht22_one_wire|clks_reg\(17) & (!\dht22_one_wire|pw[16]~33\))))
-- \dht22_one_wire|pw[17]~35\ = CARRY((\dht22_one_wire|stamp_reg\(17) & ((!\dht22_one_wire|pw[16]~33\) # (!\dht22_one_wire|clks_reg\(17)))) # (!\dht22_one_wire|stamp_reg\(17) & (!\dht22_one_wire|clks_reg\(17) & !\dht22_one_wire|pw[16]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|stamp_reg\(17),
	datab => \dht22_one_wire|clks_reg\(17),
	datad => VCC,
	cin => \dht22_one_wire|pw[16]~33\,
	combout => \dht22_one_wire|pw[17]~34_combout\,
	cout => \dht22_one_wire|pw[17]~35\);

-- Location: LCCOMB_X24_Y16_N16
\dht22_one_wire|pw[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|pw[18]~36_combout\ = ((\dht22_one_wire|clks_reg\(18) $ (\dht22_one_wire|stamp_reg\(18) $ (\dht22_one_wire|pw[17]~35\)))) # (GND)
-- \dht22_one_wire|pw[18]~37\ = CARRY((\dht22_one_wire|clks_reg\(18) & ((!\dht22_one_wire|pw[17]~35\) # (!\dht22_one_wire|stamp_reg\(18)))) # (!\dht22_one_wire|clks_reg\(18) & (!\dht22_one_wire|stamp_reg\(18) & !\dht22_one_wire|pw[17]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks_reg\(18),
	datab => \dht22_one_wire|stamp_reg\(18),
	datad => VCC,
	cin => \dht22_one_wire|pw[17]~35\,
	combout => \dht22_one_wire|pw[18]~36_combout\,
	cout => \dht22_one_wire|pw[18]~37\);

-- Location: LCCOMB_X24_Y16_N30
\dht22_one_wire|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal0~5_combout\ = (!\dht22_one_wire|pw[17]~34_combout\ & \dht22_one_wire|pw[16]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_one_wire|pw[17]~34_combout\,
	datad => \dht22_one_wire|pw[16]~32_combout\,
	combout => \dht22_one_wire|Equal0~5_combout\);

-- Location: LCCOMB_X23_Y16_N18
\dht22_one_wire|clks_reg[19]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|clks_reg[19]~55_combout\ = \dht22_one_wire|clks_reg[18]~54\ $ (!\dht22_one_wire|clks_reg\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dht22_one_wire|clks_reg\(19),
	cin => \dht22_one_wire|clks_reg[18]~54\,
	combout => \dht22_one_wire|clks_reg[19]~55_combout\);

-- Location: FF_X23_Y16_N19
\dht22_one_wire|clks_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|clks_reg[19]~55_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|clks_reg\(19));

-- Location: FF_X24_Y16_N19
\dht22_one_wire|stamp_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks_reg\(19),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|stamp_reg[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|stamp_reg\(19));

-- Location: LCCOMB_X24_Y16_N18
\dht22_one_wire|pw[19]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|pw[19]~38_combout\ = \dht22_one_wire|clks_reg\(19) $ (\dht22_one_wire|pw[18]~37\ $ (!\dht22_one_wire|stamp_reg\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|clks_reg\(19),
	datad => \dht22_one_wire|stamp_reg\(19),
	cin => \dht22_one_wire|pw[18]~37\,
	combout => \dht22_one_wire|pw[19]~38_combout\);

-- Location: LCCOMB_X24_Y17_N8
\dht22_one_wire|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal0~0_combout\ = (\dht22_one_wire|pw[3]~6_combout\ & (\dht22_one_wire|pw[4]~8_combout\ & (\dht22_one_wire|pw[9]~18_combout\ & \dht22_one_wire|pw[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|pw[3]~6_combout\,
	datab => \dht22_one_wire|pw[4]~8_combout\,
	datac => \dht22_one_wire|pw[9]~18_combout\,
	datad => \dht22_one_wire|pw[2]~4_combout\,
	combout => \dht22_one_wire|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y16_N26
\dht22_one_wire|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal0~1_combout\ = (\dht22_one_wire|pw[11]~22_combout\ & (\dht22_one_wire|pw[12]~24_combout\ & (!\dht22_one_wire|pw[6]~12_combout\ & \dht22_one_wire|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|pw[11]~22_combout\,
	datab => \dht22_one_wire|pw[12]~24_combout\,
	datac => \dht22_one_wire|pw[6]~12_combout\,
	datad => \dht22_one_wire|Equal0~0_combout\,
	combout => \dht22_one_wire|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y16_N10
\dht22_one_wire|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal0~2_combout\ = (!\dht22_one_wire|pw[10]~20_combout\ & (!\dht22_one_wire|pw[5]~10_combout\ & (\dht22_one_wire|pw[8]~16_combout\ & \dht22_one_wire|pw[7]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|pw[10]~20_combout\,
	datab => \dht22_one_wire|pw[5]~10_combout\,
	datac => \dht22_one_wire|pw[8]~16_combout\,
	datad => \dht22_one_wire|pw[7]~14_combout\,
	combout => \dht22_one_wire|Equal0~2_combout\);

-- Location: LCCOMB_X25_Y16_N20
\dht22_one_wire|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal0~3_combout\ = (\dht22_one_wire|pw[1]~2_combout\ & (\dht22_one_wire|pw[0]~0_combout\ & (\dht22_one_wire|pw[13]~26_combout\ & \dht22_one_wire|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|pw[1]~2_combout\,
	datab => \dht22_one_wire|pw[0]~0_combout\,
	datac => \dht22_one_wire|pw[13]~26_combout\,
	datad => \dht22_one_wire|Equal0~2_combout\,
	combout => \dht22_one_wire|Equal0~3_combout\);

-- Location: LCCOMB_X25_Y16_N2
\dht22_one_wire|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal0~4_combout\ = (!\dht22_one_wire|pw[14]~28_combout\ & (\dht22_one_wire|pw[15]~30_combout\ & (\dht22_one_wire|Equal0~1_combout\ & \dht22_one_wire|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|pw[14]~28_combout\,
	datab => \dht22_one_wire|pw[15]~30_combout\,
	datac => \dht22_one_wire|Equal0~1_combout\,
	datad => \dht22_one_wire|Equal0~3_combout\,
	combout => \dht22_one_wire|Equal0~4_combout\);

-- Location: LCCOMB_X25_Y16_N16
\dht22_one_wire|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal0~6_combout\ = (\dht22_one_wire|pw[18]~36_combout\ & (\dht22_one_wire|Equal0~5_combout\ & (\dht22_one_wire|pw[19]~38_combout\ & \dht22_one_wire|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|pw[18]~36_combout\,
	datab => \dht22_one_wire|Equal0~5_combout\,
	datac => \dht22_one_wire|pw[19]~38_combout\,
	datad => \dht22_one_wire|Equal0~4_combout\,
	combout => \dht22_one_wire|Equal0~6_combout\);

-- Location: LCCOMB_X28_Y16_N20
\dht22_one_wire|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector0~0_combout\ = ((!\dht22_one_wire|state.ST_CHECK~q\ & \dht22_one_wire|state.ST_IDLE~q\)) # (!\en_dht22~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_CHECK~q\,
	datac => \dht22_one_wire|state.ST_IDLE~q\,
	datad => \en_dht22~q\,
	combout => \dht22_one_wire|Selector0~0_combout\);

-- Location: FF_X28_Y16_N21
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

-- Location: LCCOMB_X28_Y16_N10
\dht22_one_wire|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector4~0_combout\ = (!\dht22_one_wire|state.ST_SAMPLE~q\ & ((\dht22_one_wire|state.ST_IDLE~q\) # (\en_dht22~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|state.ST_IDLE~q\,
	datac => \dht22_one_wire|state.ST_SAMPLE~q\,
	datad => \en_dht22~q\,
	combout => \dht22_one_wire|Selector4~0_combout\);

-- Location: LCCOMB_X25_Y16_N28
\dht22_one_wire|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal4~0_combout\ = (\dht22_one_wire|pw[0]~0_combout\ & (\dht22_one_wire|pw[8]~16_combout\ & \dht22_one_wire|pw[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|pw[0]~0_combout\,
	datac => \dht22_one_wire|pw[8]~16_combout\,
	datad => \dht22_one_wire|pw[1]~2_combout\,
	combout => \dht22_one_wire|Equal4~0_combout\);

-- Location: LCCOMB_X24_Y17_N6
\dht22_one_wire|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal4~1_combout\ = (!\dht22_one_wire|pw[5]~10_combout\ & (!\dht22_one_wire|pw[4]~8_combout\ & (\dht22_one_wire|pw[7]~14_combout\ & \dht22_one_wire|pw[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|pw[5]~10_combout\,
	datab => \dht22_one_wire|pw[4]~8_combout\,
	datac => \dht22_one_wire|pw[7]~14_combout\,
	datad => \dht22_one_wire|pw[6]~12_combout\,
	combout => \dht22_one_wire|Equal4~1_combout\);

-- Location: LCCOMB_X25_Y16_N22
\dht22_one_wire|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal4~2_combout\ = (\dht22_one_wire|Equal4~0_combout\ & (\dht22_one_wire|Equal4~1_combout\ & !\dht22_one_wire|pw[16]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|Equal4~0_combout\,
	datac => \dht22_one_wire|Equal4~1_combout\,
	datad => \dht22_one_wire|pw[16]~32_combout\,
	combout => \dht22_one_wire|Equal4~2_combout\);

-- Location: LCCOMB_X24_Y16_N28
\dht22_one_wire|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|LessThan0~0_combout\ = (!\dht22_one_wire|pw[13]~26_combout\ & (!\dht22_one_wire|pw[14]~28_combout\ & (!\dht22_one_wire|pw[17]~34_combout\ & !\dht22_one_wire|pw[15]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|pw[13]~26_combout\,
	datab => \dht22_one_wire|pw[14]~28_combout\,
	datac => \dht22_one_wire|pw[17]~34_combout\,
	datad => \dht22_one_wire|pw[15]~30_combout\,
	combout => \dht22_one_wire|LessThan0~0_combout\);

-- Location: LCCOMB_X25_Y16_N24
\dht22_one_wire|Equal4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal4~3_combout\ = (!\dht22_one_wire|pw[18]~36_combout\ & (!\dht22_one_wire|pw[19]~38_combout\ & (\dht22_one_wire|Equal4~2_combout\ & \dht22_one_wire|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|pw[18]~36_combout\,
	datab => \dht22_one_wire|pw[19]~38_combout\,
	datac => \dht22_one_wire|Equal4~2_combout\,
	datad => \dht22_one_wire|LessThan0~0_combout\,
	combout => \dht22_one_wire|Equal4~3_combout\);

-- Location: LCCOMB_X25_Y16_N8
\dht22_one_wire|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector4~1_combout\ = (\dht22_one_wire|Selector4~0_combout\ & (((\dht22_one_wire|pw[12]~24_combout\) # (!\dht22_one_wire|Selector5~11_combout\)) # (!\dht22_one_wire|Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Selector4~0_combout\,
	datab => \dht22_one_wire|Equal4~3_combout\,
	datac => \dht22_one_wire|pw[12]~24_combout\,
	datad => \dht22_one_wire|Selector5~11_combout\,
	combout => \dht22_one_wire|Selector4~1_combout\);

-- Location: LCCOMB_X26_Y16_N16
\dht22_one_wire|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector4~2_combout\ = (!\dht22_one_wire|Selector7~2_combout\ & (\dht22_one_wire|Selector4~1_combout\ & ((!\dht22_one_wire|Equal0~6_combout\) # (!\dht22_one_wire|state.ST_START~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_START~q\,
	datab => \dht22_one_wire|Selector7~2_combout\,
	datac => \dht22_one_wire|Equal0~6_combout\,
	datad => \dht22_one_wire|Selector4~1_combout\,
	combout => \dht22_one_wire|Selector4~2_combout\);

-- Location: LCCOMB_X26_Y16_N2
\dht22_one_wire|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector2~0_combout\ = (!\dht22_one_wire|Selector5~3_combout\ & (\dht22_one_wire|state.ST_PRE_ACK~q\ & (!\dht22_one_wire|Selector5~9_combout\ & \dht22_one_wire|Selector4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Selector5~3_combout\,
	datab => \dht22_one_wire|state.ST_PRE_ACK~q\,
	datac => \dht22_one_wire|Selector5~9_combout\,
	datad => \dht22_one_wire|Selector4~2_combout\,
	combout => \dht22_one_wire|Selector2~0_combout\);

-- Location: LCCOMB_X26_Y16_N0
\dht22_one_wire|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector2~1_combout\ = (\dht22_one_wire|Selector2~0_combout\) # ((\dht22_one_wire|Equal0~6_combout\ & (\dht22_one_wire|state.ST_START~q\ & !\dht22_one_wire|Selector1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Equal0~6_combout\,
	datab => \dht22_one_wire|state.ST_START~q\,
	datac => \dht22_one_wire|Selector1~4_combout\,
	datad => \dht22_one_wire|Selector2~0_combout\,
	combout => \dht22_one_wire|Selector2~1_combout\);

-- Location: FF_X26_Y16_N1
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

-- Location: LCCOMB_X24_Y17_N0
\dht22_one_wire|Selector5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector5~10_combout\ = (\dht22_one_wire|pw[3]~6_combout\ & (\dht22_one_wire|state.ST_PRE_ACK~q\ & (\dht22_one_wire|pw[9]~18_combout\ & \dht22_one_wire|pw[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|pw[3]~6_combout\,
	datab => \dht22_one_wire|state.ST_PRE_ACK~q\,
	datac => \dht22_one_wire|pw[9]~18_combout\,
	datad => \dht22_one_wire|pw[2]~4_combout\,
	combout => \dht22_one_wire|Selector5~10_combout\);

-- Location: LCCOMB_X24_Y16_N24
\dht22_one_wire|Selector5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector5~11_combout\ = (!\dht22_one_wire|pw[11]~22_combout\ & (\dht22_one_wire|pw[10]~20_combout\ & \dht22_one_wire|Selector5~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|pw[11]~22_combout\,
	datac => \dht22_one_wire|pw[10]~20_combout\,
	datad => \dht22_one_wire|Selector5~10_combout\,
	combout => \dht22_one_wire|Selector5~11_combout\);

-- Location: LCCOMB_X25_Y16_N4
\dht22_one_wire|Selector5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector5~12_combout\ = (\dht22_one_wire|Selector5~11_combout\ & (!\dht22_one_wire|pw[12]~24_combout\ & \dht22_one_wire|Equal4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|Selector5~11_combout\,
	datac => \dht22_one_wire|pw[12]~24_combout\,
	datad => \dht22_one_wire|Equal4~3_combout\,
	combout => \dht22_one_wire|Selector5~12_combout\);

-- Location: LCCOMB_X26_Y16_N22
\dht22_one_wire|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector3~0_combout\ = (\dht22_one_wire|Selector1~4_combout\ & (((\dht22_one_wire|state.ST_ACK~q\ & !\dht22_one_wire|Selector5~14_combout\)))) # (!\dht22_one_wire|Selector1~4_combout\ & ((\dht22_one_wire|Selector5~12_combout\) # 
-- ((\dht22_one_wire|state.ST_ACK~q\ & !\dht22_one_wire|Selector5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Selector1~4_combout\,
	datab => \dht22_one_wire|Selector5~12_combout\,
	datac => \dht22_one_wire|state.ST_ACK~q\,
	datad => \dht22_one_wire|Selector5~14_combout\,
	combout => \dht22_one_wire|Selector3~0_combout\);

-- Location: FF_X26_Y16_N23
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

-- Location: LCCOMB_X28_Y16_N22
\dht22_one_wire|Selector5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector5~5_combout\ = (\dht22_one_wire|state.ST_PROCESS~q\) # (\dht22_one_wire|state.ST_ACK~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_one_wire|state.ST_PROCESS~q\,
	datad => \dht22_one_wire|state.ST_ACK~q\,
	combout => \dht22_one_wire|Selector5~5_combout\);

-- Location: IOIBUF_X28_Y24_N22
\io~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_io,
	o => \io~input_o\);

-- Location: LCCOMB_X28_Y16_N26
\dht22_one_wire|new_io_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|new_io_reg~0_combout\ = (\dht22_one_wire|state.ST_SAMPLE~q\ & ((\io~input_o\))) # (!\dht22_one_wire|state.ST_SAMPLE~q\ & (\dht22_one_wire|new_io_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|state.ST_SAMPLE~q\,
	datac => \dht22_one_wire|new_io_reg~q\,
	datad => \io~input_o\,
	combout => \dht22_one_wire|new_io_reg~0_combout\);

-- Location: FF_X28_Y16_N27
\dht22_one_wire|new_io_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|new_io_reg~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|new_io_reg~q\);

-- Location: LCCOMB_X28_Y16_N24
\dht22_one_wire|old_io_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|old_io_reg~0_combout\ = (\dht22_one_wire|state.ST_PROCESS~q\ & (\dht22_one_wire|new_io_reg~q\)) # (!\dht22_one_wire|state.ST_PROCESS~q\ & ((\dht22_one_wire|old_io_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|new_io_reg~q\,
	datac => \dht22_one_wire|old_io_reg~q\,
	datad => \dht22_one_wire|state.ST_PROCESS~q\,
	combout => \dht22_one_wire|old_io_reg~0_combout\);

-- Location: FF_X28_Y16_N25
\dht22_one_wire|old_io_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|old_io_reg~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|old_io_reg~q\);

-- Location: LCCOMB_X28_Y16_N8
\dht22_one_wire|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~1_combout\ = (\dht22_one_wire|old_io_reg~q\ & !\dht22_one_wire|new_io_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|old_io_reg~q\,
	datac => \dht22_one_wire|new_io_reg~q\,
	combout => \dht22_one_wire|Decoder0~1_combout\);

-- Location: LCCOMB_X29_Y16_N14
\dht22_one_wire|index_reg[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|index_reg[0]~6_combout\ = (\dht22_one_wire|Decoder0~1_combout\ & (\dht22_one_wire|index_reg\(0) $ (VCC))) # (!\dht22_one_wire|Decoder0~1_combout\ & (\dht22_one_wire|index_reg\(0) & VCC))
-- \dht22_one_wire|index_reg[0]~7\ = CARRY((\dht22_one_wire|Decoder0~1_combout\ & \dht22_one_wire|index_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~1_combout\,
	datab => \dht22_one_wire|index_reg\(0),
	datad => VCC,
	combout => \dht22_one_wire|index_reg[0]~6_combout\,
	cout => \dht22_one_wire|index_reg[0]~7\);

-- Location: LCCOMB_X26_Y16_N30
\dht22_one_wire|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector6~1_combout\ = (\dht22_one_wire|Selector1~4_combout\ & (((\dht22_one_wire|state.ST_DONE~q\ & !\dht22_one_wire|Selector5~14_combout\)))) # (!\dht22_one_wire|Selector1~4_combout\ & ((\dht22_one_wire|Selector6~0_combout\) # 
-- ((\dht22_one_wire|state.ST_DONE~q\ & !\dht22_one_wire|Selector5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Selector1~4_combout\,
	datab => \dht22_one_wire|Selector6~0_combout\,
	datac => \dht22_one_wire|state.ST_DONE~q\,
	datad => \dht22_one_wire|Selector5~14_combout\,
	combout => \dht22_one_wire|Selector6~1_combout\);

-- Location: FF_X26_Y16_N31
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

-- Location: LCCOMB_X29_Y16_N26
\dht22_one_wire|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector34~0_combout\ = (!\dht22_one_wire|state.ST_DONE~q\ & \dht22_one_wire|index_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_DONE~q\,
	datac => \dht22_one_wire|index_reg\(0),
	combout => \dht22_one_wire|Selector34~0_combout\);

-- Location: FF_X29_Y16_N15
\dht22_one_wire|index_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|index_reg[0]~6_combout\,
	asdata => \dht22_one_wire|Selector34~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dht22_one_wire|ALT_INV_state.ST_PROCESS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|index_reg\(0));

-- Location: LCCOMB_X29_Y16_N16
\dht22_one_wire|index_reg[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|index_reg[1]~8_combout\ = (\dht22_one_wire|index_reg\(1) & (!\dht22_one_wire|index_reg[0]~7\)) # (!\dht22_one_wire|index_reg\(1) & ((\dht22_one_wire|index_reg[0]~7\) # (GND)))
-- \dht22_one_wire|index_reg[1]~9\ = CARRY((!\dht22_one_wire|index_reg[0]~7\) # (!\dht22_one_wire|index_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|index_reg\(1),
	datad => VCC,
	cin => \dht22_one_wire|index_reg[0]~7\,
	combout => \dht22_one_wire|index_reg[1]~8_combout\,
	cout => \dht22_one_wire|index_reg[1]~9\);

-- Location: LCCOMB_X29_Y16_N10
\dht22_one_wire|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector33~0_combout\ = (!\dht22_one_wire|state.ST_DONE~q\ & \dht22_one_wire|index_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_one_wire|state.ST_DONE~q\,
	datad => \dht22_one_wire|index_reg\(1),
	combout => \dht22_one_wire|Selector33~0_combout\);

-- Location: FF_X29_Y16_N17
\dht22_one_wire|index_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|index_reg[1]~8_combout\,
	asdata => \dht22_one_wire|Selector33~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dht22_one_wire|ALT_INV_state.ST_PROCESS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|index_reg\(1));

-- Location: LCCOMB_X29_Y16_N18
\dht22_one_wire|index_reg[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|index_reg[2]~10_combout\ = (\dht22_one_wire|index_reg\(2) & (\dht22_one_wire|index_reg[1]~9\ $ (GND))) # (!\dht22_one_wire|index_reg\(2) & (!\dht22_one_wire|index_reg[1]~9\ & VCC))
-- \dht22_one_wire|index_reg[2]~11\ = CARRY((\dht22_one_wire|index_reg\(2) & !\dht22_one_wire|index_reg[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|index_reg\(2),
	datad => VCC,
	cin => \dht22_one_wire|index_reg[1]~9\,
	combout => \dht22_one_wire|index_reg[2]~10_combout\,
	cout => \dht22_one_wire|index_reg[2]~11\);

-- Location: LCCOMB_X29_Y16_N8
\dht22_one_wire|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector32~0_combout\ = (!\dht22_one_wire|state.ST_DONE~q\ & \dht22_one_wire|index_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_one_wire|state.ST_DONE~q\,
	datad => \dht22_one_wire|index_reg\(2),
	combout => \dht22_one_wire|Selector32~0_combout\);

-- Location: FF_X29_Y16_N19
\dht22_one_wire|index_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|index_reg[2]~10_combout\,
	asdata => \dht22_one_wire|Selector32~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dht22_one_wire|ALT_INV_state.ST_PROCESS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|index_reg\(2));

-- Location: LCCOMB_X29_Y16_N20
\dht22_one_wire|index_reg[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|index_reg[3]~12_combout\ = (\dht22_one_wire|index_reg\(3) & (!\dht22_one_wire|index_reg[2]~11\)) # (!\dht22_one_wire|index_reg\(3) & ((\dht22_one_wire|index_reg[2]~11\) # (GND)))
-- \dht22_one_wire|index_reg[3]~13\ = CARRY((!\dht22_one_wire|index_reg[2]~11\) # (!\dht22_one_wire|index_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|index_reg\(3),
	datad => VCC,
	cin => \dht22_one_wire|index_reg[2]~11\,
	combout => \dht22_one_wire|index_reg[3]~12_combout\,
	cout => \dht22_one_wire|index_reg[3]~13\);

-- Location: LCCOMB_X29_Y16_N4
\dht22_one_wire|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector31~0_combout\ = (!\dht22_one_wire|state.ST_DONE~q\ & \dht22_one_wire|index_reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_one_wire|state.ST_DONE~q\,
	datad => \dht22_one_wire|index_reg\(3),
	combout => \dht22_one_wire|Selector31~0_combout\);

-- Location: FF_X29_Y16_N21
\dht22_one_wire|index_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|index_reg[3]~12_combout\,
	asdata => \dht22_one_wire|Selector31~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dht22_one_wire|ALT_INV_state.ST_PROCESS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|index_reg\(3));

-- Location: LCCOMB_X29_Y16_N22
\dht22_one_wire|index_reg[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|index_reg[4]~14_combout\ = (\dht22_one_wire|index_reg\(4) & (\dht22_one_wire|index_reg[3]~13\ $ (GND))) # (!\dht22_one_wire|index_reg\(4) & (!\dht22_one_wire|index_reg[3]~13\ & VCC))
-- \dht22_one_wire|index_reg[4]~15\ = CARRY((\dht22_one_wire|index_reg\(4) & !\dht22_one_wire|index_reg[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|index_reg\(4),
	datad => VCC,
	cin => \dht22_one_wire|index_reg[3]~13\,
	combout => \dht22_one_wire|index_reg[4]~14_combout\,
	cout => \dht22_one_wire|index_reg[4]~15\);

-- Location: LCCOMB_X28_Y16_N4
\dht22_one_wire|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector30~0_combout\ = (!\dht22_one_wire|state.ST_DONE~q\ & \dht22_one_wire|index_reg\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_one_wire|state.ST_DONE~q\,
	datad => \dht22_one_wire|index_reg\(4),
	combout => \dht22_one_wire|Selector30~0_combout\);

-- Location: FF_X29_Y16_N23
\dht22_one_wire|index_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|index_reg[4]~14_combout\,
	asdata => \dht22_one_wire|Selector30~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dht22_one_wire|ALT_INV_state.ST_PROCESS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|index_reg\(4));

-- Location: LCCOMB_X29_Y16_N0
\dht22_one_wire|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal3~0_combout\ = (!\dht22_one_wire|index_reg\(1) & (!\dht22_one_wire|index_reg\(2) & \dht22_one_wire|index_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|index_reg\(1),
	datac => \dht22_one_wire|index_reg\(2),
	datad => \dht22_one_wire|index_reg\(3),
	combout => \dht22_one_wire|Equal3~0_combout\);

-- Location: LCCOMB_X29_Y16_N24
\dht22_one_wire|index_reg[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|index_reg[5]~16_combout\ = \dht22_one_wire|index_reg[4]~15\ $ (\dht22_one_wire|index_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dht22_one_wire|index_reg\(5),
	cin => \dht22_one_wire|index_reg[4]~15\,
	combout => \dht22_one_wire|index_reg[5]~16_combout\);

-- Location: LCCOMB_X29_Y16_N2
\dht22_one_wire|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector29~0_combout\ = (!\dht22_one_wire|state.ST_DONE~q\ & \dht22_one_wire|index_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_one_wire|state.ST_DONE~q\,
	datad => \dht22_one_wire|index_reg\(5),
	combout => \dht22_one_wire|Selector29~0_combout\);

-- Location: FF_X29_Y16_N25
\dht22_one_wire|index_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|index_reg[5]~16_combout\,
	asdata => \dht22_one_wire|Selector29~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \dht22_one_wire|ALT_INV_state.ST_PROCESS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|index_reg\(5));

-- Location: LCCOMB_X29_Y16_N6
\dht22_one_wire|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal3~1_combout\ = (!\dht22_one_wire|index_reg\(4) & (\dht22_one_wire|Equal3~0_combout\ & (!\dht22_one_wire|index_reg\(0) & \dht22_one_wire|index_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|index_reg\(4),
	datab => \dht22_one_wire|Equal3~0_combout\,
	datac => \dht22_one_wire|index_reg\(0),
	datad => \dht22_one_wire|index_reg\(5),
	combout => \dht22_one_wire|Equal3~1_combout\);

-- Location: LCCOMB_X28_Y16_N12
\dht22_one_wire|Selector5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector5~4_combout\ = (\dht22_one_wire|state.ST_PROCESS~q\ & ((\dht22_one_wire|Equal3~1_combout\) # (\dht22_one_wire|new_io_reg~q\ $ (!\dht22_one_wire|old_io_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|new_io_reg~q\,
	datab => \dht22_one_wire|old_io_reg~q\,
	datac => \dht22_one_wire|state.ST_PROCESS~q\,
	datad => \dht22_one_wire|Equal3~1_combout\,
	combout => \dht22_one_wire|Selector5~4_combout\);

-- Location: LCCOMB_X25_Y16_N30
\dht22_one_wire|Selector5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector5~6_combout\ = (!\dht22_one_wire|state.ST_PROCESS~q\ & (\dht22_one_wire|pw[5]~10_combout\ & (\dht22_one_wire|pw[10]~20_combout\ & !\dht22_one_wire|pw[7]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_PROCESS~q\,
	datab => \dht22_one_wire|pw[5]~10_combout\,
	datac => \dht22_one_wire|pw[10]~20_combout\,
	datad => \dht22_one_wire|pw[7]~14_combout\,
	combout => \dht22_one_wire|Selector5~6_combout\);

-- Location: LCCOMB_X25_Y16_N0
\dht22_one_wire|Selector5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector5~7_combout\ = (!\dht22_one_wire|pw[16]~32_combout\ & (\dht22_one_wire|Selector5~6_combout\ & \dht22_one_wire|Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|pw[16]~32_combout\,
	datac => \dht22_one_wire|Selector5~6_combout\,
	datad => \dht22_one_wire|Equal4~0_combout\,
	combout => \dht22_one_wire|Selector5~7_combout\);

-- Location: LCCOMB_X25_Y16_N6
\dht22_one_wire|Selector5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector5~8_combout\ = (!\dht22_one_wire|pw[18]~36_combout\ & (\dht22_one_wire|LessThan0~0_combout\ & (!\dht22_one_wire|pw[19]~38_combout\ & \dht22_one_wire|Selector5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|pw[18]~36_combout\,
	datab => \dht22_one_wire|LessThan0~0_combout\,
	datac => \dht22_one_wire|pw[19]~38_combout\,
	datad => \dht22_one_wire|Selector5~7_combout\,
	combout => \dht22_one_wire|Selector5~8_combout\);

-- Location: LCCOMB_X26_Y16_N8
\dht22_one_wire|Selector5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector5~9_combout\ = (\dht22_one_wire|Selector5~4_combout\) # ((\dht22_one_wire|Selector5~5_combout\ & (\dht22_one_wire|Selector5~8_combout\ & \dht22_one_wire|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Selector5~5_combout\,
	datab => \dht22_one_wire|Selector5~4_combout\,
	datac => \dht22_one_wire|Selector5~8_combout\,
	datad => \dht22_one_wire|Equal0~1_combout\,
	combout => \dht22_one_wire|Selector5~9_combout\);

-- Location: LCCOMB_X26_Y16_N20
\dht22_one_wire|Selector5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector5~14_combout\ = (\dht22_one_wire|Selector5~9_combout\) # (((\en_dht22~q\ & \dht22_one_wire|state.ST_CHECK~q\)) # (!\dht22_one_wire|Selector4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en_dht22~q\,
	datab => \dht22_one_wire|state.ST_CHECK~q\,
	datac => \dht22_one_wire|Selector5~9_combout\,
	datad => \dht22_one_wire|Selector4~2_combout\,
	combout => \dht22_one_wire|Selector5~14_combout\);

-- Location: LCCOMB_X26_Y16_N24
\dht22_one_wire|Selector5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector5~13_combout\ = (\dht22_one_wire|Selector1~4_combout\ & (((\dht22_one_wire|state.ST_PROCESS~q\ & !\dht22_one_wire|Selector5~14_combout\)))) # (!\dht22_one_wire|Selector1~4_combout\ & ((\dht22_one_wire|state.ST_SAMPLE~q\) # 
-- ((\dht22_one_wire|state.ST_PROCESS~q\ & !\dht22_one_wire|Selector5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Selector1~4_combout\,
	datab => \dht22_one_wire|state.ST_SAMPLE~q\,
	datac => \dht22_one_wire|state.ST_PROCESS~q\,
	datad => \dht22_one_wire|Selector5~14_combout\,
	combout => \dht22_one_wire|Selector5~13_combout\);

-- Location: FF_X26_Y16_N25
\dht22_one_wire|state.ST_PROCESS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|Selector5~13_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|state.ST_PROCESS~q\);

-- Location: LCCOMB_X29_Y16_N28
\dht22_one_wire|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal3~2_combout\ = (!\dht22_one_wire|index_reg\(4) & \dht22_one_wire|index_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_one_wire|index_reg\(4),
	datad => \dht22_one_wire|index_reg\(5),
	combout => \dht22_one_wire|Equal3~2_combout\);

-- Location: LCCOMB_X29_Y16_N12
\dht22_one_wire|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector6~0_combout\ = (\dht22_one_wire|state.ST_PROCESS~q\ & (\dht22_one_wire|Equal3~2_combout\ & (!\dht22_one_wire|index_reg\(0) & \dht22_one_wire|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_PROCESS~q\,
	datab => \dht22_one_wire|Equal3~2_combout\,
	datac => \dht22_one_wire|index_reg\(0),
	datad => \dht22_one_wire|Equal3~0_combout\,
	combout => \dht22_one_wire|Selector6~0_combout\);

-- Location: LCCOMB_X26_Y16_N6
\dht22_one_wire|Selector4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector4~3_combout\ = (!\dht22_one_wire|Selector5~3_combout\ & (!\dht22_one_wire|Selector6~0_combout\ & (\dht22_one_wire|Selector5~9_combout\ & \dht22_one_wire|Selector4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Selector5~3_combout\,
	datab => \dht22_one_wire|Selector6~0_combout\,
	datac => \dht22_one_wire|Selector5~9_combout\,
	datad => \dht22_one_wire|Selector4~2_combout\,
	combout => \dht22_one_wire|Selector4~3_combout\);

-- Location: FF_X26_Y16_N7
\dht22_one_wire|state.ST_SAMPLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|Selector4~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|state.ST_SAMPLE~q\);

-- Location: LCCOMB_X28_Y16_N18
\dht22_one_wire|stamp_reg[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|stamp_reg[5]~2_combout\ = ((\dht22_one_wire|old_io_reg~q\) # (!\dht22_one_wire|state.ST_PROCESS~q\)) # (!\dht22_one_wire|new_io_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|new_io_reg~q\,
	datab => \dht22_one_wire|old_io_reg~q\,
	datac => \dht22_one_wire|state.ST_PROCESS~q\,
	combout => \dht22_one_wire|stamp_reg[5]~2_combout\);

-- Location: LCCOMB_X25_Y16_N14
\dht22_one_wire|stamp_reg[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|stamp_reg[5]~3_combout\ = (\dht22_one_wire|state.ST_PRE_ACK~q\) # ((\dht22_one_wire|stamp_reg[5]~2_combout\ & ((!\dht22_one_wire|Selector5~8_combout\) # (!\dht22_one_wire|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_PRE_ACK~q\,
	datab => \dht22_one_wire|stamp_reg[5]~2_combout\,
	datac => \dht22_one_wire|Equal0~1_combout\,
	datad => \dht22_one_wire|Selector5~8_combout\,
	combout => \dht22_one_wire|stamp_reg[5]~3_combout\);

-- Location: LCCOMB_X25_Y16_N18
\dht22_one_wire|stamp_reg[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|stamp_reg[5]~4_combout\ = (\dht22_one_wire|state.ST_START~q\ & (((!\dht22_one_wire|Equal0~6_combout\)))) # (!\dht22_one_wire|state.ST_START~q\ & (\dht22_one_wire|stamp_reg[5]~3_combout\ & (!\dht22_one_wire|Selector5~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_START~q\,
	datab => \dht22_one_wire|stamp_reg[5]~3_combout\,
	datac => \dht22_one_wire|Selector5~12_combout\,
	datad => \dht22_one_wire|Equal0~6_combout\,
	combout => \dht22_one_wire|stamp_reg[5]~4_combout\);

-- Location: LCCOMB_X25_Y16_N12
\dht22_one_wire|stamp_reg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|stamp_reg[5]~5_combout\ = (\dht22_one_wire|state.ST_IDLE~q\ & ((\dht22_one_wire|stamp_reg[5]~4_combout\))) # (!\dht22_one_wire|state.ST_IDLE~q\ & (\en_dht22~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_IDLE~q\,
	datac => \en_dht22~q\,
	datad => \dht22_one_wire|stamp_reg[5]~4_combout\,
	combout => \dht22_one_wire|stamp_reg[5]~5_combout\);

-- Location: LCCOMB_X25_Y16_N26
\dht22_one_wire|stamp_reg[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|stamp_reg[5]~6_combout\ = (!\dht22_one_wire|state.ST_SAMPLE~q\ & (!\dht22_one_wire|state.ST_CHECK~q\ & (!\dht22_one_wire|state.ST_DONE~q\ & !\dht22_one_wire|stamp_reg[5]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_SAMPLE~q\,
	datab => \dht22_one_wire|state.ST_CHECK~q\,
	datac => \dht22_one_wire|state.ST_DONE~q\,
	datad => \dht22_one_wire|stamp_reg[5]~5_combout\,
	combout => \dht22_one_wire|stamp_reg[5]~6_combout\);

-- Location: FF_X24_Y17_N19
\dht22_one_wire|stamp_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_one_wire|clks_reg\(3),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_one_wire|stamp_reg[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|stamp_reg\(3));

-- Location: LCCOMB_X26_Y16_N12
\dht22_one_wire|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector7~0_combout\ = (!\dht22_one_wire|pw[3]~6_combout\ & (\dht22_one_wire|state.ST_DONE~q\ & (!\dht22_one_wire|pw[2]~4_combout\ & !\dht22_one_wire|pw[9]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|pw[3]~6_combout\,
	datab => \dht22_one_wire|state.ST_DONE~q\,
	datac => \dht22_one_wire|pw[2]~4_combout\,
	datad => \dht22_one_wire|pw[9]~18_combout\,
	combout => \dht22_one_wire|Selector7~0_combout\);

-- Location: LCCOMB_X23_Y16_N24
\dht22_one_wire|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector7~1_combout\ = (\dht22_one_wire|pw[11]~22_combout\ & !\dht22_one_wire|pw[10]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|pw[11]~22_combout\,
	datac => \dht22_one_wire|pw[10]~20_combout\,
	combout => \dht22_one_wire|Selector7~1_combout\);

-- Location: LCCOMB_X26_Y16_N18
\dht22_one_wire|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector7~2_combout\ = (\dht22_one_wire|Selector7~0_combout\ & (!\dht22_one_wire|pw[12]~24_combout\ & (\dht22_one_wire|Selector7~1_combout\ & \dht22_one_wire|Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Selector7~0_combout\,
	datab => \dht22_one_wire|pw[12]~24_combout\,
	datac => \dht22_one_wire|Selector7~1_combout\,
	datad => \dht22_one_wire|Equal4~3_combout\,
	combout => \dht22_one_wire|Selector7~2_combout\);

-- Location: LCCOMB_X26_Y16_N28
\dht22_one_wire|Selector7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector7~3_combout\ = (\dht22_one_wire|Selector1~4_combout\ & (((\dht22_one_wire|state.ST_CHECK~q\ & !\dht22_one_wire|Selector5~14_combout\)))) # (!\dht22_one_wire|Selector1~4_combout\ & ((\dht22_one_wire|Selector7~2_combout\) # 
-- ((\dht22_one_wire|state.ST_CHECK~q\ & !\dht22_one_wire|Selector5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Selector1~4_combout\,
	datab => \dht22_one_wire|Selector7~2_combout\,
	datac => \dht22_one_wire|state.ST_CHECK~q\,
	datad => \dht22_one_wire|Selector5~14_combout\,
	combout => \dht22_one_wire|Selector7~3_combout\);

-- Location: FF_X26_Y16_N29
\dht22_one_wire|state.ST_CHECK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|Selector7~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|state.ST_CHECK~q\);

-- Location: LCCOMB_X28_Y16_N28
\dht22_one_wire|done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|done~0_combout\ = (\dht22_one_wire|state.ST_CHECK~q\) # (\dht22_one_wire|state.ST_DONE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_CHECK~q\,
	datac => \dht22_one_wire|state.ST_DONE~q\,
	combout => \dht22_one_wire|done~0_combout\);

-- Location: LCCOMB_X23_Y14_N6
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_cout\ = CARRY((\dht22_one_wire|clks_reg\(1) & \dht22_one_wire|clks_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks_reg\(1),
	datab => \dht22_one_wire|clks_reg\(0),
	datad => VCC,
	cout => \Add0~1_cout\);

-- Location: LCCOMB_X23_Y14_N8
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_cout\ = CARRY((!\Add0~1_cout\) # (!\dht22_one_wire|clks_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks_reg\(2),
	datad => VCC,
	cin => \Add0~1_cout\,
	cout => \Add0~3_cout\);

-- Location: LCCOMB_X23_Y14_N10
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_cout\ = CARRY((\dht22_one_wire|clks_reg\(3) & !\Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks_reg\(3),
	datad => VCC,
	cin => \Add0~3_cout\,
	cout => \Add0~5_cout\);

-- Location: LCCOMB_X23_Y14_N12
\Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~7_cout\ = CARRY((!\Add0~5_cout\) # (!\dht22_one_wire|clks_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks_reg\(4),
	datad => VCC,
	cin => \Add0~5_cout\,
	cout => \Add0~7_cout\);

-- Location: LCCOMB_X23_Y14_N14
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_cout\ = CARRY((\dht22_one_wire|clks_reg\(5) & !\Add0~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|clks_reg\(5),
	datad => VCC,
	cin => \Add0~7_cout\,
	cout => \Add0~9_cout\);

-- Location: LCCOMB_X23_Y14_N16
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_cout\ = CARRY((!\Add0~9_cout\) # (!\dht22_one_wire|clks_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|clks_reg\(6),
	datad => VCC,
	cin => \Add0~9_cout\,
	cout => \Add0~11_cout\);

-- Location: LCCOMB_X23_Y14_N18
\Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~13_cout\ = CARRY((\dht22_one_wire|clks_reg\(7) & !\Add0~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|clks_reg\(7),
	datad => VCC,
	cin => \Add0~11_cout\,
	cout => \Add0~13_cout\);

-- Location: LCCOMB_X23_Y14_N20
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (dht22_count(8) & (!\Add0~13_cout\)) # (!dht22_count(8) & ((\Add0~13_cout\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13_cout\) # (!dht22_count(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dht22_count(8),
	datad => VCC,
	cin => \Add0~13_cout\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X23_Y14_N2
\dht22_count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_count~11_combout\ = (!\Equal0~7_combout\ & \Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~14_combout\,
	combout => \dht22_count~11_combout\);

-- Location: FF_X23_Y14_N3
\dht22_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_count~11_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dht22_count(8));

-- Location: LCCOMB_X23_Y14_N22
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (dht22_count(9) & (\Add0~15\ $ (GND))) # (!dht22_count(9) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((dht22_count(9) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dht22_count(9),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X23_Y14_N23
\dht22_count[9]\ : dffeas
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
	q => dht22_count(9));

-- Location: LCCOMB_X23_Y14_N24
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (dht22_count(10) & (!\Add0~17\)) # (!dht22_count(10) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!dht22_count(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dht22_count(10),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X23_Y14_N25
\dht22_count[10]\ : dffeas
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
	q => dht22_count(10));

-- Location: LCCOMB_X23_Y14_N26
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (dht22_count(11) & (\Add0~19\ $ (GND))) # (!dht22_count(11) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((dht22_count(11) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dht22_count(11),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X23_Y14_N27
\dht22_count[11]\ : dffeas
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
	q => dht22_count(11));

-- Location: LCCOMB_X23_Y14_N28
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (dht22_count(12) & (!\Add0~21\)) # (!dht22_count(12) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!dht22_count(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dht22_count(12),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X23_Y14_N29
\dht22_count[12]\ : dffeas
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
	q => dht22_count(12));

-- Location: LCCOMB_X23_Y14_N30
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (dht22_count(13) & (\Add0~23\ $ (GND))) # (!dht22_count(13) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((dht22_count(13) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dht22_count(13),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X24_Y14_N4
\dht22_count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_count~10_combout\ = (!\Equal0~7_combout\ & \Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datad => \Add0~24_combout\,
	combout => \dht22_count~10_combout\);

-- Location: FF_X24_Y14_N5
\dht22_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_count~10_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dht22_count(13));

-- Location: LCCOMB_X23_Y13_N0
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (dht22_count(14) & (!\Add0~25\)) # (!dht22_count(14) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!dht22_count(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dht22_count(14),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X23_Y13_N28
\dht22_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_count~9_combout\ = (!\Equal0~7_combout\ & \Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~26_combout\,
	combout => \dht22_count~9_combout\);

-- Location: FF_X23_Y13_N29
\dht22_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_count~9_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dht22_count(14));

-- Location: LCCOMB_X23_Y13_N2
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (dht22_count(15) & (\Add0~27\ $ (GND))) # (!dht22_count(15) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((dht22_count(15) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dht22_count(15),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X22_Y13_N16
\dht22_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_count~8_combout\ = (\Add0~28_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datad => \Equal0~7_combout\,
	combout => \dht22_count~8_combout\);

-- Location: FF_X22_Y13_N17
\dht22_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_count~8_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dht22_count(15));

-- Location: LCCOMB_X23_Y13_N4
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (dht22_count(16) & (!\Add0~29\)) # (!dht22_count(16) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!dht22_count(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dht22_count(16),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X22_Y13_N6
\dht22_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_count~7_combout\ = (\Add0~30_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datad => \Equal0~7_combout\,
	combout => \dht22_count~7_combout\);

-- Location: FF_X22_Y13_N7
\dht22_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_count~7_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dht22_count(16));

-- Location: LCCOMB_X23_Y13_N6
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (dht22_count(17) & (\Add0~31\ $ (GND))) # (!dht22_count(17) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((dht22_count(17) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dht22_count(17),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X23_Y13_N7
\dht22_count[17]\ : dffeas
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
	q => dht22_count(17));

-- Location: LCCOMB_X23_Y13_N8
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (dht22_count(18) & (!\Add0~33\)) # (!dht22_count(18) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!dht22_count(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dht22_count(18),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X22_Y13_N28
\dht22_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_count~6_combout\ = (\Add0~34_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~34_combout\,
	datad => \Equal0~7_combout\,
	combout => \dht22_count~6_combout\);

-- Location: FF_X22_Y13_N29
\dht22_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_count~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dht22_count(18));

-- Location: LCCOMB_X23_Y13_N10
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (dht22_count(19) & (\Add0~35\ $ (GND))) # (!dht22_count(19) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((dht22_count(19) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dht22_count(19),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X23_Y13_N11
\dht22_count[19]\ : dffeas
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
	q => dht22_count(19));

-- Location: LCCOMB_X23_Y13_N12
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (dht22_count(20) & (!\Add0~37\)) # (!dht22_count(20) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!dht22_count(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dht22_count(20),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X22_Y13_N0
\dht22_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_count~5_combout\ = (\Add0~38_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~38_combout\,
	datad => \Equal0~7_combout\,
	combout => \dht22_count~5_combout\);

-- Location: FF_X22_Y13_N1
\dht22_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_count~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dht22_count(20));

-- Location: LCCOMB_X23_Y13_N14
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (dht22_count(21) & (\Add0~39\ $ (GND))) # (!dht22_count(21) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((dht22_count(21) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dht22_count(21),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X22_Y13_N18
\dht22_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_count~4_combout\ = (\Add0~40_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~40_combout\,
	datad => \Equal0~7_combout\,
	combout => \dht22_count~4_combout\);

-- Location: FF_X22_Y13_N19
\dht22_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_count~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dht22_count(21));

-- Location: LCCOMB_X23_Y13_N16
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (dht22_count(22) & (!\Add0~41\)) # (!dht22_count(22) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!dht22_count(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dht22_count(22),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X22_Y13_N12
\dht22_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_count~3_combout\ = (\Add0~42_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~42_combout\,
	datad => \Equal0~7_combout\,
	combout => \dht22_count~3_combout\);

-- Location: FF_X22_Y13_N13
\dht22_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_count~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dht22_count(22));

-- Location: LCCOMB_X23_Y13_N18
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (dht22_count(23) & (\Add0~43\ $ (GND))) # (!dht22_count(23) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((dht22_count(23) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dht22_count(23),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X22_Y13_N24
\dht22_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_count~2_combout\ = (\Add0~44_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~44_combout\,
	datad => \Equal0~7_combout\,
	combout => \dht22_count~2_combout\);

-- Location: FF_X22_Y13_N25
\dht22_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_count~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dht22_count(23));

-- Location: LCCOMB_X23_Y13_N20
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (dht22_count(24) & (!\Add0~45\)) # (!dht22_count(24) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!dht22_count(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dht22_count(24),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X23_Y13_N30
\dht22_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_count~1_combout\ = (!\Equal0~7_combout\ & \Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~46_combout\,
	combout => \dht22_count~1_combout\);

-- Location: FF_X23_Y13_N31
\dht22_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_count~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dht22_count(24));

-- Location: LCCOMB_X23_Y13_N22
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (dht22_count(25) & (\Add0~47\ $ (GND))) # (!dht22_count(25) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((dht22_count(25) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dht22_count(25),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X23_Y13_N23
\dht22_count[25]\ : dffeas
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
	q => dht22_count(25));

-- Location: LCCOMB_X23_Y13_N24
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = \Add0~49\ $ (dht22_count(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => dht22_count(26),
	cin => \Add0~49\,
	combout => \Add0~50_combout\);

-- Location: LCCOMB_X22_Y13_N14
\dht22_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_count~0_combout\ = (\Add0~50_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~50_combout\,
	datad => \Equal0~7_combout\,
	combout => \dht22_count~0_combout\);

-- Location: FF_X22_Y13_N15
\dht22_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_count~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dht22_count(26));

-- Location: LCCOMB_X22_Y13_N26
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (dht22_count(24) & (dht22_count(23) & (dht22_count(26) & !dht22_count(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dht22_count(24),
	datab => dht22_count(23),
	datac => dht22_count(26),
	datad => dht22_count(25),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X22_Y13_N2
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (dht22_count(22) & (dht22_count(20) & (!dht22_count(19) & dht22_count(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dht22_count(22),
	datab => dht22_count(20),
	datac => dht22_count(19),
	datad => dht22_count(21),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X22_Y13_N10
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (dht22_count(16) & (dht22_count(18) & (dht22_count(15) & !dht22_count(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dht22_count(16),
	datab => dht22_count(18),
	datac => dht22_count(15),
	datad => dht22_count(17),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X23_Y17_N6
\display|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~0_combout\ = (\dht22_one_wire|clks_reg\(1) & (\dht22_one_wire|clks_reg\(0) & (\dht22_one_wire|clks_reg\(3) & \dht22_one_wire|clks_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks_reg\(1),
	datab => \dht22_one_wire|clks_reg\(0),
	datac => \dht22_one_wire|clks_reg\(3),
	datad => \dht22_one_wire|clks_reg\(2),
	combout => \display|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y13_N8
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \display|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \display|Equal0~0_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X23_Y14_N4
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (dht22_count(14) & (!dht22_count(12) & (!dht22_count(11) & dht22_count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dht22_count(14),
	datab => dht22_count(12),
	datac => dht22_count(11),
	datad => dht22_count(13),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X23_Y14_N0
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!dht22_count(9) & (!dht22_count(8) & (\dht22_one_wire|clks_reg\(4) & !dht22_count(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dht22_count(9),
	datab => dht22_count(8),
	datac => \dht22_one_wire|clks_reg\(4),
	datad => dht22_count(10),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X23_Y17_N0
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\dht22_one_wire|clks_reg\(5) & (\dht22_one_wire|clks_reg\(7) & \dht22_one_wire|clks_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks_reg\(5),
	datac => \dht22_one_wire|clks_reg\(7),
	datad => \dht22_one_wire|clks_reg\(6),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X23_Y13_N26
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

-- Location: FF_X28_Y16_N29
en_dht22 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|done~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \en_dht22~q\);

-- Location: LCCOMB_X26_Y16_N26
\dht22_one_wire|Selector1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector1~4_combout\ = (\en_dht22~q\ & ((\dht22_one_wire|state.ST_CHECK~q\) # ((!\dht22_one_wire|Selector5~9_combout\ & \dht22_one_wire|Selector4~2_combout\)))) # (!\en_dht22~q\ & (((!\dht22_one_wire|Selector5~9_combout\ & 
-- \dht22_one_wire|Selector4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en_dht22~q\,
	datab => \dht22_one_wire|state.ST_CHECK~q\,
	datac => \dht22_one_wire|Selector5~9_combout\,
	datad => \dht22_one_wire|Selector4~2_combout\,
	combout => \dht22_one_wire|Selector1~4_combout\);

-- Location: LCCOMB_X28_Y16_N2
\dht22_one_wire|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector1~2_combout\ = (!\dht22_one_wire|state.ST_IDLE~q\ & !\en_dht22~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|state.ST_IDLE~q\,
	datad => \en_dht22~q\,
	combout => \dht22_one_wire|Selector1~2_combout\);

-- Location: LCCOMB_X26_Y16_N10
\dht22_one_wire|Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector1~3_combout\ = (\dht22_one_wire|Selector1~4_combout\ & (((\dht22_one_wire|state.ST_START~q\ & !\dht22_one_wire|Selector5~14_combout\)))) # (!\dht22_one_wire|Selector1~4_combout\ & ((\dht22_one_wire|Selector1~2_combout\) # 
-- ((\dht22_one_wire|state.ST_START~q\ & !\dht22_one_wire|Selector5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Selector1~4_combout\,
	datab => \dht22_one_wire|Selector1~2_combout\,
	datac => \dht22_one_wire|state.ST_START~q\,
	datad => \dht22_one_wire|Selector5~14_combout\,
	combout => \dht22_one_wire|Selector1~3_combout\);

-- Location: FF_X26_Y16_N11
\dht22_one_wire|state.ST_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|Selector1~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|state.ST_START~q\);

-- Location: LCCOMB_X26_Y16_N14
\dht22_one_wire|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector8~0_combout\ = (!\dht22_one_wire|io_reg~q\ & ((\dht22_one_wire|state.ST_START~q\) # ((\dht22_one_wire|state.ST_DONE~q\) # (!\dht22_one_wire|Selector1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_START~q\,
	datab => \dht22_one_wire|io_reg~q\,
	datac => \dht22_one_wire|state.ST_DONE~q\,
	datad => \dht22_one_wire|Selector1~2_combout\,
	combout => \dht22_one_wire|Selector8~0_combout\);

-- Location: LCCOMB_X26_Y16_N4
\dht22_one_wire|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Selector8~1_combout\ = (!\dht22_one_wire|Selector8~0_combout\ & (!\dht22_one_wire|Selector7~2_combout\ & ((!\dht22_one_wire|Equal0~6_combout\) # (!\dht22_one_wire|state.ST_START~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_START~q\,
	datab => \dht22_one_wire|Selector8~0_combout\,
	datac => \dht22_one_wire|Equal0~6_combout\,
	datad => \dht22_one_wire|Selector7~2_combout\,
	combout => \dht22_one_wire|Selector8~1_combout\);

-- Location: FF_X26_Y16_N5
\dht22_one_wire|io_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|Selector8~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|io_reg~q\);

-- Location: LCCOMB_X19_Y16_N2
\dht22_one_wire|Decoder0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~20_combout\ = (\dht22_one_wire|index_reg\(1) & (\dht22_one_wire|index_reg\(3) & !\dht22_one_wire|index_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|index_reg\(1),
	datac => \dht22_one_wire|index_reg\(3),
	datad => \dht22_one_wire|index_reg\(2),
	combout => \dht22_one_wire|Decoder0~20_combout\);

-- Location: LCCOMB_X28_Y16_N30
\dht22_one_wire|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~6_combout\ = (\dht22_one_wire|state.ST_PROCESS~q\ & (\dht22_one_wire|index_reg\(4) & (\dht22_one_wire|Decoder0~1_combout\ & !\dht22_one_wire|index_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_PROCESS~q\,
	datab => \dht22_one_wire|index_reg\(4),
	datac => \dht22_one_wire|Decoder0~1_combout\,
	datad => \dht22_one_wire|index_reg\(5),
	combout => \dht22_one_wire|Decoder0~6_combout\);

-- Location: LCCOMB_X21_Y16_N22
\dht22_one_wire|Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~9_combout\ = (\dht22_one_wire|Decoder0~6_combout\ & \dht22_one_wire|index_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_one_wire|Decoder0~6_combout\,
	datad => \dht22_one_wire|index_reg\(0),
	combout => \dht22_one_wire|Decoder0~9_combout\);

-- Location: LCCOMB_X23_Y16_N26
\dht22_one_wire|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|LessThan0~1_combout\ = (\dht22_one_wire|pw[12]~24_combout\) # ((\dht22_one_wire|pw[11]~22_combout\ & ((\dht22_one_wire|pw[10]~20_combout\) # (\dht22_one_wire|pw[9]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|pw[12]~24_combout\,
	datab => \dht22_one_wire|pw[11]~22_combout\,
	datac => \dht22_one_wire|pw[10]~20_combout\,
	datad => \dht22_one_wire|pw[9]~18_combout\,
	combout => \dht22_one_wire|LessThan0~1_combout\);

-- Location: LCCOMB_X24_Y17_N4
\dht22_one_wire|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|LessThan0~3_combout\ = (\dht22_one_wire|pw[7]~14_combout\ & \dht22_one_wire|pw[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|pw[7]~14_combout\,
	datad => \dht22_one_wire|pw[6]~12_combout\,
	combout => \dht22_one_wire|LessThan0~3_combout\);

-- Location: LCCOMB_X24_Y17_N10
\dht22_one_wire|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|LessThan0~2_combout\ = (\dht22_one_wire|pw[3]~6_combout\) # ((\dht22_one_wire|pw[4]~8_combout\) # ((\dht22_one_wire|pw[5]~10_combout\) # (\dht22_one_wire|pw[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|pw[3]~6_combout\,
	datab => \dht22_one_wire|pw[4]~8_combout\,
	datac => \dht22_one_wire|pw[5]~10_combout\,
	datad => \dht22_one_wire|pw[2]~4_combout\,
	combout => \dht22_one_wire|LessThan0~2_combout\);

-- Location: LCCOMB_X24_Y17_N2
\dht22_one_wire|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|LessThan0~4_combout\ = (\dht22_one_wire|pw[11]~22_combout\ & (\dht22_one_wire|LessThan0~3_combout\ & (\dht22_one_wire|LessThan0~2_combout\ & \dht22_one_wire|pw[8]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|pw[11]~22_combout\,
	datab => \dht22_one_wire|LessThan0~3_combout\,
	datac => \dht22_one_wire|LessThan0~2_combout\,
	datad => \dht22_one_wire|pw[8]~16_combout\,
	combout => \dht22_one_wire|LessThan0~4_combout\);

-- Location: LCCOMB_X24_Y16_N20
\dht22_one_wire|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|LessThan0~5_combout\ = (!\dht22_one_wire|pw[18]~36_combout\ & (!\dht22_one_wire|pw[19]~38_combout\ & !\dht22_one_wire|pw[16]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|pw[18]~36_combout\,
	datac => \dht22_one_wire|pw[19]~38_combout\,
	datad => \dht22_one_wire|pw[16]~32_combout\,
	combout => \dht22_one_wire|LessThan0~5_combout\);

-- Location: LCCOMB_X24_Y16_N22
\dht22_one_wire|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|LessThan0~6_combout\ = (\dht22_one_wire|LessThan0~1_combout\) # (((\dht22_one_wire|LessThan0~4_combout\) # (!\dht22_one_wire|LessThan0~5_combout\)) # (!\dht22_one_wire|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|LessThan0~1_combout\,
	datab => \dht22_one_wire|LessThan0~0_combout\,
	datac => \dht22_one_wire|LessThan0~4_combout\,
	datad => \dht22_one_wire|LessThan0~5_combout\,
	combout => \dht22_one_wire|LessThan0~6_combout\);

-- Location: LCCOMB_X19_Y17_N20
\dht22_one_wire|data_reg[27]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[27]~24_combout\ = (\dht22_one_wire|Decoder0~20_combout\ & ((\dht22_one_wire|Decoder0~9_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~9_combout\ & (\dht22_one_wire|data_reg\(27))))) # 
-- (!\dht22_one_wire|Decoder0~20_combout\ & (((\dht22_one_wire|data_reg\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~20_combout\,
	datab => \dht22_one_wire|Decoder0~9_combout\,
	datac => \dht22_one_wire|data_reg\(27),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[27]~24_combout\);

-- Location: FF_X19_Y17_N21
\dht22_one_wire|data_reg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[27]~24_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(27));

-- Location: LCCOMB_X19_Y16_N20
\dht22_one_wire|Decoder0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~21_combout\ = (\dht22_one_wire|index_reg\(1) & (!\dht22_one_wire|index_reg\(3) & !\dht22_one_wire|index_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|index_reg\(1),
	datac => \dht22_one_wire|index_reg\(3),
	datad => \dht22_one_wire|index_reg\(2),
	combout => \dht22_one_wire|Decoder0~21_combout\);

-- Location: LCCOMB_X22_Y17_N0
\dht22_one_wire|data_reg[19]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[19]~25_combout\ = (\dht22_one_wire|Decoder0~21_combout\ & ((\dht22_one_wire|Decoder0~9_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~9_combout\ & (\dht22_one_wire|data_reg\(19))))) # 
-- (!\dht22_one_wire|Decoder0~21_combout\ & (((\dht22_one_wire|data_reg\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~21_combout\,
	datab => \dht22_one_wire|Decoder0~9_combout\,
	datac => \dht22_one_wire|data_reg\(19),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[19]~25_combout\);

-- Location: FF_X22_Y17_N1
\dht22_one_wire|data_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[19]~25_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(19));

-- Location: LCCOMB_X21_Y16_N12
\dht22_one_wire|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~7_combout\ = (\dht22_one_wire|Decoder0~6_combout\ & !\dht22_one_wire|index_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_one_wire|Decoder0~6_combout\,
	datad => \dht22_one_wire|index_reg\(0),
	combout => \dht22_one_wire|Decoder0~7_combout\);

-- Location: LCCOMB_X19_Y16_N0
\dht22_one_wire|Decoder0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~16_combout\ = (!\dht22_one_wire|index_reg\(1) & (!\dht22_one_wire|index_reg\(3) & \dht22_one_wire|index_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|index_reg\(1),
	datac => \dht22_one_wire|index_reg\(3),
	datad => \dht22_one_wire|index_reg\(2),
	combout => \dht22_one_wire|Decoder0~16_combout\);

-- Location: LCCOMB_X17_Y17_N28
\dht22_one_wire|data_reg[20]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[20]~13_combout\ = (\dht22_one_wire|Decoder0~7_combout\ & ((\dht22_one_wire|Decoder0~16_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~16_combout\ & (\dht22_one_wire|data_reg\(20))))) # 
-- (!\dht22_one_wire|Decoder0~7_combout\ & (((\dht22_one_wire|data_reg\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~7_combout\,
	datab => \dht22_one_wire|Decoder0~16_combout\,
	datac => \dht22_one_wire|data_reg\(20),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[20]~13_combout\);

-- Location: FF_X17_Y17_N29
\dht22_one_wire|data_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[20]~13_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(20));

-- Location: LCCOMB_X19_Y16_N26
\dht22_one_wire|Decoder0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~15_combout\ = (!\dht22_one_wire|index_reg\(1) & (\dht22_one_wire|index_reg\(3) & \dht22_one_wire|index_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|index_reg\(1),
	datac => \dht22_one_wire|index_reg\(3),
	datad => \dht22_one_wire|index_reg\(2),
	combout => \dht22_one_wire|Decoder0~15_combout\);

-- Location: LCCOMB_X18_Y16_N16
\dht22_one_wire|data_reg[28]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[28]~12_combout\ = (\dht22_one_wire|Decoder0~7_combout\ & ((\dht22_one_wire|Decoder0~15_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~15_combout\ & (\dht22_one_wire|data_reg\(28))))) # 
-- (!\dht22_one_wire|Decoder0~7_combout\ & (((\dht22_one_wire|data_reg\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~7_combout\,
	datab => \dht22_one_wire|Decoder0~15_combout\,
	datac => \dht22_one_wire|data_reg\(28),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[28]~12_combout\);

-- Location: FF_X18_Y16_N17
\dht22_one_wire|data_reg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[28]~12_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(28));

-- Location: LCCOMB_X19_Y16_N10
\dht22_one_wire|Decoder0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~17_combout\ = (\dht22_one_wire|index_reg\(3) & (!\dht22_one_wire|index_reg\(1) & (\dht22_one_wire|index_reg\(0) & \dht22_one_wire|index_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|index_reg\(3),
	datab => \dht22_one_wire|index_reg\(1),
	datac => \dht22_one_wire|index_reg\(0),
	datad => \dht22_one_wire|index_reg\(2),
	combout => \dht22_one_wire|Decoder0~17_combout\);

-- Location: LCCOMB_X19_Y17_N18
\dht22_one_wire|data_reg[29]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[29]~14_combout\ = (\dht22_one_wire|Decoder0~17_combout\ & ((\dht22_one_wire|Decoder0~6_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~6_combout\ & (\dht22_one_wire|data_reg\(29))))) # 
-- (!\dht22_one_wire|Decoder0~17_combout\ & (((\dht22_one_wire|data_reg\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~17_combout\,
	datab => \dht22_one_wire|Decoder0~6_combout\,
	datac => \dht22_one_wire|data_reg\(29),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[29]~14_combout\);

-- Location: FF_X19_Y17_N19
\dht22_one_wire|data_reg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[29]~14_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(29));

-- Location: LCCOMB_X19_Y16_N12
\dht22_one_wire|Decoder0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~18_combout\ = (!\dht22_one_wire|index_reg\(3) & (!\dht22_one_wire|index_reg\(1) & (\dht22_one_wire|index_reg\(0) & \dht22_one_wire|index_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|index_reg\(3),
	datab => \dht22_one_wire|index_reg\(1),
	datac => \dht22_one_wire|index_reg\(0),
	datad => \dht22_one_wire|index_reg\(2),
	combout => \dht22_one_wire|Decoder0~18_combout\);

-- Location: LCCOMB_X19_Y16_N8
\dht22_one_wire|data_reg[21]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[21]~15_combout\ = (\dht22_one_wire|Decoder0~18_combout\ & ((\dht22_one_wire|Decoder0~6_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~6_combout\ & (\dht22_one_wire|data_reg\(21))))) # 
-- (!\dht22_one_wire|Decoder0~18_combout\ & (((\dht22_one_wire|data_reg\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~18_combout\,
	datab => \dht22_one_wire|Decoder0~6_combout\,
	datac => \dht22_one_wire|data_reg\(21),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[21]~15_combout\);

-- Location: FF_X19_Y16_N9
\dht22_one_wire|data_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[21]~15_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(21));

-- Location: LCCOMB_X19_Y16_N4
\dht22_one_wire|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~8_combout\ = (\dht22_one_wire|index_reg\(1) & (!\dht22_one_wire|index_reg\(3) & \dht22_one_wire|index_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|index_reg\(1),
	datac => \dht22_one_wire|index_reg\(3),
	datad => \dht22_one_wire|index_reg\(2),
	combout => \dht22_one_wire|Decoder0~8_combout\);

-- Location: LCCOMB_X19_Y17_N8
\dht22_one_wire|data_reg[22]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[22]~3_combout\ = (\dht22_one_wire|Decoder0~8_combout\ & ((\dht22_one_wire|Decoder0~7_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~7_combout\ & (\dht22_one_wire|data_reg\(22))))) # 
-- (!\dht22_one_wire|Decoder0~8_combout\ & (((\dht22_one_wire|data_reg\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~8_combout\,
	datab => \dht22_one_wire|Decoder0~7_combout\,
	datac => \dht22_one_wire|data_reg\(22),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[22]~3_combout\);

-- Location: FF_X19_Y17_N9
\dht22_one_wire|data_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[22]~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(22));

-- Location: LCCOMB_X19_Y16_N6
\dht22_one_wire|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~5_combout\ = (\dht22_one_wire|index_reg\(1) & (\dht22_one_wire|index_reg\(3) & \dht22_one_wire|index_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|index_reg\(1),
	datac => \dht22_one_wire|index_reg\(3),
	datad => \dht22_one_wire|index_reg\(2),
	combout => \dht22_one_wire|Decoder0~5_combout\);

-- Location: LCCOMB_X22_Y16_N0
\dht22_one_wire|data_reg[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[30]~2_combout\ = (\dht22_one_wire|Decoder0~7_combout\ & ((\dht22_one_wire|Decoder0~5_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~5_combout\ & (\dht22_one_wire|data_reg\(30))))) # 
-- (!\dht22_one_wire|Decoder0~7_combout\ & (((\dht22_one_wire|data_reg\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~7_combout\,
	datab => \dht22_one_wire|Decoder0~5_combout\,
	datac => \dht22_one_wire|data_reg\(30),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[30]~2_combout\);

-- Location: FF_X22_Y16_N1
\dht22_one_wire|data_reg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[30]~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(30));

-- Location: LCCOMB_X22_Y17_N20
\dht22_one_wire|data_reg[23]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[23]~5_combout\ = (\dht22_one_wire|Decoder0~8_combout\ & ((\dht22_one_wire|Decoder0~9_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~9_combout\ & (\dht22_one_wire|data_reg\(23))))) # 
-- (!\dht22_one_wire|Decoder0~8_combout\ & (((\dht22_one_wire|data_reg\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~8_combout\,
	datab => \dht22_one_wire|Decoder0~9_combout\,
	datac => \dht22_one_wire|data_reg\(23),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[23]~5_combout\);

-- Location: FF_X22_Y17_N21
\dht22_one_wire|data_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[23]~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(23));

-- Location: LCCOMB_X22_Y16_N14
\dht22_one_wire|data_reg[31]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[31]~4_combout\ = (\dht22_one_wire|Decoder0~5_combout\ & ((\dht22_one_wire|Decoder0~9_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~9_combout\ & (\dht22_one_wire|data_reg\(31))))) # 
-- (!\dht22_one_wire|Decoder0~5_combout\ & (((\dht22_one_wire|data_reg\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~5_combout\,
	datab => \dht22_one_wire|Decoder0~9_combout\,
	datac => \dht22_one_wire|data_reg\(31),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[31]~4_combout\);

-- Location: FF_X22_Y16_N15
\dht22_one_wire|data_reg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[31]~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(31));

-- Location: LCCOMB_X22_Y17_N4
\dht22_one_wire|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add4~0_combout\ = (\dht22_one_wire|data_reg\(23) & (\dht22_one_wire|data_reg\(31) $ (VCC))) # (!\dht22_one_wire|data_reg\(23) & (\dht22_one_wire|data_reg\(31) & VCC))
-- \dht22_one_wire|Add4~1\ = CARRY((\dht22_one_wire|data_reg\(23) & \dht22_one_wire|data_reg\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_reg\(23),
	datab => \dht22_one_wire|data_reg\(31),
	datad => VCC,
	combout => \dht22_one_wire|Add4~0_combout\,
	cout => \dht22_one_wire|Add4~1\);

-- Location: LCCOMB_X22_Y17_N6
\dht22_one_wire|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add4~2_combout\ = (\dht22_one_wire|data_reg\(22) & ((\dht22_one_wire|data_reg\(30) & (\dht22_one_wire|Add4~1\ & VCC)) # (!\dht22_one_wire|data_reg\(30) & (!\dht22_one_wire|Add4~1\)))) # (!\dht22_one_wire|data_reg\(22) & 
-- ((\dht22_one_wire|data_reg\(30) & (!\dht22_one_wire|Add4~1\)) # (!\dht22_one_wire|data_reg\(30) & ((\dht22_one_wire|Add4~1\) # (GND)))))
-- \dht22_one_wire|Add4~3\ = CARRY((\dht22_one_wire|data_reg\(22) & (!\dht22_one_wire|data_reg\(30) & !\dht22_one_wire|Add4~1\)) # (!\dht22_one_wire|data_reg\(22) & ((!\dht22_one_wire|Add4~1\) # (!\dht22_one_wire|data_reg\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_reg\(22),
	datab => \dht22_one_wire|data_reg\(30),
	datad => VCC,
	cin => \dht22_one_wire|Add4~1\,
	combout => \dht22_one_wire|Add4~2_combout\,
	cout => \dht22_one_wire|Add4~3\);

-- Location: LCCOMB_X22_Y17_N8
\dht22_one_wire|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add4~4_combout\ = ((\dht22_one_wire|data_reg\(29) $ (\dht22_one_wire|data_reg\(21) $ (!\dht22_one_wire|Add4~3\)))) # (GND)
-- \dht22_one_wire|Add4~5\ = CARRY((\dht22_one_wire|data_reg\(29) & ((\dht22_one_wire|data_reg\(21)) # (!\dht22_one_wire|Add4~3\))) # (!\dht22_one_wire|data_reg\(29) & (\dht22_one_wire|data_reg\(21) & !\dht22_one_wire|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_reg\(29),
	datab => \dht22_one_wire|data_reg\(21),
	datad => VCC,
	cin => \dht22_one_wire|Add4~3\,
	combout => \dht22_one_wire|Add4~4_combout\,
	cout => \dht22_one_wire|Add4~5\);

-- Location: LCCOMB_X22_Y17_N10
\dht22_one_wire|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add4~6_combout\ = (\dht22_one_wire|data_reg\(20) & ((\dht22_one_wire|data_reg\(28) & (\dht22_one_wire|Add4~5\ & VCC)) # (!\dht22_one_wire|data_reg\(28) & (!\dht22_one_wire|Add4~5\)))) # (!\dht22_one_wire|data_reg\(20) & 
-- ((\dht22_one_wire|data_reg\(28) & (!\dht22_one_wire|Add4~5\)) # (!\dht22_one_wire|data_reg\(28) & ((\dht22_one_wire|Add4~5\) # (GND)))))
-- \dht22_one_wire|Add4~7\ = CARRY((\dht22_one_wire|data_reg\(20) & (!\dht22_one_wire|data_reg\(28) & !\dht22_one_wire|Add4~5\)) # (!\dht22_one_wire|data_reg\(20) & ((!\dht22_one_wire|Add4~5\) # (!\dht22_one_wire|data_reg\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_reg\(20),
	datab => \dht22_one_wire|data_reg\(28),
	datad => VCC,
	cin => \dht22_one_wire|Add4~5\,
	combout => \dht22_one_wire|Add4~6_combout\,
	cout => \dht22_one_wire|Add4~7\);

-- Location: LCCOMB_X22_Y17_N12
\dht22_one_wire|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add4~8_combout\ = ((\dht22_one_wire|data_reg\(27) $ (\dht22_one_wire|data_reg\(19) $ (!\dht22_one_wire|Add4~7\)))) # (GND)
-- \dht22_one_wire|Add4~9\ = CARRY((\dht22_one_wire|data_reg\(27) & ((\dht22_one_wire|data_reg\(19)) # (!\dht22_one_wire|Add4~7\))) # (!\dht22_one_wire|data_reg\(27) & (\dht22_one_wire|data_reg\(19) & !\dht22_one_wire|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_reg\(27),
	datab => \dht22_one_wire|data_reg\(19),
	datad => VCC,
	cin => \dht22_one_wire|Add4~7\,
	combout => \dht22_one_wire|Add4~8_combout\,
	cout => \dht22_one_wire|Add4~9\);

-- Location: LCCOMB_X28_Y16_N0
\dht22_one_wire|Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~10_combout\ = (\dht22_one_wire|state.ST_PROCESS~q\ & (!\dht22_one_wire|index_reg\(4) & (\dht22_one_wire|Decoder0~1_combout\ & !\dht22_one_wire|index_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|state.ST_PROCESS~q\,
	datab => \dht22_one_wire|index_reg\(4),
	datac => \dht22_one_wire|Decoder0~1_combout\,
	datad => \dht22_one_wire|index_reg\(5),
	combout => \dht22_one_wire|Decoder0~10_combout\);

-- Location: LCCOMB_X23_Y18_N0
\dht22_one_wire|Decoder0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~12_combout\ = (\dht22_one_wire|index_reg\(0) & \dht22_one_wire|Decoder0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_one_wire|index_reg\(0),
	datad => \dht22_one_wire|Decoder0~10_combout\,
	combout => \dht22_one_wire|Decoder0~12_combout\);

-- Location: LCCOMB_X19_Y16_N24
\dht22_one_wire|data_reg[11]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[11]~28_combout\ = (\dht22_one_wire|Decoder0~12_combout\ & ((\dht22_one_wire|Decoder0~20_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~20_combout\ & (\dht22_one_wire|data_reg\(11))))) # 
-- (!\dht22_one_wire|Decoder0~12_combout\ & (((\dht22_one_wire|data_reg\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~12_combout\,
	datab => \dht22_one_wire|Decoder0~20_combout\,
	datac => \dht22_one_wire|data_reg\(11),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[11]~28_combout\);

-- Location: FF_X19_Y16_N25
\dht22_one_wire|data_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[11]~28_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(11));

-- Location: LCCOMB_X22_Y18_N2
\dht22_one_wire|data_reg[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[3]~29_combout\ = (\dht22_one_wire|Decoder0~21_combout\ & ((\dht22_one_wire|Decoder0~12_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~12_combout\ & (\dht22_one_wire|data_reg\(3))))) # 
-- (!\dht22_one_wire|Decoder0~21_combout\ & (((\dht22_one_wire|data_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~21_combout\,
	datab => \dht22_one_wire|Decoder0~12_combout\,
	datac => \dht22_one_wire|data_reg\(3),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[3]~29_combout\);

-- Location: FF_X22_Y18_N3
\dht22_one_wire|data_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[3]~29_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(3));

-- Location: LCCOMB_X23_Y18_N30
\dht22_one_wire|Decoder0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~11_combout\ = (!\dht22_one_wire|index_reg\(0) & \dht22_one_wire|Decoder0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_one_wire|index_reg\(0),
	datad => \dht22_one_wire|Decoder0~10_combout\,
	combout => \dht22_one_wire|Decoder0~11_combout\);

-- Location: LCCOMB_X19_Y17_N28
\dht22_one_wire|data_reg[12]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[12]~16_combout\ = (\dht22_one_wire|Decoder0~11_combout\ & ((\dht22_one_wire|Decoder0~15_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~15_combout\ & (\dht22_one_wire|data_reg\(12))))) # 
-- (!\dht22_one_wire|Decoder0~11_combout\ & (((\dht22_one_wire|data_reg\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~11_combout\,
	datab => \dht22_one_wire|Decoder0~15_combout\,
	datac => \dht22_one_wire|data_reg\(12),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[12]~16_combout\);

-- Location: FF_X19_Y17_N29
\dht22_one_wire|data_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[12]~16_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(12));

-- Location: LCCOMB_X19_Y16_N14
\dht22_one_wire|data_reg[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[4]~17_combout\ = (\dht22_one_wire|Decoder0~11_combout\ & ((\dht22_one_wire|Decoder0~16_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~16_combout\ & (\dht22_one_wire|data_reg\(4))))) # 
-- (!\dht22_one_wire|Decoder0~11_combout\ & (((\dht22_one_wire|data_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~11_combout\,
	datab => \dht22_one_wire|Decoder0~16_combout\,
	datac => \dht22_one_wire|data_reg\(4),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[4]~17_combout\);

-- Location: FF_X19_Y16_N15
\dht22_one_wire|data_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[4]~17_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(4));

-- Location: LCCOMB_X19_Y16_N16
\dht22_one_wire|data_reg[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[5]~19_combout\ = (\dht22_one_wire|Decoder0~18_combout\ & ((\dht22_one_wire|Decoder0~10_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~10_combout\ & (\dht22_one_wire|data_reg\(5))))) # 
-- (!\dht22_one_wire|Decoder0~18_combout\ & (((\dht22_one_wire|data_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~18_combout\,
	datab => \dht22_one_wire|Decoder0~10_combout\,
	datac => \dht22_one_wire|data_reg\(5),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[5]~19_combout\);

-- Location: FF_X19_Y16_N17
\dht22_one_wire|data_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[5]~19_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(5));

-- Location: LCCOMB_X19_Y17_N30
\dht22_one_wire|data_reg[13]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[13]~18_combout\ = (\dht22_one_wire|Decoder0~17_combout\ & ((\dht22_one_wire|Decoder0~10_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~10_combout\ & (\dht22_one_wire|data_reg\(13))))) # 
-- (!\dht22_one_wire|Decoder0~17_combout\ & (((\dht22_one_wire|data_reg\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~17_combout\,
	datab => \dht22_one_wire|Decoder0~10_combout\,
	datac => \dht22_one_wire|data_reg\(13),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[13]~18_combout\);

-- Location: FF_X19_Y17_N31
\dht22_one_wire|data_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[13]~18_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(13));

-- Location: LCCOMB_X22_Y16_N8
\dht22_one_wire|data_reg[14]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[14]~6_combout\ = (\dht22_one_wire|Decoder0~11_combout\ & ((\dht22_one_wire|Decoder0~5_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~5_combout\ & (\dht22_one_wire|data_reg\(14))))) # 
-- (!\dht22_one_wire|Decoder0~11_combout\ & (((\dht22_one_wire|data_reg\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~11_combout\,
	datab => \dht22_one_wire|Decoder0~5_combout\,
	datac => \dht22_one_wire|data_reg\(14),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[14]~6_combout\);

-- Location: FF_X22_Y16_N9
\dht22_one_wire|data_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[14]~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(14));

-- Location: LCCOMB_X22_Y18_N28
\dht22_one_wire|data_reg[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[6]~7_combout\ = (\dht22_one_wire|Decoder0~11_combout\ & ((\dht22_one_wire|Decoder0~8_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~8_combout\ & (\dht22_one_wire|data_reg\(6))))) # 
-- (!\dht22_one_wire|Decoder0~11_combout\ & (((\dht22_one_wire|data_reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~11_combout\,
	datab => \dht22_one_wire|Decoder0~8_combout\,
	datac => \dht22_one_wire|data_reg\(6),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[6]~7_combout\);

-- Location: FF_X22_Y18_N29
\dht22_one_wire|data_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[6]~7_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(6));

-- Location: LCCOMB_X22_Y18_N10
\dht22_one_wire|data_reg[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[7]~9_combout\ = (\dht22_one_wire|Decoder0~8_combout\ & ((\dht22_one_wire|Decoder0~12_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~12_combout\ & (\dht22_one_wire|data_reg\(7))))) # 
-- (!\dht22_one_wire|Decoder0~8_combout\ & (((\dht22_one_wire|data_reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~8_combout\,
	datab => \dht22_one_wire|Decoder0~12_combout\,
	datac => \dht22_one_wire|data_reg\(7),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[7]~9_combout\);

-- Location: FF_X22_Y18_N11
\dht22_one_wire|data_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[7]~9_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(7));

-- Location: LCCOMB_X22_Y16_N18
\dht22_one_wire|data_reg[15]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[15]~8_combout\ = (\dht22_one_wire|Decoder0~12_combout\ & ((\dht22_one_wire|Decoder0~5_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~5_combout\ & (\dht22_one_wire|data_reg\(15))))) # 
-- (!\dht22_one_wire|Decoder0~12_combout\ & (((\dht22_one_wire|data_reg\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~12_combout\,
	datab => \dht22_one_wire|Decoder0~5_combout\,
	datac => \dht22_one_wire|data_reg\(15),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[15]~8_combout\);

-- Location: FF_X22_Y16_N19
\dht22_one_wire|data_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[15]~8_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(15));

-- Location: LCCOMB_X22_Y18_N12
\dht22_one_wire|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add3~0_combout\ = (\dht22_one_wire|data_reg\(7) & (\dht22_one_wire|data_reg\(15) $ (VCC))) # (!\dht22_one_wire|data_reg\(7) & (\dht22_one_wire|data_reg\(15) & VCC))
-- \dht22_one_wire|Add3~1\ = CARRY((\dht22_one_wire|data_reg\(7) & \dht22_one_wire|data_reg\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_reg\(7),
	datab => \dht22_one_wire|data_reg\(15),
	datad => VCC,
	combout => \dht22_one_wire|Add3~0_combout\,
	cout => \dht22_one_wire|Add3~1\);

-- Location: LCCOMB_X22_Y18_N14
\dht22_one_wire|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add3~2_combout\ = (\dht22_one_wire|data_reg\(14) & ((\dht22_one_wire|data_reg\(6) & (\dht22_one_wire|Add3~1\ & VCC)) # (!\dht22_one_wire|data_reg\(6) & (!\dht22_one_wire|Add3~1\)))) # (!\dht22_one_wire|data_reg\(14) & 
-- ((\dht22_one_wire|data_reg\(6) & (!\dht22_one_wire|Add3~1\)) # (!\dht22_one_wire|data_reg\(6) & ((\dht22_one_wire|Add3~1\) # (GND)))))
-- \dht22_one_wire|Add3~3\ = CARRY((\dht22_one_wire|data_reg\(14) & (!\dht22_one_wire|data_reg\(6) & !\dht22_one_wire|Add3~1\)) # (!\dht22_one_wire|data_reg\(14) & ((!\dht22_one_wire|Add3~1\) # (!\dht22_one_wire|data_reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_reg\(14),
	datab => \dht22_one_wire|data_reg\(6),
	datad => VCC,
	cin => \dht22_one_wire|Add3~1\,
	combout => \dht22_one_wire|Add3~2_combout\,
	cout => \dht22_one_wire|Add3~3\);

-- Location: LCCOMB_X22_Y18_N16
\dht22_one_wire|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add3~4_combout\ = ((\dht22_one_wire|data_reg\(5) $ (\dht22_one_wire|data_reg\(13) $ (!\dht22_one_wire|Add3~3\)))) # (GND)
-- \dht22_one_wire|Add3~5\ = CARRY((\dht22_one_wire|data_reg\(5) & ((\dht22_one_wire|data_reg\(13)) # (!\dht22_one_wire|Add3~3\))) # (!\dht22_one_wire|data_reg\(5) & (\dht22_one_wire|data_reg\(13) & !\dht22_one_wire|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_reg\(5),
	datab => \dht22_one_wire|data_reg\(13),
	datad => VCC,
	cin => \dht22_one_wire|Add3~3\,
	combout => \dht22_one_wire|Add3~4_combout\,
	cout => \dht22_one_wire|Add3~5\);

-- Location: LCCOMB_X22_Y18_N18
\dht22_one_wire|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add3~6_combout\ = (\dht22_one_wire|data_reg\(12) & ((\dht22_one_wire|data_reg\(4) & (\dht22_one_wire|Add3~5\ & VCC)) # (!\dht22_one_wire|data_reg\(4) & (!\dht22_one_wire|Add3~5\)))) # (!\dht22_one_wire|data_reg\(12) & 
-- ((\dht22_one_wire|data_reg\(4) & (!\dht22_one_wire|Add3~5\)) # (!\dht22_one_wire|data_reg\(4) & ((\dht22_one_wire|Add3~5\) # (GND)))))
-- \dht22_one_wire|Add3~7\ = CARRY((\dht22_one_wire|data_reg\(12) & (!\dht22_one_wire|data_reg\(4) & !\dht22_one_wire|Add3~5\)) # (!\dht22_one_wire|data_reg\(12) & ((!\dht22_one_wire|Add3~5\) # (!\dht22_one_wire|data_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_reg\(12),
	datab => \dht22_one_wire|data_reg\(4),
	datad => VCC,
	cin => \dht22_one_wire|Add3~5\,
	combout => \dht22_one_wire|Add3~6_combout\,
	cout => \dht22_one_wire|Add3~7\);

-- Location: LCCOMB_X22_Y18_N20
\dht22_one_wire|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add3~8_combout\ = ((\dht22_one_wire|data_reg\(11) $ (\dht22_one_wire|data_reg\(3) $ (!\dht22_one_wire|Add3~7\)))) # (GND)
-- \dht22_one_wire|Add3~9\ = CARRY((\dht22_one_wire|data_reg\(11) & ((\dht22_one_wire|data_reg\(3)) # (!\dht22_one_wire|Add3~7\))) # (!\dht22_one_wire|data_reg\(11) & (\dht22_one_wire|data_reg\(3) & !\dht22_one_wire|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_reg\(11),
	datab => \dht22_one_wire|data_reg\(3),
	datad => VCC,
	cin => \dht22_one_wire|Add3~7\,
	combout => \dht22_one_wire|Add3~8_combout\,
	cout => \dht22_one_wire|Add3~9\);

-- Location: LCCOMB_X23_Y18_N12
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

-- Location: LCCOMB_X23_Y18_N14
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

-- Location: LCCOMB_X23_Y18_N16
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

-- Location: LCCOMB_X23_Y18_N18
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

-- Location: LCCOMB_X23_Y18_N20
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

-- Location: LCCOMB_X29_Y16_N30
\dht22_one_wire|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~2_combout\ = (\dht22_one_wire|Decoder0~1_combout\ & (\dht22_one_wire|Equal3~2_combout\ & (\dht22_one_wire|state.ST_PROCESS~q\ & !\dht22_one_wire|index_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~1_combout\,
	datab => \dht22_one_wire|Equal3~2_combout\,
	datac => \dht22_one_wire|state.ST_PROCESS~q\,
	datad => \dht22_one_wire|index_reg\(3),
	combout => \dht22_one_wire|Decoder0~2_combout\);

-- Location: LCCOMB_X23_Y15_N6
\dht22_one_wire|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~3_combout\ = (\dht22_one_wire|Decoder0~2_combout\ & \dht22_one_wire|index_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_one_wire|Decoder0~2_combout\,
	datad => \dht22_one_wire|index_reg\(0),
	combout => \dht22_one_wire|Decoder0~3_combout\);

-- Location: LCCOMB_X23_Y15_N10
\dht22_one_wire|Decoder0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~19_combout\ = (\dht22_one_wire|index_reg\(1) & !\dht22_one_wire|index_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_one_wire|index_reg\(1),
	datad => \dht22_one_wire|index_reg\(2),
	combout => \dht22_one_wire|Decoder0~19_combout\);

-- Location: LCCOMB_X23_Y15_N2
\dht22_one_wire|data_reg[35]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[35]~20_combout\ = (\dht22_one_wire|Decoder0~3_combout\ & ((\dht22_one_wire|Decoder0~19_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~19_combout\ & (\dht22_one_wire|data_reg\(35))))) # 
-- (!\dht22_one_wire|Decoder0~3_combout\ & (((\dht22_one_wire|data_reg\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~3_combout\,
	datab => \dht22_one_wire|Decoder0~19_combout\,
	datac => \dht22_one_wire|data_reg\(35),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[35]~20_combout\);

-- Location: FF_X23_Y15_N3
\dht22_one_wire|data_reg[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[35]~20_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(35));

-- Location: LCCOMB_X23_Y15_N4
\dht22_one_wire|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~4_combout\ = (\dht22_one_wire|Decoder0~2_combout\ & !\dht22_one_wire|index_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_one_wire|Decoder0~2_combout\,
	datad => \dht22_one_wire|index_reg\(0),
	combout => \dht22_one_wire|Decoder0~4_combout\);

-- Location: LCCOMB_X23_Y15_N24
\dht22_one_wire|data_reg[34]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[34]~21_combout\ = (\dht22_one_wire|Decoder0~19_combout\ & ((\dht22_one_wire|Decoder0~4_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~4_combout\ & (\dht22_one_wire|data_reg\(34))))) # 
-- (!\dht22_one_wire|Decoder0~19_combout\ & (((\dht22_one_wire|data_reg\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~19_combout\,
	datab => \dht22_one_wire|Decoder0~4_combout\,
	datac => \dht22_one_wire|data_reg\(34),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[34]~21_combout\);

-- Location: FF_X23_Y15_N25
\dht22_one_wire|data_reg[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[34]~21_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(34));

-- Location: LCCOMB_X19_Y18_N28
\dht22_one_wire|data_reg[10]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[10]~26_combout\ = (\dht22_one_wire|Decoder0~20_combout\ & ((\dht22_one_wire|Decoder0~11_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~11_combout\ & (\dht22_one_wire|data_reg\(10))))) # 
-- (!\dht22_one_wire|Decoder0~20_combout\ & (((\dht22_one_wire|data_reg\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~20_combout\,
	datab => \dht22_one_wire|Decoder0~11_combout\,
	datac => \dht22_one_wire|data_reg\(10),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[10]~26_combout\);

-- Location: FF_X19_Y18_N29
\dht22_one_wire|data_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[10]~26_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(10));

-- Location: LCCOMB_X22_Y18_N0
\dht22_one_wire|data_reg[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[2]~27_combout\ = (\dht22_one_wire|Decoder0~11_combout\ & ((\dht22_one_wire|Decoder0~21_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~21_combout\ & (\dht22_one_wire|data_reg\(2))))) # 
-- (!\dht22_one_wire|Decoder0~11_combout\ & (((\dht22_one_wire|data_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~11_combout\,
	datab => \dht22_one_wire|Decoder0~21_combout\,
	datac => \dht22_one_wire|data_reg\(2),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[2]~27_combout\);

-- Location: FF_X22_Y18_N1
\dht22_one_wire|data_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[2]~27_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(2));

-- Location: LCCOMB_X22_Y18_N22
\dht22_one_wire|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add3~10_combout\ = (\dht22_one_wire|data_reg\(10) & ((\dht22_one_wire|data_reg\(2) & (\dht22_one_wire|Add3~9\ & VCC)) # (!\dht22_one_wire|data_reg\(2) & (!\dht22_one_wire|Add3~9\)))) # (!\dht22_one_wire|data_reg\(10) & 
-- ((\dht22_one_wire|data_reg\(2) & (!\dht22_one_wire|Add3~9\)) # (!\dht22_one_wire|data_reg\(2) & ((\dht22_one_wire|Add3~9\) # (GND)))))
-- \dht22_one_wire|Add3~11\ = CARRY((\dht22_one_wire|data_reg\(10) & (!\dht22_one_wire|data_reg\(2) & !\dht22_one_wire|Add3~9\)) # (!\dht22_one_wire|data_reg\(10) & ((!\dht22_one_wire|Add3~9\) # (!\dht22_one_wire|data_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_reg\(10),
	datab => \dht22_one_wire|data_reg\(2),
	datad => VCC,
	cin => \dht22_one_wire|Add3~9\,
	combout => \dht22_one_wire|Add3~10_combout\,
	cout => \dht22_one_wire|Add3~11\);

-- Location: LCCOMB_X22_Y17_N30
\dht22_one_wire|data_reg[18]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[18]~23_combout\ = (\dht22_one_wire|Decoder0~21_combout\ & ((\dht22_one_wire|Decoder0~7_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~7_combout\ & (\dht22_one_wire|data_reg\(18))))) # 
-- (!\dht22_one_wire|Decoder0~21_combout\ & (((\dht22_one_wire|data_reg\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~21_combout\,
	datab => \dht22_one_wire|Decoder0~7_combout\,
	datac => \dht22_one_wire|data_reg\(18),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[18]~23_combout\);

-- Location: FF_X22_Y17_N31
\dht22_one_wire|data_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[18]~23_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(18));

-- Location: LCCOMB_X19_Y16_N22
\dht22_one_wire|data_reg[26]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[26]~22_combout\ = (\dht22_one_wire|Decoder0~7_combout\ & ((\dht22_one_wire|Decoder0~20_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~20_combout\ & (\dht22_one_wire|data_reg\(26))))) # 
-- (!\dht22_one_wire|Decoder0~7_combout\ & (((\dht22_one_wire|data_reg\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~7_combout\,
	datab => \dht22_one_wire|Decoder0~20_combout\,
	datac => \dht22_one_wire|data_reg\(26),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[26]~22_combout\);

-- Location: FF_X19_Y16_N23
\dht22_one_wire|data_reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[26]~22_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(26));

-- Location: LCCOMB_X22_Y17_N14
\dht22_one_wire|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add4~10_combout\ = (\dht22_one_wire|data_reg\(18) & ((\dht22_one_wire|data_reg\(26) & (\dht22_one_wire|Add4~9\ & VCC)) # (!\dht22_one_wire|data_reg\(26) & (!\dht22_one_wire|Add4~9\)))) # (!\dht22_one_wire|data_reg\(18) & 
-- ((\dht22_one_wire|data_reg\(26) & (!\dht22_one_wire|Add4~9\)) # (!\dht22_one_wire|data_reg\(26) & ((\dht22_one_wire|Add4~9\) # (GND)))))
-- \dht22_one_wire|Add4~11\ = CARRY((\dht22_one_wire|data_reg\(18) & (!\dht22_one_wire|data_reg\(26) & !\dht22_one_wire|Add4~9\)) # (!\dht22_one_wire|data_reg\(18) & ((!\dht22_one_wire|Add4~9\) # (!\dht22_one_wire|data_reg\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_reg\(18),
	datab => \dht22_one_wire|data_reg\(26),
	datad => VCC,
	cin => \dht22_one_wire|Add4~9\,
	combout => \dht22_one_wire|Add4~10_combout\,
	cout => \dht22_one_wire|Add4~11\);

-- Location: LCCOMB_X23_Y18_N22
\dht22_one_wire|check_sum[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|check_sum[5]~10_combout\ = (\dht22_one_wire|Add3~10_combout\ & ((\dht22_one_wire|Add4~10_combout\ & (\dht22_one_wire|check_sum[4]~9\ & VCC)) # (!\dht22_one_wire|Add4~10_combout\ & (!\dht22_one_wire|check_sum[4]~9\)))) # 
-- (!\dht22_one_wire|Add3~10_combout\ & ((\dht22_one_wire|Add4~10_combout\ & (!\dht22_one_wire|check_sum[4]~9\)) # (!\dht22_one_wire|Add4~10_combout\ & ((\dht22_one_wire|check_sum[4]~9\) # (GND)))))
-- \dht22_one_wire|check_sum[5]~11\ = CARRY((\dht22_one_wire|Add3~10_combout\ & (!\dht22_one_wire|Add4~10_combout\ & !\dht22_one_wire|check_sum[4]~9\)) # (!\dht22_one_wire|Add3~10_combout\ & ((!\dht22_one_wire|check_sum[4]~9\) # 
-- (!\dht22_one_wire|Add4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Add3~10_combout\,
	datab => \dht22_one_wire|Add4~10_combout\,
	datad => VCC,
	cin => \dht22_one_wire|check_sum[4]~9\,
	combout => \dht22_one_wire|check_sum[5]~10_combout\,
	cout => \dht22_one_wire|check_sum[5]~11\);

-- Location: LCCOMB_X23_Y15_N26
\dht22_one_wire|valid~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|valid~2_combout\ = (\dht22_one_wire|check_sum[4]~8_combout\ & (\dht22_one_wire|data_reg\(35) & (\dht22_one_wire|data_reg\(34) $ (!\dht22_one_wire|check_sum[5]~10_combout\)))) # (!\dht22_one_wire|check_sum[4]~8_combout\ & 
-- (!\dht22_one_wire|data_reg\(35) & (\dht22_one_wire|data_reg\(34) $ (!\dht22_one_wire|check_sum[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|check_sum[4]~8_combout\,
	datab => \dht22_one_wire|data_reg\(35),
	datac => \dht22_one_wire|data_reg\(34),
	datad => \dht22_one_wire|check_sum[5]~10_combout\,
	combout => \dht22_one_wire|valid~2_combout\);

-- Location: LCCOMB_X23_Y15_N16
\dht22_one_wire|Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal3~3_combout\ = (!\dht22_one_wire|index_reg\(1) & !\dht22_one_wire|index_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_one_wire|index_reg\(1),
	datad => \dht22_one_wire|index_reg\(2),
	combout => \dht22_one_wire|Equal3~3_combout\);

-- Location: LCCOMB_X23_Y15_N0
\dht22_one_wire|data_reg[32]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[32]~30_combout\ = (\dht22_one_wire|Equal3~3_combout\ & ((\dht22_one_wire|Decoder0~4_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~4_combout\ & (\dht22_one_wire|data_reg\(32))))) # 
-- (!\dht22_one_wire|Equal3~3_combout\ & (((\dht22_one_wire|data_reg\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Equal3~3_combout\,
	datab => \dht22_one_wire|Decoder0~4_combout\,
	datac => \dht22_one_wire|data_reg\(32),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[32]~30_combout\);

-- Location: FF_X23_Y15_N1
\dht22_one_wire|data_reg[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[32]~30_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(32));

-- Location: LCCOMB_X23_Y15_N22
\dht22_one_wire|data_reg[33]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[33]~39_combout\ = (\dht22_one_wire|Decoder0~3_combout\ & ((\dht22_one_wire|Equal3~3_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Equal3~3_combout\ & (\dht22_one_wire|data_reg\(33))))) # 
-- (!\dht22_one_wire|Decoder0~3_combout\ & (((\dht22_one_wire|data_reg\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~3_combout\,
	datab => \dht22_one_wire|Equal3~3_combout\,
	datac => \dht22_one_wire|data_reg\(33),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[33]~39_combout\);

-- Location: FF_X23_Y15_N23
\dht22_one_wire|data_reg[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[33]~39_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(33));

-- Location: LCCOMB_X19_Y16_N30
\dht22_one_wire|Decoder0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~22_combout\ = (!\dht22_one_wire|index_reg\(1) & (!\dht22_one_wire|index_reg\(3) & !\dht22_one_wire|index_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|index_reg\(1),
	datac => \dht22_one_wire|index_reg\(3),
	datad => \dht22_one_wire|index_reg\(2),
	combout => \dht22_one_wire|Decoder0~22_combout\);

-- Location: LCCOMB_X19_Y16_N18
\dht22_one_wire|data_reg[17]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[17]~34_combout\ = (\dht22_one_wire|Decoder0~22_combout\ & ((\dht22_one_wire|Decoder0~9_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~9_combout\ & (\dht22_one_wire|data_reg\(17))))) # 
-- (!\dht22_one_wire|Decoder0~22_combout\ & (((\dht22_one_wire|data_reg\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~22_combout\,
	datab => \dht22_one_wire|Decoder0~9_combout\,
	datac => \dht22_one_wire|data_reg\(17),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[17]~34_combout\);

-- Location: FF_X19_Y16_N19
\dht22_one_wire|data_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[17]~34_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(17));

-- Location: LCCOMB_X22_Y17_N24
\dht22_one_wire|data_reg[25]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[25]~33_combout\ = (\dht22_one_wire|Equal3~0_combout\ & ((\dht22_one_wire|Decoder0~9_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~9_combout\ & (\dht22_one_wire|data_reg\(25))))) # 
-- (!\dht22_one_wire|Equal3~0_combout\ & (((\dht22_one_wire|data_reg\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Equal3~0_combout\,
	datab => \dht22_one_wire|Decoder0~9_combout\,
	datac => \dht22_one_wire|data_reg\(25),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[25]~33_combout\);

-- Location: FF_X22_Y17_N25
\dht22_one_wire|data_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[25]~33_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(25));

-- Location: LCCOMB_X22_Y17_N16
\dht22_one_wire|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add4~12_combout\ = ((\dht22_one_wire|data_reg\(17) $ (\dht22_one_wire|data_reg\(25) $ (!\dht22_one_wire|Add4~11\)))) # (GND)
-- \dht22_one_wire|Add4~13\ = CARRY((\dht22_one_wire|data_reg\(17) & ((\dht22_one_wire|data_reg\(25)) # (!\dht22_one_wire|Add4~11\))) # (!\dht22_one_wire|data_reg\(17) & (\dht22_one_wire|data_reg\(25) & !\dht22_one_wire|Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_reg\(17),
	datab => \dht22_one_wire|data_reg\(25),
	datad => VCC,
	cin => \dht22_one_wire|Add4~11\,
	combout => \dht22_one_wire|Add4~12_combout\,
	cout => \dht22_one_wire|Add4~13\);

-- Location: LCCOMB_X21_Y16_N10
\dht22_one_wire|data_reg[1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[1]~38_combout\ = (\dht22_one_wire|Decoder0~22_combout\ & ((\dht22_one_wire|Decoder0~12_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~12_combout\ & (\dht22_one_wire|data_reg\(1))))) # 
-- (!\dht22_one_wire|Decoder0~22_combout\ & (((\dht22_one_wire|data_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~22_combout\,
	datab => \dht22_one_wire|Decoder0~12_combout\,
	datac => \dht22_one_wire|data_reg\(1),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[1]~38_combout\);

-- Location: FF_X21_Y16_N11
\dht22_one_wire|data_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[1]~38_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(1));

-- Location: LCCOMB_X23_Y18_N28
\dht22_one_wire|data_reg[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[9]~37_combout\ = (\dht22_one_wire|Decoder0~12_combout\ & ((\dht22_one_wire|Equal3~0_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Equal3~0_combout\ & (\dht22_one_wire|data_reg\(9))))) # 
-- (!\dht22_one_wire|Decoder0~12_combout\ & (((\dht22_one_wire|data_reg\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~12_combout\,
	datab => \dht22_one_wire|Equal3~0_combout\,
	datac => \dht22_one_wire|data_reg\(9),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[9]~37_combout\);

-- Location: FF_X23_Y18_N29
\dht22_one_wire|data_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[9]~37_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(9));

-- Location: LCCOMB_X22_Y18_N24
\dht22_one_wire|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add3~12_combout\ = ((\dht22_one_wire|data_reg\(1) $ (\dht22_one_wire|data_reg\(9) $ (!\dht22_one_wire|Add3~11\)))) # (GND)
-- \dht22_one_wire|Add3~13\ = CARRY((\dht22_one_wire|data_reg\(1) & ((\dht22_one_wire|data_reg\(9)) # (!\dht22_one_wire|Add3~11\))) # (!\dht22_one_wire|data_reg\(1) & (\dht22_one_wire|data_reg\(9) & !\dht22_one_wire|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_reg\(1),
	datab => \dht22_one_wire|data_reg\(9),
	datad => VCC,
	cin => \dht22_one_wire|Add3~11\,
	combout => \dht22_one_wire|Add3~12_combout\,
	cout => \dht22_one_wire|Add3~13\);

-- Location: LCCOMB_X23_Y18_N24
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

-- Location: LCCOMB_X23_Y15_N8
\dht22_one_wire|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Equal5~0_combout\ = \dht22_one_wire|data_reg\(33) $ (\dht22_one_wire|check_sum[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_one_wire|data_reg\(33),
	datad => \dht22_one_wire|check_sum[6]~12_combout\,
	combout => \dht22_one_wire|Equal5~0_combout\);

-- Location: LCCOMB_X23_Y18_N10
\dht22_one_wire|data_reg[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[8]~35_combout\ = (\dht22_one_wire|Decoder0~11_combout\ & ((\dht22_one_wire|Equal3~0_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Equal3~0_combout\ & (\dht22_one_wire|data_reg\(8))))) # 
-- (!\dht22_one_wire|Decoder0~11_combout\ & (((\dht22_one_wire|data_reg\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~11_combout\,
	datab => \dht22_one_wire|Equal3~0_combout\,
	datac => \dht22_one_wire|data_reg\(8),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[8]~35_combout\);

-- Location: FF_X23_Y18_N11
\dht22_one_wire|data_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[8]~35_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(8));

-- Location: LCCOMB_X19_Y16_N28
\dht22_one_wire|data_reg[0]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[0]~36_combout\ = (\dht22_one_wire|Decoder0~22_combout\ & ((\dht22_one_wire|Decoder0~11_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~11_combout\ & (\dht22_one_wire|data_reg\(0))))) # 
-- (!\dht22_one_wire|Decoder0~22_combout\ & (((\dht22_one_wire|data_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~22_combout\,
	datab => \dht22_one_wire|Decoder0~11_combout\,
	datac => \dht22_one_wire|data_reg\(0),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[0]~36_combout\);

-- Location: FF_X19_Y16_N29
\dht22_one_wire|data_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[0]~36_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(0));

-- Location: LCCOMB_X22_Y18_N26
\dht22_one_wire|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add3~14_combout\ = \dht22_one_wire|data_reg\(8) $ (\dht22_one_wire|Add3~13\ $ (\dht22_one_wire|data_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|data_reg\(8),
	datad => \dht22_one_wire|data_reg\(0),
	cin => \dht22_one_wire|Add3~13\,
	combout => \dht22_one_wire|Add3~14_combout\);

-- Location: LCCOMB_X21_Y16_N0
\dht22_one_wire|data_reg[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[16]~32_combout\ = (\dht22_one_wire|Decoder0~22_combout\ & ((\dht22_one_wire|Decoder0~7_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~7_combout\ & (\dht22_one_wire|data_reg\(16))))) # 
-- (!\dht22_one_wire|Decoder0~22_combout\ & (((\dht22_one_wire|data_reg\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~22_combout\,
	datab => \dht22_one_wire|Decoder0~7_combout\,
	datac => \dht22_one_wire|data_reg\(16),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[16]~32_combout\);

-- Location: FF_X21_Y16_N1
\dht22_one_wire|data_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[16]~32_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(16));

-- Location: LCCOMB_X22_Y17_N2
\dht22_one_wire|data_reg[24]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[24]~31_combout\ = (\dht22_one_wire|Equal3~0_combout\ & ((\dht22_one_wire|Decoder0~7_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~7_combout\ & (\dht22_one_wire|data_reg\(24))))) # 
-- (!\dht22_one_wire|Equal3~0_combout\ & (((\dht22_one_wire|data_reg\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Equal3~0_combout\,
	datab => \dht22_one_wire|Decoder0~7_combout\,
	datac => \dht22_one_wire|data_reg\(24),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[24]~31_combout\);

-- Location: FF_X22_Y17_N3
\dht22_one_wire|data_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[24]~31_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(24));

-- Location: LCCOMB_X22_Y17_N18
\dht22_one_wire|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Add4~14_combout\ = \dht22_one_wire|data_reg\(16) $ (\dht22_one_wire|Add4~13\ $ (\dht22_one_wire|data_reg\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|data_reg\(16),
	datad => \dht22_one_wire|data_reg\(24),
	cin => \dht22_one_wire|Add4~13\,
	combout => \dht22_one_wire|Add4~14_combout\);

-- Location: LCCOMB_X23_Y18_N26
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

-- Location: LCCOMB_X23_Y15_N14
\dht22_one_wire|valid~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|valid~3_combout\ = (\dht22_one_wire|valid~2_combout\ & (!\dht22_one_wire|Equal5~0_combout\ & (\dht22_one_wire|data_reg\(32) $ (!\dht22_one_wire|check_sum[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|valid~2_combout\,
	datab => \dht22_one_wire|data_reg\(32),
	datac => \dht22_one_wire|Equal5~0_combout\,
	datad => \dht22_one_wire|check_sum[7]~14_combout\,
	combout => \dht22_one_wire|valid~3_combout\);

-- Location: LCCOMB_X22_Y18_N8
\dht22_one_wire|Decoder0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~14_combout\ = (\dht22_one_wire|index_reg\(2) & !\dht22_one_wire|index_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_one_wire|index_reg\(2),
	datad => \dht22_one_wire|index_reg\(1),
	combout => \dht22_one_wire|Decoder0~14_combout\);

-- Location: LCCOMB_X23_Y18_N6
\dht22_one_wire|data_reg[36]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[36]~11_combout\ = (\dht22_one_wire|Decoder0~14_combout\ & ((\dht22_one_wire|Decoder0~4_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~4_combout\ & (\dht22_one_wire|data_reg\(36))))) # 
-- (!\dht22_one_wire|Decoder0~14_combout\ & (((\dht22_one_wire|data_reg\(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~14_combout\,
	datab => \dht22_one_wire|Decoder0~4_combout\,
	datac => \dht22_one_wire|data_reg\(36),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[36]~11_combout\);

-- Location: FF_X23_Y18_N7
\dht22_one_wire|data_reg[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[36]~11_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(36));

-- Location: LCCOMB_X23_Y18_N2
\dht22_one_wire|Decoder0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~13_combout\ = (\dht22_one_wire|index_reg\(2) & (\dht22_one_wire|index_reg\(0) & !\dht22_one_wire|index_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|index_reg\(2),
	datac => \dht22_one_wire|index_reg\(0),
	datad => \dht22_one_wire|index_reg\(1),
	combout => \dht22_one_wire|Decoder0~13_combout\);

-- Location: LCCOMB_X23_Y18_N4
\dht22_one_wire|data_reg[37]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[37]~10_combout\ = (\dht22_one_wire|Decoder0~2_combout\ & ((\dht22_one_wire|Decoder0~13_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~13_combout\ & (\dht22_one_wire|data_reg\(37))))) # 
-- (!\dht22_one_wire|Decoder0~2_combout\ & (((\dht22_one_wire|data_reg\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~2_combout\,
	datab => \dht22_one_wire|Decoder0~13_combout\,
	datac => \dht22_one_wire|data_reg\(37),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[37]~10_combout\);

-- Location: FF_X23_Y18_N5
\dht22_one_wire|data_reg[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[37]~10_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(37));

-- Location: LCCOMB_X23_Y18_N8
\dht22_one_wire|valid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|valid~1_combout\ = (\dht22_one_wire|data_reg\(36) & (\dht22_one_wire|check_sum[3]~6_combout\ & (\dht22_one_wire|data_reg\(37) $ (!\dht22_one_wire|check_sum[2]~4_combout\)))) # (!\dht22_one_wire|data_reg\(36) & 
-- (!\dht22_one_wire|check_sum[3]~6_combout\ & (\dht22_one_wire|data_reg\(37) $ (!\dht22_one_wire|check_sum[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_reg\(36),
	datab => \dht22_one_wire|check_sum[3]~6_combout\,
	datac => \dht22_one_wire|data_reg\(37),
	datad => \dht22_one_wire|check_sum[2]~4_combout\,
	combout => \dht22_one_wire|valid~1_combout\);

-- Location: LCCOMB_X23_Y15_N20
\dht22_one_wire|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|Decoder0~0_combout\ = (\dht22_one_wire|index_reg\(1) & \dht22_one_wire|index_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_one_wire|index_reg\(1),
	datad => \dht22_one_wire|index_reg\(2),
	combout => \dht22_one_wire|Decoder0~0_combout\);

-- Location: LCCOMB_X23_Y15_N28
\dht22_one_wire|data_reg[39]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[39]~0_combout\ = (\dht22_one_wire|Decoder0~3_combout\ & ((\dht22_one_wire|Decoder0~0_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~0_combout\ & (\dht22_one_wire|data_reg\(39))))) # 
-- (!\dht22_one_wire|Decoder0~3_combout\ & (((\dht22_one_wire|data_reg\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~3_combout\,
	datab => \dht22_one_wire|Decoder0~0_combout\,
	datac => \dht22_one_wire|data_reg\(39),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[39]~0_combout\);

-- Location: FF_X23_Y15_N29
\dht22_one_wire|data_reg[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[39]~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(39));

-- Location: LCCOMB_X23_Y15_N30
\dht22_one_wire|data_reg[38]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|data_reg[38]~1_combout\ = (\dht22_one_wire|Decoder0~4_combout\ & ((\dht22_one_wire|Decoder0~0_combout\ & ((\dht22_one_wire|LessThan0~6_combout\))) # (!\dht22_one_wire|Decoder0~0_combout\ & (\dht22_one_wire|data_reg\(38))))) # 
-- (!\dht22_one_wire|Decoder0~4_combout\ & (((\dht22_one_wire|data_reg\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|Decoder0~4_combout\,
	datab => \dht22_one_wire|Decoder0~0_combout\,
	datac => \dht22_one_wire|data_reg\(38),
	datad => \dht22_one_wire|LessThan0~6_combout\,
	combout => \dht22_one_wire|data_reg[38]~1_combout\);

-- Location: FF_X23_Y15_N31
\dht22_one_wire|data_reg[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_one_wire|data_reg[38]~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_one_wire|data_reg\(38));

-- Location: LCCOMB_X23_Y15_N12
\dht22_one_wire|valid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|valid~0_combout\ = (\dht22_one_wire|check_sum[1]~2_combout\ & (\dht22_one_wire|data_reg\(38) & (\dht22_one_wire|data_reg\(39) $ (!\dht22_one_wire|check_sum[0]~0_combout\)))) # (!\dht22_one_wire|check_sum[1]~2_combout\ & 
-- (!\dht22_one_wire|data_reg\(38) & (\dht22_one_wire|data_reg\(39) $ (!\dht22_one_wire|check_sum[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|check_sum[1]~2_combout\,
	datab => \dht22_one_wire|data_reg\(39),
	datac => \dht22_one_wire|data_reg\(38),
	datad => \dht22_one_wire|check_sum[0]~0_combout\,
	combout => \dht22_one_wire|valid~0_combout\);

-- Location: LCCOMB_X24_Y15_N8
\dht22_one_wire|valid\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_one_wire|valid~combout\ = (\dht22_one_wire|valid~3_combout\ & (\dht22_one_wire|valid~1_combout\ & (\dht22_one_wire|state.ST_CHECK~q\ & \dht22_one_wire|valid~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|valid~3_combout\,
	datab => \dht22_one_wire|valid~1_combout\,
	datac => \dht22_one_wire|state.ST_CHECK~q\,
	datad => \dht22_one_wire|valid~0_combout\,
	combout => \dht22_one_wire|valid~combout\);

-- Location: LCCOMB_X21_Y20_N18
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

-- Location: LCCOMB_X22_Y20_N0
\display|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~1_cout\ = CARRY((\dht22_one_wire|clks_reg\(0) & \dht22_one_wire|clks_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|clks_reg\(0),
	datab => \dht22_one_wire|clks_reg\(1),
	datad => VCC,
	cout => \display|Add0~1_cout\);

-- Location: LCCOMB_X22_Y20_N2
\display|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~3_cout\ = CARRY((!\display|Add0~1_cout\) # (!\dht22_one_wire|clks_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|clks_reg\(2),
	datad => VCC,
	cin => \display|Add0~1_cout\,
	cout => \display|Add0~3_cout\);

-- Location: LCCOMB_X22_Y20_N4
\display|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~5_cout\ = CARRY((\dht22_one_wire|clks_reg\(3) & !\display|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_one_wire|clks_reg\(3),
	datad => VCC,
	cin => \display|Add0~3_cout\,
	cout => \display|Add0~5_cout\);

-- Location: LCCOMB_X22_Y20_N6
\display|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~6_combout\ = (\display|count\(4) & (!\display|Add0~5_cout\)) # (!\display|count\(4) & ((\display|Add0~5_cout\) # (GND)))
-- \display|Add0~7\ = CARRY((!\display|Add0~5_cout\) # (!\display|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(4),
	datad => VCC,
	cin => \display|Add0~5_cout\,
	combout => \display|Add0~6_combout\,
	cout => \display|Add0~7\);

-- Location: LCCOMB_X21_Y20_N14
\display|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|count~4_combout\ = (!\display|Equal0~4_combout\ & \display|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display|Equal0~4_combout\,
	datad => \display|Add0~6_combout\,
	combout => \display|count~4_combout\);

-- Location: FF_X21_Y20_N15
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

-- Location: LCCOMB_X22_Y20_N8
\display|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~8_combout\ = (\display|count\(5) & (\display|Add0~7\ $ (GND))) # (!\display|count\(5) & (!\display|Add0~7\ & VCC))
-- \display|Add0~9\ = CARRY((\display|count\(5) & !\display|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display|count\(5),
	datad => VCC,
	cin => \display|Add0~7\,
	combout => \display|Add0~8_combout\,
	cout => \display|Add0~9\);

-- Location: FF_X22_Y20_N9
\display|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display|Add0~8_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|count\(5));

-- Location: LCCOMB_X22_Y20_N10
\display|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~10_combout\ = (\display|count\(6) & (!\display|Add0~9\)) # (!\display|count\(6) & ((\display|Add0~9\) # (GND)))
-- \display|Add0~11\ = CARRY((!\display|Add0~9\) # (!\display|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(6),
	datad => VCC,
	cin => \display|Add0~9\,
	combout => \display|Add0~10_combout\,
	cout => \display|Add0~11\);

-- Location: FF_X22_Y20_N11
\display|count[6]\ : dffeas
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
	q => \display|count\(6));

-- Location: LCCOMB_X22_Y20_N12
\display|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~12_combout\ = (\display|count\(7) & (\display|Add0~11\ $ (GND))) # (!\display|count\(7) & (!\display|Add0~11\ & VCC))
-- \display|Add0~13\ = CARRY((\display|count\(7) & !\display|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(7),
	datad => VCC,
	cin => \display|Add0~11\,
	combout => \display|Add0~12_combout\,
	cout => \display|Add0~13\);

-- Location: FF_X22_Y20_N13
\display|count[7]\ : dffeas
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
	q => \display|count\(7));

-- Location: LCCOMB_X22_Y20_N14
\display|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~14_combout\ = (\display|count\(8) & (!\display|Add0~13\)) # (!\display|count\(8) & ((\display|Add0~13\) # (GND)))
-- \display|Add0~15\ = CARRY((!\display|Add0~13\) # (!\display|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display|count\(8),
	datad => VCC,
	cin => \display|Add0~13\,
	combout => \display|Add0~14_combout\,
	cout => \display|Add0~15\);

-- Location: LCCOMB_X21_Y20_N6
\display|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|count~3_combout\ = (\display|Add0~14_combout\ & !\display|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display|Add0~14_combout\,
	datad => \display|Equal0~4_combout\,
	combout => \display|count~3_combout\);

-- Location: FF_X21_Y20_N7
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

-- Location: LCCOMB_X22_Y20_N16
\display|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~16_combout\ = (\display|count\(9) & (\display|Add0~15\ $ (GND))) # (!\display|count\(9) & (!\display|Add0~15\ & VCC))
-- \display|Add0~17\ = CARRY((\display|count\(9) & !\display|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display|count\(9),
	datad => VCC,
	cin => \display|Add0~15\,
	combout => \display|Add0~16_combout\,
	cout => \display|Add0~17\);

-- Location: LCCOMB_X21_Y20_N28
\display|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|count~2_combout\ = (!\display|Equal0~4_combout\ & \display|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display|Equal0~4_combout\,
	datad => \display|Add0~16_combout\,
	combout => \display|count~2_combout\);

-- Location: FF_X21_Y20_N29
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

-- Location: LCCOMB_X22_Y20_N18
\display|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~18_combout\ = (\display|count\(10) & (!\display|Add0~17\)) # (!\display|count\(10) & ((\display|Add0~17\) # (GND)))
-- \display|Add0~19\ = CARRY((!\display|Add0~17\) # (!\display|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display|count\(10),
	datad => VCC,
	cin => \display|Add0~17\,
	combout => \display|Add0~18_combout\,
	cout => \display|Add0~19\);

-- Location: LCCOMB_X21_Y20_N22
\display|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|count~1_combout\ = (!\display|Equal0~4_combout\ & \display|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display|Equal0~4_combout\,
	datad => \display|Add0~18_combout\,
	combout => \display|count~1_combout\);

-- Location: FF_X21_Y20_N23
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

-- Location: LCCOMB_X22_Y20_N20
\display|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~20_combout\ = (\display|count\(11) & (\display|Add0~19\ $ (GND))) # (!\display|count\(11) & (!\display|Add0~19\ & VCC))
-- \display|Add0~21\ = CARRY((\display|count\(11) & !\display|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display|count\(11),
	datad => VCC,
	cin => \display|Add0~19\,
	combout => \display|Add0~20_combout\,
	cout => \display|Add0~21\);

-- Location: FF_X22_Y20_N21
\display|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display|Add0~20_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|count\(11));

-- Location: LCCOMB_X22_Y20_N22
\display|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~22_combout\ = (\display|count\(12) & (!\display|Add0~21\)) # (!\display|count\(12) & ((\display|Add0~21\) # (GND)))
-- \display|Add0~23\ = CARRY((!\display|Add0~21\) # (!\display|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(12),
	datad => VCC,
	cin => \display|Add0~21\,
	combout => \display|Add0~22_combout\,
	cout => \display|Add0~23\);

-- Location: FF_X22_Y20_N23
\display|count[12]\ : dffeas
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
	q => \display|count\(12));

-- Location: LCCOMB_X22_Y20_N24
\display|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~24_combout\ = (\display|count\(13) & (\display|Add0~23\ $ (GND))) # (!\display|count\(13) & (!\display|Add0~23\ & VCC))
-- \display|Add0~25\ = CARRY((\display|count\(13) & !\display|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(13),
	datad => VCC,
	cin => \display|Add0~23\,
	combout => \display|Add0~24_combout\,
	cout => \display|Add0~25\);

-- Location: LCCOMB_X21_Y20_N10
\display|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|count~0_combout\ = (!\display|Equal0~4_combout\ & \display|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display|Equal0~4_combout\,
	datad => \display|Add0~24_combout\,
	combout => \display|count~0_combout\);

-- Location: FF_X21_Y20_N11
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

-- Location: LCCOMB_X22_Y20_N26
\display|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~26_combout\ = (\display|count\(14) & (!\display|Add0~25\)) # (!\display|count\(14) & ((\display|Add0~25\) # (GND)))
-- \display|Add0~27\ = CARRY((!\display|Add0~25\) # (!\display|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(14),
	datad => VCC,
	cin => \display|Add0~25\,
	combout => \display|Add0~26_combout\,
	cout => \display|Add0~27\);

-- Location: FF_X22_Y20_N27
\display|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \display|Add0~26_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|count\(14));

-- Location: LCCOMB_X22_Y20_N28
\display|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~28_combout\ = \display|Add0~27\ $ (!\display|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \display|count\(15),
	cin => \display|Add0~27\,
	combout => \display|Add0~28_combout\);

-- Location: FF_X22_Y20_N29
\display|count[15]\ : dffeas
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
	q => \display|count\(15));

-- Location: LCCOMB_X21_Y20_N20
\display|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~1_combout\ = (\display|count\(13) & (!\display|count\(15) & (!\display|count\(14) & !\display|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(13),
	datab => \display|count\(15),
	datac => \display|count\(14),
	datad => \display|count\(12),
	combout => \display|Equal0~1_combout\);

-- Location: LCCOMB_X21_Y20_N16
\display|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~2_combout\ = (\display|count\(10) & (\display|count\(9) & (!\display|count\(11) & \display|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(10),
	datab => \display|count\(9),
	datac => \display|count\(11),
	datad => \display|count\(8),
	combout => \display|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y20_N30
\display|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~3_combout\ = (!\display|count\(4) & (!\display|count\(7) & (!\display|count\(5) & !\display|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(4),
	datab => \display|count\(7),
	datac => \display|count\(5),
	datad => \display|count\(6),
	combout => \display|Equal0~3_combout\);

-- Location: LCCOMB_X21_Y20_N0
\display|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~4_combout\ = (\display|Equal0~1_combout\ & (\display|Equal0~2_combout\ & (\display|Equal0~3_combout\ & \display|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Equal0~1_combout\,
	datab => \display|Equal0~2_combout\,
	datac => \display|Equal0~3_combout\,
	datad => \display|Equal0~0_combout\,
	combout => \display|Equal0~4_combout\);

-- Location: FF_X21_Y20_N19
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

-- Location: LCCOMB_X21_Y20_N4
\display|digit_index[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|digit_index[1]~0_combout\ = \display|digit_index\(1) $ (((\display|Equal0~4_combout\ & \display|digit_index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display|Equal0~4_combout\,
	datac => \display|digit_index\(1),
	datad => \display|digit_index\(0),
	combout => \display|digit_index[1]~0_combout\);

-- Location: FF_X21_Y20_N5
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

-- Location: LCCOMB_X21_Y20_N8
\display|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux0~0_combout\ = (!\display|digit_index\(0) & \display|digit_index\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display|digit_index\(0),
	datac => \display|digit_index\(1),
	combout => \display|Mux0~0_combout\);

-- Location: LCCOMB_X17_Y17_N14
\dht22_data_bcd|tens_reg[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|tens_reg[0]~2_combout\ = (\dht22_data_bcd|state.ST_DONE~q\ & \dht22_data_bcd|done_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_data_bcd|state.ST_DONE~q\,
	datad => \dht22_data_bcd|done_reg~q\,
	combout => \dht22_data_bcd|tens_reg[0]~2_combout\);

-- Location: LCCOMB_X18_Y18_N2
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

-- Location: LCCOMB_X18_Y18_N8
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

-- Location: LCCOMB_X18_Y18_N10
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

-- Location: LCCOMB_X18_Y18_N12
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

-- Location: LCCOMB_X21_Y18_N6
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

-- Location: LCCOMB_X21_Y18_N8
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

-- Location: LCCOMB_X22_Y18_N6
\dht22_data_bcd|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector12~0_combout\ = (\dht22_data_bcd|state.ST_CALC~q\ & (((\dht22_data_bcd|num_reg[6]~2_combout\)))) # (!\dht22_data_bcd|state.ST_CALC~q\ & ((\dht22_data_bcd|num_reg[6]~2_combout\ & (\dht22_one_wire|data_reg\(9))) # 
-- (!\dht22_data_bcd|num_reg[6]~2_combout\ & ((\dht22_one_wire|data_reg\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_CALC~q\,
	datab => \dht22_one_wire|data_reg\(9),
	datac => \dht22_one_wire|data_reg\(25),
	datad => \dht22_data_bcd|num_reg[6]~2_combout\,
	combout => \dht22_data_bcd|Selector12~0_combout\);

-- Location: LCCOMB_X19_Y18_N18
\dht22_data_bcd|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector12~1_combout\ = (\dht22_data_bcd|state.ST_CALC~q\ & ((\dht22_data_bcd|Selector12~0_combout\ & ((\dht22_data_bcd|Add1~8_combout\))) # (!\dht22_data_bcd|Selector12~0_combout\ & (\dht22_data_bcd|Add3~10_combout\)))) # 
-- (!\dht22_data_bcd|state.ST_CALC~q\ & (((\dht22_data_bcd|Selector12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|Add3~10_combout\,
	datab => \dht22_data_bcd|state.ST_CALC~q\,
	datac => \dht22_data_bcd|Add1~8_combout\,
	datad => \dht22_data_bcd|Selector12~0_combout\,
	combout => \dht22_data_bcd|Selector12~1_combout\);

-- Location: LCCOMB_X21_Y18_N22
\dht22_data_bcd|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~22_combout\ = (\dht22_data_bcd|num_reg\(13) & (\dht22_data_bcd|Add1~21\ & VCC)) # (!\dht22_data_bcd|num_reg\(13) & (!\dht22_data_bcd|Add1~21\))
-- \dht22_data_bcd|Add1~23\ = CARRY((!\dht22_data_bcd|num_reg\(13) & !\dht22_data_bcd|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(13),
	datad => VCC,
	cin => \dht22_data_bcd|Add1~21\,
	combout => \dht22_data_bcd|Add1~22_combout\,
	cout => \dht22_data_bcd|Add1~23\);

-- Location: LCCOMB_X21_Y18_N24
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

-- Location: LCCOMB_X21_Y18_N26
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

-- Location: LCCOMB_X18_Y18_N28
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

-- Location: LCCOMB_X18_Y18_N30
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

-- Location: LCCOMB_X17_Y17_N8
\dht22_data_bcd|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector3~0_combout\ = (\dht22_data_bcd|state.ST_CALC~q\ & (((\dht22_data_bcd|Add3~28_combout\) # (\dht22_data_bcd|num_reg[6]~2_combout\)))) # (!\dht22_data_bcd|state.ST_CALC~q\ & (\dht22_one_wire|data_reg\(16) & 
-- ((!\dht22_data_bcd|num_reg[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_reg\(16),
	datab => \dht22_data_bcd|state.ST_CALC~q\,
	datac => \dht22_data_bcd|Add3~28_combout\,
	datad => \dht22_data_bcd|num_reg[6]~2_combout\,
	combout => \dht22_data_bcd|Selector3~0_combout\);

-- Location: LCCOMB_X17_Y17_N30
\dht22_data_bcd|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector3~1_combout\ = (\dht22_data_bcd|Selector3~0_combout\ & ((\dht22_data_bcd|Add1~26_combout\) # ((!\dht22_data_bcd|num_reg[6]~2_combout\)))) # (!\dht22_data_bcd|Selector3~0_combout\ & (((\dht22_one_wire|data_reg\(0) & 
-- \dht22_data_bcd|num_reg[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|Add1~26_combout\,
	datab => \dht22_one_wire|data_reg\(0),
	datac => \dht22_data_bcd|Selector3~0_combout\,
	datad => \dht22_data_bcd|num_reg[6]~2_combout\,
	combout => \dht22_data_bcd|Selector3~1_combout\);

-- Location: FF_X17_Y17_N31
\dht22_data_bcd|num_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector3~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|num_reg[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(15));

-- Location: LCCOMB_X17_Y17_N0
\dht22_data_bcd|num_reg[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[6]~0_combout\ = (!\dht22_data_bcd|num_reg\(15) & !\dht22_data_bcd|num_reg\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_data_bcd|num_reg\(15),
	datad => \dht22_data_bcd|num_reg\(14),
	combout => \dht22_data_bcd|num_reg[6]~0_combout\);

-- Location: LCCOMB_X18_Y17_N2
\dht22_data_bcd|num_reg[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[6]~1_combout\ = (\dht22_data_bcd|state.ST_CALC~q\ & (\dht22_data_bcd|LessThan3~1_combout\ & (\dht22_data_bcd|num_reg[6]~0_combout\ & \dht22_data_bcd|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_CALC~q\,
	datab => \dht22_data_bcd|LessThan3~1_combout\,
	datac => \dht22_data_bcd|num_reg[6]~0_combout\,
	datad => \dht22_data_bcd|LessThan0~3_combout\,
	combout => \dht22_data_bcd|num_reg[6]~1_combout\);

-- Location: LCCOMB_X18_Y17_N0
\dht22_data_bcd|num_reg[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[6]~3_combout\ = (!\dht22_data_bcd|state.ST_DONE~q\ & !\dht22_data_bcd|num_reg[6]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_DONE~q\,
	datad => \dht22_data_bcd|num_reg[6]~1_combout\,
	combout => \dht22_data_bcd|num_reg[6]~3_combout\);

-- Location: FF_X19_Y18_N19
\dht22_data_bcd|num_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector12~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|num_reg[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(6));

-- Location: LCCOMB_X21_Y18_N10
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

-- Location: LCCOMB_X18_Y18_N14
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

-- Location: LCCOMB_X22_Y18_N4
\dht22_data_bcd|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector11~0_combout\ = (\dht22_data_bcd|state.ST_CALC~q\ & (((\dht22_data_bcd|Add3~12_combout\) # (\dht22_data_bcd|num_reg[6]~2_combout\)))) # (!\dht22_data_bcd|state.ST_CALC~q\ & (\dht22_one_wire|data_reg\(24) & 
-- ((!\dht22_data_bcd|num_reg[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_CALC~q\,
	datab => \dht22_one_wire|data_reg\(24),
	datac => \dht22_data_bcd|Add3~12_combout\,
	datad => \dht22_data_bcd|num_reg[6]~2_combout\,
	combout => \dht22_data_bcd|Selector11~0_combout\);

-- Location: LCCOMB_X22_Y18_N30
\dht22_data_bcd|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector11~1_combout\ = (\dht22_data_bcd|Selector11~0_combout\ & ((\dht22_data_bcd|Add1~10_combout\) # ((!\dht22_data_bcd|num_reg[6]~2_combout\)))) # (!\dht22_data_bcd|Selector11~0_combout\ & (((\dht22_one_wire|data_reg\(8) & 
-- \dht22_data_bcd|num_reg[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|Add1~10_combout\,
	datab => \dht22_one_wire|data_reg\(8),
	datac => \dht22_data_bcd|Selector11~0_combout\,
	datad => \dht22_data_bcd|num_reg[6]~2_combout\,
	combout => \dht22_data_bcd|Selector11~1_combout\);

-- Location: FF_X22_Y18_N31
\dht22_data_bcd|num_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector11~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|num_reg[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(7));

-- Location: LCCOMB_X21_Y18_N12
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

-- Location: LCCOMB_X18_Y18_N16
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

-- Location: LCCOMB_X19_Y18_N10
\dht22_data_bcd|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector10~0_combout\ = (\dht22_data_bcd|num_reg[6]~2_combout\ & (((\dht22_data_bcd|state.ST_CALC~q\)))) # (!\dht22_data_bcd|num_reg[6]~2_combout\ & ((\dht22_data_bcd|state.ST_CALC~q\ & ((\dht22_data_bcd|Add3~14_combout\))) # 
-- (!\dht22_data_bcd|state.ST_CALC~q\ & (\dht22_one_wire|data_reg\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg[6]~2_combout\,
	datab => \dht22_one_wire|data_reg\(23),
	datac => \dht22_data_bcd|Add3~14_combout\,
	datad => \dht22_data_bcd|state.ST_CALC~q\,
	combout => \dht22_data_bcd|Selector10~0_combout\);

-- Location: LCCOMB_X19_Y18_N26
\dht22_data_bcd|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector10~1_combout\ = (\dht22_data_bcd|num_reg[6]~2_combout\ & ((\dht22_data_bcd|Selector10~0_combout\ & ((\dht22_data_bcd|Add1~12_combout\))) # (!\dht22_data_bcd|Selector10~0_combout\ & (\dht22_one_wire|data_reg\(7))))) # 
-- (!\dht22_data_bcd|num_reg[6]~2_combout\ & (((\dht22_data_bcd|Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg[6]~2_combout\,
	datab => \dht22_one_wire|data_reg\(7),
	datac => \dht22_data_bcd|Add1~12_combout\,
	datad => \dht22_data_bcd|Selector10~0_combout\,
	combout => \dht22_data_bcd|Selector10~1_combout\);

-- Location: FF_X19_Y18_N27
\dht22_data_bcd|num_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector10~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|num_reg[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(8));

-- Location: LCCOMB_X21_Y18_N14
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

-- Location: LCCOMB_X18_Y18_N18
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

-- Location: LCCOMB_X19_Y18_N24
\dht22_data_bcd|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector9~0_combout\ = (\dht22_data_bcd|num_reg[6]~2_combout\ & (\dht22_data_bcd|state.ST_CALC~q\)) # (!\dht22_data_bcd|num_reg[6]~2_combout\ & ((\dht22_data_bcd|state.ST_CALC~q\ & ((\dht22_data_bcd|Add3~16_combout\))) # 
-- (!\dht22_data_bcd|state.ST_CALC~q\ & (\dht22_one_wire|data_reg\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg[6]~2_combout\,
	datab => \dht22_data_bcd|state.ST_CALC~q\,
	datac => \dht22_one_wire|data_reg\(22),
	datad => \dht22_data_bcd|Add3~16_combout\,
	combout => \dht22_data_bcd|Selector9~0_combout\);

-- Location: LCCOMB_X19_Y18_N2
\dht22_data_bcd|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector9~1_combout\ = (\dht22_data_bcd|num_reg[6]~2_combout\ & ((\dht22_data_bcd|Selector9~0_combout\ & ((\dht22_data_bcd|Add1~14_combout\))) # (!\dht22_data_bcd|Selector9~0_combout\ & (\dht22_one_wire|data_reg\(6))))) # 
-- (!\dht22_data_bcd|num_reg[6]~2_combout\ & (((\dht22_data_bcd|Selector9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg[6]~2_combout\,
	datab => \dht22_one_wire|data_reg\(6),
	datac => \dht22_data_bcd|Add1~14_combout\,
	datad => \dht22_data_bcd|Selector9~0_combout\,
	combout => \dht22_data_bcd|Selector9~1_combout\);

-- Location: FF_X19_Y18_N3
\dht22_data_bcd|num_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector9~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|num_reg[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(9));

-- Location: LCCOMB_X21_Y18_N16
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

-- Location: LCCOMB_X18_Y18_N20
\dht22_data_bcd|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add3~18_combout\ = (\dht22_data_bcd|num_reg\(10) & (\dht22_data_bcd|Add3~17\ & VCC)) # (!\dht22_data_bcd|num_reg\(10) & (!\dht22_data_bcd|Add3~17\))
-- \dht22_data_bcd|Add3~19\ = CARRY((!\dht22_data_bcd|num_reg\(10) & !\dht22_data_bcd|Add3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_data_bcd|num_reg\(10),
	datad => VCC,
	cin => \dht22_data_bcd|Add3~17\,
	combout => \dht22_data_bcd|Add3~18_combout\,
	cout => \dht22_data_bcd|Add3~19\);

-- Location: LCCOMB_X19_Y18_N14
\dht22_data_bcd|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector8~0_combout\ = (\dht22_data_bcd|num_reg[6]~2_combout\ & (((\dht22_data_bcd|state.ST_CALC~q\)))) # (!\dht22_data_bcd|num_reg[6]~2_combout\ & ((\dht22_data_bcd|state.ST_CALC~q\ & (\dht22_data_bcd|Add3~18_combout\)) # 
-- (!\dht22_data_bcd|state.ST_CALC~q\ & ((\dht22_one_wire|data_reg\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg[6]~2_combout\,
	datab => \dht22_data_bcd|Add3~18_combout\,
	datac => \dht22_one_wire|data_reg\(21),
	datad => \dht22_data_bcd|state.ST_CALC~q\,
	combout => \dht22_data_bcd|Selector8~0_combout\);

-- Location: LCCOMB_X19_Y18_N8
\dht22_data_bcd|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector8~1_combout\ = (\dht22_data_bcd|Selector8~0_combout\ & (((\dht22_data_bcd|Add1~16_combout\) # (!\dht22_data_bcd|num_reg[6]~2_combout\)))) # (!\dht22_data_bcd|Selector8~0_combout\ & (\dht22_one_wire|data_reg\(5) & 
-- ((\dht22_data_bcd|num_reg[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_reg\(5),
	datab => \dht22_data_bcd|Add1~16_combout\,
	datac => \dht22_data_bcd|Selector8~0_combout\,
	datad => \dht22_data_bcd|num_reg[6]~2_combout\,
	combout => \dht22_data_bcd|Selector8~1_combout\);

-- Location: FF_X19_Y18_N9
\dht22_data_bcd|num_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector8~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|num_reg[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(10));

-- Location: LCCOMB_X21_Y18_N18
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

-- Location: LCCOMB_X18_Y18_N22
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

-- Location: LCCOMB_X17_Y17_N18
\dht22_data_bcd|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector7~0_combout\ = (\dht22_data_bcd|num_reg[6]~2_combout\ & (((\dht22_data_bcd|state.ST_CALC~q\)))) # (!\dht22_data_bcd|num_reg[6]~2_combout\ & ((\dht22_data_bcd|state.ST_CALC~q\ & ((\dht22_data_bcd|Add3~20_combout\))) # 
-- (!\dht22_data_bcd|state.ST_CALC~q\ & (\dht22_one_wire|data_reg\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_reg\(20),
	datab => \dht22_data_bcd|num_reg[6]~2_combout\,
	datac => \dht22_data_bcd|state.ST_CALC~q\,
	datad => \dht22_data_bcd|Add3~20_combout\,
	combout => \dht22_data_bcd|Selector7~0_combout\);

-- Location: LCCOMB_X19_Y17_N26
\dht22_data_bcd|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector7~1_combout\ = (\dht22_data_bcd|num_reg[6]~2_combout\ & ((\dht22_data_bcd|Selector7~0_combout\ & ((\dht22_data_bcd|Add1~18_combout\))) # (!\dht22_data_bcd|Selector7~0_combout\ & (\dht22_one_wire|data_reg\(4))))) # 
-- (!\dht22_data_bcd|num_reg[6]~2_combout\ & (((\dht22_data_bcd|Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_reg\(4),
	datab => \dht22_data_bcd|Add1~18_combout\,
	datac => \dht22_data_bcd|num_reg[6]~2_combout\,
	datad => \dht22_data_bcd|Selector7~0_combout\,
	combout => \dht22_data_bcd|Selector7~1_combout\);

-- Location: FF_X19_Y17_N27
\dht22_data_bcd|num_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector7~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|num_reg[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(11));

-- Location: LCCOMB_X21_Y18_N20
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

-- Location: LCCOMB_X18_Y18_N24
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

-- Location: LCCOMB_X19_Y18_N16
\dht22_data_bcd|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector6~0_combout\ = (\dht22_data_bcd|num_reg[6]~2_combout\ & (((\dht22_data_bcd|state.ST_CALC~q\)))) # (!\dht22_data_bcd|num_reg[6]~2_combout\ & ((\dht22_data_bcd|state.ST_CALC~q\ & ((\dht22_data_bcd|Add3~22_combout\))) # 
-- (!\dht22_data_bcd|state.ST_CALC~q\ & (\dht22_one_wire|data_reg\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg[6]~2_combout\,
	datab => \dht22_one_wire|data_reg\(19),
	datac => \dht22_data_bcd|Add3~22_combout\,
	datad => \dht22_data_bcd|state.ST_CALC~q\,
	combout => \dht22_data_bcd|Selector6~0_combout\);

-- Location: LCCOMB_X19_Y18_N22
\dht22_data_bcd|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector6~1_combout\ = (\dht22_data_bcd|num_reg[6]~2_combout\ & ((\dht22_data_bcd|Selector6~0_combout\ & ((\dht22_data_bcd|Add1~20_combout\))) # (!\dht22_data_bcd|Selector6~0_combout\ & (\dht22_one_wire|data_reg\(3))))) # 
-- (!\dht22_data_bcd|num_reg[6]~2_combout\ & (((\dht22_data_bcd|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg[6]~2_combout\,
	datab => \dht22_one_wire|data_reg\(3),
	datac => \dht22_data_bcd|Add1~20_combout\,
	datad => \dht22_data_bcd|Selector6~0_combout\,
	combout => \dht22_data_bcd|Selector6~1_combout\);

-- Location: FF_X19_Y18_N23
\dht22_data_bcd|num_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector6~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|num_reg[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(12));

-- Location: LCCOMB_X18_Y18_N26
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

-- Location: LCCOMB_X19_Y18_N6
\dht22_data_bcd|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector5~0_combout\ = (\dht22_data_bcd|num_reg[6]~2_combout\ & (((\dht22_data_bcd|state.ST_CALC~q\)))) # (!\dht22_data_bcd|num_reg[6]~2_combout\ & ((\dht22_data_bcd|state.ST_CALC~q\ & ((\dht22_data_bcd|Add3~24_combout\))) # 
-- (!\dht22_data_bcd|state.ST_CALC~q\ & (\dht22_one_wire|data_reg\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg[6]~2_combout\,
	datab => \dht22_one_wire|data_reg\(18),
	datac => \dht22_data_bcd|Add3~24_combout\,
	datad => \dht22_data_bcd|state.ST_CALC~q\,
	combout => \dht22_data_bcd|Selector5~0_combout\);

-- Location: LCCOMB_X19_Y18_N30
\dht22_data_bcd|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector5~1_combout\ = (\dht22_data_bcd|num_reg[6]~2_combout\ & ((\dht22_data_bcd|Selector5~0_combout\ & ((\dht22_data_bcd|Add1~22_combout\))) # (!\dht22_data_bcd|Selector5~0_combout\ & (\dht22_one_wire|data_reg\(2))))) # 
-- (!\dht22_data_bcd|num_reg[6]~2_combout\ & (((\dht22_data_bcd|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg[6]~2_combout\,
	datab => \dht22_one_wire|data_reg\(2),
	datac => \dht22_data_bcd|Add1~22_combout\,
	datad => \dht22_data_bcd|Selector5~0_combout\,
	combout => \dht22_data_bcd|Selector5~1_combout\);

-- Location: FF_X19_Y18_N31
\dht22_data_bcd|num_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector5~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|num_reg[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(13));

-- Location: LCCOMB_X21_Y18_N30
\dht22_data_bcd|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector4~0_combout\ = (\dht22_data_bcd|state.ST_CALC~q\ & (((\dht22_data_bcd|num_reg[6]~2_combout\) # (\dht22_data_bcd|Add3~26_combout\)))) # (!\dht22_data_bcd|state.ST_CALC~q\ & (\dht22_one_wire|data_reg\(17) & 
-- (!\dht22_data_bcd|num_reg[6]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_CALC~q\,
	datab => \dht22_one_wire|data_reg\(17),
	datac => \dht22_data_bcd|num_reg[6]~2_combout\,
	datad => \dht22_data_bcd|Add3~26_combout\,
	combout => \dht22_data_bcd|Selector4~0_combout\);

-- Location: LCCOMB_X21_Y18_N28
\dht22_data_bcd|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector4~1_combout\ = (\dht22_data_bcd|Selector4~0_combout\ & ((\dht22_data_bcd|Add1~24_combout\) # ((!\dht22_data_bcd|num_reg[6]~2_combout\)))) # (!\dht22_data_bcd|Selector4~0_combout\ & (((\dht22_data_bcd|num_reg[6]~2_combout\ & 
-- \dht22_one_wire|data_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|Selector4~0_combout\,
	datab => \dht22_data_bcd|Add1~24_combout\,
	datac => \dht22_data_bcd|num_reg[6]~2_combout\,
	datad => \dht22_one_wire|data_reg\(1),
	combout => \dht22_data_bcd|Selector4~1_combout\);

-- Location: FF_X21_Y18_N29
\dht22_data_bcd|num_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector4~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|num_reg[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(14));

-- Location: LCCOMB_X18_Y17_N6
\dht22_data_bcd|num~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num~2_combout\ = (!\dht22_data_bcd|num_reg\(14) & (\dht22_data_bcd|LessThan3~1_combout\ & (!\dht22_data_bcd|num_reg\(15) & !\dht22_data_bcd|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(14),
	datab => \dht22_data_bcd|LessThan3~1_combout\,
	datac => \dht22_data_bcd|num_reg\(15),
	datad => \dht22_data_bcd|LessThan0~3_combout\,
	combout => \dht22_data_bcd|num~2_combout\);

-- Location: LCCOMB_X18_Y17_N24
\dht22_data_bcd|num_reg[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[1]~5_combout\ = (\dht22_data_bcd|state.ST_DONE~q\ & (((\dht22_data_bcd|num_reg\(1))))) # (!\dht22_data_bcd|state.ST_DONE~q\ & ((\dht22_data_bcd|num~2_combout\ & (\dht22_data_bcd|Add3~0_combout\)) # (!\dht22_data_bcd|num~2_combout\ 
-- & ((\dht22_data_bcd|num_reg\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_DONE~q\,
	datab => \dht22_data_bcd|Add3~0_combout\,
	datac => \dht22_data_bcd|num_reg\(1),
	datad => \dht22_data_bcd|num~2_combout\,
	combout => \dht22_data_bcd|num_reg[1]~5_combout\);

-- Location: LCCOMB_X22_Y13_N20
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

-- Location: FF_X22_Y13_N21
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

-- Location: LCCOMB_X22_Y17_N22
\dht22_data_bcd|num_reg[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[1]~4_combout\ = (\param~q\ & ((\dht22_one_wire|data_reg\(30)))) # (!\param~q\ & (\dht22_one_wire|data_reg\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \param~q\,
	datac => \dht22_one_wire|data_reg\(14),
	datad => \dht22_one_wire|data_reg\(30),
	combout => \dht22_data_bcd|num_reg[1]~4_combout\);

-- Location: LCCOMB_X18_Y17_N30
\dht22_data_bcd|num_reg[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[1]~6_combout\ = (\dht22_data_bcd|state.ST_DONE~q\ & (\dht22_data_bcd|num_reg[1]~5_combout\)) # (!\dht22_data_bcd|state.ST_DONE~q\ & ((\dht22_data_bcd|state.ST_CALC~q\ & (\dht22_data_bcd|num_reg[1]~5_combout\)) # 
-- (!\dht22_data_bcd|state.ST_CALC~q\ & ((\dht22_data_bcd|num_reg[1]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_DONE~q\,
	datab => \dht22_data_bcd|num_reg[1]~5_combout\,
	datac => \dht22_data_bcd|num_reg[1]~4_combout\,
	datad => \dht22_data_bcd|state.ST_CALC~q\,
	combout => \dht22_data_bcd|num_reg[1]~6_combout\);

-- Location: FF_X18_Y17_N31
\dht22_data_bcd|num_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|num_reg[1]~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(1));

-- Location: LCCOMB_X18_Y18_N4
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

-- Location: LCCOMB_X21_Y18_N0
\dht22_data_bcd|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~0_combout\ = \dht22_data_bcd|num_reg\(2) $ (VCC)
-- \dht22_data_bcd|Add1~1\ = CARRY(\dht22_data_bcd|num_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(2),
	datad => VCC,
	combout => \dht22_data_bcd|Add1~0_combout\,
	cout => \dht22_data_bcd|Add1~1\);

-- Location: LCCOMB_X19_Y17_N12
\dht22_data_bcd|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector16~0_combout\ = (\dht22_data_bcd|num_reg[6]~2_combout\ & ((\dht22_one_wire|data_reg\(13)) # ((\dht22_data_bcd|state.ST_CALC~q\)))) # (!\dht22_data_bcd|num_reg[6]~2_combout\ & (((\dht22_one_wire|data_reg\(29) & 
-- !\dht22_data_bcd|state.ST_CALC~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_reg\(13),
	datab => \dht22_one_wire|data_reg\(29),
	datac => \dht22_data_bcd|num_reg[6]~2_combout\,
	datad => \dht22_data_bcd|state.ST_CALC~q\,
	combout => \dht22_data_bcd|Selector16~0_combout\);

-- Location: LCCOMB_X19_Y17_N16
\dht22_data_bcd|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector16~1_combout\ = (\dht22_data_bcd|state.ST_CALC~q\ & ((\dht22_data_bcd|Selector16~0_combout\ & ((\dht22_data_bcd|Add1~0_combout\))) # (!\dht22_data_bcd|Selector16~0_combout\ & (\dht22_data_bcd|Add3~2_combout\)))) # 
-- (!\dht22_data_bcd|state.ST_CALC~q\ & (((\dht22_data_bcd|Selector16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_CALC~q\,
	datab => \dht22_data_bcd|Add3~2_combout\,
	datac => \dht22_data_bcd|Add1~0_combout\,
	datad => \dht22_data_bcd|Selector16~0_combout\,
	combout => \dht22_data_bcd|Selector16~1_combout\);

-- Location: FF_X19_Y17_N17
\dht22_data_bcd|num_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector16~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|num_reg[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(2));

-- Location: LCCOMB_X21_Y18_N2
\dht22_data_bcd|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~2_combout\ = (\dht22_data_bcd|num_reg\(3) & (\dht22_data_bcd|Add1~1\ & VCC)) # (!\dht22_data_bcd|num_reg\(3) & (!\dht22_data_bcd|Add1~1\))
-- \dht22_data_bcd|Add1~3\ = CARRY((!\dht22_data_bcd|num_reg\(3) & !\dht22_data_bcd|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(3),
	datad => VCC,
	cin => \dht22_data_bcd|Add1~1\,
	combout => \dht22_data_bcd|Add1~2_combout\,
	cout => \dht22_data_bcd|Add1~3\);

-- Location: LCCOMB_X21_Y18_N4
\dht22_data_bcd|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add1~4_combout\ = (\dht22_data_bcd|num_reg\(4) & ((GND) # (!\dht22_data_bcd|Add1~3\))) # (!\dht22_data_bcd|num_reg\(4) & (\dht22_data_bcd|Add1~3\ $ (GND)))
-- \dht22_data_bcd|Add1~5\ = CARRY((\dht22_data_bcd|num_reg\(4)) # (!\dht22_data_bcd|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dht22_data_bcd|num_reg\(4),
	datad => VCC,
	cin => \dht22_data_bcd|Add1~3\,
	combout => \dht22_data_bcd|Add1~4_combout\,
	cout => \dht22_data_bcd|Add1~5\);

-- Location: LCCOMB_X19_Y18_N0
\dht22_data_bcd|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector13~0_combout\ = (\dht22_data_bcd|num_reg[6]~2_combout\ & (\dht22_data_bcd|state.ST_CALC~q\)) # (!\dht22_data_bcd|num_reg[6]~2_combout\ & ((\dht22_data_bcd|state.ST_CALC~q\ & ((\dht22_data_bcd|Add3~8_combout\))) # 
-- (!\dht22_data_bcd|state.ST_CALC~q\ & (\dht22_one_wire|data_reg\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg[6]~2_combout\,
	datab => \dht22_data_bcd|state.ST_CALC~q\,
	datac => \dht22_one_wire|data_reg\(26),
	datad => \dht22_data_bcd|Add3~8_combout\,
	combout => \dht22_data_bcd|Selector13~0_combout\);

-- Location: LCCOMB_X19_Y18_N12
\dht22_data_bcd|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector13~1_combout\ = (\dht22_data_bcd|num_reg[6]~2_combout\ & ((\dht22_data_bcd|Selector13~0_combout\ & ((\dht22_data_bcd|Add1~6_combout\))) # (!\dht22_data_bcd|Selector13~0_combout\ & (\dht22_one_wire|data_reg\(10))))) # 
-- (!\dht22_data_bcd|num_reg[6]~2_combout\ & (((\dht22_data_bcd|Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg[6]~2_combout\,
	datab => \dht22_one_wire|data_reg\(10),
	datac => \dht22_data_bcd|Add1~6_combout\,
	datad => \dht22_data_bcd|Selector13~0_combout\,
	combout => \dht22_data_bcd|Selector13~1_combout\);

-- Location: FF_X19_Y18_N13
\dht22_data_bcd|num_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector13~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|num_reg[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(5));

-- Location: LCCOMB_X19_Y17_N14
\dht22_data_bcd|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|LessThan3~0_combout\ = ((!\dht22_data_bcd|num_reg\(3) & (!\dht22_data_bcd|num_reg\(4) & !\dht22_data_bcd|num_reg\(2)))) # (!\dht22_data_bcd|num_reg\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(3),
	datab => \dht22_data_bcd|num_reg\(4),
	datac => \dht22_data_bcd|num_reg\(6),
	datad => \dht22_data_bcd|num_reg\(2),
	combout => \dht22_data_bcd|LessThan3~0_combout\);

-- Location: LCCOMB_X19_Y18_N4
\dht22_data_bcd|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|LessThan0~0_combout\ = (!\dht22_data_bcd|num_reg\(12) & (!\dht22_data_bcd|num_reg\(10) & (!\dht22_data_bcd|num_reg\(11) & !\dht22_data_bcd|num_reg\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(12),
	datab => \dht22_data_bcd|num_reg\(10),
	datac => \dht22_data_bcd|num_reg\(11),
	datad => \dht22_data_bcd|num_reg\(9),
	combout => \dht22_data_bcd|LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y18_N20
\dht22_data_bcd|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|LessThan0~1_combout\ = (!\dht22_data_bcd|num_reg\(8) & (\dht22_data_bcd|LessThan0~0_combout\ & !\dht22_data_bcd|num_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(8),
	datac => \dht22_data_bcd|LessThan0~0_combout\,
	datad => \dht22_data_bcd|num_reg\(7),
	combout => \dht22_data_bcd|LessThan0~1_combout\);

-- Location: LCCOMB_X18_Y17_N8
\dht22_data_bcd|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|LessThan3~1_combout\ = (!\dht22_data_bcd|num_reg\(13) & (\dht22_data_bcd|LessThan0~1_combout\ & ((\dht22_data_bcd|LessThan3~0_combout\) # (!\dht22_data_bcd|num_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(5),
	datab => \dht22_data_bcd|LessThan3~0_combout\,
	datac => \dht22_data_bcd|num_reg\(13),
	datad => \dht22_data_bcd|LessThan0~1_combout\,
	combout => \dht22_data_bcd|LessThan3~1_combout\);

-- Location: LCCOMB_X18_Y17_N26
\dht22_data_bcd|num_reg[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[6]~2_combout\ = (\dht22_data_bcd|state.ST_CALC~q\ & (((!\dht22_data_bcd|num_reg[6]~0_combout\)) # (!\dht22_data_bcd|LessThan3~1_combout\))) # (!\dht22_data_bcd|state.ST_CALC~q\ & (((!\param~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_CALC~q\,
	datab => \dht22_data_bcd|LessThan3~1_combout\,
	datac => \dht22_data_bcd|num_reg[6]~0_combout\,
	datad => \param~q\,
	combout => \dht22_data_bcd|num_reg[6]~2_combout\);

-- Location: LCCOMB_X18_Y18_N6
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

-- Location: LCCOMB_X19_Y17_N22
\dht22_data_bcd|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector15~0_combout\ = (\dht22_data_bcd|state.ST_CALC~q\ & (((\dht22_data_bcd|num_reg[6]~2_combout\) # (\dht22_data_bcd|Add3~4_combout\)))) # (!\dht22_data_bcd|state.ST_CALC~q\ & (\dht22_one_wire|data_reg\(28) & 
-- (!\dht22_data_bcd|num_reg[6]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_CALC~q\,
	datab => \dht22_one_wire|data_reg\(28),
	datac => \dht22_data_bcd|num_reg[6]~2_combout\,
	datad => \dht22_data_bcd|Add3~4_combout\,
	combout => \dht22_data_bcd|Selector15~0_combout\);

-- Location: LCCOMB_X19_Y17_N6
\dht22_data_bcd|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector15~1_combout\ = (\dht22_data_bcd|Selector15~0_combout\ & (((\dht22_data_bcd|Add1~2_combout\) # (!\dht22_data_bcd|num_reg[6]~2_combout\)))) # (!\dht22_data_bcd|Selector15~0_combout\ & (\dht22_one_wire|data_reg\(12) & 
-- (\dht22_data_bcd|num_reg[6]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|Selector15~0_combout\,
	datab => \dht22_one_wire|data_reg\(12),
	datac => \dht22_data_bcd|num_reg[6]~2_combout\,
	datad => \dht22_data_bcd|Add1~2_combout\,
	combout => \dht22_data_bcd|Selector15~1_combout\);

-- Location: FF_X19_Y17_N7
\dht22_data_bcd|num_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector15~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|num_reg[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(3));

-- Location: LCCOMB_X19_Y17_N24
\dht22_data_bcd|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector14~0_combout\ = (\dht22_data_bcd|num_reg[6]~2_combout\ & ((\dht22_one_wire|data_reg\(11)) # ((\dht22_data_bcd|state.ST_CALC~q\)))) # (!\dht22_data_bcd|num_reg[6]~2_combout\ & (((\dht22_one_wire|data_reg\(27) & 
-- !\dht22_data_bcd|state.ST_CALC~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_one_wire|data_reg\(11),
	datab => \dht22_one_wire|data_reg\(27),
	datac => \dht22_data_bcd|num_reg[6]~2_combout\,
	datad => \dht22_data_bcd|state.ST_CALC~q\,
	combout => \dht22_data_bcd|Selector14~0_combout\);

-- Location: LCCOMB_X19_Y17_N4
\dht22_data_bcd|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector14~1_combout\ = (\dht22_data_bcd|Selector14~0_combout\ & (((\dht22_data_bcd|Add1~4_combout\) # (!\dht22_data_bcd|state.ST_CALC~q\)))) # (!\dht22_data_bcd|Selector14~0_combout\ & (\dht22_data_bcd|Add3~6_combout\ & 
-- ((\dht22_data_bcd|state.ST_CALC~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|Add3~6_combout\,
	datab => \dht22_data_bcd|Selector14~0_combout\,
	datac => \dht22_data_bcd|Add1~4_combout\,
	datad => \dht22_data_bcd|state.ST_CALC~q\,
	combout => \dht22_data_bcd|Selector14~1_combout\);

-- Location: FF_X19_Y17_N5
\dht22_data_bcd|num_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector14~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|num_reg[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(4));

-- Location: LCCOMB_X18_Y17_N20
\dht22_data_bcd|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|LessThan0~2_combout\ = (!\dht22_data_bcd|num_reg\(6) & (((!\dht22_data_bcd|num_reg\(1) & !\dht22_data_bcd|num_reg\(2))) # (!\dht22_data_bcd|num_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(1),
	datab => \dht22_data_bcd|num_reg\(2),
	datac => \dht22_data_bcd|num_reg\(6),
	datad => \dht22_data_bcd|num_reg\(3),
	combout => \dht22_data_bcd|LessThan0~2_combout\);

-- Location: LCCOMB_X18_Y17_N18
\dht22_data_bcd|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|LessThan0~3_combout\ = (!\dht22_data_bcd|num_reg\(4) & (\dht22_data_bcd|LessThan0~2_combout\ & (!\dht22_data_bcd|num_reg\(5) & \dht22_data_bcd|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|num_reg\(4),
	datab => \dht22_data_bcd|LessThan0~2_combout\,
	datac => \dht22_data_bcd|num_reg\(5),
	datad => \dht22_data_bcd|LessThan0~1_combout\,
	combout => \dht22_data_bcd|LessThan0~3_combout\);

-- Location: LCCOMB_X19_Y17_N2
\dht22_data_bcd|Selector2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector2~5_combout\ = (\dht22_data_bcd|state.ST_CALC~q\ & (\dht22_data_bcd|LessThan0~3_combout\ & (!\dht22_data_bcd|num_reg\(13) & \dht22_data_bcd|num_reg[6]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_CALC~q\,
	datab => \dht22_data_bcd|LessThan0~3_combout\,
	datac => \dht22_data_bcd|num_reg\(13),
	datad => \dht22_data_bcd|num_reg[6]~0_combout\,
	combout => \dht22_data_bcd|Selector2~5_combout\);

-- Location: LCCOMB_X18_Y17_N14
\dht22_data_bcd|state.ST_IDLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|state.ST_IDLE~0_combout\ = (\dht22_data_bcd|Selector2~4_combout\ & ((\dht22_data_bcd|Selector2~5_combout\ & (!\dht22_data_bcd|tens_reg[0]~2_combout\)) # (!\dht22_data_bcd|Selector2~5_combout\ & ((\dht22_data_bcd|state.ST_IDLE~q\))))) # 
-- (!\dht22_data_bcd|Selector2~4_combout\ & (!\dht22_data_bcd|tens_reg[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|tens_reg[0]~2_combout\,
	datab => \dht22_data_bcd|Selector2~4_combout\,
	datac => \dht22_data_bcd|state.ST_IDLE~q\,
	datad => \dht22_data_bcd|Selector2~5_combout\,
	combout => \dht22_data_bcd|state.ST_IDLE~0_combout\);

-- Location: FF_X18_Y17_N15
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

-- Location: LCCOMB_X18_Y17_N4
\dht22_data_bcd|Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector2~4_combout\ = (\dht22_data_bcd|done_reg~q\ & (!\dht22_data_bcd|state.ST_DONE~q\)) # (!\dht22_data_bcd|done_reg~q\ & ((\dht22_data_bcd|state.ST_IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_DONE~q\,
	datac => \dht22_data_bcd|state.ST_IDLE~q\,
	datad => \dht22_data_bcd|done_reg~q\,
	combout => \dht22_data_bcd|Selector2~4_combout\);

-- Location: LCCOMB_X18_Y17_N12
\dht22_data_bcd|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector1~0_combout\ = (!\dht22_data_bcd|Selector2~5_combout\ & ((\dht22_data_bcd|Selector2~4_combout\ & ((\dht22_data_bcd|state.ST_CALC~q\))) # (!\dht22_data_bcd|Selector2~4_combout\ & (!\dht22_data_bcd|tens_reg[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|tens_reg[0]~2_combout\,
	datab => \dht22_data_bcd|Selector2~4_combout\,
	datac => \dht22_data_bcd|state.ST_CALC~q\,
	datad => \dht22_data_bcd|Selector2~5_combout\,
	combout => \dht22_data_bcd|Selector1~0_combout\);

-- Location: FF_X18_Y17_N13
\dht22_data_bcd|state.ST_CALC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector1~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|state.ST_CALC~q\);

-- Location: LCCOMB_X18_Y17_N16
\dht22_data_bcd|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector26~0_combout\ = (\dht22_data_bcd|num_reg[6]~1_combout\) # ((\dht22_data_bcd|done_reg~q\ & ((\dht22_data_bcd|state.ST_CALC~q\) # (!\dht22_data_bcd|state.ST_IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_CALC~q\,
	datab => \dht22_data_bcd|state.ST_IDLE~q\,
	datac => \dht22_data_bcd|done_reg~q\,
	datad => \dht22_data_bcd|num_reg[6]~1_combout\,
	combout => \dht22_data_bcd|Selector26~0_combout\);

-- Location: FF_X18_Y17_N17
\dht22_data_bcd|done_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector26~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|done_reg~q\);

-- Location: LCCOMB_X18_Y17_N10
\dht22_data_bcd|Selector2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector2~6_combout\ = (\dht22_data_bcd|state.ST_DONE~q\ & (!\dht22_data_bcd|done_reg~q\ & ((\dht22_data_bcd|state.ST_IDLE~q\) # (\dht22_data_bcd|Selector2~5_combout\)))) # (!\dht22_data_bcd|state.ST_DONE~q\ & 
-- (((\dht22_data_bcd|Selector2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|done_reg~q\,
	datab => \dht22_data_bcd|state.ST_IDLE~q\,
	datac => \dht22_data_bcd|state.ST_DONE~q\,
	datad => \dht22_data_bcd|Selector2~5_combout\,
	combout => \dht22_data_bcd|Selector2~6_combout\);

-- Location: FF_X18_Y17_N11
\dht22_data_bcd|state.ST_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector2~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|state.ST_DONE~q\);

-- Location: LCCOMB_X22_Y16_N22
\dht22_data_bcd|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector21~0_combout\ = (!\dht22_data_bcd|hundreds_reg\(0) & !\dht22_data_bcd|state.ST_DONE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_data_bcd|hundreds_reg\(0),
	datad => \dht22_data_bcd|state.ST_DONE~q\,
	combout => \dht22_data_bcd|Selector21~0_combout\);

-- Location: LCCOMB_X19_Y17_N0
\dht22_data_bcd|hundreds_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|hundreds_reg[0]~0_combout\ = (\dht22_data_bcd|tens_reg[0]~2_combout\) # ((\dht22_data_bcd|state.ST_CALC~q\ & ((!\dht22_data_bcd|num_reg[6]~0_combout\) # (!\dht22_data_bcd|LessThan3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|LessThan3~1_combout\,
	datab => \dht22_data_bcd|tens_reg[0]~2_combout\,
	datac => \dht22_data_bcd|state.ST_CALC~q\,
	datad => \dht22_data_bcd|num_reg[6]~0_combout\,
	combout => \dht22_data_bcd|hundreds_reg[0]~0_combout\);

-- Location: FF_X22_Y16_N23
\dht22_data_bcd|hundreds_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector21~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|hundreds_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|hundreds_reg\(0));

-- Location: LCCOMB_X22_Y16_N20
\dht22_data_bcd|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector20~0_combout\ = (!\dht22_data_bcd|state.ST_DONE~q\ & (\dht22_data_bcd|hundreds_reg\(0) $ (\dht22_data_bcd|hundreds_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|hundreds_reg\(0),
	datab => \dht22_data_bcd|state.ST_DONE~q\,
	datac => \dht22_data_bcd|hundreds_reg\(1),
	combout => \dht22_data_bcd|Selector20~0_combout\);

-- Location: FF_X22_Y16_N21
\dht22_data_bcd|hundreds_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector20~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|hundreds_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|hundreds_reg\(1));

-- Location: LCCOMB_X22_Y16_N26
\dht22_data_bcd|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector19~0_combout\ = (!\dht22_data_bcd|state.ST_DONE~q\ & (\dht22_data_bcd|hundreds_reg\(2) $ (((\dht22_data_bcd|hundreds_reg\(0) & \dht22_data_bcd|hundreds_reg\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|hundreds_reg\(0),
	datab => \dht22_data_bcd|state.ST_DONE~q\,
	datac => \dht22_data_bcd|hundreds_reg\(2),
	datad => \dht22_data_bcd|hundreds_reg\(1),
	combout => \dht22_data_bcd|Selector19~0_combout\);

-- Location: FF_X22_Y16_N27
\dht22_data_bcd|hundreds_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector19~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|hundreds_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|hundreds_reg\(2));

-- Location: LCCOMB_X22_Y17_N26
\dht22_data_bcd|bcd_reg[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|bcd_reg[10]~feeder_combout\ = \dht22_data_bcd|hundreds_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dht22_data_bcd|hundreds_reg\(2),
	combout => \dht22_data_bcd|bcd_reg[10]~feeder_combout\);

-- Location: FF_X22_Y17_N27
\dht22_data_bcd|bcd_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|bcd_reg[10]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|num_reg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|bcd_reg\(10));

-- Location: FF_X21_Y17_N15
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
	ena => \dht22_data_bcd|num_reg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|bcd_reg\(2));

-- Location: LCCOMB_X21_Y17_N14
\display|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux2~0_combout\ = (\display|digit_index\(0) & ((\display|digit_index\(1) & (\dht22_data_bcd|bcd_reg\(10))) # (!\display|digit_index\(1) & ((\dht22_data_bcd|bcd_reg\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_index\(0),
	datab => \dht22_data_bcd|bcd_reg\(10),
	datac => \dht22_data_bcd|bcd_reg\(2),
	datad => \display|digit_index\(1),
	combout => \display|Mux2~0_combout\);

-- Location: LCCOMB_X21_Y17_N10
\dht22_data_bcd|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector25~0_combout\ = (!\dht22_data_bcd|tens_reg\(0) & !\dht22_data_bcd|state.ST_DONE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht22_data_bcd|tens_reg\(0),
	datad => \dht22_data_bcd|state.ST_DONE~q\,
	combout => \dht22_data_bcd|Selector25~0_combout\);

-- Location: LCCOMB_X18_Y17_N28
\dht22_data_bcd|tens_reg[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|tens_reg[0]~3_combout\ = (\dht22_data_bcd|state.ST_CALC~q\ & ((\dht22_data_bcd|num~2_combout\) # ((\dht22_data_bcd|done_reg~q\ & \dht22_data_bcd|state.ST_DONE~q\)))) # (!\dht22_data_bcd|state.ST_CALC~q\ & (\dht22_data_bcd|done_reg~q\ & 
-- (\dht22_data_bcd|state.ST_DONE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_CALC~q\,
	datab => \dht22_data_bcd|done_reg~q\,
	datac => \dht22_data_bcd|state.ST_DONE~q\,
	datad => \dht22_data_bcd|num~2_combout\,
	combout => \dht22_data_bcd|tens_reg[0]~3_combout\);

-- Location: FF_X21_Y17_N11
\dht22_data_bcd|tens_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector25~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|tens_reg[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|tens_reg\(0));

-- Location: LCCOMB_X19_Y17_N10
\dht22_data_bcd|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector24~0_combout\ = (!\dht22_data_bcd|state.ST_DONE~q\ & (\dht22_data_bcd|tens_reg\(1) $ (\dht22_data_bcd|tens_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|tens_reg\(1),
	datab => \dht22_data_bcd|state.ST_DONE~q\,
	datac => \dht22_data_bcd|tens_reg\(0),
	combout => \dht22_data_bcd|Selector24~0_combout\);

-- Location: FF_X18_Y17_N1
\dht22_data_bcd|tens_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dht22_data_bcd|Selector24~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dht22_data_bcd|tens_reg[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|tens_reg\(1));

-- Location: LCCOMB_X21_Y17_N4
\dht22_data_bcd|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector23~0_combout\ = (!\dht22_data_bcd|state.ST_DONE~q\ & (\dht22_data_bcd|tens_reg\(2) $ (((\dht22_data_bcd|tens_reg\(1) & \dht22_data_bcd|tens_reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|tens_reg\(1),
	datab => \dht22_data_bcd|tens_reg\(0),
	datac => \dht22_data_bcd|tens_reg\(2),
	datad => \dht22_data_bcd|state.ST_DONE~q\,
	combout => \dht22_data_bcd|Selector23~0_combout\);

-- Location: FF_X21_Y17_N5
\dht22_data_bcd|tens_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector23~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|tens_reg[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|tens_reg\(2));

-- Location: FF_X21_Y17_N21
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
	ena => \dht22_data_bcd|num_reg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|bcd_reg\(6));

-- Location: LCCOMB_X21_Y17_N20
\display|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux2~1_combout\ = (\display|Mux2~0_combout\) # ((!\display|digit_index\(0) & (\dht22_data_bcd|bcd_reg\(6) & \display|digit_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_index\(0),
	datab => \display|Mux2~0_combout\,
	datac => \dht22_data_bcd|bcd_reg\(6),
	datad => \display|digit_index\(1),
	combout => \display|Mux2~1_combout\);

-- Location: FF_X22_Y17_N19
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
	ena => \dht22_data_bcd|num_reg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|bcd_reg\(9));

-- Location: FF_X21_Y17_N27
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
	ena => \dht22_data_bcd|num_reg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|bcd_reg\(5));

-- Location: LCCOMB_X21_Y17_N26
\display|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux3~0_combout\ = (\display|digit_index\(0) & (\dht22_data_bcd|bcd_reg\(9) & ((\display|digit_index\(1))))) # (!\display|digit_index\(0) & (((\dht22_data_bcd|bcd_reg\(5)) # (!\display|digit_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_index\(0),
	datab => \dht22_data_bcd|bcd_reg\(9),
	datac => \dht22_data_bcd|bcd_reg\(5),
	datad => \display|digit_index\(1),
	combout => \display|Mux3~0_combout\);

-- Location: FF_X21_Y17_N17
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
	ena => \dht22_data_bcd|num_reg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|bcd_reg\(1));

-- Location: LCCOMB_X21_Y17_N16
\display|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux3~1_combout\ = (\display|Mux3~0_combout\) # ((\dht22_data_bcd|bcd_reg\(1) & !\display|digit_index\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Mux3~0_combout\,
	datac => \dht22_data_bcd|bcd_reg\(1),
	datad => \display|digit_index\(1),
	combout => \display|Mux3~1_combout\);

-- Location: LCCOMB_X22_Y16_N16
\dht22_data_bcd|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add0~0_combout\ = \dht22_data_bcd|hundreds_reg\(3) $ (((\dht22_data_bcd|hundreds_reg\(0) & (\dht22_data_bcd|hundreds_reg\(1) & \dht22_data_bcd|hundreds_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|hundreds_reg\(0),
	datab => \dht22_data_bcd|hundreds_reg\(1),
	datac => \dht22_data_bcd|hundreds_reg\(2),
	datad => \dht22_data_bcd|hundreds_reg\(3),
	combout => \dht22_data_bcd|Add0~0_combout\);

-- Location: LCCOMB_X22_Y16_N28
\dht22_data_bcd|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector18~0_combout\ = (!\dht22_data_bcd|state.ST_DONE~q\ & \dht22_data_bcd|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_data_bcd|state.ST_DONE~q\,
	datad => \dht22_data_bcd|Add0~0_combout\,
	combout => \dht22_data_bcd|Selector18~0_combout\);

-- Location: FF_X22_Y16_N29
\dht22_data_bcd|hundreds_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector18~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|hundreds_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|hundreds_reg\(3));

-- Location: LCCOMB_X22_Y17_N28
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

-- Location: FF_X22_Y17_N29
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
	ena => \dht22_data_bcd|num_reg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|bcd_reg\(11));

-- Location: LCCOMB_X21_Y17_N24
\dht22_data_bcd|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Add2~0_combout\ = \dht22_data_bcd|tens_reg\(3) $ (((\dht22_data_bcd|tens_reg\(0) & (\dht22_data_bcd|tens_reg\(2) & \dht22_data_bcd|tens_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|tens_reg\(3),
	datab => \dht22_data_bcd|tens_reg\(0),
	datac => \dht22_data_bcd|tens_reg\(2),
	datad => \dht22_data_bcd|tens_reg\(1),
	combout => \dht22_data_bcd|Add2~0_combout\);

-- Location: LCCOMB_X21_Y17_N30
\dht22_data_bcd|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|Selector22~0_combout\ = (!\dht22_data_bcd|state.ST_DONE~q\ & \dht22_data_bcd|Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dht22_data_bcd|state.ST_DONE~q\,
	datad => \dht22_data_bcd|Add2~0_combout\,
	combout => \dht22_data_bcd|Selector22~0_combout\);

-- Location: FF_X21_Y17_N31
\dht22_data_bcd|tens_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|Selector22~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \dht22_data_bcd|tens_reg[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|tens_reg\(3));

-- Location: FF_X21_Y17_N23
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
	ena => \dht22_data_bcd|num_reg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|bcd_reg\(7));

-- Location: LCCOMB_X21_Y17_N22
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

-- Location: FF_X21_Y17_N9
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
	ena => \dht22_data_bcd|num_reg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|bcd_reg\(3));

-- Location: LCCOMB_X21_Y17_N8
\display|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux1~1_combout\ = (\display|Mux1~0_combout\) # ((\dht22_data_bcd|bcd_reg\(3) & !\display|digit_index\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Mux1~0_combout\,
	datac => \dht22_data_bcd|bcd_reg\(3),
	datad => \display|digit_index\(1),
	combout => \display|Mux1~1_combout\);

-- Location: FF_X21_Y17_N13
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
	ena => \dht22_data_bcd|num_reg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|bcd_reg\(4));

-- Location: LCCOMB_X22_Y16_N10
\dht22_data_bcd|num_reg[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[0]~7_combout\ = (!\dht22_data_bcd|state.ST_IDLE~q\ & ((\param~q\ & (\dht22_one_wire|data_reg\(31))) # (!\param~q\ & ((\dht22_one_wire|data_reg\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_IDLE~q\,
	datab => \param~q\,
	datac => \dht22_one_wire|data_reg\(31),
	datad => \dht22_one_wire|data_reg\(15),
	combout => \dht22_data_bcd|num_reg[0]~7_combout\);

-- Location: LCCOMB_X22_Y16_N12
\dht22_data_bcd|num_reg[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dht22_data_bcd|num_reg[0]~8_combout\ = (\dht22_data_bcd|num_reg[0]~7_combout\) # ((\dht22_data_bcd|state.ST_IDLE~q\ & \dht22_data_bcd|num_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|state.ST_IDLE~q\,
	datac => \dht22_data_bcd|num_reg\(0),
	datad => \dht22_data_bcd|num_reg[0]~7_combout\,
	combout => \dht22_data_bcd|num_reg[0]~8_combout\);

-- Location: FF_X22_Y16_N13
\dht22_data_bcd|num_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dht22_data_bcd|num_reg[0]~8_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|num_reg\(0));

-- Location: FF_X21_Y17_N19
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
	ena => \dht22_data_bcd|num_reg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|bcd_reg\(0));

-- Location: LCCOMB_X21_Y17_N18
\display|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux4~0_combout\ = (\display|digit_index\(0) & (((\dht22_data_bcd|bcd_reg\(0)) # (\display|digit_index\(1))))) # (!\display|digit_index\(0) & (!\param~q\ & ((!\display|digit_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_index\(0),
	datab => \param~q\,
	datac => \dht22_data_bcd|bcd_reg\(0),
	datad => \display|digit_index\(1),
	combout => \display|Mux4~0_combout\);

-- Location: FF_X21_Y17_N29
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
	ena => \dht22_data_bcd|num_reg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dht22_data_bcd|bcd_reg\(8));

-- Location: LCCOMB_X21_Y17_N28
\display|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux4~1_combout\ = (\display|Mux4~0_combout\ & (((\dht22_data_bcd|bcd_reg\(8)) # (!\display|digit_index\(1))))) # (!\display|Mux4~0_combout\ & (\dht22_data_bcd|bcd_reg\(4) & ((\display|digit_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht22_data_bcd|bcd_reg\(4),
	datab => \display|Mux4~0_combout\,
	datac => \dht22_data_bcd|bcd_reg\(8),
	datad => \display|digit_index\(1),
	combout => \display|Mux4~1_combout\);

-- Location: LCCOMB_X17_Y21_N12
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

-- Location: LCCOMB_X17_Y21_N18
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

-- Location: LCCOMB_X17_Y21_N8
\display|rom|rom~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|rom|rom~2_combout\ = (\display|Mux3~1_combout\ & (!\display|Mux2~1_combout\ & !\display|Mux4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display|Mux3~1_combout\,
	datac => \display|Mux2~1_combout\,
	datad => \display|Mux4~1_combout\,
	combout => \display|rom|rom~2_combout\);

-- Location: LCCOMB_X17_Y21_N2
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

-- Location: LCCOMB_X17_Y21_N20
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

-- Location: LCCOMB_X17_Y21_N10
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

-- Location: LCCOMB_X17_Y21_N0
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

-- Location: LCCOMB_X21_Y20_N12
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

-- Location: FF_X21_Y20_N13
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

-- Location: LCCOMB_X21_Y20_N26
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

-- Location: FF_X21_Y20_N27
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

-- Location: FF_X21_Y20_N25
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

-- Location: LCCOMB_X21_Y20_N2
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

-- Location: FF_X21_Y20_N3
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

ww_io <= \io~output_o\;
END structure;


