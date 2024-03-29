-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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
-- Generated on "11/24/2019 12:02:29"
                                                            
-- Vhdl Test Bench template for design  :  moving_square
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;    
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;
use std.textio.all;                            

ENTITY display_controller_vhd_tst IS
END display_controller_vhd_tst;
ARCHITECTURE moving_square_arch OF display_controller_vhd_tst IS
-- constants
constant CLK_PERIOD : time := 20 ns  ;
constant VGA_CLK_PERIOD : time := 15.3846 ns  ;                                               
-- signals                                                   
SIGNAL clk_50MHz : STD_LOGIC :='1';
SIGNAL reset : STD_LOGIC := '1';
SIGNAL VGA_B : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL VGA_BLANK_N : STD_LOGIC;
SIGNAL VGA_CLK : STD_LOGIC := '1';
SIGNAL VGA_G : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL VGA_HS : STD_LOGIC;
SIGNAL VGA_R : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL VGA_SYNC_N : STD_LOGIC;
SIGNAL VGA_VS : STD_LOGIC;

type ROM_TYPE is array (0 to 2) of std_logic_vector(15 downto 0);
constant test_rom : ROM_TYPE := (x"0d35", x"0f31", x"3541");

signal mem_addr : std_logic_vector(3 downto 0);
signal mem_data : std_logic_vector(15 downto 0);
signal disp_color : std_logic_vector(23 downto 0);

signal xp, yp : integer;

COMPONENT display_controller
	PORT (
	clk : IN STD_LOGIC;
	disp_color : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
	lane : IN integer range 0 to 2;
	mem_addr : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	mem_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	rst : IN STD_LOGIC;
	size : IN integer range 0 to 16;
	xp : IN integer;
	yp : IN integer
	);
END COMPONENT;

component vga_sync is
	generic (
		-- Default display mode is 1024x768@60Hz
		-- Horizontal line
		H_SYNC	: integer := 136;		-- sync pulse in pixels
		H_BP		: integer := 160;		-- back porch in pixels
		H_FP		: integer := 24;		-- front porch in pixels
		H_DISPLAY: integer := 1024;	-- visible pixels
		-- Vertical line
		V_SYNC	: integer := 6;		-- sync pulse in pixels
		V_BP		: integer := 29;		-- back porch in pixels
		V_FP		: integer := 3;		-- front porch in pixels
		V_DISPLAY: integer := 768		-- visible pixels
	);
	port (
		clk : in std_logic;
		reset : in std_logic;
		hsync, vsync : out std_logic;
		sync_n, blank_n : out std_logic;
		hpos : out integer range 0 to H_DISPLAY - 1;
		vpos : out integer range 0 to V_DISPLAY - 1;
		Rin, Gin, Bin : in std_logic_vector(7 downto 0);
		Rout, Gout, Bout : out std_logic_vector(7 downto 0)
	);
end component;

BEGIN

	disp_i: display_controller
	port map (
	vga_clk, disp_color, 1, mem_addr, mem_data, reset, 2, xp, yp);

	vga_i: vga_sync
	port map (
	vga_clk, reset, vga_hs, vga_vs, vga_sync_n, vga_blank_n, xp, yp,
	disp_color(23 downto 16), disp_color(15 downto 8), disp_color(7 downto 0),
	vga_r, vga_g, vga_b
	);

clk_50MHz <= not clk_50MHz after CLK_PERIOD/2;                                           
vga_clk <= not vga_clk after vga_clk_period/2;                                           
mem_data <= test_rom(to_integer(unsigned(mem_addr)));

process begin
	wait for vga_clk_period;
	reset <= '0';
end process;

process (VGA_CLK)
    file file_pointer: text open WRITE_MODE is "D:\vga_signals.txt";
    variable line_el: line;
begin

    if rising_edge(VGA_CLK) then

        -- Write the time
        --write(line_el, now); -- write the line.
	write(line_el, now/ns); -- write the line.
	write(line_el, string'(" ns:"));-- write the line.

        -- Write the hsync
        write(line_el, string'(" "));
        write(line_el, std_logic(VGA_HS)); -- write the line.

        -- Write the vsync
        write(line_el, string'(" "));
        write(line_el, std_logic(VGA_VS)); -- write the line.

        -- Write the red
        write(line_el, string'(" "));
        write(line_el, std_logic_vector(VGA_R)); -- write the line.

        -- Write the green
        write(line_el, string'(" "));
        write(line_el, std_logic_vector(VGA_G)); -- write the line.

        -- Write the blue
        write(line_el, string'(" "));
        write(line_el, std_logic_vector(VGA_B)); -- write the line.

        writeline(file_pointer, line_el); -- write the contents into the file.

    end if;
end process;
                                        
END moving_square_arch;
