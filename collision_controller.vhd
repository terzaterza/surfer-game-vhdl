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
    
    signal first_pos  : integer;
    signal first_lane : lane_range;
begin
    
hit_process :   process(first_pos, first_lane, lane, size) is
    begin
        if(size = 0) then
            object_coll <= '0';
        else
            if lane = first_lane and first_pos < c_indent + surfer_dim and first_pos >= c_indent then
                object_coll <= '1';
            else
                object_coll <= '0';
            end if;
        end if;
    end process;
    
miss_process :  process(first_pos, size) is
    begin
        if(size = 0) then
            object_exit <= '0';
        else
            if first_pos < 0 then
                object_exit <= '1';
            else
                object_exit <= '0';
            end if;
        end if;
    end process;
    
    first_pos  <= to_integer(signed(first(13 downto 3))); -- promeniti svuda unsigned u signed (natural u integer)
    first_lane <= to_integer(unsigned(first(2 downto 1)));
    
    hit <= object_coll;
    miss <= object_exit;
    
end architecture Behavioral;