library ieee;
use ieee.std_logic_1164.all;

package surfer_pkg is
    subtype bomb_info is std_logic_vector(13 downto 0);
    
    subtype mem_data is std_logic_vector(15 downto 0);
    subtype mem_addr is std_logic_vector(3 downto 0);
    
    subtype q_size_range is natural range 0 to 16;
    subtype speed_range is natural range 0 to 10;
    
    subtype lane_range is natural range 0 to 2;
    
    type game_states is (s_coll_check, s_add_elem, s_inc_speed, s_move, s_wait_ref, s_burst_cpy);
    
    constant surfer_dim : natural := 48;
    constant object_dim : natural := 36;
    constant c_indent   : natural := 10;
    
    constant spawn_count_min       : natural := 30;
    constant spawn_count_range_len : natural := 150;
    subtype  spawn_count_range is natural range spawn_count_min to spawn_count_min + spawn_count_range_len;
    
end package surfer_pkg;