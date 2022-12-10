library ieee;
use ieee.std_logic_1164.all;
library work;
use work.surfer_pkg.all;

entity display_controller is
    port (
        clk, rst : in std_logic;
        
        ref_tick : out std_logic
    );
end entity;

architecture testing_only of display_controller is
    signal count_ref : natural range 0 to 9 := 0;
begin
count_process: process(clk, rst) is
    begin
        if rst='1' then
            count_ref <= 0;
        elsif rising_edge(clk) then
            count_ref <= (count_ref + 1) mod 10;
        end if;
    end process;
    
ref_tick <= '1' when count_ref=9 else '0';
end architecture;