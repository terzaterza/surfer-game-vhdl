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
-- Generated on "12/08/2022 18:34:50"
                                                            
-- Vhdl Test Bench template for design  :  mem_cnt
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

ENTITY mem_cnt_vhd_tst IS
END mem_cnt_vhd_tst;
ARCHITECTURE mem_cnt_arch OF mem_cnt_vhd_tst IS
-- constants
constant CLK_P : time := 1 us;                                                 
-- signals                                                   
SIGNAL add : STD_LOGIC := '0';
SIGNAL clk : STD_LOGIC := '1';
SIGNAL copy : STD_LOGIC := '0';
SIGNAL core_r_addr : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL core_r_data : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL core_w_addr : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL core_w_data : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL core_w_en : STD_LOGIC;
SIGNAL delete : STD_LOGIC := '0';
SIGNAL disp_w_addr : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL disp_w_data : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL disp_w_en : STD_LOGIC;
SIGNAL first : STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL info : STD_LOGIC_VECTOR(13 DOWNTO 0) := "00" & x"da7";
SIGNAL move : STD_LOGIC := '0';
SIGNAL rst : STD_LOGIC := '1';
SIGNAL size : integer range 0 to 16;
SIGNAL speed : integer range 0 to 10 := 4;

type mem_type is array (0 to 15) of std_logic_vector(15 downto 0);
signal core_mem : mem_type;

COMPONENT mem_cnt
	PORT (
	add : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	copy : IN STD_LOGIC;
	core_r_addr : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	core_r_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	core_w_addr : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	core_w_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	core_w_en : OUT STD_LOGIC;
	delete : IN STD_LOGIC;
	disp_w_addr : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	disp_w_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	disp_w_en : OUT STD_LOGIC;
	first : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
	info : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
	move : IN STD_LOGIC;
	rst : IN STD_LOGIC;
	size : OUT integer range 0 to 16;
	speed : integer range 0 to 10
	);
END COMPONENT;
BEGIN
	i1 : mem_cnt
	PORT MAP (
-- list connections between master ports and signals
	add => add,
	clk => clk,
	copy => copy,
	core_r_addr => core_r_addr,
	core_r_data => core_r_data,
	core_w_addr => core_w_addr,
	core_w_data => core_w_data,
	core_w_en => core_w_en,
	delete => delete,
	disp_w_addr => disp_w_addr,
	disp_w_data => disp_w_data,
	disp_w_en => disp_w_en,
	first => first,
	info => info,
	move => move,
	rst => rst,
	size => size,
	speed => speed
	);
clk <= not clk after CLK_P / 2;
always : PROCESS                                              
BEGIN                                                         
	wait for CLK_P;
	rst <= '0';
	add <= '1';
	for i in 0 to 6 loop
		wait for CLK_P;
		info <= info + ("00" & x"b3a");
	end loop;
	add <= '0';
	delete <= '1';
	wait for 3 * CLK_P;
	delete <= '0';
	wait for CLK_P;
	copy <= '1';
	wait for CLK_P;
	copy <= '0';
	wait for 10 * CLK_P;
	move <= '1';
	wait for CLK_P;
	move <= '0';
WAIT;                                                        
END PROCESS always;

core_mem_process : process(clk)
begin
	if rising_edge(clk) then
		if core_w_en='1' then
			core_mem(to_integer(unsigned(core_w_addr))) <= core_w_data;
		end if;
	end if;
end process;
core_r_data <= core_mem(to_integer(unsigned(core_r_addr)));                                          
END mem_cnt_arch;
