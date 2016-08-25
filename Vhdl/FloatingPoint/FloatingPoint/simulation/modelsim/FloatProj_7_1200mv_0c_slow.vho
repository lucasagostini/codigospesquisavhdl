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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "06/29/2015 00:52:18"

-- 
-- Device: Altera EP4CGX150DF31C7 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	complex32_mul IS
    PORT (
	\a.im_neg_23\ : IN std_logic;
	\a.im_neg_22\ : IN std_logic;
	\a.im_neg_21\ : IN std_logic;
	\a.im_neg_20\ : IN std_logic;
	\a.im_neg_19\ : IN std_logic;
	\a.im_neg_18\ : IN std_logic;
	\a.im_neg_17\ : IN std_logic;
	\a.im_neg_16\ : IN std_logic;
	\a.im_neg_15\ : IN std_logic;
	\a.im_neg_14\ : IN std_logic;
	\a.im_neg_13\ : IN std_logic;
	\a.im_neg_12\ : IN std_logic;
	\a.im_neg_11\ : IN std_logic;
	\a.im_neg_10\ : IN std_logic;
	\a.im_neg_9\ : IN std_logic;
	\a.im_neg_8\ : IN std_logic;
	\a.im_neg_7\ : IN std_logic;
	\a.im_neg_6\ : IN std_logic;
	\a.im_neg_5\ : IN std_logic;
	\a.im_neg_4\ : IN std_logic;
	\a.im_neg_3\ : IN std_logic;
	\a.im_neg_2\ : IN std_logic;
	\a.im_neg_1\ : IN std_logic;
	\a.im\ : IN std_logic_vector(8 DOWNTO 0);
	\a.re_neg_23\ : IN std_logic;
	\a.re_neg_22\ : IN std_logic;
	\a.re_neg_21\ : IN std_logic;
	\a.re_neg_20\ : IN std_logic;
	\a.re_neg_19\ : IN std_logic;
	\a.re_neg_18\ : IN std_logic;
	\a.re_neg_17\ : IN std_logic;
	\a.re_neg_16\ : IN std_logic;
	\a.re_neg_15\ : IN std_logic;
	\a.re_neg_14\ : IN std_logic;
	\a.re_neg_13\ : IN std_logic;
	\a.re_neg_12\ : IN std_logic;
	\a.re_neg_11\ : IN std_logic;
	\a.re_neg_10\ : IN std_logic;
	\a.re_neg_9\ : IN std_logic;
	\a.re_neg_8\ : IN std_logic;
	\a.re_neg_7\ : IN std_logic;
	\a.re_neg_6\ : IN std_logic;
	\a.re_neg_5\ : IN std_logic;
	\a.re_neg_4\ : IN std_logic;
	\a.re_neg_3\ : IN std_logic;
	\a.re_neg_2\ : IN std_logic;
	\a.re_neg_1\ : IN std_logic;
	\a.re\ : IN std_logic_vector(8 DOWNTO 0);
	\b.im_neg_23\ : IN std_logic;
	\b.im_neg_22\ : IN std_logic;
	\b.im_neg_21\ : IN std_logic;
	\b.im_neg_20\ : IN std_logic;
	\b.im_neg_19\ : IN std_logic;
	\b.im_neg_18\ : IN std_logic;
	\b.im_neg_17\ : IN std_logic;
	\b.im_neg_16\ : IN std_logic;
	\b.im_neg_15\ : IN std_logic;
	\b.im_neg_14\ : IN std_logic;
	\b.im_neg_13\ : IN std_logic;
	\b.im_neg_12\ : IN std_logic;
	\b.im_neg_11\ : IN std_logic;
	\b.im_neg_10\ : IN std_logic;
	\b.im_neg_9\ : IN std_logic;
	\b.im_neg_8\ : IN std_logic;
	\b.im_neg_7\ : IN std_logic;
	\b.im_neg_6\ : IN std_logic;
	\b.im_neg_5\ : IN std_logic;
	\b.im_neg_4\ : IN std_logic;
	\b.im_neg_3\ : IN std_logic;
	\b.im_neg_2\ : IN std_logic;
	\b.im_neg_1\ : IN std_logic;
	\b.im\ : IN std_logic_vector(8 DOWNTO 0);
	\b.re_neg_23\ : IN std_logic;
	\b.re_neg_22\ : IN std_logic;
	\b.re_neg_21\ : IN std_logic;
	\b.re_neg_20\ : IN std_logic;
	\b.re_neg_19\ : IN std_logic;
	\b.re_neg_18\ : IN std_logic;
	\b.re_neg_17\ : IN std_logic;
	\b.re_neg_16\ : IN std_logic;
	\b.re_neg_15\ : IN std_logic;
	\b.re_neg_14\ : IN std_logic;
	\b.re_neg_13\ : IN std_logic;
	\b.re_neg_12\ : IN std_logic;
	\b.re_neg_11\ : IN std_logic;
	\b.re_neg_10\ : IN std_logic;
	\b.re_neg_9\ : IN std_logic;
	\b.re_neg_8\ : IN std_logic;
	\b.re_neg_7\ : IN std_logic;
	\b.re_neg_6\ : IN std_logic;
	\b.re_neg_5\ : IN std_logic;
	\b.re_neg_4\ : IN std_logic;
	\b.re_neg_3\ : IN std_logic;
	\b.re_neg_2\ : IN std_logic;
	\b.re_neg_1\ : IN std_logic;
	\b.re\ : IN std_logic_vector(8 DOWNTO 0);
	a_enable : IN std_logic;
	b_enable : IN std_logic;
	write_buffer : IN std_logic;
	read_buffer : IN std_logic;
	start : IN std_logic;
	clk : IN std_logic;
	rst : IN std_logic;
	\sum.im_neg_23\ : OUT std_logic;
	\sum.im_neg_22\ : OUT std_logic;
	\sum.im_neg_21\ : OUT std_logic;
	\sum.im_neg_20\ : OUT std_logic;
	\sum.im_neg_19\ : OUT std_logic;
	\sum.im_neg_18\ : OUT std_logic;
	\sum.im_neg_17\ : OUT std_logic;
	\sum.im_neg_16\ : OUT std_logic;
	\sum.im_neg_15\ : OUT std_logic;
	\sum.im_neg_14\ : OUT std_logic;
	\sum.im_neg_13\ : OUT std_logic;
	\sum.im_neg_12\ : OUT std_logic;
	\sum.im_neg_11\ : OUT std_logic;
	\sum.im_neg_10\ : OUT std_logic;
	\sum.im_neg_9\ : OUT std_logic;
	\sum.im_neg_8\ : OUT std_logic;
	\sum.im_neg_7\ : OUT std_logic;
	\sum.im_neg_6\ : OUT std_logic;
	\sum.im_neg_5\ : OUT std_logic;
	\sum.im_neg_4\ : OUT std_logic;
	\sum.im_neg_3\ : OUT std_logic;
	\sum.im_neg_2\ : OUT std_logic;
	\sum.im_neg_1\ : OUT std_logic;
	\sum.im\ : OUT std_logic_vector(8 DOWNTO 0);
	\sum.re_neg_23\ : OUT std_logic;
	\sum.re_neg_22\ : OUT std_logic;
	\sum.re_neg_21\ : OUT std_logic;
	\sum.re_neg_20\ : OUT std_logic;
	\sum.re_neg_19\ : OUT std_logic;
	\sum.re_neg_18\ : OUT std_logic;
	\sum.re_neg_17\ : OUT std_logic;
	\sum.re_neg_16\ : OUT std_logic;
	\sum.re_neg_15\ : OUT std_logic;
	\sum.re_neg_14\ : OUT std_logic;
	\sum.re_neg_13\ : OUT std_logic;
	\sum.re_neg_12\ : OUT std_logic;
	\sum.re_neg_11\ : OUT std_logic;
	\sum.re_neg_10\ : OUT std_logic;
	\sum.re_neg_9\ : OUT std_logic;
	\sum.re_neg_8\ : OUT std_logic;
	\sum.re_neg_7\ : OUT std_logic;
	\sum.re_neg_6\ : OUT std_logic;
	\sum.re_neg_5\ : OUT std_logic;
	\sum.re_neg_4\ : OUT std_logic;
	\sum.re_neg_3\ : OUT std_logic;
	\sum.re_neg_2\ : OUT std_logic;
	\sum.re_neg_1\ : OUT std_logic;
	\sum.re\ : OUT std_logic_vector(8 DOWNTO 0)
	);
END complex32_mul;

