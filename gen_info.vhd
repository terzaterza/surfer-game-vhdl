library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.surfer_pkg.all;

entity gen_info is
    port (
        clk, rst : in std_logic;
        count_en : in std_logic;
        
        take : out std_logic;
        info : out bomb_info
    );
end entity;
architecture structural of gen_info is

component lcg is
    port (
        clk, rst : in std_logic;        
        seed     : in std_logic_vector(7 downto 0);        
        num     : out std_logic_vector(7 downto 0)
    );
end component;

component counter is
	generic	(
		max_count : natural := 10;
        reversed  : boolean := false;
        async_rst : boolean := false
	);
	port (
        clk, rst : in std_logic;
        en       : in std_logic;
        count_to : in natural range 0 to max_count; -- from 0 only for simulation init reasons
        
        count     : out natural range 0 to max_count - 1;
        count_end : out std_logic
	);
end component;

signal rand : std_logic_vector(7 downto 0);

constant seed : std_logic_vector(7 downto 0) := x"00";
constant pos_init : std_logic_vector(10 downto 0) := "100" & x"4c";

begin
    LCG_I : lcg
        port map (
            clk, rst,
            seed,
            rand
        );
        
    CNT_I : counter
        generic map (spawn_count_range'high)
        port map(
            clk, rst,
            count_en,
            spawn_count_range'high,
            open,
            take
        );
        
    info <= pos_init & rand(2 downto 0);
end architecture;