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
-- Generated on "12/12/2022 17:03:17"
                                                            
-- Vhdl Test Bench template for design  :  hw_mult
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY hw_mult_vhd_tst IS
END hw_mult_vhd_tst;
ARCHITECTURE hw_mult_arch OF hw_mult_vhd_tst IS
-- constants              
constant clkp : time := 1 us;                                   
-- signals                                                   
SIGNAL clock : STD_LOGIC := '1';
SIGNAL data_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL result : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT hw_mult
	PORT (
	clock : IN STD_LOGIC;
	data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : hw_mult
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	data_in => data_in,
	result => result
	);

clock <= not clock after clkp / 2;

always : PROCESS                                              
BEGIN                                                         
	data_in <= x"34";
	wait for clkp;
	data_in <= x"27";
WAIT;                                                        
END PROCESS always;                                          
END hw_mult_arch;
