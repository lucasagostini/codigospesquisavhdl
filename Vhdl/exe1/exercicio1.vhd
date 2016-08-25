library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

-- Multiplica uma entrada de 8 bits pela constante 10
entity exercicio1 is
port (
	input :  in std_logic_vector(31 downto 0);
	output: out std_logic_vector(34 downto 0));
end entity;

architecture RTL of exercicio1 is
begin
	-- saida: input * 8  + input * 2
	-- saida: input << 3 + input << 1
	output <= ((input & "000") + (input & '0'));
end architecture RTL;
