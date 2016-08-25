library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity mult_serial_32bits_fsm is
port (
	clk		:	in std_logic;
	reset		:	in std_logic;
	start    :  in std_logic;
	enableh	: out std_logic;
	enablel	: out std_logic;
	shifth	: out std_logic;
	shiftl	: out std_logic;
	ready		: out std_logic
);
end entity mult_serial_32bits_fsm;

architecture fsm of mult_serial_32bits_fsm is
	type fsm_state_t is (S0, S1, S2, S3);
	signal counter 	: std_logic_vector(5 downto 0);
	signal curr_state	: fsm_state_t;
	signal next_state : fsm_state_t;
	signal is_active	: std_logic := '0'; 
	signal finish		: std_logic := '1'; 
begin

	loadNextState:
	process(clk, reset, is_active) is
	begin
		if reset = '1' then
			curr_state <= S0;
		elsif rising_edge(clk) then
			if is_active = '1' then
				curr_state <= next_state;
			end if;
		end if;
	end process;
	
	
	process(start, finish, reset) is
	begin
		if finish = '1' or reset = '1' then
			is_active <= '0';
		elsif rising_edge(start) then
			is_active <= '1';
		end if;
	end process;
	
	nextStateLogic:
	process(curr_state, is_active) is
	begin
		finish <= '0';
		if is_active = '1' then
			case curr_state is
				when S0 =>
					enableh <= '0';
					enablel <= '1';
					shifth <= '0';
					shiftl <= '0';
					counter <= (others => '0');
					next_state <= S1;
				when S1 =>
					enableh <= '1';
					enablel <= '1';
					shifth <= '1';
					shiftl <= '1';
					counter <= counter + 1;
					next_state <= S2;
				when S2 =>
					enableh <= '1';
					enablel <= '0';
					shifth <= '0';
					shiftl <= '0';
					if counter < "11111" then
						next_state <= S1;
					else
						next_state <= S3;
					end if;
				when S3 =>
					finish <= '1';
			end case;
		end if;
	end process;
	
	
	ready <= not is_active;

end architecture fsm;