LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY testhardware IS
	PORT (start, clock : IN std_logic;
	      output : out std_logic));
END testhardware;

ARCHITECTURE structural of testhardware IS

COMPONENT mux2
	PORT(in1,in2 : in std_logic;
	     output : out std_logic));
END COMPONENT;

COMPONENT button_interface
	PORT(start,clock : in std_logic;
	     mux_ctrl : out std_logic));
END COMPONENT;	     
signal outctrl,zero : std_logic;
BEGIN
zero <= '0';
ctrl : button_interface PORT MAP(start,clock,outctrl);
mux : mux2 PORT MAP(zero,outctrl,output);
END structural;	   