-- Design Ports Information
-- a.im[-23]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.im[-22]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.im[-21]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.im[-20]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.im[-19]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.im[-18]	=>  Location: PIN_AD6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.im[-17]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.im[-16]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.im[-15]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.im[-14]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.im[-13]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.im[-12]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.im[-11]	=>  Location: PIN_F23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.im[-10]	=>  Location: PIN_AJ15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.im[-9]	=>  Location: PIN_A29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.im[-8]	=>  Location: PIN_B30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.im[-7]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.im[-6]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.im[-5]	=>  Location: PIN_F29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.im[-4]	=>  Location: PIN_B28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.im[-3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.im[-2]	=>  Location: PIN_B27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.im[-1]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.im[0]	=>  Location: PIN_AE30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.im[1]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.im[2]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.im[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.im[4]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.im[5]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.im[6]	=>  Location: PIN_F30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.im[7]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.im[8]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.re[-23]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.re[-22]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.re[-21]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.re[-20]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.re[-19]	=>  Location: PIN_A24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.re[-18]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.re[-17]	=>  Location: PIN_B24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.re[-16]	=>  Location: PIN_J30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.re[-15]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.re[-14]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.re[-13]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.re[-12]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.re[-11]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.re[-10]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.re[-9]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.re[-8]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.re[-7]	=>  Location: PIN_P30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.re[-6]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.re[-5]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.re[-4]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.re[-3]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.re[-2]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.re[-1]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.re[0]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.re[1]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.re[2]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.re[3]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.re[4]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.re[5]	=>  Location: PIN_AG9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.re[6]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.re[7]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a.re[8]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.im[-23]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.im[-22]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.im[-21]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.im[-20]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.im[-19]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.im[-18]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.im[-17]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.im[-16]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.im[-15]	=>  Location: PIN_AJ30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.im[-14]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.im[-13]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.im[-12]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.im[-11]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.im[-10]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.im[-9]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.im[-8]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.im[-7]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.im[-6]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.im[-5]	=>  Location: PIN_AC16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.im[-4]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.im[-3]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.im[-2]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.im[-1]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.im[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.im[1]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.im[2]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.im[3]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.im[4]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.im[5]	=>  Location: PIN_AA29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.im[6]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.im[7]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.im[8]	=>  Location: PIN_G30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.re[-23]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.re[-22]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.re[-21]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.re[-20]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.re[-19]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.re[-18]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.re[-17]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.re[-16]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.re[-15]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.re[-14]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.re[-13]	=>  Location: PIN_AD16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.re[-12]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.re[-11]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.re[-10]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.re[-9]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.re[-8]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.re[-7]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.re[-6]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.re[-5]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.re[-4]	=>  Location: PIN_Y28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.re[-3]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.re[-2]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.re[-1]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.re[0]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.re[1]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.re[2]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.re[3]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.re[4]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.re[5]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.re[6]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.re[7]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b.re[8]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_enable	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_enable	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_buffer	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_buffer	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_J29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.im[-23]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.im[-22]	=>  Location: PIN_H28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.im[-21]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.im[-20]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.im[-19]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.im[-18]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.im[-17]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.im[-16]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.im[-15]	=>  Location: PIN_L30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.im[-14]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.im[-13]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.im[-12]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.im[-11]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.im[-10]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.im[-9]	=>  Location: PIN_H30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.im[-8]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.im[-7]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.im[-6]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.im[-5]	=>  Location: PIN_H27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.im[-4]	=>  Location: PIN_AK20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.im[-3]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.im[-2]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.im[-1]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.im[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.im[1]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.im[2]	=>  Location: PIN_R30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.im[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.im[4]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.im[5]	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.im[6]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.im[7]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.im[8]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.re[-23]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.re[-22]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.re[-21]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.re[-20]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.re[-19]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.re[-18]	=>  Location: PIN_N29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.re[-17]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.re[-16]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.re[-15]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.re[-14]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.re[-13]	=>  Location: PIN_A28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.re[-12]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.re[-11]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.re[-10]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.re[-9]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.re[-8]	=>  Location: PIN_E30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.re[-7]	=>  Location: PIN_N27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.re[-6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.re[-5]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.re[-4]	=>  Location: PIN_G29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.re[-3]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.re[-2]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.re[-1]	=>  Location: PIN_M30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.re[0]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.re[1]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.re[2]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.re[3]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.re[4]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.re[5]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.re[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.re[7]	=>  Location: PIN_D30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum.re[8]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF complex32_mul IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_a.im_neg_23\ : std_logic;
SIGNAL \ww_a.im_neg_22\ : std_logic;
SIGNAL \ww_a.im_neg_21\ : std_logic;
SIGNAL \ww_a.im_neg_20\ : std_logic;
SIGNAL \ww_a.im_neg_19\ : std_logic;
SIGNAL \ww_a.im_neg_18\ : std_logic;
SIGNAL \ww_a.im_neg_17\ : std_logic;
SIGNAL \ww_a.im_neg_16\ : std_logic;
SIGNAL \ww_a.im_neg_15\ : std_logic;
SIGNAL \ww_a.im_neg_14\ : std_logic;
SIGNAL \ww_a.im_neg_13\ : std_logic;
SIGNAL \ww_a.im_neg_12\ : std_logic;
SIGNAL \ww_a.im_neg_11\ : std_logic;
SIGNAL \ww_a.im_neg_10\ : std_logic;
SIGNAL \ww_a.im_neg_9\ : std_logic;
SIGNAL \ww_a.im_neg_8\ : std_logic;
SIGNAL \ww_a.im_neg_7\ : std_logic;
SIGNAL \ww_a.im_neg_6\ : std_logic;
SIGNAL \ww_a.im_neg_5\ : std_logic;
SIGNAL \ww_a.im_neg_4\ : std_logic;
SIGNAL \ww_a.im_neg_3\ : std_logic;
SIGNAL \ww_a.im_neg_2\ : std_logic;
SIGNAL \ww_a.im_neg_1\ : std_logic;
SIGNAL \ww_a.im\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ww_a.re_neg_23\ : std_logic;
SIGNAL \ww_a.re_neg_22\ : std_logic;
SIGNAL \ww_a.re_neg_21\ : std_logic;
SIGNAL \ww_a.re_neg_20\ : std_logic;
SIGNAL \ww_a.re_neg_19\ : std_logic;
SIGNAL \ww_a.re_neg_18\ : std_logic;
SIGNAL \ww_a.re_neg_17\ : std_logic;
SIGNAL \ww_a.re_neg_16\ : std_logic;
SIGNAL \ww_a.re_neg_15\ : std_logic;
SIGNAL \ww_a.re_neg_14\ : std_logic;
SIGNAL \ww_a.re_neg_13\ : std_logic;
SIGNAL \ww_a.re_neg_12\ : std_logic;
SIGNAL \ww_a.re_neg_11\ : std_logic;
SIGNAL \ww_a.re_neg_10\ : std_logic;
SIGNAL \ww_a.re_neg_9\ : std_logic;
SIGNAL \ww_a.re_neg_8\ : std_logic;
SIGNAL \ww_a.re_neg_7\ : std_logic;
SIGNAL \ww_a.re_neg_6\ : std_logic;
SIGNAL \ww_a.re_neg_5\ : std_logic;
SIGNAL \ww_a.re_neg_4\ : std_logic;
SIGNAL \ww_a.re_neg_3\ : std_logic;
SIGNAL \ww_a.re_neg_2\ : std_logic;
SIGNAL \ww_a.re_neg_1\ : std_logic;
SIGNAL \ww_a.re\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ww_b.im_neg_23\ : std_logic;
SIGNAL \ww_b.im_neg_22\ : std_logic;
SIGNAL \ww_b.im_neg_21\ : std_logic;
SIGNAL \ww_b.im_neg_20\ : std_logic;
SIGNAL \ww_b.im_neg_19\ : std_logic;
SIGNAL \ww_b.im_neg_18\ : std_logic;
SIGNAL \ww_b.im_neg_17\ : std_logic;
SIGNAL \ww_b.im_neg_16\ : std_logic;
SIGNAL \ww_b.im_neg_15\ : std_logic;
SIGNAL \ww_b.im_neg_14\ : std_logic;
SIGNAL \ww_b.im_neg_13\ : std_logic;
SIGNAL \ww_b.im_neg_12\ : std_logic;
SIGNAL \ww_b.im_neg_11\ : std_logic;
SIGNAL \ww_b.im_neg_10\ : std_logic;
SIGNAL \ww_b.im_neg_9\ : std_logic;
SIGNAL \ww_b.im_neg_8\ : std_logic;
SIGNAL \ww_b.im_neg_7\ : std_logic;
SIGNAL \ww_b.im_neg_6\ : std_logic;
SIGNAL \ww_b.im_neg_5\ : std_logic;
SIGNAL \ww_b.im_neg_4\ : std_logic;
SIGNAL \ww_b.im_neg_3\ : std_logic;
SIGNAL \ww_b.im_neg_2\ : std_logic;
SIGNAL \ww_b.im_neg_1\ : std_logic;
SIGNAL \ww_b.im\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ww_b.re_neg_23\ : std_logic;
SIGNAL \ww_b.re_neg_22\ : std_logic;
SIGNAL \ww_b.re_neg_21\ : std_logic;
SIGNAL \ww_b.re_neg_20\ : std_logic;
SIGNAL \ww_b.re_neg_19\ : std_logic;
SIGNAL \ww_b.re_neg_18\ : std_logic;
SIGNAL \ww_b.re_neg_17\ : std_logic;
SIGNAL \ww_b.re_neg_16\ : std_logic;
SIGNAL \ww_b.re_neg_15\ : std_logic;
SIGNAL \ww_b.re_neg_14\ : std_logic;
SIGNAL \ww_b.re_neg_13\ : std_logic;
SIGNAL \ww_b.re_neg_12\ : std_logic;
SIGNAL \ww_b.re_neg_11\ : std_logic;
SIGNAL \ww_b.re_neg_10\ : std_logic;
SIGNAL \ww_b.re_neg_9\ : std_logic;
SIGNAL \ww_b.re_neg_8\ : std_logic;
SIGNAL \ww_b.re_neg_7\ : std_logic;
SIGNAL \ww_b.re_neg_6\ : std_logic;
SIGNAL \ww_b.re_neg_5\ : std_logic;
SIGNAL \ww_b.re_neg_4\ : std_logic;
SIGNAL \ww_b.re_neg_3\ : std_logic;
SIGNAL \ww_b.re_neg_2\ : std_logic;
SIGNAL \ww_b.re_neg_1\ : std_logic;
SIGNAL \ww_b.re\ : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_a_enable : std_logic;
SIGNAL ww_b_enable : std_logic;
SIGNAL ww_write_buffer : std_logic;
SIGNAL ww_read_buffer : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL \ww_sum.im_neg_23\ : std_logic;
SIGNAL \ww_sum.im_neg_22\ : std_logic;
SIGNAL \ww_sum.im_neg_21\ : std_logic;
SIGNAL \ww_sum.im_neg_20\ : std_logic;
SIGNAL \ww_sum.im_neg_19\ : std_logic;
SIGNAL \ww_sum.im_neg_18\ : std_logic;
SIGNAL \ww_sum.im_neg_17\ : std_logic;
SIGNAL \ww_sum.im_neg_16\ : std_logic;
SIGNAL \ww_sum.im_neg_15\ : std_logic;
SIGNAL \ww_sum.im_neg_14\ : std_logic;
SIGNAL \ww_sum.im_neg_13\ : std_logic;
SIGNAL \ww_sum.im_neg_12\ : std_logic;
SIGNAL \ww_sum.im_neg_11\ : std_logic;
SIGNAL \ww_sum.im_neg_10\ : std_logic;
SIGNAL \ww_sum.im_neg_9\ : std_logic;
SIGNAL \ww_sum.im_neg_8\ : std_logic;
SIGNAL \ww_sum.im_neg_7\ : std_logic;
SIGNAL \ww_sum.im_neg_6\ : std_logic;
SIGNAL \ww_sum.im_neg_5\ : std_logic;
SIGNAL \ww_sum.im_neg_4\ : std_logic;
SIGNAL \ww_sum.im_neg_3\ : std_logic;
SIGNAL \ww_sum.im_neg_2\ : std_logic;
SIGNAL \ww_sum.im_neg_1\ : std_logic;
SIGNAL \ww_sum.im\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ww_sum.re_neg_23\ : std_logic;
SIGNAL \ww_sum.re_neg_22\ : std_logic;
SIGNAL \ww_sum.re_neg_21\ : std_logic;
SIGNAL \ww_sum.re_neg_20\ : std_logic;
SIGNAL \ww_sum.re_neg_19\ : std_logic;
SIGNAL \ww_sum.re_neg_18\ : std_logic;
SIGNAL \ww_sum.re_neg_17\ : std_logic;
SIGNAL \ww_sum.re_neg_16\ : std_logic;
SIGNAL \ww_sum.re_neg_15\ : std_logic;
SIGNAL \ww_sum.re_neg_14\ : std_logic;
SIGNAL \ww_sum.re_neg_13\ : std_logic;
SIGNAL \ww_sum.re_neg_12\ : std_logic;
SIGNAL \ww_sum.re_neg_11\ : std_logic;
SIGNAL \ww_sum.re_neg_10\ : std_logic;
SIGNAL \ww_sum.re_neg_9\ : std_logic;
SIGNAL \ww_sum.re_neg_8\ : std_logic;
SIGNAL \ww_sum.re_neg_7\ : std_logic;
SIGNAL \ww_sum.re_neg_6\ : std_logic;
SIGNAL \ww_sum.re_neg_5\ : std_logic;
SIGNAL \ww_sum.re_neg_4\ : std_logic;
SIGNAL \ww_sum.re_neg_3\ : std_logic;
SIGNAL \ww_sum.re_neg_2\ : std_logic;
SIGNAL \ww_sum.re_neg_1\ : std_logic;
SIGNAL \ww_sum.re\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \a.im[-23]~input_o\ : std_logic;
SIGNAL \a.im[-22]~input_o\ : std_logic;
SIGNAL \a.im[-21]~input_o\ : std_logic;
SIGNAL \a.im[-20]~input_o\ : std_logic;
SIGNAL \a.im[-19]~input_o\ : std_logic;
SIGNAL \a.im[-18]~input_o\ : std_logic;
SIGNAL \a.im[-17]~input_o\ : std_logic;
SIGNAL \a.im[-16]~input_o\ : std_logic;
SIGNAL \a.im[-15]~input_o\ : std_logic;
SIGNAL \a.im[-14]~input_o\ : std_logic;
SIGNAL \a.im[-13]~input_o\ : std_logic;
SIGNAL \a.im[-12]~input_o\ : std_logic;
SIGNAL \a.im[-11]~input_o\ : std_logic;
SIGNAL \a.im[-10]~input_o\ : std_logic;
SIGNAL \a.im[-9]~input_o\ : std_logic;
SIGNAL \a.im[-8]~input_o\ : std_logic;
SIGNAL \a.im[-7]~input_o\ : std_logic;
SIGNAL \a.im[-6]~input_o\ : std_logic;
SIGNAL \a.im[-5]~input_o\ : std_logic;
SIGNAL \a.im[-4]~input_o\ : std_logic;
SIGNAL \a.im[-3]~input_o\ : std_logic;
SIGNAL \a.im[-2]~input_o\ : std_logic;
SIGNAL \a.im[-1]~input_o\ : std_logic;
SIGNAL \a.im[0]~input_o\ : std_logic;
SIGNAL \a.im[1]~input_o\ : std_logic;
SIGNAL \a.im[2]~input_o\ : std_logic;
SIGNAL \a.im[3]~input_o\ : std_logic;
SIGNAL \a.im[4]~input_o\ : std_logic;
SIGNAL \a.im[5]~input_o\ : std_logic;
SIGNAL \a.im[6]~input_o\ : std_logic;
SIGNAL \a.im[7]~input_o\ : std_logic;
SIGNAL \a.im[8]~input_o\ : std_logic;
SIGNAL \a.re[-23]~input_o\ : std_logic;
SIGNAL \a.re[-22]~input_o\ : std_logic;
SIGNAL \a.re[-21]~input_o\ : std_logic;
SIGNAL \a.re[-20]~input_o\ : std_logic;
SIGNAL \a.re[-19]~input_o\ : std_logic;
SIGNAL \a.re[-18]~input_o\ : std_logic;
SIGNAL \a.re[-17]~input_o\ : std_logic;
SIGNAL \a.re[-16]~input_o\ : std_logic;
SIGNAL \a.re[-15]~input_o\ : std_logic;
SIGNAL \a.re[-14]~input_o\ : std_logic;
SIGNAL \a.re[-13]~input_o\ : std_logic;
SIGNAL \a.re[-12]~input_o\ : std_logic;
SIGNAL \a.re[-11]~input_o\ : std_logic;
SIGNAL \a.re[-10]~input_o\ : std_logic;
SIGNAL \a.re[-9]~input_o\ : std_logic;
SIGNAL \a.re[-8]~input_o\ : std_logic;
SIGNAL \a.re[-7]~input_o\ : std_logic;
SIGNAL \a.re[-6]~input_o\ : std_logic;
SIGNAL \a.re[-5]~input_o\ : std_logic;
SIGNAL \a.re[-4]~input_o\ : std_logic;
SIGNAL \a.re[-3]~input_o\ : std_logic;
SIGNAL \a.re[-2]~input_o\ : std_logic;
SIGNAL \a.re[-1]~input_o\ : std_logic;
SIGNAL \a.re[0]~input_o\ : std_logic;
SIGNAL \a.re[1]~input_o\ : std_logic;
SIGNAL \a.re[2]~input_o\ : std_logic;
SIGNAL \a.re[3]~input_o\ : std_logic;
SIGNAL \a.re[4]~input_o\ : std_logic;
SIGNAL \a.re[5]~input_o\ : std_logic;
SIGNAL \a.re[6]~input_o\ : std_logic;
SIGNAL \a.re[7]~input_o\ : std_logic;
SIGNAL \a.re[8]~input_o\ : std_logic;
SIGNAL \b.im[-23]~input_o\ : std_logic;
SIGNAL \b.im[-22]~input_o\ : std_logic;
SIGNAL \b.im[-21]~input_o\ : std_logic;
SIGNAL \b.im[-20]~input_o\ : std_logic;
SIGNAL \b.im[-19]~input_o\ : std_logic;
SIGNAL \b.im[-18]~input_o\ : std_logic;
SIGNAL \b.im[-17]~input_o\ : std_logic;
SIGNAL \b.im[-16]~input_o\ : std_logic;
SIGNAL \b.im[-15]~input_o\ : std_logic;
SIGNAL \b.im[-14]~input_o\ : std_logic;
SIGNAL \b.im[-13]~input_o\ : std_logic;
SIGNAL \b.im[-12]~input_o\ : std_logic;
SIGNAL \b.im[-11]~input_o\ : std_logic;
SIGNAL \b.im[-10]~input_o\ : std_logic;
SIGNAL \b.im[-9]~input_o\ : std_logic;
SIGNAL \b.im[-8]~input_o\ : std_logic;
SIGNAL \b.im[-7]~input_o\ : std_logic;
SIGNAL \b.im[-6]~input_o\ : std_logic;
SIGNAL \b.im[-5]~input_o\ : std_logic;
SIGNAL \b.im[-4]~input_o\ : std_logic;
SIGNAL \b.im[-3]~input_o\ : std_logic;
SIGNAL \b.im[-2]~input_o\ : std_logic;
SIGNAL \b.im[-1]~input_o\ : std_logic;
SIGNAL \b.im[0]~input_o\ : std_logic;
SIGNAL \b.im[1]~input_o\ : std_logic;
SIGNAL \b.im[2]~input_o\ : std_logic;
SIGNAL \b.im[3]~input_o\ : std_logic;
SIGNAL \b.im[4]~input_o\ : std_logic;
SIGNAL \b.im[5]~input_o\ : std_logic;
SIGNAL \b.im[6]~input_o\ : std_logic;
SIGNAL \b.im[7]~input_o\ : std_logic;
SIGNAL \b.im[8]~input_o\ : std_logic;
SIGNAL \b.re[-23]~input_o\ : std_logic;
SIGNAL \b.re[-22]~input_o\ : std_logic;
SIGNAL \b.re[-21]~input_o\ : std_logic;
SIGNAL \b.re[-20]~input_o\ : std_logic;
SIGNAL \b.re[-19]~input_o\ : std_logic;
SIGNAL \b.re[-18]~input_o\ : std_logic;
SIGNAL \b.re[-17]~input_o\ : std_logic;
SIGNAL \b.re[-16]~input_o\ : std_logic;
SIGNAL \b.re[-15]~input_o\ : std_logic;
SIGNAL \b.re[-14]~input_o\ : std_logic;
SIGNAL \b.re[-13]~input_o\ : std_logic;
SIGNAL \b.re[-12]~input_o\ : std_logic;
SIGNAL \b.re[-11]~input_o\ : std_logic;
SIGNAL \b.re[-10]~input_o\ : std_logic;
SIGNAL \b.re[-9]~input_o\ : std_logic;
SIGNAL \b.re[-8]~input_o\ : std_logic;
SIGNAL \b.re[-7]~input_o\ : std_logic;
SIGNAL \b.re[-6]~input_o\ : std_logic;
SIGNAL \b.re[-5]~input_o\ : std_logic;
SIGNAL \b.re[-4]~input_o\ : std_logic;
SIGNAL \b.re[-3]~input_o\ : std_logic;
SIGNAL \b.re[-2]~input_o\ : std_logic;
SIGNAL \b.re[-1]~input_o\ : std_logic;
SIGNAL \b.re[0]~input_o\ : std_logic;
SIGNAL \b.re[1]~input_o\ : std_logic;
SIGNAL \b.re[2]~input_o\ : std_logic;
SIGNAL \b.re[3]~input_o\ : std_logic;
SIGNAL \b.re[4]~input_o\ : std_logic;
SIGNAL \b.re[5]~input_o\ : std_logic;
SIGNAL \b.re[6]~input_o\ : std_logic;
SIGNAL \b.re[7]~input_o\ : std_logic;
SIGNAL \b.re[8]~input_o\ : std_logic;
SIGNAL \a_enable~input_o\ : std_logic;
SIGNAL \b_enable~input_o\ : std_logic;
SIGNAL \write_buffer~input_o\ : std_logic;
SIGNAL \read_buffer~input_o\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \sum.im[-23]~output_o\ : std_logic;
SIGNAL \sum.im[-22]~output_o\ : std_logic;
SIGNAL \sum.im[-21]~output_o\ : std_logic;
SIGNAL \sum.im[-20]~output_o\ : std_logic;
SIGNAL \sum.im[-19]~output_o\ : std_logic;
SIGNAL \sum.im[-18]~output_o\ : std_logic;
SIGNAL \sum.im[-17]~output_o\ : std_logic;
SIGNAL \sum.im[-16]~output_o\ : std_logic;
SIGNAL \sum.im[-15]~output_o\ : std_logic;
SIGNAL \sum.im[-14]~output_o\ : std_logic;
SIGNAL \sum.im[-13]~output_o\ : std_logic;
SIGNAL \sum.im[-12]~output_o\ : std_logic;
SIGNAL \sum.im[-11]~output_o\ : std_logic;
SIGNAL \sum.im[-10]~output_o\ : std_logic;
SIGNAL \sum.im[-9]~output_o\ : std_logic;
SIGNAL \sum.im[-8]~output_o\ : std_logic;
SIGNAL \sum.im[-7]~output_o\ : std_logic;
SIGNAL \sum.im[-6]~output_o\ : std_logic;
SIGNAL \sum.im[-5]~output_o\ : std_logic;
SIGNAL \sum.im[-4]~output_o\ : std_logic;
SIGNAL \sum.im[-3]~output_o\ : std_logic;
SIGNAL \sum.im[-2]~output_o\ : std_logic;
SIGNAL \sum.im[-1]~output_o\ : std_logic;
SIGNAL \sum.im[0]~output_o\ : std_logic;
SIGNAL \sum.im[1]~output_o\ : std_logic;
SIGNAL \sum.im[2]~output_o\ : std_logic;
SIGNAL \sum.im[3]~output_o\ : std_logic;
SIGNAL \sum.im[4]~output_o\ : std_logic;
SIGNAL \sum.im[5]~output_o\ : std_logic;
SIGNAL \sum.im[6]~output_o\ : std_logic;
SIGNAL \sum.im[7]~output_o\ : std_logic;
SIGNAL \sum.im[8]~output_o\ : std_logic;
SIGNAL \sum.re[-23]~output_o\ : std_logic;
SIGNAL \sum.re[-22]~output_o\ : std_logic;
SIGNAL \sum.re[-21]~output_o\ : std_logic;
SIGNAL \sum.re[-20]~output_o\ : std_logic;
SIGNAL \sum.re[-19]~output_o\ : std_logic;
SIGNAL \sum.re[-18]~output_o\ : std_logic;
SIGNAL \sum.re[-17]~output_o\ : std_logic;
SIGNAL \sum.re[-16]~output_o\ : std_logic;
SIGNAL \sum.re[-15]~output_o\ : std_logic;
SIGNAL \sum.re[-14]~output_o\ : std_logic;
SIGNAL \sum.re[-13]~output_o\ : std_logic;
SIGNAL \sum.re[-12]~output_o\ : std_logic;
SIGNAL \sum.re[-11]~output_o\ : std_logic;
SIGNAL \sum.re[-10]~output_o\ : std_logic;
SIGNAL \sum.re[-9]~output_o\ : std_logic;
SIGNAL \sum.re[-8]~output_o\ : std_logic;
SIGNAL \sum.re[-7]~output_o\ : std_logic;
SIGNAL \sum.re[-6]~output_o\ : std_logic;
SIGNAL \sum.re[-5]~output_o\ : std_logic;
SIGNAL \sum.re[-4]~output_o\ : std_logic;
SIGNAL \sum.re[-3]~output_o\ : std_logic;
SIGNAL \sum.re[-2]~output_o\ : std_logic;
SIGNAL \sum.re[-1]~output_o\ : std_logic;
SIGNAL \sum.re[0]~output_o\ : std_logic;
SIGNAL \sum.re[1]~output_o\ : std_logic;
SIGNAL \sum.re[2]~output_o\ : std_logic;
SIGNAL \sum.re[3]~output_o\ : std_logic;
SIGNAL \sum.re[4]~output_o\ : std_logic;
SIGNAL \sum.re[5]~output_o\ : std_logic;
SIGNAL \sum.re[6]~output_o\ : std_logic;
SIGNAL \sum.re[7]~output_o\ : std_logic;
SIGNAL \sum.re[8]~output_o\ : std_logic;

BEGIN

\ww_a.im_neg_23\ <= \a.im_neg_23\;
\ww_a.im_neg_22\ <= \a.im_neg_22\;
\ww_a.im_neg_21\ <= \a.im_neg_21\;
\ww_a.im_neg_20\ <= \a.im_neg_20\;
\ww_a.im_neg_19\ <= \a.im_neg_19\;
\ww_a.im_neg_18\ <= \a.im_neg_18\;
\ww_a.im_neg_17\ <= \a.im_neg_17\;
\ww_a.im_neg_16\ <= \a.im_neg_16\;
\ww_a.im_neg_15\ <= \a.im_neg_15\;
\ww_a.im_neg_14\ <= \a.im_neg_14\;
\ww_a.im_neg_13\ <= \a.im_neg_13\;
\ww_a.im_neg_12\ <= \a.im_neg_12\;
\ww_a.im_neg_11\ <= \a.im_neg_11\;
\ww_a.im_neg_10\ <= \a.im_neg_10\;
\ww_a.im_neg_9\ <= \a.im_neg_9\;
\ww_a.im_neg_8\ <= \a.im_neg_8\;
\ww_a.im_neg_7\ <= \a.im_neg_7\;
\ww_a.im_neg_6\ <= \a.im_neg_6\;
\ww_a.im_neg_5\ <= \a.im_neg_5\;
\ww_a.im_neg_4\ <= \a.im_neg_4\;
\ww_a.im_neg_3\ <= \a.im_neg_3\;
\ww_a.im_neg_2\ <= \a.im_neg_2\;
\ww_a.im_neg_1\ <= \a.im_neg_1\;
\ww_a.im\ <= \a.im\;
\ww_a.re_neg_23\ <= \a.re_neg_23\;
\ww_a.re_neg_22\ <= \a.re_neg_22\;
\ww_a.re_neg_21\ <= \a.re_neg_21\;
\ww_a.re_neg_20\ <= \a.re_neg_20\;
\ww_a.re_neg_19\ <= \a.re_neg_19\;
\ww_a.re_neg_18\ <= \a.re_neg_18\;
\ww_a.re_neg_17\ <= \a.re_neg_17\;
\ww_a.re_neg_16\ <= \a.re_neg_16\;
\ww_a.re_neg_15\ <= \a.re_neg_15\;
\ww_a.re_neg_14\ <= \a.re_neg_14\;
\ww_a.re_neg_13\ <= \a.re_neg_13\;
\ww_a.re_neg_12\ <= \a.re_neg_12\;
\ww_a.re_neg_11\ <= \a.re_neg_11\;
\ww_a.re_neg_10\ <= \a.re_neg_10\;
\ww_a.re_neg_9\ <= \a.re_neg_9\;
\ww_a.re_neg_8\ <= \a.re_neg_8\;
\ww_a.re_neg_7\ <= \a.re_neg_7\;
\ww_a.re_neg_6\ <= \a.re_neg_6\;
\ww_a.re_neg_5\ <= \a.re_neg_5\;
\ww_a.re_neg_4\ <= \a.re_neg_4\;
\ww_a.re_neg_3\ <= \a.re_neg_3\;
\ww_a.re_neg_2\ <= \a.re_neg_2\;
\ww_a.re_neg_1\ <= \a.re_neg_1\;
\ww_a.re\ <= \a.re\;
\ww_b.im_neg_23\ <= \b.im_neg_23\;
\ww_b.im_neg_22\ <= \b.im_neg_22\;
\ww_b.im_neg_21\ <= \b.im_neg_21\;
\ww_b.im_neg_20\ <= \b.im_neg_20\;
\ww_b.im_neg_19\ <= \b.im_neg_19\;
\ww_b.im_neg_18\ <= \b.im_neg_18\;
\ww_b.im_neg_17\ <= \b.im_neg_17\;
\ww_b.im_neg_16\ <= \b.im_neg_16\;
\ww_b.im_neg_15\ <= \b.im_neg_15\;
\ww_b.im_neg_14\ <= \b.im_neg_14\;
\ww_b.im_neg_13\ <= \b.im_neg_13\;
\ww_b.im_neg_12\ <= \b.im_neg_12\;
\ww_b.im_neg_11\ <= \b.im_neg_11\;
\ww_b.im_neg_10\ <= \b.im_neg_10\;
\ww_b.im_neg_9\ <= \b.im_neg_9\;
\ww_b.im_neg_8\ <= \b.im_neg_8\;
\ww_b.im_neg_7\ <= \b.im_neg_7\;
\ww_b.im_neg_6\ <= \b.im_neg_6\;
\ww_b.im_neg_5\ <= \b.im_neg_5\;
\ww_b.im_neg_4\ <= \b.im_neg_4\;
\ww_b.im_neg_3\ <= \b.im_neg_3\;
\ww_b.im_neg_2\ <= \b.im_neg_2\;
\ww_b.im_neg_1\ <= \b.im_neg_1\;
\ww_b.im\ <= \b.im\;
\ww_b.re_neg_23\ <= \b.re_neg_23\;
\ww_b.re_neg_22\ <= \b.re_neg_22\;
\ww_b.re_neg_21\ <= \b.re_neg_21\;
\ww_b.re_neg_20\ <= \b.re_neg_20\;
\ww_b.re_neg_19\ <= \b.re_neg_19\;
\ww_b.re_neg_18\ <= \b.re_neg_18\;
\ww_b.re_neg_17\ <= \b.re_neg_17\;
\ww_b.re_neg_16\ <= \b.re_neg_16\;
\ww_b.re_neg_15\ <= \b.re_neg_15\;
\ww_b.re_neg_14\ <= \b.re_neg_14\;
\ww_b.re_neg_13\ <= \b.re_neg_13\;
\ww_b.re_neg_12\ <= \b.re_neg_12\;
\ww_b.re_neg_11\ <= \b.re_neg_11\;
\ww_b.re_neg_10\ <= \b.re_neg_10\;
\ww_b.re_neg_9\ <= \b.re_neg_9\;
\ww_b.re_neg_8\ <= \b.re_neg_8\;
\ww_b.re_neg_7\ <= \b.re_neg_7\;
\ww_b.re_neg_6\ <= \b.re_neg_6\;
\ww_b.re_neg_5\ <= \b.re_neg_5\;
\ww_b.re_neg_4\ <= \b.re_neg_4\;
\ww_b.re_neg_3\ <= \b.re_neg_3\;
\ww_b.re_neg_2\ <= \b.re_neg_2\;
\ww_b.re_neg_1\ <= \b.re_neg_1\;
\ww_b.re\ <= \b.re\;
ww_a_enable <= a_enable;
ww_b_enable <= b_enable;
ww_write_buffer <= write_buffer;
ww_read_buffer <= read_buffer;
ww_start <= start;
ww_clk <= clk;
ww_rst <= rst;
\sum.im_neg_23\ <= \ww_sum.im_neg_23\;
\sum.im_neg_22\ <= \ww_sum.im_neg_22\;
\sum.im_neg_21\ <= \ww_sum.im_neg_21\;
\sum.im_neg_20\ <= \ww_sum.im_neg_20\;
\sum.im_neg_19\ <= \ww_sum.im_neg_19\;
\sum.im_neg_18\ <= \ww_sum.im_neg_18\;
\sum.im_neg_17\ <= \ww_sum.im_neg_17\;
\sum.im_neg_16\ <= \ww_sum.im_neg_16\;
\sum.im_neg_15\ <= \ww_sum.im_neg_15\;
\sum.im_neg_14\ <= \ww_sum.im_neg_14\;
\sum.im_neg_13\ <= \ww_sum.im_neg_13\;
\sum.im_neg_12\ <= \ww_sum.im_neg_12\;
\sum.im_neg_11\ <= \ww_sum.im_neg_11\;
\sum.im_neg_10\ <= \ww_sum.im_neg_10\;
\sum.im_neg_9\ <= \ww_sum.im_neg_9\;
\sum.im_neg_8\ <= \ww_sum.im_neg_8\;
\sum.im_neg_7\ <= \ww_sum.im_neg_7\;
\sum.im_neg_6\ <= \ww_sum.im_neg_6\;
\sum.im_neg_5\ <= \ww_sum.im_neg_5\;
\sum.im_neg_4\ <= \ww_sum.im_neg_4\;
\sum.im_neg_3\ <= \ww_sum.im_neg_3\;
\sum.im_neg_2\ <= \ww_sum.im_neg_2\;
\sum.im_neg_1\ <= \ww_sum.im_neg_1\;
\sum.im\ <= \ww_sum.im\;
\sum.re_neg_23\ <= \ww_sum.re_neg_23\;
\sum.re_neg_22\ <= \ww_sum.re_neg_22\;
\sum.re_neg_21\ <= \ww_sum.re_neg_21\;
\sum.re_neg_20\ <= \ww_sum.re_neg_20\;
\sum.re_neg_19\ <= \ww_sum.re_neg_19\;
\sum.re_neg_18\ <= \ww_sum.re_neg_18\;
\sum.re_neg_17\ <= \ww_sum.re_neg_17\;
\sum.re_neg_16\ <= \ww_sum.re_neg_16\;
\sum.re_neg_15\ <= \ww_sum.re_neg_15\;
\sum.re_neg_14\ <= \ww_sum.re_neg_14\;
\sum.re_neg_13\ <= \ww_sum.re_neg_13\;
\sum.re_neg_12\ <= \ww_sum.re_neg_12\;
\sum.re_neg_11\ <= \ww_sum.re_neg_11\;
\sum.re_neg_10\ <= \ww_sum.re_neg_10\;
\sum.re_neg_9\ <= \ww_sum.re_neg_9\;
\sum.re_neg_8\ <= \ww_sum.re_neg_8\;
\sum.re_neg_7\ <= \ww_sum.re_neg_7\;
\sum.re_neg_6\ <= \ww_sum.re_neg_6\;
\sum.re_neg_5\ <= \ww_sum.re_neg_5\;
\sum.re_neg_4\ <= \ww_sum.re_neg_4\;
\sum.re_neg_3\ <= \ww_sum.re_neg_3\;
\sum.re_neg_2\ <= \ww_sum.re_neg_2\;
\sum.re_neg_1\ <= \ww_sum.re_neg_1\;
\sum.re\ <= \ww_sum.re\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X108_Y0_N23
\sum.im[-23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.im[-23]~output_o\);

-- Location: IOOBUF_X117_Y76_N9
\sum.im[-22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.im[-22]~output_o\);

-- Location: IOOBUF_X117_Y60_N16
\sum.im[-21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.im[-21]~output_o\);

-- Location: IOOBUF_X117_Y76_N2
\sum.im[-20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.im[-20]~output_o\);

-- Location: IOOBUF_X117_Y8_N9
\sum.im[-19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.im[-19]~output_o\);

-- Location: IOOBUF_X68_Y0_N16
\sum.im[-18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.im[-18]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\sum.im[-17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.im[-17]~output_o\);

-- Location: IOOBUF_X61_Y91_N2
\sum.im[-16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.im[-16]~output_o\);

-- Location: IOOBUF_X117_Y60_N2
\sum.im[-15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.im[-15]~output_o\);

-- Location: IOOBUF_X117_Y5_N9
\sum.im[-14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.im[-14]~output_o\);

-- Location: IOOBUF_X117_Y49_N9
\sum.im[-13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.im[-13]~output_o\);

-- Location: IOOBUF_X26_Y91_N9
\sum.im[-12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.im[-12]~output_o\);

-- Location: IOOBUF_X106_Y91_N2
\sum.im[-11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.im[-11]~output_o\);

-- Location: IOOBUF_X117_Y84_N2
\sum.im[-10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.im[-10]~output_o\);

-- Location: IOOBUF_X117_Y61_N2
\sum.im[-9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.im[-9]~output_o\);

-- Location: IOOBUF_X117_Y79_N2
\sum.im[-8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.im[-8]~output_o\);

-- Location: IOOBUF_X30_Y91_N23
\sum.im[-7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.im[-7]~output_o\);

-- Location: IOOBUF_X90_Y91_N23
\sum.im[-6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.im[-6]~output_o\);

-- Location: IOOBUF_X117_Y80_N9
\sum.im[-5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.im[-5]~output_o\);

-- Location: IOOBUF_X77_Y0_N2
\sum.im[-4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.im[-4]~output_o\);

-- Location: IOOBUF_X117_Y67_N2
\sum.im[-3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.im[-3]~output_o\);

-- Location: IOOBUF_X37_Y0_N16
\sum.im[-2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.im[-2]~output_o\);

-- Location: IOOBUF_X97_Y91_N2
\sum.im[-1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.im[-1]~output_o\);

-- Location: IOOBUF_X50_Y91_N23
\sum.im[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.im[0]~output_o\);

-- Location: IOOBUF_X97_Y91_N9
\sum.im[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.im[1]~output_o\);

-- Location: IOOBUF_X117_Y51_N2
\sum.im[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.im[2]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\sum.im[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.im[3]~output_o\);

-- Location: IOOBUF_X117_Y81_N2
\sum.im[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.im[4]~output_o\);

-- Location: IOOBUF_X117_Y52_N9
\sum.im[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.im[5]~output_o\);

-- Location: IOOBUF_X117_Y65_N9
\sum.im[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.im[6]~output_o\);

-- Location: IOOBUF_X117_Y83_N9
\sum.im[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.im[7]~output_o\);

-- Location: IOOBUF_X117_Y52_N2
\sum.im[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.im[8]~output_o\);

-- Location: IOOBUF_X117_Y70_N2
\sum.re[-23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.re[-23]~output_o\);

-- Location: IOOBUF_X117_Y83_N2
\sum.re[-22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.re[-22]~output_o\);

-- Location: IOOBUF_X99_Y0_N9
\sum.re[-21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.re[-21]~output_o\);

-- Location: IOOBUF_X28_Y91_N16
\sum.re[-20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.re[-20]~output_o\);

-- Location: IOOBUF_X17_Y91_N9
\sum.re[-19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.re[-19]~output_o\);

-- Location: IOOBUF_X117_Y54_N9
\sum.re[-18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.re[-18]~output_o\);

-- Location: IOOBUF_X117_Y66_N2
\sum.re[-17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.re[-17]~output_o\);

-- Location: IOOBUF_X19_Y91_N9
\sum.re[-16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.re[-16]~output_o\);

-- Location: IOOBUF_X68_Y0_N2
\sum.re[-15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.re[-15]~output_o\);

-- Location: IOOBUF_X10_Y0_N2
\sum.re[-14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.re[-14]~output_o\);

-- Location: IOOBUF_X104_Y91_N2
\sum.re[-13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.re[-13]~output_o\);

-- Location: IOOBUF_X95_Y0_N16
\sum.re[-12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.re[-12]~output_o\);

-- Location: IOOBUF_X92_Y0_N16
\sum.re[-11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.re[-11]~output_o\);

-- Location: IOOBUF_X117_Y86_N2
\sum.re[-10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.re[-10]~output_o\);

-- Location: IOOBUF_X32_Y91_N16
\sum.re[-9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.re[-9]~output_o\);

-- Location: IOOBUF_X117_Y69_N9
\sum.re[-8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.re[-8]~output_o\);

-- Location: IOOBUF_X117_Y56_N9
\sum.re[-7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.re[-7]~output_o\);

-- Location: IOOBUF_X46_Y91_N9
\sum.re[-6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.re[-6]~output_o\);

-- Location: IOOBUF_X117_Y56_N2
\sum.re[-5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.re[-5]~output_o\);

-- Location: IOOBUF_X117_Y70_N9
\sum.re[-4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.re[-4]~output_o\);

-- Location: IOOBUF_X99_Y91_N16
\sum.re[-3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.re[-3]~output_o\);

-- Location: IOOBUF_X66_Y91_N2
\sum.re[-2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.re[-2]~output_o\);

-- Location: IOOBUF_X117_Y57_N2
\sum.re[-1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.re[-1]~output_o\);

-- Location: IOOBUF_X117_Y72_N9
\sum.re[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.re[0]~output_o\);

-- Location: IOOBUF_X117_Y57_N9
\sum.re[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.re[1]~output_o\);

-- Location: IOOBUF_X68_Y0_N23
\sum.re[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.re[2]~output_o\);

-- Location: IOOBUF_X117_Y58_N2
\sum.re[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.re[3]~output_o\);

-- Location: IOOBUF_X117_Y34_N2
\sum.re[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.re[4]~output_o\);

-- Location: IOOBUF_X117_Y26_N2
\sum.re[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.re[5]~output_o\);

-- Location: IOOBUF_X117_Y7_N9
\sum.re[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.re[6]~output_o\);

-- Location: IOOBUF_X117_Y74_N9
\sum.re[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.re[7]~output_o\);

-- Location: IOOBUF_X86_Y0_N2
\sum.re[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sum.re[8]~output_o\);

-- Location: IOIBUF_X117_Y10_N8
\a.im[-23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.im_neg_23\,
	o => \a.im[-23]~input_o\);

-- Location: IOIBUF_X117_Y6_N8
\a.im[-22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.im_neg_22\,
	o => \a.im[-22]~input_o\);

-- Location: IOIBUF_X8_Y0_N15
\a.im[-21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.im_neg_21\,
	o => \a.im[-21]~input_o\);

-- Location: IOIBUF_X86_Y91_N8
\a.im[-20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.im_neg_20\,
	o => \a.im[-20]~input_o\);

-- Location: IOIBUF_X95_Y0_N8
\a.im[-19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.im_neg_19\,
	o => \a.im[-19]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\a.im[-18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.im_neg_18\,
	o => \a.im[-18]~input_o\);

-- Location: IOIBUF_X113_Y91_N8
\a.im[-17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.im_neg_17\,
	o => \a.im[-17]~input_o\);

-- Location: IOIBUF_X95_Y91_N22
\a.im[-16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.im_neg_16\,
	o => \a.im[-16]~input_o\);

-- Location: IOIBUF_X75_Y91_N1
\a.im[-15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.im_neg_15\,
	o => \a.im[-15]~input_o\);

-- Location: IOIBUF_X15_Y0_N22
\a.im[-14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.im_neg_14\,
	o => \a.im[-14]~input_o\);

-- Location: IOIBUF_X82_Y0_N1
\a.im[-13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.im_neg_13\,
	o => \a.im[-13]~input_o\);

-- Location: IOIBUF_X111_Y91_N22
\a.im[-12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.im_neg_12\,
	o => \a.im[-12]~input_o\);

-- Location: IOIBUF_X108_Y91_N1
\a.im[-11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.im_neg_11\,
	o => \a.im[-11]~input_o\);

-- Location: IOIBUF_X63_Y0_N22
\a.im[-10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.im_neg_10\,
	o => \a.im[-10]~input_o\);

-- Location: IOIBUF_X108_Y91_N15
\a.im[-9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.im_neg_9\,
	o => \a.im[-9]~input_o\);

-- Location: IOIBUF_X108_Y91_N22
\a.im[-8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.im_neg_8\,
	o => \a.im[-8]~input_o\);

-- Location: IOIBUF_X108_Y91_N8
\a.im[-7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.im_neg_7\,
	o => \a.im[-7]~input_o\);

-- Location: IOIBUF_X24_Y91_N8
\a.im[-6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.im_neg_6\,
	o => \a.im[-6]~input_o\);

-- Location: IOIBUF_X117_Y81_N8
\a.im[-5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.im_neg_5\,
	o => \a.im[-5]~input_o\);

-- Location: IOIBUF_X104_Y91_N8
\a.im[-4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.im_neg_4\,
	o => \a.im[-4]~input_o\);

-- Location: IOIBUF_X50_Y91_N15
\a.im[-3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.im_neg_3\,
	o => \a.im[-3]~input_o\);

-- Location: IOIBUF_X101_Y91_N8
\a.im[-2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.im_neg_2\,
	o => \a.im[-2]~input_o\);

-- Location: IOIBUF_X99_Y91_N1
\a.im[-1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.im_neg_1\,
	o => \a.im[-1]~input_o\);

-- Location: IOIBUF_X117_Y19_N8
\a.im[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.im\(0),
	o => \a.im[0]~input_o\);

-- Location: IOIBUF_X99_Y0_N15
\a.im[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.im\(1),
	o => \a.im[1]~input_o\);

-- Location: IOIBUF_X99_Y91_N22
\a.im[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.im\(2),
	o => \a.im[2]~input_o\);

-- Location: IOIBUF_X79_Y91_N1
\a.im[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.im\(3),
	o => \a.im[3]~input_o\);

-- Location: IOIBUF_X70_Y91_N8
\a.im[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.im\(4),
	o => \a.im[4]~input_o\);

-- Location: IOIBUF_X95_Y91_N1
\a.im[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.im\(5),
	o => \a.im[5]~input_o\);

-- Location: IOIBUF_X117_Y69_N1
\a.im[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.im\(6),
	o => \a.im[6]~input_o\);

-- Location: IOIBUF_X63_Y0_N1
\a.im[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.im\(7),
	o => \a.im[7]~input_o\);

-- Location: IOIBUF_X61_Y0_N22
\a.im[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.im\(8),
	o => \a.im[8]~input_o\);

-- Location: IOIBUF_X92_Y91_N1
\a.re[-23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.re_neg_23\,
	o => \a.re[-23]~input_o\);

-- Location: IOIBUF_X115_Y91_N1
\a.re[-22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.re_neg_22\,
	o => \a.re[-22]~input_o\);

-- Location: IOIBUF_X92_Y91_N15
\a.re[-21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.re_neg_21\,
	o => \a.re[-21]~input_o\);

-- Location: IOIBUF_X117_Y6_N1
\a.re[-20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.re_neg_20\,
	o => \a.re[-20]~input_o\);

-- Location: IOIBUF_X90_Y91_N1
\a.re[-19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.re_neg_19\,
	o => \a.re[-19]~input_o\);

-- Location: IOIBUF_X50_Y0_N8
\a.re[-18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.re_neg_18\,
	o => \a.re[-18]~input_o\);

-- Location: IOIBUF_X90_Y91_N15
\a.re[-17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.re_neg_17\,
	o => \a.re[-17]~input_o\);

-- Location: IOIBUF_X117_Y62_N8
\a.re[-16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.re_neg_16\,
	o => \a.re[-16]~input_o\);

-- Location: IOIBUF_X17_Y91_N1
\a.re[-15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.re_neg_15\,
	o => \a.re[-15]~input_o\);

-- Location: IOIBUF_X88_Y91_N8
\a.re[-14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.re_neg_14\,
	o => \a.re[-14]~input_o\);

-- Location: IOIBUF_X44_Y0_N15
\a.re[-13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.re_neg_13\,
	o => \a.re[-13]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\a.re[-12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.re_neg_12\,
	o => \a.re[-12]~input_o\);

-- Location: IOIBUF_X117_Y84_N8
\a.re[-11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.re_neg_11\,
	o => \a.re[-11]~input_o\);

-- Location: IOIBUF_X39_Y91_N22
\a.re[-10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.re_neg_10\,
	o => \a.re[-10]~input_o\);

-- Location: IOIBUF_X82_Y91_N1
\a.re[-9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.re_neg_9\,
	o => \a.re[-9]~input_o\);

-- Location: IOIBUF_X37_Y91_N1
\a.re[-8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.re_neg_8\,
	o => \a.re[-8]~input_o\);

-- Location: IOIBUF_X117_Y51_N8
\a.re[-7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.re_neg_7\,
	o => \a.re[-7]~input_o\);

-- Location: IOIBUF_X37_Y91_N8
\a.re[-6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.re_neg_6\,
	o => \a.re[-6]~input_o\);

-- Location: IOIBUF_X70_Y0_N15
\a.re[-5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.re_neg_5\,
	o => \a.re[-5]~input_o\);

-- Location: IOIBUF_X79_Y91_N22
\a.re[-4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.re_neg_4\,
	o => \a.re[-4]~input_o\);

-- Location: IOIBUF_X12_Y91_N8
\a.re[-3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.re_neg_3\,
	o => \a.re[-3]~input_o\);

-- Location: IOIBUF_X77_Y91_N8
\a.re[-2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.re_neg_2\,
	o => \a.re[-2]~input_o\);

-- Location: IOIBUF_X77_Y91_N15
\a.re[-1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.re_neg_1\,
	o => \a.re[-1]~input_o\);

-- Location: IOIBUF_X3_Y91_N1
\a.re[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.re\(0),
	o => \a.re[0]~input_o\);

-- Location: IOIBUF_X111_Y0_N8
\a.re[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.re\(1),
	o => \a.re[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N22
\a.re[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.re\(2),
	o => \a.re[2]~input_o\);

-- Location: IOIBUF_X106_Y0_N8
\a.re[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.re\(3),
	o => \a.re[3]~input_o\);

-- Location: IOIBUF_X72_Y91_N8
\a.re[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.re\(4),
	o => \a.re[4]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\a.re[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.re\(5),
	o => \a.re[5]~input_o\);

-- Location: IOIBUF_X70_Y0_N22
\a.re[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.re\(6),
	o => \a.re[6]~input_o\);

-- Location: IOIBUF_X24_Y91_N1
\a.re[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.re\(7),
	o => \a.re[7]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\a.re[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_a.re\(8),
	o => \a.re[8]~input_o\);

-- Location: IOIBUF_X37_Y0_N8
\b.im[-23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.im_neg_23\,
	o => \b.im[-23]~input_o\);

-- Location: IOIBUF_X68_Y91_N1
\b.im[-22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.im_neg_22\,
	o => \b.im[-22]~input_o\);

-- Location: IOIBUF_X66_Y91_N15
\b.im[-21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.im_neg_21\,
	o => \b.im[-21]~input_o\);

-- Location: IOIBUF_X75_Y0_N22
\b.im[-20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.im_neg_20\,
	o => \b.im[-20]~input_o\);

-- Location: IOIBUF_X32_Y91_N1
\b.im[-19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.im_neg_19\,
	o => \b.im[-19]~input_o\);

-- Location: IOIBUF_X63_Y91_N8
\b.im[-18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.im_neg_18\,
	o => \b.im[-18]~input_o\);

-- Location: IOIBUF_X108_Y0_N8
\b.im[-17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.im_neg_17\,
	o => \b.im[-17]~input_o\);

-- Location: IOIBUF_X39_Y0_N8
\b.im[-16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.im_neg_16\,
	o => \b.im[-16]~input_o\);

-- Location: IOIBUF_X117_Y11_N8
\b.im[-15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.im_neg_15\,
	o => \b.im[-15]~input_o\);

-- Location: IOIBUF_X61_Y91_N8
\b.im[-14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.im_neg_14\,
	o => \b.im[-14]~input_o\);

-- Location: IOIBUF_X61_Y91_N15
\b.im[-13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.im_neg_13\,
	o => \b.im[-13]~input_o\);

-- Location: IOIBUF_X57_Y91_N1
\b.im[-12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.im_neg_12\,
	o => \b.im[-12]~input_o\);

-- Location: IOIBUF_X57_Y91_N8
\b.im[-11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.im_neg_11\,
	o => \b.im[-11]~input_o\);

-- Location: IOIBUF_X41_Y0_N1
\b.im[-10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.im_neg_10\,
	o => \b.im[-10]~input_o\);

-- Location: IOIBUF_X39_Y91_N8
\b.im[-9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.im_neg_9\,
	o => \b.im[-9]~input_o\);

-- Location: IOIBUF_X68_Y91_N15
\b.im[-8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.im_neg_8\,
	o => \b.im[-8]~input_o\);

-- Location: IOIBUF_X115_Y0_N8
\b.im[-7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.im_neg_7\,
	o => \b.im[-7]~input_o\);

-- Location: IOIBUF_X46_Y91_N15
\b.im[-6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.im_neg_6\,
	o => \b.im[-6]~input_o\);

-- Location: IOIBUF_X48_Y0_N8
\b.im[-5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.im_neg_5\,
	o => \b.im[-5]~input_o\);

-- Location: IOIBUF_X92_Y91_N22
\b.im[-4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.im_neg_4\,
	o => \b.im[-4]~input_o\);

-- Location: IOIBUF_X117_Y73_N1
\b.im[-3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.im_neg_3\,
	o => \b.im[-3]~input_o\);

-- Location: IOIBUF_X15_Y0_N1
\b.im[-2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.im_neg_2\,
	o => \b.im[-2]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\b.im[-1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.im_neg_1\,
	o => \b.im[-1]~input_o\);

-- Location: IOIBUF_X111_Y91_N15
\b.im[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.im\(0),
	o => \b.im[0]~input_o\);

-- Location: IOIBUF_X63_Y91_N1
\b.im[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.im\(1),
	o => \b.im[1]~input_o\);

-- Location: IOIBUF_X117_Y50_N1
\b.im[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.im\(2),
	o => \b.im[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N8
\b.im[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.im\(3),
	o => \b.im[3]~input_o\);

-- Location: IOIBUF_X44_Y0_N22
\b.im[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.im\(4),
	o => \b.im[4]~input_o\);

-- Location: IOIBUF_X117_Y29_N1
\b.im[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.im\(5),
	o => \b.im[5]~input_o\);

-- Location: IOIBUF_X28_Y0_N8
\b.im[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.im\(6),
	o => \b.im[6]~input_o\);

-- Location: IOIBUF_X117_Y19_N1
\b.im[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.im\(7),
	o => \b.im[7]~input_o\);

-- Location: IOIBUF_X117_Y61_N8
\b.im[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.im\(8),
	o => \b.im[8]~input_o\);

-- Location: IOIBUF_X117_Y15_N1
\b.re[-23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.re_neg_23\,
	o => \b.re[-23]~input_o\);

-- Location: IOIBUF_X117_Y17_N8
\b.re[-22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.re_neg_22\,
	o => \b.re[-22]~input_o\);

-- Location: IOIBUF_X88_Y0_N8
\b.re[-21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.re_neg_21\,
	o => \b.re[-21]~input_o\);

-- Location: IOIBUF_X19_Y0_N15
\b.re[-20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.re_neg_20\,
	o => \b.re[-20]~input_o\);

-- Location: IOIBUF_X117_Y18_N1
\b.re[-19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.re_neg_19\,
	o => \b.re[-19]~input_o\);

-- Location: IOIBUF_X99_Y91_N8
\b.re[-18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.re_neg_18\,
	o => \b.re[-18]~input_o\);

-- Location: IOIBUF_X5_Y91_N8
\b.re[-17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.re_neg_17\,
	o => \b.re[-17]~input_o\);

-- Location: IOIBUF_X99_Y0_N1
\b.re[-16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.re_neg_16\,
	o => \b.re[-16]~input_o\);

-- Location: IOIBUF_X8_Y91_N1
\b.re[-15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.re_neg_15\,
	o => \b.re[-15]~input_o\);

-- Location: IOIBUF_X117_Y22_N8
\b.re[-14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.re_neg_14\,
	o => \b.re[-14]~input_o\);

-- Location: IOIBUF_X63_Y0_N8
\b.re[-13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.re_neg_13\,
	o => \b.re[-13]~input_o\);

-- Location: IOIBUF_X117_Y23_N8
\b.re[-12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.re_neg_12\,
	o => \b.re[-12]~input_o\);

-- Location: IOIBUF_X53_Y0_N1
\b.re[-11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.re_neg_11\,
	o => \b.re[-11]~input_o\);

-- Location: IOIBUF_X117_Y24_N8
\b.re[-10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.re_neg_10\,
	o => \b.re[-10]~input_o\);

-- Location: IOIBUF_X117_Y24_N1
\b.re[-9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.re_neg_9\,
	o => \b.re[-9]~input_o\);

-- Location: IOIBUF_X77_Y91_N1
\b.re[-8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.re_neg_8\,
	o => \b.re[-8]~input_o\);

-- Location: IOIBUF_X84_Y91_N8
\b.re[-7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.re_neg_7\,
	o => \b.re[-7]~input_o\);

-- Location: IOIBUF_X46_Y91_N22
\b.re[-6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.re_neg_6\,
	o => \b.re[-6]~input_o\);

-- Location: IOIBUF_X117_Y27_N1
\b.re[-5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.re_neg_5\,
	o => \b.re[-5]~input_o\);

-- Location: IOIBUF_X117_Y28_N1
\b.re[-4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.re_neg_4\,
	o => \b.re[-4]~input_o\);

-- Location: IOIBUF_X84_Y91_N1
\b.re[-3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.re_neg_3\,
	o => \b.re[-3]~input_o\);

-- Location: IOIBUF_X117_Y55_N8
\b.re[-2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.re_neg_2\,
	o => \b.re[-2]~input_o\);

-- Location: IOIBUF_X117_Y10_N1
\b.re[-1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.re_neg_1\,
	o => \b.re[-1]~input_o\);

-- Location: IOIBUF_X5_Y91_N15
\b.re[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.re\(0),
	o => \b.re[0]~input_o\);

-- Location: IOIBUF_X70_Y91_N1
\b.re[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.re\(1),
	o => \b.re[1]~input_o\);

-- Location: IOIBUF_X117_Y32_N1
\b.re[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.re\(2),
	o => \b.re[2]~input_o\);

-- Location: IOIBUF_X117_Y33_N8
\b.re[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.re\(3),
	o => \b.re[3]~input_o\);

-- Location: IOIBUF_X117_Y33_N1
\b.re[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.re\(4),
	o => \b.re[4]~input_o\);

-- Location: IOIBUF_X117_Y34_N8
\b.re[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.re\(5),
	o => \b.re[5]~input_o\);

-- Location: IOIBUF_X117_Y80_N1
\b.re[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.re\(6),
	o => \b.re[6]~input_o\);

-- Location: IOIBUF_X53_Y91_N1
\b.re[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.re\(7),
	o => \b.re[7]~input_o\);

-- Location: IOIBUF_X117_Y35_N1
\b.re[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_b.re\(8),
	o => \b.re[8]~input_o\);

-- Location: IOIBUF_X82_Y91_N8
\a_enable~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_enable,
	o => \a_enable~input_o\);

-- Location: IOIBUF_X117_Y36_N1
\b_enable~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_enable,
	o => \b_enable~input_o\);

-- Location: IOIBUF_X113_Y91_N1
\write_buffer~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_buffer,
	o => \write_buffer~input_o\);

-- Location: IOIBUF_X117_Y86_N8
\read_buffer~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_read_buffer,
	o => \read_buffer~input_o\);

-- Location: IOIBUF_X8_Y91_N15
\start~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: IOIBUF_X117_Y58_N8
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X117_Y62_N1
\rst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

\ww_sum.im_neg_23\ <= \sum.im[-23]~output_o\;

\ww_sum.im_neg_22\ <= \sum.im[-22]~output_o\;

\ww_sum.im_neg_21\ <= \sum.im[-21]~output_o\;

\ww_sum.im_neg_20\ <= \sum.im[-20]~output_o\;

\ww_sum.im_neg_19\ <= \sum.im[-19]~output_o\;

\ww_sum.im_neg_18\ <= \sum.im[-18]~output_o\;

\ww_sum.im_neg_17\ <= \sum.im[-17]~output_o\;

\ww_sum.im_neg_16\ <= \sum.im[-16]~output_o\;

\ww_sum.im_neg_15\ <= \sum.im[-15]~output_o\;

\ww_sum.im_neg_14\ <= \sum.im[-14]~output_o\;

\ww_sum.im_neg_13\ <= \sum.im[-13]~output_o\;

\ww_sum.im_neg_12\ <= \sum.im[-12]~output_o\;

\ww_sum.im_neg_11\ <= \sum.im[-11]~output_o\;

\ww_sum.im_neg_10\ <= \sum.im[-10]~output_o\;

\ww_sum.im_neg_9\ <= \sum.im[-9]~output_o\;

\ww_sum.im_neg_8\ <= \sum.im[-8]~output_o\;

\ww_sum.im_neg_7\ <= \sum.im[-7]~output_o\;

\ww_sum.im_neg_6\ <= \sum.im[-6]~output_o\;

\ww_sum.im_neg_5\ <= \sum.im[-5]~output_o\;

\ww_sum.im_neg_4\ <= \sum.im[-4]~output_o\;

\ww_sum.im_neg_3\ <= \sum.im[-3]~output_o\;

\ww_sum.im_neg_2\ <= \sum.im[-2]~output_o\;

\ww_sum.im_neg_1\ <= \sum.im[-1]~output_o\;

\ww_sum.im\(0) <= \sum.im[0]~output_o\;

\ww_sum.im\(1) <= \sum.im[1]~output_o\;

\ww_sum.im\(2) <= \sum.im[2]~output_o\;

\ww_sum.im\(3) <= \sum.im[3]~output_o\;

\ww_sum.im\(4) <= \sum.im[4]~output_o\;

\ww_sum.im\(5) <= \sum.im[5]~output_o\;

\ww_sum.im\(6) <= \sum.im[6]~output_o\;

\ww_sum.im\(7) <= \sum.im[7]~output_o\;

\ww_sum.im\(8) <= \sum.im[8]~output_o\;

\ww_sum.re_neg_23\ <= \sum.re[-23]~output_o\;

\ww_sum.re_neg_22\ <= \sum.re[-22]~output_o\;

\ww_sum.re_neg_21\ <= \sum.re[-21]~output_o\;

\ww_sum.re_neg_20\ <= \sum.re[-20]~output_o\;

\ww_sum.re_neg_19\ <= \sum.re[-19]~output_o\;

\ww_sum.re_neg_18\ <= \sum.re[-18]~output_o\;

\ww_sum.re_neg_17\ <= \sum.re[-17]~output_o\;

\ww_sum.re_neg_16\ <= \sum.re[-16]~output_o\;

\ww_sum.re_neg_15\ <= \sum.re[-15]~output_o\;

\ww_sum.re_neg_14\ <= \sum.re[-14]~output_o\;

\ww_sum.re_neg_13\ <= \sum.re[-13]~output_o\;

\ww_sum.re_neg_12\ <= \sum.re[-12]~output_o\;

\ww_sum.re_neg_11\ <= \sum.re[-11]~output_o\;

\ww_sum.re_neg_10\ <= \sum.re[-10]~output_o\;

\ww_sum.re_neg_9\ <= \sum.re[-9]~output_o\;

\ww_sum.re_neg_8\ <= \sum.re[-8]~output_o\;

\ww_sum.re_neg_7\ <= \sum.re[-7]~output_o\;

\ww_sum.re_neg_6\ <= \sum.re[-6]~output_o\;

\ww_sum.re_neg_5\ <= \sum.re[-5]~output_o\;

\ww_sum.re_neg_4\ <= \sum.re[-4]~output_o\;

\ww_sum.re_neg_3\ <= \sum.re[-3]~output_o\;

\ww_sum.re_neg_2\ <= \sum.re[-2]~output_o\;

\ww_sum.re_neg_1\ <= \sum.re[-1]~output_o\;

\ww_sum.re\(0) <= \sum.re[0]~output_o\;

\ww_sum.re\(1) <= \sum.re[1]~output_o\;

\ww_sum.re\(2) <= \sum.re[2]~output_o\;

\ww_sum.re\(3) <= \sum.re[3]~output_o\;

\ww_sum.re\(4) <= \sum.re[4]~output_o\;

\ww_sum.re\(5) <= \sum.re[5]~output_o\;

\ww_sum.re\(6) <= \sum.re[6]~output_o\;

\ww_sum.re\(7) <= \sum.re[7]~output_o\;

\ww_sum.re\(8) <= \sum.re[8]~output_o\;
END structure;


