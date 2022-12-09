library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.surfer_pkg.all;

entity collision_controller is
    port(
        lane    :   in natural range 0 to 2;
        size    :   in natural range 0 to 16;
        first   :   in std_logic_vector(13 downto 0); --11 downto 3 - horizontalna pozicija
                                                      --2  downto 1 - traka 
                                                      -- 0 - 0-novcic,1-bomba
        hit     :   out std_logic;
        miss    :   out std_logic
    );
end collision_controller;

architecture Behavioral of collision_controller is
    signal object_coll  : std_logic;
    signal object_exit  : std_logic;
begin
    
hit_process :   process(first, lane, size) is
    variable bomb_pos  : natural;
    variable bomb_lane : lane_range;
    begin
        if(size = 0) then
            object_coll <= '0';
        else
            bomb_pos  := to_integer(unsigned(first(13 downto 3))); -- promeniti svuda unsigned u signed (natural u integer)
            bomb_lane := to_integer(unsigned(first(2 downto 1)));
            
            if lane = bomb_lane and bomb_pos < c_indent + surfer_dim and bomb_pos >= c_indent then
                object_coll <= '1';
            else
                object_coll <= '0';
            end if;
        end if;
    end process;
    
miss_process :  process(first, size) is
    begin
        if(size = 0) then
            object_exit <= '0';
        else
            if(to_integer(signed(first(13 downto 3))) < 0) then
                object_exit <= '1';
            else
                object_exit <= '0';
            end if;
        end if;
    end process;
    
    hit <= object_coll;
    miss <= object_exit;
    
end architecture Behavioral;