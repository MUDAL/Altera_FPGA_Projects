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

-- DATE "03/01/2024 17:07:52"

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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default


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

ENTITY 	vga_main IS
    PORT (
	rst_n : IN std_logic;
	clk : IN std_logic;
	hsync : BUFFER std_logic;
	vsync : BUFFER std_logic;
	rgb : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END vga_main;

-- Design Ports Information
-- hsync	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vsync	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb[0]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb[1]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb[2]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF vga_main IS
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
SIGNAL ww_hsync : std_logic;
SIGNAL ww_vsync : std_logic;
SIGNAL ww_rgb : std_logic_vector(2 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a21_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a17_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a19_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \rst_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \hsync~output_o\ : std_logic;
SIGNAL \vsync~output_o\ : std_logic;
SIGNAL \rgb[0]~output_o\ : std_logic;
SIGNAL \rgb[1]~output_o\ : std_logic;
SIGNAL \rgb[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \vga_sync_unit|Add0~0_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \vga_sync_unit|mod2_reg~0_combout\ : std_logic;
SIGNAL \vga_sync_unit|mod2_reg~q\ : std_logic;
SIGNAL \vga_sync_unit|Add0~1\ : std_logic;
SIGNAL \vga_sync_unit|Add0~2_combout\ : std_logic;
SIGNAL \vga_sync_unit|Add0~3\ : std_logic;
SIGNAL \vga_sync_unit|Add0~4_combout\ : std_logic;
SIGNAL \vga_sync_unit|Add0~5\ : std_logic;
SIGNAL \vga_sync_unit|Add0~6_combout\ : std_logic;
SIGNAL \vga_sync_unit|Add0~7\ : std_logic;
SIGNAL \vga_sync_unit|Add0~8_combout\ : std_logic;
SIGNAL \vga_sync_unit|Add0~13\ : std_logic;
SIGNAL \vga_sync_unit|Add0~14_combout\ : std_logic;
SIGNAL \vga_sync_unit|Add0~15\ : std_logic;
SIGNAL \vga_sync_unit|Add0~16_combout\ : std_logic;
SIGNAL \vga_sync_unit|h_count_next~1_combout\ : std_logic;
SIGNAL \vga_sync_unit|Add0~17\ : std_logic;
SIGNAL \vga_sync_unit|Add0~18_combout\ : std_logic;
SIGNAL \vga_sync_unit|h_count_next~2_combout\ : std_logic;
SIGNAL \vga_sync_unit|Equal0~1_combout\ : std_logic;
SIGNAL \vga_sync_unit|Equal0~2_combout\ : std_logic;
SIGNAL \vga_sync_unit|Equal0~3_combout\ : std_logic;
SIGNAL \vga_sync_unit|Add0~9\ : std_logic;
SIGNAL \vga_sync_unit|Add0~10_combout\ : std_logic;
SIGNAL \vga_sync_unit|h_count_next~0_combout\ : std_logic;
SIGNAL \vga_sync_unit|Add0~11\ : std_logic;
SIGNAL \vga_sync_unit|Add0~12_combout\ : std_logic;
SIGNAL \vga_sync_unit|h_sync_next~1_combout\ : std_logic;
SIGNAL \vga_sync_unit|h_sync_next~0_combout\ : std_logic;
SIGNAL \vga_sync_unit|h_sync_next~2_combout\ : std_logic;
SIGNAL \vga_sync_unit|h_sync_reg~q\ : std_logic;
SIGNAL \vga_sync_unit|Add1~0_combout\ : std_logic;
SIGNAL \vga_sync_unit|Equal1~1_combout\ : std_logic;
SIGNAL \vga_sync_unit|Add1~17\ : std_logic;
SIGNAL \vga_sync_unit|Add1~18_combout\ : std_logic;
SIGNAL \vga_sync_unit|v_count_next~0_combout\ : std_logic;
SIGNAL \vga_sync_unit|vsync_counter~0_combout\ : std_logic;
SIGNAL \vga_sync_unit|Equal1~0_combout\ : std_logic;
SIGNAL \vga_sync_unit|Equal1~2_combout\ : std_logic;
SIGNAL \vga_sync_unit|v_count_next~3_combout\ : std_logic;
SIGNAL \vga_sync_unit|Add1~1\ : std_logic;
SIGNAL \vga_sync_unit|Add1~2_combout\ : std_logic;
SIGNAL \vga_sync_unit|Add1~3\ : std_logic;
SIGNAL \vga_sync_unit|Add1~4_combout\ : std_logic;
SIGNAL \vga_sync_unit|v_count_next~1_combout\ : std_logic;
SIGNAL \vga_sync_unit|Add1~5\ : std_logic;
SIGNAL \vga_sync_unit|Add1~6_combout\ : std_logic;
SIGNAL \vga_sync_unit|v_count_next~2_combout\ : std_logic;
SIGNAL \vga_sync_unit|Add1~7\ : std_logic;
SIGNAL \vga_sync_unit|Add1~8_combout\ : std_logic;
SIGNAL \vga_sync_unit|Add1~9\ : std_logic;
SIGNAL \vga_sync_unit|Add1~10_combout\ : std_logic;
SIGNAL \vga_sync_unit|Add1~11\ : std_logic;
SIGNAL \vga_sync_unit|Add1~12_combout\ : std_logic;
SIGNAL \vga_sync_unit|Add1~13\ : std_logic;
SIGNAL \vga_sync_unit|Add1~14_combout\ : std_logic;
SIGNAL \vga_sync_unit|Add1~15\ : std_logic;
SIGNAL \vga_sync_unit|Add1~16_combout\ : std_logic;
SIGNAL \vga_sync_unit|v_sync_next~1_combout\ : std_logic;
SIGNAL \vga_sync_unit|v_sync_next~0_combout\ : std_logic;
SIGNAL \vga_sync_unit|v_sync_next~2_combout\ : std_logic;
SIGNAL \vga_sync_unit|v_sync_reg~q\ : std_logic;
SIGNAL \vga_sync_unit|Equal0~0_combout\ : std_logic;
SIGNAL \pixel_gen|LessThan1~0_combout\ : std_logic;
SIGNAL \pixel_gen|LessThan2~1_combout\ : std_logic;
SIGNAL \pixel_gen|LessThan2~0_combout\ : std_logic;
SIGNAL \pixel_gen|LessThan2~2_combout\ : std_logic;
SIGNAL \pixel_gen|valid_img~combout\ : std_logic;
SIGNAL \pixel_gen|addr_reg[0]~18_combout\ : std_logic;
SIGNAL \pixel_gen|addr_reg[16]~51\ : std_logic;
SIGNAL \pixel_gen|addr_reg[17]~52_combout\ : std_logic;
SIGNAL \pixel_gen|LessThan0~0_combout\ : std_logic;
SIGNAL \pixel_gen|LessThan0~1_combout\ : std_logic;
SIGNAL \pixel_gen|LessThan0~2_combout\ : std_logic;
SIGNAL \pixel_gen|LessThan0~3_combout\ : std_logic;
SIGNAL \pixel_gen|LessThan0~4_combout\ : std_logic;
SIGNAL \pixel_gen|LessThan0~5_combout\ : std_logic;
SIGNAL \pixel_gen|addr_reg[0]~19\ : std_logic;
SIGNAL \pixel_gen|addr_reg[1]~20_combout\ : std_logic;
SIGNAL \pixel_gen|addr_reg[1]~21\ : std_logic;
SIGNAL \pixel_gen|addr_reg[2]~22_combout\ : std_logic;
SIGNAL \pixel_gen|addr_reg[2]~23\ : std_logic;
SIGNAL \pixel_gen|addr_reg[3]~24_combout\ : std_logic;
SIGNAL \pixel_gen|addr_reg[3]~25\ : std_logic;
SIGNAL \pixel_gen|addr_reg[4]~26_combout\ : std_logic;
SIGNAL \pixel_gen|addr_reg[4]~27\ : std_logic;
SIGNAL \pixel_gen|addr_reg[5]~28_combout\ : std_logic;
SIGNAL \pixel_gen|addr_reg[5]~29\ : std_logic;
SIGNAL \pixel_gen|addr_reg[6]~30_combout\ : std_logic;
SIGNAL \pixel_gen|addr_reg[6]~31\ : std_logic;
SIGNAL \pixel_gen|addr_reg[7]~32_combout\ : std_logic;
SIGNAL \pixel_gen|addr_reg[7]~33\ : std_logic;
SIGNAL \pixel_gen|addr_reg[8]~34_combout\ : std_logic;
SIGNAL \pixel_gen|addr_reg[8]~35\ : std_logic;
SIGNAL \pixel_gen|addr_reg[9]~36_combout\ : std_logic;
SIGNAL \pixel_gen|addr_reg[9]~37\ : std_logic;
SIGNAL \pixel_gen|addr_reg[10]~38_combout\ : std_logic;
SIGNAL \pixel_gen|addr_reg[10]~39\ : std_logic;
SIGNAL \pixel_gen|addr_reg[11]~40_combout\ : std_logic;
SIGNAL \pixel_gen|addr_reg[11]~41\ : std_logic;
SIGNAL \pixel_gen|addr_reg[12]~42_combout\ : std_logic;
SIGNAL \pixel_gen|addr_reg[12]~43\ : std_logic;
SIGNAL \pixel_gen|addr_reg[13]~44_combout\ : std_logic;
SIGNAL \pixel_gen|addr_reg[13]~45\ : std_logic;
SIGNAL \pixel_gen|addr_reg[14]~46_combout\ : std_logic;
SIGNAL \pixel_gen|addr_reg[14]~47\ : std_logic;
SIGNAL \pixel_gen|addr_reg[15]~48_combout\ : std_logic;
SIGNAL \pixel_gen|addr_reg[15]~49\ : std_logic;
SIGNAL \pixel_gen|addr_reg[16]~50_combout\ : std_logic;
SIGNAL \pixel_gen|en~0_combout\ : std_logic;
SIGNAL \pixel_gen|en~combout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a21~portadataout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a20~portadataout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~6_combout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a17~portadataout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a18~portadataout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a19~portadataout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~7_combout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~8_combout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~9_combout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~4_combout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~5_combout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~10_combout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~1_combout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a15~portadataout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a13~portadataout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~0_combout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~2_combout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~0_combout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~1_combout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~2_combout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~4_combout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~3_combout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~5_combout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~3_combout\ : std_logic;
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~11_combout\ : std_logic;
SIGNAL \vga_sync_unit|valid_pixel~0_combout\ : std_logic;
SIGNAL \vga_sync_unit|valid_pixel~1_combout\ : std_logic;
SIGNAL \pixel_gen|rgb_out[0]~0_combout\ : std_logic;
SIGNAL \pixel_gen|rgb_out[1]~1_combout\ : std_logic;
SIGNAL \rgb_reg[1]~feeder_combout\ : std_logic;
SIGNAL \pixel_gen|addr_reg\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \vga_sync_unit|v_count_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL rgb_reg : std_logic_vector(2 DOWNTO 0);
SIGNAL \vga_sync_unit|h_count_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\ : std_logic_vector(4 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_rst_n <= rst_n;
ww_clk <= clk;
hsync <= ww_hsync;
vsync <= ww_vsync;
rgb <= ww_rgb;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\pixel_gen|addr_reg\(12) & \pixel_gen|addr_reg\(11) & \pixel_gen|addr_reg\(10) & \pixel_gen|addr_reg\(9) & \pixel_gen|addr_reg\(8) & \pixel_gen|addr_reg\(7) & 
\pixel_gen|addr_reg\(6) & \pixel_gen|addr_reg\(5) & \pixel_gen|addr_reg\(4) & \pixel_gen|addr_reg\(3) & \pixel_gen|addr_reg\(2) & \pixel_gen|addr_reg\(1) & \pixel_gen|addr_reg\(0));

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a15~portadataout\ <= \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\pixel_gen|addr_reg\(12) & \pixel_gen|addr_reg\(11) & \pixel_gen|addr_reg\(10) & \pixel_gen|addr_reg\(9) & \pixel_gen|addr_reg\(8) & \pixel_gen|addr_reg\(7) & 
\pixel_gen|addr_reg\(6) & \pixel_gen|addr_reg\(5) & \pixel_gen|addr_reg\(4) & \pixel_gen|addr_reg\(3) & \pixel_gen|addr_reg\(2) & \pixel_gen|addr_reg\(1) & \pixel_gen|addr_reg\(0));

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a13~portadataout\ <= \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\pixel_gen|addr_reg\(12) & \pixel_gen|addr_reg\(11) & \pixel_gen|addr_reg\(10) & \pixel_gen|addr_reg\(9) & \pixel_gen|addr_reg\(8) & \pixel_gen|addr_reg\(7) & 
\pixel_gen|addr_reg\(6) & \pixel_gen|addr_reg\(5) & \pixel_gen|addr_reg\(4) & \pixel_gen|addr_reg\(3) & \pixel_gen|addr_reg\(2) & \pixel_gen|addr_reg\(1) & \pixel_gen|addr_reg\(0));

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a14~portadataout\ <= \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\pixel_gen|addr_reg\(12) & \pixel_gen|addr_reg\(11) & \pixel_gen|addr_reg\(10) & \pixel_gen|addr_reg\(9) & \pixel_gen|addr_reg\(8) & \pixel_gen|addr_reg\(7) & 
\pixel_gen|addr_reg\(6) & \pixel_gen|addr_reg\(5) & \pixel_gen|addr_reg\(4) & \pixel_gen|addr_reg\(3) & \pixel_gen|addr_reg\(2) & \pixel_gen|addr_reg\(1) & \pixel_gen|addr_reg\(0));

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a12~portadataout\ <= \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\pixel_gen|addr_reg\(12) & \pixel_gen|addr_reg\(11) & \pixel_gen|addr_reg\(10) & \pixel_gen|addr_reg\(9) & \pixel_gen|addr_reg\(8) & \pixel_gen|addr_reg\(7) & 
\pixel_gen|addr_reg\(6) & \pixel_gen|addr_reg\(5) & \pixel_gen|addr_reg\(4) & \pixel_gen|addr_reg\(3) & \pixel_gen|addr_reg\(2) & \pixel_gen|addr_reg\(1) & \pixel_gen|addr_reg\(0));

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a11~portadataout\ <= \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\pixel_gen|addr_reg\(12) & \pixel_gen|addr_reg\(11) & \pixel_gen|addr_reg\(10) & \pixel_gen|addr_reg\(9) & \pixel_gen|addr_reg\(8) & \pixel_gen|addr_reg\(7) & 
\pixel_gen|addr_reg\(6) & \pixel_gen|addr_reg\(5) & \pixel_gen|addr_reg\(4) & \pixel_gen|addr_reg\(3) & \pixel_gen|addr_reg\(2) & \pixel_gen|addr_reg\(1) & \pixel_gen|addr_reg\(0));

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a9~portadataout\ <= \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\pixel_gen|addr_reg\(12) & \pixel_gen|addr_reg\(11) & \pixel_gen|addr_reg\(10) & \pixel_gen|addr_reg\(9) & \pixel_gen|addr_reg\(8) & \pixel_gen|addr_reg\(7) & 
\pixel_gen|addr_reg\(6) & \pixel_gen|addr_reg\(5) & \pixel_gen|addr_reg\(4) & \pixel_gen|addr_reg\(3) & \pixel_gen|addr_reg\(2) & \pixel_gen|addr_reg\(1) & \pixel_gen|addr_reg\(0));

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a10~portadataout\ <= \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\pixel_gen|addr_reg\(12) & \pixel_gen|addr_reg\(11) & \pixel_gen|addr_reg\(10) & \pixel_gen|addr_reg\(9) & \pixel_gen|addr_reg\(8) & \pixel_gen|addr_reg\(7) & 
\pixel_gen|addr_reg\(6) & \pixel_gen|addr_reg\(5) & \pixel_gen|addr_reg\(4) & \pixel_gen|addr_reg\(3) & \pixel_gen|addr_reg\(2) & \pixel_gen|addr_reg\(1) & \pixel_gen|addr_reg\(0));

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a8~portadataout\ <= \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\pixel_gen|addr_reg\(12) & \pixel_gen|addr_reg\(11) & \pixel_gen|addr_reg\(10) & \pixel_gen|addr_reg\(9) & \pixel_gen|addr_reg\(8) & \pixel_gen|addr_reg\(7) & 
\pixel_gen|addr_reg\(6) & \pixel_gen|addr_reg\(5) & \pixel_gen|addr_reg\(4) & \pixel_gen|addr_reg\(3) & \pixel_gen|addr_reg\(2) & \pixel_gen|addr_reg\(1) & \pixel_gen|addr_reg\(0));

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a3~portadataout\ <= \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\pixel_gen|addr_reg\(12) & \pixel_gen|addr_reg\(11) & \pixel_gen|addr_reg\(10) & \pixel_gen|addr_reg\(9) & \pixel_gen|addr_reg\(8) & \pixel_gen|addr_reg\(7) & 
\pixel_gen|addr_reg\(6) & \pixel_gen|addr_reg\(5) & \pixel_gen|addr_reg\(4) & \pixel_gen|addr_reg\(3) & \pixel_gen|addr_reg\(2) & \pixel_gen|addr_reg\(1) & \pixel_gen|addr_reg\(0));

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a1~portadataout\ <= \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\pixel_gen|addr_reg\(12) & \pixel_gen|addr_reg\(11) & \pixel_gen|addr_reg\(10) & \pixel_gen|addr_reg\(9) & \pixel_gen|addr_reg\(8) & \pixel_gen|addr_reg\(7) & 
\pixel_gen|addr_reg\(6) & \pixel_gen|addr_reg\(5) & \pixel_gen|addr_reg\(4) & \pixel_gen|addr_reg\(3) & \pixel_gen|addr_reg\(2) & \pixel_gen|addr_reg\(1) & \pixel_gen|addr_reg\(0));

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a2~portadataout\ <= \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\pixel_gen|addr_reg\(12) & \pixel_gen|addr_reg\(11) & \pixel_gen|addr_reg\(10) & \pixel_gen|addr_reg\(9) & \pixel_gen|addr_reg\(8) & \pixel_gen|addr_reg\(7) & 
\pixel_gen|addr_reg\(6) & \pixel_gen|addr_reg\(5) & \pixel_gen|addr_reg\(4) & \pixel_gen|addr_reg\(3) & \pixel_gen|addr_reg\(2) & \pixel_gen|addr_reg\(1) & \pixel_gen|addr_reg\(0));

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\pixel_gen|addr_reg\(12) & \pixel_gen|addr_reg\(11) & \pixel_gen|addr_reg\(10) & \pixel_gen|addr_reg\(9) & \pixel_gen|addr_reg\(8) & \pixel_gen|addr_reg\(7) & 
\pixel_gen|addr_reg\(6) & \pixel_gen|addr_reg\(5) & \pixel_gen|addr_reg\(4) & \pixel_gen|addr_reg\(3) & \pixel_gen|addr_reg\(2) & \pixel_gen|addr_reg\(1) & \pixel_gen|addr_reg\(0));

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a5~portadataout\ <= \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\pixel_gen|addr_reg\(12) & \pixel_gen|addr_reg\(11) & \pixel_gen|addr_reg\(10) & \pixel_gen|addr_reg\(9) & \pixel_gen|addr_reg\(8) & \pixel_gen|addr_reg\(7) & 
\pixel_gen|addr_reg\(6) & \pixel_gen|addr_reg\(5) & \pixel_gen|addr_reg\(4) & \pixel_gen|addr_reg\(3) & \pixel_gen|addr_reg\(2) & \pixel_gen|addr_reg\(1) & \pixel_gen|addr_reg\(0));

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a4~portadataout\ <= \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\pixel_gen|addr_reg\(12) & \pixel_gen|addr_reg\(11) & \pixel_gen|addr_reg\(10) & \pixel_gen|addr_reg\(9) & \pixel_gen|addr_reg\(8) & \pixel_gen|addr_reg\(7) & 
\pixel_gen|addr_reg\(6) & \pixel_gen|addr_reg\(5) & \pixel_gen|addr_reg\(4) & \pixel_gen|addr_reg\(3) & \pixel_gen|addr_reg\(2) & \pixel_gen|addr_reg\(1) & \pixel_gen|addr_reg\(0));

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a7~portadataout\ <= \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\pixel_gen|addr_reg\(12) & \pixel_gen|addr_reg\(11) & \pixel_gen|addr_reg\(10) & \pixel_gen|addr_reg\(9) & \pixel_gen|addr_reg\(8) & \pixel_gen|addr_reg\(7) & 
\pixel_gen|addr_reg\(6) & \pixel_gen|addr_reg\(5) & \pixel_gen|addr_reg\(4) & \pixel_gen|addr_reg\(3) & \pixel_gen|addr_reg\(2) & \pixel_gen|addr_reg\(1) & \pixel_gen|addr_reg\(0));

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a6~portadataout\ <= \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\pixel_gen|addr_reg\(12) & \pixel_gen|addr_reg\(11) & \pixel_gen|addr_reg\(10) & \pixel_gen|addr_reg\(9) & \pixel_gen|addr_reg\(8) & \pixel_gen|addr_reg\(7) & 
\pixel_gen|addr_reg\(6) & \pixel_gen|addr_reg\(5) & \pixel_gen|addr_reg\(4) & \pixel_gen|addr_reg\(3) & \pixel_gen|addr_reg\(2) & \pixel_gen|addr_reg\(1) & \pixel_gen|addr_reg\(0));

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a20~portadataout\ <= \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\pixel_gen|addr_reg\(11) & \pixel_gen|addr_reg\(10) & \pixel_gen|addr_reg\(9) & \pixel_gen|addr_reg\(8) & \pixel_gen|addr_reg\(7) & \pixel_gen|addr_reg\(6) & 
\pixel_gen|addr_reg\(5) & \pixel_gen|addr_reg\(4) & \pixel_gen|addr_reg\(3) & \pixel_gen|addr_reg\(2) & \pixel_gen|addr_reg\(1) & \pixel_gen|addr_reg\(0));

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a21~portadataout\ <= \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a21_PORTADATAOUT_bus\(0);

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\pixel_gen|addr_reg\(12) & \pixel_gen|addr_reg\(11) & \pixel_gen|addr_reg\(10) & \pixel_gen|addr_reg\(9) & \pixel_gen|addr_reg\(8) & \pixel_gen|addr_reg\(7) & 
\pixel_gen|addr_reg\(6) & \pixel_gen|addr_reg\(5) & \pixel_gen|addr_reg\(4) & \pixel_gen|addr_reg\(3) & \pixel_gen|addr_reg\(2) & \pixel_gen|addr_reg\(1) & \pixel_gen|addr_reg\(0));

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a16~portadataout\ <= \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\pixel_gen|addr_reg\(12) & \pixel_gen|addr_reg\(11) & \pixel_gen|addr_reg\(10) & \pixel_gen|addr_reg\(9) & \pixel_gen|addr_reg\(8) & \pixel_gen|addr_reg\(7) & 
\pixel_gen|addr_reg\(6) & \pixel_gen|addr_reg\(5) & \pixel_gen|addr_reg\(4) & \pixel_gen|addr_reg\(3) & \pixel_gen|addr_reg\(2) & \pixel_gen|addr_reg\(1) & \pixel_gen|addr_reg\(0));

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a17~portadataout\ <= \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a17_PORTADATAOUT_bus\(0);

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\pixel_gen|addr_reg\(12) & \pixel_gen|addr_reg\(11) & \pixel_gen|addr_reg\(10) & \pixel_gen|addr_reg\(9) & \pixel_gen|addr_reg\(8) & \pixel_gen|addr_reg\(7) & 
\pixel_gen|addr_reg\(6) & \pixel_gen|addr_reg\(5) & \pixel_gen|addr_reg\(4) & \pixel_gen|addr_reg\(3) & \pixel_gen|addr_reg\(2) & \pixel_gen|addr_reg\(1) & \pixel_gen|addr_reg\(0));

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a19~portadataout\ <= \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a19_PORTADATAOUT_bus\(0);

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\pixel_gen|addr_reg\(12) & \pixel_gen|addr_reg\(11) & \pixel_gen|addr_reg\(10) & \pixel_gen|addr_reg\(9) & \pixel_gen|addr_reg\(8) & \pixel_gen|addr_reg\(7) & 
\pixel_gen|addr_reg\(6) & \pixel_gen|addr_reg\(5) & \pixel_gen|addr_reg\(4) & \pixel_gen|addr_reg\(3) & \pixel_gen|addr_reg\(2) & \pixel_gen|addr_reg\(1) & \pixel_gen|addr_reg\(0));

