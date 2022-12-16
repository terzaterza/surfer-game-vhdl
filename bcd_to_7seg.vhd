library ieee;
use ieee.std_logic_1164.all;

entity bcd_to_7seg is
	port
	(
        digit   : in  std_logic_vector(3 downto 0);
        display : out std_logic_vector(6 downto 0)
	);
end bcd_to_7seg;

architecture behavioral of bcd_to_7seg is
begin
    with digit select
	display <=  "1000000" when x"0",
				"1111001" when x"1",
				"0100100" when x"2",
                "0110000" when x"3",
                "0011001" when x"4",
                "0010010" when x"5",
                "0000010" when x"6",
                "1111000" when x"7",
                "0000000" when x"8",
                "0010000" when x"9",
                "1111111" when others;

end behavioral;
