library ieee;
use ieee.std_logic_1164.all;
library work;
use work.tern_pkg.all;

package surfer_pkg is
    subtype bomb_info is std_logic_vector(13 downto 0);
    
    subtype mem_data is std_logic_vector(15 downto 0);
    subtype mem_addr is std_logic_vector(3 downto 0);
    
    subtype q_size_range is natural range 0 to 16;
    subtype speed_range is natural range 0 to 10;
    
    subtype lane_range is natural range 0 to 2;
    
    subtype color is std_logic_vector(23 downto 0);
    
    type game_states is (s_coll_check, s_add_elem, s_inc_speed, s_move, s_wait_ref, s_burst_cpy, s_wait_cpy);
    
    constant DEBUG : boolean := true;
    
    
    constant surfer_dim : natural := 48;
    constant object_dim : natural := 48;
    constant c_indent : natural := 10;
    
    constant display_width : natural := 640;
    constant display_height : natural := 480;
    
    constant background_color : color := x"007777";
    constant alpha_color      : color := x"f000f0";
    
    constant spawn_pos             : natural := tern(DEBUG, c_indent + surfer_dim + 5, display_width-1);
    constant spawn_count_min       : natural := tern(DEBUG, 2, 30); -- number of ref_ticks
    constant spawn_count_range_len : natural := tern(DEBUG, 3, 150);
    subtype  spawn_count_range is natural range spawn_count_min to spawn_count_min + spawn_count_range_len;
    
    subtype disp_width_range is natural range 0 to display_width - 1;
    subtype disp_height_range is natural range 0 to display_height - 1;
    
    constant debug_vga_ref_tick : natural := 10;
        
end package surfer_pkg;
