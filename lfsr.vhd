library ieee;
use ieee.std_logic_1164.all;

entity lfsr is
    port (
        clk, rst : in std_logic;
        gen      : out std_logic_vector(7 downto 0)
    );
end entity;
architecture behavioral of lfsr is
    signal s_curr, s_next : std_logic_vector(7 downto 0);
    signal feedback       : std_logic;
begin
    update_state: process(clk, rst) is
    begin
        if rst='1' then
            s_curr <= x"01";
        elsif rising_edge(clk) then
            s_curr <= s_next;
        end if;
    end process;
    
    feedback <= s_curr(4) xor s_curr(3) xor s_curr(2) xor s_curr(0);
    s_next   <= feedback & s_curr(7 downto 1);
    
    gen      <= s_curr;
end architecture;