\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a18~portadataout\ <= \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);

\rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst_n~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y18_N23
\hsync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_sync_unit|h_sync_reg~q\,
	devoe => ww_devoe,
	o => \hsync~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\vsync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_sync_unit|v_sync_reg~q\,
	devoe => ww_devoe,
	o => \vsync~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\rgb[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rgb_reg(0),
	devoe => ww_devoe,
	o => \rgb[0]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\rgb[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rgb_reg(1),
	devoe => ww_devoe,
	o => \rgb[1]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\rgb[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rgb_reg(2),
	devoe => ww_devoe,
	o => \rgb[2]~output_o\);

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

-- Location: LCCOMB_X16_Y10_N4
\vga_sync_unit|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|Add0~0_combout\ = \vga_sync_unit|h_count_reg\(0) $ (VCC)
-- \vga_sync_unit|Add0~1\ = CARRY(\vga_sync_unit|h_count_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_unit|h_count_reg\(0),
	datad => VCC,
	combout => \vga_sync_unit|Add0~0_combout\,
	cout => \vga_sync_unit|Add0~1\);

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

-- Location: LCCOMB_X16_Y11_N16
\vga_sync_unit|mod2_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|mod2_reg~0_combout\ = !\vga_sync_unit|mod2_reg~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_sync_unit|mod2_reg~q\,
	combout => \vga_sync_unit|mod2_reg~0_combout\);

-- Location: FF_X16_Y11_N17
\vga_sync_unit|mod2_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_sync_unit|mod2_reg~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_unit|mod2_reg~q\);

