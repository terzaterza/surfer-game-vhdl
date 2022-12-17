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
signal count_to : spawn_count_range;
signal count_end : std_logic;

constant seed : std_logic_vector(7 downto 0) := x"00";

begin
    LCG_I : lcg
        port map (
            clk, rst,
            rand
        );
        
    CNT_I : counter
        generic map (spawn_count_range'high)
        port map(
            clk, rst,
            count_en,
            count_to,
            open,
            count_end
        );
        
    set_count_to: process(clk, rst) is
    begin
        if rst='1' then
            count_to <= spawn_count_min;
        elsif rising_edge(clk) then
            --if DEBUG then
            --    count_to <= spawn_count_min;
            --elsif count_end='1' and count_en='1' then
            --    count_to <= spawn_count_min + to_integer(unsigned(rand(6 downto 0)));
            --end if;
            count_to <= spawn_count_min;
        end if;
    end process;
    
    with rand(4 downto 3) select
        info <= std_logic_vector(to_unsigned(spawn_pos, 11)) & "10" & rand(2) when "11",
                std_logic_vector(to_unsigned(spawn_pos, 11)) & rand(4 downto 2) when others;
    
    take <= count_end;
end architecture;