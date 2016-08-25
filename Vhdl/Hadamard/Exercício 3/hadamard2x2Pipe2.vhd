library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity hadamard2x2Pipe2 is
port (
	MatIn		:	in std_logic_vector(7 downto 0);
	Clk: in std_logic;
	MatOut	: out std_logic_vector(31 downto 0));
end entity hadamard2x2Pipe2;

architecture combinacional of hadamard2x2Pipe2 is
	signal a,s1,s2,s3,s4,s5,s6,Sa,Sb,Sc,Sd:std_logic_vector(7 downto 0);
	signal temp: std_logic_vector(31 downto 0);
	signal sig,ready: std_logic;


	begin
a<=MatIn;
process(Clk)
variable cont: integer:=0;
begin
if Clk='1' and Clk'event then
	cont:=cont+1;
end if;

if Clk='1' and Clk'event then
	Sa<=a;
	Sb<=Sa;
	Sc<=Sb;
	Sd<=Sc;
	if (cont=4) then
		sig<='1';
	end if;
end if;
	if sig='1' then
	s1<=Sa+Sb;
	s2<=Sa+Sc;
	s3<=Sd+Sa;
	s4<=Sc+Sd;
	s5<=Sb+Sd;
	s6<=Sb+Sc;
	temp(7 downto 0)<=s1+s4;
	temp(15 downto 8)<= s2-s5;
	temp(23 downto 16)<= s1-s4;
	temp(31 downto 24)<= s3- s6;
	if(cont=6) then
		ready<='1';
	end if;
end if;
MatOut(6 downto 0)<=temp(7 downto 1);
MatOut(14 downto 7)<=temp(15 downto 8); 
MatOut(22 downto 15)<=temp(23 downto 16);
MatOut(30 downto 23)<=temp(31 downto 24);
MatOut(31)<='0';
end process;
end architecture combinacional;