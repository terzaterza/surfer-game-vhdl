library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.surfer_pkg.all;

entity disp_test is
    port (
        clk_50MHz, rst : in std_logic;
        
        digit1, digit0 : out std_logic_vector(6 downto 0);
        
        -- vga outputs
        h_sync, v_sync  : out std_logic;
        r_out, g_out, b_out : out std_logic_vector(3 downto 0)
    );
end entity;
architecture rtl of disp_test is

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
    
    component bin_to_bcd is
        generic (
            G_N : natural := 8;
            G_D : natural := 3
        );
        port (
            clk       : in std_logic;
            reset     : in std_logic;
            num_in    : in natural range 0 to (10 ** G_D) - 1;
            bcd_out   : out std_logic_vector(G_D*4 - 1 downto 0)
        );
    end component;
    
    component bcd_to_7seg is
        port (
            digit   : in  std_logic_vector(3 downto 0);
            display : out std_logic_vector(6 downto 0)
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
    signal vga_r, vga_g, vga_b : std_logic_vector(7 downto 0);
    
    signal bcd_out : std_logic_vector(11 downto 0);
    
    type test_mem is array (0 to 15) of std_logic_vector(15 downto 0);
    constant const_mem : test_mem := (
        x"0705", x"0900", x"0b02", x"0000",
        x"0000", x"0000", x"0000", x"0000",
        x"0000", x"0000", x"0000", x"0000",
        x"0000", x"0000", x"0000", x"0000"
    );

begin

    clk_process: process(clk_50MHz, rst) is
    begin
        if rst='1' then
            clk <= '0';
        elsif rising_edge(clk_50MHz) then
            clk <= not clk;
        end if;
    end process;
    
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
        generic map ( 96, 48, 16, 640, 2, 33, 10, 480)
        port map (
        clk, rst, h_sync, v_sync, open, open, xp, yp,
        disp_color(23 downto 16), disp_color(15 downto 8), disp_color(7 downto 0),
        vga_r, vga_g, vga_b, ref_tick);
        
    r_out <= vga_r(7 downto 4);
    g_out <= vga_g(7 downto 4);
    b_out <= vga_b(7 downto 4);
    
    BIN_TO_BCD_I: bin_to_bcd
        port map (clk, rst, 12, bcd_out);        
    SEG1_I: bcd_to_7seg
        port map (bcd_out(7 downto 4), digit1);        
    SEG2_I: bcd_to_7seg
        port map (bcd_out(3 downto 0), digit0);

end architecture;