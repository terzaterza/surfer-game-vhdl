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
-- Generated on "12/06/2022 22:57:14"
                                                            
-- Vhdl Test Bench template for design  :  gen_info
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY gen_info_vhd_tst IS
END gen_info_vhd_tst;
ARCHITECTURE gen_info_arch OF gen_info_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC := '1';
SIGNAL info : STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL rst : STD_LOGIC := '1';
COMPONENT gen_info
	PORT (
	clk : IN STD_LOGIC;
	info : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : gen_info
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	info => info,
	rst => rst
	);
clk <= not clk after 1 us;
always : PROCESS                                              
BEGIN                                                         
	wait for 4 us;
	rst <= '0';
WAIT;                                                        
END PROCESS always;                                          
END gen_info_arch;