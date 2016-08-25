library IEEE;
use ieee.std_logic_1164.all;

entity reg_n_shifter is 
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
end entity;

architecture RTL of reg_n_shifter is
	signal internal_Q	:	std_logic_vector(N-1 downto 0);
begin
	process(clk, reset, enable) is
	begin
		if reset = '1' then
			internal_Q <= (others => '0');
		elsif rising_edge(clk) and enable = '1' then
			if shift = '1' then
				internal_Q <= bin & internal_Q (N-1 downto 1);
				bout <= internal_Q(0);
			else
				internal_Q <= D;
			end if;
		end if;
	end process;
	Q <= internal_Q;
end architecture RTL;