library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.surfer_pkg.all;

entity gen_info is
    port (
        clk, rst : in std_logic;
        
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
        
    info <= pos_init & rand(2 downto 0);
end architecture;