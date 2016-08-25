-------------------------------------------------- 
-- clk_div.vhd 
-- the file will provide a new clock frequecy (base on the internal clock) 
--simulates without known bugs 
--downloaded from http://www.ee.ualberta.ca/~elliott/ee552/ 
--studentAppNotes/1999f/Drivers_Ed/components.html 

--this code has been modified, by Abdel Azzeh in 2004 , from its original form, 
--and will divide the input clock by (2xdiv_clk_by). 
--this has been done to give out a %50 duty cycle clock. 

LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.std_logic_arith.all; 
USE ieee.std_logic_unsigned.all; 


--div_clk_by : the number you want to divide the clock by 
--num_bits : the number of bits required to hold the size of the 
--constant div_clk_by 
ENTITY clk_div IS
 	GENERIC(div_clk_by: INTEGER; 
                 num_bits: INTEGER); 
 	PORT (in_clk, enable, reset: in std_logic; -- clock, enable, reset 
     	      out_clk: buffer std_logic); -- new clock frequency 
END clk_div; 

ARCHITECTURE behaviour OF clk_div IS 

-- counter 
SIGNAL count: std_logic_vector(num_bits-1 downto 0) := (OTHERS => '0'); 

BEGIN 
-- create new clock frequency 
count_clk :process(in_clk,reset) 
BEGIN
IF reset = '1' THEN
   out_clk <= '0'; 
   count <= (others => '0'); 
ELSIF rising_edge(in_clk) THEN
   IF enable = '1' THEN 
     	IF count = (div_clk_by - 1) THEN
       		count <= (OTHERS => '0'); 
       		out_clk <= '1'; 
  		IF (out_clk = '1') THEN
			out_clk <= '0'; 
  		ELSE 
  			out_clk <= '1'; 
  		END IF; 
   	ELSE 
     	  	count <= count + 1; 
   	END IF; 
    END IF; 
END IF; 
END PROCESS count_clk; 

END behaviour;