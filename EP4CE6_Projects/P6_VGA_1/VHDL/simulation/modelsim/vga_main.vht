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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "02/28/2024 20:28:04"
                                                            
-- Vhdl Test Bench template for design  :  vga_main
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;                               

ENTITY vga_main_vhd_tst IS
END vga_main_vhd_tst;

ARCHITECTURE vga_main_arch OF vga_main_vhd_tst IS
	-- constants                                                 
	-- signals                                                   
	SIGNAL clk : STD_LOGIC := '0';
	SIGNAL hsync : STD_LOGIC;
	SIGNAL rgb : STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL rst_n : STD_LOGIC;
	SIGNAL vsync : STD_LOGIC;
	COMPONENT vga_main
		PORT (
		clk : IN STD_LOGIC;
		hsync : BUFFER STD_LOGIC;
		rgb : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
		rst_n : IN STD_LOGIC;
		vsync : BUFFER STD_LOGIC
		);
	END COMPONENT;
BEGIN
	i1 : vga_main
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	hsync => hsync,
	rgb => rgb,
	rst_n => rst_n,
	vsync => vsync
	);

	init : PROCESS                                               
	-- variable declarations                                     
	BEGIN                                                        
			  -- code that executes only once
		rst_n <= '0';
		wait for 20 ns;
		rst_n <= '1';
		wait;                                                       
	END PROCESS init; 
		
	always : PROCESS                                              
	-- optional sensitivity list                                  
	-- (        )                                                 
	-- variable declarations                                      
	BEGIN                                                         
			  -- code executes for every event on sensitivity list
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;                                                       
	END PROCESS always;
	
END vga_main_arch;
