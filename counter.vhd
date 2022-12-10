library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is
	generic
	(
		max_count : natural := 10;
        reversed  : boolean := false;
        async_rst : boolean := false
	);
	port
	(
        clk, rst : in std_logic;
        en       : in std_logic;
        count_to : in natural range 0 to max_count; -- from 0 only for simulation init reasons
        
        count     : out natural range 0 to max_count - 1;
        count_end : out std_logic
	);
end counter;

architecture behavioral of counter is

	signal iter      : natural range 0 to max_count - 1;
    signal last_iter : std_logic;

begin
    count     <= iter;
    count_end <= last_iter;
    last_iter <= '1' when (not reversed) and iter >= count_to-1 else
                 '1' when reversed and (iter = 0 or iter >= count_to) else
                 '0';
        
    tick : process(clk, rst) is
	begin
        if rst='1' and async_rst then
            if reversed then
                iter <= count_to - 1;
            else
                iter <= 0;
            end if;
		elsif rising_edge(clk) then
            if en='1' then
                if last_iter='1' or rst='1' then
                    if reversed then
                        iter <= count_to - 1;
                    else
                        iter <= 0;
                    end if;
                else
                    if reversed then
                        iter <= iter - 1;
                    else
                        iter <= iter + 1;
                    end if;
                end if;
            end if;
        end if;
	end process;

end behavioral;
