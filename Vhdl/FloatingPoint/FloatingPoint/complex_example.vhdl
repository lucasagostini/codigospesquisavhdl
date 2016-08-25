library ieee;
use ieee.std_logic_1164.all;

library ieee_proposed;
use ieee_proposed.fixed_float_types.all; 
use ieee_proposed.float_pkg.all; 

use work.complex_pkg.all;

entity complex_example is
port (
	a: in  complex32;
	b: in  complex32;
	o: out complex32
);
end entity;

architecture rtl of complex_example is
begin
	o <= a + b;
end rtl;