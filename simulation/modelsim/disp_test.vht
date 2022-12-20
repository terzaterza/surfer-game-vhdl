-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "12/20/2022 20:35:53"
                                                            
-- Vhdl Test Bench template for design  :  disp_test
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;

use ieee.std_logic_textio.all;
use std.textio.all;                                

ENTITY disp_test_vhd_tst IS
END disp_test_vhd_tst;
ARCHITECTURE disp_test_arch OF disp_test_vhd_tst IS
-- constants
constant clkp : time := 20 ns;                                                 
-- signals                                                   
SIGNAL b_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk_50MHz : STD_LOGIC := '1';
SIGNAL g_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL h_sync : STD_LOGIC;
SIGNAL r_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL rst : STD_LOGIC := '1';
SIGNAL v_sync : STD_LOGIC;
SIGNAL vga_clk : STD_LOGIC;
COMPONENT disp_test
	PORT (
	b_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk_50MHz : IN STD_LOGIC;
	g_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	h_sync : OUT STD_LOGIC;
	r_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	rst : IN STD_LOGIC;
	v_sync : OUT STD_LOGIC;
	vga_clk : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : disp_test
	PORT MAP (
-- list connections between master ports and signals
	b_out => b_out,
	clk_50MHz => clk_50MHz,
	g_out => g_out,
	h_sync => h_sync,
	r_out => r_out,
	rst => rst,
	v_sync => v_sync,
	vga_clk => vga_clk
	);

clk_50MHz <= not clk_50MHz after clkp / 2;

always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        wait for 2 * clkp;
	rst <= '0';
WAIT;                                                        
END PROCESS always;

process (vga_clk)
    file file_pointer: text open WRITE_MODE is "D:\vga_signals.txt";
    variable line_el: line;
begin

    if rising_edge(vga_clk) then

        -- Write the time
        --write(line_el, now); -- write the line.
	write(line_el, now/ns); -- write the line.
	write(line_el, string'(" ns:"));-- write the line.

        -- Write the hsync
        write(line_el, string'(" "));
        write(line_el, std_logic(h_sync)); -- write the line.

        -- Write the vsync
        write(line_el, string'(" "));
        write(line_el, std_logic(v_sync)); -- write the line.

        -- Write the red
        write(line_el, string'(" "));
        write(line_el, std_logic_vector(r_out)); -- write the line.

        -- Write the green
        write(line_el, string'(" "));
        write(line_el, std_logic_vector(g_out)); -- write the line.

        -- Write the blue
        write(line_el, string'(" "));
        write(line_el, std_logic_vector(b_out)); -- write the line.

        writeline(file_pointer, line_el); -- write the contents into the file.

    end if;
end process;
                                          
END disp_test_arch;