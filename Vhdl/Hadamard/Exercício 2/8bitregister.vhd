library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity register8 is 
port (d   : in std_logic_vector (7 downto 0);
      preset : in std_logic;
      clear  : in std_logic;
      clk    : in std_logic;
      q      : out std_logic_vector(7 downto 0));
end register8;

architecture bhv_dff of register8 is
begin
   process(clk, clear, preset)
   begin
      if clear = '0' then 
         q <= "00000000";
      elsif preset = '1' then
         q <= "11111111";
      elsif clk'event and clk='1' then
         q <= d;
      end if;
   end process;
end bhv_dff;
