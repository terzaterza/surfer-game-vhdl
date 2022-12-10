library ieee;
use ieee.std_logic_1164.all;
library work;
use work.surfer_pkg.all;

entity surfer is
    port (
        clk_50MHz : in std_logic;
        rst       : in std_logic;
        up, down  : in std_logic;
        
        digit1, digit0 : out std_logic_vector(6 downto 0); -- add 8 bit to (2 digit) 7seg converter
        lives_leds     : out std_logic_vector(2 downto 0)
        
        -- vga outputs
    );
end entity;

architecture structural of surfer is
    component gen_info is
        port (
            clk, rst : in std_logic;
            count_en : in std_logic;
            
            take : out std_logic;
            info : out bomb_info
        );
    end component;
    
    component mem IS -- check if is same with cyclone V
        PORT
        (
            clock		: IN STD_LOGIC  := '1';
            data		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
            rdaddress		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
            wraddress		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
            wren		: IN STD_LOGIC  := '0';
            q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
        );
    END component;

    signal clk      : std_logic;    
    signal ref_tick : std_logic; -- could be both ref_tick and v_sync from vga_sync
    
    signal generated_take : std_logic;
    signal generated_info : bomb_info;
    
    signal core_w_data, core_r_data : mem_data;
    signal core_w_addr, core_r_addr : mem_addr;
    signal core_w_en : std_logic;
    
    signal disp_w_data, disp_r_data : mem_data;
    signal disp_w_addr, disp_r_addr : mem_addr;
    signal disp_w_en : std_logic;
    
    signal s_curr, s_next : game_states;
begin
    CORE_MEM_I: mem port map (clk, core_w_data, core_r_addr, core_w_addr, core_w_en, core_r_data);
    DISP_MEM_I: mem port map (clk, disp_w_data, disp_r_addr, disp_w_addr, disp_w_en, disp_r_data);
    
    GEN_INFO_I: gen_info port map(clk, rst, ref_tick, generated_take, generated_info);

    clock_div: process(clk_50MHz) is -- replace with pll
    begin
        if rst='1' then
            clk <= '0';
        elsif rising_edge(clk_50MHz) then
            clk <= not clk;
        end if;
    end process;
    
--    with s_curr select
--    s_next <= coll_check when burst_cpy,
--              add_elem   when coll_check,
--              move       when add_elem,
--              inc_speed  when move,
--              wait_ref   when inc_speed,
--              burst_cpy  when wait_ref;
              
    update_next: process(s_curr, ref_tick) is
    begin
        case s_curr is
            when coll_check => s_next <= add_elem;
            when add_elem   => s_next <= move;
            when move       => s_next <= inc_speed;
            when inc_speed  => s_next <= wait_ref;
            when wait_ref =>
                if ref_tick='0' then s_next <= wait_ref;
                else s_next <= burst_cpy; end if;
            when burst_cpy  => s_next <= coll_check;
        end case;
    end process;
              
    update_curr: process(clk, rst) is
    begin
        if rst='1' then
            s_curr <= coll_check;
        elsif rising_edge(clk) then
            s_curr <= s_next;
        end if;
    end process;
    

end architecture;