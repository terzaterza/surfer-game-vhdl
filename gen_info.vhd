library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.surfer_pkg.all;

entity gen_info is
    port (
        clk, rst : in std_logic;
        count_en : in std_logic;
        speed    : in speed_range;
        
        take : out std_logic;
        info : out bomb_info
    );
end entity;
architecture structural of gen_info is

component lfsr is
    port (
        clk, rst : in std_logic;        
        gen      : out std_logic_vector(7 downto 0)
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

begin
    LFSR_I : lfsr
        port map (
            count_en, rst,
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
    variable speed_as_vec : std_logic_vector(2 downto 0);
    begin
        if rst='1' then
            count_to <= spawn_count_min;
        elsif rising_edge(clk) then
            if count_end='1' and count_en='1' then
                speed_as_vec := std_logic_vector(to_unsigned(speed, 3));
                count_to <= spawn_count_min +
                            to_integer(unsigned(rand(5 downto 0))) -
                            to_integer(unsigned(speed_as_vec & "0000"));
            end if;
        end if;
    end process;
    
    with rand(4 downto 3) select
        info <= std_logic_vector(to_unsigned(spawn_pos, 11)) & "10" & rand(2) when "11",
                std_logic_vector(to_unsigned(spawn_pos, 11)) & rand(4 downto 2) when others;
    
    take <= count_end;
end architecture;