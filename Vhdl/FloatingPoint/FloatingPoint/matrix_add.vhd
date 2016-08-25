library ieee;
use ieee.std_logic_1164.all;
use work.complex_pkg.all;
use work.matrix_pkg.all;

entity matrix_add is
generic (
	n: integer := 2;
	m: integer := 2);
port (
	a:		in  matrix(m-1 downto 0, n-1 downto 0);
	b:		in  matrix(m-1 downto 0, n-1 downto 0);
	sum:	out matrix(m-1 downto 0, n-1 downto 0));
end entity;

architecture rtl of matrix_add is
begin
	line_i:
	for i in 0 to m-1 generate
		column_j:
		for j in 0 to n-1 generate
			adder: sum(i, j) <= a(i, j) + b(i, j);
		end generate;
	end generate;
end rtl;