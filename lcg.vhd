library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity lcg is
    port (
        clk, rst : in std_logic;        
        num      : out std_logic_vector(7 downto 0)
    );
end entity;

architecture behavioral of lcg is

component hw_mult IS
	PORT (
		clock		: IN STD_LOGIC ;
		data_in		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
END component;

signal acc : std_logic_vector(15 downto 0);
signal mult_reg : std_logic_vector(15 downto 0);

constant c_add : std_logic_vector := x"004a";

begin

    HW_MULT_I: hw_mult port map (clk, acc(7 downto 0), mult_reg);
        
    process(clk, rst) is
    begin
        if rst='1' then
            acc <= x"3f4b";
        elsif rising_edge(clk) then
            acc <= mult_reg + c_add;
        end if;
    end process;
    
    num <= acc(7 downto 0);

end architecture;