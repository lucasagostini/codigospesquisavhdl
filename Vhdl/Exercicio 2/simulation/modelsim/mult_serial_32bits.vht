-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "04/21/2015 20:15:41"
                                                            
-- Vhdl Test Bench template for design  :  mult_serial_32bits
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mult_serial_32bits_vhd_tst IS
END mult_serial_32bits_vhd_tst;
ARCHITECTURE mult_serial_32bits_arch OF mult_serial_32bits_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL md : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL mr : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL pp : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
COMPONENT mult_serial_32bits
	PORT (
	clk : IN STD_LOGIC;
	md : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	mr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	pp : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mult_serial_32bits
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	md => md,
	mr => mr,
	pp => pp,
	reset => reset
	);




	clock: process 
	begin
		clk <= '1', '0' after 5ns;
		wait for 10ns;
	end process;

	
	reset <= '0', '1' after 10ns, '0' after 20ns;
	
	md <= "00000000000000000000000001011111";
	mr <= "00000000000000000000000101000001";
	
END mult_serial_32bits_arch;
