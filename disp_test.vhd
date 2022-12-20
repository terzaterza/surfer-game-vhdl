library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.surfer_pkg.all;

entity disp_test is
    port (
        clk_50MHz, rst : in std_logic;
        
        vga_clk : out std_logic;
        h_sync, v_sync  : out std_logic;
        r_out, g_out, b_out : out std_logic_vector(7 downto 0)
    );
end entity;
architecture rtl of disp_test is

    component pll is
        port (
            refclk   : in  std_logic := '0'; --  refclk.clk
            rst      : in  std_logic := '0'; --   reset.reset
            outclk_0 : out std_logic         -- outclk0.clk
        );
    end component;

    component display_controller is
        port (
            clk         : in std_logic;
            rst         : in std_logic;
            ref_tick    : in std_logic;
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
        
    signal ref_tick : std_logic;
    signal clk      : std_logic;
    
    signal disp_r_data : mem_data;
    signal disp_r_addr : mem_addr;
    signal disp_r_addr_reg: mem_addr;
    
    signal xp : disp_width_range;
    signal yp : disp_height_range;
    signal disp_color : color;
    
    type test_mem is array (0 to 15) of std_logic_vector(15 downto 0);
    constant const_mem : test_mem := (
        x"0705", x"0f00", x"1202", x"0000",
        x"0000", x"0000", x"0000", x"0000",
        x"0000", x"0000", x"0000", x"0000",
        x"0000", x"0000", x"0000", x"0000"
    );

begin

    PLL_I: pll
        port map(clk_50MHz, rst, clk);
    
    read_process: process(clk, rst) is
    begin
        if rst='1' then
            disp_r_addr_reg <= x"0";
            disp_r_data <= x"0000";
        elsif rising_edge(clk) then
            disp_r_addr_reg <= disp_r_addr;
            disp_r_data <= const_mem(to_integer(unsigned(disp_r_addr_reg)));
        end if;
    end process;

    DISPLAY_CONTROLLER_I: display_controller
        port map (clk, rst, ref_tick, 2, xp, yp, 3, disp_r_data, disp_r_addr, disp_color);
    VGA_SYNC_I: vga_sync
        port map (
        clk, rst, h_sync, v_sync, open, open, xp, yp,
        disp_color(23 downto 16), disp_color(15 downto 8), disp_color(7 downto 0),
        r_out, g_out, b_out, ref_tick);
        
    vga_clk <= clk;
        
end architecture;