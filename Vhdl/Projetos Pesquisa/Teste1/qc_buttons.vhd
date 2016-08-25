LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.quRecords.all;

ENTITY qc_buttons IS
	PORT( pb_start, pb_reset, clock : IN STD_LOGIC;
	      start : OUT STD_LOGIC;
	      reset : OUT STD_LOGIC
	     );
END qc_buttons;

ARCHITECTURE qc_buttons_structural OF qc_buttons IS

COMPONENT button_interface
	PORT(pbinput : IN STD_LOGIC;
	     clock : IN STD_LOGIC;
	     output : OUT STD_LOGIC
	     );
END COMPONENT;

COMPONENT DFF
	PORT(clock : IN STD_LOGIC;
	      input : IN STD_LOGIC;
	      output : OUT STD_LOGIC
	      );
END COMPONENT;

SIGNAL ff_start1,ff_start2,ff_reset1,ff_reset2 : STD_LOGIC;
BEGIN

DFF_start1 : DFF PORT MAP(clock,pb_start,ff_start1);
DFF_start2 : DFF PORT MAP(clock,ff_start1,ff_start2);
DFF_reset1 : DFF PORT MAP(clock,pb_reset,ff_reset1);
DFF_reset2 : DFF PORT MAP(clock,ff_reset1,ff_reset2);
start_interface : button_interface PORT MAP(ff_start2,clock,start);
reset_interface : button_interface PORT MAP(ff_reset2,clock,reset);
END qc_buttons_structural;