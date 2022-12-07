library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.surfer_pkg.all;

entity mem_cnt is
    port (
        clk         : in std_logic;
        add, delete : in std_logic;
        info        : in bomb_info;
        
        burst       : in std_logic;
        core_r_data : in mem_data;
        
        core_w_en   : out std_logic;
        core_w_data : out mem_data;
        core_w_addr : out mem_addr;
        core_r_addr : out mem_addr;
        
        disp_w_en   : out std_logic;
        disp_w_data : out mem_data;
        disp_w_addr : out mem_addr;
        
        first       : out bomb_info;
        size        : out q_size_range
    );
end entity;
architecture behavioral of mem_cnt is
    signal queue_head : natural range 0 to q_size_range'high - 1;
    signal queue_size : q_size_range;
    
    signal burst_state : std_logic;
    signal burst_count : q_size_range;
begin
    ADD_DELETE: process(clk) is
    begin
        -- add reset for queue_size (and whatever else)
        if rising_edge(clk) then
            core_w_en <= '0';
            if add='1' then
                queue_size <= queue_size + 1;
                core_w_addr <= std_logic_vector(to_unsigned(queue_head + queue_size, mem_addr'length));
                core_w_data <= "00" & info;
                core_w_en <= '1';
            elsif delete='1' then
                -- assert size > 0
                queue_size <= queue_size - 1;
                queue_head <= (queue_head + 1) mod q_size_range'high; -- mod only needed for simulation
            end if;
        end if;
    end process;
    
    SET_BURST: process(clk) is
    begin
        if rising_edge(clk) then
            if burst='1' then
                burst_state <= '1';
                burst_count <= 0;
                disp_w_en <= '1';
            elsif burst_count >= queue_size then
                burst_state <= '0';
                disp_w_en <= '0';
            end if;
        end if;
    end process;
    
    READ_DATA: process(clk) is
    begin
        if rising_edge(clk) then
            if add='1' and queue_size=0 then
                first <= info;
            elsif burst='0' then
                core_r_addr <= std_logic_vector(to_unsigned(queue_head + 1, mem_addr'length));
                first <= core_r_data(13 downto 0);
            end if;
            if burst='1' then
                disp_w_addr <= std_logic_vector(to_unsigned(burst_count));
                disp_w_data <= core_r_data;
                burst_count <= burst_count + 1;
                -- figure out how and when to set disp_w_en and core_r_addr in burst mode
            end if;
        end if;
    end process;
    
    size <= queue_size;
end architecture;