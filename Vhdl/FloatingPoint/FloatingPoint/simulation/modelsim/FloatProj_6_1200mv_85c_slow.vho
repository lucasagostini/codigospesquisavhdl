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

-- DATE "06/21/2015 16:25:57"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	floating_point_example IS
    PORT (
	a : IN std_logic_vector(31 DOWNTO 0);
	b : IN std_logic_vector(31 DOWNTO 0);
	Sum : OUT std_logic_vector(31 DOWNTO 0);
	Clk : IN std_logic;
	reset : IN std_logic
	);
END floating_point_example;

-- Design Ports Information
-- Sum[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[1]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[2]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[3]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[4]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[5]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[6]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[7]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[8]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[9]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[10]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[11]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[13]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[14]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[15]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[16]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[17]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[18]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[19]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[20]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[21]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[22]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[23]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[24]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[25]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[26]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[27]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[28]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[29]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[30]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[31]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[23]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[24]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[25]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[26]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[27]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[28]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[29]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[30]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[22]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[31]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[8]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[10]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[9]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[12]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[11]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[18]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[17]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[16]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[15]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[20]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[19]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[21]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[14]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[13]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[22]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[26]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[25]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[24]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[23]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[30]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[29]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[28]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[27]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[31]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[17]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[16]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[18]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[19]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[20]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[21]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF floating_point_example IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Sum : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \Add2~66_combout\ : std_logic;
SIGNAL \Add2~74_combout\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \Add2~87_combout\ : std_logic;
SIGNAL \Add2~96\ : std_logic;
SIGNAL \Add2~97_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \Add7~15\ : std_logic;
SIGNAL \Add7~16_combout\ : std_logic;
SIGNAL \Add8~17_combout\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \Add9~12_combout\ : std_logic;
SIGNAL \Add9~14_combout\ : std_logic;
SIGNAL \Add10~0_combout\ : std_logic;
SIGNAL \Add10~1\ : std_logic;
SIGNAL \Add10~2_combout\ : std_logic;
SIGNAL \Add10~3\ : std_logic;
SIGNAL \Add10~4_combout\ : std_logic;
SIGNAL \Add10~5\ : std_logic;
SIGNAL \Add10~6_combout\ : std_logic;
SIGNAL \Add10~7\ : std_logic;
SIGNAL \Add10~8_combout\ : std_logic;
SIGNAL \Add10~9\ : std_logic;
SIGNAL \Add10~10_combout\ : std_logic;
SIGNAL \Add10~11\ : std_logic;
SIGNAL \Add10~12_combout\ : std_logic;
SIGNAL \Add10~13\ : std_logic;
SIGNAL \Add10~14_combout\ : std_logic;
SIGNAL \Add10~15\ : std_logic;
SIGNAL \Add10~16_combout\ : std_logic;
SIGNAL \Add10~17\ : std_logic;
SIGNAL \Add10~18_combout\ : std_logic;
SIGNAL \Add10~19\ : std_logic;
SIGNAL \Add10~20_combout\ : std_logic;
SIGNAL \Add10~21\ : std_logic;
SIGNAL \Add10~22_combout\ : std_logic;
SIGNAL \Add12~28_combout\ : std_logic;
SIGNAL \Add12~31_combout\ : std_logic;
SIGNAL \Add12~40_combout\ : std_logic;
SIGNAL \Add12~49_combout\ : std_logic;
SIGNAL \Add12~63_combout\ : std_logic;
SIGNAL \Add12~67_combout\ : std_logic;
SIGNAL \Add11~4_combout\ : std_logic;
SIGNAL \Add11~12_combout\ : std_logic;
SIGNAL \Add11~16_combout\ : std_logic;
SIGNAL \Add11~25\ : std_logic;
SIGNAL \Add11~28_combout\ : std_logic;
SIGNAL \orx~2_combout\ : std_logic;
SIGNAL \orx~6_combout\ : std_logic;
SIGNAL \orx~7_combout\ : std_logic;
SIGNAL \orx~11_combout\ : std_logic;
SIGNAL \add~2_combout\ : std_logic;
SIGNAL \rexpon~0_combout\ : std_logic;
SIGNAL \ShiftRight0~9_combout\ : std_logic;
SIGNAL \ShiftRight0~11_combout\ : std_logic;
SIGNAL \ShiftRight0~12_combout\ : std_logic;
SIGNAL \ShiftRight0~13_combout\ : std_logic;
SIGNAL \ShiftRight0~14_combout\ : std_logic;
SIGNAL \ShiftRight0~15_combout\ : std_logic;
SIGNAL \ShiftRight0~16_combout\ : std_logic;
SIGNAL \ShiftRight0~23_combout\ : std_logic;
SIGNAL \ShiftRight1~0_combout\ : std_logic;
SIGNAL \ShiftRight1~1_combout\ : std_logic;
SIGNAL \ShiftRight1~2_combout\ : std_logic;
SIGNAL \fracts~19_combout\ : std_logic;
SIGNAL \fracts~20_combout\ : std_logic;
SIGNAL \ShiftRight1~12_combout\ : std_logic;
SIGNAL \ShiftRight1~17_combout\ : std_logic;
SIGNAL \Result~15_combout\ : std_logic;
SIGNAL \sticky~0_combout\ : std_logic;
SIGNAL \sticky~1_combout\ : std_logic;
SIGNAL \ShiftRight0~35_combout\ : std_logic;
SIGNAL \ShiftRight0~40_combout\ : std_logic;
SIGNAL \ShiftRight0~41_combout\ : std_logic;
SIGNAL \ShiftRight0~43_combout\ : std_logic;
SIGNAL \ShiftRight0~44_combout\ : std_logic;
SIGNAL \ShiftRight0~45_combout\ : std_logic;
SIGNAL \ShiftRight0~46_combout\ : std_logic;
SIGNAL \ShiftRight0~47_combout\ : std_logic;
SIGNAL \ShiftRight0~48_combout\ : std_logic;
SIGNAL \LessThan12~0_combout\ : std_logic;
SIGNAL \orx~14_combout\ : std_logic;
SIGNAL \orx~15_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \orx~16_combout\ : std_logic;
SIGNAL \orx~17_combout\ : std_logic;
SIGNAL \orx~18_combout\ : std_logic;
SIGNAL \orx~19_combout\ : std_logic;
SIGNAL \orx~20_combout\ : std_logic;
SIGNAL \orx~21_combout\ : std_logic;
SIGNAL \orx~22_combout\ : std_logic;
SIGNAL \orx~23_combout\ : std_logic;
SIGNAL \orx~24_combout\ : std_logic;
SIGNAL \LessThan12~1_combout\ : std_logic;
SIGNAL \orx~25_combout\ : std_logic;
SIGNAL \orx~26_combout\ : std_logic;
SIGNAL \orx~27_combout\ : std_logic;
SIGNAL \orx~28_combout\ : std_logic;
SIGNAL \orx~29_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \orx~30_combout\ : std_logic;
SIGNAL \ShiftRight0~49_combout\ : std_logic;
SIGNAL \orx~31_combout\ : std_logic;
SIGNAL \orx~32_combout\ : std_logic;
SIGNAL \orx~33_combout\ : std_logic;
SIGNAL \orx~34_combout\ : std_logic;
SIGNAL \sticky~2_combout\ : std_logic;
SIGNAL \ShiftRight1~22_combout\ : std_logic;
SIGNAL \ShiftRight1~25_combout\ : std_logic;
SIGNAL \ShiftRight1~26_combout\ : std_logic;
SIGNAL \ShiftRight1~27_combout\ : std_logic;
SIGNAL \ShiftRight1~30_combout\ : std_logic;
SIGNAL \ShiftRight1~31_combout\ : std_logic;
SIGNAL \ShiftRight1~32_combout\ : std_logic;
SIGNAL \ShiftRight1~33_combout\ : std_logic;
SIGNAL \ShiftRight1~34_combout\ : std_logic;
SIGNAL \ShiftRight1~35_combout\ : std_logic;
SIGNAL \ShiftRight1~36_combout\ : std_logic;
SIGNAL \ShiftRight1~37_combout\ : std_logic;
SIGNAL \ShiftRight1~38_combout\ : std_logic;
SIGNAL \LessThan29~0_combout\ : std_logic;
SIGNAL \ShiftRight1~39_combout\ : std_logic;
SIGNAL \ShiftRight1~40_combout\ : std_logic;
SIGNAL \orx~35_combout\ : std_logic;
SIGNAL \orx~36_combout\ : std_logic;
SIGNAL \orx~37_combout\ : std_logic;
SIGNAL \orx~38_combout\ : std_logic;
SIGNAL \orx~39_combout\ : std_logic;
SIGNAL \orx~40_combout\ : std_logic;
SIGNAL \orx~41_combout\ : std_logic;
SIGNAL \orx~42_combout\ : std_logic;
SIGNAL \orx~43_combout\ : std_logic;
SIGNAL \orx~44_combout\ : std_logic;
SIGNAL \orx~45_combout\ : std_logic;
SIGNAL \orx~46_combout\ : std_logic;
SIGNAL \orx~47_combout\ : std_logic;
SIGNAL \orx~48_combout\ : std_logic;
SIGNAL \orx~49_combout\ : std_logic;
SIGNAL \orx~50_combout\ : std_logic;
SIGNAL \orx~51_combout\ : std_logic;
SIGNAL \orx~52_combout\ : std_logic;
SIGNAL \orx~53_combout\ : std_logic;
SIGNAL \orx~54_combout\ : std_logic;
SIGNAL \orx~55_combout\ : std_logic;
SIGNAL \fracts~25_combout\ : std_logic;
SIGNAL \ShiftRight0~50_combout\ : std_logic;
SIGNAL \ShiftRight0~51_combout\ : std_logic;
SIGNAL \ShiftRight0~52_combout\ : std_logic;
SIGNAL \ShiftRight0~56_combout\ : std_logic;
SIGNAL \fracts~27_combout\ : std_logic;
SIGNAL \ShiftRight1~43_combout\ : std_logic;
SIGNAL \ShiftRight1~46_combout\ : std_logic;
SIGNAL \ShiftRight1~48_combout\ : std_logic;
SIGNAL \fracts~29_combout\ : std_logic;
SIGNAL \fracts~30_combout\ : std_logic;
SIGNAL \fracts~31_combout\ : std_logic;
SIGNAL \ShiftRight1~55_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ShiftRight0~61_combout\ : std_logic;
SIGNAL \ShiftRight0~67_combout\ : std_logic;
SIGNAL \ShiftRight0~69_combout\ : std_logic;
SIGNAL \fractc~5_combout\ : std_logic;
SIGNAL \fracts~46_combout\ : std_logic;
SIGNAL \fracts~47_combout\ : std_logic;
SIGNAL \fracts~48_combout\ : std_logic;
SIGNAL \fracts~49_combout\ : std_logic;
SIGNAL \ShiftRight1~58_combout\ : std_logic;
SIGNAL \fracts~54_combout\ : std_logic;
SIGNAL \fracts~55_combout\ : std_logic;
SIGNAL \fracts~56_combout\ : std_logic;
SIGNAL \fracts~58_combout\ : std_logic;
SIGNAL \fracts~59_combout\ : std_logic;
SIGNAL \ShiftRight0~72_combout\ : std_logic;
SIGNAL \fracts~60_combout\ : std_logic;
SIGNAL \fracts~61_combout\ : std_logic;
SIGNAL \ShiftRight1~60_combout\ : std_logic;
SIGNAL \fracts~62_combout\ : std_logic;
SIGNAL \fracts~63_combout\ : std_logic;
SIGNAL \fracts~64_combout\ : std_logic;
SIGNAL \fracts~65_combout\ : std_logic;
SIGNAL \fracts~66_combout\ : std_logic;
SIGNAL \fracts~67_combout\ : std_logic;
SIGNAL \fracts~68_combout\ : std_logic;
SIGNAL \fracts~69_combout\ : std_logic;
SIGNAL \ShiftRight1~65_combout\ : std_logic;
SIGNAL \fractc~12_combout\ : std_logic;
SIGNAL \fracts~75_combout\ : std_logic;
SIGNAL \fracts~76_combout\ : std_logic;
SIGNAL \fracts~77_combout\ : std_logic;
SIGNAL \fracts~78_combout\ : std_logic;
SIGNAL \fracts~79_combout\ : std_logic;
SIGNAL \fracts~80_combout\ : std_logic;
SIGNAL \ShiftRight1~66_combout\ : std_logic;
SIGNAL \ShiftRight1~67_combout\ : std_logic;
SIGNAL \fracts~81_combout\ : std_logic;
SIGNAL \fracts~82_combout\ : std_logic;
SIGNAL \fracts~83_combout\ : std_logic;
SIGNAL \fracts~84_combout\ : std_logic;
SIGNAL \fracts~85_combout\ : std_logic;
SIGNAL \fracts~86_combout\ : std_logic;
SIGNAL \fracts~87_combout\ : std_logic;
SIGNAL \ShiftRight0~76_combout\ : std_logic;
SIGNAL \ShiftRight1~68_combout\ : std_logic;
SIGNAL \fracts~90_combout\ : std_logic;
SIGNAL \fracts~91_combout\ : std_logic;
SIGNAL \fracts~92_combout\ : std_logic;
SIGNAL \fracts~93_combout\ : std_logic;
SIGNAL \fractc~16_combout\ : std_logic;
SIGNAL \ShiftRight0~77_combout\ : std_logic;
SIGNAL \ShiftRight1~69_combout\ : std_logic;
SIGNAL \fracts~95_combout\ : std_logic;
SIGNAL \fracts~96_combout\ : std_logic;
SIGNAL \fracts~97_combout\ : std_logic;
SIGNAL \fractc~17_combout\ : std_logic;
SIGNAL \ShiftRight0~78_combout\ : std_logic;
SIGNAL \fracts~104_combout\ : std_logic;
SIGNAL \ShiftRight1~70_combout\ : std_logic;
SIGNAL \fracts~105_combout\ : std_logic;
SIGNAL \fractc~18_combout\ : std_logic;
SIGNAL \fracts~110_combout\ : std_logic;
SIGNAL \ShiftRight0~79_combout\ : std_logic;
SIGNAL \fracts~111_combout\ : std_logic;
SIGNAL \fracts~112_combout\ : std_logic;
SIGNAL \ShiftRight1~71_combout\ : std_logic;
SIGNAL \fracts~113_combout\ : std_logic;
SIGNAL \fracts~114_combout\ : std_logic;
SIGNAL \fracts~115_combout\ : std_logic;
SIGNAL \fracts~116_combout\ : std_logic;
SIGNAL \ShiftRight1~72_combout\ : std_logic;
SIGNAL \fractc~20_combout\ : std_logic;
SIGNAL \fracts~124_combout\ : std_logic;
SIGNAL \fracts~125_combout\ : std_logic;
SIGNAL \fracts~126_combout\ : std_logic;
SIGNAL \ShiftRight1~73_combout\ : std_logic;
SIGNAL \fracts~127_combout\ : std_logic;
SIGNAL \find_leftmost~0_combout\ : std_logic;
SIGNAL \fracts~139_combout\ : std_logic;
SIGNAL \fractc~25_combout\ : std_logic;
SIGNAL \fracts~155_combout\ : std_logic;
SIGNAL \fracts~156_combout\ : std_logic;
SIGNAL \fracts~157_combout\ : std_logic;
SIGNAL \fracts~158_combout\ : std_logic;
SIGNAL \fracts~159_combout\ : std_logic;
SIGNAL \fracts~160_combout\ : std_logic;
SIGNAL \find_leftmost~6_combout\ : std_logic;
SIGNAL \find_leftmost~13_combout\ : std_logic;
SIGNAL \find_leftmost~18_combout\ : std_logic;
SIGNAL \find_leftmost~19_combout\ : std_logic;
SIGNAL \find_leftmost~20_combout\ : std_logic;
SIGNAL \find_leftmost~21_combout\ : std_logic;
SIGNAL \find_leftmost~22_combout\ : std_logic;
SIGNAL \find_leftmost~23_combout\ : std_logic;
SIGNAL \find_leftmost~24_combout\ : std_logic;
SIGNAL \find_leftmost~25_combout\ : std_logic;
SIGNAL \find_leftmost~26_combout\ : std_logic;
SIGNAL \find_leftmost~27_combout\ : std_logic;
SIGNAL \find_leftmost~28_combout\ : std_logic;
SIGNAL \find_leftmost~34_combout\ : std_logic;
SIGNAL \find_leftmost~36_combout\ : std_logic;
SIGNAL \find_leftmost~37_combout\ : std_logic;
SIGNAL \find_leftmost~38_combout\ : std_logic;
SIGNAL \rexpon~5_combout\ : std_logic;
SIGNAL \Result~20_combout\ : std_logic;
SIGNAL \Classfp~2_combout\ : std_logic;
SIGNAL \Sumfp[-17]~3_combout\ : std_logic;
SIGNAL \shiftr~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~7_combout\ : std_logic;
SIGNAL \ShiftRight2~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~21_combout\ : std_logic;
SIGNAL \ShiftLeft0~25_combout\ : std_logic;
SIGNAL \sfract~28_combout\ : std_logic;
SIGNAL \ShiftLeft0~34_combout\ : std_logic;
SIGNAL \ShiftLeft0~35_combout\ : std_logic;
SIGNAL \ShiftLeft0~36_combout\ : std_logic;
SIGNAL \ShiftLeft0~46_combout\ : std_logic;
SIGNAL \sfract~34_combout\ : std_logic;
SIGNAL \sfract~35_combout\ : std_logic;
SIGNAL \sfract~36_combout\ : std_logic;
SIGNAL \sfract~37_combout\ : std_logic;
SIGNAL \sfract~38_combout\ : std_logic;
SIGNAL \sfract~39_combout\ : std_logic;
SIGNAL \ShiftRight2~24_combout\ : std_logic;
SIGNAL \sfract~41_combout\ : std_logic;
SIGNAL \ShiftRight2~28_combout\ : std_logic;
SIGNAL \ShiftRight2~29_combout\ : std_logic;
SIGNAL \ShiftRight2~30_combout\ : std_logic;
SIGNAL \sfract~42_combout\ : std_logic;
SIGNAL \ShiftRight2~31_combout\ : std_logic;
SIGNAL \sfract~43_combout\ : std_logic;
SIGNAL \ShiftLeft0~50_combout\ : std_logic;
SIGNAL \ShiftLeft0~52_combout\ : std_logic;
SIGNAL \ShiftLeft0~53_combout\ : std_logic;
SIGNAL \ShiftLeft0~54_combout\ : std_logic;
SIGNAL \sfract~44_combout\ : std_logic;
SIGNAL \ShiftLeft0~55_combout\ : std_logic;
SIGNAL \sfract~45_combout\ : std_logic;
SIGNAL \Result~22_combout\ : std_logic;
SIGNAL \sfract~47_combout\ : std_logic;
SIGNAL \Sumfp[-17]~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~57_combout\ : std_logic;
SIGNAL \Add8~25_combout\ : std_logic;
SIGNAL \ShiftLeft0~58_combout\ : std_logic;
SIGNAL \sfract~49_combout\ : std_logic;
SIGNAL \sfract~55_combout\ : std_logic;
SIGNAL \ShiftRight2~47_combout\ : std_logic;
SIGNAL \ShiftRight2~48_combout\ : std_logic;
SIGNAL \ShiftRight2~49_combout\ : std_logic;
SIGNAL \ShiftRight2~51_combout\ : std_logic;
SIGNAL \ShiftRight2~53_combout\ : std_logic;
SIGNAL \ShiftLeft0~66_combout\ : std_logic;
SIGNAL \sfract~64_combout\ : std_logic;
SIGNAL \ShiftRight2~56_combout\ : std_logic;
SIGNAL \ShiftLeft0~69_combout\ : std_logic;
SIGNAL \ShiftRight2~57_combout\ : std_logic;
SIGNAL \ShiftRight2~58_combout\ : std_logic;
SIGNAL \sfract~80_combout\ : std_logic;
SIGNAL \sfract~81_combout\ : std_logic;
SIGNAL \ShiftRight2~59_combout\ : std_logic;
SIGNAL \ShiftRight2~60_combout\ : std_logic;
SIGNAL \sfract~83_combout\ : std_logic;
SIGNAL \ShiftRight2~61_combout\ : std_logic;
SIGNAL \sfract~84_combout\ : std_logic;
SIGNAL \sfract~85_combout\ : std_logic;
SIGNAL \ShiftRight2~62_combout\ : std_logic;
SIGNAL \ShiftRight2~63_combout\ : std_logic;
SIGNAL \sfract~92_combout\ : std_logic;
SIGNAL \sfract~93_combout\ : std_logic;
SIGNAL \sfract~94_combout\ : std_logic;
SIGNAL \sfract~95_combout\ : std_logic;
SIGNAL \sfract~96_combout\ : std_logic;
SIGNAL \sfract~97_combout\ : std_logic;
SIGNAL \sfract~98_combout\ : std_logic;
SIGNAL \ShiftRight2~66_combout\ : std_logic;
SIGNAL \sfract~101_combout\ : std_logic;
SIGNAL \ShiftRight2~67_combout\ : std_logic;
SIGNAL \sfract~102_combout\ : std_logic;
SIGNAL \ShiftRight2~68_combout\ : std_logic;
SIGNAL \sfract~107_combout\ : std_logic;
SIGNAL \ShiftRight2~71_combout\ : std_logic;
SIGNAL \sfract~108_combout\ : std_logic;
SIGNAL \sfract~109_combout\ : std_logic;
SIGNAL \ShiftRight2~72_combout\ : std_logic;
SIGNAL \sfract~112_combout\ : std_logic;
SIGNAL \sfract~113_combout\ : std_logic;
SIGNAL \Result~23_combout\ : std_logic;
SIGNAL \Result~24_combout\ : std_logic;
SIGNAL \sfract~114_combout\ : std_logic;
SIGNAL \sfract~115_combout\ : std_logic;
SIGNAL \sfract~116_combout\ : std_logic;
SIGNAL \sfract~117_combout\ : std_logic;
SIGNAL \sfract~118_combout\ : std_logic;
SIGNAL \sfract~119_combout\ : std_logic;
SIGNAL \sfract~120_combout\ : std_logic;
SIGNAL \sfract~121_combout\ : std_logic;
SIGNAL \sfract~122_combout\ : std_logic;
SIGNAL \sfract~123_combout\ : std_logic;
SIGNAL \sfract~124_combout\ : std_logic;
SIGNAL \sfract~125_combout\ : std_logic;
SIGNAL \check_round~0_combout\ : std_logic;
SIGNAL \LessThan56~0_combout\ : std_logic;
SIGNAL \LessThan57~0_combout\ : std_logic;
SIGNAL \orx~56_combout\ : std_logic;
SIGNAL \orx~57_combout\ : std_logic;
SIGNAL \orx~58_combout\ : std_logic;
SIGNAL \LessThan57~1_combout\ : std_logic;
SIGNAL \LessThan81~0_combout\ : std_logic;
SIGNAL \orx~59_combout\ : std_logic;
SIGNAL \LessThan82~0_combout\ : std_logic;
SIGNAL \orx~60_combout\ : std_logic;
SIGNAL \orx~61_combout\ : std_logic;
SIGNAL \orx~62_combout\ : std_logic;
SIGNAL \orx~63_combout\ : std_logic;
SIGNAL \orx~64_combout\ : std_logic;
SIGNAL \orx~65_combout\ : std_logic;
SIGNAL \orx~66_combout\ : std_logic;
SIGNAL \orx~67_combout\ : std_logic;
SIGNAL \orx~68_combout\ : std_logic;
SIGNAL \orx~69_combout\ : std_logic;
SIGNAL \orx~70_combout\ : std_logic;
SIGNAL \orx~71_combout\ : std_logic;
SIGNAL \orx~72_combout\ : std_logic;
SIGNAL \orx~73_combout\ : std_logic;
SIGNAL \orx~74_combout\ : std_logic;
SIGNAL \orx~75_combout\ : std_logic;
SIGNAL \orx~76_combout\ : std_logic;
SIGNAL \orx~77_combout\ : std_logic;
SIGNAL \orx~78_combout\ : std_logic;
SIGNAL \orx~79_combout\ : std_logic;
SIGNAL \orx~80_combout\ : std_logic;
SIGNAL \orx~81_combout\ : std_logic;
SIGNAL \orx~82_combout\ : std_logic;
SIGNAL \orx~83_combout\ : std_logic;
SIGNAL \LessThan57~2_combout\ : std_logic;
SIGNAL \LessThan69~0_combout\ : std_logic;
SIGNAL \orx~84_combout\ : std_logic;
SIGNAL \orx~85_combout\ : std_logic;
SIGNAL \LessThan70~0_combout\ : std_logic;
SIGNAL \LessThan77~0_combout\ : std_logic;
SIGNAL \orx~86_combout\ : std_logic;
SIGNAL \LessThan58~0_combout\ : std_logic;
SIGNAL \orx~87_combout\ : std_logic;
SIGNAL \LessThan75~0_combout\ : std_logic;
SIGNAL \orx~88_combout\ : std_logic;
SIGNAL \orx~89_combout\ : std_logic;
SIGNAL \orx~90_combout\ : std_logic;
SIGNAL \orx~91_combout\ : std_logic;
SIGNAL \orx~92_combout\ : std_logic;
SIGNAL \LessThan84~0_combout\ : std_logic;
SIGNAL \orx~93_combout\ : std_logic;
SIGNAL \orx~94_combout\ : std_logic;
SIGNAL \LessThan59~0_combout\ : std_logic;
SIGNAL \orx~95_combout\ : std_logic;
SIGNAL \LessThan64~0_combout\ : std_logic;
SIGNAL \orx~96_combout\ : std_logic;
SIGNAL \LessThan65~0_combout\ : std_logic;
SIGNAL \LessThan61~0_combout\ : std_logic;
SIGNAL \orx~97_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \orx~98_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \orx~99_combout\ : std_logic;
SIGNAL \orx~100_combout\ : std_logic;
SIGNAL \orx~101_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \Mux2~10_combout\ : std_logic;
SIGNAL \Mux2~11_combout\ : std_logic;
SIGNAL \Mux2~12_combout\ : std_logic;
SIGNAL \Mux2~13_combout\ : std_logic;
SIGNAL \Mux2~14_combout\ : std_logic;
SIGNAL \Mux2~15_combout\ : std_logic;
SIGNAL \orx~102_combout\ : std_logic;
SIGNAL \orx~103_combout\ : std_logic;
SIGNAL \check_round~1_combout\ : std_logic;
SIGNAL \Result~25_combout\ : std_logic;
SIGNAL \sfract~126_combout\ : std_logic;
SIGNAL \orx~104_combout\ : std_logic;
SIGNAL \fracts~164_combout\ : std_logic;
SIGNAL \fracts~165_combout\ : std_logic;
SIGNAL \fracts~166_combout\ : std_logic;
SIGNAL \fracts~168_combout\ : std_logic;
SIGNAL \Add2~101_combout\ : std_logic;
SIGNAL \Add2~121_combout\ : std_logic;
SIGNAL \sfract~127_combout\ : std_logic;
SIGNAL \sfract~128_combout\ : std_logic;
SIGNAL \sfract~131_combout\ : std_logic;
SIGNAL \sfract~135_combout\ : std_logic;
SIGNAL \sticky~3_combout\ : std_logic;
SIGNAL \sticky~4_combout\ : std_logic;
SIGNAL \a[25]~input_o\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \b[19]~input_o\ : std_logic;
SIGNAL \b[29]~input_o\ : std_logic;
SIGNAL \a[18]~input_o\ : std_logic;
SIGNAL \Sum[0]~output_o\ : std_logic;
SIGNAL \Sum[1]~output_o\ : std_logic;
SIGNAL \Sum[2]~output_o\ : std_logic;
SIGNAL \Sum[3]~output_o\ : std_logic;
SIGNAL \Sum[4]~output_o\ : std_logic;
SIGNAL \Sum[5]~output_o\ : std_logic;
SIGNAL \Sum[6]~output_o\ : std_logic;
SIGNAL \Sum[7]~output_o\ : std_logic;
SIGNAL \Sum[8]~output_o\ : std_logic;
SIGNAL \Sum[9]~output_o\ : std_logic;
SIGNAL \Sum[10]~output_o\ : std_logic;
SIGNAL \Sum[11]~output_o\ : std_logic;
SIGNAL \Sum[12]~output_o\ : std_logic;
SIGNAL \Sum[13]~output_o\ : std_logic;
SIGNAL \Sum[14]~output_o\ : std_logic;
SIGNAL \Sum[15]~output_o\ : std_logic;
SIGNAL \Sum[16]~output_o\ : std_logic;
SIGNAL \Sum[17]~output_o\ : std_logic;
SIGNAL \Sum[18]~output_o\ : std_logic;
SIGNAL \Sum[19]~output_o\ : std_logic;
SIGNAL \Sum[20]~output_o\ : std_logic;
SIGNAL \Sum[21]~output_o\ : std_logic;
SIGNAL \Sum[22]~output_o\ : std_logic;
SIGNAL \Sum[23]~output_o\ : std_logic;
SIGNAL \Sum[24]~output_o\ : std_logic;
SIGNAL \Sum[25]~output_o\ : std_logic;
SIGNAL \Sum[26]~output_o\ : std_logic;
SIGNAL \Sum[27]~output_o\ : std_logic;
SIGNAL \Sum[28]~output_o\ : std_logic;
SIGNAL \Sum[29]~output_o\ : std_logic;
SIGNAL \Sum[30]~output_o\ : std_logic;
SIGNAL \Sum[31]~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \b[30]~input_o\ : std_logic;
SIGNAL \a[30]~input_o\ : std_logic;
SIGNAL \a[29]~input_o\ : std_logic;
SIGNAL \a[28]~input_o\ : std_logic;
SIGNAL \b[27]~input_o\ : std_logic;
SIGNAL \a[26]~input_o\ : std_logic;
SIGNAL \b[25]~input_o\ : std_logic;
SIGNAL \b[24]~input_o\ : std_logic;
SIGNAL \b[26]~input_o\ : std_logic;
SIGNAL \b[23]~input_o\ : std_logic;
SIGNAL \Result~10_combout\ : std_logic;
SIGNAL \b[28]~input_o\ : std_logic;
SIGNAL \Result~11_combout\ : std_logic;
SIGNAL \exp~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \a[27]~input_o\ : std_logic;
SIGNAL \rexpon~3_combout\ : std_logic;
SIGNAL \rexpon~4_combout\ : std_logic;
SIGNAL \a[24]~input_o\ : std_logic;
SIGNAL \rexpon~6_combout\ : std_logic;
SIGNAL \a[23]~input_o\ : std_logic;
SIGNAL \Result~12_combout\ : std_logic;
SIGNAL \Result~13_combout\ : std_logic;
SIGNAL \exp~1_combout\ : std_logic;
SIGNAL \rexpon~7_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add8~1_cout\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~6\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \LessThan27~0_combout\ : std_logic;
SIGNAL \fracts~18_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \b[9]~input_o\ : std_logic;
SIGNAL \ShiftRight1~23_combout\ : std_logic;
SIGNAL \ShiftRight1~47_combout\ : std_logic;
SIGNAL \fracts~28_combout\ : std_logic;
SIGNAL \b[20]~input_o\ : std_logic;
SIGNAL \ShiftRight1~29_combout\ : std_logic;
SIGNAL \b[22]~input_o\ : std_logic;
SIGNAL \b[21]~input_o\ : std_logic;
SIGNAL \ShiftRight1~20_combout\ : std_logic;
SIGNAL \ShiftRight1~42_combout\ : std_logic;
SIGNAL \ShiftRight1~44_combout\ : std_logic;
SIGNAL \Result~16_combout\ : std_logic;
SIGNAL \ShiftRight1~45_combout\ : std_logic;
SIGNAL \fracts~32_combout\ : std_logic;
SIGNAL \fracts~33_combout\ : std_logic;
SIGNAL \b[8]~input_o\ : std_logic;
SIGNAL \ShiftRight1~3_combout\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \ShiftRight1~4_combout\ : std_logic;
SIGNAL \ShiftRight1~5_combout\ : std_logic;
SIGNAL \ShiftRight1~6_combout\ : std_logic;
SIGNAL \fracts~21_combout\ : std_logic;
SIGNAL \ShiftRight1~10_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \ShiftRight1~18_combout\ : std_logic;
SIGNAL \fracts~22_combout\ : std_logic;
SIGNAL \Add1~1_cout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \ShiftRight0~2_combout\ : std_logic;
SIGNAL \fracts~16_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \a[16]~input_o\ : std_logic;
SIGNAL \a[17]~input_o\ : std_logic;
SIGNAL \ShiftRight0~19_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \ShiftRight0~20_combout\ : std_logic;
SIGNAL \ShiftRight0~21_combout\ : std_logic;
SIGNAL \ShiftRight0~22_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \ShiftRight0~24_combout\ : std_logic;
SIGNAL \fracts~17_combout\ : std_logic;
SIGNAL \fracts~23_combout\ : std_logic;
SIGNAL \ShiftRight1~19_combout\ : std_logic;
SIGNAL \ShiftRight1~21_combout\ : std_logic;
SIGNAL \ShiftRight1~24_combout\ : std_logic;
SIGNAL \ShiftRight1~28_combout\ : std_logic;
SIGNAL \ShiftRight1~41_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \fracts~26_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \a[31]~input_o\ : std_logic;
SIGNAL \b[31]~input_o\ : std_logic;
SIGNAL \add~4_combout\ : std_logic;
SIGNAL \ufract~1_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \ufract~0_combout\ : std_logic;
SIGNAL \b[14]~input_o\ : std_logic;
SIGNAL \ShiftRight1~15_combout\ : std_logic;
SIGNAL \ShiftRight1~54_combout\ : std_logic;
SIGNAL \ShiftRight1~56_combout\ : std_logic;
SIGNAL \fracts~36_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \ShiftRight1~8_combout\ : std_logic;
SIGNAL \ShiftRight1~49_combout\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \ShiftRight1~7_combout\ : std_logic;
SIGNAL \ShiftRight1~50_combout\ : std_logic;
SIGNAL \fracts~34_combout\ : std_logic;
SIGNAL \ShiftRight1~11_combout\ : std_logic;
SIGNAL \ShiftRight1~51_combout\ : std_logic;
SIGNAL \b[16]~input_o\ : std_logic;
SIGNAL \ShiftRight1~14_combout\ : std_logic;
SIGNAL \ShiftRight1~52_combout\ : std_logic;
SIGNAL \ShiftRight1~53_combout\ : std_logic;
SIGNAL \fracts~35_combout\ : std_logic;
SIGNAL \fracts~37_combout\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \ShiftRight0~10_combout\ : std_logic;
SIGNAL \ShiftRight0~65_combout\ : std_logic;
SIGNAL \ShiftRight0~66_combout\ : std_logic;
SIGNAL \a[19]~input_o\ : std_logic;
SIGNAL \ShiftRight0~17_combout\ : std_logic;
SIGNAL \ShiftRight0~62_combout\ : std_logic;
SIGNAL \ShiftRight0~63_combout\ : std_logic;
SIGNAL \ShiftRight0~70_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \fracts~38_combout\ : std_logic;
SIGNAL \fracts~39_combout\ : std_logic;
SIGNAL \fracts~40_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add2~99_combout\ : std_logic;
SIGNAL \find_leftmost~31_combout\ : std_logic;
SIGNAL \ShiftRight0~26_combout\ : std_logic;
SIGNAL \ShiftRight0~27_combout\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \ShiftRight0~29_combout\ : std_logic;
SIGNAL \ShiftRight0~28_combout\ : std_logic;
SIGNAL \ShiftRight0~30_combout\ : std_logic;
SIGNAL \ShiftRight0~31_combout\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \ShiftRight0~37_combout\ : std_logic;
SIGNAL \ShiftRight0~38_combout\ : std_logic;
SIGNAL \ShiftRight0~42_combout\ : std_logic;
SIGNAL \fracts~57_combout\ : std_logic;
SIGNAL \fracts~98_combout\ : std_logic;
SIGNAL \Result~14_combout\ : std_logic;
SIGNAL \a[21]~input_o\ : std_logic;
SIGNAL \b[18]~input_o\ : std_logic;
SIGNAL \b[17]~input_o\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \b[13]~input_o\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \LessThan26~1_cout\ : std_logic;
SIGNAL \LessThan26~3_cout\ : std_logic;
SIGNAL \LessThan26~5_cout\ : std_logic;
SIGNAL \LessThan26~7_cout\ : std_logic;
SIGNAL \LessThan26~9_cout\ : std_logic;
SIGNAL \LessThan26~11_cout\ : std_logic;
SIGNAL \LessThan26~13_cout\ : std_logic;
SIGNAL \LessThan26~15_cout\ : std_logic;
SIGNAL \LessThan26~17_cout\ : std_logic;
SIGNAL \LessThan26~19_cout\ : std_logic;
SIGNAL \LessThan26~21_cout\ : std_logic;
SIGNAL \LessThan26~23_cout\ : std_logic;
SIGNAL \LessThan26~25_cout\ : std_logic;
SIGNAL \LessThan26~27_cout\ : std_logic;
SIGNAL \LessThan26~29_cout\ : std_logic;
SIGNAL \LessThan26~31_cout\ : std_logic;
SIGNAL \LessThan26~33_cout\ : std_logic;
SIGNAL \LessThan26~35_cout\ : std_logic;
SIGNAL \LessThan26~37_cout\ : std_logic;
SIGNAL \LessThan26~39_cout\ : std_logic;
SIGNAL \LessThan26~41_cout\ : std_logic;
SIGNAL \LessThan26~43_cout\ : std_logic;
SIGNAL \LessThan26~45_cout\ : std_logic;
SIGNAL \LessThan26~46_combout\ : std_logic;
SIGNAL \fractc~14_combout\ : std_logic;
SIGNAL \fracts~99_combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \fracts~106_combout\ : std_logic;
SIGNAL \fracts~100_combout\ : std_logic;
SIGNAL \ShiftRight0~64_combout\ : std_logic;
SIGNAL \ShiftRight0~71_combout\ : std_logic;
SIGNAL \fracts~24_combout\ : std_logic;
SIGNAL \fracts~101_combout\ : std_logic;
SIGNAL \ShiftRight0~4_combout\ : std_logic;
SIGNAL \ShiftRight0~6_combout\ : std_logic;
SIGNAL \ShiftRight0~68_combout\ : std_logic;
SIGNAL \fracts~102_combout\ : std_logic;
SIGNAL \fracts~167_combout\ : std_logic;
SIGNAL \fracts~107_combout\ : std_logic;
SIGNAL \fracts~108_combout\ : std_logic;
SIGNAL \fracts~109_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \fractc~4_combout\ : std_logic;
SIGNAL \fractc~19_combout\ : std_logic;
SIGNAL \ShiftRight0~3_combout\ : std_logic;
SIGNAL \ShiftRight0~5_combout\ : std_logic;
SIGNAL \ShiftRight0~73_combout\ : std_logic;
SIGNAL \fracts~117_combout\ : std_logic;
SIGNAL \ShiftRight0~7_combout\ : std_logic;
SIGNAL \ShiftRight0~8_combout\ : std_logic;
SIGNAL \fracts~118_combout\ : std_logic;
SIGNAL \fracts~103_combout\ : std_logic;
SIGNAL \ShiftRight1~16_combout\ : std_logic;
SIGNAL \ShiftRight1~62_combout\ : std_logic;
SIGNAL \ShiftRight1~9_combout\ : std_logic;
SIGNAL \fracts~119_combout\ : std_logic;
SIGNAL \fracts~120_combout\ : std_logic;
SIGNAL \fracts~169_combout\ : std_logic;
SIGNAL \fracts~121_combout\ : std_logic;
SIGNAL \fracts~122_combout\ : std_logic;
SIGNAL \fracts~123_combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \fractc~21_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \Add2~112_combout\ : std_logic;
SIGNAL \b[10]~input_o\ : std_logic;
SIGNAL \fractc~11_combout\ : std_logic;
SIGNAL \fracts~53_combout\ : std_logic;
SIGNAL \fracts~72_combout\ : std_logic;
SIGNAL \fracts~73_combout\ : std_logic;
SIGNAL \ShiftRight0~33_combout\ : std_logic;
SIGNAL \fracts~70_combout\ : std_logic;
SIGNAL \ShiftRight0~74_combout\ : std_logic;
SIGNAL \fracts~71_combout\ : std_logic;
SIGNAL \fracts~74_combout\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \fractc~13_combout\ : std_logic;
SIGNAL \ShiftRight0~36_combout\ : std_logic;
SIGNAL \ShiftRight0~53_combout\ : std_logic;
SIGNAL \ShiftRight0~39_combout\ : std_logic;
SIGNAL \ShiftRight0~54_combout\ : std_logic;
SIGNAL \ShiftRight0~55_combout\ : std_logic;
SIGNAL \ShiftRight0~58_combout\ : std_logic;
SIGNAL \a[20]~input_o\ : std_logic;
SIGNAL \ShiftRight0~25_combout\ : std_logic;
SIGNAL \a[22]~input_o\ : std_logic;
SIGNAL \ShiftRight0~32_combout\ : std_logic;
SIGNAL \ShiftRight0~57_combout\ : std_logic;
SIGNAL \ShiftRight0~59_combout\ : std_logic;
SIGNAL \fracts~88_combout\ : std_logic;
SIGNAL \fracts~89_combout\ : std_logic;
SIGNAL \fracts~94_combout\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~61\ : std_logic;
SIGNAL \Add2~63\ : std_logic;
SIGNAL \Add2~65\ : std_logic;
SIGNAL \Add2~67\ : std_logic;
SIGNAL \Add2~68_combout\ : std_logic;
SIGNAL \fractc~15_combout\ : std_logic;
SIGNAL \fracts~170_combout\ : std_logic;
SIGNAL \fracts~128_combout\ : std_logic;
SIGNAL \fracts~129_combout\ : std_logic;
SIGNAL \fracts~130_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Add2~118_combout\ : std_logic;
SIGNAL \Result~17_combout\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add2~116_combout\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \Add2~115_combout\ : std_logic;
SIGNAL \find_leftmost~8_combout\ : std_logic;
SIGNAL \find_leftmost~29_combout\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add2~113_combout\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add2~114_combout\ : std_logic;
SIGNAL \find_leftmost~7_combout\ : std_logic;
SIGNAL \find_leftmost~9_combout\ : std_logic;
SIGNAL \find_leftmost~30_combout\ : std_logic;
SIGNAL \find_leftmost~32_combout\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \find_leftmost~40_combout\ : std_logic;
SIGNAL \find_leftmost~41_combout\ : std_logic;
SIGNAL \find_leftmost~42_combout\ : std_logic;
SIGNAL \find_leftmost~15_combout\ : std_logic;
SIGNAL \fractc~27_combout\ : std_logic;
SIGNAL \fracts~161_combout\ : std_logic;
SIGNAL \fracts~162_combout\ : std_logic;
SIGNAL \fractc~26_combout\ : std_logic;
SIGNAL \fracts~42_combout\ : std_logic;
SIGNAL \ShiftRight1~59_combout\ : std_logic;
SIGNAL \fracts~143_combout\ : std_logic;
SIGNAL \fracts~144_combout\ : std_logic;
SIGNAL \fracts~145_combout\ : std_logic;
SIGNAL \fracts~146_combout\ : std_logic;
SIGNAL \ShiftRight0~18_combout\ : std_logic;
SIGNAL \ShiftRight0~80_combout\ : std_logic;
SIGNAL \ShiftRight1~13_combout\ : std_logic;
SIGNAL \ShiftRight1~61_combout\ : std_logic;
SIGNAL \fracts~131_combout\ : std_logic;
SIGNAL \fracts~132_combout\ : std_logic;
SIGNAL \fracts~133_combout\ : std_logic;
SIGNAL \fracts~134_combout\ : std_logic;
SIGNAL \fractc~23_combout\ : std_logic;
SIGNAL \fractc~24_combout\ : std_logic;
SIGNAL \b[15]~input_o\ : std_logic;
SIGNAL \fractc~6_combout\ : std_logic;
SIGNAL \fractc~7_combout\ : std_logic;
SIGNAL \ShiftRight0~34_combout\ : std_logic;
SIGNAL \fracts~50_combout\ : std_logic;
SIGNAL \fracts~51_combout\ : std_logic;
SIGNAL \fracts~52_combout\ : std_logic;
SIGNAL \fractc~9_combout\ : std_logic;
SIGNAL \fractc~10_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \fractc~28_combout\ : std_logic;
SIGNAL \ShiftRight1~57_combout\ : std_logic;
SIGNAL \fracts~147_combout\ : std_logic;
SIGNAL \fracts~148_combout\ : std_logic;
SIGNAL \fracts~149_combout\ : std_logic;
SIGNAL \fracts~150_combout\ : std_logic;
SIGNAL \fractc~22_combout\ : std_logic;
SIGNAL \ShiftRight0~81_combout\ : std_logic;
SIGNAL \ShiftRight1~63_combout\ : std_logic;
SIGNAL \ShiftRight1~64_combout\ : std_logic;
SIGNAL \fracts~41_combout\ : std_logic;
SIGNAL \fracts~135_combout\ : std_logic;
SIGNAL \fracts~136_combout\ : std_logic;
SIGNAL \fracts~137_combout\ : std_logic;
SIGNAL \fracts~138_combout\ : std_logic;
SIGNAL \fracts~140_combout\ : std_logic;
SIGNAL \fracts~141_combout\ : std_logic;
SIGNAL \fracts~142_combout\ : std_logic;
SIGNAL \fracts~163_combout\ : std_logic;
SIGNAL \ShiftRight0~82_combout\ : std_logic;
SIGNAL \ShiftRight0~60_combout\ : std_logic;
SIGNAL \fracts~43_combout\ : std_logic;
SIGNAL \fracts~44_combout\ : std_logic;
SIGNAL \fracts~45_combout\ : std_logic;
SIGNAL \fractc~8_combout\ : std_logic;
SIGNAL \Add2~69\ : std_logic;
SIGNAL \Add2~71\ : std_logic;
SIGNAL \Add2~73\ : std_logic;
SIGNAL \Add2~75\ : std_logic;
SIGNAL \Add2~77\ : std_logic;
SIGNAL \Add2~79\ : std_logic;
SIGNAL \Add2~81\ : std_logic;
SIGNAL \Add2~83\ : std_logic;
SIGNAL \Add2~85\ : std_logic;
SIGNAL \Add2~88\ : std_logic;
SIGNAL \Add2~90\ : std_logic;
SIGNAL \Add2~92\ : std_logic;
SIGNAL \Add2~93_combout\ : std_logic;
SIGNAL \Add2~109_combout\ : std_logic;
SIGNAL \fracts~151_combout\ : std_logic;
SIGNAL \ShiftRight0~75_combout\ : std_logic;
SIGNAL \fracts~152_combout\ : std_logic;
SIGNAL \fracts~153_combout\ : std_logic;
SIGNAL \fracts~154_combout\ : std_logic;
SIGNAL \Add3~51\ : std_logic;
SIGNAL \Add3~52_combout\ : std_logic;
SIGNAL \fractc~29_combout\ : std_logic;
SIGNAL \Add2~94\ : std_logic;
SIGNAL \Add2~95_combout\ : std_logic;
SIGNAL \Add2~106_combout\ : std_logic;
SIGNAL \Add3~53\ : std_logic;
SIGNAL \Add3~54_combout\ : std_logic;
SIGNAL \Add2~107_combout\ : std_logic;
SIGNAL \find_leftmost~33_combout\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \Add2~89_combout\ : std_logic;
SIGNAL \Add2~105_combout\ : std_logic;
SIGNAL \Add2~80_combout\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \Add2~103_combout\ : std_logic;
SIGNAL \Add2~84_combout\ : std_logic;
SIGNAL \Add2~82_combout\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \Add2~86_combout\ : std_logic;
SIGNAL \find_leftmost~1_combout\ : std_logic;
SIGNAL \find_leftmost~2_combout\ : std_logic;
SIGNAL \Add2~91_combout\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \Add2~108_combout\ : std_logic;
SIGNAL \find_leftmost~3_combout\ : std_logic;
SIGNAL \find_leftmost~35_combout\ : std_logic;
SIGNAL \find_leftmost~12_combout\ : std_logic;
SIGNAL \find_leftmost~39_combout\ : std_logic;
SIGNAL \find_leftmost~43_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add5~1_cout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \shiftr~0_combout\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \Add2~104_combout\ : std_logic;
SIGNAL \find_leftmost~11_combout\ : std_logic;
SIGNAL \find_leftmost~14_combout\ : std_logic;
SIGNAL \Add2~70_combout\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \find_leftmost~4_combout\ : std_logic;
SIGNAL \find_leftmost~5_combout\ : std_logic;
SIGNAL \find_leftmost~16_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \ufract~2_combout\ : std_logic;
SIGNAL \find_leftmost~17_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \rexpon~2_combout\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \shiftr~1_combout\ : std_logic;
SIGNAL \Result~18_combout\ : std_logic;
SIGNAL \Result~19_combout\ : std_logic;
SIGNAL \Result~21_combout\ : std_logic;
SIGNAL \find_leftmost~10_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \rexpon~1_combout\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~13\ : std_logic;
SIGNAL \Add6~15\ : std_logic;
SIGNAL \Add6~16_combout\ : std_logic;
SIGNAL \shiftr~2_combout\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \shiftr~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~15_combout\ : std_logic;
SIGNAL \ShiftLeft0~18_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~26_combout\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~13\ : std_logic;
SIGNAL \Add7~14_combout\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \Add8~9\ : std_logic;
SIGNAL \Add8~12\ : std_logic;
SIGNAL \Add8~14\ : std_logic;
SIGNAL \Add8~16\ : std_logic;
SIGNAL \Add8~18\ : std_logic;
SIGNAL \Add8~19_combout\ : std_logic;
SIGNAL \Add8~21_combout\ : std_logic;
SIGNAL \sfract~110_combout\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \shiftr~4_combout\ : std_logic;
SIGNAL \Add6~14_combout\ : std_logic;
SIGNAL \shiftr~5_combout\ : std_logic;
SIGNAL \Add8~5_combout\ : std_logic;
SIGNAL \Add8~7_combout\ : std_logic;
SIGNAL \ShiftRight2~9_combout\ : std_logic;
SIGNAL \Add2~119_combout\ : std_logic;
SIGNAL \ShiftRight2~2_combout\ : std_logic;
SIGNAL \shiftr~7_combout\ : std_logic;
SIGNAL \ShiftRight2~10_combout\ : std_logic;
SIGNAL \ShiftRight2~3_combout\ : std_logic;
SIGNAL \ShiftRight2~7_combout\ : std_logic;
SIGNAL \ShiftRight2~8_combout\ : std_logic;
SIGNAL \ShiftRight2~11_combout\ : std_logic;
SIGNAL \sfract~27_combout\ : std_logic;
SIGNAL \sfract~111_combout\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \Add9~1\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \sfract~22_combout\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~27_combout\ : std_logic;
SIGNAL \ShiftLeft0~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~22_combout\ : std_logic;
SIGNAL \ShiftLeft0~23_combout\ : std_logic;
SIGNAL \sfract~29_combout\ : std_logic;
SIGNAL \sfract~30_combout\ : std_logic;
SIGNAL \ShiftRight2~0_combout\ : std_logic;
SIGNAL \ShiftRight2~1_combout\ : std_logic;
SIGNAL \ShiftRight2~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~20_combout\ : std_logic;
SIGNAL \sfract~23_combout\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \Add2~76_combout\ : std_logic;
SIGNAL \Add2~102_combout\ : std_logic;
SIGNAL \ShiftLeft0~10_combout\ : std_logic;
SIGNAL \ShiftLeft0~11_combout\ : std_logic;
SIGNAL \sfract~24_combout\ : std_logic;
SIGNAL \sfract~25_combout\ : std_logic;
SIGNAL \sfract~26_combout\ : std_logic;
SIGNAL \ShiftLeft0~32_combout\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \Add2~111_combout\ : std_logic;
SIGNAL \ShiftLeft0~31_combout\ : std_logic;
SIGNAL \ShiftLeft0~33_combout\ : std_logic;
SIGNAL \ShiftLeft0~37_combout\ : std_logic;
SIGNAL \ShiftLeft0~38_combout\ : std_logic;
SIGNAL \ShiftLeft0~39_combout\ : std_logic;
SIGNAL \ShiftLeft0~40_combout\ : std_logic;
SIGNAL \sfract~31_combout\ : std_logic;
SIGNAL \Add2~120_combout\ : std_logic;
SIGNAL \ShiftLeft0~28_combout\ : std_logic;
SIGNAL \Add2~72_combout\ : std_logic;
SIGNAL \Add2~110_combout\ : std_logic;
SIGNAL \ShiftLeft0~29_combout\ : std_logic;
SIGNAL \ShiftLeft0~30_combout\ : std_logic;
SIGNAL \sfract~32_combout\ : std_logic;
SIGNAL \ShiftRight2~15_combout\ : std_logic;
SIGNAL \ShiftRight2~16_combout\ : std_logic;
SIGNAL \ShiftRight2~17_combout\ : std_logic;
SIGNAL \ShiftRight2~13_combout\ : std_logic;
SIGNAL \ShiftRight2~12_combout\ : std_logic;
SIGNAL \ShiftRight2~14_combout\ : std_logic;
SIGNAL \ShiftRight2~18_combout\ : std_logic;
SIGNAL \sfract~33_combout\ : std_logic;
SIGNAL \Sumfp[-17]~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~44_combout\ : std_logic;
SIGNAL \ShiftLeft0~41_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \Add2~122_combout\ : std_logic;
SIGNAL \ShiftLeft0~42_combout\ : std_logic;
SIGNAL \ShiftLeft0~43_combout\ : std_logic;
SIGNAL \ShiftLeft0~45_combout\ : std_logic;
SIGNAL \ShiftRight2~50_combout\ : std_logic;
SIGNAL \ShiftRight2~52_combout\ : std_logic;
SIGNAL \Add2~78_combout\ : std_logic;
SIGNAL \Add2~100_combout\ : std_logic;
SIGNAL \ShiftRight2~33_combout\ : std_logic;
SIGNAL \ShiftRight2~36_combout\ : std_logic;
SIGNAL \ShiftRight2~37_combout\ : std_logic;
SIGNAL \ShiftRight2~55_combout\ : std_logic;
SIGNAL \ShiftRight2~65_combout\ : std_logic;
SIGNAL \ShiftRight2~69_combout\ : std_logic;
SIGNAL \sfract~40_combout\ : std_logic;
SIGNAL \sfract~104_combout\ : std_logic;
SIGNAL \ShiftRight2~70_combout\ : std_logic;
SIGNAL \sfract~105_combout\ : std_logic;
SIGNAL \sfract~106_combout\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add8~13_combout\ : std_logic;
SIGNAL \Add8~23_combout\ : std_logic;
SIGNAL \Add8~11_combout\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add8~22_combout\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~9\ : std_logic;
SIGNAL \Add9~11\ : std_logic;
SIGNAL \Add9~13\ : std_logic;
SIGNAL \Add9~15\ : std_logic;
SIGNAL \Add9~16_combout\ : std_logic;
SIGNAL \Add9~17\ : std_logic;
SIGNAL \Add9~18_combout\ : std_logic;
SIGNAL \ShiftLeft0~59_combout\ : std_logic;
SIGNAL \sfract~133_combout\ : std_logic;
SIGNAL \sfract~48_combout\ : std_logic;
SIGNAL \sfract~134_combout\ : std_logic;
SIGNAL \sfract~73_combout\ : std_logic;
SIGNAL \ShiftLeft0~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~9_combout\ : std_logic;
SIGNAL \ShiftLeft0~24_combout\ : std_logic;
SIGNAL \ShiftLeft0~48_combout\ : std_logic;
SIGNAL \sfract~78_combout\ : std_logic;
SIGNAL \ShiftRight2~19_combout\ : std_logic;
SIGNAL \ShiftRight2~20_combout\ : std_logic;
SIGNAL \ShiftLeft0~49_combout\ : std_logic;
SIGNAL \sfract~79_combout\ : std_logic;
SIGNAL \sfract~51_combout\ : std_logic;
SIGNAL \sfract~52_combout\ : std_logic;
SIGNAL \ShiftLeft0~56_combout\ : std_logic;
SIGNAL \ShiftLeft0~67_combout\ : std_logic;
SIGNAL \sfract~67_combout\ : std_logic;
SIGNAL \ShiftLeft0~64_combout\ : std_logic;
SIGNAL \ShiftLeft0~68_combout\ : std_logic;
SIGNAL \sfract~65_combout\ : std_logic;
SIGNAL \sfract~66_combout\ : std_logic;
SIGNAL \sfract~68_combout\ : std_logic;
SIGNAL \ShiftLeft0~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~16_combout\ : std_logic;
SIGNAL \ShiftLeft0~17_combout\ : std_logic;
SIGNAL \ShiftLeft0~61_combout\ : std_logic;
SIGNAL \ShiftLeft0~65_combout\ : std_logic;
SIGNAL \Add8~15_combout\ : std_logic;
SIGNAL \Add8~24_combout\ : std_logic;
SIGNAL \ShiftRight2~39_combout\ : std_logic;
SIGNAL \sfract~50_combout\ : std_logic;
SIGNAL \sfract~132_combout\ : std_logic;
SIGNAL \sfract~71_combout\ : std_logic;
SIGNAL \ShiftLeft0~62_combout\ : std_logic;
SIGNAL \ShiftLeft0~12_combout\ : std_logic;
SIGNAL \ShiftLeft0~13_combout\ : std_logic;
SIGNAL \ShiftLeft0~14_combout\ : std_logic;
SIGNAL \ShiftLeft0~47_combout\ : std_logic;
SIGNAL \sfract~69_combout\ : std_logic;
SIGNAL \sfract~70_combout\ : std_logic;
SIGNAL \sfract~72_combout\ : std_logic;
SIGNAL \sfract~76_combout\ : std_logic;
SIGNAL \sfract~77_combout\ : std_logic;
SIGNAL \Sumfp[-17]~8_combout\ : std_logic;
SIGNAL \ShiftRight2~26_combout\ : std_logic;
SIGNAL \ShiftRight2~21_combout\ : std_logic;
SIGNAL \ShiftRight2~42_combout\ : std_logic;
SIGNAL \Add2~64_combout\ : std_logic;
SIGNAL \Add2~117_combout\ : std_logic;
SIGNAL \ShiftRight2~25_combout\ : std_logic;
SIGNAL \ShiftRight2~43_combout\ : std_logic;
SIGNAL \ShiftRight2~44_combout\ : std_logic;
SIGNAL \sfract~58_combout\ : std_logic;
SIGNAL \ShiftRight2~46_combout\ : std_logic;
SIGNAL \sfract~129_combout\ : std_logic;
SIGNAL \sfract~60_combout\ : std_logic;
SIGNAL \ShiftRight2~22_combout\ : std_logic;
SIGNAL \ShiftRight2~40_combout\ : std_logic;
SIGNAL \ShiftRight2~4_combout\ : std_logic;
SIGNAL \ShiftRight2~41_combout\ : std_logic;
SIGNAL \sfract~61_combout\ : std_logic;
SIGNAL \ShiftLeft0~60_combout\ : std_logic;
SIGNAL \sfract~53_combout\ : std_logic;
SIGNAL \sfract~54_combout\ : std_logic;
SIGNAL \sfract~130_combout\ : std_logic;
SIGNAL \sfract~62_combout\ : std_logic;
SIGNAL \ShiftRight2~38_combout\ : std_logic;
SIGNAL \sfract~63_combout\ : std_logic;
SIGNAL \Sumfp[-17]~7_combout\ : std_logic;
SIGNAL \Sumfp[-17]~9_combout\ : std_logic;
SIGNAL \Sumfp[-17]~10_combout\ : std_logic;
SIGNAL \sfract~89_combout\ : std_logic;
SIGNAL \ShiftRight2~23_combout\ : std_logic;
SIGNAL \ShiftRight2~27_combout\ : std_logic;
SIGNAL \ShiftRight2~64_combout\ : std_logic;
SIGNAL \sfract~99_combout\ : std_logic;
SIGNAL \sfract~100_combout\ : std_logic;
SIGNAL \ShiftLeft0~71_combout\ : std_logic;
SIGNAL \ShiftLeft0~51_combout\ : std_logic;
SIGNAL \ShiftLeft0~70_combout\ : std_logic;
SIGNAL \sfract~103_combout\ : std_logic;
SIGNAL \sfract~46_combout\ : std_logic;
SIGNAL \ShiftRight2~45_combout\ : std_logic;
SIGNAL \sfract~86_combout\ : std_logic;
SIGNAL \sfract~59_combout\ : std_logic;
SIGNAL \sfract~87_combout\ : std_logic;
SIGNAL \ShiftRight2~32_combout\ : std_logic;
SIGNAL \ShiftRight2~34_combout\ : std_logic;
SIGNAL \ShiftRight2~35_combout\ : std_logic;
SIGNAL \sfract~88_combout\ : std_logic;
SIGNAL \sfract~90_combout\ : std_logic;
SIGNAL \sfract~91_combout\ : std_logic;
SIGNAL \Sumfp[-17]~11_combout\ : std_logic;
SIGNAL \Sumfp[-17]~12_combout\ : std_logic;
SIGNAL \Sumfp[-17]~13_combout\ : std_logic;
SIGNAL \Sumfp[-17]~14_combout\ : std_logic;
SIGNAL \Add12~26_combout\ : std_logic;
SIGNAL \Result~6_combout\ : std_logic;
SIGNAL \Result~7_combout\ : std_logic;
SIGNAL \Result~2_combout\ : std_logic;
SIGNAL \orx~12_combout\ : std_logic;
SIGNAL \orx~10_combout\ : std_logic;
SIGNAL \orx~13_combout\ : std_logic;
SIGNAL \Result~8_combout\ : std_logic;
SIGNAL \orx~8_combout\ : std_logic;
SIGNAL \orx~9_combout\ : std_logic;
SIGNAL \Result~9_combout\ : std_logic;
SIGNAL \orx~3_combout\ : std_logic;
SIGNAL \b[12]~input_o\ : std_logic;
SIGNAL \b[11]~input_o\ : std_logic;
SIGNAL \orx~4_combout\ : std_logic;
SIGNAL \orx~5_combout\ : std_logic;
SIGNAL \Result~4_combout\ : std_logic;
SIGNAL \Result~5_combout\ : std_logic;
SIGNAL \Classfp~0_combout\ : std_logic;
SIGNAL \add~0_combout\ : std_logic;
SIGNAL \Result~3_combout\ : std_logic;
SIGNAL \add~1_combout\ : std_logic;
SIGNAL \add~3_combout\ : std_logic;
SIGNAL \fpresult~1_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \Sumfp[-23]~q\ : std_logic;
SIGNAL \Result~26_combout\ : std_logic;
SIGNAL \add~5_combout\ : std_logic;
SIGNAL \add~6_combout\ : std_logic;
SIGNAL \Sumfp[-17]~0_combout\ : std_logic;
SIGNAL \Sumfp[-17]~1_combout\ : std_logic;
SIGNAL \Sumfp[-17]~2_combout\ : std_logic;
SIGNAL \Sumfp[-17]~4_combout\ : std_logic;
SIGNAL \Add12~30_combout\ : std_logic;
SIGNAL \Sumfp[-22]~q\ : std_logic;
SIGNAL \Add12~33_combout\ : std_logic;
SIGNAL \Sumfp[-21]~q\ : std_logic;
SIGNAL \Add12~27\ : std_logic;
SIGNAL \Add12~29\ : std_logic;
SIGNAL \Add12~32\ : std_logic;
SIGNAL \Add12~34_combout\ : std_logic;
SIGNAL \Add12~36_combout\ : std_logic;
SIGNAL \Sumfp[-20]~q\ : std_logic;
SIGNAL \Add12~35\ : std_logic;
SIGNAL \Add12~37_combout\ : std_logic;
SIGNAL \Add12~39_combout\ : std_logic;
SIGNAL \Sumfp[-19]~q\ : std_logic;
SIGNAL \Add12~42_combout\ : std_logic;
SIGNAL \Sumfp[-18]~q\ : std_logic;
SIGNAL \Add12~38\ : std_logic;
SIGNAL \Add12~41\ : std_logic;
SIGNAL \Add12~43_combout\ : std_logic;
SIGNAL \Add12~45_combout\ : std_logic;
SIGNAL \Sumfp[-17]~q\ : std_logic;
SIGNAL \Add12~44\ : std_logic;
SIGNAL \Add12~46_combout\ : std_logic;
SIGNAL \Add12~48_combout\ : std_logic;
SIGNAL \Sumfp[-16]~q\ : std_logic;
SIGNAL \Add12~51_combout\ : std_logic;
SIGNAL \Sumfp[-15]~q\ : std_logic;
SIGNAL \Add12~47\ : std_logic;
SIGNAL \Add12~50\ : std_logic;
SIGNAL \Add12~52_combout\ : std_logic;
SIGNAL \Add12~54_combout\ : std_logic;
SIGNAL \Sumfp[-14]~q\ : std_logic;
SIGNAL \ShiftLeft0~19_combout\ : std_logic;
SIGNAL \ShiftRight2~54_combout\ : std_logic;
SIGNAL \ShiftLeft0~8_combout\ : std_logic;
SIGNAL \sfract~74_combout\ : std_logic;
SIGNAL \sfract~75_combout\ : std_logic;
SIGNAL \Add12~53\ : std_logic;
SIGNAL \Add12~55_combout\ : std_logic;
SIGNAL \Add12~81_combout\ : std_logic;
SIGNAL \Sumfp[-13]~q\ : std_logic;
SIGNAL \Add12~56\ : std_logic;
SIGNAL \Add12~57_combout\ : std_logic;
SIGNAL \Add12~82_combout\ : std_logic;
SIGNAL \Sumfp[-12]~q\ : std_logic;
SIGNAL \Add12~58\ : std_logic;
SIGNAL \Add12~59_combout\ : std_logic;
SIGNAL \Add12~83_combout\ : std_logic;
SIGNAL \Sumfp[-11]~q\ : std_logic;
SIGNAL \Add12~60\ : std_logic;
SIGNAL \Add12~61_combout\ : std_logic;
SIGNAL \Add12~84_combout\ : std_logic;
SIGNAL \Sumfp[-10]~q\ : std_logic;
SIGNAL \Add12~85_combout\ : std_logic;
SIGNAL \Sumfp[-9]~q\ : std_logic;
SIGNAL \ShiftLeft0~63_combout\ : std_logic;
SIGNAL \sfract~56_combout\ : std_logic;
SIGNAL \sfract~57_combout\ : std_logic;
SIGNAL \Add12~62\ : std_logic;
SIGNAL \Add12~64\ : std_logic;
SIGNAL \Add12~65_combout\ : std_logic;
SIGNAL \Add12~86_combout\ : std_logic;
SIGNAL \Sumfp[-8]~q\ : std_logic;
SIGNAL \Add12~87_combout\ : std_logic;
SIGNAL \Sumfp[-7]~q\ : std_logic;
SIGNAL \Add12~66\ : std_logic;
SIGNAL \Add12~68\ : std_logic;
SIGNAL \Add12~69_combout\ : std_logic;
SIGNAL \Add12~88_combout\ : std_logic;
SIGNAL \Sumfp[-6]~q\ : std_logic;
SIGNAL \Add12~70\ : std_logic;
SIGNAL \Add12~71_combout\ : std_logic;
SIGNAL \Add12~89_combout\ : std_logic;
SIGNAL \Sumfp[-5]~q\ : std_logic;
SIGNAL \sfract~82_combout\ : std_logic;
SIGNAL \Add12~72\ : std_logic;
SIGNAL \Add12~73_combout\ : std_logic;
SIGNAL \Add12~90_combout\ : std_logic;
SIGNAL \Sumfp[-4]~q\ : std_logic;
SIGNAL \Add12~74\ : std_logic;
SIGNAL \Add12~75_combout\ : std_logic;
SIGNAL \Add12~91_combout\ : std_logic;
SIGNAL \Sumfp[-3]~q\ : std_logic;
SIGNAL \Add12~76\ : std_logic;
SIGNAL \Add12~77_combout\ : std_logic;
SIGNAL \Add12~92_combout\ : std_logic;
SIGNAL \Sumfp[-2]~q\ : std_logic;
SIGNAL \Add12~78\ : std_logic;
SIGNAL \Add12~79_combout\ : std_logic;
SIGNAL \Add12~93_combout\ : std_logic;
SIGNAL \Sumfp[-1]~q\ : std_logic;
SIGNAL \fpresult~2_combout\ : std_logic;
SIGNAL \shiftr~8_combout\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \Add11~2_combout\ : std_logic;
SIGNAL \Add11~3_combout\ : std_logic;
SIGNAL \Add11~6_combout\ : std_logic;
SIGNAL \Add11~7_combout\ : std_logic;
SIGNAL \Add11~1\ : std_logic;
SIGNAL \Add11~5\ : std_logic;
SIGNAL \Add11~8_combout\ : std_logic;
SIGNAL \Add11~10_combout\ : std_logic;
SIGNAL \Add11~11_combout\ : std_logic;
SIGNAL \Add11~14_combout\ : std_logic;
SIGNAL \Add11~15_combout\ : std_logic;
SIGNAL \Add11~18_combout\ : std_logic;
SIGNAL \Add11~19_combout\ : std_logic;
SIGNAL \Add11~9\ : std_logic;
SIGNAL \Add11~13\ : std_logic;
SIGNAL \Add11~17\ : std_logic;
SIGNAL \Add11~20_combout\ : std_logic;
SIGNAL \Add11~22_combout\ : std_logic;
SIGNAL \Add11~23_combout\ : std_logic;
SIGNAL \Add11~21\ : std_logic;
SIGNAL \Add11~24_combout\ : std_logic;
SIGNAL \Add11~26_combout\ : std_logic;
SIGNAL \Add11~27_combout\ : std_logic;
SIGNAL \Add11~30_combout\ : std_logic;
SIGNAL \Add11~31_combout\ : std_logic;
SIGNAL \Classfp~1_combout\ : std_logic;
SIGNAL \fpresult~0_combout\ : std_logic;
SIGNAL \leftright~0_combout\ : std_logic;
SIGNAL \fpresult~3_combout\ : std_logic;
SIGNAL \fpresult~4_combout\ : std_logic;
SIGNAL \Classfp~3_combout\ : std_logic;
SIGNAL \fpresult~5_combout\ : std_logic;
SIGNAL Sumfp : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
Sum <= ww_Sum;
ww_Clk <= Clk;
ww_reset <= reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: LCCOMB_X27_Y21_N26
\Add1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\Add0~12_combout\ & (!\Add1~11\ & VCC)) # (!\Add0~12_combout\ & (\Add1~11\ $ (GND)))
-- \Add1~13\ = CARRY((!\Add0~12_combout\ & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X29_Y19_N8
\Add2~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (\fractc~5_combout\ & (\fracts~40_combout\ $ (VCC))) # (!\fractc~5_combout\ & (\fracts~40_combout\ & VCC))
-- \Add2~49\ = CARRY((\fractc~5_combout\ & \fracts~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fractc~5_combout\,
	datab => \fracts~40_combout\,
	datad => VCC,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: LCCOMB_X28_Y19_N14
\Add3~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\fractc~20_combout\ & ((\fracts~123_combout\ & (!\Add3~9\)) # (!\fracts~123_combout\ & (\Add3~9\ & VCC)))) # (!\fractc~20_combout\ & ((\fracts~123_combout\ & ((\Add3~9\) # (GND))) # (!\fracts~123_combout\ & (!\Add3~9\))))
-- \Add3~11\ = CARRY((\fractc~20_combout\ & (\fracts~123_combout\ & !\Add3~9\)) # (!\fractc~20_combout\ & ((\fracts~123_combout\) # (!\Add3~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fractc~20_combout\,
	datab => \fracts~123_combout\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X28_Y19_N20
\Add3~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = ((\fractc~17_combout\ $ (\fracts~99_combout\ $ (\Add3~15\)))) # (GND)
-- \Add3~17\ = CARRY((\fractc~17_combout\ & ((!\Add3~15\) # (!\fracts~99_combout\))) # (!\fractc~17_combout\ & (!\fracts~99_combout\ & !\Add3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fractc~17_combout\,
	datab => \fracts~99_combout\,
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X28_Y19_N22
\Add3~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (\fractc~16_combout\ & ((\fracts~94_combout\ & (!\Add3~17\)) # (!\fracts~94_combout\ & (\Add3~17\ & VCC)))) # (!\fractc~16_combout\ & ((\fracts~94_combout\ & ((\Add3~17\) # (GND))) # (!\fracts~94_combout\ & (!\Add3~17\))))
-- \Add3~19\ = CARRY((\fractc~16_combout\ & (\fracts~94_combout\ & !\Add3~17\)) # (!\fractc~16_combout\ & ((\fracts~94_combout\) # (!\Add3~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fractc~16_combout\,
	datab => \fracts~94_combout\,
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X28_Y19_N26
\Add3~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (\fracts~80_combout\ & ((\fractc~13_combout\ & (!\Add3~21\)) # (!\fractc~13_combout\ & ((\Add3~21\) # (GND))))) # (!\fracts~80_combout\ & ((\fractc~13_combout\ & (\Add3~21\ & VCC)) # (!\fractc~13_combout\ & (!\Add3~21\))))
-- \Add3~23\ = CARRY((\fracts~80_combout\ & ((!\Add3~21\) # (!\fractc~13_combout\))) # (!\fracts~80_combout\ & (!\fractc~13_combout\ & !\Add3~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~80_combout\,
	datab => \fractc~13_combout\,
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCCOMB_X28_Y19_N30
\Add3~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (\fracts~69_combout\ & ((\fractc~11_combout\ & (!\Add3~25\)) # (!\fractc~11_combout\ & ((\Add3~25\) # (GND))))) # (!\fracts~69_combout\ & ((\fractc~11_combout\ & (\Add3~25\ & VCC)) # (!\fractc~11_combout\ & (!\Add3~25\))))
-- \Add3~27\ = CARRY((\fracts~69_combout\ & ((!\Add3~25\) # (!\fractc~11_combout\))) # (!\fracts~69_combout\ & (!\fractc~11_combout\ & !\Add3~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~69_combout\,
	datab => \fractc~11_combout\,
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X28_Y18_N2
\Add3~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (\fracts~58_combout\ & ((\fractc~9_combout\ & (!\Add3~29\)) # (!\fractc~9_combout\ & ((\Add3~29\) # (GND))))) # (!\fracts~58_combout\ & ((\fractc~9_combout\ & (\Add3~29\ & VCC)) # (!\fractc~9_combout\ & (!\Add3~29\))))
-- \Add3~31\ = CARRY((\fracts~58_combout\ & ((!\Add3~29\) # (!\fractc~9_combout\))) # (!\fracts~58_combout\ & (!\fractc~9_combout\ & !\Add3~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~58_combout\,
	datab => \fractc~9_combout\,
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: LCCOMB_X28_Y18_N4
\Add3~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = ((\fractc~8_combout\ $ (\fracts~52_combout\ $ (\Add3~31\)))) # (GND)
-- \Add3~33\ = CARRY((\fractc~8_combout\ & ((!\Add3~31\) # (!\fracts~52_combout\))) # (!\fractc~8_combout\ & (!\fracts~52_combout\ & !\Add3~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fractc~8_combout\,
	datab => \fracts~52_combout\,
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: LCCOMB_X28_Y18_N8
\Add3~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = ((\fracts~45_combout\ $ (\fractc~6_combout\ $ (\Add3~35\)))) # (GND)
-- \Add3~37\ = CARRY((\fracts~45_combout\ & (\fractc~6_combout\ & !\Add3~35\)) # (!\fracts~45_combout\ & ((\fractc~6_combout\) # (!\Add3~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~45_combout\,
	datab => \fractc~6_combout\,
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: LCCOMB_X29_Y19_N16
\Add2~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = ((\fractc~18_combout\ $ (\fracts~109_combout\ $ (!\Add2~55\)))) # (GND)
-- \Add2~57\ = CARRY((\fractc~18_combout\ & ((\fracts~109_combout\) # (!\Add2~55\))) # (!\fractc~18_combout\ & (\fracts~109_combout\ & !\Add2~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fractc~18_combout\,
	datab => \fracts~109_combout\,
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: LCCOMB_X29_Y19_N22
\Add2~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = (\fractc~15_combout\ & ((\fracts~89_combout\ & (\Add2~61\ & VCC)) # (!\fracts~89_combout\ & (!\Add2~61\)))) # (!\fractc~15_combout\ & ((\fracts~89_combout\ & (!\Add2~61\)) # (!\fracts~89_combout\ & ((\Add2~61\) # (GND)))))
-- \Add2~63\ = CARRY((\fractc~15_combout\ & (!\fracts~89_combout\ & !\Add2~61\)) # (!\fractc~15_combout\ & ((!\Add2~61\) # (!\fracts~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fractc~15_combout\,
	datab => \fracts~89_combout\,
	datad => VCC,
	cin => \Add2~61\,
	combout => \Add2~62_combout\,
	cout => \Add2~63\);

-- Location: LCCOMB_X29_Y19_N26
\Add2~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~66_combout\ = (\fractc~12_combout\ & ((\fracts~74_combout\ & (\Add2~65\ & VCC)) # (!\fracts~74_combout\ & (!\Add2~65\)))) # (!\fractc~12_combout\ & ((\fracts~74_combout\ & (!\Add2~65\)) # (!\fracts~74_combout\ & ((\Add2~65\) # (GND)))))
-- \Add2~67\ = CARRY((\fractc~12_combout\ & (!\fracts~74_combout\ & !\Add2~65\)) # (!\fractc~12_combout\ & ((!\Add2~65\) # (!\fracts~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fractc~12_combout\,
	datab => \fracts~74_combout\,
	datad => VCC,
	cin => \Add2~65\,
	combout => \Add2~66_combout\,
	cout => \Add2~67\);

-- Location: LCCOMB_X29_Y18_N2
\Add2~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~74_combout\ = (\fracts~52_combout\ & ((\fractc~8_combout\ & (\Add2~73\ & VCC)) # (!\fractc~8_combout\ & (!\Add2~73\)))) # (!\fracts~52_combout\ & ((\fractc~8_combout\ & (!\Add2~73\)) # (!\fractc~8_combout\ & ((\Add2~73\) # (GND)))))
-- \Add2~75\ = CARRY((\fracts~52_combout\ & (!\fractc~8_combout\ & !\Add2~73\)) # (!\fracts~52_combout\ & ((!\Add2~73\) # (!\fractc~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~52_combout\,
	datab => \fractc~8_combout\,
	datad => VCC,
	cin => \Add2~73\,
	combout => \Add2~74_combout\,
	cout => \Add2~75\);

-- Location: LCCOMB_X28_Y18_N14
\Add3~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (\fractc~22_combout\ & ((\fracts~134_combout\ & (!\Add3~41\)) # (!\fracts~134_combout\ & (\Add3~41\ & VCC)))) # (!\fractc~22_combout\ & ((\fracts~134_combout\ & ((\Add3~41\) # (GND))) # (!\fracts~134_combout\ & (!\Add3~41\))))
-- \Add3~43\ = CARRY((\fractc~22_combout\ & (\fracts~134_combout\ & !\Add3~41\)) # (!\fractc~22_combout\ & ((\fracts~134_combout\) # (!\Add3~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fractc~22_combout\,
	datab => \fracts~134_combout\,
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

-- Location: LCCOMB_X29_Y18_N14
\Add2~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~87_combout\ = (\fractc~25_combout\ & ((\fracts~146_combout\ & (\Add2~85\ & VCC)) # (!\fracts~146_combout\ & (!\Add2~85\)))) # (!\fractc~25_combout\ & ((\fracts~146_combout\ & (!\Add2~85\)) # (!\fracts~146_combout\ & ((\Add2~85\) # (GND)))))
-- \Add2~88\ = CARRY((\fractc~25_combout\ & (!\fracts~146_combout\ & !\Add2~85\)) # (!\fractc~25_combout\ & ((!\Add2~85\) # (!\fracts~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fractc~25_combout\,
	datab => \fracts~146_combout\,
	datad => VCC,
	cin => \Add2~85\,
	combout => \Add2~87_combout\,
	cout => \Add2~88\);

-- Location: LCCOMB_X29_Y18_N22
\Add2~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~95_combout\ = (\fracts~154_combout\ & ((\fractc~29_combout\ & (\Add2~94\ & VCC)) # (!\fractc~29_combout\ & (!\Add2~94\)))) # (!\fracts~154_combout\ & ((\fractc~29_combout\ & (!\Add2~94\)) # (!\fractc~29_combout\ & ((\Add2~94\) # (GND)))))
-- \Add2~96\ = CARRY((\fracts~154_combout\ & (!\fractc~29_combout\ & !\Add2~94\)) # (!\fracts~154_combout\ & ((!\Add2~94\) # (!\fractc~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~154_combout\,
	datab => \fractc~29_combout\,
	datad => VCC,
	cin => \Add2~94\,
	combout => \Add2~95_combout\,
	cout => \Add2~96\);

-- Location: LCCOMB_X29_Y18_N24
\Add2~97\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~97_combout\ = !\Add2~96\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add2~96\,
	combout => \Add2~97_combout\);

-- Location: LCCOMB_X29_Y21_N0
\Add4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = \find_leftmost~43_combout\ $ (VCC)
-- \Add4~1\ = CARRY(\find_leftmost~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \find_leftmost~43_combout\,
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X29_Y21_N6
\Add4~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (\find_leftmost~17_combout\ & (\Add4~5\ & VCC)) # (!\find_leftmost~17_combout\ & (!\Add4~5\))
-- \Add4~7\ = CARRY((!\find_leftmost~17_combout\ & !\Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \find_leftmost~17_combout\,
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X29_Y21_N10
\Add4~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (\ufract~2_combout\ & (((!\Add4~9\)))) # (!\ufract~2_combout\ & ((\find_leftmost~10_combout\ & (\Add4~9\ & VCC)) # (!\find_leftmost~10_combout\ & (!\Add4~9\))))
-- \Add4~11\ = CARRY((!\Add4~9\ & ((\ufract~2_combout\) # (!\find_leftmost~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ufract~2_combout\,
	datab => \find_leftmost~10_combout\,
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X29_Y21_N18
\Add5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (\Add4~6_combout\ & ((GND) # (!\Add5~3\))) # (!\Add4~6_combout\ & (\Add5~3\ $ (GND)))
-- \Add5~5\ = CARRY((\Add4~6_combout\) # (!\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~6_combout\,
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X29_Y24_N6
\Add6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = (\rexpon~7_combout\ & (\find_leftmost~43_combout\ $ (VCC))) # (!\rexpon~7_combout\ & (\find_leftmost~43_combout\ & VCC))
-- \Add6~1\ = CARRY((\rexpon~7_combout\ & \find_leftmost~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rexpon~7_combout\,
	datab => \find_leftmost~43_combout\,
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: LCCOMB_X29_Y20_N12
\Add7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (\rexpon~6_combout\ & (\Add7~1\ & VCC)) # (!\rexpon~6_combout\ & (!\Add7~1\))
-- \Add7~3\ = CARRY((!\rexpon~6_combout\ & !\Add7~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rexpon~6_combout\,
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X29_Y20_N14
\Add7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (\rexpon~5_combout\ & ((GND) # (!\Add7~3\))) # (!\rexpon~5_combout\ & (\Add7~3\ $ (GND)))
-- \Add7~5\ = CARRY((\rexpon~5_combout\) # (!\Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rexpon~5_combout\,
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X29_Y20_N16
\Add7~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (\rexpon~4_combout\ & (\Add7~5\ & VCC)) # (!\rexpon~4_combout\ & (!\Add7~5\))
-- \Add7~7\ = CARRY((!\rexpon~4_combout\ & !\Add7~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rexpon~4_combout\,
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X29_Y20_N22
\Add7~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = (\rexpon~1_combout\ & ((GND) # (!\Add7~11\))) # (!\rexpon~1_combout\ & (\Add7~11\ $ (GND)))
-- \Add7~13\ = CARRY((\rexpon~1_combout\) # (!\Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rexpon~1_combout\,
	datad => VCC,
	cin => \Add7~11\,
	combout => \Add7~12_combout\,
	cout => \Add7~13\);

-- Location: LCCOMB_X29_Y20_N24
\Add7~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~14_combout\ = (\rexpon~0_combout\ & ((\Add7~13\) # (GND))) # (!\rexpon~0_combout\ & (!\Add7~13\))
-- \Add7~15\ = CARRY((\rexpon~0_combout\) # (!\Add7~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rexpon~0_combout\,
	datad => VCC,
	cin => \Add7~13\,
	combout => \Add7~14_combout\,
	cout => \Add7~15\);

-- Location: LCCOMB_X29_Y20_N26
\Add7~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~16_combout\ = \rexpon~0_combout\ $ (\Add7~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rexpon~0_combout\,
	cin => \Add7~15\,
	combout => \Add7~16_combout\);

-- Location: LCCOMB_X29_Y23_N14
\Add8~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~17_combout\ = (\Add7~16_combout\ & ((\Add8~16\) # (GND))) # (!\Add7~16_combout\ & (!\Add8~16\))
-- \Add8~18\ = CARRY((\Add7~16_combout\) # (!\Add8~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~16_combout\,
	datad => VCC,
	cin => \Add8~16\,
	combout => \Add8~17_combout\,
	cout => \Add8~18\);

-- Location: LCCOMB_X31_Y18_N14
\Add9~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = (\Add8~22_combout\ & (!\Add9~7\ & VCC)) # (!\Add8~22_combout\ & (\Add9~7\ $ (GND)))
-- \Add9~9\ = CARRY((!\Add8~22_combout\ & !\Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~22_combout\,
	datad => VCC,
	cin => \Add9~7\,
	combout => \Add9~8_combout\,
	cout => \Add9~9\);

-- Location: LCCOMB_X31_Y18_N16
\Add9~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~10_combout\ = (\Add8~23_combout\ & ((\Add9~9\) # (GND))) # (!\Add8~23_combout\ & (!\Add9~9\))
-- \Add9~11\ = CARRY((\Add8~23_combout\) # (!\Add9~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~23_combout\,
	datad => VCC,
	cin => \Add9~9\,
	combout => \Add9~10_combout\,
	cout => \Add9~11\);

-- Location: LCCOMB_X31_Y18_N18
\Add9~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~12_combout\ = (\Add8~24_combout\ & (!\Add9~11\ & VCC)) # (!\Add8~24_combout\ & (\Add9~11\ $ (GND)))
-- \Add9~13\ = CARRY((!\Add8~24_combout\ & !\Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~24_combout\,
	datad => VCC,
	cin => \Add9~11\,
	combout => \Add9~12_combout\,
	cout => \Add9~13\);

-- Location: LCCOMB_X31_Y18_N20
\Add9~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~14_combout\ = (\Add8~25_combout\ & ((\Add9~13\) # (GND))) # (!\Add8~25_combout\ & (!\Add9~13\))
-- \Add9~15\ = CARRY((\Add8~25_combout\) # (!\Add9~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~25_combout\,
	datad => VCC,
	cin => \Add9~13\,
	combout => \Add9~14_combout\,
	cout => \Add9~15\);

-- Location: LCCOMB_X34_Y15_N6
\Add10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~0_combout\ = \shiftr~6_combout\ $ (VCC)
-- \Add10~1\ = CARRY(\shiftr~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftr~6_combout\,
	datad => VCC,
	combout => \Add10~0_combout\,
	cout => \Add10~1\);

-- Location: LCCOMB_X34_Y15_N8
\Add10~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~2_combout\ = (\shiftr~7_combout\ & (!\Add10~1\)) # (!\shiftr~7_combout\ & (\Add10~1\ & VCC))
-- \Add10~3\ = CARRY((\shiftr~7_combout\ & !\Add10~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \shiftr~7_combout\,
	datad => VCC,
	cin => \Add10~1\,
	combout => \Add10~2_combout\,
	cout => \Add10~3\);

-- Location: LCCOMB_X34_Y15_N10
\Add10~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~4_combout\ = (\Add8~4_combout\ & ((GND) # (!\Add10~3\))) # (!\Add8~4_combout\ & (\Add10~3\ $ (GND)))
-- \Add10~5\ = CARRY((\Add8~4_combout\) # (!\Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~4_combout\,
	datad => VCC,
	cin => \Add10~3\,
	combout => \Add10~4_combout\,
	cout => \Add10~5\);

-- Location: LCCOMB_X34_Y15_N12
\Add10~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~6_combout\ = (\Add8~7_combout\ & (\Add10~5\ & VCC)) # (!\Add8~7_combout\ & (!\Add10~5\))
-- \Add10~7\ = CARRY((!\Add8~7_combout\ & !\Add10~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~7_combout\,
	datad => VCC,
	cin => \Add10~5\,
	combout => \Add10~6_combout\,
	cout => \Add10~7\);

-- Location: LCCOMB_X34_Y15_N14
\Add10~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~8_combout\ = (\Add8~10_combout\ & ((GND) # (!\Add10~7\))) # (!\Add8~10_combout\ & (\Add10~7\ $ (GND)))
-- \Add10~9\ = CARRY((\Add8~10_combout\) # (!\Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~10_combout\,
	datad => VCC,
	cin => \Add10~7\,
	combout => \Add10~8_combout\,
	cout => \Add10~9\);

-- Location: LCCOMB_X34_Y15_N16
\Add10~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~10_combout\ = (\Add8~22_combout\ & (\Add10~9\ & VCC)) # (!\Add8~22_combout\ & (!\Add10~9\))
-- \Add10~11\ = CARRY((!\Add8~22_combout\ & !\Add10~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~22_combout\,
	datad => VCC,
	cin => \Add10~9\,
	combout => \Add10~10_combout\,
	cout => \Add10~11\);

-- Location: LCCOMB_X34_Y15_N18
\Add10~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~12_combout\ = (\Add8~23_combout\ & ((GND) # (!\Add10~11\))) # (!\Add8~23_combout\ & (\Add10~11\ $ (GND)))
-- \Add10~13\ = CARRY((\Add8~23_combout\) # (!\Add10~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~23_combout\,
	datad => VCC,
	cin => \Add10~11\,
	combout => \Add10~12_combout\,
	cout => \Add10~13\);

-- Location: LCCOMB_X34_Y15_N20
\Add10~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~14_combout\ = (\Add8~24_combout\ & (\Add10~13\ & VCC)) # (!\Add8~24_combout\ & (!\Add10~13\))
-- \Add10~15\ = CARRY((!\Add8~24_combout\ & !\Add10~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~24_combout\,
	datad => VCC,
	cin => \Add10~13\,
	combout => \Add10~14_combout\,
	cout => \Add10~15\);

-- Location: LCCOMB_X34_Y15_N22
\Add10~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~16_combout\ = (\Add8~25_combout\ & ((GND) # (!\Add10~15\))) # (!\Add8~25_combout\ & (\Add10~15\ $ (GND)))
-- \Add10~17\ = CARRY((\Add8~25_combout\) # (!\Add10~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~25_combout\,
	datad => VCC,
	cin => \Add10~15\,
	combout => \Add10~16_combout\,
	cout => \Add10~17\);

-- Location: LCCOMB_X34_Y15_N24
\Add10~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~18_combout\ = (\Add8~21_combout\ & (\Add10~17\ & VCC)) # (!\Add8~21_combout\ & (!\Add10~17\))
-- \Add10~19\ = CARRY((!\Add8~21_combout\ & !\Add10~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~21_combout\,
	datad => VCC,
	cin => \Add10~17\,
	combout => \Add10~18_combout\,
	cout => \Add10~19\);

-- Location: LCCOMB_X34_Y15_N26
\Add10~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~20_combout\ = (\Add8~21_combout\ & ((GND) # (!\Add10~19\))) # (!\Add8~21_combout\ & (\Add10~19\ $ (GND)))
-- \Add10~21\ = CARRY((\Add8~21_combout\) # (!\Add10~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~21_combout\,
	datad => VCC,
	cin => \Add10~19\,
	combout => \Add10~20_combout\,
	cout => \Add10~21\);

-- Location: LCCOMB_X34_Y15_N28
\Add10~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add10~22_combout\ = \Add10~21\ $ (!\Add8~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add8~21_combout\,
	cin => \Add10~21\,
	combout => \Add10~22_combout\);

-- Location: LCCOMB_X32_Y21_N12
\Add12~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~28_combout\ = (\Add12~27\ & (((!\sfract~134_combout\)) # (!\sfract~106_combout\))) # (!\Add12~27\ & (((\sfract~106_combout\ & \sfract~134_combout\)) # (GND)))
-- \Add12~29\ = CARRY(((!\Add12~27\) # (!\sfract~134_combout\)) # (!\sfract~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~106_combout\,
	datab => \sfract~134_combout\,
	datad => VCC,
	cin => \Add12~27\,
	combout => \Add12~28_combout\,
	cout => \Add12~29\);

-- Location: LCCOMB_X32_Y21_N14
\Add12~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~31_combout\ = (\Add12~29\ & (\sfract~85_combout\ & (\sfract~134_combout\ & VCC))) # (!\Add12~29\ & ((((\sfract~85_combout\ & \sfract~134_combout\)))))
-- \Add12~32\ = CARRY((\sfract~85_combout\ & (\sfract~134_combout\ & !\Add12~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~85_combout\,
	datab => \sfract~134_combout\,
	datad => VCC,
	cin => \Add12~29\,
	combout => \Add12~31_combout\,
	cout => \Add12~32\);

-- Location: LCCOMB_X32_Y21_N20
\Add12~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~40_combout\ = (\sfract~63_combout\ & (!\Add12~38\)) # (!\sfract~63_combout\ & ((\Add12~38\) # (GND)))
-- \Add12~41\ = CARRY((!\Add12~38\) # (!\sfract~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sfract~63_combout\,
	datad => VCC,
	cin => \Add12~38\,
	combout => \Add12~40_combout\,
	cout => \Add12~41\);

-- Location: LCCOMB_X32_Y21_N26
\Add12~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~49_combout\ = (\sfract~100_combout\ & (\Add12~47\ $ (GND))) # (!\sfract~100_combout\ & (!\Add12~47\ & VCC))
-- \Add12~50\ = CARRY((\sfract~100_combout\ & !\Add12~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sfract~100_combout\,
	datad => VCC,
	cin => \Add12~47\,
	combout => \Add12~49_combout\,
	cout => \Add12~50\);

-- Location: LCCOMB_X32_Y20_N6
\Add12~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~63_combout\ = (\sfract~57_combout\ & (\Add12~62\ $ (GND))) # (!\sfract~57_combout\ & (!\Add12~62\ & VCC))
-- \Add12~64\ = CARRY((\sfract~57_combout\ & !\Add12~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sfract~57_combout\,
	datad => VCC,
	cin => \Add12~62\,
	combout => \Add12~63_combout\,
	cout => \Add12~64\);

-- Location: LCCOMB_X32_Y20_N10
\Add12~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~67_combout\ = (\Add12~66\ & (\sfract~30_combout\ & (\sfract~133_combout\ & VCC))) # (!\Add12~66\ & ((((\sfract~30_combout\ & \sfract~133_combout\)))))
-- \Add12~68\ = CARRY((\sfract~30_combout\ & (\sfract~133_combout\ & !\Add12~66\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~30_combout\,
	datab => \sfract~133_combout\,
	datad => VCC,
	cin => \Add12~66\,
	combout => \Add12~67_combout\,
	cout => \Add12~68\);

-- Location: LCCOMB_X31_Y24_N6
\Add11~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~4_combout\ = (\Add11~1\ & (((!\shiftr~8_combout\)) # (!\Add6~2_combout\))) # (!\Add11~1\ & (((\Add6~2_combout\ & \shiftr~8_combout\)) # (GND)))
-- \Add11~5\ = CARRY(((!\Add11~1\) # (!\shiftr~8_combout\)) # (!\Add6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datab => \shiftr~8_combout\,
	datad => VCC,
	cin => \Add11~1\,
	combout => \Add11~4_combout\,
	cout => \Add11~5\);

-- Location: LCCOMB_X31_Y24_N10
\Add11~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~12_combout\ = (\Add11~9\ & (((!\shiftr~8_combout\)) # (!\Add6~6_combout\))) # (!\Add11~9\ & (((\Add6~6_combout\ & \shiftr~8_combout\)) # (GND)))
-- \Add11~13\ = CARRY(((!\Add11~9\) # (!\shiftr~8_combout\)) # (!\Add6~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datab => \shiftr~8_combout\,
	datad => VCC,
	cin => \Add11~9\,
	combout => \Add11~12_combout\,
	cout => \Add11~13\);

-- Location: LCCOMB_X31_Y24_N12
\Add11~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~16_combout\ = (\Add11~13\ & (\Add6~8_combout\ & (\shiftr~8_combout\ & VCC))) # (!\Add11~13\ & ((((\Add6~8_combout\ & \shiftr~8_combout\)))))
-- \Add11~17\ = CARRY((\Add6~8_combout\ & (\shiftr~8_combout\ & !\Add11~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~8_combout\,
	datab => \shiftr~8_combout\,
	datad => VCC,
	cin => \Add11~13\,
	combout => \Add11~16_combout\,
	cout => \Add11~17\);

-- Location: LCCOMB_X31_Y24_N16
\Add11~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~24_combout\ = (\Add11~21\ & (\Add6~12_combout\ & (\shiftr~8_combout\ & VCC))) # (!\Add11~21\ & ((((\Add6~12_combout\ & \shiftr~8_combout\)))))
-- \Add11~25\ = CARRY((\Add6~12_combout\ & (\shiftr~8_combout\ & !\Add11~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~12_combout\,
	datab => \shiftr~8_combout\,
	datad => VCC,
	cin => \Add11~21\,
	combout => \Add11~24_combout\,
	cout => \Add11~25\);

-- Location: LCCOMB_X31_Y24_N18
\Add11~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~28_combout\ = \Add11~25\ $ (((!\Add6~14_combout\ & \shiftr~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add6~14_combout\,
	datad => \shiftr~8_combout\,
	cin => \Add11~25\,
	combout => \Add11~28_combout\);

-- Location: LCCOMB_X25_Y20_N8
\orx~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~2_combout\ = (!\b[2]~input_o\ & (!\b[3]~input_o\ & (!\b[1]~input_o\ & !\b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[3]~input_o\,
	datac => \b[1]~input_o\,
	datad => \b[0]~input_o\,
	combout => \orx~2_combout\);

-- Location: LCCOMB_X25_Y18_N24
\orx~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~6_combout\ = (!\b[15]~input_o\ & (!\b[18]~input_o\ & (!\b[17]~input_o\ & !\b[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[15]~input_o\,
	datab => \b[18]~input_o\,
	datac => \b[17]~input_o\,
	datad => \b[16]~input_o\,
	combout => \orx~6_combout\);

-- Location: LCCOMB_X25_Y18_N26
\orx~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~7_combout\ = (!\b[19]~input_o\ & (!\b[20]~input_o\ & \orx~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[19]~input_o\,
	datab => \b[20]~input_o\,
	datad => \orx~6_combout\,
	combout => \orx~7_combout\);

-- Location: LCCOMB_X25_Y19_N0
\orx~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~11_combout\ = (!\a[8]~input_o\ & (!\a[7]~input_o\ & (!\a[6]~input_o\ & !\a[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[8]~input_o\,
	datab => \a[7]~input_o\,
	datac => \a[6]~input_o\,
	datad => \a[5]~input_o\,
	combout => \orx~11_combout\);

-- Location: LCCOMB_X28_Y22_N8
\add~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add~2_combout\ = (\b[22]~input_o\) # (((\Classfp~1_combout\ & !\b[31]~input_o\)) # (!\Result~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Classfp~1_combout\,
	datab => \b[22]~input_o\,
	datac => \Result~5_combout\,
	datad => \b[31]~input_o\,
	combout => \add~2_combout\);

-- Location: LCCOMB_X28_Y20_N0
\rexpon~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rexpon~0_combout\ = (\Add0~16_combout\ & (\b[30]~input_o\)) # (!\Add0~16_combout\ & ((\a[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[30]~input_o\,
	datac => \Add0~16_combout\,
	datad => \a[30]~input_o\,
	combout => \rexpon~0_combout\);

-- Location: LCCOMB_X28_Y24_N12
\ShiftRight0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~9_combout\ = (\Add1~4_combout\ & (\ShiftRight0~5_combout\)) # (!\Add1~4_combout\ & ((\ShiftRight0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~4_combout\,
	datac => \ShiftRight0~5_combout\,
	datad => \ShiftRight0~8_combout\,
	combout => \ShiftRight0~9_combout\);

-- Location: LCCOMB_X27_Y24_N8
\ShiftRight0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~11_combout\ = (\Add0~0_combout\ & (\a[3]~input_o\)) # (!\Add0~0_combout\ & ((\a[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \Add0~0_combout\,
	datac => \a[2]~input_o\,
	combout => \ShiftRight0~11_combout\);

-- Location: LCCOMB_X26_Y24_N4
\ShiftRight0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~12_combout\ = (\Add1~2_combout\ & ((\ShiftRight0~10_combout\))) # (!\Add1~2_combout\ & (\ShiftRight0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~2_combout\,
	datac => \ShiftRight0~11_combout\,
	datad => \ShiftRight0~10_combout\,
	combout => \ShiftRight0~12_combout\);

-- Location: LCCOMB_X27_Y21_N12
\ShiftRight0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~13_combout\ = (\Add0~0_combout\ & (\a[1]~input_o\)) # (!\Add0~0_combout\ & ((\a[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datac => \Add0~0_combout\,
	datad => \a[0]~input_o\,
	combout => \ShiftRight0~13_combout\);

-- Location: LCCOMB_X27_Y21_N6
\ShiftRight0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~14_combout\ = (\Add1~4_combout\ & (((\ShiftRight0~12_combout\)))) # (!\Add1~4_combout\ & (\ShiftRight0~13_combout\ & ((\Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~13_combout\,
	datab => \Add1~4_combout\,
	datac => \ShiftRight0~12_combout\,
	datad => \Add1~2_combout\,
	combout => \ShiftRight0~14_combout\);

-- Location: LCCOMB_X26_Y21_N10
\ShiftRight0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~15_combout\ = (!\Add1~8_combout\ & ((\Add1~6_combout\ & ((\ShiftRight0~9_combout\))) # (!\Add1~6_combout\ & (\ShiftRight0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \ShiftRight0~14_combout\,
	datac => \Add1~8_combout\,
	datad => \ShiftRight0~9_combout\,
	combout => \ShiftRight0~15_combout\);

-- Location: LCCOMB_X27_Y22_N16
\ShiftRight0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~16_combout\ = (\Add0~0_combout\ & ((\a[21]~input_o\))) # (!\Add0~0_combout\ & (\a[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[20]~input_o\,
	datac => \a[21]~input_o\,
	datad => \Add0~0_combout\,
	combout => \ShiftRight0~16_combout\);

-- Location: LCCOMB_X28_Y22_N4
\ShiftRight0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~23_combout\ = (!\Add1~2_combout\ & ((\Add0~0_combout\ & ((\Result~14_combout\))) # (!\Add0~0_combout\ & (\a[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \a[22]~input_o\,
	datac => \Result~14_combout\,
	datad => \Add0~0_combout\,
	combout => \ShiftRight0~23_combout\);

-- Location: LCCOMB_X27_Y18_N8
\ShiftRight1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~0_combout\ = (\Add0~0_combout\ & (\b[13]~input_o\)) # (!\Add0~0_combout\ & ((\b[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[13]~input_o\,
	datac => \Add0~0_combout\,
	datad => \b[12]~input_o\,
	combout => \ShiftRight1~0_combout\);

-- Location: LCCOMB_X23_Y23_N6
\ShiftRight1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~1_combout\ = (\Add0~0_combout\ & ((\b[11]~input_o\))) # (!\Add0~0_combout\ & (\b[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[10]~input_o\,
	datab => \b[11]~input_o\,
	datad => \Add0~0_combout\,
	combout => \ShiftRight1~1_combout\);

-- Location: LCCOMB_X23_Y23_N16
\ShiftRight1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~2_combout\ = (\Add0~2_combout\ & (\ShiftRight1~0_combout\)) # (!\Add0~2_combout\ & ((\ShiftRight1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~0_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftRight1~1_combout\,
	combout => \ShiftRight1~2_combout\);

-- Location: LCCOMB_X25_Y22_N6
\fracts~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~19_combout\ = (\Add0~0_combout\ & (\b[1]~input_o\)) # (!\Add0~0_combout\ & ((\b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \b[1]~input_o\,
	datac => \b[0]~input_o\,
	combout => \fracts~19_combout\);

-- Location: LCCOMB_X25_Y22_N8
\fracts~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~20_combout\ = (\Add0~4_combout\ & (((\ShiftRight1~9_combout\)))) # (!\Add0~4_combout\ & (\fracts~19_combout\ & ((\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~19_combout\,
	datab => \ShiftRight1~9_combout\,
	datac => \Add0~2_combout\,
	datad => \Add0~4_combout\,
	combout => \fracts~20_combout\);

-- Location: LCCOMB_X25_Y22_N2
\ShiftRight1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~12_combout\ = (\Add0~0_combout\ & ((\b[19]~input_o\))) # (!\Add0~0_combout\ & (\b[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[18]~input_o\,
	datab => \b[19]~input_o\,
	datac => \Add0~0_combout\,
	combout => \ShiftRight1~12_combout\);

-- Location: LCCOMB_X24_Y22_N8
\ShiftRight1~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~17_combout\ = (\Add0~4_combout\ & (\ShiftRight1~13_combout\)) # (!\Add0~4_combout\ & ((\ShiftRight1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~13_combout\,
	datac => \Add0~4_combout\,
	datad => \ShiftRight1~16_combout\,
	combout => \ShiftRight1~17_combout\);

-- Location: LCCOMB_X28_Y23_N30
\Result~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Result~15_combout\ = (\Result~8_combout\ & (\orx~13_combout\ & \orx~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result~8_combout\,
	datac => \orx~13_combout\,
	datad => \orx~9_combout\,
	combout => \Result~15_combout\);

-- Location: LCCOMB_X26_Y22_N26
\sticky~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sticky~0_combout\ = (\LessThan0~3_combout\ & ((\a[13]~input_o\) # ((\Result~14_combout\) # (!\Result~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[13]~input_o\,
	datab => \LessThan0~3_combout\,
	datac => \Result~15_combout\,
	datad => \Result~14_combout\,
	combout => \sticky~0_combout\);

-- Location: LCCOMB_X29_Y21_N30
\sticky~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sticky~1_combout\ = (!\LessThan0~0_combout\ & (\Add0~16_combout\ & ((!\LessThan0~1_combout\) # (!\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \LessThan0~0_combout\,
	datac => \Add0~16_combout\,
	datad => \LessThan0~1_combout\,
	combout => \sticky~1_combout\);

-- Location: LCCOMB_X28_Y21_N0
\ShiftRight0~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~35_combout\ = (\ShiftRight0~34_combout\ & \Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~34_combout\,
	datad => \Add1~8_combout\,
	combout => \ShiftRight0~35_combout\);

-- Location: LCCOMB_X26_Y24_N12
\ShiftRight0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~40_combout\ = (\Add0~0_combout\ & ((\a[6]~input_o\))) # (!\Add0~0_combout\ & (\a[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[5]~input_o\,
	datac => \a[6]~input_o\,
	datad => \Add0~0_combout\,
	combout => \ShiftRight0~40_combout\);

-- Location: LCCOMB_X26_Y24_N6
\ShiftRight0~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~41_combout\ = (\Add1~2_combout\ & ((\ShiftRight0~39_combout\))) # (!\Add1~2_combout\ & (\ShiftRight0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~40_combout\,
	datab => \ShiftRight0~39_combout\,
	datad => \Add1~2_combout\,
	combout => \ShiftRight0~41_combout\);

-- Location: LCCOMB_X27_Y24_N2
\ShiftRight0~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~43_combout\ = (\Add0~0_combout\ & ((\a[4]~input_o\))) # (!\Add0~0_combout\ & (\a[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \Add0~0_combout\,
	datac => \a[4]~input_o\,
	combout => \ShiftRight0~43_combout\);

-- Location: LCCOMB_X27_Y24_N4
\ShiftRight0~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~44_combout\ = (\Add0~0_combout\ & (\a[2]~input_o\)) # (!\Add0~0_combout\ & ((\a[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \a[1]~input_o\,
	datac => \Add0~0_combout\,
	combout => \ShiftRight0~44_combout\);

-- Location: LCCOMB_X26_Y24_N8
\ShiftRight0~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~45_combout\ = (\Add1~2_combout\ & ((\ShiftRight0~43_combout\))) # (!\Add1~2_combout\ & (\ShiftRight0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~44_combout\,
	datab => \Add1~2_combout\,
	datad => \ShiftRight0~43_combout\,
	combout => \ShiftRight0~45_combout\);

-- Location: LCCOMB_X27_Y24_N14
\ShiftRight0~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~46_combout\ = (\a[0]~input_o\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datac => \Add0~0_combout\,
	combout => \ShiftRight0~46_combout\);

-- Location: LCCOMB_X25_Y24_N8
\ShiftRight0~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~47_combout\ = (\Add1~4_combout\ & (((\ShiftRight0~45_combout\)))) # (!\Add1~4_combout\ & (\Add1~2_combout\ & ((\ShiftRight0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Add1~2_combout\,
	datac => \ShiftRight0~45_combout\,
	datad => \ShiftRight0~46_combout\,
	combout => \ShiftRight0~47_combout\);

-- Location: LCCOMB_X25_Y24_N10
\ShiftRight0~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~48_combout\ = (!\Add1~8_combout\ & ((\Add1~6_combout\ & ((\ShiftRight0~42_combout\))) # (!\Add1~6_combout\ & (\ShiftRight0~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \ShiftRight0~47_combout\,
	datac => \ShiftRight0~42_combout\,
	datad => \Add1~6_combout\,
	combout => \ShiftRight0~48_combout\);

-- Location: LCCOMB_X27_Y24_N16
\LessThan12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan12~0_combout\ = (!\Add0~0_combout\ & !\Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	datad => \Add1~2_combout\,
	combout => \LessThan12~0_combout\);

-- Location: LCCOMB_X27_Y23_N30
\orx~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~14_combout\ = (\a[21]~input_o\ & (\Add1~6_combout\ & ((\Add1~4_combout\) # (!\LessThan12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[21]~input_o\,
	datab => \Add1~6_combout\,
	datac => \LessThan12~0_combout\,
	datad => \Add1~4_combout\,
	combout => \orx~14_combout\);

-- Location: LCCOMB_X27_Y23_N16
\orx~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~15_combout\ = (\a[17]~input_o\ & (\Add1~4_combout\ & ((\Add1~2_combout\) # (\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[17]~input_o\,
	datab => \Add1~2_combout\,
	datac => \Add0~0_combout\,
	datad => \Add1~4_combout\,
	combout => \orx~15_combout\);

-- Location: LCCOMB_X27_Y23_N10
\LessThan2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (\Add1~6_combout\ & ((\Add1~4_combout\) # ((\Add1~2_combout\ & \Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add1~6_combout\,
	datac => \Add0~0_combout\,
	datad => \Add1~4_combout\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X27_Y23_N12
\orx~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~16_combout\ = (\orx~15_combout\) # ((\LessThan2~0_combout\ & ((\Result~12_combout\) # (\Result~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \orx~15_combout\,
	datac => \Result~12_combout\,
	datad => \Result~13_combout\,
	combout => \orx~16_combout\);

-- Location: LCCOMB_X28_Y23_N14
\orx~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~17_combout\ = (\a[18]~input_o\) # ((\a[19]~input_o\ & \Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[18]~input_o\,
	datab => \a[19]~input_o\,
	datad => \Add0~0_combout\,
	combout => \orx~17_combout\);

-- Location: LCCOMB_X28_Y23_N24
\orx~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~18_combout\ = (!\a[15]~input_o\ & (!\a[16]~input_o\ & !\a[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[15]~input_o\,
	datab => \a[16]~input_o\,
	datad => \a[14]~input_o\,
	combout => \orx~18_combout\);

-- Location: LCCOMB_X28_Y23_N18
\orx~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~19_combout\ = (\Add1~4_combout\ & (((\orx~17_combout\ & \Add1~2_combout\)) # (!\orx~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \orx~17_combout\,
	datac => \Add1~2_combout\,
	datad => \orx~18_combout\,
	combout => \orx~19_combout\);

-- Location: LCCOMB_X28_Y23_N12
\orx~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~20_combout\ = (\a[14]~input_o\) # ((\a[15]~input_o\ & \Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[15]~input_o\,
	datab => \a[14]~input_o\,
	datad => \Add0~0_combout\,
	combout => \orx~20_combout\);

-- Location: LCCOMB_X28_Y23_N22
\orx~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~21_combout\ = ((\orx~19_combout\) # ((\orx~20_combout\ & \Add1~2_combout\))) # (!\orx~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \orx~20_combout\,
	datab => \Add1~2_combout\,
	datac => \orx~13_combout\,
	datad => \orx~19_combout\,
	combout => \orx~21_combout\);

-- Location: LCCOMB_X27_Y23_N22
\orx~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~22_combout\ = ((\a[22]~input_o\ & ((\Add1~2_combout\) # (\Add1~4_combout\)))) # (!\orx~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \orx~9_combout\,
	datab => \a[22]~input_o\,
	datac => \Add1~2_combout\,
	datad => \Add1~4_combout\,
	combout => \orx~22_combout\);

-- Location: LCCOMB_X27_Y23_N0
\orx~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~23_combout\ = (\orx~16_combout\) # ((\orx~21_combout\) # ((\Add1~6_combout\ & \orx~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \orx~16_combout\,
	datab => \Add1~6_combout\,
	datac => \orx~22_combout\,
	datad => \orx~21_combout\,
	combout => \orx~23_combout\);

-- Location: LCCOMB_X27_Y23_N26
\orx~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~24_combout\ = (\orx~104_combout\) # ((\Add1~8_combout\ & ((\orx~14_combout\) # (\orx~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \orx~14_combout\,
	datab => \orx~104_combout\,
	datac => \Add1~8_combout\,
	datad => \orx~23_combout\,
	combout => \orx~24_combout\);

-- Location: LCCOMB_X26_Y21_N6
\LessThan12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan12~1_combout\ = (\Add0~0_combout\) # ((\Add1~4_combout\) # ((\Add1~6_combout\) # (\Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add1~4_combout\,
	datac => \Add1~6_combout\,
	datad => \Add1~2_combout\,
	combout => \LessThan12~1_combout\);

-- Location: LCCOMB_X26_Y21_N24
\orx~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~25_combout\ = (\a[13]~input_o\ & (((\LessThan12~1_combout\ & \Add1~8_combout\)) # (!\ShiftRight0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan12~1_combout\,
	datab => \a[13]~input_o\,
	datac => \Add1~8_combout\,
	datad => \ShiftRight0~2_combout\,
	combout => \orx~25_combout\);

-- Location: LCCOMB_X25_Y23_N14
\orx~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~26_combout\ = (\a[9]~input_o\ & (((\Add0~0_combout\)))) # (!\a[9]~input_o\ & ((\a[10]~input_o\) # ((\a[11]~input_o\ & \Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[10]~input_o\,
	datab => \a[9]~input_o\,
	datac => \a[11]~input_o\,
	datad => \Add0~0_combout\,
	combout => \orx~26_combout\);

-- Location: LCCOMB_X26_Y24_N2
\orx~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~27_combout\ = (\a[8]~input_o\) # ((\Add1~2_combout\ & ((\a[9]~input_o\) # (\orx~26_combout\))) # (!\Add1~2_combout\ & (\a[9]~input_o\ & \orx~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[8]~input_o\,
	datab => \Add1~2_combout\,
	datac => \a[9]~input_o\,
	datad => \orx~26_combout\,
	combout => \orx~27_combout\);

-- Location: LCCOMB_X26_Y24_N20
\orx~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~28_combout\ = (\a[6]~input_o\ & (((\Add1~4_combout\) # (\Add1~2_combout\)))) # (!\a[6]~input_o\ & (\orx~27_combout\ & (\Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datab => \orx~27_combout\,
	datac => \Add1~4_combout\,
	datad => \Add1~2_combout\,
	combout => \orx~28_combout\);

-- Location: LCCOMB_X27_Y24_N10
\orx~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~29_combout\ = (\Add1~6_combout\ & ((\orx~28_combout\) # (!\orx~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \orx~28_combout\,
	datac => \Add1~6_combout\,
	datad => \orx~10_combout\,
	combout => \orx~29_combout\);

-- Location: LCCOMB_X27_Y23_N20
\LessThan4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (\Add1~6_combout\ & ((\Add1~2_combout\) # ((\Add0~0_combout\) # (\Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add1~6_combout\,
	datac => \Add0~0_combout\,
	datad => \Add1~4_combout\,
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X27_Y23_N6
\orx~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~30_combout\ = (\LessThan2~0_combout\ & ((\a[7]~input_o\) # ((\a[5]~input_o\ & \LessThan4~0_combout\)))) # (!\LessThan2~0_combout\ & (\a[5]~input_o\ & ((\LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \a[5]~input_o\,
	datac => \a[7]~input_o\,
	datad => \LessThan4~0_combout\,
	combout => \orx~30_combout\);

-- Location: LCCOMB_X27_Y24_N12
\ShiftRight0~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~49_combout\ = (\Add0~0_combout\ & \a[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	datad => \a[3]~input_o\,
	combout => \ShiftRight0~49_combout\);

-- Location: LCCOMB_X27_Y24_N22
\orx~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~31_combout\ = (\a[0]~input_o\) # ((\Add1~2_combout\ & ((\a[2]~input_o\) # (\ShiftRight0~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \Add1~2_combout\,
	datac => \a[2]~input_o\,
	datad => \ShiftRight0~49_combout\,
	combout => \orx~31_combout\);

-- Location: LCCOMB_X27_Y24_N24
\orx~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~32_combout\ = (\Add1~4_combout\ & ((\orx~31_combout\) # ((\a[1]~input_o\ & !\LessThan12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \orx~31_combout\,
	datab => \Add1~4_combout\,
	datac => \a[1]~input_o\,
	datad => \LessThan12~0_combout\,
	combout => \orx~32_combout\);

-- Location: LCCOMB_X27_Y24_N26
\orx~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~33_combout\ = (\orx~32_combout\) # ((\orx~30_combout\) # ((\fracts~24_combout\ & \a[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~24_combout\,
	datab => \orx~32_combout\,
	datac => \a[4]~input_o\,
	datad => \orx~30_combout\,
	combout => \orx~33_combout\);

-- Location: LCCOMB_X27_Y24_N20
\orx~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~34_combout\ = (\orx~29_combout\) # ((\orx~24_combout\) # ((\orx~33_combout\) # (\orx~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \orx~29_combout\,
	datab => \orx~24_combout\,
	datac => \orx~33_combout\,
	datad => \orx~25_combout\,
	combout => \orx~34_combout\);

-- Location: LCCOMB_X26_Y22_N4
\sticky~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sticky~2_combout\ = (\sticky~1_combout\ & ((\orx~34_combout\) # ((\ShiftRight0~35_combout\) # (\ShiftRight0~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sticky~1_combout\,
	datab => \orx~34_combout\,
	datac => \ShiftRight0~35_combout\,
	datad => \ShiftRight0~48_combout\,
	combout => \sticky~2_combout\);

-- Location: LCCOMB_X23_Y23_N8
\ShiftRight1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~22_combout\ = (\Add0~0_combout\ & (\b[12]~input_o\)) # (!\Add0~0_combout\ & ((\b[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[12]~input_o\,
	datab => \b[11]~input_o\,
	datad => \Add0~0_combout\,
	combout => \ShiftRight1~22_combout\);

-- Location: LCCOMB_X23_Y23_N28
\ShiftRight1~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~25_combout\ = (\Add0~0_combout\ & (\b[8]~input_o\)) # (!\Add0~0_combout\ & ((\b[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[8]~input_o\,
	datac => \b[7]~input_o\,
	datad => \Add0~0_combout\,
	combout => \ShiftRight1~25_combout\);

-- Location: LCCOMB_X25_Y20_N18
\ShiftRight1~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~26_combout\ = (\Add0~0_combout\ & ((\b[6]~input_o\))) # (!\Add0~0_combout\ & (\b[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[5]~input_o\,
	datac => \b[6]~input_o\,
	datad => \Add0~0_combout\,
	combout => \ShiftRight1~26_combout\);

-- Location: LCCOMB_X25_Y20_N4
\ShiftRight1~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~27_combout\ = (\Add0~2_combout\ & ((\ShiftRight1~25_combout\))) # (!\Add0~2_combout\ & (\ShiftRight1~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~26_combout\,
	datac => \ShiftRight1~25_combout\,
	datad => \Add0~2_combout\,
	combout => \ShiftRight1~27_combout\);

-- Location: LCCOMB_X25_Y18_N30
\ShiftRight1~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~30_combout\ = (\Add0~0_combout\ & (\b[18]~input_o\)) # (!\Add0~0_combout\ & ((\b[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \b[18]~input_o\,
	datac => \b[17]~input_o\,
	combout => \ShiftRight1~30_combout\);

-- Location: LCCOMB_X24_Y19_N12
\ShiftRight1~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~31_combout\ = (\Add0~2_combout\ & (\ShiftRight1~29_combout\)) # (!\Add0~2_combout\ & ((\ShiftRight1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~29_combout\,
	datac => \ShiftRight1~30_combout\,
	datad => \Add0~2_combout\,
	combout => \ShiftRight1~31_combout\);

-- Location: LCCOMB_X27_Y18_N30
\ShiftRight1~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~32_combout\ = (\Add0~0_combout\ & ((\b[16]~input_o\))) # (!\Add0~0_combout\ & (\b[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[15]~input_o\,
	datab => \b[16]~input_o\,
	datac => \Add0~0_combout\,
	combout => \ShiftRight1~32_combout\);

-- Location: LCCOMB_X27_Y18_N0
\ShiftRight1~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~33_combout\ = (\Add0~0_combout\ & (\b[14]~input_o\)) # (!\Add0~0_combout\ & ((\b[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[14]~input_o\,
	datac => \Add0~0_combout\,
	datad => \b[13]~input_o\,
	combout => \ShiftRight1~33_combout\);

-- Location: LCCOMB_X24_Y19_N30
\ShiftRight1~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~34_combout\ = (\Add0~2_combout\ & ((\ShiftRight1~32_combout\))) # (!\Add0~2_combout\ & (\ShiftRight1~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~33_combout\,
	datac => \ShiftRight1~32_combout\,
	datad => \Add0~2_combout\,
	combout => \ShiftRight1~34_combout\);

-- Location: LCCOMB_X24_Y20_N10
\ShiftRight1~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~35_combout\ = (\Add0~4_combout\ & (\ShiftRight1~31_combout\)) # (!\Add0~4_combout\ & ((\ShiftRight1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~31_combout\,
	datac => \ShiftRight1~34_combout\,
	datad => \Add0~4_combout\,
	combout => \ShiftRight1~35_combout\);

-- Location: LCCOMB_X25_Y20_N14
\ShiftRight1~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~36_combout\ = (\Add0~0_combout\ & (\b[4]~input_o\)) # (!\Add0~0_combout\ & ((\b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datac => \b[3]~input_o\,
	datad => \Add0~0_combout\,
	combout => \ShiftRight1~36_combout\);

-- Location: LCCOMB_X25_Y20_N16
\ShiftRight1~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~37_combout\ = (\Add0~0_combout\ & (\b[2]~input_o\)) # (!\Add0~0_combout\ & ((\b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datac => \b[1]~input_o\,
	datad => \Add0~0_combout\,
	combout => \ShiftRight1~37_combout\);

-- Location: LCCOMB_X25_Y20_N10
\ShiftRight1~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~38_combout\ = (\Add0~2_combout\ & ((\ShiftRight1~36_combout\))) # (!\Add0~2_combout\ & (\ShiftRight1~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~37_combout\,
	datac => \ShiftRight1~36_combout\,
	datad => \Add0~2_combout\,
	combout => \ShiftRight1~38_combout\);

-- Location: LCCOMB_X25_Y20_N20
\LessThan29~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan29~0_combout\ = (\Add0~0_combout\ & \Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datad => \Add0~2_combout\,
	combout => \LessThan29~0_combout\);

-- Location: LCCOMB_X25_Y20_N30
\ShiftRight1~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~39_combout\ = (\Add0~4_combout\ & (((\ShiftRight1~38_combout\)))) # (!\Add0~4_combout\ & (\b[0]~input_o\ & (\LessThan29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \LessThan29~0_combout\,
	datac => \ShiftRight1~38_combout\,
	datad => \Add0~4_combout\,
	combout => \ShiftRight1~39_combout\);

-- Location: LCCOMB_X23_Y21_N10
\ShiftRight1~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~40_combout\ = (\Add0~6_combout\ & (((\Add0~8_combout\)))) # (!\Add0~6_combout\ & ((\Add0~8_combout\ & (\ShiftRight1~35_combout\)) # (!\Add0~8_combout\ & ((\ShiftRight1~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~35_combout\,
	datab => \Add0~6_combout\,
	datac => \ShiftRight1~39_combout\,
	datad => \Add0~8_combout\,
	combout => \ShiftRight1~40_combout\);

-- Location: LCCOMB_X25_Y20_N0
\orx~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~35_combout\ = (\Add0~4_combout\ & (\b[1]~input_o\ & ((\Add0~0_combout\) # (\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add0~4_combout\,
	datac => \b[1]~input_o\,
	datad => \Add0~2_combout\,
	combout => \orx~35_combout\);

-- Location: LCCOMB_X25_Y20_N26
\orx~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~36_combout\ = (\Add0~2_combout\ & ((\b[2]~input_o\) # ((\b[3]~input_o\ & \Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \Add0~2_combout\,
	datac => \b[3]~input_o\,
	datad => \Add0~0_combout\,
	combout => \orx~36_combout\);

-- Location: LCCOMB_X25_Y20_N28
\orx~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~37_combout\ = (\orx~35_combout\) # ((\Add0~4_combout\ & ((\b[0]~input_o\) # (\orx~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \orx~35_combout\,
	datac => \orx~36_combout\,
	datad => \Add0~4_combout\,
	combout => \orx~37_combout\);

-- Location: LCCOMB_X23_Y23_N30
\orx~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~38_combout\ = (\b[9]~input_o\ & (((\Add0~0_combout\)))) # (!\b[9]~input_o\ & ((\b[10]~input_o\) # ((\b[11]~input_o\ & \Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[10]~input_o\,
	datab => \b[11]~input_o\,
	datac => \b[9]~input_o\,
	datad => \Add0~0_combout\,
	combout => \orx~38_combout\);

-- Location: LCCOMB_X23_Y23_N24
\orx~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~39_combout\ = (\b[8]~input_o\) # ((\Add0~2_combout\ & ((\b[9]~input_o\) # (\orx~38_combout\))) # (!\Add0~2_combout\ & (\b[9]~input_o\ & \orx~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \b[8]~input_o\,
	datac => \b[9]~input_o\,
	datad => \orx~38_combout\,
	combout => \orx~39_combout\);

-- Location: LCCOMB_X23_Y23_N18
\orx~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~40_combout\ = (\b[6]~input_o\ & (((\Add0~2_combout\) # (\Add0~4_combout\)))) # (!\b[6]~input_o\ & (\orx~39_combout\ & ((\Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[6]~input_o\,
	datab => \orx~39_combout\,
	datac => \Add0~2_combout\,
	datad => \Add0~4_combout\,
	combout => \orx~40_combout\);

-- Location: LCCOMB_X23_Y23_N4
\orx~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~41_combout\ = (\Add0~6_combout\ & ((\orx~40_combout\) # (!\orx~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \orx~2_combout\,
	datab => \orx~40_combout\,
	datac => \Add0~6_combout\,
	combout => \orx~41_combout\);

-- Location: LCCOMB_X26_Y20_N30
\orx~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~42_combout\ = (\b[7]~input_o\ & (\Add0~6_combout\ & ((\Add0~4_combout\) # (\LessThan29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \LessThan29~0_combout\,
	datac => \b[7]~input_o\,
	datad => \Add0~6_combout\,
	combout => \orx~42_combout\);

-- Location: LCCOMB_X26_Y20_N0
\orx~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~43_combout\ = (\orx~42_combout\) # ((\b[5]~input_o\ & (\Add0~6_combout\ & !\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[5]~input_o\,
	datab => \Add0~6_combout\,
	datac => \orx~42_combout\,
	datad => \Equal0~1_combout\,
	combout => \orx~43_combout\);

-- Location: LCCOMB_X26_Y20_N26
\orx~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~44_combout\ = ((\b[15]~input_o\ & (\Add0~0_combout\ & \Add0~2_combout\))) # (!\orx~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[15]~input_o\,
	datab => \orx~5_combout\,
	datac => \Add0~0_combout\,
	datad => \Add0~2_combout\,
	combout => \orx~44_combout\);

-- Location: LCCOMB_X26_Y20_N28
\orx~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~45_combout\ = (\Add0~6_combout\ & (((!\ShiftRight1~10_combout\ & \b[22]~input_o\)) # (!\orx~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~10_combout\,
	datab => \Add0~6_combout\,
	datac => \b[22]~input_o\,
	datad => \orx~7_combout\,
	combout => \orx~45_combout\);

-- Location: LCCOMB_X26_Y20_N14
\orx~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~46_combout\ = (\Equal0~1_combout\ & (((\b[13]~input_o\ & \Add0~6_combout\)))) # (!\Equal0~1_combout\ & ((\b[13]~input_o\) # ((\b[21]~input_o\ & \Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \b[21]~input_o\,
	datac => \b[13]~input_o\,
	datad => \Add0~6_combout\,
	combout => \orx~46_combout\);

-- Location: LCCOMB_X26_Y20_N8
\orx~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~47_combout\ = (\b[14]~input_o\ & ((\Add0~6_combout\) # ((\Add0~4_combout\) # (\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[14]~input_o\,
	datab => \Add0~6_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~2_combout\,
	combout => \orx~47_combout\);

-- Location: LCCOMB_X26_Y20_N2
\orx~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~48_combout\ = (\Add0~6_combout\ & (\Result~16_combout\ & ((\LessThan29~0_combout\) # (\Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \LessThan29~0_combout\,
	datac => \Add0~4_combout\,
	datad => \Result~16_combout\,
	combout => \orx~48_combout\);

-- Location: LCCOMB_X26_Y20_N20
\orx~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~49_combout\ = (\Add0~4_combout\ & (\b[17]~input_o\ & ((\Add0~0_combout\) # (\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \b[17]~input_o\,
	datac => \Add0~0_combout\,
	datad => \Add0~2_combout\,
	combout => \orx~49_combout\);

-- Location: LCCOMB_X25_Y22_N28
\orx~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~50_combout\ = (\Add0~2_combout\ & ((\b[18]~input_o\) # ((\Add0~0_combout\ & \b[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \b[19]~input_o\,
	datac => \Add0~2_combout\,
	datad => \b[18]~input_o\,
	combout => \orx~50_combout\);

-- Location: LCCOMB_X26_Y20_N22
\orx~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~51_combout\ = (\Add0~4_combout\ & ((\b[15]~input_o\) # ((\b[16]~input_o\) # (\orx~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[15]~input_o\,
	datab => \b[16]~input_o\,
	datac => \Add0~4_combout\,
	datad => \orx~50_combout\,
	combout => \orx~51_combout\);

-- Location: LCCOMB_X26_Y20_N24
\orx~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~52_combout\ = (\orx~51_combout\) # ((\orx~49_combout\) # ((\orx~47_combout\) # (\orx~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \orx~51_combout\,
	datab => \orx~49_combout\,
	datac => \orx~47_combout\,
	datad => \orx~48_combout\,
	combout => \orx~52_combout\);

-- Location: LCCOMB_X26_Y20_N18
\orx~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~53_combout\ = (\orx~44_combout\) # ((\orx~52_combout\) # ((\orx~46_combout\) # (\orx~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \orx~44_combout\,
	datab => \orx~52_combout\,
	datac => \orx~46_combout\,
	datad => \orx~45_combout\,
	combout => \orx~53_combout\);

-- Location: LCCOMB_X26_Y20_N4
\orx~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~54_combout\ = (\orx~41_combout\) # ((\orx~43_combout\) # ((\orx~53_combout\ & \Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \orx~41_combout\,
	datab => \orx~43_combout\,
	datac => \orx~53_combout\,
	datad => \Add0~8_combout\,
	combout => \orx~54_combout\);

-- Location: LCCOMB_X25_Y20_N22
\orx~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~55_combout\ = (\orx~37_combout\) # ((\orx~54_combout\) # ((\b[4]~input_o\ & !\LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \orx~37_combout\,
	datac => \LessThan0~2_combout\,
	datad => \orx~54_combout\,
	combout => \orx~55_combout\);

-- Location: LCCOMB_X26_Y22_N6
\fracts~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~25_combout\ = (\fracts~16_combout\ & ((\ShiftRight0~48_combout\) # ((\ShiftRight0~34_combout\ & \Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~34_combout\,
	datab => \ShiftRight0~48_combout\,
	datac => \Add1~8_combout\,
	datad => \fracts~16_combout\,
	combout => \fracts~25_combout\);

-- Location: LCCOMB_X26_Y24_N30
\ShiftRight0~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~50_combout\ = (\Add1~2_combout\ & (\ShiftRight0~40_combout\)) # (!\Add1~2_combout\ & ((\ShiftRight0~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~40_combout\,
	datab => \Add1~2_combout\,
	datad => \ShiftRight0~43_combout\,
	combout => \ShiftRight0~50_combout\);

-- Location: LCCOMB_X26_Y24_N0
\ShiftRight0~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~51_combout\ = (\Add1~2_combout\ & (\ShiftRight0~44_combout\)) # (!\Add1~2_combout\ & (((\a[0]~input_o\ & \Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~44_combout\,
	datab => \Add1~2_combout\,
	datac => \a[0]~input_o\,
	datad => \Add0~0_combout\,
	combout => \ShiftRight0~51_combout\);

-- Location: LCCOMB_X26_Y24_N26
\ShiftRight0~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~52_combout\ = (!\Add1~6_combout\ & ((\Add1~4_combout\ & (\ShiftRight0~50_combout\)) # (!\Add1~4_combout\ & ((\ShiftRight0~51_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~50_combout\,
	datab => \ShiftRight0~51_combout\,
	datac => \Add1~4_combout\,
	datad => \Add1~6_combout\,
	combout => \ShiftRight0~52_combout\);

-- Location: LCCOMB_X26_Y23_N16
\ShiftRight0~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~56_combout\ = (!\Add1~8_combout\ & ((\ShiftRight0~52_combout\) # ((\ShiftRight0~55_combout\ & \Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \ShiftRight0~55_combout\,
	datac => \Add1~6_combout\,
	datad => \ShiftRight0~52_combout\,
	combout => \ShiftRight0~56_combout\);

-- Location: LCCOMB_X26_Y22_N10
\fracts~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~27_combout\ = (\fracts~16_combout\ & ((\ShiftRight0~56_combout\) # ((\Add1~8_combout\ & \ShiftRight0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~56_combout\,
	datab => \fracts~16_combout\,
	datac => \Add1~8_combout\,
	datad => \ShiftRight0~60_combout\,
	combout => \fracts~27_combout\);

-- Location: LCCOMB_X24_Y19_N10
\ShiftRight1~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~43_combout\ = (\Add0~2_combout\ & ((\ShiftRight1~30_combout\))) # (!\Add0~2_combout\ & (\ShiftRight1~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~32_combout\,
	datac => \ShiftRight1~30_combout\,
	datad => \Add0~2_combout\,
	combout => \ShiftRight1~43_combout\);

-- Location: LCCOMB_X24_Y19_N22
\ShiftRight1~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~46_combout\ = (\Add0~2_combout\ & ((\ShiftRight1~33_combout\))) # (!\Add0~2_combout\ & (\ShiftRight1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~22_combout\,
	datab => \ShiftRight1~33_combout\,
	datad => \Add0~2_combout\,
	combout => \ShiftRight1~46_combout\);

-- Location: LCCOMB_X25_Y20_N24
\ShiftRight1~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~48_combout\ = (\Add0~2_combout\ & (\ShiftRight1~26_combout\)) # (!\Add0~2_combout\ & ((\ShiftRight1~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~26_combout\,
	datac => \ShiftRight1~36_combout\,
	datad => \Add0~2_combout\,
	combout => \ShiftRight1~48_combout\);

-- Location: LCCOMB_X25_Y20_N2
\fracts~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~29_combout\ = (\Add0~0_combout\ & ((\Add0~2_combout\ & ((\b[2]~input_o\))) # (!\Add0~2_combout\ & (\b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \Add0~2_combout\,
	datac => \Add0~0_combout\,
	datad => \b[2]~input_o\,
	combout => \fracts~29_combout\);

-- Location: LCCOMB_X25_Y20_N12
\fracts~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~30_combout\ = (\fracts~29_combout\) # ((!\Add0~0_combout\ & (\Add0~2_combout\ & \b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add0~2_combout\,
	datac => \b[1]~input_o\,
	datad => \fracts~29_combout\,
	combout => \fracts~30_combout\);

-- Location: LCCOMB_X25_Y20_N6
\fracts~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~31_combout\ = (!\Add0~6_combout\ & ((\Add0~4_combout\ & ((\ShiftRight1~48_combout\))) # (!\Add0~4_combout\ & (\fracts~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~30_combout\,
	datab => \ShiftRight1~48_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~4_combout\,
	combout => \fracts~31_combout\);

-- Location: LCCOMB_X23_Y23_N14
\ShiftRight1~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~55_combout\ = (\Add0~2_combout\ & ((\ShiftRight1~1_combout\))) # (!\Add0~2_combout\ & (\ShiftRight1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~3_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftRight1~1_combout\,
	combout => \ShiftRight1~55_combout\);

-- Location: LCCOMB_X27_Y23_N24
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\Add0~0_combout\ & ((\Result~12_combout\) # ((\Result~13_combout\)))) # (!\Add0~0_combout\ & (((\a[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result~12_combout\,
	datab => \a[22]~input_o\,
	datac => \Add0~0_combout\,
	datad => \Result~13_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X28_Y24_N14
\ShiftRight0~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~61_combout\ = (\Add1~2_combout\ & (\Mux0~0_combout\)) # (!\Add1~2_combout\ & ((\ShiftRight0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datac => \Mux0~0_combout\,
	datad => \ShiftRight0~16_combout\,
	combout => \ShiftRight0~61_combout\);

-- Location: LCCOMB_X27_Y21_N10
\ShiftRight0~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~67_combout\ = (!\Add1~6_combout\ & ((\Add1~2_combout\ & ((\ShiftRight0~11_combout\))) # (!\Add1~2_combout\ & (\ShiftRight0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~13_combout\,
	datab => \Add1~6_combout\,
	datac => \ShiftRight0~11_combout\,
	datad => \Add1~2_combout\,
	combout => \ShiftRight0~67_combout\);

-- Location: LCCOMB_X24_Y21_N12
\ShiftRight0~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~69_combout\ = (!\Add1~4_combout\ & ((\ShiftRight0~67_combout\) # ((\Add1~6_combout\ & \ShiftRight0~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~67_combout\,
	datab => \Add1~4_combout\,
	datac => \Add1~6_combout\,
	datad => \ShiftRight0~68_combout\,
	combout => \ShiftRight0~69_combout\);

-- Location: LCCOMB_X27_Y24_N30
\fractc~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fractc~5_combout\ = (\fractc~4_combout\ & (\b[0]~input_o\)) # (!\fractc~4_combout\ & ((\a[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datac => \a[0]~input_o\,
	datad => \fractc~4_combout\,
	combout => \fractc~5_combout\);

-- Location: LCCOMB_X25_Y21_N14
\fracts~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~46_combout\ = (\fractc~4_combout\ & (((\fracts~42_combout\ & \ShiftRight0~24_combout\)))) # (!\fractc~4_combout\ & ((\fracts~164_combout\) # ((!\fracts~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~164_combout\,
	datab => \fractc~4_combout\,
	datac => \fracts~42_combout\,
	datad => \ShiftRight0~24_combout\,
	combout => \fracts~46_combout\);

-- Location: LCCOMB_X27_Y18_N24
\fracts~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~47_combout\ = (\fracts~46_combout\ & ((\b[14]~input_o\) # ((!\Equal0~2_combout\)))) # (!\fracts~46_combout\ & (((\a[14]~input_o\ & \Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~46_combout\,
	datab => \b[14]~input_o\,
	datac => \a[14]~input_o\,
	datad => \Equal0~2_combout\,
	combout => \fracts~47_combout\);

-- Location: LCCOMB_X27_Y18_N26
\fracts~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~48_combout\ = (!\LessThan0~3_combout\ & \fracts~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~3_combout\,
	datad => \fracts~47_combout\,
	combout => \fracts~48_combout\);

-- Location: LCCOMB_X23_Y21_N24
\fracts~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~49_combout\ = (!\fracts~41_combout\ & ((\Add0~6_combout\ & ((\ShiftRight1~21_combout\))) # (!\Add0~6_combout\ & (\ShiftRight1~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~35_combout\,
	datab => \ShiftRight1~21_combout\,
	datac => \fracts~41_combout\,
	datad => \Add0~6_combout\,
	combout => \fracts~49_combout\);

-- Location: LCCOMB_X23_Y22_N14
\ShiftRight1~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~58_combout\ = (\Add0~4_combout\ & ((\ShiftRight1~52_combout\))) # (!\Add0~4_combout\ & (\ShiftRight1~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~54_combout\,
	datac => \Add0~4_combout\,
	datad => \ShiftRight1~52_combout\,
	combout => \ShiftRight1~58_combout\);

-- Location: LCCOMB_X25_Y23_N8
\fracts~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~54_combout\ = (\Equal0~2_combout\ & ((\b[12]~input_o\) # ((\fracts~53_combout\)))) # (!\Equal0~2_combout\ & (((\ShiftRight1~58_combout\ & !\fracts~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \b[12]~input_o\,
	datac => \ShiftRight1~58_combout\,
	datad => \fracts~53_combout\,
	combout => \fracts~54_combout\);

-- Location: LCCOMB_X25_Y23_N18
\fracts~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~55_combout\ = (\fracts~53_combout\ & ((\fracts~54_combout\ & (\a[12]~input_o\)) # (!\fracts~54_combout\ & ((\ShiftRight1~57_combout\))))) # (!\fracts~53_combout\ & (((\fracts~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[12]~input_o\,
	datab => \fracts~53_combout\,
	datac => \fracts~54_combout\,
	datad => \ShiftRight1~57_combout\,
	combout => \fracts~55_combout\);

-- Location: LCCOMB_X24_Y21_N26
\fracts~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~56_combout\ = (\Add1~6_combout\ & (\ShiftRight0~61_combout\ & ((!\Add1~4_combout\)))) # (!\Add1~6_combout\ & (((\ShiftRight0~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~61_combout\,
	datab => \ShiftRight0~71_combout\,
	datac => \Add1~6_combout\,
	datad => \Add1~4_combout\,
	combout => \fracts~56_combout\);

-- Location: LCCOMB_X24_Y21_N28
\fracts~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~58_combout\ = (!\LessThan0~3_combout\ & ((\fracts~165_combout\) # ((\fracts~56_combout\ & \fracts~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \fracts~165_combout\,
	datac => \fracts~56_combout\,
	datad => \fracts~57_combout\,
	combout => \fracts~58_combout\);

-- Location: LCCOMB_X26_Y23_N18
\fracts~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~59_combout\ = (\Add1~6_combout\ & ((\Add1~4_combout\ & (\ShiftRight0~82_combout\)) # (!\Add1~4_combout\ & ((\ShiftRight0~57_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Add1~4_combout\,
	datac => \ShiftRight0~82_combout\,
	datad => \ShiftRight0~57_combout\,
	combout => \fracts~59_combout\);

-- Location: LCCOMB_X26_Y23_N12
\ShiftRight0~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~72_combout\ = (\Add1~4_combout\ & ((\ShiftRight0~58_combout\))) # (!\Add1~4_combout\ & (\ShiftRight0~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~53_combout\,
	datac => \Add1~4_combout\,
	datad => \ShiftRight0~58_combout\,
	combout => \ShiftRight0~72_combout\);

-- Location: LCCOMB_X26_Y23_N30
\fracts~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~60_combout\ = (\fracts~57_combout\ & ((\fracts~59_combout\) # ((\ShiftRight0~72_combout\ & !\Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~72_combout\,
	datab => \fracts~59_combout\,
	datac => \Add1~6_combout\,
	datad => \fracts~57_combout\,
	combout => \fracts~60_combout\);

-- Location: LCCOMB_X23_Y22_N0
\fracts~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~61_combout\ = (!\Add0~16_combout\ & (!\Add0~8_combout\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~16_combout\,
	datac => \Add0~8_combout\,
	datad => \Equal0~0_combout\,
	combout => \fracts~61_combout\);

-- Location: LCCOMB_X24_Y19_N14
\ShiftRight1~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~60_combout\ = (\Add0~4_combout\ & ((\ShiftRight1~43_combout\))) # (!\Add0~4_combout\ & (\ShiftRight1~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~46_combout\,
	datac => \Add0~4_combout\,
	datad => \ShiftRight1~43_combout\,
	combout => \ShiftRight1~60_combout\);

-- Location: LCCOMB_X25_Y23_N20
\fracts~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~62_combout\ = (\fracts~53_combout\ & (((\Equal0~2_combout\)))) # (!\fracts~53_combout\ & ((\Equal0~2_combout\ & ((\b[11]~input_o\))) # (!\Equal0~2_combout\ & (\ShiftRight1~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~60_combout\,
	datab => \fracts~53_combout\,
	datac => \b[11]~input_o\,
	datad => \Equal0~2_combout\,
	combout => \fracts~62_combout\);

-- Location: LCCOMB_X25_Y23_N30
\fracts~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~63_combout\ = (\fracts~53_combout\ & ((\fracts~62_combout\ & ((\a[11]~input_o\))) # (!\fracts~62_combout\ & (\ShiftRight1~59_combout\)))) # (!\fracts~53_combout\ & (((\fracts~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~59_combout\,
	datab => \fracts~53_combout\,
	datac => \a[11]~input_o\,
	datad => \fracts~62_combout\,
	combout => \fracts~63_combout\);

-- Location: LCCOMB_X23_Y22_N18
\fracts~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~64_combout\ = (!\LessThan0~3_combout\ & ((\fracts~60_combout\) # ((\fracts~63_combout\ & \fracts~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~63_combout\,
	datab => \fracts~61_combout\,
	datac => \fracts~60_combout\,
	datad => \LessThan0~3_combout\,
	combout => \fracts~64_combout\);

-- Location: LCCOMB_X28_Y24_N22
\fracts~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~65_combout\ = (\Add1~6_combout\ & ((\Add1~4_combout\ & (\ShiftRight0~23_combout\)) # (!\Add1~4_combout\ & ((\ShiftRight0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~23_combout\,
	datab => \Add1~4_combout\,
	datac => \Add1~6_combout\,
	datad => \ShiftRight0~18_combout\,
	combout => \fracts~65_combout\);

-- Location: LCCOMB_X28_Y24_N26
\fracts~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~66_combout\ = (\fracts~57_combout\ & ((\fracts~65_combout\) # ((!\Add1~6_combout\ & \ShiftRight0~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~65_combout\,
	datab => \Add1~6_combout\,
	datac => \fracts~57_combout\,
	datad => \ShiftRight0~73_combout\,
	combout => \fracts~66_combout\);

-- Location: LCCOMB_X25_Y23_N10
\fracts~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~67_combout\ = (\fracts~53_combout\ & (((\Equal0~2_combout\)))) # (!\fracts~53_combout\ & ((\Equal0~2_combout\ & ((\b[10]~input_o\))) # (!\Equal0~2_combout\ & (\ShiftRight1~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~62_combout\,
	datab => \fracts~53_combout\,
	datac => \b[10]~input_o\,
	datad => \Equal0~2_combout\,
	combout => \fracts~67_combout\);

-- Location: LCCOMB_X25_Y23_N12
\fracts~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~68_combout\ = (\fracts~67_combout\ & (((\a[10]~input_o\)) # (!\fracts~53_combout\))) # (!\fracts~67_combout\ & (\fracts~53_combout\ & (\ShiftRight1~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~67_combout\,
	datab => \fracts~53_combout\,
	datac => \ShiftRight1~61_combout\,
	datad => \a[10]~input_o\,
	combout => \fracts~68_combout\);

-- Location: LCCOMB_X25_Y23_N6
\fracts~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~69_combout\ = (!\LessThan0~3_combout\ & ((\fracts~66_combout\) # ((\fracts~68_combout\ & \fracts~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~68_combout\,
	datab => \fracts~61_combout\,
	datac => \fracts~66_combout\,
	datad => \LessThan0~3_combout\,
	combout => \fracts~69_combout\);

-- Location: LCCOMB_X24_Y20_N4
\ShiftRight1~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~65_combout\ = (\Add0~4_combout\ & ((\ShiftRight1~34_combout\))) # (!\Add0~4_combout\ & (\ShiftRight1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~24_combout\,
	datac => \ShiftRight1~34_combout\,
	datad => \Add0~4_combout\,
	combout => \ShiftRight1~65_combout\);

-- Location: LCCOMB_X25_Y19_N2
\fractc~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fractc~12_combout\ = (\fractc~4_combout\ & (\b[9]~input_o\)) # (!\fractc~4_combout\ & ((\a[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[9]~input_o\,
	datab => \fractc~4_combout\,
	datac => \a[9]~input_o\,
	combout => \fractc~12_combout\);

-- Location: LCCOMB_X24_Y21_N14
\fracts~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~75_combout\ = (\Add1~4_combout\ & ((\Add1~6_combout\ & ((\ShiftRight0~61_combout\))) # (!\Add1~6_combout\ & (\ShiftRight0~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~64_combout\,
	datab => \Add1~4_combout\,
	datac => \Add1~6_combout\,
	datad => \ShiftRight0~61_combout\,
	combout => \fracts~75_combout\);

-- Location: LCCOMB_X24_Y21_N16
\fracts~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~76_combout\ = (!\Add1~4_combout\ & ((\Add1~6_combout\ & (\ShiftRight0~62_combout\)) # (!\Add1~6_combout\ & ((\ShiftRight0~68_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~62_combout\,
	datab => \Add1~4_combout\,
	datac => \Add1~6_combout\,
	datad => \ShiftRight0~68_combout\,
	combout => \fracts~76_combout\);

-- Location: LCCOMB_X24_Y21_N10
\fracts~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~77_combout\ = (\fracts~57_combout\ & ((\fracts~75_combout\) # (\fracts~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fracts~57_combout\,
	datac => \fracts~75_combout\,
	datad => \fracts~76_combout\,
	combout => \fracts~77_combout\);

-- Location: LCCOMB_X23_Y22_N28
\fracts~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~78_combout\ = (\Equal0~2_combout\ & (((\b[8]~input_o\) # (\fracts~53_combout\)))) # (!\Equal0~2_combout\ & (\ShiftRight1~56_combout\ & ((!\fracts~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~56_combout\,
	datab => \Equal0~2_combout\,
	datac => \b[8]~input_o\,
	datad => \fracts~53_combout\,
	combout => \fracts~78_combout\);

-- Location: LCCOMB_X23_Y22_N30
\fracts~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~79_combout\ = (\fracts~78_combout\ & ((\a[8]~input_o\) # ((!\fracts~53_combout\)))) # (!\fracts~78_combout\ & (((\ShiftRight1~53_combout\ & \fracts~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[8]~input_o\,
	datab => \ShiftRight1~53_combout\,
	datac => \fracts~78_combout\,
	datad => \fracts~53_combout\,
	combout => \fracts~79_combout\);

-- Location: LCCOMB_X23_Y22_N8
\fracts~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~80_combout\ = (!\LessThan0~3_combout\ & ((\fracts~77_combout\) # ((\fracts~61_combout\ & \fracts~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~77_combout\,
	datab => \fracts~61_combout\,
	datac => \fracts~79_combout\,
	datad => \LessThan0~3_combout\,
	combout => \fracts~80_combout\);

-- Location: LCCOMB_X24_Y19_N26
\ShiftRight1~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~66_combout\ = (\Add0~4_combout\ & (\ShiftRight1~46_combout\)) # (!\Add0~4_combout\ & ((\ShiftRight1~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~46_combout\,
	datab => \Add0~4_combout\,
	datac => \ShiftRight1~47_combout\,
	combout => \ShiftRight1~66_combout\);

-- Location: LCCOMB_X24_Y19_N20
\ShiftRight1~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~67_combout\ = (!\Add0~2_combout\ & (!\Add0~6_combout\ & (!\Add0~4_combout\ & \ShiftRight1~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add0~6_combout\,
	datac => \Add0~4_combout\,
	datad => \ShiftRight1~19_combout\,
	combout => \ShiftRight1~67_combout\);

-- Location: LCCOMB_X23_Y21_N20
\fracts~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~81_combout\ = (\Equal0~2_combout\) # ((!\fracts~41_combout\ & \Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => \fracts~41_combout\,
	datad => \Add0~6_combout\,
	combout => \fracts~81_combout\);

-- Location: LCCOMB_X23_Y21_N6
\fracts~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~82_combout\ = (\fracts~166_combout\ & ((\fracts~81_combout\) # ((\Equal0~0_combout\ & \fracts~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~166_combout\,
	datab => \fracts~81_combout\,
	datac => \Equal0~0_combout\,
	datad => \fracts~18_combout\,
	combout => \fracts~82_combout\);

-- Location: LCCOMB_X23_Y21_N8
\fracts~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~83_combout\ = (\fracts~81_combout\ & ((\b[7]~input_o\) # ((!\fracts~82_combout\)))) # (!\fracts~81_combout\ & (((\ShiftRight1~67_combout\ & \fracts~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datab => \fracts~81_combout\,
	datac => \ShiftRight1~67_combout\,
	datad => \fracts~82_combout\,
	combout => \fracts~83_combout\);

-- Location: LCCOMB_X26_Y21_N22
\fracts~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~84_combout\ = (\fracts~83_combout\ & ((\fracts~166_combout\) # ((\ShiftRight1~44_combout\)))) # (!\fracts~83_combout\ & (!\fracts~166_combout\ & ((\ShiftRight1~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~83_combout\,
	datab => \fracts~166_combout\,
	datac => \ShiftRight1~44_combout\,
	datad => \ShiftRight1~66_combout\,
	combout => \fracts~84_combout\);

-- Location: LCCOMB_X26_Y21_N16
\fracts~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~85_combout\ = ((\ShiftRight0~2_combout\ & \Add1~8_combout\)) # (!\Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~2_combout\,
	datab => \Add0~16_combout\,
	datac => \Add1~8_combout\,
	combout => \fracts~85_combout\);

-- Location: LCCOMB_X26_Y21_N2
\fracts~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~86_combout\ = (\Add0~16_combout\ & ((\Add1~6_combout\) # ((\Add1~8_combout\) # (!\ShiftRight0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Add0~16_combout\,
	datac => \Add1~8_combout\,
	datad => \ShiftRight0~2_combout\,
	combout => \fracts~86_combout\);

-- Location: LCCOMB_X26_Y21_N12
\fracts~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~87_combout\ = (\fracts~85_combout\ & ((\fracts~86_combout\ & ((\ShiftRight0~75_combout\))) # (!\fracts~86_combout\ & (\fracts~84_combout\)))) # (!\fracts~85_combout\ & (!\fracts~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~85_combout\,
	datab => \fracts~86_combout\,
	datac => \fracts~84_combout\,
	datad => \ShiftRight0~75_combout\,
	combout => \fracts~87_combout\);

-- Location: LCCOMB_X26_Y21_N14
\ShiftRight0~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~76_combout\ = (!\Add1~4_combout\ & (\Mux0~0_combout\ & (!\Add1~6_combout\ & !\Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Mux0~0_combout\,
	datac => \Add1~6_combout\,
	datad => \Add1~2_combout\,
	combout => \ShiftRight0~76_combout\);

-- Location: LCCOMB_X24_Y22_N26
\ShiftRight1~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~68_combout\ = (!\Add0~2_combout\ & (!\Add0~6_combout\ & (\Mux1~0_combout\ & !\Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add0~6_combout\,
	datac => \Mux1~0_combout\,
	datad => \Add0~4_combout\,
	combout => \ShiftRight1~68_combout\);

-- Location: LCCOMB_X23_Y21_N26
\fracts~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~90_combout\ = (\fracts~81_combout\ & ((\b[6]~input_o\) # ((!\fracts~82_combout\)))) # (!\fracts~81_combout\ & (((\ShiftRight1~68_combout\ & \fracts~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[6]~input_o\,
	datab => \fracts~81_combout\,
	datac => \ShiftRight1~68_combout\,
	datad => \fracts~82_combout\,
	combout => \fracts~90_combout\);

-- Location: LCCOMB_X26_Y21_N8
\fracts~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~91_combout\ = (\fracts~166_combout\ & (((\fracts~90_combout\)))) # (!\fracts~166_combout\ & ((\fracts~90_combout\ & ((\ShiftRight1~17_combout\))) # (!\fracts~90_combout\ & (\ShiftRight1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~6_combout\,
	datab => \fracts~166_combout\,
	datac => \ShiftRight1~17_combout\,
	datad => \fracts~90_combout\,
	combout => \fracts~91_combout\);

-- Location: LCCOMB_X26_Y21_N18
\fracts~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~92_combout\ = (\fracts~85_combout\ & ((\fracts~86_combout\ & ((\ShiftRight0~76_combout\))) # (!\fracts~86_combout\ & (\fracts~91_combout\)))) # (!\fracts~85_combout\ & (((!\fracts~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~85_combout\,
	datab => \fracts~91_combout\,
	datac => \ShiftRight0~76_combout\,
	datad => \fracts~86_combout\,
	combout => \fracts~92_combout\);

-- Location: LCCOMB_X26_Y21_N20
\fracts~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~93_combout\ = (\fracts~57_combout\ & ((\fracts~92_combout\ & ((\ShiftRight0~9_combout\))) # (!\fracts~92_combout\ & (\ShiftRight0~22_combout\)))) # (!\fracts~57_combout\ & (\fracts~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~57_combout\,
	datab => \fracts~92_combout\,
	datac => \ShiftRight0~22_combout\,
	datad => \ShiftRight0~9_combout\,
	combout => \fracts~93_combout\);

-- Location: LCCOMB_X27_Y20_N30
\fractc~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fractc~16_combout\ = (\fractc~4_combout\ & (\b[6]~input_o\)) # (!\fractc~4_combout\ & ((\a[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[6]~input_o\,
	datab => \a[6]~input_o\,
	datad => \fractc~4_combout\,
	combout => \fractc~16_combout\);

-- Location: LCCOMB_X25_Y24_N28
\ShiftRight0~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~77_combout\ = (!\Add1~4_combout\ & (!\Add1~6_combout\ & \ShiftRight0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Add1~6_combout\,
	datac => \ShiftRight0~33_combout\,
	combout => \ShiftRight0~77_combout\);

-- Location: LCCOMB_X23_Y21_N28
\ShiftRight1~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~69_combout\ = (\ShiftRight1~63_combout\ & (!\Add0~4_combout\ & !\Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~63_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~6_combout\,
	combout => \ShiftRight1~69_combout\);

-- Location: LCCOMB_X23_Y21_N22
\fracts~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~95_combout\ = (\fracts~82_combout\ & ((\fracts~81_combout\ & ((\b[5]~input_o\))) # (!\fracts~81_combout\ & (\ShiftRight1~69_combout\)))) # (!\fracts~82_combout\ & (((\fracts~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~82_combout\,
	datab => \ShiftRight1~69_combout\,
	datac => \b[5]~input_o\,
	datad => \fracts~81_combout\,
	combout => \fracts~95_combout\);

-- Location: LCCOMB_X23_Y21_N16
\fracts~96\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~96_combout\ = (\fracts~166_combout\ & (((\fracts~95_combout\)))) # (!\fracts~166_combout\ & ((\fracts~95_combout\ & ((\ShiftRight1~35_combout\))) # (!\fracts~95_combout\ & (\ShiftRight1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~166_combout\,
	datab => \ShiftRight1~28_combout\,
	datac => \fracts~95_combout\,
	datad => \ShiftRight1~35_combout\,
	combout => \fracts~96_combout\);

-- Location: LCCOMB_X25_Y24_N30
\fracts~97\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~97_combout\ = (\fracts~86_combout\ & (\ShiftRight0~77_combout\ & ((\fracts~85_combout\)))) # (!\fracts~86_combout\ & (((\fracts~96_combout\) # (!\fracts~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~86_combout\,
	datab => \ShiftRight0~77_combout\,
	datac => \fracts~96_combout\,
	datad => \fracts~85_combout\,
	combout => \fracts~97_combout\);

-- Location: LCCOMB_X25_Y19_N6
\fractc~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fractc~17_combout\ = (\fractc~4_combout\ & ((\b[5]~input_o\))) # (!\fractc~4_combout\ & (\a[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[5]~input_o\,
	datac => \b[5]~input_o\,
	datad => \fractc~4_combout\,
	combout => \fractc~17_combout\);

-- Location: LCCOMB_X24_Y21_N0
\ShiftRight0~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~78_combout\ = (!\Add1~4_combout\ & (!\Add1~6_combout\ & \ShiftRight0~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~4_combout\,
	datac => \Add1~6_combout\,
	datad => \ShiftRight0~61_combout\,
	combout => \ShiftRight0~78_combout\);

-- Location: LCCOMB_X24_Y20_N24
\fracts~104\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~104_combout\ = (\LessThan0~2_combout\ & (!\fracts~103_combout\ & (\ShiftRight1~50_combout\))) # (!\LessThan0~2_combout\ & ((\fracts~103_combout\) # ((\ShiftRight1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \fracts~103_combout\,
	datac => \ShiftRight1~50_combout\,
	datad => \ShiftRight1~58_combout\,
	combout => \fracts~104_combout\);

-- Location: LCCOMB_X24_Y20_N26
\ShiftRight1~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~70_combout\ = (\ShiftRight1~57_combout\ & !\Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftRight1~57_combout\,
	datad => \Add0~6_combout\,
	combout => \ShiftRight1~70_combout\);

-- Location: LCCOMB_X24_Y20_N28
\fracts~105\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~105_combout\ = (\fracts~103_combout\ & ((\fracts~104_combout\ & ((\ShiftRight1~70_combout\))) # (!\fracts~104_combout\ & (\ShiftRight1~55_combout\)))) # (!\fracts~103_combout\ & (((\fracts~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~55_combout\,
	datab => \fracts~103_combout\,
	datac => \ShiftRight1~70_combout\,
	datad => \fracts~104_combout\,
	combout => \fracts~105_combout\);

-- Location: LCCOMB_X26_Y19_N0
\fractc~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fractc~18_combout\ = (\fractc~4_combout\ & (\b[4]~input_o\)) # (!\fractc~4_combout\ & ((\a[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datac => \a[4]~input_o\,
	datad => \fractc~4_combout\,
	combout => \fractc~18_combout\);

-- Location: LCCOMB_X26_Y23_N26
\fracts~110\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~110_combout\ = (\fracts~100_combout\ & ((\ShiftRight0~54_combout\) # ((\fracts~24_combout\)))) # (!\fracts~100_combout\ & (((\ShiftRight0~50_combout\ & !\fracts~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~54_combout\,
	datab => \fracts~100_combout\,
	datac => \ShiftRight0~50_combout\,
	datad => \fracts~24_combout\,
	combout => \fracts~110_combout\);

-- Location: LCCOMB_X26_Y23_N28
\ShiftRight0~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~79_combout\ = (!\Add1~6_combout\ & ((\Add1~4_combout\ & (\ShiftRight0~82_combout\)) # (!\Add1~4_combout\ & ((\ShiftRight0~57_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Add1~4_combout\,
	datac => \ShiftRight0~82_combout\,
	datad => \ShiftRight0~57_combout\,
	combout => \ShiftRight0~79_combout\);

-- Location: LCCOMB_X26_Y23_N6
\fracts~111\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~111_combout\ = (\fracts~24_combout\ & ((\fracts~110_combout\ & ((\ShiftRight0~79_combout\))) # (!\fracts~110_combout\ & (\ShiftRight0~72_combout\)))) # (!\fracts~24_combout\ & (((\fracts~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~72_combout\,
	datab => \fracts~24_combout\,
	datac => \fracts~110_combout\,
	datad => \ShiftRight0~79_combout\,
	combout => \fracts~111_combout\);

-- Location: LCCOMB_X24_Y20_N6
\fracts~112\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~112_combout\ = (\LessThan0~2_combout\ & ((\fracts~103_combout\ & (\ShiftRight1~47_combout\)) # (!\fracts~103_combout\ & ((\ShiftRight1~48_combout\))))) # (!\LessThan0~2_combout\ & (\fracts~103_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \fracts~103_combout\,
	datac => \ShiftRight1~47_combout\,
	datad => \ShiftRight1~48_combout\,
	combout => \fracts~112_combout\);

-- Location: LCCOMB_X24_Y20_N16
\ShiftRight1~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~71_combout\ = (\ShiftRight1~59_combout\ & !\Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftRight1~59_combout\,
	datad => \Add0~6_combout\,
	combout => \ShiftRight1~71_combout\);

-- Location: LCCOMB_X24_Y20_N2
\fracts~113\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~113_combout\ = (\LessThan0~2_combout\ & (((\fracts~112_combout\)))) # (!\LessThan0~2_combout\ & ((\fracts~112_combout\ & (\ShiftRight1~71_combout\)) # (!\fracts~112_combout\ & ((\ShiftRight1~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \ShiftRight1~71_combout\,
	datac => \ShiftRight1~60_combout\,
	datad => \fracts~112_combout\,
	combout => \fracts~113_combout\);

-- Location: LCCOMB_X26_Y19_N2
\fracts~114\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~114_combout\ = (\fracts~106_combout\ & ((\fractc~4_combout\ & ((\fracts~111_combout\))) # (!\fractc~4_combout\ & (\fracts~168_combout\)))) # (!\fracts~106_combout\ & (((!\fractc~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~168_combout\,
	datab => \fracts~106_combout\,
	datac => \fracts~111_combout\,
	datad => \fractc~4_combout\,
	combout => \fracts~114_combout\);

-- Location: LCCOMB_X26_Y19_N28
\fracts~115\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~115_combout\ = (\Equal0~2_combout\ & ((\fracts~114_combout\ & (\b[3]~input_o\)) # (!\fracts~114_combout\ & ((\a[3]~input_o\))))) # (!\Equal0~2_combout\ & (((\fracts~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \b[3]~input_o\,
	datac => \a[3]~input_o\,
	datad => \fracts~114_combout\,
	combout => \fracts~115_combout\);

-- Location: LCCOMB_X26_Y19_N30
\fracts~116\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~116_combout\ = (!\LessThan0~3_combout\ & \fracts~115_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~3_combout\,
	datad => \fracts~115_combout\,
	combout => \fracts~116_combout\);

-- Location: LCCOMB_X24_Y20_N22
\ShiftRight1~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~72_combout\ = (\ShiftRight1~61_combout\ & !\Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftRight1~61_combout\,
	datad => \Add0~6_combout\,
	combout => \ShiftRight1~72_combout\);

-- Location: LCCOMB_X26_Y19_N24
\fractc~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fractc~20_combout\ = (\fractc~4_combout\ & ((\b[2]~input_o\))) # (!\fractc~4_combout\ & (\a[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datac => \b[2]~input_o\,
	datad => \fractc~4_combout\,
	combout => \fractc~20_combout\);

-- Location: LCCOMB_X25_Y24_N26
\fracts~124\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~124_combout\ = (\fracts~24_combout\ & (\fracts~100_combout\)) # (!\fracts~24_combout\ & ((\fracts~100_combout\ & ((\ShiftRight0~41_combout\))) # (!\fracts~100_combout\ & (\ShiftRight0~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~24_combout\,
	datab => \fracts~100_combout\,
	datac => \ShiftRight0~45_combout\,
	datad => \ShiftRight0~41_combout\,
	combout => \fracts~124_combout\);

-- Location: LCCOMB_X25_Y24_N14
\fracts~125\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~125_combout\ = (\fracts~124_combout\ & (((\ShiftRight0~81_combout\) # (!\fracts~24_combout\)))) # (!\fracts~124_combout\ & (\ShiftRight0~74_combout\ & ((\fracts~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~124_combout\,
	datab => \ShiftRight0~74_combout\,
	datac => \ShiftRight0~81_combout\,
	datad => \fracts~24_combout\,
	combout => \fracts~125_combout\);

-- Location: LCCOMB_X24_Y20_N18
\fracts~126\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~126_combout\ = (\LessThan0~2_combout\ & ((\fracts~103_combout\ & ((\ShiftRight1~27_combout\))) # (!\fracts~103_combout\ & (\ShiftRight1~38_combout\)))) # (!\LessThan0~2_combout\ & (((\fracts~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \ShiftRight1~38_combout\,
	datac => \fracts~103_combout\,
	datad => \ShiftRight1~27_combout\,
	combout => \fracts~126_combout\);

-- Location: LCCOMB_X24_Y20_N12
\ShiftRight1~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~73_combout\ = (!\Add0~6_combout\ & ((\Add0~4_combout\ & (\ShiftRight1~63_combout\)) # (!\Add0~4_combout\ & ((\ShiftRight1~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~63_combout\,
	datab => \Add0~6_combout\,
	datac => \ShiftRight1~31_combout\,
	datad => \Add0~4_combout\,
	combout => \ShiftRight1~73_combout\);

-- Location: LCCOMB_X24_Y20_N30
\fracts~127\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~127_combout\ = (\LessThan0~2_combout\ & (\fracts~126_combout\)) # (!\LessThan0~2_combout\ & ((\fracts~126_combout\ & ((\ShiftRight1~73_combout\))) # (!\fracts~126_combout\ & (\ShiftRight1~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \fracts~126_combout\,
	datac => \ShiftRight1~65_combout\,
	datad => \ShiftRight1~73_combout\,
	combout => \fracts~127_combout\);

-- Location: LCCOMB_X32_Y16_N8
\find_leftmost~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~0_combout\ = (!\Add2~101_combout\ & (!\Add2~100_combout\ & !\Add2~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~101_combout\,
	datac => \Add2~100_combout\,
	datad => \Add2~102_combout\,
	combout => \find_leftmost~0_combout\);

-- Location: LCCOMB_X23_Y22_N12
\fracts~139\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~139_combout\ = (!\Add0~6_combout\ & (!\fracts~41_combout\ & \ShiftRight1~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \fracts~41_combout\,
	datad => \ShiftRight1~53_combout\,
	combout => \fracts~139_combout\);

-- Location: LCCOMB_X27_Y22_N30
\fractc~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fractc~25_combout\ = (\fractc~4_combout\ & ((\b[19]~input_o\))) # (!\fractc~4_combout\ & (\a[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[19]~input_o\,
	datac => \fractc~4_combout\,
	datad => \b[19]~input_o\,
	combout => \fractc~25_combout\);

-- Location: LCCOMB_X24_Y22_N22
\fracts~155\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~155_combout\ = (!\fracts~41_combout\ & (\ShiftRight1~10_combout\ & (\Mux1~0_combout\ & !\Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~41_combout\,
	datab => \ShiftRight1~10_combout\,
	datac => \Mux1~0_combout\,
	datad => \Add0~6_combout\,
	combout => \fracts~155_combout\);

-- Location: LCCOMB_X28_Y22_N20
\fracts~156\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~156_combout\ = (\fracts~42_combout\ & ((\fractc~4_combout\ & (\ShiftRight0~76_combout\)) # (!\fractc~4_combout\ & ((\fracts~155_combout\))))) # (!\fracts~42_combout\ & (((!\fractc~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~76_combout\,
	datab => \fracts~155_combout\,
	datac => \fracts~42_combout\,
	datad => \fractc~4_combout\,
	combout => \fracts~156_combout\);

-- Location: LCCOMB_X28_Y22_N22
\fracts~157\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~157_combout\ = (\Equal0~2_combout\ & ((\fracts~156_combout\ & (\b[22]~input_o\)) # (!\fracts~156_combout\ & ((\a[22]~input_o\))))) # (!\Equal0~2_combout\ & (((\fracts~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \b[22]~input_o\,
	datac => \a[22]~input_o\,
	datad => \fracts~156_combout\,
	combout => \fracts~157_combout\);

-- Location: LCCOMB_X28_Y22_N16
\fracts~158\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~158_combout\ = (\fracts~157_combout\ & !\LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~157_combout\,
	datac => \LessThan0~3_combout\,
	combout => \fracts~158_combout\);

-- Location: LCCOMB_X23_Y21_N4
\fracts~159\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~159_combout\ = (\ShiftRight1~63_combout\ & (!\fracts~41_combout\ & (!\Add0~4_combout\ & !\Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~63_combout\,
	datab => \fracts~41_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~6_combout\,
	combout => \fracts~159_combout\);

-- Location: LCCOMB_X27_Y22_N24
\fracts~160\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~160_combout\ = (\fracts~42_combout\ & ((\fractc~4_combout\ & ((\ShiftRight0~77_combout\))) # (!\fractc~4_combout\ & (\fracts~159_combout\)))) # (!\fracts~42_combout\ & (((!\fractc~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~159_combout\,
	datab => \fracts~42_combout\,
	datac => \fractc~4_combout\,
	datad => \ShiftRight0~77_combout\,
	combout => \fracts~160_combout\);

-- Location: LCCOMB_X30_Y19_N18
\find_leftmost~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~6_combout\ = (!\Add2~111_combout\ & ((\add~4_combout\ & ((!\Add3~8_combout\))) # (!\add~4_combout\ & (!\Add2~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~111_combout\,
	datab => \Add2~50_combout\,
	datac => \Add3~8_combout\,
	datad => \add~4_combout\,
	combout => \find_leftmost~6_combout\);

-- Location: LCCOMB_X30_Y17_N20
\find_leftmost~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~13_combout\ = ((\find_leftmost~12_combout\) # ((\find_leftmost~10_combout\ & !\ufract~2_combout\))) # (!\find_leftmost~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \find_leftmost~0_combout\,
	datab => \find_leftmost~10_combout\,
	datac => \ufract~2_combout\,
	datad => \find_leftmost~12_combout\,
	combout => \find_leftmost~13_combout\);

-- Location: LCCOMB_X30_Y17_N18
\find_leftmost~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~18_combout\ = (\find_leftmost~3_combout\ & (((\find_leftmost~0_combout\ & !\Add2~103_combout\)) # (!\find_leftmost~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \find_leftmost~0_combout\,
	datab => \find_leftmost~3_combout\,
	datac => \Add2~103_combout\,
	datad => \find_leftmost~11_combout\,
	combout => \find_leftmost~18_combout\);

-- Location: LCCOMB_X30_Y17_N12
\find_leftmost~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~19_combout\ = (\find_leftmost~5_combout\ & (((\find_leftmost~18_combout\)))) # (!\find_leftmost~5_combout\ & ((\Add2~118_combout\) # ((\Add2~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~118_combout\,
	datab => \find_leftmost~18_combout\,
	datac => \Add2~120_combout\,
	datad => \find_leftmost~5_combout\,
	combout => \find_leftmost~19_combout\);

-- Location: LCCOMB_X30_Y17_N14
\find_leftmost~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~20_combout\ = (\find_leftmost~15_combout\ & (((\find_leftmost~19_combout\)))) # (!\find_leftmost~15_combout\ & (!\Add2~112_combout\ & (\find_leftmost~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~112_combout\,
	datab => \find_leftmost~15_combout\,
	datac => \find_leftmost~9_combout\,
	datad => \find_leftmost~19_combout\,
	combout => \find_leftmost~20_combout\);

-- Location: LCCOMB_X28_Y17_N30
\find_leftmost~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~21_combout\ = (\find_leftmost~20_combout\) # ((\Result~18_combout\ & (!\ufract~2_combout\ & !\find_leftmost~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result~18_combout\,
	datab => \find_leftmost~20_combout\,
	datac => \ufract~2_combout\,
	datad => \find_leftmost~9_combout\,
	combout => \find_leftmost~21_combout\);

-- Location: LCCOMB_X29_Y17_N0
\find_leftmost~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~22_combout\ = (\Add2~105_combout\) # ((\Add2~104_combout\) # ((!\Add2~119_combout\ & !\Add2~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~119_combout\,
	datab => \Add2~86_combout\,
	datac => \Add2~105_combout\,
	datad => \Add2~104_combout\,
	combout => \find_leftmost~22_combout\);

-- Location: LCCOMB_X30_Y17_N0
\find_leftmost~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~23_combout\ = (\Add2~107_combout\) # ((\Add2~106_combout\) # ((\find_leftmost~22_combout\ & \find_leftmost~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~107_combout\,
	datab => \Add2~106_combout\,
	datac => \find_leftmost~22_combout\,
	datad => \find_leftmost~3_combout\,
	combout => \find_leftmost~23_combout\);

-- Location: LCCOMB_X32_Y16_N26
\find_leftmost~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~24_combout\ = (\Add2~100_combout\) # ((!\Add2~101_combout\ & !\Add2~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~101_combout\,
	datac => \Add2~100_combout\,
	datad => \Add2~102_combout\,
	combout => \find_leftmost~24_combout\);

-- Location: LCCOMB_X30_Y17_N26
\find_leftmost~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~25_combout\ = (\find_leftmost~12_combout\ & (\find_leftmost~23_combout\)) # (!\find_leftmost~12_combout\ & (((\find_leftmost~24_combout\ & \find_leftmost~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \find_leftmost~23_combout\,
	datab => \find_leftmost~12_combout\,
	datac => \find_leftmost~24_combout\,
	datad => \find_leftmost~5_combout\,
	combout => \find_leftmost~25_combout\);

-- Location: LCCOMB_X30_Y17_N28
\find_leftmost~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~26_combout\ = (\find_leftmost~0_combout\ & (!\find_leftmost~12_combout\ & (\find_leftmost~4_combout\ & \Result~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \find_leftmost~0_combout\,
	datab => \find_leftmost~12_combout\,
	datac => \find_leftmost~4_combout\,
	datad => \Result~17_combout\,
	combout => \find_leftmost~26_combout\);

-- Location: LCCOMB_X29_Y19_N0
\find_leftmost~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~27_combout\ = (!\Add2~116_combout\ & ((\add~4_combout\ & (!\Add3~22_combout\)) # (!\add~4_combout\ & ((!\Add2~64_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~22_combout\,
	datab => \Add2~64_combout\,
	datac => \Add2~116_combout\,
	datad => \add~4_combout\,
	combout => \find_leftmost~27_combout\);

-- Location: LCCOMB_X30_Y17_N30
\find_leftmost~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~28_combout\ = (\find_leftmost~26_combout\ & (((\Add2~115_combout\ & \find_leftmost~25_combout\)) # (!\find_leftmost~27_combout\))) # (!\find_leftmost~26_combout\ & (((\find_leftmost~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~115_combout\,
	datab => \find_leftmost~27_combout\,
	datac => \find_leftmost~25_combout\,
	datad => \find_leftmost~26_combout\,
	combout => \find_leftmost~28_combout\);

-- Location: LCCOMB_X29_Y17_N10
\find_leftmost~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~34_combout\ = (\Add2~105_combout\) # ((!\Add2~104_combout\ & ((\Add2~119_combout\) # (!\Add2~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~119_combout\,
	datab => \Add2~86_combout\,
	datac => \Add2~105_combout\,
	datad => \Add2~104_combout\,
	combout => \find_leftmost~34_combout\);

-- Location: LCCOMB_X32_Y16_N20
\find_leftmost~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~36_combout\ = (!\Add2~100_combout\ & ((\Add2~102_combout\) # ((!\Add2~101_combout\ & \Add2~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~100_combout\,
	datab => \Add2~102_combout\,
	datac => \Add2~101_combout\,
	datad => \Add2~110_combout\,
	combout => \find_leftmost~36_combout\);

-- Location: LCCOMB_X30_Y16_N2
\find_leftmost~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~37_combout\ = (\Add2~120_combout\) # ((!\Add2~118_combout\ & ((\Add2~117_combout\) # (!\Add2~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~117_combout\,
	datab => \Add2~120_combout\,
	datac => \Add2~116_combout\,
	datad => \Add2~118_combout\,
	combout => \find_leftmost~37_combout\);

-- Location: LCCOMB_X30_Y17_N10
\find_leftmost~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~38_combout\ = (\find_leftmost~0_combout\ & ((\find_leftmost~4_combout\ & ((\find_leftmost~37_combout\))) # (!\find_leftmost~4_combout\ & (\find_leftmost~36_combout\)))) # (!\find_leftmost~0_combout\ & (((\find_leftmost~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \find_leftmost~0_combout\,
	datab => \find_leftmost~4_combout\,
	datac => \find_leftmost~36_combout\,
	datad => \find_leftmost~37_combout\,
	combout => \find_leftmost~38_combout\);

-- Location: LCCOMB_X29_Y22_N20
\rexpon~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rexpon~5_combout\ = (\Add0~16_combout\ & (\b[25]~input_o\)) # (!\Add0~16_combout\ & ((\a[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~16_combout\,
	datac => \b[25]~input_o\,
	datad => \a[25]~input_o\,
	combout => \rexpon~5_combout\);

-- Location: LCCOMB_X30_Y19_N6
\Result~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Result~20_combout\ = (((!\find_leftmost~7_combout\) # (!\Result~17_combout\)) # (!\find_leftmost~8_combout\)) # (!\find_leftmost~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \find_leftmost~4_combout\,
	datab => \find_leftmost~8_combout\,
	datac => \Result~17_combout\,
	datad => \find_leftmost~7_combout\,
	combout => \Result~20_combout\);

-- Location: LCCOMB_X29_Y22_N10
\Classfp~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Classfp~2_combout\ = (!\b[31]~input_o\ & (\Result~7_combout\ & (\Result~5_combout\ & \Result~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[31]~input_o\,
	datab => \Result~7_combout\,
	datac => \Result~5_combout\,
	datad => \Result~6_combout\,
	combout => \Classfp~2_combout\);

-- Location: LCCOMB_X30_Y23_N12
\Sumfp[-17]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Sumfp[-17]~3_combout\ = (!\Classfp~2_combout\ & (!\Classfp~3_combout\ & (\fpresult~0_combout\ & !\add~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Classfp~2_combout\,
	datab => \Classfp~3_combout\,
	datac => \fpresult~0_combout\,
	datad => \add~3_combout\,
	combout => \Sumfp[-17]~3_combout\);

-- Location: LCCOMB_X29_Y24_N26
\shiftr~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \shiftr~3_combout\ = (\Add6~0_combout\) # ((\Add6~6_combout\) # ((\Add6~2_combout\) # (\Add6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => \Add6~6_combout\,
	datac => \Add6~2_combout\,
	datad => \Add6~4_combout\,
	combout => \shiftr~3_combout\);

-- Location: LCCOMB_X35_Y15_N10
\ShiftLeft0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~7_combout\ = (\Add9~0_combout\ & ((\ShiftLeft0~5_combout\))) # (!\Add9~0_combout\ & (\ShiftLeft0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~6_combout\,
	datac => \ShiftLeft0~5_combout\,
	datad => \Add9~0_combout\,
	combout => \ShiftLeft0~7_combout\);

-- Location: LCCOMB_X34_Y20_N0
\ShiftRight2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~6_combout\ = (!\shiftr~6_combout\ & (\shiftr~7_combout\ & (\Add2~107_combout\ & !\Add8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftr~6_combout\,
	datab => \shiftr~7_combout\,
	datac => \Add2~107_combout\,
	datad => \Add8~4_combout\,
	combout => \ShiftRight2~6_combout\);

-- Location: LCCOMB_X35_Y15_N12
\ShiftLeft0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~21_combout\ = (\Add9~0_combout\ & (\ShiftLeft0~16_combout\)) # (!\Add9~0_combout\ & ((\ShiftLeft0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~0_combout\,
	datab => \ShiftLeft0~16_combout\,
	datad => \ShiftLeft0~2_combout\,
	combout => \ShiftLeft0~21_combout\);

-- Location: LCCOMB_X35_Y15_N20
\ShiftLeft0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~25_combout\ = (\Add9~0_combout\ & ((\ShiftLeft0~10_combout\))) # (!\Add9~0_combout\ & (\ShiftLeft0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~12_combout\,
	datac => \ShiftLeft0~10_combout\,
	datad => \Add9~0_combout\,
	combout => \ShiftLeft0~25_combout\);

-- Location: LCCOMB_X30_Y18_N12
\sfract~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~28_combout\ = (\sfract~23_combout\ & (((\sfract~22_combout\) # (\ShiftLeft0~24_combout\)))) # (!\sfract~23_combout\ & (\ShiftLeft0~25_combout\ & (!\sfract~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~25_combout\,
	datab => \sfract~23_combout\,
	datac => \sfract~22_combout\,
	datad => \ShiftLeft0~24_combout\,
	combout => \sfract~28_combout\);

-- Location: LCCOMB_X30_Y16_N18
\ShiftLeft0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~34_combout\ = (\shiftr~6_combout\ & (\Add2~115_combout\)) # (!\shiftr~6_combout\ & ((\Add2~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~115_combout\,
	datab => \shiftr~6_combout\,
	datac => \Add2~116_combout\,
	combout => \ShiftLeft0~34_combout\);

-- Location: LCCOMB_X30_Y16_N4
\ShiftLeft0~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~35_combout\ = (\shiftr~6_combout\ & ((\Add2~117_combout\))) # (!\shiftr~6_combout\ & (\Add2~118_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~118_combout\,
	datac => \shiftr~6_combout\,
	datad => \Add2~117_combout\,
	combout => \ShiftLeft0~35_combout\);

-- Location: LCCOMB_X31_Y19_N14
\ShiftLeft0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~36_combout\ = (\Add9~0_combout\ & ((\ShiftLeft0~34_combout\))) # (!\Add9~0_combout\ & (\ShiftLeft0~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~35_combout\,
	datab => \ShiftLeft0~34_combout\,
	datad => \Add9~0_combout\,
	combout => \ShiftLeft0~36_combout\);

-- Location: LCCOMB_X35_Y19_N26
\ShiftLeft0~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~46_combout\ = (!\Add9~4_combout\ & \ShiftLeft0~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add9~4_combout\,
	datad => \ShiftLeft0~45_combout\,
	combout => \ShiftLeft0~46_combout\);

-- Location: LCCOMB_X31_Y18_N0
\sfract~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~34_combout\ = (\Add9~4_combout\) # ((\Add9~0_combout\ & !\Add9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~0_combout\,
	datac => \Add9~2_combout\,
	datad => \Add9~4_combout\,
	combout => \sfract~34_combout\);

-- Location: LCCOMB_X32_Y17_N12
\sfract~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~35_combout\ = (\Add9~4_combout\) # (\Add9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add9~4_combout\,
	datad => \Add9~2_combout\,
	combout => \sfract~35_combout\);

-- Location: LCCOMB_X32_Y17_N0
\sfract~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~36_combout\ = (\sfract~34_combout\ & (((\sfract~35_combout\)))) # (!\sfract~34_combout\ & ((\sfract~35_combout\ & (\ShiftLeft0~25_combout\)) # (!\sfract~35_combout\ & ((\ShiftLeft0~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~34_combout\,
	datab => \ShiftLeft0~25_combout\,
	datac => \ShiftLeft0~47_combout\,
	datad => \sfract~35_combout\,
	combout => \sfract~36_combout\);

-- Location: LCCOMB_X34_Y18_N24
\sfract~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~37_combout\ = (\sfract~36_combout\ & (((\ShiftLeft0~48_combout\) # (!\sfract~34_combout\)))) # (!\sfract~36_combout\ & (\ShiftLeft0~13_combout\ & (\sfract~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~13_combout\,
	datab => \sfract~36_combout\,
	datac => \sfract~34_combout\,
	datad => \ShiftLeft0~48_combout\,
	combout => \sfract~37_combout\);

-- Location: LCCOMB_X34_Y18_N2
\sfract~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~38_combout\ = (\Add9~6_combout\ & (((!\Add9~4_combout\ & \ShiftLeft0~49_combout\)))) # (!\Add9~6_combout\ & (\sfract~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~6_combout\,
	datab => \sfract~37_combout\,
	datac => \Add9~4_combout\,
	datad => \ShiftLeft0~49_combout\,
	combout => \sfract~38_combout\);

-- Location: LCCOMB_X34_Y18_N28
\sfract~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~39_combout\ = (\Add8~21_combout\ & ((\sfract~38_combout\))) # (!\Add8~21_combout\ & (\ShiftRight2~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~20_combout\,
	datac => \Add8~21_combout\,
	datad => \sfract~38_combout\,
	combout => \sfract~39_combout\);

-- Location: LCCOMB_X31_Y16_N14
\ShiftRight2~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~24_combout\ = (\Add8~4_combout\ & ((\ShiftRight2~10_combout\))) # (!\Add8~4_combout\ & (\ShiftRight2~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~4_combout\,
	datab => \ShiftRight2~23_combout\,
	datac => \ShiftRight2~10_combout\,
	combout => \ShiftRight2~24_combout\);

-- Location: LCCOMB_X30_Y23_N2
\sfract~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~41_combout\ = (\Add8~10_combout\) # ((\Add8~4_combout\ & !\Add8~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~10_combout\,
	datac => \Add8~4_combout\,
	datad => \Add8~7_combout\,
	combout => \sfract~41_combout\);

-- Location: LCCOMB_X34_Y16_N24
\ShiftRight2~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~28_combout\ = (\shiftr~6_combout\ & (\Add2~112_combout\)) # (!\shiftr~6_combout\ & ((\Add2~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~112_combout\,
	datac => \shiftr~6_combout\,
	datad => \Add2~114_combout\,
	combout => \ShiftRight2~28_combout\);

-- Location: LCCOMB_X30_Y16_N8
\ShiftRight2~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~29_combout\ = (\shiftr~6_combout\ & ((\Add2~116_combout\))) # (!\shiftr~6_combout\ & (\Add2~115_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~115_combout\,
	datab => \shiftr~6_combout\,
	datac => \Add2~116_combout\,
	combout => \ShiftRight2~29_combout\);

-- Location: LCCOMB_X34_Y16_N10
\ShiftRight2~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~30_combout\ = (\shiftr~7_combout\ & ((\ShiftRight2~28_combout\))) # (!\shiftr~7_combout\ & (\ShiftRight2~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~29_combout\,
	datac => \shiftr~7_combout\,
	datad => \ShiftRight2~28_combout\,
	combout => \ShiftRight2~30_combout\);

-- Location: LCCOMB_X34_Y18_N6
\sfract~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~42_combout\ = (\sfract~40_combout\ & ((\sfract~41_combout\ & (\ShiftRight2~27_combout\)) # (!\sfract~41_combout\ & ((\ShiftRight2~30_combout\))))) # (!\sfract~40_combout\ & (((\sfract~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~27_combout\,
	datab => \ShiftRight2~30_combout\,
	datac => \sfract~40_combout\,
	datad => \sfract~41_combout\,
	combout => \sfract~42_combout\);

-- Location: LCCOMB_X34_Y18_N16
\ShiftRight2~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~31_combout\ = (\ShiftRight2~20_combout\ & !\Add8~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~20_combout\,
	datad => \Add8~7_combout\,
	combout => \ShiftRight2~31_combout\);

-- Location: LCCOMB_X34_Y18_N18
\sfract~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~43_combout\ = (\sfract~40_combout\ & (((\sfract~42_combout\)))) # (!\sfract~40_combout\ & ((\sfract~42_combout\ & ((\ShiftRight2~31_combout\))) # (!\sfract~42_combout\ & (\ShiftRight2~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~24_combout\,
	datab => \ShiftRight2~31_combout\,
	datac => \sfract~40_combout\,
	datad => \sfract~42_combout\,
	combout => \sfract~43_combout\);

-- Location: LCCOMB_X31_Y19_N30
\ShiftLeft0~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~50_combout\ = (\Add9~0_combout\ & (\ShiftLeft0~35_combout\)) # (!\Add9~0_combout\ & ((\ShiftLeft0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~35_combout\,
	datab => \ShiftLeft0~28_combout\,
	datad => \Add9~0_combout\,
	combout => \ShiftLeft0~50_combout\);

-- Location: LCCOMB_X31_Y19_N26
\ShiftLeft0~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~52_combout\ = (\Add9~0_combout\ & ((\ShiftLeft0~32_combout\))) # (!\Add9~0_combout\ & (\ShiftLeft0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~0_combout\,
	datab => \ShiftLeft0~34_combout\,
	datac => \ShiftLeft0~32_combout\,
	combout => \ShiftLeft0~52_combout\);

-- Location: LCCOMB_X31_Y19_N20
\ShiftLeft0~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~53_combout\ = (\Add9~2_combout\ & ((\ShiftLeft0~51_combout\))) # (!\Add9~2_combout\ & (\ShiftLeft0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~2_combout\,
	datac => \ShiftLeft0~52_combout\,
	datad => \ShiftLeft0~51_combout\,
	combout => \ShiftLeft0~53_combout\);

-- Location: LCCOMB_X32_Y17_N18
\ShiftLeft0~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~54_combout\ = (\Add9~0_combout\ & ((\ShiftLeft0~29_combout\))) # (!\Add9~0_combout\ & (\ShiftLeft0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~38_combout\,
	datac => \Add9~0_combout\,
	datad => \ShiftLeft0~29_combout\,
	combout => \ShiftLeft0~54_combout\);

-- Location: LCCOMB_X30_Y18_N10
\sfract~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~44_combout\ = (\sfract~22_combout\ & ((\sfract~23_combout\) # ((\ShiftLeft0~53_combout\)))) # (!\sfract~22_combout\ & (!\sfract~23_combout\ & (\ShiftLeft0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~22_combout\,
	datab => \sfract~23_combout\,
	datac => \ShiftLeft0~54_combout\,
	datad => \ShiftLeft0~53_combout\,
	combout => \sfract~44_combout\);

-- Location: LCCOMB_X30_Y18_N28
\ShiftLeft0~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~55_combout\ = (!\Add9~2_combout\ & (!\Add9~4_combout\ & \ShiftLeft0~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~2_combout\,
	datab => \Add9~4_combout\,
	datad => \ShiftLeft0~71_combout\,
	combout => \ShiftLeft0~55_combout\);

-- Location: LCCOMB_X30_Y18_N6
\sfract~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~45_combout\ = (\sfract~44_combout\ & ((\ShiftLeft0~55_combout\) # ((!\sfract~23_combout\)))) # (!\sfract~44_combout\ & (((\ShiftLeft0~50_combout\ & \sfract~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~44_combout\,
	datab => \ShiftLeft0~55_combout\,
	datac => \ShiftLeft0~50_combout\,
	datad => \sfract~23_combout\,
	combout => \sfract~45_combout\);

-- Location: LCCOMB_X34_Y20_N8
\Result~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Result~22_combout\ = (\Add8~7_combout\ & (\ShiftRight2~13_combout\ & (\sfract~46_combout\))) # (!\Add8~7_combout\ & (((\ShiftRight2~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~13_combout\,
	datab => \sfract~46_combout\,
	datac => \Add8~7_combout\,
	datad => \ShiftRight2~35_combout\,
	combout => \Result~22_combout\);

-- Location: LCCOMB_X34_Y18_N12
\sfract~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~47_combout\ = (\Add8~21_combout\ & (\sfract~45_combout\)) # (!\Add8~21_combout\ & ((\Result~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~45_combout\,
	datac => \Add8~21_combout\,
	datad => \Result~22_combout\,
	combout => \sfract~47_combout\);

-- Location: LCCOMB_X34_Y18_N14
\Sumfp[-17]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Sumfp[-17]~6_combout\ = ((\Add8~21_combout\ & ((!\ShiftLeft0~49_combout\))) # (!\Add8~21_combout\ & (!\sfract~43_combout\))) # (!\sfract~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~47_combout\,
	datab => \sfract~43_combout\,
	datac => \Add8~21_combout\,
	datad => \ShiftLeft0~49_combout\,
	combout => \Sumfp[-17]~6_combout\);

-- Location: LCCOMB_X32_Y19_N12
\ShiftLeft0~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~57_combout\ = (\Add9~2_combout\ & (\ShiftLeft0~36_combout\)) # (!\Add9~2_combout\ & ((\ShiftLeft0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~36_combout\,
	datac => \ShiftLeft0~30_combout\,
	datad => \Add9~2_combout\,
	combout => \ShiftLeft0~57_combout\);

-- Location: LCCOMB_X29_Y23_N30
\Add8~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~25_combout\ = (\shiftr~5_combout\ & (((\Add5~12_combout\)))) # (!\shiftr~5_combout\ & ((\shiftr~2_combout\ & (\Add8~17_combout\)) # (!\shiftr~2_combout\ & ((\Add5~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftr~5_combout\,
	datab => \Add8~17_combout\,
	datac => \shiftr~2_combout\,
	datad => \Add5~12_combout\,
	combout => \Add8~25_combout\);

-- Location: LCCOMB_X31_Y18_N26
\ShiftLeft0~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~58_combout\ = (!\Add9~14_combout\ & (!\Add9~12_combout\ & (!\Add9~8_combout\ & !\Add9~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~14_combout\,
	datab => \Add9~12_combout\,
	datac => \Add9~8_combout\,
	datad => \Add9~10_combout\,
	combout => \ShiftLeft0~58_combout\);

-- Location: LCCOMB_X35_Y17_N0
\sfract~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~49_combout\ = (\Add8~7_combout\ & (((\ShiftRight2~14_combout\ & !\Add8~4_combout\)))) # (!\Add8~7_combout\ & (\ShiftRight2~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~38_combout\,
	datab => \ShiftRight2~14_combout\,
	datac => \Add8~4_combout\,
	datad => \Add8~7_combout\,
	combout => \sfract~49_combout\);

-- Location: LCCOMB_X35_Y16_N4
\sfract~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~55_combout\ = (\Add8~7_combout\ & (\ShiftRight2~1_combout\ & (!\Add8~4_combout\))) # (!\Add8~7_combout\ & (((\ShiftRight2~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~7_combout\,
	datab => \ShiftRight2~1_combout\,
	datac => \Add8~4_combout\,
	datad => \ShiftRight2~41_combout\,
	combout => \sfract~55_combout\);

-- Location: LCCOMB_X30_Y16_N10
\ShiftRight2~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~47_combout\ = (\shiftr~6_combout\ & ((\Add2~120_combout\))) # (!\shiftr~6_combout\ & (\Add2~118_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~118_combout\,
	datac => \shiftr~6_combout\,
	datad => \Add2~120_combout\,
	combout => \ShiftRight2~47_combout\);

-- Location: LCCOMB_X29_Y16_N0
\ShiftRight2~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~48_combout\ = (\shiftr~6_combout\ & ((\Add2~110_combout\))) # (!\shiftr~6_combout\ & (\Add2~121_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~121_combout\,
	datab => \Add2~110_combout\,
	datac => \shiftr~6_combout\,
	combout => \ShiftRight2~48_combout\);

-- Location: LCCOMB_X34_Y17_N8
\ShiftRight2~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~49_combout\ = (\shiftr~7_combout\ & (\ShiftRight2~47_combout\)) # (!\shiftr~7_combout\ & ((\ShiftRight2~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~47_combout\,
	datab => \ShiftRight2~48_combout\,
	datad => \shiftr~7_combout\,
	combout => \ShiftRight2~49_combout\);

-- Location: LCCOMB_X30_Y16_N20
\ShiftRight2~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~51_combout\ = (\shiftr~6_combout\ & (\Add2~117_combout\)) # (!\shiftr~6_combout\ & ((\Add2~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~117_combout\,
	datab => \shiftr~6_combout\,
	datac => \Add2~116_combout\,
	combout => \ShiftRight2~51_combout\);

-- Location: LCCOMB_X34_Y17_N12
\ShiftRight2~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~53_combout\ = (\Add8~4_combout\ & (\ShiftRight2~49_combout\)) # (!\Add8~4_combout\ & ((\ShiftRight2~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight2~49_combout\,
	datac => \Add8~4_combout\,
	datad => \ShiftRight2~52_combout\,
	combout => \ShiftRight2~53_combout\);

-- Location: LCCOMB_X31_Y19_N16
\ShiftLeft0~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~66_combout\ = (!\Add9~2_combout\ & (!\shiftr~6_combout\ & (\ufract~2_combout\ & !\Add9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~2_combout\,
	datab => \shiftr~6_combout\,
	datac => \ufract~2_combout\,
	datad => \Add9~0_combout\,
	combout => \ShiftLeft0~66_combout\);

-- Location: LCCOMB_X32_Y17_N26
\sfract~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~64_combout\ = (\Add9~2_combout\) # ((\shiftr~6_combout\ & !\Add9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftr~6_combout\,
	datac => \Add9~0_combout\,
	datad => \Add9~2_combout\,
	combout => \sfract~64_combout\);

-- Location: LCCOMB_X34_Y20_N4
\ShiftRight2~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~56_combout\ = (\Add8~4_combout\ & (\shiftr~7_combout\ & (\ShiftRight2~13_combout\))) # (!\Add8~4_combout\ & (((\ShiftRight2~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~4_combout\,
	datab => \shiftr~7_combout\,
	datac => \ShiftRight2~13_combout\,
	datad => \ShiftRight2~32_combout\,
	combout => \ShiftRight2~56_combout\);

-- Location: LCCOMB_X31_Y19_N2
\ShiftLeft0~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~69_combout\ = (\Add9~2_combout\ & ((\ShiftLeft0~52_combout\))) # (!\Add9~2_combout\ & (\ShiftLeft0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~50_combout\,
	datac => \ShiftLeft0~52_combout\,
	datad => \Add9~2_combout\,
	combout => \ShiftLeft0~69_combout\);

-- Location: LCCOMB_X34_Y17_N30
\ShiftRight2~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~57_combout\ = (\shiftr~7_combout\ & (\ShiftRight2~48_combout\)) # (!\shiftr~7_combout\ & ((\ShiftRight2~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight2~48_combout\,
	datac => \ShiftRight2~36_combout\,
	datad => \shiftr~7_combout\,
	combout => \ShiftRight2~57_combout\);

-- Location: LCCOMB_X34_Y17_N16
\ShiftRight2~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~58_combout\ = (\Add8~4_combout\ & ((\ShiftRight2~34_combout\))) # (!\Add8~4_combout\ & (\ShiftRight2~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~57_combout\,
	datac => \Add8~4_combout\,
	datad => \ShiftRight2~34_combout\,
	combout => \ShiftRight2~58_combout\);

-- Location: LCCOMB_X31_Y20_N22
\sfract~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~80_combout\ = (\Add8~21_combout\ & (((\ShiftLeft0~69_combout\) # (\sfract~73_combout\)))) # (!\Add8~21_combout\ & (\ShiftRight2~58_combout\ & ((!\sfract~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~58_combout\,
	datab => \ShiftLeft0~69_combout\,
	datac => \Add8~21_combout\,
	datad => \sfract~73_combout\,
	combout => \sfract~80_combout\);

-- Location: LCCOMB_X31_Y20_N8
\sfract~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~81_combout\ = (\sfract~80_combout\ & ((\ShiftLeft0~70_combout\) # ((!\sfract~73_combout\)))) # (!\sfract~80_combout\ & (((\ShiftRight2~56_combout\ & \sfract~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~80_combout\,
	datab => \ShiftLeft0~70_combout\,
	datac => \ShiftRight2~56_combout\,
	datad => \sfract~73_combout\,
	combout => \sfract~81_combout\);

-- Location: LCCOMB_X34_Y16_N30
\ShiftRight2~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~59_combout\ = (\shiftr~6_combout\ & (\Add2~113_combout\)) # (!\shiftr~6_combout\ & ((\Add2~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftr~6_combout\,
	datac => \Add2~113_combout\,
	datad => \Add2~111_combout\,
	combout => \ShiftRight2~59_combout\);

-- Location: LCCOMB_X34_Y16_N0
\ShiftRight2~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~60_combout\ = (\shiftr~7_combout\ & (\ShiftRight2~59_combout\)) # (!\shiftr~7_combout\ & ((\ShiftRight2~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~59_combout\,
	datab => \ShiftRight2~28_combout\,
	datac => \shiftr~7_combout\,
	combout => \ShiftRight2~60_combout\);

-- Location: LCCOMB_X35_Y16_N20
\sfract~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~83_combout\ = (\sfract~41_combout\ & ((\ShiftRight2~43_combout\) # ((!\sfract~40_combout\)))) # (!\sfract~41_combout\ & (((\ShiftRight2~60_combout\ & \sfract~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~41_combout\,
	datab => \ShiftRight2~43_combout\,
	datac => \ShiftRight2~60_combout\,
	datad => \sfract~40_combout\,
	combout => \sfract~83_combout\);

-- Location: LCCOMB_X35_Y16_N30
\ShiftRight2~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~61_combout\ = (!\Add8~7_combout\ & ((\Add8~4_combout\ & (\ShiftRight2~1_combout\)) # (!\Add8~4_combout\ & ((\ShiftRight2~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~7_combout\,
	datab => \ShiftRight2~1_combout\,
	datac => \Add8~4_combout\,
	datad => \ShiftRight2~4_combout\,
	combout => \ShiftRight2~61_combout\);

-- Location: LCCOMB_X35_Y16_N24
\sfract~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~84_combout\ = (\sfract~83_combout\ & (((\ShiftRight2~61_combout\) # (\sfract~40_combout\)))) # (!\sfract~83_combout\ & (\ShiftRight2~54_combout\ & ((!\sfract~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~54_combout\,
	datab => \sfract~83_combout\,
	datac => \ShiftRight2~61_combout\,
	datad => \sfract~40_combout\,
	combout => \sfract~84_combout\);

-- Location: LCCOMB_X35_Y19_N16
\sfract~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~85_combout\ = (\Add8~21_combout\ & (\ShiftLeft0~19_combout\)) # (!\Add8~21_combout\ & ((\sfract~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~21_combout\,
	datac => \ShiftLeft0~19_combout\,
	datad => \sfract~84_combout\,
	combout => \sfract~85_combout\);

-- Location: LCCOMB_X34_Y17_N2
\ShiftRight2~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~62_combout\ = (\shiftr~7_combout\ & ((\ShiftRight2~51_combout\))) # (!\shiftr~7_combout\ & (\ShiftRight2~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~47_combout\,
	datab => \shiftr~7_combout\,
	datad => \ShiftRight2~51_combout\,
	combout => \ShiftRight2~62_combout\);

-- Location: LCCOMB_X34_Y17_N4
\ShiftRight2~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~63_combout\ = (\Add8~4_combout\ & (\ShiftRight2~57_combout\)) # (!\Add8~4_combout\ & ((\ShiftRight2~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~57_combout\,
	datab => \ShiftRight2~62_combout\,
	datac => \Add8~4_combout\,
	combout => \ShiftRight2~63_combout\);

-- Location: LCCOMB_X32_Y17_N4
\sfract~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~92_combout\ = (\sfract~34_combout\ & (((\sfract~35_combout\)))) # (!\sfract~34_combout\ & ((\sfract~35_combout\ & (\ShiftLeft0~54_combout\)) # (!\sfract~35_combout\ & ((\ShiftLeft0~68_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~34_combout\,
	datab => \ShiftLeft0~54_combout\,
	datac => \ShiftLeft0~68_combout\,
	datad => \sfract~35_combout\,
	combout => \sfract~92_combout\);

-- Location: LCCOMB_X32_Y17_N22
\sfract~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~93_combout\ = (\sfract~34_combout\ & ((\sfract~92_combout\ & (\ShiftLeft0~69_combout\)) # (!\sfract~92_combout\ & ((\ShiftLeft0~39_combout\))))) # (!\sfract~34_combout\ & (((\sfract~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~34_combout\,
	datab => \ShiftLeft0~69_combout\,
	datac => \sfract~92_combout\,
	datad => \ShiftLeft0~39_combout\,
	combout => \sfract~93_combout\);

-- Location: LCCOMB_X31_Y20_N18
\sfract~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~94_combout\ = (\Add9~6_combout\ & (!\Add9~4_combout\ & (\ShiftLeft0~70_combout\))) # (!\Add9~6_combout\ & (((\sfract~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~6_combout\,
	datab => \Add9~4_combout\,
	datac => \ShiftLeft0~70_combout\,
	datad => \sfract~93_combout\,
	combout => \sfract~94_combout\);

-- Location: LCCOMB_X31_Y20_N12
\sfract~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~95_combout\ = (\Add8~21_combout\ & ((\sfract~94_combout\))) # (!\Add8~21_combout\ & (\ShiftRight2~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~21_combout\,
	datac => \ShiftRight2~56_combout\,
	datad => \sfract~94_combout\,
	combout => \sfract~95_combout\);

-- Location: LCCOMB_X35_Y17_N2
\sfract~96\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~96_combout\ = (!\Add8~7_combout\ & (!\Add8~21_combout\ & \ShiftRight2~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~7_combout\,
	datac => \Add8~21_combout\,
	datad => \ShiftRight2~39_combout\,
	combout => \sfract~96_combout\);

-- Location: LCCOMB_X34_Y20_N22
\sfract~97\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~97_combout\ = (!\shiftr~6_combout\ & (\sfract~46_combout\ & (\Add2~107_combout\ & \sfract~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftr~6_combout\,
	datab => \sfract~46_combout\,
	datac => \Add2~107_combout\,
	datad => \sfract~96_combout\,
	combout => \sfract~97_combout\);

-- Location: LCCOMB_X31_Y20_N30
\sfract~98\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~98_combout\ = (\sfract~58_combout\ & (((\sfract~59_combout\ & \ShiftLeft0~23_combout\)))) # (!\sfract~58_combout\ & ((\sfract~97_combout\) # ((!\sfract~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~97_combout\,
	datab => \sfract~58_combout\,
	datac => \sfract~59_combout\,
	datad => \ShiftLeft0~23_combout\,
	combout => \sfract~98_combout\);

-- Location: LCCOMB_X34_Y17_N0
\ShiftRight2~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~66_combout\ = (\shiftr~7_combout\ & (\ShiftRight2~65_combout\)) # (!\shiftr~7_combout\ & ((\ShiftRight2~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~65_combout\,
	datab => \shiftr~7_combout\,
	datac => \ShiftRight2~50_combout\,
	combout => \ShiftRight2~66_combout\);

-- Location: LCCOMB_X34_Y17_N10
\sfract~101\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~101_combout\ = (\sfract~41_combout\ & (((!\sfract~40_combout\)))) # (!\sfract~41_combout\ & ((\sfract~40_combout\ & ((\ShiftRight2~66_combout\))) # (!\sfract~40_combout\ & (\ShiftRight2~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~58_combout\,
	datab => \ShiftRight2~66_combout\,
	datac => \sfract~41_combout\,
	datad => \sfract~40_combout\,
	combout => \sfract~101_combout\);

-- Location: LCCOMB_X34_Y17_N28
\ShiftRight2~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~67_combout\ = (\ShiftRight2~56_combout\ & !\Add8~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftRight2~56_combout\,
	datad => \Add8~7_combout\,
	combout => \ShiftRight2~67_combout\);

-- Location: LCCOMB_X34_Y17_N22
\sfract~102\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~102_combout\ = (\sfract~101_combout\ & ((\ShiftRight2~67_combout\) # ((!\sfract~41_combout\)))) # (!\sfract~101_combout\ & (((\sfract~41_combout\ & \ShiftRight2~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~101_combout\,
	datab => \ShiftRight2~67_combout\,
	datac => \sfract~41_combout\,
	datad => \ShiftRight2~62_combout\,
	combout => \sfract~102_combout\);

-- Location: LCCOMB_X34_Y16_N12
\ShiftRight2~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~68_combout\ = (\shiftr~6_combout\ & (\Add2~111_combout\)) # (!\shiftr~6_combout\ & ((\Add2~122_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftr~6_combout\,
	datac => \Add2~111_combout\,
	datad => \Add2~122_combout\,
	combout => \ShiftRight2~68_combout\);

-- Location: LCCOMB_X34_Y17_N26
\sfract~107\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~107_combout\ = (\Add8~7_combout\) # ((!\shiftr~7_combout\ & !\Add8~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftr~7_combout\,
	datac => \Add8~4_combout\,
	datad => \Add8~7_combout\,
	combout => \sfract~107_combout\);

-- Location: LCCOMB_X34_Y20_N24
\ShiftRight2~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~71_combout\ = (\shiftr~6_combout\ & ((\Add2~122_combout\))) # (!\shiftr~6_combout\ & (\Add2~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~99_combout\,
	datab => \Add2~122_combout\,
	datac => \shiftr~6_combout\,
	combout => \ShiftRight2~71_combout\);

-- Location: LCCOMB_X34_Y16_N22
\sfract~108\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~108_combout\ = (\sfract~107_combout\ & (((\ShiftRight2~46_combout\)))) # (!\sfract~107_combout\ & ((\ShiftRight2~46_combout\ & (\ShiftRight2~30_combout\)) # (!\ShiftRight2~46_combout\ & ((\ShiftRight2~71_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~30_combout\,
	datab => \ShiftRight2~71_combout\,
	datac => \sfract~107_combout\,
	datad => \ShiftRight2~46_combout\,
	combout => \sfract~108_combout\);

-- Location: LCCOMB_X34_Y16_N16
\sfract~109\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~109_combout\ = (\sfract~107_combout\ & ((\sfract~108_combout\ & ((\ShiftRight2~64_combout\))) # (!\sfract~108_combout\ & (\ShiftRight2~59_combout\)))) # (!\sfract~107_combout\ & (((\sfract~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~59_combout\,
	datab => \ShiftRight2~64_combout\,
	datac => \sfract~107_combout\,
	datad => \sfract~108_combout\,
	combout => \sfract~109_combout\);

-- Location: LCCOMB_X28_Y17_N26
\ShiftRight2~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~72_combout\ = (\shiftr~6_combout\ & ((\Add2~99_combout\))) # (!\shiftr~6_combout\ & (\ufract~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ufract~1_combout\,
	datac => \shiftr~6_combout\,
	datad => \Add2~99_combout\,
	combout => \ShiftRight2~72_combout\);

-- Location: LCCOMB_X34_Y17_N20
\sfract~112\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~112_combout\ = (\sfract~107_combout\ & (((\ShiftRight2~46_combout\)))) # (!\sfract~107_combout\ & ((\ShiftRight2~46_combout\ & (\ShiftRight2~66_combout\)) # (!\ShiftRight2~46_combout\ & ((\ShiftRight2~72_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~107_combout\,
	datab => \ShiftRight2~66_combout\,
	datac => \ShiftRight2~72_combout\,
	datad => \ShiftRight2~46_combout\,
	combout => \sfract~112_combout\);

-- Location: LCCOMB_X34_Y17_N6
\sfract~113\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~113_combout\ = (\sfract~112_combout\ & (((\ShiftRight2~63_combout\) # (!\sfract~107_combout\)))) # (!\sfract~112_combout\ & (\ShiftRight2~68_combout\ & (\sfract~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~68_combout\,
	datab => \sfract~112_combout\,
	datac => \sfract~107_combout\,
	datad => \ShiftRight2~63_combout\,
	combout => \sfract~113_combout\);

-- Location: LCCOMB_X32_Y18_N28
\Result~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Result~23_combout\ = (!\Add8~21_combout\ & ((\Add8~10_combout\ & ((\Result~22_combout\))) # (!\Add8~10_combout\ & (\sfract~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~113_combout\,
	datab => \Add8~21_combout\,
	datac => \Add8~10_combout\,
	datad => \Result~22_combout\,
	combout => \Result~23_combout\);

-- Location: LCCOMB_X32_Y18_N22
\Result~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Result~24_combout\ = (\Result~23_combout\) # ((\Add8~21_combout\ & \ShiftLeft0~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~21_combout\,
	datac => \ShiftLeft0~71_combout\,
	datad => \Result~23_combout\,
	combout => \Result~24_combout\);

-- Location: LCCOMB_X34_Y20_N18
\sfract~114\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~114_combout\ = (\Add8~4_combout\) # ((\shiftr~7_combout\ & \shiftr~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftr~7_combout\,
	datac => \shiftr~6_combout\,
	datad => \Add8~4_combout\,
	combout => \sfract~114_combout\);

-- Location: LCCOMB_X28_Y17_N28
\sfract~115\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~115_combout\ = (\sfract~46_combout\ & (((\ufract~0_combout\) # (\sfract~114_combout\)))) # (!\sfract~46_combout\ & (\ShiftRight2~71_combout\ & ((!\sfract~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~71_combout\,
	datab => \sfract~46_combout\,
	datac => \ufract~0_combout\,
	datad => \sfract~114_combout\,
	combout => \sfract~115_combout\);

-- Location: LCCOMB_X28_Y17_N6
\sfract~116\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~116_combout\ = (\sfract~114_combout\ & ((\sfract~115_combout\ & (\ufract~1_combout\)) # (!\sfract~115_combout\ & ((\ShiftRight2~60_combout\))))) # (!\sfract~114_combout\ & (((\sfract~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~114_combout\,
	datab => \ufract~1_combout\,
	datac => \ShiftRight2~60_combout\,
	datad => \sfract~115_combout\,
	combout => \sfract~116_combout\);

-- Location: LCCOMB_X35_Y17_N20
\sfract~117\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~117_combout\ = (!\Add8~21_combout\ & (!\Add8~4_combout\ & (\Add8~7_combout\ & \ShiftRight2~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~21_combout\,
	datab => \Add8~4_combout\,
	datac => \Add8~7_combout\,
	datad => \ShiftRight2~39_combout\,
	combout => \sfract~117_combout\);

-- Location: LCCOMB_X35_Y17_N6
\sfract~118\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~118_combout\ = (\sfract~96_combout\ & ((\ShiftRight2~41_combout\) # ((\ShiftRight2~1_combout\ & \sfract~117_combout\)))) # (!\sfract~96_combout\ & (((\ShiftRight2~1_combout\ & \sfract~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~96_combout\,
	datab => \ShiftRight2~41_combout\,
	datac => \ShiftRight2~1_combout\,
	datad => \sfract~117_combout\,
	combout => \sfract~118_combout\);

-- Location: LCCOMB_X35_Y17_N24
\sfract~119\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~119_combout\ = (\sfract~59_combout\ & ((\sfract~58_combout\ & (\ShiftLeft0~63_combout\)) # (!\sfract~58_combout\ & ((\sfract~118_combout\))))) # (!\sfract~59_combout\ & (((!\sfract~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~59_combout\,
	datab => \ShiftLeft0~63_combout\,
	datac => \sfract~58_combout\,
	datad => \sfract~118_combout\,
	combout => \sfract~119_combout\);

-- Location: LCCOMB_X35_Y17_N10
\sfract~120\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~120_combout\ = (\sfract~50_combout\ & (((\sfract~119_combout\)))) # (!\sfract~50_combout\ & ((\sfract~119_combout\ & ((\sfract~116_combout\))) # (!\sfract~119_combout\ & (\ShiftRight2~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~50_combout\,
	datab => \ShiftRight2~44_combout\,
	datac => \sfract~116_combout\,
	datad => \sfract~119_combout\,
	combout => \sfract~120_combout\);

-- Location: LCCOMB_X28_Y17_N24
\sfract~121\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~121_combout\ = (\sfract~46_combout\ & (((\sfract~114_combout\)))) # (!\sfract~46_combout\ & ((\sfract~114_combout\ & (\ShiftRight2~69_combout\)) # (!\sfract~114_combout\ & ((\ShiftRight2~72_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~69_combout\,
	datab => \sfract~46_combout\,
	datac => \ShiftRight2~72_combout\,
	datad => \sfract~114_combout\,
	combout => \sfract~121_combout\);

-- Location: LCCOMB_X28_Y17_N18
\sfract~122\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~122_combout\ = (\sfract~46_combout\ & ((\sfract~121_combout\ & ((\ufract~0_combout\))) # (!\sfract~121_combout\ & (\ufract~2_combout\)))) # (!\sfract~46_combout\ & (((\sfract~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufract~2_combout\,
	datab => \sfract~46_combout\,
	datac => \ufract~0_combout\,
	datad => \sfract~121_combout\,
	combout => \sfract~122_combout\);

-- Location: LCCOMB_X35_Y17_N28
\sfract~123\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~123_combout\ = (\ShiftRight2~38_combout\ & ((\sfract~96_combout\) # ((\sfract~117_combout\ & \ShiftRight2~14_combout\)))) # (!\ShiftRight2~38_combout\ & (\sfract~117_combout\ & ((\ShiftRight2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~38_combout\,
	datab => \sfract~117_combout\,
	datac => \sfract~96_combout\,
	datad => \ShiftRight2~14_combout\,
	combout => \sfract~123_combout\);

-- Location: LCCOMB_X35_Y17_N30
\sfract~124\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~124_combout\ = (\sfract~58_combout\ & (\ShiftLeft0~60_combout\ & (\sfract~59_combout\))) # (!\sfract~58_combout\ & (((\sfract~123_combout\) # (!\sfract~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~60_combout\,
	datab => \sfract~58_combout\,
	datac => \sfract~59_combout\,
	datad => \sfract~123_combout\,
	combout => \sfract~124_combout\);

-- Location: LCCOMB_X35_Y17_N16
\sfract~125\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~125_combout\ = (\sfract~50_combout\ & (((\sfract~124_combout\)))) # (!\sfract~50_combout\ & ((\sfract~124_combout\ & (\sfract~122_combout\)) # (!\sfract~124_combout\ & ((\ShiftRight2~53_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~50_combout\,
	datab => \sfract~122_combout\,
	datac => \sfract~124_combout\,
	datad => \ShiftRight2~53_combout\,
	combout => \sfract~125_combout\);

-- Location: LCCOMB_X34_Y19_N8
\check_round~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \check_round~0_combout\ = (\sticky~4_combout\) # ((\sfract~120_combout\) # (\sfract~125_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sticky~4_combout\,
	datac => \sfract~120_combout\,
	datad => \sfract~125_combout\,
	combout => \check_round~0_combout\);

-- Location: LCCOMB_X34_Y20_N12
\LessThan56~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan56~0_combout\ = (((\shiftr~6_combout\) # (!\sfract~40_combout\)) # (!\sfract~46_combout\)) # (!\ShiftRight2~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~39_combout\,
	datab => \sfract~46_combout\,
	datac => \shiftr~6_combout\,
	datad => \sfract~40_combout\,
	combout => \LessThan56~0_combout\);

-- Location: LCCOMB_X34_Y15_N0
\LessThan57~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan57~0_combout\ = (!\Add10~12_combout\ & (!\Add10~10_combout\ & (!\Add10~16_combout\ & !\Add10~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~12_combout\,
	datab => \Add10~10_combout\,
	datac => \Add10~16_combout\,
	datad => \Add10~14_combout\,
	combout => \LessThan57~0_combout\);

-- Location: LCCOMB_X32_Y15_N0
\orx~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~56_combout\ = (\Add10~22_combout\) # ((\Add10~2_combout\) # ((\Add10~8_combout\) # (\Add10~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~22_combout\,
	datab => \Add10~2_combout\,
	datac => \Add10~8_combout\,
	datad => \Add10~18_combout\,
	combout => \orx~56_combout\);

-- Location: LCCOMB_X32_Y15_N2
\orx~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~57_combout\ = (\Add10~6_combout\) # ((\Add10~0_combout\) # ((\Add10~20_combout\) # (\Add10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~6_combout\,
	datab => \Add10~0_combout\,
	datac => \Add10~20_combout\,
	datad => \Add10~4_combout\,
	combout => \orx~57_combout\);

-- Location: LCCOMB_X32_Y15_N12
\orx~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~58_combout\ = (\ufract~2_combout\ & ((\orx~57_combout\) # ((\orx~56_combout\) # (!\LessThan57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufract~2_combout\,
	datab => \orx~57_combout\,
	datac => \LessThan57~0_combout\,
	datad => \orx~56_combout\,
	combout => \orx~58_combout\);

-- Location: LCCOMB_X32_Y15_N22
\LessThan57~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan57~1_combout\ = (!\Add10~20_combout\ & (!\Add10~22_combout\ & (\LessThan57~0_combout\ & !\Add10~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~20_combout\,
	datab => \Add10~22_combout\,
	datac => \LessThan57~0_combout\,
	datad => \Add10~18_combout\,
	combout => \LessThan57~1_combout\);

-- Location: LCCOMB_X32_Y15_N24
\LessThan81~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan81~0_combout\ = (!\Add10~4_combout\ & (!\Add10~8_combout\ & (\LessThan57~1_combout\ & !\Add10~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~4_combout\,
	datab => \Add10~8_combout\,
	datac => \LessThan57~1_combout\,
	datad => \Add10~6_combout\,
	combout => \LessThan81~0_combout\);

-- Location: LCCOMB_X32_Y15_N26
\orx~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~59_combout\ = (\ufract~0_combout\ & ((\Add10~2_combout\) # (!\LessThan81~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add10~2_combout\,
	datac => \ufract~0_combout\,
	datad => \LessThan81~0_combout\,
	combout => \orx~59_combout\);

-- Location: LCCOMB_X32_Y15_N28
\LessThan82~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan82~0_combout\ = (!\Add10~6_combout\ & (!\Add10~4_combout\ & ((!\Add10~2_combout\) # (!\Add10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~6_combout\,
	datab => \Add10~0_combout\,
	datac => \Add10~2_combout\,
	datad => \Add10~4_combout\,
	combout => \LessThan82~0_combout\);

-- Location: LCCOMB_X32_Y15_N14
\orx~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~60_combout\ = (\ufract~1_combout\ & (((\Add10~8_combout\) # (!\LessThan82~0_combout\)) # (!\LessThan57~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan57~1_combout\,
	datab => \LessThan82~0_combout\,
	datac => \Add10~8_combout\,
	datad => \ufract~1_combout\,
	combout => \orx~60_combout\);

-- Location: LCCOMB_X30_Y15_N0
\orx~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~61_combout\ = (\Add10~4_combout\) # ((\Add2~108_combout\ & ((\Add10~0_combout\) # (\Add10~2_combout\))) # (!\Add2~108_combout\ & (\Add10~0_combout\ & \Add10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~108_combout\,
	datab => \Add10~0_combout\,
	datac => \Add10~2_combout\,
	datad => \Add10~4_combout\,
	combout => \orx~61_combout\);

-- Location: LCCOMB_X30_Y15_N10
\orx~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~62_combout\ = (\Add10~8_combout\ & (\orx~61_combout\ & \Add10~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~8_combout\,
	datab => \orx~61_combout\,
	datad => \Add10~6_combout\,
	combout => \orx~62_combout\);

-- Location: LCCOMB_X30_Y15_N20
\orx~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~63_combout\ = (\Add2~106_combout\ & (((\orx~62_combout\)) # (!\LessThan57~1_combout\))) # (!\Add2~106_combout\ & (\Add2~108_combout\ & ((\orx~62_combout\) # (!\LessThan57~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~106_combout\,
	datab => \LessThan57~1_combout\,
	datac => \Add2~108_combout\,
	datad => \orx~62_combout\,
	combout => \orx~63_combout\);

-- Location: LCCOMB_X32_Y15_N16
\orx~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~64_combout\ = (\Add10~6_combout\) # ((\Add10~0_combout\ & (\Add10~2_combout\ & \Add10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~6_combout\,
	datab => \Add10~0_combout\,
	datac => \Add10~2_combout\,
	datad => \Add10~4_combout\,
	combout => \orx~64_combout\);

-- Location: LCCOMB_X32_Y15_N18
\orx~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~65_combout\ = (\Add10~20_combout\) # ((\Add10~22_combout\) # ((\Add10~8_combout\ & \orx~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~20_combout\,
	datab => \Add10~22_combout\,
	datac => \Add10~8_combout\,
	datad => \orx~64_combout\,
	combout => \orx~65_combout\);

-- Location: LCCOMB_X32_Y15_N4
\orx~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~66_combout\ = (\Add2~104_combout\ & (((\orx~65_combout\) # (\Add10~18_combout\)) # (!\LessThan57~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan57~0_combout\,
	datab => \orx~65_combout\,
	datac => \Add2~104_combout\,
	datad => \Add10~18_combout\,
	combout => \orx~66_combout\);

-- Location: LCCOMB_X32_Y15_N30
\orx~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~67_combout\ = (\Add10~22_combout\) # ((\Add10~20_combout\) # (\Add10~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add10~22_combout\,
	datac => \Add10~20_combout\,
	datad => \Add10~18_combout\,
	combout => \orx~67_combout\);

-- Location: LCCOMB_X30_Y14_N8
\orx~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~68_combout\ = (\Add10~8_combout\ & ((\Add10~6_combout\) # ((\Add10~4_combout\ & \Add10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~4_combout\,
	datab => \Add10~6_combout\,
	datac => \Add10~2_combout\,
	datad => \Add10~8_combout\,
	combout => \orx~68_combout\);

-- Location: LCCOMB_X30_Y14_N10
\orx~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~69_combout\ = (\Add2~119_combout\ & ((\orx~67_combout\) # ((\orx~68_combout\) # (!\LessThan57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \orx~67_combout\,
	datab => \Add2~119_combout\,
	datac => \orx~68_combout\,
	datad => \LessThan57~0_combout\,
	combout => \orx~69_combout\);

-- Location: LCCOMB_X30_Y14_N12
\orx~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~70_combout\ = (\orx~69_combout\) # ((\orx~66_combout\) # (\orx~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \orx~69_combout\,
	datab => \orx~66_combout\,
	datad => \orx~63_combout\,
	combout => \orx~70_combout\);

-- Location: LCCOMB_X30_Y14_N30
\orx~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~71_combout\ = (\Add10~4_combout\) # ((\Add10~2_combout\) # (\Add10~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add10~4_combout\,
	datac => \Add10~2_combout\,
	datad => \Add10~6_combout\,
	combout => \orx~71_combout\);

-- Location: LCCOMB_X32_Y16_N2
\orx~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~72_combout\ = (\Add10~8_combout\ & ((\orx~71_combout\) # ((\Add2~101_combout\ & \Add10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~101_combout\,
	datab => \Add10~0_combout\,
	datac => \orx~71_combout\,
	datad => \Add10~8_combout\,
	combout => \orx~72_combout\);

-- Location: LCCOMB_X32_Y16_N12
\orx~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~73_combout\ = (\Add2~102_combout\ & (((\orx~72_combout\)) # (!\LessThan57~1_combout\))) # (!\Add2~102_combout\ & (\Add2~101_combout\ & ((\orx~72_combout\) # (!\LessThan57~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~102_combout\,
	datab => \LessThan57~1_combout\,
	datac => \Add2~101_combout\,
	datad => \orx~72_combout\,
	combout => \orx~73_combout\);

-- Location: LCCOMB_X32_Y16_N14
\orx~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~74_combout\ = (\Add10~4_combout\ & ((\Add10~2_combout\) # ((\Add2~100_combout\) # (\Add10~0_combout\)))) # (!\Add10~4_combout\ & (\Add10~2_combout\ & (\Add2~100_combout\ & \Add10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~4_combout\,
	datab => \Add10~2_combout\,
	datac => \Add2~100_combout\,
	datad => \Add10~0_combout\,
	combout => \orx~74_combout\);

-- Location: LCCOMB_X32_Y16_N24
\orx~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~75_combout\ = (\LessThan57~1_combout\ & (((!\Add10~6_combout\ & !\orx~74_combout\)) # (!\Add10~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~8_combout\,
	datab => \Add10~6_combout\,
	datac => \orx~74_combout\,
	datad => \LessThan57~1_combout\,
	combout => \orx~75_combout\);

-- Location: LCCOMB_X32_Y16_N18
\orx~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~76_combout\ = (\orx~73_combout\) # ((!\orx~75_combout\ & ((\Add2~86_combout\) # (\Add2~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~86_combout\,
	datab => \orx~75_combout\,
	datac => \Add2~100_combout\,
	datad => \orx~73_combout\,
	combout => \orx~76_combout\);

-- Location: LCCOMB_X32_Y15_N8
\orx~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~77_combout\ = (\Add10~20_combout\) # ((\Add10~22_combout\) # ((\Add10~8_combout\) # (\Add10~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~20_combout\,
	datab => \Add10~22_combout\,
	datac => \Add10~8_combout\,
	datad => \Add10~18_combout\,
	combout => \orx~77_combout\);

-- Location: LCCOMB_X30_Y14_N16
\orx~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~78_combout\ = (\Add10~2_combout\ & (\Add10~6_combout\ & (\Add10~0_combout\ & \Add10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~2_combout\,
	datab => \Add10~6_combout\,
	datac => \Add10~0_combout\,
	datad => \Add10~4_combout\,
	combout => \orx~78_combout\);

-- Location: LCCOMB_X30_Y14_N2
\orx~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~79_combout\ = (\Add2~121_combout\ & ((\orx~77_combout\) # ((\orx~78_combout\) # (!\LessThan57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \orx~77_combout\,
	datab => \orx~78_combout\,
	datac => \Add2~121_combout\,
	datad => \LessThan57~0_combout\,
	combout => \orx~79_combout\);

-- Location: LCCOMB_X30_Y14_N20
\orx~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~80_combout\ = (\Add10~8_combout\) # ((\Add10~4_combout\ & (\Add10~6_combout\ & \Add10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~4_combout\,
	datab => \Add10~6_combout\,
	datac => \Add10~2_combout\,
	datad => \Add10~8_combout\,
	combout => \orx~80_combout\);

-- Location: LCCOMB_X30_Y14_N14
\orx~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~81_combout\ = (\Add2~120_combout\ & ((\orx~80_combout\) # ((\orx~67_combout\) # (!\LessThan57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \orx~80_combout\,
	datab => \Add2~120_combout\,
	datac => \orx~67_combout\,
	datad => \LessThan57~0_combout\,
	combout => \orx~81_combout\);

-- Location: LCCOMB_X30_Y14_N24
\orx~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~82_combout\ = (\Add10~6_combout\ & (\Add10~4_combout\ & ((\Add10~2_combout\) # (\Add10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~2_combout\,
	datab => \Add10~6_combout\,
	datac => \Add10~0_combout\,
	datad => \Add10~4_combout\,
	combout => \orx~82_combout\);

-- Location: LCCOMB_X30_Y14_N26
\orx~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~83_combout\ = (\Add2~118_combout\ & ((\orx~77_combout\) # ((\orx~82_combout\) # (!\LessThan57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \orx~77_combout\,
	datab => \orx~82_combout\,
	datac => \Add2~118_combout\,
	datad => \LessThan57~0_combout\,
	combout => \orx~83_combout\);

-- Location: LCCOMB_X32_Y15_N10
\LessThan57~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan57~2_combout\ = (!\Add10~22_combout\ & (!\Add10~20_combout\ & !\Add10~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add10~22_combout\,
	datac => \Add10~20_combout\,
	datad => \Add10~18_combout\,
	combout => \LessThan57~2_combout\);

-- Location: LCCOMB_X34_Y15_N2
\LessThan69~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan69~0_combout\ = (\LessThan57~2_combout\ & (!\Add10~8_combout\ & \LessThan57~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan57~2_combout\,
	datac => \Add10~8_combout\,
	datad => \LessThan57~0_combout\,
	combout => \LessThan69~0_combout\);

-- Location: LCCOMB_X31_Y15_N18
\orx~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~84_combout\ = (\Add2~117_combout\ & (((\Add10~4_combout\ & \Add10~6_combout\)) # (!\LessThan69~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~117_combout\,
	datab => \Add10~4_combout\,
	datac => \Add10~6_combout\,
	datad => \LessThan69~0_combout\,
	combout => \orx~84_combout\);

-- Location: LCCOMB_X30_Y14_N4
\orx~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~85_combout\ = (\orx~83_combout\) # ((\orx~79_combout\) # ((\orx~81_combout\) # (\orx~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \orx~83_combout\,
	datab => \orx~79_combout\,
	datac => \orx~81_combout\,
	datad => \orx~84_combout\,
	combout => \orx~85_combout\);

-- Location: LCCOMB_X31_Y15_N4
\LessThan70~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan70~0_combout\ = (\Add10~0_combout\ & (\Add10~4_combout\ & \Add10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add10~0_combout\,
	datac => \Add10~4_combout\,
	datad => \Add10~2_combout\,
	combout => \LessThan70~0_combout\);

-- Location: LCCOMB_X34_Y15_N4
\LessThan77~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan77~0_combout\ = (\LessThan57~2_combout\ & (\LessThan57~0_combout\ & (!\Add10~8_combout\ & !\Add10~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan57~2_combout\,
	datab => \LessThan57~0_combout\,
	datac => \Add10~8_combout\,
	datad => \Add10~6_combout\,
	combout => \LessThan77~0_combout\);

-- Location: LCCOMB_X31_Y15_N22
\orx~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~86_combout\ = (\Add2~113_combout\ & ((\LessThan70~0_combout\) # ((!\LessThan77~0_combout\)))) # (!\Add2~113_combout\ & (((!\LessThan77~0_combout\ & \Add2~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~113_combout\,
	datab => \LessThan70~0_combout\,
	datac => \LessThan77~0_combout\,
	datad => \Add2~114_combout\,
	combout => \orx~86_combout\);

-- Location: LCCOMB_X31_Y15_N8
\LessThan58~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan58~0_combout\ = (\Add10~4_combout\) # ((\Add10~0_combout\ & \Add10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add10~0_combout\,
	datac => \Add10~4_combout\,
	datad => \Add10~2_combout\,
	combout => \LessThan58~0_combout\);

-- Location: LCCOMB_X31_Y15_N10
\orx~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~87_combout\ = (\Add2~116_combout\ & (((\LessThan58~0_combout\ & \Add10~6_combout\)) # (!\LessThan69~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan69~0_combout\,
	datab => \LessThan58~0_combout\,
	datac => \Add10~6_combout\,
	datad => \Add2~116_combout\,
	combout => \orx~87_combout\);

-- Location: LCCOMB_X31_Y15_N28
\LessThan75~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan75~0_combout\ = ((\Add10~6_combout\ & ((\Add10~4_combout\) # (\Add10~2_combout\)))) # (!\LessThan69~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan69~0_combout\,
	datab => \Add10~4_combout\,
	datac => \Add10~6_combout\,
	datad => \Add10~2_combout\,
	combout => \LessThan75~0_combout\);

-- Location: LCCOMB_X31_Y15_N30
\orx~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~88_combout\ = (\orx~87_combout\) # ((\orx~86_combout\) # ((\LessThan75~0_combout\ & \Add2~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \orx~87_combout\,
	datab => \LessThan75~0_combout\,
	datac => \orx~86_combout\,
	datad => \Add2~115_combout\,
	combout => \orx~88_combout\);

-- Location: LCCOMB_X30_Y14_N6
\orx~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~89_combout\ = (\orx~76_combout\) # ((\orx~85_combout\) # ((\orx~88_combout\) # (\orx~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \orx~76_combout\,
	datab => \orx~85_combout\,
	datac => \orx~88_combout\,
	datad => \orx~70_combout\,
	combout => \orx~89_combout\);

-- Location: LCCOMB_X30_Y15_N6
\orx~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~90_combout\ = (\LessThan57~0_combout\ & (((!\Add10~8_combout\) # (!\Add10~4_combout\)) # (!\Add10~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~6_combout\,
	datab => \Add10~4_combout\,
	datac => \LessThan57~0_combout\,
	datad => \Add10~8_combout\,
	combout => \orx~90_combout\);

-- Location: LCCOMB_X30_Y15_N24
\orx~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~91_combout\ = (\Add2~111_combout\ & (((\Add10~2_combout\ & \Add10~4_combout\)) # (!\LessThan77~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan77~0_combout\,
	datab => \Add2~111_combout\,
	datac => \Add10~2_combout\,
	datad => \Add10~4_combout\,
	combout => \orx~91_combout\);

-- Location: LCCOMB_X30_Y15_N26
\orx~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~92_combout\ = (\orx~91_combout\) # ((\Add2~107_combout\ & ((!\LessThan57~2_combout\) # (!\orx~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \orx~90_combout\,
	datab => \Add2~107_combout\,
	datac => \LessThan57~2_combout\,
	datad => \orx~91_combout\,
	combout => \orx~92_combout\);

-- Location: LCCOMB_X31_Y15_N24
\LessThan84~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan84~0_combout\ = (!\Add10~0_combout\ & (!\Add10~4_combout\ & !\Add10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add10~0_combout\,
	datac => \Add10~4_combout\,
	datad => \Add10~2_combout\,
	combout => \LessThan84~0_combout\);

-- Location: LCCOMB_X31_Y15_N2
\orx~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~93_combout\ = (\Add2~112_combout\ & (((\Add10~6_combout\ & !\LessThan84~0_combout\)) # (!\LessThan69~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan69~0_combout\,
	datab => \Add10~6_combout\,
	datac => \Add2~112_combout\,
	datad => \LessThan84~0_combout\,
	combout => \orx~93_combout\);

-- Location: LCCOMB_X31_Y15_N12
\orx~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~94_combout\ = (\orx~93_combout\) # ((\orx~92_combout\) # ((\Add2~99_combout\ & !\LessThan81~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~99_combout\,
	datab => \orx~93_combout\,
	datac => \orx~92_combout\,
	datad => \LessThan81~0_combout\,
	combout => \orx~94_combout\);

-- Location: LCCOMB_X30_Y15_N28
\LessThan59~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan59~0_combout\ = (\Add10~6_combout\ & (\Add10~8_combout\ & ((\Add10~4_combout\) # (\Add10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~6_combout\,
	datab => \Add10~4_combout\,
	datac => \Add10~2_combout\,
	datad => \Add10~8_combout\,
	combout => \LessThan59~0_combout\);

-- Location: LCCOMB_X30_Y15_N14
\orx~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~95_combout\ = (\Add2~109_combout\ & (((\LessThan59~0_combout\) # (!\LessThan57~2_combout\)) # (!\LessThan57~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan57~0_combout\,
	datab => \Add2~109_combout\,
	datac => \LessThan57~2_combout\,
	datad => \LessThan59~0_combout\,
	combout => \orx~95_combout\);

-- Location: LCCOMB_X31_Y15_N14
\LessThan64~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan64~0_combout\ = (\Add10~4_combout\ & ((\Add10~0_combout\) # (\Add10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add10~0_combout\,
	datac => \Add10~4_combout\,
	datad => \Add10~2_combout\,
	combout => \LessThan64~0_combout\);

-- Location: LCCOMB_X31_Y15_N0
\orx~96\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~96_combout\ = (\orx~95_combout\) # ((\Add2~122_combout\ & ((\LessThan64~0_combout\) # (!\LessThan77~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \orx~95_combout\,
	datab => \LessThan64~0_combout\,
	datac => \LessThan77~0_combout\,
	datad => \Add2~122_combout\,
	combout => \orx~96_combout\);

-- Location: LCCOMB_X32_Y15_N20
\LessThan65~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan65~0_combout\ = ((\Add10~8_combout\ & ((\Add10~4_combout\) # (\Add10~6_combout\)))) # (!\LessThan57~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~4_combout\,
	datab => \Add10~8_combout\,
	datac => \LessThan57~1_combout\,
	datad => \Add10~6_combout\,
	combout => \LessThan65~0_combout\);

-- Location: LCCOMB_X34_Y15_N30
\LessThan61~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan61~0_combout\ = (\LessThan57~2_combout\ & (\LessThan57~0_combout\ & ((!\Add10~6_combout\) # (!\Add10~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan57~2_combout\,
	datab => \LessThan57~0_combout\,
	datac => \Add10~8_combout\,
	datad => \Add10~6_combout\,
	combout => \LessThan61~0_combout\);

-- Location: LCCOMB_X34_Y18_N20
\orx~97\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~97_combout\ = (\LessThan61~0_combout\ & (\Add2~103_combout\ & ((\LessThan65~0_combout\)))) # (!\LessThan61~0_combout\ & ((\Add2~105_combout\) # ((\Add2~103_combout\ & \LessThan65~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan61~0_combout\,
	datab => \Add2~103_combout\,
	datac => \Add2~105_combout\,
	datad => \LessThan65~0_combout\,
	combout => \orx~97_combout\);

-- Location: LCCOMB_X30_Y15_N8
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Add10~2_combout\ & (\Add10~0_combout\)) # (!\Add10~2_combout\ & ((\Add10~0_combout\ & ((\Add2~109_combout\))) # (!\Add10~0_combout\ & (\Add2~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~2_combout\,
	datab => \Add10~0_combout\,
	datac => \Add2~108_combout\,
	datad => \Add2~109_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X30_Y15_N18
\Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Add10~2_combout\ & ((\Mux2~0_combout\ & (\Add2~107_combout\)) # (!\Mux2~0_combout\ & ((\Add2~106_combout\))))) # (!\Add10~2_combout\ & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~2_combout\,
	datab => \Add2~107_combout\,
	datac => \Add2~106_combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X29_Y17_N16
\Mux2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Add10~2_combout\ & (((\Add2~104_combout\) # (\Add10~0_combout\)))) # (!\Add10~2_combout\ & (\Add2~86_combout\ & ((!\Add10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~2_combout\,
	datab => \Add2~86_combout\,
	datac => \Add2~104_combout\,
	datad => \Add10~0_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X29_Y17_N18
\Mux2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~2_combout\ & (((\Add2~105_combout\) # (!\Add10~0_combout\)))) # (!\Mux2~2_combout\ & (\Add2~119_combout\ & ((\Add10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~119_combout\,
	datab => \Mux2~2_combout\,
	datac => \Add2~105_combout\,
	datad => \Add10~0_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X30_Y15_N4
\orx~98\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~98_combout\ = (\Add10~4_combout\ & (((\Mux2~3_combout\ & !\Add10~6_combout\)))) # (!\Add10~4_combout\ & (\Mux2~1_combout\ & ((\Add10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~4_combout\,
	datab => \Mux2~1_combout\,
	datac => \Mux2~3_combout\,
	datad => \Add10~6_combout\,
	combout => \orx~98_combout\);

-- Location: LCCOMB_X32_Y16_N28
\Mux2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\Add10~2_combout\ & (((\Add2~100_combout\) # (\Add10~0_combout\)))) # (!\Add10~2_combout\ & (\Add2~101_combout\ & ((!\Add10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~101_combout\,
	datab => \Add10~2_combout\,
	datac => \Add2~100_combout\,
	datad => \Add10~0_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X32_Y16_N22
\Mux2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\Add10~0_combout\ & ((\Mux2~4_combout\ & (\Add2~103_combout\)) # (!\Mux2~4_combout\ & ((\Add2~102_combout\))))) # (!\Add10~0_combout\ & (((\Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~103_combout\,
	datab => \Add10~0_combout\,
	datac => \Add2~102_combout\,
	datad => \Mux2~4_combout\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X30_Y15_N30
\orx~99\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~99_combout\ = (\orx~98_combout\) # ((!\Add10~4_combout\ & (\Mux2~5_combout\ & !\Add10~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~4_combout\,
	datab => \orx~98_combout\,
	datac => \Mux2~5_combout\,
	datad => \Add10~6_combout\,
	combout => \orx~99_combout\);

-- Location: LCCOMB_X31_Y15_N26
\orx~100\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~100_combout\ = (\LessThan69~0_combout\ & (\orx~99_combout\ & ((\Add10~8_combout\)))) # (!\LessThan69~0_combout\ & ((\Add2~110_combout\) # ((\orx~99_combout\ & \Add10~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan69~0_combout\,
	datab => \orx~99_combout\,
	datac => \Add2~110_combout\,
	datad => \Add10~8_combout\,
	combout => \orx~100_combout\);

-- Location: LCCOMB_X31_Y15_N20
\orx~101\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~101_combout\ = (\orx~94_combout\) # ((\orx~96_combout\) # ((\orx~100_combout\) # (\orx~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \orx~94_combout\,
	datab => \orx~96_combout\,
	datac => \orx~100_combout\,
	datad => \orx~97_combout\,
	combout => \orx~101_combout\);

-- Location: LCCOMB_X34_Y16_N2
\Mux2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\Add10~0_combout\ & ((\Add10~2_combout\) # ((\Add2~111_combout\)))) # (!\Add10~0_combout\ & (!\Add10~2_combout\ & ((\Add2~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~0_combout\,
	datab => \Add10~2_combout\,
	datac => \Add2~111_combout\,
	datad => \Add2~122_combout\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X34_Y16_N28
\Mux2~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\Add10~2_combout\ & ((\Mux2~6_combout\ & (\Add2~114_combout\)) # (!\Mux2~6_combout\ & ((\Add2~113_combout\))))) # (!\Add10~2_combout\ & (((\Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~114_combout\,
	datab => \Add2~113_combout\,
	datac => \Add10~2_combout\,
	datad => \Mux2~6_combout\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X30_Y16_N22
\Mux2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\Add10~0_combout\ & (\Add10~2_combout\)) # (!\Add10~0_combout\ & ((\Add10~2_combout\ & (\Add2~116_combout\)) # (!\Add10~2_combout\ & ((\Add2~112_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~0_combout\,
	datab => \Add10~2_combout\,
	datac => \Add2~116_combout\,
	datad => \Add2~112_combout\,
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X30_Y16_N24
\Mux2~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = (\Add10~0_combout\ & ((\Mux2~8_combout\ & ((\Add2~117_combout\))) # (!\Mux2~8_combout\ & (\Add2~115_combout\)))) # (!\Add10~0_combout\ & (((\Mux2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~115_combout\,
	datab => \Add10~0_combout\,
	datac => \Mux2~8_combout\,
	datad => \Add2~117_combout\,
	combout => \Mux2~9_combout\);

-- Location: LCCOMB_X28_Y17_N20
\Mux2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~10_combout\ = (\Add10~2_combout\ & ((\ufract~1_combout\) # ((\Add10~0_combout\)))) # (!\Add10~2_combout\ & (((\ufract~2_combout\ & !\Add10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~2_combout\,
	datab => \ufract~1_combout\,
	datac => \ufract~2_combout\,
	datad => \Add10~0_combout\,
	combout => \Mux2~10_combout\);

-- Location: LCCOMB_X28_Y17_N14
\Mux2~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~11_combout\ = (\Add10~0_combout\ & ((\Mux2~10_combout\ & (\Add2~99_combout\)) # (!\Mux2~10_combout\ & ((\ufract~0_combout\))))) # (!\Add10~0_combout\ & (((\Mux2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~0_combout\,
	datab => \Add2~99_combout\,
	datac => \ufract~0_combout\,
	datad => \Mux2~10_combout\,
	combout => \Mux2~11_combout\);

-- Location: LCCOMB_X30_Y14_N0
\Mux2~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~12_combout\ = (\Add10~4_combout\ & (((\Add10~6_combout\)))) # (!\Add10~4_combout\ & ((\Add10~6_combout\ & ((\Mux2~9_combout\))) # (!\Add10~6_combout\ & (\Mux2~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~11_combout\,
	datab => \Add10~4_combout\,
	datac => \Mux2~9_combout\,
	datad => \Add10~6_combout\,
	combout => \Mux2~12_combout\);

-- Location: LCCOMB_X30_Y16_N26
\Mux2~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~13_combout\ = (\Add10~0_combout\ & (((\Add2~120_combout\) # (\Add10~2_combout\)))) # (!\Add10~0_combout\ & (\Add2~118_combout\ & ((!\Add10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~118_combout\,
	datab => \Add2~120_combout\,
	datac => \Add10~0_combout\,
	datad => \Add10~2_combout\,
	combout => \Mux2~13_combout\);

-- Location: LCCOMB_X30_Y14_N18
\Mux2~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~14_combout\ = (\Add10~2_combout\ & ((\Mux2~13_combout\ & (\Add2~110_combout\)) # (!\Mux2~13_combout\ & ((\Add2~121_combout\))))) # (!\Add10~2_combout\ & (((\Mux2~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~110_combout\,
	datab => \Add10~2_combout\,
	datac => \Add2~121_combout\,
	datad => \Mux2~13_combout\,
	combout => \Mux2~14_combout\);

-- Location: LCCOMB_X30_Y14_N28
\Mux2~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~15_combout\ = (\Mux2~12_combout\ & ((\Mux2~14_combout\) # ((!\Add10~4_combout\)))) # (!\Mux2~12_combout\ & (((\Mux2~7_combout\ & \Add10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~14_combout\,
	datab => \Mux2~12_combout\,
	datac => \Mux2~7_combout\,
	datad => \Add10~4_combout\,
	combout => \Mux2~15_combout\);

-- Location: LCCOMB_X30_Y14_N22
\orx~102\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~102_combout\ = (\orx~89_combout\) # ((\orx~101_combout\) # ((\Mux2~15_combout\ & !\Add10~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \orx~89_combout\,
	datab => \Mux2~15_combout\,
	datac => \orx~101_combout\,
	datad => \Add10~8_combout\,
	combout => \orx~102_combout\);

-- Location: LCCOMB_X32_Y15_N6
\orx~103\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~103_combout\ = (\orx~59_combout\) # ((\orx~102_combout\) # ((\orx~60_combout\) # (\orx~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \orx~59_combout\,
	datab => \orx~102_combout\,
	datac => \orx~60_combout\,
	datad => \orx~58_combout\,
	combout => \orx~103_combout\);

-- Location: LCCOMB_X32_Y18_N24
\check_round~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \check_round~1_combout\ = (\check_round~0_combout\) # ((\orx~103_combout\ & (!\Add8~21_combout\ & \LessThan56~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \orx~103_combout\,
	datab => \Add8~21_combout\,
	datac => \check_round~0_combout\,
	datad => \LessThan56~0_combout\,
	combout => \check_round~1_combout\);

-- Location: LCCOMB_X32_Y18_N2
\Result~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Result~25_combout\ = (\sfract~135_combout\ & (\Result~24_combout\ & ((\check_round~1_combout\) # (\sfract~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~135_combout\,
	datab => \check_round~1_combout\,
	datac => \Result~24_combout\,
	datad => \sfract~111_combout\,
	combout => \Result~25_combout\);

-- Location: LCCOMB_X34_Y18_N22
\sfract~126\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~126_combout\ = (\Add8~21_combout\ & ((\ShiftLeft0~49_combout\))) # (!\Add8~21_combout\ & (\sfract~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sfract~43_combout\,
	datac => \Add8~21_combout\,
	datad => \ShiftLeft0~49_combout\,
	combout => \sfract~126_combout\);

-- Location: LCCOMB_X27_Y23_N28
\orx~104\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~104_combout\ = (!\ShiftRight0~2_combout\ & ((\Result~13_combout\) # ((\Result~12_combout\) # (!\Result~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result~13_combout\,
	datab => \ShiftRight0~2_combout\,
	datac => \Result~12_combout\,
	datad => \Result~15_combout\,
	combout => \orx~104_combout\);

-- Location: LCCOMB_X25_Y21_N12
\fracts~164\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~164_combout\ = (!\Add0~16_combout\ & (\Equal0~0_combout\ & (\ShiftRight1~18_combout\ & !\Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Equal0~0_combout\,
	datac => \ShiftRight1~18_combout\,
	datad => \Add0~8_combout\,
	combout => \fracts~164_combout\);

-- Location: LCCOMB_X24_Y19_N6
\fracts~165\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~165_combout\ = (\fracts~55_combout\ & (!\Add0~16_combout\ & (!\Add0~8_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~55_combout\,
	datab => \Add0~16_combout\,
	datac => \Add0~8_combout\,
	datad => \Equal0~0_combout\,
	combout => \fracts~165_combout\);

-- Location: LCCOMB_X23_Y21_N30
\fracts~166\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~166_combout\ = (\Equal0~2_combout\) # ((\Add0~16_combout\) # ((\Add0~8_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Add0~16_combout\,
	datac => \Equal0~0_combout\,
	datad => \Add0~8_combout\,
	combout => \fracts~166_combout\);

-- Location: LCCOMB_X26_Y22_N22
\fracts~168\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~168_combout\ = (\LessThan27~0_combout\ & (!\Add0~16_combout\ & (\fracts~113_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan27~0_combout\,
	datab => \Add0~16_combout\,
	datac => \fracts~113_combout\,
	datad => \Equal0~0_combout\,
	combout => \fracts~168_combout\);

-- Location: LCCOMB_X29_Y18_N26
\Add2~101\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~101_combout\ = (\a[31]~input_o\ & ((\b[31]~input_o\ & (\Add2~74_combout\)) # (!\b[31]~input_o\ & ((\Add3~32_combout\))))) # (!\a[31]~input_o\ & ((\b[31]~input_o\ & ((\Add3~32_combout\))) # (!\b[31]~input_o\ & (\Add2~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \Add2~74_combout\,
	datac => \Add3~32_combout\,
	datad => \b[31]~input_o\,
	combout => \Add2~101_combout\);

-- Location: LCCOMB_X29_Y16_N12
\Add2~121\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~121_combout\ = (\Add3~28_combout\ & ((\Add2~70_combout\) # (\a[31]~input_o\ $ (\b[31]~input_o\)))) # (!\Add3~28_combout\ & (\Add2~70_combout\ & (\a[31]~input_o\ $ (!\b[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~28_combout\,
	datab => \Add2~70_combout\,
	datac => \a[31]~input_o\,
	datad => \b[31]~input_o\,
	combout => \Add2~121_combout\);

-- Location: LCCOMB_X32_Y18_N12
\sfract~127\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~127_combout\ = (\ShiftRight2~39_combout\ & (!\Add8~21_combout\ & (!\Add8~10_combout\ & \sfract~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~39_combout\,
	datab => \Add8~21_combout\,
	datac => \Add8~10_combout\,
	datad => \sfract~49_combout\,
	combout => \sfract~127_combout\);

-- Location: LCCOMB_X32_Y18_N14
\sfract~128\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~128_combout\ = (\ShiftRight2~39_combout\ & (!\Add8~21_combout\ & (!\Add8~10_combout\ & \sfract~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~39_combout\,
	datab => \Add8~21_combout\,
	datac => \Add8~10_combout\,
	datad => \sfract~55_combout\,
	combout => \sfract~128_combout\);

-- Location: LCCOMB_X35_Y17_N4
\sfract~131\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~131_combout\ = (!\sfract~50_combout\ & (!\Add8~7_combout\ & (!\Add8~4_combout\ & \ShiftRight2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~50_combout\,
	datab => \Add8~7_combout\,
	datac => \Add8~4_combout\,
	datad => \ShiftRight2~14_combout\,
	combout => \sfract~131_combout\);

-- Location: LCCOMB_X32_Y18_N6
\sfract~135\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~135_combout\ = (\ShiftRight2~39_combout\ & (((\sfract~48_combout\ & !\sfract~35_combout\)) # (!\Add8~21_combout\))) # (!\ShiftRight2~39_combout\ & (((\sfract~48_combout\ & !\sfract~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~39_combout\,
	datab => \Add8~21_combout\,
	datac => \sfract~48_combout\,
	datad => \sfract~35_combout\,
	combout => \sfract~135_combout\);

-- Location: LCCOMB_X26_Y22_N28
\sticky~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sticky~3_combout\ = (\LessThan27~0_combout\ & (((\ShiftRight1~41_combout\) # (\orx~55_combout\)))) # (!\LessThan27~0_combout\ & (!\Result~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan27~0_combout\,
	datab => \Result~26_combout\,
	datac => \ShiftRight1~41_combout\,
	datad => \orx~55_combout\,
	combout => \sticky~3_combout\);

-- Location: LCCOMB_X26_Y22_N14
\sticky~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sticky~4_combout\ = (\sticky~0_combout\) # ((\sticky~2_combout\) # ((!\Add0~16_combout\ & \sticky~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sticky~0_combout\,
	datab => \Add0~16_combout\,
	datac => \sticky~2_combout\,
	datad => \sticky~3_combout\,
	combout => \sticky~4_combout\);

-- Location: IOIBUF_X52_Y13_N1
\a[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(25),
	o => \a[25]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\b[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: IOIBUF_X52_Y10_N8
\b[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(19),
	o => \b[19]~input_o\);

-- Location: IOIBUF_X41_Y0_N22
\b[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(29),
	o => \b[29]~input_o\);

-- Location: IOIBUF_X21_Y41_N1
\a[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(18),
	o => \a[18]~input_o\);

-- Location: IOOBUF_X34_Y41_N2
\Sum[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sumfp[-23]~q\,
	devoe => ww_devoe,
	o => \Sum[0]~output_o\);

-- Location: IOOBUF_X52_Y10_N2
\Sum[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sumfp[-22]~q\,
	devoe => ww_devoe,
	o => \Sum[1]~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\Sum[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sumfp[-21]~q\,
	devoe => ww_devoe,
	o => \Sum[2]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\Sum[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sumfp[-20]~q\,
	devoe => ww_devoe,
	o => \Sum[3]~output_o\);

-- Location: IOOBUF_X10_Y41_N9
\Sum[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sumfp[-19]~q\,
	devoe => ww_devoe,
	o => \Sum[4]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\Sum[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sumfp[-18]~q\,
	devoe => ww_devoe,
	o => \Sum[5]~output_o\);

-- Location: IOOBUF_X52_Y19_N2
\Sum[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sumfp[-17]~q\,
	devoe => ww_devoe,
	o => \Sum[6]~output_o\);

-- Location: IOOBUF_X41_Y41_N9
\Sum[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sumfp[-16]~q\,
	devoe => ww_devoe,
	o => \Sum[7]~output_o\);

-- Location: IOOBUF_X41_Y41_N23
\Sum[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sumfp[-15]~q\,
	devoe => ww_devoe,
	o => \Sum[8]~output_o\);

-- Location: IOOBUF_X52_Y31_N9
\Sum[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sumfp[-14]~q\,
	devoe => ww_devoe,
	o => \Sum[9]~output_o\);

-- Location: IOOBUF_X52_Y13_N9
\Sum[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sumfp[-13]~q\,
	devoe => ww_devoe,
	o => \Sum[10]~output_o\);

-- Location: IOOBUF_X34_Y41_N9
\Sum[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sumfp[-12]~q\,
	devoe => ww_devoe,
	o => \Sum[11]~output_o\);

-- Location: IOOBUF_X52_Y23_N2
\Sum[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sumfp[-11]~q\,
	devoe => ww_devoe,
	o => \Sum[12]~output_o\);

-- Location: IOOBUF_X38_Y41_N2
\Sum[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sumfp[-10]~q\,
	devoe => ww_devoe,
	o => \Sum[13]~output_o\);

-- Location: IOOBUF_X38_Y41_N9
\Sum[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sumfp[-9]~q\,
	devoe => ww_devoe,
	o => \Sum[14]~output_o\);

-- Location: IOOBUF_X52_Y25_N9
\Sum[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sumfp[-8]~q\,
	devoe => ww_devoe,
	o => \Sum[15]~output_o\);

-- Location: IOOBUF_X31_Y41_N23
\Sum[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sumfp[-7]~q\,
	devoe => ww_devoe,
	o => \Sum[16]~output_o\);

-- Location: IOOBUF_X36_Y41_N2
\Sum[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sumfp[-6]~q\,
	devoe => ww_devoe,
	o => \Sum[17]~output_o\);

-- Location: IOOBUF_X36_Y41_N9
\Sum[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sumfp[-5]~q\,
	devoe => ww_devoe,
	o => \Sum[18]~output_o\);

-- Location: IOOBUF_X52_Y31_N2
\Sum[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sumfp[-4]~q\,
	devoe => ww_devoe,
	o => \Sum[19]~output_o\);

-- Location: IOOBUF_X52_Y27_N2
\Sum[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sumfp[-3]~q\,
	devoe => ww_devoe,
	o => \Sum[20]~output_o\);

-- Location: IOOBUF_X52_Y16_N9
\Sum[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sumfp[-2]~q\,
	devoe => ww_devoe,
	o => \Sum[21]~output_o\);

-- Location: IOOBUF_X41_Y41_N2
\Sum[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sumfp[-1]~q\,
	devoe => ww_devoe,
	o => \Sum[22]~output_o\);

-- Location: IOOBUF_X52_Y28_N9
\Sum[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Sumfp(0),
	devoe => ww_devoe,
	o => \Sum[23]~output_o\);

-- Location: IOOBUF_X52_Y28_N2
\Sum[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Sumfp(1),
	devoe => ww_devoe,
	o => \Sum[24]~output_o\);

-- Location: IOOBUF_X31_Y41_N2
\Sum[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Sumfp(2),
	devoe => ww_devoe,
	o => \Sum[25]~output_o\);

-- Location: IOOBUF_X52_Y30_N2
\Sum[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Sumfp(3),
	devoe => ww_devoe,
	o => \Sum[26]~output_o\);

-- Location: IOOBUF_X31_Y41_N9
\Sum[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Sumfp(4),
	devoe => ww_devoe,
	o => \Sum[27]~output_o\);

-- Location: IOOBUF_X52_Y27_N9
\Sum[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Sumfp(5),
	devoe => ww_devoe,
	o => \Sum[28]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\Sum[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Sumfp(6),
	devoe => ww_devoe,
	o => \Sum[29]~output_o\);

-- Location: IOOBUF_X41_Y0_N16
\Sum[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Sumfp(7),
	devoe => ww_devoe,
	o => \Sum[30]~output_o\);

-- Location: IOOBUF_X12_Y41_N2
\Sum[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Sumfp(8),
	devoe => ww_devoe,
	o => \Sum[31]~output_o\);

-- Location: IOIBUF_X27_Y0_N15
\Clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G17
\Clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X34_Y0_N8
\b[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(30),
	o => \b[30]~input_o\);

-- Location: IOIBUF_X52_Y32_N1
\a[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(30),
	o => \a[30]~input_o\);

-- Location: IOIBUF_X36_Y0_N8
\a[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(29),
	o => \a[29]~input_o\);

-- Location: IOIBUF_X27_Y0_N1
\a[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(28),
	o => \a[28]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\b[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(27),
	o => \b[27]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\a[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(26),
	o => \a[26]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\b[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(25),
	o => \b[25]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\b[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(24),
	o => \b[24]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\b[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(26),
	o => \b[26]~input_o\);

-- Location: IOIBUF_X52_Y23_N8
\b[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(23),
	o => \b[23]~input_o\);

-- Location: LCCOMB_X29_Y22_N14
\Result~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Result~10_combout\ = (\b[25]~input_o\) # ((\b[26]~input_o\) # ((\b[23]~input_o\) # (\b[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[25]~input_o\,
	datab => \b[26]~input_o\,
	datac => \b[23]~input_o\,
	datad => \b[24]~input_o\,
	combout => \Result~10_combout\);

-- Location: IOIBUF_X12_Y0_N8
\b[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(28),
	o => \b[28]~input_o\);

-- Location: LCCOMB_X28_Y20_N4
\Result~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Result~11_combout\ = (\b[29]~input_o\) # ((\b[27]~input_o\) # ((\b[28]~input_o\) # (\b[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[29]~input_o\,
	datab => \b[27]~input_o\,
	datac => \b[28]~input_o\,
	datad => \b[30]~input_o\,
	combout => \Result~11_combout\);

-- Location: LCCOMB_X28_Y22_N10
\exp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exp~0_combout\ = (\b[23]~input_o\) # ((!\Result~10_combout\ & !\Result~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[23]~input_o\,
	datab => \Result~10_combout\,
	datac => \Result~11_combout\,
	combout => \exp~0_combout\);

-- Location: LCCOMB_X28_Y20_N14
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\exp~1_combout\ & ((GND) # (!\exp~0_combout\))) # (!\exp~1_combout\ & (\exp~0_combout\ $ (GND)))
-- \Add0~1\ = CARRY((\exp~1_combout\) # (!\exp~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exp~1_combout\,
	datab => \exp~0_combout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X28_Y20_N16
\Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\a[24]~input_o\ & ((\b[24]~input_o\ & (!\Add0~1\)) # (!\b[24]~input_o\ & (\Add0~1\ & VCC)))) # (!\a[24]~input_o\ & ((\b[24]~input_o\ & ((\Add0~1\) # (GND))) # (!\b[24]~input_o\ & (!\Add0~1\))))
-- \Add0~3\ = CARRY((\a[24]~input_o\ & (\b[24]~input_o\ & !\Add0~1\)) # (!\a[24]~input_o\ & ((\b[24]~input_o\) # (!\Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[24]~input_o\,
	datab => \b[24]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X28_Y20_N18
\Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\a[25]~input_o\ $ (\b[25]~input_o\ $ (\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\a[25]~input_o\ & ((!\Add0~3\) # (!\b[25]~input_o\))) # (!\a[25]~input_o\ & (!\b[25]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[25]~input_o\,
	datab => \b[25]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X28_Y20_N20
\Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\b[26]~input_o\ & ((\a[26]~input_o\ & (!\Add0~5\)) # (!\a[26]~input_o\ & ((\Add0~5\) # (GND))))) # (!\b[26]~input_o\ & ((\a[26]~input_o\ & (\Add0~5\ & VCC)) # (!\a[26]~input_o\ & (!\Add0~5\))))
-- \Add0~7\ = CARRY((\b[26]~input_o\ & ((!\Add0~5\) # (!\a[26]~input_o\))) # (!\b[26]~input_o\ & (!\a[26]~input_o\ & !\Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[26]~input_o\,
	datab => \a[26]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X28_Y20_N22
\Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\a[27]~input_o\ $ (\b[27]~input_o\ $ (\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\a[27]~input_o\ & ((!\Add0~7\) # (!\b[27]~input_o\))) # (!\a[27]~input_o\ & (!\b[27]~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[27]~input_o\,
	datab => \b[27]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X28_Y20_N24
\Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\b[28]~input_o\ & ((\a[28]~input_o\ & (!\Add0~9\)) # (!\a[28]~input_o\ & ((\Add0~9\) # (GND))))) # (!\b[28]~input_o\ & ((\a[28]~input_o\ & (\Add0~9\ & VCC)) # (!\a[28]~input_o\ & (!\Add0~9\))))
-- \Add0~11\ = CARRY((\b[28]~input_o\ & ((!\Add0~9\) # (!\a[28]~input_o\))) # (!\b[28]~input_o\ & (!\a[28]~input_o\ & !\Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[28]~input_o\,
	datab => \a[28]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X28_Y20_N26
\Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\b[29]~input_o\ $ (\a[29]~input_o\ $ (\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\b[29]~input_o\ & (\a[29]~input_o\ & !\Add0~11\)) # (!\b[29]~input_o\ & ((\a[29]~input_o\) # (!\Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[29]~input_o\,
	datab => \a[29]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X28_Y20_N28
\Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\a[30]~input_o\ & ((\b[30]~input_o\ & (!\Add0~13\)) # (!\b[30]~input_o\ & ((\Add0~13\) # (GND))))) # (!\a[30]~input_o\ & ((\b[30]~input_o\ & (\Add0~13\ & VCC)) # (!\b[30]~input_o\ & (!\Add0~13\))))
-- \Add0~15\ = CARRY((\a[30]~input_o\ & ((!\Add0~13\) # (!\b[30]~input_o\))) # (!\a[30]~input_o\ & (!\b[30]~input_o\ & !\Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[30]~input_o\,
	datab => \b[30]~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X28_Y20_N30
\Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = \b[30]~input_o\ $ (\Add0~15\ $ (\a[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b[30]~input_o\,
	datad => \a[30]~input_o\,
	cin => \Add0~15\,
	combout => \Add0~16_combout\);

-- Location: IOIBUF_X27_Y0_N8
\a[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(27),
	o => \a[27]~input_o\);

-- Location: LCCOMB_X29_Y20_N2
\rexpon~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rexpon~3_combout\ = (\Add0~16_combout\ & ((\b[27]~input_o\))) # (!\Add0~16_combout\ & (\a[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~16_combout\,
	datac => \a[27]~input_o\,
	datad => \b[27]~input_o\,
	combout => \rexpon~3_combout\);

-- Location: LCCOMB_X29_Y22_N18
\rexpon~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rexpon~4_combout\ = (\Add0~16_combout\ & (\b[26]~input_o\)) # (!\Add0~16_combout\ & ((\a[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[26]~input_o\,
	datac => \Add0~16_combout\,
	datad => \a[26]~input_o\,
	combout => \rexpon~4_combout\);

-- Location: IOIBUF_X52_Y21_N1
\a[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(24),
	o => \a[24]~input_o\);

-- Location: LCCOMB_X29_Y22_N6
\rexpon~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rexpon~6_combout\ = (\Add0~16_combout\ & (\b[24]~input_o\)) # (!\Add0~16_combout\ & ((\a[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[24]~input_o\,
	datac => \Add0~16_combout\,
	datad => \a[24]~input_o\,
	combout => \rexpon~6_combout\);

-- Location: IOIBUF_X52_Y21_N8
\a[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(23),
	o => \a[23]~input_o\);

-- Location: LCCOMB_X29_Y22_N0
\Result~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Result~12_combout\ = (\a[25]~input_o\) # ((\a[24]~input_o\) # ((\a[26]~input_o\) # (\a[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[25]~input_o\,
	datab => \a[24]~input_o\,
	datac => \a[26]~input_o\,
	datad => \a[23]~input_o\,
	combout => \Result~12_combout\);

-- Location: LCCOMB_X28_Y20_N6
\Result~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Result~13_combout\ = (\a[30]~input_o\) # ((\a[29]~input_o\) # ((\a[27]~input_o\) # (\a[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[30]~input_o\,
	datab => \a[29]~input_o\,
	datac => \a[27]~input_o\,
	datad => \a[28]~input_o\,
	combout => \Result~13_combout\);

-- Location: LCCOMB_X27_Y23_N8
\exp~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exp~1_combout\ = (\a[23]~input_o\) # ((!\Result~12_combout\ & !\Result~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[23]~input_o\,
	datac => \Result~12_combout\,
	datad => \Result~13_combout\,
	combout => \exp~1_combout\);

-- Location: LCCOMB_X29_Y20_N4
\rexpon~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rexpon~7_combout\ = (\Add0~16_combout\ & ((\exp~0_combout\))) # (!\Add0~16_combout\ & (\exp~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~16_combout\,
	datac => \exp~1_combout\,
	datad => \exp~0_combout\,
	combout => \rexpon~7_combout\);

-- Location: LCCOMB_X29_Y20_N10
\Add7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = \rexpon~7_combout\ $ (VCC)
-- \Add7~1\ = CARRY(\rexpon~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rexpon~7_combout\,
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X29_Y20_N18
\Add7~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (\rexpon~3_combout\ & ((GND) # (!\Add7~7\))) # (!\rexpon~3_combout\ & (\Add7~7\ $ (GND)))
-- \Add7~9\ = CARRY((\rexpon~3_combout\) # (!\Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rexpon~3_combout\,
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X29_Y23_N0
\Add8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~1_cout\ = CARRY((!\Add7~2_combout\ & !\Add7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~2_combout\,
	datab => \Add7~0_combout\,
	datad => VCC,
	cout => \Add8~1_cout\);

-- Location: LCCOMB_X29_Y23_N2
\Add8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (\Add7~4_combout\ & ((\Add8~1_cout\) # (GND))) # (!\Add7~4_combout\ & (!\Add8~1_cout\))
-- \Add8~3\ = CARRY((\Add7~4_combout\) # (!\Add8~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~4_combout\,
	datad => VCC,
	cin => \Add8~1_cout\,
	combout => \Add8~2_combout\,
	cout => \Add8~3\);

-- Location: LCCOMB_X29_Y23_N4
\Add8~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~5_combout\ = (\Add7~6_combout\ & (!\Add8~3\ & VCC)) # (!\Add7~6_combout\ & (\Add8~3\ $ (GND)))
-- \Add8~6\ = CARRY((!\Add7~6_combout\ & !\Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~6_combout\,
	datad => VCC,
	cin => \Add8~3\,
	combout => \Add8~5_combout\,
	cout => \Add8~6\);

-- Location: LCCOMB_X29_Y23_N6
\Add8~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = (\Add7~8_combout\ & ((\Add8~6\) # (GND))) # (!\Add7~8_combout\ & (!\Add8~6\))
-- \Add8~9\ = CARRY((\Add7~8_combout\) # (!\Add8~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add7~8_combout\,
	datad => VCC,
	cin => \Add8~6\,
	combout => \Add8~8_combout\,
	cout => \Add8~9\);

-- Location: LCCOMB_X27_Y21_N0
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Add0~14_combout\ & (!\Add0~10_combout\ & !\Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~14_combout\,
	datac => \Add0~10_combout\,
	datad => \Add0~12_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X23_Y21_N0
\LessThan27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan27~0_combout\ = (\Equal0~0_combout\ & (((!\Add0~6_combout\) # (!\Add0~4_combout\)) # (!\Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Equal0~0_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~6_combout\,
	combout => \LessThan27~0_combout\);

-- Location: LCCOMB_X26_Y22_N24
\fracts~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~18_combout\ = (\LessThan27~0_combout\ & !\Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan27~0_combout\,
	datad => \Add0~16_combout\,
	combout => \fracts~18_combout\);

-- Location: LCCOMB_X25_Y21_N16
\LessThan0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!\Add0~6_combout\ & !\Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~6_combout\,
	datad => \Add0~8_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X26_Y20_N12
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Add0~0_combout\ & (!\Add0~4_combout\ & !\Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~2_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X25_Y21_N6
\Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Add0~16_combout\ & (\LessThan0~2_combout\ & (\Equal0~0_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \LessThan0~2_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: IOIBUF_X18_Y41_N8
\b[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(9),
	o => \b[9]~input_o\);

-- Location: LCCOMB_X23_Y23_N10
\ShiftRight1~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~23_combout\ = (\Add0~0_combout\ & (\b[10]~input_o\)) # (!\Add0~0_combout\ & ((\b[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[10]~input_o\,
	datac => \b[9]~input_o\,
	datad => \Add0~0_combout\,
	combout => \ShiftRight1~23_combout\);

-- Location: LCCOMB_X24_Y19_N8
\ShiftRight1~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~47_combout\ = (\Add0~2_combout\ & ((\ShiftRight1~23_combout\))) # (!\Add0~2_combout\ & (\ShiftRight1~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~25_combout\,
	datac => \ShiftRight1~23_combout\,
	datad => \Add0~2_combout\,
	combout => \ShiftRight1~47_combout\);

-- Location: LCCOMB_X24_Y19_N18
\fracts~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~28_combout\ = (\Add0~6_combout\ & ((\Add0~4_combout\ & (\ShiftRight1~46_combout\)) # (!\Add0~4_combout\ & ((\ShiftRight1~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~46_combout\,
	datab => \Add0~4_combout\,
	datac => \ShiftRight1~47_combout\,
	datad => \Add0~6_combout\,
	combout => \fracts~28_combout\);

-- Location: IOIBUF_X23_Y41_N1
\b[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(20),
	o => \b[20]~input_o\);

-- Location: LCCOMB_X25_Y18_N28
\ShiftRight1~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~29_combout\ = (\Add0~0_combout\ & ((\b[20]~input_o\))) # (!\Add0~0_combout\ & (\b[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[19]~input_o\,
	datab => \b[20]~input_o\,
	datac => \Add0~0_combout\,
	combout => \ShiftRight1~29_combout\);

-- Location: IOIBUF_X16_Y0_N8
\b[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(22),
	o => \b[22]~input_o\);

-- Location: IOIBUF_X14_Y41_N1
\b[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(21),
	o => \b[21]~input_o\);

-- Location: LCCOMB_X28_Y22_N18
\ShiftRight1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~20_combout\ = (\Add0~0_combout\ & (\b[22]~input_o\)) # (!\Add0~0_combout\ & ((\b[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[22]~input_o\,
	datac => \b[21]~input_o\,
	datad => \Add0~0_combout\,
	combout => \ShiftRight1~20_combout\);

-- Location: LCCOMB_X24_Y19_N24
\ShiftRight1~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~42_combout\ = (\Add0~2_combout\ & ((\ShiftRight1~20_combout\))) # (!\Add0~2_combout\ & (\ShiftRight1~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datac => \ShiftRight1~29_combout\,
	datad => \ShiftRight1~20_combout\,
	combout => \ShiftRight1~42_combout\);

-- Location: LCCOMB_X24_Y19_N4
\ShiftRight1~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~44_combout\ = (\Add0~4_combout\ & ((\ShiftRight1~42_combout\))) # (!\Add0~4_combout\ & (\ShiftRight1~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~43_combout\,
	datab => \ShiftRight1~42_combout\,
	datac => \Add0~4_combout\,
	combout => \ShiftRight1~44_combout\);

-- Location: LCCOMB_X28_Y22_N28
\Result~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Result~16_combout\ = (\Result~10_combout\) # (\Result~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Result~10_combout\,
	datac => \Result~11_combout\,
	combout => \Result~16_combout\);

-- Location: LCCOMB_X26_Y20_N6
\ShiftRight1~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~45_combout\ = (\Add0~6_combout\ & (\Equal0~1_combout\ & ((\Result~16_combout\)))) # (!\Add0~6_combout\ & (((\ShiftRight1~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Add0~6_combout\,
	datac => \ShiftRight1~44_combout\,
	datad => \Result~16_combout\,
	combout => \ShiftRight1~45_combout\);

-- Location: LCCOMB_X26_Y22_N12
\fracts~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~32_combout\ = (\Add0~8_combout\ & (((\ShiftRight1~45_combout\)))) # (!\Add0~8_combout\ & ((\fracts~31_combout\) # ((\fracts~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~31_combout\,
	datab => \fracts~28_combout\,
	datac => \Add0~8_combout\,
	datad => \ShiftRight1~45_combout\,
	combout => \fracts~32_combout\);

-- Location: LCCOMB_X26_Y22_N30
\fracts~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~33_combout\ = (\fracts~27_combout\) # ((\fracts~18_combout\ & (!\Equal0~2_combout\ & \fracts~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~27_combout\,
	datab => \fracts~18_combout\,
	datac => \Equal0~2_combout\,
	datad => \fracts~32_combout\,
	combout => \fracts~33_combout\);

-- Location: IOIBUF_X31_Y41_N15
\b[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(8),
	o => \b[8]~input_o\);

-- Location: LCCOMB_X23_Y23_N2
\ShiftRight1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~3_combout\ = (\Add0~0_combout\ & ((\b[9]~input_o\))) # (!\Add0~0_combout\ & (\b[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[8]~input_o\,
	datac => \b[9]~input_o\,
	datad => \Add0~0_combout\,
	combout => \ShiftRight1~3_combout\);

-- Location: IOIBUF_X23_Y0_N8
\b[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: LCCOMB_X23_Y23_N20
\ShiftRight1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~4_combout\ = (\Add0~0_combout\ & ((\b[7]~input_o\))) # (!\Add0~0_combout\ & (\b[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[6]~input_o\,
	datac => \b[7]~input_o\,
	datad => \Add0~0_combout\,
	combout => \ShiftRight1~4_combout\);

-- Location: LCCOMB_X23_Y23_N22
\ShiftRight1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~5_combout\ = (\Add0~2_combout\ & (\ShiftRight1~3_combout\)) # (!\Add0~2_combout\ & ((\ShiftRight1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~3_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftRight1~4_combout\,
	combout => \ShiftRight1~5_combout\);

-- Location: LCCOMB_X24_Y22_N24
\ShiftRight1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~6_combout\ = (\Add0~4_combout\ & (\ShiftRight1~2_combout\)) # (!\Add0~4_combout\ & ((\ShiftRight1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~2_combout\,
	datab => \ShiftRight1~5_combout\,
	datac => \Add0~4_combout\,
	combout => \ShiftRight1~6_combout\);

-- Location: LCCOMB_X25_Y21_N2
\fracts~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~21_combout\ = (!\Add0~8_combout\ & ((\Add0~6_combout\ & ((\ShiftRight1~6_combout\))) # (!\Add0~6_combout\ & (\fracts~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~20_combout\,
	datab => \Add0~6_combout\,
	datac => \ShiftRight1~6_combout\,
	datad => \Add0~8_combout\,
	combout => \fracts~21_combout\);

-- Location: LCCOMB_X24_Y22_N2
\ShiftRight1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~10_combout\ = (!\Add0~4_combout\ & !\Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~4_combout\,
	datad => \Add0~2_combout\,
	combout => \ShiftRight1~10_combout\);

-- Location: LCCOMB_X28_Y22_N6
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Add0~0_combout\ & ((\Result~10_combout\) # ((\Result~11_combout\)))) # (!\Add0~0_combout\ & (((\b[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Result~10_combout\,
	datac => \Result~11_combout\,
	datad => \b[22]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X24_Y22_N10
\ShiftRight1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~18_combout\ = (\Add0~6_combout\ & (((\ShiftRight1~10_combout\ & \Mux1~0_combout\)))) # (!\Add0~6_combout\ & (\ShiftRight1~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~17_combout\,
	datab => \ShiftRight1~10_combout\,
	datac => \Mux1~0_combout\,
	datad => \Add0~6_combout\,
	combout => \ShiftRight1~18_combout\);

-- Location: LCCOMB_X25_Y21_N4
\fracts~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~22_combout\ = (\fracts~21_combout\) # ((\ShiftRight1~18_combout\ & \Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fracts~21_combout\,
	datac => \ShiftRight1~18_combout\,
	datad => \Add0~8_combout\,
	combout => \fracts~22_combout\);

-- Location: LCCOMB_X27_Y21_N14
\Add1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~1_cout\ = CARRY(!\Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datad => VCC,
	cout => \Add1~1_cout\);

-- Location: LCCOMB_X27_Y21_N16
\Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Add0~2_combout\ & ((\Add1~1_cout\) # (GND))) # (!\Add0~2_combout\ & (!\Add1~1_cout\))
-- \Add1~3\ = CARRY((\Add0~2_combout\) # (!\Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Add1~1_cout\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X27_Y21_N18
\Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\Add0~4_combout\ & (!\Add1~3\ & VCC)) # (!\Add0~4_combout\ & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((!\Add0~4_combout\ & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X27_Y21_N20
\Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Add0~6_combout\ & ((\Add1~5\) # (GND))) # (!\Add0~6_combout\ & (!\Add1~5\))
-- \Add1~7\ = CARRY((\Add0~6_combout\) # (!\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X27_Y21_N22
\Add1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\Add0~8_combout\ & (!\Add1~7\ & VCC)) # (!\Add0~8_combout\ & (\Add1~7\ $ (GND)))
-- \Add1~9\ = CARRY((!\Add0~8_combout\ & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X27_Y21_N24
\Add1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\Add0~10_combout\ & ((\Add1~9\) # (GND))) # (!\Add0~10_combout\ & (!\Add1~9\))
-- \Add1~11\ = CARRY((\Add0~10_combout\) # (!\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~10_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X27_Y21_N28
\Add1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\Add0~14_combout\ & ((\Add1~13\) # (GND))) # (!\Add0~14_combout\ & (!\Add1~13\))
-- \Add1~15\ = CARRY((\Add0~14_combout\) # (!\Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X27_Y21_N30
\Add1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = \Add1~15\ $ (\Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add0~16_combout\,
	cin => \Add1~15\,
	combout => \Add1~16_combout\);

-- Location: LCCOMB_X27_Y21_N2
\ShiftRight0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~2_combout\ = (!\Add1~12_combout\ & (!\Add1~14_combout\ & (!\Add1~16_combout\ & !\Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \Add1~14_combout\,
	datac => \Add1~16_combout\,
	datad => \Add1~10_combout\,
	combout => \ShiftRight0~2_combout\);

-- Location: LCCOMB_X26_Y21_N0
\fracts~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~16_combout\ = (\Add0~16_combout\ & \ShiftRight0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~16_combout\,
	datad => \ShiftRight0~2_combout\,
	combout => \fracts~16_combout\);

-- Location: IOIBUF_X10_Y0_N8
\a[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(16),
	o => \a[16]~input_o\);

-- Location: IOIBUF_X25_Y41_N8
\a[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(17),
	o => \a[17]~input_o\);

-- Location: LCCOMB_X28_Y23_N2
\ShiftRight0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~19_combout\ = (\Add0~0_combout\ & ((\a[17]~input_o\))) # (!\Add0~0_combout\ & (\a[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[16]~input_o\,
	datac => \a[17]~input_o\,
	datad => \Add0~0_combout\,
	combout => \ShiftRight0~19_combout\);

-- Location: IOIBUF_X12_Y0_N1
\a[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: LCCOMB_X28_Y23_N4
\ShiftRight0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~20_combout\ = (\Add0~0_combout\ & (\a[15]~input_o\)) # (!\Add0~0_combout\ & ((\a[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[15]~input_o\,
	datab => \a[14]~input_o\,
	datad => \Add0~0_combout\,
	combout => \ShiftRight0~20_combout\);

-- Location: LCCOMB_X28_Y24_N24
\ShiftRight0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~21_combout\ = (\Add1~2_combout\ & (\ShiftRight0~19_combout\)) # (!\Add1~2_combout\ & ((\ShiftRight0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~19_combout\,
	datac => \Add1~2_combout\,
	datad => \ShiftRight0~20_combout\,
	combout => \ShiftRight0~21_combout\);

-- Location: LCCOMB_X28_Y24_N2
\ShiftRight0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~22_combout\ = (\Add1~4_combout\ & (\ShiftRight0~18_combout\)) # (!\Add1~4_combout\ & ((\ShiftRight0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~18_combout\,
	datab => \Add1~4_combout\,
	datad => \ShiftRight0~21_combout\,
	combout => \ShiftRight0~22_combout\);

-- Location: LCCOMB_X28_Y24_N28
\ShiftRight0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~24_combout\ = (\Add1~6_combout\ & (\ShiftRight0~23_combout\ & (!\Add1~4_combout\))) # (!\Add1~6_combout\ & (((\ShiftRight0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~23_combout\,
	datab => \Add1~4_combout\,
	datac => \ShiftRight0~22_combout\,
	datad => \Add1~6_combout\,
	combout => \ShiftRight0~24_combout\);

-- Location: LCCOMB_X26_Y21_N4
\fracts~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~17_combout\ = (\fracts~16_combout\ & ((\ShiftRight0~15_combout\) # ((\Add1~8_combout\ & \ShiftRight0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~15_combout\,
	datab => \fracts~16_combout\,
	datac => \Add1~8_combout\,
	datad => \ShiftRight0~24_combout\,
	combout => \fracts~17_combout\);

-- Location: LCCOMB_X25_Y21_N8
\fracts~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~23_combout\ = (\fracts~17_combout\) # ((!\Equal0~2_combout\ & (\fracts~18_combout\ & \fracts~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \fracts~18_combout\,
	datac => \fracts~22_combout\,
	datad => \fracts~17_combout\,
	combout => \fracts~23_combout\);

-- Location: LCCOMB_X28_Y22_N0
\ShiftRight1~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~19_combout\ = (!\Add0~0_combout\ & ((\Result~10_combout\) # (\Result~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Result~10_combout\,
	datac => \Result~11_combout\,
	combout => \ShiftRight1~19_combout\);

-- Location: LCCOMB_X24_Y19_N16
\ShiftRight1~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~21_combout\ = (!\Add0~4_combout\ & ((\Add0~2_combout\ & ((\ShiftRight1~19_combout\))) # (!\Add0~2_combout\ & (\ShiftRight1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \ShiftRight1~20_combout\,
	datac => \Add0~4_combout\,
	datad => \ShiftRight1~19_combout\,
	combout => \ShiftRight1~21_combout\);

-- Location: LCCOMB_X24_Y19_N2
\ShiftRight1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~24_combout\ = (\Add0~2_combout\ & (\ShiftRight1~22_combout\)) # (!\Add0~2_combout\ & ((\ShiftRight1~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~22_combout\,
	datac => \ShiftRight1~23_combout\,
	datad => \Add0~2_combout\,
	combout => \ShiftRight1~24_combout\);

-- Location: LCCOMB_X24_Y20_N8
\ShiftRight1~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~28_combout\ = (\Add0~4_combout\ & ((\ShiftRight1~24_combout\))) # (!\Add0~4_combout\ & (\ShiftRight1~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~27_combout\,
	datab => \ShiftRight1~24_combout\,
	datad => \Add0~4_combout\,
	combout => \ShiftRight1~28_combout\);

-- Location: LCCOMB_X23_Y21_N12
\ShiftRight1~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~41_combout\ = (\ShiftRight1~40_combout\ & ((\ShiftRight1~21_combout\) # ((!\Add0~6_combout\)))) # (!\ShiftRight1~40_combout\ & (((\ShiftRight1~28_combout\ & \Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~40_combout\,
	datab => \ShiftRight1~21_combout\,
	datac => \ShiftRight1~28_combout\,
	datad => \Add0~6_combout\,
	combout => \ShiftRight1~41_combout\);

-- Location: LCCOMB_X27_Y21_N8
\LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!\Add0~12_combout\) # (!\Add0~10_combout\)) # (!\Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~14_combout\,
	datac => \Add0~10_combout\,
	datad => \Add0~12_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X25_Y22_N16
\LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ((!\Add0~2_combout\ & !\Add0~0_combout\)) # (!\Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add0~2_combout\,
	datac => \Add0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X29_Y21_N28
\LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\Add0~16_combout\ & ((\LessThan0~0_combout\) # ((\LessThan0~2_combout\ & \LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \LessThan0~0_combout\,
	datac => \Add0~16_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X26_Y22_N16
\fracts~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~26_combout\ = (!\LessThan0~3_combout\ & ((\fracts~25_combout\) # ((\ShiftRight1~41_combout\ & \fracts~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~25_combout\,
	datab => \ShiftRight1~41_combout\,
	datac => \LessThan0~3_combout\,
	datad => \fracts~18_combout\,
	combout => \fracts~26_combout\);

-- Location: LCCOMB_X28_Y19_N4
\Add3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (((!\sticky~4_combout\ & !\fracts~26_combout\)))
-- \Add3~1\ = CARRY((!\sticky~4_combout\ & !\fracts~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sticky~4_combout\,
	datab => \fracts~26_combout\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X28_Y19_N6
\Add3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\LessThan0~3_combout\ & (((!\Add3~1\)))) # (!\LessThan0~3_combout\ & ((\fracts~23_combout\ & ((\Add3~1\) # (GND))) # (!\fracts~23_combout\ & (!\Add3~1\))))
-- \Add3~3\ = CARRY(((!\LessThan0~3_combout\ & \fracts~23_combout\)) # (!\Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \fracts~23_combout\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X28_Y19_N8
\Add3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (\Add3~3\ & (((\LessThan0~3_combout\) # (!\fracts~33_combout\)))) # (!\Add3~3\ & ((((\LessThan0~3_combout\) # (!\fracts~33_combout\)))))
-- \Add3~5\ = CARRY((!\Add3~3\ & ((\LessThan0~3_combout\) # (!\fracts~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \fracts~33_combout\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: IOIBUF_X52_Y12_N8
\a[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(31),
	o => \a[31]~input_o\);

-- Location: IOIBUF_X52_Y18_N1
\b[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(31),
	o => \b[31]~input_o\);

-- Location: LCCOMB_X30_Y19_N16
\add~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add~4_combout\ = \a[31]~input_o\ $ (\b[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a[31]~input_o\,
	datad => \b[31]~input_o\,
	combout => \add~4_combout\);

-- Location: LCCOMB_X28_Y19_N0
\ufract~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ufract~1_combout\ = (\add~4_combout\ & (((\Add3~4_combout\)))) # (!\add~4_combout\ & (!\LessThan0~3_combout\ & (\fracts~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \fracts~33_combout\,
	datac => \Add3~4_combout\,
	datad => \add~4_combout\,
	combout => \ufract~1_combout\);

-- Location: LCCOMB_X25_Y21_N26
\ufract~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ufract~0_combout\ = (\add~4_combout\ & (((\Add3~2_combout\)))) # (!\add~4_combout\ & (\fracts~23_combout\ & ((!\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~23_combout\,
	datab => \add~4_combout\,
	datac => \Add3~2_combout\,
	datad => \LessThan0~3_combout\,
	combout => \ufract~0_combout\);

-- Location: IOIBUF_X10_Y0_N1
\b[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(14),
	o => \b[14]~input_o\);

-- Location: LCCOMB_X27_Y18_N4
\ShiftRight1~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~15_combout\ = (\Add0~0_combout\ & (\b[15]~input_o\)) # (!\Add0~0_combout\ & ((\b[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[15]~input_o\,
	datab => \b[14]~input_o\,
	datac => \Add0~0_combout\,
	combout => \ShiftRight1~15_combout\);

-- Location: LCCOMB_X24_Y22_N18
\ShiftRight1~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~54_combout\ = (\Add0~2_combout\ & ((\ShiftRight1~15_combout\))) # (!\Add0~2_combout\ & (\ShiftRight1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~0_combout\,
	datac => \ShiftRight1~15_combout\,
	datad => \Add0~2_combout\,
	combout => \ShiftRight1~54_combout\);

-- Location: LCCOMB_X23_Y22_N20
\ShiftRight1~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~56_combout\ = (\Add0~4_combout\ & ((\ShiftRight1~54_combout\))) # (!\Add0~4_combout\ & (\ShiftRight1~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~55_combout\,
	datac => \Add0~4_combout\,
	datad => \ShiftRight1~54_combout\,
	combout => \ShiftRight1~56_combout\);

-- Location: LCCOMB_X23_Y22_N22
\fracts~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~36_combout\ = (\Add0~6_combout\ & (!\Add0~8_combout\ & \ShiftRight1~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datac => \Add0~8_combout\,
	datad => \ShiftRight1~56_combout\,
	combout => \fracts~36_combout\);

-- Location: IOIBUF_X29_Y41_N1
\b[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X52_Y16_N1
\b[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LCCOMB_X26_Y19_N16
\ShiftRight1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~8_combout\ = (\Add0~0_combout\ & (\b[3]~input_o\)) # (!\Add0~0_combout\ & ((\b[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[3]~input_o\,
	datac => \Add0~0_combout\,
	datad => \b[2]~input_o\,
	combout => \ShiftRight1~8_combout\);

-- Location: LCCOMB_X25_Y22_N22
\ShiftRight1~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~49_combout\ = (!\Add0~4_combout\ & ((\Add0~2_combout\ & ((\ShiftRight1~8_combout\))) # (!\Add0~2_combout\ & (\fracts~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~19_combout\,
	datab => \ShiftRight1~8_combout\,
	datac => \Add0~2_combout\,
	datad => \Add0~4_combout\,
	combout => \ShiftRight1~49_combout\);

-- Location: IOIBUF_X21_Y0_N8
\b[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\b[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: LCCOMB_X25_Y22_N18
\ShiftRight1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~7_combout\ = (\Add0~0_combout\ & (\b[5]~input_o\)) # (!\Add0~0_combout\ & ((\b[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \b[5]~input_o\,
	datac => \b[4]~input_o\,
	combout => \ShiftRight1~7_combout\);

-- Location: LCCOMB_X25_Y22_N24
\ShiftRight1~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~50_combout\ = (\Add0~2_combout\ & (\ShiftRight1~4_combout\)) # (!\Add0~2_combout\ & ((\ShiftRight1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~4_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftRight1~7_combout\,
	combout => \ShiftRight1~50_combout\);

-- Location: LCCOMB_X23_Y22_N16
\fracts~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~34_combout\ = (!\Add0~8_combout\ & ((\ShiftRight1~49_combout\) # ((\Add0~4_combout\ & \ShiftRight1~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \ShiftRight1~49_combout\,
	datac => \Add0~4_combout\,
	datad => \ShiftRight1~50_combout\,
	combout => \fracts~34_combout\);

-- Location: LCCOMB_X27_Y22_N18
\ShiftRight1~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~11_combout\ = (\Add0~0_combout\ & (\b[21]~input_o\)) # (!\Add0~0_combout\ & ((\b[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[21]~input_o\,
	datac => \b[20]~input_o\,
	datad => \Add0~0_combout\,
	combout => \ShiftRight1~11_combout\);

-- Location: LCCOMB_X24_Y22_N20
\ShiftRight1~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~51_combout\ = (\Add0~4_combout\ & ((\Add0~2_combout\ & (\Mux1~0_combout\)) # (!\Add0~2_combout\ & ((\ShiftRight1~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add0~4_combout\,
	datac => \Mux1~0_combout\,
	datad => \ShiftRight1~11_combout\,
	combout => \ShiftRight1~51_combout\);

-- Location: IOIBUF_X52_Y18_N8
\b[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(16),
	o => \b[16]~input_o\);

-- Location: LCCOMB_X27_Y18_N2
\ShiftRight1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~14_combout\ = (\Add0~0_combout\ & (\b[17]~input_o\)) # (!\Add0~0_combout\ & ((\b[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[17]~input_o\,
	datab => \b[16]~input_o\,
	datac => \Add0~0_combout\,
	combout => \ShiftRight1~14_combout\);

-- Location: LCCOMB_X24_Y22_N6
\ShiftRight1~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~52_combout\ = (\Add0~2_combout\ & (\ShiftRight1~12_combout\)) # (!\Add0~2_combout\ & ((\ShiftRight1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~12_combout\,
	datac => \ShiftRight1~14_combout\,
	datad => \Add0~2_combout\,
	combout => \ShiftRight1~52_combout\);

-- Location: LCCOMB_X24_Y22_N16
\ShiftRight1~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~53_combout\ = (\ShiftRight1~51_combout\) # ((!\Add0~4_combout\ & \ShiftRight1~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~51_combout\,
	datac => \Add0~4_combout\,
	datad => \ShiftRight1~52_combout\,
	combout => \ShiftRight1~53_combout\);

-- Location: LCCOMB_X23_Y22_N2
\fracts~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~35_combout\ = (!\Add0~6_combout\ & ((\fracts~34_combout\) # ((\Add0~8_combout\ & \ShiftRight1~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \fracts~34_combout\,
	datac => \Add0~8_combout\,
	datad => \ShiftRight1~53_combout\,
	combout => \fracts~35_combout\);

-- Location: LCCOMB_X23_Y22_N24
\fracts~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~37_combout\ = (\fracts~18_combout\ & (!\Equal0~2_combout\ & ((\fracts~36_combout\) # (\fracts~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~18_combout\,
	datab => \Equal0~2_combout\,
	datac => \fracts~36_combout\,
	datad => \fracts~35_combout\,
	combout => \fracts~37_combout\);

-- Location: IOIBUF_X18_Y0_N1
\a[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: LCCOMB_X27_Y24_N6
\ShiftRight0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~10_combout\ = (\Add0~0_combout\ & ((\a[5]~input_o\))) # (!\Add0~0_combout\ & (\a[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \a[5]~input_o\,
	datac => \Add0~0_combout\,
	combout => \ShiftRight0~10_combout\);

-- Location: LCCOMB_X26_Y24_N22
\ShiftRight0~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~65_combout\ = (\Add1~2_combout\ & (\ShiftRight0~7_combout\)) # (!\Add1~2_combout\ & ((\ShiftRight0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~7_combout\,
	datab => \Add1~2_combout\,
	datad => \ShiftRight0~10_combout\,
	combout => \ShiftRight0~65_combout\);

-- Location: LCCOMB_X24_Y21_N18
\ShiftRight0~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~66_combout\ = (\Add1~4_combout\ & ((\Add1~6_combout\ & (\ShiftRight0~64_combout\)) # (!\Add1~6_combout\ & ((\ShiftRight0~65_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~64_combout\,
	datab => \ShiftRight0~65_combout\,
	datac => \Add1~6_combout\,
	datad => \Add1~4_combout\,
	combout => \ShiftRight0~66_combout\);

-- Location: IOIBUF_X52_Y15_N8
\a[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(19),
	o => \a[19]~input_o\);

-- Location: LCCOMB_X28_Y23_N0
\ShiftRight0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~17_combout\ = (\Add0~0_combout\ & ((\a[19]~input_o\))) # (!\Add0~0_combout\ & (\a[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[18]~input_o\,
	datab => \a[19]~input_o\,
	datad => \Add0~0_combout\,
	combout => \ShiftRight0~17_combout\);

-- Location: LCCOMB_X28_Y24_N0
\ShiftRight0~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~62_combout\ = (\Add1~2_combout\ & ((\ShiftRight0~17_combout\))) # (!\Add1~2_combout\ & (\ShiftRight0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~19_combout\,
	datac => \Add1~2_combout\,
	datad => \ShiftRight0~17_combout\,
	combout => \ShiftRight0~62_combout\);

-- Location: LCCOMB_X24_Y21_N8
\ShiftRight0~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~63_combout\ = (!\Add1~6_combout\ & ((\Add1~4_combout\ & (\ShiftRight0~61_combout\)) # (!\Add1~4_combout\ & ((\ShiftRight0~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~61_combout\,
	datab => \Add1~4_combout\,
	datac => \Add1~6_combout\,
	datad => \ShiftRight0~62_combout\,
	combout => \ShiftRight0~63_combout\);

-- Location: LCCOMB_X24_Y21_N22
\ShiftRight0~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~70_combout\ = (\Add1~8_combout\ & (((\ShiftRight0~63_combout\)))) # (!\Add1~8_combout\ & ((\ShiftRight0~69_combout\) # ((\ShiftRight0~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~69_combout\,
	datab => \ShiftRight0~66_combout\,
	datac => \Add1~8_combout\,
	datad => \ShiftRight0~63_combout\,
	combout => \ShiftRight0~70_combout\);

-- Location: IOIBUF_X23_Y41_N8
\a[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X52_Y25_N1
\b[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X25_Y22_N26
\fracts~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~38_combout\ = (\LessThan26~46_combout\ & (\a[0]~input_o\)) # (!\LessThan26~46_combout\ & ((\b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan26~46_combout\,
	datab => \a[0]~input_o\,
	datac => \b[0]~input_o\,
	combout => \fracts~38_combout\);

-- Location: LCCOMB_X23_Y22_N10
\fracts~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~39_combout\ = (\fracts~16_combout\ & ((\ShiftRight0~70_combout\) # ((\Equal0~2_combout\ & \fracts~38_combout\)))) # (!\fracts~16_combout\ & (((\Equal0~2_combout\ & \fracts~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~16_combout\,
	datab => \ShiftRight0~70_combout\,
	datac => \Equal0~2_combout\,
	datad => \fracts~38_combout\,
	combout => \fracts~39_combout\);

-- Location: LCCOMB_X23_Y22_N4
\fracts~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~40_combout\ = (!\LessThan0~3_combout\ & ((\fracts~37_combout\) # (\fracts~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \fracts~37_combout\,
	datad => \fracts~39_combout\,
	combout => \fracts~40_combout\);

-- Location: LCCOMB_X28_Y19_N10
\Add3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\fractc~5_combout\ & ((\fracts~40_combout\ & (!\Add3~5\)) # (!\fracts~40_combout\ & (\Add3~5\ & VCC)))) # (!\fractc~5_combout\ & ((\fracts~40_combout\ & ((\Add3~5\) # (GND))) # (!\fracts~40_combout\ & (!\Add3~5\))))
-- \Add3~7\ = CARRY((\fractc~5_combout\ & (\fracts~40_combout\ & !\Add3~5\)) # (!\fractc~5_combout\ & ((\fracts~40_combout\) # (!\Add3~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fractc~5_combout\,
	datab => \fracts~40_combout\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X29_Y16_N2
\Add2~99\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~99_combout\ = (\Add2~48_combout\ & ((\Add3~6_combout\) # (\a[31]~input_o\ $ (!\b[31]~input_o\)))) # (!\Add2~48_combout\ & (\Add3~6_combout\ & (\a[31]~input_o\ $ (\b[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~48_combout\,
	datab => \Add3~6_combout\,
	datac => \a[31]~input_o\,
	datad => \b[31]~input_o\,
	combout => \Add2~99_combout\);

-- Location: LCCOMB_X28_Y17_N8
\find_leftmost~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~31_combout\ = (\ufract~1_combout\) # ((\Add2~99_combout\) # ((!\ufract~2_combout\ & !\ufract~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufract~2_combout\,
	datab => \ufract~1_combout\,
	datac => \ufract~0_combout\,
	datad => \Add2~99_combout\,
	combout => \find_leftmost~31_combout\);

-- Location: LCCOMB_X28_Y23_N16
\ShiftRight0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~26_combout\ = (\Add0~0_combout\ & (\a[18]~input_o\)) # (!\Add0~0_combout\ & ((\a[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[18]~input_o\,
	datac => \a[17]~input_o\,
	datad => \Add0~0_combout\,
	combout => \ShiftRight0~26_combout\);

-- Location: LCCOMB_X25_Y24_N24
\ShiftRight0~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~27_combout\ = (\Add1~2_combout\ & (\ShiftRight0~25_combout\)) # (!\Add1~2_combout\ & ((\ShiftRight0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~25_combout\,
	datab => \Add1~2_combout\,
	datac => \ShiftRight0~26_combout\,
	combout => \ShiftRight0~27_combout\);

-- Location: IOIBUF_X29_Y41_N8
\a[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: LCCOMB_X28_Y23_N28
\ShiftRight0~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~29_combout\ = (\Add0~0_combout\ & (\a[14]~input_o\)) # (!\Add0~0_combout\ & ((\a[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[14]~input_o\,
	datac => \a[13]~input_o\,
	datad => \Add0~0_combout\,
	combout => \ShiftRight0~29_combout\);

-- Location: LCCOMB_X28_Y23_N26
\ShiftRight0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~28_combout\ = (\Add0~0_combout\ & ((\a[16]~input_o\))) # (!\Add0~0_combout\ & (\a[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[15]~input_o\,
	datab => \a[16]~input_o\,
	datad => \Add0~0_combout\,
	combout => \ShiftRight0~28_combout\);

-- Location: LCCOMB_X26_Y23_N0
\ShiftRight0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~30_combout\ = (\Add1~2_combout\ & ((\ShiftRight0~28_combout\))) # (!\Add1~2_combout\ & (\ShiftRight0~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \ShiftRight0~29_combout\,
	datad => \ShiftRight0~28_combout\,
	combout => \ShiftRight0~30_combout\);

-- Location: LCCOMB_X25_Y24_N2
\ShiftRight0~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~31_combout\ = (\Add1~4_combout\ & (\ShiftRight0~27_combout\)) # (!\Add1~4_combout\ & ((\ShiftRight0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \ShiftRight0~27_combout\,
	datac => \ShiftRight0~30_combout\,
	combout => \ShiftRight0~31_combout\);

-- Location: IOIBUF_X27_Y41_N1
\a[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: IOIBUF_X27_Y41_N8
\a[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: LCCOMB_X26_Y24_N14
\ShiftRight0~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~37_combout\ = (\Add0~0_combout\ & ((\a[10]~input_o\))) # (!\Add0~0_combout\ & (\a[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[9]~input_o\,
	datac => \a[10]~input_o\,
	datad => \Add0~0_combout\,
	combout => \ShiftRight0~37_combout\);

-- Location: LCCOMB_X26_Y24_N24
\ShiftRight0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~38_combout\ = (\Add1~2_combout\ & (\ShiftRight0~36_combout\)) # (!\Add1~2_combout\ & ((\ShiftRight0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~36_combout\,
	datac => \ShiftRight0~37_combout\,
	datad => \Add1~2_combout\,
	combout => \ShiftRight0~38_combout\);

-- Location: LCCOMB_X25_Y24_N22
\ShiftRight0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~42_combout\ = (\Add1~4_combout\ & ((\ShiftRight0~38_combout\))) # (!\Add1~4_combout\ & (\ShiftRight0~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~41_combout\,
	datab => \ShiftRight0~38_combout\,
	datac => \Add1~4_combout\,
	combout => \ShiftRight0~42_combout\);

-- Location: LCCOMB_X26_Y21_N28
\fracts~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~57_combout\ = (\ShiftRight0~2_combout\ & (\Add0~16_combout\ & !\Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~2_combout\,
	datab => \Add0~16_combout\,
	datac => \Add1~8_combout\,
	combout => \fracts~57_combout\);

-- Location: LCCOMB_X25_Y24_N0
\fracts~98\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~98_combout\ = (\fracts~97_combout\ & (((\ShiftRight0~42_combout\) # (!\fracts~57_combout\)))) # (!\fracts~97_combout\ & (\ShiftRight0~31_combout\ & ((\fracts~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~97_combout\,
	datab => \ShiftRight0~31_combout\,
	datac => \ShiftRight0~42_combout\,
	datad => \fracts~57_combout\,
	combout => \fracts~98_combout\);

-- Location: LCCOMB_X27_Y23_N2
\Result~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Result~14_combout\ = (\Result~12_combout\) # (\Result~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Result~12_combout\,
	datad => \Result~13_combout\,
	combout => \Result~14_combout\);

-- Location: IOIBUF_X16_Y41_N1
\a[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(21),
	o => \a[21]~input_o\);

-- Location: IOIBUF_X12_Y41_N8
\b[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(18),
	o => \b[18]~input_o\);

-- Location: IOIBUF_X21_Y41_N8
\b[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(17),
	o => \b[17]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\a[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: IOIBUF_X52_Y9_N1
\b[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(13),
	o => \b[13]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\a[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: IOIBUF_X18_Y41_N1
\a[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: IOIBUF_X10_Y41_N1
\a[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\a[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X52_Y30_N8
\a[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\a[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LCCOMB_X25_Y19_N8
\LessThan26~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan26~1_cout\ = CARRY((\b[0]~input_o\ & !\a[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datad => VCC,
	cout => \LessThan26~1_cout\);

-- Location: LCCOMB_X25_Y19_N10
\LessThan26~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan26~3_cout\ = CARRY((\b[1]~input_o\ & (\a[1]~input_o\ & !\LessThan26~1_cout\)) # (!\b[1]~input_o\ & ((\a[1]~input_o\) # (!\LessThan26~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \a[1]~input_o\,
	datad => VCC,
	cin => \LessThan26~1_cout\,
	cout => \LessThan26~3_cout\);

-- Location: LCCOMB_X25_Y19_N12
\LessThan26~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan26~5_cout\ = CARRY((\b[2]~input_o\ & ((!\LessThan26~3_cout\) # (!\a[2]~input_o\))) # (!\b[2]~input_o\ & (!\a[2]~input_o\ & !\LessThan26~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \a[2]~input_o\,
	datad => VCC,
	cin => \LessThan26~3_cout\,
	cout => \LessThan26~5_cout\);

-- Location: LCCOMB_X25_Y19_N14
\LessThan26~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan26~7_cout\ = CARRY((\a[3]~input_o\ & ((!\LessThan26~5_cout\) # (!\b[3]~input_o\))) # (!\a[3]~input_o\ & (!\b[3]~input_o\ & !\LessThan26~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \b[3]~input_o\,
	datad => VCC,
	cin => \LessThan26~5_cout\,
	cout => \LessThan26~7_cout\);

-- Location: LCCOMB_X25_Y19_N16
\LessThan26~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan26~9_cout\ = CARRY((\a[4]~input_o\ & (\b[4]~input_o\ & !\LessThan26~7_cout\)) # (!\a[4]~input_o\ & ((\b[4]~input_o\) # (!\LessThan26~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \b[4]~input_o\,
	datad => VCC,
	cin => \LessThan26~7_cout\,
	cout => \LessThan26~9_cout\);

-- Location: LCCOMB_X25_Y19_N18
\LessThan26~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan26~11_cout\ = CARRY((\b[5]~input_o\ & (\a[5]~input_o\ & !\LessThan26~9_cout\)) # (!\b[5]~input_o\ & ((\a[5]~input_o\) # (!\LessThan26~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[5]~input_o\,
	datab => \a[5]~input_o\,
	datad => VCC,
	cin => \LessThan26~9_cout\,
	cout => \LessThan26~11_cout\);

-- Location: LCCOMB_X25_Y19_N20
\LessThan26~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan26~13_cout\ = CARRY((\b[6]~input_o\ & ((!\LessThan26~11_cout\) # (!\a[6]~input_o\))) # (!\b[6]~input_o\ & (!\a[6]~input_o\ & !\LessThan26~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[6]~input_o\,
	datab => \a[6]~input_o\,
	datad => VCC,
	cin => \LessThan26~11_cout\,
	cout => \LessThan26~13_cout\);

-- Location: LCCOMB_X25_Y19_N22
\LessThan26~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan26~15_cout\ = CARRY((\b[7]~input_o\ & (\a[7]~input_o\ & !\LessThan26~13_cout\)) # (!\b[7]~input_o\ & ((\a[7]~input_o\) # (!\LessThan26~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datab => \a[7]~input_o\,
	datad => VCC,
	cin => \LessThan26~13_cout\,
	cout => \LessThan26~15_cout\);

-- Location: LCCOMB_X25_Y19_N24
\LessThan26~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan26~17_cout\ = CARRY((\a[8]~input_o\ & (\b[8]~input_o\ & !\LessThan26~15_cout\)) # (!\a[8]~input_o\ & ((\b[8]~input_o\) # (!\LessThan26~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[8]~input_o\,
	datab => \b[8]~input_o\,
	datad => VCC,
	cin => \LessThan26~15_cout\,
	cout => \LessThan26~17_cout\);

-- Location: LCCOMB_X25_Y19_N26
\LessThan26~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan26~19_cout\ = CARRY((\b[9]~input_o\ & (\a[9]~input_o\ & !\LessThan26~17_cout\)) # (!\b[9]~input_o\ & ((\a[9]~input_o\) # (!\LessThan26~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[9]~input_o\,
	datab => \a[9]~input_o\,
	datad => VCC,
	cin => \LessThan26~17_cout\,
	cout => \LessThan26~19_cout\);

-- Location: LCCOMB_X25_Y19_N28
\LessThan26~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan26~21_cout\ = CARRY((\b[10]~input_o\ & ((!\LessThan26~19_cout\) # (!\a[10]~input_o\))) # (!\b[10]~input_o\ & (!\a[10]~input_o\ & !\LessThan26~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[10]~input_o\,
	datab => \a[10]~input_o\,
	datad => VCC,
	cin => \LessThan26~19_cout\,
	cout => \LessThan26~21_cout\);

-- Location: LCCOMB_X25_Y19_N30
\LessThan26~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan26~23_cout\ = CARRY((\b[11]~input_o\ & (\a[11]~input_o\ & !\LessThan26~21_cout\)) # (!\b[11]~input_o\ & ((\a[11]~input_o\) # (!\LessThan26~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[11]~input_o\,
	datab => \a[11]~input_o\,
	datad => VCC,
	cin => \LessThan26~21_cout\,
	cout => \LessThan26~23_cout\);

-- Location: LCCOMB_X25_Y18_N0
\LessThan26~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan26~25_cout\ = CARRY((\b[12]~input_o\ & ((!\LessThan26~23_cout\) # (!\a[12]~input_o\))) # (!\b[12]~input_o\ & (!\a[12]~input_o\ & !\LessThan26~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[12]~input_o\,
	datab => \a[12]~input_o\,
	datad => VCC,
	cin => \LessThan26~23_cout\,
	cout => \LessThan26~25_cout\);

-- Location: LCCOMB_X25_Y18_N2
\LessThan26~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan26~27_cout\ = CARRY((\a[13]~input_o\ & ((!\LessThan26~25_cout\) # (!\b[13]~input_o\))) # (!\a[13]~input_o\ & (!\b[13]~input_o\ & !\LessThan26~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[13]~input_o\,
	datab => \b[13]~input_o\,
	datad => VCC,
	cin => \LessThan26~25_cout\,
	cout => \LessThan26~27_cout\);

-- Location: LCCOMB_X25_Y18_N4
\LessThan26~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan26~29_cout\ = CARRY((\b[14]~input_o\ & ((!\LessThan26~27_cout\) # (!\a[14]~input_o\))) # (!\b[14]~input_o\ & (!\a[14]~input_o\ & !\LessThan26~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[14]~input_o\,
	datab => \a[14]~input_o\,
	datad => VCC,
	cin => \LessThan26~27_cout\,
	cout => \LessThan26~29_cout\);

-- Location: LCCOMB_X25_Y18_N6
\LessThan26~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan26~31_cout\ = CARRY((\b[15]~input_o\ & (\a[15]~input_o\ & !\LessThan26~29_cout\)) # (!\b[15]~input_o\ & ((\a[15]~input_o\) # (!\LessThan26~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[15]~input_o\,
	datab => \a[15]~input_o\,
	datad => VCC,
	cin => \LessThan26~29_cout\,
	cout => \LessThan26~31_cout\);

-- Location: LCCOMB_X25_Y18_N8
\LessThan26~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan26~33_cout\ = CARRY((\b[16]~input_o\ & ((!\LessThan26~31_cout\) # (!\a[16]~input_o\))) # (!\b[16]~input_o\ & (!\a[16]~input_o\ & !\LessThan26~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[16]~input_o\,
	datab => \a[16]~input_o\,
	datad => VCC,
	cin => \LessThan26~31_cout\,
	cout => \LessThan26~33_cout\);

-- Location: LCCOMB_X25_Y18_N10
\LessThan26~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan26~35_cout\ = CARRY((\a[17]~input_o\ & ((!\LessThan26~33_cout\) # (!\b[17]~input_o\))) # (!\a[17]~input_o\ & (!\b[17]~input_o\ & !\LessThan26~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[17]~input_o\,
	datab => \b[17]~input_o\,
	datad => VCC,
	cin => \LessThan26~33_cout\,
	cout => \LessThan26~35_cout\);

-- Location: LCCOMB_X25_Y18_N12
\LessThan26~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan26~37_cout\ = CARRY((\a[18]~input_o\ & (\b[18]~input_o\ & !\LessThan26~35_cout\)) # (!\a[18]~input_o\ & ((\b[18]~input_o\) # (!\LessThan26~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[18]~input_o\,
	datab => \b[18]~input_o\,
	datad => VCC,
	cin => \LessThan26~35_cout\,
	cout => \LessThan26~37_cout\);

-- Location: LCCOMB_X25_Y18_N14
\LessThan26~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan26~39_cout\ = CARRY((\b[19]~input_o\ & (\a[19]~input_o\ & !\LessThan26~37_cout\)) # (!\b[19]~input_o\ & ((\a[19]~input_o\) # (!\LessThan26~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[19]~input_o\,
	datab => \a[19]~input_o\,
	datad => VCC,
	cin => \LessThan26~37_cout\,
	cout => \LessThan26~39_cout\);

-- Location: LCCOMB_X25_Y18_N16
\LessThan26~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan26~41_cout\ = CARRY((\a[20]~input_o\ & (\b[20]~input_o\ & !\LessThan26~39_cout\)) # (!\a[20]~input_o\ & ((\b[20]~input_o\) # (!\LessThan26~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[20]~input_o\,
	datab => \b[20]~input_o\,
	datad => VCC,
	cin => \LessThan26~39_cout\,
	cout => \LessThan26~41_cout\);

-- Location: LCCOMB_X25_Y18_N18
\LessThan26~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan26~43_cout\ = CARRY((\b[21]~input_o\ & (\a[21]~input_o\ & !\LessThan26~41_cout\)) # (!\b[21]~input_o\ & ((\a[21]~input_o\) # (!\LessThan26~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[21]~input_o\,
	datab => \a[21]~input_o\,
	datad => VCC,
	cin => \LessThan26~41_cout\,
	cout => \LessThan26~43_cout\);

-- Location: LCCOMB_X25_Y18_N20
\LessThan26~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan26~45_cout\ = CARRY((\a[22]~input_o\ & (\b[22]~input_o\ & !\LessThan26~43_cout\)) # (!\a[22]~input_o\ & ((\b[22]~input_o\) # (!\LessThan26~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[22]~input_o\,
	datab => \b[22]~input_o\,
	datad => VCC,
	cin => \LessThan26~43_cout\,
	cout => \LessThan26~45_cout\);

-- Location: LCCOMB_X25_Y18_N22
\LessThan26~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan26~46_combout\ = (\Result~14_combout\ & (\LessThan26~45_cout\ & \Result~16_combout\)) # (!\Result~14_combout\ & ((\LessThan26~45_cout\) # (\Result~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Result~14_combout\,
	datad => \Result~16_combout\,
	cin => \LessThan26~45_cout\,
	combout => \LessThan26~46_combout\);

-- Location: LCCOMB_X27_Y20_N0
\fractc~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fractc~14_combout\ = (\LessThan26~46_combout\ & \Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan26~46_combout\,
	datad => \Equal0~2_combout\,
	combout => \fractc~14_combout\);

-- Location: LCCOMB_X27_Y20_N8
\fracts~99\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~99_combout\ = (!\LessThan0~3_combout\ & ((\fractc~14_combout\ & (\a[5]~input_o\)) # (!\fractc~14_combout\ & ((\fracts~98_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[5]~input_o\,
	datab => \fracts~98_combout\,
	datac => \LessThan0~3_combout\,
	datad => \fractc~14_combout\,
	combout => \fracts~99_combout\);

-- Location: IOIBUF_X25_Y0_N1
\a[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LCCOMB_X26_Y21_N30
\fracts~106\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~106_combout\ = (!\Equal0~2_combout\ & ((\ShiftRight0~2_combout\) # (!\Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => \Add0~16_combout\,
	datad => \ShiftRight0~2_combout\,
	combout => \fracts~106_combout\);

-- Location: LCCOMB_X24_Y21_N4
\fracts~100\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~100_combout\ = (\Add1~8_combout\) # ((\Add1~4_combout\ & !\Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Add1~4_combout\,
	datac => \Add1~6_combout\,
	combout => \fracts~100_combout\);

-- Location: LCCOMB_X28_Y24_N10
\ShiftRight0~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~64_combout\ = (\Add1~2_combout\ & ((\ShiftRight0~20_combout\))) # (!\Add1~2_combout\ & (\ShiftRight0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~3_combout\,
	datac => \Add1~2_combout\,
	datad => \ShiftRight0~20_combout\,
	combout => \ShiftRight0~64_combout\);

-- Location: LCCOMB_X24_Y21_N24
\ShiftRight0~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~71_combout\ = (\Add1~4_combout\ & ((\ShiftRight0~62_combout\))) # (!\Add1~4_combout\ & (\ShiftRight0~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~4_combout\,
	datac => \ShiftRight0~64_combout\,
	datad => \ShiftRight0~62_combout\,
	combout => \ShiftRight0~71_combout\);

-- Location: LCCOMB_X25_Y24_N12
\fracts~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~24_combout\ = (\Add1~6_combout\) # (\Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~6_combout\,
	datac => \Add1~8_combout\,
	combout => \fracts~24_combout\);

-- Location: LCCOMB_X24_Y21_N30
\fracts~101\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~101_combout\ = (\fracts~100_combout\ & (((\fracts~24_combout\)))) # (!\fracts~100_combout\ & ((\fracts~24_combout\ & (\ShiftRight0~71_combout\)) # (!\fracts~24_combout\ & ((\ShiftRight0~65_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~100_combout\,
	datab => \ShiftRight0~71_combout\,
	datac => \fracts~24_combout\,
	datad => \ShiftRight0~65_combout\,
	combout => \fracts~101_combout\);

-- Location: LCCOMB_X25_Y23_N26
\ShiftRight0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~4_combout\ = (\Add0~0_combout\ & ((\a[11]~input_o\))) # (!\Add0~0_combout\ & (\a[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[10]~input_o\,
	datac => \a[11]~input_o\,
	datad => \Add0~0_combout\,
	combout => \ShiftRight0~4_combout\);

-- Location: LCCOMB_X26_Y24_N16
\ShiftRight0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~6_combout\ = (\Add0~0_combout\ & ((\a[9]~input_o\))) # (!\Add0~0_combout\ & (\a[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[8]~input_o\,
	datac => \a[9]~input_o\,
	datad => \Add0~0_combout\,
	combout => \ShiftRight0~6_combout\);

-- Location: LCCOMB_X28_Y24_N20
\ShiftRight0~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~68_combout\ = (\Add1~2_combout\ & (\ShiftRight0~4_combout\)) # (!\Add1~2_combout\ & ((\ShiftRight0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \ShiftRight0~4_combout\,
	datac => \ShiftRight0~6_combout\,
	combout => \ShiftRight0~68_combout\);

-- Location: LCCOMB_X24_Y21_N2
\fracts~102\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~102_combout\ = (\fracts~100_combout\ & ((\fracts~101_combout\ & (\ShiftRight0~78_combout\)) # (!\fracts~101_combout\ & ((\ShiftRight0~68_combout\))))) # (!\fracts~100_combout\ & (((\fracts~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~78_combout\,
	datab => \fracts~100_combout\,
	datac => \fracts~101_combout\,
	datad => \ShiftRight0~68_combout\,
	combout => \fracts~102_combout\);

-- Location: LCCOMB_X26_Y22_N20
\fracts~167\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~167_combout\ = (\fracts~105_combout\ & (!\Add0~16_combout\ & (\LessThan27~0_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~105_combout\,
	datab => \Add0~16_combout\,
	datac => \LessThan27~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \fracts~167_combout\);

-- Location: LCCOMB_X26_Y19_N10
\fracts~107\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~107_combout\ = (\fractc~4_combout\ & (\fracts~106_combout\ & (\fracts~102_combout\))) # (!\fractc~4_combout\ & (((\fracts~167_combout\)) # (!\fracts~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fractc~4_combout\,
	datab => \fracts~106_combout\,
	datac => \fracts~102_combout\,
	datad => \fracts~167_combout\,
	combout => \fracts~107_combout\);

-- Location: LCCOMB_X26_Y19_N20
\fracts~108\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~108_combout\ = (\Equal0~2_combout\ & ((\fracts~107_combout\ & (\b[4]~input_o\)) # (!\fracts~107_combout\ & ((\a[4]~input_o\))))) # (!\Equal0~2_combout\ & (((\fracts~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \Equal0~2_combout\,
	datac => \a[4]~input_o\,
	datad => \fracts~107_combout\,
	combout => \fracts~108_combout\);

-- Location: LCCOMB_X26_Y19_N22
\fracts~109\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~109_combout\ = (!\LessThan0~3_combout\ & \fracts~108_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~3_combout\,
	datad => \fracts~108_combout\,
	combout => \fracts~109_combout\);

-- Location: IOIBUF_X52_Y19_N8
\a[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LCCOMB_X25_Y21_N20
\fractc~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fractc~4_combout\ = (\Add0~16_combout\) # ((\LessThan26~46_combout\ & \Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datac => \LessThan26~46_combout\,
	datad => \Equal0~2_combout\,
	combout => \fractc~4_combout\);

-- Location: LCCOMB_X26_Y19_N8
\fractc~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fractc~19_combout\ = (\fractc~4_combout\ & (\b[3]~input_o\)) # (!\fractc~4_combout\ & ((\a[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[3]~input_o\,
	datac => \a[3]~input_o\,
	datad => \fractc~4_combout\,
	combout => \fractc~19_combout\);

-- Location: LCCOMB_X28_Y23_N6
\ShiftRight0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~3_combout\ = (\Add0~0_combout\ & (\a[13]~input_o\)) # (!\Add0~0_combout\ & ((\a[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[13]~input_o\,
	datac => \a[12]~input_o\,
	datad => \Add0~0_combout\,
	combout => \ShiftRight0~3_combout\);

-- Location: LCCOMB_X28_Y24_N8
\ShiftRight0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~5_combout\ = (\Add1~2_combout\ & ((\ShiftRight0~3_combout\))) # (!\Add1~2_combout\ & (\ShiftRight0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datac => \ShiftRight0~4_combout\,
	datad => \ShiftRight0~3_combout\,
	combout => \ShiftRight0~5_combout\);

-- Location: LCCOMB_X28_Y24_N16
\ShiftRight0~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~73_combout\ = (\Add1~4_combout\ & ((\ShiftRight0~21_combout\))) # (!\Add1~4_combout\ & (\ShiftRight0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~4_combout\,
	datac => \ShiftRight0~5_combout\,
	datad => \ShiftRight0~21_combout\,
	combout => \ShiftRight0~73_combout\);

-- Location: LCCOMB_X24_Y21_N20
\fracts~117\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~117_combout\ = (\fracts~24_combout\ & (((\fracts~100_combout\) # (\ShiftRight0~73_combout\)))) # (!\fracts~24_combout\ & (\ShiftRight0~12_combout\ & (!\fracts~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~12_combout\,
	datab => \fracts~24_combout\,
	datac => \fracts~100_combout\,
	datad => \ShiftRight0~73_combout\,
	combout => \fracts~117_combout\);

-- Location: LCCOMB_X26_Y24_N10
\ShiftRight0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~7_combout\ = (\Add0~0_combout\ & ((\a[7]~input_o\))) # (!\Add0~0_combout\ & (\a[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datac => \a[7]~input_o\,
	datad => \Add0~0_combout\,
	combout => \ShiftRight0~7_combout\);

-- Location: LCCOMB_X28_Y24_N18
\ShiftRight0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~8_combout\ = (\Add1~2_combout\ & (\ShiftRight0~6_combout\)) # (!\Add1~2_combout\ & ((\ShiftRight0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~6_combout\,
	datac => \Add1~2_combout\,
	datad => \ShiftRight0~7_combout\,
	combout => \ShiftRight0~8_combout\);

-- Location: LCCOMB_X24_Y21_N6
\fracts~118\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~118_combout\ = (\fracts~117_combout\ & ((\ShiftRight0~80_combout\) # ((!\fracts~100_combout\)))) # (!\fracts~117_combout\ & (((\fracts~100_combout\ & \ShiftRight0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~80_combout\,
	datab => \fracts~117_combout\,
	datac => \fracts~100_combout\,
	datad => \ShiftRight0~8_combout\,
	combout => \fracts~118_combout\);

-- Location: LCCOMB_X24_Y20_N14
\fracts~103\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~103_combout\ = (\Add0~8_combout\) # ((\Add0~4_combout\ & !\Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~4_combout\,
	datac => \Add0~8_combout\,
	datad => \Add0~6_combout\,
	combout => \fracts~103_combout\);

-- Location: LCCOMB_X24_Y22_N14
\ShiftRight1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~16_combout\ = (\Add0~2_combout\ & (\ShiftRight1~14_combout\)) # (!\Add0~2_combout\ & ((\ShiftRight1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~14_combout\,
	datac => \ShiftRight1~15_combout\,
	datad => \Add0~2_combout\,
	combout => \ShiftRight1~16_combout\);

-- Location: LCCOMB_X24_Y22_N0
\ShiftRight1~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~62_combout\ = (\Add0~4_combout\ & ((\ShiftRight1~16_combout\))) # (!\Add0~4_combout\ & (\ShiftRight1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~2_combout\,
	datab => \ShiftRight1~16_combout\,
	datac => \Add0~4_combout\,
	combout => \ShiftRight1~62_combout\);

-- Location: LCCOMB_X25_Y22_N20
\ShiftRight1~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~9_combout\ = (\Add0~2_combout\ & (\ShiftRight1~7_combout\)) # (!\Add0~2_combout\ & ((\ShiftRight1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~7_combout\,
	datac => \Add0~2_combout\,
	datad => \ShiftRight1~8_combout\,
	combout => \ShiftRight1~9_combout\);

-- Location: LCCOMB_X24_Y20_N20
\fracts~119\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~119_combout\ = (\LessThan0~2_combout\ & (((!\fracts~103_combout\ & \ShiftRight1~9_combout\)))) # (!\LessThan0~2_combout\ & ((\ShiftRight1~62_combout\) # ((\fracts~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \ShiftRight1~62_combout\,
	datac => \fracts~103_combout\,
	datad => \ShiftRight1~9_combout\,
	combout => \fracts~119_combout\);

-- Location: LCCOMB_X24_Y20_N0
\fracts~120\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~120_combout\ = (\fracts~103_combout\ & ((\fracts~119_combout\ & (\ShiftRight1~72_combout\)) # (!\fracts~119_combout\ & ((\ShiftRight1~5_combout\))))) # (!\fracts~103_combout\ & (((\fracts~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~72_combout\,
	datab => \ShiftRight1~5_combout\,
	datac => \fracts~103_combout\,
	datad => \fracts~119_combout\,
	combout => \fracts~120_combout\);

-- Location: LCCOMB_X26_Y22_N0
\fracts~169\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~169_combout\ = (\LessThan27~0_combout\ & (!\Add0~16_combout\ & (\fracts~120_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan27~0_combout\,
	datab => \Add0~16_combout\,
	datac => \fracts~120_combout\,
	datad => \Equal0~0_combout\,
	combout => \fracts~169_combout\);

-- Location: LCCOMB_X26_Y19_N18
\fracts~121\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~121_combout\ = (\fractc~4_combout\ & (\fracts~118_combout\ & ((\fracts~106_combout\)))) # (!\fractc~4_combout\ & (((\fracts~169_combout\) # (!\fracts~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fractc~4_combout\,
	datab => \fracts~118_combout\,
	datac => \fracts~169_combout\,
	datad => \fracts~106_combout\,
	combout => \fracts~121_combout\);

-- Location: LCCOMB_X26_Y19_N12
\fracts~122\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~122_combout\ = (\fracts~121_combout\ & (((\b[2]~input_o\) # (!\Equal0~2_combout\)))) # (!\fracts~121_combout\ & (\a[2]~input_o\ & (\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \fracts~121_combout\,
	datac => \Equal0~2_combout\,
	datad => \b[2]~input_o\,
	combout => \fracts~122_combout\);

-- Location: LCCOMB_X26_Y19_N14
\fracts~123\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~123_combout\ = (!\LessThan0~3_combout\ & \fracts~122_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~3_combout\,
	datad => \fracts~122_combout\,
	combout => \fracts~123_combout\);

-- Location: IOIBUF_X25_Y41_N1
\b[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X25_Y21_N24
\fractc~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fractc~21_combout\ = (\fractc~4_combout\ & ((\b[1]~input_o\))) # (!\fractc~4_combout\ & (\a[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fractc~4_combout\,
	datac => \a[1]~input_o\,
	datad => \b[1]~input_o\,
	combout => \fractc~21_combout\);

-- Location: LCCOMB_X29_Y19_N10
\Add2~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (\fracts~130_combout\ & ((\fractc~21_combout\ & (\Add2~49\ & VCC)) # (!\fractc~21_combout\ & (!\Add2~49\)))) # (!\fracts~130_combout\ & ((\fractc~21_combout\ & (!\Add2~49\)) # (!\fractc~21_combout\ & ((\Add2~49\) # (GND)))))
-- \Add2~51\ = CARRY((\fracts~130_combout\ & (!\fractc~21_combout\ & !\Add2~49\)) # (!\fracts~130_combout\ & ((!\Add2~49\) # (!\fractc~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~130_combout\,
	datab => \fractc~21_combout\,
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: LCCOMB_X29_Y19_N12
\Add2~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = ((\fractc~20_combout\ $ (\fracts~123_combout\ $ (!\Add2~51\)))) # (GND)
-- \Add2~53\ = CARRY((\fractc~20_combout\ & ((\fracts~123_combout\) # (!\Add2~51\))) # (!\fractc~20_combout\ & (\fracts~123_combout\ & !\Add2~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fractc~20_combout\,
	datab => \fracts~123_combout\,
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: LCCOMB_X29_Y19_N14
\Add2~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (\fracts~116_combout\ & ((\fractc~19_combout\ & (\Add2~53\ & VCC)) # (!\fractc~19_combout\ & (!\Add2~53\)))) # (!\fracts~116_combout\ & ((\fractc~19_combout\ & (!\Add2~53\)) # (!\fractc~19_combout\ & ((\Add2~53\) # (GND)))))
-- \Add2~55\ = CARRY((\fracts~116_combout\ & (!\fractc~19_combout\ & !\Add2~53\)) # (!\fracts~116_combout\ & ((!\Add2~53\) # (!\fractc~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~116_combout\,
	datab => \fractc~19_combout\,
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: LCCOMB_X29_Y19_N18
\Add2~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (\fractc~17_combout\ & ((\fracts~99_combout\ & (\Add2~57\ & VCC)) # (!\fracts~99_combout\ & (!\Add2~57\)))) # (!\fractc~17_combout\ & ((\fracts~99_combout\ & (!\Add2~57\)) # (!\fracts~99_combout\ & ((\Add2~57\) # (GND)))))
-- \Add2~59\ = CARRY((\fractc~17_combout\ & (!\fracts~99_combout\ & !\Add2~57\)) # (!\fractc~17_combout\ & ((!\Add2~57\) # (!\fracts~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fractc~17_combout\,
	datab => \fracts~99_combout\,
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: LCCOMB_X30_Y16_N12
\Add2~112\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~112_combout\ = (\Add3~16_combout\ & ((\Add2~58_combout\) # (\a[31]~input_o\ $ (\b[31]~input_o\)))) # (!\Add3~16_combout\ & (\Add2~58_combout\ & (\a[31]~input_o\ $ (!\b[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~16_combout\,
	datab => \Add2~58_combout\,
	datac => \a[31]~input_o\,
	datad => \b[31]~input_o\,
	combout => \Add2~112_combout\);

-- Location: IOIBUF_X16_Y41_N8
\b[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(10),
	o => \b[10]~input_o\);

-- Location: LCCOMB_X25_Y23_N24
\fractc~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fractc~11_combout\ = (\fractc~4_combout\ & (\b[10]~input_o\)) # (!\fractc~4_combout\ & ((\a[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fractc~4_combout\,
	datac => \b[10]~input_o\,
	datad => \a[10]~input_o\,
	combout => \fractc~11_combout\);

-- Location: LCCOMB_X25_Y21_N0
\fracts~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~53_combout\ = (\Add0~6_combout\) # ((\Equal0~2_combout\ & \LessThan26~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datac => \LessThan26~46_combout\,
	datad => \Add0~6_combout\,
	combout => \fracts~53_combout\);

-- Location: LCCOMB_X25_Y23_N2
\fracts~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~72_combout\ = (\fracts~53_combout\ & (((\Equal0~2_combout\)))) # (!\fracts~53_combout\ & ((\Equal0~2_combout\ & ((\b[9]~input_o\))) # (!\Equal0~2_combout\ & (\ShiftRight1~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~65_combout\,
	datab => \fracts~53_combout\,
	datac => \b[9]~input_o\,
	datad => \Equal0~2_combout\,
	combout => \fracts~72_combout\);

-- Location: LCCOMB_X25_Y23_N28
\fracts~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~73_combout\ = (\fracts~53_combout\ & ((\fracts~72_combout\ & ((\a[9]~input_o\))) # (!\fracts~72_combout\ & (\ShiftRight1~64_combout\)))) # (!\fracts~53_combout\ & (((\fracts~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~64_combout\,
	datab => \fracts~53_combout\,
	datac => \a[9]~input_o\,
	datad => \fracts~72_combout\,
	combout => \fracts~73_combout\);

-- Location: LCCOMB_X26_Y23_N10
\ShiftRight0~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~33_combout\ = (\Add1~2_combout\ & (((!\Add0~0_combout\ & \Result~14_combout\)))) # (!\Add1~2_combout\ & (\ShiftRight0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~32_combout\,
	datab => \Add0~0_combout\,
	datac => \Result~14_combout\,
	datad => \Add1~2_combout\,
	combout => \ShiftRight0~33_combout\);

-- Location: LCCOMB_X25_Y24_N6
\fracts~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~70_combout\ = (\Add1~6_combout\ & ((\Add1~4_combout\ & ((\ShiftRight0~33_combout\))) # (!\Add1~4_combout\ & (\ShiftRight0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \ShiftRight0~27_combout\,
	datac => \ShiftRight0~33_combout\,
	datad => \Add1~6_combout\,
	combout => \fracts~70_combout\);

-- Location: LCCOMB_X25_Y24_N16
\ShiftRight0~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~74_combout\ = (\Add1~4_combout\ & ((\ShiftRight0~30_combout\))) # (!\Add1~4_combout\ & (\ShiftRight0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \ShiftRight0~38_combout\,
	datac => \ShiftRight0~30_combout\,
	combout => \ShiftRight0~74_combout\);

-- Location: LCCOMB_X25_Y24_N18
\fracts~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~71_combout\ = (\fracts~57_combout\ & ((\fracts~70_combout\) # ((!\Add1~6_combout\ & \ShiftRight0~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \fracts~57_combout\,
	datac => \fracts~70_combout\,
	datad => \ShiftRight0~74_combout\,
	combout => \fracts~71_combout\);

-- Location: LCCOMB_X25_Y23_N22
\fracts~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~74_combout\ = (!\LessThan0~3_combout\ & ((\fracts~71_combout\) # ((\fracts~61_combout\ & \fracts~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~61_combout\,
	datab => \fracts~73_combout\,
	datac => \fracts~71_combout\,
	datad => \LessThan0~3_combout\,
	combout => \fracts~74_combout\);

-- Location: IOIBUF_X25_Y0_N8
\a[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: LCCOMB_X23_Y22_N26
\fractc~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fractc~13_combout\ = (\fractc~4_combout\ & ((\b[8]~input_o\))) # (!\fractc~4_combout\ & (\a[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[8]~input_o\,
	datac => \b[8]~input_o\,
	datad => \fractc~4_combout\,
	combout => \fractc~13_combout\);

-- Location: LCCOMB_X25_Y23_N4
\ShiftRight0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~36_combout\ = (\Add0~0_combout\ & (\a[12]~input_o\)) # (!\Add0~0_combout\ & ((\a[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[12]~input_o\,
	datac => \a[11]~input_o\,
	datad => \Add0~0_combout\,
	combout => \ShiftRight0~36_combout\);

-- Location: LCCOMB_X26_Y23_N4
\ShiftRight0~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~53_combout\ = (\Add1~2_combout\ & ((\ShiftRight0~29_combout\))) # (!\Add1~2_combout\ & (\ShiftRight0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datac => \ShiftRight0~36_combout\,
	datad => \ShiftRight0~29_combout\,
	combout => \ShiftRight0~53_combout\);

-- Location: LCCOMB_X26_Y24_N18
\ShiftRight0~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~39_combout\ = (\Add0~0_combout\ & ((\a[8]~input_o\))) # (!\Add0~0_combout\ & (\a[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[7]~input_o\,
	datac => \a[8]~input_o\,
	datad => \Add0~0_combout\,
	combout => \ShiftRight0~39_combout\);

-- Location: LCCOMB_X26_Y24_N28
\ShiftRight0~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~54_combout\ = (\Add1~2_combout\ & ((\ShiftRight0~37_combout\))) # (!\Add1~2_combout\ & (\ShiftRight0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~39_combout\,
	datac => \ShiftRight0~37_combout\,
	datad => \Add1~2_combout\,
	combout => \ShiftRight0~54_combout\);

-- Location: LCCOMB_X26_Y23_N14
\ShiftRight0~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~55_combout\ = (\Add1~4_combout\ & (\ShiftRight0~53_combout\)) # (!\Add1~4_combout\ & ((\ShiftRight0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~53_combout\,
	datac => \Add1~4_combout\,
	datad => \ShiftRight0~54_combout\,
	combout => \ShiftRight0~55_combout\);

-- Location: LCCOMB_X26_Y23_N20
\ShiftRight0~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~58_combout\ = (\Add1~2_combout\ & ((\ShiftRight0~26_combout\))) # (!\Add1~2_combout\ & (\ShiftRight0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \ShiftRight0~28_combout\,
	datad => \ShiftRight0~26_combout\,
	combout => \ShiftRight0~58_combout\);

-- Location: IOIBUF_X52_Y15_N1
\a[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(20),
	o => \a[20]~input_o\);

-- Location: LCCOMB_X27_Y22_N12
\ShiftRight0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~25_combout\ = (\Add0~0_combout\ & ((\a[20]~input_o\))) # (!\Add0~0_combout\ & (\a[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[19]~input_o\,
	datac => \a[20]~input_o\,
	datad => \Add0~0_combout\,
	combout => \ShiftRight0~25_combout\);

-- Location: IOIBUF_X31_Y0_N15
\a[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(22),
	o => \a[22]~input_o\);

-- Location: LCCOMB_X27_Y23_N4
\ShiftRight0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~32_combout\ = (\Add0~0_combout\ & ((\a[22]~input_o\))) # (!\Add0~0_combout\ & (\a[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[21]~input_o\,
	datab => \a[22]~input_o\,
	datac => \Add0~0_combout\,
	combout => \ShiftRight0~32_combout\);

-- Location: LCCOMB_X26_Y23_N2
\ShiftRight0~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~57_combout\ = (\Add1~2_combout\ & ((\ShiftRight0~32_combout\))) # (!\Add1~2_combout\ & (\ShiftRight0~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \ShiftRight0~25_combout\,
	datad => \ShiftRight0~32_combout\,
	combout => \ShiftRight0~57_combout\);

-- Location: LCCOMB_X26_Y23_N22
\ShiftRight0~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~59_combout\ = (\Add1~4_combout\ & ((\ShiftRight0~57_combout\))) # (!\Add1~4_combout\ & (\ShiftRight0~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~58_combout\,
	datac => \Add1~4_combout\,
	datad => \ShiftRight0~57_combout\,
	combout => \ShiftRight0~59_combout\);

-- Location: LCCOMB_X26_Y23_N24
\fracts~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~88_combout\ = (\fracts~87_combout\ & ((\ShiftRight0~55_combout\) # ((!\fracts~57_combout\)))) # (!\fracts~87_combout\ & (((\ShiftRight0~59_combout\ & \fracts~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~87_combout\,
	datab => \ShiftRight0~55_combout\,
	datac => \ShiftRight0~59_combout\,
	datad => \fracts~57_combout\,
	combout => \fracts~88_combout\);

-- Location: LCCOMB_X27_Y20_N18
\fracts~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~89_combout\ = (!\LessThan0~3_combout\ & ((\fractc~14_combout\ & (\a[7]~input_o\)) # (!\fractc~14_combout\ & ((\fracts~88_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datab => \fracts~88_combout\,
	datac => \LessThan0~3_combout\,
	datad => \fractc~14_combout\,
	combout => \fracts~89_combout\);

-- Location: LCCOMB_X27_Y20_N20
\fracts~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~94_combout\ = (!\LessThan0~3_combout\ & ((\fractc~14_combout\ & ((\a[6]~input_o\))) # (!\fractc~14_combout\ & (\fracts~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~93_combout\,
	datab => \a[6]~input_o\,
	datac => \LessThan0~3_combout\,
	datad => \fractc~14_combout\,
	combout => \fracts~94_combout\);

-- Location: LCCOMB_X29_Y19_N20
\Add2~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = ((\fractc~16_combout\ $ (\fracts~94_combout\ $ (!\Add2~59\)))) # (GND)
-- \Add2~61\ = CARRY((\fractc~16_combout\ & ((\fracts~94_combout\) # (!\Add2~59\))) # (!\fractc~16_combout\ & (\fracts~94_combout\ & !\Add2~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fractc~16_combout\,
	datab => \fracts~94_combout\,
	datad => VCC,
	cin => \Add2~59\,
	combout => \Add2~60_combout\,
	cout => \Add2~61\);

-- Location: LCCOMB_X29_Y19_N24
\Add2~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~64_combout\ = ((\fracts~80_combout\ $ (\fractc~13_combout\ $ (!\Add2~63\)))) # (GND)
-- \Add2~65\ = CARRY((\fracts~80_combout\ & ((\fractc~13_combout\) # (!\Add2~63\))) # (!\fracts~80_combout\ & (\fractc~13_combout\ & !\Add2~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~80_combout\,
	datab => \fractc~13_combout\,
	datad => VCC,
	cin => \Add2~63\,
	combout => \Add2~64_combout\,
	cout => \Add2~65\);

-- Location: LCCOMB_X29_Y19_N28
\Add2~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~68_combout\ = ((\fracts~69_combout\ $ (\fractc~11_combout\ $ (!\Add2~67\)))) # (GND)
-- \Add2~69\ = CARRY((\fracts~69_combout\ & ((\fractc~11_combout\) # (!\Add2~67\))) # (!\fracts~69_combout\ & (\fractc~11_combout\ & !\Add2~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~69_combout\,
	datab => \fractc~11_combout\,
	datad => VCC,
	cin => \Add2~67\,
	combout => \Add2~68_combout\,
	cout => \Add2~69\);

-- Location: LCCOMB_X25_Y19_N4
\fractc~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fractc~15_combout\ = (\fractc~4_combout\ & (\b[7]~input_o\)) # (!\fractc~4_combout\ & ((\a[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datac => \a[7]~input_o\,
	datad => \fractc~4_combout\,
	combout => \fractc~15_combout\);

-- Location: LCCOMB_X26_Y22_N18
\fracts~170\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~170_combout\ = (\fracts~127_combout\ & (!\Add0~16_combout\ & (\LessThan27~0_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~127_combout\,
	datab => \Add0~16_combout\,
	datac => \LessThan27~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \fracts~170_combout\);

-- Location: LCCOMB_X25_Y21_N18
\fracts~128\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~128_combout\ = (\fractc~4_combout\ & (\fracts~125_combout\ & (\fracts~106_combout\))) # (!\fractc~4_combout\ & (((\fracts~170_combout\) # (!\fracts~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~125_combout\,
	datab => \fractc~4_combout\,
	datac => \fracts~106_combout\,
	datad => \fracts~170_combout\,
	combout => \fracts~128_combout\);

-- Location: LCCOMB_X25_Y21_N28
\fracts~129\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~129_combout\ = (\Equal0~2_combout\ & ((\fracts~128_combout\ & ((\b[1]~input_o\))) # (!\fracts~128_combout\ & (\a[1]~input_o\)))) # (!\Equal0~2_combout\ & (\fracts~128_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \fracts~128_combout\,
	datac => \a[1]~input_o\,
	datad => \b[1]~input_o\,
	combout => \fracts~129_combout\);

-- Location: LCCOMB_X25_Y21_N22
\fracts~130\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~130_combout\ = (!\LessThan0~3_combout\ & \fracts~129_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~3_combout\,
	datad => \fracts~129_combout\,
	combout => \fracts~130_combout\);

-- Location: LCCOMB_X28_Y19_N12
\Add3~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = ((\fractc~21_combout\ $ (\fracts~130_combout\ $ (\Add3~7\)))) # (GND)
-- \Add3~9\ = CARRY((\fractc~21_combout\ & ((!\Add3~7\) # (!\fracts~130_combout\))) # (!\fractc~21_combout\ & (!\fracts~130_combout\ & !\Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fractc~21_combout\,
	datab => \fracts~130_combout\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X28_Y19_N16
\Add3~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = ((\fracts~116_combout\ $ (\fractc~19_combout\ $ (\Add3~11\)))) # (GND)
-- \Add3~13\ = CARRY((\fracts~116_combout\ & (\fractc~19_combout\ & !\Add3~11\)) # (!\fracts~116_combout\ & ((\fractc~19_combout\) # (!\Add3~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~116_combout\,
	datab => \fractc~19_combout\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X28_Y19_N18
\Add3~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (\fractc~18_combout\ & ((\fracts~109_combout\ & (!\Add3~13\)) # (!\fracts~109_combout\ & (\Add3~13\ & VCC)))) # (!\fractc~18_combout\ & ((\fracts~109_combout\ & ((\Add3~13\) # (GND))) # (!\fracts~109_combout\ & (!\Add3~13\))))
-- \Add3~15\ = CARRY((\fractc~18_combout\ & (\fracts~109_combout\ & !\Add3~13\)) # (!\fractc~18_combout\ & ((\fracts~109_combout\) # (!\Add3~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fractc~18_combout\,
	datab => \fracts~109_combout\,
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X28_Y19_N24
\Add3~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = ((\fracts~89_combout\ $ (\fractc~15_combout\ $ (\Add3~19\)))) # (GND)
-- \Add3~21\ = CARRY((\fracts~89_combout\ & (\fractc~15_combout\ & !\Add3~19\)) # (!\fracts~89_combout\ & ((\fractc~15_combout\) # (!\Add3~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~89_combout\,
	datab => \fractc~15_combout\,
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X28_Y19_N28
\Add3~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = ((\fractc~12_combout\ $ (\fracts~74_combout\ $ (\Add3~23\)))) # (GND)
-- \Add3~25\ = CARRY((\fractc~12_combout\ & ((!\Add3~23\) # (!\fracts~74_combout\))) # (!\fractc~12_combout\ & (!\fracts~74_combout\ & !\Add3~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fractc~12_combout\,
	datab => \fracts~74_combout\,
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X29_Y16_N10
\Add2~118\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~118_combout\ = (\Add2~66_combout\ & ((\Add3~24_combout\) # (\a[31]~input_o\ $ (!\b[31]~input_o\)))) # (!\Add2~66_combout\ & (\Add3~24_combout\ & (\a[31]~input_o\ $ (\b[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~66_combout\,
	datab => \Add3~24_combout\,
	datac => \a[31]~input_o\,
	datad => \b[31]~input_o\,
	combout => \Add2~118_combout\);

-- Location: LCCOMB_X30_Y19_N22
\Result~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Result~17_combout\ = (!\Add2~118_combout\ & ((\add~4_combout\ & (!\Add3~26_combout\)) # (!\add~4_combout\ & ((!\Add2~68_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~26_combout\,
	datab => \Add2~68_combout\,
	datac => \Add2~118_combout\,
	datad => \add~4_combout\,
	combout => \Result~17_combout\);

-- Location: LCCOMB_X29_Y19_N4
\Add2~116\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~116_combout\ = (\Add2~62_combout\ & ((\Add3~20_combout\) # (\a[31]~input_o\ $ (!\b[31]~input_o\)))) # (!\Add2~62_combout\ & (\Add3~20_combout\ & (\a[31]~input_o\ $ (\b[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~62_combout\,
	datab => \a[31]~input_o\,
	datac => \b[31]~input_o\,
	datad => \Add3~20_combout\,
	combout => \Add2~116_combout\);

-- Location: LCCOMB_X30_Y16_N30
\Add2~115\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~115_combout\ = (\Add3~18_combout\ & ((\Add2~60_combout\) # (\a[31]~input_o\ $ (\b[31]~input_o\)))) # (!\Add3~18_combout\ & (\Add2~60_combout\ & (\a[31]~input_o\ $ (!\b[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~18_combout\,
	datab => \Add2~60_combout\,
	datac => \a[31]~input_o\,
	datad => \b[31]~input_o\,
	combout => \Add2~115_combout\);

-- Location: LCCOMB_X30_Y16_N16
\find_leftmost~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~8_combout\ = (!\Add2~117_combout\ & (!\Add2~116_combout\ & !\Add2~115_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~117_combout\,
	datab => \Add2~116_combout\,
	datac => \Add2~115_combout\,
	combout => \find_leftmost~8_combout\);

-- Location: LCCOMB_X30_Y19_N20
\find_leftmost~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~29_combout\ = (!\find_leftmost~5_combout\ & (!\Add2~112_combout\ & (\Result~17_combout\ & \find_leftmost~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \find_leftmost~5_combout\,
	datab => \Add2~112_combout\,
	datac => \Result~17_combout\,
	datad => \find_leftmost~8_combout\,
	combout => \find_leftmost~29_combout\);

-- Location: LCCOMB_X30_Y19_N8
\Add2~113\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~113_combout\ = (\Add2~54_combout\ & ((\Add3~12_combout\) # (\a[31]~input_o\ $ (!\b[31]~input_o\)))) # (!\Add2~54_combout\ & (\Add3~12_combout\ & (\a[31]~input_o\ $ (\b[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~54_combout\,
	datab => \Add3~12_combout\,
	datac => \a[31]~input_o\,
	datad => \b[31]~input_o\,
	combout => \Add2~113_combout\);

-- Location: LCCOMB_X30_Y19_N2
\Add2~114\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~114_combout\ = (\Add2~56_combout\ & ((\Add3~14_combout\) # (\a[31]~input_o\ $ (!\b[31]~input_o\)))) # (!\Add2~56_combout\ & (\Add3~14_combout\ & (\a[31]~input_o\ $ (\b[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~56_combout\,
	datab => \Add3~14_combout\,
	datac => \a[31]~input_o\,
	datad => \b[31]~input_o\,
	combout => \Add2~114_combout\);

-- Location: LCCOMB_X30_Y19_N12
\find_leftmost~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~7_combout\ = (\find_leftmost~6_combout\ & (!\Add2~112_combout\ & (!\Add2~113_combout\ & !\Add2~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \find_leftmost~6_combout\,
	datab => \Add2~112_combout\,
	datac => \Add2~113_combout\,
	datad => \Add2~114_combout\,
	combout => \find_leftmost~7_combout\);

-- Location: LCCOMB_X30_Y19_N24
\find_leftmost~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~9_combout\ = (\find_leftmost~5_combout\) # (((!\find_leftmost~7_combout\) # (!\Result~17_combout\)) # (!\find_leftmost~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \find_leftmost~5_combout\,
	datab => \find_leftmost~8_combout\,
	datac => \Result~17_combout\,
	datad => \find_leftmost~7_combout\,
	combout => \find_leftmost~9_combout\);

-- Location: LCCOMB_X30_Y19_N30
\find_leftmost~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~30_combout\ = (\find_leftmost~29_combout\ & (\find_leftmost~9_combout\ & ((\Add2~114_combout\) # (\Add2~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~114_combout\,
	datab => \find_leftmost~29_combout\,
	datac => \Add2~113_combout\,
	datad => \find_leftmost~9_combout\,
	combout => \find_leftmost~30_combout\);

-- Location: LCCOMB_X30_Y19_N0
\find_leftmost~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~32_combout\ = (\find_leftmost~28_combout\) # ((\find_leftmost~30_combout\) # ((\find_leftmost~31_combout\ & !\find_leftmost~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \find_leftmost~28_combout\,
	datab => \find_leftmost~31_combout\,
	datac => \find_leftmost~30_combout\,
	datad => \find_leftmost~9_combout\,
	combout => \find_leftmost~32_combout\);

-- Location: LCCOMB_X30_Y19_N26
\find_leftmost~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~40_combout\ = (\Add2~111_combout\ & ((\add~4_combout\ & (!\Add3~12_combout\)) # (!\add~4_combout\ & ((!\Add2~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~111_combout\,
	datab => \add~4_combout\,
	datac => \Add3~12_combout\,
	datad => \Add2~54_combout\,
	combout => \find_leftmost~40_combout\);

-- Location: LCCOMB_X30_Y19_N4
\find_leftmost~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~41_combout\ = (\find_leftmost~9_combout\ & (\find_leftmost~29_combout\ & ((\Add2~114_combout\) # (\find_leftmost~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~114_combout\,
	datab => \find_leftmost~9_combout\,
	datac => \find_leftmost~40_combout\,
	datad => \find_leftmost~29_combout\,
	combout => \find_leftmost~41_combout\);

-- Location: LCCOMB_X28_Y17_N2
\find_leftmost~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~42_combout\ = (\Add2~99_combout\) # ((!\ufract~1_combout\ & ((\ufract~0_combout\) # (!\ufract~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufract~2_combout\,
	datab => \ufract~1_combout\,
	datac => \ufract~0_combout\,
	datad => \Add2~99_combout\,
	combout => \find_leftmost~42_combout\);

-- Location: LCCOMB_X30_Y19_N10
\find_leftmost~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~15_combout\ = (\find_leftmost~5_combout\) # ((!\Result~17_combout\) # (!\find_leftmost~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \find_leftmost~5_combout\,
	datab => \find_leftmost~8_combout\,
	datac => \Result~17_combout\,
	combout => \find_leftmost~15_combout\);

-- Location: LCCOMB_X28_Y22_N2
\fractc~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fractc~27_combout\ = (\fractc~4_combout\ & ((\b[22]~input_o\))) # (!\fractc~4_combout\ & (\a[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fractc~4_combout\,
	datab => \a[22]~input_o\,
	datad => \b[22]~input_o\,
	combout => \fractc~27_combout\);

-- Location: LCCOMB_X27_Y22_N10
\fracts~161\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~161_combout\ = (\fracts~160_combout\ & (((\b[21]~input_o\) # (!\Equal0~2_combout\)))) # (!\fracts~160_combout\ & (\a[21]~input_o\ & (\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~160_combout\,
	datab => \a[21]~input_o\,
	datac => \Equal0~2_combout\,
	datad => \b[21]~input_o\,
	combout => \fracts~161_combout\);

-- Location: LCCOMB_X27_Y22_N28
\fracts~162\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~162_combout\ = (!\LessThan0~3_combout\ & \fracts~161_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~3_combout\,
	datad => \fracts~161_combout\,
	combout => \fracts~162_combout\);

-- Location: LCCOMB_X27_Y22_N6
\fractc~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fractc~26_combout\ = (\fractc~4_combout\ & (\b[20]~input_o\)) # (!\fractc~4_combout\ & ((\a[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[20]~input_o\,
	datab => \fractc~4_combout\,
	datac => \a[20]~input_o\,
	combout => \fractc~26_combout\);

-- Location: LCCOMB_X26_Y21_N26
\fracts~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~42_combout\ = (!\Equal0~2_combout\ & (((\ShiftRight0~2_combout\ & !\Add1~8_combout\)) # (!\fractc~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~2_combout\,
	datab => \Equal0~2_combout\,
	datac => \Add1~8_combout\,
	datad => \fractc~4_combout\,
	combout => \fracts~42_combout\);

-- Location: LCCOMB_X24_Y19_N28
\ShiftRight1~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~59_combout\ = (\Add0~4_combout\ & (!\Add0~2_combout\ & ((\ShiftRight1~19_combout\)))) # (!\Add0~4_combout\ & (((\ShiftRight1~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \ShiftRight1~42_combout\,
	datac => \Add0~4_combout\,
	datad => \ShiftRight1~19_combout\,
	combout => \ShiftRight1~59_combout\);

-- Location: LCCOMB_X27_Y22_N22
\fracts~143\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~143_combout\ = (!\fracts~41_combout\ & (!\Add0~6_combout\ & \ShiftRight1~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~41_combout\,
	datac => \Add0~6_combout\,
	datad => \ShiftRight1~59_combout\,
	combout => \fracts~143_combout\);

-- Location: LCCOMB_X27_Y22_N0
\fracts~144\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~144_combout\ = (\fracts~42_combout\ & ((\fractc~4_combout\ & (\ShiftRight0~79_combout\)) # (!\fractc~4_combout\ & ((\fracts~143_combout\))))) # (!\fracts~42_combout\ & (((!\fractc~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~79_combout\,
	datab => \fracts~42_combout\,
	datac => \fractc~4_combout\,
	datad => \fracts~143_combout\,
	combout => \fracts~144_combout\);

-- Location: LCCOMB_X27_Y22_N2
\fracts~145\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~145_combout\ = (\Equal0~2_combout\ & ((\fracts~144_combout\ & (\b[19]~input_o\)) # (!\fracts~144_combout\ & ((\a[19]~input_o\))))) # (!\Equal0~2_combout\ & (((\fracts~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[19]~input_o\,
	datab => \Equal0~2_combout\,
	datac => \a[19]~input_o\,
	datad => \fracts~144_combout\,
	combout => \fracts~145_combout\);

-- Location: LCCOMB_X27_Y22_N20
\fracts~146\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~146_combout\ = (!\LessThan0~3_combout\ & \fracts~145_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~3_combout\,
	datad => \fracts~145_combout\,
	combout => \fracts~146_combout\);

-- Location: LCCOMB_X28_Y24_N6
\ShiftRight0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~18_combout\ = (\Add1~2_combout\ & (\ShiftRight0~16_combout\)) # (!\Add1~2_combout\ & ((\ShiftRight0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~16_combout\,
	datac => \Add1~2_combout\,
	datad => \ShiftRight0~17_combout\,
	combout => \ShiftRight0~18_combout\);

-- Location: LCCOMB_X28_Y24_N4
\ShiftRight0~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~80_combout\ = (!\Add1~6_combout\ & ((\Add1~4_combout\ & (\ShiftRight0~23_combout\)) # (!\Add1~4_combout\ & ((\ShiftRight0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~23_combout\,
	datab => \Add1~4_combout\,
	datac => \Add1~6_combout\,
	datad => \ShiftRight0~18_combout\,
	combout => \ShiftRight0~80_combout\);

-- Location: LCCOMB_X24_Y22_N4
\ShiftRight1~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~13_combout\ = (\Add0~2_combout\ & ((\ShiftRight1~11_combout\))) # (!\Add0~2_combout\ & (\ShiftRight1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~12_combout\,
	datab => \ShiftRight1~11_combout\,
	datad => \Add0~2_combout\,
	combout => \ShiftRight1~13_combout\);

-- Location: LCCOMB_X24_Y22_N30
\ShiftRight1~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~61_combout\ = (\Add0~4_combout\ & (\Mux1~0_combout\ & ((!\Add0~2_combout\)))) # (!\Add0~4_combout\ & (((\ShiftRight1~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Mux1~0_combout\,
	datac => \ShiftRight1~13_combout\,
	datad => \Add0~2_combout\,
	combout => \ShiftRight1~61_combout\);

-- Location: LCCOMB_X28_Y21_N10
\fracts~131\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~131_combout\ = (!\fracts~41_combout\ & (\ShiftRight1~61_combout\ & !\Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~41_combout\,
	datac => \ShiftRight1~61_combout\,
	datad => \Add0~6_combout\,
	combout => \fracts~131_combout\);

-- Location: LCCOMB_X28_Y21_N12
\fracts~132\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~132_combout\ = (\fracts~42_combout\ & ((\fractc~4_combout\ & (\ShiftRight0~80_combout\)) # (!\fractc~4_combout\ & ((\fracts~131_combout\))))) # (!\fracts~42_combout\ & (!\fractc~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~42_combout\,
	datab => \fractc~4_combout\,
	datac => \ShiftRight0~80_combout\,
	datad => \fracts~131_combout\,
	combout => \fracts~132_combout\);

-- Location: LCCOMB_X28_Y21_N22
\fracts~133\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~133_combout\ = (\Equal0~2_combout\ & ((\fracts~132_combout\ & ((\b[18]~input_o\))) # (!\fracts~132_combout\ & (\a[18]~input_o\)))) # (!\Equal0~2_combout\ & (((\fracts~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[18]~input_o\,
	datab => \Equal0~2_combout\,
	datac => \b[18]~input_o\,
	datad => \fracts~132_combout\,
	combout => \fracts~133_combout\);

-- Location: LCCOMB_X28_Y21_N8
\fracts~134\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~134_combout\ = (\fracts~133_combout\ & !\LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fracts~133_combout\,
	datad => \LessThan0~3_combout\,
	combout => \fracts~134_combout\);

-- Location: LCCOMB_X28_Y21_N26
\fractc~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fractc~23_combout\ = (\fractc~4_combout\ & (\b[17]~input_o\)) # (!\fractc~4_combout\ & ((\a[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[17]~input_o\,
	datab => \a[17]~input_o\,
	datad => \fractc~4_combout\,
	combout => \fractc~23_combout\);

-- Location: LCCOMB_X27_Y18_N28
\fractc~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fractc~24_combout\ = (\fractc~4_combout\ & (\b[16]~input_o\)) # (!\fractc~4_combout\ & ((\a[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[16]~input_o\,
	datac => \a[16]~input_o\,
	datad => \fractc~4_combout\,
	combout => \fractc~24_combout\);

-- Location: IOIBUF_X14_Y41_N8
\b[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(15),
	o => \b[15]~input_o\);

-- Location: LCCOMB_X27_Y18_N14
\fractc~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fractc~6_combout\ = (\fractc~4_combout\ & ((\b[15]~input_o\))) # (!\fractc~4_combout\ & (\a[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[15]~input_o\,
	datac => \b[15]~input_o\,
	datad => \fractc~4_combout\,
	combout => \fractc~6_combout\);

-- Location: LCCOMB_X27_Y18_N20
\fractc~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fractc~7_combout\ = (\fractc~4_combout\ & (\b[14]~input_o\)) # (!\fractc~4_combout\ & ((\a[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[14]~input_o\,
	datac => \a[14]~input_o\,
	datad => \fractc~4_combout\,
	combout => \fractc~7_combout\);

-- Location: LCCOMB_X25_Y24_N20
\ShiftRight0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~34_combout\ = (\Add1~6_combout\ & (!\Add1~4_combout\ & ((\ShiftRight0~33_combout\)))) # (!\Add1~6_combout\ & (((\ShiftRight0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \ShiftRight0~31_combout\,
	datac => \ShiftRight0~33_combout\,
	datad => \Add1~6_combout\,
	combout => \ShiftRight0~34_combout\);

-- Location: LCCOMB_X28_Y21_N2
\fracts~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~50_combout\ = (\fractc~4_combout\ & (((\fracts~42_combout\ & \ShiftRight0~34_combout\)))) # (!\fractc~4_combout\ & ((\fracts~49_combout\) # ((!\fracts~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~49_combout\,
	datab => \fractc~4_combout\,
	datac => \fracts~42_combout\,
	datad => \ShiftRight0~34_combout\,
	combout => \fracts~50_combout\);

-- Location: LCCOMB_X28_Y21_N28
\fracts~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~51_combout\ = (\Equal0~2_combout\ & ((\fracts~50_combout\ & ((\b[13]~input_o\))) # (!\fracts~50_combout\ & (\a[13]~input_o\)))) # (!\Equal0~2_combout\ & (((\fracts~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[13]~input_o\,
	datab => \Equal0~2_combout\,
	datac => \b[13]~input_o\,
	datad => \fracts~50_combout\,
	combout => \fracts~51_combout\);

-- Location: LCCOMB_X28_Y21_N14
\fracts~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~52_combout\ = (!\LessThan0~3_combout\ & \fracts~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~3_combout\,
	datad => \fracts~51_combout\,
	combout => \fracts~52_combout\);

-- Location: LCCOMB_X27_Y18_N22
\fractc~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fractc~9_combout\ = (\fractc~4_combout\ & (\b[12]~input_o\)) # (!\fractc~4_combout\ & ((\a[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[12]~input_o\,
	datac => \a[12]~input_o\,
	datad => \fractc~4_combout\,
	combout => \fractc~9_combout\);

-- Location: LCCOMB_X25_Y23_N16
\fractc~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fractc~10_combout\ = (\fractc~4_combout\ & (\b[11]~input_o\)) # (!\fractc~4_combout\ & ((\a[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[11]~input_o\,
	datac => \a[11]~input_o\,
	datad => \fractc~4_combout\,
	combout => \fractc~10_combout\);

-- Location: LCCOMB_X28_Y18_N0
\Add3~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = ((\fracts~64_combout\ $ (\fractc~10_combout\ $ (\Add3~27\)))) # (GND)
-- \Add3~29\ = CARRY((\fracts~64_combout\ & (\fractc~10_combout\ & !\Add3~27\)) # (!\fracts~64_combout\ & ((\fractc~10_combout\) # (!\Add3~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~64_combout\,
	datab => \fractc~10_combout\,
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X28_Y18_N6
\Add3~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (\fracts~48_combout\ & ((\fractc~7_combout\ & (!\Add3~33\)) # (!\fractc~7_combout\ & ((\Add3~33\) # (GND))))) # (!\fracts~48_combout\ & ((\fractc~7_combout\ & (\Add3~33\ & VCC)) # (!\fractc~7_combout\ & (!\Add3~33\))))
-- \Add3~35\ = CARRY((\fracts~48_combout\ & ((!\Add3~33\) # (!\fractc~7_combout\))) # (!\fracts~48_combout\ & (!\fractc~7_combout\ & !\Add3~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~48_combout\,
	datab => \fractc~7_combout\,
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: LCCOMB_X28_Y18_N10
\Add3~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (\fracts~142_combout\ & ((\fractc~24_combout\ & (!\Add3~37\)) # (!\fractc~24_combout\ & ((\Add3~37\) # (GND))))) # (!\fracts~142_combout\ & ((\fractc~24_combout\ & (\Add3~37\ & VCC)) # (!\fractc~24_combout\ & (!\Add3~37\))))
-- \Add3~39\ = CARRY((\fracts~142_combout\ & ((!\Add3~37\) # (!\fractc~24_combout\))) # (!\fracts~142_combout\ & (!\fractc~24_combout\ & !\Add3~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~142_combout\,
	datab => \fractc~24_combout\,
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: LCCOMB_X28_Y18_N12
\Add3~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = ((\fracts~138_combout\ $ (\fractc~23_combout\ $ (\Add3~39\)))) # (GND)
-- \Add3~41\ = CARRY((\fracts~138_combout\ & (\fractc~23_combout\ & !\Add3~39\)) # (!\fracts~138_combout\ & ((\fractc~23_combout\) # (!\Add3~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~138_combout\,
	datab => \fractc~23_combout\,
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

-- Location: LCCOMB_X28_Y18_N16
\Add3~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = ((\fractc~25_combout\ $ (\fracts~146_combout\ $ (\Add3~43\)))) # (GND)
-- \Add3~45\ = CARRY((\fractc~25_combout\ & ((!\Add3~43\) # (!\fracts~146_combout\))) # (!\fractc~25_combout\ & (!\fracts~146_combout\ & !\Add3~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fractc~25_combout\,
	datab => \fracts~146_combout\,
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: LCCOMB_X28_Y18_N18
\Add3~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (\fracts~150_combout\ & ((\fractc~26_combout\ & (!\Add3~45\)) # (!\fractc~26_combout\ & ((\Add3~45\) # (GND))))) # (!\fracts~150_combout\ & ((\fractc~26_combout\ & (\Add3~45\ & VCC)) # (!\fractc~26_combout\ & (!\Add3~45\))))
-- \Add3~47\ = CARRY((\fracts~150_combout\ & ((!\Add3~45\) # (!\fractc~26_combout\))) # (!\fracts~150_combout\ & (!\fractc~26_combout\ & !\Add3~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~150_combout\,
	datab => \fractc~26_combout\,
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

-- Location: LCCOMB_X28_Y18_N20
\Add3~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = ((\fractc~28_combout\ $ (\fracts~162_combout\ $ (\Add3~47\)))) # (GND)
-- \Add3~49\ = CARRY((\fractc~28_combout\ & ((!\Add3~47\) # (!\fracts~162_combout\))) # (!\fractc~28_combout\ & (!\fracts~162_combout\ & !\Add3~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fractc~28_combout\,
	datab => \fracts~162_combout\,
	datad => VCC,
	cin => \Add3~47\,
	combout => \Add3~48_combout\,
	cout => \Add3~49\);

-- Location: LCCOMB_X28_Y18_N22
\Add3~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = (\fracts~158_combout\ & ((\fractc~27_combout\ & (!\Add3~49\)) # (!\fractc~27_combout\ & ((\Add3~49\) # (GND))))) # (!\fracts~158_combout\ & ((\fractc~27_combout\ & (\Add3~49\ & VCC)) # (!\fractc~27_combout\ & (!\Add3~49\))))
-- \Add3~51\ = CARRY((\fracts~158_combout\ & ((!\Add3~49\) # (!\fractc~27_combout\))) # (!\fracts~158_combout\ & (!\fractc~27_combout\ & !\Add3~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~158_combout\,
	datab => \fractc~27_combout\,
	datad => VCC,
	cin => \Add3~49\,
	combout => \Add3~50_combout\,
	cout => \Add3~51\);

-- Location: LCCOMB_X27_Y22_N14
\fractc~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fractc~28_combout\ = (\fractc~4_combout\ & ((\b[21]~input_o\))) # (!\fractc~4_combout\ & (\a[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[21]~input_o\,
	datac => \fractc~4_combout\,
	datad => \b[21]~input_o\,
	combout => \fractc~28_combout\);

-- Location: LCCOMB_X24_Y22_N28
\ShiftRight1~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~57_combout\ = (!\Add0~4_combout\ & ((\Add0~2_combout\ & (\Mux1~0_combout\)) # (!\Add0~2_combout\ & ((\ShiftRight1~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add0~4_combout\,
	datac => \Mux1~0_combout\,
	datad => \ShiftRight1~11_combout\,
	combout => \ShiftRight1~57_combout\);

-- Location: LCCOMB_X28_Y21_N4
\fracts~147\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~147_combout\ = (!\fracts~41_combout\ & (\ShiftRight1~57_combout\ & !\Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~41_combout\,
	datac => \ShiftRight1~57_combout\,
	datad => \Add0~6_combout\,
	combout => \fracts~147_combout\);

-- Location: LCCOMB_X27_Y22_N8
\fracts~148\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~148_combout\ = (\fractc~4_combout\ & (\ShiftRight0~78_combout\ & (\fracts~42_combout\))) # (!\fractc~4_combout\ & (((\fracts~147_combout\) # (!\fracts~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~78_combout\,
	datab => \fractc~4_combout\,
	datac => \fracts~42_combout\,
	datad => \fracts~147_combout\,
	combout => \fracts~148_combout\);

-- Location: LCCOMB_X27_Y22_N26
\fracts~149\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~149_combout\ = (\Equal0~2_combout\ & ((\fracts~148_combout\ & ((\b[20]~input_o\))) # (!\fracts~148_combout\ & (\a[20]~input_o\)))) # (!\Equal0~2_combout\ & (((\fracts~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[20]~input_o\,
	datab => \Equal0~2_combout\,
	datac => \fracts~148_combout\,
	datad => \b[20]~input_o\,
	combout => \fracts~149_combout\);

-- Location: LCCOMB_X27_Y22_N4
\fracts~150\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~150_combout\ = (!\LessThan0~3_combout\ & \fracts~149_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~3_combout\,
	datac => \fracts~149_combout\,
	combout => \fracts~150_combout\);

-- Location: LCCOMB_X28_Y21_N18
\fractc~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fractc~22_combout\ = (\fractc~4_combout\ & ((\b[18]~input_o\))) # (!\fractc~4_combout\ & (\a[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[18]~input_o\,
	datac => \b[18]~input_o\,
	datad => \fractc~4_combout\,
	combout => \fractc~22_combout\);

-- Location: LCCOMB_X25_Y24_N4
\ShiftRight0~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~81_combout\ = (!\Add1~6_combout\ & ((\Add1~4_combout\ & ((\ShiftRight0~33_combout\))) # (!\Add1~4_combout\ & (\ShiftRight0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \ShiftRight0~27_combout\,
	datac => \ShiftRight0~33_combout\,
	datad => \Add1~6_combout\,
	combout => \ShiftRight0~81_combout\);

-- Location: LCCOMB_X24_Y19_N0
\ShiftRight1~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~63_combout\ = (\Add0~2_combout\ & (\Result~16_combout\ & (!\Add0~0_combout\))) # (!\Add0~2_combout\ & (((\ShiftRight1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Result~16_combout\,
	datac => \Add0~0_combout\,
	datad => \ShiftRight1~20_combout\,
	combout => \ShiftRight1~63_combout\);

-- Location: LCCOMB_X23_Y21_N18
\ShiftRight1~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight1~64_combout\ = (\Add0~4_combout\ & ((\ShiftRight1~63_combout\))) # (!\Add0~4_combout\ & (\ShiftRight1~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~31_combout\,
	datab => \Add0~4_combout\,
	datac => \ShiftRight1~63_combout\,
	combout => \ShiftRight1~64_combout\);

-- Location: LCCOMB_X23_Y21_N14
\fracts~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~41_combout\ = ((\Add0~16_combout\) # (\Add0~8_combout\)) # (!\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \Add0~16_combout\,
	datad => \Add0~8_combout\,
	combout => \fracts~41_combout\);

-- Location: LCCOMB_X23_Y21_N2
\fracts~135\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~135_combout\ = (\ShiftRight1~64_combout\ & (!\fracts~41_combout\ & !\Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~64_combout\,
	datac => \fracts~41_combout\,
	datad => \Add0~6_combout\,
	combout => \fracts~135_combout\);

-- Location: LCCOMB_X28_Y21_N20
\fracts~136\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~136_combout\ = (\fracts~42_combout\ & ((\fractc~4_combout\ & (\ShiftRight0~81_combout\)) # (!\fractc~4_combout\ & ((\fracts~135_combout\))))) # (!\fracts~42_combout\ & (!\fractc~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~42_combout\,
	datab => \fractc~4_combout\,
	datac => \ShiftRight0~81_combout\,
	datad => \fracts~135_combout\,
	combout => \fracts~136_combout\);

-- Location: LCCOMB_X28_Y21_N6
\fracts~137\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~137_combout\ = (\Equal0~2_combout\ & ((\fracts~136_combout\ & (\b[17]~input_o\)) # (!\fracts~136_combout\ & ((\a[17]~input_o\))))) # (!\Equal0~2_combout\ & (((\fracts~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[17]~input_o\,
	datab => \a[17]~input_o\,
	datac => \Equal0~2_combout\,
	datad => \fracts~136_combout\,
	combout => \fracts~137_combout\);

-- Location: LCCOMB_X28_Y21_N16
\fracts~138\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~138_combout\ = (!\LessThan0~3_combout\ & \fracts~137_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~3_combout\,
	datad => \fracts~137_combout\,
	combout => \fracts~138_combout\);

-- Location: LCCOMB_X23_Y22_N6
\fracts~140\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~140_combout\ = (\fracts~42_combout\ & ((\fractc~4_combout\ & ((\ShiftRight0~63_combout\))) # (!\fractc~4_combout\ & (\fracts~139_combout\)))) # (!\fracts~42_combout\ & (((!\fractc~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~139_combout\,
	datab => \ShiftRight0~63_combout\,
	datac => \fracts~42_combout\,
	datad => \fractc~4_combout\,
	combout => \fracts~140_combout\);

-- Location: LCCOMB_X27_Y18_N16
\fracts~141\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~141_combout\ = (\fracts~140_combout\ & (((\b[16]~input_o\) # (!\Equal0~2_combout\)))) # (!\fracts~140_combout\ & (\a[16]~input_o\ & ((\Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[16]~input_o\,
	datab => \b[16]~input_o\,
	datac => \fracts~140_combout\,
	datad => \Equal0~2_combout\,
	combout => \fracts~141_combout\);

-- Location: LCCOMB_X27_Y18_N18
\fracts~142\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~142_combout\ = (!\LessThan0~3_combout\ & \fracts~141_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~3_combout\,
	datad => \fracts~141_combout\,
	combout => \fracts~142_combout\);

-- Location: LCCOMB_X26_Y22_N2
\fracts~163\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~163_combout\ = (\ShiftRight1~45_combout\ & (!\Add0~16_combout\ & (!\Add0~8_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~45_combout\,
	datab => \Add0~16_combout\,
	datac => \Add0~8_combout\,
	datad => \Equal0~0_combout\,
	combout => \fracts~163_combout\);

-- Location: LCCOMB_X27_Y23_N14
\ShiftRight0~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~82_combout\ = (!\Add1~2_combout\ & (!\Add0~0_combout\ & ((\Result~12_combout\) # (\Result~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result~12_combout\,
	datab => \Add1~2_combout\,
	datac => \Add0~0_combout\,
	datad => \Result~13_combout\,
	combout => \ShiftRight0~82_combout\);

-- Location: LCCOMB_X26_Y23_N8
\ShiftRight0~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~60_combout\ = (\Add1~6_combout\ & (!\Add1~4_combout\ & ((\ShiftRight0~82_combout\)))) # (!\Add1~6_combout\ & (((\ShiftRight0~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Add1~4_combout\,
	datac => \ShiftRight0~59_combout\,
	datad => \ShiftRight0~82_combout\,
	combout => \ShiftRight0~60_combout\);

-- Location: LCCOMB_X26_Y22_N8
\fracts~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~43_combout\ = (\fracts~42_combout\ & ((\fractc~4_combout\ & ((\ShiftRight0~60_combout\))) # (!\fractc~4_combout\ & (\fracts~163_combout\)))) # (!\fracts~42_combout\ & (((!\fractc~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~42_combout\,
	datab => \fracts~163_combout\,
	datac => \fractc~4_combout\,
	datad => \ShiftRight0~60_combout\,
	combout => \fracts~43_combout\);

-- Location: LCCOMB_X27_Y18_N10
\fracts~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~44_combout\ = (\Equal0~2_combout\ & ((\fracts~43_combout\ & ((\b[15]~input_o\))) # (!\fracts~43_combout\ & (\a[15]~input_o\)))) # (!\Equal0~2_combout\ & (((\fracts~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \a[15]~input_o\,
	datac => \b[15]~input_o\,
	datad => \fracts~43_combout\,
	combout => \fracts~44_combout\);

-- Location: LCCOMB_X27_Y18_N12
\fracts~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~45_combout\ = (!\LessThan0~3_combout\ & \fracts~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~3_combout\,
	datad => \fracts~44_combout\,
	combout => \fracts~45_combout\);

-- Location: LCCOMB_X28_Y21_N24
\fractc~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fractc~8_combout\ = (\fractc~4_combout\ & ((\b[13]~input_o\))) # (!\fractc~4_combout\ & (\a[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[13]~input_o\,
	datac => \b[13]~input_o\,
	datad => \fractc~4_combout\,
	combout => \fractc~8_combout\);

-- Location: LCCOMB_X29_Y19_N30
\Add2~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~70_combout\ = (\fracts~64_combout\ & ((\fractc~10_combout\ & (\Add2~69\ & VCC)) # (!\fractc~10_combout\ & (!\Add2~69\)))) # (!\fracts~64_combout\ & ((\fractc~10_combout\ & (!\Add2~69\)) # (!\fractc~10_combout\ & ((\Add2~69\) # (GND)))))
-- \Add2~71\ = CARRY((\fracts~64_combout\ & (!\fractc~10_combout\ & !\Add2~69\)) # (!\fracts~64_combout\ & ((!\Add2~69\) # (!\fractc~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~64_combout\,
	datab => \fractc~10_combout\,
	datad => VCC,
	cin => \Add2~69\,
	combout => \Add2~70_combout\,
	cout => \Add2~71\);

-- Location: LCCOMB_X29_Y18_N0
\Add2~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~72_combout\ = ((\fracts~58_combout\ $ (\fractc~9_combout\ $ (!\Add2~71\)))) # (GND)
-- \Add2~73\ = CARRY((\fracts~58_combout\ & ((\fractc~9_combout\) # (!\Add2~71\))) # (!\fracts~58_combout\ & (\fractc~9_combout\ & !\Add2~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~58_combout\,
	datab => \fractc~9_combout\,
	datad => VCC,
	cin => \Add2~71\,
	combout => \Add2~72_combout\,
	cout => \Add2~73\);

-- Location: LCCOMB_X29_Y18_N4
\Add2~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~76_combout\ = ((\fracts~48_combout\ $ (\fractc~7_combout\ $ (!\Add2~75\)))) # (GND)
-- \Add2~77\ = CARRY((\fracts~48_combout\ & ((\fractc~7_combout\) # (!\Add2~75\))) # (!\fracts~48_combout\ & (\fractc~7_combout\ & !\Add2~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~48_combout\,
	datab => \fractc~7_combout\,
	datad => VCC,
	cin => \Add2~75\,
	combout => \Add2~76_combout\,
	cout => \Add2~77\);

-- Location: LCCOMB_X29_Y18_N6
\Add2~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~78_combout\ = (\fractc~6_combout\ & ((\fracts~45_combout\ & (\Add2~77\ & VCC)) # (!\fracts~45_combout\ & (!\Add2~77\)))) # (!\fractc~6_combout\ & ((\fracts~45_combout\ & (!\Add2~77\)) # (!\fracts~45_combout\ & ((\Add2~77\) # (GND)))))
-- \Add2~79\ = CARRY((\fractc~6_combout\ & (!\fracts~45_combout\ & !\Add2~77\)) # (!\fractc~6_combout\ & ((!\Add2~77\) # (!\fracts~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fractc~6_combout\,
	datab => \fracts~45_combout\,
	datad => VCC,
	cin => \Add2~77\,
	combout => \Add2~78_combout\,
	cout => \Add2~79\);

-- Location: LCCOMB_X29_Y18_N8
\Add2~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~80_combout\ = ((\fractc~24_combout\ $ (\fracts~142_combout\ $ (!\Add2~79\)))) # (GND)
-- \Add2~81\ = CARRY((\fractc~24_combout\ & ((\fracts~142_combout\) # (!\Add2~79\))) # (!\fractc~24_combout\ & (\fracts~142_combout\ & !\Add2~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fractc~24_combout\,
	datab => \fracts~142_combout\,
	datad => VCC,
	cin => \Add2~79\,
	combout => \Add2~80_combout\,
	cout => \Add2~81\);

-- Location: LCCOMB_X29_Y18_N10
\Add2~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~82_combout\ = (\fractc~23_combout\ & ((\fracts~138_combout\ & (\Add2~81\ & VCC)) # (!\fracts~138_combout\ & (!\Add2~81\)))) # (!\fractc~23_combout\ & ((\fracts~138_combout\ & (!\Add2~81\)) # (!\fracts~138_combout\ & ((\Add2~81\) # (GND)))))
-- \Add2~83\ = CARRY((\fractc~23_combout\ & (!\fracts~138_combout\ & !\Add2~81\)) # (!\fractc~23_combout\ & ((!\Add2~81\) # (!\fracts~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fractc~23_combout\,
	datab => \fracts~138_combout\,
	datad => VCC,
	cin => \Add2~81\,
	combout => \Add2~82_combout\,
	cout => \Add2~83\);

-- Location: LCCOMB_X29_Y18_N12
\Add2~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~84_combout\ = ((\fracts~134_combout\ $ (\fractc~22_combout\ $ (!\Add2~83\)))) # (GND)
-- \Add2~85\ = CARRY((\fracts~134_combout\ & ((\fractc~22_combout\) # (!\Add2~83\))) # (!\fracts~134_combout\ & (\fractc~22_combout\ & !\Add2~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~134_combout\,
	datab => \fractc~22_combout\,
	datad => VCC,
	cin => \Add2~83\,
	combout => \Add2~84_combout\,
	cout => \Add2~85\);

-- Location: LCCOMB_X29_Y18_N16
\Add2~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~89_combout\ = ((\fractc~26_combout\ $ (\fracts~150_combout\ $ (!\Add2~88\)))) # (GND)
-- \Add2~90\ = CARRY((\fractc~26_combout\ & ((\fracts~150_combout\) # (!\Add2~88\))) # (!\fractc~26_combout\ & (\fracts~150_combout\ & !\Add2~88\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fractc~26_combout\,
	datab => \fracts~150_combout\,
	datad => VCC,
	cin => \Add2~88\,
	combout => \Add2~89_combout\,
	cout => \Add2~90\);

-- Location: LCCOMB_X29_Y18_N18
\Add2~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~91_combout\ = (\fracts~162_combout\ & ((\fractc~28_combout\ & (\Add2~90\ & VCC)) # (!\fractc~28_combout\ & (!\Add2~90\)))) # (!\fracts~162_combout\ & ((\fractc~28_combout\ & (!\Add2~90\)) # (!\fractc~28_combout\ & ((\Add2~90\) # (GND)))))
-- \Add2~92\ = CARRY((\fracts~162_combout\ & (!\fractc~28_combout\ & !\Add2~90\)) # (!\fracts~162_combout\ & ((!\Add2~90\) # (!\fractc~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~162_combout\,
	datab => \fractc~28_combout\,
	datad => VCC,
	cin => \Add2~90\,
	combout => \Add2~91_combout\,
	cout => \Add2~92\);

-- Location: LCCOMB_X29_Y18_N20
\Add2~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~93_combout\ = ((\fracts~158_combout\ $ (\fractc~27_combout\ $ (!\Add2~92\)))) # (GND)
-- \Add2~94\ = CARRY((\fracts~158_combout\ & ((\fractc~27_combout\) # (!\Add2~92\))) # (!\fracts~158_combout\ & (\fractc~27_combout\ & !\Add2~92\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~158_combout\,
	datab => \fractc~27_combout\,
	datad => VCC,
	cin => \Add2~92\,
	combout => \Add2~93_combout\,
	cout => \Add2~94\);

-- Location: LCCOMB_X28_Y18_N30
\Add2~109\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~109_combout\ = (\a[31]~input_o\ & ((\b[31]~input_o\ & ((\Add2~93_combout\))) # (!\b[31]~input_o\ & (\Add3~50_combout\)))) # (!\a[31]~input_o\ & ((\b[31]~input_o\ & (\Add3~50_combout\)) # (!\b[31]~input_o\ & ((\Add2~93_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \b[31]~input_o\,
	datac => \Add3~50_combout\,
	datad => \Add2~93_combout\,
	combout => \Add2~109_combout\);

-- Location: LCCOMB_X24_Y22_N12
\fracts~151\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~151_combout\ = (\ShiftRight1~19_combout\ & (!\Add0~6_combout\ & (!\fracts~41_combout\ & \ShiftRight1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~19_combout\,
	datab => \Add0~6_combout\,
	datac => \fracts~41_combout\,
	datad => \ShiftRight1~10_combout\,
	combout => \fracts~151_combout\);

-- Location: LCCOMB_X27_Y21_N4
\ShiftRight0~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~75_combout\ = (!\Add1~6_combout\ & (\ShiftRight0~82_combout\ & !\Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~6_combout\,
	datac => \ShiftRight0~82_combout\,
	datad => \Add1~4_combout\,
	combout => \ShiftRight0~75_combout\);

-- Location: LCCOMB_X28_Y22_N14
\fracts~152\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~152_combout\ = (\fracts~42_combout\ & ((\fractc~4_combout\ & ((\ShiftRight0~75_combout\))) # (!\fractc~4_combout\ & (\fracts~151_combout\)))) # (!\fracts~42_combout\ & (((!\fractc~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fracts~42_combout\,
	datab => \fracts~151_combout\,
	datac => \ShiftRight0~75_combout\,
	datad => \fractc~4_combout\,
	combout => \fracts~152_combout\);

-- Location: LCCOMB_X28_Y22_N24
\fracts~153\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~153_combout\ = (\Equal0~2_combout\ & ((\fracts~152_combout\ & ((\Result~16_combout\))) # (!\fracts~152_combout\ & (\Result~14_combout\)))) # (!\Equal0~2_combout\ & (\fracts~152_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \fracts~152_combout\,
	datac => \Result~14_combout\,
	datad => \Result~16_combout\,
	combout => \fracts~153_combout\);

-- Location: LCCOMB_X28_Y22_N26
\fracts~154\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fracts~154_combout\ = (!\LessThan0~3_combout\ & \fracts~153_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~3_combout\,
	datad => \fracts~153_combout\,
	combout => \fracts~154_combout\);

-- Location: LCCOMB_X28_Y18_N24
\Add3~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~52_combout\ = ((\fractc~29_combout\ $ (\fracts~154_combout\ $ (\Add3~51\)))) # (GND)
-- \Add3~53\ = CARRY((\fractc~29_combout\ & ((!\Add3~51\) # (!\fracts~154_combout\))) # (!\fractc~29_combout\ & (!\fracts~154_combout\ & !\Add3~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fractc~29_combout\,
	datab => \fracts~154_combout\,
	datad => VCC,
	cin => \Add3~51\,
	combout => \Add3~52_combout\,
	cout => \Add3~53\);

-- Location: LCCOMB_X28_Y22_N30
\fractc~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fractc~29_combout\ = (\fractc~4_combout\ & (((\Result~10_combout\) # (\Result~11_combout\)))) # (!\fractc~4_combout\ & (\Result~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result~14_combout\,
	datab => \Result~10_combout\,
	datac => \Result~11_combout\,
	datad => \fractc~4_combout\,
	combout => \fractc~29_combout\);

-- Location: LCCOMB_X29_Y18_N30
\Add2~106\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~106_combout\ = (\a[31]~input_o\ & ((\b[31]~input_o\ & ((\Add2~95_combout\))) # (!\b[31]~input_o\ & (\Add3~52_combout\)))) # (!\a[31]~input_o\ & ((\b[31]~input_o\ & (\Add3~52_combout\)) # (!\b[31]~input_o\ & ((\Add2~95_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \Add3~52_combout\,
	datac => \Add2~95_combout\,
	datad => \b[31]~input_o\,
	combout => \Add2~106_combout\);

-- Location: LCCOMB_X28_Y18_N26
\Add3~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~54_combout\ = !\Add3~53\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add3~53\,
	combout => \Add3~54_combout\);

-- Location: LCCOMB_X29_Y16_N14
\Add2~107\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~107_combout\ = (\Add2~97_combout\ & ((\Add3~54_combout\) # (\a[31]~input_o\ $ (!\b[31]~input_o\)))) # (!\Add2~97_combout\ & (\Add3~54_combout\ & (\a[31]~input_o\ $ (\b[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~97_combout\,
	datab => \Add3~54_combout\,
	datac => \a[31]~input_o\,
	datad => \b[31]~input_o\,
	combout => \Add2~107_combout\);

-- Location: LCCOMB_X30_Y15_N2
\find_leftmost~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~33_combout\ = (\Add2~107_combout\) # ((\Add2~109_combout\ & !\Add2~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~109_combout\,
	datac => \Add2~106_combout\,
	datad => \Add2~107_combout\,
	combout => \find_leftmost~33_combout\);

-- Location: LCCOMB_X34_Y18_N26
\Add2~105\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~105_combout\ = (\a[31]~input_o\ & ((\b[31]~input_o\ & ((\Add2~89_combout\))) # (!\b[31]~input_o\ & (\Add3~46_combout\)))) # (!\a[31]~input_o\ & ((\b[31]~input_o\ & (\Add3~46_combout\)) # (!\b[31]~input_o\ & ((\Add2~89_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \Add3~46_combout\,
	datac => \b[31]~input_o\,
	datad => \Add2~89_combout\,
	combout => \Add2~105_combout\);

-- Location: LCCOMB_X34_Y18_N8
\Add2~103\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~103_combout\ = (\a[31]~input_o\ & ((\b[31]~input_o\ & (\Add2~80_combout\)) # (!\b[31]~input_o\ & ((\Add3~38_combout\))))) # (!\a[31]~input_o\ & ((\b[31]~input_o\ & ((\Add3~38_combout\))) # (!\b[31]~input_o\ & (\Add2~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \Add2~80_combout\,
	datac => \b[31]~input_o\,
	datad => \Add3~38_combout\,
	combout => \Add2~103_combout\);

-- Location: LCCOMB_X29_Y17_N24
\Add2~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~86_combout\ = (\a[31]~input_o\ & ((\b[31]~input_o\ & (\Add2~82_combout\)) # (!\b[31]~input_o\ & ((\Add3~40_combout\))))) # (!\a[31]~input_o\ & ((\b[31]~input_o\ & ((\Add3~40_combout\))) # (!\b[31]~input_o\ & (\Add2~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \Add2~82_combout\,
	datac => \b[31]~input_o\,
	datad => \Add3~40_combout\,
	combout => \Add2~86_combout\);

-- Location: LCCOMB_X29_Y17_N2
\find_leftmost~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~1_combout\ = (!\Add2~86_combout\ & ((\add~4_combout\ & (!\Add3~42_combout\)) # (!\add~4_combout\ & ((!\Add2~84_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~42_combout\,
	datab => \Add2~84_combout\,
	datac => \Add2~86_combout\,
	datad => \add~4_combout\,
	combout => \find_leftmost~1_combout\);

-- Location: LCCOMB_X29_Y17_N4
\find_leftmost~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~2_combout\ = (!\Add2~104_combout\ & (!\Add2~105_combout\ & (!\Add2~103_combout\ & \find_leftmost~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~104_combout\,
	datab => \Add2~105_combout\,
	datac => \Add2~103_combout\,
	datad => \find_leftmost~1_combout\,
	combout => \find_leftmost~2_combout\);

-- Location: LCCOMB_X28_Y18_N28
\Add2~108\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~108_combout\ = (\a[31]~input_o\ & ((\b[31]~input_o\ & (\Add2~91_combout\)) # (!\b[31]~input_o\ & ((\Add3~48_combout\))))) # (!\a[31]~input_o\ & ((\b[31]~input_o\ & ((\Add3~48_combout\))) # (!\b[31]~input_o\ & (\Add2~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \Add2~91_combout\,
	datac => \b[31]~input_o\,
	datad => \Add3~48_combout\,
	combout => \Add2~108_combout\);

-- Location: LCCOMB_X30_Y15_N16
\find_leftmost~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~3_combout\ = (!\Add2~106_combout\ & (!\Add2~109_combout\ & (!\Add2~108_combout\ & !\Add2~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~106_combout\,
	datab => \Add2~109_combout\,
	datac => \Add2~108_combout\,
	datad => \Add2~107_combout\,
	combout => \find_leftmost~3_combout\);

-- Location: LCCOMB_X30_Y17_N8
\find_leftmost~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~35_combout\ = (\find_leftmost~3_combout\ & (!\find_leftmost~2_combout\ & ((\find_leftmost~34_combout\) # (\find_leftmost~33_combout\)))) # (!\find_leftmost~3_combout\ & (((\find_leftmost~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \find_leftmost~34_combout\,
	datab => \find_leftmost~33_combout\,
	datac => \find_leftmost~2_combout\,
	datad => \find_leftmost~3_combout\,
	combout => \find_leftmost~35_combout\);

-- Location: LCCOMB_X30_Y17_N2
\find_leftmost~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~12_combout\ = ((\Add2~103_combout\) # (!\find_leftmost~3_combout\)) # (!\find_leftmost~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \find_leftmost~11_combout\,
	datac => \Add2~103_combout\,
	datad => \find_leftmost~3_combout\,
	combout => \find_leftmost~12_combout\);

-- Location: LCCOMB_X30_Y17_N4
\find_leftmost~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~39_combout\ = (\find_leftmost~15_combout\ & ((\find_leftmost~35_combout\) # ((\find_leftmost~38_combout\ & !\find_leftmost~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \find_leftmost~38_combout\,
	datab => \find_leftmost~15_combout\,
	datac => \find_leftmost~35_combout\,
	datad => \find_leftmost~12_combout\,
	combout => \find_leftmost~39_combout\);

-- Location: LCCOMB_X29_Y20_N8
\find_leftmost~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~43_combout\ = (\find_leftmost~41_combout\) # ((\find_leftmost~39_combout\) # ((!\find_leftmost~9_combout\ & \find_leftmost~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \find_leftmost~9_combout\,
	datab => \find_leftmost~41_combout\,
	datac => \find_leftmost~42_combout\,
	datad => \find_leftmost~39_combout\,
	combout => \find_leftmost~43_combout\);

-- Location: LCCOMB_X29_Y21_N2
\Add4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\find_leftmost~32_combout\ & (!\Add4~1\)) # (!\find_leftmost~32_combout\ & ((\Add4~1\) # (GND)))
-- \Add4~3\ = CARRY((!\Add4~1\) # (!\find_leftmost~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \find_leftmost~32_combout\,
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X29_Y21_N4
\Add4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (\find_leftmost~21_combout\ & (\Add4~3\ $ (GND))) # (!\find_leftmost~21_combout\ & (!\Add4~3\ & VCC))
-- \Add4~5\ = CARRY((\find_leftmost~21_combout\ & !\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \find_leftmost~21_combout\,
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X29_Y21_N14
\Add5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~1_cout\ = CARRY((\Add4~0_combout\ & \Add4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \Add4~2_combout\,
	datad => VCC,
	cout => \Add5~1_cout\);

-- Location: LCCOMB_X29_Y21_N16
\Add5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\Add4~4_combout\ & (\Add5~1_cout\ & VCC)) # (!\Add4~4_combout\ & (!\Add5~1_cout\))
-- \Add5~3\ = CARRY((!\Add4~4_combout\ & !\Add5~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add4~4_combout\,
	datad => VCC,
	cin => \Add5~1_cout\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X29_Y24_N8
\Add6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (\find_leftmost~32_combout\ & ((\rexpon~6_combout\ & (!\Add6~1\)) # (!\rexpon~6_combout\ & ((\Add6~1\) # (GND))))) # (!\find_leftmost~32_combout\ & ((\rexpon~6_combout\ & (\Add6~1\ & VCC)) # (!\rexpon~6_combout\ & (!\Add6~1\))))
-- \Add6~3\ = CARRY((\find_leftmost~32_combout\ & ((!\Add6~1\) # (!\rexpon~6_combout\))) # (!\find_leftmost~32_combout\ & (!\rexpon~6_combout\ & !\Add6~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \find_leftmost~32_combout\,
	datab => \rexpon~6_combout\,
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X29_Y24_N10
\Add6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = ((\rexpon~5_combout\ $ (\Add5~2_combout\ $ (!\Add6~3\)))) # (GND)
-- \Add6~5\ = CARRY((\rexpon~5_combout\ & ((\Add5~2_combout\) # (!\Add6~3\))) # (!\rexpon~5_combout\ & (\Add5~2_combout\ & !\Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rexpon~5_combout\,
	datab => \Add5~2_combout\,
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X29_Y24_N12
\Add6~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (\Add5~4_combout\ & ((\rexpon~4_combout\ & (\Add6~5\ & VCC)) # (!\rexpon~4_combout\ & (!\Add6~5\)))) # (!\Add5~4_combout\ & ((\rexpon~4_combout\ & (!\Add6~5\)) # (!\rexpon~4_combout\ & ((\Add6~5\) # (GND)))))
-- \Add6~7\ = CARRY((\Add5~4_combout\ & (!\rexpon~4_combout\ & !\Add6~5\)) # (!\Add5~4_combout\ & ((!\Add6~5\) # (!\rexpon~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~4_combout\,
	datab => \rexpon~4_combout\,
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X29_Y24_N0
\shiftr~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \shiftr~0_combout\ = (\Add6~6_combout\ & ((\Add6~0_combout\) # ((\Add6~2_combout\) # (\Add6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => \Add6~6_combout\,
	datac => \Add6~2_combout\,
	datad => \Add6~4_combout\,
	combout => \shiftr~0_combout\);

-- Location: LCCOMB_X29_Y17_N12
\Add2~104\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~104_combout\ = (\Add2~87_combout\ & ((\Add3~44_combout\) # (\b[31]~input_o\ $ (!\a[31]~input_o\)))) # (!\Add2~87_combout\ & (\Add3~44_combout\ & (\b[31]~input_o\ $ (\a[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~87_combout\,
	datab => \Add3~44_combout\,
	datac => \b[31]~input_o\,
	datad => \a[31]~input_o\,
	combout => \Add2~104_combout\);

-- Location: LCCOMB_X29_Y17_N14
\find_leftmost~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~11_combout\ = (!\Add2~119_combout\ & (!\Add2~86_combout\ & (!\Add2~105_combout\ & !\Add2~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~119_combout\,
	datab => \Add2~86_combout\,
	datac => \Add2~105_combout\,
	datad => \Add2~104_combout\,
	combout => \find_leftmost~11_combout\);

-- Location: LCCOMB_X30_Y17_N6
\find_leftmost~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~14_combout\ = ((\find_leftmost~0_combout\ & (!\Add2~103_combout\ & \find_leftmost~11_combout\))) # (!\find_leftmost~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \find_leftmost~0_combout\,
	datab => \find_leftmost~3_combout\,
	datac => \Add2~103_combout\,
	datad => \find_leftmost~11_combout\,
	combout => \find_leftmost~14_combout\);

-- Location: LCCOMB_X29_Y16_N8
\find_leftmost~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~4_combout\ = (!\Add2~110_combout\ & ((\add~4_combout\ & ((!\Add3~28_combout\))) # (!\add~4_combout\ & (!\Add2~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~110_combout\,
	datab => \Add2~70_combout\,
	datac => \Add3~28_combout\,
	datad => \add~4_combout\,
	combout => \find_leftmost~4_combout\);

-- Location: LCCOMB_X30_Y17_N16
\find_leftmost~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~5_combout\ = (((!\find_leftmost~3_combout\) # (!\find_leftmost~4_combout\)) # (!\find_leftmost~2_combout\)) # (!\find_leftmost~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \find_leftmost~0_combout\,
	datab => \find_leftmost~2_combout\,
	datac => \find_leftmost~4_combout\,
	datad => \find_leftmost~3_combout\,
	combout => \find_leftmost~5_combout\);

-- Location: LCCOMB_X30_Y17_N24
\find_leftmost~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~16_combout\ = (\find_leftmost~15_combout\ & (((\find_leftmost~14_combout\) # (!\find_leftmost~5_combout\)))) # (!\find_leftmost~15_combout\ & (\Add2~112_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~112_combout\,
	datab => \find_leftmost~15_combout\,
	datac => \find_leftmost~14_combout\,
	datad => \find_leftmost~5_combout\,
	combout => \find_leftmost~16_combout\);

-- Location: LCCOMB_X28_Y19_N2
\ufract~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ufract~2_combout\ = (\add~4_combout\ & (((\Add3~0_combout\)))) # (!\add~4_combout\ & ((\sticky~4_combout\) # ((\fracts~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sticky~4_combout\,
	datab => \Add3~0_combout\,
	datac => \fracts~26_combout\,
	datad => \add~4_combout\,
	combout => \ufract~2_combout\);

-- Location: LCCOMB_X28_Y17_N12
\find_leftmost~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~17_combout\ = (\find_leftmost~9_combout\ & (((\find_leftmost~16_combout\)))) # (!\find_leftmost~9_combout\ & (\Result~18_combout\ & ((!\ufract~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result~18_combout\,
	datab => \find_leftmost~16_combout\,
	datac => \ufract~2_combout\,
	datad => \find_leftmost~9_combout\,
	combout => \find_leftmost~17_combout\);

-- Location: LCCOMB_X29_Y21_N8
\Add4~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (\find_leftmost~13_combout\ & (\Add4~7\ $ (GND))) # (!\find_leftmost~13_combout\ & (!\Add4~7\ & VCC))
-- \Add4~9\ = CARRY((\find_leftmost~13_combout\ & !\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \find_leftmost~13_combout\,
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X29_Y21_N20
\Add5~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (\Add4~8_combout\ & (\Add5~5\ & VCC)) # (!\Add4~8_combout\ & (!\Add5~5\))
-- \Add5~7\ = CARRY((!\Add4~8_combout\ & !\Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add4~8_combout\,
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X29_Y24_N14
\Add6~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = ((\rexpon~3_combout\ $ (\Add5~6_combout\ $ (!\Add6~7\)))) # (GND)
-- \Add6~9\ = CARRY((\rexpon~3_combout\ & ((\Add5~6_combout\) # (!\Add6~7\))) # (!\rexpon~3_combout\ & (\Add5~6_combout\ & !\Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rexpon~3_combout\,
	datab => \Add5~6_combout\,
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: LCCOMB_X28_Y20_N12
\rexpon~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rexpon~2_combout\ = (\Add0~16_combout\ & (\b[28]~input_o\)) # (!\Add0~16_combout\ & ((\a[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[28]~input_o\,
	datac => \Add0~16_combout\,
	datad => \a[28]~input_o\,
	combout => \rexpon~2_combout\);

-- Location: LCCOMB_X29_Y24_N16
\Add6~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = (\Add5~8_combout\ & ((\rexpon~2_combout\ & (\Add6~9\ & VCC)) # (!\rexpon~2_combout\ & (!\Add6~9\)))) # (!\Add5~8_combout\ & ((\rexpon~2_combout\ & (!\Add6~9\)) # (!\rexpon~2_combout\ & ((\Add6~9\) # (GND)))))
-- \Add6~11\ = CARRY((\Add5~8_combout\ & (!\rexpon~2_combout\ & !\Add6~9\)) # (!\Add5~8_combout\ & ((!\Add6~9\) # (!\rexpon~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~8_combout\,
	datab => \rexpon~2_combout\,
	datad => VCC,
	cin => \Add6~9\,
	combout => \Add6~10_combout\,
	cout => \Add6~11\);

-- Location: LCCOMB_X29_Y24_N2
\shiftr~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \shiftr~1_combout\ = (\Add6~12_combout\ & (\Add6~10_combout\ & ((\shiftr~0_combout\) # (\Add6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~12_combout\,
	datab => \shiftr~0_combout\,
	datac => \Add6~8_combout\,
	datad => \Add6~10_combout\,
	combout => \shiftr~1_combout\);

-- Location: LCCOMB_X28_Y17_N10
\Result~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Result~18_combout\ = (!\ufract~1_combout\ & (!\ufract~0_combout\ & !\Add2~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ufract~1_combout\,
	datac => \ufract~0_combout\,
	datad => \Add2~99_combout\,
	combout => \Result~18_combout\);

-- Location: LCCOMB_X30_Y17_N22
\Result~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Result~19_combout\ = (((\Add2~103_combout\) # (!\find_leftmost~11_combout\)) # (!\find_leftmost~3_combout\)) # (!\find_leftmost~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \find_leftmost~0_combout\,
	datab => \find_leftmost~3_combout\,
	datac => \Add2~103_combout\,
	datad => \find_leftmost~11_combout\,
	combout => \Result~19_combout\);

-- Location: LCCOMB_X30_Y23_N30
\Result~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Result~21_combout\ = (\Result~20_combout\) # ((\ufract~2_combout\) # ((\Result~19_combout\) # (!\Result~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result~20_combout\,
	datab => \ufract~2_combout\,
	datac => \Result~18_combout\,
	datad => \Result~19_combout\,
	combout => \Result~21_combout\);

-- Location: LCCOMB_X28_Y17_N0
\find_leftmost~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \find_leftmost~10_combout\ = (!\find_leftmost~9_combout\ & (!\ufract~1_combout\ & (!\ufract~0_combout\ & !\Add2~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \find_leftmost~9_combout\,
	datab => \ufract~1_combout\,
	datac => \ufract~0_combout\,
	datad => \Add2~99_combout\,
	combout => \find_leftmost~10_combout\);

-- Location: LCCOMB_X29_Y21_N12
\Add4~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = \Add4~11\ $ (((\find_leftmost~10_combout\ & !\ufract~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \find_leftmost~10_combout\,
	datad => \ufract~2_combout\,
	cin => \Add4~11\,
	combout => \Add4~12_combout\);

-- Location: LCCOMB_X29_Y21_N22
\Add5~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (\Add4~10_combout\ & ((GND) # (!\Add5~7\))) # (!\Add4~10_combout\ & (\Add5~7\ $ (GND)))
-- \Add5~9\ = CARRY((\Add4~10_combout\) # (!\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~10_combout\,
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X29_Y21_N24
\Add5~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (\Add4~12_combout\ & (\Add5~9\ & VCC)) # (!\Add4~12_combout\ & (!\Add5~9\))
-- \Add5~11\ = CARRY((!\Add4~12_combout\ & !\Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~12_combout\,
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X29_Y21_N26
\Add5~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = \Add5~11\ $ (\Add4~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add4~12_combout\,
	cin => \Add5~11\,
	combout => \Add5~12_combout\);

-- Location: LCCOMB_X28_Y20_N10
\rexpon~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rexpon~1_combout\ = (\Add0~16_combout\ & (\b[29]~input_o\)) # (!\Add0~16_combout\ & ((\a[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[29]~input_o\,
	datab => \a[29]~input_o\,
	datac => \Add0~16_combout\,
	combout => \rexpon~1_combout\);

-- Location: LCCOMB_X29_Y24_N18
\Add6~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~12_combout\ = ((\Add5~10_combout\ $ (\rexpon~1_combout\ $ (!\Add6~11\)))) # (GND)
-- \Add6~13\ = CARRY((\Add5~10_combout\ & ((\rexpon~1_combout\) # (!\Add6~11\))) # (!\Add5~10_combout\ & (\rexpon~1_combout\ & !\Add6~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~10_combout\,
	datab => \rexpon~1_combout\,
	datad => VCC,
	cin => \Add6~11\,
	combout => \Add6~12_combout\,
	cout => \Add6~13\);

-- Location: LCCOMB_X29_Y24_N20
\Add6~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~14_combout\ = (\rexpon~0_combout\ & ((\Add5~12_combout\ & (!\Add6~13\)) # (!\Add5~12_combout\ & ((\Add6~13\) # (GND))))) # (!\rexpon~0_combout\ & ((\Add5~12_combout\ & (\Add6~13\ & VCC)) # (!\Add5~12_combout\ & (!\Add6~13\))))
-- \Add6~15\ = CARRY((\rexpon~0_combout\ & ((!\Add6~13\) # (!\Add5~12_combout\))) # (!\rexpon~0_combout\ & (!\Add5~12_combout\ & !\Add6~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rexpon~0_combout\,
	datab => \Add5~12_combout\,
	datad => VCC,
	cin => \Add6~13\,
	combout => \Add6~14_combout\,
	cout => \Add6~15\);

-- Location: LCCOMB_X29_Y24_N22
\Add6~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~16_combout\ = \rexpon~0_combout\ $ (\Add6~15\ $ (\Add5~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rexpon~0_combout\,
	datad => \Add5~12_combout\,
	cin => \Add6~15\,
	combout => \Add6~16_combout\);

-- Location: LCCOMB_X30_Y23_N8
\shiftr~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \shiftr~2_combout\ = (\Result~21_combout\ & ((\Add6~14_combout\) # ((\shiftr~1_combout\) # (!\Add6~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~14_combout\,
	datab => \shiftr~1_combout\,
	datac => \Result~21_combout\,
	datad => \Add6~16_combout\,
	combout => \shiftr~2_combout\);

-- Location: LCCOMB_X29_Y23_N28
\Add8~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~10_combout\ = (\shiftr~5_combout\ & (((\Add5~6_combout\)))) # (!\shiftr~5_combout\ & ((\shiftr~2_combout\ & (\Add8~8_combout\)) # (!\shiftr~2_combout\ & ((\Add5~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftr~5_combout\,
	datab => \Add8~8_combout\,
	datac => \shiftr~2_combout\,
	datad => \Add5~6_combout\,
	combout => \Add8~10_combout\);

-- Location: LCCOMB_X29_Y20_N30
\shiftr~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \shiftr~6_combout\ = (\shiftr~5_combout\ & (((\find_leftmost~43_combout\)))) # (!\shiftr~5_combout\ & ((\shiftr~2_combout\ & (!\rexpon~7_combout\)) # (!\shiftr~2_combout\ & ((\find_leftmost~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftr~5_combout\,
	datab => \rexpon~7_combout\,
	datac => \find_leftmost~43_combout\,
	datad => \shiftr~2_combout\,
	combout => \shiftr~6_combout\);

-- Location: LCCOMB_X28_Y17_N4
\ShiftLeft0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~15_combout\ = (\shiftr~6_combout\ & (\ufract~1_combout\)) # (!\shiftr~6_combout\ & ((\Add2~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ufract~1_combout\,
	datac => \shiftr~6_combout\,
	datad => \Add2~99_combout\,
	combout => \ShiftLeft0~15_combout\);

-- Location: LCCOMB_X28_Y17_N22
\ShiftLeft0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~18_combout\ = (\shiftr~6_combout\ & (\ufract~2_combout\)) # (!\shiftr~6_combout\ & ((\ufract~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufract~2_combout\,
	datab => \ufract~0_combout\,
	datac => \shiftr~6_combout\,
	combout => \ShiftLeft0~18_combout\);

-- Location: LCCOMB_X31_Y18_N6
\Add9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = (\shiftr~7_combout\ & (\shiftr~6_combout\ $ (GND))) # (!\shiftr~7_combout\ & (!\shiftr~6_combout\ & VCC))
-- \Add9~1\ = CARRY((\shiftr~7_combout\ & !\shiftr~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftr~7_combout\,
	datab => \shiftr~6_combout\,
	datad => VCC,
	combout => \Add9~0_combout\,
	cout => \Add9~1\);

-- Location: LCCOMB_X35_Y15_N6
\ShiftLeft0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~26_combout\ = (\Add9~0_combout\ & ((\ShiftLeft0~18_combout\))) # (!\Add9~0_combout\ & (\ShiftLeft0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~15_combout\,
	datac => \ShiftLeft0~18_combout\,
	datad => \Add9~0_combout\,
	combout => \ShiftLeft0~26_combout\);

-- Location: LCCOMB_X29_Y20_N20
\Add7~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (\rexpon~2_combout\ & (\Add7~9\ & VCC)) # (!\rexpon~2_combout\ & (!\Add7~9\))
-- \Add7~11\ = CARRY((!\rexpon~2_combout\ & !\Add7~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rexpon~2_combout\,
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X29_Y23_N8
\Add8~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~11_combout\ = (\Add7~10_combout\ & (!\Add8~9\ & VCC)) # (!\Add7~10_combout\ & (\Add8~9\ $ (GND)))
-- \Add8~12\ = CARRY((!\Add7~10_combout\ & !\Add8~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add7~10_combout\,
	datad => VCC,
	cin => \Add8~9\,
	combout => \Add8~11_combout\,
	cout => \Add8~12\);

-- Location: LCCOMB_X29_Y23_N10
\Add8~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~13_combout\ = (\Add7~12_combout\ & ((\Add8~12\) # (GND))) # (!\Add7~12_combout\ & (!\Add8~12\))
-- \Add8~14\ = CARRY((\Add7~12_combout\) # (!\Add8~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~12_combout\,
	datad => VCC,
	cin => \Add8~12\,
	combout => \Add8~13_combout\,
	cout => \Add8~14\);

-- Location: LCCOMB_X29_Y23_N12
\Add8~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~15_combout\ = (\Add7~14_combout\ & (!\Add8~14\ & VCC)) # (!\Add7~14_combout\ & (\Add8~14\ $ (GND)))
-- \Add8~16\ = CARRY((!\Add7~14_combout\ & !\Add8~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add7~14_combout\,
	datad => VCC,
	cin => \Add8~14\,
	combout => \Add8~15_combout\,
	cout => \Add8~16\);

-- Location: LCCOMB_X29_Y23_N16
\Add8~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~19_combout\ = \Add7~16_combout\ $ (\Add8~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~16_combout\,
	cin => \Add8~18\,
	combout => \Add8~19_combout\);

-- Location: LCCOMB_X29_Y23_N22
\Add8~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~21_combout\ = (\shiftr~5_combout\ & (((\Add5~12_combout\)))) # (!\shiftr~5_combout\ & ((\shiftr~2_combout\ & (\Add8~19_combout\)) # (!\shiftr~2_combout\ & ((\Add5~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftr~5_combout\,
	datab => \Add8~19_combout\,
	datac => \shiftr~2_combout\,
	datad => \Add5~12_combout\,
	combout => \Add8~21_combout\);

-- Location: LCCOMB_X32_Y18_N16
\sfract~110\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~110_combout\ = (\Add8~21_combout\ & (((\ShiftLeft0~26_combout\)))) # (!\Add8~21_combout\ & (\sfract~109_combout\ & (!\Add8~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~109_combout\,
	datab => \Add8~10_combout\,
	datac => \ShiftLeft0~26_combout\,
	datad => \Add8~21_combout\,
	combout => \sfract~110_combout\);

-- Location: LCCOMB_X29_Y24_N28
\shiftr~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \shiftr~4_combout\ = (\Add6~12_combout\) # ((\Add6~8_combout\) # (\Add6~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add6~12_combout\,
	datac => \Add6~8_combout\,
	datad => \Add6~10_combout\,
	combout => \shiftr~4_combout\);

-- Location: LCCOMB_X29_Y24_N30
\shiftr~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \shiftr~5_combout\ = ((\Add6~14_combout\ & ((\shiftr~3_combout\) # (\shiftr~4_combout\)))) # (!\Add6~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftr~3_combout\,
	datab => \shiftr~4_combout\,
	datac => \Add6~16_combout\,
	datad => \Add6~14_combout\,
	combout => \shiftr~5_combout\);

-- Location: LCCOMB_X30_Y23_N16
\Add8~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~7_combout\ = (\shiftr~5_combout\ & (\Add5~4_combout\)) # (!\shiftr~5_combout\ & ((\shiftr~2_combout\ & ((\Add8~5_combout\))) # (!\shiftr~2_combout\ & (\Add5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~4_combout\,
	datab => \shiftr~5_combout\,
	datac => \Add8~5_combout\,
	datad => \shiftr~2_combout\,
	combout => \Add8~7_combout\);

-- Location: LCCOMB_X29_Y17_N8
\ShiftRight2~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~9_combout\ = (\shiftr~6_combout\ & (\Add2~86_combout\)) # (!\shiftr~6_combout\ & ((\Add2~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~86_combout\,
	datac => \Add2~103_combout\,
	datad => \shiftr~6_combout\,
	combout => \ShiftRight2~9_combout\);

-- Location: LCCOMB_X29_Y17_N22
\Add2~119\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~119_combout\ = (\Add3~42_combout\ & ((\Add2~84_combout\) # (\b[31]~input_o\ $ (\a[31]~input_o\)))) # (!\Add3~42_combout\ & (\Add2~84_combout\ & (\b[31]~input_o\ $ (!\a[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~42_combout\,
	datab => \Add2~84_combout\,
	datac => \b[31]~input_o\,
	datad => \a[31]~input_o\,
	combout => \Add2~119_combout\);

-- Location: LCCOMB_X29_Y17_N30
\ShiftRight2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~2_combout\ = (\shiftr~6_combout\ & (\Add2~104_combout\)) # (!\shiftr~6_combout\ & ((\Add2~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~104_combout\,
	datac => \Add2~119_combout\,
	datad => \shiftr~6_combout\,
	combout => \ShiftRight2~2_combout\);

-- Location: LCCOMB_X29_Y20_N0
\shiftr~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \shiftr~7_combout\ = (\shiftr~5_combout\ & (((\find_leftmost~32_combout\)))) # (!\shiftr~5_combout\ & ((\shiftr~2_combout\ & (!\rexpon~6_combout\)) # (!\shiftr~2_combout\ & ((\find_leftmost~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftr~5_combout\,
	datab => \rexpon~6_combout\,
	datac => \find_leftmost~32_combout\,
	datad => \shiftr~2_combout\,
	combout => \shiftr~7_combout\);

-- Location: LCCOMB_X31_Y16_N4
\ShiftRight2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~10_combout\ = (\shiftr~7_combout\ & (\ShiftRight2~9_combout\)) # (!\shiftr~7_combout\ & ((\ShiftRight2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight2~9_combout\,
	datac => \ShiftRight2~2_combout\,
	datad => \shiftr~7_combout\,
	combout => \ShiftRight2~10_combout\);

-- Location: LCCOMB_X31_Y16_N28
\ShiftRight2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~3_combout\ = (\shiftr~6_combout\ & ((\Add2~108_combout\))) # (!\shiftr~6_combout\ & (\Add2~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftr~6_combout\,
	datab => \Add2~105_combout\,
	datac => \Add2~108_combout\,
	combout => \ShiftRight2~3_combout\);

-- Location: LCCOMB_X31_Y16_N16
\ShiftRight2~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~7_combout\ = (!\shiftr~7_combout\ & ((\shiftr~6_combout\ & (\Add2~106_combout\)) # (!\shiftr~6_combout\ & ((\Add2~109_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftr~6_combout\,
	datab => \Add2~106_combout\,
	datac => \Add2~109_combout\,
	datad => \shiftr~7_combout\,
	combout => \ShiftRight2~7_combout\);

-- Location: LCCOMB_X31_Y16_N2
\ShiftRight2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~8_combout\ = (\ShiftRight2~7_combout\) # ((\shiftr~7_combout\ & \ShiftRight2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftr~7_combout\,
	datab => \ShiftRight2~3_combout\,
	datad => \ShiftRight2~7_combout\,
	combout => \ShiftRight2~8_combout\);

-- Location: LCCOMB_X31_Y16_N22
\ShiftRight2~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~11_combout\ = (\Add8~4_combout\ & ((\ShiftRight2~8_combout\))) # (!\Add8~4_combout\ & (\ShiftRight2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~4_combout\,
	datac => \ShiftRight2~10_combout\,
	datad => \ShiftRight2~8_combout\,
	combout => \ShiftRight2~11_combout\);

-- Location: LCCOMB_X32_Y18_N0
\sfract~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~27_combout\ = (!\Add8~21_combout\ & ((\Add8~7_combout\ & (\ShiftRight2~6_combout\)) # (!\Add8~7_combout\ & ((\ShiftRight2~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~6_combout\,
	datab => \Add8~7_combout\,
	datac => \ShiftRight2~11_combout\,
	datad => \Add8~21_combout\,
	combout => \sfract~27_combout\);

-- Location: LCCOMB_X32_Y18_N18
\sfract~111\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~111_combout\ = (\sfract~135_combout\ & ((\sfract~110_combout\) # ((\Add8~10_combout\ & \sfract~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~135_combout\,
	datab => \sfract~110_combout\,
	datac => \Add8~10_combout\,
	datad => \sfract~27_combout\,
	combout => \sfract~111_combout\);

-- Location: LCCOMB_X29_Y23_N18
\Add8~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = (\shiftr~5_combout\ & (\Add5~2_combout\)) # (!\shiftr~5_combout\ & ((\shiftr~2_combout\ & ((\Add8~2_combout\))) # (!\shiftr~2_combout\ & (\Add5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftr~5_combout\,
	datab => \Add5~2_combout\,
	datac => \shiftr~2_combout\,
	datad => \Add8~2_combout\,
	combout => \Add8~4_combout\);

-- Location: LCCOMB_X31_Y18_N8
\Add9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (\Add8~4_combout\ & ((\Add9~1\) # (GND))) # (!\Add8~4_combout\ & (!\Add9~1\))
-- \Add9~3\ = CARRY((\Add8~4_combout\) # (!\Add9~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~4_combout\,
	datad => VCC,
	cin => \Add9~1\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: LCCOMB_X31_Y18_N10
\Add9~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = (\Add8~7_combout\ & (!\Add9~3\ & VCC)) # (!\Add8~7_combout\ & (\Add9~3\ $ (GND)))
-- \Add9~5\ = CARRY((!\Add8~7_combout\ & !\Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~7_combout\,
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: LCCOMB_X31_Y18_N12
\Add9~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (\Add8~10_combout\ & ((\Add9~5\) # (GND))) # (!\Add8~10_combout\ & (!\Add9~5\))
-- \Add9~7\ = CARRY((\Add8~10_combout\) # (!\Add9~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~10_combout\,
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: LCCOMB_X30_Y18_N0
\sfract~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~22_combout\ = (\Add9~6_combout\) # (\Add9~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~6_combout\,
	datad => \Add9~4_combout\,
	combout => \sfract~22_combout\);

-- Location: LCCOMB_X30_Y18_N22
\ShiftLeft0~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~27_combout\ = (!\Add9~4_combout\ & (\ShiftLeft0~26_combout\ & !\Add9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~4_combout\,
	datac => \ShiftLeft0~26_combout\,
	datad => \Add9~2_combout\,
	combout => \ShiftLeft0~27_combout\);

-- Location: LCCOMB_X30_Y16_N6
\ShiftLeft0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~5_combout\ = (\shiftr~6_combout\ & ((\Add2~116_combout\))) # (!\shiftr~6_combout\ & (\Add2~117_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~117_combout\,
	datab => \shiftr~6_combout\,
	datac => \Add2~116_combout\,
	combout => \ShiftLeft0~5_combout\);

-- Location: LCCOMB_X35_Y15_N22
\ShiftLeft0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~22_combout\ = (\Add9~0_combout\ & (\ShiftLeft0~3_combout\)) # (!\Add9~0_combout\ & ((\ShiftLeft0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~3_combout\,
	datac => \ShiftLeft0~5_combout\,
	datad => \Add9~0_combout\,
	combout => \ShiftLeft0~22_combout\);

-- Location: LCCOMB_X35_Y15_N0
\ShiftLeft0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~23_combout\ = (\Add9~2_combout\ & (\ShiftLeft0~21_combout\)) # (!\Add9~2_combout\ & ((\ShiftLeft0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~21_combout\,
	datab => \Add9~2_combout\,
	datac => \ShiftLeft0~22_combout\,
	combout => \ShiftLeft0~23_combout\);

-- Location: LCCOMB_X30_Y18_N24
\sfract~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~29_combout\ = (\sfract~28_combout\ & (((\ShiftLeft0~27_combout\)) # (!\sfract~22_combout\))) # (!\sfract~28_combout\ & (\sfract~22_combout\ & ((\ShiftLeft0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~28_combout\,
	datab => \sfract~22_combout\,
	datac => \ShiftLeft0~27_combout\,
	datad => \ShiftLeft0~23_combout\,
	combout => \sfract~29_combout\);

-- Location: LCCOMB_X32_Y18_N10
\sfract~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~30_combout\ = (\sfract~27_combout\) # ((\Add8~21_combout\ & \sfract~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~21_combout\,
	datac => \sfract~29_combout\,
	datad => \sfract~27_combout\,
	combout => \sfract~30_combout\);

-- Location: LCCOMB_X31_Y16_N8
\ShiftRight2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~0_combout\ = (!\shiftr~6_combout\ & ((\shiftr~7_combout\ & ((\Add2~109_combout\))) # (!\shiftr~7_combout\ & (\Add2~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftr~6_combout\,
	datab => \Add2~107_combout\,
	datac => \Add2~109_combout\,
	datad => \shiftr~7_combout\,
	combout => \ShiftRight2~0_combout\);

-- Location: LCCOMB_X31_Y16_N26
\ShiftRight2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~1_combout\ = (\ShiftRight2~0_combout\) # ((\shiftr~6_combout\ & (\Add2~106_combout\ & \shiftr~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftr~6_combout\,
	datab => \Add2~106_combout\,
	datac => \ShiftRight2~0_combout\,
	datad => \shiftr~7_combout\,
	combout => \ShiftRight2~1_combout\);

-- Location: LCCOMB_X35_Y16_N16
\ShiftRight2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~5_combout\ = (\Add8~4_combout\ & ((\ShiftRight2~1_combout\))) # (!\Add8~4_combout\ & (\ShiftRight2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~4_combout\,
	datac => \Add8~4_combout\,
	datad => \ShiftRight2~1_combout\,
	combout => \ShiftRight2~5_combout\);

-- Location: LCCOMB_X35_Y19_N18
\ShiftLeft0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~20_combout\ = (\ShiftLeft0~19_combout\ & !\Add9~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~19_combout\,
	datac => \Add9~4_combout\,
	combout => \ShiftLeft0~20_combout\);

-- Location: LCCOMB_X30_Y18_N2
\sfract~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~23_combout\ = (\Add9~6_combout\) # ((\Add9~2_combout\ & !\Add9~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~2_combout\,
	datab => \Add9~6_combout\,
	datad => \Add9~4_combout\,
	combout => \sfract~23_combout\);

-- Location: LCCOMB_X29_Y18_N28
\Add2~102\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~102_combout\ = (\a[31]~input_o\ & ((\b[31]~input_o\ & ((\Add2~76_combout\))) # (!\b[31]~input_o\ & (\Add3~34_combout\)))) # (!\a[31]~input_o\ & ((\b[31]~input_o\ & (\Add3~34_combout\)) # (!\b[31]~input_o\ & ((\Add2~76_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \Add3~34_combout\,
	datac => \Add2~76_combout\,
	datad => \b[31]~input_o\,
	combout => \Add2~102_combout\);

-- Location: LCCOMB_X32_Y16_N30
\ShiftLeft0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~10_combout\ = (\shiftr~6_combout\ & (\Add2~101_combout\)) # (!\shiftr~6_combout\ & ((\Add2~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~101_combout\,
	datab => \Add2~102_combout\,
	datac => \shiftr~6_combout\,
	combout => \ShiftLeft0~10_combout\);

-- Location: LCCOMB_X35_Y15_N14
\ShiftLeft0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~11_combout\ = (\Add9~0_combout\ & (\ShiftLeft0~9_combout\)) # (!\Add9~0_combout\ & ((\ShiftLeft0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~9_combout\,
	datac => \ShiftLeft0~10_combout\,
	datad => \Add9~0_combout\,
	combout => \ShiftLeft0~11_combout\);

-- Location: LCCOMB_X35_Y19_N0
\sfract~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~24_combout\ = (\sfract~23_combout\ & (((\sfract~22_combout\) # (\ShiftLeft0~11_combout\)))) # (!\sfract~23_combout\ & (\ShiftLeft0~14_combout\ & (!\sfract~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~14_combout\,
	datab => \sfract~23_combout\,
	datac => \sfract~22_combout\,
	datad => \ShiftLeft0~11_combout\,
	combout => \sfract~24_combout\);

-- Location: LCCOMB_X35_Y19_N12
\sfract~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~25_combout\ = (\sfract~22_combout\ & ((\sfract~24_combout\ & ((\ShiftLeft0~20_combout\))) # (!\sfract~24_combout\ & (\ShiftLeft0~8_combout\)))) # (!\sfract~22_combout\ & (((\sfract~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~8_combout\,
	datab => \ShiftLeft0~20_combout\,
	datac => \sfract~22_combout\,
	datad => \sfract~24_combout\,
	combout => \sfract~25_combout\);

-- Location: LCCOMB_X35_Y19_N14
\sfract~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~26_combout\ = (\Add8~21_combout\ & ((\sfract~25_combout\))) # (!\Add8~21_combout\ & (\ShiftRight2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~21_combout\,
	datab => \ShiftRight2~5_combout\,
	datad => \sfract~25_combout\,
	combout => \sfract~26_combout\);

-- Location: LCCOMB_X34_Y16_N6
\ShiftLeft0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~32_combout\ = (\shiftr~6_combout\ & ((\Add2~114_combout\))) # (!\shiftr~6_combout\ & (\Add2~112_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~112_combout\,
	datac => \shiftr~6_combout\,
	datad => \Add2~114_combout\,
	combout => \ShiftLeft0~32_combout\);

-- Location: LCCOMB_X29_Y19_N2
\Add2~111\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~111_combout\ = (\Add3~10_combout\ & ((\Add2~52_combout\) # (\a[31]~input_o\ $ (\b[31]~input_o\)))) # (!\Add3~10_combout\ & (\Add2~52_combout\ & (\a[31]~input_o\ $ (!\b[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datab => \a[31]~input_o\,
	datac => \b[31]~input_o\,
	datad => \Add2~52_combout\,
	combout => \Add2~111_combout\);

-- Location: LCCOMB_X34_Y16_N20
\ShiftLeft0~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~31_combout\ = (\shiftr~6_combout\ & ((\Add2~111_combout\))) # (!\shiftr~6_combout\ & (\Add2~113_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftr~6_combout\,
	datac => \Add2~113_combout\,
	datad => \Add2~111_combout\,
	combout => \ShiftLeft0~31_combout\);

-- Location: LCCOMB_X31_Y19_N4
\ShiftLeft0~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~33_combout\ = (\Add9~0_combout\ & ((\ShiftLeft0~31_combout\))) # (!\Add9~0_combout\ & (\ShiftLeft0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~0_combout\,
	datac => \ShiftLeft0~32_combout\,
	datad => \ShiftLeft0~31_combout\,
	combout => \ShiftLeft0~33_combout\);

-- Location: LCCOMB_X32_Y19_N8
\ShiftLeft0~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~37_combout\ = (\Add9~2_combout\ & ((\ShiftLeft0~33_combout\))) # (!\Add9~2_combout\ & (\ShiftLeft0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~36_combout\,
	datac => \ShiftLeft0~33_combout\,
	datad => \Add9~2_combout\,
	combout => \ShiftLeft0~37_combout\);

-- Location: LCCOMB_X32_Y16_N10
\ShiftLeft0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~38_combout\ = (\shiftr~6_combout\ & ((\Add2~102_combout\))) # (!\shiftr~6_combout\ & (\Add2~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~100_combout\,
	datab => \Add2~102_combout\,
	datac => \shiftr~6_combout\,
	combout => \ShiftLeft0~38_combout\);

-- Location: LCCOMB_X32_Y17_N16
\ShiftLeft0~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~39_combout\ = (\shiftr~6_combout\ & ((\Add2~103_combout\))) # (!\shiftr~6_combout\ & (\Add2~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftr~6_combout\,
	datab => \Add2~86_combout\,
	datad => \Add2~103_combout\,
	combout => \ShiftLeft0~39_combout\);

-- Location: LCCOMB_X32_Y17_N10
\ShiftLeft0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~40_combout\ = (\Add9~0_combout\ & (\ShiftLeft0~38_combout\)) # (!\Add9~0_combout\ & ((\ShiftLeft0~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~38_combout\,
	datac => \Add9~0_combout\,
	datad => \ShiftLeft0~39_combout\,
	combout => \ShiftLeft0~40_combout\);

-- Location: LCCOMB_X35_Y19_N8
\sfract~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~31_combout\ = (\sfract~22_combout\ & ((\sfract~23_combout\) # ((\ShiftLeft0~37_combout\)))) # (!\sfract~22_combout\ & (!\sfract~23_combout\ & ((\ShiftLeft0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~22_combout\,
	datab => \sfract~23_combout\,
	datac => \ShiftLeft0~37_combout\,
	datad => \ShiftLeft0~40_combout\,
	combout => \sfract~31_combout\);

-- Location: LCCOMB_X30_Y19_N28
\Add2~120\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~120_combout\ = (\Add3~26_combout\ & ((\Add2~68_combout\) # (\a[31]~input_o\ $ (\b[31]~input_o\)))) # (!\Add3~26_combout\ & (\Add2~68_combout\ & (\a[31]~input_o\ $ (!\b[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~26_combout\,
	datab => \Add2~68_combout\,
	datac => \a[31]~input_o\,
	datad => \b[31]~input_o\,
	combout => \Add2~120_combout\);

-- Location: LCCOMB_X29_Y16_N28
\ShiftLeft0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~28_combout\ = (\shiftr~6_combout\ & ((\Add2~120_combout\))) # (!\shiftr~6_combout\ & (\Add2~121_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~121_combout\,
	datab => \shiftr~6_combout\,
	datac => \Add2~120_combout\,
	combout => \ShiftLeft0~28_combout\);

-- Location: LCCOMB_X29_Y16_N16
\Add2~110\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~110_combout\ = (\Add3~30_combout\ & ((\Add2~72_combout\) # (\a[31]~input_o\ $ (\b[31]~input_o\)))) # (!\Add3~30_combout\ & (\Add2~72_combout\ & (\a[31]~input_o\ $ (!\b[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~30_combout\,
	datab => \Add2~72_combout\,
	datac => \a[31]~input_o\,
	datad => \b[31]~input_o\,
	combout => \Add2~110_combout\);

-- Location: LCCOMB_X32_Y16_N16
\ShiftLeft0~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~29_combout\ = (\shiftr~6_combout\ & ((\Add2~110_combout\))) # (!\shiftr~6_combout\ & (\Add2~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~101_combout\,
	datab => \shiftr~6_combout\,
	datac => \Add2~110_combout\,
	combout => \ShiftLeft0~29_combout\);

-- Location: LCCOMB_X31_Y19_N10
\ShiftLeft0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~30_combout\ = (\Add9~0_combout\ & (\ShiftLeft0~28_combout\)) # (!\Add9~0_combout\ & ((\ShiftLeft0~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~0_combout\,
	datab => \ShiftLeft0~28_combout\,
	datad => \ShiftLeft0~29_combout\,
	combout => \ShiftLeft0~30_combout\);

-- Location: LCCOMB_X35_Y19_N4
\sfract~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~32_combout\ = (\sfract~23_combout\ & ((\sfract~31_combout\ & (\ShiftLeft0~46_combout\)) # (!\sfract~31_combout\ & ((\ShiftLeft0~30_combout\))))) # (!\sfract~23_combout\ & (((\sfract~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~46_combout\,
	datab => \sfract~23_combout\,
	datac => \sfract~31_combout\,
	datad => \ShiftLeft0~30_combout\,
	combout => \sfract~32_combout\);

-- Location: LCCOMB_X29_Y17_N26
\ShiftRight2~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~15_combout\ = (\shiftr~6_combout\ & ((\Add2~119_combout\))) # (!\shiftr~6_combout\ & (\Add2~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~86_combout\,
	datac => \Add2~119_combout\,
	datad => \shiftr~6_combout\,
	combout => \ShiftRight2~15_combout\);

-- Location: LCCOMB_X29_Y17_N28
\ShiftRight2~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~16_combout\ = (\shiftr~6_combout\ & ((\Add2~105_combout\))) # (!\shiftr~6_combout\ & (\Add2~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~104_combout\,
	datac => \Add2~105_combout\,
	datad => \shiftr~6_combout\,
	combout => \ShiftRight2~16_combout\);

-- Location: LCCOMB_X34_Y20_N6
\ShiftRight2~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~17_combout\ = (\shiftr~7_combout\ & (\ShiftRight2~15_combout\)) # (!\shiftr~7_combout\ & ((\ShiftRight2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight2~15_combout\,
	datac => \ShiftRight2~16_combout\,
	datad => \shiftr~7_combout\,
	combout => \ShiftRight2~17_combout\);

-- Location: LCCOMB_X30_Y15_N22
\ShiftRight2~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~13_combout\ = (\shiftr~6_combout\ & (\Add2~107_combout\)) # (!\shiftr~6_combout\ & ((\Add2~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~107_combout\,
	datac => \Add2~106_combout\,
	datad => \shiftr~6_combout\,
	combout => \ShiftRight2~13_combout\);

-- Location: LCCOMB_X30_Y15_N12
\ShiftRight2~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~12_combout\ = (\shiftr~6_combout\ & (\Add2~109_combout\)) # (!\shiftr~6_combout\ & ((\Add2~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~109_combout\,
	datac => \Add2~108_combout\,
	datad => \shiftr~6_combout\,
	combout => \ShiftRight2~12_combout\);

-- Location: LCCOMB_X34_Y20_N20
\ShiftRight2~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~14_combout\ = (\shiftr~7_combout\ & ((\ShiftRight2~12_combout\))) # (!\shiftr~7_combout\ & (\ShiftRight2~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftr~7_combout\,
	datac => \ShiftRight2~13_combout\,
	datad => \ShiftRight2~12_combout\,
	combout => \ShiftRight2~14_combout\);

-- Location: LCCOMB_X35_Y16_N10
\ShiftRight2~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~18_combout\ = (\Add8~4_combout\ & ((\ShiftRight2~14_combout\))) # (!\Add8~4_combout\ & (\ShiftRight2~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight2~17_combout\,
	datac => \Add8~4_combout\,
	datad => \ShiftRight2~14_combout\,
	combout => \ShiftRight2~18_combout\);

-- Location: LCCOMB_X35_Y19_N30
\sfract~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~33_combout\ = (\Add8~21_combout\ & (\sfract~32_combout\)) # (!\Add8~21_combout\ & ((\ShiftRight2~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~21_combout\,
	datab => \sfract~32_combout\,
	datac => \ShiftRight2~18_combout\,
	combout => \sfract~33_combout\);

-- Location: LCCOMB_X32_Y20_N24
\Sumfp[-17]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Sumfp[-17]~5_combout\ = (((!\sfract~33_combout\) # (!\sfract~26_combout\)) # (!\sfract~30_combout\)) # (!\sfract~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~39_combout\,
	datab => \sfract~30_combout\,
	datac => \sfract~26_combout\,
	datad => \sfract~33_combout\,
	combout => \Sumfp[-17]~5_combout\);

-- Location: LCCOMB_X31_Y19_N18
\ShiftLeft0~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~44_combout\ = (\ufract~2_combout\ & !\shiftr~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ufract~2_combout\,
	datad => \shiftr~6_combout\,
	combout => \ShiftLeft0~44_combout\);

-- Location: LCCOMB_X28_Y17_N16
\ShiftLeft0~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~41_combout\ = (\shiftr~6_combout\ & ((\ufract~0_combout\))) # (!\shiftr~6_combout\ & (\ufract~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftr~6_combout\,
	datab => \ufract~1_combout\,
	datac => \ufract~0_combout\,
	combout => \ShiftLeft0~41_combout\);

-- Location: LCCOMB_X30_Y19_N14
\Add2~122\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~122_combout\ = (\a[31]~input_o\ & ((\b[31]~input_o\ & ((\Add2~50_combout\))) # (!\b[31]~input_o\ & (\Add3~8_combout\)))) # (!\a[31]~input_o\ & ((\b[31]~input_o\ & (\Add3~8_combout\)) # (!\b[31]~input_o\ & ((\Add2~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \Add3~8_combout\,
	datac => \Add2~50_combout\,
	datad => \b[31]~input_o\,
	combout => \Add2~122_combout\);

-- Location: LCCOMB_X34_Y20_N10
\ShiftLeft0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~42_combout\ = (\shiftr~6_combout\ & (\Add2~99_combout\)) # (!\shiftr~6_combout\ & ((\Add2~122_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~99_combout\,
	datab => \Add2~122_combout\,
	datac => \shiftr~6_combout\,
	combout => \ShiftLeft0~42_combout\);

-- Location: LCCOMB_X31_Y19_N8
\ShiftLeft0~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~43_combout\ = (\Add9~0_combout\ & (\ShiftLeft0~41_combout\)) # (!\Add9~0_combout\ & ((\ShiftLeft0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~0_combout\,
	datab => \ShiftLeft0~41_combout\,
	datac => \ShiftLeft0~42_combout\,
	combout => \ShiftLeft0~43_combout\);

-- Location: LCCOMB_X31_Y19_N28
\ShiftLeft0~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~45_combout\ = (\Add9~2_combout\ & (!\Add9~0_combout\ & (\ShiftLeft0~44_combout\))) # (!\Add9~2_combout\ & (((\ShiftLeft0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~0_combout\,
	datab => \ShiftLeft0~44_combout\,
	datac => \ShiftLeft0~43_combout\,
	datad => \Add9~2_combout\,
	combout => \ShiftLeft0~45_combout\);

-- Location: LCCOMB_X31_Y15_N16
\ShiftRight2~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~50_combout\ = (\shiftr~6_combout\ & ((\Add2~115_combout\))) # (!\shiftr~6_combout\ & (\Add2~112_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftr~6_combout\,
	datac => \Add2~112_combout\,
	datad => \Add2~115_combout\,
	combout => \ShiftRight2~50_combout\);

-- Location: LCCOMB_X34_Y17_N18
\ShiftRight2~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~52_combout\ = (\shiftr~7_combout\ & ((\ShiftRight2~50_combout\))) # (!\shiftr~7_combout\ & (\ShiftRight2~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~51_combout\,
	datab => \shiftr~7_combout\,
	datac => \ShiftRight2~50_combout\,
	combout => \ShiftRight2~52_combout\);

-- Location: LCCOMB_X29_Y16_N20
\Add2~100\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~100_combout\ = (\Add3~36_combout\ & ((\Add2~78_combout\) # (\a[31]~input_o\ $ (\b[31]~input_o\)))) # (!\Add3~36_combout\ & (\Add2~78_combout\ & (\a[31]~input_o\ $ (!\b[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~36_combout\,
	datab => \Add2~78_combout\,
	datac => \a[31]~input_o\,
	datad => \b[31]~input_o\,
	combout => \Add2~100_combout\);

-- Location: LCCOMB_X29_Y20_N6
\ShiftRight2~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~33_combout\ = (\shiftr~6_combout\ & ((\Add2~103_combout\))) # (!\shiftr~6_combout\ & (\Add2~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~100_combout\,
	datac => \shiftr~6_combout\,
	datad => \Add2~103_combout\,
	combout => \ShiftRight2~33_combout\);

-- Location: LCCOMB_X32_Y16_N0
\ShiftRight2~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~36_combout\ = (\shiftr~6_combout\ & ((\Add2~102_combout\))) # (!\shiftr~6_combout\ & (\Add2~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~101_combout\,
	datab => \Add2~102_combout\,
	datac => \shiftr~6_combout\,
	combout => \ShiftRight2~36_combout\);

-- Location: LCCOMB_X35_Y16_N22
\ShiftRight2~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~37_combout\ = (\shiftr~7_combout\ & ((\ShiftRight2~36_combout\))) # (!\shiftr~7_combout\ & (\ShiftRight2~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftr~7_combout\,
	datac => \ShiftRight2~33_combout\,
	datad => \ShiftRight2~36_combout\,
	combout => \ShiftRight2~37_combout\);

-- Location: LCCOMB_X35_Y16_N18
\ShiftRight2~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~55_combout\ = (\Add8~4_combout\ & ((\ShiftRight2~37_combout\))) # (!\Add8~4_combout\ & (\ShiftRight2~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~49_combout\,
	datab => \Add8~4_combout\,
	datac => \ShiftRight2~37_combout\,
	combout => \ShiftRight2~55_combout\);

-- Location: LCCOMB_X34_Y16_N18
\ShiftRight2~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~65_combout\ = (\shiftr~6_combout\ & (\Add2~114_combout\)) # (!\shiftr~6_combout\ & ((\Add2~113_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~114_combout\,
	datab => \Add2~113_combout\,
	datac => \shiftr~6_combout\,
	combout => \ShiftRight2~65_combout\);

-- Location: LCCOMB_X34_Y17_N24
\ShiftRight2~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~69_combout\ = (\shiftr~7_combout\ & (\ShiftRight2~68_combout\)) # (!\shiftr~7_combout\ & ((\ShiftRight2~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~68_combout\,
	datab => \shiftr~7_combout\,
	datac => \ShiftRight2~65_combout\,
	combout => \ShiftRight2~69_combout\);

-- Location: LCCOMB_X35_Y16_N12
\sfract~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~40_combout\ = (!\Add8~10_combout\ & !\Add8~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~10_combout\,
	datad => \Add8~7_combout\,
	combout => \sfract~40_combout\);

-- Location: LCCOMB_X35_Y16_N26
\sfract~104\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~104_combout\ = (\sfract~41_combout\ & (((!\sfract~40_combout\)))) # (!\sfract~41_combout\ & ((\sfract~40_combout\ & ((\ShiftRight2~69_combout\))) # (!\sfract~40_combout\ & (\ShiftRight2~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~41_combout\,
	datab => \ShiftRight2~55_combout\,
	datac => \ShiftRight2~69_combout\,
	datad => \sfract~40_combout\,
	combout => \sfract~104_combout\);

-- Location: LCCOMB_X35_Y16_N28
\ShiftRight2~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~70_combout\ = (!\Add8~7_combout\ & ((\Add8~4_combout\ & ((\ShiftRight2~14_combout\))) # (!\Add8~4_combout\ & (\ShiftRight2~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~7_combout\,
	datab => \ShiftRight2~17_combout\,
	datac => \Add8~4_combout\,
	datad => \ShiftRight2~14_combout\,
	combout => \ShiftRight2~70_combout\);

-- Location: LCCOMB_X35_Y16_N14
\sfract~105\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~105_combout\ = (\sfract~41_combout\ & ((\sfract~104_combout\ & ((\ShiftRight2~70_combout\))) # (!\sfract~104_combout\ & (\ShiftRight2~52_combout\)))) # (!\sfract~41_combout\ & (((\sfract~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~41_combout\,
	datab => \ShiftRight2~52_combout\,
	datac => \sfract~104_combout\,
	datad => \ShiftRight2~70_combout\,
	combout => \sfract~105_combout\);

-- Location: LCCOMB_X35_Y19_N2
\sfract~106\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~106_combout\ = (\Add8~21_combout\ & (\ShiftLeft0~45_combout\)) # (!\Add8~21_combout\ & ((\sfract~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~21_combout\,
	datab => \ShiftLeft0~45_combout\,
	datac => \sfract~105_combout\,
	combout => \sfract~106_combout\);

-- Location: LCCOMB_X29_Y23_N26
\Add8~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~23_combout\ = (\shiftr~5_combout\ & (\Add5~10_combout\)) # (!\shiftr~5_combout\ & ((\shiftr~2_combout\ & ((\Add8~13_combout\))) # (!\shiftr~2_combout\ & (\Add5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftr~5_combout\,
	datab => \Add5~10_combout\,
	datac => \shiftr~2_combout\,
	datad => \Add8~13_combout\,
	combout => \Add8~23_combout\);

-- Location: LCCOMB_X29_Y23_N24
\Add8~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~22_combout\ = (\shiftr~5_combout\ & (((\Add5~8_combout\)))) # (!\shiftr~5_combout\ & ((\shiftr~2_combout\ & (\Add8~11_combout\)) # (!\shiftr~2_combout\ & ((\Add5~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftr~5_combout\,
	datab => \Add8~11_combout\,
	datac => \shiftr~2_combout\,
	datad => \Add5~8_combout\,
	combout => \Add8~22_combout\);

-- Location: LCCOMB_X31_Y18_N22
\Add9~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~16_combout\ = (\Add8~21_combout\ & (!\Add9~15\ & VCC)) # (!\Add8~21_combout\ & (\Add9~15\ $ (GND)))
-- \Add9~17\ = CARRY((!\Add8~21_combout\ & !\Add9~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~21_combout\,
	datad => VCC,
	cin => \Add9~15\,
	combout => \Add9~16_combout\,
	cout => \Add9~17\);

-- Location: LCCOMB_X31_Y18_N24
\Add9~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add9~18_combout\ = \Add9~17\ $ (!\Add8~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add8~21_combout\,
	cin => \Add9~17\,
	combout => \Add9~18_combout\);

-- Location: LCCOMB_X31_Y18_N4
\ShiftLeft0~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~59_combout\ = (\ShiftLeft0~58_combout\ & (!\Add9~16_combout\ & !\Add9~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~58_combout\,
	datac => \Add9~16_combout\,
	datad => \Add9~18_combout\,
	combout => \ShiftLeft0~59_combout\);

-- Location: LCCOMB_X32_Y18_N26
\sfract~133\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~133_combout\ = (\Add8~21_combout\ & (((\ShiftLeft0~59_combout\)))) # (!\Add8~21_combout\ & (\ShiftRight2~39_combout\ & (!\Add8~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~39_combout\,
	datab => \Add8~21_combout\,
	datac => \Add8~10_combout\,
	datad => \ShiftLeft0~59_combout\,
	combout => \sfract~133_combout\);

-- Location: LCCOMB_X32_Y19_N30
\sfract~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~48_combout\ = (\Add8~21_combout\ & (!\Add9~6_combout\ & \ShiftLeft0~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~21_combout\,
	datab => \Add9~6_combout\,
	datac => \ShiftLeft0~59_combout\,
	combout => \sfract~48_combout\);

-- Location: LCCOMB_X32_Y18_N4
\sfract~134\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~134_combout\ = (\ShiftRight2~39_combout\ & (((\sfract~48_combout\ & !\Add9~4_combout\)) # (!\Add8~21_combout\))) # (!\ShiftRight2~39_combout\ & (((\sfract~48_combout\ & !\Add9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~39_combout\,
	datab => \Add8~21_combout\,
	datac => \sfract~48_combout\,
	datad => \Add9~4_combout\,
	combout => \sfract~134_combout\);

-- Location: LCCOMB_X31_Y20_N28
\sfract~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~73_combout\ = (\Add8~21_combout\ & ((\Add9~4_combout\))) # (!\Add8~21_combout\ & (\Add8~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~7_combout\,
	datac => \Add9~4_combout\,
	datad => \Add8~21_combout\,
	combout => \sfract~73_combout\);

-- Location: LCCOMB_X30_Y16_N0
\ShiftLeft0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~6_combout\ = (\shiftr~6_combout\ & (\Add2~118_combout\)) # (!\shiftr~6_combout\ & ((\Add2~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~118_combout\,
	datac => \shiftr~6_combout\,
	datad => \Add2~120_combout\,
	combout => \ShiftLeft0~6_combout\);

-- Location: LCCOMB_X29_Y16_N26
\ShiftLeft0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~9_combout\ = (\shiftr~6_combout\ & (\Add2~121_combout\)) # (!\shiftr~6_combout\ & ((\Add2~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~121_combout\,
	datab => \Add2~110_combout\,
	datac => \shiftr~6_combout\,
	combout => \ShiftLeft0~9_combout\);

-- Location: LCCOMB_X35_Y15_N2
\ShiftLeft0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~24_combout\ = (\Add9~0_combout\ & (\ShiftLeft0~6_combout\)) # (!\Add9~0_combout\ & ((\ShiftLeft0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~6_combout\,
	datac => \ShiftLeft0~9_combout\,
	datad => \Add9~0_combout\,
	combout => \ShiftLeft0~24_combout\);

-- Location: LCCOMB_X35_Y15_N16
\ShiftLeft0~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~48_combout\ = (\Add9~2_combout\ & (\ShiftLeft0~22_combout\)) # (!\Add9~2_combout\ & ((\ShiftLeft0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~22_combout\,
	datac => \Add9~2_combout\,
	datad => \ShiftLeft0~24_combout\,
	combout => \ShiftLeft0~48_combout\);

-- Location: LCCOMB_X34_Y18_N0
\sfract~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~78_combout\ = (\sfract~73_combout\ & (((\Add8~21_combout\)))) # (!\sfract~73_combout\ & ((\Add8~21_combout\ & ((\ShiftLeft0~48_combout\))) # (!\Add8~21_combout\ & (\ShiftRight2~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~24_combout\,
	datab => \sfract~73_combout\,
	datac => \Add8~21_combout\,
	datad => \ShiftLeft0~48_combout\,
	combout => \sfract~78_combout\);

-- Location: LCCOMB_X31_Y16_N24
\ShiftRight2~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~19_combout\ = (\Add2~107_combout\ & !\shiftr~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~107_combout\,
	datad => \shiftr~6_combout\,
	combout => \ShiftRight2~19_combout\);

-- Location: LCCOMB_X31_Y16_N10
\ShiftRight2~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~20_combout\ = (\Add8~4_combout\ & (((\ShiftRight2~19_combout\ & \shiftr~7_combout\)))) # (!\Add8~4_combout\ & (\ShiftRight2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~4_combout\,
	datab => \ShiftRight2~8_combout\,
	datac => \ShiftRight2~19_combout\,
	datad => \shiftr~7_combout\,
	combout => \ShiftRight2~20_combout\);

-- Location: LCCOMB_X35_Y15_N26
\ShiftLeft0~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~49_combout\ = (\Add9~2_combout\ & ((\ShiftLeft0~26_combout\))) # (!\Add9~2_combout\ & (\ShiftLeft0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~21_combout\,
	datac => \Add9~2_combout\,
	datad => \ShiftLeft0~26_combout\,
	combout => \ShiftLeft0~49_combout\);

-- Location: LCCOMB_X34_Y18_N10
\sfract~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~79_combout\ = (\sfract~73_combout\ & ((\sfract~78_combout\ & ((\ShiftLeft0~49_combout\))) # (!\sfract~78_combout\ & (\ShiftRight2~20_combout\)))) # (!\sfract~73_combout\ & (\sfract~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~73_combout\,
	datab => \sfract~78_combout\,
	datac => \ShiftRight2~20_combout\,
	datad => \ShiftLeft0~49_combout\,
	combout => \sfract~79_combout\);

-- Location: LCCOMB_X32_Y19_N24
\sfract~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~51_combout\ = ((\Add9~6_combout\ & \ShiftLeft0~59_combout\)) # (!\Add8~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~21_combout\,
	datab => \Add9~6_combout\,
	datac => \ShiftLeft0~59_combout\,
	combout => \sfract~51_combout\);

-- Location: LCCOMB_X32_Y19_N26
\sfract~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~52_combout\ = (\Add8~21_combout\ & (((\Add9~4_combout\) # (\Add9~6_combout\)) # (!\ShiftLeft0~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~21_combout\,
	datab => \ShiftLeft0~59_combout\,
	datac => \Add9~4_combout\,
	datad => \Add9~6_combout\,
	combout => \sfract~52_combout\);

-- Location: LCCOMB_X32_Y19_N18
\ShiftLeft0~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~56_combout\ = (\Add9~2_combout\ & (\ShiftLeft0~43_combout\)) # (!\Add9~2_combout\ & ((\ShiftLeft0~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~43_combout\,
	datac => \ShiftLeft0~33_combout\,
	datad => \Add9~2_combout\,
	combout => \ShiftLeft0~56_combout\);

-- Location: LCCOMB_X32_Y19_N20
\ShiftLeft0~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~67_combout\ = (\Add9~4_combout\ & (\ShiftLeft0~66_combout\)) # (!\Add9~4_combout\ & ((\ShiftLeft0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~66_combout\,
	datac => \Add9~4_combout\,
	datad => \ShiftLeft0~56_combout\,
	combout => \ShiftLeft0~67_combout\);

-- Location: LCCOMB_X32_Y19_N16
\sfract~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~67_combout\ = (\sfract~51_combout\ & ((\sfract~52_combout\ & ((\ShiftLeft0~67_combout\))) # (!\sfract~52_combout\ & (\sfract~131_combout\)))) # (!\sfract~51_combout\ & (((!\sfract~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~131_combout\,
	datab => \sfract~51_combout\,
	datac => \sfract~52_combout\,
	datad => \ShiftLeft0~67_combout\,
	combout => \sfract~67_combout\);

-- Location: LCCOMB_X32_Y17_N14
\ShiftLeft0~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~64_combout\ = (\Add9~0_combout\) # (\Add9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add9~0_combout\,
	datad => \Add9~2_combout\,
	combout => \ShiftLeft0~64_combout\);

-- Location: LCCOMB_X29_Y17_N6
\ShiftLeft0~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~68_combout\ = (\shiftr~6_combout\ & ((\Add2~119_combout\))) # (!\shiftr~6_combout\ & (\Add2~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~104_combout\,
	datac => \Add2~119_combout\,
	datad => \shiftr~6_combout\,
	combout => \ShiftLeft0~68_combout\);

-- Location: LCCOMB_X32_Y17_N28
\sfract~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~65_combout\ = (\sfract~64_combout\ & (((\ShiftLeft0~64_combout\)))) # (!\sfract~64_combout\ & ((\ShiftLeft0~64_combout\ & ((\ShiftLeft0~68_combout\))) # (!\ShiftLeft0~64_combout\ & (\Add2~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~64_combout\,
	datab => \Add2~108_combout\,
	datac => \ShiftLeft0~64_combout\,
	datad => \ShiftLeft0~68_combout\,
	combout => \sfract~65_combout\);

-- Location: LCCOMB_X32_Y17_N6
\sfract~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~66_combout\ = (\sfract~64_combout\ & ((\sfract~65_combout\ & ((\ShiftLeft0~40_combout\))) # (!\sfract~65_combout\ & (\Add2~105_combout\)))) # (!\sfract~64_combout\ & (\sfract~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~64_combout\,
	datab => \sfract~65_combout\,
	datac => \Add2~105_combout\,
	datad => \ShiftLeft0~40_combout\,
	combout => \sfract~66_combout\);

-- Location: LCCOMB_X32_Y19_N2
\sfract~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~68_combout\ = (\sfract~67_combout\ & (((\sfract~66_combout\) # (!\sfract~48_combout\)))) # (!\sfract~67_combout\ & (\ShiftLeft0~57_combout\ & (\sfract~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~57_combout\,
	datab => \sfract~67_combout\,
	datac => \sfract~48_combout\,
	datad => \sfract~66_combout\,
	combout => \sfract~68_combout\);

-- Location: LCCOMB_X30_Y16_N28
\ShiftLeft0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~3_combout\ = (\shiftr~6_combout\ & ((\Add2~112_combout\))) # (!\shiftr~6_combout\ & (\Add2~115_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~115_combout\,
	datac => \shiftr~6_combout\,
	datad => \Add2~112_combout\,
	combout => \ShiftLeft0~3_combout\);

-- Location: LCCOMB_X34_Y16_N8
\ShiftLeft0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~2_combout\ = (\shiftr~6_combout\ & ((\Add2~113_combout\))) # (!\shiftr~6_combout\ & (\Add2~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~114_combout\,
	datab => \Add2~113_combout\,
	datac => \shiftr~6_combout\,
	combout => \ShiftLeft0~2_combout\);

-- Location: LCCOMB_X35_Y15_N8
\ShiftLeft0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~4_combout\ = (\Add9~0_combout\ & ((\ShiftLeft0~2_combout\))) # (!\Add9~0_combout\ & (\ShiftLeft0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~0_combout\,
	datac => \ShiftLeft0~3_combout\,
	datad => \ShiftLeft0~2_combout\,
	combout => \ShiftLeft0~4_combout\);

-- Location: LCCOMB_X34_Y16_N26
\ShiftLeft0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~16_combout\ = (\shiftr~6_combout\ & ((\Add2~122_combout\))) # (!\shiftr~6_combout\ & (\Add2~111_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftr~6_combout\,
	datac => \Add2~111_combout\,
	datad => \Add2~122_combout\,
	combout => \ShiftLeft0~16_combout\);

-- Location: LCCOMB_X35_Y15_N24
\ShiftLeft0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~17_combout\ = (\Add9~0_combout\ & (\ShiftLeft0~15_combout\)) # (!\Add9~0_combout\ & ((\ShiftLeft0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~0_combout\,
	datab => \ShiftLeft0~15_combout\,
	datad => \ShiftLeft0~16_combout\,
	combout => \ShiftLeft0~17_combout\);

-- Location: LCCOMB_X35_Y15_N28
\ShiftLeft0~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~61_combout\ = (\Add9~2_combout\ & ((\ShiftLeft0~17_combout\))) # (!\Add9~2_combout\ & (\ShiftLeft0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~2_combout\,
	datac => \ShiftLeft0~4_combout\,
	datad => \ShiftLeft0~17_combout\,
	combout => \ShiftLeft0~61_combout\);

-- Location: LCCOMB_X32_Y17_N8
\ShiftLeft0~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~65_combout\ = (\Add9~4_combout\ & (\ShiftLeft0~18_combout\ & (!\ShiftLeft0~64_combout\))) # (!\Add9~4_combout\ & (((\ShiftLeft0~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~18_combout\,
	datab => \ShiftLeft0~64_combout\,
	datac => \Add9~4_combout\,
	datad => \ShiftLeft0~61_combout\,
	combout => \ShiftLeft0~65_combout\);

-- Location: LCCOMB_X29_Y23_N20
\Add8~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add8~24_combout\ = (\shiftr~5_combout\ & (\Add5~12_combout\)) # (!\shiftr~5_combout\ & ((\shiftr~2_combout\ & ((\Add8~15_combout\))) # (!\shiftr~2_combout\ & (\Add5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftr~5_combout\,
	datab => \Add5~12_combout\,
	datac => \shiftr~2_combout\,
	datad => \Add8~15_combout\,
	combout => \Add8~24_combout\);

-- Location: LCCOMB_X31_Y18_N2
\ShiftRight2~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~39_combout\ = (!\Add8~25_combout\ & (!\Add8~23_combout\ & (!\Add8~22_combout\ & !\Add8~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~25_combout\,
	datab => \Add8~23_combout\,
	datac => \Add8~22_combout\,
	datad => \Add8~24_combout\,
	combout => \ShiftRight2~39_combout\);

-- Location: LCCOMB_X32_Y18_N20
\sfract~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~50_combout\ = (\Add8~21_combout\) # ((\Add8~10_combout\) # (!\ShiftRight2~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~21_combout\,
	datac => \Add8~10_combout\,
	datad => \ShiftRight2~39_combout\,
	combout => \sfract~50_combout\);

-- Location: LCCOMB_X35_Y17_N22
\sfract~132\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~132_combout\ = (\ShiftRight2~1_combout\ & (!\Add8~7_combout\ & (!\Add8~4_combout\ & !\sfract~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~1_combout\,
	datab => \Add8~7_combout\,
	datac => \Add8~4_combout\,
	datad => \sfract~50_combout\,
	combout => \sfract~132_combout\);

-- Location: LCCOMB_X32_Y19_N4
\sfract~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~71_combout\ = (\sfract~52_combout\ & (\sfract~51_combout\ & (\ShiftLeft0~65_combout\))) # (!\sfract~52_combout\ & (((\sfract~132_combout\)) # (!\sfract~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~52_combout\,
	datab => \sfract~51_combout\,
	datac => \ShiftLeft0~65_combout\,
	datad => \sfract~132_combout\,
	combout => \sfract~71_combout\);

-- Location: LCCOMB_X35_Y15_N30
\ShiftLeft0~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~62_combout\ = (\Add9~2_combout\ & (\ShiftLeft0~7_combout\)) # (!\Add9~2_combout\ & ((\ShiftLeft0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~7_combout\,
	datab => \ShiftLeft0~11_combout\,
	datac => \Add9~2_combout\,
	combout => \ShiftLeft0~62_combout\);

-- Location: LCCOMB_X29_Y20_N28
\ShiftLeft0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~12_combout\ = (\shiftr~6_combout\ & (\Add2~100_combout\)) # (!\shiftr~6_combout\ & ((\Add2~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~100_combout\,
	datac => \shiftr~6_combout\,
	datad => \Add2~103_combout\,
	combout => \ShiftLeft0~12_combout\);

-- Location: LCCOMB_X29_Y17_N20
\ShiftLeft0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~13_combout\ = (\shiftr~6_combout\ & (\Add2~86_combout\)) # (!\shiftr~6_combout\ & ((\Add2~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~86_combout\,
	datac => \Add2~119_combout\,
	datad => \shiftr~6_combout\,
	combout => \ShiftLeft0~13_combout\);

-- Location: LCCOMB_X31_Y19_N24
\ShiftLeft0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~14_combout\ = (\Add9~0_combout\ & (\ShiftLeft0~12_combout\)) # (!\Add9~0_combout\ & ((\ShiftLeft0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~12_combout\,
	datac => \ShiftLeft0~13_combout\,
	datad => \Add9~0_combout\,
	combout => \ShiftLeft0~14_combout\);

-- Location: LCCOMB_X32_Y17_N30
\ShiftLeft0~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~47_combout\ = (\shiftr~6_combout\ & ((\Add2~104_combout\))) # (!\shiftr~6_combout\ & (\Add2~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftr~6_combout\,
	datac => \Add2~105_combout\,
	datad => \Add2~104_combout\,
	combout => \ShiftLeft0~47_combout\);

-- Location: LCCOMB_X32_Y17_N24
\sfract~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~69_combout\ = (\sfract~64_combout\ & (\ShiftLeft0~64_combout\)) # (!\sfract~64_combout\ & ((\ShiftLeft0~64_combout\ & (\ShiftLeft0~47_combout\)) # (!\ShiftLeft0~64_combout\ & ((\Add2~109_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~64_combout\,
	datab => \ShiftLeft0~64_combout\,
	datac => \ShiftLeft0~47_combout\,
	datad => \Add2~109_combout\,
	combout => \sfract~69_combout\);

-- Location: LCCOMB_X32_Y17_N2
\sfract~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~70_combout\ = (\sfract~64_combout\ & ((\sfract~69_combout\ & (\ShiftLeft0~14_combout\)) # (!\sfract~69_combout\ & ((\Add2~108_combout\))))) # (!\sfract~64_combout\ & (((\sfract~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~64_combout\,
	datab => \ShiftLeft0~14_combout\,
	datac => \Add2~108_combout\,
	datad => \sfract~69_combout\,
	combout => \sfract~70_combout\);

-- Location: LCCOMB_X32_Y19_N14
\sfract~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~72_combout\ = (\sfract~48_combout\ & ((\sfract~71_combout\ & ((\sfract~70_combout\))) # (!\sfract~71_combout\ & (\ShiftLeft0~62_combout\)))) # (!\sfract~48_combout\ & (\sfract~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~48_combout\,
	datab => \sfract~71_combout\,
	datac => \ShiftLeft0~62_combout\,
	datad => \sfract~70_combout\,
	combout => \sfract~72_combout\);

-- Location: LCCOMB_X35_Y19_N28
\sfract~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~76_combout\ = (\Add8~21_combout\ & ((\sfract~73_combout\) # ((\ShiftLeft0~37_combout\)))) # (!\Add8~21_combout\ & (!\sfract~73_combout\ & ((\ShiftRight2~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~21_combout\,
	datab => \sfract~73_combout\,
	datac => \ShiftLeft0~37_combout\,
	datad => \ShiftRight2~55_combout\,
	combout => \sfract~76_combout\);

-- Location: LCCOMB_X35_Y19_N22
\sfract~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~77_combout\ = (\sfract~73_combout\ & ((\sfract~76_combout\ & (\ShiftLeft0~45_combout\)) # (!\sfract~76_combout\ & ((\ShiftRight2~18_combout\))))) # (!\sfract~73_combout\ & (((\sfract~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~45_combout\,
	datab => \sfract~73_combout\,
	datac => \ShiftRight2~18_combout\,
	datad => \sfract~76_combout\,
	combout => \sfract~77_combout\);

-- Location: LCCOMB_X32_Y20_N26
\Sumfp[-17]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Sumfp[-17]~8_combout\ = (((!\sfract~77_combout\) # (!\sfract~72_combout\)) # (!\sfract~68_combout\)) # (!\sfract~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~75_combout\,
	datab => \sfract~68_combout\,
	datac => \sfract~72_combout\,
	datad => \sfract~77_combout\,
	combout => \Sumfp[-17]~8_combout\);

-- Location: LCCOMB_X29_Y16_N30
\ShiftRight2~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~26_combout\ = (\shiftr~6_combout\ & (\Add2~121_combout\)) # (!\shiftr~6_combout\ & ((\Add2~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~121_combout\,
	datab => \shiftr~6_combout\,
	datac => \Add2~120_combout\,
	combout => \ShiftRight2~26_combout\);

-- Location: LCCOMB_X32_Y16_N4
\ShiftRight2~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~21_combout\ = (\shiftr~6_combout\ & (\Add2~101_combout\)) # (!\shiftr~6_combout\ & ((\Add2~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~101_combout\,
	datab => \shiftr~6_combout\,
	datac => \Add2~110_combout\,
	combout => \ShiftRight2~21_combout\);

-- Location: LCCOMB_X31_Y16_N12
\ShiftRight2~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~42_combout\ = (\shiftr~7_combout\ & (\ShiftRight2~26_combout\)) # (!\shiftr~7_combout\ & ((\ShiftRight2~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftr~7_combout\,
	datab => \ShiftRight2~26_combout\,
	datac => \ShiftRight2~21_combout\,
	combout => \ShiftRight2~42_combout\);

-- Location: LCCOMB_X29_Y19_N6
\Add2~117\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~117_combout\ = (\Add3~22_combout\ & ((\Add2~64_combout\) # (\a[31]~input_o\ $ (\b[31]~input_o\)))) # (!\Add3~22_combout\ & (\Add2~64_combout\ & (\a[31]~input_o\ $ (!\b[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~22_combout\,
	datab => \a[31]~input_o\,
	datac => \b[31]~input_o\,
	datad => \Add2~64_combout\,
	combout => \Add2~117_combout\);

-- Location: LCCOMB_X30_Y16_N14
\ShiftRight2~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~25_combout\ = (\shiftr~6_combout\ & (\Add2~118_combout\)) # (!\shiftr~6_combout\ & ((\Add2~117_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~118_combout\,
	datac => \shiftr~6_combout\,
	datad => \Add2~117_combout\,
	combout => \ShiftRight2~25_combout\);

-- Location: LCCOMB_X34_Y16_N4
\ShiftRight2~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~43_combout\ = (\shiftr~7_combout\ & (\ShiftRight2~29_combout\)) # (!\shiftr~7_combout\ & ((\ShiftRight2~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~29_combout\,
	datac => \shiftr~7_combout\,
	datad => \ShiftRight2~25_combout\,
	combout => \ShiftRight2~43_combout\);

-- Location: LCCOMB_X35_Y16_N6
\ShiftRight2~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~44_combout\ = (\Add8~4_combout\ & (\ShiftRight2~42_combout\)) # (!\Add8~4_combout\ & ((\ShiftRight2~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~4_combout\,
	datab => \ShiftRight2~42_combout\,
	datac => \ShiftRight2~43_combout\,
	combout => \ShiftRight2~44_combout\);

-- Location: LCCOMB_X32_Y18_N30
\sfract~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~58_combout\ = (\Add8~21_combout\) # ((\ShiftRight2~39_combout\ & (!\Add8~10_combout\ & \Add8~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~39_combout\,
	datab => \Add8~10_combout\,
	datac => \Add8~7_combout\,
	datad => \Add8~21_combout\,
	combout => \sfract~58_combout\);

-- Location: LCCOMB_X34_Y20_N26
\ShiftRight2~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~46_combout\ = (\Add8~4_combout\) # (\Add8~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~4_combout\,
	datac => \Add8~7_combout\,
	combout => \ShiftRight2~46_combout\);

-- Location: LCCOMB_X32_Y18_N8
\sfract~129\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~129_combout\ = (\ShiftRight2~39_combout\ & (!\Add8~21_combout\ & (\ShiftRight2~1_combout\ & !\ShiftRight2~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~39_combout\,
	datab => \Add8~21_combout\,
	datac => \ShiftRight2~1_combout\,
	datad => \ShiftRight2~46_combout\,
	combout => \sfract~129_combout\);

-- Location: LCCOMB_X35_Y17_N26
\sfract~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~60_combout\ = (\sfract~59_combout\ & ((\sfract~58_combout\ & (\ShiftLeft0~65_combout\)) # (!\sfract~58_combout\ & ((\sfract~129_combout\))))) # (!\sfract~59_combout\ & (((!\sfract~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~59_combout\,
	datab => \ShiftLeft0~65_combout\,
	datac => \sfract~58_combout\,
	datad => \sfract~129_combout\,
	combout => \sfract~60_combout\);

-- Location: LCCOMB_X32_Y16_N6
\ShiftRight2~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~22_combout\ = (\shiftr~6_combout\ & (\Add2~100_combout\)) # (!\shiftr~6_combout\ & ((\Add2~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~100_combout\,
	datab => \Add2~102_combout\,
	datac => \shiftr~6_combout\,
	combout => \ShiftRight2~22_combout\);

-- Location: LCCOMB_X31_Y16_N18
\ShiftRight2~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~40_combout\ = (\shiftr~7_combout\ & ((\ShiftRight2~22_combout\))) # (!\shiftr~7_combout\ & (\ShiftRight2~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftr~7_combout\,
	datab => \ShiftRight2~9_combout\,
	datad => \ShiftRight2~22_combout\,
	combout => \ShiftRight2~40_combout\);

-- Location: LCCOMB_X31_Y16_N6
\ShiftRight2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~4_combout\ = (\shiftr~7_combout\ & (\ShiftRight2~2_combout\)) # (!\shiftr~7_combout\ & ((\ShiftRight2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftr~7_combout\,
	datac => \ShiftRight2~2_combout\,
	datad => \ShiftRight2~3_combout\,
	combout => \ShiftRight2~4_combout\);

-- Location: LCCOMB_X35_Y16_N2
\ShiftRight2~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~41_combout\ = (\Add8~4_combout\ & ((\ShiftRight2~4_combout\))) # (!\Add8~4_combout\ & (\ShiftRight2~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight2~40_combout\,
	datac => \Add8~4_combout\,
	datad => \ShiftRight2~4_combout\,
	combout => \ShiftRight2~41_combout\);

-- Location: LCCOMB_X35_Y17_N12
\sfract~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~61_combout\ = (\sfract~50_combout\ & (((\sfract~60_combout\)))) # (!\sfract~50_combout\ & ((\sfract~60_combout\ & (\ShiftRight2~44_combout\)) # (!\sfract~60_combout\ & ((\ShiftRight2~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~50_combout\,
	datab => \ShiftRight2~44_combout\,
	datac => \sfract~60_combout\,
	datad => \ShiftRight2~41_combout\,
	combout => \sfract~61_combout\);

-- Location: LCCOMB_X31_Y19_N6
\ShiftLeft0~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~60_combout\ = (!\Add9~0_combout\ & (\ShiftLeft0~44_combout\ & (!\Add9~4_combout\ & !\Add9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~0_combout\,
	datab => \ShiftLeft0~44_combout\,
	datac => \Add9~4_combout\,
	datad => \Add9~2_combout\,
	combout => \ShiftLeft0~60_combout\);

-- Location: LCCOMB_X32_Y19_N28
\sfract~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~53_combout\ = (\sfract~52_combout\ & (((\ShiftLeft0~60_combout\ & \sfract~51_combout\)))) # (!\sfract~52_combout\ & ((\sfract~127_combout\) # ((!\sfract~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~127_combout\,
	datab => \ShiftLeft0~60_combout\,
	datac => \sfract~52_combout\,
	datad => \sfract~51_combout\,
	combout => \sfract~53_combout\);

-- Location: LCCOMB_X32_Y19_N22
\sfract~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~54_combout\ = (\sfract~53_combout\ & ((\ShiftLeft0~57_combout\) # ((!\sfract~48_combout\)))) # (!\sfract~53_combout\ & (((\sfract~48_combout\ & \ShiftLeft0~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~57_combout\,
	datab => \sfract~53_combout\,
	datac => \sfract~48_combout\,
	datad => \ShiftLeft0~56_combout\,
	combout => \sfract~54_combout\);

-- Location: LCCOMB_X35_Y17_N18
\sfract~130\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~130_combout\ = (!\ShiftRight2~46_combout\ & (\ShiftRight2~39_combout\ & (!\Add8~21_combout\ & \ShiftRight2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~46_combout\,
	datab => \ShiftRight2~39_combout\,
	datac => \Add8~21_combout\,
	datad => \ShiftRight2~14_combout\,
	combout => \sfract~130_combout\);

-- Location: LCCOMB_X35_Y17_N14
\sfract~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~62_combout\ = (\sfract~59_combout\ & ((\sfract~58_combout\ & (\ShiftLeft0~67_combout\)) # (!\sfract~58_combout\ & ((\sfract~130_combout\))))) # (!\sfract~59_combout\ & (!\sfract~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~59_combout\,
	datab => \sfract~58_combout\,
	datac => \ShiftLeft0~67_combout\,
	datad => \sfract~130_combout\,
	combout => \sfract~62_combout\);

-- Location: LCCOMB_X35_Y16_N0
\ShiftRight2~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~38_combout\ = (\Add8~4_combout\ & ((\ShiftRight2~17_combout\))) # (!\Add8~4_combout\ & (\ShiftRight2~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~37_combout\,
	datab => \ShiftRight2~17_combout\,
	datac => \Add8~4_combout\,
	combout => \ShiftRight2~38_combout\);

-- Location: LCCOMB_X35_Y17_N8
\sfract~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~63_combout\ = (\sfract~50_combout\ & (((\sfract~62_combout\)))) # (!\sfract~50_combout\ & ((\sfract~62_combout\ & (\ShiftRight2~53_combout\)) # (!\sfract~62_combout\ & ((\ShiftRight2~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~53_combout\,
	datab => \sfract~50_combout\,
	datac => \sfract~62_combout\,
	datad => \ShiftRight2~38_combout\,
	combout => \sfract~63_combout\);

-- Location: LCCOMB_X32_Y19_N6
\Sumfp[-17]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Sumfp[-17]~7_combout\ = (((!\sfract~63_combout\) # (!\sfract~54_combout\)) # (!\sfract~61_combout\)) # (!\sfract~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~57_combout\,
	datab => \sfract~61_combout\,
	datac => \sfract~54_combout\,
	datad => \sfract~63_combout\,
	combout => \Sumfp[-17]~7_combout\);

-- Location: LCCOMB_X32_Y20_N28
\Sumfp[-17]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Sumfp[-17]~9_combout\ = (((\Sumfp[-17]~8_combout\) # (\Sumfp[-17]~7_combout\)) # (!\sfract~79_combout\)) # (!\sfract~81_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~81_combout\,
	datab => \sfract~79_combout\,
	datac => \Sumfp[-17]~8_combout\,
	datad => \Sumfp[-17]~7_combout\,
	combout => \Sumfp[-17]~9_combout\);

-- Location: LCCOMB_X32_Y20_N30
\Sumfp[-17]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Sumfp[-17]~10_combout\ = (((\Sumfp[-17]~9_combout\) # (!\sfract~134_combout\)) # (!\sfract~133_combout\)) # (!\sfract~82_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~82_combout\,
	datab => \sfract~133_combout\,
	datac => \sfract~134_combout\,
	datad => \Sumfp[-17]~9_combout\,
	combout => \Sumfp[-17]~10_combout\);

-- Location: LCCOMB_X31_Y18_N28
\sfract~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~89_combout\ = (!\Add9~6_combout\ & (\Add8~21_combout\ & (\ShiftLeft0~59_combout\ & \Add9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~6_combout\,
	datab => \Add8~21_combout\,
	datac => \ShiftLeft0~59_combout\,
	datad => \Add9~4_combout\,
	combout => \sfract~89_combout\);

-- Location: LCCOMB_X31_Y16_N20
\ShiftRight2~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~23_combout\ = (\shiftr~7_combout\ & ((\ShiftRight2~21_combout\))) # (!\shiftr~7_combout\ & (\ShiftRight2~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~22_combout\,
	datac => \ShiftRight2~21_combout\,
	datad => \shiftr~7_combout\,
	combout => \ShiftRight2~23_combout\);

-- Location: LCCOMB_X31_Y16_N0
\ShiftRight2~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~27_combout\ = (\shiftr~7_combout\ & ((\ShiftRight2~25_combout\))) # (!\shiftr~7_combout\ & (\ShiftRight2~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftr~7_combout\,
	datab => \ShiftRight2~26_combout\,
	datad => \ShiftRight2~25_combout\,
	combout => \ShiftRight2~27_combout\);

-- Location: LCCOMB_X31_Y16_N30
\ShiftRight2~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~64_combout\ = (\Add8~4_combout\ & (\ShiftRight2~23_combout\)) # (!\Add8~4_combout\ & ((\ShiftRight2~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~4_combout\,
	datab => \ShiftRight2~23_combout\,
	datad => \ShiftRight2~27_combout\,
	combout => \ShiftRight2~64_combout\);

-- Location: LCCOMB_X31_Y20_N24
\sfract~99\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~99_combout\ = (\sfract~98_combout\ & (((\ShiftRight2~64_combout\) # (\sfract~50_combout\)))) # (!\sfract~98_combout\ & (\ShiftRight2~11_combout\ & ((!\sfract~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~98_combout\,
	datab => \ShiftRight2~11_combout\,
	datac => \ShiftRight2~64_combout\,
	datad => \sfract~50_combout\,
	combout => \sfract~99_combout\);

-- Location: LCCOMB_X30_Y18_N18
\sfract~100\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~100_combout\ = (\sfract~89_combout\ & (!\Add9~2_combout\ & (\ShiftLeft0~26_combout\))) # (!\sfract~89_combout\ & (((\sfract~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~2_combout\,
	datab => \sfract~89_combout\,
	datac => \ShiftLeft0~26_combout\,
	datad => \sfract~99_combout\,
	combout => \sfract~100_combout\);

-- Location: LCCOMB_X31_Y19_N22
\ShiftLeft0~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~71_combout\ = (\Add9~0_combout\ & (!\shiftr~6_combout\ & (\ufract~2_combout\))) # (!\Add9~0_combout\ & (((\ShiftLeft0~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftr~6_combout\,
	datab => \ufract~2_combout\,
	datac => \ShiftLeft0~41_combout\,
	datad => \Add9~0_combout\,
	combout => \ShiftLeft0~71_combout\);

-- Location: LCCOMB_X31_Y19_N0
\ShiftLeft0~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~51_combout\ = (\Add9~0_combout\ & ((\ShiftLeft0~42_combout\))) # (!\Add9~0_combout\ & (\ShiftLeft0~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~0_combout\,
	datab => \ShiftLeft0~31_combout\,
	datac => \ShiftLeft0~42_combout\,
	combout => \ShiftLeft0~51_combout\);

-- Location: LCCOMB_X31_Y19_N12
\ShiftLeft0~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~70_combout\ = (\Add9~2_combout\ & (\ShiftLeft0~71_combout\)) # (!\Add9~2_combout\ & ((\ShiftLeft0~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~2_combout\,
	datac => \ShiftLeft0~71_combout\,
	datad => \ShiftLeft0~51_combout\,
	combout => \ShiftLeft0~70_combout\);

-- Location: LCCOMB_X31_Y20_N10
\sfract~103\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~103_combout\ = (\Add8~21_combout\ & ((\ShiftLeft0~70_combout\))) # (!\Add8~21_combout\ & (\sfract~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~102_combout\,
	datac => \ShiftLeft0~70_combout\,
	datad => \Add8~21_combout\,
	combout => \sfract~103_combout\);

-- Location: LCCOMB_X34_Y20_N16
\sfract~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~46_combout\ = (\shiftr~7_combout\ & !\Add8~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftr~7_combout\,
	datad => \Add8~4_combout\,
	combout => \sfract~46_combout\);

-- Location: LCCOMB_X31_Y20_N0
\ShiftRight2~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~45_combout\ = (!\Add8~21_combout\ & \ShiftRight2~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~21_combout\,
	datad => \ShiftRight2~39_combout\,
	combout => \ShiftRight2~45_combout\);

-- Location: LCCOMB_X31_Y20_N20
\sfract~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~86_combout\ = (\ShiftRight2~13_combout\ & (!\Add8~7_combout\ & (\sfract~46_combout\ & \ShiftRight2~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~13_combout\,
	datab => \Add8~7_combout\,
	datac => \sfract~46_combout\,
	datad => \ShiftRight2~45_combout\,
	combout => \sfract~86_combout\);

-- Location: LCCOMB_X31_Y20_N26
\sfract~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~59_combout\ = (\sfract~50_combout\ & (((\ShiftLeft0~59_combout\ & !\Add9~6_combout\)) # (!\sfract~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~59_combout\,
	datab => \sfract~50_combout\,
	datac => \sfract~58_combout\,
	datad => \Add9~6_combout\,
	combout => \sfract~59_combout\);

-- Location: LCCOMB_X31_Y20_N6
\sfract~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~87_combout\ = (\sfract~58_combout\ & (\ShiftLeft0~53_combout\ & ((\sfract~59_combout\)))) # (!\sfract~58_combout\ & (((\sfract~86_combout\) # (!\sfract~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~53_combout\,
	datab => \sfract~86_combout\,
	datac => \sfract~58_combout\,
	datad => \sfract~59_combout\,
	combout => \sfract~87_combout\);

-- Location: LCCOMB_X34_Y20_N2
\ShiftRight2~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~32_combout\ = (\shiftr~7_combout\ & (\ShiftRight2~16_combout\)) # (!\shiftr~7_combout\ & ((\ShiftRight2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftr~7_combout\,
	datac => \ShiftRight2~16_combout\,
	datad => \ShiftRight2~12_combout\,
	combout => \ShiftRight2~32_combout\);

-- Location: LCCOMB_X34_Y20_N28
\ShiftRight2~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~34_combout\ = (\shiftr~7_combout\ & (\ShiftRight2~33_combout\)) # (!\shiftr~7_combout\ & ((\ShiftRight2~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~33_combout\,
	datab => \ShiftRight2~15_combout\,
	datad => \shiftr~7_combout\,
	combout => \ShiftRight2~34_combout\);

-- Location: LCCOMB_X34_Y20_N30
\ShiftRight2~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~35_combout\ = (\Add8~4_combout\ & (\ShiftRight2~32_combout\)) # (!\Add8~4_combout\ & ((\ShiftRight2~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~4_combout\,
	datab => \ShiftRight2~32_combout\,
	datad => \ShiftRight2~34_combout\,
	combout => \ShiftRight2~35_combout\);

-- Location: LCCOMB_X34_Y17_N14
\sfract~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~88_combout\ = (\sfract~50_combout\ & (((\sfract~87_combout\)))) # (!\sfract~50_combout\ & ((\sfract~87_combout\ & (\ShiftRight2~63_combout\)) # (!\sfract~87_combout\ & ((\ShiftRight2~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~63_combout\,
	datab => \sfract~50_combout\,
	datac => \sfract~87_combout\,
	datad => \ShiftRight2~35_combout\,
	combout => \sfract~88_combout\);

-- Location: LCCOMB_X30_Y18_N16
\sfract~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~90_combout\ = (\sfract~89_combout\ & (!\Add9~2_combout\ & (\ShiftLeft0~71_combout\))) # (!\sfract~89_combout\ & (((\sfract~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~2_combout\,
	datab => \ShiftLeft0~71_combout\,
	datac => \sfract~88_combout\,
	datad => \sfract~89_combout\,
	combout => \sfract~90_combout\);

-- Location: LCCOMB_X31_Y20_N16
\sfract~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~91_combout\ = (\Add8~21_combout\ & (\ShiftLeft0~59_combout\ & ((!\Add9~6_combout\)))) # (!\Add8~21_combout\ & (((!\sfract~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~59_combout\,
	datab => \Add8~21_combout\,
	datac => \sfract~50_combout\,
	datad => \Add9~6_combout\,
	combout => \sfract~91_combout\);

-- Location: LCCOMB_X32_Y21_N6
\Sumfp[-17]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Sumfp[-17]~11_combout\ = ((!\sfract~91_combout\) # (!\sfract~90_combout\)) # (!\sfract~85_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~85_combout\,
	datab => \sfract~90_combout\,
	datac => \sfract~91_combout\,
	combout => \Sumfp[-17]~11_combout\);

-- Location: LCCOMB_X32_Y21_N0
\Sumfp[-17]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Sumfp[-17]~12_combout\ = (((\Sumfp[-17]~11_combout\) # (!\sfract~103_combout\)) # (!\sfract~100_combout\)) # (!\sfract~95_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~95_combout\,
	datab => \sfract~100_combout\,
	datac => \sfract~103_combout\,
	datad => \Sumfp[-17]~11_combout\,
	combout => \Sumfp[-17]~12_combout\);

-- Location: LCCOMB_X35_Y19_N20
\Sumfp[-17]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Sumfp[-17]~13_combout\ = (\Sumfp[-17]~6_combout\) # (((\Sumfp[-17]~10_combout\) # (\Sumfp[-17]~12_combout\)) # (!\sfract~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sumfp[-17]~6_combout\,
	datab => \sfract~106_combout\,
	datac => \Sumfp[-17]~10_combout\,
	datad => \Sumfp[-17]~12_combout\,
	combout => \Sumfp[-17]~13_combout\);

-- Location: LCCOMB_X35_Y19_N6
\Sumfp[-17]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Sumfp[-17]~14_combout\ = (((\Sumfp[-17]~5_combout\) # (\Sumfp[-17]~13_combout\)) # (!\sfract~111_combout\)) # (!\Result~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result~25_combout\,
	datab => \sfract~111_combout\,
	datac => \Sumfp[-17]~5_combout\,
	datad => \Sumfp[-17]~13_combout\,
	combout => \Sumfp[-17]~14_combout\);

-- Location: LCCOMB_X32_Y21_N10
\Add12~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~26_combout\ = (\Result~25_combout\ & (\sfract~111_combout\ $ (VCC))) # (!\Result~25_combout\ & (\sfract~111_combout\ & VCC))
-- \Add12~27\ = CARRY((\Result~25_combout\ & \sfract~111_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result~25_combout\,
	datab => \sfract~111_combout\,
	datad => VCC,
	combout => \Add12~26_combout\,
	cout => \Add12~27\);

-- Location: LCCOMB_X29_Y22_N2
\Result~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Result~6_combout\ = (\b[25]~input_o\ & (\b[26]~input_o\ & (\b[23]~input_o\ & \b[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[25]~input_o\,
	datab => \b[26]~input_o\,
	datac => \b[23]~input_o\,
	datad => \b[24]~input_o\,
	combout => \Result~6_combout\);

-- Location: LCCOMB_X28_Y20_N2
\Result~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Result~7_combout\ = (\b[29]~input_o\ & (\b[27]~input_o\ & (\b[28]~input_o\ & \b[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[29]~input_o\,
	datab => \b[27]~input_o\,
	datac => \b[28]~input_o\,
	datad => \b[30]~input_o\,
	combout => \Result~7_combout\);

-- Location: LCCOMB_X29_Y22_N8
\Result~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Result~2_combout\ = (\a[25]~input_o\ & (\a[24]~input_o\ & (\a[26]~input_o\ & \a[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[25]~input_o\,
	datab => \a[24]~input_o\,
	datac => \a[26]~input_o\,
	datad => \a[23]~input_o\,
	combout => \Result~2_combout\);

-- Location: LCCOMB_X25_Y23_N0
\orx~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~12_combout\ = (!\a[12]~input_o\ & (!\a[9]~input_o\ & (!\a[11]~input_o\ & !\a[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[12]~input_o\,
	datab => \a[9]~input_o\,
	datac => \a[11]~input_o\,
	datad => \a[10]~input_o\,
	combout => \orx~12_combout\);

-- Location: LCCOMB_X27_Y24_N0
\orx~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~10_combout\ = (!\a[0]~input_o\ & (!\a[1]~input_o\ & (!\a[2]~input_o\ & !\a[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \a[1]~input_o\,
	datac => \a[2]~input_o\,
	datad => \a[3]~input_o\,
	combout => \orx~10_combout\);

-- Location: LCCOMB_X27_Y24_N18
\orx~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~13_combout\ = (\orx~11_combout\ & (\orx~12_combout\ & \orx~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \orx~11_combout\,
	datab => \orx~12_combout\,
	datad => \orx~10_combout\,
	combout => \orx~13_combout\);

-- Location: LCCOMB_X27_Y24_N28
\Result~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Result~8_combout\ = (!\a[21]~input_o\ & (!\a[22]~input_o\ & !\a[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[21]~input_o\,
	datab => \a[22]~input_o\,
	datac => \a[4]~input_o\,
	combout => \Result~8_combout\);

-- Location: LCCOMB_X28_Y23_N8
\orx~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~8_combout\ = (!\a[15]~input_o\ & (!\a[16]~input_o\ & (!\a[17]~input_o\ & !\a[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[15]~input_o\,
	datab => \a[16]~input_o\,
	datac => \a[17]~input_o\,
	datad => \a[14]~input_o\,
	combout => \orx~8_combout\);

-- Location: LCCOMB_X28_Y23_N10
\orx~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~9_combout\ = (!\a[18]~input_o\ & (!\a[19]~input_o\ & (\orx~8_combout\ & !\a[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[18]~input_o\,
	datab => \a[19]~input_o\,
	datac => \orx~8_combout\,
	datad => \a[20]~input_o\,
	combout => \orx~9_combout\);

-- Location: LCCOMB_X28_Y23_N20
\Result~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Result~9_combout\ = (!\a[13]~input_o\ & (\orx~13_combout\ & (\Result~8_combout\ & \orx~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[13]~input_o\,
	datab => \orx~13_combout\,
	datac => \Result~8_combout\,
	datad => \orx~9_combout\,
	combout => \Result~9_combout\);

-- Location: LCCOMB_X23_Y23_N0
\orx~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~3_combout\ = (!\b[6]~input_o\ & (!\b[8]~input_o\ & (!\b[7]~input_o\ & !\b[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[6]~input_o\,
	datab => \b[8]~input_o\,
	datac => \b[7]~input_o\,
	datad => \b[5]~input_o\,
	combout => \orx~3_combout\);

-- Location: IOIBUF_X21_Y0_N1
\b[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(12),
	o => \b[12]~input_o\);

-- Location: IOIBUF_X23_Y0_N1
\b[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(11),
	o => \b[11]~input_o\);

-- Location: LCCOMB_X23_Y23_N26
\orx~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~4_combout\ = (!\b[10]~input_o\ & (!\b[9]~input_o\ & (!\b[12]~input_o\ & !\b[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[10]~input_o\,
	datab => \b[9]~input_o\,
	datac => \b[12]~input_o\,
	datad => \b[11]~input_o\,
	combout => \orx~4_combout\);

-- Location: LCCOMB_X23_Y23_N12
\orx~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \orx~5_combout\ = (\orx~2_combout\ & (\orx~3_combout\ & \orx~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \orx~2_combout\,
	datab => \orx~3_combout\,
	datac => \orx~4_combout\,
	combout => \orx~5_combout\);

-- Location: LCCOMB_X26_Y20_N16
\Result~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Result~4_combout\ = (!\b[14]~input_o\ & (!\b[21]~input_o\ & (!\b[13]~input_o\ & !\b[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[14]~input_o\,
	datab => \b[21]~input_o\,
	datac => \b[13]~input_o\,
	datad => \b[4]~input_o\,
	combout => \Result~4_combout\);

-- Location: LCCOMB_X26_Y20_N10
\Result~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Result~5_combout\ = (\orx~7_combout\ & (\orx~5_combout\ & (!\b[22]~input_o\ & \Result~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \orx~7_combout\,
	datab => \orx~5_combout\,
	datac => \b[22]~input_o\,
	datad => \Result~4_combout\,
	combout => \Result~5_combout\);

-- Location: LCCOMB_X29_Y22_N28
\Classfp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Classfp~0_combout\ = (\b[31]~input_o\ & (\Result~7_combout\ & (\Result~5_combout\ & \Result~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[31]~input_o\,
	datab => \Result~7_combout\,
	datac => \Result~5_combout\,
	datad => \Result~6_combout\,
	combout => \Classfp~0_combout\);

-- Location: LCCOMB_X29_Y22_N30
\add~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add~0_combout\ = (\a[22]~input_o\) # (((!\a[31]~input_o\ & \Classfp~0_combout\)) # (!\Result~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \a[22]~input_o\,
	datac => \Result~9_combout\,
	datad => \Classfp~0_combout\,
	combout => \add~0_combout\);

-- Location: LCCOMB_X28_Y20_N8
\Result~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Result~3_combout\ = (\a[30]~input_o\ & (\a[29]~input_o\ & (\a[27]~input_o\ & \a[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[30]~input_o\,
	datab => \a[29]~input_o\,
	datac => \a[27]~input_o\,
	datad => \a[28]~input_o\,
	combout => \Result~3_combout\);

-- Location: LCCOMB_X29_Y22_N24
\add~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add~1_combout\ = (\Result~2_combout\ & (\add~0_combout\ & \Result~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Result~2_combout\,
	datac => \add~0_combout\,
	datad => \Result~3_combout\,
	combout => \add~1_combout\);

-- Location: LCCOMB_X29_Y22_N12
\add~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add~3_combout\ = (\add~1_combout\) # ((\add~2_combout\ & (\Result~6_combout\ & \Result~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add~2_combout\,
	datab => \Result~6_combout\,
	datac => \Result~7_combout\,
	datad => \add~1_combout\,
	combout => \add~3_combout\);

-- Location: LCCOMB_X30_Y23_N24
\fpresult~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fpresult~1_combout\ = (\add~3_combout\) # ((\Sumfp[-17]~4_combout\ & (\Sumfp[-17]~14_combout\ & \Add12~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sumfp[-17]~4_combout\,
	datab => \Sumfp[-17]~14_combout\,
	datac => \Add12~26_combout\,
	datad => \add~3_combout\,
	combout => \fpresult~1_combout\);

-- Location: IOIBUF_X27_Y0_N22
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G19
\reset~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X30_Y23_N25
\Sumfp[-23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \fpresult~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sumfp[-23]~q\);

-- Location: LCCOMB_X28_Y22_N12
\Result~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Result~26_combout\ = (\Result~5_combout\ & (!\Result~11_combout\ & !\Result~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Result~5_combout\,
	datac => \Result~11_combout\,
	datad => \Result~10_combout\,
	combout => \Result~26_combout\);

-- Location: LCCOMB_X27_Y23_N18
\add~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add~5_combout\ = (\b[31]~input_o\ & (!\Result~12_combout\ & !\Result~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[31]~input_o\,
	datac => \Result~12_combout\,
	datad => \Result~13_combout\,
	combout => \add~5_combout\);

-- Location: LCCOMB_X29_Y22_N22
\add~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add~6_combout\ = (\Result~9_combout\ & (\Result~26_combout\ & (\a[31]~input_o\ & \add~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result~9_combout\,
	datab => \Result~26_combout\,
	datac => \a[31]~input_o\,
	datad => \add~5_combout\,
	combout => \add~6_combout\);

-- Location: LCCOMB_X29_Y24_N4
\Sumfp[-17]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Sumfp[-17]~0_combout\ = (((!\Add6~10_combout\) # (!\Add6~2_combout\)) # (!\Add6~12_combout\)) # (!\Add6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => \Add6~12_combout\,
	datac => \Add6~2_combout\,
	datad => \Add6~10_combout\,
	combout => \Sumfp[-17]~0_combout\);

-- Location: LCCOMB_X29_Y24_N24
\Sumfp[-17]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Sumfp[-17]~1_combout\ = ((!\Add6~4_combout\) # (!\Add6~8_combout\)) # (!\Add6~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add6~6_combout\,
	datac => \Add6~8_combout\,
	datad => \Add6~4_combout\,
	combout => \Sumfp[-17]~1_combout\);

-- Location: LCCOMB_X30_Y23_N10
\Sumfp[-17]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Sumfp[-17]~2_combout\ = (\Add6~16_combout\) # ((!\Add6~14_combout\ & ((\Sumfp[-17]~0_combout\) # (\Sumfp[-17]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~16_combout\,
	datab => \Sumfp[-17]~0_combout\,
	datac => \Sumfp[-17]~1_combout\,
	datad => \Add6~14_combout\,
	combout => \Sumfp[-17]~2_combout\);

-- Location: LCCOMB_X30_Y23_N6
\Sumfp[-17]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Sumfp[-17]~4_combout\ = (\Sumfp[-17]~3_combout\ & (!\add~6_combout\ & (\shiftr~2_combout\ & \Sumfp[-17]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sumfp[-17]~3_combout\,
	datab => \add~6_combout\,
	datac => \shiftr~2_combout\,
	datad => \Sumfp[-17]~2_combout\,
	combout => \Sumfp[-17]~4_combout\);

-- Location: LCCOMB_X32_Y21_N8
\Add12~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~30_combout\ = (\Add12~28_combout\ & (\Sumfp[-17]~4_combout\ & \Sumfp[-17]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~28_combout\,
	datac => \Sumfp[-17]~4_combout\,
	datad => \Sumfp[-17]~14_combout\,
	combout => \Add12~30_combout\);

-- Location: FF_X32_Y21_N9
\Sumfp[-22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add12~30_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sumfp[-22]~q\);

-- Location: LCCOMB_X32_Y23_N16
\Add12~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~33_combout\ = (\Add12~31_combout\ & (\Sumfp[-17]~14_combout\ & \Sumfp[-17]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~31_combout\,
	datac => \Sumfp[-17]~14_combout\,
	datad => \Sumfp[-17]~4_combout\,
	combout => \Add12~33_combout\);

-- Location: FF_X32_Y23_N17
\Sumfp[-21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add12~33_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sumfp[-21]~q\);

-- Location: LCCOMB_X32_Y21_N16
\Add12~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~34_combout\ = (\Add12~32\ & (((!\sfract~134_combout\)) # (!\sfract~103_combout\))) # (!\Add12~32\ & (((\sfract~103_combout\ & \sfract~134_combout\)) # (GND)))
-- \Add12~35\ = CARRY(((!\Add12~32\) # (!\sfract~134_combout\)) # (!\sfract~103_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~103_combout\,
	datab => \sfract~134_combout\,
	datad => VCC,
	cin => \Add12~32\,
	combout => \Add12~34_combout\,
	cout => \Add12~35\);

-- Location: LCCOMB_X32_Y21_N2
\Add12~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~36_combout\ = (\Add12~34_combout\ & (\Sumfp[-17]~4_combout\ & \Sumfp[-17]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add12~34_combout\,
	datac => \Sumfp[-17]~4_combout\,
	datad => \Sumfp[-17]~14_combout\,
	combout => \Add12~36_combout\);

-- Location: FF_X32_Y21_N3
\Sumfp[-20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add12~36_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sumfp[-20]~q\);

-- Location: LCCOMB_X32_Y21_N18
\Add12~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~37_combout\ = (\Add12~35\ & (\sfract~126_combout\ & (\sfract~134_combout\ & VCC))) # (!\Add12~35\ & ((((\sfract~126_combout\ & \sfract~134_combout\)))))
-- \Add12~38\ = CARRY((\sfract~126_combout\ & (\sfract~134_combout\ & !\Add12~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~126_combout\,
	datab => \sfract~134_combout\,
	datad => VCC,
	cin => \Add12~35\,
	combout => \Add12~37_combout\,
	cout => \Add12~38\);

-- Location: LCCOMB_X32_Y23_N26
\Add12~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~39_combout\ = (\Add12~37_combout\ & (\Sumfp[-17]~14_combout\ & \Sumfp[-17]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add12~37_combout\,
	datac => \Sumfp[-17]~14_combout\,
	datad => \Sumfp[-17]~4_combout\,
	combout => \Add12~39_combout\);

-- Location: FF_X32_Y23_N27
\Sumfp[-19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add12~39_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sumfp[-19]~q\);

-- Location: LCCOMB_X32_Y23_N28
\Add12~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~42_combout\ = (\Add12~40_combout\ & (\Sumfp[-17]~14_combout\ & \Sumfp[-17]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~40_combout\,
	datac => \Sumfp[-17]~14_combout\,
	datad => \Sumfp[-17]~4_combout\,
	combout => \Add12~42_combout\);

-- Location: FF_X32_Y23_N29
\Sumfp[-18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add12~42_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sumfp[-18]~q\);

-- Location: LCCOMB_X32_Y21_N22
\Add12~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~43_combout\ = (\sfract~61_combout\ & (\Add12~41\ $ (GND))) # (!\sfract~61_combout\ & (!\Add12~41\ & VCC))
-- \Add12~44\ = CARRY((\sfract~61_combout\ & !\Add12~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sfract~61_combout\,
	datad => VCC,
	cin => \Add12~41\,
	combout => \Add12~43_combout\,
	cout => \Add12~44\);

-- Location: LCCOMB_X32_Y23_N14
\Add12~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~45_combout\ = (\Add12~43_combout\ & (\Sumfp[-17]~14_combout\ & \Sumfp[-17]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add12~43_combout\,
	datac => \Sumfp[-17]~14_combout\,
	datad => \Sumfp[-17]~4_combout\,
	combout => \Add12~45_combout\);

-- Location: FF_X32_Y23_N15
\Sumfp[-17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add12~45_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sumfp[-17]~q\);

-- Location: LCCOMB_X32_Y21_N24
\Add12~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~46_combout\ = (\sfract~90_combout\ & (!\Add12~44\)) # (!\sfract~90_combout\ & ((\Add12~44\) # (GND)))
-- \Add12~47\ = CARRY((!\Add12~44\) # (!\sfract~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sfract~90_combout\,
	datad => VCC,
	cin => \Add12~44\,
	combout => \Add12~46_combout\,
	cout => \Add12~47\);

-- Location: LCCOMB_X32_Y23_N24
\Add12~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~48_combout\ = (\Sumfp[-17]~4_combout\ & (\Sumfp[-17]~14_combout\ & \Add12~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sumfp[-17]~4_combout\,
	datac => \Sumfp[-17]~14_combout\,
	datad => \Add12~46_combout\,
	combout => \Add12~48_combout\);

-- Location: FF_X32_Y23_N25
\Sumfp[-16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add12~48_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sumfp[-16]~q\);

-- Location: LCCOMB_X32_Y23_N2
\Add12~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~51_combout\ = (\Add12~49_combout\ & (\Sumfp[-17]~14_combout\ & \Sumfp[-17]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~49_combout\,
	datac => \Sumfp[-17]~14_combout\,
	datad => \Sumfp[-17]~4_combout\,
	combout => \Add12~51_combout\);

-- Location: FF_X32_Y23_N3
\Sumfp[-15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add12~51_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sumfp[-15]~q\);

-- Location: LCCOMB_X32_Y21_N28
\Add12~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~52_combout\ = (\Add12~50\ & (((!\sfract~77_combout\)) # (!\sfract~91_combout\))) # (!\Add12~50\ & (((\sfract~91_combout\ & \sfract~77_combout\)) # (GND)))
-- \Add12~53\ = CARRY(((!\Add12~50\) # (!\sfract~77_combout\)) # (!\sfract~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~91_combout\,
	datab => \sfract~77_combout\,
	datad => VCC,
	cin => \Add12~50\,
	combout => \Add12~52_combout\,
	cout => \Add12~53\);

-- Location: LCCOMB_X32_Y23_N20
\Add12~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~54_combout\ = (\Sumfp[-17]~4_combout\ & (\Sumfp[-17]~14_combout\ & \Add12~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sumfp[-17]~4_combout\,
	datac => \Sumfp[-17]~14_combout\,
	datad => \Add12~52_combout\,
	combout => \Add12~54_combout\);

-- Location: FF_X32_Y23_N21
\Sumfp[-14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add12~54_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sumfp[-14]~q\);

-- Location: LCCOMB_X35_Y15_N18
\ShiftLeft0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~19_combout\ = (\Add9~2_combout\ & (!\Add9~0_combout\ & (\ShiftLeft0~18_combout\))) # (!\Add9~2_combout\ & (((\ShiftLeft0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~0_combout\,
	datab => \Add9~2_combout\,
	datac => \ShiftLeft0~18_combout\,
	datad => \ShiftLeft0~17_combout\,
	combout => \ShiftLeft0~19_combout\);

-- Location: LCCOMB_X35_Y16_N8
\ShiftRight2~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight2~54_combout\ = (\Add8~4_combout\ & ((\ShiftRight2~40_combout\))) # (!\Add8~4_combout\ & (\ShiftRight2~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight2~42_combout\,
	datac => \Add8~4_combout\,
	datad => \ShiftRight2~40_combout\,
	combout => \ShiftRight2~54_combout\);

-- Location: LCCOMB_X35_Y15_N4
\ShiftLeft0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~8_combout\ = (\Add9~2_combout\ & ((\ShiftLeft0~4_combout\))) # (!\Add9~2_combout\ & (\ShiftLeft0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~7_combout\,
	datab => \ShiftLeft0~4_combout\,
	datac => \Add9~2_combout\,
	combout => \ShiftLeft0~8_combout\);

-- Location: LCCOMB_X35_Y19_N24
\sfract~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~74_combout\ = (\Add8~21_combout\ & ((\sfract~73_combout\) # ((\ShiftLeft0~8_combout\)))) # (!\Add8~21_combout\ & (!\sfract~73_combout\ & (\ShiftRight2~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~21_combout\,
	datab => \sfract~73_combout\,
	datac => \ShiftRight2~54_combout\,
	datad => \ShiftLeft0~8_combout\,
	combout => \sfract~74_combout\);

-- Location: LCCOMB_X35_Y19_N10
\sfract~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~75_combout\ = (\sfract~73_combout\ & ((\sfract~74_combout\ & ((\ShiftLeft0~19_combout\))) # (!\sfract~74_combout\ & (\ShiftRight2~5_combout\)))) # (!\sfract~73_combout\ & (((\sfract~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight2~5_combout\,
	datab => \sfract~73_combout\,
	datac => \ShiftLeft0~19_combout\,
	datad => \sfract~74_combout\,
	combout => \sfract~75_combout\);

-- Location: LCCOMB_X32_Y21_N30
\Add12~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~55_combout\ = (\Add12~53\ & (\sfract~91_combout\ & (\sfract~75_combout\ & VCC))) # (!\Add12~53\ & ((((\sfract~91_combout\ & \sfract~75_combout\)))))
-- \Add12~56\ = CARRY((\sfract~91_combout\ & (\sfract~75_combout\ & !\Add12~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~91_combout\,
	datab => \sfract~75_combout\,
	datad => VCC,
	cin => \Add12~53\,
	combout => \Add12~55_combout\,
	cout => \Add12~56\);

-- Location: LCCOMB_X32_Y21_N4
\Add12~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~81_combout\ = (\Sumfp[-17]~4_combout\ & (\Add12~55_combout\ & \Sumfp[-17]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sumfp[-17]~4_combout\,
	datac => \Add12~55_combout\,
	datad => \Sumfp[-17]~14_combout\,
	combout => \Add12~81_combout\);

-- Location: FF_X32_Y21_N5
\Sumfp[-13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add12~81_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sumfp[-13]~q\);

-- Location: LCCOMB_X32_Y20_N0
\Add12~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~57_combout\ = (\Add12~56\ & (((!\sfract~91_combout\)) # (!\sfract~81_combout\))) # (!\Add12~56\ & (((\sfract~81_combout\ & \sfract~91_combout\)) # (GND)))
-- \Add12~58\ = CARRY(((!\Add12~56\) # (!\sfract~91_combout\)) # (!\sfract~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~81_combout\,
	datab => \sfract~91_combout\,
	datad => VCC,
	cin => \Add12~56\,
	combout => \Add12~57_combout\,
	cout => \Add12~58\);

-- Location: LCCOMB_X32_Y24_N24
\Add12~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~82_combout\ = (\Sumfp[-17]~4_combout\ & (\Add12~57_combout\ & \Sumfp[-17]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sumfp[-17]~4_combout\,
	datab => \Add12~57_combout\,
	datac => \Sumfp[-17]~14_combout\,
	combout => \Add12~82_combout\);

-- Location: FF_X32_Y24_N25
\Sumfp[-12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add12~82_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sumfp[-12]~q\);

-- Location: LCCOMB_X32_Y20_N2
\Add12~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~59_combout\ = (\Add12~58\ & (\sfract~91_combout\ & (\sfract~79_combout\ & VCC))) # (!\Add12~58\ & ((((\sfract~91_combout\ & \sfract~79_combout\)))))
-- \Add12~60\ = CARRY((\sfract~91_combout\ & (\sfract~79_combout\ & !\Add12~58\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~91_combout\,
	datab => \sfract~79_combout\,
	datad => VCC,
	cin => \Add12~58\,
	combout => \Add12~59_combout\,
	cout => \Add12~60\);

-- Location: LCCOMB_X32_Y23_N30
\Add12~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~83_combout\ = (\Add12~59_combout\ & (\Sumfp[-17]~14_combout\ & \Sumfp[-17]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add12~59_combout\,
	datac => \Sumfp[-17]~14_combout\,
	datad => \Sumfp[-17]~4_combout\,
	combout => \Add12~83_combout\);

-- Location: FF_X32_Y23_N31
\Sumfp[-11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add12~83_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sumfp[-11]~q\);

-- Location: LCCOMB_X32_Y20_N4
\Add12~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~61_combout\ = (\sfract~54_combout\ & (!\Add12~60\)) # (!\sfract~54_combout\ & ((\Add12~60\) # (GND)))
-- \Add12~62\ = CARRY((!\Add12~60\) # (!\sfract~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sfract~54_combout\,
	datad => VCC,
	cin => \Add12~60\,
	combout => \Add12~61_combout\,
	cout => \Add12~62\);

-- Location: LCCOMB_X32_Y23_N0
\Add12~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~84_combout\ = (\Add12~61_combout\ & (\Sumfp[-17]~14_combout\ & \Sumfp[-17]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add12~61_combout\,
	datac => \Sumfp[-17]~14_combout\,
	datad => \Sumfp[-17]~4_combout\,
	combout => \Add12~84_combout\);

-- Location: FF_X32_Y23_N1
\Sumfp[-10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add12~84_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sumfp[-10]~q\);

-- Location: LCCOMB_X32_Y23_N18
\Add12~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~85_combout\ = (\Add12~63_combout\ & (\Sumfp[-17]~14_combout\ & \Sumfp[-17]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~63_combout\,
	datac => \Sumfp[-17]~14_combout\,
	datad => \Sumfp[-17]~4_combout\,
	combout => \Add12~85_combout\);

-- Location: FF_X32_Y23_N19
\Sumfp[-9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add12~85_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sumfp[-9]~q\);

-- Location: LCCOMB_X32_Y17_N20
\ShiftLeft0~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftLeft0~63_combout\ = (\ShiftLeft0~18_combout\ & (!\Add9~0_combout\ & (!\Add9~4_combout\ & !\Add9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~18_combout\,
	datab => \Add9~0_combout\,
	datac => \Add9~4_combout\,
	datad => \Add9~2_combout\,
	combout => \ShiftLeft0~63_combout\);

-- Location: LCCOMB_X32_Y19_N0
\sfract~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~56_combout\ = (\sfract~52_combout\ & (((\ShiftLeft0~63_combout\ & \sfract~51_combout\)))) # (!\sfract~52_combout\ & ((\sfract~128_combout\) # ((!\sfract~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~128_combout\,
	datab => \ShiftLeft0~63_combout\,
	datac => \sfract~52_combout\,
	datad => \sfract~51_combout\,
	combout => \sfract~56_combout\);

-- Location: LCCOMB_X32_Y19_N10
\sfract~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~57_combout\ = (\sfract~56_combout\ & ((\ShiftLeft0~62_combout\) # ((!\sfract~48_combout\)))) # (!\sfract~56_combout\ & (((\sfract~48_combout\ & \ShiftLeft0~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~62_combout\,
	datab => \sfract~56_combout\,
	datac => \sfract~48_combout\,
	datad => \ShiftLeft0~61_combout\,
	combout => \sfract~57_combout\);

-- Location: LCCOMB_X32_Y20_N8
\Add12~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~65_combout\ = (\Add12~64\ & (((!\sfract~133_combout\)) # (!\sfract~47_combout\))) # (!\Add12~64\ & (((\sfract~47_combout\ & \sfract~133_combout\)) # (GND)))
-- \Add12~66\ = CARRY(((!\Add12~64\) # (!\sfract~133_combout\)) # (!\sfract~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~47_combout\,
	datab => \sfract~133_combout\,
	datad => VCC,
	cin => \Add12~64\,
	combout => \Add12~65_combout\,
	cout => \Add12~66\);

-- Location: LCCOMB_X32_Y24_N26
\Add12~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~86_combout\ = (\Sumfp[-17]~4_combout\ & (\Sumfp[-17]~14_combout\ & \Add12~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sumfp[-17]~4_combout\,
	datac => \Sumfp[-17]~14_combout\,
	datad => \Add12~65_combout\,
	combout => \Add12~86_combout\);

-- Location: FF_X32_Y24_N27
\Sumfp[-8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add12~86_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sumfp[-8]~q\);

-- Location: LCCOMB_X32_Y23_N4
\Add12~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~87_combout\ = (\Add12~67_combout\ & (\Sumfp[-17]~14_combout\ & \Sumfp[-17]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~67_combout\,
	datac => \Sumfp[-17]~14_combout\,
	datad => \Sumfp[-17]~4_combout\,
	combout => \Add12~87_combout\);

-- Location: FF_X32_Y23_N5
\Sumfp[-7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add12~87_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sumfp[-7]~q\);

-- Location: LCCOMB_X32_Y20_N12
\Add12~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~69_combout\ = (\Add12~68\ & (((!\sfract~33_combout\)) # (!\sfract~82_combout\))) # (!\Add12~68\ & (((\sfract~82_combout\ & \sfract~33_combout\)) # (GND)))
-- \Add12~70\ = CARRY(((!\Add12~68\) # (!\sfract~33_combout\)) # (!\sfract~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~82_combout\,
	datab => \sfract~33_combout\,
	datad => VCC,
	cin => \Add12~68\,
	combout => \Add12~69_combout\,
	cout => \Add12~70\);

-- Location: LCCOMB_X32_Y23_N22
\Add12~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~88_combout\ = (\Add12~69_combout\ & (\Sumfp[-17]~14_combout\ & \Sumfp[-17]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add12~69_combout\,
	datac => \Sumfp[-17]~14_combout\,
	datad => \Sumfp[-17]~4_combout\,
	combout => \Add12~88_combout\);

-- Location: FF_X32_Y23_N23
\Sumfp[-6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add12~88_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sumfp[-6]~q\);

-- Location: LCCOMB_X32_Y20_N14
\Add12~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~71_combout\ = (\Add12~70\ & (\sfract~82_combout\ & (\sfract~26_combout\ & VCC))) # (!\Add12~70\ & ((((\sfract~82_combout\ & \sfract~26_combout\)))))
-- \Add12~72\ = CARRY((\sfract~82_combout\ & (\sfract~26_combout\ & !\Add12~70\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~82_combout\,
	datab => \sfract~26_combout\,
	datad => VCC,
	cin => \Add12~70\,
	combout => \Add12~71_combout\,
	cout => \Add12~72\);

-- Location: LCCOMB_X32_Y23_N8
\Add12~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~89_combout\ = (\Add12~71_combout\ & (\Sumfp[-17]~14_combout\ & \Sumfp[-17]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add12~71_combout\,
	datac => \Sumfp[-17]~14_combout\,
	datad => \Sumfp[-17]~4_combout\,
	combout => \Add12~89_combout\);

-- Location: FF_X32_Y23_N9
\Sumfp[-5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add12~89_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sumfp[-5]~q\);

-- Location: LCCOMB_X31_Y20_N2
\sfract~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sfract~82_combout\ = (\Add8~21_combout\ & (\ShiftLeft0~59_combout\)) # (!\Add8~21_combout\ & (((!\Add8~7_combout\ & !\sfract~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~59_combout\,
	datab => \Add8~21_combout\,
	datac => \Add8~7_combout\,
	datad => \sfract~50_combout\,
	combout => \sfract~82_combout\);

-- Location: LCCOMB_X32_Y20_N16
\Add12~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~73_combout\ = (\Add12~72\ & (((!\sfract~82_combout\)) # (!\sfract~95_combout\))) # (!\Add12~72\ & (((\sfract~95_combout\ & \sfract~82_combout\)) # (GND)))
-- \Add12~74\ = CARRY(((!\Add12~72\) # (!\sfract~82_combout\)) # (!\sfract~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~95_combout\,
	datab => \sfract~82_combout\,
	datad => VCC,
	cin => \Add12~72\,
	combout => \Add12~73_combout\,
	cout => \Add12~74\);

-- Location: LCCOMB_X32_Y23_N10
\Add12~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~90_combout\ = (\Add12~73_combout\ & (\Sumfp[-17]~14_combout\ & \Sumfp[-17]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add12~73_combout\,
	datac => \Sumfp[-17]~14_combout\,
	datad => \Sumfp[-17]~4_combout\,
	combout => \Add12~90_combout\);

-- Location: FF_X32_Y23_N11
\Sumfp[-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add12~90_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sumfp[-4]~q\);

-- Location: LCCOMB_X32_Y20_N18
\Add12~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~75_combout\ = (\Add12~74\ & (\sfract~39_combout\ & (\sfract~82_combout\ & VCC))) # (!\Add12~74\ & ((((\sfract~39_combout\ & \sfract~82_combout\)))))
-- \Add12~76\ = CARRY((\sfract~39_combout\ & (\sfract~82_combout\ & !\Add12~74\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sfract~39_combout\,
	datab => \sfract~82_combout\,
	datad => VCC,
	cin => \Add12~74\,
	combout => \Add12~75_combout\,
	cout => \Add12~76\);

-- Location: LCCOMB_X32_Y23_N12
\Add12~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~91_combout\ = (\Sumfp[-17]~4_combout\ & (\Sumfp[-17]~14_combout\ & \Add12~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sumfp[-17]~4_combout\,
	datac => \Sumfp[-17]~14_combout\,
	datad => \Add12~75_combout\,
	combout => \Add12~91_combout\);

-- Location: FF_X32_Y23_N13
\Sumfp[-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add12~91_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sumfp[-3]~q\);

-- Location: LCCOMB_X32_Y20_N20
\Add12~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~77_combout\ = (\sfract~68_combout\ & (!\Add12~76\)) # (!\sfract~68_combout\ & ((\Add12~76\) # (GND)))
-- \Add12~78\ = CARRY((!\Add12~76\) # (!\sfract~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sfract~68_combout\,
	datad => VCC,
	cin => \Add12~76\,
	combout => \Add12~77_combout\,
	cout => \Add12~78\);

-- Location: LCCOMB_X32_Y23_N6
\Add12~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~92_combout\ = (\Sumfp[-17]~4_combout\ & (\Sumfp[-17]~14_combout\ & \Add12~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sumfp[-17]~4_combout\,
	datac => \Sumfp[-17]~14_combout\,
	datad => \Add12~77_combout\,
	combout => \Add12~92_combout\);

-- Location: FF_X32_Y23_N7
\Sumfp[-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add12~92_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sumfp[-2]~q\);

-- Location: LCCOMB_X32_Y20_N22
\Add12~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~79_combout\ = \sfract~72_combout\ $ (!\Add12~78\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sfract~72_combout\,
	cin => \Add12~78\,
	combout => \Add12~79_combout\);

-- Location: LCCOMB_X30_Y23_N26
\Add12~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add12~93_combout\ = (\Sumfp[-17]~4_combout\ & (\Add12~79_combout\ & \Sumfp[-17]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sumfp[-17]~4_combout\,
	datac => \Add12~79_combout\,
	datad => \Sumfp[-17]~14_combout\,
	combout => \Add12~93_combout\);

-- Location: FF_X30_Y23_N27
\Sumfp[-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add12~93_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sumfp[-1]~q\);

-- Location: LCCOMB_X30_Y23_N20
\fpresult~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fpresult~2_combout\ = ((!\add~6_combout\ & \shiftr~2_combout\)) # (!\Sumfp[-17]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sumfp[-17]~3_combout\,
	datab => \add~6_combout\,
	datac => \shiftr~2_combout\,
	combout => \fpresult~2_combout\);

-- Location: LCCOMB_X30_Y23_N22
\shiftr~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \shiftr~8_combout\ = (\shiftr~5_combout\) # (!\shiftr~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftr~2_combout\,
	datac => \shiftr~5_combout\,
	combout => \shiftr~8_combout\);

-- Location: LCCOMB_X31_Y24_N4
\Add11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~0_combout\ = (((\Add6~0_combout\ & \shiftr~8_combout\)))
-- \Add11~1\ = CARRY((\Add6~0_combout\ & \shiftr~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => \shiftr~8_combout\,
	datad => VCC,
	combout => \Add11~0_combout\,
	cout => \Add11~1\);

-- Location: LCCOMB_X31_Y24_N0
\Add11~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~2_combout\ = (\Sumfp[-17]~14_combout\ & (\Add6~0_combout\ & (\shiftr~8_combout\))) # (!\Sumfp[-17]~14_combout\ & (((\Add11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => \shiftr~8_combout\,
	datac => \Add11~0_combout\,
	datad => \Sumfp[-17]~14_combout\,
	combout => \Add11~2_combout\);

-- Location: LCCOMB_X32_Y24_N12
\Add11~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~3_combout\ = (\fpresult~2_combout\ & ((\Add11~2_combout\) # (!\Sumfp[-17]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sumfp[-17]~4_combout\,
	datab => \fpresult~2_combout\,
	datad => \Add11~2_combout\,
	combout => \Add11~3_combout\);

-- Location: FF_X32_Y24_N13
\Sumfp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add11~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Sumfp(0));

-- Location: LCCOMB_X31_Y24_N2
\Add11~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~6_combout\ = (\Sumfp[-17]~14_combout\ & (((\shiftr~8_combout\ & \Add6~2_combout\)))) # (!\Sumfp[-17]~14_combout\ & (\Add11~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~4_combout\,
	datab => \shiftr~8_combout\,
	datac => \Add6~2_combout\,
	datad => \Sumfp[-17]~14_combout\,
	combout => \Add11~6_combout\);

-- Location: LCCOMB_X32_Y24_N6
\Add11~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~7_combout\ = (\fpresult~2_combout\ & ((\Add11~6_combout\) # (!\Sumfp[-17]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sumfp[-17]~4_combout\,
	datac => \fpresult~2_combout\,
	datad => \Add11~6_combout\,
	combout => \Add11~7_combout\);

-- Location: FF_X32_Y24_N7
\Sumfp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add11~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Sumfp(1));

-- Location: LCCOMB_X31_Y24_N8
\Add11~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~8_combout\ = (\Add11~5\ & (\Add6~4_combout\ & (\shiftr~8_combout\ & VCC))) # (!\Add11~5\ & ((((\Add6~4_combout\ & \shiftr~8_combout\)))))
-- \Add11~9\ = CARRY((\Add6~4_combout\ & (\shiftr~8_combout\ & !\Add11~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~4_combout\,
	datab => \shiftr~8_combout\,
	datad => VCC,
	cin => \Add11~5\,
	combout => \Add11~8_combout\,
	cout => \Add11~9\);

-- Location: LCCOMB_X31_Y24_N20
\Add11~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~10_combout\ = (\Sumfp[-17]~14_combout\ & (\Add6~4_combout\ & (\shiftr~8_combout\))) # (!\Sumfp[-17]~14_combout\ & (((\Add11~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~4_combout\,
	datab => \shiftr~8_combout\,
	datac => \Add11~8_combout\,
	datad => \Sumfp[-17]~14_combout\,
	combout => \Add11~10_combout\);

-- Location: LCCOMB_X32_Y24_N8
\Add11~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~11_combout\ = (\fpresult~2_combout\ & ((\Add11~10_combout\) # (!\Sumfp[-17]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sumfp[-17]~4_combout\,
	datac => \fpresult~2_combout\,
	datad => \Add11~10_combout\,
	combout => \Add11~11_combout\);

-- Location: FF_X32_Y24_N9
\Sumfp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add11~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Sumfp(2));

-- Location: LCCOMB_X31_Y24_N22
\Add11~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~14_combout\ = (\Sumfp[-17]~14_combout\ & (((\shiftr~8_combout\ & \Add6~6_combout\)))) # (!\Sumfp[-17]~14_combout\ & (\Add11~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~12_combout\,
	datab => \shiftr~8_combout\,
	datac => \Add6~6_combout\,
	datad => \Sumfp[-17]~14_combout\,
	combout => \Add11~14_combout\);

-- Location: LCCOMB_X32_Y24_N10
\Add11~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~15_combout\ = (\fpresult~2_combout\ & ((\Add11~14_combout\) # (!\Sumfp[-17]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sumfp[-17]~4_combout\,
	datac => \fpresult~2_combout\,
	datad => \Add11~14_combout\,
	combout => \Add11~15_combout\);

-- Location: FF_X32_Y24_N11
\Sumfp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add11~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Sumfp(3));

-- Location: LCCOMB_X31_Y24_N24
\Add11~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~18_combout\ = (\Sumfp[-17]~14_combout\ & (((\shiftr~8_combout\ & \Add6~8_combout\)))) # (!\Sumfp[-17]~14_combout\ & (\Add11~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~16_combout\,
	datab => \shiftr~8_combout\,
	datac => \Add6~8_combout\,
	datad => \Sumfp[-17]~14_combout\,
	combout => \Add11~18_combout\);

-- Location: LCCOMB_X32_Y24_N28
\Add11~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~19_combout\ = (\fpresult~2_combout\ & ((\Add11~18_combout\) # (!\Sumfp[-17]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sumfp[-17]~4_combout\,
	datac => \fpresult~2_combout\,
	datad => \Add11~18_combout\,
	combout => \Add11~19_combout\);

-- Location: FF_X32_Y24_N29
\Sumfp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add11~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Sumfp(4));

-- Location: LCCOMB_X31_Y24_N14
\Add11~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~20_combout\ = (\Add11~17\ & (((!\shiftr~8_combout\)) # (!\Add6~10_combout\))) # (!\Add11~17\ & (((\Add6~10_combout\ & \shiftr~8_combout\)) # (GND)))
-- \Add11~21\ = CARRY(((!\Add11~17\) # (!\shiftr~8_combout\)) # (!\Add6~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~10_combout\,
	datab => \shiftr~8_combout\,
	datad => VCC,
	cin => \Add11~17\,
	combout => \Add11~20_combout\,
	cout => \Add11~21\);

-- Location: LCCOMB_X31_Y24_N26
\Add11~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~22_combout\ = (\Sumfp[-17]~14_combout\ & (\Add6~10_combout\ & (\shiftr~8_combout\))) # (!\Sumfp[-17]~14_combout\ & (((\Add11~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~10_combout\,
	datab => \shiftr~8_combout\,
	datac => \Add11~20_combout\,
	datad => \Sumfp[-17]~14_combout\,
	combout => \Add11~22_combout\);

-- Location: LCCOMB_X32_Y24_N22
\Add11~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~23_combout\ = (\fpresult~2_combout\ & ((\Add11~22_combout\) # (!\Sumfp[-17]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sumfp[-17]~4_combout\,
	datab => \fpresult~2_combout\,
	datad => \Add11~22_combout\,
	combout => \Add11~23_combout\);

-- Location: FF_X32_Y24_N23
\Sumfp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add11~23_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Sumfp(5));

-- Location: LCCOMB_X31_Y24_N28
\Add11~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~26_combout\ = (\Sumfp[-17]~14_combout\ & (((\Add6~12_combout\ & \shiftr~8_combout\)))) # (!\Sumfp[-17]~14_combout\ & (\Add11~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sumfp[-17]~14_combout\,
	datab => \Add11~24_combout\,
	datac => \Add6~12_combout\,
	datad => \shiftr~8_combout\,
	combout => \Add11~26_combout\);

-- Location: LCCOMB_X32_Y24_N16
\Add11~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~27_combout\ = (\fpresult~2_combout\ & ((\Add11~26_combout\) # (!\Sumfp[-17]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sumfp[-17]~4_combout\,
	datac => \fpresult~2_combout\,
	datad => \Add11~26_combout\,
	combout => \Add11~27_combout\);

-- Location: FF_X32_Y24_N17
\Sumfp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add11~27_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Sumfp(6));

-- Location: LCCOMB_X31_Y24_N30
\Add11~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~30_combout\ = (\Sumfp[-17]~14_combout\ & (((\shiftr~8_combout\ & !\Add6~14_combout\)))) # (!\Sumfp[-17]~14_combout\ & (\Add11~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~28_combout\,
	datab => \shiftr~8_combout\,
	datac => \Add6~14_combout\,
	datad => \Sumfp[-17]~14_combout\,
	combout => \Add11~30_combout\);

-- Location: LCCOMB_X32_Y24_N18
\Add11~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add11~31_combout\ = (\fpresult~2_combout\ & ((\Add11~30_combout\) # (!\Sumfp[-17]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sumfp[-17]~4_combout\,
	datac => \fpresult~2_combout\,
	datad => \Add11~30_combout\,
	combout => \Add11~31_combout\);

-- Location: FF_X32_Y24_N19
\Sumfp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add11~31_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Sumfp(7));

-- Location: LCCOMB_X29_Y22_N26
\Classfp~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Classfp~1_combout\ = (\Result~9_combout\ & (\Result~2_combout\ & (\a[31]~input_o\ & \Result~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result~9_combout\,
	datab => \Result~2_combout\,
	datac => \a[31]~input_o\,
	datad => \Result~3_combout\,
	combout => \Classfp~1_combout\);

-- Location: LCCOMB_X29_Y22_N16
\fpresult~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fpresult~0_combout\ = (!\Classfp~0_combout\ & !\Classfp~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Classfp~0_combout\,
	datac => \Classfp~1_combout\,
	combout => \fpresult~0_combout\);

-- Location: LCCOMB_X25_Y21_N10
\leftright~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \leftright~0_combout\ = (((!\Equal0~1_combout\) # (!\Equal0~0_combout\)) # (!\LessThan0~2_combout\)) # (!\LessThan26~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan26~46_combout\,
	datab => \LessThan0~2_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \leftright~0_combout\);

-- Location: LCCOMB_X30_Y23_N0
\fpresult~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fpresult~3_combout\ = (\leftright~0_combout\ & ((\Add0~16_combout\ & ((\b[31]~input_o\))) # (!\Add0~16_combout\ & (\a[31]~input_o\)))) # (!\leftright~0_combout\ & (((\b[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \leftright~0_combout\,
	datac => \b[31]~input_o\,
	datad => \Add0~16_combout\,
	combout => \fpresult~3_combout\);

-- Location: LCCOMB_X30_Y23_N18
\fpresult~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fpresult~4_combout\ = (\add~6_combout\) # (((\Result~21_combout\ & \fpresult~3_combout\)) # (!\fpresult~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result~21_combout\,
	datab => \add~6_combout\,
	datac => \fpresult~0_combout\,
	datad => \fpresult~3_combout\,
	combout => \fpresult~4_combout\);

-- Location: LCCOMB_X29_Y22_N4
\Classfp~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Classfp~3_combout\ = (\Result~9_combout\ & (\Result~2_combout\ & (!\a[31]~input_o\ & \Result~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result~9_combout\,
	datab => \Result~2_combout\,
	datac => \a[31]~input_o\,
	datad => \Result~3_combout\,
	combout => \Classfp~3_combout\);

-- Location: LCCOMB_X30_Y23_N28
\fpresult~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fpresult~5_combout\ = (!\Classfp~2_combout\ & (\fpresult~4_combout\ & (!\Classfp~3_combout\ & !\add~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Classfp~2_combout\,
	datab => \fpresult~4_combout\,
	datac => \Classfp~3_combout\,
	datad => \add~3_combout\,
	combout => \fpresult~5_combout\);

-- Location: FF_X30_Y23_N29
\Sumfp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \fpresult~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Sumfp(8));

ww_Sum(0) <= \Sum[0]~output_o\;

ww_Sum(1) <= \Sum[1]~output_o\;

ww_Sum(2) <= \Sum[2]~output_o\;

ww_Sum(3) <= \Sum[3]~output_o\;

ww_Sum(4) <= \Sum[4]~output_o\;

ww_Sum(5) <= \Sum[5]~output_o\;

ww_Sum(6) <= \Sum[6]~output_o\;

ww_Sum(7) <= \Sum[7]~output_o\;

ww_Sum(8) <= \Sum[8]~output_o\;

ww_Sum(9) <= \Sum[9]~output_o\;

ww_Sum(10) <= \Sum[10]~output_o\;

ww_Sum(11) <= \Sum[11]~output_o\;

ww_Sum(12) <= \Sum[12]~output_o\;

ww_Sum(13) <= \Sum[13]~output_o\;

ww_Sum(14) <= \Sum[14]~output_o\;

ww_Sum(15) <= \Sum[15]~output_o\;

ww_Sum(16) <= \Sum[16]~output_o\;

ww_Sum(17) <= \Sum[17]~output_o\;

ww_Sum(18) <= \Sum[18]~output_o\;

ww_Sum(19) <= \Sum[19]~output_o\;

ww_Sum(20) <= \Sum[20]~output_o\;

ww_Sum(21) <= \Sum[21]~output_o\;

ww_Sum(22) <= \Sum[22]~output_o\;

ww_Sum(23) <= \Sum[23]~output_o\;

ww_Sum(24) <= \Sum[24]~output_o\;

ww_Sum(25) <= \Sum[25]~output_o\;

ww_Sum(26) <= \Sum[26]~output_o\;

ww_Sum(27) <= \Sum[27]~output_o\;

ww_Sum(28) <= \Sum[28]~output_o\;

ww_Sum(29) <= \Sum[29]~output_o\;

ww_Sum(30) <= \Sum[30]~output_o\;

ww_Sum(31) <= \Sum[31]~output_o\;
END structure;


