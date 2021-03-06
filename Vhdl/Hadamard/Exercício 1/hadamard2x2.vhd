library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity hadamard2x2 is
port (
	MatIn1,MatIn2,MatIn0,MatIn3		:	in std_logic_vector(7 downto 0);
	MatOut	: out std_logic_vector(31 downto 0));
end entity hadamard2x2;

architecture combinacional of hadamard2x2 is
	signal a, b, c, d:std_logic_vector(7 downto 0);
	signal temp: std_logic_vector(31 downto 0);
begin
a<=MatIn0;
b<=MatIn1;
c<=MatIn2;
d<=MatIn3;

temp(7 downto 0)<=(a+b)+(c+d);
temp(15 downto 8)<= (a+c)-(b+d);
temp(23 downto 16)<= (a+b)-(c+d);
temp(31 downto 24)<= (a+d)- (c+b);

MatOut(6 downto 0)<=temp(7 downto 1);
MatOut(14 downto 7)<=temp(15 downto 8); 
MatOut(22 downto 15)<=temp(23 downto 16);
MatOut(30 downto 23)<=temp(31 downto 24);
MatOut(31)<='0';

end architecture combinacional;