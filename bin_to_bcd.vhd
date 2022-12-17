library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bin_to_bcd is
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
end bin_to_bcd;

architecture Behavioral of bin_to_bcd is
	type State_t is (stIdle, stShift, stCorrection);
	signal state_reg, next_state : State_t;
	
    signal bin_in    : std_logic_vector(G_N - 1 downto 0);
	signal bin_in_reg : std_logic_vector(bin_in'length - 1 downto 0);
	signal shift_cnt : integer range 0 to bin_in'length - 1;
	
	signal shift_reg : std_logic_vector(bin_in'length + bcd_out'length - 1 downto 0);
begin

    bin_in <= std_logic_vector(to_unsigned(num_in, G_N));

	STATE_TRANSITION: process (clk) is
	begin
		if rising_edge(clk) then
			if reset = '1' then
				state_reg <= stIdle;
			else
				state_reg <= next_state;
			end if;		
		end if;	
	end process STATE_TRANSITION;
	
	NEXT_STATE_LOGIC: process (state_reg, bin_in, bin_in_reg, shift_cnt) is
	begin
		case state_reg is
			when stIdle =>
				if (bin_in /= bin_in_reg) then
					next_state <= stShift;
				else
					next_state <= stIdle;
				end if;
			when stShift =>
				if shift_cnt = 0 then
					next_state <= stIdle;
				else
					next_state <= stCorrection;
				end if;
			when stCorrection =>
				next_state <= stShift;
		end case;	
	end process NEXT_STATE_LOGIC;
	
	BIN_IN_SAVE: process (clk) is
	begin
		if rising_edge(clk) then
			if reset = '1' then
				bin_in_reg <= (others => '0');
			else
				bin_in_reg <= bin_in;
			end if;
		end if;
	end process BIN_IN_SAVE;
	
	
	CNT_PROCESS: process (clk) is
	begin
		if rising_edge(clk) then
			if reset = '1' then
				shift_cnt <= G_N - 1;
			else
				if state_reg = stIdle or next_state = stIdle then
					shift_cnt <= G_N - 1;				
				elsif state_reg = stShift then
					shift_cnt <= shift_cnt - 1;
				end if;
			end if;		
		end if;	
	end process CNT_PROCESS;
	
	SHIFT_REG_PROC: process (clk) is
	begin
		if rising_edge(clk) then
			if reset = '1' then
				shift_reg <= (others => '0');
			else
				case state_reg is
					when stIdle =>
						if next_state = stShift then
							shift_reg(bin_in'length - 1 downto 0) <= bin_in;
							shift_reg(shift_reg'length -1 downto bin_in'length) <= (others => '0');
						end if;
					when stShift =>
						shift_reg <= shift_reg(shift_reg'length - 2 downto 0) & '0';
					when stCorrection =>
						L_CORRECTION: for iD in 0 to G_D - 1 loop
							if unsigned(shift_reg(shift_reg'length - 1 - iD*4 downto shift_reg'length - 4 - iD*4)) > 4 then
								shift_reg(shift_reg'length - 1 - iD*4 downto shift_reg'length - 4 - iD*4) <=
									std_logic_vector(unsigned(shift_reg(shift_reg'length - 1 - iD*4 downto shift_reg'length - 4 - iD*4)) + 3);
							end if;
						end loop L_CORRECTION;						
				end case;
			end if;
		end if;	
	end process SHIFT_REG_PROC;
	
	OUTPUT_PROCESS: process (clk) is
	begin
		if rising_edge(clk) then
			if reset = '1' then
				bcd_out <= (others => '0');
			else
				if state_reg = stIdle then
					bcd_out <= shift_reg(shift_reg'length - 1 downto bin_in'length);
				end if;
			end if;		
		end if;
	end process OUTPUT_PROCESS;
	

end Behavioral;