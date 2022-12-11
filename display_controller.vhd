library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.surfer_pkg.all;

entity display_controller is
port (
	clk         : in std_logic;
	rst         : in std_logic;
    lane        : in lane_range;
    xp          : in disp_width_range;
	yp          : in disp_height_range;
    size        : in q_size_range; --broj elemenata u memoriji
    mem_data    : in mem_data; --info o bombi ili novcicu
    mem_addr    : out mem_addr; -- adresa sa koje citamo info
    disp_color  : out std_logic_vector(23 downto 0) --boja koju prosledjujemo vga_sync-u
);
end display_controller;

architecture behavioral of display_controller is
    type edge_array is array (0 to 2) of disp_height_range;
    constant top_edges : edge_array := (120, 240, 360);
    
    signal lookup : natural range 0 to q_size_range'high - 1;
    signal current_bomb : bomb_info;
    
    signal bomb_pos  : natural;
    signal bomb_lane : lane_range;
begin

draw: process(lane, xp, yp, size, bomb_pos, bomb_lane) is
begin
    disp_color <= background_color;
    if (xp >= c_indent and xp < c_indent + surfer_dim) and
       (yp >= top_edges(lane) and yp < top_edges(lane) + surfer_dim) then
        -- draw surfer
    elsif size > 0 then
        if (xp >= bomb_pos and xp < bomb_pos + object_dim) and
           (yp >= top_edges(bomb_lane) and yp < top_edges(bomb_lane) + object_dim) then
            -- draw bomb
        end if;
    end if;
end process;

update_lookup: process(clk, rst) is
begin
    if rst='1' then
        lookup <= 0;
    elsif rising_edge(clk) then
        if xp >= bomb_pos + object_dim then
            if lookup >= size then
                lookup <= 0;
            else
                lookup <= lookup + 1;
            end if;
        end if;
    end if;
end process;

bomb_pos  <= to_integer(signed(current_bomb(13 downto 3)));
bomb_lane <= to_integer(unsigned(current_bomb(2 downto 1)));

current_bomb <= mem_data(13 downto 0);
mem_addr     <= std_logic_vector(to_unsigned(lookup, 4));

end architecture behavioral;