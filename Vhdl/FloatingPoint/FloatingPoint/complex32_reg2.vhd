library ieee;
use ieee.std_logic_1164.all;
use work.complex_pkg.all;

entity complex32_reg2 is
generic (n: integer := 8);
port (
	clk, rst	: in  std_logic;
	input 	: in  complex32;
	output	: out complex32
);
end entity;

architecture rtl of complex32_reg2 is
begin
	process(clk, rst) 
	begin
		if rst = '1' then
			output <= (others => "00000000000000000000000000000000");
		elsif rising_edge(clk) then
			output <= input;
		end if;
	end process;
end architecture rtl;