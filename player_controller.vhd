library ieee;
use ieee.std_logic_1164.all;

entity player_controller is
    port(
        clk     :   in std_logic;
        rst     :   in std_logic;
        up      :   in std_logic;
        down    :   in std_logic;
        lane    :   out natural range 0 to 2 -- 0-gornja traka, 1-srednja traka, 2-donja traka
                        -- change to surfer_pkg.lane_range
        
    );
end player_controller;

architecture Behavioral of player_controller is

component debouncer is
	generic	(
		count : positive := 2
	);
	port (
        clk, rst : in std_logic;
        btn      : in std_logic;
        
        request  : out std_logic
	);
end component;

    signal go_up        :   std_logic;
    signal go_down      :   std_logic;
    signal curr_lane    :   natural range 0 to 2;

begin

next_lane_process :  process(clk, rst) is
    begin
        if(rst = '1') then
            curr_lane <= 1;
        else 
            if(rising_edge(clk)) then
                if((go_up = '1') and (curr_lane /= 0)) then
                    curr_lane <= curr_lane - 1;
                elsif((go_down='1') and (curr_lane /= 2)) then
                    curr_lane <= curr_lane + 1;
                end if;
            end if;
        end if;    
    end process;

    lane <= curr_lane;
    
    D0: debouncer generic map (1000000) port map(clk, rst, up, go_up);
    D1: debouncer generic map (1000000) port map(clk, rst, down, go_down);
    
    -- not up, down
    
end architecture Behavioral;