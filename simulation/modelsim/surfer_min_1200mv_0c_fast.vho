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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "12/18/2022 14:47:00"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	surfer IS
    PORT (
	clk_50MHz : IN std_logic;
	rst : IN std_logic;
	up : IN std_logic;
	down : IN std_logic;
	digit1 : BUFFER std_logic_vector(6 DOWNTO 0);
	digit0 : BUFFER std_logic_vector(6 DOWNTO 0);
	lives_leds : BUFFER std_logic_vector(2 DOWNTO 0);
	vga_clk : BUFFER std_logic;
	h_sync : BUFFER std_logic;
	v_sync : BUFFER std_logic;
	sync_n : BUFFER std_logic;
	blank_n : BUFFER std_logic;
	r_out : BUFFER std_logic_vector(3 DOWNTO 0);
	g_out : BUFFER std_logic_vector(3 DOWNTO 0);
	b_out : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END surfer;

-- Design Ports Information
-- digit1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lives_leds[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lives_leds[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lives_leds[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_clk	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_sync	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v_sync	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sync_n	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blank_n	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[2]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_out[3]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out[3]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[2]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[3]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50MHz	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- up	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- down	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF surfer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50MHz : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_up : std_logic;
SIGNAL ww_down : std_logic;
SIGNAL ww_digit1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_digit0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_lives_leds : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_vga_clk : std_logic;
SIGNAL ww_h_sync : std_logic;
SIGNAL ww_v_sync : std_logic;
SIGNAL ww_sync_n : std_logic;
SIGNAL ww_blank_n : std_logic;
SIGNAL ww_r_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_g_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b_out : std_logic_vector(3 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DISP_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \DISP_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DISP_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DISP_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CORE_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \CORE_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CORE_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CORE_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \VGA_SYNC_I|ref_tick~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \digit1[0]~output_o\ : std_logic;
SIGNAL \digit1[1]~output_o\ : std_logic;
SIGNAL \digit1[2]~output_o\ : std_logic;
SIGNAL \digit1[3]~output_o\ : std_logic;
SIGNAL \digit1[4]~output_o\ : std_logic;
SIGNAL \digit1[5]~output_o\ : std_logic;
SIGNAL \digit1[6]~output_o\ : std_logic;
SIGNAL \digit0[0]~output_o\ : std_logic;
SIGNAL \digit0[1]~output_o\ : std_logic;
SIGNAL \digit0[2]~output_o\ : std_logic;
SIGNAL \digit0[3]~output_o\ : std_logic;
SIGNAL \digit0[4]~output_o\ : std_logic;
SIGNAL \digit0[5]~output_o\ : std_logic;
SIGNAL \digit0[6]~output_o\ : std_logic;
SIGNAL \lives_leds[0]~output_o\ : std_logic;
SIGNAL \lives_leds[1]~output_o\ : std_logic;
SIGNAL \lives_leds[2]~output_o\ : std_logic;
SIGNAL \vga_clk~output_o\ : std_logic;
SIGNAL \h_sync~output_o\ : std_logic;
SIGNAL \v_sync~output_o\ : std_logic;
SIGNAL \sync_n~output_o\ : std_logic;
SIGNAL \blank_n~output_o\ : std_logic;
SIGNAL \r_out[0]~output_o\ : std_logic;
SIGNAL \r_out[1]~output_o\ : std_logic;
SIGNAL \r_out[2]~output_o\ : std_logic;
SIGNAL \r_out[3]~output_o\ : std_logic;
SIGNAL \g_out[0]~output_o\ : std_logic;
SIGNAL \g_out[1]~output_o\ : std_logic;
SIGNAL \g_out[2]~output_o\ : std_logic;
SIGNAL \g_out[3]~output_o\ : std_logic;
SIGNAL \b_out[0]~output_o\ : std_logic;
SIGNAL \b_out[1]~output_o\ : std_logic;
SIGNAL \b_out[2]~output_o\ : std_logic;
SIGNAL \b_out[3]~output_o\ : std_logic;
SIGNAL \clk_50MHz~input_o\ : std_logic;
SIGNAL \clk~0_combout\ : std_logic;
SIGNAL \clk~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \clk~q\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \score[0]~7_combout\ : std_logic;
SIGNAL \s_copy_count[0]~5_combout\ : std_logic;
SIGNAL \s_curr.s_add_elem~0_combout\ : std_logic;
SIGNAL \s_curr.s_add_elem~q\ : std_logic;
SIGNAL \s_curr.s_inc_speed~q\ : std_logic;
SIGNAL \s_curr.s_move~feeder_combout\ : std_logic;
SIGNAL \s_curr.s_move~q\ : std_logic;
SIGNAL \VGA_SYNC_I|h_count[0]~10_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|h_count[6]~23\ : std_logic;
SIGNAL \VGA_SYNC_I|h_count[7]~24_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|h_count[7]~25\ : std_logic;
SIGNAL \VGA_SYNC_I|h_count[8]~26_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|h_count[8]~27\ : std_logic;
SIGNAL \VGA_SYNC_I|h_count[9]~28_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|LessThan0~0_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|ref_tick~2_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|ref_tick~3_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|LessThan0~1_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|h_count[0]~11\ : std_logic;
SIGNAL \VGA_SYNC_I|h_count[1]~12_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|h_count[1]~13\ : std_logic;
SIGNAL \VGA_SYNC_I|h_count[2]~14_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|h_count[2]~15\ : std_logic;
SIGNAL \VGA_SYNC_I|h_count[3]~16_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|h_count[3]~17\ : std_logic;
SIGNAL \VGA_SYNC_I|h_count[4]~18_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|h_count[4]~19\ : std_logic;
SIGNAL \VGA_SYNC_I|h_count[5]~20_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|h_count[5]~21\ : std_logic;
SIGNAL \VGA_SYNC_I|h_count[6]~22_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|ref_tick~4_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|v_count[0]~10_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|v_count[4]~19\ : std_logic;
SIGNAL \VGA_SYNC_I|v_count[5]~20_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|v_count[5]~21\ : std_logic;
SIGNAL \VGA_SYNC_I|v_count[6]~22_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|v_count[6]~23\ : std_logic;
SIGNAL \VGA_SYNC_I|v_count[7]~24_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|v_count[7]~25\ : std_logic;
SIGNAL \VGA_SYNC_I|v_count[8]~26_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|v_count[8]~27\ : std_logic;
SIGNAL \VGA_SYNC_I|v_count[9]~28_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|LessThan1~1_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|LessThan1~0_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|LessThan1~2_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|v_count[0]~11\ : std_logic;
SIGNAL \VGA_SYNC_I|v_count[1]~12_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|v_count[1]~13\ : std_logic;
SIGNAL \VGA_SYNC_I|v_count[2]~14_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|v_count[2]~15\ : std_logic;
SIGNAL \VGA_SYNC_I|v_count[3]~16_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|v_count[3]~17\ : std_logic;
SIGNAL \VGA_SYNC_I|v_count[4]~18_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|ref_tick~5_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|ref_tick~6_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|ref_tick~0_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|ref_tick~1_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|ref_tick~combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \s_curr.s_wait_ref~q\ : std_logic;
SIGNAL \s_next.s_burst_cpy~0_combout\ : std_logic;
SIGNAL \s_curr.s_burst_cpy~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \s_curr.s_wait_cpy~q\ : std_logic;
SIGNAL \s_copy_count[0]~6\ : std_logic;
SIGNAL \s_copy_count[1]~7_combout\ : std_logic;
SIGNAL \s_copy_count[1]~8\ : std_logic;
SIGNAL \s_copy_count[2]~9_combout\ : std_logic;
SIGNAL \s_copy_count[2]~10\ : std_logic;
SIGNAL \s_copy_count[3]~11_combout\ : std_logic;
SIGNAL \s_copy_count[3]~12\ : std_logic;
SIGNAL \s_copy_count[4]~13_combout\ : std_logic;
SIGNAL \s_next.s_coll_check~0_combout\ : std_logic;
SIGNAL \s_next.s_coll_check~1_combout\ : std_logic;
SIGNAL \s_curr.s_coll_check~q\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|Add0~0_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|ref_tick~clkctrl_outclk\ : std_logic;
SIGNAL \GEN_INFO_I|LFSR_I|s_curr[4]~feeder_combout\ : std_logic;
SIGNAL \GEN_INFO_I|LFSR_I|s_curr[2]~feeder_combout\ : std_logic;
SIGNAL \GEN_INFO_I|LFSR_I|s_curr[0]~0_combout\ : std_logic;
SIGNAL \GEN_INFO_I|LFSR_I|feedback~0_combout\ : std_logic;
SIGNAL \GEN_INFO_I|LFSR_I|s_curr[6]~feeder_combout\ : std_logic;
SIGNAL \GEN_INFO_I|Add0~1\ : std_logic;
SIGNAL \GEN_INFO_I|Add0~3\ : std_logic;
SIGNAL \GEN_INFO_I|Add0~5\ : std_logic;
SIGNAL \GEN_INFO_I|Add0~7\ : std_logic;
SIGNAL \GEN_INFO_I|Add0~8_combout\ : std_logic;
SIGNAL \COLLISION_CONTROLLER_I|Equal0~0_combout\ : std_logic;
SIGNAL \COLLISION_CONTROLLER_I|Equal0~1_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|SET_BURST~0_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|burst_count[0]~5_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|burst_count~7_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|burst_count[0]~6\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|burst_count[1]~8_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|LessThan1~0_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|burst_count[1]~9\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|burst_count[2]~10_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|LessThan1~1_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|burst_count[2]~11\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|burst_count[3]~12_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|Add1~0_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|LessThan1~2_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|burst_count[3]~13\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|burst_count[4]~14_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|LessThan1~3_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|burst_state~0_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|burst_state~q\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_w_data~11_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|queue_head[1]~1_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_w_addr[0]~5\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_w_addr[1]~6_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|Add6~1\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|Add6~2_combout\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|iter[0]~8_combout\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|tick~0_combout\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|iter[0]~9\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|iter[1]~10_combout\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|iter[1]~11\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|iter[2]~12_combout\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|iter[2]~13\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|iter[3]~14_combout\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|iter[3]~15\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|iter[4]~16_combout\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|iter[4]~17\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|iter[5]~18_combout\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|iter[5]~19\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|iter[6]~20_combout\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|iter[6]~21\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|iter[7]~22_combout\ : std_logic;
SIGNAL \update_speed~0_combout\ : std_logic;
SIGNAL \update_speed~1_combout\ : std_logic;
SIGNAL \speed~3_combout\ : std_logic;
SIGNAL \speed[1]~2_combout\ : std_logic;
SIGNAL \GEN_INFO_I|Add0~6_combout\ : std_logic;
SIGNAL \GEN_INFO_I|Add0~4_combout\ : std_logic;
SIGNAL \GEN_INFO_I|Add1~1\ : std_logic;
SIGNAL \GEN_INFO_I|Add1~3\ : std_logic;
SIGNAL \GEN_INFO_I|Add1~4_combout\ : std_logic;
SIGNAL \GEN_INFO_I|count_to[6]~0_combout\ : std_logic;
SIGNAL \GEN_INFO_I|set_count_to~0_combout\ : std_logic;
SIGNAL \GEN_INFO_I|Add1~2_combout\ : std_logic;
SIGNAL \GEN_INFO_I|Add1~0_combout\ : std_logic;
SIGNAL \GEN_INFO_I|count_to[4]~1_combout\ : std_logic;
SIGNAL \GEN_INFO_I|Add0~2_combout\ : std_logic;
SIGNAL \GEN_INFO_I|count_to[3]~2_combout\ : std_logic;
SIGNAL \GEN_INFO_I|Add0~0_combout\ : std_logic;
SIGNAL \GEN_INFO_I|count_to[0]~3_combout\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|Add0~1\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|Add0~3\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|Add0~5\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|Add0~7\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|Add0~9\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|Add0~11\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|Add0~13\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|Add0~14_combout\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|Add0~12_combout\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|Add0~10_combout\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|Add0~8_combout\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|Add0~6_combout\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|Add0~4_combout\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|Add0~2_combout\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|Add0~0_combout\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|LessThan0~1_cout\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|LessThan0~3_cout\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|LessThan0~5_cout\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|LessThan0~7_cout\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|LessThan0~9_cout\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|LessThan0~11_cout\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|LessThan0~13_cout\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|LessThan0~14_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|WRITE_CORE~0_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|WRITE_CORE~1_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|queue_head[2]~2_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|queue_head[2]~3_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_w_addr[1]~7\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_w_addr[2]~8_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|Add6~3\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|Add6~4_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|queue_head[3]~4_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_w_addr[2]~9\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_w_addr[3]~10_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|Add6~5\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|Add6~6_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|Add6~0_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_r_addr[0]~0_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_r_addr[1]~1_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|Add4~0_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_r_addr[2]~2_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|Add4~1_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_r_addr[3]~3_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_w_data[3]~13\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_w_data[4]~15\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_w_data[5]~17\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_w_data[6]~19\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_w_data[7]~21\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_w_data[8]~23\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_w_data[9]~26_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_w_data[9]~27\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_w_data[10]~29\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_w_data[11]~31\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_w_data[12]~33\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_w_data[13]~34_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_w_data[12]~32_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_w_data[11]~30_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_w_data[10]~28_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_w_data[8]~22_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_w_data[7]~20_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_w_data[6]~18_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_w_data[5]~16_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_w_data[4]~14_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_w_data[3]~12_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_w_data~24_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_w_data~25_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|SET_FIRST~0_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|first~11_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|first[1]~16_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|first[1]~3_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|first~10_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|first~7_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|first~4_combout\ : std_logic;
SIGNAL \COLLISION_CONTROLLER_I|hit_process~3_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|first~9_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|first~8_combout\ : std_logic;
SIGNAL \COLLISION_CONTROLLER_I|hit_process~1_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|first~6_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|first~5_combout\ : std_logic;
SIGNAL \up~input_o\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[0]~20_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~4_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|Selector1~0_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|Selector1~1_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|s_curr.s1~q\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|Selector0~0_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|s_curr.s0~q\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|tick~0_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[0]~21\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[1]~22_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[1]~23\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[2]~24_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[2]~25\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[3]~26_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[3]~27\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[4]~28_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[4]~29\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[5]~30_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[5]~31\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[6]~32_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[6]~33\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[7]~34_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[7]~35\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[8]~36_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[8]~37\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[9]~38_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[9]~39\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[10]~40_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[10]~41\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[11]~42_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[11]~43\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[12]~44_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[12]~45\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[13]~46_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[13]~47\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[14]~48_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[14]~49\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[15]~50_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[15]~51\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[16]~52_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[16]~53\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[17]~54_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[17]~55\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[18]~56_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[18]~57\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[19]~58_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~5_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|Selector2~0_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|s_curr.s2~q\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|s_next.s3~0_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D0|s_curr.s3~q\ : std_logic;
SIGNAL \down~input_o\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[0]~20_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~4_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|Selector1~0_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|Selector1~1_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|s_curr.s1~q\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|Selector0~0_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|s_curr.s0~q\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|tick~0_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[0]~21\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[1]~22_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[1]~23\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[2]~24_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[2]~25\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[3]~26_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[3]~27\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[4]~28_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[4]~29\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[5]~30_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[5]~31\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[6]~32_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[6]~33\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[7]~34_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[7]~35\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[8]~36_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[8]~37\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[9]~38_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[9]~39\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[10]~40_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[10]~41\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[11]~42_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[11]~43\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[12]~44_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[12]~45\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[13]~46_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[13]~47\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[14]~48_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[14]~49\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[15]~50_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[15]~51\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[16]~52_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[16]~53\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[17]~54_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[17]~55\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[18]~56_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[18]~57\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[19]~58_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~5_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|Selector2~0_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|s_curr.s2~q\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|s_next.s3~0_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|D1|s_curr.s3~q\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|curr_lane[1]~1_combout\ : std_logic;
SIGNAL \PLAYER_CONTROLLER_I|curr_lane~0_combout\ : std_logic;
SIGNAL \COLLISION_CONTROLLER_I|hit_process~0_combout\ : std_logic;
SIGNAL \COLLISION_CONTROLLER_I|hit_process~2_combout\ : std_logic;
SIGNAL \COLLISION_CONTROLLER_I|hit_process~5_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|ADD_DELETE~1_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|queue_head[0]~0_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_w_addr[0]~4_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|first~2_combout\ : std_logic;
SIGNAL \speed[2]~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \speed[2]~1_combout\ : std_logic;
SIGNAL \GEN_INFO_I|Add1~5\ : std_logic;
SIGNAL \GEN_INFO_I|Add1~6_combout\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|Add0~15\ : std_logic;
SIGNAL \GEN_INFO_I|CNT_I|Add0~16_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|ADD_DELETE~0_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|queue_size[0]~4_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|queue_size[4]~5_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|queue_size[4]~6_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|Add0~1\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|Add0~2_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|Add1~2_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|queue_size[1]~3_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|Add1~1_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|Add0~3\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|Add0~4_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|queue_size[2]~2_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|Add0~5\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|Add0~6_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|queue_size[3]~1_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|Add0~7\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|Add0~8_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|Add1~3_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|queue_size[4]~0_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|burst_mode~0_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|burst_mode~q\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_w_en~0_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_w_en~1_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|core_w_en~q\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|first~15_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|first~13_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|first~14_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|first~12_combout\ : std_logic;
SIGNAL \COLLISION_CONTROLLER_I|hit_process~4_combout\ : std_logic;
SIGNAL \update_score~0_combout\ : std_logic;
SIGNAL \lives[1]~2_combout\ : std_logic;
SIGNAL \lives[0]~4_combout\ : std_logic;
SIGNAL \lives[1]~3_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \score[4]~11_combout\ : std_logic;
SIGNAL \score[0]~8\ : std_logic;
SIGNAL \score[1]~9_combout\ : std_logic;
SIGNAL \score[1]~10\ : std_logic;
SIGNAL \score[2]~12_combout\ : std_logic;
SIGNAL \score[2]~13\ : std_logic;
SIGNAL \score[3]~14_combout\ : std_logic;
SIGNAL \score[3]~15\ : std_logic;
SIGNAL \score[4]~16_combout\ : std_logic;
SIGNAL \score[4]~17\ : std_logic;
SIGNAL \score[5]~18_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|bin_in_reg~5_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|bin_in_reg~4_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|Equal0~2_combout\ : std_logic;
SIGNAL \score[5]~19\ : std_logic;
SIGNAL \score[6]~20_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|bin_in_reg~6_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|Equal0~3_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|bin_in_reg~0_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|bin_in_reg~1_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|Equal0~0_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|bin_in_reg~3_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|bin_in_reg~2_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|Equal0~1_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|Equal0~4_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|shift_cnt~2_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|Add0~0_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|shift_cnt~0_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|state_reg~7_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|state_reg.stShift~q\ : std_logic;
SIGNAL \BIN_TO_BCD_I|state_reg~6_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|state_reg.stCorrection~q\ : std_logic;
SIGNAL \BIN_TO_BCD_I|shift_cnt[2]~1_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|shift_cnt~3_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|Selector0~0_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|state_reg~5_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|state_reg.stIdle~q\ : std_logic;
SIGNAL \BIN_TO_BCD_I|bcd_out[7]~1_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|Selector21~0_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|Selector21~1_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|shift_reg~23_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|shift_reg[6]~18_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|shift_reg~22_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|shift_reg~21_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|shift_reg~20_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|shift_reg~19_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|shift_reg~17_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|Selector14~0_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|Selector14~1_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|shift_reg~9_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|shift_reg~12_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|shift_reg[10]~13_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|shift_reg[10]~14_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|shift_reg[9]~10_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|shift_reg[14]~1_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|shift_reg[9]~11_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|Add3~0_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|shift_reg[11]~15_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|shift_reg[11]~16_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|shift_reg~0_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|Add2~0_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|shift_reg[15]~7_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|shift_reg[15]~8_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|shift_reg[14]~2_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|shift_reg[14]~3_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|shift_reg~4_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|shift_reg[14]~5_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|shift_reg[14]~6_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|bcd_out~3_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|bcd_out~0_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|bcd_out~4_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|bcd_out~2_combout\ : std_logic;
SIGNAL \SEG1_I|Mux6~0_combout\ : std_logic;
SIGNAL \SEG1_I|Mux5~0_combout\ : std_logic;
SIGNAL \SEG1_I|Mux4~0_combout\ : std_logic;
SIGNAL \SEG1_I|Mux3~0_combout\ : std_logic;
SIGNAL \SEG1_I|Mux2~0_combout\ : std_logic;
SIGNAL \SEG1_I|Mux1~0_combout\ : std_logic;
SIGNAL \SEG1_I|Mux0~0_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|bcd_out~6_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|bcd_out~7_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|bcd_out~8_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|bcd_out~5_combout\ : std_logic;
SIGNAL \SEG2_I|Mux6~0_combout\ : std_logic;
SIGNAL \SEG2_I|Mux5~0_combout\ : std_logic;
SIGNAL \SEG2_I|Mux4~0_combout\ : std_logic;
SIGNAL \SEG2_I|Mux3~0_combout\ : std_logic;
SIGNAL \SEG2_I|Mux2~0_combout\ : std_logic;
SIGNAL \SEG2_I|Mux1~0_combout\ : std_logic;
SIGNAL \SEG2_I|Mux0~0_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|process_0~0_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|process_0~1_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|process_0~2_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|hsync~q\ : std_logic;
SIGNAL \VGA_SYNC_I|process_0~3_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|process_0~4_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|vsync~q\ : std_logic;
SIGNAL \VGA_SYNC_I|vpos[8]~feeder_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|LessThan7~0_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|draw~12_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|vpos[7]~feeder_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|draw~11_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|draw~13_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|LessThan6~0_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Equal0~0_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|vpos[6]~feeder_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|draw~5_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|draw~6_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|draw~7_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|draw~8_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|draw~9_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|draw~10_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|draw~2_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|draw~3_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|draw~4_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|draw~14_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|WRITE_DISP~0_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|disp_w_en~q\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|disp_w_addr[0]~feeder_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|disp_w_addr[1]~feeder_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|disp_w_addr[3]~feeder_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Equal0~2_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Equal0~1_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|mem_size[4]~feeder_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|lookup~3_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|disp_w_data[2]~feeder_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|disp_w_data[3]~feeder_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|disp_w_data[4]~feeder_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|disp_w_data[5]~feeder_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|disp_w_data[6]~feeder_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|disp_w_data[7]~feeder_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|disp_w_data[8]~feeder_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|disp_w_data[9]~feeder_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|disp_w_data[10]~feeder_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|disp_w_data[11]~feeder_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|disp_w_data[12]~feeder_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|disp_w_data[13]~feeder_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add12~1\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add12~3\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add12~5\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add12~7\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add12~9\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add12~11\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add12~13\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add12~14_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add12~12_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add12~10_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add12~8_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add12~6_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add12~4_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add12~2_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add12~0_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|LessThan6~1_cout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|LessThan6~3_cout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|LessThan6~5_cout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|LessThan6~7_cout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|LessThan6~9_cout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|LessThan6~11_cout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|LessThan6~13_cout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|LessThan6~15_cout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|LessThan6~17_cout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|LessThan6~18_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|LessThan10~0_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|wait_read[0]~0_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|wait_read[1]~1_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|lookup[0]~1_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|lookup[0]~2_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|lookup~4_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add13~0_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|lookup[3]~5_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|mem_size[2]~feeder_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|mem_size[1]~feeder_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|LessThan9~0_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|LessThan9~1_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|mem_size[3]~feeder_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|LessThan9~2_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|update_lookup~0_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|lookup~0_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|LessThan4~0_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|LessThan4~1_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|LessThan7~0_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|LessThan7~2_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|LessThan7~1_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|LessThan7~3_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|rom_select[1]~0_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|draw~20_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|draw~16_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|draw~15_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|draw~17_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|draw~18_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|LessThan5~1_cout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|LessThan5~3_cout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|LessThan5~5_cout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|LessThan5~7_cout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|LessThan5~9_cout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|LessThan5~11_cout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|LessThan5~13_cout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|LessThan5~15_cout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|LessThan5~17_cout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|LessThan5~18_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|draw~19_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|rom_select[1]~1_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|rom_select[1]~2_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add8~0_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|rom_addr_vec[0]~0_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add8~1\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add8~2_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add2~0_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|rom_addr_vec[1]~1_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add2~1\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add2~2_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add8~3\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add8~4_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|rom_addr_vec[2]~2_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add2~3\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add2~4_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add8~5\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add8~6_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|rom_addr_vec[3]~3_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add2~5\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add2~6_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add5~0_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add8~7\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add8~8_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add11~0_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add5~2_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add8~9\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add8~10_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add10~0_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add11~1\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add11~2_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add4~0_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add2~7\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add2~8_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add5~1\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add5~3_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add5~5_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add4~1\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add4~2_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add5~4\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add5~6_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add10~1\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add10~2_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add11~3\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add11~4_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add5~8_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add3~0_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add4~3\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add4~4_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add5~7\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add5~9_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add9~0_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add10~3\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add10~4_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add11~5\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add11~6_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add5~11_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add3~1_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add4~5\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add4~6_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add5~10\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add5~12_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add9~1_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add10~5\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add10~6_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add11~7\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add11~8_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add5~14_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add3~2_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add3~3_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add4~7\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add4~8_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add5~13\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add5~15_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add9~2_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add9~3_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add10~7\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add10~8_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add11~9\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add11~10_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add5~17_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add4~9\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add4~10_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add5~16\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add5~18_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add10~9\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add10~10_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add11~11\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add11~12_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add5~20_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add4~11\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add4~12_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add5~19\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add5~21_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add10~11\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add10~12_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add11~13\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add11~14_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Add5~23_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Mux3~0_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Mux3~1_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Mux0~0_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Mux0~1_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Mux1~0_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Mux1~1_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Mux2~0_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Mux2~1_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Equal2~0_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Mux6~0_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Mux6~1_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Mux11~0_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Mux11~1_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Mux4~0_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Mux4~1_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Mux5~0_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Mux5~1_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Equal2~1_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Mux12~0_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Mux12~1_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Mux7~0_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Mux7~1_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Mux13~0_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Mux13~1_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Mux14~0_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Mux14~1_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Equal2~2_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|Equal2~3_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|process_0~5_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|disp_ena~feeder_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|disp_ena~q\ : std_logic;
SIGNAL \VGA_SYNC_I|Bout[7]~0_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|Rout[4]~0_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|Rout[5]~1_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|Rout[6]~2_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|Rout[7]~3_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|Gout[4]~0_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|Gout[5]~1_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|Gout[6]~2_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|Gout[7]~3_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|Bout[4]~1_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|Bout[5]~2_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|Bout[6]~3_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|Bout[7]~4_combout\ : std_logic;
SIGNAL \DISP_MEM_I|altsyncram_component|auto_generated|q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\ : std_logic_vector(19 DOWNTO 0);
SIGNAL speed : std_logic_vector(2 DOWNTO 0);
SIGNAL score : std_logic_vector(6 DOWNTO 0);
SIGNAL s_copy_count : std_logic_vector(4 DOWNTO 0);
SIGNAL lives : std_logic_vector(1 DOWNTO 0);
SIGNAL \CORE_MEM_I|altsyncram_component|auto_generated|q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \GEN_INFO_I|count_to\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \GEN_INFO_I|LFSR_I|s_curr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \GEN_INFO_I|CNT_I|iter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MEM_CONTROLLER_I|queue_size\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \MEM_CONTROLLER_I|queue_head\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MEM_CONTROLLER_I|first\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \MEM_CONTROLLER_I|disp_w_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \MEM_CONTROLLER_I|disp_w_addr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MEM_CONTROLLER_I|core_w_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \MEM_CONTROLLER_I|core_w_addr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MEM_CONTROLLER_I|burst_count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \PLAYER_CONTROLLER_I|curr_lane\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \BIN_TO_BCD_I|bin_in_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGA_SYNC_I|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \BIN_TO_BCD_I|shift_reg\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \VGA_SYNC_I|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|wait_read\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \VGA_SYNC_I|hpos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_SYNC_I|vpos\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|lookup\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|mem_size\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \BIN_TO_BCD_I|bcd_out\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \BIN_TO_BCD_I|shift_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|ALT_INV_WRITE_CORE~1_combout\ : std_logic;
SIGNAL \DISPLAY_CONTROLLER_I|ALT_INV_lookup[0]~2_combout\ : std_logic;
SIGNAL \MEM_CONTROLLER_I|ALT_INV_burst_state~q\ : std_logic;
SIGNAL \ALT_INV_s_curr.s_wait_cpy~q\ : std_logic;
SIGNAL \BIN_TO_BCD_I|ALT_INV_shift_reg[9]~11_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|ALT_INV_shift_reg[14]~3_combout\ : std_logic;
SIGNAL \BIN_TO_BCD_I|ALT_INV_bcd_out[7]~1_combout\ : std_logic;
SIGNAL \VGA_SYNC_I|ALT_INV_vsync~q\ : std_logic;
SIGNAL \VGA_SYNC_I|ALT_INV_hsync~q\ : std_logic;
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL ALT_INV_lives : std_logic_vector(1 DOWNTO 1);
SIGNAL \SEG2_I|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \SEG1_I|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_clk_50MHz <= clk_50MHz;
ww_rst <= rst;
ww_up <= up;
ww_down <= down;
digit1 <= ww_digit1;
digit0 <= ww_digit0;
lives_leds <= ww_lives_leds;
vga_clk <= ww_vga_clk;
h_sync <= ww_h_sync;
v_sync <= ww_v_sync;
sync_n <= ww_sync_n;
blank_n <= ww_blank_n;
r_out <= ww_r_out;
g_out <= ww_g_out;
b_out <= ww_b_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\DISPLAY_CONTROLLER_I|Add5~23_combout\ & \DISPLAY_CONTROLLER_I|Add5~20_combout\ & \DISPLAY_CONTROLLER_I|Add5~17_combout\ & 
\DISPLAY_CONTROLLER_I|Add5~14_combout\ & \DISPLAY_CONTROLLER_I|Add5~11_combout\ & \DISPLAY_CONTROLLER_I|Add5~8_combout\ & \DISPLAY_CONTROLLER_I|Add5~5_combout\ & \DISPLAY_CONTROLLER_I|Add5~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[3]~3_combout\ & 
\DISPLAY_CONTROLLER_I|rom_addr_vec[2]~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[1]~1_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[0]~0_combout\);

\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(8) <= \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(8) <= \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);

\DISP_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \MEM_CONTROLLER_I|disp_w_data\(13) & 
\MEM_CONTROLLER_I|disp_w_data\(12) & \MEM_CONTROLLER_I|disp_w_data\(11) & \MEM_CONTROLLER_I|disp_w_data\(10) & \MEM_CONTROLLER_I|disp_w_data\(9) & \MEM_CONTROLLER_I|disp_w_data\(8) & \MEM_CONTROLLER_I|disp_w_data\(7) & 
\MEM_CONTROLLER_I|disp_w_data\(6) & \MEM_CONTROLLER_I|disp_w_data\(5) & \MEM_CONTROLLER_I|disp_w_data\(4) & \MEM_CONTROLLER_I|disp_w_data\(3) & \MEM_CONTROLLER_I|disp_w_data\(2) & \MEM_CONTROLLER_I|disp_w_data\(1) & 
\MEM_CONTROLLER_I|disp_w_data\(0));

\DISP_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\MEM_CONTROLLER_I|disp_w_addr\(3) & \MEM_CONTROLLER_I|disp_w_addr\(2) & \MEM_CONTROLLER_I|disp_w_addr\(1) & \MEM_CONTROLLER_I|disp_w_addr\(0));

\DISP_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\DISPLAY_CONTROLLER_I|lookup\(3) & \DISPLAY_CONTROLLER_I|lookup\(2) & \DISPLAY_CONTROLLER_I|lookup\(1) & \DISPLAY_CONTROLLER_I|lookup\(0));

\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(0) <= \DISP_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(1) <= \DISP_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(2) <= \DISP_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(3) <= \DISP_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(4) <= \DISP_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(5) <= \DISP_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(6) <= \DISP_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(7) <= \DISP_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(8) <= \DISP_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(9) <= \DISP_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(10) <= \DISP_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(11) <= \DISP_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(12) <= \DISP_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(13) <= \DISP_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);

\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\DISPLAY_CONTROLLER_I|Add5~23_combout\ & \DISPLAY_CONTROLLER_I|Add5~20_combout\ & \DISPLAY_CONTROLLER_I|Add5~17_combout\ & 
\DISPLAY_CONTROLLER_I|Add5~14_combout\ & \DISPLAY_CONTROLLER_I|Add5~11_combout\ & \DISPLAY_CONTROLLER_I|Add5~8_combout\ & \DISPLAY_CONTROLLER_I|Add5~5_combout\ & \DISPLAY_CONTROLLER_I|Add5~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[3]~3_combout\ & 
\DISPLAY_CONTROLLER_I|rom_addr_vec[2]~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[1]~1_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[0]~0_combout\);

\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(11) <= \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);
\DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(8) <= \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(1);

\DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\DISPLAY_CONTROLLER_I|Add5~23_combout\ & \DISPLAY_CONTROLLER_I|Add5~20_combout\ & \DISPLAY_CONTROLLER_I|Add5~17_combout\ & 
\DISPLAY_CONTROLLER_I|Add5~14_combout\ & \DISPLAY_CONTROLLER_I|Add5~11_combout\ & \DISPLAY_CONTROLLER_I|Add5~8_combout\ & \DISPLAY_CONTROLLER_I|Add5~5_combout\ & \DISPLAY_CONTROLLER_I|Add5~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[3]~3_combout\ & 
\DISPLAY_CONTROLLER_I|rom_addr_vec[2]~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[1]~1_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[0]~0_combout\);

\DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(11) <= \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);
\DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(11) <= \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(1);

\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\DISPLAY_CONTROLLER_I|Add5~23_combout\ & \DISPLAY_CONTROLLER_I|Add5~20_combout\ & \DISPLAY_CONTROLLER_I|Add5~17_combout\ & 
\DISPLAY_CONTROLLER_I|Add5~14_combout\ & \DISPLAY_CONTROLLER_I|Add5~11_combout\ & \DISPLAY_CONTROLLER_I|Add5~8_combout\ & \DISPLAY_CONTROLLER_I|Add5~5_combout\ & \DISPLAY_CONTROLLER_I|Add5~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[3]~3_combout\ & 
\DISPLAY_CONTROLLER_I|rom_addr_vec[2]~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[1]~1_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[0]~0_combout\);

\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(10) <= \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);
\DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(10) <= \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(1);

\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\DISPLAY_CONTROLLER_I|Add5~23_combout\ & \DISPLAY_CONTROLLER_I|Add5~20_combout\ & \DISPLAY_CONTROLLER_I|Add5~17_combout\ & 
\DISPLAY_CONTROLLER_I|Add5~14_combout\ & \DISPLAY_CONTROLLER_I|Add5~11_combout\ & \DISPLAY_CONTROLLER_I|Add5~8_combout\ & \DISPLAY_CONTROLLER_I|Add5~5_combout\ & \DISPLAY_CONTROLLER_I|Add5~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[3]~3_combout\ & 
\DISPLAY_CONTROLLER_I|rom_addr_vec[2]~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[1]~1_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[0]~0_combout\);

\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(9) <= \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);
\DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(10) <= \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(1);

\DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\DISPLAY_CONTROLLER_I|Add5~23_combout\ & \DISPLAY_CONTROLLER_I|Add5~20_combout\ & \DISPLAY_CONTROLLER_I|Add5~17_combout\ & 
\DISPLAY_CONTROLLER_I|Add5~14_combout\ & \DISPLAY_CONTROLLER_I|Add5~11_combout\ & \DISPLAY_CONTROLLER_I|Add5~8_combout\ & \DISPLAY_CONTROLLER_I|Add5~5_combout\ & \DISPLAY_CONTROLLER_I|Add5~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[3]~3_combout\ & 
\DISPLAY_CONTROLLER_I|rom_addr_vec[2]~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[1]~1_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[0]~0_combout\);

\DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(9) <= \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);
\DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(9) <= \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(1);

\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\DISPLAY_CONTROLLER_I|Add5~23_combout\ & \DISPLAY_CONTROLLER_I|Add5~20_combout\ & \DISPLAY_CONTROLLER_I|Add5~17_combout\ & 
\DISPLAY_CONTROLLER_I|Add5~14_combout\ & \DISPLAY_CONTROLLER_I|Add5~11_combout\ & \DISPLAY_CONTROLLER_I|Add5~8_combout\ & \DISPLAY_CONTROLLER_I|Add5~5_combout\ & \DISPLAY_CONTROLLER_I|Add5~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[3]~3_combout\ & 
\DISPLAY_CONTROLLER_I|rom_addr_vec[2]~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[1]~1_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[0]~0_combout\);

\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(7) <= \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);
\DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(7) <= \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(1);

\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\DISPLAY_CONTROLLER_I|Add5~23_combout\ & \DISPLAY_CONTROLLER_I|Add5~20_combout\ & \DISPLAY_CONTROLLER_I|Add5~17_combout\ & 
\DISPLAY_CONTROLLER_I|Add5~14_combout\ & \DISPLAY_CONTROLLER_I|Add5~11_combout\ & \DISPLAY_CONTROLLER_I|Add5~8_combout\ & \DISPLAY_CONTROLLER_I|Add5~5_combout\ & \DISPLAY_CONTROLLER_I|Add5~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[3]~3_combout\ & 
\DISPLAY_CONTROLLER_I|rom_addr_vec[2]~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[1]~1_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[0]~0_combout\);

\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(6) <= \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(7) <= \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);

\DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\DISPLAY_CONTROLLER_I|Add5~23_combout\ & \DISPLAY_CONTROLLER_I|Add5~20_combout\ & \DISPLAY_CONTROLLER_I|Add5~17_combout\ & 
\DISPLAY_CONTROLLER_I|Add5~14_combout\ & \DISPLAY_CONTROLLER_I|Add5~11_combout\ & \DISPLAY_CONTROLLER_I|Add5~8_combout\ & \DISPLAY_CONTROLLER_I|Add5~5_combout\ & \DISPLAY_CONTROLLER_I|Add5~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[3]~3_combout\ & 
\DISPLAY_CONTROLLER_I|rom_addr_vec[2]~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[1]~1_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[0]~0_combout\);

\DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(6) <= \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(6) <= \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);

\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\DISPLAY_CONTROLLER_I|Add5~23_combout\ & \DISPLAY_CONTROLLER_I|Add5~20_combout\ & \DISPLAY_CONTROLLER_I|Add5~17_combout\ & 
\DISPLAY_CONTROLLER_I|Add5~14_combout\ & \DISPLAY_CONTROLLER_I|Add5~11_combout\ & \DISPLAY_CONTROLLER_I|Add5~8_combout\ & \DISPLAY_CONTROLLER_I|Add5~5_combout\ & \DISPLAY_CONTROLLER_I|Add5~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[3]~3_combout\ & 
\DISPLAY_CONTROLLER_I|rom_addr_vec[2]~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[1]~1_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[0]~0_combout\);

\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(5) <= \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);
\DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(5) <= \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(1);

\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\DISPLAY_CONTROLLER_I|Add5~23_combout\ & \DISPLAY_CONTROLLER_I|Add5~20_combout\ & \DISPLAY_CONTROLLER_I|Add5~17_combout\ & 
\DISPLAY_CONTROLLER_I|Add5~14_combout\ & \DISPLAY_CONTROLLER_I|Add5~11_combout\ & \DISPLAY_CONTROLLER_I|Add5~8_combout\ & \DISPLAY_CONTROLLER_I|Add5~5_combout\ & \DISPLAY_CONTROLLER_I|Add5~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[3]~3_combout\ & 
\DISPLAY_CONTROLLER_I|rom_addr_vec[2]~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[1]~1_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[0]~0_combout\);

\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(3) <= \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);
\DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(5) <= \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(1);

\DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\DISPLAY_CONTROLLER_I|Add5~23_combout\ & \DISPLAY_CONTROLLER_I|Add5~20_combout\ & \DISPLAY_CONTROLLER_I|Add5~17_combout\ & 
\DISPLAY_CONTROLLER_I|Add5~14_combout\ & \DISPLAY_CONTROLLER_I|Add5~11_combout\ & \DISPLAY_CONTROLLER_I|Add5~8_combout\ & \DISPLAY_CONTROLLER_I|Add5~5_combout\ & \DISPLAY_CONTROLLER_I|Add5~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[3]~3_combout\ & 
\DISPLAY_CONTROLLER_I|rom_addr_vec[2]~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[1]~1_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[0]~0_combout\);

\DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(3) <= \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);
\DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(3) <= \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(1);

\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\DISPLAY_CONTROLLER_I|Add5~23_combout\ & \DISPLAY_CONTROLLER_I|Add5~20_combout\ & \DISPLAY_CONTROLLER_I|Add5~17_combout\ & 
\DISPLAY_CONTROLLER_I|Add5~14_combout\ & \DISPLAY_CONTROLLER_I|Add5~11_combout\ & \DISPLAY_CONTROLLER_I|Add5~8_combout\ & \DISPLAY_CONTROLLER_I|Add5~5_combout\ & \DISPLAY_CONTROLLER_I|Add5~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[3]~3_combout\ & 
\DISPLAY_CONTROLLER_I|rom_addr_vec[2]~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[1]~1_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[0]~0_combout\);

\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(4) <= \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(4) <= \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);

\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\DISPLAY_CONTROLLER_I|Add5~23_combout\ & \DISPLAY_CONTROLLER_I|Add5~20_combout\ & \DISPLAY_CONTROLLER_I|Add5~17_combout\ & 
\DISPLAY_CONTROLLER_I|Add5~14_combout\ & \DISPLAY_CONTROLLER_I|Add5~11_combout\ & \DISPLAY_CONTROLLER_I|Add5~8_combout\ & \DISPLAY_CONTROLLER_I|Add5~5_combout\ & \DISPLAY_CONTROLLER_I|Add5~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[3]~3_combout\ & 
\DISPLAY_CONTROLLER_I|rom_addr_vec[2]~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[1]~1_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[0]~0_combout\);

\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(1) <= \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);
\DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(4) <= \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(1);

\DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\DISPLAY_CONTROLLER_I|Add5~23_combout\ & \DISPLAY_CONTROLLER_I|Add5~20_combout\ & \DISPLAY_CONTROLLER_I|Add5~17_combout\ & 
\DISPLAY_CONTROLLER_I|Add5~14_combout\ & \DISPLAY_CONTROLLER_I|Add5~11_combout\ & \DISPLAY_CONTROLLER_I|Add5~8_combout\ & \DISPLAY_CONTROLLER_I|Add5~5_combout\ & \DISPLAY_CONTROLLER_I|Add5~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[3]~3_combout\ & 
\DISPLAY_CONTROLLER_I|rom_addr_vec[2]~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[1]~1_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[0]~0_combout\);

\DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(1) <= \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);
\DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(1) <= \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(1);

\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\DISPLAY_CONTROLLER_I|Add5~23_combout\ & \DISPLAY_CONTROLLER_I|Add5~20_combout\ & \DISPLAY_CONTROLLER_I|Add5~17_combout\ & 
\DISPLAY_CONTROLLER_I|Add5~14_combout\ & \DISPLAY_CONTROLLER_I|Add5~11_combout\ & \DISPLAY_CONTROLLER_I|Add5~8_combout\ & \DISPLAY_CONTROLLER_I|Add5~5_combout\ & \DISPLAY_CONTROLLER_I|Add5~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[3]~3_combout\ & 
\DISPLAY_CONTROLLER_I|rom_addr_vec[2]~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[1]~1_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[0]~0_combout\);

\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(0) <= \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(0) <= \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);

\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\DISPLAY_CONTROLLER_I|Add5~23_combout\ & \DISPLAY_CONTROLLER_I|Add5~20_combout\ & \DISPLAY_CONTROLLER_I|Add5~17_combout\ & 
\DISPLAY_CONTROLLER_I|Add5~14_combout\ & \DISPLAY_CONTROLLER_I|Add5~11_combout\ & \DISPLAY_CONTROLLER_I|Add5~8_combout\ & \DISPLAY_CONTROLLER_I|Add5~5_combout\ & \DISPLAY_CONTROLLER_I|Add5~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[3]~3_combout\ & 
\DISPLAY_CONTROLLER_I|rom_addr_vec[2]~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[1]~1_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[0]~0_combout\);

\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(2) <= \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(0) <= \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);

\DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\DISPLAY_CONTROLLER_I|Add5~23_combout\ & \DISPLAY_CONTROLLER_I|Add5~20_combout\ & \DISPLAY_CONTROLLER_I|Add5~17_combout\ & 
\DISPLAY_CONTROLLER_I|Add5~14_combout\ & \DISPLAY_CONTROLLER_I|Add5~11_combout\ & \DISPLAY_CONTROLLER_I|Add5~8_combout\ & \DISPLAY_CONTROLLER_I|Add5~5_combout\ & \DISPLAY_CONTROLLER_I|Add5~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[3]~3_combout\ & 
\DISPLAY_CONTROLLER_I|rom_addr_vec[2]~2_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[1]~1_combout\ & \DISPLAY_CONTROLLER_I|rom_addr_vec[0]~0_combout\);

\DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(2) <= \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(2) <= \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);

\CORE_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \MEM_CONTROLLER_I|core_w_data\(13) & 
\MEM_CONTROLLER_I|core_w_data\(12) & \MEM_CONTROLLER_I|core_w_data\(11) & \MEM_CONTROLLER_I|core_w_data\(10) & \MEM_CONTROLLER_I|core_w_data\(9) & \MEM_CONTROLLER_I|core_w_data\(8) & \MEM_CONTROLLER_I|core_w_data\(7) & 
\MEM_CONTROLLER_I|core_w_data\(6) & \MEM_CONTROLLER_I|core_w_data\(5) & \MEM_CONTROLLER_I|core_w_data\(4) & \MEM_CONTROLLER_I|core_w_data\(3) & \MEM_CONTROLLER_I|core_w_data\(2) & \MEM_CONTROLLER_I|core_w_data\(1) & 
\MEM_CONTROLLER_I|core_w_data\(0));

\CORE_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\MEM_CONTROLLER_I|core_w_addr\(3) & \MEM_CONTROLLER_I|core_w_addr\(2) & \MEM_CONTROLLER_I|core_w_addr\(1) & \MEM_CONTROLLER_I|core_w_addr\(0));

\CORE_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\MEM_CONTROLLER_I|core_r_addr[3]~3_combout\ & \MEM_CONTROLLER_I|core_r_addr[2]~2_combout\ & \MEM_CONTROLLER_I|core_r_addr[1]~1_combout\ & 
\MEM_CONTROLLER_I|core_r_addr[0]~0_combout\);

\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(0) <= \CORE_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(1) <= \CORE_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(2) <= \CORE_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(3) <= \CORE_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(4) <= \CORE_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(5) <= \CORE_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(6) <= \CORE_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(7) <= \CORE_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(8) <= \CORE_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(9) <= \CORE_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(10) <= \CORE_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(11) <= \CORE_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(12) <= \CORE_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(13) <= \CORE_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);

\VGA_SYNC_I|ref_tick~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \VGA_SYNC_I|ref_tick~combout\);

\clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~q\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\MEM_CONTROLLER_I|ALT_INV_WRITE_CORE~1_combout\ <= NOT \MEM_CONTROLLER_I|WRITE_CORE~1_combout\;
\DISPLAY_CONTROLLER_I|ALT_INV_lookup[0]~2_combout\ <= NOT \DISPLAY_CONTROLLER_I|lookup[0]~2_combout\;
\MEM_CONTROLLER_I|ALT_INV_burst_state~q\ <= NOT \MEM_CONTROLLER_I|burst_state~q\;
\ALT_INV_s_curr.s_wait_cpy~q\ <= NOT \s_curr.s_wait_cpy~q\;
\BIN_TO_BCD_I|ALT_INV_shift_reg[9]~11_combout\ <= NOT \BIN_TO_BCD_I|shift_reg[9]~11_combout\;
\BIN_TO_BCD_I|ALT_INV_shift_reg[14]~3_combout\ <= NOT \BIN_TO_BCD_I|shift_reg[14]~3_combout\;
\BIN_TO_BCD_I|ALT_INV_bcd_out[7]~1_combout\ <= NOT \BIN_TO_BCD_I|bcd_out[7]~1_combout\;
\VGA_SYNC_I|ALT_INV_vsync~q\ <= NOT \VGA_SYNC_I|vsync~q\;
\VGA_SYNC_I|ALT_INV_hsync~q\ <= NOT \VGA_SYNC_I|hsync~q\;
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
ALT_INV_lives(1) <= NOT lives(1);
\SEG2_I|ALT_INV_Mux0~0_combout\ <= NOT \SEG2_I|Mux0~0_combout\;
\SEG1_I|ALT_INV_Mux0~0_combout\ <= NOT \SEG1_I|Mux0~0_combout\;

-- Location: IOOBUF_X21_Y29_N2
\digit1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG1_I|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \digit1[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\digit1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG1_I|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \digit1[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\digit1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG1_I|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \digit1[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\digit1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG1_I|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \digit1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\digit1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG1_I|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \digit1[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\digit1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG1_I|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \digit1[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\digit1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG1_I|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \digit1[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\digit0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG2_I|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \digit0[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\digit0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG2_I|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \digit0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\digit0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG2_I|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \digit0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\digit0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG2_I|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \digit0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\digit0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG2_I|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \digit0[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\digit0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG2_I|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \digit0[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\digit0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG2_I|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \digit0[6]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\lives_leds[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan2~0_combout\,
	devoe => ww_devoe,
	o => \lives_leds[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\lives_leds[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_lives(1),
	devoe => ww_devoe,
	o => \lives_leds[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\lives_leds[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan4~0_combout\,
	devoe => ww_devoe,
	o => \lives_leds[2]~output_o\);

-- Location: IOOBUF_X21_Y29_N16
\vga_clk~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk~q\,
	devoe => ww_devoe,
	o => \vga_clk~output_o\);

-- Location: IOOBUF_X41_Y18_N16
\h_sync~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_SYNC_I|ALT_INV_hsync~q\,
	devoe => ww_devoe,
	o => \h_sync~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\v_sync~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_SYNC_I|ALT_INV_vsync~q\,
	devoe => ww_devoe,
	o => \v_sync~output_o\);

-- Location: IOOBUF_X39_Y0_N23
\sync_n~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sync_n~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\blank_n~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \blank_n~output_o\);

-- Location: IOOBUF_X41_Y23_N23
\r_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_SYNC_I|Rout[4]~0_combout\,
	devoe => ww_devoe,
	o => \r_out[0]~output_o\);

-- Location: IOOBUF_X41_Y25_N2
\r_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_SYNC_I|Rout[5]~1_combout\,
	devoe => ww_devoe,
	o => \r_out[1]~output_o\);

-- Location: IOOBUF_X41_Y22_N2
\r_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_SYNC_I|Rout[6]~2_combout\,
	devoe => ww_devoe,
	o => \r_out[2]~output_o\);

-- Location: IOOBUF_X41_Y21_N23
\r_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_SYNC_I|Rout[7]~3_combout\,
	devoe => ww_devoe,
	o => \r_out[3]~output_o\);

-- Location: IOOBUF_X41_Y20_N2
\g_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_SYNC_I|Gout[4]~0_combout\,
	devoe => ww_devoe,
	o => \g_out[0]~output_o\);

-- Location: IOOBUF_X41_Y24_N23
\g_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_SYNC_I|Gout[5]~1_combout\,
	devoe => ww_devoe,
	o => \g_out[1]~output_o\);

-- Location: IOOBUF_X41_Y21_N16
\g_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_SYNC_I|Gout[6]~2_combout\,
	devoe => ww_devoe,
	o => \g_out[2]~output_o\);

-- Location: IOOBUF_X41_Y20_N23
\g_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_SYNC_I|Gout[7]~3_combout\,
	devoe => ww_devoe,
	o => \g_out[3]~output_o\);

-- Location: IOOBUF_X41_Y19_N16
\b_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_SYNC_I|Bout[4]~1_combout\,
	devoe => ww_devoe,
	o => \b_out[0]~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\b_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_SYNC_I|Bout[5]~2_combout\,
	devoe => ww_devoe,
	o => \b_out[1]~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\b_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_SYNC_I|Bout[6]~3_combout\,
	devoe => ww_devoe,
	o => \b_out[2]~output_o\);

-- Location: IOOBUF_X41_Y21_N9
\b_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_SYNC_I|Bout[7]~4_combout\,
	devoe => ww_devoe,
	o => \b_out[3]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk_50MHz~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50MHz,
	o => \clk_50MHz~input_o\);

-- Location: LCCOMB_X21_Y13_N0
\clk~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk~0_combout\ = !\clk~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk~q\,
	combout => \clk~0_combout\);

-- Location: LCCOMB_X21_Y13_N24
\clk~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk~feeder_combout\ = \clk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~0_combout\,
	combout => \clk~feeder_combout\);

-- Location: IOIBUF_X0_Y24_N1
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X21_Y13_N25
clk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	d => \clk~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk~q\);

-- Location: CLKCTRL_G11
\clk~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X21_Y21_N14
\score[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score[0]~7_combout\ = score(0) $ (VCC)
-- \score[0]~8\ = CARRY(score(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => score(0),
	datad => VCC,
	combout => \score[0]~7_combout\,
	cout => \score[0]~8\);

-- Location: LCCOMB_X19_Y13_N2
\s_copy_count[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_copy_count[0]~5_combout\ = s_copy_count(0) $ (VCC)
-- \s_copy_count[0]~6\ = CARRY(s_copy_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_copy_count(0),
	datad => VCC,
	combout => \s_copy_count[0]~5_combout\,
	cout => \s_copy_count[0]~6\);

-- Location: LCCOMB_X16_Y13_N30
\s_curr.s_add_elem~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_curr.s_add_elem~0_combout\ = !\s_curr.s_coll_check~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_curr.s_coll_check~q\,
	combout => \s_curr.s_add_elem~0_combout\);

-- Location: FF_X16_Y13_N31
\s_curr.s_add_elem\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \s_curr.s_add_elem~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_curr.s_add_elem~q\);

-- Location: FF_X15_Y13_N21
\s_curr.s_inc_speed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	asdata => \s_curr.s_add_elem~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_curr.s_inc_speed~q\);

-- Location: LCCOMB_X15_Y13_N24
\s_curr.s_move~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_curr.s_move~feeder_combout\ = \s_curr.s_inc_speed~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_curr.s_inc_speed~q\,
	combout => \s_curr.s_move~feeder_combout\);

-- Location: FF_X15_Y13_N25
\s_curr.s_move\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \s_curr.s_move~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_curr.s_move~q\);

-- Location: LCCOMB_X24_Y13_N0
\VGA_SYNC_I|h_count[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|h_count[0]~10_combout\ = \VGA_SYNC_I|h_count\(0) $ (VCC)
-- \VGA_SYNC_I|h_count[0]~11\ = CARRY(\VGA_SYNC_I|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNC_I|h_count\(0),
	datad => VCC,
	combout => \VGA_SYNC_I|h_count[0]~10_combout\,
	cout => \VGA_SYNC_I|h_count[0]~11\);

-- Location: LCCOMB_X24_Y13_N12
\VGA_SYNC_I|h_count[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|h_count[6]~22_combout\ = (\VGA_SYNC_I|h_count\(6) & (\VGA_SYNC_I|h_count[5]~21\ $ (GND))) # (!\VGA_SYNC_I|h_count\(6) & (!\VGA_SYNC_I|h_count[5]~21\ & VCC))
-- \VGA_SYNC_I|h_count[6]~23\ = CARRY((\VGA_SYNC_I|h_count\(6) & !\VGA_SYNC_I|h_count[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNC_I|h_count\(6),
	datad => VCC,
	cin => \VGA_SYNC_I|h_count[5]~21\,
	combout => \VGA_SYNC_I|h_count[6]~22_combout\,
	cout => \VGA_SYNC_I|h_count[6]~23\);

-- Location: LCCOMB_X24_Y13_N14
\VGA_SYNC_I|h_count[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|h_count[7]~24_combout\ = (\VGA_SYNC_I|h_count\(7) & (!\VGA_SYNC_I|h_count[6]~23\)) # (!\VGA_SYNC_I|h_count\(7) & ((\VGA_SYNC_I|h_count[6]~23\) # (GND)))
-- \VGA_SYNC_I|h_count[7]~25\ = CARRY((!\VGA_SYNC_I|h_count[6]~23\) # (!\VGA_SYNC_I|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNC_I|h_count\(7),
	datad => VCC,
	cin => \VGA_SYNC_I|h_count[6]~23\,
	combout => \VGA_SYNC_I|h_count[7]~24_combout\,
	cout => \VGA_SYNC_I|h_count[7]~25\);

-- Location: FF_X24_Y13_N15
\VGA_SYNC_I|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~q\,
	d => \VGA_SYNC_I|h_count[7]~24_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \VGA_SYNC_I|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|h_count\(7));

-- Location: LCCOMB_X24_Y13_N16
\VGA_SYNC_I|h_count[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|h_count[8]~26_combout\ = (\VGA_SYNC_I|h_count\(8) & (\VGA_SYNC_I|h_count[7]~25\ $ (GND))) # (!\VGA_SYNC_I|h_count\(8) & (!\VGA_SYNC_I|h_count[7]~25\ & VCC))
-- \VGA_SYNC_I|h_count[8]~27\ = CARRY((\VGA_SYNC_I|h_count\(8) & !\VGA_SYNC_I|h_count[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNC_I|h_count\(8),
	datad => VCC,
	cin => \VGA_SYNC_I|h_count[7]~25\,
	combout => \VGA_SYNC_I|h_count[8]~26_combout\,
	cout => \VGA_SYNC_I|h_count[8]~27\);

-- Location: FF_X24_Y13_N17
\VGA_SYNC_I|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~q\,
	d => \VGA_SYNC_I|h_count[8]~26_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \VGA_SYNC_I|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|h_count\(8));

-- Location: LCCOMB_X24_Y13_N18
\VGA_SYNC_I|h_count[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|h_count[9]~28_combout\ = \VGA_SYNC_I|h_count\(9) $ (\VGA_SYNC_I|h_count[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNC_I|h_count\(9),
	cin => \VGA_SYNC_I|h_count[8]~27\,
	combout => \VGA_SYNC_I|h_count[9]~28_combout\);

-- Location: FF_X24_Y13_N19
\VGA_SYNC_I|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~q\,
	d => \VGA_SYNC_I|h_count[9]~28_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \VGA_SYNC_I|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|h_count\(9));

-- Location: LCCOMB_X24_Y13_N30
\VGA_SYNC_I|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|LessThan0~0_combout\ = (!\VGA_SYNC_I|h_count\(5) & (!\VGA_SYNC_I|h_count\(7) & !\VGA_SYNC_I|h_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|h_count\(5),
	datab => \VGA_SYNC_I|h_count\(7),
	datac => \VGA_SYNC_I|h_count\(6),
	combout => \VGA_SYNC_I|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y13_N20
\VGA_SYNC_I|ref_tick~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|ref_tick~2_combout\ = (\VGA_SYNC_I|h_count\(2) & \VGA_SYNC_I|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_SYNC_I|h_count\(2),
	datad => \VGA_SYNC_I|h_count\(4),
	combout => \VGA_SYNC_I|ref_tick~2_combout\);

-- Location: LCCOMB_X23_Y13_N4
\VGA_SYNC_I|ref_tick~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|ref_tick~3_combout\ = (\VGA_SYNC_I|h_count\(0) & (\VGA_SYNC_I|h_count\(1) & (\VGA_SYNC_I|ref_tick~2_combout\ & \VGA_SYNC_I|h_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|h_count\(0),
	datab => \VGA_SYNC_I|h_count\(1),
	datac => \VGA_SYNC_I|ref_tick~2_combout\,
	datad => \VGA_SYNC_I|h_count\(3),
	combout => \VGA_SYNC_I|ref_tick~3_combout\);

-- Location: LCCOMB_X23_Y13_N20
\VGA_SYNC_I|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|LessThan0~1_combout\ = (\VGA_SYNC_I|h_count\(9) & (\VGA_SYNC_I|h_count\(8) & ((\VGA_SYNC_I|ref_tick~3_combout\) # (!\VGA_SYNC_I|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|h_count\(9),
	datab => \VGA_SYNC_I|h_count\(8),
	datac => \VGA_SYNC_I|LessThan0~0_combout\,
	datad => \VGA_SYNC_I|ref_tick~3_combout\,
	combout => \VGA_SYNC_I|LessThan0~1_combout\);

-- Location: FF_X23_Y13_N7
\VGA_SYNC_I|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	asdata => \VGA_SYNC_I|h_count[0]~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \VGA_SYNC_I|LessThan0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|h_count\(0));

-- Location: LCCOMB_X24_Y13_N2
\VGA_SYNC_I|h_count[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|h_count[1]~12_combout\ = (\VGA_SYNC_I|h_count\(1) & (!\VGA_SYNC_I|h_count[0]~11\)) # (!\VGA_SYNC_I|h_count\(1) & ((\VGA_SYNC_I|h_count[0]~11\) # (GND)))
-- \VGA_SYNC_I|h_count[1]~13\ = CARRY((!\VGA_SYNC_I|h_count[0]~11\) # (!\VGA_SYNC_I|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNC_I|h_count\(1),
	datad => VCC,
	cin => \VGA_SYNC_I|h_count[0]~11\,
	combout => \VGA_SYNC_I|h_count[1]~12_combout\,
	cout => \VGA_SYNC_I|h_count[1]~13\);

-- Location: FF_X23_Y13_N29
\VGA_SYNC_I|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~q\,
	asdata => \VGA_SYNC_I|h_count[1]~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \VGA_SYNC_I|LessThan0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|h_count\(1));

-- Location: LCCOMB_X24_Y13_N4
\VGA_SYNC_I|h_count[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|h_count[2]~14_combout\ = (\VGA_SYNC_I|h_count\(2) & (\VGA_SYNC_I|h_count[1]~13\ $ (GND))) # (!\VGA_SYNC_I|h_count\(2) & (!\VGA_SYNC_I|h_count[1]~13\ & VCC))
-- \VGA_SYNC_I|h_count[2]~15\ = CARRY((\VGA_SYNC_I|h_count\(2) & !\VGA_SYNC_I|h_count[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNC_I|h_count\(2),
	datad => VCC,
	cin => \VGA_SYNC_I|h_count[1]~13\,
	combout => \VGA_SYNC_I|h_count[2]~14_combout\,
	cout => \VGA_SYNC_I|h_count[2]~15\);

-- Location: FF_X24_Y13_N5
\VGA_SYNC_I|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~q\,
	d => \VGA_SYNC_I|h_count[2]~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \VGA_SYNC_I|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|h_count\(2));

-- Location: LCCOMB_X24_Y13_N6
\VGA_SYNC_I|h_count[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|h_count[3]~16_combout\ = (\VGA_SYNC_I|h_count\(3) & (!\VGA_SYNC_I|h_count[2]~15\)) # (!\VGA_SYNC_I|h_count\(3) & ((\VGA_SYNC_I|h_count[2]~15\) # (GND)))
-- \VGA_SYNC_I|h_count[3]~17\ = CARRY((!\VGA_SYNC_I|h_count[2]~15\) # (!\VGA_SYNC_I|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|h_count\(3),
	datad => VCC,
	cin => \VGA_SYNC_I|h_count[2]~15\,
	combout => \VGA_SYNC_I|h_count[3]~16_combout\,
	cout => \VGA_SYNC_I|h_count[3]~17\);

-- Location: FF_X24_Y13_N7
\VGA_SYNC_I|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~q\,
	d => \VGA_SYNC_I|h_count[3]~16_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \VGA_SYNC_I|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|h_count\(3));

-- Location: LCCOMB_X24_Y13_N8
\VGA_SYNC_I|h_count[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|h_count[4]~18_combout\ = (\VGA_SYNC_I|h_count\(4) & (\VGA_SYNC_I|h_count[3]~17\ $ (GND))) # (!\VGA_SYNC_I|h_count\(4) & (!\VGA_SYNC_I|h_count[3]~17\ & VCC))
-- \VGA_SYNC_I|h_count[4]~19\ = CARRY((\VGA_SYNC_I|h_count\(4) & !\VGA_SYNC_I|h_count[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNC_I|h_count\(4),
	datad => VCC,
	cin => \VGA_SYNC_I|h_count[3]~17\,
	combout => \VGA_SYNC_I|h_count[4]~18_combout\,
	cout => \VGA_SYNC_I|h_count[4]~19\);

-- Location: FF_X24_Y13_N9
\VGA_SYNC_I|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~q\,
	d => \VGA_SYNC_I|h_count[4]~18_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \VGA_SYNC_I|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|h_count\(4));

-- Location: LCCOMB_X24_Y13_N10
\VGA_SYNC_I|h_count[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|h_count[5]~20_combout\ = (\VGA_SYNC_I|h_count\(5) & (!\VGA_SYNC_I|h_count[4]~19\)) # (!\VGA_SYNC_I|h_count\(5) & ((\VGA_SYNC_I|h_count[4]~19\) # (GND)))
-- \VGA_SYNC_I|h_count[5]~21\ = CARRY((!\VGA_SYNC_I|h_count[4]~19\) # (!\VGA_SYNC_I|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|h_count\(5),
	datad => VCC,
	cin => \VGA_SYNC_I|h_count[4]~19\,
	combout => \VGA_SYNC_I|h_count[5]~20_combout\,
	cout => \VGA_SYNC_I|h_count[5]~21\);

-- Location: FF_X24_Y13_N11
\VGA_SYNC_I|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~q\,
	d => \VGA_SYNC_I|h_count[5]~20_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \VGA_SYNC_I|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|h_count\(5));

-- Location: FF_X24_Y13_N13
\VGA_SYNC_I|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~q\,
	d => \VGA_SYNC_I|h_count[6]~22_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \VGA_SYNC_I|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|h_count\(6));

-- Location: LCCOMB_X24_Y13_N26
\VGA_SYNC_I|ref_tick~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|ref_tick~4_combout\ = (\VGA_SYNC_I|h_count\(6) & (!\VGA_SYNC_I|h_count\(8) & (\VGA_SYNC_I|h_count\(5) & \VGA_SYNC_I|h_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|h_count\(6),
	datab => \VGA_SYNC_I|h_count\(8),
	datac => \VGA_SYNC_I|h_count\(5),
	datad => \VGA_SYNC_I|h_count\(9),
	combout => \VGA_SYNC_I|ref_tick~4_combout\);

-- Location: LCCOMB_X22_Y13_N6
\VGA_SYNC_I|v_count[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|v_count[0]~10_combout\ = \VGA_SYNC_I|v_count\(0) $ (VCC)
-- \VGA_SYNC_I|v_count[0]~11\ = CARRY(\VGA_SYNC_I|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|v_count\(0),
	datad => VCC,
	combout => \VGA_SYNC_I|v_count[0]~10_combout\,
	cout => \VGA_SYNC_I|v_count[0]~11\);

-- Location: LCCOMB_X22_Y13_N14
\VGA_SYNC_I|v_count[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|v_count[4]~18_combout\ = (\VGA_SYNC_I|v_count\(4) & (\VGA_SYNC_I|v_count[3]~17\ $ (GND))) # (!\VGA_SYNC_I|v_count\(4) & (!\VGA_SYNC_I|v_count[3]~17\ & VCC))
-- \VGA_SYNC_I|v_count[4]~19\ = CARRY((\VGA_SYNC_I|v_count\(4) & !\VGA_SYNC_I|v_count[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNC_I|v_count\(4),
	datad => VCC,
	cin => \VGA_SYNC_I|v_count[3]~17\,
	combout => \VGA_SYNC_I|v_count[4]~18_combout\,
	cout => \VGA_SYNC_I|v_count[4]~19\);

-- Location: LCCOMB_X22_Y13_N16
\VGA_SYNC_I|v_count[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|v_count[5]~20_combout\ = (\VGA_SYNC_I|v_count\(5) & (!\VGA_SYNC_I|v_count[4]~19\)) # (!\VGA_SYNC_I|v_count\(5) & ((\VGA_SYNC_I|v_count[4]~19\) # (GND)))
-- \VGA_SYNC_I|v_count[5]~21\ = CARRY((!\VGA_SYNC_I|v_count[4]~19\) # (!\VGA_SYNC_I|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNC_I|v_count\(5),
	datad => VCC,
	cin => \VGA_SYNC_I|v_count[4]~19\,
	combout => \VGA_SYNC_I|v_count[5]~20_combout\,
	cout => \VGA_SYNC_I|v_count[5]~21\);

-- Location: FF_X22_Y13_N17
\VGA_SYNC_I|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~q\,
	d => \VGA_SYNC_I|v_count[5]~20_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \VGA_SYNC_I|LessThan1~2_combout\,
	ena => \VGA_SYNC_I|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|v_count\(5));

-- Location: LCCOMB_X22_Y13_N18
\VGA_SYNC_I|v_count[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|v_count[6]~22_combout\ = (\VGA_SYNC_I|v_count\(6) & (\VGA_SYNC_I|v_count[5]~21\ $ (GND))) # (!\VGA_SYNC_I|v_count\(6) & (!\VGA_SYNC_I|v_count[5]~21\ & VCC))
-- \VGA_SYNC_I|v_count[6]~23\ = CARRY((\VGA_SYNC_I|v_count\(6) & !\VGA_SYNC_I|v_count[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNC_I|v_count\(6),
	datad => VCC,
	cin => \VGA_SYNC_I|v_count[5]~21\,
	combout => \VGA_SYNC_I|v_count[6]~22_combout\,
	cout => \VGA_SYNC_I|v_count[6]~23\);

-- Location: FF_X22_Y13_N19
\VGA_SYNC_I|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~q\,
	d => \VGA_SYNC_I|v_count[6]~22_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \VGA_SYNC_I|LessThan1~2_combout\,
	ena => \VGA_SYNC_I|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|v_count\(6));

-- Location: LCCOMB_X22_Y13_N20
\VGA_SYNC_I|v_count[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|v_count[7]~24_combout\ = (\VGA_SYNC_I|v_count\(7) & (!\VGA_SYNC_I|v_count[6]~23\)) # (!\VGA_SYNC_I|v_count\(7) & ((\VGA_SYNC_I|v_count[6]~23\) # (GND)))
-- \VGA_SYNC_I|v_count[7]~25\ = CARRY((!\VGA_SYNC_I|v_count[6]~23\) # (!\VGA_SYNC_I|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNC_I|v_count\(7),
	datad => VCC,
	cin => \VGA_SYNC_I|v_count[6]~23\,
	combout => \VGA_SYNC_I|v_count[7]~24_combout\,
	cout => \VGA_SYNC_I|v_count[7]~25\);

-- Location: FF_X22_Y13_N21
\VGA_SYNC_I|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~q\,
	d => \VGA_SYNC_I|v_count[7]~24_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \VGA_SYNC_I|LessThan1~2_combout\,
	ena => \VGA_SYNC_I|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|v_count\(7));

-- Location: LCCOMB_X22_Y13_N22
\VGA_SYNC_I|v_count[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|v_count[8]~26_combout\ = (\VGA_SYNC_I|v_count\(8) & (\VGA_SYNC_I|v_count[7]~25\ $ (GND))) # (!\VGA_SYNC_I|v_count\(8) & (!\VGA_SYNC_I|v_count[7]~25\ & VCC))
-- \VGA_SYNC_I|v_count[8]~27\ = CARRY((\VGA_SYNC_I|v_count\(8) & !\VGA_SYNC_I|v_count[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|v_count\(8),
	datad => VCC,
	cin => \VGA_SYNC_I|v_count[7]~25\,
	combout => \VGA_SYNC_I|v_count[8]~26_combout\,
	cout => \VGA_SYNC_I|v_count[8]~27\);

-- Location: FF_X22_Y13_N23
\VGA_SYNC_I|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~q\,
	d => \VGA_SYNC_I|v_count[8]~26_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \VGA_SYNC_I|LessThan1~2_combout\,
	ena => \VGA_SYNC_I|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|v_count\(8));

-- Location: LCCOMB_X22_Y13_N24
\VGA_SYNC_I|v_count[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|v_count[9]~28_combout\ = \VGA_SYNC_I|v_count\(9) $ (\VGA_SYNC_I|v_count[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNC_I|v_count\(9),
	cin => \VGA_SYNC_I|v_count[8]~27\,
	combout => \VGA_SYNC_I|v_count[9]~28_combout\);

-- Location: FF_X22_Y13_N25
\VGA_SYNC_I|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~q\,
	d => \VGA_SYNC_I|v_count[9]~28_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \VGA_SYNC_I|LessThan1~2_combout\,
	ena => \VGA_SYNC_I|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|v_count\(9));

-- Location: LCCOMB_X22_Y13_N4
\VGA_SYNC_I|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|LessThan1~1_combout\ = (!\VGA_SYNC_I|v_count\(6) & (!\VGA_SYNC_I|v_count\(8) & !\VGA_SYNC_I|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNC_I|v_count\(6),
	datac => \VGA_SYNC_I|v_count\(8),
	datad => \VGA_SYNC_I|v_count\(7),
	combout => \VGA_SYNC_I|LessThan1~1_combout\);

-- Location: LCCOMB_X23_Y13_N22
\VGA_SYNC_I|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|LessThan1~0_combout\ = (!\VGA_SYNC_I|v_count\(5) & (!\VGA_SYNC_I|v_count\(4) & ((!\VGA_SYNC_I|v_count\(2)) # (!\VGA_SYNC_I|v_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|v_count\(3),
	datab => \VGA_SYNC_I|v_count\(2),
	datac => \VGA_SYNC_I|v_count\(5),
	datad => \VGA_SYNC_I|v_count\(4),
	combout => \VGA_SYNC_I|LessThan1~0_combout\);

-- Location: LCCOMB_X22_Y13_N28
\VGA_SYNC_I|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|LessThan1~2_combout\ = (\VGA_SYNC_I|v_count\(9) & ((!\VGA_SYNC_I|LessThan1~0_combout\) # (!\VGA_SYNC_I|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNC_I|v_count\(9),
	datac => \VGA_SYNC_I|LessThan1~1_combout\,
	datad => \VGA_SYNC_I|LessThan1~0_combout\,
	combout => \VGA_SYNC_I|LessThan1~2_combout\);

-- Location: FF_X22_Y13_N7
\VGA_SYNC_I|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~q\,
	d => \VGA_SYNC_I|v_count[0]~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \VGA_SYNC_I|LessThan1~2_combout\,
	ena => \VGA_SYNC_I|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|v_count\(0));

-- Location: LCCOMB_X22_Y13_N8
\VGA_SYNC_I|v_count[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|v_count[1]~12_combout\ = (\VGA_SYNC_I|v_count\(1) & (!\VGA_SYNC_I|v_count[0]~11\)) # (!\VGA_SYNC_I|v_count\(1) & ((\VGA_SYNC_I|v_count[0]~11\) # (GND)))
-- \VGA_SYNC_I|v_count[1]~13\ = CARRY((!\VGA_SYNC_I|v_count[0]~11\) # (!\VGA_SYNC_I|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNC_I|v_count\(1),
	datad => VCC,
	cin => \VGA_SYNC_I|v_count[0]~11\,
	combout => \VGA_SYNC_I|v_count[1]~12_combout\,
	cout => \VGA_SYNC_I|v_count[1]~13\);

-- Location: FF_X22_Y13_N9
\VGA_SYNC_I|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~q\,
	d => \VGA_SYNC_I|v_count[1]~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \VGA_SYNC_I|LessThan1~2_combout\,
	ena => \VGA_SYNC_I|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|v_count\(1));

-- Location: LCCOMB_X22_Y13_N10
\VGA_SYNC_I|v_count[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|v_count[2]~14_combout\ = (\VGA_SYNC_I|v_count\(2) & (\VGA_SYNC_I|v_count[1]~13\ $ (GND))) # (!\VGA_SYNC_I|v_count\(2) & (!\VGA_SYNC_I|v_count[1]~13\ & VCC))
-- \VGA_SYNC_I|v_count[2]~15\ = CARRY((\VGA_SYNC_I|v_count\(2) & !\VGA_SYNC_I|v_count[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|v_count\(2),
	datad => VCC,
	cin => \VGA_SYNC_I|v_count[1]~13\,
	combout => \VGA_SYNC_I|v_count[2]~14_combout\,
	cout => \VGA_SYNC_I|v_count[2]~15\);

-- Location: FF_X22_Y13_N11
\VGA_SYNC_I|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~q\,
	d => \VGA_SYNC_I|v_count[2]~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \VGA_SYNC_I|LessThan1~2_combout\,
	ena => \VGA_SYNC_I|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|v_count\(2));

-- Location: LCCOMB_X22_Y13_N12
\VGA_SYNC_I|v_count[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|v_count[3]~16_combout\ = (\VGA_SYNC_I|v_count\(3) & (!\VGA_SYNC_I|v_count[2]~15\)) # (!\VGA_SYNC_I|v_count\(3) & ((\VGA_SYNC_I|v_count[2]~15\) # (GND)))
-- \VGA_SYNC_I|v_count[3]~17\ = CARRY((!\VGA_SYNC_I|v_count[2]~15\) # (!\VGA_SYNC_I|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|v_count\(3),
	datad => VCC,
	cin => \VGA_SYNC_I|v_count[2]~15\,
	combout => \VGA_SYNC_I|v_count[3]~16_combout\,
	cout => \VGA_SYNC_I|v_count[3]~17\);

-- Location: FF_X22_Y13_N13
\VGA_SYNC_I|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~q\,
	d => \VGA_SYNC_I|v_count[3]~16_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \VGA_SYNC_I|LessThan1~2_combout\,
	ena => \VGA_SYNC_I|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|v_count\(3));

-- Location: FF_X22_Y13_N15
\VGA_SYNC_I|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~q\,
	d => \VGA_SYNC_I|v_count[4]~18_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \VGA_SYNC_I|LessThan1~2_combout\,
	ena => \VGA_SYNC_I|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|v_count\(4));

-- Location: LCCOMB_X22_Y13_N26
\VGA_SYNC_I|ref_tick~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|ref_tick~5_combout\ = (\VGA_SYNC_I|v_count\(2) & (\VGA_SYNC_I|v_count\(1) & (!\VGA_SYNC_I|h_count\(7) & \VGA_SYNC_I|v_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|v_count\(2),
	datab => \VGA_SYNC_I|v_count\(1),
	datac => \VGA_SYNC_I|h_count\(7),
	datad => \VGA_SYNC_I|v_count\(0),
	combout => \VGA_SYNC_I|ref_tick~5_combout\);

-- Location: LCCOMB_X22_Y13_N0
\VGA_SYNC_I|ref_tick~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|ref_tick~6_combout\ = (\VGA_SYNC_I|ref_tick~4_combout\ & (\VGA_SYNC_I|v_count\(4) & (\VGA_SYNC_I|ref_tick~5_combout\ & !\VGA_SYNC_I|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|ref_tick~4_combout\,
	datab => \VGA_SYNC_I|v_count\(4),
	datac => \VGA_SYNC_I|ref_tick~5_combout\,
	datad => \VGA_SYNC_I|v_count\(5),
	combout => \VGA_SYNC_I|ref_tick~6_combout\);

-- Location: LCCOMB_X22_Y13_N30
\VGA_SYNC_I|ref_tick~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|ref_tick~0_combout\ = (\VGA_SYNC_I|v_count\(6) & (\VGA_SYNC_I|v_count\(8) & \VGA_SYNC_I|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNC_I|v_count\(6),
	datac => \VGA_SYNC_I|v_count\(8),
	datad => \VGA_SYNC_I|v_count\(7),
	combout => \VGA_SYNC_I|ref_tick~0_combout\);

-- Location: LCCOMB_X22_Y13_N2
\VGA_SYNC_I|ref_tick~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|ref_tick~1_combout\ = (\VGA_SYNC_I|v_count\(3) & (\VGA_SYNC_I|ref_tick~0_combout\ & !\VGA_SYNC_I|v_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|v_count\(3),
	datac => \VGA_SYNC_I|ref_tick~0_combout\,
	datad => \VGA_SYNC_I|v_count\(9),
	combout => \VGA_SYNC_I|ref_tick~1_combout\);

-- Location: LCCOMB_X23_Y13_N8
\VGA_SYNC_I|ref_tick\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|ref_tick~combout\ = LCELL((\VGA_SYNC_I|ref_tick~6_combout\ & (\VGA_SYNC_I|ref_tick~3_combout\ & \VGA_SYNC_I|ref_tick~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|ref_tick~6_combout\,
	datac => \VGA_SYNC_I|ref_tick~3_combout\,
	datad => \VGA_SYNC_I|ref_tick~1_combout\,
	combout => \VGA_SYNC_I|ref_tick~combout\);

-- Location: LCCOMB_X19_Y13_N22
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\s_curr.s_move~q\) # ((\s_curr.s_wait_ref~q\ & !\VGA_SYNC_I|ref_tick~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_curr.s_move~q\,
	datac => \s_curr.s_wait_ref~q\,
	datad => \VGA_SYNC_I|ref_tick~combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X19_Y13_N23
\s_curr.s_wait_ref\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_curr.s_wait_ref~q\);

-- Location: LCCOMB_X19_Y13_N24
\s_next.s_burst_cpy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_next.s_burst_cpy~0_combout\ = (\s_curr.s_wait_ref~q\ & \VGA_SYNC_I|ref_tick~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_curr.s_wait_ref~q\,
	datad => \VGA_SYNC_I|ref_tick~combout\,
	combout => \s_next.s_burst_cpy~0_combout\);

-- Location: FF_X19_Y13_N25
\s_curr.s_burst_cpy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \s_next.s_burst_cpy~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_curr.s_burst_cpy~q\);

-- Location: LCCOMB_X19_Y13_N0
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\s_curr.s_burst_cpy~q\) # ((!\s_next.s_coll_check~0_combout\ & \s_curr.s_wait_cpy~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_next.s_coll_check~0_combout\,
	datac => \s_curr.s_wait_cpy~q\,
	datad => \s_curr.s_burst_cpy~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X19_Y13_N1
\s_curr.s_wait_cpy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_curr.s_wait_cpy~q\);

-- Location: FF_X19_Y13_N3
\s_copy_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \s_copy_count[0]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_s_curr.s_wait_cpy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_copy_count(0));

-- Location: LCCOMB_X19_Y13_N4
\s_copy_count[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_copy_count[1]~7_combout\ = (s_copy_count(1) & (!\s_copy_count[0]~6\)) # (!s_copy_count(1) & ((\s_copy_count[0]~6\) # (GND)))
-- \s_copy_count[1]~8\ = CARRY((!\s_copy_count[0]~6\) # (!s_copy_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_copy_count(1),
	datad => VCC,
	cin => \s_copy_count[0]~6\,
	combout => \s_copy_count[1]~7_combout\,
	cout => \s_copy_count[1]~8\);

-- Location: FF_X19_Y13_N5
\s_copy_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \s_copy_count[1]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_s_curr.s_wait_cpy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_copy_count(1));

-- Location: LCCOMB_X19_Y13_N6
\s_copy_count[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_copy_count[2]~9_combout\ = (s_copy_count(2) & (\s_copy_count[1]~8\ $ (GND))) # (!s_copy_count(2) & (!\s_copy_count[1]~8\ & VCC))
-- \s_copy_count[2]~10\ = CARRY((s_copy_count(2) & !\s_copy_count[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_copy_count(2),
	datad => VCC,
	cin => \s_copy_count[1]~8\,
	combout => \s_copy_count[2]~9_combout\,
	cout => \s_copy_count[2]~10\);

-- Location: FF_X19_Y13_N7
\s_copy_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \s_copy_count[2]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_s_curr.s_wait_cpy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_copy_count(2));

-- Location: LCCOMB_X19_Y13_N8
\s_copy_count[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_copy_count[3]~11_combout\ = (s_copy_count(3) & (!\s_copy_count[2]~10\)) # (!s_copy_count(3) & ((\s_copy_count[2]~10\) # (GND)))
-- \s_copy_count[3]~12\ = CARRY((!\s_copy_count[2]~10\) # (!s_copy_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_copy_count(3),
	datad => VCC,
	cin => \s_copy_count[2]~10\,
	combout => \s_copy_count[3]~11_combout\,
	cout => \s_copy_count[3]~12\);

-- Location: FF_X19_Y13_N9
\s_copy_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \s_copy_count[3]~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_s_curr.s_wait_cpy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_copy_count(3));

-- Location: LCCOMB_X19_Y13_N10
\s_copy_count[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_copy_count[4]~13_combout\ = \s_copy_count[3]~12\ $ (!s_copy_count(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => s_copy_count(4),
	cin => \s_copy_count[3]~12\,
	combout => \s_copy_count[4]~13_combout\);

-- Location: FF_X19_Y13_N11
\s_copy_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \s_copy_count[4]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_s_curr.s_wait_cpy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_copy_count(4));

-- Location: LCCOMB_X19_Y13_N26
\s_next.s_coll_check~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_next.s_coll_check~0_combout\ = (s_copy_count(4) & (s_copy_count(3) & (s_copy_count(1) & s_copy_count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_copy_count(4),
	datab => s_copy_count(3),
	datac => s_copy_count(1),
	datad => s_copy_count(2),
	combout => \s_next.s_coll_check~0_combout\);

-- Location: LCCOMB_X19_Y13_N20
\s_next.s_coll_check~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_next.s_coll_check~1_combout\ = (!\s_curr.s_wait_cpy~q\) # (!\s_next.s_coll_check~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_next.s_coll_check~0_combout\,
	datad => \s_curr.s_wait_cpy~q\,
	combout => \s_next.s_coll_check~1_combout\);

-- Location: FF_X19_Y13_N21
\s_curr.s_coll_check\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \s_next.s_coll_check~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_curr.s_coll_check~q\);

-- Location: LCCOMB_X16_Y13_N10
\MEM_CONTROLLER_I|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|Add0~0_combout\ = \MEM_CONTROLLER_I|queue_size\(0) $ (VCC)
-- \MEM_CONTROLLER_I|Add0~1\ = CARRY(\MEM_CONTROLLER_I|queue_size\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_CONTROLLER_I|queue_size\(0),
	datad => VCC,
	combout => \MEM_CONTROLLER_I|Add0~0_combout\,
	cout => \MEM_CONTROLLER_I|Add0~1\);

-- Location: CLKCTRL_G18
\VGA_SYNC_I|ref_tick~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \VGA_SYNC_I|ref_tick~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \VGA_SYNC_I|ref_tick~clkctrl_outclk\);

-- Location: LCCOMB_X15_Y12_N26
\GEN_INFO_I|LFSR_I|s_curr[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|LFSR_I|s_curr[4]~feeder_combout\ = \GEN_INFO_I|LFSR_I|s_curr\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN_INFO_I|LFSR_I|s_curr\(5),
	combout => \GEN_INFO_I|LFSR_I|s_curr[4]~feeder_combout\);

-- Location: FF_X15_Y12_N27
\GEN_INFO_I|LFSR_I|s_curr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_SYNC_I|ref_tick~clkctrl_outclk\,
	d => \GEN_INFO_I|LFSR_I|s_curr[4]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_INFO_I|LFSR_I|s_curr\(4));

-- Location: FF_X15_Y12_N5
\GEN_INFO_I|LFSR_I|s_curr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_SYNC_I|ref_tick~clkctrl_outclk\,
	asdata => \GEN_INFO_I|LFSR_I|s_curr\(4),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_INFO_I|LFSR_I|s_curr\(3));

-- Location: LCCOMB_X15_Y12_N22
\GEN_INFO_I|LFSR_I|s_curr[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|LFSR_I|s_curr[2]~feeder_combout\ = \GEN_INFO_I|LFSR_I|s_curr\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN_INFO_I|LFSR_I|s_curr\(3),
	combout => \GEN_INFO_I|LFSR_I|s_curr[2]~feeder_combout\);

-- Location: FF_X15_Y12_N23
\GEN_INFO_I|LFSR_I|s_curr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_SYNC_I|ref_tick~clkctrl_outclk\,
	d => \GEN_INFO_I|LFSR_I|s_curr[2]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_INFO_I|LFSR_I|s_curr\(2));

-- Location: FF_X15_Y12_N13
\GEN_INFO_I|LFSR_I|s_curr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_SYNC_I|ref_tick~clkctrl_outclk\,
	asdata => \GEN_INFO_I|LFSR_I|s_curr\(2),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_INFO_I|LFSR_I|s_curr\(1));

-- Location: LCCOMB_X15_Y12_N28
\GEN_INFO_I|LFSR_I|s_curr[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|LFSR_I|s_curr[0]~0_combout\ = !\GEN_INFO_I|LFSR_I|s_curr\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN_INFO_I|LFSR_I|s_curr\(1),
	combout => \GEN_INFO_I|LFSR_I|s_curr[0]~0_combout\);

-- Location: FF_X15_Y12_N29
\GEN_INFO_I|LFSR_I|s_curr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_SYNC_I|ref_tick~clkctrl_outclk\,
	d => \GEN_INFO_I|LFSR_I|s_curr[0]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_INFO_I|LFSR_I|s_curr\(0));

-- Location: LCCOMB_X15_Y12_N24
\GEN_INFO_I|LFSR_I|feedback~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|LFSR_I|feedback~0_combout\ = \GEN_INFO_I|LFSR_I|s_curr\(2) $ (\GEN_INFO_I|LFSR_I|s_curr\(0) $ (\GEN_INFO_I|LFSR_I|s_curr\(3) $ (!\GEN_INFO_I|LFSR_I|s_curr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_INFO_I|LFSR_I|s_curr\(2),
	datab => \GEN_INFO_I|LFSR_I|s_curr\(0),
	datac => \GEN_INFO_I|LFSR_I|s_curr\(3),
	datad => \GEN_INFO_I|LFSR_I|s_curr\(4),
	combout => \GEN_INFO_I|LFSR_I|feedback~0_combout\);

-- Location: FF_X15_Y12_N25
\GEN_INFO_I|LFSR_I|s_curr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_SYNC_I|ref_tick~clkctrl_outclk\,
	d => \GEN_INFO_I|LFSR_I|feedback~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_INFO_I|LFSR_I|s_curr\(7));

-- Location: LCCOMB_X15_Y12_N30
\GEN_INFO_I|LFSR_I|s_curr[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|LFSR_I|s_curr[6]~feeder_combout\ = \GEN_INFO_I|LFSR_I|s_curr\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN_INFO_I|LFSR_I|s_curr\(7),
	combout => \GEN_INFO_I|LFSR_I|s_curr[6]~feeder_combout\);

-- Location: FF_X15_Y12_N31
\GEN_INFO_I|LFSR_I|s_curr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_SYNC_I|ref_tick~clkctrl_outclk\,
	d => \GEN_INFO_I|LFSR_I|s_curr[6]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_INFO_I|LFSR_I|s_curr\(6));

-- Location: FF_X15_Y12_N21
\GEN_INFO_I|LFSR_I|s_curr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA_SYNC_I|ref_tick~clkctrl_outclk\,
	asdata => \GEN_INFO_I|LFSR_I|s_curr\(6),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_INFO_I|LFSR_I|s_curr\(5));

-- Location: LCCOMB_X15_Y12_N2
\GEN_INFO_I|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|Add0~0_combout\ = (\GEN_INFO_I|LFSR_I|s_curr\(1) & (\GEN_INFO_I|LFSR_I|s_curr\(2) $ (VCC))) # (!\GEN_INFO_I|LFSR_I|s_curr\(1) & (\GEN_INFO_I|LFSR_I|s_curr\(2) & VCC))
-- \GEN_INFO_I|Add0~1\ = CARRY((\GEN_INFO_I|LFSR_I|s_curr\(1) & \GEN_INFO_I|LFSR_I|s_curr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_INFO_I|LFSR_I|s_curr\(1),
	datab => \GEN_INFO_I|LFSR_I|s_curr\(2),
	datad => VCC,
	combout => \GEN_INFO_I|Add0~0_combout\,
	cout => \GEN_INFO_I|Add0~1\);

-- Location: LCCOMB_X15_Y12_N4
\GEN_INFO_I|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|Add0~2_combout\ = (\GEN_INFO_I|LFSR_I|s_curr\(3) & (\GEN_INFO_I|Add0~1\ & VCC)) # (!\GEN_INFO_I|LFSR_I|s_curr\(3) & (!\GEN_INFO_I|Add0~1\))
-- \GEN_INFO_I|Add0~3\ = CARRY((!\GEN_INFO_I|LFSR_I|s_curr\(3) & !\GEN_INFO_I|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN_INFO_I|LFSR_I|s_curr\(3),
	datad => VCC,
	cin => \GEN_INFO_I|Add0~1\,
	combout => \GEN_INFO_I|Add0~2_combout\,
	cout => \GEN_INFO_I|Add0~3\);

-- Location: LCCOMB_X15_Y12_N6
\GEN_INFO_I|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|Add0~4_combout\ = (\GEN_INFO_I|LFSR_I|s_curr\(4) & ((GND) # (!\GEN_INFO_I|Add0~3\))) # (!\GEN_INFO_I|LFSR_I|s_curr\(4) & (\GEN_INFO_I|Add0~3\ $ (GND)))
-- \GEN_INFO_I|Add0~5\ = CARRY((\GEN_INFO_I|LFSR_I|s_curr\(4)) # (!\GEN_INFO_I|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_INFO_I|LFSR_I|s_curr\(4),
	datad => VCC,
	cin => \GEN_INFO_I|Add0~3\,
	combout => \GEN_INFO_I|Add0~4_combout\,
	cout => \GEN_INFO_I|Add0~5\);

-- Location: LCCOMB_X15_Y12_N8
\GEN_INFO_I|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|Add0~6_combout\ = (\GEN_INFO_I|LFSR_I|s_curr\(5) & (!\GEN_INFO_I|Add0~5\)) # (!\GEN_INFO_I|LFSR_I|s_curr\(5) & ((\GEN_INFO_I|Add0~5\) # (GND)))
-- \GEN_INFO_I|Add0~7\ = CARRY((!\GEN_INFO_I|Add0~5\) # (!\GEN_INFO_I|LFSR_I|s_curr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN_INFO_I|LFSR_I|s_curr\(5),
	datad => VCC,
	cin => \GEN_INFO_I|Add0~5\,
	combout => \GEN_INFO_I|Add0~6_combout\,
	cout => \GEN_INFO_I|Add0~7\);

-- Location: LCCOMB_X15_Y12_N10
\GEN_INFO_I|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|Add0~8_combout\ = !\GEN_INFO_I|Add0~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \GEN_INFO_I|Add0~7\,
	combout => \GEN_INFO_I|Add0~8_combout\);

-- Location: LCCOMB_X16_Y13_N24
\COLLISION_CONTROLLER_I|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COLLISION_CONTROLLER_I|Equal0~0_combout\ = (!\MEM_CONTROLLER_I|queue_size\(2) & (!\MEM_CONTROLLER_I|queue_size\(1) & (!\MEM_CONTROLLER_I|queue_size\(3) & !\MEM_CONTROLLER_I|queue_size\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|queue_size\(2),
	datab => \MEM_CONTROLLER_I|queue_size\(1),
	datac => \MEM_CONTROLLER_I|queue_size\(3),
	datad => \MEM_CONTROLLER_I|queue_size\(0),
	combout => \COLLISION_CONTROLLER_I|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y13_N28
\COLLISION_CONTROLLER_I|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COLLISION_CONTROLLER_I|Equal0~1_combout\ = (\COLLISION_CONTROLLER_I|Equal0~0_combout\ & !\MEM_CONTROLLER_I|queue_size\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COLLISION_CONTROLLER_I|Equal0~0_combout\,
	datac => \MEM_CONTROLLER_I|queue_size\(4),
	combout => \COLLISION_CONTROLLER_I|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y13_N12
\MEM_CONTROLLER_I|SET_BURST~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|SET_BURST~0_combout\ = (!\MEM_CONTROLLER_I|burst_state~q\ & (!\COLLISION_CONTROLLER_I|Equal0~1_combout\ & ((\s_curr.s_move~q\) # (\s_curr.s_burst_cpy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|burst_state~q\,
	datab => \COLLISION_CONTROLLER_I|Equal0~1_combout\,
	datac => \s_curr.s_move~q\,
	datad => \s_curr.s_burst_cpy~q\,
	combout => \MEM_CONTROLLER_I|SET_BURST~0_combout\);

-- Location: LCCOMB_X17_Y13_N16
\MEM_CONTROLLER_I|burst_count[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|burst_count[0]~5_combout\ = \MEM_CONTROLLER_I|burst_count\(0) $ (VCC)
-- \MEM_CONTROLLER_I|burst_count[0]~6\ = CARRY(\MEM_CONTROLLER_I|burst_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_CONTROLLER_I|burst_count\(0),
	datad => VCC,
	combout => \MEM_CONTROLLER_I|burst_count[0]~5_combout\,
	cout => \MEM_CONTROLLER_I|burst_count[0]~6\);

-- Location: LCCOMB_X17_Y13_N4
\MEM_CONTROLLER_I|burst_count~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|burst_count~7_combout\ = (\MEM_CONTROLLER_I|burst_state~q\) # ((!\COLLISION_CONTROLLER_I|Equal0~1_combout\ & ((\s_curr.s_move~q\) # (\s_curr.s_burst_cpy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|burst_state~q\,
	datab => \COLLISION_CONTROLLER_I|Equal0~1_combout\,
	datac => \s_curr.s_move~q\,
	datad => \s_curr.s_burst_cpy~q\,
	combout => \MEM_CONTROLLER_I|burst_count~7_combout\);

-- Location: FF_X17_Y13_N17
\MEM_CONTROLLER_I|burst_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|burst_count[0]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \MEM_CONTROLLER_I|ALT_INV_burst_state~q\,
	ena => \MEM_CONTROLLER_I|burst_count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|burst_count\(0));

-- Location: LCCOMB_X17_Y13_N18
\MEM_CONTROLLER_I|burst_count[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|burst_count[1]~8_combout\ = (\MEM_CONTROLLER_I|burst_count\(1) & (!\MEM_CONTROLLER_I|burst_count[0]~6\)) # (!\MEM_CONTROLLER_I|burst_count\(1) & ((\MEM_CONTROLLER_I|burst_count[0]~6\) # (GND)))
-- \MEM_CONTROLLER_I|burst_count[1]~9\ = CARRY((!\MEM_CONTROLLER_I|burst_count[0]~6\) # (!\MEM_CONTROLLER_I|burst_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MEM_CONTROLLER_I|burst_count\(1),
	datad => VCC,
	cin => \MEM_CONTROLLER_I|burst_count[0]~6\,
	combout => \MEM_CONTROLLER_I|burst_count[1]~8_combout\,
	cout => \MEM_CONTROLLER_I|burst_count[1]~9\);

-- Location: FF_X17_Y13_N19
\MEM_CONTROLLER_I|burst_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|burst_count[1]~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \MEM_CONTROLLER_I|ALT_INV_burst_state~q\,
	ena => \MEM_CONTROLLER_I|burst_count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|burst_count\(1));

-- Location: LCCOMB_X17_Y13_N26
\MEM_CONTROLLER_I|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|LessThan1~0_combout\ = (\MEM_CONTROLLER_I|burst_count\(0) & (!\MEM_CONTROLLER_I|burst_count\(1) & (\MEM_CONTROLLER_I|queue_size\(0) $ (!\MEM_CONTROLLER_I|queue_size\(1))))) # (!\MEM_CONTROLLER_I|burst_count\(0) & 
-- ((\MEM_CONTROLLER_I|queue_size\(1) & ((!\MEM_CONTROLLER_I|burst_count\(1)))) # (!\MEM_CONTROLLER_I|queue_size\(1) & (!\MEM_CONTROLLER_I|queue_size\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|queue_size\(0),
	datab => \MEM_CONTROLLER_I|burst_count\(0),
	datac => \MEM_CONTROLLER_I|queue_size\(1),
	datad => \MEM_CONTROLLER_I|burst_count\(1),
	combout => \MEM_CONTROLLER_I|LessThan1~0_combout\);

-- Location: LCCOMB_X17_Y13_N20
\MEM_CONTROLLER_I|burst_count[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|burst_count[2]~10_combout\ = (\MEM_CONTROLLER_I|burst_count\(2) & (\MEM_CONTROLLER_I|burst_count[1]~9\ $ (GND))) # (!\MEM_CONTROLLER_I|burst_count\(2) & (!\MEM_CONTROLLER_I|burst_count[1]~9\ & VCC))
-- \MEM_CONTROLLER_I|burst_count[2]~11\ = CARRY((\MEM_CONTROLLER_I|burst_count\(2) & !\MEM_CONTROLLER_I|burst_count[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MEM_CONTROLLER_I|burst_count\(2),
	datad => VCC,
	cin => \MEM_CONTROLLER_I|burst_count[1]~9\,
	combout => \MEM_CONTROLLER_I|burst_count[2]~10_combout\,
	cout => \MEM_CONTROLLER_I|burst_count[2]~11\);

-- Location: FF_X17_Y13_N21
\MEM_CONTROLLER_I|burst_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|burst_count[2]~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \MEM_CONTROLLER_I|ALT_INV_burst_state~q\,
	ena => \MEM_CONTROLLER_I|burst_count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|burst_count\(2));

-- Location: LCCOMB_X17_Y13_N8
\MEM_CONTROLLER_I|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|LessThan1~1_combout\ = (\MEM_CONTROLLER_I|LessThan1~0_combout\ & ((!\MEM_CONTROLLER_I|burst_count\(2)) # (!\MEM_CONTROLLER_I|Add1~1_combout\))) # (!\MEM_CONTROLLER_I|LessThan1~0_combout\ & (!\MEM_CONTROLLER_I|Add1~1_combout\ & 
-- !\MEM_CONTROLLER_I|burst_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|LessThan1~0_combout\,
	datac => \MEM_CONTROLLER_I|Add1~1_combout\,
	datad => \MEM_CONTROLLER_I|burst_count\(2),
	combout => \MEM_CONTROLLER_I|LessThan1~1_combout\);

-- Location: LCCOMB_X17_Y13_N22
\MEM_CONTROLLER_I|burst_count[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|burst_count[3]~12_combout\ = (\MEM_CONTROLLER_I|burst_count\(3) & (!\MEM_CONTROLLER_I|burst_count[2]~11\)) # (!\MEM_CONTROLLER_I|burst_count\(3) & ((\MEM_CONTROLLER_I|burst_count[2]~11\) # (GND)))
-- \MEM_CONTROLLER_I|burst_count[3]~13\ = CARRY((!\MEM_CONTROLLER_I|burst_count[2]~11\) # (!\MEM_CONTROLLER_I|burst_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|burst_count\(3),
	datad => VCC,
	cin => \MEM_CONTROLLER_I|burst_count[2]~11\,
	combout => \MEM_CONTROLLER_I|burst_count[3]~12_combout\,
	cout => \MEM_CONTROLLER_I|burst_count[3]~13\);

-- Location: FF_X17_Y13_N23
\MEM_CONTROLLER_I|burst_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|burst_count[3]~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \MEM_CONTROLLER_I|ALT_INV_burst_state~q\,
	ena => \MEM_CONTROLLER_I|burst_count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|burst_count\(3));

-- Location: LCCOMB_X16_Y13_N28
\MEM_CONTROLLER_I|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|Add1~0_combout\ = \MEM_CONTROLLER_I|queue_size\(3) $ (((\MEM_CONTROLLER_I|queue_size\(2)) # ((\MEM_CONTROLLER_I|queue_size\(1)) # (\MEM_CONTROLLER_I|queue_size\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|queue_size\(2),
	datab => \MEM_CONTROLLER_I|queue_size\(1),
	datac => \MEM_CONTROLLER_I|queue_size\(3),
	datad => \MEM_CONTROLLER_I|queue_size\(0),
	combout => \MEM_CONTROLLER_I|Add1~0_combout\);

-- Location: LCCOMB_X17_Y13_N6
\MEM_CONTROLLER_I|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|LessThan1~2_combout\ = (\MEM_CONTROLLER_I|LessThan1~1_combout\ & ((!\MEM_CONTROLLER_I|Add1~0_combout\) # (!\MEM_CONTROLLER_I|burst_count\(3)))) # (!\MEM_CONTROLLER_I|LessThan1~1_combout\ & (!\MEM_CONTROLLER_I|burst_count\(3) & 
-- !\MEM_CONTROLLER_I|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_CONTROLLER_I|LessThan1~1_combout\,
	datac => \MEM_CONTROLLER_I|burst_count\(3),
	datad => \MEM_CONTROLLER_I|Add1~0_combout\,
	combout => \MEM_CONTROLLER_I|LessThan1~2_combout\);

-- Location: LCCOMB_X17_Y13_N24
\MEM_CONTROLLER_I|burst_count[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|burst_count[4]~14_combout\ = \MEM_CONTROLLER_I|burst_count[3]~13\ $ (!\MEM_CONTROLLER_I|burst_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \MEM_CONTROLLER_I|burst_count\(4),
	cin => \MEM_CONTROLLER_I|burst_count[3]~13\,
	combout => \MEM_CONTROLLER_I|burst_count[4]~14_combout\);

-- Location: FF_X17_Y13_N25
\MEM_CONTROLLER_I|burst_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|burst_count[4]~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \MEM_CONTROLLER_I|ALT_INV_burst_state~q\,
	ena => \MEM_CONTROLLER_I|burst_count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|burst_count\(4));

-- Location: LCCOMB_X17_Y13_N2
\MEM_CONTROLLER_I|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|LessThan1~3_combout\ = (\MEM_CONTROLLER_I|LessThan1~2_combout\ & ((\COLLISION_CONTROLLER_I|Equal0~0_combout\ $ (\MEM_CONTROLLER_I|queue_size\(4))) # (!\MEM_CONTROLLER_I|burst_count\(4)))) # (!\MEM_CONTROLLER_I|LessThan1~2_combout\ & 
-- (!\MEM_CONTROLLER_I|burst_count\(4) & (\COLLISION_CONTROLLER_I|Equal0~0_combout\ $ (\MEM_CONTROLLER_I|queue_size\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|LessThan1~2_combout\,
	datab => \COLLISION_CONTROLLER_I|Equal0~0_combout\,
	datac => \MEM_CONTROLLER_I|queue_size\(4),
	datad => \MEM_CONTROLLER_I|burst_count\(4),
	combout => \MEM_CONTROLLER_I|LessThan1~3_combout\);

-- Location: LCCOMB_X17_Y13_N10
\MEM_CONTROLLER_I|burst_state~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|burst_state~0_combout\ = (\MEM_CONTROLLER_I|SET_BURST~0_combout\) # ((\MEM_CONTROLLER_I|LessThan1~3_combout\ & (\MEM_CONTROLLER_I|burst_state~q\ & !\COLLISION_CONTROLLER_I|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|SET_BURST~0_combout\,
	datab => \MEM_CONTROLLER_I|LessThan1~3_combout\,
	datac => \MEM_CONTROLLER_I|burst_state~q\,
	datad => \COLLISION_CONTROLLER_I|Equal0~1_combout\,
	combout => \MEM_CONTROLLER_I|burst_state~0_combout\);

-- Location: FF_X17_Y13_N11
\MEM_CONTROLLER_I|burst_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|burst_state~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|burst_state~q\);

-- Location: LCCOMB_X16_Y12_N28
\MEM_CONTROLLER_I|core_w_data~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|core_w_data~11_combout\ = (\MEM_CONTROLLER_I|burst_state~q\ & (\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(0))) # (!\MEM_CONTROLLER_I|burst_state~q\ & ((\MEM_CONTROLLER_I|ADD_DELETE~0_combout\ & 
-- ((\GEN_INFO_I|LFSR_I|s_curr\(2)))) # (!\MEM_CONTROLLER_I|ADD_DELETE~0_combout\ & (\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|burst_state~q\,
	datab => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(0),
	datac => \MEM_CONTROLLER_I|ADD_DELETE~0_combout\,
	datad => \GEN_INFO_I|LFSR_I|s_curr\(2),
	combout => \MEM_CONTROLLER_I|core_w_data~11_combout\);

-- Location: FF_X16_Y12_N29
\MEM_CONTROLLER_I|core_w_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|core_w_data~11_combout\,
	ena => \MEM_CONTROLLER_I|core_w_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|core_w_data\(0));

-- Location: LCCOMB_X16_Y12_N26
\MEM_CONTROLLER_I|queue_head[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|queue_head[1]~1_combout\ = \MEM_CONTROLLER_I|queue_head\(1) $ (((!\MEM_CONTROLLER_I|burst_state~q\ & (\MEM_CONTROLLER_I|queue_head\(0) & \MEM_CONTROLLER_I|ADD_DELETE~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|burst_state~q\,
	datab => \MEM_CONTROLLER_I|queue_head\(0),
	datac => \MEM_CONTROLLER_I|queue_head\(1),
	datad => \MEM_CONTROLLER_I|ADD_DELETE~1_combout\,
	combout => \MEM_CONTROLLER_I|queue_head[1]~1_combout\);

-- Location: FF_X16_Y12_N27
\MEM_CONTROLLER_I|queue_head[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|queue_head[1]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|queue_head\(1));

-- Location: LCCOMB_X16_Y12_N8
\MEM_CONTROLLER_I|core_w_addr[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|core_w_addr[0]~4_combout\ = (\MEM_CONTROLLER_I|queue_head\(0) & (\MEM_CONTROLLER_I|queue_size\(0) $ (VCC))) # (!\MEM_CONTROLLER_I|queue_head\(0) & (\MEM_CONTROLLER_I|queue_size\(0) & VCC))
-- \MEM_CONTROLLER_I|core_w_addr[0]~5\ = CARRY((\MEM_CONTROLLER_I|queue_head\(0) & \MEM_CONTROLLER_I|queue_size\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|queue_head\(0),
	datab => \MEM_CONTROLLER_I|queue_size\(0),
	datad => VCC,
	combout => \MEM_CONTROLLER_I|core_w_addr[0]~4_combout\,
	cout => \MEM_CONTROLLER_I|core_w_addr[0]~5\);

-- Location: LCCOMB_X16_Y12_N10
\MEM_CONTROLLER_I|core_w_addr[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|core_w_addr[1]~6_combout\ = (\MEM_CONTROLLER_I|queue_size\(1) & ((\MEM_CONTROLLER_I|queue_head\(1) & (\MEM_CONTROLLER_I|core_w_addr[0]~5\ & VCC)) # (!\MEM_CONTROLLER_I|queue_head\(1) & (!\MEM_CONTROLLER_I|core_w_addr[0]~5\)))) # 
-- (!\MEM_CONTROLLER_I|queue_size\(1) & ((\MEM_CONTROLLER_I|queue_head\(1) & (!\MEM_CONTROLLER_I|core_w_addr[0]~5\)) # (!\MEM_CONTROLLER_I|queue_head\(1) & ((\MEM_CONTROLLER_I|core_w_addr[0]~5\) # (GND)))))
-- \MEM_CONTROLLER_I|core_w_addr[1]~7\ = CARRY((\MEM_CONTROLLER_I|queue_size\(1) & (!\MEM_CONTROLLER_I|queue_head\(1) & !\MEM_CONTROLLER_I|core_w_addr[0]~5\)) # (!\MEM_CONTROLLER_I|queue_size\(1) & ((!\MEM_CONTROLLER_I|core_w_addr[0]~5\) # 
-- (!\MEM_CONTROLLER_I|queue_head\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|queue_size\(1),
	datab => \MEM_CONTROLLER_I|queue_head\(1),
	datad => VCC,
	cin => \MEM_CONTROLLER_I|core_w_addr[0]~5\,
	combout => \MEM_CONTROLLER_I|core_w_addr[1]~6_combout\,
	cout => \MEM_CONTROLLER_I|core_w_addr[1]~7\);

-- Location: LCCOMB_X17_Y12_N6
\MEM_CONTROLLER_I|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|Add6~0_combout\ = (\MEM_CONTROLLER_I|burst_count\(0) & (\MEM_CONTROLLER_I|queue_head\(0) $ (VCC))) # (!\MEM_CONTROLLER_I|burst_count\(0) & (\MEM_CONTROLLER_I|queue_head\(0) & VCC))
-- \MEM_CONTROLLER_I|Add6~1\ = CARRY((\MEM_CONTROLLER_I|burst_count\(0) & \MEM_CONTROLLER_I|queue_head\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|burst_count\(0),
	datab => \MEM_CONTROLLER_I|queue_head\(0),
	datad => VCC,
	combout => \MEM_CONTROLLER_I|Add6~0_combout\,
	cout => \MEM_CONTROLLER_I|Add6~1\);

-- Location: LCCOMB_X17_Y12_N8
\MEM_CONTROLLER_I|Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|Add6~2_combout\ = (\MEM_CONTROLLER_I|queue_head\(1) & ((\MEM_CONTROLLER_I|burst_count\(1) & (\MEM_CONTROLLER_I|Add6~1\ & VCC)) # (!\MEM_CONTROLLER_I|burst_count\(1) & (!\MEM_CONTROLLER_I|Add6~1\)))) # (!\MEM_CONTROLLER_I|queue_head\(1) & 
-- ((\MEM_CONTROLLER_I|burst_count\(1) & (!\MEM_CONTROLLER_I|Add6~1\)) # (!\MEM_CONTROLLER_I|burst_count\(1) & ((\MEM_CONTROLLER_I|Add6~1\) # (GND)))))
-- \MEM_CONTROLLER_I|Add6~3\ = CARRY((\MEM_CONTROLLER_I|queue_head\(1) & (!\MEM_CONTROLLER_I|burst_count\(1) & !\MEM_CONTROLLER_I|Add6~1\)) # (!\MEM_CONTROLLER_I|queue_head\(1) & ((!\MEM_CONTROLLER_I|Add6~1\) # (!\MEM_CONTROLLER_I|burst_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|queue_head\(1),
	datab => \MEM_CONTROLLER_I|burst_count\(1),
	datad => VCC,
	cin => \MEM_CONTROLLER_I|Add6~1\,
	combout => \MEM_CONTROLLER_I|Add6~2_combout\,
	cout => \MEM_CONTROLLER_I|Add6~3\);

-- Location: LCCOMB_X11_Y12_N16
\GEN_INFO_I|CNT_I|iter[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|CNT_I|iter[0]~8_combout\ = \GEN_INFO_I|CNT_I|iter\(0) $ (VCC)
-- \GEN_INFO_I|CNT_I|iter[0]~9\ = CARRY(\GEN_INFO_I|CNT_I|iter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN_INFO_I|CNT_I|iter\(0),
	datad => VCC,
	combout => \GEN_INFO_I|CNT_I|iter[0]~8_combout\,
	cout => \GEN_INFO_I|CNT_I|iter[0]~9\);

-- Location: LCCOMB_X12_Y12_N6
\GEN_INFO_I|CNT_I|tick~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|CNT_I|tick~0_combout\ = ((\rst~input_o\) # (!\GEN_INFO_I|CNT_I|Add0~16_combout\)) # (!\GEN_INFO_I|CNT_I|LessThan0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_INFO_I|CNT_I|LessThan0~14_combout\,
	datac => \rst~input_o\,
	datad => \GEN_INFO_I|CNT_I|Add0~16_combout\,
	combout => \GEN_INFO_I|CNT_I|tick~0_combout\);

-- Location: FF_X11_Y12_N17
\GEN_INFO_I|CNT_I|iter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \GEN_INFO_I|CNT_I|iter[0]~8_combout\,
	sclr => \GEN_INFO_I|CNT_I|tick~0_combout\,
	ena => \VGA_SYNC_I|ref_tick~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_INFO_I|CNT_I|iter\(0));

-- Location: LCCOMB_X11_Y12_N18
\GEN_INFO_I|CNT_I|iter[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|CNT_I|iter[1]~10_combout\ = (\GEN_INFO_I|CNT_I|iter\(1) & (!\GEN_INFO_I|CNT_I|iter[0]~9\)) # (!\GEN_INFO_I|CNT_I|iter\(1) & ((\GEN_INFO_I|CNT_I|iter[0]~9\) # (GND)))
-- \GEN_INFO_I|CNT_I|iter[1]~11\ = CARRY((!\GEN_INFO_I|CNT_I|iter[0]~9\) # (!\GEN_INFO_I|CNT_I|iter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN_INFO_I|CNT_I|iter\(1),
	datad => VCC,
	cin => \GEN_INFO_I|CNT_I|iter[0]~9\,
	combout => \GEN_INFO_I|CNT_I|iter[1]~10_combout\,
	cout => \GEN_INFO_I|CNT_I|iter[1]~11\);

-- Location: FF_X11_Y12_N19
\GEN_INFO_I|CNT_I|iter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \GEN_INFO_I|CNT_I|iter[1]~10_combout\,
	sclr => \GEN_INFO_I|CNT_I|tick~0_combout\,
	ena => \VGA_SYNC_I|ref_tick~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_INFO_I|CNT_I|iter\(1));

-- Location: LCCOMB_X11_Y12_N20
\GEN_INFO_I|CNT_I|iter[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|CNT_I|iter[2]~12_combout\ = (\GEN_INFO_I|CNT_I|iter\(2) & (\GEN_INFO_I|CNT_I|iter[1]~11\ $ (GND))) # (!\GEN_INFO_I|CNT_I|iter\(2) & (!\GEN_INFO_I|CNT_I|iter[1]~11\ & VCC))
-- \GEN_INFO_I|CNT_I|iter[2]~13\ = CARRY((\GEN_INFO_I|CNT_I|iter\(2) & !\GEN_INFO_I|CNT_I|iter[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN_INFO_I|CNT_I|iter\(2),
	datad => VCC,
	cin => \GEN_INFO_I|CNT_I|iter[1]~11\,
	combout => \GEN_INFO_I|CNT_I|iter[2]~12_combout\,
	cout => \GEN_INFO_I|CNT_I|iter[2]~13\);

-- Location: FF_X11_Y12_N21
\GEN_INFO_I|CNT_I|iter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \GEN_INFO_I|CNT_I|iter[2]~12_combout\,
	sclr => \GEN_INFO_I|CNT_I|tick~0_combout\,
	ena => \VGA_SYNC_I|ref_tick~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_INFO_I|CNT_I|iter\(2));

-- Location: LCCOMB_X11_Y12_N22
\GEN_INFO_I|CNT_I|iter[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|CNT_I|iter[3]~14_combout\ = (\GEN_INFO_I|CNT_I|iter\(3) & (!\GEN_INFO_I|CNT_I|iter[2]~13\)) # (!\GEN_INFO_I|CNT_I|iter\(3) & ((\GEN_INFO_I|CNT_I|iter[2]~13\) # (GND)))
-- \GEN_INFO_I|CNT_I|iter[3]~15\ = CARRY((!\GEN_INFO_I|CNT_I|iter[2]~13\) # (!\GEN_INFO_I|CNT_I|iter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_INFO_I|CNT_I|iter\(3),
	datad => VCC,
	cin => \GEN_INFO_I|CNT_I|iter[2]~13\,
	combout => \GEN_INFO_I|CNT_I|iter[3]~14_combout\,
	cout => \GEN_INFO_I|CNT_I|iter[3]~15\);

-- Location: FF_X11_Y12_N23
\GEN_INFO_I|CNT_I|iter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \GEN_INFO_I|CNT_I|iter[3]~14_combout\,
	sclr => \GEN_INFO_I|CNT_I|tick~0_combout\,
	ena => \VGA_SYNC_I|ref_tick~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_INFO_I|CNT_I|iter\(3));

-- Location: LCCOMB_X11_Y12_N24
\GEN_INFO_I|CNT_I|iter[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|CNT_I|iter[4]~16_combout\ = (\GEN_INFO_I|CNT_I|iter\(4) & (\GEN_INFO_I|CNT_I|iter[3]~15\ $ (GND))) # (!\GEN_INFO_I|CNT_I|iter\(4) & (!\GEN_INFO_I|CNT_I|iter[3]~15\ & VCC))
-- \GEN_INFO_I|CNT_I|iter[4]~17\ = CARRY((\GEN_INFO_I|CNT_I|iter\(4) & !\GEN_INFO_I|CNT_I|iter[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN_INFO_I|CNT_I|iter\(4),
	datad => VCC,
	cin => \GEN_INFO_I|CNT_I|iter[3]~15\,
	combout => \GEN_INFO_I|CNT_I|iter[4]~16_combout\,
	cout => \GEN_INFO_I|CNT_I|iter[4]~17\);

-- Location: FF_X11_Y12_N25
\GEN_INFO_I|CNT_I|iter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \GEN_INFO_I|CNT_I|iter[4]~16_combout\,
	sclr => \GEN_INFO_I|CNT_I|tick~0_combout\,
	ena => \VGA_SYNC_I|ref_tick~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_INFO_I|CNT_I|iter\(4));

-- Location: LCCOMB_X11_Y12_N26
\GEN_INFO_I|CNT_I|iter[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|CNT_I|iter[5]~18_combout\ = (\GEN_INFO_I|CNT_I|iter\(5) & (!\GEN_INFO_I|CNT_I|iter[4]~17\)) # (!\GEN_INFO_I|CNT_I|iter\(5) & ((\GEN_INFO_I|CNT_I|iter[4]~17\) # (GND)))
-- \GEN_INFO_I|CNT_I|iter[5]~19\ = CARRY((!\GEN_INFO_I|CNT_I|iter[4]~17\) # (!\GEN_INFO_I|CNT_I|iter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_INFO_I|CNT_I|iter\(5),
	datad => VCC,
	cin => \GEN_INFO_I|CNT_I|iter[4]~17\,
	combout => \GEN_INFO_I|CNT_I|iter[5]~18_combout\,
	cout => \GEN_INFO_I|CNT_I|iter[5]~19\);

-- Location: FF_X11_Y12_N27
\GEN_INFO_I|CNT_I|iter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \GEN_INFO_I|CNT_I|iter[5]~18_combout\,
	sclr => \GEN_INFO_I|CNT_I|tick~0_combout\,
	ena => \VGA_SYNC_I|ref_tick~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_INFO_I|CNT_I|iter\(5));

-- Location: LCCOMB_X11_Y12_N28
\GEN_INFO_I|CNT_I|iter[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|CNT_I|iter[6]~20_combout\ = (\GEN_INFO_I|CNT_I|iter\(6) & (\GEN_INFO_I|CNT_I|iter[5]~19\ $ (GND))) # (!\GEN_INFO_I|CNT_I|iter\(6) & (!\GEN_INFO_I|CNT_I|iter[5]~19\ & VCC))
-- \GEN_INFO_I|CNT_I|iter[6]~21\ = CARRY((\GEN_INFO_I|CNT_I|iter\(6) & !\GEN_INFO_I|CNT_I|iter[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN_INFO_I|CNT_I|iter\(6),
	datad => VCC,
	cin => \GEN_INFO_I|CNT_I|iter[5]~19\,
	combout => \GEN_INFO_I|CNT_I|iter[6]~20_combout\,
	cout => \GEN_INFO_I|CNT_I|iter[6]~21\);

-- Location: FF_X11_Y12_N29
\GEN_INFO_I|CNT_I|iter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \GEN_INFO_I|CNT_I|iter[6]~20_combout\,
	sclr => \GEN_INFO_I|CNT_I|tick~0_combout\,
	ena => \VGA_SYNC_I|ref_tick~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_INFO_I|CNT_I|iter\(6));

-- Location: LCCOMB_X11_Y12_N30
\GEN_INFO_I|CNT_I|iter[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|CNT_I|iter[7]~22_combout\ = \GEN_INFO_I|CNT_I|iter\(7) $ (\GEN_INFO_I|CNT_I|iter[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_INFO_I|CNT_I|iter\(7),
	cin => \GEN_INFO_I|CNT_I|iter[6]~21\,
	combout => \GEN_INFO_I|CNT_I|iter[7]~22_combout\);

-- Location: FF_X11_Y12_N31
\GEN_INFO_I|CNT_I|iter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \GEN_INFO_I|CNT_I|iter[7]~22_combout\,
	sclr => \GEN_INFO_I|CNT_I|tick~0_combout\,
	ena => \VGA_SYNC_I|ref_tick~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_INFO_I|CNT_I|iter\(7));

-- Location: LCCOMB_X15_Y13_N26
\update_speed~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \update_speed~0_combout\ = (\MEM_CONTROLLER_I|first\(0)) # ((speed(2) & ((speed(1)) # (!speed(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => speed(2),
	datab => speed(1),
	datac => speed(0),
	datad => \MEM_CONTROLLER_I|first\(0),
	combout => \update_speed~0_combout\);

-- Location: LCCOMB_X15_Y13_N14
\update_speed~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \update_speed~1_combout\ = (\update_speed~0_combout\) # ((!\update_score~0_combout\) # (!\s_curr.s_inc_speed~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \update_speed~0_combout\,
	datab => \s_curr.s_inc_speed~q\,
	datac => \update_score~0_combout\,
	combout => \update_speed~1_combout\);

-- Location: LCCOMB_X15_Y13_N30
\speed~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed~3_combout\ = (\speed[2]~0_combout\ & (\update_speed~1_combout\ $ (!speed(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \update_speed~1_combout\,
	datac => speed(0),
	datad => \speed[2]~0_combout\,
	combout => \speed~3_combout\);

-- Location: FF_X15_Y13_N31
\speed[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \speed~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(0));

-- Location: LCCOMB_X15_Y13_N28
\speed[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[1]~2_combout\ = (\speed[2]~0_combout\ & (speed(1) $ (((!speed(0) & !\update_speed~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => speed(0),
	datab => \update_speed~1_combout\,
	datac => speed(1),
	datad => \speed[2]~0_combout\,
	combout => \speed[1]~2_combout\);

-- Location: FF_X15_Y13_N29
\speed[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \speed[1]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(1));

-- Location: LCCOMB_X14_Y12_N24
\GEN_INFO_I|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|Add1~0_combout\ = (\GEN_INFO_I|Add0~4_combout\ & ((speed(0)) # (GND))) # (!\GEN_INFO_I|Add0~4_combout\ & (speed(0) $ (VCC)))
-- \GEN_INFO_I|Add1~1\ = CARRY((\GEN_INFO_I|Add0~4_combout\) # (speed(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_INFO_I|Add0~4_combout\,
	datab => speed(0),
	datad => VCC,
	combout => \GEN_INFO_I|Add1~0_combout\,
	cout => \GEN_INFO_I|Add1~1\);

-- Location: LCCOMB_X14_Y12_N26
\GEN_INFO_I|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|Add1~2_combout\ = (speed(1) & ((\GEN_INFO_I|Add0~6_combout\ & (!\GEN_INFO_I|Add1~1\)) # (!\GEN_INFO_I|Add0~6_combout\ & ((\GEN_INFO_I|Add1~1\) # (GND))))) # (!speed(1) & ((\GEN_INFO_I|Add0~6_combout\ & (\GEN_INFO_I|Add1~1\ & VCC)) # 
-- (!\GEN_INFO_I|Add0~6_combout\ & (!\GEN_INFO_I|Add1~1\))))
-- \GEN_INFO_I|Add1~3\ = CARRY((speed(1) & ((!\GEN_INFO_I|Add1~1\) # (!\GEN_INFO_I|Add0~6_combout\))) # (!speed(1) & (!\GEN_INFO_I|Add0~6_combout\ & !\GEN_INFO_I|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(1),
	datab => \GEN_INFO_I|Add0~6_combout\,
	datad => VCC,
	cin => \GEN_INFO_I|Add1~1\,
	combout => \GEN_INFO_I|Add1~2_combout\,
	cout => \GEN_INFO_I|Add1~3\);

-- Location: LCCOMB_X14_Y12_N28
\GEN_INFO_I|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|Add1~4_combout\ = ((speed(2) $ (\GEN_INFO_I|Add0~8_combout\ $ (!\GEN_INFO_I|Add1~3\)))) # (GND)
-- \GEN_INFO_I|Add1~5\ = CARRY((speed(2) & (!\GEN_INFO_I|Add0~8_combout\ & !\GEN_INFO_I|Add1~3\)) # (!speed(2) & ((!\GEN_INFO_I|Add1~3\) # (!\GEN_INFO_I|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(2),
	datab => \GEN_INFO_I|Add0~8_combout\,
	datad => VCC,
	cin => \GEN_INFO_I|Add1~3\,
	combout => \GEN_INFO_I|Add1~4_combout\,
	cout => \GEN_INFO_I|Add1~5\);

-- Location: LCCOMB_X14_Y12_N0
\GEN_INFO_I|count_to[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|count_to[6]~0_combout\ = !\GEN_INFO_I|Add1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN_INFO_I|Add1~4_combout\,
	combout => \GEN_INFO_I|count_to[6]~0_combout\);

-- Location: LCCOMB_X15_Y12_N12
\GEN_INFO_I|set_count_to~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|set_count_to~0_combout\ = (\VGA_SYNC_I|ref_tick~combout\ & ((!\GEN_INFO_I|CNT_I|Add0~16_combout\) # (!\GEN_INFO_I|CNT_I|LessThan0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_INFO_I|CNT_I|LessThan0~14_combout\,
	datab => \GEN_INFO_I|CNT_I|Add0~16_combout\,
	datad => \VGA_SYNC_I|ref_tick~combout\,
	combout => \GEN_INFO_I|set_count_to~0_combout\);

-- Location: FF_X14_Y12_N1
\GEN_INFO_I|count_to[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \GEN_INFO_I|count_to[6]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \GEN_INFO_I|set_count_to~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_INFO_I|count_to\(6));

-- Location: FF_X14_Y12_N27
\GEN_INFO_I|count_to[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \GEN_INFO_I|Add1~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \GEN_INFO_I|set_count_to~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_INFO_I|count_to\(5));

-- Location: LCCOMB_X14_Y12_N20
\GEN_INFO_I|count_to[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|count_to[4]~1_combout\ = !\GEN_INFO_I|Add1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN_INFO_I|Add1~0_combout\,
	combout => \GEN_INFO_I|count_to[4]~1_combout\);

-- Location: FF_X14_Y12_N21
\GEN_INFO_I|count_to[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \GEN_INFO_I|count_to[4]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \GEN_INFO_I|set_count_to~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_INFO_I|count_to\(4));

-- Location: LCCOMB_X15_Y12_N18
\GEN_INFO_I|count_to[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|count_to[3]~2_combout\ = !\GEN_INFO_I|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN_INFO_I|Add0~2_combout\,
	combout => \GEN_INFO_I|count_to[3]~2_combout\);

-- Location: FF_X15_Y12_N19
\GEN_INFO_I|count_to[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \GEN_INFO_I|count_to[3]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \GEN_INFO_I|set_count_to~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_INFO_I|count_to\(3));

-- Location: FF_X15_Y12_N3
\GEN_INFO_I|count_to[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \GEN_INFO_I|Add0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \GEN_INFO_I|set_count_to~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_INFO_I|count_to\(2));

-- Location: FF_X14_Y12_N5
\GEN_INFO_I|count_to[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	asdata => \GEN_INFO_I|LFSR_I|s_curr\(1),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \GEN_INFO_I|set_count_to~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_INFO_I|count_to\(1));

-- Location: LCCOMB_X15_Y12_N0
\GEN_INFO_I|count_to[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|count_to[0]~3_combout\ = !\GEN_INFO_I|LFSR_I|s_curr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN_INFO_I|LFSR_I|s_curr\(0),
	combout => \GEN_INFO_I|count_to[0]~3_combout\);

-- Location: FF_X15_Y12_N1
\GEN_INFO_I|count_to[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \GEN_INFO_I|count_to[0]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \GEN_INFO_I|set_count_to~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_INFO_I|count_to\(0));

-- Location: LCCOMB_X14_Y12_N2
\GEN_INFO_I|CNT_I|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|CNT_I|Add0~0_combout\ = \GEN_INFO_I|count_to\(0) $ (VCC)
-- \GEN_INFO_I|CNT_I|Add0~1\ = CARRY(\GEN_INFO_I|count_to\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN_INFO_I|count_to\(0),
	datad => VCC,
	combout => \GEN_INFO_I|CNT_I|Add0~0_combout\,
	cout => \GEN_INFO_I|CNT_I|Add0~1\);

-- Location: LCCOMB_X14_Y12_N4
\GEN_INFO_I|CNT_I|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|CNT_I|Add0~2_combout\ = (\GEN_INFO_I|count_to\(1) & (!\GEN_INFO_I|CNT_I|Add0~1\)) # (!\GEN_INFO_I|count_to\(1) & (\GEN_INFO_I|CNT_I|Add0~1\ & VCC))
-- \GEN_INFO_I|CNT_I|Add0~3\ = CARRY((\GEN_INFO_I|count_to\(1) & !\GEN_INFO_I|CNT_I|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN_INFO_I|count_to\(1),
	datad => VCC,
	cin => \GEN_INFO_I|CNT_I|Add0~1\,
	combout => \GEN_INFO_I|CNT_I|Add0~2_combout\,
	cout => \GEN_INFO_I|CNT_I|Add0~3\);

-- Location: LCCOMB_X14_Y12_N6
\GEN_INFO_I|CNT_I|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|CNT_I|Add0~4_combout\ = (\GEN_INFO_I|count_to\(2) & ((GND) # (!\GEN_INFO_I|CNT_I|Add0~3\))) # (!\GEN_INFO_I|count_to\(2) & (\GEN_INFO_I|CNT_I|Add0~3\ $ (GND)))
-- \GEN_INFO_I|CNT_I|Add0~5\ = CARRY((\GEN_INFO_I|count_to\(2)) # (!\GEN_INFO_I|CNT_I|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_INFO_I|count_to\(2),
	datad => VCC,
	cin => \GEN_INFO_I|CNT_I|Add0~3\,
	combout => \GEN_INFO_I|CNT_I|Add0~4_combout\,
	cout => \GEN_INFO_I|CNT_I|Add0~5\);

-- Location: LCCOMB_X14_Y12_N8
\GEN_INFO_I|CNT_I|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|CNT_I|Add0~6_combout\ = (\GEN_INFO_I|count_to\(3) & (!\GEN_INFO_I|CNT_I|Add0~5\)) # (!\GEN_INFO_I|count_to\(3) & (\GEN_INFO_I|CNT_I|Add0~5\ & VCC))
-- \GEN_INFO_I|CNT_I|Add0~7\ = CARRY((\GEN_INFO_I|count_to\(3) & !\GEN_INFO_I|CNT_I|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN_INFO_I|count_to\(3),
	datad => VCC,
	cin => \GEN_INFO_I|CNT_I|Add0~5\,
	combout => \GEN_INFO_I|CNT_I|Add0~6_combout\,
	cout => \GEN_INFO_I|CNT_I|Add0~7\);

-- Location: LCCOMB_X14_Y12_N10
\GEN_INFO_I|CNT_I|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|CNT_I|Add0~8_combout\ = (\GEN_INFO_I|count_to\(4) & (\GEN_INFO_I|CNT_I|Add0~7\ $ (GND))) # (!\GEN_INFO_I|count_to\(4) & ((GND) # (!\GEN_INFO_I|CNT_I|Add0~7\)))
-- \GEN_INFO_I|CNT_I|Add0~9\ = CARRY((!\GEN_INFO_I|CNT_I|Add0~7\) # (!\GEN_INFO_I|count_to\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN_INFO_I|count_to\(4),
	datad => VCC,
	cin => \GEN_INFO_I|CNT_I|Add0~7\,
	combout => \GEN_INFO_I|CNT_I|Add0~8_combout\,
	cout => \GEN_INFO_I|CNT_I|Add0~9\);

-- Location: LCCOMB_X14_Y12_N12
\GEN_INFO_I|CNT_I|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|CNT_I|Add0~10_combout\ = (\GEN_INFO_I|count_to\(5) & (\GEN_INFO_I|CNT_I|Add0~9\ & VCC)) # (!\GEN_INFO_I|count_to\(5) & (!\GEN_INFO_I|CNT_I|Add0~9\))
-- \GEN_INFO_I|CNT_I|Add0~11\ = CARRY((!\GEN_INFO_I|count_to\(5) & !\GEN_INFO_I|CNT_I|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_INFO_I|count_to\(5),
	datad => VCC,
	cin => \GEN_INFO_I|CNT_I|Add0~9\,
	combout => \GEN_INFO_I|CNT_I|Add0~10_combout\,
	cout => \GEN_INFO_I|CNT_I|Add0~11\);

-- Location: LCCOMB_X14_Y12_N14
\GEN_INFO_I|CNT_I|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|CNT_I|Add0~12_combout\ = (\GEN_INFO_I|count_to\(6) & (\GEN_INFO_I|CNT_I|Add0~11\ $ (GND))) # (!\GEN_INFO_I|count_to\(6) & ((GND) # (!\GEN_INFO_I|CNT_I|Add0~11\)))
-- \GEN_INFO_I|CNT_I|Add0~13\ = CARRY((!\GEN_INFO_I|CNT_I|Add0~11\) # (!\GEN_INFO_I|count_to\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN_INFO_I|count_to\(6),
	datad => VCC,
	cin => \GEN_INFO_I|CNT_I|Add0~11\,
	combout => \GEN_INFO_I|CNT_I|Add0~12_combout\,
	cout => \GEN_INFO_I|CNT_I|Add0~13\);

-- Location: LCCOMB_X14_Y12_N16
\GEN_INFO_I|CNT_I|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|CNT_I|Add0~14_combout\ = (\GEN_INFO_I|count_to\(7) & (\GEN_INFO_I|CNT_I|Add0~13\ & VCC)) # (!\GEN_INFO_I|count_to\(7) & (!\GEN_INFO_I|CNT_I|Add0~13\))
-- \GEN_INFO_I|CNT_I|Add0~15\ = CARRY((!\GEN_INFO_I|count_to\(7) & !\GEN_INFO_I|CNT_I|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_INFO_I|count_to\(7),
	datad => VCC,
	cin => \GEN_INFO_I|CNT_I|Add0~13\,
	combout => \GEN_INFO_I|CNT_I|Add0~14_combout\,
	cout => \GEN_INFO_I|CNT_I|Add0~15\);

-- Location: LCCOMB_X11_Y12_N0
\GEN_INFO_I|CNT_I|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|CNT_I|LessThan0~1_cout\ = CARRY((\GEN_INFO_I|CNT_I|Add0~0_combout\ & !\GEN_INFO_I|CNT_I|iter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_INFO_I|CNT_I|Add0~0_combout\,
	datab => \GEN_INFO_I|CNT_I|iter\(0),
	datad => VCC,
	cout => \GEN_INFO_I|CNT_I|LessThan0~1_cout\);

-- Location: LCCOMB_X11_Y12_N2
\GEN_INFO_I|CNT_I|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|CNT_I|LessThan0~3_cout\ = CARRY((\GEN_INFO_I|CNT_I|Add0~2_combout\ & (\GEN_INFO_I|CNT_I|iter\(1) & !\GEN_INFO_I|CNT_I|LessThan0~1_cout\)) # (!\GEN_INFO_I|CNT_I|Add0~2_combout\ & ((\GEN_INFO_I|CNT_I|iter\(1)) # 
-- (!\GEN_INFO_I|CNT_I|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_INFO_I|CNT_I|Add0~2_combout\,
	datab => \GEN_INFO_I|CNT_I|iter\(1),
	datad => VCC,
	cin => \GEN_INFO_I|CNT_I|LessThan0~1_cout\,
	cout => \GEN_INFO_I|CNT_I|LessThan0~3_cout\);

-- Location: LCCOMB_X11_Y12_N4
\GEN_INFO_I|CNT_I|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|CNT_I|LessThan0~5_cout\ = CARRY((\GEN_INFO_I|CNT_I|Add0~4_combout\ & ((!\GEN_INFO_I|CNT_I|LessThan0~3_cout\) # (!\GEN_INFO_I|CNT_I|iter\(2)))) # (!\GEN_INFO_I|CNT_I|Add0~4_combout\ & (!\GEN_INFO_I|CNT_I|iter\(2) & 
-- !\GEN_INFO_I|CNT_I|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_INFO_I|CNT_I|Add0~4_combout\,
	datab => \GEN_INFO_I|CNT_I|iter\(2),
	datad => VCC,
	cin => \GEN_INFO_I|CNT_I|LessThan0~3_cout\,
	cout => \GEN_INFO_I|CNT_I|LessThan0~5_cout\);

-- Location: LCCOMB_X11_Y12_N6
\GEN_INFO_I|CNT_I|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|CNT_I|LessThan0~7_cout\ = CARRY((\GEN_INFO_I|CNT_I|iter\(3) & ((!\GEN_INFO_I|CNT_I|LessThan0~5_cout\) # (!\GEN_INFO_I|CNT_I|Add0~6_combout\))) # (!\GEN_INFO_I|CNT_I|iter\(3) & (!\GEN_INFO_I|CNT_I|Add0~6_combout\ & 
-- !\GEN_INFO_I|CNT_I|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_INFO_I|CNT_I|iter\(3),
	datab => \GEN_INFO_I|CNT_I|Add0~6_combout\,
	datad => VCC,
	cin => \GEN_INFO_I|CNT_I|LessThan0~5_cout\,
	cout => \GEN_INFO_I|CNT_I|LessThan0~7_cout\);

-- Location: LCCOMB_X11_Y12_N8
\GEN_INFO_I|CNT_I|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|CNT_I|LessThan0~9_cout\ = CARRY((\GEN_INFO_I|CNT_I|Add0~8_combout\ & ((!\GEN_INFO_I|CNT_I|LessThan0~7_cout\) # (!\GEN_INFO_I|CNT_I|iter\(4)))) # (!\GEN_INFO_I|CNT_I|Add0~8_combout\ & (!\GEN_INFO_I|CNT_I|iter\(4) & 
-- !\GEN_INFO_I|CNT_I|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_INFO_I|CNT_I|Add0~8_combout\,
	datab => \GEN_INFO_I|CNT_I|iter\(4),
	datad => VCC,
	cin => \GEN_INFO_I|CNT_I|LessThan0~7_cout\,
	cout => \GEN_INFO_I|CNT_I|LessThan0~9_cout\);

-- Location: LCCOMB_X11_Y12_N10
\GEN_INFO_I|CNT_I|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|CNT_I|LessThan0~11_cout\ = CARRY((\GEN_INFO_I|CNT_I|Add0~10_combout\ & (\GEN_INFO_I|CNT_I|iter\(5) & !\GEN_INFO_I|CNT_I|LessThan0~9_cout\)) # (!\GEN_INFO_I|CNT_I|Add0~10_combout\ & ((\GEN_INFO_I|CNT_I|iter\(5)) # 
-- (!\GEN_INFO_I|CNT_I|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_INFO_I|CNT_I|Add0~10_combout\,
	datab => \GEN_INFO_I|CNT_I|iter\(5),
	datad => VCC,
	cin => \GEN_INFO_I|CNT_I|LessThan0~9_cout\,
	cout => \GEN_INFO_I|CNT_I|LessThan0~11_cout\);

-- Location: LCCOMB_X11_Y12_N12
\GEN_INFO_I|CNT_I|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|CNT_I|LessThan0~13_cout\ = CARRY((\GEN_INFO_I|CNT_I|Add0~12_combout\ & ((!\GEN_INFO_I|CNT_I|LessThan0~11_cout\) # (!\GEN_INFO_I|CNT_I|iter\(6)))) # (!\GEN_INFO_I|CNT_I|Add0~12_combout\ & (!\GEN_INFO_I|CNT_I|iter\(6) & 
-- !\GEN_INFO_I|CNT_I|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_INFO_I|CNT_I|Add0~12_combout\,
	datab => \GEN_INFO_I|CNT_I|iter\(6),
	datad => VCC,
	cin => \GEN_INFO_I|CNT_I|LessThan0~11_cout\,
	cout => \GEN_INFO_I|CNT_I|LessThan0~13_cout\);

-- Location: LCCOMB_X11_Y12_N14
\GEN_INFO_I|CNT_I|LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|CNT_I|LessThan0~14_combout\ = (\GEN_INFO_I|CNT_I|iter\(7) & (\GEN_INFO_I|CNT_I|LessThan0~13_cout\ & \GEN_INFO_I|CNT_I|Add0~14_combout\)) # (!\GEN_INFO_I|CNT_I|iter\(7) & ((\GEN_INFO_I|CNT_I|LessThan0~13_cout\) # 
-- (\GEN_INFO_I|CNT_I|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_INFO_I|CNT_I|iter\(7),
	datad => \GEN_INFO_I|CNT_I|Add0~14_combout\,
	cin => \GEN_INFO_I|CNT_I|LessThan0~13_cout\,
	combout => \GEN_INFO_I|CNT_I|LessThan0~14_combout\);

-- Location: LCCOMB_X15_Y12_N20
\MEM_CONTROLLER_I|WRITE_CORE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|WRITE_CORE~0_combout\ = (\s_curr.s_add_elem~q\ & !\MEM_CONTROLLER_I|burst_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_curr.s_add_elem~q\,
	datad => \MEM_CONTROLLER_I|burst_state~q\,
	combout => \MEM_CONTROLLER_I|WRITE_CORE~0_combout\);

-- Location: LCCOMB_X12_Y12_N2
\MEM_CONTROLLER_I|WRITE_CORE~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|WRITE_CORE~1_combout\ = (\MEM_CONTROLLER_I|WRITE_CORE~0_combout\ & (!\MEM_CONTROLLER_I|queue_size\(4) & ((!\GEN_INFO_I|CNT_I|Add0~16_combout\) # (!\GEN_INFO_I|CNT_I|LessThan0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_INFO_I|CNT_I|LessThan0~14_combout\,
	datab => \GEN_INFO_I|CNT_I|Add0~16_combout\,
	datac => \MEM_CONTROLLER_I|WRITE_CORE~0_combout\,
	datad => \MEM_CONTROLLER_I|queue_size\(4),
	combout => \MEM_CONTROLLER_I|WRITE_CORE~1_combout\);

-- Location: FF_X16_Y12_N11
\MEM_CONTROLLER_I|core_w_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|core_w_addr[1]~6_combout\,
	asdata => \MEM_CONTROLLER_I|Add6~2_combout\,
	sload => \MEM_CONTROLLER_I|ALT_INV_WRITE_CORE~1_combout\,
	ena => \MEM_CONTROLLER_I|core_w_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|core_w_addr\(1));

-- Location: LCCOMB_X16_Y12_N2
\MEM_CONTROLLER_I|queue_head[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|queue_head[2]~2_combout\ = (\MEM_CONTROLLER_I|queue_head\(1) & (\MEM_CONTROLLER_I|queue_head\(0) & (!\MEM_CONTROLLER_I|burst_state~q\ & \MEM_CONTROLLER_I|ADD_DELETE~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|queue_head\(1),
	datab => \MEM_CONTROLLER_I|queue_head\(0),
	datac => \MEM_CONTROLLER_I|burst_state~q\,
	datad => \MEM_CONTROLLER_I|ADD_DELETE~1_combout\,
	combout => \MEM_CONTROLLER_I|queue_head[2]~2_combout\);

-- Location: LCCOMB_X16_Y12_N24
\MEM_CONTROLLER_I|queue_head[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|queue_head[2]~3_combout\ = \MEM_CONTROLLER_I|queue_head\(2) $ (\MEM_CONTROLLER_I|queue_head[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM_CONTROLLER_I|queue_head\(2),
	datad => \MEM_CONTROLLER_I|queue_head[2]~2_combout\,
	combout => \MEM_CONTROLLER_I|queue_head[2]~3_combout\);

-- Location: FF_X16_Y12_N25
\MEM_CONTROLLER_I|queue_head[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|queue_head[2]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|queue_head\(2));

-- Location: LCCOMB_X16_Y12_N12
\MEM_CONTROLLER_I|core_w_addr[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|core_w_addr[2]~8_combout\ = ((\MEM_CONTROLLER_I|queue_size\(2) $ (\MEM_CONTROLLER_I|queue_head\(2) $ (!\MEM_CONTROLLER_I|core_w_addr[1]~7\)))) # (GND)
-- \MEM_CONTROLLER_I|core_w_addr[2]~9\ = CARRY((\MEM_CONTROLLER_I|queue_size\(2) & ((\MEM_CONTROLLER_I|queue_head\(2)) # (!\MEM_CONTROLLER_I|core_w_addr[1]~7\))) # (!\MEM_CONTROLLER_I|queue_size\(2) & (\MEM_CONTROLLER_I|queue_head\(2) & 
-- !\MEM_CONTROLLER_I|core_w_addr[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|queue_size\(2),
	datab => \MEM_CONTROLLER_I|queue_head\(2),
	datad => VCC,
	cin => \MEM_CONTROLLER_I|core_w_addr[1]~7\,
	combout => \MEM_CONTROLLER_I|core_w_addr[2]~8_combout\,
	cout => \MEM_CONTROLLER_I|core_w_addr[2]~9\);

-- Location: LCCOMB_X17_Y12_N10
\MEM_CONTROLLER_I|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|Add6~4_combout\ = ((\MEM_CONTROLLER_I|queue_head\(2) $ (\MEM_CONTROLLER_I|burst_count\(2) $ (!\MEM_CONTROLLER_I|Add6~3\)))) # (GND)
-- \MEM_CONTROLLER_I|Add6~5\ = CARRY((\MEM_CONTROLLER_I|queue_head\(2) & ((\MEM_CONTROLLER_I|burst_count\(2)) # (!\MEM_CONTROLLER_I|Add6~3\))) # (!\MEM_CONTROLLER_I|queue_head\(2) & (\MEM_CONTROLLER_I|burst_count\(2) & !\MEM_CONTROLLER_I|Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|queue_head\(2),
	datab => \MEM_CONTROLLER_I|burst_count\(2),
	datad => VCC,
	cin => \MEM_CONTROLLER_I|Add6~3\,
	combout => \MEM_CONTROLLER_I|Add6~4_combout\,
	cout => \MEM_CONTROLLER_I|Add6~5\);

-- Location: FF_X16_Y12_N13
\MEM_CONTROLLER_I|core_w_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|core_w_addr[2]~8_combout\,
	asdata => \MEM_CONTROLLER_I|Add6~4_combout\,
	sload => \MEM_CONTROLLER_I|ALT_INV_WRITE_CORE~1_combout\,
	ena => \MEM_CONTROLLER_I|core_w_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|core_w_addr\(2));

-- Location: LCCOMB_X16_Y12_N18
\MEM_CONTROLLER_I|queue_head[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|queue_head[3]~4_combout\ = \MEM_CONTROLLER_I|queue_head\(3) $ (((\MEM_CONTROLLER_I|queue_head\(2) & \MEM_CONTROLLER_I|queue_head[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_CONTROLLER_I|queue_head\(2),
	datac => \MEM_CONTROLLER_I|queue_head\(3),
	datad => \MEM_CONTROLLER_I|queue_head[2]~2_combout\,
	combout => \MEM_CONTROLLER_I|queue_head[3]~4_combout\);

-- Location: FF_X16_Y12_N19
\MEM_CONTROLLER_I|queue_head[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|queue_head[3]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|queue_head\(3));

-- Location: LCCOMB_X16_Y12_N14
\MEM_CONTROLLER_I|core_w_addr[3]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|core_w_addr[3]~10_combout\ = \MEM_CONTROLLER_I|queue_head\(3) $ (\MEM_CONTROLLER_I|core_w_addr[2]~9\ $ (\MEM_CONTROLLER_I|queue_size\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MEM_CONTROLLER_I|queue_head\(3),
	datad => \MEM_CONTROLLER_I|queue_size\(3),
	cin => \MEM_CONTROLLER_I|core_w_addr[2]~9\,
	combout => \MEM_CONTROLLER_I|core_w_addr[3]~10_combout\);

-- Location: LCCOMB_X17_Y12_N12
\MEM_CONTROLLER_I|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|Add6~6_combout\ = \MEM_CONTROLLER_I|queue_head\(3) $ (\MEM_CONTROLLER_I|Add6~5\ $ (\MEM_CONTROLLER_I|burst_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MEM_CONTROLLER_I|queue_head\(3),
	datad => \MEM_CONTROLLER_I|burst_count\(3),
	cin => \MEM_CONTROLLER_I|Add6~5\,
	combout => \MEM_CONTROLLER_I|Add6~6_combout\);

-- Location: FF_X16_Y12_N15
\MEM_CONTROLLER_I|core_w_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|core_w_addr[3]~10_combout\,
	asdata => \MEM_CONTROLLER_I|Add6~6_combout\,
	sload => \MEM_CONTROLLER_I|ALT_INV_WRITE_CORE~1_combout\,
	ena => \MEM_CONTROLLER_I|core_w_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|core_w_addr\(3));

-- Location: LCCOMB_X16_Y12_N4
\MEM_CONTROLLER_I|core_r_addr[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|core_r_addr[0]~0_combout\ = (\MEM_CONTROLLER_I|burst_state~q\ & (!\MEM_CONTROLLER_I|Add6~0_combout\)) # (!\MEM_CONTROLLER_I|burst_state~q\ & ((\MEM_CONTROLLER_I|queue_head\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|burst_state~q\,
	datab => \MEM_CONTROLLER_I|Add6~0_combout\,
	datac => \MEM_CONTROLLER_I|queue_head\(0),
	combout => \MEM_CONTROLLER_I|core_r_addr[0]~0_combout\);

-- Location: LCCOMB_X17_Y12_N2
\MEM_CONTROLLER_I|core_r_addr[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|core_r_addr[1]~1_combout\ = (\MEM_CONTROLLER_I|burst_state~q\ & (\MEM_CONTROLLER_I|Add6~0_combout\ $ ((\MEM_CONTROLLER_I|Add6~2_combout\)))) # (!\MEM_CONTROLLER_I|burst_state~q\ & (((\MEM_CONTROLLER_I|queue_head\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|Add6~0_combout\,
	datab => \MEM_CONTROLLER_I|Add6~2_combout\,
	datac => \MEM_CONTROLLER_I|queue_head\(1),
	datad => \MEM_CONTROLLER_I|burst_state~q\,
	combout => \MEM_CONTROLLER_I|core_r_addr[1]~1_combout\);

-- Location: LCCOMB_X17_Y12_N16
\MEM_CONTROLLER_I|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|Add4~0_combout\ = (\MEM_CONTROLLER_I|Add6~2_combout\ & \MEM_CONTROLLER_I|Add6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM_CONTROLLER_I|Add6~2_combout\,
	datad => \MEM_CONTROLLER_I|Add6~0_combout\,
	combout => \MEM_CONTROLLER_I|Add4~0_combout\);

-- Location: LCCOMB_X17_Y12_N22
\MEM_CONTROLLER_I|core_r_addr[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|core_r_addr[2]~2_combout\ = (\MEM_CONTROLLER_I|burst_state~q\ & (\MEM_CONTROLLER_I|Add6~4_combout\ $ ((\MEM_CONTROLLER_I|Add4~0_combout\)))) # (!\MEM_CONTROLLER_I|burst_state~q\ & (((\MEM_CONTROLLER_I|queue_head\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|Add6~4_combout\,
	datab => \MEM_CONTROLLER_I|Add4~0_combout\,
	datac => \MEM_CONTROLLER_I|queue_head\(2),
	datad => \MEM_CONTROLLER_I|burst_state~q\,
	combout => \MEM_CONTROLLER_I|core_r_addr[2]~2_combout\);

-- Location: LCCOMB_X17_Y12_N4
\MEM_CONTROLLER_I|Add4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|Add4~1_combout\ = (\MEM_CONTROLLER_I|Add6~0_combout\ & (\MEM_CONTROLLER_I|Add6~2_combout\ & \MEM_CONTROLLER_I|Add6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|Add6~0_combout\,
	datac => \MEM_CONTROLLER_I|Add6~2_combout\,
	datad => \MEM_CONTROLLER_I|Add6~4_combout\,
	combout => \MEM_CONTROLLER_I|Add4~1_combout\);

-- Location: LCCOMB_X17_Y12_N30
\MEM_CONTROLLER_I|core_r_addr[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|core_r_addr[3]~3_combout\ = (\MEM_CONTROLLER_I|burst_state~q\ & (\MEM_CONTROLLER_I|Add6~6_combout\ $ (((\MEM_CONTROLLER_I|Add4~1_combout\))))) # (!\MEM_CONTROLLER_I|burst_state~q\ & (((\MEM_CONTROLLER_I|queue_head\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|Add6~6_combout\,
	datab => \MEM_CONTROLLER_I|queue_head\(3),
	datac => \MEM_CONTROLLER_I|Add4~1_combout\,
	datad => \MEM_CONTROLLER_I|burst_state~q\,
	combout => \MEM_CONTROLLER_I|core_r_addr[3]~3_combout\);

-- Location: LCCOMB_X12_Y12_N10
\MEM_CONTROLLER_I|core_w_data[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|core_w_data[3]~12_combout\ = (\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(3) & ((speed(0)) # (GND))) # (!\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(3) & (speed(0) $ (VCC)))
-- \MEM_CONTROLLER_I|core_w_data[3]~13\ = CARRY((\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(3)) # (speed(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(3),
	datab => speed(0),
	datad => VCC,
	combout => \MEM_CONTROLLER_I|core_w_data[3]~12_combout\,
	cout => \MEM_CONTROLLER_I|core_w_data[3]~13\);

-- Location: LCCOMB_X12_Y12_N12
\MEM_CONTROLLER_I|core_w_data[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|core_w_data[4]~14_combout\ = (\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(4) & ((speed(1) & (!\MEM_CONTROLLER_I|core_w_data[3]~13\)) # (!speed(1) & (\MEM_CONTROLLER_I|core_w_data[3]~13\ & VCC)))) # 
-- (!\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(4) & ((speed(1) & ((\MEM_CONTROLLER_I|core_w_data[3]~13\) # (GND))) # (!speed(1) & (!\MEM_CONTROLLER_I|core_w_data[3]~13\))))
-- \MEM_CONTROLLER_I|core_w_data[4]~15\ = CARRY((\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(4) & (speed(1) & !\MEM_CONTROLLER_I|core_w_data[3]~13\)) # (!\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(4) & ((speed(1)) # 
-- (!\MEM_CONTROLLER_I|core_w_data[3]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(4),
	datab => speed(1),
	datad => VCC,
	cin => \MEM_CONTROLLER_I|core_w_data[3]~13\,
	combout => \MEM_CONTROLLER_I|core_w_data[4]~14_combout\,
	cout => \MEM_CONTROLLER_I|core_w_data[4]~15\);

-- Location: LCCOMB_X12_Y12_N14
\MEM_CONTROLLER_I|core_w_data[5]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|core_w_data[5]~16_combout\ = ((speed(2) $ (\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(5) $ (\MEM_CONTROLLER_I|core_w_data[4]~15\)))) # (GND)
-- \MEM_CONTROLLER_I|core_w_data[5]~17\ = CARRY((speed(2) & (\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(5) & !\MEM_CONTROLLER_I|core_w_data[4]~15\)) # (!speed(2) & ((\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(5)) # 
-- (!\MEM_CONTROLLER_I|core_w_data[4]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(2),
	datab => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(5),
	datad => VCC,
	cin => \MEM_CONTROLLER_I|core_w_data[4]~15\,
	combout => \MEM_CONTROLLER_I|core_w_data[5]~16_combout\,
	cout => \MEM_CONTROLLER_I|core_w_data[5]~17\);

-- Location: LCCOMB_X12_Y12_N16
\MEM_CONTROLLER_I|core_w_data[6]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|core_w_data[6]~18_combout\ = (\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(6) & (\MEM_CONTROLLER_I|core_w_data[5]~17\ & VCC)) # (!\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(6) & (!\MEM_CONTROLLER_I|core_w_data[5]~17\))
-- \MEM_CONTROLLER_I|core_w_data[6]~19\ = CARRY((!\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(6) & !\MEM_CONTROLLER_I|core_w_data[5]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(6),
	datad => VCC,
	cin => \MEM_CONTROLLER_I|core_w_data[5]~17\,
	combout => \MEM_CONTROLLER_I|core_w_data[6]~18_combout\,
	cout => \MEM_CONTROLLER_I|core_w_data[6]~19\);

-- Location: LCCOMB_X12_Y12_N18
\MEM_CONTROLLER_I|core_w_data[7]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|core_w_data[7]~20_combout\ = (\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(7) & ((GND) # (!\MEM_CONTROLLER_I|core_w_data[6]~19\))) # (!\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(7) & 
-- (\MEM_CONTROLLER_I|core_w_data[6]~19\ $ (GND)))
-- \MEM_CONTROLLER_I|core_w_data[7]~21\ = CARRY((\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(7)) # (!\MEM_CONTROLLER_I|core_w_data[6]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(7),
	datad => VCC,
	cin => \MEM_CONTROLLER_I|core_w_data[6]~19\,
	combout => \MEM_CONTROLLER_I|core_w_data[7]~20_combout\,
	cout => \MEM_CONTROLLER_I|core_w_data[7]~21\);

-- Location: LCCOMB_X12_Y12_N20
\MEM_CONTROLLER_I|core_w_data[8]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|core_w_data[8]~22_combout\ = (\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(8) & (\MEM_CONTROLLER_I|core_w_data[7]~21\ & VCC)) # (!\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(8) & (!\MEM_CONTROLLER_I|core_w_data[7]~21\))
-- \MEM_CONTROLLER_I|core_w_data[8]~23\ = CARRY((!\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(8) & !\MEM_CONTROLLER_I|core_w_data[7]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(8),
	datad => VCC,
	cin => \MEM_CONTROLLER_I|core_w_data[7]~21\,
	combout => \MEM_CONTROLLER_I|core_w_data[8]~22_combout\,
	cout => \MEM_CONTROLLER_I|core_w_data[8]~23\);

-- Location: LCCOMB_X12_Y12_N22
\MEM_CONTROLLER_I|core_w_data[9]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|core_w_data[9]~26_combout\ = (\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(9) & ((GND) # (!\MEM_CONTROLLER_I|core_w_data[8]~23\))) # (!\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(9) & 
-- (\MEM_CONTROLLER_I|core_w_data[8]~23\ $ (GND)))
-- \MEM_CONTROLLER_I|core_w_data[9]~27\ = CARRY((\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(9)) # (!\MEM_CONTROLLER_I|core_w_data[8]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(9),
	datad => VCC,
	cin => \MEM_CONTROLLER_I|core_w_data[8]~23\,
	combout => \MEM_CONTROLLER_I|core_w_data[9]~26_combout\,
	cout => \MEM_CONTROLLER_I|core_w_data[9]~27\);

-- Location: FF_X12_Y12_N23
\MEM_CONTROLLER_I|core_w_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|core_w_data[9]~26_combout\,
	asdata => VCC,
	sload => \MEM_CONTROLLER_I|WRITE_CORE~1_combout\,
	ena => \MEM_CONTROLLER_I|core_w_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|core_w_data\(9));

-- Location: LCCOMB_X12_Y12_N24
\MEM_CONTROLLER_I|core_w_data[10]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|core_w_data[10]~28_combout\ = (\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(10) & (\MEM_CONTROLLER_I|core_w_data[9]~27\ & VCC)) # (!\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(10) & 
-- (!\MEM_CONTROLLER_I|core_w_data[9]~27\))
-- \MEM_CONTROLLER_I|core_w_data[10]~29\ = CARRY((!\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(10) & !\MEM_CONTROLLER_I|core_w_data[9]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(10),
	datad => VCC,
	cin => \MEM_CONTROLLER_I|core_w_data[9]~27\,
	combout => \MEM_CONTROLLER_I|core_w_data[10]~28_combout\,
	cout => \MEM_CONTROLLER_I|core_w_data[10]~29\);

-- Location: LCCOMB_X12_Y12_N26
\MEM_CONTROLLER_I|core_w_data[11]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|core_w_data[11]~30_combout\ = (\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(11) & ((GND) # (!\MEM_CONTROLLER_I|core_w_data[10]~29\))) # (!\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(11) & 
-- (\MEM_CONTROLLER_I|core_w_data[10]~29\ $ (GND)))
-- \MEM_CONTROLLER_I|core_w_data[11]~31\ = CARRY((\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(11)) # (!\MEM_CONTROLLER_I|core_w_data[10]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(11),
	datad => VCC,
	cin => \MEM_CONTROLLER_I|core_w_data[10]~29\,
	combout => \MEM_CONTROLLER_I|core_w_data[11]~30_combout\,
	cout => \MEM_CONTROLLER_I|core_w_data[11]~31\);

-- Location: LCCOMB_X12_Y12_N28
\MEM_CONTROLLER_I|core_w_data[12]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|core_w_data[12]~32_combout\ = (\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(12) & (\MEM_CONTROLLER_I|core_w_data[11]~31\ & VCC)) # (!\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(12) & 
-- (!\MEM_CONTROLLER_I|core_w_data[11]~31\))
-- \MEM_CONTROLLER_I|core_w_data[12]~33\ = CARRY((!\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(12) & !\MEM_CONTROLLER_I|core_w_data[11]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(12),
	datad => VCC,
	cin => \MEM_CONTROLLER_I|core_w_data[11]~31\,
	combout => \MEM_CONTROLLER_I|core_w_data[12]~32_combout\,
	cout => \MEM_CONTROLLER_I|core_w_data[12]~33\);

-- Location: LCCOMB_X12_Y12_N30
\MEM_CONTROLLER_I|core_w_data[13]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|core_w_data[13]~34_combout\ = \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(13) $ (\MEM_CONTROLLER_I|core_w_data[12]~33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(13),
	cin => \MEM_CONTROLLER_I|core_w_data[12]~33\,
	combout => \MEM_CONTROLLER_I|core_w_data[13]~34_combout\);

-- Location: LCCOMB_X12_Y12_N4
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X12_Y12_N31
\MEM_CONTROLLER_I|core_w_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|core_w_data[13]~34_combout\,
	asdata => \~GND~combout\,
	sload => \MEM_CONTROLLER_I|WRITE_CORE~1_combout\,
	ena => \MEM_CONTROLLER_I|core_w_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|core_w_data\(13));

-- Location: M9K_X13_Y12_N0
\CORE_MEM_I|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "mem:CORE_MEM_I|altsyncram:altsyncram_component|altsyncram_9ho3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 16,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_CONTROLLER_I|core_w_en~q\,
	portbre => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \CORE_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \CORE_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \CORE_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \CORE_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: FF_X12_Y12_N29
\MEM_CONTROLLER_I|core_w_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|core_w_data[12]~32_combout\,
	asdata => VCC,
	sload => \MEM_CONTROLLER_I|WRITE_CORE~1_combout\,
	ena => \MEM_CONTROLLER_I|core_w_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|core_w_data\(12));

-- Location: FF_X12_Y12_N27
\MEM_CONTROLLER_I|core_w_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|core_w_data[11]~30_combout\,
	asdata => \~GND~combout\,
	sload => \MEM_CONTROLLER_I|WRITE_CORE~1_combout\,
	ena => \MEM_CONTROLLER_I|core_w_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|core_w_data\(11));

-- Location: FF_X12_Y12_N25
\MEM_CONTROLLER_I|core_w_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|core_w_data[10]~28_combout\,
	asdata => \~GND~combout\,
	sload => \MEM_CONTROLLER_I|WRITE_CORE~1_combout\,
	ena => \MEM_CONTROLLER_I|core_w_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|core_w_data\(10));

-- Location: FF_X12_Y12_N21
\MEM_CONTROLLER_I|core_w_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|core_w_data[8]~22_combout\,
	asdata => VCC,
	sload => \MEM_CONTROLLER_I|WRITE_CORE~1_combout\,
	ena => \MEM_CONTROLLER_I|core_w_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|core_w_data\(8));

-- Location: FF_X12_Y12_N19
\MEM_CONTROLLER_I|core_w_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|core_w_data[7]~20_combout\,
	asdata => VCC,
	sload => \MEM_CONTROLLER_I|WRITE_CORE~1_combout\,
	ena => \MEM_CONTROLLER_I|core_w_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|core_w_data\(7));

-- Location: FF_X12_Y12_N17
\MEM_CONTROLLER_I|core_w_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|core_w_data[6]~18_combout\,
	asdata => VCC,
	sload => \MEM_CONTROLLER_I|WRITE_CORE~1_combout\,
	ena => \MEM_CONTROLLER_I|core_w_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|core_w_data\(6));

-- Location: FF_X12_Y12_N15
\MEM_CONTROLLER_I|core_w_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|core_w_data[5]~16_combout\,
	asdata => VCC,
	sload => \MEM_CONTROLLER_I|WRITE_CORE~1_combout\,
	ena => \MEM_CONTROLLER_I|core_w_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|core_w_data\(5));

-- Location: FF_X12_Y12_N13
\MEM_CONTROLLER_I|core_w_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|core_w_data[4]~14_combout\,
	asdata => VCC,
	sload => \MEM_CONTROLLER_I|WRITE_CORE~1_combout\,
	ena => \MEM_CONTROLLER_I|core_w_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|core_w_data\(4));

-- Location: FF_X12_Y12_N11
\MEM_CONTROLLER_I|core_w_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|core_w_data[3]~12_combout\,
	asdata => VCC,
	sload => \MEM_CONTROLLER_I|WRITE_CORE~1_combout\,
	ena => \MEM_CONTROLLER_I|core_w_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|core_w_data\(3));

-- Location: LCCOMB_X16_Y12_N20
\MEM_CONTROLLER_I|core_w_data~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|core_w_data~24_combout\ = (\MEM_CONTROLLER_I|burst_state~q\ & (((\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(2))))) # (!\MEM_CONTROLLER_I|burst_state~q\ & ((\MEM_CONTROLLER_I|ADD_DELETE~0_combout\ & 
-- (\GEN_INFO_I|LFSR_I|s_curr\(4))) # (!\MEM_CONTROLLER_I|ADD_DELETE~0_combout\ & ((\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|burst_state~q\,
	datab => \GEN_INFO_I|LFSR_I|s_curr\(4),
	datac => \MEM_CONTROLLER_I|ADD_DELETE~0_combout\,
	datad => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(2),
	combout => \MEM_CONTROLLER_I|core_w_data~24_combout\);

-- Location: FF_X16_Y12_N21
\MEM_CONTROLLER_I|core_w_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|core_w_data~24_combout\,
	ena => \MEM_CONTROLLER_I|core_w_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|core_w_data\(2));

-- Location: LCCOMB_X12_Y12_N0
\MEM_CONTROLLER_I|core_w_data~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|core_w_data~25_combout\ = (\MEM_CONTROLLER_I|WRITE_CORE~1_combout\ & (((\GEN_INFO_I|LFSR_I|s_curr\(3) & !\GEN_INFO_I|LFSR_I|s_curr\(4))))) # (!\MEM_CONTROLLER_I|WRITE_CORE~1_combout\ & 
-- (\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(1),
	datab => \MEM_CONTROLLER_I|WRITE_CORE~1_combout\,
	datac => \GEN_INFO_I|LFSR_I|s_curr\(3),
	datad => \GEN_INFO_I|LFSR_I|s_curr\(4),
	combout => \MEM_CONTROLLER_I|core_w_data~25_combout\);

-- Location: FF_X12_Y12_N1
\MEM_CONTROLLER_I|core_w_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|core_w_data~25_combout\,
	ena => \MEM_CONTROLLER_I|core_w_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|core_w_data\(1));

-- Location: LCCOMB_X16_Y12_N16
\MEM_CONTROLLER_I|SET_FIRST~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|SET_FIRST~0_combout\ = (\s_curr.s_add_elem~q\ & (\COLLISION_CONTROLLER_I|Equal0~1_combout\ & ((!\GEN_INFO_I|CNT_I|LessThan0~14_combout\) # (!\GEN_INFO_I|CNT_I|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_INFO_I|CNT_I|Add0~16_combout\,
	datab => \s_curr.s_add_elem~q\,
	datac => \GEN_INFO_I|CNT_I|LessThan0~14_combout\,
	datad => \COLLISION_CONTROLLER_I|Equal0~1_combout\,
	combout => \MEM_CONTROLLER_I|SET_FIRST~0_combout\);

-- Location: LCCOMB_X20_Y12_N6
\MEM_CONTROLLER_I|first~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|first~11_combout\ = (\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(13) & !\MEM_CONTROLLER_I|SET_FIRST~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(13),
	datad => \MEM_CONTROLLER_I|SET_FIRST~0_combout\,
	combout => \MEM_CONTROLLER_I|first~11_combout\);

-- Location: LCCOMB_X16_Y13_N26
\MEM_CONTROLLER_I|first[1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|first[1]~16_combout\ = ((\MEM_CONTROLLER_I|queue_size\(4)) # (!\s_curr.s_add_elem~q\)) # (!\COLLISION_CONTROLLER_I|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COLLISION_CONTROLLER_I|Equal0~0_combout\,
	datac => \s_curr.s_add_elem~q\,
	datad => \MEM_CONTROLLER_I|queue_size\(4),
	combout => \MEM_CONTROLLER_I|first[1]~16_combout\);

-- Location: LCCOMB_X16_Y12_N6
\MEM_CONTROLLER_I|first[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|first[1]~3_combout\ = ((!\MEM_CONTROLLER_I|first[1]~16_combout\ & ((!\GEN_INFO_I|CNT_I|Add0~16_combout\) # (!\GEN_INFO_I|CNT_I|LessThan0~14_combout\)))) # (!\MEM_CONTROLLER_I|burst_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|burst_state~q\,
	datab => \MEM_CONTROLLER_I|first[1]~16_combout\,
	datac => \GEN_INFO_I|CNT_I|LessThan0~14_combout\,
	datad => \GEN_INFO_I|CNT_I|Add0~16_combout\,
	combout => \MEM_CONTROLLER_I|first[1]~3_combout\);

-- Location: FF_X20_Y12_N7
\MEM_CONTROLLER_I|first[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|first~11_combout\,
	ena => \MEM_CONTROLLER_I|first[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|first\(13));

-- Location: LCCOMB_X19_Y12_N16
\MEM_CONTROLLER_I|first~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|first~10_combout\ = (\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(6)) # (\MEM_CONTROLLER_I|SET_FIRST~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(6),
	datac => \MEM_CONTROLLER_I|SET_FIRST~0_combout\,
	combout => \MEM_CONTROLLER_I|first~10_combout\);

-- Location: FF_X19_Y12_N17
\MEM_CONTROLLER_I|first[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|first~10_combout\,
	ena => \MEM_CONTROLLER_I|first[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|first\(6));

-- Location: LCCOMB_X19_Y12_N22
\MEM_CONTROLLER_I|first~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|first~7_combout\ = (\MEM_CONTROLLER_I|SET_FIRST~0_combout\) # (\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM_CONTROLLER_I|SET_FIRST~0_combout\,
	datad => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(7),
	combout => \MEM_CONTROLLER_I|first~7_combout\);

-- Location: FF_X19_Y12_N23
\MEM_CONTROLLER_I|first[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|first~7_combout\,
	ena => \MEM_CONTROLLER_I|first[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|first\(7));

-- Location: LCCOMB_X19_Y12_N24
\MEM_CONTROLLER_I|first~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|first~4_combout\ = (\MEM_CONTROLLER_I|SET_FIRST~0_combout\) # (\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM_CONTROLLER_I|SET_FIRST~0_combout\,
	datad => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(8),
	combout => \MEM_CONTROLLER_I|first~4_combout\);

-- Location: FF_X19_Y12_N25
\MEM_CONTROLLER_I|first[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|first~4_combout\,
	ena => \MEM_CONTROLLER_I|first[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|first\(8));

-- Location: LCCOMB_X19_Y12_N18
\COLLISION_CONTROLLER_I|hit_process~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COLLISION_CONTROLLER_I|hit_process~3_combout\ = (!\MEM_CONTROLLER_I|first\(13) & ((\MEM_CONTROLLER_I|first\(6)) # ((\MEM_CONTROLLER_I|first\(7)) # (\MEM_CONTROLLER_I|first\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|first\(13),
	datab => \MEM_CONTROLLER_I|first\(6),
	datac => \MEM_CONTROLLER_I|first\(7),
	datad => \MEM_CONTROLLER_I|first\(8),
	combout => \COLLISION_CONTROLLER_I|hit_process~3_combout\);

-- Location: LCCOMB_X19_Y12_N10
\MEM_CONTROLLER_I|first~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|first~9_combout\ = (\MEM_CONTROLLER_I|SET_FIRST~0_combout\) # (\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM_CONTROLLER_I|SET_FIRST~0_combout\,
	datad => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(4),
	combout => \MEM_CONTROLLER_I|first~9_combout\);

-- Location: FF_X19_Y12_N11
\MEM_CONTROLLER_I|first[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|first~9_combout\,
	ena => \MEM_CONTROLLER_I|first[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|first\(4));

-- Location: LCCOMB_X19_Y12_N28
\MEM_CONTROLLER_I|first~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|first~8_combout\ = (\MEM_CONTROLLER_I|SET_FIRST~0_combout\) # (\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM_CONTROLLER_I|SET_FIRST~0_combout\,
	datad => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(5),
	combout => \MEM_CONTROLLER_I|first~8_combout\);

-- Location: FF_X19_Y12_N29
\MEM_CONTROLLER_I|first[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|first~8_combout\,
	ena => \MEM_CONTROLLER_I|first[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|first\(5));

-- Location: LCCOMB_X19_Y12_N30
\COLLISION_CONTROLLER_I|hit_process~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COLLISION_CONTROLLER_I|hit_process~1_combout\ = (\MEM_CONTROLLER_I|first\(4) & ((\MEM_CONTROLLER_I|first\(6)) # ((!\MEM_CONTROLLER_I|first\(7))))) # (!\MEM_CONTROLLER_I|first\(4) & (\MEM_CONTROLLER_I|first\(5) & ((\MEM_CONTROLLER_I|first\(6)) # 
-- (!\MEM_CONTROLLER_I|first\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|first\(4),
	datab => \MEM_CONTROLLER_I|first\(6),
	datac => \MEM_CONTROLLER_I|first\(7),
	datad => \MEM_CONTROLLER_I|first\(5),
	combout => \COLLISION_CONTROLLER_I|hit_process~1_combout\);

-- Location: LCCOMB_X20_Y12_N22
\MEM_CONTROLLER_I|first~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|first~6_combout\ = (\MEM_CONTROLLER_I|SET_FIRST~0_combout\ & (!\GEN_INFO_I|LFSR_I|s_curr\(4) & ((\GEN_INFO_I|LFSR_I|s_curr\(3))))) # (!\MEM_CONTROLLER_I|SET_FIRST~0_combout\ & 
-- (((\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_INFO_I|LFSR_I|s_curr\(4),
	datab => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(1),
	datac => \GEN_INFO_I|LFSR_I|s_curr\(3),
	datad => \MEM_CONTROLLER_I|SET_FIRST~0_combout\,
	combout => \MEM_CONTROLLER_I|first~6_combout\);

-- Location: FF_X20_Y12_N23
\MEM_CONTROLLER_I|first[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|first~6_combout\,
	ena => \MEM_CONTROLLER_I|first[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|first\(1));

-- Location: LCCOMB_X20_Y12_N28
\MEM_CONTROLLER_I|first~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|first~5_combout\ = (\MEM_CONTROLLER_I|SET_FIRST~0_combout\ & ((\GEN_INFO_I|LFSR_I|s_curr\(4)))) # (!\MEM_CONTROLLER_I|SET_FIRST~0_combout\ & (\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(2),
	datac => \GEN_INFO_I|LFSR_I|s_curr\(4),
	datad => \MEM_CONTROLLER_I|SET_FIRST~0_combout\,
	combout => \MEM_CONTROLLER_I|first~5_combout\);

-- Location: FF_X20_Y12_N29
\MEM_CONTROLLER_I|first[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|first~5_combout\,
	ena => \MEM_CONTROLLER_I|first[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|first\(2));

-- Location: IOIBUF_X0_Y23_N15
\up~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_up,
	o => \up~input_o\);

-- Location: LCCOMB_X27_Y21_N12
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[0]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[0]~20_combout\ = \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(0) $ (VCC)
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[0]~21\ = CARRY(\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(0),
	datad => VCC,
	combout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[0]~20_combout\,
	cout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[0]~21\);

-- Location: LCCOMB_X27_Y20_N26
\PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~0_combout\ = (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(13) & (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(11) & (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(12) & !\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(13),
	datab => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(11),
	datac => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(12),
	datad => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(10),
	combout => \PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X27_Y21_N10
\PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~2_combout\ = (((!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(3)) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(1))) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(2))) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(0),
	datab => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(2),
	datac => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(1),
	datad => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(3),
	combout => \PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~2_combout\);

-- Location: LCCOMB_X27_Y21_N0
\PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~1_combout\ = (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(8) & (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(7) & !\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(8),
	datac => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(7),
	datad => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(6),
	combout => \PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X27_Y21_N4
\PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~3_combout\ = (\PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~1_combout\ & ((\PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~2_combout\) # ((!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(5)) # 
-- (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~2_combout\,
	datab => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(4),
	datac => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(5),
	datad => \PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~1_combout\,
	combout => \PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~3_combout\);

-- Location: LCCOMB_X27_Y20_N24
\PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~4_combout\ = ((\PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~0_combout\ & ((\PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~3_combout\) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(9))))) # 
-- (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~0_combout\,
	datab => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(14),
	datac => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(9),
	datad => \PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~3_combout\,
	combout => \PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~4_combout\);

-- Location: LCCOMB_X27_Y20_N20
\PLAYER_CONTROLLER_I|D0|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D0|Selector1~0_combout\ = (\PLAYER_CONTROLLER_I|D0|s_curr.s1~q\ & ((\PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~5_combout\) # ((\PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~4_combout\ & !\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~5_combout\,
	datab => \PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~4_combout\,
	datac => \PLAYER_CONTROLLER_I|D0|s_curr.s1~q\,
	datad => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(15),
	combout => \PLAYER_CONTROLLER_I|D0|Selector1~0_combout\);

-- Location: LCCOMB_X27_Y21_N6
\PLAYER_CONTROLLER_I|D0|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D0|Selector1~1_combout\ = (\PLAYER_CONTROLLER_I|D0|Selector1~0_combout\) # ((!\PLAYER_CONTROLLER_I|D0|s_curr.s0~q\ & !\up~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PLAYER_CONTROLLER_I|D0|s_curr.s0~q\,
	datac => \up~input_o\,
	datad => \PLAYER_CONTROLLER_I|D0|Selector1~0_combout\,
	combout => \PLAYER_CONTROLLER_I|D0|Selector1~1_combout\);

-- Location: FF_X27_Y21_N7
\PLAYER_CONTROLLER_I|D0|s_curr.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D0|Selector1~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D0|s_curr.s1~q\);

-- Location: LCCOMB_X27_Y21_N2
\PLAYER_CONTROLLER_I|D0|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D0|Selector0~0_combout\ = (\PLAYER_CONTROLLER_I|D0|s_curr.s3~q\) # ((\PLAYER_CONTROLLER_I|D0|s_curr.s1~q\) # (!\up~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PLAYER_CONTROLLER_I|D0|s_curr.s3~q\,
	datac => \up~input_o\,
	datad => \PLAYER_CONTROLLER_I|D0|s_curr.s1~q\,
	combout => \PLAYER_CONTROLLER_I|D0|Selector0~0_combout\);

-- Location: FF_X27_Y21_N3
\PLAYER_CONTROLLER_I|D0|s_curr.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D0|Selector0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D0|s_curr.s0~q\);

-- Location: LCCOMB_X27_Y20_N22
\PLAYER_CONTROLLER_I|D0|cnt_inst|tick~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|tick~0_combout\ = ((!\PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~5_combout\ & ((\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(15)) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~4_combout\)))) # 
-- (!\PLAYER_CONTROLLER_I|D0|s_curr.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(15),
	datab => \PLAYER_CONTROLLER_I|D0|s_curr.s0~q\,
	datac => \PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~5_combout\,
	datad => \PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~4_combout\,
	combout => \PLAYER_CONTROLLER_I|D0|cnt_inst|tick~0_combout\);

-- Location: FF_X27_Y21_N13
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[0]~20_combout\,
	sclr => \PLAYER_CONTROLLER_I|D0|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D0|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(0));

-- Location: LCCOMB_X27_Y21_N14
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[1]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[1]~22_combout\ = (\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(1) & (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[0]~21\)) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(1) & ((\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[0]~21\) # (GND)))
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[1]~23\ = CARRY((!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[0]~21\) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(1),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[0]~21\,
	combout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[1]~22_combout\,
	cout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[1]~23\);

-- Location: FF_X27_Y21_N15
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[1]~22_combout\,
	sclr => \PLAYER_CONTROLLER_I|D0|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D0|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(1));

-- Location: LCCOMB_X27_Y21_N16
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[2]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[2]~24_combout\ = (\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(2) & (\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[1]~23\ $ (GND))) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(2) & (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[1]~23\ & 
-- VCC))
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[2]~25\ = CARRY((\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(2) & !\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(2),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[1]~23\,
	combout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[2]~24_combout\,
	cout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[2]~25\);

-- Location: FF_X27_Y21_N17
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[2]~24_combout\,
	sclr => \PLAYER_CONTROLLER_I|D0|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D0|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(2));

-- Location: LCCOMB_X27_Y21_N18
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[3]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[3]~26_combout\ = (\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(3) & (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[2]~25\)) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(3) & ((\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[2]~25\) # (GND)))
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[3]~27\ = CARRY((!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[2]~25\) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(3),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[2]~25\,
	combout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[3]~26_combout\,
	cout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[3]~27\);

-- Location: FF_X27_Y21_N19
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[3]~26_combout\,
	sclr => \PLAYER_CONTROLLER_I|D0|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D0|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(3));

-- Location: LCCOMB_X27_Y21_N20
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[4]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[4]~28_combout\ = (\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(4) & (\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[3]~27\ $ (GND))) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(4) & (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[3]~27\ & 
-- VCC))
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[4]~29\ = CARRY((\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(4) & !\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(4),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[3]~27\,
	combout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[4]~28_combout\,
	cout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[4]~29\);

-- Location: FF_X27_Y21_N21
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[4]~28_combout\,
	sclr => \PLAYER_CONTROLLER_I|D0|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D0|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(4));

-- Location: LCCOMB_X27_Y21_N22
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[5]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[5]~30_combout\ = (\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(5) & (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[4]~29\)) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(5) & ((\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[4]~29\) # (GND)))
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[5]~31\ = CARRY((!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[4]~29\) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(5),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[4]~29\,
	combout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[5]~30_combout\,
	cout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[5]~31\);

-- Location: FF_X27_Y21_N23
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[5]~30_combout\,
	sclr => \PLAYER_CONTROLLER_I|D0|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D0|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(5));

-- Location: LCCOMB_X27_Y21_N24
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[6]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[6]~32_combout\ = (\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(6) & (\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[5]~31\ $ (GND))) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(6) & (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[5]~31\ & 
-- VCC))
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[6]~33\ = CARRY((\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(6) & !\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(6),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[5]~31\,
	combout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[6]~32_combout\,
	cout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[6]~33\);

-- Location: FF_X27_Y21_N25
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[6]~32_combout\,
	sclr => \PLAYER_CONTROLLER_I|D0|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D0|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(6));

-- Location: LCCOMB_X27_Y21_N26
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[7]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[7]~34_combout\ = (\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(7) & (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[6]~33\)) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(7) & ((\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[6]~33\) # (GND)))
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[7]~35\ = CARRY((!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[6]~33\) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(7),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[6]~33\,
	combout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[7]~34_combout\,
	cout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[7]~35\);

-- Location: FF_X27_Y21_N27
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[7]~34_combout\,
	sclr => \PLAYER_CONTROLLER_I|D0|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D0|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(7));

-- Location: LCCOMB_X27_Y21_N28
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[8]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[8]~36_combout\ = (\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(8) & (\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[7]~35\ $ (GND))) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(8) & (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[7]~35\ & 
-- VCC))
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[8]~37\ = CARRY((\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(8) & !\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(8),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[7]~35\,
	combout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[8]~36_combout\,
	cout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[8]~37\);

-- Location: FF_X27_Y21_N29
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[8]~36_combout\,
	sclr => \PLAYER_CONTROLLER_I|D0|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D0|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(8));

-- Location: LCCOMB_X27_Y21_N30
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[9]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[9]~38_combout\ = (\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(9) & (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[8]~37\)) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(9) & ((\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[8]~37\) # (GND)))
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[9]~39\ = CARRY((!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[8]~37\) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(9),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[8]~37\,
	combout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[9]~38_combout\,
	cout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[9]~39\);

-- Location: FF_X27_Y21_N31
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[9]~38_combout\,
	sclr => \PLAYER_CONTROLLER_I|D0|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D0|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(9));

-- Location: LCCOMB_X27_Y20_N0
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[10]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[10]~40_combout\ = (\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(10) & (\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[9]~39\ $ (GND))) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(10) & (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[9]~39\ & 
-- VCC))
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[10]~41\ = CARRY((\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(10) & !\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(10),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[9]~39\,
	combout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[10]~40_combout\,
	cout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[10]~41\);

-- Location: FF_X27_Y20_N1
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[10]~40_combout\,
	sclr => \PLAYER_CONTROLLER_I|D0|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D0|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(10));

-- Location: LCCOMB_X27_Y20_N2
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[11]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[11]~42_combout\ = (\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(11) & (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[10]~41\)) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(11) & ((\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[10]~41\) # 
-- (GND)))
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[11]~43\ = CARRY((!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[10]~41\) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(11),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[10]~41\,
	combout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[11]~42_combout\,
	cout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[11]~43\);

-- Location: FF_X27_Y20_N3
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[11]~42_combout\,
	sclr => \PLAYER_CONTROLLER_I|D0|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D0|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(11));

-- Location: LCCOMB_X27_Y20_N4
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[12]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[12]~44_combout\ = (\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(12) & (\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[11]~43\ $ (GND))) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(12) & (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[11]~43\ 
-- & VCC))
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[12]~45\ = CARRY((\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(12) & !\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(12),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[11]~43\,
	combout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[12]~44_combout\,
	cout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[12]~45\);

-- Location: FF_X27_Y20_N5
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[12]~44_combout\,
	sclr => \PLAYER_CONTROLLER_I|D0|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D0|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(12));

-- Location: LCCOMB_X27_Y20_N6
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[13]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[13]~46_combout\ = (\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(13) & (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[12]~45\)) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(13) & ((\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[12]~45\) # 
-- (GND)))
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[13]~47\ = CARRY((!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[12]~45\) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(13),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[12]~45\,
	combout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[13]~46_combout\,
	cout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[13]~47\);

-- Location: FF_X27_Y20_N7
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[13]~46_combout\,
	sclr => \PLAYER_CONTROLLER_I|D0|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D0|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(13));

-- Location: LCCOMB_X27_Y20_N8
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[14]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[14]~48_combout\ = (\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(14) & (\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[13]~47\ $ (GND))) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(14) & (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[13]~47\ 
-- & VCC))
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[14]~49\ = CARRY((\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(14) & !\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(14),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[13]~47\,
	combout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[14]~48_combout\,
	cout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[14]~49\);

-- Location: FF_X27_Y20_N9
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[14]~48_combout\,
	sclr => \PLAYER_CONTROLLER_I|D0|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D0|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(14));

-- Location: LCCOMB_X27_Y20_N10
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[15]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[15]~50_combout\ = (\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(15) & (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[14]~49\)) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(15) & ((\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[14]~49\) # 
-- (GND)))
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[15]~51\ = CARRY((!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[14]~49\) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(15),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[14]~49\,
	combout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[15]~50_combout\,
	cout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[15]~51\);

-- Location: FF_X27_Y20_N11
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[15]~50_combout\,
	sclr => \PLAYER_CONTROLLER_I|D0|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D0|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(15));

-- Location: LCCOMB_X27_Y20_N12
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[16]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[16]~52_combout\ = (\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(16) & (\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[15]~51\ $ (GND))) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(16) & (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[15]~51\ 
-- & VCC))
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[16]~53\ = CARRY((\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(16) & !\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(16),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[15]~51\,
	combout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[16]~52_combout\,
	cout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[16]~53\);

-- Location: FF_X27_Y20_N13
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[16]~52_combout\,
	sclr => \PLAYER_CONTROLLER_I|D0|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D0|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(16));

-- Location: LCCOMB_X27_Y20_N14
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[17]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[17]~54_combout\ = (\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(17) & (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[16]~53\)) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(17) & ((\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[16]~53\) # 
-- (GND)))
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[17]~55\ = CARRY((!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[16]~53\) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(17),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[16]~53\,
	combout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[17]~54_combout\,
	cout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[17]~55\);

-- Location: FF_X27_Y20_N15
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[17]~54_combout\,
	sclr => \PLAYER_CONTROLLER_I|D0|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D0|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(17));

-- Location: LCCOMB_X27_Y20_N16
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[18]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[18]~56_combout\ = (\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(18) & (\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[17]~55\ $ (GND))) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(18) & (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[17]~55\ 
-- & VCC))
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[18]~57\ = CARRY((\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(18) & !\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(18),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[17]~55\,
	combout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[18]~56_combout\,
	cout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[18]~57\);

-- Location: FF_X27_Y20_N17
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[18]~56_combout\,
	sclr => \PLAYER_CONTROLLER_I|D0|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D0|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(18));

-- Location: LCCOMB_X27_Y20_N18
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[19]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[19]~58_combout\ = \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[18]~57\ $ (\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(19),
	cin => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[18]~57\,
	combout => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[19]~58_combout\);

-- Location: FF_X27_Y20_N19
\PLAYER_CONTROLLER_I|D0|cnt_inst|iter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter[19]~58_combout\,
	sclr => \PLAYER_CONTROLLER_I|D0|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D0|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(19));

-- Location: LCCOMB_X27_Y20_N30
\PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~5_combout\ = (((!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(19)) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(17))) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(18))) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(16),
	datab => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(18),
	datac => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(17),
	datad => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(19),
	combout => \PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~5_combout\);

-- Location: LCCOMB_X27_Y20_N28
\PLAYER_CONTROLLER_I|D0|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D0|Selector2~0_combout\ = (!\PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~5_combout\ & (\PLAYER_CONTROLLER_I|D0|s_curr.s1~q\ & ((\PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(15)) # (!\PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~5_combout\,
	datab => \PLAYER_CONTROLLER_I|D0|cnt_inst|LessThan0~4_combout\,
	datac => \PLAYER_CONTROLLER_I|D0|s_curr.s1~q\,
	datad => \PLAYER_CONTROLLER_I|D0|cnt_inst|iter\(15),
	combout => \PLAYER_CONTROLLER_I|D0|Selector2~0_combout\);

-- Location: FF_X27_Y20_N29
\PLAYER_CONTROLLER_I|D0|s_curr.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D0|Selector2~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D0|s_curr.s2~q\);

-- Location: LCCOMB_X27_Y21_N8
\PLAYER_CONTROLLER_I|D0|s_next.s3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D0|s_next.s3~0_combout\ = (!\up~input_o\ & \PLAYER_CONTROLLER_I|D0|s_curr.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \up~input_o\,
	datad => \PLAYER_CONTROLLER_I|D0|s_curr.s2~q\,
	combout => \PLAYER_CONTROLLER_I|D0|s_next.s3~0_combout\);

-- Location: FF_X27_Y21_N9
\PLAYER_CONTROLLER_I|D0|s_curr.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D0|s_next.s3~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D0|s_curr.s3~q\);

-- Location: IOIBUF_X0_Y21_N8
\down~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_down,
	o => \down~input_o\);

-- Location: LCCOMB_X27_Y17_N12
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[0]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[0]~20_combout\ = \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(0) $ (VCC)
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[0]~21\ = CARRY(\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(0),
	datad => VCC,
	combout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[0]~20_combout\,
	cout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[0]~21\);

-- Location: LCCOMB_X27_Y16_N26
\PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~0_combout\ = (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(13) & (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(11) & (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(12) & !\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(13),
	datab => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(11),
	datac => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(12),
	datad => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(10),
	combout => \PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X27_Y17_N10
\PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~2_combout\ = (((!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(2)) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(1))) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(3))) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(0),
	datab => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(3),
	datac => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(1),
	datad => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(2),
	combout => \PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~2_combout\);

-- Location: LCCOMB_X27_Y17_N0
\PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~1_combout\ = (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(8) & (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(7) & !\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(8),
	datac => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(7),
	datad => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(6),
	combout => \PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X27_Y17_N8
\PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~3_combout\ = (\PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~1_combout\ & ((\PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~2_combout\) # ((!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(5)) # 
-- (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~2_combout\,
	datab => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(4),
	datac => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(5),
	datad => \PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~1_combout\,
	combout => \PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~3_combout\);

-- Location: LCCOMB_X27_Y16_N24
\PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~4_combout\ = ((\PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~0_combout\ & ((\PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~3_combout\) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(9))))) # 
-- (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~0_combout\,
	datab => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(14),
	datac => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(9),
	datad => \PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~3_combout\,
	combout => \PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~4_combout\);

-- Location: LCCOMB_X27_Y16_N20
\PLAYER_CONTROLLER_I|D1|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D1|Selector1~0_combout\ = (\PLAYER_CONTROLLER_I|D1|s_curr.s1~q\ & ((\PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~5_combout\) # ((\PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~4_combout\ & !\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~5_combout\,
	datab => \PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~4_combout\,
	datac => \PLAYER_CONTROLLER_I|D1|s_curr.s1~q\,
	datad => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(15),
	combout => \PLAYER_CONTROLLER_I|D1|Selector1~0_combout\);

-- Location: LCCOMB_X27_Y17_N6
\PLAYER_CONTROLLER_I|D1|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D1|Selector1~1_combout\ = (\PLAYER_CONTROLLER_I|D1|Selector1~0_combout\) # ((!\PLAYER_CONTROLLER_I|D1|s_curr.s0~q\ & !\down~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PLAYER_CONTROLLER_I|D1|s_curr.s0~q\,
	datac => \down~input_o\,
	datad => \PLAYER_CONTROLLER_I|D1|Selector1~0_combout\,
	combout => \PLAYER_CONTROLLER_I|D1|Selector1~1_combout\);

-- Location: FF_X27_Y17_N7
\PLAYER_CONTROLLER_I|D1|s_curr.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D1|Selector1~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D1|s_curr.s1~q\);

-- Location: LCCOMB_X27_Y17_N2
\PLAYER_CONTROLLER_I|D1|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D1|Selector0~0_combout\ = ((\PLAYER_CONTROLLER_I|D1|s_curr.s3~q\) # (\PLAYER_CONTROLLER_I|D1|s_curr.s1~q\)) # (!\down~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \down~input_o\,
	datac => \PLAYER_CONTROLLER_I|D1|s_curr.s3~q\,
	datad => \PLAYER_CONTROLLER_I|D1|s_curr.s1~q\,
	combout => \PLAYER_CONTROLLER_I|D1|Selector0~0_combout\);

-- Location: FF_X27_Y17_N3
\PLAYER_CONTROLLER_I|D1|s_curr.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D1|Selector0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D1|s_curr.s0~q\);

-- Location: LCCOMB_X27_Y16_N22
\PLAYER_CONTROLLER_I|D1|cnt_inst|tick~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|tick~0_combout\ = ((!\PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~5_combout\ & ((\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(15)) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~4_combout\)))) # 
-- (!\PLAYER_CONTROLLER_I|D1|s_curr.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(15),
	datab => \PLAYER_CONTROLLER_I|D1|s_curr.s0~q\,
	datac => \PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~5_combout\,
	datad => \PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~4_combout\,
	combout => \PLAYER_CONTROLLER_I|D1|cnt_inst|tick~0_combout\);

-- Location: FF_X27_Y17_N13
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[0]~20_combout\,
	sclr => \PLAYER_CONTROLLER_I|D1|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D1|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(0));

-- Location: LCCOMB_X27_Y17_N14
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[1]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[1]~22_combout\ = (\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(1) & (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[0]~21\)) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(1) & ((\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[0]~21\) # (GND)))
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[1]~23\ = CARRY((!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[0]~21\) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(1),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[0]~21\,
	combout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[1]~22_combout\,
	cout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[1]~23\);

-- Location: FF_X27_Y17_N15
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[1]~22_combout\,
	sclr => \PLAYER_CONTROLLER_I|D1|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D1|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(1));

-- Location: LCCOMB_X27_Y17_N16
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[2]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[2]~24_combout\ = (\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(2) & (\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[1]~23\ $ (GND))) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(2) & (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[1]~23\ & 
-- VCC))
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[2]~25\ = CARRY((\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(2) & !\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(2),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[1]~23\,
	combout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[2]~24_combout\,
	cout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[2]~25\);

-- Location: FF_X27_Y17_N17
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[2]~24_combout\,
	sclr => \PLAYER_CONTROLLER_I|D1|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D1|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(2));

-- Location: LCCOMB_X27_Y17_N18
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[3]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[3]~26_combout\ = (\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(3) & (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[2]~25\)) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(3) & ((\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[2]~25\) # (GND)))
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[3]~27\ = CARRY((!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[2]~25\) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(3),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[2]~25\,
	combout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[3]~26_combout\,
	cout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[3]~27\);

-- Location: FF_X27_Y17_N19
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[3]~26_combout\,
	sclr => \PLAYER_CONTROLLER_I|D1|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D1|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(3));

-- Location: LCCOMB_X27_Y17_N20
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[4]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[4]~28_combout\ = (\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(4) & (\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[3]~27\ $ (GND))) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(4) & (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[3]~27\ & 
-- VCC))
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[4]~29\ = CARRY((\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(4) & !\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(4),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[3]~27\,
	combout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[4]~28_combout\,
	cout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[4]~29\);

-- Location: FF_X27_Y17_N21
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[4]~28_combout\,
	sclr => \PLAYER_CONTROLLER_I|D1|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D1|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(4));

-- Location: LCCOMB_X27_Y17_N22
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[5]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[5]~30_combout\ = (\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(5) & (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[4]~29\)) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(5) & ((\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[4]~29\) # (GND)))
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[5]~31\ = CARRY((!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[4]~29\) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(5),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[4]~29\,
	combout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[5]~30_combout\,
	cout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[5]~31\);

-- Location: FF_X27_Y17_N23
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[5]~30_combout\,
	sclr => \PLAYER_CONTROLLER_I|D1|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D1|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(5));

-- Location: LCCOMB_X27_Y17_N24
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[6]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[6]~32_combout\ = (\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(6) & (\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[5]~31\ $ (GND))) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(6) & (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[5]~31\ & 
-- VCC))
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[6]~33\ = CARRY((\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(6) & !\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(6),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[5]~31\,
	combout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[6]~32_combout\,
	cout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[6]~33\);

-- Location: FF_X27_Y17_N25
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[6]~32_combout\,
	sclr => \PLAYER_CONTROLLER_I|D1|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D1|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(6));

-- Location: LCCOMB_X27_Y17_N26
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[7]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[7]~34_combout\ = (\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(7) & (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[6]~33\)) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(7) & ((\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[6]~33\) # (GND)))
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[7]~35\ = CARRY((!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[6]~33\) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(7),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[6]~33\,
	combout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[7]~34_combout\,
	cout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[7]~35\);

-- Location: FF_X27_Y17_N27
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[7]~34_combout\,
	sclr => \PLAYER_CONTROLLER_I|D1|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D1|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(7));

-- Location: LCCOMB_X27_Y17_N28
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[8]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[8]~36_combout\ = (\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(8) & (\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[7]~35\ $ (GND))) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(8) & (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[7]~35\ & 
-- VCC))
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[8]~37\ = CARRY((\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(8) & !\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(8),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[7]~35\,
	combout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[8]~36_combout\,
	cout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[8]~37\);

-- Location: FF_X27_Y17_N29
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[8]~36_combout\,
	sclr => \PLAYER_CONTROLLER_I|D1|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D1|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(8));

-- Location: LCCOMB_X27_Y17_N30
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[9]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[9]~38_combout\ = (\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(9) & (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[8]~37\)) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(9) & ((\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[8]~37\) # (GND)))
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[9]~39\ = CARRY((!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[8]~37\) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(9),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[8]~37\,
	combout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[9]~38_combout\,
	cout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[9]~39\);

-- Location: FF_X27_Y17_N31
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[9]~38_combout\,
	sclr => \PLAYER_CONTROLLER_I|D1|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D1|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(9));

-- Location: LCCOMB_X27_Y16_N0
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[10]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[10]~40_combout\ = (\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(10) & (\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[9]~39\ $ (GND))) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(10) & (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[9]~39\ & 
-- VCC))
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[10]~41\ = CARRY((\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(10) & !\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(10),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[9]~39\,
	combout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[10]~40_combout\,
	cout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[10]~41\);

-- Location: FF_X27_Y16_N1
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[10]~40_combout\,
	sclr => \PLAYER_CONTROLLER_I|D1|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D1|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(10));

-- Location: LCCOMB_X27_Y16_N2
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[11]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[11]~42_combout\ = (\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(11) & (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[10]~41\)) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(11) & ((\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[10]~41\) # 
-- (GND)))
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[11]~43\ = CARRY((!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[10]~41\) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(11),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[10]~41\,
	combout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[11]~42_combout\,
	cout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[11]~43\);

-- Location: FF_X27_Y16_N3
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[11]~42_combout\,
	sclr => \PLAYER_CONTROLLER_I|D1|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D1|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(11));

-- Location: LCCOMB_X27_Y16_N4
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[12]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[12]~44_combout\ = (\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(12) & (\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[11]~43\ $ (GND))) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(12) & (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[11]~43\ 
-- & VCC))
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[12]~45\ = CARRY((\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(12) & !\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(12),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[11]~43\,
	combout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[12]~44_combout\,
	cout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[12]~45\);

-- Location: FF_X27_Y16_N5
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[12]~44_combout\,
	sclr => \PLAYER_CONTROLLER_I|D1|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D1|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(12));

-- Location: LCCOMB_X27_Y16_N6
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[13]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[13]~46_combout\ = (\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(13) & (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[12]~45\)) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(13) & ((\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[12]~45\) # 
-- (GND)))
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[13]~47\ = CARRY((!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[12]~45\) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(13),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[12]~45\,
	combout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[13]~46_combout\,
	cout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[13]~47\);

-- Location: FF_X27_Y16_N7
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[13]~46_combout\,
	sclr => \PLAYER_CONTROLLER_I|D1|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D1|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(13));

-- Location: LCCOMB_X27_Y16_N8
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[14]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[14]~48_combout\ = (\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(14) & (\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[13]~47\ $ (GND))) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(14) & (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[13]~47\ 
-- & VCC))
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[14]~49\ = CARRY((\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(14) & !\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(14),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[13]~47\,
	combout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[14]~48_combout\,
	cout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[14]~49\);

-- Location: FF_X27_Y16_N9
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[14]~48_combout\,
	sclr => \PLAYER_CONTROLLER_I|D1|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D1|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(14));

-- Location: LCCOMB_X27_Y16_N10
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[15]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[15]~50_combout\ = (\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(15) & (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[14]~49\)) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(15) & ((\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[14]~49\) # 
-- (GND)))
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[15]~51\ = CARRY((!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[14]~49\) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(15),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[14]~49\,
	combout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[15]~50_combout\,
	cout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[15]~51\);

-- Location: FF_X27_Y16_N11
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[15]~50_combout\,
	sclr => \PLAYER_CONTROLLER_I|D1|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D1|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(15));

-- Location: LCCOMB_X27_Y16_N12
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[16]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[16]~52_combout\ = (\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(16) & (\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[15]~51\ $ (GND))) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(16) & (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[15]~51\ 
-- & VCC))
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[16]~53\ = CARRY((\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(16) & !\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(16),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[15]~51\,
	combout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[16]~52_combout\,
	cout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[16]~53\);

-- Location: FF_X27_Y16_N13
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[16]~52_combout\,
	sclr => \PLAYER_CONTROLLER_I|D1|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D1|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(16));

-- Location: LCCOMB_X27_Y16_N14
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[17]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[17]~54_combout\ = (\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(17) & (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[16]~53\)) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(17) & ((\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[16]~53\) # 
-- (GND)))
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[17]~55\ = CARRY((!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[16]~53\) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(17),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[16]~53\,
	combout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[17]~54_combout\,
	cout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[17]~55\);

-- Location: FF_X27_Y16_N15
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[17]~54_combout\,
	sclr => \PLAYER_CONTROLLER_I|D1|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D1|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(17));

-- Location: LCCOMB_X27_Y16_N16
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[18]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[18]~56_combout\ = (\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(18) & (\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[17]~55\ $ (GND))) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(18) & (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[17]~55\ 
-- & VCC))
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[18]~57\ = CARRY((\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(18) & !\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(18),
	datad => VCC,
	cin => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[17]~55\,
	combout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[18]~56_combout\,
	cout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[18]~57\);

-- Location: FF_X27_Y16_N17
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[18]~56_combout\,
	sclr => \PLAYER_CONTROLLER_I|D1|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D1|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(18));

-- Location: LCCOMB_X27_Y16_N18
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[19]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[19]~58_combout\ = \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[18]~57\ $ (\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(19),
	cin => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[18]~57\,
	combout => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[19]~58_combout\);

-- Location: FF_X27_Y16_N19
\PLAYER_CONTROLLER_I|D1|cnt_inst|iter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter[19]~58_combout\,
	sclr => \PLAYER_CONTROLLER_I|D1|cnt_inst|tick~0_combout\,
	ena => \PLAYER_CONTROLLER_I|D1|s_curr.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(19));

-- Location: LCCOMB_X27_Y16_N30
\PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~5_combout\ = (((!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(18)) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(17))) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(19))) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(16),
	datab => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(19),
	datac => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(17),
	datad => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(18),
	combout => \PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~5_combout\);

-- Location: LCCOMB_X27_Y16_N28
\PLAYER_CONTROLLER_I|D1|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D1|Selector2~0_combout\ = (!\PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~5_combout\ & (\PLAYER_CONTROLLER_I|D1|s_curr.s1~q\ & ((\PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(15)) # (!\PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~5_combout\,
	datab => \PLAYER_CONTROLLER_I|D1|cnt_inst|LessThan0~4_combout\,
	datac => \PLAYER_CONTROLLER_I|D1|s_curr.s1~q\,
	datad => \PLAYER_CONTROLLER_I|D1|cnt_inst|iter\(15),
	combout => \PLAYER_CONTROLLER_I|D1|Selector2~0_combout\);

-- Location: FF_X27_Y16_N29
\PLAYER_CONTROLLER_I|D1|s_curr.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D1|Selector2~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D1|s_curr.s2~q\);

-- Location: LCCOMB_X27_Y17_N4
\PLAYER_CONTROLLER_I|D1|s_next.s3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|D1|s_next.s3~0_combout\ = (!\down~input_o\ & \PLAYER_CONTROLLER_I|D1|s_curr.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \down~input_o\,
	datad => \PLAYER_CONTROLLER_I|D1|s_curr.s2~q\,
	combout => \PLAYER_CONTROLLER_I|D1|s_next.s3~0_combout\);

-- Location: FF_X27_Y17_N5
\PLAYER_CONTROLLER_I|D1|s_curr.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|D1|s_next.s3~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|D1|s_curr.s3~q\);

-- Location: LCCOMB_X27_Y13_N30
\PLAYER_CONTROLLER_I|curr_lane[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|curr_lane[1]~1_combout\ = (\PLAYER_CONTROLLER_I|D0|s_curr.s3~q\ & (((\PLAYER_CONTROLLER_I|curr_lane\(1) & !\PLAYER_CONTROLLER_I|curr_lane\(0))))) # (!\PLAYER_CONTROLLER_I|D0|s_curr.s3~q\ & (\PLAYER_CONTROLLER_I|curr_lane\(1) $ 
-- (((\PLAYER_CONTROLLER_I|D1|s_curr.s3~q\ & !\PLAYER_CONTROLLER_I|curr_lane\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|D0|s_curr.s3~q\,
	datab => \PLAYER_CONTROLLER_I|D1|s_curr.s3~q\,
	datac => \PLAYER_CONTROLLER_I|curr_lane\(1),
	datad => \PLAYER_CONTROLLER_I|curr_lane\(0),
	combout => \PLAYER_CONTROLLER_I|curr_lane[1]~1_combout\);

-- Location: FF_X27_Y13_N31
\PLAYER_CONTROLLER_I|curr_lane[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|curr_lane[1]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|curr_lane\(1));

-- Location: LCCOMB_X27_Y13_N20
\PLAYER_CONTROLLER_I|curr_lane~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PLAYER_CONTROLLER_I|curr_lane~0_combout\ = (\PLAYER_CONTROLLER_I|curr_lane\(0) & ((\PLAYER_CONTROLLER_I|curr_lane\(1) & ((!\PLAYER_CONTROLLER_I|D0|s_curr.s3~q\))) # (!\PLAYER_CONTROLLER_I|curr_lane\(1) & (!\PLAYER_CONTROLLER_I|D1|s_curr.s3~q\)))) # 
-- (!\PLAYER_CONTROLLER_I|curr_lane\(0) & (((\PLAYER_CONTROLLER_I|D1|s_curr.s3~q\) # (\PLAYER_CONTROLLER_I|D0|s_curr.s3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|curr_lane\(1),
	datab => \PLAYER_CONTROLLER_I|D1|s_curr.s3~q\,
	datac => \PLAYER_CONTROLLER_I|curr_lane\(0),
	datad => \PLAYER_CONTROLLER_I|D0|s_curr.s3~q\,
	combout => \PLAYER_CONTROLLER_I|curr_lane~0_combout\);

-- Location: FF_X27_Y13_N21
\PLAYER_CONTROLLER_I|curr_lane[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \PLAYER_CONTROLLER_I|curr_lane~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLAYER_CONTROLLER_I|curr_lane\(0));

-- Location: LCCOMB_X20_Y12_N4
\COLLISION_CONTROLLER_I|hit_process~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COLLISION_CONTROLLER_I|hit_process~0_combout\ = (\MEM_CONTROLLER_I|first\(1) & (!\PLAYER_CONTROLLER_I|curr_lane\(0) & (\MEM_CONTROLLER_I|first\(2) $ (!\PLAYER_CONTROLLER_I|curr_lane\(1))))) # (!\MEM_CONTROLLER_I|first\(1) & 
-- (\PLAYER_CONTROLLER_I|curr_lane\(0) & (\MEM_CONTROLLER_I|first\(2) $ (!\PLAYER_CONTROLLER_I|curr_lane\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|first\(1),
	datab => \MEM_CONTROLLER_I|first\(2),
	datac => \PLAYER_CONTROLLER_I|curr_lane\(0),
	datad => \PLAYER_CONTROLLER_I|curr_lane\(1),
	combout => \COLLISION_CONTROLLER_I|hit_process~0_combout\);

-- Location: LCCOMB_X19_Y12_N20
\COLLISION_CONTROLLER_I|hit_process~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COLLISION_CONTROLLER_I|hit_process~2_combout\ = (\COLLISION_CONTROLLER_I|hit_process~0_combout\ & ((\MEM_CONTROLLER_I|first\(7) & ((!\COLLISION_CONTROLLER_I|hit_process~1_combout\) # (!\MEM_CONTROLLER_I|first\(8)))) # (!\MEM_CONTROLLER_I|first\(7) & 
-- ((\MEM_CONTROLLER_I|first\(8)) # (\COLLISION_CONTROLLER_I|hit_process~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|first\(7),
	datab => \MEM_CONTROLLER_I|first\(8),
	datac => \COLLISION_CONTROLLER_I|hit_process~1_combout\,
	datad => \COLLISION_CONTROLLER_I|hit_process~0_combout\,
	combout => \COLLISION_CONTROLLER_I|hit_process~2_combout\);

-- Location: LCCOMB_X19_Y12_N6
\COLLISION_CONTROLLER_I|hit_process~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COLLISION_CONTROLLER_I|hit_process~5_combout\ = (\COLLISION_CONTROLLER_I|hit_process~4_combout\ & (\COLLISION_CONTROLLER_I|hit_process~3_combout\ & \COLLISION_CONTROLLER_I|hit_process~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COLLISION_CONTROLLER_I|hit_process~4_combout\,
	datab => \COLLISION_CONTROLLER_I|hit_process~3_combout\,
	datad => \COLLISION_CONTROLLER_I|hit_process~2_combout\,
	combout => \COLLISION_CONTROLLER_I|hit_process~5_combout\);

-- Location: LCCOMB_X19_Y12_N26
\MEM_CONTROLLER_I|ADD_DELETE~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|ADD_DELETE~1_combout\ = (!\s_curr.s_coll_check~q\ & (!\COLLISION_CONTROLLER_I|Equal0~1_combout\ & ((\MEM_CONTROLLER_I|first\(13)) # (\COLLISION_CONTROLLER_I|hit_process~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|first\(13),
	datab => \s_curr.s_coll_check~q\,
	datac => \COLLISION_CONTROLLER_I|Equal0~1_combout\,
	datad => \COLLISION_CONTROLLER_I|hit_process~5_combout\,
	combout => \MEM_CONTROLLER_I|ADD_DELETE~1_combout\);

-- Location: LCCOMB_X16_Y12_N30
\MEM_CONTROLLER_I|queue_head[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|queue_head[0]~0_combout\ = \MEM_CONTROLLER_I|queue_head\(0) $ (((!\MEM_CONTROLLER_I|burst_state~q\ & \MEM_CONTROLLER_I|ADD_DELETE~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|burst_state~q\,
	datac => \MEM_CONTROLLER_I|queue_head\(0),
	datad => \MEM_CONTROLLER_I|ADD_DELETE~1_combout\,
	combout => \MEM_CONTROLLER_I|queue_head[0]~0_combout\);

-- Location: FF_X16_Y12_N31
\MEM_CONTROLLER_I|queue_head[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|queue_head[0]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|queue_head\(0));

-- Location: FF_X16_Y12_N9
\MEM_CONTROLLER_I|core_w_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|core_w_addr[0]~4_combout\,
	asdata => \MEM_CONTROLLER_I|Add6~0_combout\,
	sload => \MEM_CONTROLLER_I|ALT_INV_WRITE_CORE~1_combout\,
	ena => \MEM_CONTROLLER_I|core_w_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|core_w_addr\(0));

-- Location: LCCOMB_X17_Y12_N28
\MEM_CONTROLLER_I|first~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|first~2_combout\ = (\MEM_CONTROLLER_I|SET_FIRST~0_combout\ & ((\GEN_INFO_I|LFSR_I|s_curr\(2)))) # (!\MEM_CONTROLLER_I|SET_FIRST~0_combout\ & (\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(0),
	datac => \GEN_INFO_I|LFSR_I|s_curr\(2),
	datad => \MEM_CONTROLLER_I|SET_FIRST~0_combout\,
	combout => \MEM_CONTROLLER_I|first~2_combout\);

-- Location: FF_X17_Y12_N29
\MEM_CONTROLLER_I|first[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|first~2_combout\,
	ena => \MEM_CONTROLLER_I|first[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|first\(0));

-- Location: LCCOMB_X15_Y13_N10
\speed[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[2]~0_combout\ = (\MEM_CONTROLLER_I|first\(0) & (!\update_score~0_combout\ & ((!lives(1)) # (!lives(0))))) # (!\MEM_CONTROLLER_I|first\(0) & (((!lives(1))) # (!lives(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|first\(0),
	datab => lives(0),
	datac => \update_score~0_combout\,
	datad => lives(1),
	combout => \speed[2]~0_combout\);

-- Location: LCCOMB_X15_Y13_N0
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = speed(2) $ (((speed(1) & !speed(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => speed(2),
	datab => speed(1),
	datac => speed(0),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X15_Y13_N6
\speed[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[2]~1_combout\ = (\speed[2]~0_combout\ & ((\update_speed~1_combout\ & (speed(2))) # (!\update_speed~1_combout\ & ((\Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed[2]~0_combout\,
	datab => \update_speed~1_combout\,
	datac => speed(2),
	datad => \Add1~0_combout\,
	combout => \speed[2]~1_combout\);

-- Location: FF_X15_Y13_N7
\speed[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \speed[2]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(2));

-- Location: LCCOMB_X14_Y12_N30
\GEN_INFO_I|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|Add1~6_combout\ = \GEN_INFO_I|Add0~8_combout\ $ (!\GEN_INFO_I|Add1~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN_INFO_I|Add0~8_combout\,
	cin => \GEN_INFO_I|Add1~5\,
	combout => \GEN_INFO_I|Add1~6_combout\);

-- Location: FF_X14_Y12_N31
\GEN_INFO_I|count_to[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \GEN_INFO_I|Add1~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \GEN_INFO_I|set_count_to~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_INFO_I|count_to\(7));

-- Location: LCCOMB_X14_Y12_N18
\GEN_INFO_I|CNT_I|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \GEN_INFO_I|CNT_I|Add0~16_combout\ = !\GEN_INFO_I|CNT_I|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \GEN_INFO_I|CNT_I|Add0~15\,
	combout => \GEN_INFO_I|CNT_I|Add0~16_combout\);

-- Location: LCCOMB_X15_Y12_N14
\MEM_CONTROLLER_I|ADD_DELETE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|ADD_DELETE~0_combout\ = (!\MEM_CONTROLLER_I|queue_size\(4) & (\s_curr.s_add_elem~q\ & ((!\GEN_INFO_I|CNT_I|LessThan0~14_combout\) # (!\GEN_INFO_I|CNT_I|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|queue_size\(4),
	datab => \GEN_INFO_I|CNT_I|Add0~16_combout\,
	datac => \s_curr.s_add_elem~q\,
	datad => \GEN_INFO_I|CNT_I|LessThan0~14_combout\,
	combout => \MEM_CONTROLLER_I|ADD_DELETE~0_combout\);

-- Location: LCCOMB_X16_Y13_N2
\MEM_CONTROLLER_I|queue_size[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|queue_size[0]~4_combout\ = (\MEM_CONTROLLER_I|ADD_DELETE~0_combout\ & (\MEM_CONTROLLER_I|Add0~0_combout\)) # (!\MEM_CONTROLLER_I|ADD_DELETE~0_combout\ & ((!\MEM_CONTROLLER_I|queue_size\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|Add0~0_combout\,
	datac => \MEM_CONTROLLER_I|queue_size\(0),
	datad => \MEM_CONTROLLER_I|ADD_DELETE~0_combout\,
	combout => \MEM_CONTROLLER_I|queue_size[0]~4_combout\);

-- Location: LCCOMB_X16_Y12_N0
\MEM_CONTROLLER_I|queue_size[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|queue_size[4]~5_combout\ = (\MEM_CONTROLLER_I|burst_state~q\) # ((!\MEM_CONTROLLER_I|ADD_DELETE~1_combout\ & ((\MEM_CONTROLLER_I|queue_size\(4)) # (!\s_curr.s_add_elem~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|queue_size\(4),
	datab => \s_curr.s_add_elem~q\,
	datac => \MEM_CONTROLLER_I|burst_state~q\,
	datad => \MEM_CONTROLLER_I|ADD_DELETE~1_combout\,
	combout => \MEM_CONTROLLER_I|queue_size[4]~5_combout\);

-- Location: LCCOMB_X16_Y12_N22
\MEM_CONTROLLER_I|queue_size[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|queue_size[4]~6_combout\ = (\MEM_CONTROLLER_I|queue_size[4]~5_combout\) # ((\GEN_INFO_I|CNT_I|Add0~16_combout\ & (\GEN_INFO_I|CNT_I|LessThan0~14_combout\ & !\MEM_CONTROLLER_I|ADD_DELETE~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_INFO_I|CNT_I|Add0~16_combout\,
	datab => \MEM_CONTROLLER_I|queue_size[4]~5_combout\,
	datac => \GEN_INFO_I|CNT_I|LessThan0~14_combout\,
	datad => \MEM_CONTROLLER_I|ADD_DELETE~1_combout\,
	combout => \MEM_CONTROLLER_I|queue_size[4]~6_combout\);

-- Location: FF_X16_Y13_N3
\MEM_CONTROLLER_I|queue_size[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|queue_size[0]~4_combout\,
	asdata => \MEM_CONTROLLER_I|queue_size\(0),
	clrn => \ALT_INV_rst~input_o\,
	sload => \MEM_CONTROLLER_I|queue_size[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|queue_size\(0));

-- Location: LCCOMB_X16_Y13_N12
\MEM_CONTROLLER_I|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|Add0~2_combout\ = (\MEM_CONTROLLER_I|queue_size\(1) & (!\MEM_CONTROLLER_I|Add0~1\)) # (!\MEM_CONTROLLER_I|queue_size\(1) & ((\MEM_CONTROLLER_I|Add0~1\) # (GND)))
-- \MEM_CONTROLLER_I|Add0~3\ = CARRY((!\MEM_CONTROLLER_I|Add0~1\) # (!\MEM_CONTROLLER_I|queue_size\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MEM_CONTROLLER_I|queue_size\(1),
	datad => VCC,
	cin => \MEM_CONTROLLER_I|Add0~1\,
	combout => \MEM_CONTROLLER_I|Add0~2_combout\,
	cout => \MEM_CONTROLLER_I|Add0~3\);

-- Location: LCCOMB_X16_Y13_N20
\MEM_CONTROLLER_I|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|Add1~2_combout\ = \MEM_CONTROLLER_I|queue_size\(1) $ (\MEM_CONTROLLER_I|queue_size\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_CONTROLLER_I|queue_size\(1),
	datad => \MEM_CONTROLLER_I|queue_size\(0),
	combout => \MEM_CONTROLLER_I|Add1~2_combout\);

-- Location: LCCOMB_X16_Y13_N0
\MEM_CONTROLLER_I|queue_size[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|queue_size[1]~3_combout\ = (\MEM_CONTROLLER_I|ADD_DELETE~0_combout\ & (\MEM_CONTROLLER_I|Add0~2_combout\)) # (!\MEM_CONTROLLER_I|ADD_DELETE~0_combout\ & ((!\MEM_CONTROLLER_I|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|Add0~2_combout\,
	datab => \MEM_CONTROLLER_I|Add1~2_combout\,
	datad => \MEM_CONTROLLER_I|ADD_DELETE~0_combout\,
	combout => \MEM_CONTROLLER_I|queue_size[1]~3_combout\);

-- Location: FF_X16_Y13_N1
\MEM_CONTROLLER_I|queue_size[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|queue_size[1]~3_combout\,
	asdata => \MEM_CONTROLLER_I|queue_size\(1),
	clrn => \ALT_INV_rst~input_o\,
	sload => \MEM_CONTROLLER_I|queue_size[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|queue_size\(1));

-- Location: LCCOMB_X16_Y13_N6
\MEM_CONTROLLER_I|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|Add1~1_combout\ = \MEM_CONTROLLER_I|queue_size\(2) $ (((\MEM_CONTROLLER_I|queue_size\(1)) # (\MEM_CONTROLLER_I|queue_size\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_CONTROLLER_I|queue_size\(1),
	datac => \MEM_CONTROLLER_I|queue_size\(2),
	datad => \MEM_CONTROLLER_I|queue_size\(0),
	combout => \MEM_CONTROLLER_I|Add1~1_combout\);

-- Location: LCCOMB_X16_Y13_N14
\MEM_CONTROLLER_I|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|Add0~4_combout\ = (\MEM_CONTROLLER_I|queue_size\(2) & (\MEM_CONTROLLER_I|Add0~3\ $ (GND))) # (!\MEM_CONTROLLER_I|queue_size\(2) & (!\MEM_CONTROLLER_I|Add0~3\ & VCC))
-- \MEM_CONTROLLER_I|Add0~5\ = CARRY((\MEM_CONTROLLER_I|queue_size\(2) & !\MEM_CONTROLLER_I|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|queue_size\(2),
	datad => VCC,
	cin => \MEM_CONTROLLER_I|Add0~3\,
	combout => \MEM_CONTROLLER_I|Add0~4_combout\,
	cout => \MEM_CONTROLLER_I|Add0~5\);

-- Location: LCCOMB_X16_Y13_N22
\MEM_CONTROLLER_I|queue_size[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|queue_size[2]~2_combout\ = (\MEM_CONTROLLER_I|ADD_DELETE~0_combout\ & ((\MEM_CONTROLLER_I|Add0~4_combout\))) # (!\MEM_CONTROLLER_I|ADD_DELETE~0_combout\ & (!\MEM_CONTROLLER_I|Add1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|Add1~1_combout\,
	datab => \MEM_CONTROLLER_I|Add0~4_combout\,
	datad => \MEM_CONTROLLER_I|ADD_DELETE~0_combout\,
	combout => \MEM_CONTROLLER_I|queue_size[2]~2_combout\);

-- Location: FF_X16_Y13_N23
\MEM_CONTROLLER_I|queue_size[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|queue_size[2]~2_combout\,
	asdata => \MEM_CONTROLLER_I|queue_size\(2),
	clrn => \ALT_INV_rst~input_o\,
	sload => \MEM_CONTROLLER_I|queue_size[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|queue_size\(2));

-- Location: LCCOMB_X16_Y13_N16
\MEM_CONTROLLER_I|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|Add0~6_combout\ = (\MEM_CONTROLLER_I|queue_size\(3) & (!\MEM_CONTROLLER_I|Add0~5\)) # (!\MEM_CONTROLLER_I|queue_size\(3) & ((\MEM_CONTROLLER_I|Add0~5\) # (GND)))
-- \MEM_CONTROLLER_I|Add0~7\ = CARRY((!\MEM_CONTROLLER_I|Add0~5\) # (!\MEM_CONTROLLER_I|queue_size\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MEM_CONTROLLER_I|queue_size\(3),
	datad => VCC,
	cin => \MEM_CONTROLLER_I|Add0~5\,
	combout => \MEM_CONTROLLER_I|Add0~6_combout\,
	cout => \MEM_CONTROLLER_I|Add0~7\);

-- Location: LCCOMB_X16_Y13_N8
\MEM_CONTROLLER_I|queue_size[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|queue_size[3]~1_combout\ = (\MEM_CONTROLLER_I|ADD_DELETE~0_combout\ & (\MEM_CONTROLLER_I|Add0~6_combout\)) # (!\MEM_CONTROLLER_I|ADD_DELETE~0_combout\ & ((!\MEM_CONTROLLER_I|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|Add0~6_combout\,
	datab => \MEM_CONTROLLER_I|Add1~0_combout\,
	datad => \MEM_CONTROLLER_I|ADD_DELETE~0_combout\,
	combout => \MEM_CONTROLLER_I|queue_size[3]~1_combout\);

-- Location: FF_X16_Y13_N9
\MEM_CONTROLLER_I|queue_size[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|queue_size[3]~1_combout\,
	asdata => \MEM_CONTROLLER_I|queue_size\(3),
	clrn => \ALT_INV_rst~input_o\,
	sload => \MEM_CONTROLLER_I|queue_size[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|queue_size\(3));

-- Location: LCCOMB_X16_Y13_N18
\MEM_CONTROLLER_I|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|Add0~8_combout\ = \MEM_CONTROLLER_I|Add0~7\ $ (!\MEM_CONTROLLER_I|queue_size\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \MEM_CONTROLLER_I|queue_size\(4),
	cin => \MEM_CONTROLLER_I|Add0~7\,
	combout => \MEM_CONTROLLER_I|Add0~8_combout\);

-- Location: LCCOMB_X17_Y13_N0
\MEM_CONTROLLER_I|Add1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|Add1~3_combout\ = \COLLISION_CONTROLLER_I|Equal0~0_combout\ $ (!\MEM_CONTROLLER_I|queue_size\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COLLISION_CONTROLLER_I|Equal0~0_combout\,
	datac => \MEM_CONTROLLER_I|queue_size\(4),
	combout => \MEM_CONTROLLER_I|Add1~3_combout\);

-- Location: LCCOMB_X16_Y13_N4
\MEM_CONTROLLER_I|queue_size[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|queue_size[4]~0_combout\ = (\MEM_CONTROLLER_I|ADD_DELETE~0_combout\ & (\MEM_CONTROLLER_I|Add0~8_combout\)) # (!\MEM_CONTROLLER_I|ADD_DELETE~0_combout\ & ((!\MEM_CONTROLLER_I|Add1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|Add0~8_combout\,
	datab => \MEM_CONTROLLER_I|Add1~3_combout\,
	datad => \MEM_CONTROLLER_I|ADD_DELETE~0_combout\,
	combout => \MEM_CONTROLLER_I|queue_size[4]~0_combout\);

-- Location: FF_X16_Y13_N5
\MEM_CONTROLLER_I|queue_size[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|queue_size[4]~0_combout\,
	asdata => \MEM_CONTROLLER_I|queue_size\(4),
	clrn => \ALT_INV_rst~input_o\,
	sload => \MEM_CONTROLLER_I|queue_size[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|queue_size\(4));

-- Location: LCCOMB_X17_Y13_N30
\MEM_CONTROLLER_I|burst_mode~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|burst_mode~0_combout\ = (\MEM_CONTROLLER_I|SET_BURST~0_combout\ & ((\rst~input_o\ & (\MEM_CONTROLLER_I|burst_mode~q\)) # (!\rst~input_o\ & ((!\s_curr.s_burst_cpy~q\))))) # (!\MEM_CONTROLLER_I|SET_BURST~0_combout\ & 
-- (((\MEM_CONTROLLER_I|burst_mode~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|SET_BURST~0_combout\,
	datab => \rst~input_o\,
	datac => \MEM_CONTROLLER_I|burst_mode~q\,
	datad => \s_curr.s_burst_cpy~q\,
	combout => \MEM_CONTROLLER_I|burst_mode~0_combout\);

-- Location: FF_X17_Y13_N31
\MEM_CONTROLLER_I|burst_mode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|burst_mode~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|burst_mode~q\);

-- Location: LCCOMB_X15_Y12_N16
\MEM_CONTROLLER_I|core_w_en~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|core_w_en~0_combout\ = (\MEM_CONTROLLER_I|burst_state~q\ & (((\MEM_CONTROLLER_I|burst_mode~q\)))) # (!\MEM_CONTROLLER_I|burst_state~q\ & (!\MEM_CONTROLLER_I|queue_size\(4) & (\s_curr.s_add_elem~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|queue_size\(4),
	datab => \s_curr.s_add_elem~q\,
	datac => \MEM_CONTROLLER_I|burst_mode~q\,
	datad => \MEM_CONTROLLER_I|burst_state~q\,
	combout => \MEM_CONTROLLER_I|core_w_en~0_combout\);

-- Location: LCCOMB_X12_Y12_N8
\MEM_CONTROLLER_I|core_w_en~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|core_w_en~1_combout\ = (\MEM_CONTROLLER_I|core_w_en~0_combout\ & (((\MEM_CONTROLLER_I|burst_state~q\) # (!\GEN_INFO_I|CNT_I|LessThan0~14_combout\)) # (!\GEN_INFO_I|CNT_I|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|core_w_en~0_combout\,
	datab => \GEN_INFO_I|CNT_I|Add0~16_combout\,
	datac => \MEM_CONTROLLER_I|burst_state~q\,
	datad => \GEN_INFO_I|CNT_I|LessThan0~14_combout\,
	combout => \MEM_CONTROLLER_I|core_w_en~1_combout\);

-- Location: FF_X12_Y12_N9
\MEM_CONTROLLER_I|core_w_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|core_w_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|core_w_en~q\);

-- Location: LCCOMB_X20_Y12_N26
\MEM_CONTROLLER_I|first~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|first~15_combout\ = (\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(9)) # (\MEM_CONTROLLER_I|SET_FIRST~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(9),
	datad => \MEM_CONTROLLER_I|SET_FIRST~0_combout\,
	combout => \MEM_CONTROLLER_I|first~15_combout\);

-- Location: FF_X20_Y12_N27
\MEM_CONTROLLER_I|first[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|first~15_combout\,
	ena => \MEM_CONTROLLER_I|first[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|first\(9));

-- Location: LCCOMB_X20_Y12_N18
\MEM_CONTROLLER_I|first~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|first~13_combout\ = (\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(11) & !\MEM_CONTROLLER_I|SET_FIRST~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(11),
	datad => \MEM_CONTROLLER_I|SET_FIRST~0_combout\,
	combout => \MEM_CONTROLLER_I|first~13_combout\);

-- Location: FF_X20_Y12_N19
\MEM_CONTROLLER_I|first[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|first~13_combout\,
	ena => \MEM_CONTROLLER_I|first[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|first\(11));

-- Location: LCCOMB_X20_Y12_N8
\MEM_CONTROLLER_I|first~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|first~14_combout\ = (\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(10) & !\MEM_CONTROLLER_I|SET_FIRST~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(10),
	datad => \MEM_CONTROLLER_I|SET_FIRST~0_combout\,
	combout => \MEM_CONTROLLER_I|first~14_combout\);

-- Location: FF_X20_Y12_N9
\MEM_CONTROLLER_I|first[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|first~14_combout\,
	ena => \MEM_CONTROLLER_I|first[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|first\(10));

-- Location: LCCOMB_X20_Y12_N24
\MEM_CONTROLLER_I|first~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|first~12_combout\ = (\CORE_MEM_I|altsyncram_component|auto_generated|q_b\(12)) # (\MEM_CONTROLLER_I|SET_FIRST~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(12),
	datad => \MEM_CONTROLLER_I|SET_FIRST~0_combout\,
	combout => \MEM_CONTROLLER_I|first~12_combout\);

-- Location: FF_X20_Y12_N25
\MEM_CONTROLLER_I|first[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|first~12_combout\,
	ena => \MEM_CONTROLLER_I|first[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|first\(12));

-- Location: LCCOMB_X20_Y12_N20
\COLLISION_CONTROLLER_I|hit_process~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COLLISION_CONTROLLER_I|hit_process~4_combout\ = (!\MEM_CONTROLLER_I|first\(9) & (!\MEM_CONTROLLER_I|first\(11) & (!\MEM_CONTROLLER_I|first\(10) & !\MEM_CONTROLLER_I|first\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|first\(9),
	datab => \MEM_CONTROLLER_I|first\(11),
	datac => \MEM_CONTROLLER_I|first\(10),
	datad => \MEM_CONTROLLER_I|first\(12),
	combout => \COLLISION_CONTROLLER_I|hit_process~4_combout\);

-- Location: LCCOMB_X19_Y12_N8
\update_score~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \update_score~0_combout\ = (\COLLISION_CONTROLLER_I|hit_process~4_combout\ & (\COLLISION_CONTROLLER_I|hit_process~3_combout\ & (!\COLLISION_CONTROLLER_I|Equal0~1_combout\ & \COLLISION_CONTROLLER_I|hit_process~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COLLISION_CONTROLLER_I|hit_process~4_combout\,
	datab => \COLLISION_CONTROLLER_I|hit_process~3_combout\,
	datac => \COLLISION_CONTROLLER_I|Equal0~1_combout\,
	datad => \COLLISION_CONTROLLER_I|hit_process~2_combout\,
	combout => \update_score~0_combout\);

-- Location: LCCOMB_X15_Y13_N12
\lives[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lives[1]~2_combout\ = (\s_curr.s_coll_check~q\) # ((!\MEM_CONTROLLER_I|first\(0)) # (!\update_score~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_curr.s_coll_check~q\,
	datac => \update_score~0_combout\,
	datad => \MEM_CONTROLLER_I|first\(0),
	combout => \lives[1]~2_combout\);

-- Location: LCCOMB_X15_Y13_N18
\lives[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lives[0]~4_combout\ = (lives(0) & (!lives(1) & \lives[1]~2_combout\)) # (!lives(0) & ((!\lives[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => lives(1),
	datac => lives(0),
	datad => \lives[1]~2_combout\,
	combout => \lives[0]~4_combout\);

-- Location: FF_X15_Y13_N19
\lives[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \lives[0]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lives(0));

-- Location: LCCOMB_X15_Y13_N16
\lives[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lives[1]~3_combout\ = (lives(0) & (!lives(1) & !\lives[1]~2_combout\)) # (!lives(0) & (lives(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => lives(0),
	datac => lives(1),
	datad => \lives[1]~2_combout\,
	combout => \lives[1]~3_combout\);

-- Location: FF_X15_Y13_N17
\lives[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \lives[1]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lives(1));

-- Location: LCCOMB_X15_Y13_N4
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!lives(0)) # (!lives(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => lives(1),
	datad => lives(0),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X21_Y21_N2
\score[4]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score[4]~11_combout\ = ((!\MEM_CONTROLLER_I|first\(0) & (!\s_curr.s_coll_check~q\ & \update_score~0_combout\))) # (!\LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_CONTROLLER_I|first\(0),
	datab => \s_curr.s_coll_check~q\,
	datac => \LessThan2~0_combout\,
	datad => \update_score~0_combout\,
	combout => \score[4]~11_combout\);

-- Location: FF_X21_Y21_N15
\score[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \score[0]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_LessThan2~0_combout\,
	ena => \score[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => score(0));

-- Location: LCCOMB_X21_Y21_N16
\score[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score[1]~9_combout\ = (score(1) & (!\score[0]~8\)) # (!score(1) & ((\score[0]~8\) # (GND)))
-- \score[1]~10\ = CARRY((!\score[0]~8\) # (!score(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => score(1),
	datad => VCC,
	cin => \score[0]~8\,
	combout => \score[1]~9_combout\,
	cout => \score[1]~10\);

-- Location: FF_X21_Y21_N17
\score[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \score[1]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_LessThan2~0_combout\,
	ena => \score[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => score(1));

-- Location: LCCOMB_X21_Y21_N18
\score[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score[2]~12_combout\ = (score(2) & (\score[1]~10\ $ (GND))) # (!score(2) & (!\score[1]~10\ & VCC))
-- \score[2]~13\ = CARRY((score(2) & !\score[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => score(2),
	datad => VCC,
	cin => \score[1]~10\,
	combout => \score[2]~12_combout\,
	cout => \score[2]~13\);

-- Location: FF_X21_Y21_N19
\score[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \score[2]~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_LessThan2~0_combout\,
	ena => \score[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => score(2));

-- Location: LCCOMB_X21_Y21_N20
\score[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score[3]~14_combout\ = (score(3) & (!\score[2]~13\)) # (!score(3) & ((\score[2]~13\) # (GND)))
-- \score[3]~15\ = CARRY((!\score[2]~13\) # (!score(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => score(3),
	datad => VCC,
	cin => \score[2]~13\,
	combout => \score[3]~14_combout\,
	cout => \score[3]~15\);

-- Location: FF_X21_Y21_N21
\score[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \score[3]~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_LessThan2~0_combout\,
	ena => \score[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => score(3));

-- Location: LCCOMB_X21_Y21_N22
\score[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score[4]~16_combout\ = (score(4) & (\score[3]~15\ $ (GND))) # (!score(4) & (!\score[3]~15\ & VCC))
-- \score[4]~17\ = CARRY((score(4) & !\score[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => score(4),
	datad => VCC,
	cin => \score[3]~15\,
	combout => \score[4]~16_combout\,
	cout => \score[4]~17\);

-- Location: FF_X21_Y21_N23
\score[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \score[4]~16_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_LessThan2~0_combout\,
	ena => \score[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => score(4));

-- Location: LCCOMB_X21_Y21_N24
\score[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score[5]~18_combout\ = (score(5) & (!\score[4]~17\)) # (!score(5) & ((\score[4]~17\) # (GND)))
-- \score[5]~19\ = CARRY((!\score[4]~17\) # (!score(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => score(5),
	datad => VCC,
	cin => \score[4]~17\,
	combout => \score[5]~18_combout\,
	cout => \score[5]~19\);

-- Location: FF_X21_Y21_N25
\score[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \score[5]~18_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_LessThan2~0_combout\,
	ena => \score[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => score(5));

-- Location: LCCOMB_X21_Y21_N12
\BIN_TO_BCD_I|bin_in_reg~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|bin_in_reg~5_combout\ = (!\rst~input_o\ & score(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => score(5),
	combout => \BIN_TO_BCD_I|bin_in_reg~5_combout\);

-- Location: FF_X21_Y21_N13
\BIN_TO_BCD_I|bin_in_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|bin_in_reg~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|bin_in_reg\(5));

-- Location: LCCOMB_X21_Y21_N6
\BIN_TO_BCD_I|bin_in_reg~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|bin_in_reg~4_combout\ = (score(4) & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => score(4),
	datad => \rst~input_o\,
	combout => \BIN_TO_BCD_I|bin_in_reg~4_combout\);

-- Location: FF_X21_Y21_N7
\BIN_TO_BCD_I|bin_in_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|bin_in_reg~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|bin_in_reg\(4));

-- Location: LCCOMB_X21_Y21_N10
\BIN_TO_BCD_I|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|Equal0~2_combout\ = (\BIN_TO_BCD_I|bin_in_reg\(5) & (score(5) & (score(4) $ (!\BIN_TO_BCD_I|bin_in_reg\(4))))) # (!\BIN_TO_BCD_I|bin_in_reg\(5) & (!score(5) & (score(4) $ (!\BIN_TO_BCD_I|bin_in_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|bin_in_reg\(5),
	datab => score(5),
	datac => score(4),
	datad => \BIN_TO_BCD_I|bin_in_reg\(4),
	combout => \BIN_TO_BCD_I|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y21_N26
\score[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score[6]~20_combout\ = score(6) $ (!\score[5]~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => score(6),
	cin => \score[5]~19\,
	combout => \score[6]~20_combout\);

-- Location: FF_X21_Y21_N27
\score[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \score[6]~20_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_LessThan2~0_combout\,
	ena => \score[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => score(6));

-- Location: LCCOMB_X21_Y21_N0
\BIN_TO_BCD_I|bin_in_reg~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|bin_in_reg~6_combout\ = (score(6) & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => score(6),
	datad => \rst~input_o\,
	combout => \BIN_TO_BCD_I|bin_in_reg~6_combout\);

-- Location: FF_X21_Y21_N1
\BIN_TO_BCD_I|bin_in_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|bin_in_reg~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|bin_in_reg\(6));

-- Location: LCCOMB_X21_Y21_N28
\BIN_TO_BCD_I|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|Equal0~3_combout\ = score(6) $ (\BIN_TO_BCD_I|bin_in_reg\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => score(6),
	datad => \BIN_TO_BCD_I|bin_in_reg\(6),
	combout => \BIN_TO_BCD_I|Equal0~3_combout\);

-- Location: LCCOMB_X22_Y21_N18
\BIN_TO_BCD_I|bin_in_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|bin_in_reg~0_combout\ = (!\rst~input_o\ & score(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => score(0),
	combout => \BIN_TO_BCD_I|bin_in_reg~0_combout\);

-- Location: FF_X22_Y21_N19
\BIN_TO_BCD_I|bin_in_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|bin_in_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|bin_in_reg\(0));

-- Location: LCCOMB_X22_Y21_N20
\BIN_TO_BCD_I|bin_in_reg~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|bin_in_reg~1_combout\ = (!\rst~input_o\ & score(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => score(1),
	combout => \BIN_TO_BCD_I|bin_in_reg~1_combout\);

-- Location: FF_X22_Y21_N21
\BIN_TO_BCD_I|bin_in_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|bin_in_reg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|bin_in_reg\(1));

-- Location: LCCOMB_X22_Y21_N22
\BIN_TO_BCD_I|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|Equal0~0_combout\ = (score(0) & (\BIN_TO_BCD_I|bin_in_reg\(0) & (score(1) $ (!\BIN_TO_BCD_I|bin_in_reg\(1))))) # (!score(0) & (!\BIN_TO_BCD_I|bin_in_reg\(0) & (score(1) $ (!\BIN_TO_BCD_I|bin_in_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score(0),
	datab => \BIN_TO_BCD_I|bin_in_reg\(0),
	datac => score(1),
	datad => \BIN_TO_BCD_I|bin_in_reg\(1),
	combout => \BIN_TO_BCD_I|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y21_N30
\BIN_TO_BCD_I|bin_in_reg~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|bin_in_reg~3_combout\ = (!\rst~input_o\ & score(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => score(3),
	combout => \BIN_TO_BCD_I|bin_in_reg~3_combout\);

-- Location: FF_X21_Y21_N31
\BIN_TO_BCD_I|bin_in_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|bin_in_reg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|bin_in_reg\(3));

-- Location: LCCOMB_X21_Y21_N4
\BIN_TO_BCD_I|bin_in_reg~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|bin_in_reg~2_combout\ = (!\rst~input_o\ & score(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => score(2),
	combout => \BIN_TO_BCD_I|bin_in_reg~2_combout\);

-- Location: FF_X21_Y21_N5
\BIN_TO_BCD_I|bin_in_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|bin_in_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|bin_in_reg\(2));

-- Location: LCCOMB_X21_Y21_N8
\BIN_TO_BCD_I|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|Equal0~1_combout\ = (\BIN_TO_BCD_I|bin_in_reg\(3) & (score(3) & (\BIN_TO_BCD_I|bin_in_reg\(2) $ (!score(2))))) # (!\BIN_TO_BCD_I|bin_in_reg\(3) & (!score(3) & (\BIN_TO_BCD_I|bin_in_reg\(2) $ (!score(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|bin_in_reg\(3),
	datab => score(3),
	datac => \BIN_TO_BCD_I|bin_in_reg\(2),
	datad => score(2),
	combout => \BIN_TO_BCD_I|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y21_N24
\BIN_TO_BCD_I|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|Equal0~4_combout\ = (\BIN_TO_BCD_I|Equal0~2_combout\ & (!\BIN_TO_BCD_I|Equal0~3_combout\ & (\BIN_TO_BCD_I|Equal0~0_combout\ & \BIN_TO_BCD_I|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|Equal0~2_combout\,
	datab => \BIN_TO_BCD_I|Equal0~3_combout\,
	datac => \BIN_TO_BCD_I|Equal0~0_combout\,
	datad => \BIN_TO_BCD_I|Equal0~1_combout\,
	combout => \BIN_TO_BCD_I|Equal0~4_combout\);

-- Location: LCCOMB_X23_Y21_N24
\BIN_TO_BCD_I|shift_cnt~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|shift_cnt~2_combout\ = (\rst~input_o\) # ((!\BIN_TO_BCD_I|state_reg.stIdle~q\) # (!\BIN_TO_BCD_I|shift_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \BIN_TO_BCD_I|shift_cnt\(0),
	datad => \BIN_TO_BCD_I|state_reg.stIdle~q\,
	combout => \BIN_TO_BCD_I|shift_cnt~2_combout\);

-- Location: LCCOMB_X23_Y21_N10
\BIN_TO_BCD_I|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|Add0~0_combout\ = (!\BIN_TO_BCD_I|shift_cnt\(1) & !\BIN_TO_BCD_I|shift_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BIN_TO_BCD_I|shift_cnt\(1),
	datad => \BIN_TO_BCD_I|shift_cnt\(0),
	combout => \BIN_TO_BCD_I|Add0~0_combout\);

-- Location: LCCOMB_X23_Y21_N18
\BIN_TO_BCD_I|shift_cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|shift_cnt~0_combout\ = ((\BIN_TO_BCD_I|Selector0~0_combout\) # (\BIN_TO_BCD_I|Add0~0_combout\ $ (\BIN_TO_BCD_I|shift_cnt\(2)))) # (!\BIN_TO_BCD_I|bcd_out[7]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|Add0~0_combout\,
	datab => \BIN_TO_BCD_I|bcd_out[7]~1_combout\,
	datac => \BIN_TO_BCD_I|shift_cnt\(2),
	datad => \BIN_TO_BCD_I|Selector0~0_combout\,
	combout => \BIN_TO_BCD_I|shift_cnt~0_combout\);

-- Location: FF_X23_Y21_N19
\BIN_TO_BCD_I|shift_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|shift_cnt~0_combout\,
	ena => \BIN_TO_BCD_I|shift_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|shift_cnt\(2));

-- Location: LCCOMB_X22_Y21_N6
\BIN_TO_BCD_I|state_reg~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|state_reg~7_combout\ = (!\rst~input_o\ & ((\BIN_TO_BCD_I|state_reg.stCorrection~q\) # ((!\BIN_TO_BCD_I|state_reg.stIdle~q\ & !\BIN_TO_BCD_I|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|state_reg.stIdle~q\,
	datab => \rst~input_o\,
	datac => \BIN_TO_BCD_I|state_reg.stCorrection~q\,
	datad => \BIN_TO_BCD_I|Equal0~4_combout\,
	combout => \BIN_TO_BCD_I|state_reg~7_combout\);

-- Location: FF_X22_Y21_N7
\BIN_TO_BCD_I|state_reg.stShift\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|state_reg~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|state_reg.stShift~q\);

-- Location: LCCOMB_X23_Y21_N14
\BIN_TO_BCD_I|state_reg~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|state_reg~6_combout\ = (!\rst~input_o\ & (\BIN_TO_BCD_I|state_reg.stShift~q\ & ((\BIN_TO_BCD_I|shift_cnt\(2)) # (!\BIN_TO_BCD_I|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \BIN_TO_BCD_I|shift_cnt\(2),
	datac => \BIN_TO_BCD_I|state_reg.stShift~q\,
	datad => \BIN_TO_BCD_I|Add0~0_combout\,
	combout => \BIN_TO_BCD_I|state_reg~6_combout\);

-- Location: FF_X23_Y21_N15
\BIN_TO_BCD_I|state_reg.stCorrection\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|state_reg~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|state_reg.stCorrection~q\);

-- Location: LCCOMB_X23_Y21_N28
\BIN_TO_BCD_I|shift_cnt[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|shift_cnt[2]~1_combout\ = (\rst~input_o\) # (!\BIN_TO_BCD_I|state_reg.stCorrection~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \BIN_TO_BCD_I|state_reg.stCorrection~q\,
	combout => \BIN_TO_BCD_I|shift_cnt[2]~1_combout\);

-- Location: FF_X23_Y21_N25
\BIN_TO_BCD_I|shift_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|shift_cnt~2_combout\,
	ena => \BIN_TO_BCD_I|shift_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|shift_cnt\(0));

-- Location: LCCOMB_X23_Y21_N22
\BIN_TO_BCD_I|shift_cnt~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|shift_cnt~3_combout\ = (\BIN_TO_BCD_I|Selector0~0_combout\) # ((\BIN_TO_BCD_I|shift_cnt\(0) $ (!\BIN_TO_BCD_I|shift_cnt\(1))) # (!\BIN_TO_BCD_I|bcd_out[7]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|Selector0~0_combout\,
	datab => \BIN_TO_BCD_I|shift_cnt\(0),
	datac => \BIN_TO_BCD_I|shift_cnt\(1),
	datad => \BIN_TO_BCD_I|bcd_out[7]~1_combout\,
	combout => \BIN_TO_BCD_I|shift_cnt~3_combout\);

-- Location: FF_X23_Y21_N23
\BIN_TO_BCD_I|shift_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|shift_cnt~3_combout\,
	ena => \BIN_TO_BCD_I|shift_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|shift_cnt\(1));

-- Location: LCCOMB_X23_Y21_N12
\BIN_TO_BCD_I|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|Selector0~0_combout\ = (!\BIN_TO_BCD_I|shift_cnt\(1) & (!\BIN_TO_BCD_I|shift_cnt\(0) & (\BIN_TO_BCD_I|state_reg.stShift~q\ & !\BIN_TO_BCD_I|shift_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|shift_cnt\(1),
	datab => \BIN_TO_BCD_I|shift_cnt\(0),
	datac => \BIN_TO_BCD_I|state_reg.stShift~q\,
	datad => \BIN_TO_BCD_I|shift_cnt\(2),
	combout => \BIN_TO_BCD_I|Selector0~0_combout\);

-- Location: LCCOMB_X23_Y21_N6
\BIN_TO_BCD_I|state_reg~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|state_reg~5_combout\ = (!\rst~input_o\ & (!\BIN_TO_BCD_I|Selector0~0_combout\ & ((\BIN_TO_BCD_I|state_reg.stIdle~q\) # (!\BIN_TO_BCD_I|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \BIN_TO_BCD_I|Equal0~4_combout\,
	datac => \BIN_TO_BCD_I|state_reg.stIdle~q\,
	datad => \BIN_TO_BCD_I|Selector0~0_combout\,
	combout => \BIN_TO_BCD_I|state_reg~5_combout\);

-- Location: FF_X23_Y21_N7
\BIN_TO_BCD_I|state_reg.stIdle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|state_reg~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|state_reg.stIdle~q\);

-- Location: LCCOMB_X23_Y21_N0
\BIN_TO_BCD_I|bcd_out[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|bcd_out[7]~1_combout\ = (!\rst~input_o\ & \BIN_TO_BCD_I|state_reg.stIdle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \BIN_TO_BCD_I|state_reg.stIdle~q\,
	combout => \BIN_TO_BCD_I|bcd_out[7]~1_combout\);

-- Location: LCCOMB_X22_Y21_N14
\BIN_TO_BCD_I|Selector21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|Selector21~0_combout\ = (\BIN_TO_BCD_I|shift_reg\(0) & ((\BIN_TO_BCD_I|state_reg.stCorrection~q\) # ((\BIN_TO_BCD_I|Equal0~4_combout\ & !\BIN_TO_BCD_I|state_reg.stIdle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|shift_reg\(0),
	datab => \BIN_TO_BCD_I|Equal0~4_combout\,
	datac => \BIN_TO_BCD_I|state_reg.stCorrection~q\,
	datad => \BIN_TO_BCD_I|state_reg.stIdle~q\,
	combout => \BIN_TO_BCD_I|Selector21~0_combout\);

-- Location: LCCOMB_X22_Y21_N12
\BIN_TO_BCD_I|Selector21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|Selector21~1_combout\ = (\BIN_TO_BCD_I|Selector21~0_combout\) # ((score(0) & (!\BIN_TO_BCD_I|Equal0~4_combout\ & !\BIN_TO_BCD_I|state_reg.stIdle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score(0),
	datab => \BIN_TO_BCD_I|Equal0~4_combout\,
	datac => \BIN_TO_BCD_I|Selector21~0_combout\,
	datad => \BIN_TO_BCD_I|state_reg.stIdle~q\,
	combout => \BIN_TO_BCD_I|Selector21~1_combout\);

-- Location: FF_X22_Y21_N13
\BIN_TO_BCD_I|shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|Selector21~1_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|shift_reg\(0));

-- Location: LCCOMB_X22_Y21_N26
\BIN_TO_BCD_I|shift_reg~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|shift_reg~23_combout\ = (\BIN_TO_BCD_I|state_reg.stShift~q\ & (\BIN_TO_BCD_I|shift_reg\(0))) # (!\BIN_TO_BCD_I|state_reg.stShift~q\ & ((score(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|shift_reg\(0),
	datac => score(1),
	datad => \BIN_TO_BCD_I|state_reg.stShift~q\,
	combout => \BIN_TO_BCD_I|shift_reg~23_combout\);

-- Location: LCCOMB_X22_Y21_N28
\BIN_TO_BCD_I|shift_reg[6]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|shift_reg[6]~18_combout\ = (\rst~input_o\) # ((!\BIN_TO_BCD_I|state_reg.stCorrection~q\ & ((\BIN_TO_BCD_I|state_reg.stIdle~q\) # (!\BIN_TO_BCD_I|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|state_reg.stIdle~q\,
	datab => \rst~input_o\,
	datac => \BIN_TO_BCD_I|state_reg.stCorrection~q\,
	datad => \BIN_TO_BCD_I|Equal0~4_combout\,
	combout => \BIN_TO_BCD_I|shift_reg[6]~18_combout\);

-- Location: FF_X22_Y21_N27
\BIN_TO_BCD_I|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|shift_reg~23_combout\,
	sclr => \rst~input_o\,
	ena => \BIN_TO_BCD_I|shift_reg[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|shift_reg\(1));

-- Location: LCCOMB_X22_Y21_N4
\BIN_TO_BCD_I|shift_reg~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|shift_reg~22_combout\ = (\BIN_TO_BCD_I|state_reg.stShift~q\ & ((\BIN_TO_BCD_I|shift_reg\(1)))) # (!\BIN_TO_BCD_I|state_reg.stShift~q\ & (score(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => score(2),
	datac => \BIN_TO_BCD_I|shift_reg\(1),
	datad => \BIN_TO_BCD_I|state_reg.stShift~q\,
	combout => \BIN_TO_BCD_I|shift_reg~22_combout\);

-- Location: FF_X22_Y21_N5
\BIN_TO_BCD_I|shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|shift_reg~22_combout\,
	sclr => \rst~input_o\,
	ena => \BIN_TO_BCD_I|shift_reg[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|shift_reg\(2));

-- Location: LCCOMB_X22_Y21_N30
\BIN_TO_BCD_I|shift_reg~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|shift_reg~21_combout\ = (\BIN_TO_BCD_I|state_reg.stShift~q\ & ((\BIN_TO_BCD_I|shift_reg\(2)))) # (!\BIN_TO_BCD_I|state_reg.stShift~q\ & (score(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|state_reg.stShift~q\,
	datab => score(3),
	datac => \BIN_TO_BCD_I|shift_reg\(2),
	combout => \BIN_TO_BCD_I|shift_reg~21_combout\);

-- Location: FF_X22_Y21_N31
\BIN_TO_BCD_I|shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|shift_reg~21_combout\,
	sclr => \rst~input_o\,
	ena => \BIN_TO_BCD_I|shift_reg[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|shift_reg\(3));

-- Location: LCCOMB_X22_Y21_N0
\BIN_TO_BCD_I|shift_reg~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|shift_reg~20_combout\ = (\BIN_TO_BCD_I|state_reg.stShift~q\ & ((\BIN_TO_BCD_I|shift_reg\(3)))) # (!\BIN_TO_BCD_I|state_reg.stShift~q\ & (score(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => score(4),
	datac => \BIN_TO_BCD_I|shift_reg\(3),
	datad => \BIN_TO_BCD_I|state_reg.stShift~q\,
	combout => \BIN_TO_BCD_I|shift_reg~20_combout\);

-- Location: FF_X22_Y21_N1
\BIN_TO_BCD_I|shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|shift_reg~20_combout\,
	sclr => \rst~input_o\,
	ena => \BIN_TO_BCD_I|shift_reg[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|shift_reg\(4));

-- Location: LCCOMB_X22_Y21_N10
\BIN_TO_BCD_I|shift_reg~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|shift_reg~19_combout\ = (\BIN_TO_BCD_I|state_reg.stShift~q\ & ((\BIN_TO_BCD_I|shift_reg\(4)))) # (!\BIN_TO_BCD_I|state_reg.stShift~q\ & (score(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|state_reg.stShift~q\,
	datab => score(5),
	datad => \BIN_TO_BCD_I|shift_reg\(4),
	combout => \BIN_TO_BCD_I|shift_reg~19_combout\);

-- Location: FF_X22_Y21_N11
\BIN_TO_BCD_I|shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|shift_reg~19_combout\,
	sclr => \rst~input_o\,
	ena => \BIN_TO_BCD_I|shift_reg[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|shift_reg\(5));

-- Location: LCCOMB_X22_Y21_N16
\BIN_TO_BCD_I|shift_reg~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|shift_reg~17_combout\ = (\BIN_TO_BCD_I|state_reg.stShift~q\ & (\BIN_TO_BCD_I|shift_reg\(5))) # (!\BIN_TO_BCD_I|state_reg.stShift~q\ & ((score(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|shift_reg\(5),
	datac => score(6),
	datad => \BIN_TO_BCD_I|state_reg.stShift~q\,
	combout => \BIN_TO_BCD_I|shift_reg~17_combout\);

-- Location: FF_X22_Y21_N17
\BIN_TO_BCD_I|shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|shift_reg~17_combout\,
	sclr => \rst~input_o\,
	ena => \BIN_TO_BCD_I|shift_reg[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|shift_reg\(6));

-- Location: LCCOMB_X23_Y21_N26
\BIN_TO_BCD_I|Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|Selector14~0_combout\ = (\BIN_TO_BCD_I|state_reg.stShift~q\ & (\BIN_TO_BCD_I|shift_reg\(6))) # (!\BIN_TO_BCD_I|state_reg.stShift~q\ & (((\BIN_TO_BCD_I|Equal0~4_combout\) # (\BIN_TO_BCD_I|state_reg.stIdle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|shift_reg\(6),
	datab => \BIN_TO_BCD_I|Equal0~4_combout\,
	datac => \BIN_TO_BCD_I|state_reg.stShift~q\,
	datad => \BIN_TO_BCD_I|state_reg.stIdle~q\,
	combout => \BIN_TO_BCD_I|Selector14~0_combout\);

-- Location: LCCOMB_X23_Y21_N4
\BIN_TO_BCD_I|Selector14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|Selector14~1_combout\ = (\BIN_TO_BCD_I|state_reg.stCorrection~q\ & (((\BIN_TO_BCD_I|shift_reg\(7))))) # (!\BIN_TO_BCD_I|state_reg.stCorrection~q\ & (\BIN_TO_BCD_I|Selector14~0_combout\ & ((\BIN_TO_BCD_I|state_reg.stShift~q\) # 
-- (\BIN_TO_BCD_I|shift_reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|Selector14~0_combout\,
	datab => \BIN_TO_BCD_I|state_reg.stShift~q\,
	datac => \BIN_TO_BCD_I|shift_reg\(7),
	datad => \BIN_TO_BCD_I|state_reg.stCorrection~q\,
	combout => \BIN_TO_BCD_I|Selector14~1_combout\);

-- Location: FF_X23_Y21_N5
\BIN_TO_BCD_I|shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|Selector14~1_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|shift_reg\(7));

-- Location: LCCOMB_X24_Y28_N6
\BIN_TO_BCD_I|shift_reg~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|shift_reg~9_combout\ = (\BIN_TO_BCD_I|bcd_out[7]~1_combout\ & ((\BIN_TO_BCD_I|state_reg.stCorrection~q\ & (!\BIN_TO_BCD_I|shift_reg\(8))) # (!\BIN_TO_BCD_I|state_reg.stCorrection~q\ & ((\BIN_TO_BCD_I|shift_reg\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|bcd_out[7]~1_combout\,
	datab => \BIN_TO_BCD_I|state_reg.stCorrection~q\,
	datac => \BIN_TO_BCD_I|shift_reg\(8),
	datad => \BIN_TO_BCD_I|shift_reg\(7),
	combout => \BIN_TO_BCD_I|shift_reg~9_combout\);

-- Location: LCCOMB_X24_Y28_N12
\BIN_TO_BCD_I|shift_reg~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|shift_reg~12_combout\ = (\BIN_TO_BCD_I|bcd_out[7]~1_combout\ & (\BIN_TO_BCD_I|shift_reg\(8) $ (((\BIN_TO_BCD_I|state_reg.stCorrection~q\ & !\BIN_TO_BCD_I|shift_reg\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|bcd_out[7]~1_combout\,
	datab => \BIN_TO_BCD_I|state_reg.stCorrection~q\,
	datac => \BIN_TO_BCD_I|shift_reg\(9),
	datad => \BIN_TO_BCD_I|shift_reg\(8),
	combout => \BIN_TO_BCD_I|shift_reg~12_combout\);

-- Location: FF_X24_Y28_N13
\BIN_TO_BCD_I|shift_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|shift_reg~12_combout\,
	ena => \BIN_TO_BCD_I|ALT_INV_shift_reg[9]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|shift_reg\(9));

-- Location: LCCOMB_X23_Y28_N26
\BIN_TO_BCD_I|shift_reg[10]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|shift_reg[10]~13_combout\ = (\BIN_TO_BCD_I|state_reg.stCorrection~q\ & (\BIN_TO_BCD_I|shift_reg\(10) $ (((\BIN_TO_BCD_I|shift_reg\(9)) # (\BIN_TO_BCD_I|shift_reg\(8)))))) # (!\BIN_TO_BCD_I|state_reg.stCorrection~q\ & 
-- (((\BIN_TO_BCD_I|shift_reg\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|state_reg.stCorrection~q\,
	datab => \BIN_TO_BCD_I|shift_reg\(10),
	datac => \BIN_TO_BCD_I|shift_reg\(9),
	datad => \BIN_TO_BCD_I|shift_reg\(8),
	combout => \BIN_TO_BCD_I|shift_reg[10]~13_combout\);

-- Location: LCCOMB_X23_Y28_N24
\BIN_TO_BCD_I|shift_reg[10]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|shift_reg[10]~14_combout\ = (\BIN_TO_BCD_I|shift_reg[9]~11_combout\ & (((\BIN_TO_BCD_I|shift_reg\(10))))) # (!\BIN_TO_BCD_I|shift_reg[9]~11_combout\ & (\BIN_TO_BCD_I|shift_reg[10]~13_combout\ & ((\BIN_TO_BCD_I|bcd_out[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|shift_reg[10]~13_combout\,
	datab => \BIN_TO_BCD_I|shift_reg[9]~11_combout\,
	datac => \BIN_TO_BCD_I|shift_reg\(10),
	datad => \BIN_TO_BCD_I|bcd_out[7]~1_combout\,
	combout => \BIN_TO_BCD_I|shift_reg[10]~14_combout\);

-- Location: FF_X23_Y28_N25
\BIN_TO_BCD_I|shift_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|shift_reg[10]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|shift_reg\(10));

-- Location: LCCOMB_X23_Y28_N10
\BIN_TO_BCD_I|shift_reg[9]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|shift_reg[9]~10_combout\ = (!\BIN_TO_BCD_I|shift_reg\(11) & (((!\BIN_TO_BCD_I|shift_reg\(8) & !\BIN_TO_BCD_I|shift_reg\(9))) # (!\BIN_TO_BCD_I|shift_reg\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|shift_reg\(8),
	datab => \BIN_TO_BCD_I|shift_reg\(11),
	datac => \BIN_TO_BCD_I|shift_reg\(9),
	datad => \BIN_TO_BCD_I|shift_reg\(10),
	combout => \BIN_TO_BCD_I|shift_reg[9]~10_combout\);

-- Location: LCCOMB_X23_Y21_N20
\BIN_TO_BCD_I|shift_reg[14]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|shift_reg[14]~1_combout\ = (\BIN_TO_BCD_I|Equal0~4_combout\ & (!\BIN_TO_BCD_I|state_reg.stCorrection~q\ & !\BIN_TO_BCD_I|state_reg.stIdle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BIN_TO_BCD_I|Equal0~4_combout\,
	datac => \BIN_TO_BCD_I|state_reg.stCorrection~q\,
	datad => \BIN_TO_BCD_I|state_reg.stIdle~q\,
	combout => \BIN_TO_BCD_I|shift_reg[14]~1_combout\);

-- Location: LCCOMB_X23_Y28_N16
\BIN_TO_BCD_I|shift_reg[9]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|shift_reg[9]~11_combout\ = (!\rst~input_o\ & ((\BIN_TO_BCD_I|shift_reg[14]~1_combout\) # ((\BIN_TO_BCD_I|state_reg.stCorrection~q\ & \BIN_TO_BCD_I|shift_reg[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|state_reg.stCorrection~q\,
	datab => \BIN_TO_BCD_I|shift_reg[9]~10_combout\,
	datac => \BIN_TO_BCD_I|shift_reg[14]~1_combout\,
	datad => \rst~input_o\,
	combout => \BIN_TO_BCD_I|shift_reg[9]~11_combout\);

-- Location: FF_X24_Y28_N7
\BIN_TO_BCD_I|shift_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|shift_reg~9_combout\,
	ena => \BIN_TO_BCD_I|ALT_INV_shift_reg[9]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|shift_reg\(8));

-- Location: LCCOMB_X23_Y28_N8
\BIN_TO_BCD_I|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|Add3~0_combout\ = \BIN_TO_BCD_I|shift_reg\(11) $ (((\BIN_TO_BCD_I|shift_reg\(10) & ((\BIN_TO_BCD_I|shift_reg\(8)) # (\BIN_TO_BCD_I|shift_reg\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|shift_reg\(8),
	datab => \BIN_TO_BCD_I|shift_reg\(11),
	datac => \BIN_TO_BCD_I|shift_reg\(9),
	datad => \BIN_TO_BCD_I|shift_reg\(10),
	combout => \BIN_TO_BCD_I|Add3~0_combout\);

-- Location: LCCOMB_X23_Y28_N18
\BIN_TO_BCD_I|shift_reg[11]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|shift_reg[11]~15_combout\ = (\BIN_TO_BCD_I|state_reg.stCorrection~q\ & (\BIN_TO_BCD_I|Add3~0_combout\)) # (!\BIN_TO_BCD_I|state_reg.stCorrection~q\ & ((\BIN_TO_BCD_I|shift_reg\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|state_reg.stCorrection~q\,
	datac => \BIN_TO_BCD_I|Add3~0_combout\,
	datad => \BIN_TO_BCD_I|shift_reg\(10),
	combout => \BIN_TO_BCD_I|shift_reg[11]~15_combout\);

-- Location: LCCOMB_X23_Y28_N14
\BIN_TO_BCD_I|shift_reg[11]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|shift_reg[11]~16_combout\ = (\BIN_TO_BCD_I|shift_reg[9]~11_combout\ & (((\BIN_TO_BCD_I|shift_reg\(11))))) # (!\BIN_TO_BCD_I|shift_reg[9]~11_combout\ & (\BIN_TO_BCD_I|bcd_out[7]~1_combout\ & (\BIN_TO_BCD_I|shift_reg[11]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|bcd_out[7]~1_combout\,
	datab => \BIN_TO_BCD_I|shift_reg[11]~15_combout\,
	datac => \BIN_TO_BCD_I|shift_reg\(11),
	datad => \BIN_TO_BCD_I|shift_reg[9]~11_combout\,
	combout => \BIN_TO_BCD_I|shift_reg[11]~16_combout\);

-- Location: FF_X23_Y28_N15
\BIN_TO_BCD_I|shift_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|shift_reg[11]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|shift_reg\(11));

-- Location: LCCOMB_X23_Y28_N12
\BIN_TO_BCD_I|shift_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|shift_reg~0_combout\ = (\BIN_TO_BCD_I|bcd_out[7]~1_combout\ & ((\BIN_TO_BCD_I|state_reg.stCorrection~q\ & ((!\BIN_TO_BCD_I|shift_reg\(12)))) # (!\BIN_TO_BCD_I|state_reg.stCorrection~q\ & (\BIN_TO_BCD_I|shift_reg\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|bcd_out[7]~1_combout\,
	datab => \BIN_TO_BCD_I|shift_reg\(11),
	datac => \BIN_TO_BCD_I|shift_reg\(12),
	datad => \BIN_TO_BCD_I|state_reg.stCorrection~q\,
	combout => \BIN_TO_BCD_I|shift_reg~0_combout\);

-- Location: LCCOMB_X23_Y28_N30
\BIN_TO_BCD_I|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|Add2~0_combout\ = \BIN_TO_BCD_I|shift_reg\(15) $ (((\BIN_TO_BCD_I|shift_reg\(14) & ((\BIN_TO_BCD_I|shift_reg\(13)) # (\BIN_TO_BCD_I|shift_reg\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|shift_reg\(13),
	datab => \BIN_TO_BCD_I|shift_reg\(14),
	datac => \BIN_TO_BCD_I|shift_reg\(15),
	datad => \BIN_TO_BCD_I|shift_reg\(12),
	combout => \BIN_TO_BCD_I|Add2~0_combout\);

-- Location: LCCOMB_X23_Y28_N28
\BIN_TO_BCD_I|shift_reg[15]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|shift_reg[15]~7_combout\ = (\BIN_TO_BCD_I|state_reg.stCorrection~q\ & ((\BIN_TO_BCD_I|Add2~0_combout\))) # (!\BIN_TO_BCD_I|state_reg.stCorrection~q\ & (\BIN_TO_BCD_I|shift_reg\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|state_reg.stCorrection~q\,
	datab => \BIN_TO_BCD_I|shift_reg\(14),
	datac => \BIN_TO_BCD_I|Add2~0_combout\,
	combout => \BIN_TO_BCD_I|shift_reg[15]~7_combout\);

-- Location: LCCOMB_X23_Y28_N22
\BIN_TO_BCD_I|shift_reg[15]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|shift_reg[15]~8_combout\ = (\BIN_TO_BCD_I|shift_reg[14]~3_combout\ & (((\BIN_TO_BCD_I|shift_reg\(15))))) # (!\BIN_TO_BCD_I|shift_reg[14]~3_combout\ & (\BIN_TO_BCD_I|bcd_out[7]~1_combout\ & (\BIN_TO_BCD_I|shift_reg[15]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|bcd_out[7]~1_combout\,
	datab => \BIN_TO_BCD_I|shift_reg[15]~7_combout\,
	datac => \BIN_TO_BCD_I|shift_reg\(15),
	datad => \BIN_TO_BCD_I|shift_reg[14]~3_combout\,
	combout => \BIN_TO_BCD_I|shift_reg[15]~8_combout\);

-- Location: FF_X23_Y28_N23
\BIN_TO_BCD_I|shift_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|shift_reg[15]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|shift_reg\(15));

-- Location: LCCOMB_X23_Y28_N20
\BIN_TO_BCD_I|shift_reg[14]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|shift_reg[14]~2_combout\ = (!\BIN_TO_BCD_I|shift_reg\(15) & (((!\BIN_TO_BCD_I|shift_reg\(13) & !\BIN_TO_BCD_I|shift_reg\(12))) # (!\BIN_TO_BCD_I|shift_reg\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|shift_reg\(13),
	datab => \BIN_TO_BCD_I|shift_reg\(14),
	datac => \BIN_TO_BCD_I|shift_reg\(15),
	datad => \BIN_TO_BCD_I|shift_reg\(12),
	combout => \BIN_TO_BCD_I|shift_reg[14]~2_combout\);

-- Location: LCCOMB_X23_Y28_N2
\BIN_TO_BCD_I|shift_reg[14]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|shift_reg[14]~3_combout\ = (!\rst~input_o\ & ((\BIN_TO_BCD_I|shift_reg[14]~1_combout\) # ((\BIN_TO_BCD_I|shift_reg[14]~2_combout\ & \BIN_TO_BCD_I|state_reg.stCorrection~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \BIN_TO_BCD_I|shift_reg[14]~2_combout\,
	datac => \BIN_TO_BCD_I|shift_reg[14]~1_combout\,
	datad => \BIN_TO_BCD_I|state_reg.stCorrection~q\,
	combout => \BIN_TO_BCD_I|shift_reg[14]~3_combout\);

-- Location: FF_X23_Y28_N13
\BIN_TO_BCD_I|shift_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|shift_reg~0_combout\,
	ena => \BIN_TO_BCD_I|ALT_INV_shift_reg[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|shift_reg\(12));

-- Location: LCCOMB_X23_Y28_N6
\BIN_TO_BCD_I|shift_reg~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|shift_reg~4_combout\ = (\BIN_TO_BCD_I|bcd_out[7]~1_combout\ & (\BIN_TO_BCD_I|shift_reg\(12) $ (((\BIN_TO_BCD_I|state_reg.stCorrection~q\ & !\BIN_TO_BCD_I|shift_reg\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|bcd_out[7]~1_combout\,
	datab => \BIN_TO_BCD_I|state_reg.stCorrection~q\,
	datac => \BIN_TO_BCD_I|shift_reg\(13),
	datad => \BIN_TO_BCD_I|shift_reg\(12),
	combout => \BIN_TO_BCD_I|shift_reg~4_combout\);

-- Location: FF_X23_Y28_N7
\BIN_TO_BCD_I|shift_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|shift_reg~4_combout\,
	ena => \BIN_TO_BCD_I|ALT_INV_shift_reg[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|shift_reg\(13));

-- Location: LCCOMB_X23_Y28_N0
\BIN_TO_BCD_I|shift_reg[14]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|shift_reg[14]~5_combout\ = (\BIN_TO_BCD_I|state_reg.stCorrection~q\ & (\BIN_TO_BCD_I|shift_reg\(14) $ (((\BIN_TO_BCD_I|shift_reg\(13)) # (\BIN_TO_BCD_I|shift_reg\(12)))))) # (!\BIN_TO_BCD_I|state_reg.stCorrection~q\ & 
-- (\BIN_TO_BCD_I|shift_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|state_reg.stCorrection~q\,
	datab => \BIN_TO_BCD_I|shift_reg\(13),
	datac => \BIN_TO_BCD_I|shift_reg\(14),
	datad => \BIN_TO_BCD_I|shift_reg\(12),
	combout => \BIN_TO_BCD_I|shift_reg[14]~5_combout\);

-- Location: LCCOMB_X23_Y28_N4
\BIN_TO_BCD_I|shift_reg[14]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|shift_reg[14]~6_combout\ = (\BIN_TO_BCD_I|shift_reg[14]~3_combout\ & (((\BIN_TO_BCD_I|shift_reg\(14))))) # (!\BIN_TO_BCD_I|shift_reg[14]~3_combout\ & (\BIN_TO_BCD_I|bcd_out[7]~1_combout\ & (\BIN_TO_BCD_I|shift_reg[14]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|bcd_out[7]~1_combout\,
	datab => \BIN_TO_BCD_I|shift_reg[14]~5_combout\,
	datac => \BIN_TO_BCD_I|shift_reg\(14),
	datad => \BIN_TO_BCD_I|shift_reg[14]~3_combout\,
	combout => \BIN_TO_BCD_I|shift_reg[14]~6_combout\);

-- Location: FF_X23_Y28_N5
\BIN_TO_BCD_I|shift_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|shift_reg[14]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|shift_reg\(14));

-- Location: LCCOMB_X22_Y28_N12
\BIN_TO_BCD_I|bcd_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|bcd_out~3_combout\ = (!\rst~input_o\ & \BIN_TO_BCD_I|shift_reg\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \BIN_TO_BCD_I|shift_reg\(14),
	combout => \BIN_TO_BCD_I|bcd_out~3_combout\);

-- Location: FF_X22_Y28_N13
\BIN_TO_BCD_I|bcd_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|bcd_out~3_combout\,
	ena => \BIN_TO_BCD_I|ALT_INV_bcd_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|bcd_out\(6));

-- Location: LCCOMB_X22_Y28_N24
\BIN_TO_BCD_I|bcd_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|bcd_out~0_combout\ = (\BIN_TO_BCD_I|shift_reg\(12) & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BIN_TO_BCD_I|shift_reg\(12),
	datac => \rst~input_o\,
	combout => \BIN_TO_BCD_I|bcd_out~0_combout\);

-- Location: FF_X22_Y28_N25
\BIN_TO_BCD_I|bcd_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|bcd_out~0_combout\,
	ena => \BIN_TO_BCD_I|ALT_INV_bcd_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|bcd_out\(4));

-- Location: LCCOMB_X22_Y28_N22
\BIN_TO_BCD_I|bcd_out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|bcd_out~4_combout\ = (!\rst~input_o\ & \BIN_TO_BCD_I|shift_reg\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \BIN_TO_BCD_I|shift_reg\(15),
	combout => \BIN_TO_BCD_I|bcd_out~4_combout\);

-- Location: FF_X22_Y28_N23
\BIN_TO_BCD_I|bcd_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|bcd_out~4_combout\,
	ena => \BIN_TO_BCD_I|ALT_INV_bcd_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|bcd_out\(7));

-- Location: LCCOMB_X22_Y28_N18
\BIN_TO_BCD_I|bcd_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|bcd_out~2_combout\ = (!\rst~input_o\ & \BIN_TO_BCD_I|shift_reg\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \BIN_TO_BCD_I|shift_reg\(13),
	combout => \BIN_TO_BCD_I|bcd_out~2_combout\);

-- Location: FF_X22_Y28_N19
\BIN_TO_BCD_I|bcd_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|bcd_out~2_combout\,
	ena => \BIN_TO_BCD_I|ALT_INV_bcd_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|bcd_out\(5));

-- Location: LCCOMB_X22_Y28_N0
\SEG1_I|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SEG1_I|Mux6~0_combout\ = (\BIN_TO_BCD_I|bcd_out\(5) & (((\BIN_TO_BCD_I|bcd_out\(7))))) # (!\BIN_TO_BCD_I|bcd_out\(5) & (\BIN_TO_BCD_I|bcd_out\(6) $ (((\BIN_TO_BCD_I|bcd_out\(4) & !\BIN_TO_BCD_I|bcd_out\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|bcd_out\(6),
	datab => \BIN_TO_BCD_I|bcd_out\(4),
	datac => \BIN_TO_BCD_I|bcd_out\(7),
	datad => \BIN_TO_BCD_I|bcd_out\(5),
	combout => \SEG1_I|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y28_N2
\SEG1_I|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SEG1_I|Mux5~0_combout\ = (\BIN_TO_BCD_I|bcd_out\(6) & ((\BIN_TO_BCD_I|bcd_out\(7)) # (\BIN_TO_BCD_I|bcd_out\(4) $ (\BIN_TO_BCD_I|bcd_out\(5))))) # (!\BIN_TO_BCD_I|bcd_out\(6) & (((\BIN_TO_BCD_I|bcd_out\(7) & \BIN_TO_BCD_I|bcd_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|bcd_out\(6),
	datab => \BIN_TO_BCD_I|bcd_out\(4),
	datac => \BIN_TO_BCD_I|bcd_out\(7),
	datad => \BIN_TO_BCD_I|bcd_out\(5),
	combout => \SEG1_I|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y28_N8
\SEG1_I|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SEG1_I|Mux4~0_combout\ = (\BIN_TO_BCD_I|bcd_out\(6) & (((\BIN_TO_BCD_I|bcd_out\(7))))) # (!\BIN_TO_BCD_I|bcd_out\(6) & (\BIN_TO_BCD_I|bcd_out\(5) & ((\BIN_TO_BCD_I|bcd_out\(7)) # (!\BIN_TO_BCD_I|bcd_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|bcd_out\(6),
	datab => \BIN_TO_BCD_I|bcd_out\(4),
	datac => \BIN_TO_BCD_I|bcd_out\(7),
	datad => \BIN_TO_BCD_I|bcd_out\(5),
	combout => \SEG1_I|Mux4~0_combout\);

-- Location: LCCOMB_X22_Y28_N10
\SEG1_I|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SEG1_I|Mux3~0_combout\ = (\BIN_TO_BCD_I|bcd_out\(5) & ((\BIN_TO_BCD_I|bcd_out\(7)) # ((\BIN_TO_BCD_I|bcd_out\(6) & \BIN_TO_BCD_I|bcd_out\(4))))) # (!\BIN_TO_BCD_I|bcd_out\(5) & (\BIN_TO_BCD_I|bcd_out\(6) $ (((\BIN_TO_BCD_I|bcd_out\(4) & 
-- !\BIN_TO_BCD_I|bcd_out\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|bcd_out\(6),
	datab => \BIN_TO_BCD_I|bcd_out\(4),
	datac => \BIN_TO_BCD_I|bcd_out\(7),
	datad => \BIN_TO_BCD_I|bcd_out\(5),
	combout => \SEG1_I|Mux3~0_combout\);

-- Location: LCCOMB_X22_Y28_N28
\SEG1_I|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SEG1_I|Mux2~0_combout\ = (\BIN_TO_BCD_I|bcd_out\(4)) # ((\BIN_TO_BCD_I|bcd_out\(5) & ((\BIN_TO_BCD_I|bcd_out\(7)))) # (!\BIN_TO_BCD_I|bcd_out\(5) & (\BIN_TO_BCD_I|bcd_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|bcd_out\(6),
	datab => \BIN_TO_BCD_I|bcd_out\(4),
	datac => \BIN_TO_BCD_I|bcd_out\(7),
	datad => \BIN_TO_BCD_I|bcd_out\(5),
	combout => \SEG1_I|Mux2~0_combout\);

-- Location: LCCOMB_X22_Y28_N26
\SEG1_I|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SEG1_I|Mux1~0_combout\ = (\BIN_TO_BCD_I|bcd_out\(6) & ((\BIN_TO_BCD_I|bcd_out\(7)) # ((\BIN_TO_BCD_I|bcd_out\(4) & \BIN_TO_BCD_I|bcd_out\(5))))) # (!\BIN_TO_BCD_I|bcd_out\(6) & ((\BIN_TO_BCD_I|bcd_out\(5)) # ((\BIN_TO_BCD_I|bcd_out\(4) & 
-- !\BIN_TO_BCD_I|bcd_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|bcd_out\(6),
	datab => \BIN_TO_BCD_I|bcd_out\(4),
	datac => \BIN_TO_BCD_I|bcd_out\(7),
	datad => \BIN_TO_BCD_I|bcd_out\(5),
	combout => \SEG1_I|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y28_N20
\SEG1_I|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SEG1_I|Mux0~0_combout\ = (\BIN_TO_BCD_I|bcd_out\(6) & (!\BIN_TO_BCD_I|bcd_out\(7) & ((!\BIN_TO_BCD_I|bcd_out\(5)) # (!\BIN_TO_BCD_I|bcd_out\(4))))) # (!\BIN_TO_BCD_I|bcd_out\(6) & ((\BIN_TO_BCD_I|bcd_out\(7) $ (\BIN_TO_BCD_I|bcd_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|bcd_out\(6),
	datab => \BIN_TO_BCD_I|bcd_out\(4),
	datac => \BIN_TO_BCD_I|bcd_out\(7),
	datad => \BIN_TO_BCD_I|bcd_out\(5),
	combout => \SEG1_I|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y28_N30
\BIN_TO_BCD_I|bcd_out~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|bcd_out~6_combout\ = (!\rst~input_o\ & \BIN_TO_BCD_I|shift_reg\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \BIN_TO_BCD_I|shift_reg\(9),
	combout => \BIN_TO_BCD_I|bcd_out~6_combout\);

-- Location: FF_X24_Y28_N31
\BIN_TO_BCD_I|bcd_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|bcd_out~6_combout\,
	ena => \BIN_TO_BCD_I|ALT_INV_bcd_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|bcd_out\(1));

-- Location: LCCOMB_X24_Y28_N24
\BIN_TO_BCD_I|bcd_out~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|bcd_out~7_combout\ = (!\rst~input_o\ & \BIN_TO_BCD_I|shift_reg\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \BIN_TO_BCD_I|shift_reg\(10),
	combout => \BIN_TO_BCD_I|bcd_out~7_combout\);

-- Location: FF_X24_Y28_N25
\BIN_TO_BCD_I|bcd_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|bcd_out~7_combout\,
	ena => \BIN_TO_BCD_I|ALT_INV_bcd_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|bcd_out\(2));

-- Location: LCCOMB_X24_Y28_N26
\BIN_TO_BCD_I|bcd_out~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|bcd_out~8_combout\ = (!\rst~input_o\ & \BIN_TO_BCD_I|shift_reg\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \BIN_TO_BCD_I|shift_reg\(11),
	combout => \BIN_TO_BCD_I|bcd_out~8_combout\);

-- Location: FF_X24_Y28_N27
\BIN_TO_BCD_I|bcd_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|bcd_out~8_combout\,
	ena => \BIN_TO_BCD_I|ALT_INV_bcd_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|bcd_out\(3));

-- Location: LCCOMB_X24_Y28_N20
\BIN_TO_BCD_I|bcd_out~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BIN_TO_BCD_I|bcd_out~5_combout\ = (!\rst~input_o\ & \BIN_TO_BCD_I|shift_reg\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \BIN_TO_BCD_I|shift_reg\(8),
	combout => \BIN_TO_BCD_I|bcd_out~5_combout\);

-- Location: FF_X24_Y28_N21
\BIN_TO_BCD_I|bcd_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \BIN_TO_BCD_I|bcd_out~5_combout\,
	ena => \BIN_TO_BCD_I|ALT_INV_bcd_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BIN_TO_BCD_I|bcd_out\(0));

-- Location: LCCOMB_X24_Y28_N0
\SEG2_I|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SEG2_I|Mux6~0_combout\ = (\BIN_TO_BCD_I|bcd_out\(1) & (((\BIN_TO_BCD_I|bcd_out\(3))))) # (!\BIN_TO_BCD_I|bcd_out\(1) & (\BIN_TO_BCD_I|bcd_out\(2) $ (((!\BIN_TO_BCD_I|bcd_out\(3) & \BIN_TO_BCD_I|bcd_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|bcd_out\(1),
	datab => \BIN_TO_BCD_I|bcd_out\(2),
	datac => \BIN_TO_BCD_I|bcd_out\(3),
	datad => \BIN_TO_BCD_I|bcd_out\(0),
	combout => \SEG2_I|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y28_N2
\SEG2_I|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SEG2_I|Mux5~0_combout\ = (\BIN_TO_BCD_I|bcd_out\(2) & ((\BIN_TO_BCD_I|bcd_out\(3)) # (\BIN_TO_BCD_I|bcd_out\(1) $ (\BIN_TO_BCD_I|bcd_out\(0))))) # (!\BIN_TO_BCD_I|bcd_out\(2) & (\BIN_TO_BCD_I|bcd_out\(1) & (\BIN_TO_BCD_I|bcd_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|bcd_out\(1),
	datab => \BIN_TO_BCD_I|bcd_out\(2),
	datac => \BIN_TO_BCD_I|bcd_out\(3),
	datad => \BIN_TO_BCD_I|bcd_out\(0),
	combout => \SEG2_I|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y28_N8
\SEG2_I|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SEG2_I|Mux4~0_combout\ = (\BIN_TO_BCD_I|bcd_out\(2) & (((\BIN_TO_BCD_I|bcd_out\(3))))) # (!\BIN_TO_BCD_I|bcd_out\(2) & (\BIN_TO_BCD_I|bcd_out\(1) & ((\BIN_TO_BCD_I|bcd_out\(3)) # (!\BIN_TO_BCD_I|bcd_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|bcd_out\(1),
	datab => \BIN_TO_BCD_I|bcd_out\(2),
	datac => \BIN_TO_BCD_I|bcd_out\(3),
	datad => \BIN_TO_BCD_I|bcd_out\(0),
	combout => \SEG2_I|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y28_N22
\SEG2_I|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SEG2_I|Mux3~0_combout\ = (\BIN_TO_BCD_I|bcd_out\(1) & ((\BIN_TO_BCD_I|bcd_out\(3)) # ((\BIN_TO_BCD_I|bcd_out\(2) & \BIN_TO_BCD_I|bcd_out\(0))))) # (!\BIN_TO_BCD_I|bcd_out\(1) & (\BIN_TO_BCD_I|bcd_out\(2) $ (((!\BIN_TO_BCD_I|bcd_out\(3) & 
-- \BIN_TO_BCD_I|bcd_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|bcd_out\(1),
	datab => \BIN_TO_BCD_I|bcd_out\(2),
	datac => \BIN_TO_BCD_I|bcd_out\(3),
	datad => \BIN_TO_BCD_I|bcd_out\(0),
	combout => \SEG2_I|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y28_N4
\SEG2_I|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SEG2_I|Mux2~0_combout\ = (\BIN_TO_BCD_I|bcd_out\(0)) # ((\BIN_TO_BCD_I|bcd_out\(1) & ((\BIN_TO_BCD_I|bcd_out\(3)))) # (!\BIN_TO_BCD_I|bcd_out\(1) & (\BIN_TO_BCD_I|bcd_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|bcd_out\(1),
	datab => \BIN_TO_BCD_I|bcd_out\(2),
	datac => \BIN_TO_BCD_I|bcd_out\(3),
	datad => \BIN_TO_BCD_I|bcd_out\(0),
	combout => \SEG2_I|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y28_N18
\SEG2_I|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SEG2_I|Mux1~0_combout\ = (\BIN_TO_BCD_I|bcd_out\(2) & ((\BIN_TO_BCD_I|bcd_out\(3)) # ((\BIN_TO_BCD_I|bcd_out\(1) & \BIN_TO_BCD_I|bcd_out\(0))))) # (!\BIN_TO_BCD_I|bcd_out\(2) & ((\BIN_TO_BCD_I|bcd_out\(1)) # ((!\BIN_TO_BCD_I|bcd_out\(3) & 
-- \BIN_TO_BCD_I|bcd_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|bcd_out\(1),
	datab => \BIN_TO_BCD_I|bcd_out\(2),
	datac => \BIN_TO_BCD_I|bcd_out\(3),
	datad => \BIN_TO_BCD_I|bcd_out\(0),
	combout => \SEG2_I|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y28_N28
\SEG2_I|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SEG2_I|Mux0~0_combout\ = (\BIN_TO_BCD_I|bcd_out\(1) & (!\BIN_TO_BCD_I|bcd_out\(3) & ((!\BIN_TO_BCD_I|bcd_out\(0)) # (!\BIN_TO_BCD_I|bcd_out\(2))))) # (!\BIN_TO_BCD_I|bcd_out\(1) & (\BIN_TO_BCD_I|bcd_out\(2) $ ((\BIN_TO_BCD_I|bcd_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN_TO_BCD_I|bcd_out\(1),
	datab => \BIN_TO_BCD_I|bcd_out\(2),
	datac => \BIN_TO_BCD_I|bcd_out\(3),
	datad => \BIN_TO_BCD_I|bcd_out\(0),
	combout => \SEG2_I|Mux0~0_combout\);

-- Location: LCCOMB_X15_Y13_N22
\LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (!lives(0) & !lives(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => lives(0),
	datad => lives(1),
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X24_Y13_N24
\VGA_SYNC_I|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|process_0~0_combout\ = (\VGA_SYNC_I|h_count\(2)) # ((\VGA_SYNC_I|h_count\(1)) # ((\VGA_SYNC_I|h_count\(0)) # (\VGA_SYNC_I|h_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|h_count\(2),
	datab => \VGA_SYNC_I|h_count\(1),
	datac => \VGA_SYNC_I|h_count\(0),
	datad => \VGA_SYNC_I|h_count\(3),
	combout => \VGA_SYNC_I|process_0~0_combout\);

-- Location: LCCOMB_X24_Y13_N22
\VGA_SYNC_I|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|process_0~1_combout\ = (\VGA_SYNC_I|h_count\(5) & (((!\VGA_SYNC_I|h_count\(6)) # (!\VGA_SYNC_I|h_count\(4))) # (!\VGA_SYNC_I|process_0~0_combout\))) # (!\VGA_SYNC_I|h_count\(5) & (((\VGA_SYNC_I|h_count\(4)) # (\VGA_SYNC_I|h_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|h_count\(5),
	datab => \VGA_SYNC_I|process_0~0_combout\,
	datac => \VGA_SYNC_I|h_count\(4),
	datad => \VGA_SYNC_I|h_count\(6),
	combout => \VGA_SYNC_I|process_0~1_combout\);

-- Location: LCCOMB_X24_Y13_N28
\VGA_SYNC_I|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|process_0~2_combout\ = (!\VGA_SYNC_I|h_count\(8) & (\VGA_SYNC_I|process_0~1_combout\ & (\VGA_SYNC_I|h_count\(7) & \VGA_SYNC_I|h_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|h_count\(8),
	datab => \VGA_SYNC_I|process_0~1_combout\,
	datac => \VGA_SYNC_I|h_count\(7),
	datad => \VGA_SYNC_I|h_count\(9),
	combout => \VGA_SYNC_I|process_0~2_combout\);

-- Location: FF_X24_Y13_N29
\VGA_SYNC_I|hsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \VGA_SYNC_I|process_0~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|hsync~q\);

-- Location: LCCOMB_X23_Y13_N14
\VGA_SYNC_I|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|process_0~3_combout\ = (\VGA_SYNC_I|v_count\(4)) # ((\VGA_SYNC_I|v_count\(1) & (\VGA_SYNC_I|v_count\(2))) # (!\VGA_SYNC_I|v_count\(1) & ((\VGA_SYNC_I|v_count\(0)) # (!\VGA_SYNC_I|v_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|v_count\(1),
	datab => \VGA_SYNC_I|v_count\(4),
	datac => \VGA_SYNC_I|v_count\(2),
	datad => \VGA_SYNC_I|v_count\(0),
	combout => \VGA_SYNC_I|process_0~3_combout\);

-- Location: LCCOMB_X23_Y13_N18
\VGA_SYNC_I|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|process_0~4_combout\ = (\VGA_SYNC_I|ref_tick~1_combout\ & (!\VGA_SYNC_I|process_0~3_combout\ & \VGA_SYNC_I|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|ref_tick~1_combout\,
	datab => \VGA_SYNC_I|process_0~3_combout\,
	datac => \VGA_SYNC_I|v_count\(5),
	combout => \VGA_SYNC_I|process_0~4_combout\);

-- Location: FF_X23_Y13_N19
\VGA_SYNC_I|vsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \VGA_SYNC_I|process_0~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|vsync~q\);

-- Location: LCCOMB_X26_Y13_N24
\VGA_SYNC_I|vpos[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|vpos[8]~feeder_combout\ = \VGA_SYNC_I|v_count\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_SYNC_I|v_count\(8),
	combout => \VGA_SYNC_I|vpos[8]~feeder_combout\);

-- Location: LCCOMB_X23_Y13_N28
\VGA_SYNC_I|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|LessThan7~0_combout\ = (!\VGA_SYNC_I|v_count\(9) & ((!\VGA_SYNC_I|ref_tick~0_combout\) # (!\VGA_SYNC_I|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|v_count\(5),
	datab => \VGA_SYNC_I|v_count\(9),
	datad => \VGA_SYNC_I|ref_tick~0_combout\,
	combout => \VGA_SYNC_I|LessThan7~0_combout\);

-- Location: FF_X26_Y13_N25
\VGA_SYNC_I|vpos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \VGA_SYNC_I|vpos[8]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \VGA_SYNC_I|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|vpos\(8));

-- Location: FF_X26_Y12_N1
\VGA_SYNC_I|vpos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	asdata => \VGA_SYNC_I|v_count\(4),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \VGA_SYNC_I|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|vpos\(4));

-- Location: FF_X27_Y13_N29
\VGA_SYNC_I|vpos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	asdata => \VGA_SYNC_I|v_count\(3),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \VGA_SYNC_I|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|vpos\(3));

-- Location: LCCOMB_X27_Y13_N24
\DISPLAY_CONTROLLER_I|draw~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|draw~12_combout\ = (\VGA_SYNC_I|vpos\(8)) # (((\PLAYER_CONTROLLER_I|curr_lane\(0) & !\VGA_SYNC_I|vpos\(3))) # (!\VGA_SYNC_I|vpos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|curr_lane\(0),
	datab => \VGA_SYNC_I|vpos\(8),
	datac => \VGA_SYNC_I|vpos\(4),
	datad => \VGA_SYNC_I|vpos\(3),
	combout => \DISPLAY_CONTROLLER_I|draw~12_combout\);

-- Location: LCCOMB_X26_Y13_N6
\VGA_SYNC_I|vpos[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|vpos[7]~feeder_combout\ = \VGA_SYNC_I|v_count\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNC_I|v_count\(7),
	combout => \VGA_SYNC_I|vpos[7]~feeder_combout\);

-- Location: FF_X26_Y13_N7
\VGA_SYNC_I|vpos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \VGA_SYNC_I|vpos[7]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \VGA_SYNC_I|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|vpos\(7));

-- Location: LCCOMB_X27_Y13_N14
\DISPLAY_CONTROLLER_I|draw~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|draw~11_combout\ = (\PLAYER_CONTROLLER_I|curr_lane\(0) & ((\VGA_SYNC_I|vpos\(7)) # ((!\VGA_SYNC_I|vpos\(4) & !\VGA_SYNC_I|vpos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|vpos\(4),
	datab => \PLAYER_CONTROLLER_I|curr_lane\(0),
	datac => \VGA_SYNC_I|vpos\(7),
	datad => \VGA_SYNC_I|vpos\(3),
	combout => \DISPLAY_CONTROLLER_I|draw~11_combout\);

-- Location: FF_X28_Y14_N1
\VGA_SYNC_I|vpos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	asdata => \VGA_SYNC_I|v_count\(5),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \VGA_SYNC_I|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|vpos\(5));

-- Location: LCCOMB_X27_Y13_N22
\DISPLAY_CONTROLLER_I|draw~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|draw~13_combout\ = (\DISPLAY_CONTROLLER_I|draw~11_combout\) # (((!\PLAYER_CONTROLLER_I|curr_lane\(1) & \DISPLAY_CONTROLLER_I|draw~12_combout\)) # (!\VGA_SYNC_I|vpos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|curr_lane\(1),
	datab => \DISPLAY_CONTROLLER_I|draw~12_combout\,
	datac => \DISPLAY_CONTROLLER_I|draw~11_combout\,
	datad => \VGA_SYNC_I|vpos\(5),
	combout => \DISPLAY_CONTROLLER_I|draw~13_combout\);

-- Location: LCCOMB_X23_Y13_N6
\VGA_SYNC_I|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|LessThan6~0_combout\ = ((!\VGA_SYNC_I|h_count\(8) & !\VGA_SYNC_I|h_count\(7))) # (!\VGA_SYNC_I|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|h_count\(9),
	datab => \VGA_SYNC_I|h_count\(8),
	datad => \VGA_SYNC_I|h_count\(7),
	combout => \VGA_SYNC_I|LessThan6~0_combout\);

-- Location: FF_X24_Y12_N31
\VGA_SYNC_I|hpos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	asdata => \VGA_SYNC_I|h_count\(9),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \VGA_SYNC_I|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|hpos\(9));

-- Location: FF_X24_Y12_N27
\VGA_SYNC_I|hpos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	asdata => \VGA_SYNC_I|h_count\(7),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \VGA_SYNC_I|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|hpos\(7));

-- Location: FF_X24_Y12_N29
\VGA_SYNC_I|hpos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	asdata => \VGA_SYNC_I|h_count\(8),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \VGA_SYNC_I|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|hpos\(8));

-- Location: FF_X24_Y12_N25
\VGA_SYNC_I|hpos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	asdata => \VGA_SYNC_I|h_count\(6),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \VGA_SYNC_I|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|hpos\(6));

-- Location: LCCOMB_X27_Y12_N0
\DISPLAY_CONTROLLER_I|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Equal0~0_combout\ = (!\VGA_SYNC_I|hpos\(9) & (!\VGA_SYNC_I|hpos\(7) & (!\VGA_SYNC_I|hpos\(8) & !\VGA_SYNC_I|hpos\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|hpos\(9),
	datab => \VGA_SYNC_I|hpos\(7),
	datac => \VGA_SYNC_I|hpos\(8),
	datad => \VGA_SYNC_I|hpos\(6),
	combout => \DISPLAY_CONTROLLER_I|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y13_N4
\VGA_SYNC_I|vpos[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|vpos[6]~feeder_combout\ = \VGA_SYNC_I|v_count\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNC_I|v_count\(6),
	combout => \VGA_SYNC_I|vpos[6]~feeder_combout\);

-- Location: FF_X26_Y13_N5
\VGA_SYNC_I|vpos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \VGA_SYNC_I|vpos[6]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \VGA_SYNC_I|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|vpos\(6));

-- Location: LCCOMB_X27_Y13_N4
\DISPLAY_CONTROLLER_I|draw~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|draw~5_combout\ = (\VGA_SYNC_I|vpos\(4) & ((\VGA_SYNC_I|vpos\(5)) # ((\VGA_SYNC_I|vpos\(3) & \PLAYER_CONTROLLER_I|curr_lane\(1))))) # (!\VGA_SYNC_I|vpos\(4) & (\VGA_SYNC_I|vpos\(5) & ((\VGA_SYNC_I|vpos\(3)) # 
-- (\PLAYER_CONTROLLER_I|curr_lane\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|vpos\(4),
	datab => \VGA_SYNC_I|vpos\(3),
	datac => \PLAYER_CONTROLLER_I|curr_lane\(1),
	datad => \VGA_SYNC_I|vpos\(5),
	combout => \DISPLAY_CONTROLLER_I|draw~5_combout\);

-- Location: LCCOMB_X27_Y13_N26
\DISPLAY_CONTROLLER_I|draw~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|draw~6_combout\ = (!\VGA_SYNC_I|vpos\(6) & ((\DISPLAY_CONTROLLER_I|draw~5_combout\) # (\PLAYER_CONTROLLER_I|curr_lane\(0) $ (\VGA_SYNC_I|vpos\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|curr_lane\(0),
	datab => \VGA_SYNC_I|vpos\(7),
	datac => \VGA_SYNC_I|vpos\(6),
	datad => \DISPLAY_CONTROLLER_I|draw~5_combout\,
	combout => \DISPLAY_CONTROLLER_I|draw~6_combout\);

-- Location: FF_X24_Y12_N21
\VGA_SYNC_I|hpos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	asdata => \VGA_SYNC_I|h_count\(4),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \VGA_SYNC_I|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|hpos\(4));

-- Location: FF_X24_Y12_N15
\VGA_SYNC_I|hpos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	asdata => \VGA_SYNC_I|h_count\(1),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \VGA_SYNC_I|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|hpos\(1));

-- Location: FF_X24_Y12_N19
\VGA_SYNC_I|hpos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	asdata => \VGA_SYNC_I|h_count\(3),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \VGA_SYNC_I|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|hpos\(3));

-- Location: FF_X24_Y12_N17
\VGA_SYNC_I|hpos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	asdata => \VGA_SYNC_I|h_count\(2),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \VGA_SYNC_I|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|hpos\(2));

-- Location: LCCOMB_X26_Y13_N2
\DISPLAY_CONTROLLER_I|draw~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|draw~7_combout\ = (\VGA_SYNC_I|hpos\(4)) # ((\VGA_SYNC_I|hpos\(3) & ((\VGA_SYNC_I|hpos\(1)) # (\VGA_SYNC_I|hpos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|hpos\(4),
	datab => \VGA_SYNC_I|hpos\(1),
	datac => \VGA_SYNC_I|hpos\(3),
	datad => \VGA_SYNC_I|hpos\(2),
	combout => \DISPLAY_CONTROLLER_I|draw~7_combout\);

-- Location: LCCOMB_X27_Y13_N8
\DISPLAY_CONTROLLER_I|draw~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|draw~8_combout\ = (\VGA_SYNC_I|vpos\(7)) # ((!\PLAYER_CONTROLLER_I|curr_lane\(1) & (!\VGA_SYNC_I|vpos\(5) & \VGA_SYNC_I|vpos\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|curr_lane\(1),
	datab => \VGA_SYNC_I|vpos\(5),
	datac => \VGA_SYNC_I|vpos\(7),
	datad => \VGA_SYNC_I|vpos\(8),
	combout => \DISPLAY_CONTROLLER_I|draw~8_combout\);

-- Location: FF_X24_Y12_N23
\VGA_SYNC_I|hpos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	asdata => \VGA_SYNC_I|h_count\(5),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \VGA_SYNC_I|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|hpos\(5));

-- Location: LCCOMB_X27_Y13_N10
\DISPLAY_CONTROLLER_I|draw~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|draw~9_combout\ = (\DISPLAY_CONTROLLER_I|draw~7_combout\ & (!\PLAYER_CONTROLLER_I|curr_lane\(0) & (!\DISPLAY_CONTROLLER_I|draw~8_combout\))) # (!\DISPLAY_CONTROLLER_I|draw~7_combout\ & (((!\PLAYER_CONTROLLER_I|curr_lane\(0) & 
-- !\DISPLAY_CONTROLLER_I|draw~8_combout\)) # (!\VGA_SYNC_I|hpos\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|draw~7_combout\,
	datab => \PLAYER_CONTROLLER_I|curr_lane\(0),
	datac => \DISPLAY_CONTROLLER_I|draw~8_combout\,
	datad => \VGA_SYNC_I|hpos\(5),
	combout => \DISPLAY_CONTROLLER_I|draw~9_combout\);

-- Location: LCCOMB_X27_Y13_N16
\DISPLAY_CONTROLLER_I|draw~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|draw~10_combout\ = ((\DISPLAY_CONTROLLER_I|draw~6_combout\) # (\DISPLAY_CONTROLLER_I|draw~9_combout\)) # (!\DISPLAY_CONTROLLER_I|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DISPLAY_CONTROLLER_I|Equal0~0_combout\,
	datac => \DISPLAY_CONTROLLER_I|draw~6_combout\,
	datad => \DISPLAY_CONTROLLER_I|draw~9_combout\,
	combout => \DISPLAY_CONTROLLER_I|draw~10_combout\);

-- Location: LCCOMB_X27_Y13_N28
\DISPLAY_CONTROLLER_I|draw~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|draw~2_combout\ = (\PLAYER_CONTROLLER_I|curr_lane\(1) & (!\VGA_SYNC_I|vpos\(8))) # (!\PLAYER_CONTROLLER_I|curr_lane\(1) & (\VGA_SYNC_I|vpos\(8) & \PLAYER_CONTROLLER_I|curr_lane\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PLAYER_CONTROLLER_I|curr_lane\(1),
	datab => \VGA_SYNC_I|vpos\(8),
	datad => \PLAYER_CONTROLLER_I|curr_lane\(0),
	combout => \DISPLAY_CONTROLLER_I|draw~2_combout\);

-- Location: LCCOMB_X27_Y13_N6
\DISPLAY_CONTROLLER_I|draw~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|draw~3_combout\ = (\VGA_SYNC_I|hpos\(3) & ((\VGA_SYNC_I|hpos\(1)) # (\VGA_SYNC_I|hpos\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNC_I|hpos\(1),
	datac => \VGA_SYNC_I|hpos\(3),
	datad => \VGA_SYNC_I|hpos\(2),
	combout => \DISPLAY_CONTROLLER_I|draw~3_combout\);

-- Location: LCCOMB_X28_Y13_N4
\DISPLAY_CONTROLLER_I|draw~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|draw~4_combout\ = (\DISPLAY_CONTROLLER_I|draw~2_combout\) # ((\VGA_SYNC_I|hpos\(4) & (\DISPLAY_CONTROLLER_I|draw~3_combout\ & \VGA_SYNC_I|hpos\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|hpos\(4),
	datab => \DISPLAY_CONTROLLER_I|draw~2_combout\,
	datac => \DISPLAY_CONTROLLER_I|draw~3_combout\,
	datad => \VGA_SYNC_I|hpos\(5),
	combout => \DISPLAY_CONTROLLER_I|draw~4_combout\);

-- Location: LCCOMB_X27_Y13_N12
\DISPLAY_CONTROLLER_I|draw~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|draw~14_combout\ = (\DISPLAY_CONTROLLER_I|draw~10_combout\) # ((\DISPLAY_CONTROLLER_I|draw~4_combout\) # ((\DISPLAY_CONTROLLER_I|draw~13_combout\ & \VGA_SYNC_I|vpos\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|draw~13_combout\,
	datab => \DISPLAY_CONTROLLER_I|draw~10_combout\,
	datac => \VGA_SYNC_I|vpos\(6),
	datad => \DISPLAY_CONTROLLER_I|draw~4_combout\,
	combout => \DISPLAY_CONTROLLER_I|draw~14_combout\);

-- Location: LCCOMB_X17_Y12_N24
\MEM_CONTROLLER_I|WRITE_DISP~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|WRITE_DISP~0_combout\ = (!\MEM_CONTROLLER_I|burst_mode~q\ & \MEM_CONTROLLER_I|burst_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM_CONTROLLER_I|burst_mode~q\,
	datad => \MEM_CONTROLLER_I|burst_state~q\,
	combout => \MEM_CONTROLLER_I|WRITE_DISP~0_combout\);

-- Location: FF_X24_Y12_N1
\MEM_CONTROLLER_I|disp_w_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	asdata => \MEM_CONTROLLER_I|WRITE_DISP~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|disp_w_en~q\);

-- Location: FF_X17_Y12_N9
\MEM_CONTROLLER_I|disp_w_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	asdata => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(0),
	sload => VCC,
	ena => \MEM_CONTROLLER_I|WRITE_DISP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|disp_w_data\(0));

-- Location: LCCOMB_X17_Y12_N26
\MEM_CONTROLLER_I|disp_w_addr[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|disp_w_addr[0]~feeder_combout\ = \MEM_CONTROLLER_I|burst_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_CONTROLLER_I|burst_count\(0),
	combout => \MEM_CONTROLLER_I|disp_w_addr[0]~feeder_combout\);

-- Location: FF_X17_Y12_N27
\MEM_CONTROLLER_I|disp_w_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|disp_w_addr[0]~feeder_combout\,
	ena => \MEM_CONTROLLER_I|WRITE_DISP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|disp_w_addr\(0));

-- Location: LCCOMB_X17_Y12_N0
\MEM_CONTROLLER_I|disp_w_addr[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|disp_w_addr[1]~feeder_combout\ = \MEM_CONTROLLER_I|burst_count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_CONTROLLER_I|burst_count\(1),
	combout => \MEM_CONTROLLER_I|disp_w_addr[1]~feeder_combout\);

-- Location: FF_X17_Y12_N1
\MEM_CONTROLLER_I|disp_w_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|disp_w_addr[1]~feeder_combout\,
	ena => \MEM_CONTROLLER_I|WRITE_DISP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|disp_w_addr\(1));

-- Location: FF_X17_Y12_N19
\MEM_CONTROLLER_I|disp_w_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	asdata => \MEM_CONTROLLER_I|burst_count\(2),
	sload => VCC,
	ena => \MEM_CONTROLLER_I|WRITE_DISP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|disp_w_addr\(2));

-- Location: LCCOMB_X17_Y12_N20
\MEM_CONTROLLER_I|disp_w_addr[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|disp_w_addr[3]~feeder_combout\ = \MEM_CONTROLLER_I|burst_count\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_CONTROLLER_I|burst_count\(3),
	combout => \MEM_CONTROLLER_I|disp_w_addr[3]~feeder_combout\);

-- Location: FF_X17_Y12_N21
\MEM_CONTROLLER_I|disp_w_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|disp_w_addr[3]~feeder_combout\,
	ena => \MEM_CONTROLLER_I|WRITE_DISP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|disp_w_addr\(3));

-- Location: FF_X24_Y12_N13
\VGA_SYNC_I|hpos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	asdata => \VGA_SYNC_I|h_count\(0),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \VGA_SYNC_I|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|hpos\(0));

-- Location: LCCOMB_X26_Y12_N0
\DISPLAY_CONTROLLER_I|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Equal0~2_combout\ = (!\VGA_SYNC_I|hpos\(3) & !\VGA_SYNC_I|hpos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNC_I|hpos\(3),
	datad => \VGA_SYNC_I|hpos\(0),
	combout => \DISPLAY_CONTROLLER_I|Equal0~2_combout\);

-- Location: LCCOMB_X27_Y12_N2
\DISPLAY_CONTROLLER_I|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Equal0~1_combout\ = (!\VGA_SYNC_I|hpos\(2) & (!\VGA_SYNC_I|hpos\(4) & (!\VGA_SYNC_I|hpos\(1) & !\VGA_SYNC_I|hpos\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|hpos\(2),
	datab => \VGA_SYNC_I|hpos\(4),
	datac => \VGA_SYNC_I|hpos\(1),
	datad => \VGA_SYNC_I|hpos\(5),
	combout => \DISPLAY_CONTROLLER_I|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y12_N30
\DISPLAY_CONTROLLER_I|mem_size[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|mem_size[4]~feeder_combout\ = \MEM_CONTROLLER_I|queue_size\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_CONTROLLER_I|queue_size\(4),
	combout => \DISPLAY_CONTROLLER_I|mem_size[4]~feeder_combout\);

-- Location: FF_X23_Y12_N31
\DISPLAY_CONTROLLER_I|mem_size[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \DISPLAY_CONTROLLER_I|mem_size[4]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \VGA_SYNC_I|ref_tick~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_CONTROLLER_I|mem_size\(4));

-- Location: LCCOMB_X23_Y12_N16
\DISPLAY_CONTROLLER_I|lookup~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|lookup~3_combout\ = (!\DISPLAY_CONTROLLER_I|update_lookup~0_combout\ & (\DISPLAY_CONTROLLER_I|lookup\(1) $ (\DISPLAY_CONTROLLER_I|lookup\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DISPLAY_CONTROLLER_I|update_lookup~0_combout\,
	datac => \DISPLAY_CONTROLLER_I|lookup\(1),
	datad => \DISPLAY_CONTROLLER_I|lookup\(0),
	combout => \DISPLAY_CONTROLLER_I|lookup~3_combout\);

-- Location: FF_X19_Y12_N7
\MEM_CONTROLLER_I|disp_w_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	asdata => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(1),
	sload => VCC,
	ena => \MEM_CONTROLLER_I|WRITE_DISP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|disp_w_data\(1));

-- Location: LCCOMB_X20_Y12_N10
\MEM_CONTROLLER_I|disp_w_data[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|disp_w_data[2]~feeder_combout\ = \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(2),
	combout => \MEM_CONTROLLER_I|disp_w_data[2]~feeder_combout\);

-- Location: FF_X20_Y12_N11
\MEM_CONTROLLER_I|disp_w_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|disp_w_data[2]~feeder_combout\,
	ena => \MEM_CONTROLLER_I|WRITE_DISP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|disp_w_data\(2));

-- Location: LCCOMB_X17_Y12_N14
\MEM_CONTROLLER_I|disp_w_data[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|disp_w_data[3]~feeder_combout\ = \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(3),
	combout => \MEM_CONTROLLER_I|disp_w_data[3]~feeder_combout\);

-- Location: FF_X17_Y12_N15
\MEM_CONTROLLER_I|disp_w_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|disp_w_data[3]~feeder_combout\,
	ena => \MEM_CONTROLLER_I|WRITE_DISP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|disp_w_data\(3));

-- Location: LCCOMB_X19_Y12_N4
\MEM_CONTROLLER_I|disp_w_data[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|disp_w_data[4]~feeder_combout\ = \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(4),
	combout => \MEM_CONTROLLER_I|disp_w_data[4]~feeder_combout\);

-- Location: FF_X19_Y12_N5
\MEM_CONTROLLER_I|disp_w_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|disp_w_data[4]~feeder_combout\,
	ena => \MEM_CONTROLLER_I|WRITE_DISP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|disp_w_data\(4));

-- Location: LCCOMB_X19_Y12_N2
\MEM_CONTROLLER_I|disp_w_data[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|disp_w_data[5]~feeder_combout\ = \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(5),
	combout => \MEM_CONTROLLER_I|disp_w_data[5]~feeder_combout\);

-- Location: FF_X19_Y12_N3
\MEM_CONTROLLER_I|disp_w_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|disp_w_data[5]~feeder_combout\,
	ena => \MEM_CONTROLLER_I|WRITE_DISP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|disp_w_data\(5));

-- Location: LCCOMB_X19_Y12_N0
\MEM_CONTROLLER_I|disp_w_data[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|disp_w_data[6]~feeder_combout\ = \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(6),
	combout => \MEM_CONTROLLER_I|disp_w_data[6]~feeder_combout\);

-- Location: FF_X19_Y12_N1
\MEM_CONTROLLER_I|disp_w_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|disp_w_data[6]~feeder_combout\,
	ena => \MEM_CONTROLLER_I|WRITE_DISP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|disp_w_data\(6));

-- Location: LCCOMB_X19_Y12_N14
\MEM_CONTROLLER_I|disp_w_data[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|disp_w_data[7]~feeder_combout\ = \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(7),
	combout => \MEM_CONTROLLER_I|disp_w_data[7]~feeder_combout\);

-- Location: FF_X19_Y12_N15
\MEM_CONTROLLER_I|disp_w_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|disp_w_data[7]~feeder_combout\,
	ena => \MEM_CONTROLLER_I|WRITE_DISP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|disp_w_data\(7));

-- Location: LCCOMB_X19_Y12_N12
\MEM_CONTROLLER_I|disp_w_data[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|disp_w_data[8]~feeder_combout\ = \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(8),
	combout => \MEM_CONTROLLER_I|disp_w_data[8]~feeder_combout\);

-- Location: FF_X19_Y12_N13
\MEM_CONTROLLER_I|disp_w_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|disp_w_data[8]~feeder_combout\,
	ena => \MEM_CONTROLLER_I|WRITE_DISP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|disp_w_data\(8));

-- Location: LCCOMB_X20_Y12_N0
\MEM_CONTROLLER_I|disp_w_data[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|disp_w_data[9]~feeder_combout\ = \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(9),
	combout => \MEM_CONTROLLER_I|disp_w_data[9]~feeder_combout\);

-- Location: FF_X20_Y12_N1
\MEM_CONTROLLER_I|disp_w_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|disp_w_data[9]~feeder_combout\,
	ena => \MEM_CONTROLLER_I|WRITE_DISP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|disp_w_data\(9));

-- Location: LCCOMB_X20_Y12_N30
\MEM_CONTROLLER_I|disp_w_data[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|disp_w_data[10]~feeder_combout\ = \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(10),
	combout => \MEM_CONTROLLER_I|disp_w_data[10]~feeder_combout\);

-- Location: FF_X20_Y12_N31
\MEM_CONTROLLER_I|disp_w_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|disp_w_data[10]~feeder_combout\,
	ena => \MEM_CONTROLLER_I|WRITE_DISP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|disp_w_data\(10));

-- Location: LCCOMB_X20_Y12_N16
\MEM_CONTROLLER_I|disp_w_data[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|disp_w_data[11]~feeder_combout\ = \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(11),
	combout => \MEM_CONTROLLER_I|disp_w_data[11]~feeder_combout\);

-- Location: FF_X20_Y12_N17
\MEM_CONTROLLER_I|disp_w_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|disp_w_data[11]~feeder_combout\,
	ena => \MEM_CONTROLLER_I|WRITE_DISP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|disp_w_data\(11));

-- Location: LCCOMB_X20_Y12_N2
\MEM_CONTROLLER_I|disp_w_data[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|disp_w_data[12]~feeder_combout\ = \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(12),
	combout => \MEM_CONTROLLER_I|disp_w_data[12]~feeder_combout\);

-- Location: FF_X20_Y12_N3
\MEM_CONTROLLER_I|disp_w_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|disp_w_data[12]~feeder_combout\,
	ena => \MEM_CONTROLLER_I|WRITE_DISP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|disp_w_data\(12));

-- Location: LCCOMB_X20_Y12_N12
\MEM_CONTROLLER_I|disp_w_data[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_CONTROLLER_I|disp_w_data[13]~feeder_combout\ = \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CORE_MEM_I|altsyncram_component|auto_generated|q_b\(13),
	combout => \MEM_CONTROLLER_I|disp_w_data[13]~feeder_combout\);

-- Location: FF_X20_Y12_N13
\MEM_CONTROLLER_I|disp_w_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \MEM_CONTROLLER_I|disp_w_data[13]~feeder_combout\,
	ena => \MEM_CONTROLLER_I|WRITE_DISP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_CONTROLLER_I|disp_w_data\(13));

-- Location: M9K_X25_Y12_N0
\DISP_MEM_I|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "mem:DISP_MEM_I|altsyncram:altsyncram_component|altsyncram_9ho3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 16,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_CONTROLLER_I|disp_w_en~q\,
	portbre => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \DISP_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \DISP_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \DISP_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \DISP_MEM_I|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X26_Y12_N10
\DISPLAY_CONTROLLER_I|Add12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add12~0_combout\ = \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(7) $ (VCC)
-- \DISPLAY_CONTROLLER_I|Add12~1\ = CARRY(\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(7),
	datad => VCC,
	combout => \DISPLAY_CONTROLLER_I|Add12~0_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add12~1\);

-- Location: LCCOMB_X26_Y12_N12
\DISPLAY_CONTROLLER_I|Add12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add12~2_combout\ = (\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(8) & (\DISPLAY_CONTROLLER_I|Add12~1\ & VCC)) # (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(8) & (!\DISPLAY_CONTROLLER_I|Add12~1\))
-- \DISPLAY_CONTROLLER_I|Add12~3\ = CARRY((!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(8) & !\DISPLAY_CONTROLLER_I|Add12~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(8),
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add12~1\,
	combout => \DISPLAY_CONTROLLER_I|Add12~2_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add12~3\);

-- Location: LCCOMB_X26_Y12_N14
\DISPLAY_CONTROLLER_I|Add12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add12~4_combout\ = (\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(9) & (\DISPLAY_CONTROLLER_I|Add12~3\ $ (GND))) # (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(9) & (!\DISPLAY_CONTROLLER_I|Add12~3\ & VCC))
-- \DISPLAY_CONTROLLER_I|Add12~5\ = CARRY((\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(9) & !\DISPLAY_CONTROLLER_I|Add12~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(9),
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add12~3\,
	combout => \DISPLAY_CONTROLLER_I|Add12~4_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add12~5\);

-- Location: LCCOMB_X26_Y12_N16
\DISPLAY_CONTROLLER_I|Add12~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add12~6_combout\ = (\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(10) & (!\DISPLAY_CONTROLLER_I|Add12~5\)) # (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(10) & ((\DISPLAY_CONTROLLER_I|Add12~5\) # (GND)))
-- \DISPLAY_CONTROLLER_I|Add12~7\ = CARRY((!\DISPLAY_CONTROLLER_I|Add12~5\) # (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(10),
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add12~5\,
	combout => \DISPLAY_CONTROLLER_I|Add12~6_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add12~7\);

-- Location: LCCOMB_X26_Y12_N18
\DISPLAY_CONTROLLER_I|Add12~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add12~8_combout\ = (\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(11) & (\DISPLAY_CONTROLLER_I|Add12~7\ $ (GND))) # (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(11) & (!\DISPLAY_CONTROLLER_I|Add12~7\ & VCC))
-- \DISPLAY_CONTROLLER_I|Add12~9\ = CARRY((\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(11) & !\DISPLAY_CONTROLLER_I|Add12~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(11),
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add12~7\,
	combout => \DISPLAY_CONTROLLER_I|Add12~8_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add12~9\);

-- Location: LCCOMB_X26_Y12_N20
\DISPLAY_CONTROLLER_I|Add12~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add12~10_combout\ = (\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(12) & (!\DISPLAY_CONTROLLER_I|Add12~9\)) # (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(12) & ((\DISPLAY_CONTROLLER_I|Add12~9\) # (GND)))
-- \DISPLAY_CONTROLLER_I|Add12~11\ = CARRY((!\DISPLAY_CONTROLLER_I|Add12~9\) # (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(12),
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add12~9\,
	combout => \DISPLAY_CONTROLLER_I|Add12~10_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add12~11\);

-- Location: LCCOMB_X26_Y12_N22
\DISPLAY_CONTROLLER_I|Add12~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add12~12_combout\ = (\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(13) & (\DISPLAY_CONTROLLER_I|Add12~11\ $ (GND))) # (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(13) & (!\DISPLAY_CONTROLLER_I|Add12~11\ & VCC))
-- \DISPLAY_CONTROLLER_I|Add12~13\ = CARRY((\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(13) & !\DISPLAY_CONTROLLER_I|Add12~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(13),
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add12~11\,
	combout => \DISPLAY_CONTROLLER_I|Add12~12_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add12~13\);

-- Location: LCCOMB_X26_Y12_N24
\DISPLAY_CONTROLLER_I|Add12~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add12~14_combout\ = \DISPLAY_CONTROLLER_I|Add12~13\ $ (\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(13),
	cin => \DISPLAY_CONTROLLER_I|Add12~13\,
	combout => \DISPLAY_CONTROLLER_I|Add12~14_combout\);

-- Location: LCCOMB_X27_Y12_N10
\DISPLAY_CONTROLLER_I|LessThan6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|LessThan6~1_cout\ = CARRY((!\VGA_SYNC_I|hpos\(0) & \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|hpos\(0),
	datab => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(3),
	datad => VCC,
	cout => \DISPLAY_CONTROLLER_I|LessThan6~1_cout\);

-- Location: LCCOMB_X27_Y12_N12
\DISPLAY_CONTROLLER_I|LessThan6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|LessThan6~3_cout\ = CARRY((\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(4) & (\VGA_SYNC_I|hpos\(1) & !\DISPLAY_CONTROLLER_I|LessThan6~1_cout\)) # (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(4) & 
-- ((\VGA_SYNC_I|hpos\(1)) # (!\DISPLAY_CONTROLLER_I|LessThan6~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(4),
	datab => \VGA_SYNC_I|hpos\(1),
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|LessThan6~1_cout\,
	cout => \DISPLAY_CONTROLLER_I|LessThan6~3_cout\);

-- Location: LCCOMB_X27_Y12_N14
\DISPLAY_CONTROLLER_I|LessThan6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|LessThan6~5_cout\ = CARRY((\VGA_SYNC_I|hpos\(2) & (\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(5) & !\DISPLAY_CONTROLLER_I|LessThan6~3_cout\)) # (!\VGA_SYNC_I|hpos\(2) & 
-- ((\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(5)) # (!\DISPLAY_CONTROLLER_I|LessThan6~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|hpos\(2),
	datab => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(5),
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|LessThan6~3_cout\,
	cout => \DISPLAY_CONTROLLER_I|LessThan6~5_cout\);

-- Location: LCCOMB_X27_Y12_N16
\DISPLAY_CONTROLLER_I|LessThan6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|LessThan6~7_cout\ = CARRY((\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(6) & (\VGA_SYNC_I|hpos\(3) & !\DISPLAY_CONTROLLER_I|LessThan6~5_cout\)) # (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(6) & 
-- ((\VGA_SYNC_I|hpos\(3)) # (!\DISPLAY_CONTROLLER_I|LessThan6~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(6),
	datab => \VGA_SYNC_I|hpos\(3),
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|LessThan6~5_cout\,
	cout => \DISPLAY_CONTROLLER_I|LessThan6~7_cout\);

-- Location: LCCOMB_X27_Y12_N18
\DISPLAY_CONTROLLER_I|LessThan6~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|LessThan6~9_cout\ = CARRY((\DISPLAY_CONTROLLER_I|Add12~0_combout\ & ((!\DISPLAY_CONTROLLER_I|LessThan6~7_cout\) # (!\VGA_SYNC_I|hpos\(4)))) # (!\DISPLAY_CONTROLLER_I|Add12~0_combout\ & (!\VGA_SYNC_I|hpos\(4) & 
-- !\DISPLAY_CONTROLLER_I|LessThan6~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Add12~0_combout\,
	datab => \VGA_SYNC_I|hpos\(4),
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|LessThan6~7_cout\,
	cout => \DISPLAY_CONTROLLER_I|LessThan6~9_cout\);

-- Location: LCCOMB_X27_Y12_N20
\DISPLAY_CONTROLLER_I|LessThan6~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|LessThan6~11_cout\ = CARRY((\DISPLAY_CONTROLLER_I|Add12~2_combout\ & (\VGA_SYNC_I|hpos\(5) & !\DISPLAY_CONTROLLER_I|LessThan6~9_cout\)) # (!\DISPLAY_CONTROLLER_I|Add12~2_combout\ & ((\VGA_SYNC_I|hpos\(5)) # 
-- (!\DISPLAY_CONTROLLER_I|LessThan6~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Add12~2_combout\,
	datab => \VGA_SYNC_I|hpos\(5),
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|LessThan6~9_cout\,
	cout => \DISPLAY_CONTROLLER_I|LessThan6~11_cout\);

-- Location: LCCOMB_X27_Y12_N22
\DISPLAY_CONTROLLER_I|LessThan6~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|LessThan6~13_cout\ = CARRY((\DISPLAY_CONTROLLER_I|Add12~4_combout\ & ((!\DISPLAY_CONTROLLER_I|LessThan6~11_cout\) # (!\VGA_SYNC_I|hpos\(6)))) # (!\DISPLAY_CONTROLLER_I|Add12~4_combout\ & (!\VGA_SYNC_I|hpos\(6) & 
-- !\DISPLAY_CONTROLLER_I|LessThan6~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Add12~4_combout\,
	datab => \VGA_SYNC_I|hpos\(6),
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|LessThan6~11_cout\,
	cout => \DISPLAY_CONTROLLER_I|LessThan6~13_cout\);

-- Location: LCCOMB_X27_Y12_N24
\DISPLAY_CONTROLLER_I|LessThan6~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|LessThan6~15_cout\ = CARRY((\DISPLAY_CONTROLLER_I|Add12~6_combout\ & (\VGA_SYNC_I|hpos\(7) & !\DISPLAY_CONTROLLER_I|LessThan6~13_cout\)) # (!\DISPLAY_CONTROLLER_I|Add12~6_combout\ & ((\VGA_SYNC_I|hpos\(7)) # 
-- (!\DISPLAY_CONTROLLER_I|LessThan6~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Add12~6_combout\,
	datab => \VGA_SYNC_I|hpos\(7),
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|LessThan6~13_cout\,
	cout => \DISPLAY_CONTROLLER_I|LessThan6~15_cout\);

-- Location: LCCOMB_X27_Y12_N26
\DISPLAY_CONTROLLER_I|LessThan6~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|LessThan6~17_cout\ = CARRY((\VGA_SYNC_I|hpos\(8) & (\DISPLAY_CONTROLLER_I|Add12~8_combout\ & !\DISPLAY_CONTROLLER_I|LessThan6~15_cout\)) # (!\VGA_SYNC_I|hpos\(8) & ((\DISPLAY_CONTROLLER_I|Add12~8_combout\) # 
-- (!\DISPLAY_CONTROLLER_I|LessThan6~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|hpos\(8),
	datab => \DISPLAY_CONTROLLER_I|Add12~8_combout\,
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|LessThan6~15_cout\,
	cout => \DISPLAY_CONTROLLER_I|LessThan6~17_cout\);

-- Location: LCCOMB_X27_Y12_N28
\DISPLAY_CONTROLLER_I|LessThan6~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|LessThan6~18_combout\ = (\VGA_SYNC_I|hpos\(9) & (\DISPLAY_CONTROLLER_I|LessThan6~17_cout\ & \DISPLAY_CONTROLLER_I|Add12~10_combout\)) # (!\VGA_SYNC_I|hpos\(9) & ((\DISPLAY_CONTROLLER_I|LessThan6~17_cout\) # 
-- (\DISPLAY_CONTROLLER_I|Add12~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|hpos\(9),
	datad => \DISPLAY_CONTROLLER_I|Add12~10_combout\,
	cin => \DISPLAY_CONTROLLER_I|LessThan6~17_cout\,
	combout => \DISPLAY_CONTROLLER_I|LessThan6~18_combout\);

-- Location: LCCOMB_X26_Y12_N6
\DISPLAY_CONTROLLER_I|LessThan10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|LessThan10~0_combout\ = (!\DISPLAY_CONTROLLER_I|Add12~14_combout\ & ((\DISPLAY_CONTROLLER_I|Add12~12_combout\) # (\DISPLAY_CONTROLLER_I|LessThan6~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DISPLAY_CONTROLLER_I|Add12~14_combout\,
	datac => \DISPLAY_CONTROLLER_I|Add12~12_combout\,
	datad => \DISPLAY_CONTROLLER_I|LessThan6~18_combout\,
	combout => \DISPLAY_CONTROLLER_I|LessThan10~0_combout\);

-- Location: LCCOMB_X26_Y12_N28
\DISPLAY_CONTROLLER_I|wait_read[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|wait_read[0]~0_combout\ = (!\DISPLAY_CONTROLLER_I|wait_read\(0) & ((\DISPLAY_CONTROLLER_I|wait_read\(1)) # ((!\DISPLAY_CONTROLLER_I|update_lookup~0_combout\ & !\DISPLAY_CONTROLLER_I|LessThan10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|wait_read\(1),
	datab => \DISPLAY_CONTROLLER_I|update_lookup~0_combout\,
	datac => \DISPLAY_CONTROLLER_I|wait_read\(0),
	datad => \DISPLAY_CONTROLLER_I|LessThan10~0_combout\,
	combout => \DISPLAY_CONTROLLER_I|wait_read[0]~0_combout\);

-- Location: FF_X26_Y12_N29
\DISPLAY_CONTROLLER_I|wait_read[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \DISPLAY_CONTROLLER_I|wait_read[0]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_CONTROLLER_I|wait_read\(0));

-- Location: LCCOMB_X26_Y12_N26
\DISPLAY_CONTROLLER_I|wait_read[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|wait_read[1]~1_combout\ = (\DISPLAY_CONTROLLER_I|wait_read\(0) & (((\DISPLAY_CONTROLLER_I|wait_read\(1))))) # (!\DISPLAY_CONTROLLER_I|wait_read\(0) & (!\DISPLAY_CONTROLLER_I|update_lookup~0_combout\ & 
-- (!\DISPLAY_CONTROLLER_I|wait_read\(1) & !\DISPLAY_CONTROLLER_I|LessThan10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|update_lookup~0_combout\,
	datab => \DISPLAY_CONTROLLER_I|wait_read\(0),
	datac => \DISPLAY_CONTROLLER_I|wait_read\(1),
	datad => \DISPLAY_CONTROLLER_I|LessThan10~0_combout\,
	combout => \DISPLAY_CONTROLLER_I|wait_read[1]~1_combout\);

-- Location: FF_X26_Y12_N27
\DISPLAY_CONTROLLER_I|wait_read[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \DISPLAY_CONTROLLER_I|wait_read[1]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_CONTROLLER_I|wait_read\(1));

-- Location: LCCOMB_X26_Y12_N8
\DISPLAY_CONTROLLER_I|lookup[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|lookup[0]~1_combout\ = (\DISPLAY_CONTROLLER_I|wait_read\(1)) # ((\DISPLAY_CONTROLLER_I|wait_read\(0)) # ((\DISPLAY_CONTROLLER_I|Add12~12_combout\ & !\DISPLAY_CONTROLLER_I|Add12~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|wait_read\(1),
	datab => \DISPLAY_CONTROLLER_I|wait_read\(0),
	datac => \DISPLAY_CONTROLLER_I|Add12~12_combout\,
	datad => \DISPLAY_CONTROLLER_I|Add12~14_combout\,
	combout => \DISPLAY_CONTROLLER_I|lookup[0]~1_combout\);

-- Location: LCCOMB_X23_Y12_N22
\DISPLAY_CONTROLLER_I|lookup[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|lookup[0]~2_combout\ = (!\DISPLAY_CONTROLLER_I|update_lookup~0_combout\ & ((\DISPLAY_CONTROLLER_I|lookup[0]~1_combout\) # ((!\DISPLAY_CONTROLLER_I|Add12~14_combout\ & \DISPLAY_CONTROLLER_I|LessThan6~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Add12~14_combout\,
	datab => \DISPLAY_CONTROLLER_I|update_lookup~0_combout\,
	datac => \DISPLAY_CONTROLLER_I|lookup[0]~1_combout\,
	datad => \DISPLAY_CONTROLLER_I|LessThan6~18_combout\,
	combout => \DISPLAY_CONTROLLER_I|lookup[0]~2_combout\);

-- Location: FF_X23_Y12_N17
\DISPLAY_CONTROLLER_I|lookup[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \DISPLAY_CONTROLLER_I|lookup~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \DISPLAY_CONTROLLER_I|ALT_INV_lookup[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_CONTROLLER_I|lookup\(1));

-- Location: LCCOMB_X23_Y12_N18
\DISPLAY_CONTROLLER_I|lookup~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|lookup~4_combout\ = (!\DISPLAY_CONTROLLER_I|update_lookup~0_combout\ & (\DISPLAY_CONTROLLER_I|lookup\(2) $ (((\DISPLAY_CONTROLLER_I|lookup\(0) & \DISPLAY_CONTROLLER_I|lookup\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|lookup\(0),
	datab => \DISPLAY_CONTROLLER_I|update_lookup~0_combout\,
	datac => \DISPLAY_CONTROLLER_I|lookup\(2),
	datad => \DISPLAY_CONTROLLER_I|lookup\(1),
	combout => \DISPLAY_CONTROLLER_I|lookup~4_combout\);

-- Location: FF_X23_Y12_N19
\DISPLAY_CONTROLLER_I|lookup[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \DISPLAY_CONTROLLER_I|lookup~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \DISPLAY_CONTROLLER_I|ALT_INV_lookup[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_CONTROLLER_I|lookup\(2));

-- Location: LCCOMB_X23_Y12_N12
\DISPLAY_CONTROLLER_I|Add13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add13~0_combout\ = \DISPLAY_CONTROLLER_I|lookup\(3) $ (((\DISPLAY_CONTROLLER_I|lookup\(2) & (\DISPLAY_CONTROLLER_I|lookup\(1) & \DISPLAY_CONTROLLER_I|lookup\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|lookup\(2),
	datab => \DISPLAY_CONTROLLER_I|lookup\(1),
	datac => \DISPLAY_CONTROLLER_I|lookup\(3),
	datad => \DISPLAY_CONTROLLER_I|lookup\(0),
	combout => \DISPLAY_CONTROLLER_I|Add13~0_combout\);

-- Location: LCCOMB_X24_Y12_N10
\DISPLAY_CONTROLLER_I|lookup[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|lookup[3]~5_combout\ = (\DISPLAY_CONTROLLER_I|lookup[0]~2_combout\ & (((\DISPLAY_CONTROLLER_I|lookup\(3))))) # (!\DISPLAY_CONTROLLER_I|lookup[0]~2_combout\ & (!\DISPLAY_CONTROLLER_I|update_lookup~0_combout\ & 
-- (\DISPLAY_CONTROLLER_I|Add13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|update_lookup~0_combout\,
	datab => \DISPLAY_CONTROLLER_I|Add13~0_combout\,
	datac => \DISPLAY_CONTROLLER_I|lookup\(3),
	datad => \DISPLAY_CONTROLLER_I|lookup[0]~2_combout\,
	combout => \DISPLAY_CONTROLLER_I|lookup[3]~5_combout\);

-- Location: FF_X24_Y12_N11
\DISPLAY_CONTROLLER_I|lookup[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \DISPLAY_CONTROLLER_I|lookup[3]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_CONTROLLER_I|lookup\(3));

-- Location: LCCOMB_X23_Y12_N0
\DISPLAY_CONTROLLER_I|mem_size[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|mem_size[2]~feeder_combout\ = \MEM_CONTROLLER_I|queue_size\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_CONTROLLER_I|queue_size\(2),
	combout => \DISPLAY_CONTROLLER_I|mem_size[2]~feeder_combout\);

-- Location: FF_X23_Y12_N1
\DISPLAY_CONTROLLER_I|mem_size[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \DISPLAY_CONTROLLER_I|mem_size[2]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \VGA_SYNC_I|ref_tick~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_CONTROLLER_I|mem_size\(2));

-- Location: LCCOMB_X23_Y12_N10
\DISPLAY_CONTROLLER_I|mem_size[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|mem_size[1]~feeder_combout\ = \MEM_CONTROLLER_I|queue_size\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_CONTROLLER_I|queue_size\(1),
	combout => \DISPLAY_CONTROLLER_I|mem_size[1]~feeder_combout\);

-- Location: FF_X23_Y12_N11
\DISPLAY_CONTROLLER_I|mem_size[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \DISPLAY_CONTROLLER_I|mem_size[1]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \VGA_SYNC_I|ref_tick~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_CONTROLLER_I|mem_size\(1));

-- Location: FF_X23_Y12_N9
\DISPLAY_CONTROLLER_I|mem_size[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	asdata => \MEM_CONTROLLER_I|queue_size\(0),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \VGA_SYNC_I|ref_tick~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_CONTROLLER_I|mem_size\(0));

-- Location: LCCOMB_X23_Y12_N4
\DISPLAY_CONTROLLER_I|LessThan9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|LessThan9~0_combout\ = (\DISPLAY_CONTROLLER_I|mem_size\(1) & (((\DISPLAY_CONTROLLER_I|mem_size\(0) & !\DISPLAY_CONTROLLER_I|lookup\(0))) # (!\DISPLAY_CONTROLLER_I|lookup\(1)))) # (!\DISPLAY_CONTROLLER_I|mem_size\(1) & 
-- (!\DISPLAY_CONTROLLER_I|lookup\(1) & (\DISPLAY_CONTROLLER_I|mem_size\(0) & !\DISPLAY_CONTROLLER_I|lookup\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|mem_size\(1),
	datab => \DISPLAY_CONTROLLER_I|lookup\(1),
	datac => \DISPLAY_CONTROLLER_I|mem_size\(0),
	datad => \DISPLAY_CONTROLLER_I|lookup\(0),
	combout => \DISPLAY_CONTROLLER_I|LessThan9~0_combout\);

-- Location: LCCOMB_X23_Y12_N26
\DISPLAY_CONTROLLER_I|LessThan9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|LessThan9~1_combout\ = (\DISPLAY_CONTROLLER_I|mem_size\(2) & ((\DISPLAY_CONTROLLER_I|LessThan9~0_combout\) # (!\DISPLAY_CONTROLLER_I|lookup\(2)))) # (!\DISPLAY_CONTROLLER_I|mem_size\(2) & (\DISPLAY_CONTROLLER_I|LessThan9~0_combout\ & 
-- !\DISPLAY_CONTROLLER_I|lookup\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DISPLAY_CONTROLLER_I|mem_size\(2),
	datac => \DISPLAY_CONTROLLER_I|LessThan9~0_combout\,
	datad => \DISPLAY_CONTROLLER_I|lookup\(2),
	combout => \DISPLAY_CONTROLLER_I|LessThan9~1_combout\);

-- Location: LCCOMB_X23_Y12_N20
\DISPLAY_CONTROLLER_I|mem_size[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|mem_size[3]~feeder_combout\ = \MEM_CONTROLLER_I|queue_size\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_CONTROLLER_I|queue_size\(3),
	combout => \DISPLAY_CONTROLLER_I|mem_size[3]~feeder_combout\);

-- Location: FF_X23_Y12_N21
\DISPLAY_CONTROLLER_I|mem_size[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \DISPLAY_CONTROLLER_I|mem_size[3]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \VGA_SYNC_I|ref_tick~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_CONTROLLER_I|mem_size\(3));

-- Location: LCCOMB_X23_Y12_N28
\DISPLAY_CONTROLLER_I|LessThan9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|LessThan9~2_combout\ = (\DISPLAY_CONTROLLER_I|mem_size\(4)) # ((\DISPLAY_CONTROLLER_I|lookup\(3) & (\DISPLAY_CONTROLLER_I|LessThan9~1_combout\ & \DISPLAY_CONTROLLER_I|mem_size\(3))) # (!\DISPLAY_CONTROLLER_I|lookup\(3) & 
-- ((\DISPLAY_CONTROLLER_I|LessThan9~1_combout\) # (\DISPLAY_CONTROLLER_I|mem_size\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|mem_size\(4),
	datab => \DISPLAY_CONTROLLER_I|lookup\(3),
	datac => \DISPLAY_CONTROLLER_I|LessThan9~1_combout\,
	datad => \DISPLAY_CONTROLLER_I|mem_size\(3),
	combout => \DISPLAY_CONTROLLER_I|LessThan9~2_combout\);

-- Location: LCCOMB_X27_Y12_N4
\DISPLAY_CONTROLLER_I|update_lookup~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|update_lookup~0_combout\ = ((\DISPLAY_CONTROLLER_I|Equal0~2_combout\ & (\DISPLAY_CONTROLLER_I|Equal0~1_combout\ & \DISPLAY_CONTROLLER_I|Equal0~0_combout\))) # (!\DISPLAY_CONTROLLER_I|LessThan9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Equal0~2_combout\,
	datab => \DISPLAY_CONTROLLER_I|Equal0~1_combout\,
	datac => \DISPLAY_CONTROLLER_I|LessThan9~2_combout\,
	datad => \DISPLAY_CONTROLLER_I|Equal0~0_combout\,
	combout => \DISPLAY_CONTROLLER_I|update_lookup~0_combout\);

-- Location: LCCOMB_X23_Y12_N2
\DISPLAY_CONTROLLER_I|lookup~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|lookup~0_combout\ = (!\DISPLAY_CONTROLLER_I|update_lookup~0_combout\ & !\DISPLAY_CONTROLLER_I|lookup\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DISPLAY_CONTROLLER_I|update_lookup~0_combout\,
	datac => \DISPLAY_CONTROLLER_I|lookup\(0),
	combout => \DISPLAY_CONTROLLER_I|lookup~0_combout\);

-- Location: FF_X23_Y12_N3
\DISPLAY_CONTROLLER_I|lookup[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \DISPLAY_CONTROLLER_I|lookup~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \DISPLAY_CONTROLLER_I|ALT_INV_lookup[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_CONTROLLER_I|lookup\(0));

-- Location: LCCOMB_X23_Y12_N6
\DISPLAY_CONTROLLER_I|LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|LessThan4~0_combout\ = (\DISPLAY_CONTROLLER_I|mem_size\(4)) # (\DISPLAY_CONTROLLER_I|mem_size\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DISPLAY_CONTROLLER_I|mem_size\(4),
	datad => \DISPLAY_CONTROLLER_I|mem_size\(3),
	combout => \DISPLAY_CONTROLLER_I|LessThan4~0_combout\);

-- Location: LCCOMB_X23_Y12_N24
\DISPLAY_CONTROLLER_I|LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|LessThan4~1_combout\ = (\DISPLAY_CONTROLLER_I|LessThan4~0_combout\) # ((\DISPLAY_CONTROLLER_I|mem_size\(2)) # ((\DISPLAY_CONTROLLER_I|mem_size\(0)) # (\DISPLAY_CONTROLLER_I|mem_size\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|LessThan4~0_combout\,
	datab => \DISPLAY_CONTROLLER_I|mem_size\(2),
	datac => \DISPLAY_CONTROLLER_I|mem_size\(0),
	datad => \DISPLAY_CONTROLLER_I|mem_size\(1),
	combout => \DISPLAY_CONTROLLER_I|LessThan4~1_combout\);

-- Location: LCCOMB_X26_Y13_N12
\DISPLAY_CONTROLLER_I|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|LessThan7~0_combout\ = (!\VGA_SYNC_I|vpos\(7) & \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|vpos\(7),
	datad => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(1),
	combout => \DISPLAY_CONTROLLER_I|LessThan7~0_combout\);

-- Location: LCCOMB_X26_Y13_N8
\DISPLAY_CONTROLLER_I|LessThan7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|LessThan7~2_combout\ = (\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(2) & (!\VGA_SYNC_I|vpos\(3) & (!\VGA_SYNC_I|vpos\(4) & !\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(1)))) # 
-- (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(2) & (((!\VGA_SYNC_I|vpos\(3) & !\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(1))) # (!\VGA_SYNC_I|vpos\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(2),
	datab => \VGA_SYNC_I|vpos\(3),
	datac => \VGA_SYNC_I|vpos\(4),
	datad => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(1),
	combout => \DISPLAY_CONTROLLER_I|LessThan7~2_combout\);

-- Location: LCCOMB_X26_Y13_N18
\DISPLAY_CONTROLLER_I|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|LessThan7~1_combout\ = (\VGA_SYNC_I|vpos\(7) & (\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(1) & (\VGA_SYNC_I|vpos\(8) $ (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(2))))) # (!\VGA_SYNC_I|vpos\(7) & 
-- (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(1) & (\VGA_SYNC_I|vpos\(8) $ (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|vpos\(7),
	datab => \VGA_SYNC_I|vpos\(8),
	datac => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(2),
	datad => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(1),
	combout => \DISPLAY_CONTROLLER_I|LessThan7~1_combout\);

-- Location: LCCOMB_X26_Y13_N30
\DISPLAY_CONTROLLER_I|LessThan7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|LessThan7~3_combout\ = (\DISPLAY_CONTROLLER_I|LessThan7~1_combout\ & (((\DISPLAY_CONTROLLER_I|LessThan7~2_combout\) # (!\VGA_SYNC_I|vpos\(6))) # (!\VGA_SYNC_I|vpos\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|vpos\(5),
	datab => \VGA_SYNC_I|vpos\(6),
	datac => \DISPLAY_CONTROLLER_I|LessThan7~2_combout\,
	datad => \DISPLAY_CONTROLLER_I|LessThan7~1_combout\,
	combout => \DISPLAY_CONTROLLER_I|LessThan7~3_combout\);

-- Location: LCCOMB_X26_Y13_N0
\DISPLAY_CONTROLLER_I|rom_select[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|rom_select[1]~0_combout\ = (!\DISPLAY_CONTROLLER_I|LessThan7~3_combout\ & ((\DISPLAY_CONTROLLER_I|LessThan7~0_combout\ & (\VGA_SYNC_I|vpos\(8) & !\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(2))) # 
-- (!\DISPLAY_CONTROLLER_I|LessThan7~0_combout\ & ((\VGA_SYNC_I|vpos\(8)) # (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|LessThan7~0_combout\,
	datab => \VGA_SYNC_I|vpos\(8),
	datac => \DISPLAY_CONTROLLER_I|LessThan7~3_combout\,
	datad => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(2),
	combout => \DISPLAY_CONTROLLER_I|rom_select[1]~0_combout\);

-- Location: LCCOMB_X26_Y13_N22
\DISPLAY_CONTROLLER_I|draw~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|draw~20_combout\ = (\VGA_SYNC_I|vpos\(8) & ((\VGA_SYNC_I|vpos\(5)) # ((\VGA_SYNC_I|vpos\(6)) # (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|vpos\(5),
	datab => \VGA_SYNC_I|vpos\(8),
	datac => \VGA_SYNC_I|vpos\(6),
	datad => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(1),
	combout => \DISPLAY_CONTROLLER_I|draw~20_combout\);

-- Location: LCCOMB_X26_Y13_N26
\DISPLAY_CONTROLLER_I|draw~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|draw~16_combout\ = (!\VGA_SYNC_I|vpos\(6) & ((\VGA_SYNC_I|vpos\(5) & (!\VGA_SYNC_I|vpos\(4) & !\VGA_SYNC_I|vpos\(3))) # (!\VGA_SYNC_I|vpos\(5) & (\VGA_SYNC_I|vpos\(4) & \VGA_SYNC_I|vpos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|vpos\(5),
	datab => \VGA_SYNC_I|vpos\(4),
	datac => \VGA_SYNC_I|vpos\(6),
	datad => \VGA_SYNC_I|vpos\(3),
	combout => \DISPLAY_CONTROLLER_I|draw~16_combout\);

-- Location: LCCOMB_X26_Y13_N20
\DISPLAY_CONTROLLER_I|draw~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|draw~15_combout\ = (\VGA_SYNC_I|vpos\(6)) # (\VGA_SYNC_I|vpos\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNC_I|vpos\(6),
	datac => \VGA_SYNC_I|vpos\(5),
	combout => \DISPLAY_CONTROLLER_I|draw~15_combout\);

-- Location: LCCOMB_X26_Y13_N28
\DISPLAY_CONTROLLER_I|draw~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|draw~17_combout\ = (\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(1) & (((\VGA_SYNC_I|vpos\(8) & !\DISPLAY_CONTROLLER_I|draw~15_combout\)))) # (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(1) & 
-- ((\DISPLAY_CONTROLLER_I|draw~16_combout\ & (\VGA_SYNC_I|vpos\(8))) # (!\DISPLAY_CONTROLLER_I|draw~16_combout\ & ((\DISPLAY_CONTROLLER_I|draw~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|draw~16_combout\,
	datab => \VGA_SYNC_I|vpos\(8),
	datac => \DISPLAY_CONTROLLER_I|draw~15_combout\,
	datad => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(1),
	combout => \DISPLAY_CONTROLLER_I|draw~17_combout\);

-- Location: LCCOMB_X26_Y13_N10
\DISPLAY_CONTROLLER_I|draw~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|draw~18_combout\ = (\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(2) & (((!\DISPLAY_CONTROLLER_I|draw~17_combout\) # (!\DISPLAY_CONTROLLER_I|draw~20_combout\)) # (!\VGA_SYNC_I|vpos\(7)))) # 
-- (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(2) & (!\DISPLAY_CONTROLLER_I|draw~20_combout\ & ((!\DISPLAY_CONTROLLER_I|draw~17_combout\) # (!\VGA_SYNC_I|vpos\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|vpos\(7),
	datab => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(2),
	datac => \DISPLAY_CONTROLLER_I|draw~20_combout\,
	datad => \DISPLAY_CONTROLLER_I|draw~17_combout\,
	combout => \DISPLAY_CONTROLLER_I|draw~18_combout\);

-- Location: LCCOMB_X24_Y12_N12
\DISPLAY_CONTROLLER_I|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|LessThan5~1_cout\ = CARRY((!\VGA_SYNC_I|hpos\(0) & \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|hpos\(0),
	datab => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(3),
	datad => VCC,
	cout => \DISPLAY_CONTROLLER_I|LessThan5~1_cout\);

-- Location: LCCOMB_X24_Y12_N14
\DISPLAY_CONTROLLER_I|LessThan5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|LessThan5~3_cout\ = CARRY((\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(4) & (\VGA_SYNC_I|hpos\(1) & !\DISPLAY_CONTROLLER_I|LessThan5~1_cout\)) # (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(4) & 
-- ((\VGA_SYNC_I|hpos\(1)) # (!\DISPLAY_CONTROLLER_I|LessThan5~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(4),
	datab => \VGA_SYNC_I|hpos\(1),
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|LessThan5~1_cout\,
	cout => \DISPLAY_CONTROLLER_I|LessThan5~3_cout\);

-- Location: LCCOMB_X24_Y12_N16
\DISPLAY_CONTROLLER_I|LessThan5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|LessThan5~5_cout\ = CARRY((\VGA_SYNC_I|hpos\(2) & (\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(5) & !\DISPLAY_CONTROLLER_I|LessThan5~3_cout\)) # (!\VGA_SYNC_I|hpos\(2) & 
-- ((\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(5)) # (!\DISPLAY_CONTROLLER_I|LessThan5~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|hpos\(2),
	datab => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(5),
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|LessThan5~3_cout\,
	cout => \DISPLAY_CONTROLLER_I|LessThan5~5_cout\);

-- Location: LCCOMB_X24_Y12_N18
\DISPLAY_CONTROLLER_I|LessThan5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|LessThan5~7_cout\ = CARRY((\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(6) & (\VGA_SYNC_I|hpos\(3) & !\DISPLAY_CONTROLLER_I|LessThan5~5_cout\)) # (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(6) & 
-- ((\VGA_SYNC_I|hpos\(3)) # (!\DISPLAY_CONTROLLER_I|LessThan5~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(6),
	datab => \VGA_SYNC_I|hpos\(3),
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|LessThan5~5_cout\,
	cout => \DISPLAY_CONTROLLER_I|LessThan5~7_cout\);

-- Location: LCCOMB_X24_Y12_N20
\DISPLAY_CONTROLLER_I|LessThan5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|LessThan5~9_cout\ = CARRY((\VGA_SYNC_I|hpos\(4) & (\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(7) & !\DISPLAY_CONTROLLER_I|LessThan5~7_cout\)) # (!\VGA_SYNC_I|hpos\(4) & 
-- ((\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(7)) # (!\DISPLAY_CONTROLLER_I|LessThan5~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|hpos\(4),
	datab => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(7),
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|LessThan5~7_cout\,
	cout => \DISPLAY_CONTROLLER_I|LessThan5~9_cout\);

-- Location: LCCOMB_X24_Y12_N22
\DISPLAY_CONTROLLER_I|LessThan5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|LessThan5~11_cout\ = CARRY((\VGA_SYNC_I|hpos\(5) & ((!\DISPLAY_CONTROLLER_I|LessThan5~9_cout\) # (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(8)))) # (!\VGA_SYNC_I|hpos\(5) & 
-- (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(8) & !\DISPLAY_CONTROLLER_I|LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|hpos\(5),
	datab => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(8),
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|LessThan5~9_cout\,
	cout => \DISPLAY_CONTROLLER_I|LessThan5~11_cout\);

-- Location: LCCOMB_X24_Y12_N24
\DISPLAY_CONTROLLER_I|LessThan5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|LessThan5~13_cout\ = CARRY((\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(9) & ((!\DISPLAY_CONTROLLER_I|LessThan5~11_cout\) # (!\VGA_SYNC_I|hpos\(6)))) # (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(9) & 
-- (!\VGA_SYNC_I|hpos\(6) & !\DISPLAY_CONTROLLER_I|LessThan5~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(9),
	datab => \VGA_SYNC_I|hpos\(6),
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|LessThan5~11_cout\,
	cout => \DISPLAY_CONTROLLER_I|LessThan5~13_cout\);

-- Location: LCCOMB_X24_Y12_N26
\DISPLAY_CONTROLLER_I|LessThan5~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|LessThan5~15_cout\ = CARRY((\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(10) & (\VGA_SYNC_I|hpos\(7) & !\DISPLAY_CONTROLLER_I|LessThan5~13_cout\)) # (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(10) & 
-- ((\VGA_SYNC_I|hpos\(7)) # (!\DISPLAY_CONTROLLER_I|LessThan5~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(10),
	datab => \VGA_SYNC_I|hpos\(7),
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|LessThan5~13_cout\,
	cout => \DISPLAY_CONTROLLER_I|LessThan5~15_cout\);

-- Location: LCCOMB_X24_Y12_N28
\DISPLAY_CONTROLLER_I|LessThan5~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|LessThan5~17_cout\ = CARRY((\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(11) & ((!\DISPLAY_CONTROLLER_I|LessThan5~15_cout\) # (!\VGA_SYNC_I|hpos\(8)))) # (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(11) & 
-- (!\VGA_SYNC_I|hpos\(8) & !\DISPLAY_CONTROLLER_I|LessThan5~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(11),
	datab => \VGA_SYNC_I|hpos\(8),
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|LessThan5~15_cout\,
	cout => \DISPLAY_CONTROLLER_I|LessThan5~17_cout\);

-- Location: LCCOMB_X24_Y12_N30
\DISPLAY_CONTROLLER_I|LessThan5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|LessThan5~18_combout\ = (\VGA_SYNC_I|hpos\(9) & (\DISPLAY_CONTROLLER_I|LessThan5~17_cout\ & \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(12))) # (!\VGA_SYNC_I|hpos\(9) & ((\DISPLAY_CONTROLLER_I|LessThan5~17_cout\) # 
-- (\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|hpos\(9),
	datad => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(12),
	cin => \DISPLAY_CONTROLLER_I|LessThan5~17_cout\,
	combout => \DISPLAY_CONTROLLER_I|LessThan5~18_combout\);

-- Location: LCCOMB_X27_Y12_N30
\DISPLAY_CONTROLLER_I|draw~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|draw~19_combout\ = (\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(13)) # (!\DISPLAY_CONTROLLER_I|LessThan5~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(13),
	datad => \DISPLAY_CONTROLLER_I|LessThan5~18_combout\,
	combout => \DISPLAY_CONTROLLER_I|draw~19_combout\);

-- Location: LCCOMB_X27_Y12_N8
\DISPLAY_CONTROLLER_I|rom_select[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|rom_select[1]~1_combout\ = (!\DISPLAY_CONTROLLER_I|Add12~14_combout\ & (\DISPLAY_CONTROLLER_I|draw~19_combout\ & ((\DISPLAY_CONTROLLER_I|Add12~12_combout\) # (\DISPLAY_CONTROLLER_I|LessThan6~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Add12~12_combout\,
	datab => \DISPLAY_CONTROLLER_I|Add12~14_combout\,
	datac => \DISPLAY_CONTROLLER_I|draw~19_combout\,
	datad => \DISPLAY_CONTROLLER_I|LessThan6~18_combout\,
	combout => \DISPLAY_CONTROLLER_I|rom_select[1]~1_combout\);

-- Location: LCCOMB_X26_Y14_N4
\DISPLAY_CONTROLLER_I|rom_select[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|rom_select[1]~2_combout\ = (\DISPLAY_CONTROLLER_I|LessThan4~1_combout\ & (\DISPLAY_CONTROLLER_I|rom_select[1]~0_combout\ & (\DISPLAY_CONTROLLER_I|draw~18_combout\ & \DISPLAY_CONTROLLER_I|rom_select[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|LessThan4~1_combout\,
	datab => \DISPLAY_CONTROLLER_I|rom_select[1]~0_combout\,
	datac => \DISPLAY_CONTROLLER_I|draw~18_combout\,
	datad => \DISPLAY_CONTROLLER_I|rom_select[1]~1_combout\,
	combout => \DISPLAY_CONTROLLER_I|rom_select[1]~2_combout\);

-- Location: LCCOMB_X26_Y14_N26
\DISPLAY_CONTROLLER_I|rom_select[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\ = (\DISPLAY_CONTROLLER_I|draw~14_combout\ & ((\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(0)) # (!\DISPLAY_CONTROLLER_I|rom_select[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|draw~14_combout\,
	datab => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(0),
	datac => \DISPLAY_CONTROLLER_I|rom_select[1]~2_combout\,
	combout => \DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\);

-- Location: LCCOMB_X24_Y14_N18
\DISPLAY_CONTROLLER_I|Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add8~0_combout\ = (\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(3) & (\VGA_SYNC_I|hpos\(0) $ (VCC))) # (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(3) & ((\VGA_SYNC_I|hpos\(0)) # (GND)))
-- \DISPLAY_CONTROLLER_I|Add8~1\ = CARRY((\VGA_SYNC_I|hpos\(0)) # (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(3),
	datab => \VGA_SYNC_I|hpos\(0),
	datad => VCC,
	combout => \DISPLAY_CONTROLLER_I|Add8~0_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add8~1\);

-- Location: LCCOMB_X26_Y14_N28
\DISPLAY_CONTROLLER_I|rom_addr_vec[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|rom_addr_vec[0]~0_combout\ = (\DISPLAY_CONTROLLER_I|draw~14_combout\ & (\DISPLAY_CONTROLLER_I|Add8~0_combout\ & (\DISPLAY_CONTROLLER_I|rom_select[1]~2_combout\))) # (!\DISPLAY_CONTROLLER_I|draw~14_combout\ & 
-- (((\VGA_SYNC_I|hpos\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Add8~0_combout\,
	datab => \DISPLAY_CONTROLLER_I|draw~14_combout\,
	datac => \DISPLAY_CONTROLLER_I|rom_select[1]~2_combout\,
	datad => \VGA_SYNC_I|hpos\(0),
	combout => \DISPLAY_CONTROLLER_I|rom_addr_vec[0]~0_combout\);

-- Location: LCCOMB_X24_Y14_N20
\DISPLAY_CONTROLLER_I|Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add8~2_combout\ = (\VGA_SYNC_I|hpos\(1) & ((\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(4) & (!\DISPLAY_CONTROLLER_I|Add8~1\)) # (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(4) & (\DISPLAY_CONTROLLER_I|Add8~1\ & 
-- VCC)))) # (!\VGA_SYNC_I|hpos\(1) & ((\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(4) & ((\DISPLAY_CONTROLLER_I|Add8~1\) # (GND))) # (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(4) & (!\DISPLAY_CONTROLLER_I|Add8~1\))))
-- \DISPLAY_CONTROLLER_I|Add8~3\ = CARRY((\VGA_SYNC_I|hpos\(1) & (\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(4) & !\DISPLAY_CONTROLLER_I|Add8~1\)) # (!\VGA_SYNC_I|hpos\(1) & ((\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(4)) # 
-- (!\DISPLAY_CONTROLLER_I|Add8~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|hpos\(1),
	datab => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(4),
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add8~1\,
	combout => \DISPLAY_CONTROLLER_I|Add8~2_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add8~3\);

-- Location: LCCOMB_X24_Y12_N0
\DISPLAY_CONTROLLER_I|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add2~0_combout\ = \VGA_SYNC_I|hpos\(1) $ (VCC)
-- \DISPLAY_CONTROLLER_I|Add2~1\ = CARRY(\VGA_SYNC_I|hpos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNC_I|hpos\(1),
	datad => VCC,
	combout => \DISPLAY_CONTROLLER_I|Add2~0_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add2~1\);

-- Location: LCCOMB_X26_Y14_N14
\DISPLAY_CONTROLLER_I|rom_addr_vec[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|rom_addr_vec[1]~1_combout\ = (\DISPLAY_CONTROLLER_I|draw~14_combout\ & (\DISPLAY_CONTROLLER_I|Add8~2_combout\ & (\DISPLAY_CONTROLLER_I|rom_select[1]~2_combout\))) # (!\DISPLAY_CONTROLLER_I|draw~14_combout\ & 
-- (((\DISPLAY_CONTROLLER_I|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Add8~2_combout\,
	datab => \DISPLAY_CONTROLLER_I|draw~14_combout\,
	datac => \DISPLAY_CONTROLLER_I|rom_select[1]~2_combout\,
	datad => \DISPLAY_CONTROLLER_I|Add2~0_combout\,
	combout => \DISPLAY_CONTROLLER_I|rom_addr_vec[1]~1_combout\);

-- Location: LCCOMB_X24_Y12_N2
\DISPLAY_CONTROLLER_I|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add2~2_combout\ = (\VGA_SYNC_I|hpos\(2) & (\DISPLAY_CONTROLLER_I|Add2~1\ & VCC)) # (!\VGA_SYNC_I|hpos\(2) & (!\DISPLAY_CONTROLLER_I|Add2~1\))
-- \DISPLAY_CONTROLLER_I|Add2~3\ = CARRY((!\VGA_SYNC_I|hpos\(2) & !\DISPLAY_CONTROLLER_I|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNC_I|hpos\(2),
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add2~1\,
	combout => \DISPLAY_CONTROLLER_I|Add2~2_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add2~3\);

-- Location: LCCOMB_X24_Y14_N22
\DISPLAY_CONTROLLER_I|Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add8~4_combout\ = ((\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(5) $ (\VGA_SYNC_I|hpos\(2) $ (\DISPLAY_CONTROLLER_I|Add8~3\)))) # (GND)
-- \DISPLAY_CONTROLLER_I|Add8~5\ = CARRY((\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(5) & (\VGA_SYNC_I|hpos\(2) & !\DISPLAY_CONTROLLER_I|Add8~3\)) # (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(5) & ((\VGA_SYNC_I|hpos\(2)) # 
-- (!\DISPLAY_CONTROLLER_I|Add8~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(5),
	datab => \VGA_SYNC_I|hpos\(2),
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add8~3\,
	combout => \DISPLAY_CONTROLLER_I|Add8~4_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add8~5\);

-- Location: LCCOMB_X26_Y14_N20
\DISPLAY_CONTROLLER_I|rom_addr_vec[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|rom_addr_vec[2]~2_combout\ = (\DISPLAY_CONTROLLER_I|draw~14_combout\ & (((\DISPLAY_CONTROLLER_I|rom_select[1]~2_combout\ & \DISPLAY_CONTROLLER_I|Add8~4_combout\)))) # (!\DISPLAY_CONTROLLER_I|draw~14_combout\ & 
-- (\DISPLAY_CONTROLLER_I|Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Add2~2_combout\,
	datab => \DISPLAY_CONTROLLER_I|draw~14_combout\,
	datac => \DISPLAY_CONTROLLER_I|rom_select[1]~2_combout\,
	datad => \DISPLAY_CONTROLLER_I|Add8~4_combout\,
	combout => \DISPLAY_CONTROLLER_I|rom_addr_vec[2]~2_combout\);

-- Location: LCCOMB_X24_Y12_N4
\DISPLAY_CONTROLLER_I|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add2~4_combout\ = (\VGA_SYNC_I|hpos\(3) & (\DISPLAY_CONTROLLER_I|Add2~3\ $ (GND))) # (!\VGA_SYNC_I|hpos\(3) & (!\DISPLAY_CONTROLLER_I|Add2~3\ & VCC))
-- \DISPLAY_CONTROLLER_I|Add2~5\ = CARRY((\VGA_SYNC_I|hpos\(3) & !\DISPLAY_CONTROLLER_I|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNC_I|hpos\(3),
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add2~3\,
	combout => \DISPLAY_CONTROLLER_I|Add2~4_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add2~5\);

-- Location: LCCOMB_X24_Y14_N24
\DISPLAY_CONTROLLER_I|Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add8~6_combout\ = (\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(6) & ((\VGA_SYNC_I|hpos\(3) & (!\DISPLAY_CONTROLLER_I|Add8~5\)) # (!\VGA_SYNC_I|hpos\(3) & ((\DISPLAY_CONTROLLER_I|Add8~5\) # (GND))))) # 
-- (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(6) & ((\VGA_SYNC_I|hpos\(3) & (\DISPLAY_CONTROLLER_I|Add8~5\ & VCC)) # (!\VGA_SYNC_I|hpos\(3) & (!\DISPLAY_CONTROLLER_I|Add8~5\))))
-- \DISPLAY_CONTROLLER_I|Add8~7\ = CARRY((\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(6) & ((!\DISPLAY_CONTROLLER_I|Add8~5\) # (!\VGA_SYNC_I|hpos\(3)))) # (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(6) & (!\VGA_SYNC_I|hpos\(3) & 
-- !\DISPLAY_CONTROLLER_I|Add8~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(6),
	datab => \VGA_SYNC_I|hpos\(3),
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add8~5\,
	combout => \DISPLAY_CONTROLLER_I|Add8~6_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add8~7\);

-- Location: LCCOMB_X26_Y14_N30
\DISPLAY_CONTROLLER_I|rom_addr_vec[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|rom_addr_vec[3]~3_combout\ = (\DISPLAY_CONTROLLER_I|draw~14_combout\ & (((\DISPLAY_CONTROLLER_I|rom_select[1]~2_combout\ & \DISPLAY_CONTROLLER_I|Add8~6_combout\)))) # (!\DISPLAY_CONTROLLER_I|draw~14_combout\ & 
-- (\DISPLAY_CONTROLLER_I|Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|draw~14_combout\,
	datab => \DISPLAY_CONTROLLER_I|Add2~4_combout\,
	datac => \DISPLAY_CONTROLLER_I|rom_select[1]~2_combout\,
	datad => \DISPLAY_CONTROLLER_I|Add8~6_combout\,
	combout => \DISPLAY_CONTROLLER_I|rom_addr_vec[3]~3_combout\);

-- Location: FF_X27_Y14_N15
\VGA_SYNC_I|vpos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	asdata => \VGA_SYNC_I|v_count\(0),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \VGA_SYNC_I|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|vpos\(0));

-- Location: LCCOMB_X24_Y12_N6
\DISPLAY_CONTROLLER_I|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add2~6_combout\ = (\VGA_SYNC_I|hpos\(4) & (\DISPLAY_CONTROLLER_I|Add2~5\ & VCC)) # (!\VGA_SYNC_I|hpos\(4) & (!\DISPLAY_CONTROLLER_I|Add2~5\))
-- \DISPLAY_CONTROLLER_I|Add2~7\ = CARRY((!\VGA_SYNC_I|hpos\(4) & !\DISPLAY_CONTROLLER_I|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNC_I|hpos\(4),
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add2~5\,
	combout => \DISPLAY_CONTROLLER_I|Add2~6_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add2~7\);

-- Location: LCCOMB_X28_Y14_N2
\DISPLAY_CONTROLLER_I|Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add5~0_combout\ = (\VGA_SYNC_I|vpos\(0) & (\DISPLAY_CONTROLLER_I|Add2~6_combout\ $ (VCC))) # (!\VGA_SYNC_I|vpos\(0) & (\DISPLAY_CONTROLLER_I|Add2~6_combout\ & VCC))
-- \DISPLAY_CONTROLLER_I|Add5~1\ = CARRY((\VGA_SYNC_I|vpos\(0) & \DISPLAY_CONTROLLER_I|Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|vpos\(0),
	datab => \DISPLAY_CONTROLLER_I|Add2~6_combout\,
	datad => VCC,
	combout => \DISPLAY_CONTROLLER_I|Add5~0_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add5~1\);

-- Location: LCCOMB_X24_Y14_N26
\DISPLAY_CONTROLLER_I|Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add8~8_combout\ = ((\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(7) $ (\VGA_SYNC_I|hpos\(4) $ (\DISPLAY_CONTROLLER_I|Add8~7\)))) # (GND)
-- \DISPLAY_CONTROLLER_I|Add8~9\ = CARRY((\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(7) & (\VGA_SYNC_I|hpos\(4) & !\DISPLAY_CONTROLLER_I|Add8~7\)) # (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(7) & ((\VGA_SYNC_I|hpos\(4)) # 
-- (!\DISPLAY_CONTROLLER_I|Add8~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(7),
	datab => \VGA_SYNC_I|hpos\(4),
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add8~7\,
	combout => \DISPLAY_CONTROLLER_I|Add8~8_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add8~9\);

-- Location: LCCOMB_X27_Y14_N16
\DISPLAY_CONTROLLER_I|Add11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add11~0_combout\ = (\DISPLAY_CONTROLLER_I|Add8~8_combout\ & (\VGA_SYNC_I|vpos\(0) $ (VCC))) # (!\DISPLAY_CONTROLLER_I|Add8~8_combout\ & (\VGA_SYNC_I|vpos\(0) & VCC))
-- \DISPLAY_CONTROLLER_I|Add11~1\ = CARRY((\DISPLAY_CONTROLLER_I|Add8~8_combout\ & \VGA_SYNC_I|vpos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Add8~8_combout\,
	datab => \VGA_SYNC_I|vpos\(0),
	datad => VCC,
	combout => \DISPLAY_CONTROLLER_I|Add11~0_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add11~1\);

-- Location: LCCOMB_X26_Y14_N8
\DISPLAY_CONTROLLER_I|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add5~2_combout\ = (\DISPLAY_CONTROLLER_I|draw~14_combout\ & (((\DISPLAY_CONTROLLER_I|rom_select[1]~2_combout\ & \DISPLAY_CONTROLLER_I|Add11~0_combout\)))) # (!\DISPLAY_CONTROLLER_I|draw~14_combout\ & 
-- (\DISPLAY_CONTROLLER_I|Add5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Add5~0_combout\,
	datab => \DISPLAY_CONTROLLER_I|draw~14_combout\,
	datac => \DISPLAY_CONTROLLER_I|rom_select[1]~2_combout\,
	datad => \DISPLAY_CONTROLLER_I|Add11~0_combout\,
	combout => \DISPLAY_CONTROLLER_I|Add5~2_combout\);

-- Location: LCCOMB_X24_Y14_N28
\DISPLAY_CONTROLLER_I|Add8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add8~10_combout\ = \VGA_SYNC_I|hpos\(5) $ (\DISPLAY_CONTROLLER_I|Add8~9\ $ (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|hpos\(5),
	datad => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(8),
	cin => \DISPLAY_CONTROLLER_I|Add8~9\,
	combout => \DISPLAY_CONTROLLER_I|Add8~10_combout\);

-- Location: FF_X28_Y14_N19
\VGA_SYNC_I|vpos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	asdata => \VGA_SYNC_I|v_count\(1),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \VGA_SYNC_I|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|vpos\(1));

-- Location: LCCOMB_X27_Y14_N0
\DISPLAY_CONTROLLER_I|Add10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add10~0_combout\ = (\VGA_SYNC_I|vpos\(0) & (\VGA_SYNC_I|vpos\(1) $ (VCC))) # (!\VGA_SYNC_I|vpos\(0) & (\VGA_SYNC_I|vpos\(1) & VCC))
-- \DISPLAY_CONTROLLER_I|Add10~1\ = CARRY((\VGA_SYNC_I|vpos\(0) & \VGA_SYNC_I|vpos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|vpos\(0),
	datab => \VGA_SYNC_I|vpos\(1),
	datad => VCC,
	combout => \DISPLAY_CONTROLLER_I|Add10~0_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add10~1\);

-- Location: LCCOMB_X27_Y14_N18
\DISPLAY_CONTROLLER_I|Add11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add11~2_combout\ = (\DISPLAY_CONTROLLER_I|Add8~10_combout\ & ((\DISPLAY_CONTROLLER_I|Add10~0_combout\ & (\DISPLAY_CONTROLLER_I|Add11~1\ & VCC)) # (!\DISPLAY_CONTROLLER_I|Add10~0_combout\ & (!\DISPLAY_CONTROLLER_I|Add11~1\)))) # 
-- (!\DISPLAY_CONTROLLER_I|Add8~10_combout\ & ((\DISPLAY_CONTROLLER_I|Add10~0_combout\ & (!\DISPLAY_CONTROLLER_I|Add11~1\)) # (!\DISPLAY_CONTROLLER_I|Add10~0_combout\ & ((\DISPLAY_CONTROLLER_I|Add11~1\) # (GND)))))
-- \DISPLAY_CONTROLLER_I|Add11~3\ = CARRY((\DISPLAY_CONTROLLER_I|Add8~10_combout\ & (!\DISPLAY_CONTROLLER_I|Add10~0_combout\ & !\DISPLAY_CONTROLLER_I|Add11~1\)) # (!\DISPLAY_CONTROLLER_I|Add8~10_combout\ & ((!\DISPLAY_CONTROLLER_I|Add11~1\) # 
-- (!\DISPLAY_CONTROLLER_I|Add10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Add8~10_combout\,
	datab => \DISPLAY_CONTROLLER_I|Add10~0_combout\,
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add11~1\,
	combout => \DISPLAY_CONTROLLER_I|Add11~2_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add11~3\);

-- Location: LCCOMB_X28_Y14_N18
\DISPLAY_CONTROLLER_I|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add4~0_combout\ = (\VGA_SYNC_I|vpos\(0) & (\VGA_SYNC_I|vpos\(1) $ (VCC))) # (!\VGA_SYNC_I|vpos\(0) & (\VGA_SYNC_I|vpos\(1) & VCC))
-- \DISPLAY_CONTROLLER_I|Add4~1\ = CARRY((\VGA_SYNC_I|vpos\(0) & \VGA_SYNC_I|vpos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|vpos\(0),
	datab => \VGA_SYNC_I|vpos\(1),
	datad => VCC,
	combout => \DISPLAY_CONTROLLER_I|Add4~0_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add4~1\);

-- Location: LCCOMB_X24_Y12_N8
\DISPLAY_CONTROLLER_I|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add2~8_combout\ = \VGA_SYNC_I|hpos\(5) $ (\DISPLAY_CONTROLLER_I|Add2~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|hpos\(5),
	cin => \DISPLAY_CONTROLLER_I|Add2~7\,
	combout => \DISPLAY_CONTROLLER_I|Add2~8_combout\);

-- Location: LCCOMB_X28_Y14_N4
\DISPLAY_CONTROLLER_I|Add5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add5~3_combout\ = (\DISPLAY_CONTROLLER_I|Add4~0_combout\ & ((\DISPLAY_CONTROLLER_I|Add2~8_combout\ & (\DISPLAY_CONTROLLER_I|Add5~1\ & VCC)) # (!\DISPLAY_CONTROLLER_I|Add2~8_combout\ & (!\DISPLAY_CONTROLLER_I|Add5~1\)))) # 
-- (!\DISPLAY_CONTROLLER_I|Add4~0_combout\ & ((\DISPLAY_CONTROLLER_I|Add2~8_combout\ & (!\DISPLAY_CONTROLLER_I|Add5~1\)) # (!\DISPLAY_CONTROLLER_I|Add2~8_combout\ & ((\DISPLAY_CONTROLLER_I|Add5~1\) # (GND)))))
-- \DISPLAY_CONTROLLER_I|Add5~4\ = CARRY((\DISPLAY_CONTROLLER_I|Add4~0_combout\ & (!\DISPLAY_CONTROLLER_I|Add2~8_combout\ & !\DISPLAY_CONTROLLER_I|Add5~1\)) # (!\DISPLAY_CONTROLLER_I|Add4~0_combout\ & ((!\DISPLAY_CONTROLLER_I|Add5~1\) # 
-- (!\DISPLAY_CONTROLLER_I|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Add4~0_combout\,
	datab => \DISPLAY_CONTROLLER_I|Add2~8_combout\,
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add5~1\,
	combout => \DISPLAY_CONTROLLER_I|Add5~3_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add5~4\);

-- Location: LCCOMB_X26_Y14_N6
\DISPLAY_CONTROLLER_I|Add5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add5~5_combout\ = (\DISPLAY_CONTROLLER_I|draw~14_combout\ & (\DISPLAY_CONTROLLER_I|Add11~2_combout\ & (\DISPLAY_CONTROLLER_I|rom_select[1]~2_combout\))) # (!\DISPLAY_CONTROLLER_I|draw~14_combout\ & 
-- (((\DISPLAY_CONTROLLER_I|Add5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|draw~14_combout\,
	datab => \DISPLAY_CONTROLLER_I|Add11~2_combout\,
	datac => \DISPLAY_CONTROLLER_I|rom_select[1]~2_combout\,
	datad => \DISPLAY_CONTROLLER_I|Add5~3_combout\,
	combout => \DISPLAY_CONTROLLER_I|Add5~5_combout\);

-- Location: FF_X28_Y14_N21
\VGA_SYNC_I|vpos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	asdata => \VGA_SYNC_I|v_count\(2),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \VGA_SYNC_I|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|vpos\(2));

-- Location: LCCOMB_X28_Y14_N20
\DISPLAY_CONTROLLER_I|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add4~2_combout\ = (\VGA_SYNC_I|vpos\(2) & ((\VGA_SYNC_I|vpos\(1) & (\DISPLAY_CONTROLLER_I|Add4~1\ & VCC)) # (!\VGA_SYNC_I|vpos\(1) & (!\DISPLAY_CONTROLLER_I|Add4~1\)))) # (!\VGA_SYNC_I|vpos\(2) & ((\VGA_SYNC_I|vpos\(1) & 
-- (!\DISPLAY_CONTROLLER_I|Add4~1\)) # (!\VGA_SYNC_I|vpos\(1) & ((\DISPLAY_CONTROLLER_I|Add4~1\) # (GND)))))
-- \DISPLAY_CONTROLLER_I|Add4~3\ = CARRY((\VGA_SYNC_I|vpos\(2) & (!\VGA_SYNC_I|vpos\(1) & !\DISPLAY_CONTROLLER_I|Add4~1\)) # (!\VGA_SYNC_I|vpos\(2) & ((!\DISPLAY_CONTROLLER_I|Add4~1\) # (!\VGA_SYNC_I|vpos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|vpos\(2),
	datab => \VGA_SYNC_I|vpos\(1),
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add4~1\,
	combout => \DISPLAY_CONTROLLER_I|Add4~2_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add4~3\);

-- Location: LCCOMB_X28_Y14_N6
\DISPLAY_CONTROLLER_I|Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add5~6_combout\ = (\DISPLAY_CONTROLLER_I|Add4~2_combout\ & (\DISPLAY_CONTROLLER_I|Add5~4\ $ (GND))) # (!\DISPLAY_CONTROLLER_I|Add4~2_combout\ & (!\DISPLAY_CONTROLLER_I|Add5~4\ & VCC))
-- \DISPLAY_CONTROLLER_I|Add5~7\ = CARRY((\DISPLAY_CONTROLLER_I|Add4~2_combout\ & !\DISPLAY_CONTROLLER_I|Add5~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DISPLAY_CONTROLLER_I|Add4~2_combout\,
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add5~4\,
	combout => \DISPLAY_CONTROLLER_I|Add5~6_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add5~7\);

-- Location: LCCOMB_X27_Y14_N2
\DISPLAY_CONTROLLER_I|Add10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add10~2_combout\ = (\VGA_SYNC_I|vpos\(2) & ((\VGA_SYNC_I|vpos\(1) & (\DISPLAY_CONTROLLER_I|Add10~1\ & VCC)) # (!\VGA_SYNC_I|vpos\(1) & (!\DISPLAY_CONTROLLER_I|Add10~1\)))) # (!\VGA_SYNC_I|vpos\(2) & ((\VGA_SYNC_I|vpos\(1) & 
-- (!\DISPLAY_CONTROLLER_I|Add10~1\)) # (!\VGA_SYNC_I|vpos\(1) & ((\DISPLAY_CONTROLLER_I|Add10~1\) # (GND)))))
-- \DISPLAY_CONTROLLER_I|Add10~3\ = CARRY((\VGA_SYNC_I|vpos\(2) & (!\VGA_SYNC_I|vpos\(1) & !\DISPLAY_CONTROLLER_I|Add10~1\)) # (!\VGA_SYNC_I|vpos\(2) & ((!\DISPLAY_CONTROLLER_I|Add10~1\) # (!\VGA_SYNC_I|vpos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|vpos\(2),
	datab => \VGA_SYNC_I|vpos\(1),
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add10~1\,
	combout => \DISPLAY_CONTROLLER_I|Add10~2_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add10~3\);

-- Location: LCCOMB_X27_Y14_N20
\DISPLAY_CONTROLLER_I|Add11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add11~4_combout\ = (\DISPLAY_CONTROLLER_I|Add10~2_combout\ & (\DISPLAY_CONTROLLER_I|Add11~3\ $ (GND))) # (!\DISPLAY_CONTROLLER_I|Add10~2_combout\ & (!\DISPLAY_CONTROLLER_I|Add11~3\ & VCC))
-- \DISPLAY_CONTROLLER_I|Add11~5\ = CARRY((\DISPLAY_CONTROLLER_I|Add10~2_combout\ & !\DISPLAY_CONTROLLER_I|Add11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DISPLAY_CONTROLLER_I|Add10~2_combout\,
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add11~3\,
	combout => \DISPLAY_CONTROLLER_I|Add11~4_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add11~5\);

-- Location: LCCOMB_X26_Y14_N12
\DISPLAY_CONTROLLER_I|Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add5~8_combout\ = (\DISPLAY_CONTROLLER_I|draw~14_combout\ & (((\DISPLAY_CONTROLLER_I|rom_select[1]~2_combout\ & \DISPLAY_CONTROLLER_I|Add11~4_combout\)))) # (!\DISPLAY_CONTROLLER_I|draw~14_combout\ & 
-- (\DISPLAY_CONTROLLER_I|Add5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Add5~6_combout\,
	datab => \DISPLAY_CONTROLLER_I|draw~14_combout\,
	datac => \DISPLAY_CONTROLLER_I|rom_select[1]~2_combout\,
	datad => \DISPLAY_CONTROLLER_I|Add11~4_combout\,
	combout => \DISPLAY_CONTROLLER_I|Add5~8_combout\);

-- Location: LCCOMB_X27_Y13_N18
\DISPLAY_CONTROLLER_I|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add3~0_combout\ = \PLAYER_CONTROLLER_I|curr_lane\(0) $ (!\VGA_SYNC_I|vpos\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PLAYER_CONTROLLER_I|curr_lane\(0),
	datad => \VGA_SYNC_I|vpos\(3),
	combout => \DISPLAY_CONTROLLER_I|Add3~0_combout\);

-- Location: LCCOMB_X28_Y14_N22
\DISPLAY_CONTROLLER_I|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add4~4_combout\ = ((\VGA_SYNC_I|vpos\(2) $ (\DISPLAY_CONTROLLER_I|Add3~0_combout\ $ (\DISPLAY_CONTROLLER_I|Add4~3\)))) # (GND)
-- \DISPLAY_CONTROLLER_I|Add4~5\ = CARRY((\VGA_SYNC_I|vpos\(2) & ((!\DISPLAY_CONTROLLER_I|Add4~3\) # (!\DISPLAY_CONTROLLER_I|Add3~0_combout\))) # (!\VGA_SYNC_I|vpos\(2) & (!\DISPLAY_CONTROLLER_I|Add3~0_combout\ & !\DISPLAY_CONTROLLER_I|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|vpos\(2),
	datab => \DISPLAY_CONTROLLER_I|Add3~0_combout\,
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add4~3\,
	combout => \DISPLAY_CONTROLLER_I|Add4~4_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add4~5\);

-- Location: LCCOMB_X28_Y14_N8
\DISPLAY_CONTROLLER_I|Add5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add5~9_combout\ = (\DISPLAY_CONTROLLER_I|Add4~4_combout\ & (!\DISPLAY_CONTROLLER_I|Add5~7\)) # (!\DISPLAY_CONTROLLER_I|Add4~4_combout\ & ((\DISPLAY_CONTROLLER_I|Add5~7\) # (GND)))
-- \DISPLAY_CONTROLLER_I|Add5~10\ = CARRY((!\DISPLAY_CONTROLLER_I|Add5~7\) # (!\DISPLAY_CONTROLLER_I|Add4~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Add4~4_combout\,
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add5~7\,
	combout => \DISPLAY_CONTROLLER_I|Add5~9_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add5~10\);

-- Location: LCCOMB_X26_Y12_N2
\DISPLAY_CONTROLLER_I|Add9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add9~0_combout\ = \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(1) $ (\VGA_SYNC_I|vpos\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(1),
	datad => \VGA_SYNC_I|vpos\(3),
	combout => \DISPLAY_CONTROLLER_I|Add9~0_combout\);

-- Location: LCCOMB_X27_Y14_N4
\DISPLAY_CONTROLLER_I|Add10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add10~4_combout\ = ((\DISPLAY_CONTROLLER_I|Add9~0_combout\ $ (\VGA_SYNC_I|vpos\(2) $ (\DISPLAY_CONTROLLER_I|Add10~3\)))) # (GND)
-- \DISPLAY_CONTROLLER_I|Add10~5\ = CARRY((\DISPLAY_CONTROLLER_I|Add9~0_combout\ & (\VGA_SYNC_I|vpos\(2) & !\DISPLAY_CONTROLLER_I|Add10~3\)) # (!\DISPLAY_CONTROLLER_I|Add9~0_combout\ & ((\VGA_SYNC_I|vpos\(2)) # (!\DISPLAY_CONTROLLER_I|Add10~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Add9~0_combout\,
	datab => \VGA_SYNC_I|vpos\(2),
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add10~3\,
	combout => \DISPLAY_CONTROLLER_I|Add10~4_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add10~5\);

-- Location: LCCOMB_X27_Y14_N22
\DISPLAY_CONTROLLER_I|Add11~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add11~6_combout\ = (\DISPLAY_CONTROLLER_I|Add10~4_combout\ & (!\DISPLAY_CONTROLLER_I|Add11~5\)) # (!\DISPLAY_CONTROLLER_I|Add10~4_combout\ & ((\DISPLAY_CONTROLLER_I|Add11~5\) # (GND)))
-- \DISPLAY_CONTROLLER_I|Add11~7\ = CARRY((!\DISPLAY_CONTROLLER_I|Add11~5\) # (!\DISPLAY_CONTROLLER_I|Add10~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DISPLAY_CONTROLLER_I|Add10~4_combout\,
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add11~5\,
	combout => \DISPLAY_CONTROLLER_I|Add11~6_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add11~7\);

-- Location: LCCOMB_X26_Y14_N10
\DISPLAY_CONTROLLER_I|Add5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add5~11_combout\ = (\DISPLAY_CONTROLLER_I|draw~14_combout\ & (((\DISPLAY_CONTROLLER_I|rom_select[1]~2_combout\ & \DISPLAY_CONTROLLER_I|Add11~6_combout\)))) # (!\DISPLAY_CONTROLLER_I|draw~14_combout\ & 
-- (\DISPLAY_CONTROLLER_I|Add5~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|draw~14_combout\,
	datab => \DISPLAY_CONTROLLER_I|Add5~9_combout\,
	datac => \DISPLAY_CONTROLLER_I|rom_select[1]~2_combout\,
	datad => \DISPLAY_CONTROLLER_I|Add11~6_combout\,
	combout => \DISPLAY_CONTROLLER_I|Add5~11_combout\);

-- Location: LCCOMB_X27_Y13_N0
\DISPLAY_CONTROLLER_I|Add3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add3~1_combout\ = \VGA_SYNC_I|vpos\(4) $ (\PLAYER_CONTROLLER_I|curr_lane\(1) $ (((\VGA_SYNC_I|vpos\(3)) # (!\PLAYER_CONTROLLER_I|curr_lane\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|vpos\(4),
	datab => \VGA_SYNC_I|vpos\(3),
	datac => \PLAYER_CONTROLLER_I|curr_lane\(1),
	datad => \PLAYER_CONTROLLER_I|curr_lane\(0),
	combout => \DISPLAY_CONTROLLER_I|Add3~1_combout\);

-- Location: LCCOMB_X28_Y14_N24
\DISPLAY_CONTROLLER_I|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add4~6_combout\ = (\DISPLAY_CONTROLLER_I|Add3~1_combout\ & ((\DISPLAY_CONTROLLER_I|Add3~0_combout\ & (!\DISPLAY_CONTROLLER_I|Add4~5\)) # (!\DISPLAY_CONTROLLER_I|Add3~0_combout\ & (\DISPLAY_CONTROLLER_I|Add4~5\ & VCC)))) # 
-- (!\DISPLAY_CONTROLLER_I|Add3~1_combout\ & ((\DISPLAY_CONTROLLER_I|Add3~0_combout\ & ((\DISPLAY_CONTROLLER_I|Add4~5\) # (GND))) # (!\DISPLAY_CONTROLLER_I|Add3~0_combout\ & (!\DISPLAY_CONTROLLER_I|Add4~5\))))
-- \DISPLAY_CONTROLLER_I|Add4~7\ = CARRY((\DISPLAY_CONTROLLER_I|Add3~1_combout\ & (\DISPLAY_CONTROLLER_I|Add3~0_combout\ & !\DISPLAY_CONTROLLER_I|Add4~5\)) # (!\DISPLAY_CONTROLLER_I|Add3~1_combout\ & ((\DISPLAY_CONTROLLER_I|Add3~0_combout\) # 
-- (!\DISPLAY_CONTROLLER_I|Add4~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Add3~1_combout\,
	datab => \DISPLAY_CONTROLLER_I|Add3~0_combout\,
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add4~5\,
	combout => \DISPLAY_CONTROLLER_I|Add4~6_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add4~7\);

-- Location: LCCOMB_X28_Y14_N10
\DISPLAY_CONTROLLER_I|Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add5~12_combout\ = (\DISPLAY_CONTROLLER_I|Add4~6_combout\ & (\DISPLAY_CONTROLLER_I|Add5~10\ $ (GND))) # (!\DISPLAY_CONTROLLER_I|Add4~6_combout\ & (!\DISPLAY_CONTROLLER_I|Add5~10\ & VCC))
-- \DISPLAY_CONTROLLER_I|Add5~13\ = CARRY((\DISPLAY_CONTROLLER_I|Add4~6_combout\ & !\DISPLAY_CONTROLLER_I|Add5~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DISPLAY_CONTROLLER_I|Add4~6_combout\,
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add5~10\,
	combout => \DISPLAY_CONTROLLER_I|Add5~12_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add5~13\);

-- Location: LCCOMB_X26_Y12_N4
\DISPLAY_CONTROLLER_I|Add9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add9~1_combout\ = \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(2) $ (\VGA_SYNC_I|vpos\(4) $ (((\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(1)) # (\VGA_SYNC_I|vpos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(2),
	datab => \VGA_SYNC_I|vpos\(4),
	datac => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(1),
	datad => \VGA_SYNC_I|vpos\(3),
	combout => \DISPLAY_CONTROLLER_I|Add9~1_combout\);

-- Location: LCCOMB_X27_Y14_N6
\DISPLAY_CONTROLLER_I|Add10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add10~6_combout\ = (\DISPLAY_CONTROLLER_I|Add9~0_combout\ & ((\DISPLAY_CONTROLLER_I|Add9~1_combout\ & (!\DISPLAY_CONTROLLER_I|Add10~5\)) # (!\DISPLAY_CONTROLLER_I|Add9~1_combout\ & ((\DISPLAY_CONTROLLER_I|Add10~5\) # (GND))))) # 
-- (!\DISPLAY_CONTROLLER_I|Add9~0_combout\ & ((\DISPLAY_CONTROLLER_I|Add9~1_combout\ & (\DISPLAY_CONTROLLER_I|Add10~5\ & VCC)) # (!\DISPLAY_CONTROLLER_I|Add9~1_combout\ & (!\DISPLAY_CONTROLLER_I|Add10~5\))))
-- \DISPLAY_CONTROLLER_I|Add10~7\ = CARRY((\DISPLAY_CONTROLLER_I|Add9~0_combout\ & ((!\DISPLAY_CONTROLLER_I|Add10~5\) # (!\DISPLAY_CONTROLLER_I|Add9~1_combout\))) # (!\DISPLAY_CONTROLLER_I|Add9~0_combout\ & (!\DISPLAY_CONTROLLER_I|Add9~1_combout\ & 
-- !\DISPLAY_CONTROLLER_I|Add10~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Add9~0_combout\,
	datab => \DISPLAY_CONTROLLER_I|Add9~1_combout\,
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add10~5\,
	combout => \DISPLAY_CONTROLLER_I|Add10~6_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add10~7\);

-- Location: LCCOMB_X27_Y14_N24
\DISPLAY_CONTROLLER_I|Add11~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add11~8_combout\ = (\DISPLAY_CONTROLLER_I|Add10~6_combout\ & (\DISPLAY_CONTROLLER_I|Add11~7\ $ (GND))) # (!\DISPLAY_CONTROLLER_I|Add10~6_combout\ & (!\DISPLAY_CONTROLLER_I|Add11~7\ & VCC))
-- \DISPLAY_CONTROLLER_I|Add11~9\ = CARRY((\DISPLAY_CONTROLLER_I|Add10~6_combout\ & !\DISPLAY_CONTROLLER_I|Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Add10~6_combout\,
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add11~7\,
	combout => \DISPLAY_CONTROLLER_I|Add11~8_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add11~9\);

-- Location: LCCOMB_X26_Y14_N16
\DISPLAY_CONTROLLER_I|Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add5~14_combout\ = (\DISPLAY_CONTROLLER_I|draw~14_combout\ & (((\DISPLAY_CONTROLLER_I|rom_select[1]~2_combout\ & \DISPLAY_CONTROLLER_I|Add11~8_combout\)))) # (!\DISPLAY_CONTROLLER_I|draw~14_combout\ & 
-- (\DISPLAY_CONTROLLER_I|Add5~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Add5~12_combout\,
	datab => \DISPLAY_CONTROLLER_I|draw~14_combout\,
	datac => \DISPLAY_CONTROLLER_I|rom_select[1]~2_combout\,
	datad => \DISPLAY_CONTROLLER_I|Add11~8_combout\,
	combout => \DISPLAY_CONTROLLER_I|Add5~14_combout\);

-- Location: LCCOMB_X27_Y13_N2
\DISPLAY_CONTROLLER_I|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add3~2_combout\ = (\VGA_SYNC_I|vpos\(4) & (((\PLAYER_CONTROLLER_I|curr_lane\(1)) # (\VGA_SYNC_I|vpos\(3))) # (!\PLAYER_CONTROLLER_I|curr_lane\(0)))) # (!\VGA_SYNC_I|vpos\(4) & (\PLAYER_CONTROLLER_I|curr_lane\(1) & 
-- ((\VGA_SYNC_I|vpos\(3)) # (!\PLAYER_CONTROLLER_I|curr_lane\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|vpos\(4),
	datab => \PLAYER_CONTROLLER_I|curr_lane\(0),
	datac => \PLAYER_CONTROLLER_I|curr_lane\(1),
	datad => \VGA_SYNC_I|vpos\(3),
	combout => \DISPLAY_CONTROLLER_I|Add3~2_combout\);

-- Location: LCCOMB_X28_Y14_N0
\DISPLAY_CONTROLLER_I|Add3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add3~3_combout\ = \VGA_SYNC_I|vpos\(5) $ (\DISPLAY_CONTROLLER_I|Add3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_SYNC_I|vpos\(5),
	datad => \DISPLAY_CONTROLLER_I|Add3~2_combout\,
	combout => \DISPLAY_CONTROLLER_I|Add3~3_combout\);

-- Location: LCCOMB_X28_Y14_N26
\DISPLAY_CONTROLLER_I|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add4~8_combout\ = ((\DISPLAY_CONTROLLER_I|Add3~1_combout\ $ (\DISPLAY_CONTROLLER_I|Add3~3_combout\ $ (!\DISPLAY_CONTROLLER_I|Add4~7\)))) # (GND)
-- \DISPLAY_CONTROLLER_I|Add4~9\ = CARRY((\DISPLAY_CONTROLLER_I|Add3~1_combout\ & ((\DISPLAY_CONTROLLER_I|Add3~3_combout\) # (!\DISPLAY_CONTROLLER_I|Add4~7\))) # (!\DISPLAY_CONTROLLER_I|Add3~1_combout\ & (\DISPLAY_CONTROLLER_I|Add3~3_combout\ & 
-- !\DISPLAY_CONTROLLER_I|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Add3~1_combout\,
	datab => \DISPLAY_CONTROLLER_I|Add3~3_combout\,
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add4~7\,
	combout => \DISPLAY_CONTROLLER_I|Add4~8_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add4~9\);

-- Location: LCCOMB_X28_Y14_N12
\DISPLAY_CONTROLLER_I|Add5~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add5~15_combout\ = (\DISPLAY_CONTROLLER_I|Add4~8_combout\ & (!\DISPLAY_CONTROLLER_I|Add5~13\)) # (!\DISPLAY_CONTROLLER_I|Add4~8_combout\ & ((\DISPLAY_CONTROLLER_I|Add5~13\) # (GND)))
-- \DISPLAY_CONTROLLER_I|Add5~16\ = CARRY((!\DISPLAY_CONTROLLER_I|Add5~13\) # (!\DISPLAY_CONTROLLER_I|Add4~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Add4~8_combout\,
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add5~13\,
	combout => \DISPLAY_CONTROLLER_I|Add5~15_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add5~16\);

-- Location: LCCOMB_X26_Y12_N30
\DISPLAY_CONTROLLER_I|Add9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add9~2_combout\ = (\VGA_SYNC_I|vpos\(4) & ((\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(1)) # ((\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(2)) # (\VGA_SYNC_I|vpos\(3))))) # (!\VGA_SYNC_I|vpos\(4) & 
-- (\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(2) & ((\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(1)) # (\VGA_SYNC_I|vpos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|vpos\(4),
	datab => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(1),
	datac => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(2),
	datad => \VGA_SYNC_I|vpos\(3),
	combout => \DISPLAY_CONTROLLER_I|Add9~2_combout\);

-- Location: LCCOMB_X27_Y14_N14
\DISPLAY_CONTROLLER_I|Add9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add9~3_combout\ = \VGA_SYNC_I|vpos\(5) $ (\DISPLAY_CONTROLLER_I|Add9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNC_I|vpos\(5),
	datad => \DISPLAY_CONTROLLER_I|Add9~2_combout\,
	combout => \DISPLAY_CONTROLLER_I|Add9~3_combout\);

-- Location: LCCOMB_X27_Y14_N8
\DISPLAY_CONTROLLER_I|Add10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add10~8_combout\ = ((\DISPLAY_CONTROLLER_I|Add9~1_combout\ $ (\DISPLAY_CONTROLLER_I|Add9~3_combout\ $ (!\DISPLAY_CONTROLLER_I|Add10~7\)))) # (GND)
-- \DISPLAY_CONTROLLER_I|Add10~9\ = CARRY((\DISPLAY_CONTROLLER_I|Add9~1_combout\ & ((\DISPLAY_CONTROLLER_I|Add9~3_combout\) # (!\DISPLAY_CONTROLLER_I|Add10~7\))) # (!\DISPLAY_CONTROLLER_I|Add9~1_combout\ & (\DISPLAY_CONTROLLER_I|Add9~3_combout\ & 
-- !\DISPLAY_CONTROLLER_I|Add10~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Add9~1_combout\,
	datab => \DISPLAY_CONTROLLER_I|Add9~3_combout\,
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add10~7\,
	combout => \DISPLAY_CONTROLLER_I|Add10~8_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add10~9\);

-- Location: LCCOMB_X27_Y14_N26
\DISPLAY_CONTROLLER_I|Add11~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add11~10_combout\ = (\DISPLAY_CONTROLLER_I|Add10~8_combout\ & (!\DISPLAY_CONTROLLER_I|Add11~9\)) # (!\DISPLAY_CONTROLLER_I|Add10~8_combout\ & ((\DISPLAY_CONTROLLER_I|Add11~9\) # (GND)))
-- \DISPLAY_CONTROLLER_I|Add11~11\ = CARRY((!\DISPLAY_CONTROLLER_I|Add11~9\) # (!\DISPLAY_CONTROLLER_I|Add10~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DISPLAY_CONTROLLER_I|Add10~8_combout\,
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add11~9\,
	combout => \DISPLAY_CONTROLLER_I|Add11~10_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add11~11\);

-- Location: LCCOMB_X26_Y14_N18
\DISPLAY_CONTROLLER_I|Add5~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add5~17_combout\ = (\DISPLAY_CONTROLLER_I|draw~14_combout\ & (((\DISPLAY_CONTROLLER_I|rom_select[1]~2_combout\ & \DISPLAY_CONTROLLER_I|Add11~10_combout\)))) # (!\DISPLAY_CONTROLLER_I|draw~14_combout\ & 
-- (\DISPLAY_CONTROLLER_I|Add5~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|draw~14_combout\,
	datab => \DISPLAY_CONTROLLER_I|Add5~15_combout\,
	datac => \DISPLAY_CONTROLLER_I|rom_select[1]~2_combout\,
	datad => \DISPLAY_CONTROLLER_I|Add11~10_combout\,
	combout => \DISPLAY_CONTROLLER_I|Add5~17_combout\);

-- Location: LCCOMB_X28_Y14_N28
\DISPLAY_CONTROLLER_I|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add4~10_combout\ = (\DISPLAY_CONTROLLER_I|Add4~9\ & (\VGA_SYNC_I|vpos\(5) $ ((!\DISPLAY_CONTROLLER_I|Add3~2_combout\)))) # (!\DISPLAY_CONTROLLER_I|Add4~9\ & ((\VGA_SYNC_I|vpos\(5) $ (\DISPLAY_CONTROLLER_I|Add3~2_combout\)) # (GND)))
-- \DISPLAY_CONTROLLER_I|Add4~11\ = CARRY((\VGA_SYNC_I|vpos\(5) $ (!\DISPLAY_CONTROLLER_I|Add3~2_combout\)) # (!\DISPLAY_CONTROLLER_I|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|vpos\(5),
	datab => \DISPLAY_CONTROLLER_I|Add3~2_combout\,
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add4~9\,
	combout => \DISPLAY_CONTROLLER_I|Add4~10_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add4~11\);

-- Location: LCCOMB_X28_Y14_N14
\DISPLAY_CONTROLLER_I|Add5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add5~18_combout\ = (\DISPLAY_CONTROLLER_I|Add4~10_combout\ & (\DISPLAY_CONTROLLER_I|Add5~16\ $ (GND))) # (!\DISPLAY_CONTROLLER_I|Add4~10_combout\ & (!\DISPLAY_CONTROLLER_I|Add5~16\ & VCC))
-- \DISPLAY_CONTROLLER_I|Add5~19\ = CARRY((\DISPLAY_CONTROLLER_I|Add4~10_combout\ & !\DISPLAY_CONTROLLER_I|Add5~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DISPLAY_CONTROLLER_I|Add4~10_combout\,
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add5~16\,
	combout => \DISPLAY_CONTROLLER_I|Add5~18_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add5~19\);

-- Location: LCCOMB_X27_Y14_N10
\DISPLAY_CONTROLLER_I|Add10~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add10~10_combout\ = (\DISPLAY_CONTROLLER_I|Add10~9\ & (\VGA_SYNC_I|vpos\(5) $ ((!\DISPLAY_CONTROLLER_I|Add9~2_combout\)))) # (!\DISPLAY_CONTROLLER_I|Add10~9\ & ((\VGA_SYNC_I|vpos\(5) $ (\DISPLAY_CONTROLLER_I|Add9~2_combout\)) # 
-- (GND)))
-- \DISPLAY_CONTROLLER_I|Add10~11\ = CARRY((\VGA_SYNC_I|vpos\(5) $ (!\DISPLAY_CONTROLLER_I|Add9~2_combout\)) # (!\DISPLAY_CONTROLLER_I|Add10~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|vpos\(5),
	datab => \DISPLAY_CONTROLLER_I|Add9~2_combout\,
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add10~9\,
	combout => \DISPLAY_CONTROLLER_I|Add10~10_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add10~11\);

-- Location: LCCOMB_X27_Y14_N28
\DISPLAY_CONTROLLER_I|Add11~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add11~12_combout\ = (\DISPLAY_CONTROLLER_I|Add10~10_combout\ & (\DISPLAY_CONTROLLER_I|Add11~11\ $ (GND))) # (!\DISPLAY_CONTROLLER_I|Add10~10_combout\ & (!\DISPLAY_CONTROLLER_I|Add11~11\ & VCC))
-- \DISPLAY_CONTROLLER_I|Add11~13\ = CARRY((\DISPLAY_CONTROLLER_I|Add10~10_combout\ & !\DISPLAY_CONTROLLER_I|Add11~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Add10~10_combout\,
	datad => VCC,
	cin => \DISPLAY_CONTROLLER_I|Add11~11\,
	combout => \DISPLAY_CONTROLLER_I|Add11~12_combout\,
	cout => \DISPLAY_CONTROLLER_I|Add11~13\);

-- Location: LCCOMB_X26_Y14_N24
\DISPLAY_CONTROLLER_I|Add5~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add5~20_combout\ = (\DISPLAY_CONTROLLER_I|draw~14_combout\ & (((\DISPLAY_CONTROLLER_I|rom_select[1]~2_combout\ & \DISPLAY_CONTROLLER_I|Add11~12_combout\)))) # (!\DISPLAY_CONTROLLER_I|draw~14_combout\ & 
-- (\DISPLAY_CONTROLLER_I|Add5~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|draw~14_combout\,
	datab => \DISPLAY_CONTROLLER_I|Add5~18_combout\,
	datac => \DISPLAY_CONTROLLER_I|rom_select[1]~2_combout\,
	datad => \DISPLAY_CONTROLLER_I|Add11~12_combout\,
	combout => \DISPLAY_CONTROLLER_I|Add5~20_combout\);

-- Location: LCCOMB_X28_Y14_N30
\DISPLAY_CONTROLLER_I|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add4~12_combout\ = !\DISPLAY_CONTROLLER_I|Add4~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \DISPLAY_CONTROLLER_I|Add4~11\,
	combout => \DISPLAY_CONTROLLER_I|Add4~12_combout\);

-- Location: LCCOMB_X28_Y14_N16
\DISPLAY_CONTROLLER_I|Add5~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add5~21_combout\ = \DISPLAY_CONTROLLER_I|Add4~12_combout\ $ (\DISPLAY_CONTROLLER_I|Add5~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Add4~12_combout\,
	cin => \DISPLAY_CONTROLLER_I|Add5~19\,
	combout => \DISPLAY_CONTROLLER_I|Add5~21_combout\);

-- Location: LCCOMB_X27_Y14_N12
\DISPLAY_CONTROLLER_I|Add10~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add10~12_combout\ = !\DISPLAY_CONTROLLER_I|Add10~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \DISPLAY_CONTROLLER_I|Add10~11\,
	combout => \DISPLAY_CONTROLLER_I|Add10~12_combout\);

-- Location: LCCOMB_X27_Y14_N30
\DISPLAY_CONTROLLER_I|Add11~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add11~14_combout\ = \DISPLAY_CONTROLLER_I|Add11~13\ $ (\DISPLAY_CONTROLLER_I|Add10~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DISPLAY_CONTROLLER_I|Add10~12_combout\,
	cin => \DISPLAY_CONTROLLER_I|Add11~13\,
	combout => \DISPLAY_CONTROLLER_I|Add11~14_combout\);

-- Location: LCCOMB_X26_Y14_N2
\DISPLAY_CONTROLLER_I|Add5~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Add5~23_combout\ = (\DISPLAY_CONTROLLER_I|draw~14_combout\ & (((\DISPLAY_CONTROLLER_I|rom_select[1]~2_combout\ & \DISPLAY_CONTROLLER_I|Add11~14_combout\)))) # (!\DISPLAY_CONTROLLER_I|draw~14_combout\ & 
-- (\DISPLAY_CONTROLLER_I|Add5~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Add5~21_combout\,
	datab => \DISPLAY_CONTROLLER_I|draw~14_combout\,
	datac => \DISPLAY_CONTROLLER_I|rom_select[1]~2_combout\,
	datad => \DISPLAY_CONTROLLER_I|Add11~14_combout\,
	combout => \DISPLAY_CONTROLLER_I|Add5~23_combout\);

-- Location: M9K_X25_Y8_N0
\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a8\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFBFFEBFFFFFFFFFFF777FFEBAAAAAFFFFFFFFFFFD7FD7FBABFFFFABBFFFFFFFFFF7F71BFFAFFFFAFFFFFFFFFF57562DFFFAFFFFAFFFFFFFFF57",
	mem_init1 => X"FFB7FFFFAFFFEBFFFFFFFFFF4C55F7FFFBFFFAFFFFFFFFF5E157FD7FFEFFFEEFFFFFFFF5FF55757FFFBFFFBFFFFFFFFD6FD7FDFDFFEFFFBFFFFFFFFEB7F7DFDFFFFBFFEFFFFFFFFF97EC5F7D5FFEFFEEFFFFFFFFF76A57FDF7FEFFFAFFFFFFFFFFA83DD577FFBFFBFFFFFFFAFFEAD5FF5FFFBFFBFFFFFFFAFFFE7D7FD57FFFFBFFFFFFFAFFBBFDFDF5FFEFFBFFFFFFFAFEA8FFFFF57FEFFBFFFFFFFEFA02BFFFF5FFEFFBFFFFFFFEFA2AAFFF75FFEFFAFFFFFFFFF8822FFFFFFFEFFBFFFFFFFEFEAAAFFFFFFFEFEFFFFFFFFFBEEABFFFFFFFEFEFFFFFFFFFFFAFEFFFFFFFEFAFFFFFEFFFAEAAEBFFFFFFEFBFFFFFFFFFEABFEABFFFFFEEEFFFFFEFFEFBFBFAEF",
	mem_init0 => X"FFFFBABFFFFFEBFFEAFEEEBBFFFFAAFFFFEFFFFFFFFFFFBBFFFFABFFFFEFFFFFFFAFEFEFFFFEEFFFFFFFEBBFAAAEFBBBFFFBBFFFFFFFEAFFFEEBFF8FFEBBFFFFFEFFFAFEEBABBE97FFBFFFFFFAFEFFEFAEDFAF88BFFFFFFFFFBFFFFAEBE3FEFFFFFFFFFFFFEFFFEABEE7FF75FFFFFFFFFFBBFFEBA29FFF577FFFFFFFFFABFFFEC6E5F555FFFFFFFFFEABFFFAFAEA9555DFFFFFFFEFBEFEECBFFFDF55FFFFFFFFBFEEAEAAFDFD7F55FFFFFFFFFFFBEBFFAFF57F57FFFFFFFFFFFFFBEDD7F57F77FFFFFFFFFFFFBEFD77F57FFFFFFFFFFFFFFFFBFFFD5755FFFFFFFFFFFFFFFFFFFFF7FD7FFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./res/bomb48.mif",
	init_file_layout => "port_a",
	logical_ram_name => "display_controller:DISPLAY_CONTROLLER_I|bomb_rom:BOMB_ROM_I|altsyncram:altsyncram_component|altsyncram_dbs3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X26_Y14_N0
\DISPLAY_CONTROLLER_I|rom_select[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\ = (\DISPLAY_CONTROLLER_I|draw~14_combout\ & ((!\DISPLAY_CONTROLLER_I|rom_select[1]~2_combout\) # (!\DISP_MEM_I|altsyncram_component|auto_generated|q_b\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|draw~14_combout\,
	datab => \DISP_MEM_I|altsyncram_component|auto_generated|q_b\(0),
	datac => \DISPLAY_CONTROLLER_I|rom_select[1]~2_combout\,
	combout => \DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\);

-- Location: LCCOMB_X24_Y15_N28
\DISPLAY_CONTROLLER_I|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Mux3~0_combout\ = (!\DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\ & ((\DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\ & ((\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(8)))) # 
-- (!\DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\ & (\DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\,
	datab => \DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(8),
	datac => \DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\,
	datad => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(8),
	combout => \DISPLAY_CONTROLLER_I|Mux3~0_combout\);

-- Location: M9K_X25_Y19_N0
\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a11\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFD7FFD6AAFFFFFFFFFFFFFFD7FFFEAA82AAFFFFFFFFFFFDFFD54002AA2AAFFFFFFFFFDFF55400000AA2ABFFFFFFFF7F5550000000A8AAFFFFFFFFF55",
	mem_init1 => X"5400000000AAABFFFFFFFD5550000000002AAAFFFFFFD555400000000002AABFFFFF5555400000000000AAAFFFFD55550000000000002AAFFF7D555500028000000028ABFDF555540057800000000A2BFFD55554007FA800000002ABF7D5555402FFEA800000028BFF55555402B7CA80000000AADF5555542A8782A8000000A2DD5555542A5680A800000022FD5555542957C0280000002AFD5555542557C0080000002A755555542D57D02000000009755555542957D00000000009F55555540B57D0000000000BF55555550AFFD0000000000BF555555502BFC8000000000FF55555554022AA800000000FF55555554002AAA00000001FF5555555500280A0",
	mem_init0 => X"0000005F75555555500280280000005D75555555580280280000015DFD555555700280080000157FFD555555781780280000557FDD5555557E5780A800055577DF5555557BD682A8015555F7FF55555007F28AD5555555FFF7D5555557EBAFD5555557DFFFD55555552FFD55555557FFFDF555555057D55555555F7FFF7D55555557D55555557DFFFFFD55555555555555557FFFFFFF5555555555555555FFFFFFFFD555555555555557FFFFFFFFFD5555555555557FFFFFFFFFFF555555555555FFFFFFFFFFF7F5555555555FDFFFFFFFFFFDFF55555555FF7FFFFFFFFFFFDFFD55557FF7FFFFFFFFFFFFFD7FFFFFFD7FFFFFFFFFFFFFFFFD7FFD7FFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./res/bomb48.mif",
	init_file_layout => "port_a",
	logical_ram_name => "display_controller:DISPLAY_CONTROLLER_I|bomb_rom:BOMB_ROM_I|altsyncram:altsyncram_component|altsyncram_dbs3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y15_N22
\DISPLAY_CONTROLLER_I|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Mux3~1_combout\ = (\DISPLAY_CONTROLLER_I|Mux3~0_combout\) # ((!\DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\ & (\DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\ & 
-- \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\,
	datab => \DISPLAY_CONTROLLER_I|Mux3~0_combout\,
	datac => \DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\,
	datad => \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(8),
	combout => \DISPLAY_CONTROLLER_I|Mux3~1_combout\);

-- Location: M9K_X25_Y15_N0
\DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a11\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF555FFFFFFFFFFFFFFFFFFFFF57D5FFFFFFFFFFFFFFFFFFFFDFFD57FFFFFFFFFFFFFFFFFFDF",
	mem_init1 => X"D5557FFFFFFFFFFFFFFFFFD7D5555FFFFFFFFFFFFFFFFFFFFD5555FFFFFFFFFFFFFFFFFFFF55557FFFFFFFFFFFFFFFFFFFF55FFFFFFFFFFFFFFFFFFFDFF55FFDFFFFFFFFFFFFFFFFF7FD57D57FFFFFFFFFFFFFFFFDFD57D55FFFFFFFFFFFFFFFFFFF57F557FFFFFFFFFFFFFFFFFF55FD55FFFFFFFFFFFFFFFFFF55FD55FFFFFFFFFFFFFFFFFFFFFF557FFFFFFFFFFFFFFFFFFFFF557FFFFFFFFFFFFFFFF5FFFD55FFFFFFFFFFFFFFFD557FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./res/coin48.mif",
	init_file_layout => "port_a",
	logical_ram_name => "display_controller:DISPLAY_CONTROLLER_I|coin_rom:COIN_ROM_I|altsyncram:altsyncram_component|altsyncram_mbs3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y15_N8
\DISPLAY_CONTROLLER_I|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Mux0~0_combout\ = (!\DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\ & ((\DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\ & (\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(11))) # 
-- (!\DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\ & ((\DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\,
	datab => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(11),
	datac => \DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(11),
	datad => \DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\,
	combout => \DISPLAY_CONTROLLER_I|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y15_N10
\DISPLAY_CONTROLLER_I|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Mux0~1_combout\ = (\DISPLAY_CONTROLLER_I|Mux0~0_combout\) # ((!\DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\ & (\DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\ & 
-- \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\,
	datab => \DISPLAY_CONTROLLER_I|Mux0~0_combout\,
	datac => \DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\,
	datad => \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(11),
	combout => \DISPLAY_CONTROLLER_I|Mux0~1_combout\);

-- Location: M9K_X25_Y11_N0
\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a10\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFEBABBFFFFFFFFFFFFFFFFFFAAAAAABFFFFFFFFFFFFFF7FAAAAAAAABFFFFFFFFFFFD7F7AAAAAAAAAAFFFFFFFFF7FD7AAAAAAAAAAABFFFFFFFF7F",
	mem_init1 => X"7EAAAAAAAAAAAAFFFFFFFFFFFAAAA2AAAAAAAABFFFFFFFD7F2AAAAAAAAAAAABFFFFFFFF52AAA8A8AAAAAAABFFFFFFFFD2A880202AAAAAAAFFFFFFFFF2AA802AAAAAAAAAFFFFFFFFFA8B40A82AAAAAAABFFFFFFFEAAFD42A20AAAAAABFFFFFFFEAAFD80AA8AAAAAAAFFFFFFFEAAFDAAA0A2AAAAABFFFFFFFAAABAAAAA2A2AAAAAFFFFFFFAABFF80280AAAAAAAFFFFFFFAAFF7AAA80AAAAAAAFFFFFFFAABDFFAAA0A2AAAABFFFFFFFEABFFFAAAAAAAAAAAFFFFFFFEAFFF7AAAAAAAAAAAFFFFFFFFABFFFAAAAAAAAAABFFFFFFFEABFFEAAAAAAAAAAFFFFFFFFFAAEFBAAAAAAAAAABFFFFFFFFAAAAAAAAAAAAAAAFFFFFEFFFFAAAAAAAAAAAAABFFFFFEFFFFAAAAAAA",
	mem_init0 => X"AAAAAABFFFFFEFFEFAAAAAAAAAAAABFFFFFFEFFBEAAAAAAAAAAAAFFFFFFFFFFBEABEAAAAAAAAAFFFFFFBFFFFFAAAAAAAAAAAFFFFFFFFBFFEFABAAAAAAAABFFFFFFFFFFFBEABBAAAAAEFFFFFFFFFFFFFFBBAEAAF7FFFFFFFFFFFFFFEA8EBEFBF5FFFFFFFFFEBFFFFACAFFFDD7FFFFFFFFFFFFFFFEAEBFFD55FFFFFFFFFFFFFFFFFAFFF555FFFFFFFFFFFFFFFFFFFFF5557FFFFFFFFBFFFFFFFFFFD5557FFFFFFFFFFBFFFFBF555555FFFFFFFFFFEFBFFFFFFFD555FFFFFFFFFFFFBFFFFFFFD55FFFFFFFFFFFFFFFFFFFFFD57FFFFFFFFFFFFFFEFFFFFD557FFFFFFFFFFFFFFEFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./res/bomb48.mif",
	init_file_layout => "port_a",
	logical_ram_name => "display_controller:DISPLAY_CONTROLLER_I|bomb_rom:BOMB_ROM_I|altsyncram:altsyncram_component|altsyncram_dbs3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y15_N24
\DISPLAY_CONTROLLER_I|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Mux1~0_combout\ = (!\DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\ & ((\DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\ & ((\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(10)))) # 
-- (!\DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\ & (\DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\,
	datab => \DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(10),
	datac => \DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\,
	datad => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(10),
	combout => \DISPLAY_CONTROLLER_I|Mux1~0_combout\);

-- Location: M9K_X13_Y13_N0
\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a9\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFBAABAFFFFFFFFFFFFFFFFFFFFFFFFBBFFFFFFFFFFFFFFFEFEAAAAFFFFFFFFFFFFFFFFEFFFFAAAAFBFFFFFFFFFFFFEFFFFFFAAAAFBFFFFFFFFFF",
	mem_init1 => X"FAFFFFFFFAAABEFFFFFFFFFFFFFFFFFFFEAAAFFFFFFFFFFFFFFFFFFFFFAAABBFFFFFFFFFEFFFFFFFFFEAAAFFFFFFFFFFFFFFFFFFFFFAAAEBFFFFFFFEFFFFFFFFFFFEAABFFFFFFFFFFFB87FFFFFFFAABBFFFFFFFEFFBD3FFFFFFFAAAEFFFFFFFAFF1555FFFFFFEAAEFFFFFFFBFD5D357FFFFFEAAFFFFFFFFFF5FD7F5FFFFFEAAEFFFFFFFFD7A97FD7FFFFFAAEFFFFFFFFD3FD3FD7FFFFFAAEFFFFFFFFDFFD7FF7FFFFFAAEFFFFFFFBD7FD6FFFFFFFFAAEFFFFFFFED7FD7FFFFFFFFAAFFFFFFFFFF4FD7FFFFFFFFABAFFFFFFFFF41D7FFFFFFFFABBFFFFEFFFBF106FFFFFFFFAFFFFFFEFFFFFA815FFFFFFFAFFFFFFFFFFEEFC215FFFFFFBAFFFFFFFFFEAFC7A1F",
	mem_init0 => X"FFFFEFBFFFFFFFFFEBF97A87FFFFFFFFFFFFFBFEEBFD6A87FFFFFFFFFFEBEBEFDBE87AA3FFFFAFFFFFFEBBEBD3FD3E87FFFFBFFFFFFAFBABD2AD3E97FFFFFFFFEBFEFAEFF0EC7E0AAABFFFFFFEAAFFFEB85C717FFFFFFFFFFFBFFFFABB5451FFFFFFFFFFFFFFFFFFBFBD7FFFFFFFFFFFFFEBFFFBFEFD7FFFFFFFFFFFFFEFFFFFAFBFFFFFFFFFFFFFFEAAFFFEAFAAFFFFFFFFFFFFEEFBFFAAFFFFFFFFFFFFFFFFFFFEAABEFFFFFFFFFFFFFFFFFFFFFAAFEFFFFFFFFFFFFFFFFFFFFAFFFFFFFFFFFFFFFFFFFFFFFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./res/bomb48.mif",
	init_file_layout => "port_a",
	logical_ram_name => "display_controller:DISPLAY_CONTROLLER_I|bomb_rom:BOMB_ROM_I|altsyncram:altsyncram_component|altsyncram_dbs3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y15_N14
\DISPLAY_CONTROLLER_I|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Mux1~1_combout\ = (\DISPLAY_CONTROLLER_I|Mux1~0_combout\) # ((\DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\ & (\DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(10) & 
-- !\DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\,
	datab => \DISPLAY_CONTROLLER_I|Mux1~0_combout\,
	datac => \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(10),
	datad => \DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\,
	combout => \DISPLAY_CONTROLLER_I|Mux1~1_combout\);

-- Location: M9K_X25_Y16_N0
\DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a9\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFEAABFFFFFFFFFFFFFFFFD5EAAAAAABFFFFFFFFFFFFFFD029FFFFEAAFFFFFFFFFFFFDAA7D5FFFFFAAFFFFFFFFFFFC2F57DDFFFFFABFFFFFFFFFEA77",
	mem_init1 => X"FFFDDFFFFFABFFFFFFFFAB7FF7FF5FFFFFEAFFFFFFFEBFF5FD55577FFFFEBFFFFFFAFFFDFDD5755FFFFFAFFFFFEBFFFF5FD7F7DFFFFFEBFFFFEBFFFFF7FEBFF57FFFEBFFFFAFFFFFDFFFF77D5FFFFAFFFEBFFFFFFFEBE9FDF7FFFEBFFEBFFFFFFEFD7FB575FFFEBFFAFFFFFFFBFB45EF5DFFFFAFFAFFFFFFEFBDD479D5FFFFAFFBFFFFFFFEFFF7BFF57FFFEFEBFFFFFFFFFDFFFDF57FFFEBEBFFFFFFF95FFFE5F57FFFEBEFFFFFFFFF55FFEBD7FFFFFBEFFFFFFFFFFDFFFFFFFFFFFBAFFFFFFFEFFFFFFFFFFFFFFAAFFFFFFFFFFBFFFFFFFFFFFAAFFFFFFFFEFFEBFFFFFFFFFAAFFFFFFFFFEBFFBFFFFFFFFAAFFFFFFFFFFFEFFFFFFFFFFAAFFFFFFFFFFFFFFB",
	mem_init0 => X"FFFFFFFAEFFFFFFFFFFFFFFFFFFFFFFBEFFFFFFFEBFFFFFFFFFFFFFBEBFFFFFFFBFFFFEFFFFFFFEBEBFFFFFFFFFFFFFFFFFFFFEBFBFFFFFFFEFFFFBFFFFFFFEFFAFFFFFFEFBFFED3FFFFFFAFFAFFFFFFDBFBEFE5FFFFFFAFFEBFFFFFFEDFFDB5FFFFFEBFFEBFFFFFFFCBE97DFFFFFEBFFFAFFFFFFFFF75FDFFFFFAFFFFEBFFFF7FFEBFFF7FFFEBFFFFEBFFFFFFFFDFFFFFFFEBFFFFFAFFFFFFFFFFFF7FFFAFFFFFFEBFFD55FFFFFF7FFEBFFFFFFFABFD55557FFFFFEAFFFFFFFFEAFF7D557FD7FFABFFFFFFFFFEAFD5557FFFFABFFFFFFFFFFFAAFF57FF7FAAFFFFFFFFFFFFFAABDFFF6AAFFFFFFFFFFFFFFFEAAAAAABFFFFFFFFFFFFFFFFFFEAABFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./res/coin48.mif",
	init_file_layout => "port_a",
	logical_ram_name => "display_controller:DISPLAY_CONTROLLER_I|coin_rom:COIN_ROM_I|altsyncram:altsyncram_component|altsyncram_mbs3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y16_N4
\DISPLAY_CONTROLLER_I|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Mux2~0_combout\ = (!\DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\ & ((\DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\ & ((\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(9)))) # 
-- (!\DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\ & (\DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\,
	datab => \DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(9),
	datac => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(9),
	datad => \DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\,
	combout => \DISPLAY_CONTROLLER_I|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y16_N10
\DISPLAY_CONTROLLER_I|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Mux2~1_combout\ = (\DISPLAY_CONTROLLER_I|Mux2~0_combout\) # ((\DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\ & (!\DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\ & 
-- \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\,
	datab => \DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\,
	datac => \DISPLAY_CONTROLLER_I|Mux2~0_combout\,
	datad => \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(9),
	combout => \DISPLAY_CONTROLLER_I|Mux2~1_combout\);

-- Location: LCCOMB_X28_Y18_N4
\DISPLAY_CONTROLLER_I|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Equal2~0_combout\ = (((!\DISPLAY_CONTROLLER_I|Mux2~1_combout\) # (!\DISPLAY_CONTROLLER_I|Mux1~1_combout\)) # (!\DISPLAY_CONTROLLER_I|Mux3~1_combout\)) # (!\DISPLAY_CONTROLLER_I|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Mux0~1_combout\,
	datab => \DISPLAY_CONTROLLER_I|Mux3~1_combout\,
	datac => \DISPLAY_CONTROLLER_I|Mux1~1_combout\,
	datad => \DISPLAY_CONTROLLER_I|Mux2~1_combout\,
	combout => \DISPLAY_CONTROLLER_I|Equal2~0_combout\);

-- Location: M9K_X25_Y18_N0
\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a3\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000555555555555554005555555555555FDF555400000055555555557FFF5D4000000005555555557FDFFE0000000001555555555F77FAA000000000555555557F7",
	mem_init1 => X"7EAAA800000001555555557DFAAAA200000000555555555D62AAAAA00000001555555577CA0A0008000000055555555D80802A8000000005555555572020A2000000000155555554287FA2022000000155555554025FA2000800000155555554005D4A000000000155555554009DE2800000000055555554008FA88200800000555555F402DC20A20000000055555FFE03DDC000002000005555577C05FF6A0A00800000555555F4077FF8802A0000015555557C015DD00000000001555555540355D800000000015555555700575080000000015555557D80156020000000055555555F48A82A800000000555554557C0A8208000000015555545555A800200",
	mem_init0 => X"0000005555554555582AA800000000555555455552AA000000000155555545517A8A880000001555555145457A82A00000005555555401075402AAA000055555555400035000A80801555555540400022220007F5555555555000002AA2905FF55555555550000008AA5557F5555555555500002A2D5DFFF555555555540000202D557FF5555555555040001FFD55D7FD5555555555400007D55D57FD5555555555100171755557FD5555555555511575555557F5555555555555557755555FD5555555555555557D55555D5555555555555555557555FD55555555555555555557557D555555555555555555555555555555555555555555555555555555555",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./res/bomb48.mif",
	init_file_layout => "port_a",
	logical_ram_name => "display_controller:DISPLAY_CONTROLLER_I|bomb_rom:BOMB_ROM_I|altsyncram:altsyncram_component|altsyncram_dbs3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y9_N0
\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a5\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008AAAA200000000000000008AAAAABFF750000000000008AA000540AA2500000000000A8000555502A05000000000A800015555502A040000000AA00",
	mem_init1 => X"0055555550AA14000002A00001555555540A8400000A8000055555555502A100002A0000055555555540A84000280000155555555550284000A000001555555555540A1000A000005510555555540A100A800000551D3555555502A402000000571555D5555500842A0000015D7D3D75555540AC0800000155D557555555402428000001770155DD5555502C28000001515515555555502CA00000015D5555755555500E200000015D55457D5555500CA0000000555555555555500EA0000000765555555555501AA00000005C3D55555555501AA000000017106D555555500AA0000000152815D55555504AA0000000045429755555410AA00000000054509D",
	mem_init0 => X"5555450AA0000000015150055555540A200010002955402555555008A0000000095050215555000A280010000140140555540028280144502250149D550000280800405000905600000000202B044510092C7820000000A80255005006000080000000800AC0000540082000000002A000A100004000000000000A0000B500055000000000000A00007C00500000000000002800002B5414000000000000A800000A9140000000000002A0000002E40000000000000A80000000AA000000000000AA000000000A800000000002A00000000000A8000000002A0000000000008AA000000AA200000000000008AAAAAAAA200000000000000008AAAA2000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./res/bomb48.mif",
	init_file_layout => "port_a",
	logical_ram_name => "display_controller:DISPLAY_CONTROLLER_I|bomb_rom:BOMB_ROM_I|altsyncram:altsyncram_component|altsyncram_dbs3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: LCCOMB_X26_Y15_N4
\DISPLAY_CONTROLLER_I|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Mux6~0_combout\ = (\DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\ & ((\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(5)) # ((\DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\)))) # 
-- (!\DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\ & (((\DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(5) & \DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(5),
	datab => \DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\,
	datac => \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(5),
	datad => \DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\,
	combout => \DISPLAY_CONTROLLER_I|Mux6~0_combout\);

-- Location: LCCOMB_X27_Y18_N22
\DISPLAY_CONTROLLER_I|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Mux6~1_combout\ = (\DISPLAY_CONTROLLER_I|Mux6~0_combout\) # ((\DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(5) & !\DISPLAY_CONTROLLER_I|draw~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(5),
	datac => \DISPLAY_CONTROLLER_I|draw~14_combout\,
	datad => \DISPLAY_CONTROLLER_I|Mux6~0_combout\,
	combout => \DISPLAY_CONTROLLER_I|Mux6~1_combout\);

-- Location: M9K_X13_Y14_N0
\DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a3\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFEAABFFFFFFFFFFFFFFFFFFEAAAAAABFFFFFFFFFFFFFF500AAAAAAAAFFFFFFFFFFFFF00002AAAAAAAFFFFFFFFFFFE000002AAAAAABFFFFFFFFFEA80",
	mem_init1 => X"00002AAAAAABFFFFFFFFAA8000000AAAAAAAFFFFFFFEAAA8800000AAAAAABFFFFFFAAAAA2000002AAAAAAFFFFFEAAAAA8A000002AAAAABFFFFEAAAAA82800000AAAAABFFFFAAAAAAA08000002AAAAAFFFEAAAAAAA8A000800AAAAABFFEAAAAAAAAA000A002AAAABFFAAAAAAAAAA000A000AAAAAFFAAAAAAAAAA2002800AAAAAFFAAAAA2AAAA2A008002AAAAFEAAAAA2AAAAAAAA8002AAAABEAAAAA0AAAAAAAA800AAAAABEAAAAAAAAAAAAAAAAAAAAAABEAAAAAAAAAAAAAAAAAAAAAABAAAAAA8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA2AAAAAAAAAAAAAAAAAAAAAAAA82AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA2AA",
	mem_init0 => X"AAAAAAAAEAAAAAAAAA800AAAAAAAAAABEAAAAAAAAA002AAAAAAAAAABEAAAAAAAAAA00AAAAAAAAAABEAAAAAAAAAA80AAAAAAAAAABFAAAAAAAAAA8002AAAAAAAAFFAAAAAAAAAAA000AAAAAAAAFFAAAAAAAAAAAA082AAAAAAAFFEAAAAAA8A8AA800AAAAAABFFEAAAAAA8AAAA802AAAAAABFFFAAAAAAAAAAA000AAAAAAFFFFEAAAAAAAAAA000AAAAABFFFFEAAAAAAAAA8000AAAAABFFFFFAAAAAAAAA80002AAAAFFFFFFEAAAA00000000AAAABFFFFFFFAAAA00000002AAAAFFFFFFFFEAAA0000000AAAABFFFFFFFFFEAAA000002AAABFFFFFFFFFFFAAAA00002AAAFFFFFFFFFFFFFAAAA2AAAAAFFFFFFFFFFFFFFFEAAAAAABFFFFFFFFFFFFFFFFFFEAABFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./res/coin48.mif",
	init_file_layout => "port_a",
	logical_ram_name => "display_controller:DISPLAY_CONTROLLER_I|coin_rom:COIN_ROM_I|altsyncram:altsyncram_component|altsyncram_mbs3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y15_N18
\DISPLAY_CONTROLLER_I|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Mux11~0_combout\ = (!\DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\ & ((\DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\ & (\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(3))) # 
-- (!\DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\ & ((\DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\,
	datab => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(3),
	datac => \DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\,
	datad => \DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(3),
	combout => \DISPLAY_CONTROLLER_I|Mux11~0_combout\);

-- Location: LCCOMB_X24_Y15_N0
\DISPLAY_CONTROLLER_I|Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Mux11~1_combout\ = (\DISPLAY_CONTROLLER_I|Mux11~0_combout\) # ((\DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\ & (\DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(3) & 
-- !\DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\,
	datab => \DISPLAY_CONTROLLER_I|Mux11~0_combout\,
	datac => \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(3),
	datad => \DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\,
	combout => \DISPLAY_CONTROLLER_I|Mux11~1_combout\);

-- Location: M9K_X25_Y7_N0
\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a7\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002A0000000000000000000000AAAA00000000000000000002AAAAA0000000000000000002AAAAAA000000000000000000AA",
	mem_init1 => X"AAAAA00000000000000000AAAAAAA800000000000000002AAAAAAA80000000000000000AAAAAAAA00000000000000002AAAAAAAA0000000000000000AAAAAAAA80000000000000002AFFAAAAA0000000000000000AFFAAAAA80000000000000000FFEAAAAA0000000000000000BFEAAAAA0000000000000002AFAAAAAA8000000000008002FC2AAAAA8000000000028003FFEAAAAA800000000000A007FFEAAAAA800000000000A005FFFA0000000000000000A003FF5000000000000000002803FFF000000000000000002802FFFA80000000000000000A02BFCAA00000000000000002A2AA82800000000000000000AAAAAA0000000000000000002AAAA800",
	mem_init0 => X"000000000000000002AAA00000000000000000000AAA80000000000000000000282AA0000000000000000000A03FAA000000000000001000AABFAA800000000000005040ABFEAAA00000000000005542AFFAAAA000000000001555429FEAAAA00000000000155552FFAAA8800000000000015552BAAAA8000000000000015556AAAAA0000000000000005556AAAAA0000000000000005502AAAA80000000000000000000A800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./res/bomb48.mif",
	init_file_layout => "port_a",
	logical_ram_name => "display_controller:DISPLAY_CONTROLLER_I|bomb_rom:BOMB_ROM_I|altsyncram:altsyncram_component|altsyncram_dbs3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y15_N20
\DISPLAY_CONTROLLER_I|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Mux4~0_combout\ = (!\DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\ & ((\DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\ & (\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(7))) # 
-- (!\DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\ & ((\DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\,
	datab => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(7),
	datac => \DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(7),
	datad => \DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\,
	combout => \DISPLAY_CONTROLLER_I|Mux4~0_combout\);

-- Location: M9K_X25_Y6_N0
\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a6\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002AAAA800000000000000002AAAAAAAA800000000000002AAAAAAAAAA8000000000002AAAAAAAAAAAA80000000000AAAAAAAAAAAAAA0000000002AAA",
	mem_init1 => X"AAAAAAAAAAA800000000AAAAAAAAAAAAAAAA00000002AAAAAAAAAAAAAAAA8000000AAAAAAAAAAAAAAAAAA000002AAAAAAAAAAAAAAAAAA80000AAAAAAAAAAAAAAAAAAAA0002AAAAAAAABEAAAAAAAAAA8002AAAAAAAAFFEAAAAAAAAA800AAAAAAAAAFFAAAAAAAAAAA00AAAAAAAAAFFAAAAAAAAAAA02AAAAAAAAABAAAAAAAAAAAA82AAAAAAAABFFAAAAAAAAAAA82AAAAAAAAFFFAAAAAAAAAAA82AAAAAAAABFFFAAAAAAAAAA8AAAAAAAAABFFFAAAAAAAAAAAAAAAAAAAAFFFFAAAAAAAAAAAAAAAAAAAABFFFAAAAAAAAAAAAAAAAAAAABFFEAAAAAAAAAAAAAAAAAAAAAEFBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init0 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA2AAABAAAAAAEAAAAAAAAAAA82AAABABAAAAAAAAAAAAAAAA82AABAAFAAAEAAAAAAAAAAAA82AABBFBAAAABAAAAAAAAAAA80AFABAFABAAEAAAAAAAAAAA00AAAFFAAEABAAAAAAAAAAAA002AFFFEBAAEAAAAAAAAAAA8002AEFFEFEEAAAAAAAAAAAA8000AEFFFBEAAAAAAAAAAAAA00002BFFAAAAAAAAAAAAAAA800000BAAEFAAAAAAAAAAAAA0000002EEAAAAAAAAAAAAAA80000000AAAAAAAAAAAAAAAA000000002AAAAAAAAAAAAAA8000000000AAAAAAAAAAAAAA00000000002AAAAAAAAAAAA8000000000002AAAAAAAAAA800000000000002AAAAAAAA800000000000000002AAAA8000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./res/bomb48.mif",
	init_file_layout => "port_a",
	logical_ram_name => "display_controller:DISPLAY_CONTROLLER_I|bomb_rom:BOMB_ROM_I|altsyncram:altsyncram_component|altsyncram_dbs3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y15_N26
\DISPLAY_CONTROLLER_I|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Mux4~1_combout\ = (\DISPLAY_CONTROLLER_I|Mux4~0_combout\) # ((\DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\ & (\DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(7) & 
-- !\DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\,
	datab => \DISPLAY_CONTROLLER_I|Mux4~0_combout\,
	datac => \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(7),
	datad => \DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\,
	combout => \DISPLAY_CONTROLLER_I|Mux4~1_combout\);

-- Location: M9K_X25_Y22_N0
\DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a6\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001400001400000000000000808000000000000000000002AAAD55555000000000000000ABFFDD555540000000000010BDFFFDD55554040000000040FD",
	mem_init1 => X"FFFFD555550100000001057F7FFFFF55555040000004157FDFFFFF55555410000010555FF5FFFFFD5555040000415557FF7FD57D5555410000055555FFDF55FF55555000000555555FD415FFD55550000015555557F005FFF55554000055555556A2A0BFFD5555000055555552A2A82FFFD555000155555550B4BE2DFF5555400155577540F69F09FFD555404155557D41F43FEBFFD55541455557DD4154BFE1FF55555105555555435415C1FF5555500555555541F4955555555550055555F540FE1F55555555500555555F52AABF755555555005555557D6AA03D55555555005555555DFEA883555555550055555557FFE8A8555555550055555555FFEBF01",
	mem_init0 => X"55555550055555555FD41D41555555500555555541543541555555504555555543D4154155555551415555554BD415C15555554101555555EAFC15015555554001555557FABE16855555554000555555DA8AAA855555550000555555FE82A8155555550000155557DFDAAF755555540000055555FFFE35555555500000055555FFFFFD555555500000415557FFFFD7D55555410000105555FFFF7FD5555504000004155557FFFFD55554100000010555FFFFFFD55550400000004055FFFFFF5555010000000010157FFFFF55540400000000000155FFF5554000000000000000055D555000000000000000000000000000000000000000001400001400000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./res/coin48.mif",
	init_file_layout => "port_a",
	logical_ram_name => "display_controller:DISPLAY_CONTROLLER_I|coin_rom:COIN_ROM_I|altsyncram:altsyncram_component|altsyncram_mbs3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y15_N12
\DISPLAY_CONTROLLER_I|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Mux5~0_combout\ = (\DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\ & (((\DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\) # (\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(6))))) # 
-- (!\DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\ & (\DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(6) & (\DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\,
	datab => \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(6),
	datac => \DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\,
	datad => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(6),
	combout => \DISPLAY_CONTROLLER_I|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y18_N28
\DISPLAY_CONTROLLER_I|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Mux5~1_combout\ = (\DISPLAY_CONTROLLER_I|Mux5~0_combout\) # ((!\DISPLAY_CONTROLLER_I|draw~14_combout\ & \DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DISPLAY_CONTROLLER_I|Mux5~0_combout\,
	datac => \DISPLAY_CONTROLLER_I|draw~14_combout\,
	datad => \DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(6),
	combout => \DISPLAY_CONTROLLER_I|Mux5~1_combout\);

-- Location: LCCOMB_X27_Y18_N20
\DISPLAY_CONTROLLER_I|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Equal2~1_combout\ = (\DISPLAY_CONTROLLER_I|Mux6~1_combout\) # (((\DISPLAY_CONTROLLER_I|Mux4~1_combout\) # (\DISPLAY_CONTROLLER_I|Mux5~1_combout\)) # (!\DISPLAY_CONTROLLER_I|Mux11~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Mux6~1_combout\,
	datab => \DISPLAY_CONTROLLER_I|Mux11~1_combout\,
	datac => \DISPLAY_CONTROLLER_I|Mux4~1_combout\,
	datad => \DISPLAY_CONTROLLER_I|Mux5~1_combout\,
	combout => \DISPLAY_CONTROLLER_I|Equal2~1_combout\);

-- Location: M9K_X25_Y21_N0
\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a2\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFEBABBFFFFFFFFFFFF777FFFAAAAAABFFFFFFFFFFD75D7FAAAAAAAABFFFFFFFFFFDD5FDAAAAAAAAAAFFFFFFFFFD57F28AAAAAAAAABFFFFFFFF57",
	mem_init1 => X"DE82AAAAAAAAAAFFFFFFFFFF5AA0A2AAAAAAAABFFFFFFFF75000A02AAAAAAABFFFFFFFF58AAAAAAAAAAAAABFFFFFFFFD282A8288AAAAAAAFFFFFFFFFA8080A80AAAAAAAFFFFFFFFF8AB4022A0AAAAAABFFFFFFFEA2DD408AA2AAAAABFFFFFFFEAAF5A088AAAAAAAAFFFFFFFEAAD58A022AAAAAABFFFFFFFAA81020AAAA2AAAAAFFFFFDFAAB5F882AA8AAAAAAFFFFFD7AAF5D8A2AA8AAAAAAFFFFFFFAA9FFD0A2A82AAAABFFFFFFDEABFFFAAA20AAAAAAFFFFFFDEAF777AAAAAAAAAAAFFFFFF7FA95D7AAAAAAAAAABFFFFFFD6A9DD422AAAAAAAAFFFFFFFFDAAEFBA8AAAAAAAABFFFFEFFF8A0AAA8AAAAAAAAFFFFFFFFF5A0A20AAAAAAAABFFFFFEFFFF8208AAA",
	mem_init0 => X"AAAAAABFFFFFEFFEF0220AAAAAAAABFFFFFFEFFBE00A0AAAAAAAAFFFFFEBEBEBCAA0AAAAAAAAAFFFFFFAEBEBF2952A2AAAAAFFFFFFFAAFAA52F702AAAAABFFFFFBFEAFA96B5CAAA2AEFFFFFFFEBBAAAB9FD60A5FFFFFFFFFFFEAAAA8BDF6D1FFFFFFFFFFFEAAAAA9759DD57FFFFFFFFFFFEAAAAA583577FF7FFFFFFFFFFAAAAA093FDFFFFFFFFFFFFEAAAAA855E0FFFF5FFFFFFFEAFAAABAFF5F5FFFDFFFFFFFFFFABBBC3FD55FFFFFFFFFFFFFEFBEEFEFD55FFFFFFFFFFFFFFFBAFDFFF55FF7FFFFFFFFFFFFFEFD7FF55FFFFFFFFFFFFFFFFEFFFFD5DFFFFFFFFFFFFFFFFEFFFFD7FDDFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./res/bomb48.mif",
	init_file_layout => "port_a",
	logical_ram_name => "display_controller:DISPLAY_CONTROLLER_I|bomb_rom:BOMB_ROM_I|altsyncram:altsyncram_component|altsyncram_dbs3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y13_N0
\DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a2\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFEBFFEBFFFFFFFFFFFFFFFFFBFFFFFFEFFFFFFFFFFFFFFEFF7FFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFEFFFFFFFFFFF7F",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFD77FFFFFFFFFFFFFFFFFFFFFF5DF55555FFFFFFFFFFFFFFFFD75D557FFFFFFFFFFFFBFFFFF7D7557FFFFFFFEFFFFFFFFFFFF7C17D5FFFFFFFFFFFFFFFFFF5C17755FFFFFFFFBFFFFFFFF0A025757FFFFEFFFFFFFFFFE0EB01DD7FFFFFFFFFFFFFFFADCBF85557FFFFFEFFFFFFFEBDE9FE357FFFFFBFFFFFDDFEBDE1543577FFFFFFFFFFFF7EBFE3F43577FFFFFBFFFFF5FEBFEBFFBFFFFFFFEBFFFFF5FEB54BFFFFFFFFFFEFFFFFFF7FA543FFFFFFFFFFFFFFFFFF7FA06157FFFFFFFFFFFFFFFF5FD00AD5FFFFFFFFFFFFFFFFD7DF02AFFFFFFFFFFFFFFFFFFD5F410AFFFFFFFFFFFFFFFFFF7D41FAF",
	mem_init0 => X"FFFFFFFFBFFFFFFFFF7EBFEBFFFFFFFEBFFFFFFFEDFEBFEBFFFFFFFEFFFFFFFFC15EBFEBFFFFFFFFFFFFFFFFC156B5EBFFFFFFFFEFFFFFFF4156BFEBFFFFFFFBFFFFFFFF5054BFA7FFFFFFFFFFFFFFFF54041A35FFFFFFFFFBFFFFFF772002F7FFFFFFEFFFFFFFFFFF5415D5FFFFFFFFFFFFFFFDF7D41D55FFFFFFFFFFBFFFFD57D55555FFFFFEFFFFFFFFFFFF5575557FFFFFFFFFFFFFFD555555557FFFFFFFFFFFFFFDFF5555557FFFFFFFFFFFFFFD55555555FFFFFFFFFFFFFFFF55555557FFFFFFFFFFFFFBFFD55555FFFFEFFFFFFFFFFFFFFFD5557FFFFFFFFFFFFFFFEFFFFFFF7FFBFFFFFFFFFFFFFFBFFFFFFEFFFFFFFFFFFFFFFFFEBFFEBFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./res/coin48.mif",
	init_file_layout => "port_a",
	logical_ram_name => "display_controller:DISPLAY_CONTROLLER_I|coin_rom:COIN_ROM_I|altsyncram:altsyncram_component|altsyncram_mbs3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y14_N12
\DISPLAY_CONTROLLER_I|Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Mux12~0_combout\ = (\DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\ & ((\DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\) # ((\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(2))))) # 
-- (!\DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\ & (\DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\ & ((\DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\,
	datab => \DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\,
	datac => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(2),
	datad => \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(2),
	combout => \DISPLAY_CONTROLLER_I|Mux12~0_combout\);

-- Location: LCCOMB_X24_Y14_N30
\DISPLAY_CONTROLLER_I|Mux12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Mux12~1_combout\ = (\DISPLAY_CONTROLLER_I|Mux12~0_combout\) # ((!\DISPLAY_CONTROLLER_I|draw~14_combout\ & \DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Mux12~0_combout\,
	datab => \DISPLAY_CONTROLLER_I|draw~14_combout\,
	datac => \DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(2),
	combout => \DISPLAY_CONTROLLER_I|Mux12~1_combout\);

-- Location: M9K_X25_Y14_N0
\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a4\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A0AA0A540000000000000082AAAAEA820400000000000AAA003815FFF040000000008A82AAAAAAD7F70400000000282AAAAAAAAD7D5100000002A2A",
	mem_init1 => X"ABAAAAAAADFD40000002A2AAAAAAAAAAABDFD100000A8AAAAAAAAAAAAAF7F440000A2AAABAAAAAAAAABDF5000028AAAAAAAAAAAAAAAF7D100222AAAAEAA82AAAAAABDDC000AAAAAAAAEEAAAAAAABFF440A8AAAABAACAE2AAAAAAF7F00A2AAAABAAAAAAAAAAAAFDF02A2AAAAAAACAE2AAAAAABDF808AAAAAA8AAEAAA2AAAABF7008AAAAAA8BBAAAA2AAAAAF712AAAAAAA2EAAEAA8AAAAAFF8A2AAAAAA22AABA88AAAAAFDAA2AAAAAA22AAAAA0AAAAAFDA22AAAAAB28AAAAAAAAAAAFD822AAAAAAA82AAAAAAAAAAFCCA2AAAAAAA2CABAAAAAAAAFCAAAAAAAAAEAAFCAAAAAAAAFFAAAAAAAAAAAA2EAAAAAAAAFAAA2AAAAAAAABBE28AAAAABECA22AAAAAAABFBE86A",
	mem_init0 => X"AAAABA8822AAEAAAAAEEEE38AAAAAA88A2AAAAAA0FFFFF98AAAAAA8AA2AAEAAE27BBAFCCAAAAEA8A2AAFAABE2AAEFBA8AAAAAAA808AEFAAA8AEBFBA2AAEAAA2008ABEAEE8AAABAB7FAAAAA202F6BABBABADAA6AAAAAAA8A80A6EAAFAEBFAAAAAAAAAA8A00A9AAAABBE8AA2AAAAAAA2A000BFAABFAEAAAAAAAAAAAA000237AAABBFA82AAAAAAA88800139AAFAAAAAAAAAAAAA2800000F2AFEAAAAAAAAAAA8A000000F9EABAAAAAAAAAAA2A0000002A7AAAAAAAAAAAA8A800000002F2AAAAAAAAAA8A8000000000382AAAAAAAA82800000000008A82AAAAAA82A200000000000AAA002800AAA000000000000082AAAAAA820000000000000000A0AA0A000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./res/bomb48.mif",
	init_file_layout => "port_a",
	logical_ram_name => "display_controller:DISPLAY_CONTROLLER_I|bomb_rom:BOMB_ROM_I|altsyncram:altsyncram_component|altsyncram_dbs3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y15_N2
\DISPLAY_CONTROLLER_I|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Mux7~0_combout\ = (\DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\ & (((\DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(4)) # (\DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\)))) # 
-- (!\DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\ & (\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(4) & ((\DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\,
	datab => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(4),
	datac => \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(4),
	datad => \DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\,
	combout => \DISPLAY_CONTROLLER_I|Mux7~0_combout\);

-- Location: M9K_X25_Y20_N0
\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a1\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000555555555555510010555555555555DFD555555555115555555557FFD554540000515555555555FF7F65555000051555555557F7FEF7555500005155555557F7",
	mem_init1 => X"FAFF555550001455555555FDDFFFFF55540005555555555F7D5FFDF5550001155555555F4FF5FFD5554000555555555FF5DF75D555500041555555543F55DF57D5540015555555555F305F7DD55400115555555455979D5FF5550004555555505517DD57FD5540045555555157779FF7FDD5400555555555577D77D77F55400455555755572B7DFF5FD5500455555DF55355155D5FF550045555575D57DD55D75FD55004555555D957D567555D555004555555F4575FF55555555005555555DD54F7DD55555550105555557754B55D55555550115555455D97B0CD55555550055555555775023FF55555505555555555E65681D55555410555554555607E5215",
	mem_init0 => X"55554515555545544BF15005555555555545415061D5C0055555555555554555D3F470015555055555550505FB9F148555551555555445445017BEB55555555545550107FBF5FC00001555555115000489F0515D555555555540000275CE53FF55555555540000005577555F55555555555000031C5FD7FFD5555555555000020865DFFFD555555554100000003F9D7F755555555154001097F5D57FF555555555501146FFD5557F5555555555454117FFFD557F5555555555551147DFFF55F55555555555555055DFFF55F555555555555554575D7D5FF555555555555554555555557555555555555555555555555555555555555554555555555555555555",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./res/bomb48.mif",
	init_file_layout => "port_a",
	logical_ram_name => "display_controller:DISPLAY_CONTROLLER_I|bomb_rom:BOMB_ROM_I|altsyncram:altsyncram_component|altsyncram_dbs3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y18_N30
\DISPLAY_CONTROLLER_I|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Mux7~1_combout\ = (\DISPLAY_CONTROLLER_I|Mux7~0_combout\) # ((!\DISPLAY_CONTROLLER_I|draw~14_combout\ & \DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DISPLAY_CONTROLLER_I|Mux7~0_combout\,
	datac => \DISPLAY_CONTROLLER_I|draw~14_combout\,
	datad => \DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(4),
	combout => \DISPLAY_CONTROLLER_I|Mux7~1_combout\);

-- Location: M9K_X25_Y17_N0
\DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a1\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFBBAAEEFFFFFFFFFFFFFFFD4AAAAAAAABFFFFFFFFFFFFFD028AAAAAAAFFFFFFFFFFFFCA2A08AAAAAAABFFFFFFFFFF8AAAA88AAAAAAAFFFFFFFFFAA2A",
	mem_init1 => X"2AA88AAAAAAAFFFFFFFEAA22800A0AAAAAAABFFFFFFAAAA22000022AAAAAAFFFFFEAAAA888AAAA8AAAAAABFFFFEAAAAA20AAA80AAAAAABFFFFAAAAAAAA2AAAA82AAAAAFFFEAAAAAA8223EAAA0AAAAABFFEAAAAAAAA03EA0AA2AAAABFFEAAAAAAAADDFD08A8AAAABFFAAAAAAAABF94F6A28AAAAAFEAAAAAAAAF29C052AAAAAAABEAAAAA8ABC29E034A82AAAABEAAAAAA2BC234014A8AAAAABAAAAA8AABE2BC0BCA82AAAAAEAAAAA0ABEABC0AE82AAAAABAAAAAA8ABCABEAAAAAAAAAAAEAAAAAAAADA3C2AAAAAAAAABAAAAAA80ADF1E8AAAAAAAAAAAAAAAAA82AF5F02AAAAAAAAAAAAAAAAA000F77AAAAAAAAAAAAAAAAAA220BC57AAAAAAAAAEAAAAAAA882B48FA",
	mem_init0 => X"AAAAAAABAAAAAAAAA8A9E2BEAAAAAAAAEAAAAAAAB0A1EABEAAAAAAABAAAAAAAAB68B6ABEAAAAAAAAEAAAAAAA1EA3C2BEAAAAAAABEAAAAAAABC03EA9EAAAAAAABEAAAAAAAAFA1EADAAAAAAAABFAAAAAA88BD14F62AAAAAAAFFEAAAAA888F557A0AAAAAABFFEAAAAA820834220AAAAAABFFEAAAAAA080B4802AAAAAABFFFAAAAAAA82008002AAAAAFFFFEAAAA800AA00002AAAABFFFFEAAAAAAAA02000AAAAABFFFFFAAAAAA8AAA000AAAAAFFFFFFEAAAAAAAAA000AAAABFFFFFFFAAA8AAAAA00AAAAAFFFFFFFFFAA80AAAA0AAAAAFFFFFFFFFFEAAA8AAA02AAABFFFFFFFFFFFFAAA82AAAAAFFFFFFFFFFFFFFEAAAAAAAABFFFFFFFFFFFFFFFFBBAAEEFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./res/coin48.mif",
	init_file_layout => "port_a",
	logical_ram_name => "display_controller:DISPLAY_CONTROLLER_I|coin_rom:COIN_ROM_I|altsyncram:altsyncram_component|altsyncram_mbs3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y16_N0
\DISPLAY_CONTROLLER_I|Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Mux13~0_combout\ = (\DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\ & ((\DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\) # ((\DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(1))))) # 
-- (!\DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\ & (\DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\ & (\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\,
	datab => \DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\,
	datac => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(1),
	datad => \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(1),
	combout => \DISPLAY_CONTROLLER_I|Mux13~0_combout\);

-- Location: LCCOMB_X24_Y17_N0
\DISPLAY_CONTROLLER_I|Mux13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Mux13~1_combout\ = (\DISPLAY_CONTROLLER_I|Mux13~0_combout\) # ((!\DISPLAY_CONTROLLER_I|draw~14_combout\ & \DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DISPLAY_CONTROLLER_I|Mux13~0_combout\,
	datac => \DISPLAY_CONTROLLER_I|draw~14_combout\,
	datad => \DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(1),
	combout => \DISPLAY_CONTROLLER_I|Mux13~1_combout\);

-- Location: M9K_X25_Y10_N0
\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFF55FBFFEBFFFFFFFFFFFFD555410002AFFFFFFFFFFFFFD57FBABD57FAFBFFFFFFFFDD5FFBAAAAF577AFFFFFFFFD55FFEAAAAAAF557AFFFFFFFF5FF",
	mem_init1 => X"FFAAAAAAAF5FEBFFFFFD57FFEEAAAAAAABD57AFFFFF55FFFEAAAAAAAAAF55EEFFFF57FFFFAAAAAAAAABD5FBFFF75FFFFEAAAAAAAAAAF5DBFFF57FFFEEAA82AAAAAABD5EFFD5FFFFFAAEEAAAAAAABF56EFF7FFFFFAAC2C2AAAAAAFDFAFD7FFFFFA8AAAA2AAAAABD7BFDFFFFFAA2E2CA8AAAAABF7BD5FFFFFA8A2EA8A2AAAABF53D7FFFFFAA9BAAA2AAAAAAFD3D7FFFFFAAEAAEAAAAAAAAFD2D7FFFFFE2AAABAA8AAAAAFD3DFFFFFFEAAAAAA8AAAAAAFF2DFFFFFFFAAAAAAAAAAAAAFF3DFFFFFFE8A2AAAAAAAAAAFE75FFFFFFFAAE2BAAAAAAAAFE55FFFEFFFE8AFE2AAAAAAAFF55FFFEFFFAA8AEA2AAAAAAFB55FFFFFFFEABBCAAAAAAABEE5DFFFFBFEFBFBE8E2",
	mem_init0 => X"AAAABAB7DFFFEBFFEAFEEEBAAAAAAAF7DFFFBBFAF7FFFFBAAAAAABF7D7FFBFEF7FAFAFECAAAAEFD7D7FEBBBBAAEEFBAAAAABBFD7D7FFFEFEFCFBFF2AAABBFFD7D4FFAABECA3BBCB7FFBFFF57F9FBAABFA7F28F8ABFFFFF7FFC6AAAAAECEBFE7FFFFFFD7FFA3AAABFEEC7D7FFFFFFFDFFFD1EAAAFAEBFFFFFFFFFF57FFF16AAABFFFD7FFFFFFFD5FFFA71AAABAAABFFFFFFFF5DFFEBB52BFFFFFFFFFFFFFD5FFFBFE14FFAEFFFFFFFFFF55FFFFFF956BFAFFFFFFFFFD57FFFFFFFF4FFFFFFFFFFFF5FFFFFFFFF915FFFFFFFFFF557FFFFFFFFF8D5FFFFFFFF577FFFFFFFFFFEFD57FFFFD57FFFFFFFFFFFFFFD555555557FFFFFFFFFFFFFFFFFF55FFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./res/bomb48.mif",
	init_file_layout => "port_a",
	logical_ram_name => "display_controller:DISPLAY_CONTROLLER_I|bomb_rom:BOMB_ROM_I|altsyncram:altsyncram_component|altsyncram_dbs3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X26_Y14_N22
\DISPLAY_CONTROLLER_I|Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Mux14~0_combout\ = (\DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\ & ((\DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\) # ((\DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(0))))) # 
-- (!\DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\ & (\DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\ & (\DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|rom_select[1]~3_combout\,
	datab => \DISPLAY_CONTROLLER_I|rom_select[0]~4_combout\,
	datac => \DISPLAY_CONTROLLER_I|COIN_ROM_I|altsyncram_component|auto_generated|q_a\(0),
	datad => \DISPLAY_CONTROLLER_I|BOMB_ROM_I|altsyncram_component|auto_generated|q_a\(0),
	combout => \DISPLAY_CONTROLLER_I|Mux14~0_combout\);

-- Location: LCCOMB_X27_Y18_N12
\DISPLAY_CONTROLLER_I|Mux14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Mux14~1_combout\ = (\DISPLAY_CONTROLLER_I|Mux14~0_combout\) # ((!\DISPLAY_CONTROLLER_I|draw~14_combout\ & \DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Mux14~0_combout\,
	datac => \DISPLAY_CONTROLLER_I|draw~14_combout\,
	datad => \DISPLAY_CONTROLLER_I|SURFER_ROM_I|altsyncram_component|auto_generated|q_a\(0),
	combout => \DISPLAY_CONTROLLER_I|Mux14~1_combout\);

-- Location: LCCOMB_X27_Y18_N10
\DISPLAY_CONTROLLER_I|Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Equal2~2_combout\ = (((\DISPLAY_CONTROLLER_I|draw~14_combout\ & !\DISPLAY_CONTROLLER_I|rom_select[1]~2_combout\)) # (!\DISPLAY_CONTROLLER_I|Mux14~1_combout\)) # (!\DISPLAY_CONTROLLER_I|Mux13~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Mux13~1_combout\,
	datab => \DISPLAY_CONTROLLER_I|draw~14_combout\,
	datac => \DISPLAY_CONTROLLER_I|rom_select[1]~2_combout\,
	datad => \DISPLAY_CONTROLLER_I|Mux14~1_combout\,
	combout => \DISPLAY_CONTROLLER_I|Equal2~2_combout\);

-- Location: LCCOMB_X27_Y18_N8
\DISPLAY_CONTROLLER_I|Equal2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DISPLAY_CONTROLLER_I|Equal2~3_combout\ = ((\DISPLAY_CONTROLLER_I|Mux7~1_combout\) # (\DISPLAY_CONTROLLER_I|Equal2~2_combout\)) # (!\DISPLAY_CONTROLLER_I|Mux12~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DISPLAY_CONTROLLER_I|Mux12~1_combout\,
	datac => \DISPLAY_CONTROLLER_I|Mux7~1_combout\,
	datad => \DISPLAY_CONTROLLER_I|Equal2~2_combout\,
	combout => \DISPLAY_CONTROLLER_I|Equal2~3_combout\);

-- Location: LCCOMB_X23_Y13_N26
\VGA_SYNC_I|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|process_0~5_combout\ = (!\VGA_SYNC_I|v_count\(9) & (\VGA_SYNC_I|LessThan6~0_combout\ & ((!\VGA_SYNC_I|ref_tick~0_combout\) # (!\VGA_SYNC_I|v_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_SYNC_I|v_count\(9),
	datab => \VGA_SYNC_I|LessThan6~0_combout\,
	datac => \VGA_SYNC_I|v_count\(5),
	datad => \VGA_SYNC_I|ref_tick~0_combout\,
	combout => \VGA_SYNC_I|process_0~5_combout\);

-- Location: LCCOMB_X23_Y13_N30
\VGA_SYNC_I|disp_ena~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|disp_ena~feeder_combout\ = \VGA_SYNC_I|process_0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_SYNC_I|process_0~5_combout\,
	combout => \VGA_SYNC_I|disp_ena~feeder_combout\);

-- Location: FF_X23_Y13_N31
\VGA_SYNC_I|disp_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	d => \VGA_SYNC_I|disp_ena~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_SYNC_I|disp_ena~q\);

-- Location: LCCOMB_X27_Y18_N14
\VGA_SYNC_I|Bout[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|Bout[7]~0_combout\ = (\VGA_SYNC_I|disp_ena~q\ & ((\DISPLAY_CONTROLLER_I|Equal2~0_combout\) # ((\DISPLAY_CONTROLLER_I|Equal2~1_combout\) # (\DISPLAY_CONTROLLER_I|Equal2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Equal2~0_combout\,
	datab => \DISPLAY_CONTROLLER_I|Equal2~1_combout\,
	datac => \DISPLAY_CONTROLLER_I|Equal2~3_combout\,
	datad => \VGA_SYNC_I|disp_ena~q\,
	combout => \VGA_SYNC_I|Bout[7]~0_combout\);

-- Location: LCCOMB_X28_Y18_N2
\VGA_SYNC_I|Rout[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|Rout[4]~0_combout\ = (\DISPLAY_CONTROLLER_I|Mux3~1_combout\ & \VGA_SYNC_I|Bout[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DISPLAY_CONTROLLER_I|Mux3~1_combout\,
	datad => \VGA_SYNC_I|Bout[7]~0_combout\,
	combout => \VGA_SYNC_I|Rout[4]~0_combout\);

-- Location: LCCOMB_X28_Y18_N24
\VGA_SYNC_I|Rout[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|Rout[5]~1_combout\ = (\DISPLAY_CONTROLLER_I|Mux2~1_combout\ & \VGA_SYNC_I|Bout[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Mux2~1_combout\,
	datad => \VGA_SYNC_I|Bout[7]~0_combout\,
	combout => \VGA_SYNC_I|Rout[5]~1_combout\);

-- Location: LCCOMB_X28_Y18_N14
\VGA_SYNC_I|Rout[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|Rout[6]~2_combout\ = (\DISPLAY_CONTROLLER_I|Mux1~1_combout\ & \VGA_SYNC_I|Bout[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DISPLAY_CONTROLLER_I|Mux1~1_combout\,
	datad => \VGA_SYNC_I|Bout[7]~0_combout\,
	combout => \VGA_SYNC_I|Rout[6]~2_combout\);

-- Location: LCCOMB_X28_Y18_N28
\VGA_SYNC_I|Rout[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|Rout[7]~3_combout\ = (\DISPLAY_CONTROLLER_I|Mux0~1_combout\ & \VGA_SYNC_I|Bout[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Mux0~1_combout\,
	datad => \VGA_SYNC_I|Bout[7]~0_combout\,
	combout => \VGA_SYNC_I|Rout[7]~3_combout\);

-- Location: LCCOMB_X27_Y18_N0
\VGA_SYNC_I|Gout[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|Gout[4]~0_combout\ = (\VGA_SYNC_I|Bout[7]~0_combout\ & (\DISPLAY_CONTROLLER_I|Mux7~1_combout\)) # (!\VGA_SYNC_I|Bout[7]~0_combout\ & ((\VGA_SYNC_I|disp_ena~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Mux7~1_combout\,
	datab => \VGA_SYNC_I|Bout[7]~0_combout\,
	datad => \VGA_SYNC_I|disp_ena~q\,
	combout => \VGA_SYNC_I|Gout[4]~0_combout\);

-- Location: LCCOMB_X27_Y18_N6
\VGA_SYNC_I|Gout[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|Gout[5]~1_combout\ = (\VGA_SYNC_I|Bout[7]~0_combout\ & (\DISPLAY_CONTROLLER_I|Mux6~1_combout\)) # (!\VGA_SYNC_I|Bout[7]~0_combout\ & ((\VGA_SYNC_I|disp_ena~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Mux6~1_combout\,
	datab => \VGA_SYNC_I|Bout[7]~0_combout\,
	datad => \VGA_SYNC_I|disp_ena~q\,
	combout => \VGA_SYNC_I|Gout[5]~1_combout\);

-- Location: LCCOMB_X27_Y18_N24
\VGA_SYNC_I|Gout[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|Gout[6]~2_combout\ = (\VGA_SYNC_I|Bout[7]~0_combout\ & (\DISPLAY_CONTROLLER_I|Mux5~1_combout\)) # (!\VGA_SYNC_I|Bout[7]~0_combout\ & ((\VGA_SYNC_I|disp_ena~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DISPLAY_CONTROLLER_I|Mux5~1_combout\,
	datac => \VGA_SYNC_I|Bout[7]~0_combout\,
	datad => \VGA_SYNC_I|disp_ena~q\,
	combout => \VGA_SYNC_I|Gout[6]~2_combout\);

-- Location: LCCOMB_X27_Y18_N26
\VGA_SYNC_I|Gout[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|Gout[7]~3_combout\ = (\VGA_SYNC_I|Bout[7]~0_combout\ & \DISPLAY_CONTROLLER_I|Mux4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNC_I|Bout[7]~0_combout\,
	datac => \DISPLAY_CONTROLLER_I|Mux4~1_combout\,
	combout => \VGA_SYNC_I|Gout[7]~3_combout\);

-- Location: LCCOMB_X27_Y18_N16
\VGA_SYNC_I|Bout[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|Bout[4]~1_combout\ = (\VGA_SYNC_I|Bout[7]~0_combout\ & (\DISPLAY_CONTROLLER_I|Mux14~1_combout\)) # (!\VGA_SYNC_I|Bout[7]~0_combout\ & ((\VGA_SYNC_I|disp_ena~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Mux14~1_combout\,
	datac => \VGA_SYNC_I|Bout[7]~0_combout\,
	datad => \VGA_SYNC_I|disp_ena~q\,
	combout => \VGA_SYNC_I|Bout[4]~1_combout\);

-- Location: LCCOMB_X27_Y18_N2
\VGA_SYNC_I|Bout[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|Bout[5]~2_combout\ = (\VGA_SYNC_I|Bout[7]~0_combout\ & (\DISPLAY_CONTROLLER_I|Mux13~1_combout\)) # (!\VGA_SYNC_I|Bout[7]~0_combout\ & ((\VGA_SYNC_I|disp_ena~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY_CONTROLLER_I|Mux13~1_combout\,
	datab => \VGA_SYNC_I|Bout[7]~0_combout\,
	datad => \VGA_SYNC_I|disp_ena~q\,
	combout => \VGA_SYNC_I|Bout[5]~2_combout\);

-- Location: LCCOMB_X27_Y18_N4
\VGA_SYNC_I|Bout[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|Bout[6]~3_combout\ = (\VGA_SYNC_I|Bout[7]~0_combout\ & ((\DISPLAY_CONTROLLER_I|Mux12~1_combout\))) # (!\VGA_SYNC_I|Bout[7]~0_combout\ & (\VGA_SYNC_I|disp_ena~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNC_I|disp_ena~q\,
	datac => \VGA_SYNC_I|Bout[7]~0_combout\,
	datad => \DISPLAY_CONTROLLER_I|Mux12~1_combout\,
	combout => \VGA_SYNC_I|Bout[6]~3_combout\);

-- Location: LCCOMB_X27_Y18_N18
\VGA_SYNC_I|Bout[7]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_SYNC_I|Bout[7]~4_combout\ = (\VGA_SYNC_I|Bout[7]~0_combout\ & \DISPLAY_CONTROLLER_I|Mux11~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_SYNC_I|Bout[7]~0_combout\,
	datac => \DISPLAY_CONTROLLER_I|Mux11~1_combout\,
	combout => \VGA_SYNC_I|Bout[7]~4_combout\);

ww_digit1(0) <= \digit1[0]~output_o\;

ww_digit1(1) <= \digit1[1]~output_o\;

ww_digit1(2) <= \digit1[2]~output_o\;

ww_digit1(3) <= \digit1[3]~output_o\;

ww_digit1(4) <= \digit1[4]~output_o\;

ww_digit1(5) <= \digit1[5]~output_o\;

ww_digit1(6) <= \digit1[6]~output_o\;

ww_digit0(0) <= \digit0[0]~output_o\;

ww_digit0(1) <= \digit0[1]~output_o\;

ww_digit0(2) <= \digit0[2]~output_o\;

ww_digit0(3) <= \digit0[3]~output_o\;

ww_digit0(4) <= \digit0[4]~output_o\;

ww_digit0(5) <= \digit0[5]~output_o\;

ww_digit0(6) <= \digit0[6]~output_o\;

ww_lives_leds(0) <= \lives_leds[0]~output_o\;

ww_lives_leds(1) <= \lives_leds[1]~output_o\;

ww_lives_leds(2) <= \lives_leds[2]~output_o\;

ww_vga_clk <= \vga_clk~output_o\;

ww_h_sync <= \h_sync~output_o\;

ww_v_sync <= \v_sync~output_o\;

ww_sync_n <= \sync_n~output_o\;

ww_blank_n <= \blank_n~output_o\;

ww_r_out(0) <= \r_out[0]~output_o\;

ww_r_out(1) <= \r_out[1]~output_o\;

ww_r_out(2) <= \r_out[2]~output_o\;

ww_r_out(3) <= \r_out[3]~output_o\;

ww_g_out(0) <= \g_out[0]~output_o\;

ww_g_out(1) <= \g_out[1]~output_o\;

ww_g_out(2) <= \g_out[2]~output_o\;

ww_g_out(3) <= \g_out[3]~output_o\;

ww_b_out(0) <= \b_out[0]~output_o\;

ww_b_out(1) <= \b_out[1]~output_o\;

ww_b_out(2) <= \b_out[2]~output_o\;

ww_b_out(3) <= \b_out[3]~output_o\;
END structure;


