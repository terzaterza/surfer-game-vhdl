library ieee;
use ieee.std_logic_1164.all;
library work;
use work.surfer_pkg.all;

entity mem_cnt is
    port (
        add, delete : in std_logic;
        info        : in bomb_info;
        s_curr      : in game_states;
        
        core_r_data : in mem_data;
        
        core_w_data : out mem_data;
        core_w_addr : out mem_addr;
        core_r_addr : out mem_addr;
        
        disp_w_data : out mem_data;
        disp_w_addr : out mem_addr;
        
        first       : out bomb_info;
        size        : out queue_size
    );
end entity;