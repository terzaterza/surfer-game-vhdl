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
-- Generated on "12/11/2022 17:57:07"
                                                            
-- Vhdl Test Bench template for design  :  surfer
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY surfer_vhd_tst IS
END surfer_vhd_tst;
ARCHITECTURE surfer_arch OF surfer_vhd_tst IS
-- constants                                                 
constant clkp : time := 20 ns;
-- signals                                                   
SIGNAL b_out : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL blank_n : STD_LOGIC;
SIGNAL clk_50MHz : STD_LOGIC := '1';
SIGNAL digit0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL digit1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL down : STD_LOGIC := '0';
SIGNAL g_out : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL h_sync : STD_LOGIC;
SIGNAL lives_leds : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL r_out : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL rst : STD_LOGIC := '1';
SIGNAL sync_n : STD_LOGIC;
SIGNAL up : STD_LOGIC := '0';
SIGNAL v_sync : STD_LOGIC;
SIGNAL vga_clk : STD_LOGIC;
COMPONENT surfer
	PORT (
	b_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	blank_n : OUT STD_LOGIC;
	clk_50MHz : IN STD_LOGIC;
	digit0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	digit1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	down : IN STD_LOGIC;
	g_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	h_sync : OUT STD_LOGIC;
	lives_leds : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	r_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	rst : IN STD_LOGIC;
	sync_n : OUT STD_LOGIC;
	up : IN STD_LOGIC;
	v_sync : OUT STD_LOGIC;
	vga_clk : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : surfer
	PORT MAP (
-- list connections between master ports and signals
	b_out => b_out,
	blank_n => blank_n,
	clk_50MHz => clk_50MHz,
	digit0 => digit0,
	digit1 => digit1,
	down => down,
	g_out => g_out,
	h_sync => h_sync,
	lives_leds => lives_leds,
	r_out => r_out,
	rst => rst,
	sync_n => sync_n,
	up => up,
	v_sync => v_sync,
	vga_clk => vga_clk
	);

clk_50MHz <= not clk_50MHz after clkp / 2;

always : PROCESS                                              
BEGIN                                                         
	wait for 3 * clkp;
	rst <= '0';
WAIT;                                                        
END PROCESS always;                                          
END surfer_arch;
