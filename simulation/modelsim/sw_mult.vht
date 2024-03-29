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
-- Generated on "12/06/2022 23:20:29"
                                                            
-- Vhdl Test Bench template for design  :  sw_mult
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY sw_mult_vhd_tst IS
END sw_mult_vhd_tst;
ARCHITECTURE sw_mult_arch OF sw_mult_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC := '1';
SIGNAL data_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL data_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL valid : STD_LOGIC;
COMPONENT sw_mult
	PORT (
	clk : IN STD_LOGIC;
	data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	data_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	valid : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : sw_mult
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	data_in => data_in,
	data_out => data_out,
	valid => valid
	);
clk <= not clk after 1 us;
always : PROCESS                                              
BEGIN                                                         
	data_in <= x"09";
	wait for 5 us;
	data_in <= x"04";
WAIT;                                                        
END PROCESS always;                                          
END sw_mult_arch;
