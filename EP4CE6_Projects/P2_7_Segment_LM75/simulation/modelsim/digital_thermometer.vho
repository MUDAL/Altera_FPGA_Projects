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

-- DATE "01/25/2024 00:31:33"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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

ENTITY 	digital_thermometer IS
    PORT (
	rst_n : IN std_logic;
	clk : IN std_logic;
	sda : BUFFER std_logic;
	scl : BUFFER std_logic;
	dp : BUFFER std_logic;
	seg : BUFFER std_logic_vector(6 DOWNTO 0);
	sel : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END digital_thermometer;

-- Design Ports Information
-- scl	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
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
-- sda	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- clk	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst_n	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF digital_thermometer IS
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
SIGNAL ww_sda : std_logic;
SIGNAL ww_scl : std_logic;
SIGNAL ww_dp : std_logic;
SIGNAL ww_seg : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \scl~output_o\ : std_logic;
SIGNAL \sda~output_o\ : std_logic;
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
SIGNAL \display|Add0~0_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \display|Add0~1\ : std_logic;
SIGNAL \display|Add0~2_combout\ : std_logic;
SIGNAL \lm75_i2c|Add0~1_cout\ : std_logic;
SIGNAL \lm75_i2c|Add0~2_combout\ : std_logic;
SIGNAL \lm75_i2c|clk_count~3_combout\ : std_logic;
SIGNAL \lm75_i2c|Equal0~1_combout\ : std_logic;
SIGNAL \lm75_i2c|Add0~3\ : std_logic;
SIGNAL \lm75_i2c|Add0~4_combout\ : std_logic;
SIGNAL \lm75_i2c|Equal0~2_combout\ : std_logic;
SIGNAL \lm75_i2c|Add0~5\ : std_logic;
SIGNAL \lm75_i2c|Add0~6_combout\ : std_logic;
SIGNAL \lm75_i2c|clk_count~2_combout\ : std_logic;
SIGNAL \lm75_i2c|Add0~7\ : std_logic;
SIGNAL \lm75_i2c|Add0~8_combout\ : std_logic;
SIGNAL \lm75_i2c|clk_count~1_combout\ : std_logic;
SIGNAL \lm75_i2c|Add0~9\ : std_logic;
SIGNAL \lm75_i2c|Add0~10_combout\ : std_logic;
SIGNAL \lm75_i2c|clk_count~0_combout\ : std_logic;
SIGNAL \lm75_i2c|Add0~11\ : std_logic;
SIGNAL \lm75_i2c|Add0~12_combout\ : std_logic;
SIGNAL \lm75_i2c|clk_count~5_combout\ : std_logic;
SIGNAL \lm75_i2c|Add0~13\ : std_logic;
SIGNAL \lm75_i2c|Add0~14_combout\ : std_logic;
SIGNAL \lm75_i2c|clk_count~4_combout\ : std_logic;
SIGNAL \lm75_i2c|Equal0~0_combout\ : std_logic;
SIGNAL \lm75_i2c|Equal5~0_combout\ : std_logic;
SIGNAL \lm75_i2c|Equal5~1_combout\ : std_logic;
SIGNAL \lm75_i2c|Equal2~0_combout\ : std_logic;
SIGNAL \lm75_i2c|Equal1~0_combout\ : std_logic;
SIGNAL \lm75_i2c|Equal2~1_combout\ : std_logic;
SIGNAL \lm75_i2c|Selector5~5_combout\ : std_logic;
SIGNAL \lm75_i2c|Equal1~1_combout\ : std_logic;
SIGNAL \lm75_i2c|Equal1~2_combout\ : std_logic;
SIGNAL \lm75_i2c|Selector5~3_combout\ : std_logic;
SIGNAL \lm75_i2c|Selector1~0_combout\ : std_logic;
SIGNAL \lm75_i2c|state.ST_START~q\ : std_logic;
SIGNAL \lm75_i2c|LessThan1~0_combout\ : std_logic;
SIGNAL \lm75_i2c|LessThan1~1_combout\ : std_logic;
SIGNAL \lm75_i2c|Selector5~1_combout\ : std_logic;
SIGNAL \lm75_i2c|Selector2~0_combout\ : std_logic;
SIGNAL \lm75_i2c|state.ST_COMM~q\ : std_logic;
SIGNAL \lm75_i2c|Add1~0_combout\ : std_logic;
SIGNAL \lm75_i2c|index~17_combout\ : std_logic;
SIGNAL \lm75_i2c|Equal3~1_combout\ : std_logic;
SIGNAL \lm75_i2c|index[1]~11_combout\ : std_logic;
SIGNAL \lm75_i2c|index[1]~12_combout\ : std_logic;
SIGNAL \lm75_i2c|Equal3~0_combout\ : std_logic;
SIGNAL \lm75_i2c|index[1]~9_combout\ : std_logic;
SIGNAL \lm75_i2c|index[1]~10_combout\ : std_logic;
SIGNAL \lm75_i2c|index[4]~7_combout\ : std_logic;
SIGNAL \lm75_i2c|index[4]~6_combout\ : std_logic;
SIGNAL \lm75_i2c|index[4]~8_combout\ : std_logic;
SIGNAL \lm75_i2c|index[4]~13_combout\ : std_logic;
SIGNAL \lm75_i2c|Add1~1\ : std_logic;
SIGNAL \lm75_i2c|Add1~2_combout\ : std_logic;
SIGNAL \lm75_i2c|index~16_combout\ : std_logic;
SIGNAL \lm75_i2c|Add1~3\ : std_logic;
SIGNAL \lm75_i2c|Add1~4_combout\ : std_logic;
SIGNAL \lm75_i2c|Add1~5\ : std_logic;
SIGNAL \lm75_i2c|Add1~7\ : std_logic;
SIGNAL \lm75_i2c|Add1~8_combout\ : std_logic;
SIGNAL \lm75_i2c|index~14_combout\ : std_logic;
SIGNAL \lm75_i2c|index[4]~15_combout\ : std_logic;
SIGNAL \lm75_i2c|Equal4~0_combout\ : std_logic;
SIGNAL \lm75_i2c|Add1~6_combout\ : std_logic;
SIGNAL \lm75_i2c|index~18_combout\ : std_logic;
SIGNAL \lm75_i2c|Equal4~1_combout\ : std_logic;
SIGNAL \lm75_i2c|Selector5~2_combout\ : std_logic;
SIGNAL \lm75_i2c|Selector5~4_combout\ : std_logic;
SIGNAL \lm75_i2c|state.ST_IDLE~2_combout\ : std_logic;
SIGNAL \lm75_i2c|state.ST_IDLE~q\ : std_logic;
SIGNAL \lm75_i2c|Selector3~2_combout\ : std_logic;
SIGNAL \lm75_i2c|Selector3~0_combout\ : std_logic;
SIGNAL \lm75_i2c|Selector3~1_combout\ : std_logic;
SIGNAL \lm75_i2c|Selector3~3_combout\ : std_logic;
SIGNAL \lm75_i2c|Selector3~4_combout\ : std_logic;
SIGNAL \lm75_i2c|state.ST_DONE~q\ : std_logic;
SIGNAL \lm75_i2c|Selector4~1_combout\ : std_logic;
SIGNAL \lm75_i2c|state.ST_STOP~q\ : std_logic;
SIGNAL \lm75_i2c|scl~1_combout\ : std_logic;
SIGNAL \lm75_i2c|scl~2_combout\ : std_logic;
SIGNAL \lm75_i2c|scl~en_q\ : std_logic;
SIGNAL \lm75_i2c|Selector9~0_combout\ : std_logic;
SIGNAL \lm75_i2c|sda~1_combout\ : std_logic;
SIGNAL \lm75_i2c|Selector7~0_combout\ : std_logic;
SIGNAL \lm75_i2c|Selector7~1_combout\ : std_logic;
SIGNAL \lm75_i2c|Selector7~2_combout\ : std_logic;
SIGNAL \lm75_i2c|sda~2_combout\ : std_logic;
SIGNAL \lm75_i2c|sda~en_q\ : std_logic;
SIGNAL \display|digit_index[0]~1_combout\ : std_logic;
SIGNAL \display|Add0~3\ : std_logic;
SIGNAL \display|Add0~4_combout\ : std_logic;
SIGNAL \display|Add0~5\ : std_logic;
SIGNAL \display|Add0~6_combout\ : std_logic;
SIGNAL \display|Equal0~3_combout\ : std_logic;
SIGNAL \display|Add0~7\ : std_logic;
SIGNAL \display|Add0~8_combout\ : std_logic;
SIGNAL \display|count~4_combout\ : std_logic;
SIGNAL \display|Add0~9\ : std_logic;
SIGNAL \display|Add0~10_combout\ : std_logic;
SIGNAL \display|Add0~11\ : std_logic;
SIGNAL \display|Add0~12_combout\ : std_logic;
SIGNAL \display|Add0~13\ : std_logic;
SIGNAL \display|Add0~14_combout\ : std_logic;
SIGNAL \display|Equal0~2_combout\ : std_logic;
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
SIGNAL \display|Equal0~1_combout\ : std_logic;
SIGNAL \display|Add0~23\ : std_logic;
SIGNAL \display|Add0~24_combout\ : std_logic;
SIGNAL \display|Add0~25\ : std_logic;
SIGNAL \display|Add0~26_combout\ : std_logic;
SIGNAL \display|count~0_combout\ : std_logic;
SIGNAL \display|Add0~27\ : std_logic;
SIGNAL \display|Add0~28_combout\ : std_logic;
SIGNAL \display|Add0~29\ : std_logic;
SIGNAL \display|Add0~30_combout\ : std_logic;
SIGNAL \display|Equal0~0_combout\ : std_logic;
SIGNAL \display|Equal0~4_combout\ : std_logic;
SIGNAL \display|digit_index[1]~0_combout\ : std_logic;
SIGNAL \display|Mux0~0_combout\ : std_logic;
SIGNAL \lm75_i2c|done~0_combout\ : std_logic;
SIGNAL \lm75_i2c|done~q\ : std_logic;
SIGNAL \i2c_data_to_bcd|Selector2~5_combout\ : std_logic;
SIGNAL \sda~input_o\ : std_logic;
SIGNAL \lm75_i2c|Equal4~2_combout\ : std_logic;
SIGNAL \lm75_i2c|i2c_buff[7]~3_combout\ : std_logic;
SIGNAL \lm75_i2c|i2c_buff[2]~10_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|Add3~9\ : std_logic;
SIGNAL \i2c_data_to_bcd|Add3~10_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|num~2_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|Add3~0_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|num_reg[1]~7_combout\ : std_logic;
SIGNAL \lm75_i2c|i2c_buff[7]~6_combout\ : std_logic;
SIGNAL \lm75_i2c|i2c_buff[7]~14_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|num_reg[1]~8_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|Add3~1\ : std_logic;
SIGNAL \i2c_data_to_bcd|Add3~2_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|Add1~0_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|Add1~8_combout\ : std_logic;
SIGNAL \lm75_i2c|i2c_buff[6]~8_combout\ : std_logic;
SIGNAL \lm75_i2c|i2c_buff[6]~9_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|Add1~1\ : std_logic;
SIGNAL \i2c_data_to_bcd|Add1~2_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|Add3~3\ : std_logic;
SIGNAL \i2c_data_to_bcd|Add3~4_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|Add1~7_combout\ : std_logic;
SIGNAL \lm75_i2c|i2c_buff[5]~7_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|Add1~3\ : std_logic;
SIGNAL \i2c_data_to_bcd|Add1~5\ : std_logic;
SIGNAL \i2c_data_to_bcd|Add1~10\ : std_logic;
SIGNAL \i2c_data_to_bcd|Add1~11_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|num_reg[6]~1_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|num_reg[6]~2_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|num_reg[6]~3_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|LessThan3~0_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|LessThan3~1_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|Add3~5\ : std_logic;
SIGNAL \i2c_data_to_bcd|Add3~6_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|Add1~4_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|Add1~6_combout\ : std_logic;
SIGNAL \lm75_i2c|i2c_buff[4]~4_combout\ : std_logic;
SIGNAL \lm75_i2c|i2c_buff[4]~5_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|Add3~7\ : std_logic;
SIGNAL \i2c_data_to_bcd|Add3~8_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|Add1~9_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|Add1~13_combout\ : std_logic;
SIGNAL \lm75_i2c|i2c_buff[3]~11_combout\ : std_logic;
SIGNAL \lm75_i2c|i2c_buff[3]~12_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|combinational_logic~0_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|combinational_logic~1_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|num_reg[5]~0_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|Add3~11\ : std_logic;
SIGNAL \i2c_data_to_bcd|Add3~12_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|Add1~12\ : std_logic;
SIGNAL \i2c_data_to_bcd|Add1~14_combout\ : std_logic;
SIGNAL \lm75_i2c|i2c_buff[1]~13_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|num_reg[7]~4_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|num_reg[7]~5_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|num_reg[7]~6_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|Selector2~4_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|state.ST_IDLE~0_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|state.ST_IDLE~q\ : std_logic;
SIGNAL \i2c_data_to_bcd|Selector2~7_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|state.ST_DONE~q\ : std_logic;
SIGNAL \i2c_data_to_bcd|Selector2~6_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|Selector1~0_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|state.ST_CALC~q\ : std_logic;
SIGNAL \i2c_data_to_bcd|Selector10~0_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|Selector9~0_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|Selector9~1_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|Selector8~0_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|Selector8~1_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|bcd_reg[6]~feeder_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|bcd_reg[0]~0_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|Selector6~0_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|Selector5~0_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|Selector5~1_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|Selector4~0_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|Selector4~1_combout\ : std_logic;
SIGNAL \lm75_i2c|i2c_buff[8]~0_combout\ : std_logic;
SIGNAL \lm75_i2c|i2c_buff[8]~1_combout\ : std_logic;
SIGNAL \lm75_i2c|i2c_buff[10]~2_combout\ : std_logic;
SIGNAL \display|Mux2~0_combout\ : std_logic;
SIGNAL \display|Mux2~1_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|bcd_reg[9]~feeder_combout\ : std_logic;
SIGNAL \display|Mux3~0_combout\ : std_logic;
SIGNAL \display|Mux3~1_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|Selector3~0_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|Selector3~1_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|bcd_reg[11]~feeder_combout\ : std_logic;
SIGNAL \display|Mux1~0_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|Selector7~0_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|Selector7~1_combout\ : std_logic;
SIGNAL \display|Mux1~1_combout\ : std_logic;
SIGNAL \lm75_i2c|i2c_buff[8]~15_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|num_reg[0]~9_combout\ : std_logic;
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
SIGNAL \lm75_i2c|clk_count\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \i2c_data_to_bcd|num_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \display|digit_index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \display|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i2c_data_to_bcd|bcd_reg\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \i2c_data_to_bcd|tens_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lm75_i2c|i2c_buff\ : std_logic_vector(0 TO 17);
SIGNAL \display|shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lm75_i2c|index\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \i2c_data_to_bcd|hundreds_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lm75_i2c|ALT_INV_sda~en_q\ : std_logic;
SIGNAL \display|ALT_INV_shift_reg\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \display|rom|ALT_INV_rom~6_combout\ : std_logic;
SIGNAL \display|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \i2c_data_to_bcd|ALT_INV_state.ST_CALC~q\ : std_logic;
SIGNAL \lm75_i2c|ALT_INV_scl~en_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_rst_n <= rst_n;
ww_clk <= clk;
sda <= ww_sda;
scl <= ww_scl;
dp <= ww_dp;
seg <= ww_seg;
sel <= ww_sel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst_n~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\lm75_i2c|ALT_INV_sda~en_q\ <= NOT \lm75_i2c|sda~en_q\;
\display|ALT_INV_shift_reg\(2) <= NOT \display|shift_reg\(2);
\display|ALT_INV_shift_reg\(1) <= NOT \display|shift_reg\(1);
\display|rom|ALT_INV_rom~6_combout\ <= NOT \display|rom|rom~6_combout\;
\display|ALT_INV_Mux0~0_combout\ <= NOT \display|Mux0~0_combout\;
\i2c_data_to_bcd|ALT_INV_state.ST_CALC~q\ <= NOT \i2c_data_to_bcd|state.ST_CALC~q\;
\lm75_i2c|ALT_INV_scl~en_q\ <= NOT \lm75_i2c|scl~en_q\;
\display|ALT_INV_shift_reg\(3) <= NOT \display|shift_reg\(3);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X28_Y24_N2
\scl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \lm75_i2c|ALT_INV_scl~en_q\,
	devoe => ww_devoe,
	o => \scl~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\sda~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \lm75_i2c|ALT_INV_sda~en_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \sda~output_o\);

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

