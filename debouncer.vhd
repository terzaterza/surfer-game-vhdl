library ieee;
use ieee.std_logic_1164.all;

entity debouncer is
	generic	(
		count : positive := 2
	);
	port (
        clk, rst : in std_logic;
        btn      : in std_logic;
        
        request  : out std_logic
	);
end debouncer;

architecture behavioral of debouncer is
    
    component counter is
        generic
        (
            max_count : natural := 10;
            reversed  : boolean := false;
            async_rst : boolean := false
        );
        port
        (
            clk      : in std_logic;
            rst      : in std_logic;
            en       : in std_logic;
            count_to : in natural range 0 to max_count; -- from 0 only for simulation init reasons
            
            count     : out natural range 0 to max_count - 1;
            count_end : out std_logic
        );
    end component;

    type states is (s0, s1, s2, s3, s4);
    signal s_curr, s_next : states;
    
    signal reset_cnt : std_logic;
    signal count_en  : std_logic;
    signal count_end : std_logic;
begin

	update_next : process (s_curr, btn, count_end) is
    begin
        case s_curr is
            when s0 =>
                if btn='1' then
                    s_next <= s1;
                else
                    s_next <= s0;
                end if;
            when s1 =>
                if count_end='1' then
                    s_next <= s2;
                else
                    s_next <= s1;
                end if;
            when s2 =>
                if btn='0' then
                    s_next <= s0;
                elsif btn='1' then
                    s_next <= s3;
                else
                    s_next <= s2;
                end if;
            when s3 =>
                s_next <= s4;
            when s4 =>
                if btn='0' then
                    s_next <= s0;
                else
                    s_next <= s4;
                end if;
        end case;
    end process;
    
    update_curr : process (clk, rst) is
    begin
        if rst='1' then
            s_curr <= s0;
        elsif rising_edge(clk) then
            s_curr <= s_next;
        end if;
    end process;
    
    cnt_inst : counter
        generic map (
            max_count => count
        )
        port map (
            clk => clk,
            rst => reset_cnt,
            en => count_en,
            count_to => count,
            count => open,
            count_end => count_end
        );
        
    count_en <= '1' when s_curr=s1 else '0';
    reset_cnt <= '1' when s_curr=s0 else '0';
    request <= '1' when s_curr=s3 else '0';
    
end behavioral;
