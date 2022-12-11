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
        lives_leds     : out std_logic_vector(2 downto 0);
        
        -- vga outputs
        vga_clk : out std_logic;
        h_sync, v_sync  : out std_logic;
        sync_n, blank_n : out std_logic;
        r_out, g_out, b_out : out std_logic_vector(7 downto 0)
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
        PORT (
            clock		: IN STD_LOGIC  := '1';
            data		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
            rdaddress		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
            wraddress		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
            wren		: IN STD_LOGIC  := '0';
            q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
        );
    END component;
    
    component mem_cnt is
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
    end component;
    
    component player_controller is
        port(
            clk     :   in std_logic;
            rst     :   in std_logic;
            up      :   in std_logic;
            down    :   in std_logic;
            lane    :   out natural range 0 to 2 -- 0-gornja traka, 1-srednja traka, 2-donja traka
                            -- change to surfer_pkg.lane_range
            
        );
    end component;
    
    component collision_controller is
        port(
            lane    :   in natural range 0 to 2;
            size    :   in natural range 0 to 16;
            first   :   in std_logic_vector(13 downto 0); --11 downto 3 - horizontalna pozicija
                                                          --2  downto 1 - traka 
                                                          -- 0 - 0-novcic,1-bomba
            hit     :   out std_logic;
            miss    :   out std_logic
        );
    end component;
    
    component display_controller is
        port (
            clk, rst    : in std_logic;
            lane        : in lane_range;
            xp          : in disp_width_range;
            yp          : in disp_height_range;
            size        : in q_size_range; --broj elemenata u memoriji
            mem_data    : in mem_data; --info o bombi ili novcicu
            mem_addr    : out mem_addr; -- adresa sa koje citamo info
            disp_color  : out color --boja koju prosledjujemo vga_sync-u
        );
        end component;
    
    component vga_sync is
        generic (
            -- Default display mode is 1024x768@60Hz
            -- Horizontal line
            H_SYNC	: integer := 136;		-- sync pulse in pixels
            H_BP		: integer := 160;		-- back porch in pixels
            H_FP		: integer := 24;		-- front porch in pixels
            H_DISPLAY: integer := 1024;	-- visible pixels
            -- Vertical line
            V_SYNC	: integer := 6;		-- sync pulse in pixels
            V_BP		: integer := 29;		-- back porch in pixels
            V_FP		: integer := 3;		-- front porch in pixels
            V_DISPLAY: integer := 768		-- visible pixels
        );
        port (
            clk : in std_logic;
            reset : in std_logic;
            hsync, vsync : out std_logic;
            sync_n, blank_n : out std_logic;
            hpos : out integer range 0 to H_DISPLAY - 1;
            vpos : out integer range 0 to V_DISPLAY - 1;
            Rin, Gin, Bin : in std_logic_vector(7 downto 0);
            Rout, Gout, Bout : out std_logic_vector(7 downto 0);
            ref_tick : out std_logic
        );
    end component;

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
    
    signal lane : lane_range;
    
    signal add, delete : std_logic;
    signal copy, move  : std_logic;
    signal first       : bomb_info;
    signal size        : q_size_range;
    signal speed       : speed_range;
    
    signal reset_speed : std_logic;
    signal hit, miss   : std_logic;
    
    signal xp : disp_width_range;
    signal yp : disp_height_range;
    signal disp_color : color;
begin
    CORE_MEM_I: mem port map (clk, core_w_data, core_r_addr, core_w_addr, core_w_en, core_r_data);
    DISP_MEM_I: mem port map (clk, disp_w_data, disp_r_addr, disp_w_addr, disp_w_en, disp_r_data);
    
    GEN_INFO_I: gen_info port map(clk, rst, ref_tick, generated_take, generated_info);
    
    MEM_CONTROLLER_I: mem_cnt port map (
        clk, rst,
        add, delete, copy, move,
        generated_info, speed,
        core_r_data, core_w_en, core_w_data, core_w_addr, core_r_addr,
        disp_w_en, disp_w_data, disp_w_addr,
        first, size);
            
    PLAYER_CONTROLLER_I: player_controller port map (clk, rst, up, down, lane);
    COLLISION_CONTROLLER_I: collision_controller port map (lane, size, first, hit, miss);
    DISPLAY_CONTROLLER_I: display_controller port map (
        clk, rst, lane, xp, yp, size, disp_r_data, disp_r_addr, disp_color); -- change this
    
    VGA_SYNC_I: vga_sync
        generic map ( 96, 48, 16, 640, 2, 33, 10, 480)
        port map (
        clk, rst, h_sync, v_sync, sync_n, blank_n, xp, yp,
        disp_color(23 downto 16), disp_color(15 downto 8), disp_color(7 downto 0),
        r_out, g_out, b_out, ref_tick
    );
    
    clock_div: process(clk_50MHz, rst) is -- replace with pll
    begin
        if rst='1' then
            clk <= '0';
        elsif rising_edge(clk_50MHz) then
            clk <= not clk;
        end if;
    end process;
                  
    update_next: process(s_curr, ref_tick) is
    begin
        case s_curr is
            when s_coll_check => s_next <= s_add_elem;
            when s_add_elem   => s_next <= s_inc_speed;
            when s_inc_speed  => s_next <= s_move;
            when s_move       => s_next <= s_wait_ref;
            when s_wait_ref =>
                if ref_tick='0' then s_next <= s_wait_ref;
                else s_next <= s_burst_cpy; end if;
            when s_burst_cpy  => s_next <= s_coll_check;
        end case;
    end process;
              
    update_curr: process(clk, rst) is
    begin
        if rst='1' then
            s_curr <= s_coll_check;
        elsif rising_edge(clk) then
            s_curr <= s_next;
        end if;
    end process;
    
    update_speed: process(clk, rst) is
    begin
        if rst='1' then
            speed <= 0;
        elsif rising_edge(clk) then
            if reset_speed='1' then
                speed <= 0;
            elsif s_curr=s_inc_speed and speed < speed_range'high then
                speed <= speed + 1;
            end if;
        end if;
    end process;
    
    add    <= '1' when s_curr=s_add_elem and generated_take='1' else '0';
    delete <= '1' when s_curr=s_coll_check and (hit='1' or miss='1') else '0';
    move   <= '1' when s_curr=s_move else '0';
    copy   <= '1' when s_curr=s_burst_cpy else'0';
    
    reset_speed <= '1' when hit='1' and first(0)='1' else '0';
    
    vga_clk <= clk;
end architecture;