-- Location: FF_X16_Y10_N5
\vga_sync_unit|h_count_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_sync_unit|Add0~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \vga_sync_unit|mod2_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_unit|h_count_reg\(0));

-- Location: LCCOMB_X16_Y10_N6
\vga_sync_unit|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|Add0~2_combout\ = (\vga_sync_unit|h_count_reg\(1) & (!\vga_sync_unit|Add0~1\)) # (!\vga_sync_unit|h_count_reg\(1) & ((\vga_sync_unit|Add0~1\) # (GND)))
-- \vga_sync_unit|Add0~3\ = CARRY((!\vga_sync_unit|Add0~1\) # (!\vga_sync_unit|h_count_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_unit|h_count_reg\(1),
	datad => VCC,
	cin => \vga_sync_unit|Add0~1\,
	combout => \vga_sync_unit|Add0~2_combout\,
	cout => \vga_sync_unit|Add0~3\);

-- Location: FF_X16_Y10_N7
\vga_sync_unit|h_count_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_sync_unit|Add0~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \vga_sync_unit|mod2_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_unit|h_count_reg\(1));

-- Location: LCCOMB_X16_Y10_N8
\vga_sync_unit|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|Add0~4_combout\ = (\vga_sync_unit|h_count_reg\(2) & (\vga_sync_unit|Add0~3\ $ (GND))) # (!\vga_sync_unit|h_count_reg\(2) & (!\vga_sync_unit|Add0~3\ & VCC))
-- \vga_sync_unit|Add0~5\ = CARRY((\vga_sync_unit|h_count_reg\(2) & !\vga_sync_unit|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_unit|h_count_reg\(2),
	datad => VCC,
	cin => \vga_sync_unit|Add0~3\,
	combout => \vga_sync_unit|Add0~4_combout\,
	cout => \vga_sync_unit|Add0~5\);

-- Location: FF_X16_Y10_N9
\vga_sync_unit|h_count_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_sync_unit|Add0~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \vga_sync_unit|mod2_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_unit|h_count_reg\(2));

-- Location: LCCOMB_X16_Y10_N10
\vga_sync_unit|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|Add0~6_combout\ = (\vga_sync_unit|h_count_reg\(3) & (!\vga_sync_unit|Add0~5\)) # (!\vga_sync_unit|h_count_reg\(3) & ((\vga_sync_unit|Add0~5\) # (GND)))
-- \vga_sync_unit|Add0~7\ = CARRY((!\vga_sync_unit|Add0~5\) # (!\vga_sync_unit|h_count_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_unit|h_count_reg\(3),
	datad => VCC,
	cin => \vga_sync_unit|Add0~5\,
	combout => \vga_sync_unit|Add0~6_combout\,
	cout => \vga_sync_unit|Add0~7\);

-- Location: FF_X16_Y10_N11
\vga_sync_unit|h_count_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_sync_unit|Add0~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \vga_sync_unit|mod2_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_unit|h_count_reg\(3));

-- Location: LCCOMB_X16_Y10_N12
\vga_sync_unit|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|Add0~8_combout\ = (\vga_sync_unit|h_count_reg\(4) & (\vga_sync_unit|Add0~7\ $ (GND))) # (!\vga_sync_unit|h_count_reg\(4) & (!\vga_sync_unit|Add0~7\ & VCC))
-- \vga_sync_unit|Add0~9\ = CARRY((\vga_sync_unit|h_count_reg\(4) & !\vga_sync_unit|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_unit|h_count_reg\(4),
	datad => VCC,
	cin => \vga_sync_unit|Add0~7\,
	combout => \vga_sync_unit|Add0~8_combout\,
	cout => \vga_sync_unit|Add0~9\);

-- Location: FF_X16_Y10_N13
\vga_sync_unit|h_count_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_sync_unit|Add0~8_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \vga_sync_unit|mod2_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_unit|h_count_reg\(4));

-- Location: LCCOMB_X16_Y10_N16
\vga_sync_unit|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|Add0~12_combout\ = (\vga_sync_unit|h_count_reg\(6) & (\vga_sync_unit|Add0~11\ $ (GND))) # (!\vga_sync_unit|h_count_reg\(6) & (!\vga_sync_unit|Add0~11\ & VCC))
-- \vga_sync_unit|Add0~13\ = CARRY((\vga_sync_unit|h_count_reg\(6) & !\vga_sync_unit|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_unit|h_count_reg\(6),
	datad => VCC,
	cin => \vga_sync_unit|Add0~11\,
	combout => \vga_sync_unit|Add0~12_combout\,
	cout => \vga_sync_unit|Add0~13\);

-- Location: LCCOMB_X16_Y10_N18
\vga_sync_unit|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|Add0~14_combout\ = (\vga_sync_unit|h_count_reg\(7) & (!\vga_sync_unit|Add0~13\)) # (!\vga_sync_unit|h_count_reg\(7) & ((\vga_sync_unit|Add0~13\) # (GND)))
-- \vga_sync_unit|Add0~15\ = CARRY((!\vga_sync_unit|Add0~13\) # (!\vga_sync_unit|h_count_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_unit|h_count_reg\(7),
	datad => VCC,
	cin => \vga_sync_unit|Add0~13\,
	combout => \vga_sync_unit|Add0~14_combout\,
	cout => \vga_sync_unit|Add0~15\);

-- Location: FF_X16_Y10_N19
\vga_sync_unit|h_count_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_sync_unit|Add0~14_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \vga_sync_unit|mod2_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_unit|h_count_reg\(7));

-- Location: LCCOMB_X16_Y10_N20
\vga_sync_unit|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|Add0~16_combout\ = (\vga_sync_unit|h_count_reg\(8) & (\vga_sync_unit|Add0~15\ $ (GND))) # (!\vga_sync_unit|h_count_reg\(8) & (!\vga_sync_unit|Add0~15\ & VCC))
-- \vga_sync_unit|Add0~17\ = CARRY((\vga_sync_unit|h_count_reg\(8) & !\vga_sync_unit|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_unit|h_count_reg\(8),
	datad => VCC,
	cin => \vga_sync_unit|Add0~15\,
	combout => \vga_sync_unit|Add0~16_combout\,
	cout => \vga_sync_unit|Add0~17\);

-- Location: LCCOMB_X17_Y10_N8
\vga_sync_unit|h_count_next~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|h_count_next~1_combout\ = (!\vga_sync_unit|Equal0~3_combout\ & \vga_sync_unit|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_sync_unit|Equal0~3_combout\,
	datad => \vga_sync_unit|Add0~16_combout\,
	combout => \vga_sync_unit|h_count_next~1_combout\);

-- Location: FF_X17_Y10_N9
\vga_sync_unit|h_count_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_sync_unit|h_count_next~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \vga_sync_unit|mod2_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_unit|h_count_reg\(8));

-- Location: LCCOMB_X16_Y10_N22
\vga_sync_unit|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|Add0~18_combout\ = \vga_sync_unit|h_count_reg\(9) $ (\vga_sync_unit|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_unit|h_count_reg\(9),
	cin => \vga_sync_unit|Add0~17\,
	combout => \vga_sync_unit|Add0~18_combout\);

-- Location: LCCOMB_X17_Y10_N10
\vga_sync_unit|h_count_next~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|h_count_next~2_combout\ = (!\vga_sync_unit|Equal0~3_combout\ & \vga_sync_unit|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_sync_unit|Equal0~3_combout\,
	datad => \vga_sync_unit|Add0~18_combout\,
	combout => \vga_sync_unit|h_count_next~2_combout\);

-- Location: FF_X17_Y10_N11
\vga_sync_unit|h_count_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_sync_unit|h_count_next~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \vga_sync_unit|mod2_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_unit|h_count_reg\(9));