-- Location: LCCOMB_X23_Y18_N0
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

-- Location: FF_X23_Y18_N1
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

-- Location: LCCOMB_X23_Y18_N2
\display|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~2_combout\ = (\display|count\(1) & (!\display|Add0~1\)) # (!\display|count\(1) & ((\display|Add0~1\) # (GND)))
-- \display|Add0~3\ = CARRY((!\display|Add0~1\) # (!\display|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(1),
	datad => VCC,
	cin => \display|Add0~1\,
	combout => \display|Add0~2_combout\,
	cout => \display|Add0~3\);

-- Location: FF_X22_Y18_N9
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

-- Location: LCCOMB_X21_Y18_N2
\lm75_i2c|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Add0~1_cout\ = CARRY((\display|count\(1) & \display|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(1),
	datab => \display|count\(0),
	datad => VCC,
	cout => \lm75_i2c|Add0~1_cout\);

-- Location: LCCOMB_X21_Y18_N4
\lm75_i2c|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Add0~2_combout\ = (\lm75_i2c|clk_count\(2) & (!\lm75_i2c|Add0~1_cout\)) # (!\lm75_i2c|clk_count\(2) & ((\lm75_i2c|Add0~1_cout\) # (GND)))
-- \lm75_i2c|Add0~3\ = CARRY((!\lm75_i2c|Add0~1_cout\) # (!\lm75_i2c|clk_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|clk_count\(2),
	datad => VCC,
	cin => \lm75_i2c|Add0~1_cout\,
	combout => \lm75_i2c|Add0~2_combout\,
	cout => \lm75_i2c|Add0~3\);

-- Location: LCCOMB_X22_Y18_N20
\lm75_i2c|clk_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|clk_count~3_combout\ = (\lm75_i2c|Add0~2_combout\ & !\lm75_i2c|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lm75_i2c|Add0~2_combout\,
	datad => \lm75_i2c|Equal0~2_combout\,
	combout => \lm75_i2c|clk_count~3_combout\);

-- Location: FF_X22_Y18_N21
\lm75_i2c|clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lm75_i2c|clk_count~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lm75_i2c|clk_count\(2));

