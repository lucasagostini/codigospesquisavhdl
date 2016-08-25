use work.complex_pkg.all;

entity complex32_mult is
port (
	a, b: in complex32;
	o   : out complex32);
end entity;

architecture rtl of complex32_mult is
begin
	o <= a * b;
end architecture rtl;