-- Location: LCCOMB_X16_Y10_N30
\vga_sync_unit|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|Equal0~1_combout\ = (\vga_sync_unit|h_count_reg\(3) & (\vga_sync_unit|h_count_reg\(9) & (\vga_sync_unit|h_count_reg\(2) & \vga_sync_unit|h_count_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_unit|h_count_reg\(3),
	datab => \vga_sync_unit|h_count_reg\(9),
	datac => \vga_sync_unit|h_count_reg\(2),
	datad => \vga_sync_unit|h_count_reg\(1),
	combout => \vga_sync_unit|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y10_N28
\vga_sync_unit|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|Equal0~2_combout\ = (!\vga_sync_unit|h_count_reg\(7) & (!\vga_sync_unit|h_count_reg\(6) & (\vga_sync_unit|h_count_reg\(8) & !\vga_sync_unit|h_count_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_unit|h_count_reg\(7),
	datab => \vga_sync_unit|h_count_reg\(6),
	datac => \vga_sync_unit|h_count_reg\(8),
	datad => \vga_sync_unit|h_count_reg\(5),
	combout => \vga_sync_unit|Equal0~2_combout\);

-- Location: LCCOMB_X16_Y10_N26
\vga_sync_unit|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|Equal0~3_combout\ = (\vga_sync_unit|h_count_reg\(4) & (\vga_sync_unit|h_count_reg\(0) & (\vga_sync_unit|Equal0~1_combout\ & \vga_sync_unit|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_unit|h_count_reg\(4),
	datab => \vga_sync_unit|h_count_reg\(0),
	datac => \vga_sync_unit|Equal0~1_combout\,
	datad => \vga_sync_unit|Equal0~2_combout\,
	combout => \vga_sync_unit|Equal0~3_combout\);

-- Location: LCCOMB_X16_Y10_N14
\vga_sync_unit|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|Add0~10_combout\ = (\vga_sync_unit|h_count_reg\(5) & (!\vga_sync_unit|Add0~9\)) # (!\vga_sync_unit|h_count_reg\(5) & ((\vga_sync_unit|Add0~9\) # (GND)))
-- \vga_sync_unit|Add0~11\ = CARRY((!\vga_sync_unit|Add0~9\) # (!\vga_sync_unit|h_count_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_unit|h_count_reg\(5),
	datad => VCC,
	cin => \vga_sync_unit|Add0~9\,
	combout => \vga_sync_unit|Add0~10_combout\,
	cout => \vga_sync_unit|Add0~11\);

-- Location: LCCOMB_X17_Y11_N26
\vga_sync_unit|h_count_next~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|h_count_next~0_combout\ = (!\vga_sync_unit|Equal0~3_combout\ & \vga_sync_unit|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_sync_unit|Equal0~3_combout\,
	datad => \vga_sync_unit|Add0~10_combout\,
	combout => \vga_sync_unit|h_count_next~0_combout\);

-- Location: FF_X17_Y11_N27
\vga_sync_unit|h_count_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_sync_unit|h_count_next~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \vga_sync_unit|mod2_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_unit|h_count_reg\(5));

-- Location: FF_X16_Y10_N17
\vga_sync_unit|h_count_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_sync_unit|Add0~12_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \vga_sync_unit|mod2_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_unit|h_count_reg\(6));

-- Location: LCCOMB_X16_Y10_N2
\vga_sync_unit|h_sync_next~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|h_sync_next~1_combout\ = (\vga_sync_unit|h_count_reg\(8)) # ((\vga_sync_unit|h_count_reg\(4) & (\vga_sync_unit|h_count_reg\(6) & \vga_sync_unit|h_count_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_unit|h_count_reg\(4),
	datab => \vga_sync_unit|h_count_reg\(6),
	datac => \vga_sync_unit|h_count_reg\(8),
	datad => \vga_sync_unit|h_count_reg\(5),
	combout => \vga_sync_unit|h_sync_next~1_combout\);

-- Location: LCCOMB_X16_Y10_N24
\vga_sync_unit|h_sync_next~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|h_sync_next~0_combout\ = (!\vga_sync_unit|h_count_reg\(4) & (!\vga_sync_unit|h_count_reg\(6) & !\vga_sync_unit|h_count_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_unit|h_count_reg\(4),
	datab => \vga_sync_unit|h_count_reg\(6),
	datad => \vga_sync_unit|h_count_reg\(5),
	combout => \vga_sync_unit|h_sync_next~0_combout\);

-- Location: LCCOMB_X17_Y10_N20
\vga_sync_unit|h_sync_next~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|h_sync_next~2_combout\ = (\vga_sync_unit|h_sync_next~1_combout\) # ((\vga_sync_unit|h_sync_next~0_combout\) # ((!\vga_sync_unit|h_count_reg\(7)) # (!\vga_sync_unit|h_count_reg\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_unit|h_sync_next~1_combout\,
	datab => \vga_sync_unit|h_sync_next~0_combout\,
	datac => \vga_sync_unit|h_count_reg\(9),
	datad => \vga_sync_unit|h_count_reg\(7),
	combout => \vga_sync_unit|h_sync_next~2_combout\);

-- Location: FF_X17_Y10_N21
\vga_sync_unit|h_sync_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_sync_unit|h_sync_next~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_unit|h_sync_reg~q\);

-- Location: LCCOMB_X18_Y10_N8
\vga_sync_unit|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|Add1~0_combout\ = \vga_sync_unit|v_count_reg\(0) $ (VCC)
-- \vga_sync_unit|Add1~1\ = CARRY(\vga_sync_unit|v_count_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_unit|v_count_reg\(0),
	datad => VCC,
	combout => \vga_sync_unit|Add1~0_combout\,
	cout => \vga_sync_unit|Add1~1\);

-- Location: LCCOMB_X18_Y10_N0
\vga_sync_unit|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|Equal1~1_combout\ = (\vga_sync_unit|v_count_reg\(2) & (!\vga_sync_unit|v_count_reg\(6) & (!\vga_sync_unit|v_count_reg\(7) & !\vga_sync_unit|v_count_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_unit|v_count_reg\(2),
	datab => \vga_sync_unit|v_count_reg\(6),
	datac => \vga_sync_unit|v_count_reg\(7),
	datad => \vga_sync_unit|v_count_reg\(5),
	combout => \vga_sync_unit|Equal1~1_combout\);

-- Location: LCCOMB_X18_Y10_N24
\vga_sync_unit|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|Add1~16_combout\ = (\vga_sync_unit|v_count_reg\(8) & (\vga_sync_unit|Add1~15\ $ (GND))) # (!\vga_sync_unit|v_count_reg\(8) & (!\vga_sync_unit|Add1~15\ & VCC))
-- \vga_sync_unit|Add1~17\ = CARRY((\vga_sync_unit|v_count_reg\(8) & !\vga_sync_unit|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_unit|v_count_reg\(8),
	datad => VCC,
	cin => \vga_sync_unit|Add1~15\,
	combout => \vga_sync_unit|Add1~16_combout\,
	cout => \vga_sync_unit|Add1~17\);

-- Location: LCCOMB_X18_Y10_N26
\vga_sync_unit|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|Add1~18_combout\ = \vga_sync_unit|v_count_reg\(9) $ (\vga_sync_unit|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_unit|v_count_reg\(9),
	cin => \vga_sync_unit|Add1~17\,
	combout => \vga_sync_unit|Add1~18_combout\);

-- Location: LCCOMB_X18_Y10_N4
\vga_sync_unit|v_count_next~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|v_count_next~0_combout\ = (\vga_sync_unit|Add1~18_combout\ & !\vga_sync_unit|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_sync_unit|Add1~18_combout\,
	datad => \vga_sync_unit|Equal1~2_combout\,
	combout => \vga_sync_unit|v_count_next~0_combout\);

-- Location: LCCOMB_X17_Y11_N20
\vga_sync_unit|vsync_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|vsync_counter~0_combout\ = (\vga_sync_unit|mod2_reg~q\ & \vga_sync_unit|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_unit|mod2_reg~q\,
	datac => \vga_sync_unit|Equal0~3_combout\,
	combout => \vga_sync_unit|vsync_counter~0_combout\);

-- Location: FF_X18_Y10_N5
\vga_sync_unit|v_count_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_sync_unit|v_count_next~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \vga_sync_unit|vsync_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_unit|v_count_reg\(9));

-- Location: LCCOMB_X17_Y10_N6
\vga_sync_unit|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|Equal1~0_combout\ = (\vga_sync_unit|v_count_reg\(9) & (!\vga_sync_unit|v_count_reg\(4) & (!\vga_sync_unit|v_count_reg\(8) & \vga_sync_unit|v_count_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_unit|v_count_reg\(9),
	datab => \vga_sync_unit|v_count_reg\(4),
	datac => \vga_sync_unit|v_count_reg\(8),
	datad => \vga_sync_unit|v_count_reg\(3),
	combout => \vga_sync_unit|Equal1~0_combout\);

-- Location: LCCOMB_X18_Y10_N2
\vga_sync_unit|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|Equal1~2_combout\ = (!\vga_sync_unit|v_count_reg\(0) & (\vga_sync_unit|Equal1~1_combout\ & (\vga_sync_unit|Equal1~0_combout\ & !\vga_sync_unit|v_count_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_unit|v_count_reg\(0),
	datab => \vga_sync_unit|Equal1~1_combout\,
	datac => \vga_sync_unit|Equal1~0_combout\,
	datad => \vga_sync_unit|v_count_reg\(1),
	combout => \vga_sync_unit|Equal1~2_combout\);

-- Location: LCCOMB_X18_Y10_N30
\vga_sync_unit|v_count_next~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|v_count_next~3_combout\ = (\vga_sync_unit|Add1~0_combout\ & !\vga_sync_unit|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_sync_unit|Add1~0_combout\,
	datad => \vga_sync_unit|Equal1~2_combout\,
	combout => \vga_sync_unit|v_count_next~3_combout\);

-- Location: FF_X18_Y10_N31
\vga_sync_unit|v_count_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_sync_unit|v_count_next~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \vga_sync_unit|vsync_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_unit|v_count_reg\(0));

-- Location: LCCOMB_X18_Y10_N10
\vga_sync_unit|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|Add1~2_combout\ = (\vga_sync_unit|v_count_reg\(1) & (!\vga_sync_unit|Add1~1\)) # (!\vga_sync_unit|v_count_reg\(1) & ((\vga_sync_unit|Add1~1\) # (GND)))
-- \vga_sync_unit|Add1~3\ = CARRY((!\vga_sync_unit|Add1~1\) # (!\vga_sync_unit|v_count_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_unit|v_count_reg\(1),
	datad => VCC,
	cin => \vga_sync_unit|Add1~1\,
	combout => \vga_sync_unit|Add1~2_combout\,
	cout => \vga_sync_unit|Add1~3\);

-- Location: FF_X18_Y10_N11
\vga_sync_unit|v_count_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_sync_unit|Add1~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \vga_sync_unit|vsync_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_unit|v_count_reg\(1));

-- Location: LCCOMB_X18_Y10_N12
\vga_sync_unit|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|Add1~4_combout\ = (\vga_sync_unit|v_count_reg\(2) & (\vga_sync_unit|Add1~3\ $ (GND))) # (!\vga_sync_unit|v_count_reg\(2) & (!\vga_sync_unit|Add1~3\ & VCC))
-- \vga_sync_unit|Add1~5\ = CARRY((\vga_sync_unit|v_count_reg\(2) & !\vga_sync_unit|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_unit|v_count_reg\(2),
	datad => VCC,
	cin => \vga_sync_unit|Add1~3\,
	combout => \vga_sync_unit|Add1~4_combout\,
	cout => \vga_sync_unit|Add1~5\);

-- Location: LCCOMB_X18_Y10_N6
\vga_sync_unit|v_count_next~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|v_count_next~1_combout\ = (\vga_sync_unit|Add1~4_combout\ & !\vga_sync_unit|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_unit|Add1~4_combout\,
	datad => \vga_sync_unit|Equal1~2_combout\,
	combout => \vga_sync_unit|v_count_next~1_combout\);

-- Location: FF_X18_Y10_N7
\vga_sync_unit|v_count_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_sync_unit|v_count_next~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \vga_sync_unit|vsync_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_unit|v_count_reg\(2));

-- Location: LCCOMB_X18_Y10_N14
\vga_sync_unit|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|Add1~6_combout\ = (\vga_sync_unit|v_count_reg\(3) & (!\vga_sync_unit|Add1~5\)) # (!\vga_sync_unit|v_count_reg\(3) & ((\vga_sync_unit|Add1~5\) # (GND)))
-- \vga_sync_unit|Add1~7\ = CARRY((!\vga_sync_unit|Add1~5\) # (!\vga_sync_unit|v_count_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_unit|v_count_reg\(3),
	datad => VCC,
	cin => \vga_sync_unit|Add1~5\,
	combout => \vga_sync_unit|Add1~6_combout\,
	cout => \vga_sync_unit|Add1~7\);

-- Location: LCCOMB_X18_Y10_N28
\vga_sync_unit|v_count_next~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|v_count_next~2_combout\ = (\vga_sync_unit|Add1~6_combout\ & !\vga_sync_unit|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_sync_unit|Add1~6_combout\,
	datad => \vga_sync_unit|Equal1~2_combout\,
	combout => \vga_sync_unit|v_count_next~2_combout\);

-- Location: FF_X18_Y10_N29
\vga_sync_unit|v_count_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_sync_unit|v_count_next~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \vga_sync_unit|vsync_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_unit|v_count_reg\(3));

-- Location: LCCOMB_X18_Y10_N16
\vga_sync_unit|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|Add1~8_combout\ = (\vga_sync_unit|v_count_reg\(4) & (\vga_sync_unit|Add1~7\ $ (GND))) # (!\vga_sync_unit|v_count_reg\(4) & (!\vga_sync_unit|Add1~7\ & VCC))
-- \vga_sync_unit|Add1~9\ = CARRY((\vga_sync_unit|v_count_reg\(4) & !\vga_sync_unit|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_unit|v_count_reg\(4),
	datad => VCC,
	cin => \vga_sync_unit|Add1~7\,
	combout => \vga_sync_unit|Add1~8_combout\,
	cout => \vga_sync_unit|Add1~9\);

-- Location: FF_X18_Y10_N17
\vga_sync_unit|v_count_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_sync_unit|Add1~8_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \vga_sync_unit|vsync_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_unit|v_count_reg\(4));

-- Location: LCCOMB_X18_Y10_N18
\vga_sync_unit|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|Add1~10_combout\ = (\vga_sync_unit|v_count_reg\(5) & (!\vga_sync_unit|Add1~9\)) # (!\vga_sync_unit|v_count_reg\(5) & ((\vga_sync_unit|Add1~9\) # (GND)))
-- \vga_sync_unit|Add1~11\ = CARRY((!\vga_sync_unit|Add1~9\) # (!\vga_sync_unit|v_count_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_unit|v_count_reg\(5),
	datad => VCC,
	cin => \vga_sync_unit|Add1~9\,
	combout => \vga_sync_unit|Add1~10_combout\,
	cout => \vga_sync_unit|Add1~11\);

-- Location: FF_X18_Y10_N19
\vga_sync_unit|v_count_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_sync_unit|Add1~10_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \vga_sync_unit|vsync_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_unit|v_count_reg\(5));

-- Location: LCCOMB_X18_Y10_N20
\vga_sync_unit|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|Add1~12_combout\ = (\vga_sync_unit|v_count_reg\(6) & (\vga_sync_unit|Add1~11\ $ (GND))) # (!\vga_sync_unit|v_count_reg\(6) & (!\vga_sync_unit|Add1~11\ & VCC))
-- \vga_sync_unit|Add1~13\ = CARRY((\vga_sync_unit|v_count_reg\(6) & !\vga_sync_unit|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_unit|v_count_reg\(6),
	datad => VCC,
	cin => \vga_sync_unit|Add1~11\,
	combout => \vga_sync_unit|Add1~12_combout\,
	cout => \vga_sync_unit|Add1~13\);

-- Location: FF_X18_Y10_N21
\vga_sync_unit|v_count_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_sync_unit|Add1~12_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \vga_sync_unit|vsync_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_unit|v_count_reg\(6));

-- Location: LCCOMB_X18_Y10_N22
\vga_sync_unit|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|Add1~14_combout\ = (\vga_sync_unit|v_count_reg\(7) & (!\vga_sync_unit|Add1~13\)) # (!\vga_sync_unit|v_count_reg\(7) & ((\vga_sync_unit|Add1~13\) # (GND)))
-- \vga_sync_unit|Add1~15\ = CARRY((!\vga_sync_unit|Add1~13\) # (!\vga_sync_unit|v_count_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_unit|v_count_reg\(7),
	datad => VCC,
	cin => \vga_sync_unit|Add1~13\,
	combout => \vga_sync_unit|Add1~14_combout\,
	cout => \vga_sync_unit|Add1~15\);

-- Location: FF_X18_Y10_N23
\vga_sync_unit|v_count_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_sync_unit|Add1~14_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \vga_sync_unit|vsync_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_unit|v_count_reg\(7));

-- Location: FF_X18_Y10_N25
\vga_sync_unit|v_count_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_sync_unit|Add1~16_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \vga_sync_unit|vsync_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_unit|v_count_reg\(8));

-- Location: LCCOMB_X17_Y10_N2
\vga_sync_unit|v_sync_next~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|v_sync_next~1_combout\ = (\vga_sync_unit|v_count_reg\(8) & (\vga_sync_unit|v_count_reg\(7) & (\vga_sync_unit|v_count_reg\(6) & \vga_sync_unit|v_count_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_unit|v_count_reg\(8),
	datab => \vga_sync_unit|v_count_reg\(7),
	datac => \vga_sync_unit|v_count_reg\(6),
	datad => \vga_sync_unit|v_count_reg\(5),
	combout => \vga_sync_unit|v_sync_next~1_combout\);

-- Location: LCCOMB_X17_Y10_N28
\vga_sync_unit|v_sync_next~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|v_sync_next~0_combout\ = (\vga_sync_unit|v_count_reg\(2)) # (((\vga_sync_unit|v_count_reg\(9)) # (\vga_sync_unit|v_count_reg\(4))) # (!\vga_sync_unit|v_count_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_unit|v_count_reg\(2),
	datab => \vga_sync_unit|v_count_reg\(3),
	datac => \vga_sync_unit|v_count_reg\(9),
	datad => \vga_sync_unit|v_count_reg\(4),
	combout => \vga_sync_unit|v_sync_next~0_combout\);

-- Location: LCCOMB_X17_Y10_N22
\vga_sync_unit|v_sync_next~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|v_sync_next~2_combout\ = ((\vga_sync_unit|v_sync_next~0_combout\) # (!\vga_sync_unit|v_count_reg\(1))) # (!\vga_sync_unit|v_sync_next~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_unit|v_sync_next~1_combout\,
	datac => \vga_sync_unit|v_count_reg\(1),
	datad => \vga_sync_unit|v_sync_next~0_combout\,
	combout => \vga_sync_unit|v_sync_next~2_combout\);

-- Location: FF_X17_Y10_N23
\vga_sync_unit|v_sync_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vga_sync_unit|v_sync_next~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_unit|v_sync_reg~q\);

-- Location: LCCOMB_X16_Y10_N0
\vga_sync_unit|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|Equal0~0_combout\ = (\vga_sync_unit|h_count_reg\(3) & (\vga_sync_unit|h_count_reg\(2) & \vga_sync_unit|h_count_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_unit|h_count_reg\(3),
	datac => \vga_sync_unit|h_count_reg\(2),
	datad => \vga_sync_unit|h_count_reg\(1),
	combout => \vga_sync_unit|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y10_N14
\pixel_gen|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|LessThan1~0_combout\ = (((!\vga_sync_unit|Equal0~0_combout\ & \vga_sync_unit|h_sync_next~0_combout\)) # (!\vga_sync_unit|h_count_reg\(7))) # (!\vga_sync_unit|h_count_reg\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_unit|h_count_reg\(8),
	datab => \vga_sync_unit|h_count_reg\(7),
	datac => \vga_sync_unit|Equal0~0_combout\,
	datad => \vga_sync_unit|h_sync_next~0_combout\,
	combout => \pixel_gen|LessThan1~0_combout\);

-- Location: LCCOMB_X17_Y10_N18
\pixel_gen|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|LessThan2~1_combout\ = ((!\vga_sync_unit|v_count_reg\(3) & ((!\vga_sync_unit|v_count_reg\(1)) # (!\vga_sync_unit|v_count_reg\(2))))) # (!\vga_sync_unit|v_count_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_unit|v_count_reg\(2),
	datab => \vga_sync_unit|v_count_reg\(5),
	datac => \vga_sync_unit|v_count_reg\(1),
	datad => \vga_sync_unit|v_count_reg\(3),
	combout => \pixel_gen|LessThan2~1_combout\);

-- Location: LCCOMB_X17_Y10_N30
\pixel_gen|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|LessThan2~0_combout\ = (\vga_sync_unit|v_count_reg\(8) & \vga_sync_unit|v_count_reg\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_unit|v_count_reg\(8),
	datad => \vga_sync_unit|v_count_reg\(7),
	combout => \pixel_gen|LessThan2~0_combout\);

-- Location: LCCOMB_X17_Y10_N16
\pixel_gen|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|LessThan2~2_combout\ = ((!\vga_sync_unit|v_count_reg\(6) & ((\pixel_gen|LessThan2~1_combout\) # (!\vga_sync_unit|v_count_reg\(4))))) # (!\pixel_gen|LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_unit|v_count_reg\(6),
	datab => \pixel_gen|LessThan2~1_combout\,
	datac => \pixel_gen|LessThan2~0_combout\,
	datad => \vga_sync_unit|v_count_reg\(4),
	combout => \pixel_gen|LessThan2~2_combout\);

-- Location: LCCOMB_X17_Y10_N0
\pixel_gen|valid_img\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|valid_img~combout\ = (!\vga_sync_unit|v_count_reg\(9) & (\pixel_gen|LessThan1~0_combout\ & (!\vga_sync_unit|h_count_reg\(9) & \pixel_gen|LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_unit|v_count_reg\(9),
	datab => \pixel_gen|LessThan1~0_combout\,
	datac => \vga_sync_unit|h_count_reg\(9),
	datad => \pixel_gen|LessThan2~2_combout\,
	combout => \pixel_gen|valid_img~combout\);

-- Location: LCCOMB_X17_Y12_N14
\pixel_gen|addr_reg[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|addr_reg[0]~18_combout\ = (\vga_sync_unit|mod2_reg~q\ & (\pixel_gen|addr_reg\(0) $ (VCC))) # (!\vga_sync_unit|mod2_reg~q\ & (\pixel_gen|addr_reg\(0) & VCC))
-- \pixel_gen|addr_reg[0]~19\ = CARRY((\vga_sync_unit|mod2_reg~q\ & \pixel_gen|addr_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_unit|mod2_reg~q\,
	datab => \pixel_gen|addr_reg\(0),
	datad => VCC,
	combout => \pixel_gen|addr_reg[0]~18_combout\,
	cout => \pixel_gen|addr_reg[0]~19\);

-- Location: LCCOMB_X17_Y11_N14
\pixel_gen|addr_reg[16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|addr_reg[16]~50_combout\ = (\pixel_gen|addr_reg\(16) & (\pixel_gen|addr_reg[15]~49\ $ (GND))) # (!\pixel_gen|addr_reg\(16) & (!\pixel_gen|addr_reg[15]~49\ & VCC))
-- \pixel_gen|addr_reg[16]~51\ = CARRY((\pixel_gen|addr_reg\(16) & !\pixel_gen|addr_reg[15]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pixel_gen|addr_reg\(16),
	datad => VCC,
	cin => \pixel_gen|addr_reg[15]~49\,
	combout => \pixel_gen|addr_reg[16]~50_combout\,
	cout => \pixel_gen|addr_reg[16]~51\);

-- Location: LCCOMB_X17_Y11_N16
\pixel_gen|addr_reg[17]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|addr_reg[17]~52_combout\ = \pixel_gen|addr_reg[16]~51\ $ (\pixel_gen|addr_reg\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pixel_gen|addr_reg\(17),
	cin => \pixel_gen|addr_reg[16]~51\,
	combout => \pixel_gen|addr_reg[17]~52_combout\);

-- Location: FF_X17_Y11_N17
\pixel_gen|addr_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pixel_gen|addr_reg[17]~52_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \pixel_gen|LessThan0~5_combout\,
	ena => \pixel_gen|valid_img~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_gen|addr_reg\(17));

-- Location: LCCOMB_X17_Y11_N22
\pixel_gen|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|LessThan0~0_combout\ = ((!\pixel_gen|addr_reg\(16) & !\pixel_gen|addr_reg\(15))) # (!\pixel_gen|addr_reg\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pixel_gen|addr_reg\(17),
	datac => \pixel_gen|addr_reg\(16),
	datad => \pixel_gen|addr_reg\(15),
	combout => \pixel_gen|LessThan0~0_combout\);

-- Location: LCCOMB_X17_Y11_N28
\pixel_gen|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|LessThan0~1_combout\ = (!\pixel_gen|addr_reg\(8) & (!\pixel_gen|addr_reg\(9) & (!\pixel_gen|addr_reg\(12) & !\pixel_gen|addr_reg\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_gen|addr_reg\(8),
	datab => \pixel_gen|addr_reg\(9),
	datac => \pixel_gen|addr_reg\(12),
	datad => \pixel_gen|addr_reg\(10),
	combout => \pixel_gen|LessThan0~1_combout\);

-- Location: LCCOMB_X17_Y12_N4
\pixel_gen|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|LessThan0~2_combout\ = (((!\pixel_gen|addr_reg\(3) & !\pixel_gen|addr_reg\(2))) # (!\pixel_gen|addr_reg\(4))) # (!\pixel_gen|addr_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_gen|addr_reg\(3),
	datab => \pixel_gen|addr_reg\(5),
	datac => \pixel_gen|addr_reg\(4),
	datad => \pixel_gen|addr_reg\(2),
	combout => \pixel_gen|LessThan0~2_combout\);

-- Location: LCCOMB_X17_Y11_N18
\pixel_gen|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|LessThan0~3_combout\ = (\pixel_gen|LessThan0~1_combout\ & (((\pixel_gen|LessThan0~2_combout\) # (!\pixel_gen|addr_reg\(6))) # (!\pixel_gen|addr_reg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_gen|addr_reg\(7),
	datab => \pixel_gen|LessThan0~1_combout\,
	datac => \pixel_gen|addr_reg\(6),
	datad => \pixel_gen|LessThan0~2_combout\,
	combout => \pixel_gen|LessThan0~3_combout\);

-- Location: LCCOMB_X17_Y11_N24
\pixel_gen|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|LessThan0~4_combout\ = ((\pixel_gen|LessThan0~3_combout\) # ((!\pixel_gen|addr_reg\(12) & !\pixel_gen|addr_reg\(11)))) # (!\pixel_gen|addr_reg\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_gen|addr_reg\(12),
	datab => \pixel_gen|addr_reg\(13),
	datac => \pixel_gen|addr_reg\(11),
	datad => \pixel_gen|LessThan0~3_combout\,
	combout => \pixel_gen|LessThan0~4_combout\);

-- Location: LCCOMB_X17_Y11_N30
\pixel_gen|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|LessThan0~5_combout\ = (!\pixel_gen|LessThan0~0_combout\ & (((\pixel_gen|addr_reg\(16)) # (\pixel_gen|addr_reg\(14))) # (!\pixel_gen|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_gen|LessThan0~0_combout\,
	datab => \pixel_gen|LessThan0~4_combout\,
	datac => \pixel_gen|addr_reg\(16),
	datad => \pixel_gen|addr_reg\(14),
	combout => \pixel_gen|LessThan0~5_combout\);

-- Location: FF_X17_Y12_N15
\pixel_gen|addr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pixel_gen|addr_reg[0]~18_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \pixel_gen|LessThan0~5_combout\,
	ena => \pixel_gen|valid_img~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_gen|addr_reg\(0));

-- Location: LCCOMB_X17_Y12_N16
\pixel_gen|addr_reg[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|addr_reg[1]~20_combout\ = (\pixel_gen|addr_reg\(1) & (!\pixel_gen|addr_reg[0]~19\)) # (!\pixel_gen|addr_reg\(1) & ((\pixel_gen|addr_reg[0]~19\) # (GND)))
-- \pixel_gen|addr_reg[1]~21\ = CARRY((!\pixel_gen|addr_reg[0]~19\) # (!\pixel_gen|addr_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pixel_gen|addr_reg\(1),
	datad => VCC,
	cin => \pixel_gen|addr_reg[0]~19\,
	combout => \pixel_gen|addr_reg[1]~20_combout\,
	cout => \pixel_gen|addr_reg[1]~21\);

-- Location: FF_X17_Y12_N17
\pixel_gen|addr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pixel_gen|addr_reg[1]~20_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \pixel_gen|LessThan0~5_combout\,
	ena => \pixel_gen|valid_img~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_gen|addr_reg\(1));

-- Location: LCCOMB_X17_Y12_N18
\pixel_gen|addr_reg[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|addr_reg[2]~22_combout\ = (\pixel_gen|addr_reg\(2) & (\pixel_gen|addr_reg[1]~21\ $ (GND))) # (!\pixel_gen|addr_reg\(2) & (!\pixel_gen|addr_reg[1]~21\ & VCC))
-- \pixel_gen|addr_reg[2]~23\ = CARRY((\pixel_gen|addr_reg\(2) & !\pixel_gen|addr_reg[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pixel_gen|addr_reg\(2),
	datad => VCC,
	cin => \pixel_gen|addr_reg[1]~21\,
	combout => \pixel_gen|addr_reg[2]~22_combout\,
	cout => \pixel_gen|addr_reg[2]~23\);

-- Location: FF_X17_Y12_N19
\pixel_gen|addr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pixel_gen|addr_reg[2]~22_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \pixel_gen|LessThan0~5_combout\,
	ena => \pixel_gen|valid_img~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_gen|addr_reg\(2));

-- Location: LCCOMB_X17_Y12_N20
\pixel_gen|addr_reg[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|addr_reg[3]~24_combout\ = (\pixel_gen|addr_reg\(3) & (!\pixel_gen|addr_reg[2]~23\)) # (!\pixel_gen|addr_reg\(3) & ((\pixel_gen|addr_reg[2]~23\) # (GND)))
-- \pixel_gen|addr_reg[3]~25\ = CARRY((!\pixel_gen|addr_reg[2]~23\) # (!\pixel_gen|addr_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pixel_gen|addr_reg\(3),
	datad => VCC,
	cin => \pixel_gen|addr_reg[2]~23\,
	combout => \pixel_gen|addr_reg[3]~24_combout\,
	cout => \pixel_gen|addr_reg[3]~25\);

-- Location: FF_X17_Y12_N21
\pixel_gen|addr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pixel_gen|addr_reg[3]~24_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \pixel_gen|LessThan0~5_combout\,
	ena => \pixel_gen|valid_img~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_gen|addr_reg\(3));

-- Location: LCCOMB_X17_Y12_N22
\pixel_gen|addr_reg[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|addr_reg[4]~26_combout\ = (\pixel_gen|addr_reg\(4) & (\pixel_gen|addr_reg[3]~25\ $ (GND))) # (!\pixel_gen|addr_reg\(4) & (!\pixel_gen|addr_reg[3]~25\ & VCC))
-- \pixel_gen|addr_reg[4]~27\ = CARRY((\pixel_gen|addr_reg\(4) & !\pixel_gen|addr_reg[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_gen|addr_reg\(4),
	datad => VCC,
	cin => \pixel_gen|addr_reg[3]~25\,
	combout => \pixel_gen|addr_reg[4]~26_combout\,
	cout => \pixel_gen|addr_reg[4]~27\);

-- Location: FF_X17_Y12_N23
\pixel_gen|addr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pixel_gen|addr_reg[4]~26_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \pixel_gen|LessThan0~5_combout\,
	ena => \pixel_gen|valid_img~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_gen|addr_reg\(4));

-- Location: LCCOMB_X17_Y12_N24
\pixel_gen|addr_reg[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|addr_reg[5]~28_combout\ = (\pixel_gen|addr_reg\(5) & (!\pixel_gen|addr_reg[4]~27\)) # (!\pixel_gen|addr_reg\(5) & ((\pixel_gen|addr_reg[4]~27\) # (GND)))
-- \pixel_gen|addr_reg[5]~29\ = CARRY((!\pixel_gen|addr_reg[4]~27\) # (!\pixel_gen|addr_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pixel_gen|addr_reg\(5),
	datad => VCC,
	cin => \pixel_gen|addr_reg[4]~27\,
	combout => \pixel_gen|addr_reg[5]~28_combout\,
	cout => \pixel_gen|addr_reg[5]~29\);

-- Location: FF_X17_Y12_N25
\pixel_gen|addr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pixel_gen|addr_reg[5]~28_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \pixel_gen|LessThan0~5_combout\,
	ena => \pixel_gen|valid_img~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_gen|addr_reg\(5));

-- Location: LCCOMB_X17_Y12_N26
\pixel_gen|addr_reg[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|addr_reg[6]~30_combout\ = (\pixel_gen|addr_reg\(6) & (\pixel_gen|addr_reg[5]~29\ $ (GND))) # (!\pixel_gen|addr_reg\(6) & (!\pixel_gen|addr_reg[5]~29\ & VCC))
-- \pixel_gen|addr_reg[6]~31\ = CARRY((\pixel_gen|addr_reg\(6) & !\pixel_gen|addr_reg[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_gen|addr_reg\(6),
	datad => VCC,
	cin => \pixel_gen|addr_reg[5]~29\,
	combout => \pixel_gen|addr_reg[6]~30_combout\,
	cout => \pixel_gen|addr_reg[6]~31\);

-- Location: FF_X17_Y12_N27
\pixel_gen|addr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pixel_gen|addr_reg[6]~30_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \pixel_gen|LessThan0~5_combout\,
	ena => \pixel_gen|valid_img~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_gen|addr_reg\(6));

-- Location: LCCOMB_X17_Y12_N28
\pixel_gen|addr_reg[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|addr_reg[7]~32_combout\ = (\pixel_gen|addr_reg\(7) & (!\pixel_gen|addr_reg[6]~31\)) # (!\pixel_gen|addr_reg\(7) & ((\pixel_gen|addr_reg[6]~31\) # (GND)))
-- \pixel_gen|addr_reg[7]~33\ = CARRY((!\pixel_gen|addr_reg[6]~31\) # (!\pixel_gen|addr_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pixel_gen|addr_reg\(7),
	datad => VCC,
	cin => \pixel_gen|addr_reg[6]~31\,
	combout => \pixel_gen|addr_reg[7]~32_combout\,
	cout => \pixel_gen|addr_reg[7]~33\);

-- Location: FF_X17_Y12_N29
\pixel_gen|addr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pixel_gen|addr_reg[7]~32_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \pixel_gen|LessThan0~5_combout\,
	ena => \pixel_gen|valid_img~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_gen|addr_reg\(7));

-- Location: LCCOMB_X17_Y12_N30
\pixel_gen|addr_reg[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|addr_reg[8]~34_combout\ = (\pixel_gen|addr_reg\(8) & (\pixel_gen|addr_reg[7]~33\ $ (GND))) # (!\pixel_gen|addr_reg\(8) & (!\pixel_gen|addr_reg[7]~33\ & VCC))
-- \pixel_gen|addr_reg[8]~35\ = CARRY((\pixel_gen|addr_reg\(8) & !\pixel_gen|addr_reg[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_gen|addr_reg\(8),
	datad => VCC,
	cin => \pixel_gen|addr_reg[7]~33\,
	combout => \pixel_gen|addr_reg[8]~34_combout\,
	cout => \pixel_gen|addr_reg[8]~35\);

-- Location: FF_X17_Y12_N31
\pixel_gen|addr_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pixel_gen|addr_reg[8]~34_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \pixel_gen|LessThan0~5_combout\,
	ena => \pixel_gen|valid_img~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_gen|addr_reg\(8));

-- Location: LCCOMB_X17_Y11_N0
\pixel_gen|addr_reg[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|addr_reg[9]~36_combout\ = (\pixel_gen|addr_reg\(9) & (!\pixel_gen|addr_reg[8]~35\)) # (!\pixel_gen|addr_reg\(9) & ((\pixel_gen|addr_reg[8]~35\) # (GND)))
-- \pixel_gen|addr_reg[9]~37\ = CARRY((!\pixel_gen|addr_reg[8]~35\) # (!\pixel_gen|addr_reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pixel_gen|addr_reg\(9),
	datad => VCC,
	cin => \pixel_gen|addr_reg[8]~35\,
	combout => \pixel_gen|addr_reg[9]~36_combout\,
	cout => \pixel_gen|addr_reg[9]~37\);

-- Location: FF_X17_Y11_N1
\pixel_gen|addr_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pixel_gen|addr_reg[9]~36_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \pixel_gen|LessThan0~5_combout\,
	ena => \pixel_gen|valid_img~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_gen|addr_reg\(9));

-- Location: LCCOMB_X17_Y11_N2
\pixel_gen|addr_reg[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|addr_reg[10]~38_combout\ = (\pixel_gen|addr_reg\(10) & (\pixel_gen|addr_reg[9]~37\ $ (GND))) # (!\pixel_gen|addr_reg\(10) & (!\pixel_gen|addr_reg[9]~37\ & VCC))
-- \pixel_gen|addr_reg[10]~39\ = CARRY((\pixel_gen|addr_reg\(10) & !\pixel_gen|addr_reg[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pixel_gen|addr_reg\(10),
	datad => VCC,
	cin => \pixel_gen|addr_reg[9]~37\,
	combout => \pixel_gen|addr_reg[10]~38_combout\,
	cout => \pixel_gen|addr_reg[10]~39\);

-- Location: FF_X17_Y11_N3
\pixel_gen|addr_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pixel_gen|addr_reg[10]~38_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \pixel_gen|LessThan0~5_combout\,
	ena => \pixel_gen|valid_img~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_gen|addr_reg\(10));

-- Location: LCCOMB_X17_Y11_N4
\pixel_gen|addr_reg[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|addr_reg[11]~40_combout\ = (\pixel_gen|addr_reg\(11) & (!\pixel_gen|addr_reg[10]~39\)) # (!\pixel_gen|addr_reg\(11) & ((\pixel_gen|addr_reg[10]~39\) # (GND)))
-- \pixel_gen|addr_reg[11]~41\ = CARRY((!\pixel_gen|addr_reg[10]~39\) # (!\pixel_gen|addr_reg\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pixel_gen|addr_reg\(11),
	datad => VCC,
	cin => \pixel_gen|addr_reg[10]~39\,
	combout => \pixel_gen|addr_reg[11]~40_combout\,
	cout => \pixel_gen|addr_reg[11]~41\);

-- Location: FF_X17_Y11_N5
\pixel_gen|addr_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pixel_gen|addr_reg[11]~40_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \pixel_gen|LessThan0~5_combout\,
	ena => \pixel_gen|valid_img~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_gen|addr_reg\(11));

-- Location: LCCOMB_X17_Y11_N6
\pixel_gen|addr_reg[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|addr_reg[12]~42_combout\ = (\pixel_gen|addr_reg\(12) & (\pixel_gen|addr_reg[11]~41\ $ (GND))) # (!\pixel_gen|addr_reg\(12) & (!\pixel_gen|addr_reg[11]~41\ & VCC))
-- \pixel_gen|addr_reg[12]~43\ = CARRY((\pixel_gen|addr_reg\(12) & !\pixel_gen|addr_reg[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_gen|addr_reg\(12),
	datad => VCC,
	cin => \pixel_gen|addr_reg[11]~41\,
	combout => \pixel_gen|addr_reg[12]~42_combout\,
	cout => \pixel_gen|addr_reg[12]~43\);

-- Location: FF_X17_Y11_N7
\pixel_gen|addr_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pixel_gen|addr_reg[12]~42_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \pixel_gen|LessThan0~5_combout\,
	ena => \pixel_gen|valid_img~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_gen|addr_reg\(12));

-- Location: LCCOMB_X17_Y11_N8
\pixel_gen|addr_reg[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|addr_reg[13]~44_combout\ = (\pixel_gen|addr_reg\(13) & (!\pixel_gen|addr_reg[12]~43\)) # (!\pixel_gen|addr_reg\(13) & ((\pixel_gen|addr_reg[12]~43\) # (GND)))
-- \pixel_gen|addr_reg[13]~45\ = CARRY((!\pixel_gen|addr_reg[12]~43\) # (!\pixel_gen|addr_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pixel_gen|addr_reg\(13),
	datad => VCC,
	cin => \pixel_gen|addr_reg[12]~43\,
	combout => \pixel_gen|addr_reg[13]~44_combout\,
	cout => \pixel_gen|addr_reg[13]~45\);

-- Location: FF_X17_Y11_N9
\pixel_gen|addr_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pixel_gen|addr_reg[13]~44_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \pixel_gen|LessThan0~5_combout\,
	ena => \pixel_gen|valid_img~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_gen|addr_reg\(13));

-- Location: LCCOMB_X17_Y11_N10
\pixel_gen|addr_reg[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|addr_reg[14]~46_combout\ = (\pixel_gen|addr_reg\(14) & (\pixel_gen|addr_reg[13]~45\ $ (GND))) # (!\pixel_gen|addr_reg\(14) & (!\pixel_gen|addr_reg[13]~45\ & VCC))
-- \pixel_gen|addr_reg[14]~47\ = CARRY((\pixel_gen|addr_reg\(14) & !\pixel_gen|addr_reg[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_gen|addr_reg\(14),
	datad => VCC,
	cin => \pixel_gen|addr_reg[13]~45\,
	combout => \pixel_gen|addr_reg[14]~46_combout\,
	cout => \pixel_gen|addr_reg[14]~47\);

-- Location: FF_X17_Y11_N11
\pixel_gen|addr_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pixel_gen|addr_reg[14]~46_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \pixel_gen|LessThan0~5_combout\,
	ena => \pixel_gen|valid_img~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_gen|addr_reg\(14));

-- Location: LCCOMB_X17_Y11_N12
\pixel_gen|addr_reg[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|addr_reg[15]~48_combout\ = (\pixel_gen|addr_reg\(15) & (!\pixel_gen|addr_reg[14]~47\)) # (!\pixel_gen|addr_reg\(15) & ((\pixel_gen|addr_reg[14]~47\) # (GND)))
-- \pixel_gen|addr_reg[15]~49\ = CARRY((!\pixel_gen|addr_reg[14]~47\) # (!\pixel_gen|addr_reg\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_gen|addr_reg\(15),
	datad => VCC,
	cin => \pixel_gen|addr_reg[14]~47\,
	combout => \pixel_gen|addr_reg[15]~48_combout\,
	cout => \pixel_gen|addr_reg[15]~49\);

-- Location: FF_X17_Y11_N13
\pixel_gen|addr_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pixel_gen|addr_reg[15]~48_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \pixel_gen|LessThan0~5_combout\,
	ena => \pixel_gen|valid_img~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_gen|addr_reg\(15));

-- Location: FF_X17_Y11_N15
\pixel_gen|addr_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pixel_gen|addr_reg[16]~50_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \pixel_gen|LessThan0~5_combout\,
	ena => \pixel_gen|valid_img~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_gen|addr_reg\(16));

-- Location: LCCOMB_X17_Y10_N12
\pixel_gen|en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|en~0_combout\ = (!\vga_sync_unit|h_count_reg\(9) & !\vga_sync_unit|v_count_reg\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_sync_unit|h_count_reg\(9),
	datad => \vga_sync_unit|v_count_reg\(9),
	combout => \pixel_gen|en~0_combout\);

-- Location: LCCOMB_X17_Y10_N26
\pixel_gen|en\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|en~combout\ = (\pixel_gen|en~0_combout\ & (\vga_sync_unit|mod2_reg~q\ & (\pixel_gen|LessThan1~0_combout\ & \pixel_gen|LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_gen|en~0_combout\,
	datab => \vga_sync_unit|mod2_reg~q\,
	datac => \pixel_gen|LessThan1~0_combout\,
	datad => \pixel_gen|LessThan2~2_combout\,
	combout => \pixel_gen|en~combout\);

-- Location: FF_X16_Y12_N1
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pixel_gen|addr_reg\(16),
	sload => VCC,
	ena => \pixel_gen|en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(3));

-- Location: FF_X16_Y12_N5
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pixel_gen|addr_reg\(15),
	sload => VCC,
	ena => \pixel_gen|en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(2));

-- Location: FF_X16_Y12_N31
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pixel_gen|addr_reg\(17),
	sload => VCC,
	ena => \pixel_gen|en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(4));

-- Location: FF_X16_Y12_N17
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pixel_gen|addr_reg\(14),
	sload => VCC,
	ena => \pixel_gen|en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(1));

-- Location: FF_X16_Y12_N19
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pixel_gen|addr_reg\(13),
	sload => VCC,
	ena => \pixel_gen|en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(0));

-- Location: M9K_X15_Y13_N0
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a21\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555555555555555555555555555555555555555555555555555555555555555555555500000000155550000000000055555555555555555555555",
	mem_init1 => X"55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555000000005555400000000000555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555500000000555500000000000055555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	mem_init0 => X"55555555555555555555555555555555555555000000015554000000000010555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555500000001555400000000005055555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555550000000555500000000001505555555555555555555555555555555555555555555555555555",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "src/mif/bitmap.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_pix_gen:pixel_gen|bitmap_mem:bitmap_memory|altsyncram:rom_rtl_0|altsyncram_v261:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 174324,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \pixel_gen|en~combout\,
	portaaddr => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a21_PORTADATAOUT_bus\);

-- Location: M9K_X15_Y8_N0
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a20\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC001FF00000C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8007F8000060FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE003FC0000303FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800FF00000867FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007F80000E39FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC01FC000010C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FF00000071FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC03F80000E387FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FC000030C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0FF000000607FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83F800004701FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FC000021C07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF85E000010E01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF378000006007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDC000003801FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFBF000001C007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000006001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000030007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000018001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000060007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "src/mif/bitmap.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_pix_gen:pixel_gen|bitmap_mem:bitmap_memory|altsyncram:rom_rtl_0|altsyncram_v261:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 174324,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \pixel_gen|en~combout\,
	portaaddr => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a20_PORTADATAOUT_bus\);

-- Location: LCCOMB_X16_Y12_N20
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~6_combout\ = (\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(0) & (\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a21~portadataout\)) # 
-- (!\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(0) & ((\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a20~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(0),
	datac => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a21~portadataout\,
	datad => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a20~portadataout\,
	combout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~6_combout\);

-- Location: M9K_X27_Y14_N0
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a17\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FE00007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FF00001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7F000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FC00001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5C000067FFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000019FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF8000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1C000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000083FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF800000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FF00000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3FE00000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "src/mif/bitmap.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_pix_gen:pixel_gen|bitmap_mem:bitmap_memory|altsyncram:rom_rtl_0|altsyncram_v261:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 174324,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \pixel_gen|en~combout\,
	portaaddr => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a17_PORTADATAOUT_bus\);

-- Location: M9K_X15_Y7_N0
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a16\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0FFE0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFE00000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC03FFE0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003FFC0000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00FFFC0000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFF001FFF8000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8003FFFC00000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0003FFFC00007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80007FFF80003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00007FFFC000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FC00000FFFFC00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000FFFF803FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000001FFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000003FFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000003FFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000001FFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "src/mif/bitmap.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_pix_gen:pixel_gen|bitmap_mem:bitmap_memory|altsyncram:rom_rtl_0|altsyncram_v261:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 174324,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \pixel_gen|en~combout\,
	portaaddr => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: M9K_X15_Y14_N0
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a18\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000007FFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00003FFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80001FFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000FFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80003FFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0001FFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000FFF01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0007FFC07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC003FFE03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFF000FFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC007FF803FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003FFC00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC01FFE003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFF000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFC03FF8003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFC000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFE0007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07FF0001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1FF80003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFC0000F",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "src/mif/bitmap.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_pix_gen:pixel_gen|bitmap_mem:bitmap_memory|altsyncram:rom_rtl_0|altsyncram_v261:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 174324,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \pixel_gen|en~combout\,
	portaaddr => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: M9K_X15_Y9_N0
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a19\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFE0000020001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000180007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000040001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000300007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000300000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000",
	mem_init2 => X"03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000013FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000004FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000001BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000001CFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000003CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000001F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000007FBFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000003FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000FFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "src/mif/bitmap.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_pix_gen:pixel_gen|bitmap_mem:bitmap_memory|altsyncram:rom_rtl_0|altsyncram_v261:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 174324,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \pixel_gen|en~combout\,
	portaaddr => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a19_PORTADATAOUT_bus\);

-- Location: LCCOMB_X16_Y12_N16
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~7_combout\ = (\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(0) & (((\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a19~portadataout\) # 
-- (!\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(1))))) # (!\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(0) & (\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a18~portadataout\ & 
-- (\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a18~portadataout\,
	datab => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(0),
	datac => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(1),
	datad => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a19~portadataout\,
	combout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~7_combout\);

-- Location: LCCOMB_X16_Y12_N10
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~8_combout\ = (\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(1) & (((\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~7_combout\)))) # 
-- (!\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(1) & ((\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~7_combout\ & (\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a17~portadataout\)) # 
-- (!\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~7_combout\ & ((\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a16~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a17~portadataout\,
	datab => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(1),
	datac => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a16~portadataout\,
	datad => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~7_combout\,
	combout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~8_combout\);

-- Location: LCCOMB_X16_Y12_N4
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~9_combout\ = (\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(2) & (!\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(1) & 
-- (\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~6_combout\))) # (!\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(2) & (((\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(1),
	datab => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~6_combout\,
	datac => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(2),
	datad => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~8_combout\,
	combout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~9_combout\);

-- Location: M9K_X27_Y15_N0
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0FF81DE01FFFFFFFF8000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFC001F00007FFFFFFF00FC0E000FFFFFFFFE0000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC03FFC1FFC0001FFFFFFFC00F07003FFFFFFFFF8000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF005FFFFFF7C007FFFFFFE00000001FFFFFFFFFE0000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC01FFFFFFFF003FFFFFFF8000000FFFFFFFFFFFC000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007FFFFFFFF00FFFFFFFE000000FFFFFFFFF",
	mem_init2 => X"FFE0000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC01FFFFFFFFE07FFFFFFF80003FFFFFFFFFFFFF8000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007FFFFFFFFC3FFFFFFFE001EFFFFFFFFFFFFFE0000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC01FFFFFFFFF9FFFFFFFF8007FFFFFFFFFFFFFF8000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007FFFFFFFFE7FFFFFFFFE037FFFFFFFFFFFFFE0000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC01FFFFFFFFF9FFFFFFFFFC1FFFFFFFFFFFFFFF8000001FFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007FFFFFFFFC3FFFFFFFFF8FFFFFFFFFFFFFFFE0000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC01FFFFFFFFF0FFFFFFFFFF3FFFFFFFFFFFFFFFC000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000003FFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "src/mif/bitmap.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_pix_gen:pixel_gen|bitmap_mem:bitmap_memory|altsyncram:rom_rtl_0|altsyncram_v261:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 174324,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \pixel_gen|en~combout\,
	portaaddr => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: M9K_X27_Y10_N0
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFC07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF803FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF801FFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE001FFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFC000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "src/mif/bitmap.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_pix_gen:pixel_gen|bitmap_mem:bitmap_memory|altsyncram:rom_rtl_0|altsyncram_v261:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 174324,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \pixel_gen|en~combout\,
	portaaddr => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: M9K_X27_Y11_N0
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFC01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF001FF301FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8007F8000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE003FE0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF801FFC000",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01FFF0007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFFE003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "src/mif/bitmap.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_pix_gen:pixel_gen|bitmap_mem:bitmap_memory|altsyncram:rom_rtl_0|altsyncram_v261:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 174324,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \pixel_gen|en~combout\,
	portaaddr => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: M9K_X27_Y12_N0
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3FFFC01EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07FFF8003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFC1FC7FF800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE07C0E1FF01FFFFFFFFFFFFFFFFFFFFFFFFFFFFF800003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81E00007F07FFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE07800047F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFF000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81E00000FFE7FFFFFFFFFFFFFFFFFFFFFFFFFFF8000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFE07E003807FC1FFFFFFFFFFFFFFFFFFFFFFFFFFE000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81F801E001F87FFFFFFFFFFFFFFFFFFFFFFFFFF0000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE03E003800000FFFFFFFFFFFFFFFFFFFFFFFFFFC000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FC000001C03FFFFFFFFFFFFFFFFFFFFFFFFFF0000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC03F000030700FFFFFFFFFFFFFFFFFFFFFFFFFF8000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FC000",
	mem_init0 => X"0C1803FFFFFFFFFFFFFFFFFFFFFFFFFE0000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC037800000000FFFFFFFFDFFFFFFFFFFFFFFFFF8000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00DE000000000FFFFFFFE1FFE0D8FFFFFFFFFFE0000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC037C000000F81FFFFFFF01FF800003FFFFFFFF8000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00DF8003FC0007FFFFFFC07FE06F807FFFFFFFE0000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC03FF000FF8001FFFFFFF8",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "src/mif/bitmap.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_pix_gen:pixel_gen|bitmap_mem:bitmap_memory|altsyncram:rom_rtl_0|altsyncram_v261:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 174324,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \pixel_gen|en~combout\,
	portaaddr => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: LCCOMB_X26_Y12_N28
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~4_combout\ = (\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(0) & (((\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a7~portadataout\)) # 
-- (!\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(1)))) # (!\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(0) & (\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(1) & 
-- ((\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a6~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(0),
	datab => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(1),
	datac => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a7~portadataout\,
	datad => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a6~portadataout\,
	combout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~4_combout\);

-- Location: LCCOMB_X26_Y12_N6
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~5_combout\ = (\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(1) & (((\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~4_combout\)))) # 
-- (!\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(1) & ((\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~4_combout\ & (\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a5~portadataout\)) # 
-- (!\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~4_combout\ & ((\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a4~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a5~portadataout\,
	datab => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(1),
	datac => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a4~portadataout\,
	datad => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~4_combout\,
	combout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~5_combout\);

-- Location: LCCOMB_X16_Y12_N8
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~10_combout\ = (\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(4) & (((\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~9_combout\)))) # 
-- (!\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(4) & (\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(2) & ((\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(2),
	datab => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(4),
	datac => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~9_combout\,
	datad => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~5_combout\,
	combout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~10_combout\);

-- Location: M9K_X15_Y11_N0
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFC000037C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000C79FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000001CE77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000FFD8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00003FFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"E000003FFFBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000FFFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000007FFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000FFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800100FFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00003FFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000FF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00007FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0407FF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "src/mif/bitmap.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_pix_gen:pixel_gen|bitmap_mem:bitmap_memory|altsyncram:rom_rtl_0|altsyncram_v261:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 174324,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \pixel_gen|en~combout\,
	portaaddr => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: M9K_X15_Y12_N0
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FC000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFF80000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E0000000007FFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000007FFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000003FFFFC00001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "src/mif/bitmap.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_pix_gen:pixel_gen|bitmap_mem:bitmap_memory|altsyncram:rom_rtl_0|altsyncram_v261:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 174324,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \pixel_gen|en~combout\,
	portaaddr => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: LCCOMB_X14_Y12_N28
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~1_combout\ = (!\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(0) & ((\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(1) & 
-- (\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a14~portadataout\)) # (!\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(1) & ((\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a12~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(1),
	datab => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(0),
	datac => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a14~portadataout\,
	datad => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a12~portadataout\,
	combout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~1_combout\);

-- Location: M9K_X27_Y16_N0
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a15\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81800001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0300001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC02001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00023FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000F30FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800001E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "src/mif/bitmap.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_pix_gen:pixel_gen|bitmap_mem:bitmap_memory|altsyncram:rom_rtl_0|altsyncram_v261:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 174324,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \pixel_gen|en~combout\,
	portaaddr => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a15_PORTADATAOUT_bus\);

-- Location: M9K_X15_Y17_N0
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a13\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0207FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8181FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9003F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE400FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDC03F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD801FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFF0047FFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC037FFF07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01FFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC87FFF801FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF78FFFE003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFDF0FFF000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFC0007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFE0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFF00001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFF000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "src/mif/bitmap.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_pix_gen:pixel_gen|bitmap_mem:bitmap_memory|altsyncram:rom_rtl_0|altsyncram_v261:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 174324,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \pixel_gen|en~combout\,
	portaaddr => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

-- Location: LCCOMB_X16_Y12_N2
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~0_combout\ = (\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(0) & ((\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(1) & 
-- (\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a15~portadataout\)) # (!\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(1) & ((\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a13~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(0),
	datab => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(1),
	datac => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a15~portadataout\,
	datad => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a13~portadataout\,
	combout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y12_N30
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~2_combout\ = (!\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(4) & ((\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~1_combout\) # 
-- ((\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~0_combout\) # (!\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~1_combout\,
	datab => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(2),
	datac => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(4),
	datad => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~0_combout\,
	combout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~2_combout\);

-- Location: M9K_X15_Y16_N0
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a9\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0001FFFFF",
	mem_init1 => X"FFFFE07FFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80001FFFFFFFFC01FFFFFFFFFFFFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80001FFFFFFF8007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF38003FFFFFFE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "src/mif/bitmap.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_pix_gen:pixel_gen|bitmap_mem:bitmap_memory|altsyncram:rom_rtl_0|altsyncram_v261:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 174324,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \pixel_gen|en~combout\,
	portaaddr => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: M9K_X27_Y9_N0
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a11\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000007FFFFF000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0001FFFFFFFE00001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800FFFFFFFFFE00003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE013FFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFF8FF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "src/mif/bitmap.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_pix_gen:pixel_gen|bitmap_mem:bitmap_memory|altsyncram:rom_rtl_0|altsyncram_v261:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 174324,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \pixel_gen|en~combout\,
	portaaddr => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: LCCOMB_X16_Y12_N26
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~0_combout\ = (\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(0) & ((\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(1) & 
-- ((\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a11~portadataout\))) # (!\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(1) & (\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a9~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(0),
	datab => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(1),
	datac => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a9~portadataout\,
	datad => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a11~portadataout\,
	combout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~0_combout\);

-- Location: M9K_X15_Y6_N0
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "src/mif/bitmap.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_pix_gen:pixel_gen|bitmap_mem:bitmap_memory|altsyncram:rom_rtl_0|altsyncram_v261:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 174324,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \pixel_gen|en~combout\,
	portaaddr => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: M9K_X27_Y8_N0
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "src/mif/bitmap.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_pix_gen:pixel_gen|bitmap_mem:bitmap_memory|altsyncram:rom_rtl_0|altsyncram_v261:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 174324,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \pixel_gen|en~combout\,
	portaaddr => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: LCCOMB_X16_Y12_N28
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~1_combout\ = (!\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(0) & ((\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(1) & 
-- ((\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a10~portadataout\))) # (!\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(1) & (\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a8~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(0),
	datab => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(1),
	datac => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a8~portadataout\,
	datad => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a10~portadataout\,
	combout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~1_combout\);

-- Location: LCCOMB_X16_Y12_N22
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~2_combout\ = (\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(3) & ((\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(2)) # 
-- ((\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~0_combout\) # (\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(3),
	datab => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(2),
	datac => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~0_combout\,
	datad => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~1_combout\,
	combout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~2_combout\);

-- Location: M9K_X15_Y15_N0
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000",
	mem_init2 => X"003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB800000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000007FFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000E07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF801FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "src/mif/bitmap.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_pix_gen:pixel_gen|bitmap_mem:bitmap_memory|altsyncram:rom_rtl_0|altsyncram_v261:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 174324,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \pixel_gen|en~combout\,
	portaaddr => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M9K_X27_Y13_N0
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFF00003FFFFFFFFFFFFFFFFFFFFFFFFFFC0000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000FFFFFFFFFFFFFFFFFFFFFFFFFFE0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0001FFFFFFFFFFFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80003FFFFFFFFFFFFFFFFFFFFFFFFF80000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000FFFFFFFFFFFFFFFFFFFFFFFFFC0000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000FFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFE0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80001FFFFFFFFFFFFFFFFFFFFFFFF00000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00003FFFFFFFFFFFFFFFFFFFFFFFC0000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00003FFFFFFFFFFFFFFFFFFFFFFE0000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000001FFFFFFFFFFFFFFFFFFFFFF00000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000001FFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFF80000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000FFFFFFFFFFFFFFFFFFFFC00000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000001FFFFFFFFFFFFFFFFFFFC00000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000001FFFFFFFFFFFFFFFFFFE00000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000003FFFFFFFFFFFFFFFFFE00000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFE00000000FF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000001FFFFFFFFFFFFFFFE000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000001FFFFFFFFFFFFFFE000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000003FFFFFFFFFFFFC000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000003FFFFFFFFFC0000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000003FFFFFFFFC0000000003FFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "src/mif/bitmap.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_pix_gen:pixel_gen|bitmap_mem:bitmap_memory|altsyncram:rom_rtl_0|altsyncram_v261:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 174324,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \pixel_gen|en~combout\,
	portaaddr => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LCCOMB_X16_Y12_N18
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~4_combout\ = (!\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(0) & ((\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(1) & 
-- ((\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a2~portadataout\))) # (!\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(1) & (\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a0~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(1),
	datac => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(0),
	datad => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a2~portadataout\,
	combout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~4_combout\);

-- Location: M9K_X27_Y7_N0
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000001FFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000003FFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00007FFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0001FFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80003FFFFFFFFFFFFFFFFFFFFFFFFFFFF80000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFF80007FFFFFFFFFFFFFFFFFFFFFFFFFFFE00000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0001FFFFFFFFFFFFFFFFFFFFFFFFFFFF80000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0007FFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF00000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0001FFFFFFFFFFFFFFFFFFFFFFFFFFF80000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "src/mif/bitmap.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_pix_gen:pixel_gen|bitmap_mem:bitmap_memory|altsyncram:rom_rtl_0|altsyncram_v261:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 174324,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \pixel_gen|en~combout\,
	portaaddr => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: M9K_X15_Y10_N0
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000FFFFFFFC0000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000003FF8000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFE00000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "src/mif/bitmap.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_pix_gen:pixel_gen|bitmap_mem:bitmap_memory|altsyncram:rom_rtl_0|altsyncram_v261:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 174324,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \pixel_gen|en~combout\,
	portaaddr => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X16_Y12_N24
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~3_combout\ = (\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(0) & ((\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(1) & 
-- (\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a3~portadataout\)) # (!\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(1) & ((\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a1~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(0),
	datab => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(1),
	datac => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a3~portadataout\,
	datad => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|ram_block1a1~portadataout\,
	combout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~3_combout\);

-- Location: LCCOMB_X16_Y12_N0
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~5_combout\ = (!\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(2) & (!\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(3) & 
-- ((\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~4_combout\) # (\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(2),
	datab => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~4_combout\,
	datac => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(3),
	datad => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~3_combout\,
	combout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~5_combout\);

-- Location: LCCOMB_X16_Y12_N6
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~3_combout\ = (\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~2_combout\ & ((\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~2_combout\) # 
-- (\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~2_combout\,
	datac => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~2_combout\,
	datad => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|_~5_combout\,
	combout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~3_combout\);

-- Location: LCCOMB_X16_Y12_N14
\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~11_combout\ = (\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~3_combout\) # ((!\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(3) & 
-- \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|address_reg_a\(3),
	datac => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~10_combout\,
	datad => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~3_combout\,
	combout => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~11_combout\);

-- Location: LCCOMB_X17_Y10_N24
\vga_sync_unit|valid_pixel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|valid_pixel~0_combout\ = (!\vga_sync_unit|v_count_reg\(9) & (((!\vga_sync_unit|h_count_reg\(8) & !\vga_sync_unit|h_count_reg\(7))) # (!\vga_sync_unit|h_count_reg\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_unit|h_count_reg\(8),
	datab => \vga_sync_unit|h_count_reg\(7),
	datac => \vga_sync_unit|h_count_reg\(9),
	datad => \vga_sync_unit|v_count_reg\(9),
	combout => \vga_sync_unit|valid_pixel~0_combout\);

-- Location: LCCOMB_X17_Y10_N4
\vga_sync_unit|valid_pixel~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_unit|valid_pixel~1_combout\ = (\vga_sync_unit|valid_pixel~0_combout\ & (((!\vga_sync_unit|v_count_reg\(5)) # (!\vga_sync_unit|v_count_reg\(6))) # (!\pixel_gen|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_gen|LessThan2~0_combout\,
	datab => \vga_sync_unit|valid_pixel~0_combout\,
	datac => \vga_sync_unit|v_count_reg\(6),
	datad => \vga_sync_unit|v_count_reg\(5),
	combout => \vga_sync_unit|valid_pixel~1_combout\);

-- Location: LCCOMB_X16_Y12_N12
\pixel_gen|rgb_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|rgb_out[0]~0_combout\ = (\vga_sync_unit|valid_pixel~1_combout\ & ((\pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~11_combout\) # (!\pixel_gen|valid_img~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pixel_gen|valid_img~combout\,
	datac => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~11_combout\,
	datad => \vga_sync_unit|valid_pixel~1_combout\,
	combout => \pixel_gen|rgb_out[0]~0_combout\);

-- Location: FF_X16_Y12_N13
\rgb_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pixel_gen|rgb_out[0]~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \vga_sync_unit|mod2_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rgb_reg(0));

-- Location: LCCOMB_X17_Y12_N10
\pixel_gen|rgb_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_gen|rgb_out[1]~1_combout\ = (\vga_sync_unit|valid_pixel~1_combout\ & (\pixel_gen|valid_img~combout\ & \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_unit|valid_pixel~1_combout\,
	datac => \pixel_gen|valid_img~combout\,
	datad => \pixel_gen|bitmap_memory|rom_rtl_0|auto_generated|mux2|result_node[0]~11_combout\,
	combout => \pixel_gen|rgb_out[1]~1_combout\);

-- Location: LCCOMB_X17_Y12_N8
\rgb_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgb_reg[1]~feeder_combout\ = \pixel_gen|rgb_out[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pixel_gen|rgb_out[1]~1_combout\,
	combout => \rgb_reg[1]~feeder_combout\);

-- Location: FF_X17_Y12_N9
\rgb_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rgb_reg[1]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \vga_sync_unit|mod2_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rgb_reg(1));

-- Location: FF_X17_Y12_N11
\rgb_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pixel_gen|rgb_out[1]~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \vga_sync_unit|mod2_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rgb_reg(2));

ww_hsync <= \hsync~output_o\;

ww_vsync <= \vsync~output_o\;

ww_rgb(0) <= \rgb[0]~output_o\;

ww_rgb(1) <= \rgb[1]~output_o\;

ww_rgb(2) <= \rgb[2]~output_o\;
END structure;


