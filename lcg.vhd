library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity lcg is
    port (
        clk, rst : in std_logic;        
        seed     : in std_logic_vector(7 downto 0);        
        num     : out std_logic_vector(7 downto 0)
    );
end entity;

architecture behavioral of lcg is

-- change to: coefmult_altmemmult_kdo
component sw_mult is
    port (
        clock	:	IN  STD_LOGIC;
        data_in	:	IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
        result	:	OUT  STD_LOGIC_VECTOR (15 DOWNTO 0);
        result_valid	:	OUT  STD_LOGIC
    ); 
end component;

signal acc : std_logic_vector(15 downto 0);
signal mult_res : std_logic_vector(15 downto 0);
signal mult_reg : std_logic_vector(15 downto 0);
signal valid : std_logic;

constant c_add : std_logic_vector := x"004a";

begin

    -- change to: coefmult_altmemmult_kdo
    MULT: sw_mult
        port map (
            clock   => clk,
            data_in => acc(7 downto 0),
            result  => mult_res,
            result_valid => valid
        );
        
    process(clk, rst) is
    begin
        if rst='1' then
            mult_reg <= x"0000";
        elsif rising_edge(clk) then
            if valid='1' then
                mult_reg <= mult_res;
            end if;
        end if;
    end process;

    process(clk, rst) is
    begin
        if rst='1' then
            acc <= x"00" & seed;
        elsif rising_edge(clk) then
            acc <= mult_reg + c_add;
        end if;
    end process;
    
    num <= acc(7 downto 0);

end architecture;