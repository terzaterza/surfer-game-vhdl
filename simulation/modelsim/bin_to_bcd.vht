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
-- Generated on "12/17/2022 11:03:05"
                                                            
-- Vhdl Test Bench template for design  :  bin_to_bcd
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY bin_to_bcd_vhd_tst IS
END bin_to_bcd_vhd_tst;
ARCHITECTURE bin_to_bcd_arch OF bin_to_bcd_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bcd_out : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL clk : STD_LOGIC := '1';
SIGNAL num_in : natural range 0 to 999;
SIGNAL reset : STD_LOGIC := '1';
COMPONENT bin_to_bcd
	PORT (
	bcd_out : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	clk : IN STD_LOGIC;
	num_in : natural range 0 to 999;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : bin_to_bcd
	PORT MAP (
-- list connections between master ports and signals
	bcd_out => bcd_out,
	clk => clk,
	num_in => num_in,
	reset => reset
	);

clk <= not clk after 1 us;

always : PROCESS                                              
BEGIN                                                         
	wait for 2 us;
	reset <= '0';
	num_in <= 37;
	wait for 100 us;
	num_in <= 9;
	wait for 100 us;
	num_in <= 91;
WAIT;                                                        
END PROCESS always;                                          
END bin_to_bcd_arch;
