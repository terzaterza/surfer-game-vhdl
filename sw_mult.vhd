library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sw_mult is
    port (
        clock     : in std_logic;
        data_in : in std_logic_vector(7 downto 0);
        result : out std_logic_vector(15 downto 0);
        result_valid   : out std_logic
    );
end entity;
architecture behavioral of sw_mult is

signal in_reg   : std_logic_vector(7 downto 0);
signal is_valid : std_logic;

constant coef : natural := 75;

begin

    process(clock) is
    begin
        if rising_edge(clock) then
            in_reg <= data_in;
        end if;
    end process;
    
    process(clock) is
    begin
        if rising_edge(clock) then
            if data_in /= in_reg then
                is_valid <= '0';
            else
                is_valid <= '1';
            end if;
        end if;
    end process;
    
    result <= std_logic_vector(to_unsigned(coef * to_integer(unsigned(in_reg)), 16));
    result_valid <= is_valid;

end architecture;