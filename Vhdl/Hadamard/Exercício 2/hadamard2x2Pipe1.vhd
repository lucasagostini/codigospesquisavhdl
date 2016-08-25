library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity hadamard2x2Pipe1 is
port (
	MatIn1,MatIn2,MatIn0,MatIn3		:	in std_logic_vector(7 downto 0);
	Clk: in std_logic;
	MatOut	: out std_logic_vector(31 downto 0));
end entity hadamard2x2Pipe1;

architecture combinacional of hadamard2x2Pipe1 is
	signal a, b, c, d,s1,s2,s3,s4,s5,s6:std_logic_vector(7 downto 0);
	signal temp: std_logic_vector(31 downto 0);


	begin
a<=MatIn0;
b<=MatIn1;
c<=MatIn2;
d<=MatIn3;
process(Clk)
begin

if Clk='1' and Clk'event then
s1<=a+b;
s2<=a+c;
s3<=d+a;
s4<=c+d;
s5<=b+d;
s6<=b+c;
end if;
if(Clk='1' and Clk'event) then
temp(7 downto 0)<=s1+s4;
temp(15 downto 8)<= s2-s5;
temp(23 downto 16)<= s1-s4;
temp(31 downto 24)<= s3- s6;
end if;

MatOut(6 downto 0)<=temp(7 downto 1);
MatOut(14 downto 7)<=temp(15 downto 8); 
MatOut(22 downto 15)<=temp(23 downto 16);
MatOut(30 downto 23)<=temp(31 downto 24);
MatOut(31)<='0';
end process;
end architecture combinacional;