-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "12/12/2022 17:16:37"
                                                            
-- Vhdl Test Bench template for design  :  lcg
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lcg_vhd_tst IS
END lcg_vhd_tst;
ARCHITECTURE lcg_arch OF lcg_vhd_tst IS
-- constants
constant clkp : time := 1 us;                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC := '1';
SIGNAL num : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL rst : STD_LOGIC := '1';
COMPONENT lcg
	PORT (
	clk : IN STD_LOGIC;
	num : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : lcg
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	num => num,
	rst => rst
	);

clk <= not clk after clkp / 2;

always : PROCESS                                              
BEGIN                                                         
	wait for clkp;
	rst <= '0';
WAIT;                                                        
END PROCESS always;                                          
END lcg_arch;
