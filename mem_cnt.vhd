library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.surfer_pkg.all;

entity mem_cnt is
    port (
        clk, rst    : in std_logic;
        add, delete : in std_logic;
        copy, move  : in std_logic;
        info        : in bomb_info;
        speed       : in speed_range;
        
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
    signal burst_mode  : std_logic; -- 0 for copy, 1 for move
    signal burst_count : q_size_range;
begin
    ADD_DELETE: process(clk, rst) is
    begin
        if rst='1' then
            queue_size <= 0;
            queue_head <= 0;
        elsif rising_edge(clk) then
            if burst_state='0' then
                if add='1' and queue_size < q_size_range'high then
                    queue_size <= queue_size + 1;
                elsif delete='1' and queue_size > 0 then
                    queue_size <= queue_size - 1;
                    queue_head <= (queue_head + 1) mod q_size_range'high;
                end if;
            end if;
        end if;
    end process;
    
    SET_BURST: process(clk, rst) is
    begin
        if rst='1' then
            burst_state <= '0';
            burst_count <= 0;
        elsif rising_edge(clk) then
            if (copy='1' or move='1') and queue_size > 0 and burst_state='0' then
                burst_state <= '1';
                burst_count <= 0;
                if copy='1' then burst_mode <= '0';
                else burst_mode <= '1'; end if;
            elsif burst_count >= queue_size-1 then
                burst_state <= '0';
            end if;
            if burst_state='1' then
                burst_count <= burst_count + 1;
            end if;
        end if;
    end process;
    
    READ_CORE: process(queue_head, burst_count, burst_state) is -- comb process
    begin
        if burst_state='1' then
            core_r_addr <= std_logic_vector(to_unsigned(queue_head + burst_count + 1, mem_addr'length));
        else
            core_r_addr <= std_logic_vector(to_unsigned(queue_head, mem_addr'length));
        end if;
    end process;
    
    WRITE_DISP: process(clk) is
    begin
        if rising_edge(clk) then
            disp_w_en <= '0';
            if burst_state='1' and burst_mode='0' then
                disp_w_en <= '1';
                disp_w_addr <= std_logic_vector(to_unsigned(burst_count, mem_addr'length));
                disp_w_data <= core_r_data;
            end if;
        end if;
    end process;
    
    WRITE_CORE: process(clk) is
    variable read_pos : integer;
    variable new_pos : std_logic_vector(10 downto 0);
    begin
        if rising_edge(clk) then
            core_w_en <= '0';
            if burst_state='1' and burst_mode='1' then
                read_pos := to_integer(signed(core_r_data(13 downto 3)));
                new_pos  := std_logic_vector(to_signed(read_pos - speed, 11));
                core_w_addr <= std_logic_vector(to_unsigned(queue_head + burst_count, mem_addr'length));
                core_w_data <= "00" & new_pos & core_r_data(2 downto 0);
                core_w_en <= '1';
            end if;
            if burst_state='0' and add='1' and queue_size < q_size_range'high then
                core_w_addr <= std_logic_vector(to_unsigned(queue_head + queue_size, mem_addr'length));
                core_w_data <= "00" & info;
                core_w_en <= '1';
            end if;
        end if;
    end process;
    
    SET_FIRST: process(clk) is
    begin
        if rising_edge(clk) then
            if add='1' and queue_size=0 then
                first <= info;
            elsif burst_state='0' then -- should fix glitch on this transition
                first <= core_r_data(13 downto 0);
            end if;
        end if;
    end process;
    
    size <= queue_size;
end architecture;