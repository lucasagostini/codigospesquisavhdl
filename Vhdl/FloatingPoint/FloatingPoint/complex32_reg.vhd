library ieee;
use ieee.std_logic_1164.all;
use work.complex_pkg.all;

entity complex32_reg is
generic (n: integer := 8);
port (
	clk, rst	: in  std_logic;
	input 	: in  complex32_vector(n-1 downto 0);
	output	: out complex32_vector(n-1 downto 0)
);
end entity;

architecture rtl of complex32_reg is
begin
	process(clk, rst) 
	begin
		if rst = '1' then
			output <= (others => czero);
		elsif rising_edge(clk) then
			output <= input;
		end if;
	end process;
end architecture rtl;