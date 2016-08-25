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
-- Generated on "04/09/2015 18:30:03"
                                                            
-- Vhdl Test Bench template for design  :  exercicio1
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY exercicio1_vhd_tst IS
END exercicio1_vhd_tst;
ARCHITECTURE exercicio1_arch OF exercicio1_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL input : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL output : STD_LOGIC_VECTOR(35 DOWNTO 0);
COMPONENT exercicio1
	PORT (
	input : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	output : OUT STD_LOGIC_VECTOR(35 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : exercicio1
	PORT MAP (
-- list connections between master ports and signals
	input => input,
	output => output
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        input <= "00000000000000000000000000100000";                     
WAIT; 
END PROCESS;                                                       
END exercicio1_arch;
