library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
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
    disp_color  : out color --boja koju prosledjujemo vga_sync-u
);
end display_controller;

architecture behavioral of display_controller is
    component surfer_rom IS
        PORT (
            address		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
            clock		: IN STD_LOGIC  := '1';
            q		: OUT STD_LOGIC_VECTOR (11 DOWNTO 0)
        );
    END component;
    component coin_rom IS
        PORT (
            address		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
            clock		: IN STD_LOGIC  := '1';
            q		: OUT STD_LOGIC_VECTOR (11 DOWNTO 0)
        );
    END component;
    component bomb_rom IS
        PORT (
            address		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
            clock		: IN STD_LOGIC  := '1';
            q		: OUT STD_LOGIC_VECTOR (11 DOWNTO 0)
        );
    END component;

    type edge_array is array (0 to 2) of disp_height_range;
    constant top_edges : edge_array := (120, 240, 360);
    
    signal lookup : natural range 0 to q_size_range'high - 1;
    signal current_bomb : bomb_info;
    
    signal bomb_pos  : integer;
    signal bomb_lane : lane_range;
    
    signal rom_addr_vec : std_logic_vector(11 downto 0);
    signal rom_select   : natural range 0 to 3;
    signal surfer_data, coin_data, bomb_data : std_logic_vector(11 downto 0);
    signal pre_alpha_color : color;
begin

SURFER_ROM_I: surfer_rom port map (rom_addr_vec, clk, surfer_data);
COIN_ROM_I  : coin_rom   port map (rom_addr_vec, clk, coin_data);
BOMB_ROM_I  : bomb_rom   port map (rom_addr_vec, clk, bomb_data);

draw: process(lane, xp, yp, size, bomb_pos, bomb_lane, current_bomb) is
variable x, y : std_logic_vector(5 downto 0); -- assuming same dim for surfer and object
begin
    rom_select <= 3;
    rom_addr_vec <= x"000";
    if (xp >= c_indent and xp < c_indent + surfer_dim) and
       (yp >= top_edges(lane) and yp < top_edges(lane) + surfer_dim) then
        rom_select <= 0;
        x := std_logic_vector(to_unsigned(xp - c_indent, 6));
        y := std_logic_vector(to_unsigned(yp - top_edges(lane), 6));
        rom_addr_vec <= (("0" & y & "00000") + ("00" & y & "0000")) + x;
    elsif size > 0 then
        if (xp >= bomb_pos and xp < bomb_pos + object_dim) and
           (yp >= top_edges(bomb_lane) and yp < top_edges(bomb_lane) + object_dim) then
            x := std_logic_vector(to_unsigned(xp - bomb_pos, 6));
            y := std_logic_vector(to_unsigned(yp - top_edges(bomb_lane), 6));
            rom_addr_vec <= (("0" & y & "00000") + ("00" & y & "0000")) + x;
            if current_bomb(0)='0' then
                rom_select <= 1;
            else
                rom_select <= 2;
            end if;
        end if;
    end if;
end process;

update_lookup: process(clk, rst) is
begin
    if rst='1' then
        lookup <= 0;
    elsif rising_edge(clk) then
        if xp = disp_width_range'high or lookup >= size then
            lookup <= 0;
        elsif xp >= bomb_pos + object_dim then
            lookup <= lookup + 1;
        end if;
    end if;
end process;

with rom_select select
    pre_alpha_color <= surfer_data(11 downto 8) & x"0" &
                       surfer_data(7 downto 4) & x"0" &
                       surfer_data(3 downto 0) & x"0" when 0,
                       coin_data(11 downto 8) & x"0" &
                       coin_data(7 downto 4) & x"0" &
                       coin_data(3 downto 0) & x"0" when 1,
                       bomb_data(11 downto 8) & x"0" &
                       bomb_data(7 downto 4) & x"0" &
                       bomb_data(3 downto 0) & x"0" when 2,
                       background_color when 3;

bomb_pos  <= to_integer(signed(current_bomb(13 downto 3)));
bomb_lane <= to_integer(unsigned(current_bomb(2 downto 1)));

current_bomb <= mem_data(13 downto 0);
mem_addr     <= std_logic_vector(to_unsigned(lookup, 4));

disp_color <= pre_alpha_color when pre_alpha_color /= alpha_color else background_color;

end architecture behavioral;
