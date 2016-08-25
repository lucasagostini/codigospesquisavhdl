library ieee;
use ieee.std_logic_1164.all;
use work.complex_pkg.all;

entity complex32_reg_shitfer is
generic (n: integer := 8);
port (
	clk, rst	: in  std_logic;
	shift 	: in  std_logic;
	
	shift_in : in  complex32;
	shift_out: out complex32;
	
	input 	: in  complex32_vector(n-1 downto 0);
	output	: out complex32_vector(n-1 downto 0)
);
end entity;

architecture rtl of complex32_reg_shitfer is
	signal q: complex32_vector(n-1 downto 0);
begin
	process(clk, rst) 
	begin
		if rst = '1' then
			q <= (others => czero);
		elsif rising_edge(clk) then
			if shift = '1' then
				q(0) <= shift_in;
				for i in 1 to n-1 loop
					q(i) <= q(i-1);
				shift_out <= q(n-1);
				end loop;
			else
				q <= input;
			end if;
		end if;
	end process;
	
	output <= q;
end architecture rtl;