-- Location: LCCOMB_X21_Y18_N26
\lm75_i2c|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Equal0~1_combout\ = (\lm75_i2c|clk_count\(7) & (\display|count\(0) & !\lm75_i2c|clk_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|clk_count\(7),
	datab => \display|count\(0),
	datac => \lm75_i2c|clk_count\(2),
	combout => \lm75_i2c|Equal0~1_combout\);

-- Location: LCCOMB_X21_Y18_N6
\lm75_i2c|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Add0~4_combout\ = (\lm75_i2c|clk_count\(3) & (\lm75_i2c|Add0~3\ $ (GND))) # (!\lm75_i2c|clk_count\(3) & (!\lm75_i2c|Add0~3\ & VCC))
-- \lm75_i2c|Add0~5\ = CARRY((\lm75_i2c|clk_count\(3) & !\lm75_i2c|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|clk_count\(3),
	datad => VCC,
	cin => \lm75_i2c|Add0~3\,
	combout => \lm75_i2c|Add0~4_combout\,
	cout => \lm75_i2c|Add0~5\);

-- Location: FF_X22_Y18_N3
\lm75_i2c|clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lm75_i2c|Add0~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lm75_i2c|clk_count\(3));

-- Location: LCCOMB_X22_Y18_N8
\lm75_i2c|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Equal0~2_combout\ = (\lm75_i2c|Equal0~1_combout\ & (!\lm75_i2c|clk_count\(3) & (\display|count\(1) & \lm75_i2c|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|Equal0~1_combout\,
	datab => \lm75_i2c|clk_count\(3),
	datac => \display|count\(1),
	datad => \lm75_i2c|Equal0~0_combout\,
	combout => \lm75_i2c|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y18_N8
\lm75_i2c|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Add0~6_combout\ = (\lm75_i2c|clk_count\(4) & (!\lm75_i2c|Add0~5\)) # (!\lm75_i2c|clk_count\(4) & ((\lm75_i2c|Add0~5\) # (GND)))
-- \lm75_i2c|Add0~7\ = CARRY((!\lm75_i2c|Add0~5\) # (!\lm75_i2c|clk_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lm75_i2c|clk_count\(4),
	datad => VCC,
	cin => \lm75_i2c|Add0~5\,
	combout => \lm75_i2c|Add0~6_combout\,
	cout => \lm75_i2c|Add0~7\);

-- Location: LCCOMB_X22_Y18_N12
\lm75_i2c|clk_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|clk_count~2_combout\ = (!\lm75_i2c|Equal0~2_combout\ & \lm75_i2c|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lm75_i2c|Equal0~2_combout\,
	datad => \lm75_i2c|Add0~6_combout\,
	combout => \lm75_i2c|clk_count~2_combout\);

-- Location: FF_X22_Y18_N13
\lm75_i2c|clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lm75_i2c|clk_count~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lm75_i2c|clk_count\(4));

-- Location: LCCOMB_X21_Y18_N10
\lm75_i2c|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Add0~8_combout\ = (\lm75_i2c|clk_count\(5) & (\lm75_i2c|Add0~7\ $ (GND))) # (!\lm75_i2c|clk_count\(5) & (!\lm75_i2c|Add0~7\ & VCC))
-- \lm75_i2c|Add0~9\ = CARRY((\lm75_i2c|clk_count\(5) & !\lm75_i2c|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lm75_i2c|clk_count\(5),
	datad => VCC,
	cin => \lm75_i2c|Add0~7\,
	combout => \lm75_i2c|Add0~8_combout\,
	cout => \lm75_i2c|Add0~9\);

-- Location: LCCOMB_X22_Y18_N18
\lm75_i2c|clk_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|clk_count~1_combout\ = (!\lm75_i2c|Equal0~2_combout\ & \lm75_i2c|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lm75_i2c|Equal0~2_combout\,
	datad => \lm75_i2c|Add0~8_combout\,
	combout => \lm75_i2c|clk_count~1_combout\);

-- Location: FF_X22_Y18_N19
\lm75_i2c|clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lm75_i2c|clk_count~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lm75_i2c|clk_count\(5));

-- Location: LCCOMB_X21_Y18_N12
\lm75_i2c|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Add0~10_combout\ = (\lm75_i2c|clk_count\(6) & (!\lm75_i2c|Add0~9\)) # (!\lm75_i2c|clk_count\(6) & ((\lm75_i2c|Add0~9\) # (GND)))
-- \lm75_i2c|Add0~11\ = CARRY((!\lm75_i2c|Add0~9\) # (!\lm75_i2c|clk_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lm75_i2c|clk_count\(6),
	datad => VCC,
	cin => \lm75_i2c|Add0~9\,
	combout => \lm75_i2c|Add0~10_combout\,
	cout => \lm75_i2c|Add0~11\);

-- Location: LCCOMB_X22_Y18_N4
\lm75_i2c|clk_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|clk_count~0_combout\ = (!\lm75_i2c|Equal0~2_combout\ & \lm75_i2c|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lm75_i2c|Equal0~2_combout\,
	datad => \lm75_i2c|Add0~10_combout\,
	combout => \lm75_i2c|clk_count~0_combout\);

-- Location: FF_X22_Y18_N5
\lm75_i2c|clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lm75_i2c|clk_count~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lm75_i2c|clk_count\(6));

-- Location: LCCOMB_X21_Y18_N14
\lm75_i2c|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Add0~12_combout\ = (\lm75_i2c|clk_count\(7) & (\lm75_i2c|Add0~11\ $ (GND))) # (!\lm75_i2c|clk_count\(7) & (!\lm75_i2c|Add0~11\ & VCC))
-- \lm75_i2c|Add0~13\ = CARRY((\lm75_i2c|clk_count\(7) & !\lm75_i2c|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|clk_count\(7),
	datad => VCC,
	cin => \lm75_i2c|Add0~11\,
	combout => \lm75_i2c|Add0~12_combout\,
	cout => \lm75_i2c|Add0~13\);

-- Location: LCCOMB_X22_Y18_N30
\lm75_i2c|clk_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|clk_count~5_combout\ = (!\lm75_i2c|Equal0~2_combout\ & \lm75_i2c|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lm75_i2c|Equal0~2_combout\,
	datad => \lm75_i2c|Add0~12_combout\,
	combout => \lm75_i2c|clk_count~5_combout\);

-- Location: FF_X22_Y18_N31
\lm75_i2c|clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lm75_i2c|clk_count~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lm75_i2c|clk_count\(7));

-- Location: LCCOMB_X21_Y18_N16
\lm75_i2c|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Add0~14_combout\ = \lm75_i2c|clk_count\(8) $ (\lm75_i2c|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lm75_i2c|clk_count\(8),
	cin => \lm75_i2c|Add0~13\,
	combout => \lm75_i2c|Add0~14_combout\);

-- Location: LCCOMB_X22_Y18_N10
\lm75_i2c|clk_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|clk_count~4_combout\ = (\lm75_i2c|Add0~14_combout\ & !\lm75_i2c|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lm75_i2c|Add0~14_combout\,
	datad => \lm75_i2c|Equal0~2_combout\,
	combout => \lm75_i2c|clk_count~4_combout\);

-- Location: FF_X22_Y18_N11
\lm75_i2c|clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lm75_i2c|clk_count~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lm75_i2c|clk_count\(8));

-- Location: LCCOMB_X22_Y18_N16
\lm75_i2c|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Equal0~0_combout\ = (\lm75_i2c|clk_count\(8) & (\lm75_i2c|clk_count\(5) & (\lm75_i2c|clk_count\(6) & \lm75_i2c|clk_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|clk_count\(8),
	datab => \lm75_i2c|clk_count\(5),
	datac => \lm75_i2c|clk_count\(6),
	datad => \lm75_i2c|clk_count\(4),
	combout => \lm75_i2c|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y18_N6
\lm75_i2c|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Equal5~0_combout\ = (!\lm75_i2c|clk_count\(7) & (!\display|count\(0) & \lm75_i2c|clk_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|clk_count\(7),
	datac => \display|count\(0),
	datad => \lm75_i2c|clk_count\(2),
	combout => \lm75_i2c|Equal5~0_combout\);

-- Location: LCCOMB_X22_Y18_N2
\lm75_i2c|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Equal5~1_combout\ = (\display|count\(1) & (\lm75_i2c|Equal0~0_combout\ & (!\lm75_i2c|clk_count\(3) & \lm75_i2c|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(1),
	datab => \lm75_i2c|Equal0~0_combout\,
	datac => \lm75_i2c|clk_count\(3),
	datad => \lm75_i2c|Equal5~0_combout\,
	combout => \lm75_i2c|Equal5~1_combout\);

-- Location: LCCOMB_X22_Y18_N14
\lm75_i2c|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Equal2~0_combout\ = (\lm75_i2c|clk_count\(4) & (\lm75_i2c|clk_count\(3) & (\lm75_i2c|clk_count\(6) & \lm75_i2c|clk_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|clk_count\(4),
	datab => \lm75_i2c|clk_count\(3),
	datac => \lm75_i2c|clk_count\(6),
	datad => \lm75_i2c|clk_count\(5),
	combout => \lm75_i2c|Equal2~0_combout\);

-- Location: LCCOMB_X22_Y18_N28
\lm75_i2c|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Equal1~0_combout\ = (!\lm75_i2c|clk_count\(8) & (!\display|count\(1) & \lm75_i2c|clk_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|clk_count\(8),
	datac => \display|count\(1),
	datad => \lm75_i2c|clk_count\(2),
	combout => \lm75_i2c|Equal1~0_combout\);

-- Location: LCCOMB_X17_Y18_N22
\lm75_i2c|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Equal2~1_combout\ = (!\lm75_i2c|clk_count\(7) & (!\display|count\(0) & (\lm75_i2c|Equal2~0_combout\ & \lm75_i2c|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|clk_count\(7),
	datab => \display|count\(0),
	datac => \lm75_i2c|Equal2~0_combout\,
	datad => \lm75_i2c|Equal1~0_combout\,
	combout => \lm75_i2c|Equal2~1_combout\);

-- Location: LCCOMB_X18_Y18_N0
\lm75_i2c|Selector5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Selector5~5_combout\ = (\lm75_i2c|state.ST_STOP~q\ & \lm75_i2c|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lm75_i2c|state.ST_STOP~q\,
	datad => \lm75_i2c|Equal2~1_combout\,
	combout => \lm75_i2c|Selector5~5_combout\);

-- Location: LCCOMB_X22_Y18_N24
\lm75_i2c|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Equal1~1_combout\ = (\lm75_i2c|clk_count\(7) & (!\lm75_i2c|clk_count\(5) & (\display|count\(0) & \lm75_i2c|clk_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|clk_count\(7),
	datab => \lm75_i2c|clk_count\(5),
	datac => \display|count\(0),
	datad => \lm75_i2c|clk_count\(4),
	combout => \lm75_i2c|Equal1~1_combout\);

-- Location: LCCOMB_X22_Y18_N26
\lm75_i2c|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Equal1~2_combout\ = (!\lm75_i2c|clk_count\(6) & (!\lm75_i2c|clk_count\(3) & (\lm75_i2c|Equal1~0_combout\ & \lm75_i2c|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|clk_count\(6),
	datab => \lm75_i2c|clk_count\(3),
	datac => \lm75_i2c|Equal1~0_combout\,
	datad => \lm75_i2c|Equal1~1_combout\,
	combout => \lm75_i2c|Equal1~2_combout\);

-- Location: LCCOMB_X19_Y18_N14
\lm75_i2c|Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Selector5~3_combout\ = (!\lm75_i2c|state.ST_IDLE~q\ & \lm75_i2c|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lm75_i2c|state.ST_IDLE~q\,
	datad => \lm75_i2c|Equal1~2_combout\,
	combout => \lm75_i2c|Selector5~3_combout\);

-- Location: LCCOMB_X19_Y18_N8
\lm75_i2c|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Selector1~0_combout\ = (!\lm75_i2c|Selector5~5_combout\ & ((\lm75_i2c|Selector5~4_combout\ & (\lm75_i2c|Selector5~3_combout\)) # (!\lm75_i2c|Selector5~4_combout\ & ((\lm75_i2c|state.ST_START~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|Selector5~5_combout\,
	datab => \lm75_i2c|Selector5~3_combout\,
	datac => \lm75_i2c|state.ST_START~q\,
	datad => \lm75_i2c|Selector5~4_combout\,
	combout => \lm75_i2c|Selector1~0_combout\);

-- Location: FF_X19_Y18_N9
\lm75_i2c|state.ST_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lm75_i2c|Selector1~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lm75_i2c|state.ST_START~q\);

-- Location: LCCOMB_X19_Y18_N0
\lm75_i2c|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|LessThan1~0_combout\ = (\lm75_i2c|clk_count\(7) & ((\lm75_i2c|clk_count\(2)) # (\display|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|clk_count\(7),
	datac => \lm75_i2c|clk_count\(2),
	datad => \display|count\(1),
	combout => \lm75_i2c|LessThan1~0_combout\);

-- Location: LCCOMB_X19_Y18_N18
\lm75_i2c|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|LessThan1~1_combout\ = (\lm75_i2c|clk_count\(8)) # ((\lm75_i2c|Equal2~0_combout\ & \lm75_i2c|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lm75_i2c|clk_count\(8),
	datac => \lm75_i2c|Equal2~0_combout\,
	datad => \lm75_i2c|LessThan1~0_combout\,
	combout => \lm75_i2c|LessThan1~1_combout\);

-- Location: LCCOMB_X19_Y18_N20
\lm75_i2c|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Selector5~1_combout\ = (\lm75_i2c|state.ST_START~q\ & ((\lm75_i2c|clk_count\(8)) # ((\lm75_i2c|Equal2~0_combout\ & \lm75_i2c|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|state.ST_START~q\,
	datab => \lm75_i2c|Equal2~0_combout\,
	datac => \lm75_i2c|clk_count\(8),
	datad => \lm75_i2c|LessThan1~0_combout\,
	combout => \lm75_i2c|Selector5~1_combout\);

-- Location: LCCOMB_X19_Y18_N22
\lm75_i2c|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Selector2~0_combout\ = (!\lm75_i2c|Selector5~5_combout\ & ((\lm75_i2c|Selector5~4_combout\ & (\lm75_i2c|Selector5~1_combout\)) # (!\lm75_i2c|Selector5~4_combout\ & ((\lm75_i2c|state.ST_COMM~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|Selector5~5_combout\,
	datab => \lm75_i2c|Selector5~1_combout\,
	datac => \lm75_i2c|state.ST_COMM~q\,
	datad => \lm75_i2c|Selector5~4_combout\,
	combout => \lm75_i2c|Selector2~0_combout\);

-- Location: FF_X19_Y18_N23
\lm75_i2c|state.ST_COMM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lm75_i2c|Selector2~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lm75_i2c|state.ST_COMM~q\);

-- Location: LCCOMB_X16_Y18_N0
\lm75_i2c|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Add1~0_combout\ = \lm75_i2c|index\(0) $ (VCC)
-- \lm75_i2c|Add1~1\ = CARRY(\lm75_i2c|index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|index\(0),
	datad => VCC,
	combout => \lm75_i2c|Add1~0_combout\,
	cout => \lm75_i2c|Add1~1\);

-- Location: LCCOMB_X17_Y18_N6
\lm75_i2c|index~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|index~17_combout\ = (\lm75_i2c|Add1~0_combout\ & (((!\lm75_i2c|Equal5~1_combout\) # (!\lm75_i2c|index\(3))) # (!\lm75_i2c|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|Equal4~0_combout\,
	datab => \lm75_i2c|index\(3),
	datac => \lm75_i2c|Add1~0_combout\,
	datad => \lm75_i2c|Equal5~1_combout\,
	combout => \lm75_i2c|index~17_combout\);

-- Location: LCCOMB_X18_Y18_N12
\lm75_i2c|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Equal3~1_combout\ = (!\lm75_i2c|index\(3) & (\lm75_i2c|index\(4) & (!\lm75_i2c|index\(1) & !\lm75_i2c|index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|index\(3),
	datab => \lm75_i2c|index\(4),
	datac => \lm75_i2c|index\(1),
	datad => \lm75_i2c|index\(2),
	combout => \lm75_i2c|Equal3~1_combout\);

-- Location: LCCOMB_X18_Y18_N22
\lm75_i2c|index[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|index[1]~11_combout\ = (\lm75_i2c|Equal3~1_combout\ & (!\lm75_i2c|index\(0) & ((!\lm75_i2c|Equal4~0_combout\) # (!\lm75_i2c|index\(3))))) # (!\lm75_i2c|Equal3~1_combout\ & (((!\lm75_i2c|Equal4~0_combout\) # (!\lm75_i2c|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|Equal3~1_combout\,
	datab => \lm75_i2c|index\(0),
	datac => \lm75_i2c|index\(3),
	datad => \lm75_i2c|Equal4~0_combout\,
	combout => \lm75_i2c|index[1]~11_combout\);

-- Location: LCCOMB_X17_Y18_N28
\lm75_i2c|index[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|index[1]~12_combout\ = (!\lm75_i2c|index\(2) & (\lm75_i2c|index\(1) $ (!\lm75_i2c|index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lm75_i2c|index\(1),
	datac => \lm75_i2c|index\(2),
	datad => \lm75_i2c|index\(3),
	combout => \lm75_i2c|index[1]~12_combout\);

-- Location: LCCOMB_X17_Y18_N26
\lm75_i2c|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Equal3~0_combout\ = (!\lm75_i2c|index\(3) & (!\lm75_i2c|index\(1) & !\lm75_i2c|index\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lm75_i2c|index\(3),
	datac => \lm75_i2c|index\(1),
	datad => \lm75_i2c|index\(2),
	combout => \lm75_i2c|Equal3~0_combout\);

-- Location: LCCOMB_X17_Y18_N20
\lm75_i2c|index[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|index[1]~9_combout\ = (\lm75_i2c|clk_count\(7)) # ((\lm75_i2c|index\(4) & ((\lm75_i2c|index\(0)) # (!\lm75_i2c|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|Equal3~0_combout\,
	datab => \lm75_i2c|index\(4),
	datac => \lm75_i2c|clk_count\(7),
	datad => \lm75_i2c|index\(0),
	combout => \lm75_i2c|index[1]~9_combout\);

-- Location: LCCOMB_X17_Y18_N14
\lm75_i2c|index[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|index[1]~10_combout\ = (\display|count\(0)) # (((\lm75_i2c|index[1]~9_combout\) # (!\lm75_i2c|Equal2~0_combout\)) # (!\lm75_i2c|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(0),
	datab => \lm75_i2c|Equal1~0_combout\,
	datac => \lm75_i2c|Equal2~0_combout\,
	datad => \lm75_i2c|index[1]~9_combout\,
	combout => \lm75_i2c|index[1]~10_combout\);

-- Location: LCCOMB_X17_Y18_N30
\lm75_i2c|index[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|index[4]~7_combout\ = (\lm75_i2c|index\(4) & ((\lm75_i2c|Equal5~1_combout\) # ((!\lm75_i2c|index\(0) & \lm75_i2c|Equal2~1_combout\)))) # (!\lm75_i2c|index\(4) & (((\lm75_i2c|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|index\(0),
	datab => \lm75_i2c|index\(4),
	datac => \lm75_i2c|Equal2~1_combout\,
	datad => \lm75_i2c|Equal5~1_combout\,
	combout => \lm75_i2c|index[4]~7_combout\);

-- Location: LCCOMB_X17_Y18_N12
\lm75_i2c|index[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|index[4]~6_combout\ = (\lm75_i2c|index\(2) & (!\lm75_i2c|index\(3) & ((\lm75_i2c|Equal5~1_combout\)))) # (!\lm75_i2c|index\(2) & ((\lm75_i2c|Equal5~1_combout\) # ((!\lm75_i2c|index\(3) & !\lm75_i2c|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|index\(2),
	datab => \lm75_i2c|index\(3),
	datac => \lm75_i2c|index\(1),
	datad => \lm75_i2c|Equal5~1_combout\,
	combout => \lm75_i2c|index[4]~6_combout\);

-- Location: LCCOMB_X17_Y18_N24
\lm75_i2c|index[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|index[4]~8_combout\ = (\lm75_i2c|state.ST_COMM~q\ & (\lm75_i2c|index[4]~7_combout\ & ((\lm75_i2c|index[4]~6_combout\) # (!\lm75_i2c|index\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|state.ST_COMM~q\,
	datab => \lm75_i2c|index\(4),
	datac => \lm75_i2c|index[4]~7_combout\,
	datad => \lm75_i2c|index[4]~6_combout\,
	combout => \lm75_i2c|index[4]~8_combout\);

-- Location: LCCOMB_X17_Y18_N8
\lm75_i2c|index[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|index[4]~13_combout\ = (\lm75_i2c|index[4]~8_combout\ & (((!\lm75_i2c|index[1]~10_combout\) # (!\lm75_i2c|index[1]~12_combout\)) # (!\lm75_i2c|index[1]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|index[1]~11_combout\,
	datab => \lm75_i2c|index[1]~12_combout\,
	datac => \lm75_i2c|index[1]~10_combout\,
	datad => \lm75_i2c|index[4]~8_combout\,
	combout => \lm75_i2c|index[4]~13_combout\);

-- Location: FF_X17_Y18_N7
\lm75_i2c|index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lm75_i2c|index~17_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \lm75_i2c|index[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lm75_i2c|index\(0));

-- Location: LCCOMB_X16_Y18_N2
\lm75_i2c|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Add1~2_combout\ = (\lm75_i2c|index\(1) & (!\lm75_i2c|Add1~1\)) # (!\lm75_i2c|index\(1) & ((\lm75_i2c|Add1~1\) # (GND)))
-- \lm75_i2c|Add1~3\ = CARRY((!\lm75_i2c|Add1~1\) # (!\lm75_i2c|index\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|index\(1),
	datad => VCC,
	cin => \lm75_i2c|Add1~1\,
	combout => \lm75_i2c|Add1~2_combout\,
	cout => \lm75_i2c|Add1~3\);

-- Location: LCCOMB_X17_Y18_N4
\lm75_i2c|index~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|index~16_combout\ = (\lm75_i2c|Add1~2_combout\ & (((!\lm75_i2c|Equal4~0_combout\) # (!\lm75_i2c|index\(3))) # (!\lm75_i2c|Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|Equal5~1_combout\,
	datab => \lm75_i2c|index\(3),
	datac => \lm75_i2c|Equal4~0_combout\,
	datad => \lm75_i2c|Add1~2_combout\,
	combout => \lm75_i2c|index~16_combout\);

-- Location: FF_X17_Y18_N5
\lm75_i2c|index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lm75_i2c|index~16_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \lm75_i2c|index[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lm75_i2c|index\(1));

-- Location: LCCOMB_X16_Y18_N4
\lm75_i2c|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Add1~4_combout\ = (\lm75_i2c|index\(2) & (\lm75_i2c|Add1~3\ $ (GND))) # (!\lm75_i2c|index\(2) & (!\lm75_i2c|Add1~3\ & VCC))
-- \lm75_i2c|Add1~5\ = CARRY((\lm75_i2c|index\(2) & !\lm75_i2c|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lm75_i2c|index\(2),
	datad => VCC,
	cin => \lm75_i2c|Add1~3\,
	combout => \lm75_i2c|Add1~4_combout\,
	cout => \lm75_i2c|Add1~5\);

-- Location: FF_X17_Y18_N29
\lm75_i2c|index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lm75_i2c|Add1~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \lm75_i2c|index[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lm75_i2c|index\(2));

-- Location: LCCOMB_X16_Y18_N6
\lm75_i2c|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Add1~6_combout\ = (\lm75_i2c|index\(3) & (!\lm75_i2c|Add1~5\)) # (!\lm75_i2c|index\(3) & ((\lm75_i2c|Add1~5\) # (GND)))
-- \lm75_i2c|Add1~7\ = CARRY((!\lm75_i2c|Add1~5\) # (!\lm75_i2c|index\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lm75_i2c|index\(3),
	datad => VCC,
	cin => \lm75_i2c|Add1~5\,
	combout => \lm75_i2c|Add1~6_combout\,
	cout => \lm75_i2c|Add1~7\);

-- Location: LCCOMB_X16_Y18_N8
\lm75_i2c|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Add1~8_combout\ = \lm75_i2c|Add1~7\ $ (!\lm75_i2c|index\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \lm75_i2c|index\(4),
	cin => \lm75_i2c|Add1~7\,
	combout => \lm75_i2c|Add1~8_combout\);

-- Location: LCCOMB_X18_Y18_N26
\lm75_i2c|index~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|index~14_combout\ = (\lm75_i2c|index\(3) & (\lm75_i2c|Equal4~0_combout\ & \lm75_i2c|Equal5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|index\(3),
	datab => \lm75_i2c|Equal4~0_combout\,
	datac => \lm75_i2c|Equal5~1_combout\,
	combout => \lm75_i2c|index~14_combout\);

-- Location: LCCOMB_X18_Y18_N16
\lm75_i2c|index[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|index[4]~15_combout\ = (\lm75_i2c|index[4]~13_combout\ & (\lm75_i2c|Add1~8_combout\ & (!\lm75_i2c|index~14_combout\))) # (!\lm75_i2c|index[4]~13_combout\ & (((\lm75_i2c|index\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|Add1~8_combout\,
	datab => \lm75_i2c|index~14_combout\,
	datac => \lm75_i2c|index\(4),
	datad => \lm75_i2c|index[4]~13_combout\,
	combout => \lm75_i2c|index[4]~15_combout\);

-- Location: FF_X18_Y18_N17
\lm75_i2c|index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lm75_i2c|index[4]~15_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lm75_i2c|index\(4));

-- Location: LCCOMB_X18_Y18_N24
\lm75_i2c|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Equal4~0_combout\ = (\lm75_i2c|index\(4) & (\lm75_i2c|index\(1) & (!\lm75_i2c|index\(0) & !\lm75_i2c|index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|index\(4),
	datab => \lm75_i2c|index\(1),
	datac => \lm75_i2c|index\(0),
	datad => \lm75_i2c|index\(2),
	combout => \lm75_i2c|Equal4~0_combout\);

-- Location: LCCOMB_X17_Y18_N16
\lm75_i2c|index~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|index~18_combout\ = (\lm75_i2c|Add1~6_combout\ & (((!\lm75_i2c|Equal5~1_combout\) # (!\lm75_i2c|index\(3))) # (!\lm75_i2c|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|Equal4~0_combout\,
	datab => \lm75_i2c|Add1~6_combout\,
	datac => \lm75_i2c|index\(3),
	datad => \lm75_i2c|Equal5~1_combout\,
	combout => \lm75_i2c|index~18_combout\);

-- Location: FF_X17_Y18_N17
\lm75_i2c|index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lm75_i2c|index~18_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \lm75_i2c|index[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lm75_i2c|index\(3));

-- Location: LCCOMB_X18_Y18_N18
\lm75_i2c|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Equal4~1_combout\ = (\lm75_i2c|index\(3) & \lm75_i2c|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lm75_i2c|index\(3),
	datad => \lm75_i2c|Equal4~0_combout\,
	combout => \lm75_i2c|Equal4~1_combout\);

-- Location: LCCOMB_X19_Y18_N10
\lm75_i2c|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Selector5~2_combout\ = (\lm75_i2c|Equal5~1_combout\ & ((\lm75_i2c|state.ST_DONE~q\) # ((\lm75_i2c|state.ST_COMM~q\ & \lm75_i2c|Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|state.ST_COMM~q\,
	datab => \lm75_i2c|Equal4~1_combout\,
	datac => \lm75_i2c|state.ST_DONE~q\,
	datad => \lm75_i2c|Equal5~1_combout\,
	combout => \lm75_i2c|Selector5~2_combout\);

-- Location: LCCOMB_X19_Y18_N16
\lm75_i2c|Selector5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Selector5~4_combout\ = (\lm75_i2c|Selector5~3_combout\) # ((\lm75_i2c|Selector5~2_combout\) # ((\lm75_i2c|state.ST_START~q\ & \lm75_i2c|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|state.ST_START~q\,
	datab => \lm75_i2c|LessThan1~1_combout\,
	datac => \lm75_i2c|Selector5~3_combout\,
	datad => \lm75_i2c|Selector5~2_combout\,
	combout => \lm75_i2c|Selector5~4_combout\);

-- Location: LCCOMB_X19_Y18_N28
\lm75_i2c|state.ST_IDLE~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|state.ST_IDLE~2_combout\ = (\lm75_i2c|state.ST_IDLE~q\) # ((\lm75_i2c|Selector5~4_combout\) # ((\lm75_i2c|state.ST_STOP~q\ & \lm75_i2c|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|state.ST_STOP~q\,
	datab => \lm75_i2c|Equal2~1_combout\,
	datac => \lm75_i2c|state.ST_IDLE~q\,
	datad => \lm75_i2c|Selector5~4_combout\,
	combout => \lm75_i2c|state.ST_IDLE~2_combout\);

-- Location: FF_X19_Y18_N29
\lm75_i2c|state.ST_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lm75_i2c|state.ST_IDLE~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lm75_i2c|state.ST_IDLE~q\);

-- Location: LCCOMB_X19_Y18_N26
\lm75_i2c|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Selector3~2_combout\ = (\lm75_i2c|state.ST_STOP~q\ & (((!\lm75_i2c|Equal2~1_combout\)))) # (!\lm75_i2c|state.ST_STOP~q\ & (((!\lm75_i2c|state.ST_START~q\)) # (!\lm75_i2c|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|state.ST_STOP~q\,
	datab => \lm75_i2c|LessThan1~1_combout\,
	datac => \lm75_i2c|state.ST_START~q\,
	datad => \lm75_i2c|Equal2~1_combout\,
	combout => \lm75_i2c|Selector3~2_combout\);

-- Location: LCCOMB_X18_Y18_N6
\lm75_i2c|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Selector3~0_combout\ = (!\lm75_i2c|state.ST_IDLE~q\ & !\lm75_i2c|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lm75_i2c|state.ST_IDLE~q\,
	datad => \lm75_i2c|Equal1~2_combout\,
	combout => \lm75_i2c|Selector3~0_combout\);

-- Location: LCCOMB_X18_Y18_N20
\lm75_i2c|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Selector3~1_combout\ = (\lm75_i2c|state.ST_DONE~q\ & ((\lm75_i2c|Selector3~0_combout\) # ((\lm75_i2c|state.ST_COMM~q\ & \lm75_i2c|index~14_combout\)))) # (!\lm75_i2c|state.ST_DONE~q\ & (\lm75_i2c|state.ST_COMM~q\ & 
-- (\lm75_i2c|index~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|state.ST_DONE~q\,
	datab => \lm75_i2c|state.ST_COMM~q\,
	datac => \lm75_i2c|index~14_combout\,
	datad => \lm75_i2c|Selector3~0_combout\,
	combout => \lm75_i2c|Selector3~1_combout\);

-- Location: LCCOMB_X19_Y18_N24
\lm75_i2c|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Selector3~3_combout\ = (\lm75_i2c|Selector3~1_combout\) # ((\lm75_i2c|state.ST_IDLE~q\ & (\lm75_i2c|state.ST_DONE~q\ & \lm75_i2c|Selector3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|state.ST_IDLE~q\,
	datab => \lm75_i2c|state.ST_DONE~q\,
	datac => \lm75_i2c|Selector3~2_combout\,
	datad => \lm75_i2c|Selector3~1_combout\,
	combout => \lm75_i2c|Selector3~3_combout\);

-- Location: LCCOMB_X19_Y18_N2
\lm75_i2c|Selector3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Selector3~4_combout\ = (\lm75_i2c|Selector3~3_combout\ & ((!\lm75_i2c|state.ST_DONE~q\) # (!\lm75_i2c|Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|Equal5~1_combout\,
	datac => \lm75_i2c|state.ST_DONE~q\,
	datad => \lm75_i2c|Selector3~3_combout\,
	combout => \lm75_i2c|Selector3~4_combout\);

-- Location: FF_X19_Y18_N3
\lm75_i2c|state.ST_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lm75_i2c|Selector3~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lm75_i2c|state.ST_DONE~q\);

-- Location: LCCOMB_X18_Y18_N14
\lm75_i2c|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Selector4~1_combout\ = (\lm75_i2c|state.ST_DONE~q\ & ((\lm75_i2c|Equal5~1_combout\) # ((\lm75_i2c|state.ST_STOP~q\ & !\lm75_i2c|Equal2~1_combout\)))) # (!\lm75_i2c|state.ST_DONE~q\ & (((\lm75_i2c|state.ST_STOP~q\ & 
-- !\lm75_i2c|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|state.ST_DONE~q\,
	datab => \lm75_i2c|Equal5~1_combout\,
	datac => \lm75_i2c|state.ST_STOP~q\,
	datad => \lm75_i2c|Equal2~1_combout\,
	combout => \lm75_i2c|Selector4~1_combout\);

-- Location: FF_X18_Y18_N15
\lm75_i2c|state.ST_STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lm75_i2c|Selector4~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lm75_i2c|state.ST_STOP~q\);

-- Location: LCCOMB_X19_Y18_N4
\lm75_i2c|scl~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|scl~1_combout\ = (\lm75_i2c|state.ST_COMM~q\) # ((\lm75_i2c|state.ST_START~q\) # (\lm75_i2c|state.ST_DONE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|state.ST_COMM~q\,
	datab => \lm75_i2c|state.ST_START~q\,
	datad => \lm75_i2c|state.ST_DONE~q\,
	combout => \lm75_i2c|scl~1_combout\);

-- Location: LCCOMB_X19_Y18_N12
\lm75_i2c|scl~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|scl~2_combout\ = (\lm75_i2c|LessThan1~1_combout\ & ((\lm75_i2c|state.ST_STOP~q\ & ((\lm75_i2c|scl~en_q\))) # (!\lm75_i2c|state.ST_STOP~q\ & (\lm75_i2c|scl~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|state.ST_STOP~q\,
	datab => \lm75_i2c|scl~1_combout\,
	datac => \lm75_i2c|scl~en_q\,
	datad => \lm75_i2c|LessThan1~1_combout\,
	combout => \lm75_i2c|scl~2_combout\);

-- Location: FF_X19_Y18_N13
\lm75_i2c|scl~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lm75_i2c|scl~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lm75_i2c|scl~en_q\);

-- Location: LCCOMB_X18_Y18_N2
\lm75_i2c|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Selector9~0_combout\ = (!\lm75_i2c|index~14_combout\ & ((\lm75_i2c|index\(1) & ((!\lm75_i2c|index\(0)))) # (!\lm75_i2c|index\(1) & ((\lm75_i2c|index\(2)) # (\lm75_i2c|index\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|index\(2),
	datab => \lm75_i2c|index\(1),
	datac => \lm75_i2c|index\(0),
	datad => \lm75_i2c|index~14_combout\,
	combout => \lm75_i2c|Selector9~0_combout\);

-- Location: LCCOMB_X18_Y18_N28
\lm75_i2c|sda~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|sda~1_combout\ = (!\lm75_i2c|Selector3~0_combout\ & (!\lm75_i2c|state.ST_STOP~q\ & ((\lm75_i2c|Selector9~0_combout\) # (!\lm75_i2c|state.ST_COMM~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|Selector3~0_combout\,
	datab => \lm75_i2c|state.ST_STOP~q\,
	datac => \lm75_i2c|state.ST_COMM~q\,
	datad => \lm75_i2c|Selector9~0_combout\,
	combout => \lm75_i2c|sda~1_combout\);

-- Location: LCCOMB_X18_Y18_N30
\lm75_i2c|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Selector7~0_combout\ = ((!\lm75_i2c|index\(3) & !\lm75_i2c|index\(4))) # (!\lm75_i2c|index[1]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|index\(3),
	datac => \lm75_i2c|index[1]~11_combout\,
	datad => \lm75_i2c|index\(4),
	combout => \lm75_i2c|Selector7~0_combout\);

-- Location: LCCOMB_X18_Y18_N8
\lm75_i2c|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Selector7~1_combout\ = (\lm75_i2c|Selector5~5_combout\) # ((\lm75_i2c|state.ST_COMM~q\ & (\lm75_i2c|Equal5~1_combout\ & \lm75_i2c|Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|state.ST_COMM~q\,
	datab => \lm75_i2c|Equal5~1_combout\,
	datac => \lm75_i2c|Selector7~0_combout\,
	datad => \lm75_i2c|Selector5~5_combout\,
	combout => \lm75_i2c|Selector7~1_combout\);

-- Location: LCCOMB_X18_Y18_N10
\lm75_i2c|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Selector7~2_combout\ = (\lm75_i2c|Selector7~1_combout\) # (((\lm75_i2c|state.ST_DONE~q\ & \lm75_i2c|Equal5~1_combout\)) # (!\lm75_i2c|state.ST_IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|state.ST_DONE~q\,
	datab => \lm75_i2c|Equal5~1_combout\,
	datac => \lm75_i2c|Selector7~1_combout\,
	datad => \lm75_i2c|state.ST_IDLE~q\,
	combout => \lm75_i2c|Selector7~2_combout\);

-- Location: LCCOMB_X18_Y18_N4
\lm75_i2c|sda~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|sda~2_combout\ = (\lm75_i2c|Selector7~2_combout\ & (\lm75_i2c|sda~1_combout\)) # (!\lm75_i2c|Selector7~2_combout\ & ((\lm75_i2c|sda~en_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lm75_i2c|sda~1_combout\,
	datac => \lm75_i2c|sda~en_q\,
	datad => \lm75_i2c|Selector7~2_combout\,
	combout => \lm75_i2c|sda~2_combout\);

-- Location: FF_X18_Y18_N5
\lm75_i2c|sda~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lm75_i2c|sda~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lm75_i2c|sda~en_q\);

-- Location: LCCOMB_X21_Y18_N0
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

-- Location: LCCOMB_X23_Y18_N4
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

-- Location: FF_X23_Y18_N5
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

-- Location: LCCOMB_X23_Y18_N6
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

-- Location: FF_X23_Y18_N7
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

-- Location: LCCOMB_X21_Y18_N30
\display|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~3_combout\ = (\display|count\(1) & (\display|count\(0) & (\display|count\(3) & \display|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(1),
	datab => \display|count\(0),
	datac => \display|count\(3),
	datad => \display|count\(2),
	combout => \display|Equal0~3_combout\);

-- Location: LCCOMB_X23_Y18_N8
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

-- Location: LCCOMB_X21_Y18_N18
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

-- Location: FF_X21_Y18_N19
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

-- Location: LCCOMB_X23_Y18_N10
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

-- Location: FF_X23_Y18_N11
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

-- Location: LCCOMB_X23_Y18_N12
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

-- Location: FF_X23_Y18_N13
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

-- Location: LCCOMB_X23_Y18_N14
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

-- Location: FF_X23_Y18_N15
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

-- Location: LCCOMB_X21_Y18_N28
\display|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~2_combout\ = (!\display|count\(6) & (!\display|count\(4) & (!\display|count\(5) & !\display|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(6),
	datab => \display|count\(4),
	datac => \display|count\(5),
	datad => \display|count\(7),
	combout => \display|Equal0~2_combout\);

-- Location: LCCOMB_X23_Y18_N16
\display|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~16_combout\ = (\display|count\(8) & (\display|Add0~15\ $ (GND))) # (!\display|count\(8) & (!\display|Add0~15\ & VCC))
-- \display|Add0~17\ = CARRY((\display|count\(8) & !\display|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display|count\(8),
	datad => VCC,
	cin => \display|Add0~15\,
	combout => \display|Add0~16_combout\,
	cout => \display|Add0~17\);

-- Location: LCCOMB_X24_Y18_N12
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

-- Location: FF_X24_Y18_N13
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

-- Location: LCCOMB_X23_Y18_N18
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

-- Location: LCCOMB_X24_Y18_N22
\display|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|count~2_combout\ = (!\display|Equal0~4_combout\ & \display|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display|Equal0~4_combout\,
	datad => \display|Add0~18_combout\,
	combout => \display|count~2_combout\);

-- Location: FF_X24_Y18_N23
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

-- Location: LCCOMB_X23_Y18_N20
\display|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~20_combout\ = (\display|count\(10) & (\display|Add0~19\ $ (GND))) # (!\display|count\(10) & (!\display|Add0~19\ & VCC))
-- \display|Add0~21\ = CARRY((\display|count\(10) & !\display|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display|count\(10),
	datad => VCC,
	cin => \display|Add0~19\,
	combout => \display|Add0~20_combout\,
	cout => \display|Add0~21\);

-- Location: LCCOMB_X24_Y18_N24
\display|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|count~1_combout\ = (!\display|Equal0~4_combout\ & \display|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display|Equal0~4_combout\,
	datad => \display|Add0~20_combout\,
	combout => \display|count~1_combout\);

-- Location: FF_X24_Y18_N25
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

-- Location: LCCOMB_X23_Y18_N22
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

-- Location: FF_X23_Y18_N23
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

-- Location: LCCOMB_X24_Y18_N26
\display|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~1_combout\ = (\display|count\(8) & (\display|count\(10) & (\display|count\(9) & !\display|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(8),
	datab => \display|count\(10),
	datac => \display|count\(9),
	datad => \display|count\(11),
	combout => \display|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y18_N24
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

-- Location: FF_X23_Y18_N25
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

-- Location: LCCOMB_X23_Y18_N26
\display|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~26_combout\ = (\display|count\(13) & (!\display|Add0~25\)) # (!\display|count\(13) & ((\display|Add0~25\) # (GND)))
-- \display|Add0~27\ = CARRY((!\display|Add0~25\) # (!\display|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(13),
	datad => VCC,
	cin => \display|Add0~25\,
	combout => \display|Add0~26_combout\,
	cout => \display|Add0~27\);

-- Location: LCCOMB_X22_Y18_N0
\display|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|count~0_combout\ = (!\display|Equal0~4_combout\ & \display|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display|Equal0~4_combout\,
	datad => \display|Add0~26_combout\,
	combout => \display|count~0_combout\);

-- Location: FF_X22_Y18_N1
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

-- Location: LCCOMB_X23_Y18_N28
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

-- Location: FF_X23_Y18_N29
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

-- Location: LCCOMB_X23_Y18_N30
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

-- Location: FF_X23_Y18_N31
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

-- Location: LCCOMB_X22_Y18_N22
\display|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~0_combout\ = (\display|count\(13) & (!\display|count\(14) & (!\display|count\(15) & !\display|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|count\(13),
	datab => \display|count\(14),
	datac => \display|count\(15),
	datad => \display|count\(12),
	combout => \display|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y18_N20
\display|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~4_combout\ = (\display|Equal0~3_combout\ & (\display|Equal0~2_combout\ & (\display|Equal0~1_combout\ & \display|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Equal0~3_combout\,
	datab => \display|Equal0~2_combout\,
	datac => \display|Equal0~1_combout\,
	datad => \display|Equal0~0_combout\,
	combout => \display|Equal0~4_combout\);

-- Location: FF_X21_Y18_N1
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

-- Location: LCCOMB_X21_Y18_N22
\display|digit_index[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|digit_index[1]~0_combout\ = \display|digit_index\(1) $ (((\display|digit_index\(0) & \display|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display|digit_index\(0),
	datac => \display|digit_index\(1),
	datad => \display|Equal0~4_combout\,
	combout => \display|digit_index[1]~0_combout\);

-- Location: FF_X21_Y18_N23
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

-- Location: LCCOMB_X21_Y18_N24
\display|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux0~0_combout\ = (!\display|digit_index\(1) & \display|digit_index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display|digit_index\(1),
	datad => \display|digit_index\(0),
	combout => \display|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y18_N30
\lm75_i2c|done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|done~0_combout\ = (\lm75_i2c|done~q\) # (\lm75_i2c|state.ST_DONE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lm75_i2c|done~q\,
	datad => \lm75_i2c|state.ST_DONE~q\,
	combout => \lm75_i2c|done~0_combout\);

-- Location: FF_X19_Y18_N31
\lm75_i2c|done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lm75_i2c|done~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lm75_i2c|done~q\);

-- Location: LCCOMB_X21_Y17_N20
\i2c_data_to_bcd|Selector2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Selector2~5_combout\ = (\lm75_i2c|done~q\ & ((\i2c_data_to_bcd|state.ST_IDLE~q\))) # (!\lm75_i2c|done~q\ & (!\i2c_data_to_bcd|state.ST_DONE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|done~q\,
	datab => \i2c_data_to_bcd|state.ST_DONE~q\,
	datad => \i2c_data_to_bcd|state.ST_IDLE~q\,
	combout => \i2c_data_to_bcd|Selector2~5_combout\);

-- Location: IOIBUF_X28_Y24_N8
\sda~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sda,
	o => \sda~input_o\);

-- Location: LCCOMB_X17_Y17_N0
\lm75_i2c|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|Equal4~2_combout\ = (!\lm75_i2c|index\(2) & (!\lm75_i2c|index\(0) & \lm75_i2c|index\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|index\(2),
	datac => \lm75_i2c|index\(0),
	datad => \lm75_i2c|index\(1),
	combout => \lm75_i2c|Equal4~2_combout\);

-- Location: LCCOMB_X17_Y18_N10
\lm75_i2c|i2c_buff[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|i2c_buff[7]~3_combout\ = (\lm75_i2c|state.ST_COMM~q\ & (!\lm75_i2c|index\(4) & (\lm75_i2c|Equal2~1_combout\ & \lm75_i2c|index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|state.ST_COMM~q\,
	datab => \lm75_i2c|index\(4),
	datac => \lm75_i2c|Equal2~1_combout\,
	datad => \lm75_i2c|index\(3),
	combout => \lm75_i2c|i2c_buff[7]~3_combout\);

-- Location: LCCOMB_X17_Y17_N26
\lm75_i2c|i2c_buff[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|i2c_buff[2]~10_combout\ = (\lm75_i2c|Equal4~2_combout\ & ((\lm75_i2c|i2c_buff[7]~3_combout\ & (\sda~input_o\)) # (!\lm75_i2c|i2c_buff[7]~3_combout\ & ((\lm75_i2c|i2c_buff\(2)))))) # (!\lm75_i2c|Equal4~2_combout\ & (((\lm75_i2c|i2c_buff\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sda~input_o\,
	datab => \lm75_i2c|Equal4~2_combout\,
	datac => \lm75_i2c|i2c_buff\(2),
	datad => \lm75_i2c|i2c_buff[7]~3_combout\,
	combout => \lm75_i2c|i2c_buff[2]~10_combout\);

-- Location: FF_X17_Y17_N27
\lm75_i2c|i2c_buff[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lm75_i2c|i2c_buff[2]~10_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lm75_i2c|i2c_buff\(2));

-- Location: LCCOMB_X19_Y17_N10
\i2c_data_to_bcd|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Add3~8_combout\ = (\i2c_data_to_bcd|num_reg\(5) & ((GND) # (!\i2c_data_to_bcd|Add3~7\))) # (!\i2c_data_to_bcd|num_reg\(5) & (\i2c_data_to_bcd|Add3~7\ $ (GND)))
-- \i2c_data_to_bcd|Add3~9\ = CARRY((\i2c_data_to_bcd|num_reg\(5)) # (!\i2c_data_to_bcd|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_data_to_bcd|num_reg\(5),
	datad => VCC,
	cin => \i2c_data_to_bcd|Add3~7\,
	combout => \i2c_data_to_bcd|Add3~8_combout\,
	cout => \i2c_data_to_bcd|Add3~9\);

-- Location: LCCOMB_X19_Y17_N12
\i2c_data_to_bcd|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Add3~10_combout\ = (\i2c_data_to_bcd|num_reg\(6) & (\i2c_data_to_bcd|Add3~9\ & VCC)) # (!\i2c_data_to_bcd|num_reg\(6) & (!\i2c_data_to_bcd|Add3~9\))
-- \i2c_data_to_bcd|Add3~11\ = CARRY((!\i2c_data_to_bcd|num_reg\(6) & !\i2c_data_to_bcd|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_data_to_bcd|num_reg\(6),
	datad => VCC,
	cin => \i2c_data_to_bcd|Add3~9\,
	combout => \i2c_data_to_bcd|Add3~10_combout\,
	cout => \i2c_data_to_bcd|Add3~11\);

-- Location: LCCOMB_X18_Y17_N2
\i2c_data_to_bcd|num~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|num~2_combout\ = (!\i2c_data_to_bcd|num_reg\(7) & (!\i2c_data_to_bcd|combinational_logic~1_combout\ & ((\i2c_data_to_bcd|LessThan3~0_combout\) # (!\i2c_data_to_bcd|num_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_data_to_bcd|num_reg\(7),
	datab => \i2c_data_to_bcd|num_reg\(5),
	datac => \i2c_data_to_bcd|combinational_logic~1_combout\,
	datad => \i2c_data_to_bcd|LessThan3~0_combout\,
	combout => \i2c_data_to_bcd|num~2_combout\);

-- Location: LCCOMB_X19_Y17_N2
\i2c_data_to_bcd|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Add3~0_combout\ = \i2c_data_to_bcd|num_reg\(1) $ (VCC)
-- \i2c_data_to_bcd|Add3~1\ = CARRY(\i2c_data_to_bcd|num_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_data_to_bcd|num_reg\(1),
	datad => VCC,
	combout => \i2c_data_to_bcd|Add3~0_combout\,
	cout => \i2c_data_to_bcd|Add3~1\);

-- Location: LCCOMB_X18_Y17_N8
\i2c_data_to_bcd|num_reg[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|num_reg[1]~7_combout\ = (\i2c_data_to_bcd|num~2_combout\ & ((\i2c_data_to_bcd|state.ST_DONE~q\ & (\i2c_data_to_bcd|num_reg\(1))) # (!\i2c_data_to_bcd|state.ST_DONE~q\ & ((\i2c_data_to_bcd|Add3~0_combout\))))) # 
-- (!\i2c_data_to_bcd|num~2_combout\ & (\i2c_data_to_bcd|num_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_data_to_bcd|num_reg\(1),
	datab => \i2c_data_to_bcd|num~2_combout\,
	datac => \i2c_data_to_bcd|state.ST_DONE~q\,
	datad => \i2c_data_to_bcd|Add3~0_combout\,
	combout => \i2c_data_to_bcd|num_reg[1]~7_combout\);

-- Location: LCCOMB_X17_Y17_N24
\lm75_i2c|i2c_buff[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|i2c_buff[7]~6_combout\ = (\lm75_i2c|index\(0) & (\lm75_i2c|i2c_buff[7]~3_combout\ & \lm75_i2c|index\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|index\(0),
	datac => \lm75_i2c|i2c_buff[7]~3_combout\,
	datad => \lm75_i2c|index\(2),
	combout => \lm75_i2c|i2c_buff[7]~6_combout\);

-- Location: LCCOMB_X17_Y17_N12
\lm75_i2c|i2c_buff[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|i2c_buff[7]~14_combout\ = (\lm75_i2c|index\(1) & ((\lm75_i2c|i2c_buff[7]~6_combout\ & (\sda~input_o\)) # (!\lm75_i2c|i2c_buff[7]~6_combout\ & ((\lm75_i2c|i2c_buff\(7)))))) # (!\lm75_i2c|index\(1) & (((\lm75_i2c|i2c_buff\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sda~input_o\,
	datab => \lm75_i2c|index\(1),
	datac => \lm75_i2c|i2c_buff\(7),
	datad => \lm75_i2c|i2c_buff[7]~6_combout\,
	combout => \lm75_i2c|i2c_buff[7]~14_combout\);

-- Location: FF_X17_Y17_N13
\lm75_i2c|i2c_buff[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lm75_i2c|i2c_buff[7]~14_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lm75_i2c|i2c_buff\(7));

-- Location: LCCOMB_X18_Y17_N6
\i2c_data_to_bcd|num_reg[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|num_reg[1]~8_combout\ = (\i2c_data_to_bcd|state.ST_CALC~q\ & (((\i2c_data_to_bcd|num_reg[1]~7_combout\)))) # (!\i2c_data_to_bcd|state.ST_CALC~q\ & ((\i2c_data_to_bcd|state.ST_DONE~q\ & (\i2c_data_to_bcd|num_reg[1]~7_combout\)) # 
-- (!\i2c_data_to_bcd|state.ST_DONE~q\ & ((\lm75_i2c|i2c_buff\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_data_to_bcd|state.ST_CALC~q\,
	datab => \i2c_data_to_bcd|state.ST_DONE~q\,
	datac => \i2c_data_to_bcd|num_reg[1]~7_combout\,
	datad => \lm75_i2c|i2c_buff\(7),
	combout => \i2c_data_to_bcd|num_reg[1]~8_combout\);

-- Location: FF_X18_Y17_N7
\i2c_data_to_bcd|num_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_data_to_bcd|num_reg[1]~8_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_data_to_bcd|num_reg\(1));

-- Location: LCCOMB_X19_Y17_N4
\i2c_data_to_bcd|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Add3~2_combout\ = (\i2c_data_to_bcd|num_reg\(2) & (\i2c_data_to_bcd|Add3~1\ & VCC)) # (!\i2c_data_to_bcd|num_reg\(2) & (!\i2c_data_to_bcd|Add3~1\))
-- \i2c_data_to_bcd|Add3~3\ = CARRY((!\i2c_data_to_bcd|num_reg\(2) & !\i2c_data_to_bcd|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_data_to_bcd|num_reg\(2),
	datad => VCC,
	cin => \i2c_data_to_bcd|Add3~1\,
	combout => \i2c_data_to_bcd|Add3~2_combout\,
	cout => \i2c_data_to_bcd|Add3~3\);

-- Location: LCCOMB_X19_Y17_N20
\i2c_data_to_bcd|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Add1~0_combout\ = \i2c_data_to_bcd|num_reg\(2) $ (VCC)
-- \i2c_data_to_bcd|Add1~1\ = CARRY(\i2c_data_to_bcd|num_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_data_to_bcd|num_reg\(2),
	datad => VCC,
	combout => \i2c_data_to_bcd|Add1~0_combout\,
	cout => \i2c_data_to_bcd|Add1~1\);

-- Location: LCCOMB_X19_Y17_N18
\i2c_data_to_bcd|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Add1~8_combout\ = (\i2c_data_to_bcd|LessThan3~1_combout\ & (\i2c_data_to_bcd|Add3~2_combout\)) # (!\i2c_data_to_bcd|LessThan3~1_combout\ & ((\i2c_data_to_bcd|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_data_to_bcd|LessThan3~1_combout\,
	datab => \i2c_data_to_bcd|Add3~2_combout\,
	datad => \i2c_data_to_bcd|Add1~0_combout\,
	combout => \i2c_data_to_bcd|Add1~8_combout\);

-- Location: LCCOMB_X17_Y17_N2
\lm75_i2c|i2c_buff[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|i2c_buff[6]~8_combout\ = (!\lm75_i2c|index\(0) & (\lm75_i2c|index\(1) & (\lm75_i2c|i2c_buff[7]~3_combout\ & \lm75_i2c|index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|index\(0),
	datab => \lm75_i2c|index\(1),
	datac => \lm75_i2c|i2c_buff[7]~3_combout\,
	datad => \lm75_i2c|index\(2),
	combout => \lm75_i2c|i2c_buff[6]~8_combout\);

-- Location: LCCOMB_X17_Y17_N28
\lm75_i2c|i2c_buff[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|i2c_buff[6]~9_combout\ = (\lm75_i2c|i2c_buff[6]~8_combout\ & (\sda~input_o\)) # (!\lm75_i2c|i2c_buff[6]~8_combout\ & ((\lm75_i2c|i2c_buff\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sda~input_o\,
	datac => \lm75_i2c|i2c_buff\(6),
	datad => \lm75_i2c|i2c_buff[6]~8_combout\,
	combout => \lm75_i2c|i2c_buff[6]~9_combout\);

-- Location: FF_X17_Y17_N29
\lm75_i2c|i2c_buff[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lm75_i2c|i2c_buff[6]~9_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lm75_i2c|i2c_buff\(6));

-- Location: FF_X19_Y17_N19
\i2c_data_to_bcd|num_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_data_to_bcd|Add1~8_combout\,
	asdata => \lm75_i2c|i2c_buff\(6),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \i2c_data_to_bcd|ALT_INV_state.ST_CALC~q\,
	ena => \i2c_data_to_bcd|num_reg[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_data_to_bcd|num_reg\(2));

-- Location: LCCOMB_X19_Y17_N22
\i2c_data_to_bcd|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Add1~2_combout\ = (\i2c_data_to_bcd|num_reg\(3) & (\i2c_data_to_bcd|Add1~1\ & VCC)) # (!\i2c_data_to_bcd|num_reg\(3) & (!\i2c_data_to_bcd|Add1~1\))
-- \i2c_data_to_bcd|Add1~3\ = CARRY((!\i2c_data_to_bcd|num_reg\(3) & !\i2c_data_to_bcd|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_data_to_bcd|num_reg\(3),
	datad => VCC,
	cin => \i2c_data_to_bcd|Add1~1\,
	combout => \i2c_data_to_bcd|Add1~2_combout\,
	cout => \i2c_data_to_bcd|Add1~3\);

-- Location: LCCOMB_X19_Y17_N6
\i2c_data_to_bcd|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Add3~4_combout\ = (\i2c_data_to_bcd|num_reg\(3) & (\i2c_data_to_bcd|Add3~3\ $ (GND))) # (!\i2c_data_to_bcd|num_reg\(3) & (!\i2c_data_to_bcd|Add3~3\ & VCC))
-- \i2c_data_to_bcd|Add3~5\ = CARRY((\i2c_data_to_bcd|num_reg\(3) & !\i2c_data_to_bcd|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_data_to_bcd|num_reg\(3),
	datad => VCC,
	cin => \i2c_data_to_bcd|Add3~3\,
	combout => \i2c_data_to_bcd|Add3~4_combout\,
	cout => \i2c_data_to_bcd|Add3~5\);

-- Location: LCCOMB_X19_Y17_N0
\i2c_data_to_bcd|Add1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Add1~7_combout\ = (\i2c_data_to_bcd|LessThan3~1_combout\ & ((\i2c_data_to_bcd|Add3~4_combout\))) # (!\i2c_data_to_bcd|LessThan3~1_combout\ & (\i2c_data_to_bcd|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_data_to_bcd|Add1~2_combout\,
	datab => \i2c_data_to_bcd|LessThan3~1_combout\,
	datad => \i2c_data_to_bcd|Add3~4_combout\,
	combout => \i2c_data_to_bcd|Add1~7_combout\);

-- Location: LCCOMB_X17_Y17_N10
\lm75_i2c|i2c_buff[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|i2c_buff[5]~7_combout\ = (\lm75_i2c|index\(1) & (((\lm75_i2c|i2c_buff\(5))))) # (!\lm75_i2c|index\(1) & ((\lm75_i2c|i2c_buff[7]~6_combout\ & (\sda~input_o\)) # (!\lm75_i2c|i2c_buff[7]~6_combout\ & ((\lm75_i2c|i2c_buff\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sda~input_o\,
	datab => \lm75_i2c|index\(1),
	datac => \lm75_i2c|i2c_buff\(5),
	datad => \lm75_i2c|i2c_buff[7]~6_combout\,
	combout => \lm75_i2c|i2c_buff[5]~7_combout\);

-- Location: FF_X17_Y17_N11
\lm75_i2c|i2c_buff[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lm75_i2c|i2c_buff[5]~7_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lm75_i2c|i2c_buff\(5));

-- Location: FF_X19_Y17_N1
\i2c_data_to_bcd|num_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_data_to_bcd|Add1~7_combout\,
	asdata => \lm75_i2c|i2c_buff\(5),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \i2c_data_to_bcd|ALT_INV_state.ST_CALC~q\,
	ena => \i2c_data_to_bcd|num_reg[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_data_to_bcd|num_reg\(3));

-- Location: LCCOMB_X19_Y17_N24
\i2c_data_to_bcd|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Add1~4_combout\ = (\i2c_data_to_bcd|num_reg\(4) & ((GND) # (!\i2c_data_to_bcd|Add1~3\))) # (!\i2c_data_to_bcd|num_reg\(4) & (\i2c_data_to_bcd|Add1~3\ $ (GND)))
-- \i2c_data_to_bcd|Add1~5\ = CARRY((\i2c_data_to_bcd|num_reg\(4)) # (!\i2c_data_to_bcd|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_data_to_bcd|num_reg\(4),
	datad => VCC,
	cin => \i2c_data_to_bcd|Add1~3\,
	combout => \i2c_data_to_bcd|Add1~4_combout\,
	cout => \i2c_data_to_bcd|Add1~5\);

-- Location: LCCOMB_X19_Y17_N26
\i2c_data_to_bcd|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Add1~9_combout\ = (\i2c_data_to_bcd|num_reg\(5) & (!\i2c_data_to_bcd|Add1~5\)) # (!\i2c_data_to_bcd|num_reg\(5) & ((\i2c_data_to_bcd|Add1~5\) # (GND)))
-- \i2c_data_to_bcd|Add1~10\ = CARRY((!\i2c_data_to_bcd|Add1~5\) # (!\i2c_data_to_bcd|num_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_data_to_bcd|num_reg\(5),
	datad => VCC,
	cin => \i2c_data_to_bcd|Add1~5\,
	combout => \i2c_data_to_bcd|Add1~9_combout\,
	cout => \i2c_data_to_bcd|Add1~10\);

-- Location: LCCOMB_X19_Y17_N28
\i2c_data_to_bcd|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Add1~11_combout\ = (\i2c_data_to_bcd|num_reg\(6) & (\i2c_data_to_bcd|Add1~10\ $ (GND))) # (!\i2c_data_to_bcd|num_reg\(6) & (!\i2c_data_to_bcd|Add1~10\ & VCC))
-- \i2c_data_to_bcd|Add1~12\ = CARRY((\i2c_data_to_bcd|num_reg\(6) & !\i2c_data_to_bcd|Add1~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_data_to_bcd|num_reg\(6),
	datad => VCC,
	cin => \i2c_data_to_bcd|Add1~10\,
	combout => \i2c_data_to_bcd|Add1~11_combout\,
	cout => \i2c_data_to_bcd|Add1~12\);

-- Location: LCCOMB_X18_Y17_N20
\i2c_data_to_bcd|num_reg[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|num_reg[6]~1_combout\ = (\i2c_data_to_bcd|state.ST_CALC~q\ & ((\i2c_data_to_bcd|LessThan3~1_combout\ & (\i2c_data_to_bcd|Add3~10_combout\)) # (!\i2c_data_to_bcd|LessThan3~1_combout\ & ((\i2c_data_to_bcd|Add1~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_data_to_bcd|state.ST_CALC~q\,
	datab => \i2c_data_to_bcd|LessThan3~1_combout\,
	datac => \i2c_data_to_bcd|Add3~10_combout\,
	datad => \i2c_data_to_bcd|Add1~11_combout\,
	combout => \i2c_data_to_bcd|num_reg[6]~1_combout\);

-- Location: LCCOMB_X18_Y17_N18
\i2c_data_to_bcd|num_reg[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|num_reg[6]~2_combout\ = (\i2c_data_to_bcd|num_reg[6]~1_combout\) # ((!\i2c_data_to_bcd|state.ST_CALC~q\ & \lm75_i2c|i2c_buff\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_data_to_bcd|state.ST_CALC~q\,
	datac => \lm75_i2c|i2c_buff\(2),
	datad => \i2c_data_to_bcd|num_reg[6]~1_combout\,
	combout => \i2c_data_to_bcd|num_reg[6]~2_combout\);

-- Location: LCCOMB_X18_Y17_N30
\i2c_data_to_bcd|num_reg[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|num_reg[6]~3_combout\ = (\i2c_data_to_bcd|num_reg[5]~0_combout\ & ((\i2c_data_to_bcd|num_reg[6]~2_combout\) # ((\i2c_data_to_bcd|state.ST_DONE~q\ & \i2c_data_to_bcd|num_reg\(6))))) # (!\i2c_data_to_bcd|num_reg[5]~0_combout\ & 
-- (\i2c_data_to_bcd|state.ST_DONE~q\ & (\i2c_data_to_bcd|num_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_data_to_bcd|num_reg[5]~0_combout\,
	datab => \i2c_data_to_bcd|state.ST_DONE~q\,
	datac => \i2c_data_to_bcd|num_reg\(6),
	datad => \i2c_data_to_bcd|num_reg[6]~2_combout\,
	combout => \i2c_data_to_bcd|num_reg[6]~3_combout\);

-- Location: FF_X18_Y17_N31
\i2c_data_to_bcd|num_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_data_to_bcd|num_reg[6]~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_data_to_bcd|num_reg\(6));

-- Location: LCCOMB_X18_Y17_N24
\i2c_data_to_bcd|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|LessThan3~0_combout\ = ((!\i2c_data_to_bcd|num_reg\(4) & (!\i2c_data_to_bcd|num_reg\(3) & !\i2c_data_to_bcd|num_reg\(2)))) # (!\i2c_data_to_bcd|num_reg\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_data_to_bcd|num_reg\(6),
	datab => \i2c_data_to_bcd|num_reg\(4),
	datac => \i2c_data_to_bcd|num_reg\(3),
	datad => \i2c_data_to_bcd|num_reg\(2),
	combout => \i2c_data_to_bcd|LessThan3~0_combout\);

-- Location: LCCOMB_X18_Y17_N16
\i2c_data_to_bcd|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|LessThan3~1_combout\ = (!\i2c_data_to_bcd|num_reg\(7) & ((\i2c_data_to_bcd|LessThan3~0_combout\) # (!\i2c_data_to_bcd|num_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_data_to_bcd|num_reg\(5),
	datac => \i2c_data_to_bcd|num_reg\(7),
	datad => \i2c_data_to_bcd|LessThan3~0_combout\,
	combout => \i2c_data_to_bcd|LessThan3~1_combout\);

-- Location: LCCOMB_X19_Y17_N8
\i2c_data_to_bcd|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Add3~6_combout\ = (\i2c_data_to_bcd|num_reg\(4) & (\i2c_data_to_bcd|Add3~5\ & VCC)) # (!\i2c_data_to_bcd|num_reg\(4) & (!\i2c_data_to_bcd|Add3~5\))
-- \i2c_data_to_bcd|Add3~7\ = CARRY((!\i2c_data_to_bcd|num_reg\(4) & !\i2c_data_to_bcd|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_data_to_bcd|num_reg\(4),
	datad => VCC,
	cin => \i2c_data_to_bcd|Add3~5\,
	combout => \i2c_data_to_bcd|Add3~6_combout\,
	cout => \i2c_data_to_bcd|Add3~7\);

-- Location: LCCOMB_X19_Y17_N16
\i2c_data_to_bcd|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Add1~6_combout\ = (\i2c_data_to_bcd|LessThan3~1_combout\ & (\i2c_data_to_bcd|Add3~6_combout\)) # (!\i2c_data_to_bcd|LessThan3~1_combout\ & ((\i2c_data_to_bcd|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_data_to_bcd|LessThan3~1_combout\,
	datab => \i2c_data_to_bcd|Add3~6_combout\,
	datad => \i2c_data_to_bcd|Add1~4_combout\,
	combout => \i2c_data_to_bcd|Add1~6_combout\);

-- Location: LCCOMB_X17_Y17_N18
\lm75_i2c|i2c_buff[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|i2c_buff[4]~4_combout\ = (!\lm75_i2c|index\(0) & (!\lm75_i2c|index\(1) & (\lm75_i2c|i2c_buff[7]~3_combout\ & \lm75_i2c|index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|index\(0),
	datab => \lm75_i2c|index\(1),
	datac => \lm75_i2c|i2c_buff[7]~3_combout\,
	datad => \lm75_i2c|index\(2),
	combout => \lm75_i2c|i2c_buff[4]~4_combout\);

-- Location: LCCOMB_X17_Y17_N20
\lm75_i2c|i2c_buff[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|i2c_buff[4]~5_combout\ = (\lm75_i2c|i2c_buff[4]~4_combout\ & (\sda~input_o\)) # (!\lm75_i2c|i2c_buff[4]~4_combout\ & ((\lm75_i2c|i2c_buff\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sda~input_o\,
	datac => \lm75_i2c|i2c_buff\(4),
	datad => \lm75_i2c|i2c_buff[4]~4_combout\,
	combout => \lm75_i2c|i2c_buff[4]~5_combout\);

-- Location: FF_X17_Y17_N21
\lm75_i2c|i2c_buff[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lm75_i2c|i2c_buff[4]~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lm75_i2c|i2c_buff\(4));

-- Location: FF_X19_Y17_N17
\i2c_data_to_bcd|num_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_data_to_bcd|Add1~6_combout\,
	asdata => \lm75_i2c|i2c_buff\(4),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \i2c_data_to_bcd|ALT_INV_state.ST_CALC~q\,
	ena => \i2c_data_to_bcd|num_reg[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_data_to_bcd|num_reg\(4));

-- Location: LCCOMB_X18_Y17_N0
\i2c_data_to_bcd|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Add1~13_combout\ = (\i2c_data_to_bcd|LessThan3~1_combout\ & (\i2c_data_to_bcd|Add3~8_combout\)) # (!\i2c_data_to_bcd|LessThan3~1_combout\ & ((\i2c_data_to_bcd|Add1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_data_to_bcd|Add3~8_combout\,
	datab => \i2c_data_to_bcd|LessThan3~1_combout\,
	datad => \i2c_data_to_bcd|Add1~9_combout\,
	combout => \i2c_data_to_bcd|Add1~13_combout\);

-- Location: LCCOMB_X17_Y17_N6
\lm75_i2c|i2c_buff[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|i2c_buff[3]~11_combout\ = (\lm75_i2c|index\(0) & (\lm75_i2c|i2c_buff[7]~3_combout\ & !\lm75_i2c|index\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|index\(0),
	datac => \lm75_i2c|i2c_buff[7]~3_combout\,
	datad => \lm75_i2c|index\(2),
	combout => \lm75_i2c|i2c_buff[3]~11_combout\);

-- Location: LCCOMB_X17_Y17_N4
\lm75_i2c|i2c_buff[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|i2c_buff[3]~12_combout\ = (\lm75_i2c|index\(1) & ((\lm75_i2c|i2c_buff[3]~11_combout\ & (\sda~input_o\)) # (!\lm75_i2c|i2c_buff[3]~11_combout\ & ((\lm75_i2c|i2c_buff\(3)))))) # (!\lm75_i2c|index\(1) & (((\lm75_i2c|i2c_buff\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sda~input_o\,
	datab => \lm75_i2c|index\(1),
	datac => \lm75_i2c|i2c_buff\(3),
	datad => \lm75_i2c|i2c_buff[3]~11_combout\,
	combout => \lm75_i2c|i2c_buff[3]~12_combout\);

-- Location: FF_X17_Y17_N5
\lm75_i2c|i2c_buff[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lm75_i2c|i2c_buff[3]~12_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lm75_i2c|i2c_buff\(3));

-- Location: FF_X18_Y17_N1
\i2c_data_to_bcd|num_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_data_to_bcd|Add1~13_combout\,
	asdata => \lm75_i2c|i2c_buff\(3),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \i2c_data_to_bcd|ALT_INV_state.ST_CALC~q\,
	ena => \i2c_data_to_bcd|num_reg[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_data_to_bcd|num_reg\(5));

-- Location: LCCOMB_X18_Y17_N4
\i2c_data_to_bcd|combinational_logic~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|combinational_logic~0_combout\ = (!\i2c_data_to_bcd|num_reg\(6) & (((!\i2c_data_to_bcd|num_reg\(1) & !\i2c_data_to_bcd|num_reg\(2))) # (!\i2c_data_to_bcd|num_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_data_to_bcd|num_reg\(1),
	datab => \i2c_data_to_bcd|num_reg\(3),
	datac => \i2c_data_to_bcd|num_reg\(6),
	datad => \i2c_data_to_bcd|num_reg\(2),
	combout => \i2c_data_to_bcd|combinational_logic~0_combout\);

-- Location: LCCOMB_X18_Y17_N26
\i2c_data_to_bcd|combinational_logic~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|combinational_logic~1_combout\ = (!\i2c_data_to_bcd|num_reg\(5) & (\i2c_data_to_bcd|combinational_logic~0_combout\ & !\i2c_data_to_bcd|num_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_data_to_bcd|num_reg\(5),
	datac => \i2c_data_to_bcd|combinational_logic~0_combout\,
	datad => \i2c_data_to_bcd|num_reg\(4),
	combout => \i2c_data_to_bcd|combinational_logic~1_combout\);

-- Location: LCCOMB_X18_Y17_N22
\i2c_data_to_bcd|num_reg[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|num_reg[5]~0_combout\ = (!\i2c_data_to_bcd|state.ST_DONE~q\ & (((!\i2c_data_to_bcd|LessThan3~1_combout\) # (!\i2c_data_to_bcd|combinational_logic~1_combout\)) # (!\i2c_data_to_bcd|state.ST_CALC~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_data_to_bcd|state.ST_CALC~q\,
	datab => \i2c_data_to_bcd|state.ST_DONE~q\,
	datac => \i2c_data_to_bcd|combinational_logic~1_combout\,
	datad => \i2c_data_to_bcd|LessThan3~1_combout\,
	combout => \i2c_data_to_bcd|num_reg[5]~0_combout\);

-- Location: LCCOMB_X19_Y17_N14
\i2c_data_to_bcd|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Add3~12_combout\ = \i2c_data_to_bcd|Add3~11\ $ (\i2c_data_to_bcd|num_reg\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i2c_data_to_bcd|num_reg\(7),
	cin => \i2c_data_to_bcd|Add3~11\,
	combout => \i2c_data_to_bcd|Add3~12_combout\);

-- Location: LCCOMB_X19_Y17_N30
\i2c_data_to_bcd|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Add1~14_combout\ = \i2c_data_to_bcd|Add1~12\ $ (!\i2c_data_to_bcd|num_reg\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i2c_data_to_bcd|num_reg\(7),
	cin => \i2c_data_to_bcd|Add1~12\,
	combout => \i2c_data_to_bcd|Add1~14_combout\);

-- Location: LCCOMB_X17_Y17_N30
\lm75_i2c|i2c_buff[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|i2c_buff[1]~13_combout\ = (\lm75_i2c|index\(1) & (((\lm75_i2c|i2c_buff\(1))))) # (!\lm75_i2c|index\(1) & ((\lm75_i2c|i2c_buff[3]~11_combout\ & (\sda~input_o\)) # (!\lm75_i2c|i2c_buff[3]~11_combout\ & ((\lm75_i2c|i2c_buff\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sda~input_o\,
	datab => \lm75_i2c|index\(1),
	datac => \lm75_i2c|i2c_buff\(1),
	datad => \lm75_i2c|i2c_buff[3]~11_combout\,
	combout => \lm75_i2c|i2c_buff[1]~13_combout\);

-- Location: FF_X17_Y17_N31
\lm75_i2c|i2c_buff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lm75_i2c|i2c_buff[1]~13_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lm75_i2c|i2c_buff\(1));

-- Location: LCCOMB_X18_Y17_N28
\i2c_data_to_bcd|num_reg[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|num_reg[7]~4_combout\ = (\i2c_data_to_bcd|state.ST_CALC~q\ & ((\i2c_data_to_bcd|LessThan3~1_combout\))) # (!\i2c_data_to_bcd|state.ST_CALC~q\ & (\lm75_i2c|i2c_buff\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lm75_i2c|i2c_buff\(1),
	datac => \i2c_data_to_bcd|state.ST_CALC~q\,
	datad => \i2c_data_to_bcd|LessThan3~1_combout\,
	combout => \i2c_data_to_bcd|num_reg[7]~4_combout\);

-- Location: LCCOMB_X18_Y17_N10
\i2c_data_to_bcd|num_reg[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|num_reg[7]~5_combout\ = (\i2c_data_to_bcd|state.ST_CALC~q\ & ((\i2c_data_to_bcd|num_reg[7]~4_combout\ & (\i2c_data_to_bcd|Add3~12_combout\)) # (!\i2c_data_to_bcd|num_reg[7]~4_combout\ & ((\i2c_data_to_bcd|Add1~14_combout\))))) # 
-- (!\i2c_data_to_bcd|state.ST_CALC~q\ & (((\i2c_data_to_bcd|num_reg[7]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_data_to_bcd|state.ST_CALC~q\,
	datab => \i2c_data_to_bcd|Add3~12_combout\,
	datac => \i2c_data_to_bcd|Add1~14_combout\,
	datad => \i2c_data_to_bcd|num_reg[7]~4_combout\,
	combout => \i2c_data_to_bcd|num_reg[7]~5_combout\);

-- Location: LCCOMB_X18_Y17_N14
\i2c_data_to_bcd|num_reg[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|num_reg[7]~6_combout\ = (\i2c_data_to_bcd|num_reg[5]~0_combout\ & ((\i2c_data_to_bcd|num_reg[7]~5_combout\) # ((\i2c_data_to_bcd|state.ST_DONE~q\ & \i2c_data_to_bcd|num_reg\(7))))) # (!\i2c_data_to_bcd|num_reg[5]~0_combout\ & 
-- (\i2c_data_to_bcd|state.ST_DONE~q\ & (\i2c_data_to_bcd|num_reg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_data_to_bcd|num_reg[5]~0_combout\,
	datab => \i2c_data_to_bcd|state.ST_DONE~q\,
	datac => \i2c_data_to_bcd|num_reg\(7),
	datad => \i2c_data_to_bcd|num_reg[7]~5_combout\,
	combout => \i2c_data_to_bcd|num_reg[7]~6_combout\);

-- Location: FF_X18_Y17_N15
\i2c_data_to_bcd|num_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_data_to_bcd|num_reg[7]~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_data_to_bcd|num_reg\(7));

-- Location: LCCOMB_X21_Y17_N28
\i2c_data_to_bcd|Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Selector2~4_combout\ = (\i2c_data_to_bcd|num_reg\(7)) # ((!\i2c_data_to_bcd|state.ST_CALC~q\) # (!\i2c_data_to_bcd|combinational_logic~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_data_to_bcd|num_reg\(7),
	datac => \i2c_data_to_bcd|combinational_logic~1_combout\,
	datad => \i2c_data_to_bcd|state.ST_CALC~q\,
	combout => \i2c_data_to_bcd|Selector2~4_combout\);

-- Location: LCCOMB_X21_Y17_N6
\i2c_data_to_bcd|state.ST_IDLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|state.ST_IDLE~0_combout\ = (\i2c_data_to_bcd|Selector2~5_combout\ & ((\i2c_data_to_bcd|Selector2~4_combout\ & ((\i2c_data_to_bcd|state.ST_IDLE~q\))) # (!\i2c_data_to_bcd|Selector2~4_combout\ & (!\i2c_data_to_bcd|Selector2~6_combout\)))) # 
-- (!\i2c_data_to_bcd|Selector2~5_combout\ & (!\i2c_data_to_bcd|Selector2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_data_to_bcd|Selector2~6_combout\,
	datab => \i2c_data_to_bcd|Selector2~5_combout\,
	datac => \i2c_data_to_bcd|state.ST_IDLE~q\,
	datad => \i2c_data_to_bcd|Selector2~4_combout\,
	combout => \i2c_data_to_bcd|state.ST_IDLE~0_combout\);

-- Location: FF_X21_Y17_N7
\i2c_data_to_bcd|state.ST_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_data_to_bcd|state.ST_IDLE~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_data_to_bcd|state.ST_IDLE~q\);

-- Location: LCCOMB_X21_Y17_N2
\i2c_data_to_bcd|Selector2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Selector2~7_combout\ = (\i2c_data_to_bcd|state.ST_DONE~q\ & (\lm75_i2c|done~q\ & ((\i2c_data_to_bcd|state.ST_IDLE~q\) # (!\i2c_data_to_bcd|Selector2~4_combout\)))) # (!\i2c_data_to_bcd|state.ST_DONE~q\ & 
-- (((!\i2c_data_to_bcd|Selector2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_data_to_bcd|state.ST_IDLE~q\,
	datab => \lm75_i2c|done~q\,
	datac => \i2c_data_to_bcd|state.ST_DONE~q\,
	datad => \i2c_data_to_bcd|Selector2~4_combout\,
	combout => \i2c_data_to_bcd|Selector2~7_combout\);

-- Location: FF_X21_Y17_N3
\i2c_data_to_bcd|state.ST_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_data_to_bcd|Selector2~7_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_data_to_bcd|state.ST_DONE~q\);

-- Location: LCCOMB_X21_Y17_N22
\i2c_data_to_bcd|Selector2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Selector2~6_combout\ = (\i2c_data_to_bcd|state.ST_DONE~q\ & !\lm75_i2c|done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_data_to_bcd|state.ST_DONE~q\,
	datad => \lm75_i2c|done~q\,
	combout => \i2c_data_to_bcd|Selector2~6_combout\);

-- Location: LCCOMB_X21_Y17_N16
\i2c_data_to_bcd|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Selector1~0_combout\ = (\i2c_data_to_bcd|Selector2~4_combout\ & ((\i2c_data_to_bcd|Selector2~5_combout\ & ((\i2c_data_to_bcd|state.ST_CALC~q\))) # (!\i2c_data_to_bcd|Selector2~5_combout\ & (!\i2c_data_to_bcd|Selector2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_data_to_bcd|Selector2~6_combout\,
	datab => \i2c_data_to_bcd|Selector2~5_combout\,
	datac => \i2c_data_to_bcd|state.ST_CALC~q\,
	datad => \i2c_data_to_bcd|Selector2~4_combout\,
	combout => \i2c_data_to_bcd|Selector1~0_combout\);

-- Location: FF_X21_Y17_N17
\i2c_data_to_bcd|state.ST_CALC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_data_to_bcd|Selector1~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_data_to_bcd|state.ST_CALC~q\);

-- Location: LCCOMB_X18_Y19_N4
\i2c_data_to_bcd|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Selector10~0_combout\ = (\i2c_data_to_bcd|tens_reg\(0) & ((\i2c_data_to_bcd|state.ST_DONE~q\) # ((\i2c_data_to_bcd|state.ST_CALC~q\ & !\i2c_data_to_bcd|num~2_combout\)))) # (!\i2c_data_to_bcd|tens_reg\(0) & 
-- (\i2c_data_to_bcd|state.ST_CALC~q\ & ((\i2c_data_to_bcd|num~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_data_to_bcd|state.ST_CALC~q\,
	datab => \i2c_data_to_bcd|state.ST_DONE~q\,
	datac => \i2c_data_to_bcd|tens_reg\(0),
	datad => \i2c_data_to_bcd|num~2_combout\,
	combout => \i2c_data_to_bcd|Selector10~0_combout\);

-- Location: FF_X18_Y19_N5
\i2c_data_to_bcd|tens_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_data_to_bcd|Selector10~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_data_to_bcd|tens_reg\(0));

-- Location: LCCOMB_X18_Y19_N6
\i2c_data_to_bcd|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Selector9~0_combout\ = (\i2c_data_to_bcd|state.ST_CALC~q\ & (\i2c_data_to_bcd|tens_reg\(1) $ (((\i2c_data_to_bcd|tens_reg\(0) & \i2c_data_to_bcd|num~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_data_to_bcd|tens_reg\(1),
	datab => \i2c_data_to_bcd|tens_reg\(0),
	datac => \i2c_data_to_bcd|state.ST_CALC~q\,
	datad => \i2c_data_to_bcd|num~2_combout\,
	combout => \i2c_data_to_bcd|Selector9~0_combout\);

-- Location: LCCOMB_X18_Y19_N22
\i2c_data_to_bcd|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Selector9~1_combout\ = (\i2c_data_to_bcd|Selector9~0_combout\) # ((\i2c_data_to_bcd|state.ST_DONE~q\ & \i2c_data_to_bcd|tens_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_data_to_bcd|state.ST_DONE~q\,
	datac => \i2c_data_to_bcd|tens_reg\(1),
	datad => \i2c_data_to_bcd|Selector9~0_combout\,
	combout => \i2c_data_to_bcd|Selector9~1_combout\);

-- Location: FF_X18_Y19_N23
\i2c_data_to_bcd|tens_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_data_to_bcd|Selector9~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_data_to_bcd|tens_reg\(1));

-- Location: LCCOMB_X18_Y19_N0
\i2c_data_to_bcd|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Selector8~0_combout\ = (\i2c_data_to_bcd|tens_reg\(0) & (\i2c_data_to_bcd|tens_reg\(1) & \i2c_data_to_bcd|num~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_data_to_bcd|tens_reg\(0),
	datac => \i2c_data_to_bcd|tens_reg\(1),
	datad => \i2c_data_to_bcd|num~2_combout\,
	combout => \i2c_data_to_bcd|Selector8~0_combout\);

-- Location: LCCOMB_X18_Y19_N30
\i2c_data_to_bcd|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Selector8~1_combout\ = (\i2c_data_to_bcd|tens_reg\(2) & ((\i2c_data_to_bcd|state.ST_DONE~q\) # ((\i2c_data_to_bcd|state.ST_CALC~q\ & !\i2c_data_to_bcd|Selector8~0_combout\)))) # (!\i2c_data_to_bcd|tens_reg\(2) & 
-- (\i2c_data_to_bcd|state.ST_CALC~q\ & ((\i2c_data_to_bcd|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_data_to_bcd|state.ST_CALC~q\,
	datab => \i2c_data_to_bcd|state.ST_DONE~q\,
	datac => \i2c_data_to_bcd|tens_reg\(2),
	datad => \i2c_data_to_bcd|Selector8~0_combout\,
	combout => \i2c_data_to_bcd|Selector8~1_combout\);

-- Location: FF_X18_Y19_N31
\i2c_data_to_bcd|tens_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_data_to_bcd|Selector8~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_data_to_bcd|tens_reg\(2));

-- Location: LCCOMB_X18_Y19_N2
\i2c_data_to_bcd|bcd_reg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|bcd_reg[6]~feeder_combout\ = \i2c_data_to_bcd|tens_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_data_to_bcd|tens_reg\(2),
	combout => \i2c_data_to_bcd|bcd_reg[6]~feeder_combout\);

-- Location: LCCOMB_X18_Y17_N12
\i2c_data_to_bcd|bcd_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|bcd_reg[0]~0_combout\ = (\i2c_data_to_bcd|state.ST_CALC~q\ & (\i2c_data_to_bcd|combinational_logic~1_combout\ & \i2c_data_to_bcd|LessThan3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_data_to_bcd|state.ST_CALC~q\,
	datac => \i2c_data_to_bcd|combinational_logic~1_combout\,
	datad => \i2c_data_to_bcd|LessThan3~1_combout\,
	combout => \i2c_data_to_bcd|bcd_reg[0]~0_combout\);

-- Location: FF_X18_Y19_N3
\i2c_data_to_bcd|bcd_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_data_to_bcd|bcd_reg[6]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \i2c_data_to_bcd|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_data_to_bcd|bcd_reg\(6));

-- Location: LCCOMB_X21_Y17_N30
\i2c_data_to_bcd|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Selector6~0_combout\ = (\i2c_data_to_bcd|hundreds_reg\(0) & ((\i2c_data_to_bcd|state.ST_DONE~q\) # ((\i2c_data_to_bcd|LessThan3~1_combout\ & \i2c_data_to_bcd|state.ST_CALC~q\)))) # (!\i2c_data_to_bcd|hundreds_reg\(0) & 
-- (!\i2c_data_to_bcd|LessThan3~1_combout\ & (\i2c_data_to_bcd|state.ST_CALC~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_data_to_bcd|LessThan3~1_combout\,
	datab => \i2c_data_to_bcd|state.ST_CALC~q\,
	datac => \i2c_data_to_bcd|hundreds_reg\(0),
	datad => \i2c_data_to_bcd|state.ST_DONE~q\,
	combout => \i2c_data_to_bcd|Selector6~0_combout\);

-- Location: FF_X21_Y17_N31
\i2c_data_to_bcd|hundreds_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_data_to_bcd|Selector6~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_data_to_bcd|hundreds_reg\(0));

-- Location: LCCOMB_X21_Y17_N0
\i2c_data_to_bcd|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Selector5~0_combout\ = (\i2c_data_to_bcd|state.ST_CALC~q\ & (\i2c_data_to_bcd|hundreds_reg\(1) $ (((\i2c_data_to_bcd|hundreds_reg\(0) & !\i2c_data_to_bcd|LessThan3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_data_to_bcd|hundreds_reg\(0),
	datab => \i2c_data_to_bcd|state.ST_CALC~q\,
	datac => \i2c_data_to_bcd|LessThan3~1_combout\,
	datad => \i2c_data_to_bcd|hundreds_reg\(1),
	combout => \i2c_data_to_bcd|Selector5~0_combout\);

-- Location: LCCOMB_X21_Y17_N24
\i2c_data_to_bcd|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Selector5~1_combout\ = (\i2c_data_to_bcd|Selector5~0_combout\) # ((\i2c_data_to_bcd|state.ST_DONE~q\ & \i2c_data_to_bcd|hundreds_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_data_to_bcd|state.ST_DONE~q\,
	datac => \i2c_data_to_bcd|hundreds_reg\(1),
	datad => \i2c_data_to_bcd|Selector5~0_combout\,
	combout => \i2c_data_to_bcd|Selector5~1_combout\);

-- Location: FF_X21_Y17_N25
\i2c_data_to_bcd|hundreds_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_data_to_bcd|Selector5~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_data_to_bcd|hundreds_reg\(1));

-- Location: LCCOMB_X21_Y17_N10
\i2c_data_to_bcd|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Selector4~0_combout\ = (\i2c_data_to_bcd|hundreds_reg\(0) & (!\i2c_data_to_bcd|LessThan3~1_combout\ & \i2c_data_to_bcd|hundreds_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_data_to_bcd|hundreds_reg\(0),
	datac => \i2c_data_to_bcd|LessThan3~1_combout\,
	datad => \i2c_data_to_bcd|hundreds_reg\(1),
	combout => \i2c_data_to_bcd|Selector4~0_combout\);

-- Location: LCCOMB_X21_Y17_N26
\i2c_data_to_bcd|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Selector4~1_combout\ = (\i2c_data_to_bcd|hundreds_reg\(2) & ((\i2c_data_to_bcd|state.ST_DONE~q\) # ((!\i2c_data_to_bcd|Selector4~0_combout\ & \i2c_data_to_bcd|state.ST_CALC~q\)))) # (!\i2c_data_to_bcd|hundreds_reg\(2) & 
-- (\i2c_data_to_bcd|Selector4~0_combout\ & ((\i2c_data_to_bcd|state.ST_CALC~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_data_to_bcd|Selector4~0_combout\,
	datab => \i2c_data_to_bcd|state.ST_DONE~q\,
	datac => \i2c_data_to_bcd|hundreds_reg\(2),
	datad => \i2c_data_to_bcd|state.ST_CALC~q\,
	combout => \i2c_data_to_bcd|Selector4~1_combout\);

-- Location: FF_X21_Y17_N27
\i2c_data_to_bcd|hundreds_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_data_to_bcd|Selector4~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_data_to_bcd|hundreds_reg\(2));

-- Location: FF_X18_Y19_N21
\i2c_data_to_bcd|bcd_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i2c_data_to_bcd|hundreds_reg\(2),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i2c_data_to_bcd|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_data_to_bcd|bcd_reg\(10));

-- Location: FF_X18_Y19_N13
\i2c_data_to_bcd|bcd_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i2c_data_to_bcd|num_reg\(2),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i2c_data_to_bcd|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_data_to_bcd|bcd_reg\(2));

-- Location: LCCOMB_X17_Y18_N2
\lm75_i2c|i2c_buff[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|i2c_buff[8]~0_combout\ = (!\lm75_i2c|index\(0) & (!\lm75_i2c|index\(3) & (!\lm75_i2c|index\(2) & \lm75_i2c|index\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|index\(0),
	datab => \lm75_i2c|index\(3),
	datac => \lm75_i2c|index\(2),
	datad => \lm75_i2c|index\(4),
	combout => \lm75_i2c|i2c_buff[8]~0_combout\);

-- Location: LCCOMB_X17_Y18_N0
\lm75_i2c|i2c_buff[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|i2c_buff[8]~1_combout\ = (\lm75_i2c|i2c_buff[8]~0_combout\ & (\lm75_i2c|state.ST_COMM~q\ & \lm75_i2c|Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lm75_i2c|i2c_buff[8]~0_combout\,
	datac => \lm75_i2c|state.ST_COMM~q\,
	datad => \lm75_i2c|Equal2~1_combout\,
	combout => \lm75_i2c|i2c_buff[8]~1_combout\);

-- Location: LCCOMB_X17_Y17_N16
\lm75_i2c|i2c_buff[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|i2c_buff[10]~2_combout\ = (\lm75_i2c|index\(1) & ((\lm75_i2c|i2c_buff[8]~1_combout\ & (\sda~input_o\)) # (!\lm75_i2c|i2c_buff[8]~1_combout\ & ((\lm75_i2c|i2c_buff\(10)))))) # (!\lm75_i2c|index\(1) & (((\lm75_i2c|i2c_buff\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sda~input_o\,
	datab => \lm75_i2c|index\(1),
	datac => \lm75_i2c|i2c_buff\(10),
	datad => \lm75_i2c|i2c_buff[8]~1_combout\,
	combout => \lm75_i2c|i2c_buff[10]~2_combout\);

-- Location: FF_X17_Y17_N17
\lm75_i2c|i2c_buff[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lm75_i2c|i2c_buff[10]~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lm75_i2c|i2c_buff\(10));

-- Location: LCCOMB_X18_Y19_N12
\display|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux2~0_combout\ = (\display|digit_index\(1) & (\display|digit_index\(0))) # (!\display|digit_index\(1) & ((\display|digit_index\(0) & (\i2c_data_to_bcd|bcd_reg\(2))) # (!\display|digit_index\(0) & ((\lm75_i2c|i2c_buff\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_index\(1),
	datab => \display|digit_index\(0),
	datac => \i2c_data_to_bcd|bcd_reg\(2),
	datad => \lm75_i2c|i2c_buff\(10),
	combout => \display|Mux2~0_combout\);

-- Location: LCCOMB_X18_Y19_N20
\display|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux2~1_combout\ = (\display|digit_index\(1) & ((\display|Mux2~0_combout\ & ((\i2c_data_to_bcd|bcd_reg\(10)))) # (!\display|Mux2~0_combout\ & (\i2c_data_to_bcd|bcd_reg\(6))))) # (!\display|digit_index\(1) & (((\display|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_index\(1),
	datab => \i2c_data_to_bcd|bcd_reg\(6),
	datac => \i2c_data_to_bcd|bcd_reg\(10),
	datad => \display|Mux2~0_combout\,
	combout => \display|Mux2~1_combout\);

-- Location: LCCOMB_X19_Y19_N24
\i2c_data_to_bcd|bcd_reg[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|bcd_reg[9]~feeder_combout\ = \i2c_data_to_bcd|hundreds_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_data_to_bcd|hundreds_reg\(1),
	combout => \i2c_data_to_bcd|bcd_reg[9]~feeder_combout\);

-- Location: FF_X19_Y19_N25
\i2c_data_to_bcd|bcd_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_data_to_bcd|bcd_reg[9]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \i2c_data_to_bcd|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_data_to_bcd|bcd_reg\(9));

-- Location: FF_X18_Y19_N25
\i2c_data_to_bcd|bcd_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i2c_data_to_bcd|num_reg\(1),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i2c_data_to_bcd|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_data_to_bcd|bcd_reg\(1));

-- Location: LCCOMB_X18_Y19_N24
\display|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux3~0_combout\ = (\display|digit_index\(0) & ((\display|digit_index\(1) & (\i2c_data_to_bcd|bcd_reg\(9))) # (!\display|digit_index\(1) & ((\i2c_data_to_bcd|bcd_reg\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_index\(1),
	datab => \i2c_data_to_bcd|bcd_reg\(9),
	datac => \i2c_data_to_bcd|bcd_reg\(1),
	datad => \display|digit_index\(0),
	combout => \display|Mux3~0_combout\);

-- Location: FF_X18_Y19_N15
\i2c_data_to_bcd|bcd_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i2c_data_to_bcd|tens_reg\(1),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i2c_data_to_bcd|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_data_to_bcd|bcd_reg\(5));

-- Location: LCCOMB_X18_Y19_N14
\display|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux3~1_combout\ = (\display|Mux3~0_combout\) # ((\display|digit_index\(1) & (\i2c_data_to_bcd|bcd_reg\(5) & !\display|digit_index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_index\(1),
	datab => \display|Mux3~0_combout\,
	datac => \i2c_data_to_bcd|bcd_reg\(5),
	datad => \display|digit_index\(0),
	combout => \display|Mux3~1_combout\);

-- Location: LCCOMB_X21_Y17_N12
\i2c_data_to_bcd|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Selector3~0_combout\ = (\i2c_data_to_bcd|hundreds_reg\(2) & (\i2c_data_to_bcd|hundreds_reg\(1) & (\i2c_data_to_bcd|hundreds_reg\(0) & !\i2c_data_to_bcd|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_data_to_bcd|hundreds_reg\(2),
	datab => \i2c_data_to_bcd|hundreds_reg\(1),
	datac => \i2c_data_to_bcd|hundreds_reg\(0),
	datad => \i2c_data_to_bcd|LessThan3~1_combout\,
	combout => \i2c_data_to_bcd|Selector3~0_combout\);

-- Location: LCCOMB_X21_Y17_N4
\i2c_data_to_bcd|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Selector3~1_combout\ = (\i2c_data_to_bcd|hundreds_reg\(3) & ((\i2c_data_to_bcd|state.ST_DONE~q\) # ((!\i2c_data_to_bcd|Selector3~0_combout\ & \i2c_data_to_bcd|state.ST_CALC~q\)))) # (!\i2c_data_to_bcd|hundreds_reg\(3) & 
-- (\i2c_data_to_bcd|Selector3~0_combout\ & ((\i2c_data_to_bcd|state.ST_CALC~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_data_to_bcd|Selector3~0_combout\,
	datab => \i2c_data_to_bcd|state.ST_DONE~q\,
	datac => \i2c_data_to_bcd|hundreds_reg\(3),
	datad => \i2c_data_to_bcd|state.ST_CALC~q\,
	combout => \i2c_data_to_bcd|Selector3~1_combout\);

-- Location: FF_X21_Y17_N5
\i2c_data_to_bcd|hundreds_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_data_to_bcd|Selector3~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_data_to_bcd|hundreds_reg\(3));

-- Location: LCCOMB_X19_Y19_N22
\i2c_data_to_bcd|bcd_reg[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|bcd_reg[11]~feeder_combout\ = \i2c_data_to_bcd|hundreds_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_data_to_bcd|hundreds_reg\(3),
	combout => \i2c_data_to_bcd|bcd_reg[11]~feeder_combout\);

-- Location: FF_X19_Y19_N23
\i2c_data_to_bcd|bcd_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_data_to_bcd|bcd_reg[11]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \i2c_data_to_bcd|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_data_to_bcd|bcd_reg\(11));

-- Location: FF_X18_Y19_N29
\i2c_data_to_bcd|bcd_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i2c_data_to_bcd|num_reg\(3),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i2c_data_to_bcd|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_data_to_bcd|bcd_reg\(3));

-- Location: LCCOMB_X18_Y19_N28
\display|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux1~0_combout\ = (\display|digit_index\(0) & ((\display|digit_index\(1) & (\i2c_data_to_bcd|bcd_reg\(11))) # (!\display|digit_index\(1) & ((\i2c_data_to_bcd|bcd_reg\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_index\(1),
	datab => \i2c_data_to_bcd|bcd_reg\(11),
	datac => \i2c_data_to_bcd|bcd_reg\(3),
	datad => \display|digit_index\(0),
	combout => \display|Mux1~0_combout\);

-- Location: LCCOMB_X18_Y19_N10
\i2c_data_to_bcd|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Selector7~0_combout\ = (\i2c_data_to_bcd|tens_reg\(1) & (\i2c_data_to_bcd|tens_reg\(2) & (\i2c_data_to_bcd|tens_reg\(0) & \i2c_data_to_bcd|num~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_data_to_bcd|tens_reg\(1),
	datab => \i2c_data_to_bcd|tens_reg\(2),
	datac => \i2c_data_to_bcd|tens_reg\(0),
	datad => \i2c_data_to_bcd|num~2_combout\,
	combout => \i2c_data_to_bcd|Selector7~0_combout\);

-- Location: LCCOMB_X18_Y19_N26
\i2c_data_to_bcd|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|Selector7~1_combout\ = (\i2c_data_to_bcd|tens_reg\(3) & ((\i2c_data_to_bcd|state.ST_DONE~q\) # ((\i2c_data_to_bcd|state.ST_CALC~q\ & !\i2c_data_to_bcd|Selector7~0_combout\)))) # (!\i2c_data_to_bcd|tens_reg\(3) & 
-- (\i2c_data_to_bcd|state.ST_CALC~q\ & ((\i2c_data_to_bcd|Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_data_to_bcd|state.ST_CALC~q\,
	datab => \i2c_data_to_bcd|state.ST_DONE~q\,
	datac => \i2c_data_to_bcd|tens_reg\(3),
	datad => \i2c_data_to_bcd|Selector7~0_combout\,
	combout => \i2c_data_to_bcd|Selector7~1_combout\);

-- Location: FF_X18_Y19_N27
\i2c_data_to_bcd|tens_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_data_to_bcd|Selector7~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_data_to_bcd|tens_reg\(3));

-- Location: FF_X18_Y19_N9
\i2c_data_to_bcd|bcd_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i2c_data_to_bcd|tens_reg\(3),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i2c_data_to_bcd|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_data_to_bcd|bcd_reg\(7));

-- Location: LCCOMB_X18_Y19_N8
\display|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux1~1_combout\ = (\display|Mux1~0_combout\) # ((\display|digit_index\(1) & (\i2c_data_to_bcd|bcd_reg\(7) & !\display|digit_index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_index\(1),
	datab => \display|Mux1~0_combout\,
	datac => \i2c_data_to_bcd|bcd_reg\(7),
	datad => \display|digit_index\(0),
	combout => \display|Mux1~1_combout\);

-- Location: LCCOMB_X17_Y18_N18
\lm75_i2c|i2c_buff[8]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \lm75_i2c|i2c_buff[8]~15_combout\ = (\lm75_i2c|index\(1) & (((\lm75_i2c|i2c_buff\(8))))) # (!\lm75_i2c|index\(1) & ((\lm75_i2c|i2c_buff[8]~1_combout\ & (\sda~input_o\)) # (!\lm75_i2c|i2c_buff[8]~1_combout\ & ((\lm75_i2c|i2c_buff\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sda~input_o\,
	datab => \lm75_i2c|index\(1),
	datac => \lm75_i2c|i2c_buff\(8),
	datad => \lm75_i2c|i2c_buff[8]~1_combout\,
	combout => \lm75_i2c|i2c_buff[8]~15_combout\);

-- Location: FF_X17_Y18_N19
\lm75_i2c|i2c_buff[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lm75_i2c|i2c_buff[8]~15_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lm75_i2c|i2c_buff\(8));

-- Location: LCCOMB_X17_Y17_N14
\i2c_data_to_bcd|num_reg[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_data_to_bcd|num_reg[0]~9_combout\ = (\i2c_data_to_bcd|state.ST_IDLE~q\ & ((\i2c_data_to_bcd|num_reg\(0)))) # (!\i2c_data_to_bcd|state.ST_IDLE~q\ & (\lm75_i2c|i2c_buff\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lm75_i2c|i2c_buff\(8),
	datac => \i2c_data_to_bcd|num_reg\(0),
	datad => \i2c_data_to_bcd|state.ST_IDLE~q\,
	combout => \i2c_data_to_bcd|num_reg[0]~9_combout\);

-- Location: FF_X17_Y17_N15
\i2c_data_to_bcd|num_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2c_data_to_bcd|num_reg[0]~9_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_data_to_bcd|num_reg\(0));

-- Location: FF_X18_Y19_N19
\i2c_data_to_bcd|bcd_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i2c_data_to_bcd|num_reg\(0),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i2c_data_to_bcd|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_data_to_bcd|bcd_reg\(0));

-- Location: LCCOMB_X18_Y19_N18
\display|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux4~0_combout\ = (\display|digit_index\(1) & (\display|digit_index\(0))) # (!\display|digit_index\(1) & ((\display|digit_index\(0) & (\i2c_data_to_bcd|bcd_reg\(0))) # (!\display|digit_index\(0) & ((\lm75_i2c|i2c_buff\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_index\(1),
	datab => \display|digit_index\(0),
	datac => \i2c_data_to_bcd|bcd_reg\(0),
	datad => \lm75_i2c|i2c_buff\(10),
	combout => \display|Mux4~0_combout\);

-- Location: FF_X18_Y19_N17
\i2c_data_to_bcd|bcd_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i2c_data_to_bcd|hundreds_reg\(0),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i2c_data_to_bcd|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_data_to_bcd|bcd_reg\(8));

-- Location: FF_X18_Y19_N11
\i2c_data_to_bcd|bcd_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i2c_data_to_bcd|tens_reg\(0),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i2c_data_to_bcd|bcd_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_data_to_bcd|bcd_reg\(4));

-- Location: LCCOMB_X18_Y19_N16
\display|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux4~1_combout\ = (\display|digit_index\(1) & ((\display|Mux4~0_combout\ & (\i2c_data_to_bcd|bcd_reg\(8))) # (!\display|Mux4~0_combout\ & ((\i2c_data_to_bcd|bcd_reg\(4)))))) # (!\display|digit_index\(1) & (\display|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_index\(1),
	datab => \display|Mux4~0_combout\,
	datac => \i2c_data_to_bcd|bcd_reg\(8),
	datad => \i2c_data_to_bcd|bcd_reg\(4),
	combout => \display|Mux4~1_combout\);

-- Location: LCCOMB_X17_Y23_N0
\display|rom|rom~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|rom|rom~0_combout\ = (!\display|Mux3~1_combout\ & (!\display|Mux1~1_combout\ & (\display|Mux2~1_combout\ $ (\display|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Mux2~1_combout\,
	datab => \display|Mux3~1_combout\,
	datac => \display|Mux1~1_combout\,
	datad => \display|Mux4~1_combout\,
	combout => \display|rom|rom~0_combout\);

-- Location: LCCOMB_X17_Y23_N2
\display|rom|rom~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|rom|rom~1_combout\ = (\display|Mux2~1_combout\ & (!\display|Mux1~1_combout\ & (\display|Mux3~1_combout\ $ (\display|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Mux2~1_combout\,
	datab => \display|Mux3~1_combout\,
	datac => \display|Mux1~1_combout\,
	datad => \display|Mux4~1_combout\,
	combout => \display|rom|rom~1_combout\);

-- Location: LCCOMB_X17_Y23_N8
\display|rom|rom~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|rom|rom~2_combout\ = (!\display|Mux2~1_combout\ & (\display|Mux3~1_combout\ & (!\display|Mux1~1_combout\ & !\display|Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Mux2~1_combout\,
	datab => \display|Mux3~1_combout\,
	datac => \display|Mux1~1_combout\,
	datad => \display|Mux4~1_combout\,
	combout => \display|rom|rom~2_combout\);

-- Location: LCCOMB_X17_Y23_N22
\display|rom|rom~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|rom|rom~3_combout\ = (!\display|Mux1~1_combout\ & ((\display|Mux2~1_combout\ & (\display|Mux3~1_combout\ $ (!\display|Mux4~1_combout\))) # (!\display|Mux2~1_combout\ & (!\display|Mux3~1_combout\ & \display|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Mux2~1_combout\,
	datab => \display|Mux3~1_combout\,
	datac => \display|Mux1~1_combout\,
	datad => \display|Mux4~1_combout\,
	combout => \display|rom|rom~3_combout\);

-- Location: LCCOMB_X17_Y23_N12
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

-- Location: LCCOMB_X17_Y23_N10
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

-- Location: LCCOMB_X17_Y23_N16
\display|rom|rom~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|rom|rom~6_combout\ = (\display|Mux1~1_combout\) # ((\display|Mux2~1_combout\ & ((!\display|Mux4~1_combout\) # (!\display|Mux3~1_combout\))) # (!\display|Mux2~1_combout\ & (\display|Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Mux2~1_combout\,
	datab => \display|Mux3~1_combout\,
	datac => \display|Mux1~1_combout\,
	datad => \display|Mux4~1_combout\,
	combout => \display|rom|rom~6_combout\);

-- Location: LCCOMB_X24_Y18_N18
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

-- Location: FF_X24_Y18_N19
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

-- Location: LCCOMB_X24_Y18_N0
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

-- Location: FF_X24_Y18_N1
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

-- Location: LCCOMB_X24_Y18_N2
\display|shift_reg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|shift_reg[3]~feeder_combout\ = \display|shift_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \display|shift_reg\(2),
	combout => \display|shift_reg[3]~feeder_combout\);

-- Location: FF_X24_Y18_N3
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

-- Location: LCCOMB_X24_Y18_N28
\display|shift_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|shift_reg[0]~0_combout\ = !\display|shift_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \display|shift_reg\(3),
	combout => \display|shift_reg[0]~0_combout\);

-- Location: FF_X24_Y18_N29
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

ww_scl <= \scl~output_o\;

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

ww_sda <= \sda~output_o\;
END structure;


