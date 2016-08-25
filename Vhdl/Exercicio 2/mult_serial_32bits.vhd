library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity mult_serial_32bits is
port (
	mr		: 	in std_logic_vector(31 downto 0);
	md 	: 	in std_logic_vector(31 downto 0);
	clk	:	in std_logic;
	reset	:	in std_logic;
	pp		: out std_logic_vector(63 downto 0)
);
end entity;

architecture rtl of mult_serial_32bits is
	component reg_n_shifter is 
	generic (N: integer := 32);
	port (
		D		:	in std_logic_vector(N-1 downto 0);
		clk	:	in std_logic;
		reset	:	in std_logic;
		enable:	in std_logic;
		shift	:	in std_logic;
		bin	:  in std_logic;
		bout	: out std_logic;
		Q		: out std_logic_vector(N-1 downto 0)	
	);
	end component;
	component mult_serial_32bits_fsm is
	port (
		clk		:	in std_logic;
		reset		:	in std_logic;
		enableh	: out std_logic;
		enablel	: out std_logic;
		shifth	: out std_logic;
		shiftl	: out std_logic
	);
	end component;

	signal partial_sum	:	std_logic_vector(31 downto 0);
	signal high_mult		: 	std_logic_vector(31 downto 0);
	signal low_mult		: 	std_logic_vector(31 downto 0);
	signal ula_in_a		: 	std_logic_vector(31 downto 0);
	signal ula_in_b		: 	std_logic_vector(31 downto 0);
	signal ula_out			: 	std_logic_vector(32 downto 0);
	signal carry			:  std_logic;
	signal hilo_carry		:  std_logic;
	signal enableh			: 	std_logic;
	signal enablel			: 	std_logic;
	signal shifth			: 	std_logic;
	signal shiftl			: 	std_logic;
	signal mux_sel_ff		:	std_logic;
	signal mux_sel			: 	std_logic;
	
	
begin

	HI: reg_n_shifter port map (D 		=> partial_sum,
										 Q 		=> high_mult,
										 bin 		=> carry,
										 bout 	=> hilo_carry,
										 clk 		=> clk,
										 reset 	=> reset,
										 enable 	=> enableh,
										 shift	=> shifth );
										 
	LO: reg_n_shifter port map (D 		=> mr,
										 Q 		=> low_mult,
										 bin 		=> hilo_carry,
										 bout 	=> mux_sel_ff,
										 clk 		=> clk,
										 reset 	=> reset,
										 enable 	=> enablel,
										 shift	=> shiftl );
										 
	FSM: mult_serial_32bits_fsm port map (clk 	=> clk,
													  reset 	=> reset,
													  enableh=>	enableh,
													  enablel=> enablel,
													  shifth	=> shifth,
													  shiftl	=> shiftl  );
	process (clk, reset) is
	begin
		if reset = '1' then
			mux_sel <= '0';
		elsif rising_edge(clk) then
			mux_sel <= mux_sel_ff;
		end if;		
	end process;
	
	process(mux_sel, md) is
	begin
		if mux_sel = '1' then
			ula_in_a <= md;
		else
			ula_in_a <= (others => '0');
		end if;
	end process;
	
	ula_in_b		<= high_mult;
	ula_out 		<= ('0' & ula_in_a) + ('0' & ula_in_b);
	carry 		<= ula_out(32);
	partial_sum <= ula_out(31 downto 0);
	
	pp <= high_mult & low_mult;
end architecture rtl;
