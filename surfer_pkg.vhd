library ieee;
use ieee.std_logic_1164.all;

package surfer_pkg is
    subtype bomb_info is std_logic_vector(13 downto 0);
    subtype index is std_logic_vector(2 downto 0);
    
    subtype mem_data is std_logic_vector(15 downto 0);
    subtype mem_addr is std_logic_vector(3 downto 0);
    
    subtype queue_size is natural range 0 to 8;
    
    type game_states is (coll_check, add_elem, move, inc_speed, burst_cpy);
end package surfer_pkg;