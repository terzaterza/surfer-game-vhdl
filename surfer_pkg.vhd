library ieee;
use ieee.std_logic_1164.all;

package surfer_pkg is
    subtype bomb_info is std_logic_vector(13 downto 0);
    
    subtype mem_data is std_logic_vector(15 downto 0);
    subtype mem_addr is std_logic_vector(3 downto 0);
    
    subtype q_size_range is natural range 0 to 16;
    subtype speed_range is natural range 1 to 10;
    
    subtype lane_range is natural range 0 to 2;
    
    type game_states is (coll_check, add_elem, move, inc_speed, burst_cpy);
    
    constant surfer_dim : natural := 48;
    constant object_dim : natural := 36;
    constant c_indent   : natural := 10;
end package surfer_pkg;