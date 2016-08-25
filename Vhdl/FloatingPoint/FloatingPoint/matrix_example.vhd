library ieee;
use ieee.std_logic_1164.all;

library ieee_proposed;
use ieee_proposed.fixed_float_types.all; 
use ieee_proposed.float_pkg.all; 

use work.matrix_pkg.all;

entity matrix_example is
generic (
	n: integer := 1;
	m: integer := 1;
	k: integer := 3);
port (
	clk: in std_logic;
	a: in  matrix(n-1 downto 0, k-1 downto 0);
	b: in  matrix(k-1 downto 0, m-1 downto 0);
	o: out matrix(n-1 downto 0, m-1 downto 0)
);
end entity;

architecture rtl of matrix_example is
begin
	process(clk)
	begin
		if rising_edge(clk) then
			o <= a * b;
		end if;
	end process;
end rtl;