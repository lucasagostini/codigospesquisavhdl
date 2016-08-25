-- add32b.vhdl    entity add32 and behavioral architecture

library IEEE;
use IEEE.std_logic_1164.all;
entity add32 is
  port(a    : in  std_logic_vector(31 downto 0);
       b    : in  std_logic_vector(31 downto 0);
       cin  : in  std_logic; 
       sum  : out std_logic_vector(31 downto 0);
       cout : out std_logic);
end entity add32;

library IEEE;
use IEEE.std_logic_arith.all;  -- defines "+" on unsigned
architecture behavior of add32 is
  signal temp : std_logic_vector(32 downto 0);
  signal vcin : std_logic_vector(32 downto 0) := X"00000000"&'0';
  signal va   : std_logic_vector(32 downto 0) := X"00000000"&'0';
  signal vb   : std_logic_vector(32 downto 0) := X"00000000"&'0';
  -- 33 bits (32 downto 0) needed to compute cout
begin  -- circuits of add32
  vcin(0) <= cin;
  va(31 downto 0) <= a;
  vb(31 downto 0) <= b;
  temp <= unsigned(va) + unsigned(vb) + unsigned(vcin);
  cout <= temp(32) after 10 ps;
  sum  <= temp(31 downto 0) after 10 ps;
end architecture behavior;  -- of add32