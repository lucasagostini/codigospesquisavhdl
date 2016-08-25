library ieee;
use ieee.std_logic_1164.all;

entity floating_point_example is port (
	a, b : in std_logic_vector (31 downto 0);
	Sum : out std_logic_vector (31 downto 0);
	Clk, reset : in std_ulogic); 
end entity floating_point_example ;

library ieee_proposed;
use ieee_proposed.fixed_float_types.all; -- ieee in the release
use ieee_proposed.float_pkg.all; -- ieee.float_pkg.all; in the release

architecture RTL of floating_point_example is
	Signal afp, bfp, Sumfp : float32; -- same as “float (8 downto –23)”
begin
	afp <= to_float (a, afp'high, -afp'low); -- SLV to float, with bounds
	bfp <= to_float (b, Bfp); -- SLV to float, using Bfp’range
	Addreg : process (clk, reset) is
	begin
		if reset = '1' then
			Sumfp <= (others => '0');
		elsif rising_edge (clk) then
			Sumfp <= afp + bfp;
		end if;
	Sum <= to_slv (Sumfp);
	end process Addreg;
end architecture RTL;
