-- Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition"

-- DATE "11/25/2018 16:16:23"

-- 
-- Device: Altera EP4CE115F29I7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	rf IS
    PORT (
	rfa1 : IN std_logic_vector(2 DOWNTO 0);
	rfa2 : IN std_logic_vector(2 DOWNTO 0);
	rfa3 : IN std_logic_vector(2 DOWNTO 0);
	rst : IN std_logic;
	clk : IN std_logic;
	rfwr : IN std_logic;
	pr5invalid : IN std_logic;
	pr5trfwr : IN std_logic;
	newpc : IN std_logic_vector(15 DOWNTO 0);
	rfd3 : IN std_logic_vector(15 DOWNTO 0);
	pr5ir : IN std_logic_vector(15 DOWNTO 0);
	rfd1 : OUT std_logic_vector(15 DOWNTO 0);
	rfd2 : OUT std_logic_vector(15 DOWNTO 0)
	);
END rf;

-- Design Ports Information
-- pr5ir[2]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5ir[3]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5ir[4]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5ir[5]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5ir[6]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5ir[7]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5ir[8]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5ir[9]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5ir[10]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5ir[11]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5ir[13]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd1[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd1[1]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd1[2]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd1[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd1[4]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd1[5]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd1[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd1[7]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd1[8]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd1[9]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd1[10]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd1[11]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd1[12]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd1[13]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd1[14]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd1[15]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd2[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd2[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd2[2]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd2[3]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd2[4]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd2[5]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd2[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd2[7]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd2[8]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd2[9]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd2[10]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd2[11]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd2[12]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd2[13]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd2[14]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd2[15]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfa1[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfa1[1]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfa1[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newpc[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newpc[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newpc[2]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newpc[3]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newpc[4]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newpc[5]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newpc[6]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newpc[7]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newpc[8]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newpc[9]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newpc[10]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newpc[11]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newpc[12]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newpc[13]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newpc[14]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newpc[15]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfa2[0]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfa2[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfa2[2]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd3[0]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfa3[1]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfwr	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5invalid	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5ir[0]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5ir[1]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5trfwr	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5ir[12]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5ir[14]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5ir[15]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfa3[0]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfa3[2]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd3[1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd3[2]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd3[3]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd3[4]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd3[5]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd3[6]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd3[7]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd3[8]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd3[9]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd3[10]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd3[11]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd3[12]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd3[13]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd3[14]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfd3[15]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF rf IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rfa1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_rfa2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_rfa3 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rfwr : std_logic;
SIGNAL ww_pr5invalid : std_logic;
SIGNAL ww_pr5trfwr : std_logic;
SIGNAL ww_newpc : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_rfd3 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_pr5ir : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_rfd1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_rfd2 : std_logic_vector(15 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pr5ir[2]~input_o\ : std_logic;
SIGNAL \pr5ir[3]~input_o\ : std_logic;
SIGNAL \pr5ir[4]~input_o\ : std_logic;
SIGNAL \pr5ir[5]~input_o\ : std_logic;
SIGNAL \pr5ir[6]~input_o\ : std_logic;
SIGNAL \pr5ir[7]~input_o\ : std_logic;
SIGNAL \pr5ir[8]~input_o\ : std_logic;
SIGNAL \pr5ir[9]~input_o\ : std_logic;
SIGNAL \pr5ir[10]~input_o\ : std_logic;
SIGNAL \pr5ir[11]~input_o\ : std_logic;
SIGNAL \pr5ir[13]~input_o\ : std_logic;
SIGNAL \rfd1[0]~output_o\ : std_logic;
SIGNAL \rfd1[1]~output_o\ : std_logic;
SIGNAL \rfd1[2]~output_o\ : std_logic;
SIGNAL \rfd1[3]~output_o\ : std_logic;
SIGNAL \rfd1[4]~output_o\ : std_logic;
SIGNAL \rfd1[5]~output_o\ : std_logic;
SIGNAL \rfd1[6]~output_o\ : std_logic;
SIGNAL \rfd1[7]~output_o\ : std_logic;
SIGNAL \rfd1[8]~output_o\ : std_logic;
SIGNAL \rfd1[9]~output_o\ : std_logic;
SIGNAL \rfd1[10]~output_o\ : std_logic;
SIGNAL \rfd1[11]~output_o\ : std_logic;
SIGNAL \rfd1[12]~output_o\ : std_logic;
SIGNAL \rfd1[13]~output_o\ : std_logic;
SIGNAL \rfd1[14]~output_o\ : std_logic;
SIGNAL \rfd1[15]~output_o\ : std_logic;
SIGNAL \rfd2[0]~output_o\ : std_logic;
SIGNAL \rfd2[1]~output_o\ : std_logic;
SIGNAL \rfd2[2]~output_o\ : std_logic;
SIGNAL \rfd2[3]~output_o\ : std_logic;
SIGNAL \rfd2[4]~output_o\ : std_logic;
SIGNAL \rfd2[5]~output_o\ : std_logic;
SIGNAL \rfd2[6]~output_o\ : std_logic;
SIGNAL \rfd2[7]~output_o\ : std_logic;
SIGNAL \rfd2[8]~output_o\ : std_logic;
SIGNAL \rfd2[9]~output_o\ : std_logic;
SIGNAL \rfd2[10]~output_o\ : std_logic;
SIGNAL \rfd2[11]~output_o\ : std_logic;
SIGNAL \rfd2[12]~output_o\ : std_logic;
SIGNAL \rfd2[13]~output_o\ : std_logic;
SIGNAL \rfd2[14]~output_o\ : std_logic;
SIGNAL \rfd2[15]~output_o\ : std_logic;
SIGNAL \rfa1[1]~input_o\ : std_logic;
SIGNAL \rfa1[0]~input_o\ : std_logic;
SIGNAL \rfa1[2]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rfd3[0]~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \rfa3[1]~input_o\ : std_logic;
SIGNAL \rfa3[2]~input_o\ : std_logic;
SIGNAL \pr5ir[15]~input_o\ : std_logic;
SIGNAL \pr5ir[14]~input_o\ : std_logic;
SIGNAL \wr_rf~2_combout\ : std_logic;
SIGNAL \rfa3[0]~input_o\ : std_logic;
SIGNAL \pr5ir[0]~input_o\ : std_logic;
SIGNAL \pr5ir[12]~input_o\ : std_logic;
SIGNAL \pr5trfwr~input_o\ : std_logic;
SIGNAL \pr5ir[1]~input_o\ : std_logic;
SIGNAL \wr_rf~1_combout\ : std_logic;
SIGNAL \rfwr~input_o\ : std_logic;
SIGNAL \pr5invalid~input_o\ : std_logic;
SIGNAL \wr_rf~0_combout\ : std_logic;
SIGNAL \wrarr1[0]~0_combout\ : std_logic;
SIGNAL \wrarr1[0]~3_combout\ : std_logic;
SIGNAL \reg7[15]~0_combout\ : std_logic;
SIGNAL \wrarr1[1]~2_combout\ : std_logic;
SIGNAL \rfd1_var~0_combout\ : std_logic;
SIGNAL \wrarr1[3]~4_combout\ : std_logic;
SIGNAL \wrarr1[2]~1_combout\ : std_logic;
SIGNAL \rfd1_var~1_combout\ : std_logic;
SIGNAL \newpc[0]~input_o\ : std_logic;
SIGNAL \rfd1_var~2_combout\ : std_logic;
SIGNAL \wrarr1[5]~5_combout\ : std_logic;
SIGNAL \reg7[15]~1_combout\ : std_logic;
SIGNAL \reg7[0]~2_combout\ : std_logic;
SIGNAL \wrarr1[6]~6_combout\ : std_logic;
SIGNAL \wrarr1[4]~7_combout\ : std_logic;
SIGNAL \rfd1_var~3_combout\ : std_logic;
SIGNAL \rfd1_var~4_combout\ : std_logic;
SIGNAL \rfd1_var~5_combout\ : std_logic;
SIGNAL \rfd3[1]~input_o\ : std_logic;
SIGNAL \rfd1_var~6_combout\ : std_logic;
SIGNAL \rfd1_var~7_combout\ : std_logic;
SIGNAL \newpc[1]~input_o\ : std_logic;
SIGNAL \rfd1_var~8_combout\ : std_logic;
SIGNAL \rfd1_var~9_combout\ : std_logic;
SIGNAL \reg7[1]~3_combout\ : std_logic;
SIGNAL \rfd1_var~10_combout\ : std_logic;
SIGNAL \rfd1_var~11_combout\ : std_logic;
SIGNAL \newpc[2]~input_o\ : std_logic;
SIGNAL \rfd3[2]~input_o\ : std_logic;
SIGNAL \reg7[2]~4_combout\ : std_logic;
SIGNAL \rfd1_var~15_combout\ : std_logic;
SIGNAL \rfd1_var~16_combout\ : std_logic;
SIGNAL \rfd1_var~12_combout\ : std_logic;
SIGNAL \rfd1_var~13_combout\ : std_logic;
SIGNAL \rfd1_var~14_combout\ : std_logic;
SIGNAL \rfd1_var~17_combout\ : std_logic;
SIGNAL \rfd3[3]~input_o\ : std_logic;
SIGNAL \newpc[3]~input_o\ : std_logic;
SIGNAL \reg7[3]~5_combout\ : std_logic;
SIGNAL \rfd1_var~21_combout\ : std_logic;
SIGNAL \rfd1_var~22_combout\ : std_logic;
SIGNAL \rfd1_var~18_combout\ : std_logic;
SIGNAL \rfd1_var~19_combout\ : std_logic;
SIGNAL \rfd1_var~20_combout\ : std_logic;
SIGNAL \rfd1_var~23_combout\ : std_logic;
SIGNAL \rfd3[4]~input_o\ : std_logic;
SIGNAL \rfd1_var~24_combout\ : std_logic;
SIGNAL \rfd1_var~25_combout\ : std_logic;
SIGNAL \newpc[4]~input_o\ : std_logic;
SIGNAL \rfd1_var~26_combout\ : std_logic;
SIGNAL \reg7[4]~6_combout\ : std_logic;
SIGNAL \rfd1_var~27_combout\ : std_logic;
SIGNAL \rfd1_var~28_combout\ : std_logic;
SIGNAL \rfd1_var~29_combout\ : std_logic;
SIGNAL \rfd3[5]~input_o\ : std_logic;
SIGNAL \rfd1_var~33_combout\ : std_logic;
SIGNAL \newpc[5]~input_o\ : std_logic;
SIGNAL \reg7[5]~7_combout\ : std_logic;
SIGNAL \rfd1_var~34_combout\ : std_logic;
SIGNAL \rfd1_var~30_combout\ : std_logic;
SIGNAL \rfd1_var~31_combout\ : std_logic;
SIGNAL \rfd1_var~32_combout\ : std_logic;
SIGNAL \rfd1_var~35_combout\ : std_logic;
SIGNAL \newpc[6]~input_o\ : std_logic;
SIGNAL \rfd3[6]~input_o\ : std_logic;
SIGNAL \rfd1_var~36_combout\ : std_logic;
SIGNAL \rfd1_var~37_combout\ : std_logic;
SIGNAL \rfd1_var~38_combout\ : std_logic;
SIGNAL \reg7[6]~8_combout\ : std_logic;
SIGNAL \rfd1_var~39_combout\ : std_logic;
SIGNAL \rfd1_var~40_combout\ : std_logic;
SIGNAL \rfd1_var~41_combout\ : std_logic;
SIGNAL \rfd3[7]~input_o\ : std_logic;
SIGNAL \rfd1_var~42_combout\ : std_logic;
SIGNAL \rfd1_var~43_combout\ : std_logic;
SIGNAL \newpc[7]~input_o\ : std_logic;
SIGNAL \rfd1_var~44_combout\ : std_logic;
SIGNAL \reg7[7]~9_combout\ : std_logic;
SIGNAL \rfd1_var~45_combout\ : std_logic;
SIGNAL \rfd1_var~46_combout\ : std_logic;
SIGNAL \rfd1_var~47_combout\ : std_logic;
SIGNAL \rfd3[8]~input_o\ : std_logic;
SIGNAL \rfd1_var~51_combout\ : std_logic;
SIGNAL \newpc[8]~input_o\ : std_logic;
SIGNAL \reg7[8]~10_combout\ : std_logic;
SIGNAL \rfd1_var~52_combout\ : std_logic;
SIGNAL \rfd1_var~48_combout\ : std_logic;
SIGNAL \rfd1_var~49_combout\ : std_logic;
SIGNAL \rfd1_var~50_combout\ : std_logic;
SIGNAL \rfd1_var~53_combout\ : std_logic;
SIGNAL \rfd3[9]~input_o\ : std_logic;
SIGNAL \newpc[9]~input_o\ : std_logic;
SIGNAL \reg7[9]~11_combout\ : std_logic;
SIGNAL \rfd1_var~57_combout\ : std_logic;
SIGNAL \rfd1_var~58_combout\ : std_logic;
SIGNAL \rfd1_var~54_combout\ : std_logic;
SIGNAL \rfd1_var~55_combout\ : std_logic;
SIGNAL \rfd1_var~56_combout\ : std_logic;
SIGNAL \rfd1_var~59_combout\ : std_logic;
SIGNAL \rfd3[10]~input_o\ : std_logic;
SIGNAL \newpc[10]~input_o\ : std_logic;
SIGNAL \reg7[10]~12_combout\ : std_logic;
SIGNAL \rfd1_var~63_combout\ : std_logic;
SIGNAL \rfd1_var~64_combout\ : std_logic;
SIGNAL \rfd1_var~60_combout\ : std_logic;
SIGNAL \rfd1_var~61_combout\ : std_logic;
SIGNAL \rfd1_var~62_combout\ : std_logic;
SIGNAL \rfd1_var~65_combout\ : std_logic;
SIGNAL \rfd3[11]~input_o\ : std_logic;
SIGNAL \rfd1_var~66_combout\ : std_logic;
SIGNAL \rfd1_var~67_combout\ : std_logic;
SIGNAL \newpc[11]~input_o\ : std_logic;
SIGNAL \rfd1_var~68_combout\ : std_logic;
SIGNAL \rfd1_var~69_combout\ : std_logic;
SIGNAL \reg7[11]~13_combout\ : std_logic;
SIGNAL \rfd1_var~70_combout\ : std_logic;
SIGNAL \rfd1_var~71_combout\ : std_logic;
SIGNAL \rfd3[12]~input_o\ : std_logic;
SIGNAL \rfd1_var~75_combout\ : std_logic;
SIGNAL \newpc[12]~input_o\ : std_logic;
SIGNAL \reg7[12]~14_combout\ : std_logic;
SIGNAL \rfd1_var~76_combout\ : std_logic;
SIGNAL \rfd1_var~72_combout\ : std_logic;
SIGNAL \rfd1_var~73_combout\ : std_logic;
SIGNAL \rfd1_var~74_combout\ : std_logic;
SIGNAL \rfd1_var~77_combout\ : std_logic;
SIGNAL \rfd3[13]~input_o\ : std_logic;
SIGNAL \rfd1_var~78_combout\ : std_logic;
SIGNAL \rfd1_var~79_combout\ : std_logic;
SIGNAL \newpc[13]~input_o\ : std_logic;
SIGNAL \rfd1_var~80_combout\ : std_logic;
SIGNAL \reg7[13]~15_combout\ : std_logic;
SIGNAL \rfd1_var~81_combout\ : std_logic;
SIGNAL \rfd1_var~82_combout\ : std_logic;
SIGNAL \rfd1_var~83_combout\ : std_logic;
SIGNAL \rfd3[14]~input_o\ : std_logic;
SIGNAL \rfd1_var~84_combout\ : std_logic;
SIGNAL \rfd1_var~85_combout\ : std_logic;
SIGNAL \newpc[14]~input_o\ : std_logic;
SIGNAL \rfd1_var~86_combout\ : std_logic;
SIGNAL \rfd1_var~87_combout\ : std_logic;
SIGNAL \reg7[14]~16_combout\ : std_logic;
SIGNAL \rfd1_var~88_combout\ : std_logic;
SIGNAL \rfd1_var~89_combout\ : std_logic;
SIGNAL \rfd3[15]~input_o\ : std_logic;
SIGNAL \newpc[15]~input_o\ : std_logic;
SIGNAL \reg7[15]~17_combout\ : std_logic;
SIGNAL \rfd1_var~93_combout\ : std_logic;
SIGNAL \rfd1_var~94_combout\ : std_logic;
SIGNAL \rfd1_var~90_combout\ : std_logic;
SIGNAL \rfd1_var~91_combout\ : std_logic;
SIGNAL \rfd1_var~92_combout\ : std_logic;
SIGNAL \rfd1_var~95_combout\ : std_logic;
SIGNAL \rfa2[0]~input_o\ : std_logic;
SIGNAL \rfa2[1]~input_o\ : std_logic;
SIGNAL \rfd2_var~3_combout\ : std_logic;
SIGNAL \rfd2_var~4_combout\ : std_logic;
SIGNAL \rfd2_var~0_combout\ : std_logic;
SIGNAL \rfd2_var~1_combout\ : std_logic;
SIGNAL \rfa2[2]~input_o\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \rfd2_var~2_combout\ : std_logic;
SIGNAL \rfd2_var~5_combout\ : std_logic;
SIGNAL \rfd2_var~6_combout\ : std_logic;
SIGNAL \rfd2_var~7_combout\ : std_logic;
SIGNAL \rfd2_var~8_combout\ : std_logic;
SIGNAL \rfd2_var~9_combout\ : std_logic;
SIGNAL \rfd2_var~10_combout\ : std_logic;
SIGNAL \rfd2_var~11_combout\ : std_logic;
SIGNAL \rfd2_var~12_combout\ : std_logic;
SIGNAL \rfd2_var~13_combout\ : std_logic;
SIGNAL \rfd2_var~14_combout\ : std_logic;
SIGNAL \rfd2_var~15_combout\ : std_logic;
SIGNAL \rfd2_var~16_combout\ : std_logic;
SIGNAL \rfd2_var~17_combout\ : std_logic;
SIGNAL \rfd2_var~21_combout\ : std_logic;
SIGNAL \rfd2_var~22_combout\ : std_logic;
SIGNAL \rfd2_var~18_combout\ : std_logic;
SIGNAL \rfd2_var~19_combout\ : std_logic;
SIGNAL \rfd2_var~20_combout\ : std_logic;
SIGNAL \rfd2_var~23_combout\ : std_logic;
SIGNAL \rfd2_var~24_combout\ : std_logic;
SIGNAL \rfd2_var~25_combout\ : std_logic;
SIGNAL \rfd2_var~26_combout\ : std_logic;
SIGNAL \rfd2_var~27_combout\ : std_logic;
SIGNAL \rfd2_var~28_combout\ : std_logic;
SIGNAL \rfd2_var~29_combout\ : std_logic;
SIGNAL \rfd2_var~33_combout\ : std_logic;
SIGNAL \rfd2_var~34_combout\ : std_logic;
SIGNAL \rfd2_var~30_combout\ : std_logic;
SIGNAL \rfd2_var~31_combout\ : std_logic;
SIGNAL \rfd2_var~32_combout\ : std_logic;
SIGNAL \rfd2_var~35_combout\ : std_logic;
SIGNAL \rfd2_var~39_combout\ : std_logic;
SIGNAL \rfd2_var~40_combout\ : std_logic;
SIGNAL \rfd2_var~36_combout\ : std_logic;
SIGNAL \rfd2_var~37_combout\ : std_logic;
SIGNAL \rfd2_var~38_combout\ : std_logic;
SIGNAL \rfd2_var~41_combout\ : std_logic;
SIGNAL \rfd2_var~45_combout\ : std_logic;
SIGNAL \rfd2_var~46_combout\ : std_logic;
SIGNAL \rfd2_var~42_combout\ : std_logic;
SIGNAL \rfd2_var~43_combout\ : std_logic;
SIGNAL \rfd2_var~44_combout\ : std_logic;
SIGNAL \rfd2_var~47_combout\ : std_logic;
SIGNAL \rfd2_var~48_combout\ : std_logic;
SIGNAL \rfd2_var~49_combout\ : std_logic;
SIGNAL \rfd2_var~50_combout\ : std_logic;
SIGNAL \rfd2_var~51_combout\ : std_logic;
SIGNAL \rfd2_var~52_combout\ : std_logic;
SIGNAL \rfd2_var~53_combout\ : std_logic;
SIGNAL \rfd2_var~57_combout\ : std_logic;
SIGNAL \rfd2_var~58_combout\ : std_logic;
SIGNAL \rfd2_var~54_combout\ : std_logic;
SIGNAL \rfd2_var~55_combout\ : std_logic;
SIGNAL \rfd2_var~56_combout\ : std_logic;
SIGNAL \rfd2_var~59_combout\ : std_logic;
SIGNAL \rfd2_var~63_combout\ : std_logic;
SIGNAL \rfd2_var~64_combout\ : std_logic;
SIGNAL \rfd2_var~60_combout\ : std_logic;
SIGNAL \rfd2_var~61_combout\ : std_logic;
SIGNAL \rfd2_var~62_combout\ : std_logic;
SIGNAL \rfd2_var~65_combout\ : std_logic;
SIGNAL \rfd2_var~69_combout\ : std_logic;
SIGNAL \rfd2_var~70_combout\ : std_logic;
SIGNAL \rfd2_var~66_combout\ : std_logic;
SIGNAL \rfd2_var~67_combout\ : std_logic;
SIGNAL \rfd2_var~68_combout\ : std_logic;
SIGNAL \rfd2_var~71_combout\ : std_logic;
SIGNAL \rfd2_var~72_combout\ : std_logic;
SIGNAL \rfd2_var~73_combout\ : std_logic;
SIGNAL \rfd2_var~74_combout\ : std_logic;
SIGNAL \rfd2_var~75_combout\ : std_logic;
SIGNAL \rfd2_var~76_combout\ : std_logic;
SIGNAL \rfd2_var~77_combout\ : std_logic;
SIGNAL \rfd2_var~81_combout\ : std_logic;
SIGNAL \rfd2_var~82_combout\ : std_logic;
SIGNAL \rfd2_var~78_combout\ : std_logic;
SIGNAL \rfd2_var~79_combout\ : std_logic;
SIGNAL \rfd2_var~80_combout\ : std_logic;
SIGNAL \rfd2_var~83_combout\ : std_logic;
SIGNAL \rfd2_var~84_combout\ : std_logic;
SIGNAL \rfd2_var~85_combout\ : std_logic;
SIGNAL \rfd2_var~86_combout\ : std_logic;
SIGNAL \rfd2_var~87_combout\ : std_logic;
SIGNAL \rfd2_var~88_combout\ : std_logic;
SIGNAL \rfd2_var~89_combout\ : std_logic;
SIGNAL \rfd2_var~90_combout\ : std_logic;
SIGNAL \rfd2_var~91_combout\ : std_logic;
SIGNAL \rfd2_var~92_combout\ : std_logic;
SIGNAL \rfd2_var~93_combout\ : std_logic;
SIGNAL \rfd2_var~94_combout\ : std_logic;
SIGNAL \rfd2_var~95_combout\ : std_logic;
SIGNAL \R7|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_reg:4:R|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_reg:6:R|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_reg:5:R|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_reg:3:R|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_reg:1:R|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_reg:0:R|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_reg:2:R|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_pr5invalid~input_o\ : std_logic;

BEGIN

ww_rfa1 <= rfa1;
ww_rfa2 <= rfa2;
ww_rfa3 <= rfa3;
ww_rst <= rst;
ww_clk <= clk;
ww_rfwr <= rfwr;
ww_pr5invalid <= pr5invalid;
ww_pr5trfwr <= pr5trfwr;
ww_newpc <= newpc;
ww_rfd3 <= rfd3;
ww_pr5ir <= pr5ir;
rfd1 <= ww_rfd1;
rfd2 <= ww_rfd2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\ALT_INV_pr5invalid~input_o\ <= NOT \pr5invalid~input_o\;

-- Location: IOOBUF_X35_Y73_N16
\rfd1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rfd1_var~5_combout\,
	devoe => ww_devoe,
	o => \rfd1[0]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\rfd1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rfd1_var~11_combout\,
	devoe => ww_devoe,
	o => \rfd1[1]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\rfd1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rfd1_var~17_combout\,
	devoe => ww_devoe,
	o => \rfd1[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\rfd1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rfd1_var~23_combout\,
	devoe => ww_devoe,
	o => \rfd1[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\rfd1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rfd1_var~29_combout\,
	devoe => ww_devoe,
	o => \rfd1[4]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\rfd1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rfd1_var~35_combout\,
	devoe => ww_devoe,
	o => \rfd1[5]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\rfd1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rfd1_var~41_combout\,
	devoe => ww_devoe,
	o => \rfd1[6]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\rfd1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rfd1_var~47_combout\,
	devoe => ww_devoe,
	o => \rfd1[7]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\rfd1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rfd1_var~53_combout\,
	devoe => ww_devoe,
	o => \rfd1[8]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\rfd1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rfd1_var~59_combout\,
	devoe => ww_devoe,
	o => \rfd1[9]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\rfd1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rfd1_var~65_combout\,
	devoe => ww_devoe,
	o => \rfd1[10]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\rfd1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rfd1_var~71_combout\,
	devoe => ww_devoe,
	o => \rfd1[11]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\rfd1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rfd1_var~77_combout\,
	devoe => ww_devoe,
	o => \rfd1[12]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\rfd1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rfd1_var~83_combout\,
	devoe => ww_devoe,
	o => \rfd1[13]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\rfd1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rfd1_var~89_combout\,
	devoe => ww_devoe,
	o => \rfd1[14]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\rfd1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rfd1_var~95_combout\,
	devoe => ww_devoe,
	o => \rfd1[15]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\rfd2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rfd2_var~5_combout\,
	devoe => ww_devoe,
	o => \rfd2[0]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\rfd2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rfd2_var~11_combout\,
	devoe => ww_devoe,
	o => \rfd2[1]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\rfd2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rfd2_var~17_combout\,
	devoe => ww_devoe,
	o => \rfd2[2]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\rfd2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rfd2_var~23_combout\,
	devoe => ww_devoe,
	o => \rfd2[3]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\rfd2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rfd2_var~29_combout\,
	devoe => ww_devoe,
	o => \rfd2[4]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\rfd2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rfd2_var~35_combout\,
	devoe => ww_devoe,
	o => \rfd2[5]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\rfd2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rfd2_var~41_combout\,
	devoe => ww_devoe,
	o => \rfd2[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\rfd2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rfd2_var~47_combout\,
	devoe => ww_devoe,
	o => \rfd2[7]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\rfd2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rfd2_var~53_combout\,
	devoe => ww_devoe,
	o => \rfd2[8]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\rfd2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rfd2_var~59_combout\,
	devoe => ww_devoe,
	o => \rfd2[9]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\rfd2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rfd2_var~65_combout\,
	devoe => ww_devoe,
	o => \rfd2[10]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\rfd2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rfd2_var~71_combout\,
	devoe => ww_devoe,
	o => \rfd2[11]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\rfd2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rfd2_var~77_combout\,
	devoe => ww_devoe,
	o => \rfd2[12]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\rfd2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rfd2_var~83_combout\,
	devoe => ww_devoe,
	o => \rfd2[13]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\rfd2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rfd2_var~89_combout\,
	devoe => ww_devoe,
	o => \rfd2[14]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\rfd2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rfd2_var~95_combout\,
	devoe => ww_devoe,
	o => \rfd2[15]~output_o\);

-- Location: IOIBUF_X58_Y73_N22
\rfa1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rfa1(1),
	o => \rfa1[1]~input_o\);

-- Location: IOIBUF_X65_Y73_N8
\rfa1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rfa1(0),
	o => \rfa1[0]~input_o\);

-- Location: IOIBUF_X65_Y73_N15
\rfa1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rfa1(2),
	o => \rfa1[2]~input_o\);

-- Location: LCCOMB_X61_Y70_N16
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\rfa1[1]~input_o\ & (\rfa1[0]~input_o\ & \rfa1[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[1]~input_o\,
	datac => \rfa1[0]~input_o\,
	datad => \rfa1[2]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X49_Y73_N15
\rfd3[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rfd3(0),
	o => \rfd3[0]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: IOIBUF_X49_Y73_N22
\rfa3[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rfa3(1),
	o => \rfa3[1]~input_o\);

-- Location: IOIBUF_X96_Y73_N22
\rfa3[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rfa3(2),
	o => \rfa3[2]~input_o\);

-- Location: IOIBUF_X33_Y73_N1
\pr5ir[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5ir(15),
	o => \pr5ir[15]~input_o\);

-- Location: IOIBUF_X33_Y73_N8
\pr5ir[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5ir(14),
	o => \pr5ir[14]~input_o\);

-- Location: LCCOMB_X33_Y72_N0
\wr_rf~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \wr_rf~2_combout\ = (!\pr5ir[15]~input_o\ & !\pr5ir[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pr5ir[15]~input_o\,
	datad => \pr5ir[14]~input_o\,
	combout => \wr_rf~2_combout\);

-- Location: IOIBUF_X27_Y73_N22
\rfa3[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rfa3(0),
	o => \rfa3[0]~input_o\);

-- Location: IOIBUF_X38_Y73_N15
\pr5ir[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5ir(0),
	o => \pr5ir[0]~input_o\);

-- Location: IOIBUF_X38_Y73_N1
\pr5ir[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5ir(12),
	o => \pr5ir[12]~input_o\);

-- Location: IOIBUF_X38_Y73_N8
\pr5trfwr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5trfwr,
	o => \pr5trfwr~input_o\);

-- Location: IOIBUF_X38_Y73_N22
\pr5ir[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5ir(1),
	o => \pr5ir[1]~input_o\);

-- Location: LCCOMB_X38_Y72_N8
\wr_rf~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \wr_rf~1_combout\ = (!\pr5ir[12]~input_o\ & (!\pr5trfwr~input_o\ & (\pr5ir[0]~input_o\ $ (\pr5ir[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr5ir[0]~input_o\,
	datab => \pr5ir[12]~input_o\,
	datac => \pr5trfwr~input_o\,
	datad => \pr5ir[1]~input_o\,
	combout => \wr_rf~1_combout\);

-- Location: IOIBUF_X47_Y73_N15
\rfwr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rfwr,
	o => \rfwr~input_o\);

-- Location: IOIBUF_X54_Y73_N1
\pr5invalid~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5invalid,
	o => \pr5invalid~input_o\);

-- Location: LCCOMB_X58_Y69_N18
\wr_rf~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wr_rf~0_combout\ = (\rfwr~input_o\ & !\pr5invalid~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfwr~input_o\,
	datac => \pr5invalid~input_o\,
	combout => \wr_rf~0_combout\);

-- Location: LCCOMB_X58_Y69_N12
\wrarr1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wrarr1[0]~0_combout\ = (!\rfa3[0]~input_o\ & (\wr_rf~0_combout\ & ((!\wr_rf~1_combout\) # (!\wr_rf~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_rf~2_combout\,
	datab => \rfa3[0]~input_o\,
	datac => \wr_rf~1_combout\,
	datad => \wr_rf~0_combout\,
	combout => \wrarr1[0]~0_combout\);

-- Location: LCCOMB_X58_Y69_N0
\wrarr1[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \wrarr1[0]~3_combout\ = (!\rfa3[1]~input_o\ & (!\rfa3[2]~input_o\ & \wrarr1[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rfa3[1]~input_o\,
	datac => \rfa3[2]~input_o\,
	datad => \wrarr1[0]~0_combout\,
	combout => \wrarr1[0]~3_combout\);

-- Location: FF_X60_Y69_N19
\inst_reg:0:R|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[0]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:0:R|q\(0));

-- Location: LCCOMB_X58_Y69_N6
\reg7[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg7[15]~0_combout\ = (\rfa3[0]~input_o\ & (\wr_rf~0_combout\ & ((!\wr_rf~1_combout\) # (!\wr_rf~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_rf~2_combout\,
	datab => \rfa3[0]~input_o\,
	datac => \wr_rf~1_combout\,
	datad => \wr_rf~0_combout\,
	combout => \reg7[15]~0_combout\);

-- Location: LCCOMB_X59_Y70_N24
\wrarr1[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \wrarr1[1]~2_combout\ = (!\rfa3[2]~input_o\ & (\reg7[15]~0_combout\ & !\rfa3[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa3[2]~input_o\,
	datab => \reg7[15]~0_combout\,
	datac => \rfa3[1]~input_o\,
	combout => \wrarr1[1]~2_combout\);

-- Location: FF_X60_Y69_N1
\inst_reg:1:R|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[0]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:1:R|q\(0));

-- Location: LCCOMB_X60_Y69_N0
\rfd1_var~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~0_combout\ = (\rfa1[1]~input_o\ & (((\rfa1[0]~input_o\)))) # (!\rfa1[1]~input_o\ & ((\rfa1[0]~input_o\ & ((\inst_reg:1:R|q\(0)))) # (!\rfa1[0]~input_o\ & (\inst_reg:0:R|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[1]~input_o\,
	datab => \inst_reg:0:R|q\(0),
	datac => \inst_reg:1:R|q\(0),
	datad => \rfa1[0]~input_o\,
	combout => \rfd1_var~0_combout\);

-- Location: LCCOMB_X58_Y69_N26
\wrarr1[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \wrarr1[3]~4_combout\ = (\rfa3[1]~input_o\ & (!\rfa3[2]~input_o\ & \reg7[15]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rfa3[1]~input_o\,
	datac => \rfa3[2]~input_o\,
	datad => \reg7[15]~0_combout\,
	combout => \wrarr1[3]~4_combout\);

-- Location: FF_X59_Y68_N3
\inst_reg:3:R|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[0]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:3:R|q\(0));

-- Location: LCCOMB_X59_Y70_N22
\wrarr1[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \wrarr1[2]~1_combout\ = (!\rfa3[2]~input_o\ & (\wrarr1[0]~0_combout\ & \rfa3[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa3[2]~input_o\,
	datab => \wrarr1[0]~0_combout\,
	datac => \rfa3[1]~input_o\,
	combout => \wrarr1[2]~1_combout\);

-- Location: FF_X59_Y68_N1
\inst_reg:2:R|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[0]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:2:R|q\(0));

-- Location: LCCOMB_X59_Y68_N0
\rfd1_var~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~1_combout\ = (\rfd1_var~0_combout\ & ((\inst_reg:3:R|q\(0)) # ((!\rfa1[1]~input_o\)))) # (!\rfd1_var~0_combout\ & (((\inst_reg:2:R|q\(0) & \rfa1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd1_var~0_combout\,
	datab => \inst_reg:3:R|q\(0),
	datac => \inst_reg:2:R|q\(0),
	datad => \rfa1[1]~input_o\,
	combout => \rfd1_var~1_combout\);

-- Location: IOIBUF_X45_Y73_N1
\newpc[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_newpc(0),
	o => \newpc[0]~input_o\);

-- Location: LCCOMB_X59_Y69_N8
\rfd1_var~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~2_combout\ = (\Equal1~0_combout\ & ((\newpc[0]~input_o\) # ((\rfd1_var~1_combout\ & !\rfa1[2]~input_o\)))) # (!\Equal1~0_combout\ & (\rfd1_var~1_combout\ & ((!\rfa1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \rfd1_var~1_combout\,
	datac => \newpc[0]~input_o\,
	datad => \rfa1[2]~input_o\,
	combout => \rfd1_var~2_combout\);

-- Location: LCCOMB_X58_Y69_N20
\wrarr1[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \wrarr1[5]~5_combout\ = (!\rfa3[1]~input_o\ & (\rfa3[2]~input_o\ & \reg7[15]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rfa3[1]~input_o\,
	datac => \rfa3[2]~input_o\,
	datad => \reg7[15]~0_combout\,
	combout => \wrarr1[5]~5_combout\);

-- Location: FF_X59_Y69_N11
\inst_reg:5:R|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[0]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:5:R|q\(0));

-- Location: LCCOMB_X58_Y69_N22
\reg7[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg7[15]~1_combout\ = (\rfa3[1]~input_o\ & (\rfa3[2]~input_o\ & \reg7[15]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rfa3[1]~input_o\,
	datac => \rfa3[2]~input_o\,
	datad => \reg7[15]~0_combout\,
	combout => \reg7[15]~1_combout\);

-- Location: LCCOMB_X59_Y69_N20
\reg7[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg7[0]~2_combout\ = (\reg7[15]~1_combout\ & (\rfd3[0]~input_o\)) # (!\reg7[15]~1_combout\ & ((\newpc[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd3[0]~input_o\,
	datac => \newpc[0]~input_o\,
	datad => \reg7[15]~1_combout\,
	combout => \reg7[0]~2_combout\);

-- Location: FF_X59_Y69_N21
\R7|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg7[0]~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ALT_INV_pr5invalid~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R7|q\(0));

-- Location: LCCOMB_X59_Y70_N10
\wrarr1[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \wrarr1[6]~6_combout\ = (\rfa3[2]~input_o\ & (\wrarr1[0]~0_combout\ & \rfa3[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa3[2]~input_o\,
	datab => \wrarr1[0]~0_combout\,
	datac => \rfa3[1]~input_o\,
	combout => \wrarr1[6]~6_combout\);

-- Location: FF_X62_Y70_N1
\inst_reg:6:R|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[0]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:6:R|q\(0));

-- Location: LCCOMB_X59_Y70_N20
\wrarr1[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \wrarr1[4]~7_combout\ = (\rfa3[2]~input_o\ & (\wrarr1[0]~0_combout\ & !\rfa3[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa3[2]~input_o\,
	datab => \wrarr1[0]~0_combout\,
	datac => \rfa3[1]~input_o\,
	combout => \wrarr1[4]~7_combout\);

-- Location: FF_X62_Y70_N11
\inst_reg:4:R|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[0]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:4:R|q\(0));

-- Location: LCCOMB_X62_Y70_N0
\rfd1_var~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~3_combout\ = (\rfa1[0]~input_o\ & (\rfa1[1]~input_o\)) # (!\rfa1[0]~input_o\ & ((\rfa1[1]~input_o\ & (\inst_reg:6:R|q\(0))) # (!\rfa1[1]~input_o\ & ((\inst_reg:4:R|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[0]~input_o\,
	datab => \rfa1[1]~input_o\,
	datac => \inst_reg:6:R|q\(0),
	datad => \inst_reg:4:R|q\(0),
	combout => \rfd1_var~3_combout\);

-- Location: LCCOMB_X59_Y69_N30
\rfd1_var~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~4_combout\ = (\rfd1_var~3_combout\ & (((\R7|q\(0)) # (!\rfa1[0]~input_o\)))) # (!\rfd1_var~3_combout\ & (\inst_reg:5:R|q\(0) & ((\rfa1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_reg:5:R|q\(0),
	datab => \R7|q\(0),
	datac => \rfd1_var~3_combout\,
	datad => \rfa1[0]~input_o\,
	combout => \rfd1_var~4_combout\);

-- Location: LCCOMB_X59_Y69_N24
\rfd1_var~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~5_combout\ = (\rfd1_var~2_combout\) # ((!\Equal1~0_combout\ & (\rfd1_var~4_combout\ & \rfa1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \rfd1_var~2_combout\,
	datac => \rfd1_var~4_combout\,
	datad => \rfa1[2]~input_o\,
	combout => \rfd1_var~5_combout\);

-- Location: IOIBUF_X62_Y73_N15
\rfd3[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rfd3(1),
	o => \rfd3[1]~input_o\);

-- Location: FF_X59_Y68_N7
\inst_reg:3:R|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[1]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:3:R|q\(1));

-- Location: FF_X60_Y68_N11
\inst_reg:0:R|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[1]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:0:R|q\(1));

-- Location: FF_X60_Y68_N9
\inst_reg:1:R|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[1]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:1:R|q\(1));

-- Location: LCCOMB_X60_Y68_N8
\rfd1_var~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~6_combout\ = (\rfa1[1]~input_o\ & (((\rfa1[0]~input_o\)))) # (!\rfa1[1]~input_o\ & ((\rfa1[0]~input_o\ & ((\inst_reg:1:R|q\(1)))) # (!\rfa1[0]~input_o\ & (\inst_reg:0:R|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_reg:0:R|q\(1),
	datab => \rfa1[1]~input_o\,
	datac => \inst_reg:1:R|q\(1),
	datad => \rfa1[0]~input_o\,
	combout => \rfd1_var~6_combout\);

-- Location: FF_X59_Y68_N13
\inst_reg:2:R|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[1]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:2:R|q\(1));

-- Location: LCCOMB_X59_Y68_N12
\rfd1_var~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~7_combout\ = (\rfd1_var~6_combout\ & ((\inst_reg:3:R|q\(1)) # ((!\rfa1[1]~input_o\)))) # (!\rfd1_var~6_combout\ & (((\inst_reg:2:R|q\(1) & \rfa1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_reg:3:R|q\(1),
	datab => \rfd1_var~6_combout\,
	datac => \inst_reg:2:R|q\(1),
	datad => \rfa1[1]~input_o\,
	combout => \rfd1_var~7_combout\);

-- Location: IOIBUF_X27_Y73_N15
\newpc[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_newpc(1),
	o => \newpc[1]~input_o\);

-- Location: LCCOMB_X59_Y69_N18
\rfd1_var~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~8_combout\ = (\Equal1~0_combout\ & ((\newpc[1]~input_o\) # ((\rfd1_var~7_combout\ & !\rfa1[2]~input_o\)))) # (!\Equal1~0_combout\ & (\rfd1_var~7_combout\ & ((!\rfa1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \rfd1_var~7_combout\,
	datac => \newpc[1]~input_o\,
	datad => \rfa1[2]~input_o\,
	combout => \rfd1_var~8_combout\);

-- Location: FF_X62_Y70_N15
\inst_reg:4:R|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[1]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:4:R|q\(1));

-- Location: FF_X62_Y70_N21
\inst_reg:6:R|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[1]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:6:R|q\(1));

-- Location: LCCOMB_X62_Y70_N20
\rfd1_var~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~9_combout\ = (\rfa1[0]~input_o\ & (((\rfa1[1]~input_o\)))) # (!\rfa1[0]~input_o\ & ((\rfa1[1]~input_o\ & ((\inst_reg:6:R|q\(1)))) # (!\rfa1[1]~input_o\ & (\inst_reg:4:R|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[0]~input_o\,
	datab => \inst_reg:4:R|q\(1),
	datac => \inst_reg:6:R|q\(1),
	datad => \rfa1[1]~input_o\,
	combout => \rfd1_var~9_combout\);

-- Location: FF_X59_Y69_N5
\inst_reg:5:R|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[1]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:5:R|q\(1));

-- Location: LCCOMB_X59_Y69_N14
\reg7[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg7[1]~3_combout\ = (\reg7[15]~1_combout\ & ((\rfd3[1]~input_o\))) # (!\reg7[15]~1_combout\ & (\newpc[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \newpc[1]~input_o\,
	datab => \reg7[15]~1_combout\,
	datac => \rfd3[1]~input_o\,
	combout => \reg7[1]~3_combout\);

-- Location: FF_X59_Y69_N15
\R7|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg7[1]~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ALT_INV_pr5invalid~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R7|q\(1));

-- Location: LCCOMB_X59_Y69_N0
\rfd1_var~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~10_combout\ = (\rfd1_var~9_combout\ & (((\R7|q\(1)) # (!\rfa1[0]~input_o\)))) # (!\rfd1_var~9_combout\ & (\inst_reg:5:R|q\(1) & ((\rfa1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd1_var~9_combout\,
	datab => \inst_reg:5:R|q\(1),
	datac => \R7|q\(1),
	datad => \rfa1[0]~input_o\,
	combout => \rfd1_var~10_combout\);

-- Location: LCCOMB_X59_Y69_N2
\rfd1_var~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~11_combout\ = (\rfd1_var~8_combout\) # ((!\Equal1~0_combout\ & (\rfd1_var~10_combout\ & \rfa1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \rfd1_var~8_combout\,
	datac => \rfd1_var~10_combout\,
	datad => \rfa1[2]~input_o\,
	combout => \rfd1_var~11_combout\);

-- Location: IOIBUF_X85_Y73_N1
\newpc[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_newpc(2),
	o => \newpc[2]~input_o\);

-- Location: IOIBUF_X62_Y73_N22
\rfd3[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rfd3(2),
	o => \rfd3[2]~input_o\);

-- Location: LCCOMB_X63_Y70_N26
\reg7[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg7[2]~4_combout\ = (\reg7[15]~1_combout\ & ((\rfd3[2]~input_o\))) # (!\reg7[15]~1_combout\ & (\newpc[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg7[15]~1_combout\,
	datac => \newpc[2]~input_o\,
	datad => \rfd3[2]~input_o\,
	combout => \reg7[2]~4_combout\);

-- Location: FF_X63_Y70_N27
\R7|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg7[2]~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ALT_INV_pr5invalid~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R7|q\(2));

-- Location: FF_X61_Y70_N19
\inst_reg:5:R|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[2]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:5:R|q\(2));

-- Location: FF_X61_Y70_N13
\inst_reg:6:R|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[2]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:6:R|q\(2));

-- Location: FF_X62_Y70_N25
\inst_reg:4:R|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[2]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:4:R|q\(2));

-- Location: LCCOMB_X61_Y70_N12
\rfd1_var~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~15_combout\ = (\rfa1[1]~input_o\ & ((\rfa1[0]~input_o\) # ((\inst_reg:6:R|q\(2))))) # (!\rfa1[1]~input_o\ & (!\rfa1[0]~input_o\ & ((\inst_reg:4:R|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[1]~input_o\,
	datab => \rfa1[0]~input_o\,
	datac => \inst_reg:6:R|q\(2),
	datad => \inst_reg:4:R|q\(2),
	combout => \rfd1_var~15_combout\);

-- Location: LCCOMB_X61_Y70_N6
\rfd1_var~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~16_combout\ = (\rfa1[0]~input_o\ & ((\rfd1_var~15_combout\ & (\R7|q\(2))) # (!\rfd1_var~15_combout\ & ((\inst_reg:5:R|q\(2)))))) # (!\rfa1[0]~input_o\ & (((\rfd1_var~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R7|q\(2),
	datab => \inst_reg:5:R|q\(2),
	datac => \rfa1[0]~input_o\,
	datad => \rfd1_var~15_combout\,
	combout => \rfd1_var~16_combout\);

-- Location: FF_X59_Y68_N27
\inst_reg:3:R|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[2]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:3:R|q\(2));

-- Location: FF_X60_Y68_N7
\inst_reg:0:R|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[2]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:0:R|q\(2));

-- Location: FF_X60_Y68_N13
\inst_reg:1:R|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[2]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:1:R|q\(2));

-- Location: LCCOMB_X60_Y68_N12
\rfd1_var~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~12_combout\ = (\rfa1[1]~input_o\ & (((\rfa1[0]~input_o\)))) # (!\rfa1[1]~input_o\ & ((\rfa1[0]~input_o\ & ((\inst_reg:1:R|q\(2)))) # (!\rfa1[0]~input_o\ & (\inst_reg:0:R|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_reg:0:R|q\(2),
	datab => \rfa1[1]~input_o\,
	datac => \inst_reg:1:R|q\(2),
	datad => \rfa1[0]~input_o\,
	combout => \rfd1_var~12_combout\);

-- Location: FF_X59_Y68_N9
\inst_reg:2:R|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[2]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:2:R|q\(2));

-- Location: LCCOMB_X59_Y68_N8
\rfd1_var~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~13_combout\ = (\rfd1_var~12_combout\ & ((\inst_reg:3:R|q\(2)) # ((!\rfa1[1]~input_o\)))) # (!\rfd1_var~12_combout\ & (((\inst_reg:2:R|q\(2) & \rfa1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_reg:3:R|q\(2),
	datab => \rfd1_var~12_combout\,
	datac => \inst_reg:2:R|q\(2),
	datad => \rfa1[1]~input_o\,
	combout => \rfd1_var~13_combout\);

-- Location: LCCOMB_X63_Y70_N16
\rfd1_var~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~14_combout\ = (\Equal1~0_combout\ & ((\newpc[2]~input_o\) # ((!\rfa1[2]~input_o\ & \rfd1_var~13_combout\)))) # (!\Equal1~0_combout\ & (!\rfa1[2]~input_o\ & ((\rfd1_var~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \rfa1[2]~input_o\,
	datac => \newpc[2]~input_o\,
	datad => \rfd1_var~13_combout\,
	combout => \rfd1_var~14_combout\);

-- Location: LCCOMB_X61_Y70_N0
\rfd1_var~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~17_combout\ = (\rfd1_var~14_combout\) # ((\rfd1_var~16_combout\ & (!\Equal1~0_combout\ & \rfa1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd1_var~16_combout\,
	datab => \Equal1~0_combout\,
	datac => \rfd1_var~14_combout\,
	datad => \rfa1[2]~input_o\,
	combout => \rfd1_var~17_combout\);

-- Location: IOIBUF_X60_Y73_N8
\rfd3[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rfd3(3),
	o => \rfd3[3]~input_o\);

-- Location: IOIBUF_X81_Y73_N1
\newpc[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_newpc(3),
	o => \newpc[3]~input_o\);

-- Location: LCCOMB_X60_Y70_N8
\reg7[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg7[3]~5_combout\ = (\reg7[15]~1_combout\ & (\rfd3[3]~input_o\)) # (!\reg7[15]~1_combout\ & ((\newpc[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd3[3]~input_o\,
	datab => \reg7[15]~1_combout\,
	datac => \newpc[3]~input_o\,
	combout => \reg7[3]~5_combout\);

-- Location: FF_X60_Y70_N9
\R7|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg7[3]~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ALT_INV_pr5invalid~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R7|q\(3));

-- Location: FF_X61_Y70_N5
\inst_reg:5:R|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[3]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:5:R|q\(3));

-- Location: FF_X61_Y70_N15
\inst_reg:6:R|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[3]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:6:R|q\(3));

-- Location: FF_X62_Y70_N19
\inst_reg:4:R|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[3]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:4:R|q\(3));

-- Location: LCCOMB_X61_Y70_N14
\rfd1_var~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~21_combout\ = (\rfa1[1]~input_o\ & ((\rfa1[0]~input_o\) # ((\inst_reg:6:R|q\(3))))) # (!\rfa1[1]~input_o\ & (!\rfa1[0]~input_o\ & ((\inst_reg:4:R|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[1]~input_o\,
	datab => \rfa1[0]~input_o\,
	datac => \inst_reg:6:R|q\(3),
	datad => \inst_reg:4:R|q\(3),
	combout => \rfd1_var~21_combout\);

-- Location: LCCOMB_X61_Y70_N24
\rfd1_var~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~22_combout\ = (\rfa1[0]~input_o\ & ((\rfd1_var~21_combout\ & (\R7|q\(3))) # (!\rfd1_var~21_combout\ & ((\inst_reg:5:R|q\(3)))))) # (!\rfa1[0]~input_o\ & (((\rfd1_var~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R7|q\(3),
	datab => \inst_reg:5:R|q\(3),
	datac => \rfa1[0]~input_o\,
	datad => \rfd1_var~21_combout\,
	combout => \rfd1_var~22_combout\);

-- Location: FF_X61_Y69_N11
\inst_reg:3:R|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[3]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:3:R|q\(3));

-- Location: FF_X60_Y68_N3
\inst_reg:0:R|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[3]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:0:R|q\(3));

-- Location: FF_X60_Y68_N1
\inst_reg:1:R|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[3]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:1:R|q\(3));

-- Location: LCCOMB_X60_Y68_N0
\rfd1_var~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~18_combout\ = (\rfa1[1]~input_o\ & (((\rfa1[0]~input_o\)))) # (!\rfa1[1]~input_o\ & ((\rfa1[0]~input_o\ & ((\inst_reg:1:R|q\(3)))) # (!\rfa1[0]~input_o\ & (\inst_reg:0:R|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[1]~input_o\,
	datab => \inst_reg:0:R|q\(3),
	datac => \inst_reg:1:R|q\(3),
	datad => \rfa1[0]~input_o\,
	combout => \rfd1_var~18_combout\);

-- Location: FF_X61_Y69_N1
\inst_reg:2:R|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[3]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:2:R|q\(3));

-- Location: LCCOMB_X61_Y69_N0
\rfd1_var~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~19_combout\ = (\rfd1_var~18_combout\ & ((\inst_reg:3:R|q\(3)) # ((!\rfa1[1]~input_o\)))) # (!\rfd1_var~18_combout\ & (((\inst_reg:2:R|q\(3) & \rfa1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_reg:3:R|q\(3),
	datab => \rfd1_var~18_combout\,
	datac => \inst_reg:2:R|q\(3),
	datad => \rfa1[1]~input_o\,
	combout => \rfd1_var~19_combout\);

-- Location: LCCOMB_X61_Y70_N26
\rfd1_var~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~20_combout\ = (\rfa1[2]~input_o\ & (\Equal1~0_combout\ & ((\newpc[3]~input_o\)))) # (!\rfa1[2]~input_o\ & ((\rfd1_var~19_combout\) # ((\Equal1~0_combout\ & \newpc[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[2]~input_o\,
	datab => \Equal1~0_combout\,
	datac => \rfd1_var~19_combout\,
	datad => \newpc[3]~input_o\,
	combout => \rfd1_var~20_combout\);

-- Location: LCCOMB_X61_Y70_N10
\rfd1_var~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~23_combout\ = (\rfd1_var~20_combout\) # ((\rfa1[2]~input_o\ & (\rfd1_var~22_combout\ & !\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[2]~input_o\,
	datab => \rfd1_var~22_combout\,
	datac => \rfd1_var~20_combout\,
	datad => \Equal1~0_combout\,
	combout => \rfd1_var~23_combout\);

-- Location: IOIBUF_X60_Y73_N22
\rfd3[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rfd3(4),
	o => \rfd3[4]~input_o\);

-- Location: FF_X59_Y68_N23
\inst_reg:3:R|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[4]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:3:R|q\(4));

-- Location: FF_X60_Y68_N15
\inst_reg:0:R|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[4]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:0:R|q\(4));

-- Location: FF_X60_Y68_N29
\inst_reg:1:R|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[4]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:1:R|q\(4));

-- Location: LCCOMB_X60_Y68_N28
\rfd1_var~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~24_combout\ = (\rfa1[1]~input_o\ & (((\rfa1[0]~input_o\)))) # (!\rfa1[1]~input_o\ & ((\rfa1[0]~input_o\ & ((\inst_reg:1:R|q\(4)))) # (!\rfa1[0]~input_o\ & (\inst_reg:0:R|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[1]~input_o\,
	datab => \inst_reg:0:R|q\(4),
	datac => \inst_reg:1:R|q\(4),
	datad => \rfa1[0]~input_o\,
	combout => \rfd1_var~24_combout\);

-- Location: FF_X59_Y68_N21
\inst_reg:2:R|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[4]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:2:R|q\(4));

-- Location: LCCOMB_X59_Y68_N20
\rfd1_var~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~25_combout\ = (\rfd1_var~24_combout\ & ((\inst_reg:3:R|q\(4)) # ((!\rfa1[1]~input_o\)))) # (!\rfd1_var~24_combout\ & (((\inst_reg:2:R|q\(4) & \rfa1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_reg:3:R|q\(4),
	datab => \rfd1_var~24_combout\,
	datac => \inst_reg:2:R|q\(4),
	datad => \rfa1[1]~input_o\,
	combout => \rfd1_var~25_combout\);

-- Location: IOIBUF_X89_Y73_N8
\newpc[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_newpc(4),
	o => \newpc[4]~input_o\);

-- Location: LCCOMB_X61_Y70_N28
\rfd1_var~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~26_combout\ = (\rfa1[2]~input_o\ & (\Equal1~0_combout\ & ((\newpc[4]~input_o\)))) # (!\rfa1[2]~input_o\ & ((\rfd1_var~25_combout\) # ((\Equal1~0_combout\ & \newpc[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[2]~input_o\,
	datab => \Equal1~0_combout\,
	datac => \rfd1_var~25_combout\,
	datad => \newpc[4]~input_o\,
	combout => \rfd1_var~26_combout\);

-- Location: LCCOMB_X60_Y70_N10
\reg7[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg7[4]~6_combout\ = (\reg7[15]~1_combout\ & (\rfd3[4]~input_o\)) # (!\reg7[15]~1_combout\ & ((\newpc[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg7[15]~1_combout\,
	datac => \rfd3[4]~input_o\,
	datad => \newpc[4]~input_o\,
	combout => \reg7[4]~6_combout\);

-- Location: FF_X60_Y70_N11
\R7|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg7[4]~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ALT_INV_pr5invalid~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R7|q\(4));

-- Location: FF_X61_Y70_N31
\inst_reg:5:R|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[4]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:5:R|q\(4));

-- Location: FF_X61_Y70_N9
\inst_reg:6:R|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[4]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:6:R|q\(4));

-- Location: FF_X62_Y70_N5
\inst_reg:4:R|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[4]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:4:R|q\(4));

-- Location: LCCOMB_X61_Y70_N8
\rfd1_var~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~27_combout\ = (\rfa1[1]~input_o\ & ((\rfa1[0]~input_o\) # ((\inst_reg:6:R|q\(4))))) # (!\rfa1[1]~input_o\ & (!\rfa1[0]~input_o\ & ((\inst_reg:4:R|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[1]~input_o\,
	datab => \rfa1[0]~input_o\,
	datac => \inst_reg:6:R|q\(4),
	datad => \inst_reg:4:R|q\(4),
	combout => \rfd1_var~27_combout\);

-- Location: LCCOMB_X61_Y70_N2
\rfd1_var~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~28_combout\ = (\rfa1[0]~input_o\ & ((\rfd1_var~27_combout\ & (\R7|q\(4))) # (!\rfd1_var~27_combout\ & ((\inst_reg:5:R|q\(4)))))) # (!\rfa1[0]~input_o\ & (((\rfd1_var~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R7|q\(4),
	datab => \rfa1[0]~input_o\,
	datac => \inst_reg:5:R|q\(4),
	datad => \rfd1_var~27_combout\,
	combout => \rfd1_var~28_combout\);

-- Location: LCCOMB_X61_Y70_N20
\rfd1_var~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~29_combout\ = (\rfd1_var~26_combout\) # ((\rfa1[2]~input_o\ & (\rfd1_var~28_combout\ & !\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[2]~input_o\,
	datab => \rfd1_var~26_combout\,
	datac => \rfd1_var~28_combout\,
	datad => \Equal1~0_combout\,
	combout => \rfd1_var~29_combout\);

-- Location: IOIBUF_X69_Y73_N15
\rfd3[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rfd3(5),
	o => \rfd3[5]~input_o\);

-- Location: FF_X62_Y70_N17
\inst_reg:4:R|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[5]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:4:R|q\(5));

-- Location: FF_X62_Y70_N7
\inst_reg:6:R|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[5]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:6:R|q\(5));

-- Location: LCCOMB_X62_Y70_N6
\rfd1_var~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~33_combout\ = (\rfa1[0]~input_o\ & (((\rfa1[1]~input_o\)))) # (!\rfa1[0]~input_o\ & ((\rfa1[1]~input_o\ & ((\inst_reg:6:R|q\(5)))) # (!\rfa1[1]~input_o\ & (\inst_reg:4:R|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[0]~input_o\,
	datab => \inst_reg:4:R|q\(5),
	datac => \inst_reg:6:R|q\(5),
	datad => \rfa1[1]~input_o\,
	combout => \rfd1_var~33_combout\);

-- Location: FF_X61_Y70_N23
\inst_reg:5:R|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[5]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:5:R|q\(5));

-- Location: IOIBUF_X42_Y73_N8
\newpc[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_newpc(5),
	o => \newpc[5]~input_o\);

-- Location: LCCOMB_X63_Y69_N0
\reg7[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg7[5]~7_combout\ = (\reg7[15]~1_combout\ & ((\rfd3[5]~input_o\))) # (!\reg7[15]~1_combout\ & (\newpc[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg7[15]~1_combout\,
	datac => \newpc[5]~input_o\,
	datad => \rfd3[5]~input_o\,
	combout => \reg7[5]~7_combout\);

-- Location: FF_X63_Y69_N1
\R7|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg7[5]~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ALT_INV_pr5invalid~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R7|q\(5));

-- Location: LCCOMB_X62_Y70_N26
\rfd1_var~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~34_combout\ = (\rfd1_var~33_combout\ & (((\R7|q\(5)) # (!\rfa1[0]~input_o\)))) # (!\rfd1_var~33_combout\ & (\inst_reg:5:R|q\(5) & (\rfa1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd1_var~33_combout\,
	datab => \inst_reg:5:R|q\(5),
	datac => \rfa1[0]~input_o\,
	datad => \R7|q\(5),
	combout => \rfd1_var~34_combout\);

-- Location: FF_X60_Y68_N19
\inst_reg:0:R|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[5]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:0:R|q\(5));

-- Location: FF_X60_Y68_N17
\inst_reg:1:R|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[5]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:1:R|q\(5));

-- Location: LCCOMB_X60_Y68_N16
\rfd1_var~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~30_combout\ = (\rfa1[1]~input_o\ & (((\rfa1[0]~input_o\)))) # (!\rfa1[1]~input_o\ & ((\rfa1[0]~input_o\ & ((\inst_reg:1:R|q\(5)))) # (!\rfa1[0]~input_o\ & (\inst_reg:0:R|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[1]~input_o\,
	datab => \inst_reg:0:R|q\(5),
	datac => \inst_reg:1:R|q\(5),
	datad => \rfa1[0]~input_o\,
	combout => \rfd1_var~30_combout\);

-- Location: FF_X59_Y68_N25
\inst_reg:2:R|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[5]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:2:R|q\(5));

-- Location: FF_X59_Y68_N11
\inst_reg:3:R|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[5]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:3:R|q\(5));

-- Location: LCCOMB_X59_Y68_N24
\rfd1_var~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~31_combout\ = (\rfa1[1]~input_o\ & ((\rfd1_var~30_combout\ & ((\inst_reg:3:R|q\(5)))) # (!\rfd1_var~30_combout\ & (\inst_reg:2:R|q\(5))))) # (!\rfa1[1]~input_o\ & (\rfd1_var~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[1]~input_o\,
	datab => \rfd1_var~30_combout\,
	datac => \inst_reg:2:R|q\(5),
	datad => \inst_reg:3:R|q\(5),
	combout => \rfd1_var~31_combout\);

-- Location: LCCOMB_X59_Y68_N4
\rfd1_var~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~32_combout\ = (\Equal1~0_combout\ & ((\newpc[5]~input_o\) # ((\rfd1_var~31_combout\ & !\rfa1[2]~input_o\)))) # (!\Equal1~0_combout\ & (\rfd1_var~31_combout\ & ((!\rfa1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \rfd1_var~31_combout\,
	datac => \newpc[5]~input_o\,
	datad => \rfa1[2]~input_o\,
	combout => \rfd1_var~32_combout\);

-- Location: LCCOMB_X59_Y68_N30
\rfd1_var~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~35_combout\ = (\rfd1_var~32_combout\) # ((!\Equal1~0_combout\ & (\rfd1_var~34_combout\ & \rfa1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \rfd1_var~34_combout\,
	datac => \rfd1_var~32_combout\,
	datad => \rfa1[2]~input_o\,
	combout => \rfd1_var~35_combout\);

-- Location: IOIBUF_X85_Y73_N8
\newpc[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_newpc(6),
	o => \newpc[6]~input_o\);

-- Location: IOIBUF_X67_Y73_N8
\rfd3[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rfd3(6),
	o => \rfd3[6]~input_o\);

-- Location: FF_X59_Y68_N19
\inst_reg:3:R|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[6]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:3:R|q\(6));

-- Location: FF_X59_Y68_N17
\inst_reg:2:R|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[6]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:2:R|q\(6));

-- Location: FF_X60_Y68_N31
\inst_reg:0:R|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[6]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:0:R|q\(6));

-- Location: FF_X60_Y68_N5
\inst_reg:1:R|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[6]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:1:R|q\(6));

-- Location: LCCOMB_X60_Y68_N4
\rfd1_var~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~36_combout\ = (\rfa1[1]~input_o\ & (((\rfa1[0]~input_o\)))) # (!\rfa1[1]~input_o\ & ((\rfa1[0]~input_o\ & ((\inst_reg:1:R|q\(6)))) # (!\rfa1[0]~input_o\ & (\inst_reg:0:R|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_reg:0:R|q\(6),
	datab => \rfa1[1]~input_o\,
	datac => \inst_reg:1:R|q\(6),
	datad => \rfa1[0]~input_o\,
	combout => \rfd1_var~36_combout\);

-- Location: LCCOMB_X59_Y68_N16
\rfd1_var~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~37_combout\ = (\rfa1[1]~input_o\ & ((\rfd1_var~36_combout\ & (\inst_reg:3:R|q\(6))) # (!\rfd1_var~36_combout\ & ((\inst_reg:2:R|q\(6)))))) # (!\rfa1[1]~input_o\ & (((\rfd1_var~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[1]~input_o\,
	datab => \inst_reg:3:R|q\(6),
	datac => \inst_reg:2:R|q\(6),
	datad => \rfd1_var~36_combout\,
	combout => \rfd1_var~37_combout\);

-- Location: LCCOMB_X63_Y70_N4
\rfd1_var~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~38_combout\ = (\newpc[6]~input_o\ & ((\Equal1~0_combout\) # ((!\rfa1[2]~input_o\ & \rfd1_var~37_combout\)))) # (!\newpc[6]~input_o\ & (!\rfa1[2]~input_o\ & ((\rfd1_var~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \newpc[6]~input_o\,
	datab => \rfa1[2]~input_o\,
	datac => \Equal1~0_combout\,
	datad => \rfd1_var~37_combout\,
	combout => \rfd1_var~38_combout\);

-- Location: FF_X63_Y70_N31
\inst_reg:5:R|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[6]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:5:R|q\(6));

-- Location: LCCOMB_X63_Y70_N24
\reg7[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg7[6]~8_combout\ = (\reg7[15]~1_combout\ & (\rfd3[6]~input_o\)) # (!\reg7[15]~1_combout\ & ((\newpc[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd3[6]~input_o\,
	datab => \reg7[15]~1_combout\,
	datac => \newpc[6]~input_o\,
	combout => \reg7[6]~8_combout\);

-- Location: FF_X63_Y70_N25
\R7|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg7[6]~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ALT_INV_pr5invalid~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R7|q\(6));

-- Location: FF_X62_Y70_N31
\inst_reg:4:R|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[6]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:4:R|q\(6));

-- Location: FF_X62_Y70_N13
\inst_reg:6:R|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[6]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:6:R|q\(6));

-- Location: LCCOMB_X62_Y70_N12
\rfd1_var~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~39_combout\ = (\rfa1[0]~input_o\ & (((\rfa1[1]~input_o\)))) # (!\rfa1[0]~input_o\ & ((\rfa1[1]~input_o\ & ((\inst_reg:6:R|q\(6)))) # (!\rfa1[1]~input_o\ & (\inst_reg:4:R|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[0]~input_o\,
	datab => \inst_reg:4:R|q\(6),
	datac => \inst_reg:6:R|q\(6),
	datad => \rfa1[1]~input_o\,
	combout => \rfd1_var~39_combout\);

-- Location: LCCOMB_X63_Y70_N10
\rfd1_var~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~40_combout\ = (\rfa1[0]~input_o\ & ((\rfd1_var~39_combout\ & ((\R7|q\(6)))) # (!\rfd1_var~39_combout\ & (\inst_reg:5:R|q\(6))))) # (!\rfa1[0]~input_o\ & (((\rfd1_var~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_reg:5:R|q\(6),
	datab => \R7|q\(6),
	datac => \rfa1[0]~input_o\,
	datad => \rfd1_var~39_combout\,
	combout => \rfd1_var~40_combout\);

-- Location: LCCOMB_X63_Y70_N20
\rfd1_var~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~41_combout\ = (\rfd1_var~38_combout\) # ((!\Equal1~0_combout\ & (\rfa1[2]~input_o\ & \rfd1_var~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \rfa1[2]~input_o\,
	datac => \rfd1_var~38_combout\,
	datad => \rfd1_var~40_combout\,
	combout => \rfd1_var~41_combout\);

-- Location: IOIBUF_X79_Y73_N1
\rfd3[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rfd3(7),
	o => \rfd3[7]~input_o\);

-- Location: FF_X59_Y68_N15
\inst_reg:3:R|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[7]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:3:R|q\(7));

-- Location: FF_X59_Y68_N29
\inst_reg:2:R|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[7]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:2:R|q\(7));

-- Location: FF_X60_Y68_N27
\inst_reg:0:R|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[7]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:0:R|q\(7));

-- Location: FF_X60_Y68_N25
\inst_reg:1:R|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[7]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:1:R|q\(7));

-- Location: LCCOMB_X60_Y68_N24
\rfd1_var~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~42_combout\ = (\rfa1[1]~input_o\ & (((\rfa1[0]~input_o\)))) # (!\rfa1[1]~input_o\ & ((\rfa1[0]~input_o\ & ((\inst_reg:1:R|q\(7)))) # (!\rfa1[0]~input_o\ & (\inst_reg:0:R|q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[1]~input_o\,
	datab => \inst_reg:0:R|q\(7),
	datac => \inst_reg:1:R|q\(7),
	datad => \rfa1[0]~input_o\,
	combout => \rfd1_var~42_combout\);

-- Location: LCCOMB_X59_Y68_N28
\rfd1_var~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~43_combout\ = (\rfa1[1]~input_o\ & ((\rfd1_var~42_combout\ & (\inst_reg:3:R|q\(7))) # (!\rfd1_var~42_combout\ & ((\inst_reg:2:R|q\(7)))))) # (!\rfa1[1]~input_o\ & (((\rfd1_var~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[1]~input_o\,
	datab => \inst_reg:3:R|q\(7),
	datac => \inst_reg:2:R|q\(7),
	datad => \rfd1_var~42_combout\,
	combout => \rfd1_var~43_combout\);

-- Location: IOIBUF_X81_Y73_N8
\newpc[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_newpc(7),
	o => \newpc[7]~input_o\);

-- Location: LCCOMB_X63_Y70_N22
\rfd1_var~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~44_combout\ = (\rfd1_var~43_combout\ & (((\Equal1~0_combout\ & \newpc[7]~input_o\)) # (!\rfa1[2]~input_o\))) # (!\rfd1_var~43_combout\ & (((\Equal1~0_combout\ & \newpc[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd1_var~43_combout\,
	datab => \rfa1[2]~input_o\,
	datac => \Equal1~0_combout\,
	datad => \newpc[7]~input_o\,
	combout => \rfd1_var~44_combout\);

-- Location: LCCOMB_X63_Y70_N18
\reg7[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg7[7]~9_combout\ = (\reg7[15]~1_combout\ & (\rfd3[7]~input_o\)) # (!\reg7[15]~1_combout\ & ((\newpc[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rfd3[7]~input_o\,
	datac => \reg7[15]~1_combout\,
	datad => \newpc[7]~input_o\,
	combout => \reg7[7]~9_combout\);

-- Location: FF_X63_Y70_N19
\R7|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg7[7]~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ALT_INV_pr5invalid~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R7|q\(7));

-- Location: FF_X63_Y70_N9
\inst_reg:5:R|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[7]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:5:R|q\(7));

-- Location: FF_X62_Y70_N3
\inst_reg:4:R|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[7]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:4:R|q\(7));

-- Location: FF_X62_Y70_N9
\inst_reg:6:R|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[7]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:6:R|q\(7));

-- Location: LCCOMB_X62_Y70_N8
\rfd1_var~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~45_combout\ = (\rfa1[0]~input_o\ & (((\rfa1[1]~input_o\)))) # (!\rfa1[0]~input_o\ & ((\rfa1[1]~input_o\ & ((\inst_reg:6:R|q\(7)))) # (!\rfa1[1]~input_o\ & (\inst_reg:4:R|q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[0]~input_o\,
	datab => \inst_reg:4:R|q\(7),
	datac => \inst_reg:6:R|q\(7),
	datad => \rfa1[1]~input_o\,
	combout => \rfd1_var~45_combout\);

-- Location: LCCOMB_X63_Y70_N28
\rfd1_var~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~46_combout\ = (\rfa1[0]~input_o\ & ((\rfd1_var~45_combout\ & (\R7|q\(7))) # (!\rfd1_var~45_combout\ & ((\inst_reg:5:R|q\(7)))))) # (!\rfa1[0]~input_o\ & (((\rfd1_var~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[0]~input_o\,
	datab => \R7|q\(7),
	datac => \inst_reg:5:R|q\(7),
	datad => \rfd1_var~45_combout\,
	combout => \rfd1_var~46_combout\);

-- Location: LCCOMB_X63_Y70_N6
\rfd1_var~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~47_combout\ = (\rfd1_var~44_combout\) # ((!\Equal1~0_combout\ & (\rfa1[2]~input_o\ & \rfd1_var~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd1_var~44_combout\,
	datab => \Equal1~0_combout\,
	datac => \rfa1[2]~input_o\,
	datad => \rfd1_var~46_combout\,
	combout => \rfd1_var~47_combout\);

-- Location: IOIBUF_X72_Y73_N8
\rfd3[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rfd3(8),
	o => \rfd3[8]~input_o\);

-- Location: FF_X62_Y70_N23
\inst_reg:4:R|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[8]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:4:R|q\(8));

-- Location: FF_X62_Y70_N29
\inst_reg:6:R|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[8]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:6:R|q\(8));

-- Location: LCCOMB_X62_Y70_N28
\rfd1_var~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~51_combout\ = (\rfa1[0]~input_o\ & (((\rfa1[1]~input_o\)))) # (!\rfa1[0]~input_o\ & ((\rfa1[1]~input_o\ & ((\inst_reg:6:R|q\(8)))) # (!\rfa1[1]~input_o\ & (\inst_reg:4:R|q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[0]~input_o\,
	datab => \inst_reg:4:R|q\(8),
	datac => \inst_reg:6:R|q\(8),
	datad => \rfa1[1]~input_o\,
	combout => \rfd1_var~51_combout\);

-- Location: IOIBUF_X87_Y73_N15
\newpc[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_newpc(8),
	o => \newpc[8]~input_o\);

-- Location: LCCOMB_X63_Y69_N20
\reg7[8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg7[8]~10_combout\ = (\reg7[15]~1_combout\ & (\rfd3[8]~input_o\)) # (!\reg7[15]~1_combout\ & ((\newpc[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg7[15]~1_combout\,
	datac => \rfd3[8]~input_o\,
	datad => \newpc[8]~input_o\,
	combout => \reg7[8]~10_combout\);

-- Location: FF_X63_Y69_N21
\R7|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg7[8]~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ALT_INV_pr5invalid~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R7|q\(8));

-- Location: FF_X63_Y69_N11
\inst_reg:5:R|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[8]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:5:R|q\(8));

-- Location: LCCOMB_X63_Y69_N30
\rfd1_var~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~52_combout\ = (\rfd1_var~51_combout\ & ((\R7|q\(8)) # ((!\rfa1[0]~input_o\)))) # (!\rfd1_var~51_combout\ & (((\rfa1[0]~input_o\ & \inst_reg:5:R|q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd1_var~51_combout\,
	datab => \R7|q\(8),
	datac => \rfa1[0]~input_o\,
	datad => \inst_reg:5:R|q\(8),
	combout => \rfd1_var~52_combout\);

-- Location: FF_X61_Y69_N23
\inst_reg:3:R|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[8]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:3:R|q\(8));

-- Location: FF_X60_Y68_N23
\inst_reg:0:R|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[8]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:0:R|q\(8));

-- Location: FF_X60_Y68_N21
\inst_reg:1:R|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[8]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:1:R|q\(8));

-- Location: LCCOMB_X60_Y68_N20
\rfd1_var~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~48_combout\ = (\rfa1[1]~input_o\ & (((\rfa1[0]~input_o\)))) # (!\rfa1[1]~input_o\ & ((\rfa1[0]~input_o\ & ((\inst_reg:1:R|q\(8)))) # (!\rfa1[0]~input_o\ & (\inst_reg:0:R|q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_reg:0:R|q\(8),
	datab => \rfa1[1]~input_o\,
	datac => \inst_reg:1:R|q\(8),
	datad => \rfa1[0]~input_o\,
	combout => \rfd1_var~48_combout\);

-- Location: FF_X61_Y69_N13
\inst_reg:2:R|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[8]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:2:R|q\(8));

-- Location: LCCOMB_X61_Y69_N12
\rfd1_var~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~49_combout\ = (\rfd1_var~48_combout\ & ((\inst_reg:3:R|q\(8)) # ((!\rfa1[1]~input_o\)))) # (!\rfd1_var~48_combout\ & (((\inst_reg:2:R|q\(8) & \rfa1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_reg:3:R|q\(8),
	datab => \rfd1_var~48_combout\,
	datac => \inst_reg:2:R|q\(8),
	datad => \rfa1[1]~input_o\,
	combout => \rfd1_var~49_combout\);

-- Location: LCCOMB_X65_Y69_N0
\rfd1_var~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~50_combout\ = (\rfd1_var~49_combout\ & (((\Equal1~0_combout\ & \newpc[8]~input_o\)) # (!\rfa1[2]~input_o\))) # (!\rfd1_var~49_combout\ & (\Equal1~0_combout\ & ((\newpc[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd1_var~49_combout\,
	datab => \Equal1~0_combout\,
	datac => \rfa1[2]~input_o\,
	datad => \newpc[8]~input_o\,
	combout => \rfd1_var~50_combout\);

-- Location: LCCOMB_X65_Y69_N26
\rfd1_var~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~53_combout\ = (\rfd1_var~50_combout\) # ((\rfd1_var~52_combout\ & (!\Equal1~0_combout\ & \rfa1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd1_var~52_combout\,
	datab => \Equal1~0_combout\,
	datac => \rfa1[2]~input_o\,
	datad => \rfd1_var~50_combout\,
	combout => \rfd1_var~53_combout\);

-- Location: IOIBUF_X60_Y73_N1
\rfd3[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rfd3(9),
	o => \rfd3[9]~input_o\);

-- Location: IOIBUF_X83_Y73_N1
\newpc[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_newpc(9),
	o => \newpc[9]~input_o\);

-- Location: LCCOMB_X59_Y69_N6
\reg7[9]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg7[9]~11_combout\ = (\reg7[15]~1_combout\ & (\rfd3[9]~input_o\)) # (!\reg7[15]~1_combout\ & ((\newpc[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg7[15]~1_combout\,
	datac => \rfd3[9]~input_o\,
	datad => \newpc[9]~input_o\,
	combout => \reg7[9]~11_combout\);

-- Location: FF_X59_Y69_N7
\R7|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg7[9]~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ALT_INV_pr5invalid~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R7|q\(9));

-- Location: FF_X62_Y69_N17
\inst_reg:6:R|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[9]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:6:R|q\(9));

-- Location: FF_X62_Y69_N3
\inst_reg:4:R|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[9]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:4:R|q\(9));

-- Location: LCCOMB_X62_Y69_N16
\rfd1_var~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~57_combout\ = (\rfa1[0]~input_o\ & (\rfa1[1]~input_o\)) # (!\rfa1[0]~input_o\ & ((\rfa1[1]~input_o\ & (\inst_reg:6:R|q\(9))) # (!\rfa1[1]~input_o\ & ((\inst_reg:4:R|q\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[0]~input_o\,
	datab => \rfa1[1]~input_o\,
	datac => \inst_reg:6:R|q\(9),
	datad => \inst_reg:4:R|q\(9),
	combout => \rfd1_var~57_combout\);

-- Location: FF_X59_Y69_N29
\inst_reg:5:R|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[9]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:5:R|q\(9));

-- Location: LCCOMB_X62_Y69_N4
\rfd1_var~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~58_combout\ = (\rfd1_var~57_combout\ & ((\R7|q\(9)) # ((!\rfa1[0]~input_o\)))) # (!\rfd1_var~57_combout\ & (((\rfa1[0]~input_o\ & \inst_reg:5:R|q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R7|q\(9),
	datab => \rfd1_var~57_combout\,
	datac => \rfa1[0]~input_o\,
	datad => \inst_reg:5:R|q\(9),
	combout => \rfd1_var~58_combout\);

-- Location: FF_X60_Y69_N23
\inst_reg:0:R|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[9]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:0:R|q\(9));

-- Location: FF_X60_Y69_N13
\inst_reg:1:R|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[9]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:1:R|q\(9));

-- Location: LCCOMB_X60_Y69_N12
\rfd1_var~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~54_combout\ = (\rfa1[1]~input_o\ & (((\rfa1[0]~input_o\)))) # (!\rfa1[1]~input_o\ & ((\rfa1[0]~input_o\ & ((\inst_reg:1:R|q\(9)))) # (!\rfa1[0]~input_o\ & (\inst_reg:0:R|q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_reg:0:R|q\(9),
	datab => \rfa1[1]~input_o\,
	datac => \inst_reg:1:R|q\(9),
	datad => \rfa1[0]~input_o\,
	combout => \rfd1_var~54_combout\);

-- Location: FF_X61_Y69_N25
\inst_reg:2:R|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[9]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:2:R|q\(9));

-- Location: FF_X61_Y69_N19
\inst_reg:3:R|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[9]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:3:R|q\(9));

-- Location: LCCOMB_X61_Y69_N24
\rfd1_var~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~55_combout\ = (\rfd1_var~54_combout\ & (((\inst_reg:3:R|q\(9))) # (!\rfa1[1]~input_o\))) # (!\rfd1_var~54_combout\ & (\rfa1[1]~input_o\ & (\inst_reg:2:R|q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd1_var~54_combout\,
	datab => \rfa1[1]~input_o\,
	datac => \inst_reg:2:R|q\(9),
	datad => \inst_reg:3:R|q\(9),
	combout => \rfd1_var~55_combout\);

-- Location: LCCOMB_X65_Y69_N12
\rfd1_var~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~56_combout\ = (\newpc[9]~input_o\ & ((\Equal1~0_combout\) # ((\rfd1_var~55_combout\ & !\rfa1[2]~input_o\)))) # (!\newpc[9]~input_o\ & (\rfd1_var~55_combout\ & (!\rfa1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \newpc[9]~input_o\,
	datab => \rfd1_var~55_combout\,
	datac => \rfa1[2]~input_o\,
	datad => \Equal1~0_combout\,
	combout => \rfd1_var~56_combout\);

-- Location: LCCOMB_X65_Y69_N14
\rfd1_var~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~59_combout\ = (\rfd1_var~56_combout\) # ((\rfd1_var~58_combout\ & (!\Equal1~0_combout\ & \rfa1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd1_var~58_combout\,
	datab => \Equal1~0_combout\,
	datac => \rfa1[2]~input_o\,
	datad => \rfd1_var~56_combout\,
	combout => \rfd1_var~59_combout\);

-- Location: IOIBUF_X67_Y73_N1
\rfd3[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rfd3(10),
	o => \rfd3[10]~input_o\);

-- Location: FF_X63_Y69_N17
\inst_reg:5:R|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[10]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:5:R|q\(10));

-- Location: IOIBUF_X91_Y73_N15
\newpc[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_newpc(10),
	o => \newpc[10]~input_o\);

-- Location: LCCOMB_X63_Y69_N26
\reg7[10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg7[10]~12_combout\ = (\reg7[15]~1_combout\ & ((\rfd3[10]~input_o\))) # (!\reg7[15]~1_combout\ & (\newpc[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg7[15]~1_combout\,
	datab => \newpc[10]~input_o\,
	datac => \rfd3[10]~input_o\,
	combout => \reg7[10]~12_combout\);

-- Location: FF_X63_Y69_N27
\R7|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg7[10]~12_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ALT_INV_pr5invalid~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R7|q\(10));

-- Location: FF_X62_Y69_N1
\inst_reg:4:R|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[10]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:4:R|q\(10));

-- Location: FF_X62_Y69_N31
\inst_reg:6:R|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[10]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:6:R|q\(10));

-- Location: LCCOMB_X62_Y69_N30
\rfd1_var~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~63_combout\ = (\rfa1[0]~input_o\ & (((\rfa1[1]~input_o\)))) # (!\rfa1[0]~input_o\ & ((\rfa1[1]~input_o\ & ((\inst_reg:6:R|q\(10)))) # (!\rfa1[1]~input_o\ & (\inst_reg:4:R|q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[0]~input_o\,
	datab => \inst_reg:4:R|q\(10),
	datac => \inst_reg:6:R|q\(10),
	datad => \rfa1[1]~input_o\,
	combout => \rfd1_var~63_combout\);

-- Location: LCCOMB_X65_Y69_N10
\rfd1_var~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~64_combout\ = (\rfa1[0]~input_o\ & ((\rfd1_var~63_combout\ & ((\R7|q\(10)))) # (!\rfd1_var~63_combout\ & (\inst_reg:5:R|q\(10))))) # (!\rfa1[0]~input_o\ & (((\rfd1_var~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_reg:5:R|q\(10),
	datab => \R7|q\(10),
	datac => \rfa1[0]~input_o\,
	datad => \rfd1_var~63_combout\,
	combout => \rfd1_var~64_combout\);

-- Location: FF_X61_Y69_N7
\inst_reg:3:R|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[10]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:3:R|q\(10));

-- Location: FF_X61_Y69_N5
\inst_reg:2:R|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[10]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:2:R|q\(10));

-- Location: FF_X60_Y69_N27
\inst_reg:0:R|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[10]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:0:R|q\(10));

-- Location: FF_X60_Y69_N9
\inst_reg:1:R|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[10]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:1:R|q\(10));

-- Location: LCCOMB_X60_Y69_N8
\rfd1_var~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~60_combout\ = (\rfa1[1]~input_o\ & (((\rfa1[0]~input_o\)))) # (!\rfa1[1]~input_o\ & ((\rfa1[0]~input_o\ & ((\inst_reg:1:R|q\(10)))) # (!\rfa1[0]~input_o\ & (\inst_reg:0:R|q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_reg:0:R|q\(10),
	datab => \rfa1[1]~input_o\,
	datac => \inst_reg:1:R|q\(10),
	datad => \rfa1[0]~input_o\,
	combout => \rfd1_var~60_combout\);

-- Location: LCCOMB_X61_Y69_N4
\rfd1_var~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~61_combout\ = (\rfa1[1]~input_o\ & ((\rfd1_var~60_combout\ & (\inst_reg:3:R|q\(10))) # (!\rfd1_var~60_combout\ & ((\inst_reg:2:R|q\(10)))))) # (!\rfa1[1]~input_o\ & (((\rfd1_var~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_reg:3:R|q\(10),
	datab => \rfa1[1]~input_o\,
	datac => \inst_reg:2:R|q\(10),
	datad => \rfd1_var~60_combout\,
	combout => \rfd1_var~61_combout\);

-- Location: LCCOMB_X65_Y69_N8
\rfd1_var~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~62_combout\ = (\rfd1_var~61_combout\ & (((\Equal1~0_combout\ & \newpc[10]~input_o\)) # (!\rfa1[2]~input_o\))) # (!\rfd1_var~61_combout\ & (\Equal1~0_combout\ & ((\newpc[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd1_var~61_combout\,
	datab => \Equal1~0_combout\,
	datac => \rfa1[2]~input_o\,
	datad => \newpc[10]~input_o\,
	combout => \rfd1_var~62_combout\);

-- Location: LCCOMB_X65_Y69_N4
\rfd1_var~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~65_combout\ = (\rfd1_var~62_combout\) # ((\rfd1_var~64_combout\ & (\rfa1[2]~input_o\ & !\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd1_var~64_combout\,
	datab => \rfd1_var~62_combout\,
	datac => \rfa1[2]~input_o\,
	datad => \Equal1~0_combout\,
	combout => \rfd1_var~65_combout\);

-- Location: IOIBUF_X79_Y73_N8
\rfd3[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rfd3(11),
	o => \rfd3[11]~input_o\);

-- Location: FF_X60_Y69_N31
\inst_reg:0:R|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[11]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:0:R|q\(11));

-- Location: FF_X60_Y69_N29
\inst_reg:1:R|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[11]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:1:R|q\(11));

-- Location: LCCOMB_X60_Y69_N28
\rfd1_var~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~66_combout\ = (\rfa1[1]~input_o\ & (((\rfa1[0]~input_o\)))) # (!\rfa1[1]~input_o\ & ((\rfa1[0]~input_o\ & ((\inst_reg:1:R|q\(11)))) # (!\rfa1[0]~input_o\ & (\inst_reg:0:R|q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_reg:0:R|q\(11),
	datab => \rfa1[1]~input_o\,
	datac => \inst_reg:1:R|q\(11),
	datad => \rfa1[0]~input_o\,
	combout => \rfd1_var~66_combout\);

-- Location: FF_X61_Y69_N3
\inst_reg:3:R|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[11]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:3:R|q\(11));

-- Location: FF_X61_Y69_N9
\inst_reg:2:R|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[11]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:2:R|q\(11));

-- Location: LCCOMB_X61_Y69_N8
\rfd1_var~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~67_combout\ = (\rfd1_var~66_combout\ & ((\inst_reg:3:R|q\(11)) # ((!\rfa1[1]~input_o\)))) # (!\rfd1_var~66_combout\ & (((\inst_reg:2:R|q\(11) & \rfa1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd1_var~66_combout\,
	datab => \inst_reg:3:R|q\(11),
	datac => \inst_reg:2:R|q\(11),
	datad => \rfa1[1]~input_o\,
	combout => \rfd1_var~67_combout\);

-- Location: IOIBUF_X74_Y73_N22
\newpc[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_newpc(11),
	o => \newpc[11]~input_o\);

-- Location: LCCOMB_X65_Y69_N6
\rfd1_var~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~68_combout\ = (\rfd1_var~67_combout\ & (((\Equal1~0_combout\ & \newpc[11]~input_o\)) # (!\rfa1[2]~input_o\))) # (!\rfd1_var~67_combout\ & (\Equal1~0_combout\ & ((\newpc[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd1_var~67_combout\,
	datab => \Equal1~0_combout\,
	datac => \rfa1[2]~input_o\,
	datad => \newpc[11]~input_o\,
	combout => \rfd1_var~68_combout\);

-- Location: FF_X62_Y69_N27
\inst_reg:6:R|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[11]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:6:R|q\(11));

-- Location: FF_X62_Y69_N13
\inst_reg:4:R|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[11]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:4:R|q\(11));

-- Location: LCCOMB_X62_Y69_N26
\rfd1_var~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~69_combout\ = (\rfa1[0]~input_o\ & (\rfa1[1]~input_o\)) # (!\rfa1[0]~input_o\ & ((\rfa1[1]~input_o\ & (\inst_reg:6:R|q\(11))) # (!\rfa1[1]~input_o\ & ((\inst_reg:4:R|q\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[0]~input_o\,
	datab => \rfa1[1]~input_o\,
	datac => \inst_reg:6:R|q\(11),
	datad => \inst_reg:4:R|q\(11),
	combout => \rfd1_var~69_combout\);

-- Location: FF_X63_Y69_N13
\inst_reg:5:R|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[11]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:5:R|q\(11));

-- Location: LCCOMB_X63_Y69_N14
\reg7[11]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg7[11]~13_combout\ = (\reg7[15]~1_combout\ & ((\rfd3[11]~input_o\))) # (!\reg7[15]~1_combout\ & (\newpc[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \newpc[11]~input_o\,
	datac => \rfd3[11]~input_o\,
	datad => \reg7[15]~1_combout\,
	combout => \reg7[11]~13_combout\);

-- Location: FF_X63_Y69_N15
\R7|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg7[11]~13_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ALT_INV_pr5invalid~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R7|q\(11));

-- Location: LCCOMB_X62_Y69_N6
\rfd1_var~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~70_combout\ = (\rfd1_var~69_combout\ & (((\R7|q\(11)) # (!\rfa1[0]~input_o\)))) # (!\rfd1_var~69_combout\ & (\inst_reg:5:R|q\(11) & ((\rfa1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd1_var~69_combout\,
	datab => \inst_reg:5:R|q\(11),
	datac => \R7|q\(11),
	datad => \rfa1[0]~input_o\,
	combout => \rfd1_var~70_combout\);

-- Location: LCCOMB_X65_Y69_N24
\rfd1_var~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~71_combout\ = (\rfd1_var~68_combout\) # ((\rfd1_var~70_combout\ & (\rfa1[2]~input_o\ & !\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd1_var~68_combout\,
	datab => \rfd1_var~70_combout\,
	datac => \rfa1[2]~input_o\,
	datad => \Equal1~0_combout\,
	combout => \rfd1_var~71_combout\);

-- Location: IOIBUF_X69_Y73_N1
\rfd3[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rfd3(12),
	o => \rfd3[12]~input_o\);

-- Location: FF_X62_Y69_N11
\inst_reg:4:R|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[12]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:4:R|q\(12));

-- Location: FF_X62_Y69_N25
\inst_reg:6:R|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[12]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:6:R|q\(12));

-- Location: LCCOMB_X62_Y69_N24
\rfd1_var~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~75_combout\ = (\rfa1[0]~input_o\ & (((\rfa1[1]~input_o\)))) # (!\rfa1[0]~input_o\ & ((\rfa1[1]~input_o\ & ((\inst_reg:6:R|q\(12)))) # (!\rfa1[1]~input_o\ & (\inst_reg:4:R|q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[0]~input_o\,
	datab => \inst_reg:4:R|q\(12),
	datac => \inst_reg:6:R|q\(12),
	datad => \rfa1[1]~input_o\,
	combout => \rfd1_var~75_combout\);

-- Location: IOIBUF_X87_Y73_N1
\newpc[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_newpc(12),
	o => \newpc[12]~input_o\);

-- Location: LCCOMB_X63_Y69_N18
\reg7[12]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg7[12]~14_combout\ = (\reg7[15]~1_combout\ & ((\rfd3[12]~input_o\))) # (!\reg7[15]~1_combout\ & (\newpc[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \newpc[12]~input_o\,
	datac => \rfd3[12]~input_o\,
	datad => \reg7[15]~1_combout\,
	combout => \reg7[12]~14_combout\);

-- Location: FF_X63_Y69_N19
\R7|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg7[12]~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ALT_INV_pr5invalid~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R7|q\(12));

-- Location: FF_X63_Y69_N9
\inst_reg:5:R|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[12]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:5:R|q\(12));

-- Location: LCCOMB_X62_Y69_N20
\rfd1_var~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~76_combout\ = (\rfd1_var~75_combout\ & ((\R7|q\(12)) # ((!\rfa1[0]~input_o\)))) # (!\rfd1_var~75_combout\ & (((\rfa1[0]~input_o\ & \inst_reg:5:R|q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd1_var~75_combout\,
	datab => \R7|q\(12),
	datac => \rfa1[0]~input_o\,
	datad => \inst_reg:5:R|q\(12),
	combout => \rfd1_var~76_combout\);

-- Location: FF_X60_Y69_N3
\inst_reg:0:R|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[12]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:0:R|q\(12));

-- Location: FF_X60_Y69_N17
\inst_reg:1:R|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[12]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:1:R|q\(12));

-- Location: LCCOMB_X60_Y69_N16
\rfd1_var~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~72_combout\ = (\rfa1[1]~input_o\ & (((\rfa1[0]~input_o\)))) # (!\rfa1[1]~input_o\ & ((\rfa1[0]~input_o\ & ((\inst_reg:1:R|q\(12)))) # (!\rfa1[0]~input_o\ & (\inst_reg:0:R|q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[1]~input_o\,
	datab => \inst_reg:0:R|q\(12),
	datac => \inst_reg:1:R|q\(12),
	datad => \rfa1[0]~input_o\,
	combout => \rfd1_var~72_combout\);

-- Location: FF_X61_Y69_N15
\inst_reg:3:R|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[12]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:3:R|q\(12));

-- Location: FF_X61_Y69_N21
\inst_reg:2:R|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[12]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:2:R|q\(12));

-- Location: LCCOMB_X61_Y69_N20
\rfd1_var~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~73_combout\ = (\rfd1_var~72_combout\ & ((\inst_reg:3:R|q\(12)) # ((!\rfa1[1]~input_o\)))) # (!\rfd1_var~72_combout\ & (((\inst_reg:2:R|q\(12) & \rfa1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd1_var~72_combout\,
	datab => \inst_reg:3:R|q\(12),
	datac => \inst_reg:2:R|q\(12),
	datad => \rfa1[1]~input_o\,
	combout => \rfd1_var~73_combout\);

-- Location: LCCOMB_X61_Y69_N16
\rfd1_var~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~74_combout\ = (\Equal1~0_combout\ & ((\newpc[12]~input_o\) # ((\rfd1_var~73_combout\ & !\rfa1[2]~input_o\)))) # (!\Equal1~0_combout\ & (\rfd1_var~73_combout\ & (!\rfa1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \rfd1_var~73_combout\,
	datac => \rfa1[2]~input_o\,
	datad => \newpc[12]~input_o\,
	combout => \rfd1_var~74_combout\);

-- Location: LCCOMB_X61_Y69_N26
\rfd1_var~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~77_combout\ = (\rfd1_var~74_combout\) # ((\rfd1_var~76_combout\ & (\rfa1[2]~input_o\ & !\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd1_var~76_combout\,
	datab => \rfd1_var~74_combout\,
	datac => \rfa1[2]~input_o\,
	datad => \Equal1~0_combout\,
	combout => \rfd1_var~77_combout\);

-- Location: IOIBUF_X52_Y73_N1
\rfd3[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rfd3(13),
	o => \rfd3[13]~input_o\);

-- Location: FF_X60_Y69_N15
\inst_reg:0:R|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[13]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:0:R|q\(13));

-- Location: FF_X60_Y69_N21
\inst_reg:1:R|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[13]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:1:R|q\(13));

-- Location: LCCOMB_X60_Y69_N20
\rfd1_var~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~78_combout\ = (\rfa1[1]~input_o\ & (((\rfa1[0]~input_o\)))) # (!\rfa1[1]~input_o\ & ((\rfa1[0]~input_o\ & ((\inst_reg:1:R|q\(13)))) # (!\rfa1[0]~input_o\ & (\inst_reg:0:R|q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[1]~input_o\,
	datab => \inst_reg:0:R|q\(13),
	datac => \inst_reg:1:R|q\(13),
	datad => \rfa1[0]~input_o\,
	combout => \rfd1_var~78_combout\);

-- Location: FF_X59_Y70_N9
\inst_reg:2:R|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[13]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:2:R|q\(13));

-- Location: FF_X58_Y70_N25
\inst_reg:3:R|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[13]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:3:R|q\(13));

-- Location: LCCOMB_X59_Y70_N8
\rfd1_var~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~79_combout\ = (\rfd1_var~78_combout\ & (((\inst_reg:3:R|q\(13))) # (!\rfa1[1]~input_o\))) # (!\rfd1_var~78_combout\ & (\rfa1[1]~input_o\ & (\inst_reg:2:R|q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd1_var~78_combout\,
	datab => \rfa1[1]~input_o\,
	datac => \inst_reg:2:R|q\(13),
	datad => \inst_reg:3:R|q\(13),
	combout => \rfd1_var~79_combout\);

-- Location: IOIBUF_X94_Y73_N1
\newpc[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_newpc(13),
	o => \newpc[13]~input_o\);

-- Location: LCCOMB_X63_Y69_N4
\rfd1_var~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~80_combout\ = (\rfa1[2]~input_o\ & (\Equal1~0_combout\ & ((\newpc[13]~input_o\)))) # (!\rfa1[2]~input_o\ & ((\rfd1_var~79_combout\) # ((\Equal1~0_combout\ & \newpc[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[2]~input_o\,
	datab => \Equal1~0_combout\,
	datac => \rfd1_var~79_combout\,
	datad => \newpc[13]~input_o\,
	combout => \rfd1_var~80_combout\);

-- Location: LCCOMB_X63_Y69_N24
\reg7[13]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg7[13]~15_combout\ = (\reg7[15]~1_combout\ & (\rfd3[13]~input_o\)) # (!\reg7[15]~1_combout\ & ((\newpc[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg7[15]~1_combout\,
	datac => \rfd3[13]~input_o\,
	datad => \newpc[13]~input_o\,
	combout => \reg7[13]~15_combout\);

-- Location: FF_X63_Y69_N25
\R7|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg7[13]~15_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ALT_INV_pr5invalid~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R7|q\(13));

-- Location: FF_X62_Y69_N9
\inst_reg:4:R|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[13]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:4:R|q\(13));

-- Location: FF_X62_Y69_N15
\inst_reg:6:R|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[13]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:6:R|q\(13));

-- Location: LCCOMB_X62_Y69_N14
\rfd1_var~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~81_combout\ = (\rfa1[0]~input_o\ & (((\rfa1[1]~input_o\)))) # (!\rfa1[0]~input_o\ & ((\rfa1[1]~input_o\ & ((\inst_reg:6:R|q\(13)))) # (!\rfa1[1]~input_o\ & (\inst_reg:4:R|q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[0]~input_o\,
	datab => \inst_reg:4:R|q\(13),
	datac => \inst_reg:6:R|q\(13),
	datad => \rfa1[1]~input_o\,
	combout => \rfd1_var~81_combout\);

-- Location: FF_X63_Y69_N23
\inst_reg:5:R|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[13]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:5:R|q\(13));

-- Location: LCCOMB_X62_Y69_N18
\rfd1_var~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~82_combout\ = (\rfa1[0]~input_o\ & ((\rfd1_var~81_combout\ & (\R7|q\(13))) # (!\rfd1_var~81_combout\ & ((\inst_reg:5:R|q\(13)))))) # (!\rfa1[0]~input_o\ & (((\rfd1_var~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[0]~input_o\,
	datab => \R7|q\(13),
	datac => \rfd1_var~81_combout\,
	datad => \inst_reg:5:R|q\(13),
	combout => \rfd1_var~82_combout\);

-- Location: LCCOMB_X62_Y69_N28
\rfd1_var~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~83_combout\ = (\rfd1_var~80_combout\) # ((\rfd1_var~82_combout\ & (!\Equal1~0_combout\ & \rfa1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd1_var~80_combout\,
	datab => \rfd1_var~82_combout\,
	datac => \Equal1~0_combout\,
	datad => \rfa1[2]~input_o\,
	combout => \rfd1_var~83_combout\);

-- Location: IOIBUF_X58_Y73_N15
\rfd3[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rfd3(14),
	o => \rfd3[14]~input_o\);

-- Location: FF_X58_Y70_N27
\inst_reg:3:R|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[14]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:3:R|q\(14));

-- Location: FF_X59_Y70_N27
\inst_reg:2:R|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[14]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:2:R|q\(14));

-- Location: FF_X60_Y69_N11
\inst_reg:0:R|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[14]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:0:R|q\(14));

-- Location: FF_X60_Y69_N25
\inst_reg:1:R|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[14]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:1:R|q\(14));

-- Location: LCCOMB_X60_Y69_N24
\rfd1_var~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~84_combout\ = (\rfa1[1]~input_o\ & (((\rfa1[0]~input_o\)))) # (!\rfa1[1]~input_o\ & ((\rfa1[0]~input_o\ & ((\inst_reg:1:R|q\(14)))) # (!\rfa1[0]~input_o\ & (\inst_reg:0:R|q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_reg:0:R|q\(14),
	datab => \rfa1[1]~input_o\,
	datac => \inst_reg:1:R|q\(14),
	datad => \rfa1[0]~input_o\,
	combout => \rfd1_var~84_combout\);

-- Location: LCCOMB_X59_Y70_N26
\rfd1_var~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~85_combout\ = (\rfa1[1]~input_o\ & ((\rfd1_var~84_combout\ & (\inst_reg:3:R|q\(14))) # (!\rfd1_var~84_combout\ & ((\inst_reg:2:R|q\(14)))))) # (!\rfa1[1]~input_o\ & (((\rfd1_var~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_reg:3:R|q\(14),
	datab => \rfa1[1]~input_o\,
	datac => \inst_reg:2:R|q\(14),
	datad => \rfd1_var~84_combout\,
	combout => \rfd1_var~85_combout\);

-- Location: IOIBUF_X87_Y73_N22
\newpc[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_newpc(14),
	o => \newpc[14]~input_o\);

-- Location: LCCOMB_X59_Y70_N28
\rfd1_var~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~86_combout\ = (\rfa1[2]~input_o\ & (\Equal1~0_combout\ & ((\newpc[14]~input_o\)))) # (!\rfa1[2]~input_o\ & ((\rfd1_var~85_combout\) # ((\Equal1~0_combout\ & \newpc[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[2]~input_o\,
	datab => \Equal1~0_combout\,
	datac => \rfd1_var~85_combout\,
	datad => \newpc[14]~input_o\,
	combout => \rfd1_var~86_combout\);

-- Location: FF_X59_Y70_N15
\inst_reg:4:R|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[14]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:4:R|q\(14));

-- Location: FF_X62_Y69_N23
\inst_reg:6:R|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[14]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:6:R|q\(14));

-- Location: LCCOMB_X62_Y69_N22
\rfd1_var~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~87_combout\ = (\rfa1[0]~input_o\ & (((\rfa1[1]~input_o\)))) # (!\rfa1[0]~input_o\ & ((\rfa1[1]~input_o\ & ((\inst_reg:6:R|q\(14)))) # (!\rfa1[1]~input_o\ & (\inst_reg:4:R|q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[0]~input_o\,
	datab => \inst_reg:4:R|q\(14),
	datac => \inst_reg:6:R|q\(14),
	datad => \rfa1[1]~input_o\,
	combout => \rfd1_var~87_combout\);

-- Location: LCCOMB_X63_Y70_N2
\reg7[14]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg7[14]~16_combout\ = (\reg7[15]~1_combout\ & ((\rfd3[14]~input_o\))) # (!\reg7[15]~1_combout\ & (\newpc[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \newpc[14]~input_o\,
	datac => \reg7[15]~1_combout\,
	datad => \rfd3[14]~input_o\,
	combout => \reg7[14]~16_combout\);

-- Location: FF_X63_Y70_N3
\R7|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg7[14]~16_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ALT_INV_pr5invalid~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R7|q\(14));

-- Location: FF_X63_Y70_N1
\inst_reg:5:R|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[14]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:5:R|q\(14));

-- Location: LCCOMB_X63_Y70_N12
\rfd1_var~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~88_combout\ = (\rfd1_var~87_combout\ & ((\R7|q\(14)) # ((!\rfa1[0]~input_o\)))) # (!\rfd1_var~87_combout\ & (((\rfa1[0]~input_o\ & \inst_reg:5:R|q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd1_var~87_combout\,
	datab => \R7|q\(14),
	datac => \rfa1[0]~input_o\,
	datad => \inst_reg:5:R|q\(14),
	combout => \rfd1_var~88_combout\);

-- Location: LCCOMB_X59_Y70_N0
\rfd1_var~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~89_combout\ = (\rfd1_var~86_combout\) # ((\rfa1[2]~input_o\ & (\rfd1_var~88_combout\ & !\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa1[2]~input_o\,
	datab => \rfd1_var~86_combout\,
	datac => \rfd1_var~88_combout\,
	datad => \Equal1~0_combout\,
	combout => \rfd1_var~89_combout\);

-- Location: IOIBUF_X52_Y73_N15
\rfd3[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rfd3(15),
	o => \rfd3[15]~input_o\);

-- Location: FF_X58_Y69_N11
\inst_reg:5:R|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[15]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:5:R|q\(15));

-- Location: IOIBUF_X45_Y73_N8
\newpc[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_newpc(15),
	o => \newpc[15]~input_o\);

-- Location: LCCOMB_X58_Y69_N28
\reg7[15]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg7[15]~17_combout\ = (\reg7[15]~1_combout\ & ((\rfd3[15]~input_o\))) # (!\reg7[15]~1_combout\ & (\newpc[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg7[15]~1_combout\,
	datab => \newpc[15]~input_o\,
	datac => \rfd3[15]~input_o\,
	combout => \reg7[15]~17_combout\);

-- Location: FF_X58_Y69_N29
\R7|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg7[15]~17_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ALT_INV_pr5invalid~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R7|q\(15));

-- Location: FF_X59_Y70_N5
\inst_reg:4:R|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[15]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:4:R|q\(15));

-- Location: FF_X58_Y70_N31
\inst_reg:6:R|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[15]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:6:R|q\(15));

-- Location: LCCOMB_X58_Y70_N30
\rfd1_var~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~93_combout\ = (\rfa1[1]~input_o\ & (((\inst_reg:6:R|q\(15)) # (\rfa1[0]~input_o\)))) # (!\rfa1[1]~input_o\ & (\inst_reg:4:R|q\(15) & ((!\rfa1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_reg:4:R|q\(15),
	datab => \rfa1[1]~input_o\,
	datac => \inst_reg:6:R|q\(15),
	datad => \rfa1[0]~input_o\,
	combout => \rfd1_var~93_combout\);

-- Location: LCCOMB_X58_Y69_N30
\rfd1_var~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~94_combout\ = (\rfd1_var~93_combout\ & (((\R7|q\(15)) # (!\rfa1[0]~input_o\)))) # (!\rfd1_var~93_combout\ & (\inst_reg:5:R|q\(15) & ((\rfa1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_reg:5:R|q\(15),
	datab => \R7|q\(15),
	datac => \rfd1_var~93_combout\,
	datad => \rfa1[0]~input_o\,
	combout => \rfd1_var~94_combout\);

-- Location: FF_X58_Y70_N29
\inst_reg:3:R|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[15]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:3:R|q\(15));

-- Location: FF_X59_Y70_N19
\inst_reg:2:R|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[15]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:2:R|q\(15));

-- Location: FF_X60_Y69_N7
\inst_reg:0:R|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[15]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:0:R|q\(15));

-- Location: FF_X60_Y69_N5
\inst_reg:1:R|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rfd3[15]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \wrarr1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_reg:1:R|q\(15));

-- Location: LCCOMB_X60_Y69_N4
\rfd1_var~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~90_combout\ = (\rfa1[1]~input_o\ & (((\rfa1[0]~input_o\)))) # (!\rfa1[1]~input_o\ & ((\rfa1[0]~input_o\ & ((\inst_reg:1:R|q\(15)))) # (!\rfa1[0]~input_o\ & (\inst_reg:0:R|q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_reg:0:R|q\(15),
	datab => \rfa1[1]~input_o\,
	datac => \inst_reg:1:R|q\(15),
	datad => \rfa1[0]~input_o\,
	combout => \rfd1_var~90_combout\);

-- Location: LCCOMB_X59_Y70_N18
\rfd1_var~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~91_combout\ = (\rfa1[1]~input_o\ & ((\rfd1_var~90_combout\ & (\inst_reg:3:R|q\(15))) # (!\rfd1_var~90_combout\ & ((\inst_reg:2:R|q\(15)))))) # (!\rfa1[1]~input_o\ & (((\rfd1_var~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_reg:3:R|q\(15),
	datab => \rfa1[1]~input_o\,
	datac => \inst_reg:2:R|q\(15),
	datad => \rfd1_var~90_combout\,
	combout => \rfd1_var~91_combout\);

-- Location: LCCOMB_X58_Y69_N24
\rfd1_var~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~92_combout\ = (\rfd1_var~91_combout\ & (((\newpc[15]~input_o\ & \Equal1~0_combout\)) # (!\rfa1[2]~input_o\))) # (!\rfd1_var~91_combout\ & (((\newpc[15]~input_o\ & \Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd1_var~91_combout\,
	datab => \rfa1[2]~input_o\,
	datac => \newpc[15]~input_o\,
	datad => \Equal1~0_combout\,
	combout => \rfd1_var~92_combout\);

-- Location: LCCOMB_X58_Y69_N16
\rfd1_var~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd1_var~95_combout\ = (\rfd1_var~92_combout\) # ((\rfd1_var~94_combout\ & (\rfa1[2]~input_o\ & !\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd1_var~94_combout\,
	datab => \rfd1_var~92_combout\,
	datac => \rfa1[2]~input_o\,
	datad => \Equal1~0_combout\,
	combout => \rfd1_var~95_combout\);

-- Location: IOIBUF_X58_Y73_N8
\rfa2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rfa2(0),
	o => \rfa2[0]~input_o\);

-- Location: IOIBUF_X58_Y73_N1
\rfa2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rfa2(1),
	o => \rfa2[1]~input_o\);

-- Location: LCCOMB_X62_Y70_N10
\rfd2_var~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~3_combout\ = (\rfa2[0]~input_o\ & (\rfa2[1]~input_o\)) # (!\rfa2[0]~input_o\ & ((\rfa2[1]~input_o\ & ((\inst_reg:6:R|q\(0)))) # (!\rfa2[1]~input_o\ & (\inst_reg:4:R|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[0]~input_o\,
	datab => \rfa2[1]~input_o\,
	datac => \inst_reg:4:R|q\(0),
	datad => \inst_reg:6:R|q\(0),
	combout => \rfd2_var~3_combout\);

-- Location: LCCOMB_X59_Y69_N10
\rfd2_var~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~4_combout\ = (\rfa2[0]~input_o\ & ((\rfd2_var~3_combout\ & (\R7|q\(0))) # (!\rfd2_var~3_combout\ & ((\inst_reg:5:R|q\(0)))))) # (!\rfa2[0]~input_o\ & (((\rfd2_var~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[0]~input_o\,
	datab => \R7|q\(0),
	datac => \inst_reg:5:R|q\(0),
	datad => \rfd2_var~3_combout\,
	combout => \rfd2_var~4_combout\);

-- Location: LCCOMB_X60_Y69_N18
\rfd2_var~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~0_combout\ = (\rfa2[1]~input_o\ & (\rfa2[0]~input_o\)) # (!\rfa2[1]~input_o\ & ((\rfa2[0]~input_o\ & ((\inst_reg:1:R|q\(0)))) # (!\rfa2[0]~input_o\ & (\inst_reg:0:R|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[1]~input_o\,
	datab => \rfa2[0]~input_o\,
	datac => \inst_reg:0:R|q\(0),
	datad => \inst_reg:1:R|q\(0),
	combout => \rfd2_var~0_combout\);

-- Location: LCCOMB_X59_Y68_N2
\rfd2_var~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~1_combout\ = (\rfd2_var~0_combout\ & (((\inst_reg:3:R|q\(0)) # (!\rfa2[1]~input_o\)))) # (!\rfd2_var~0_combout\ & (\inst_reg:2:R|q\(0) & ((\rfa2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd2_var~0_combout\,
	datab => \inst_reg:2:R|q\(0),
	datac => \inst_reg:3:R|q\(0),
	datad => \rfa2[1]~input_o\,
	combout => \rfd2_var~1_combout\);

-- Location: IOIBUF_X65_Y73_N22
\rfa2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rfa2(2),
	o => \rfa2[2]~input_o\);

-- Location: LCCOMB_X59_Y70_N30
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\rfa2[1]~input_o\ & (\rfa2[0]~input_o\ & \rfa2[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rfa2[1]~input_o\,
	datac => \rfa2[0]~input_o\,
	datad => \rfa2[2]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X59_Y69_N16
\rfd2_var~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~2_combout\ = (\newpc[0]~input_o\ & ((\Equal2~0_combout\) # ((\rfd2_var~1_combout\ & !\rfa2[2]~input_o\)))) # (!\newpc[0]~input_o\ & (\rfd2_var~1_combout\ & ((!\rfa2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \newpc[0]~input_o\,
	datab => \rfd2_var~1_combout\,
	datac => \Equal2~0_combout\,
	datad => \rfa2[2]~input_o\,
	combout => \rfd2_var~2_combout\);

-- Location: LCCOMB_X59_Y69_N26
\rfd2_var~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~5_combout\ = (\rfd2_var~2_combout\) # ((\rfd2_var~4_combout\ & (!\Equal2~0_combout\ & \rfa2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd2_var~4_combout\,
	datab => \rfd2_var~2_combout\,
	datac => \Equal2~0_combout\,
	datad => \rfa2[2]~input_o\,
	combout => \rfd2_var~5_combout\);

-- Location: LCCOMB_X60_Y68_N10
\rfd2_var~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~6_combout\ = (\rfa2[0]~input_o\ & ((\inst_reg:1:R|q\(1)) # ((\rfa2[1]~input_o\)))) # (!\rfa2[0]~input_o\ & (((\inst_reg:0:R|q\(1) & !\rfa2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[0]~input_o\,
	datab => \inst_reg:1:R|q\(1),
	datac => \inst_reg:0:R|q\(1),
	datad => \rfa2[1]~input_o\,
	combout => \rfd2_var~6_combout\);

-- Location: LCCOMB_X59_Y68_N6
\rfd2_var~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~7_combout\ = (\rfa2[1]~input_o\ & ((\rfd2_var~6_combout\ & (\inst_reg:3:R|q\(1))) # (!\rfd2_var~6_combout\ & ((\inst_reg:2:R|q\(1)))))) # (!\rfa2[1]~input_o\ & (\rfd2_var~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[1]~input_o\,
	datab => \rfd2_var~6_combout\,
	datac => \inst_reg:3:R|q\(1),
	datad => \inst_reg:2:R|q\(1),
	combout => \rfd2_var~7_combout\);

-- Location: LCCOMB_X59_Y69_N12
\rfd2_var~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~8_combout\ = (\newpc[1]~input_o\ & ((\Equal2~0_combout\) # ((\rfd2_var~7_combout\ & !\rfa2[2]~input_o\)))) # (!\newpc[1]~input_o\ & (\rfd2_var~7_combout\ & ((!\rfa2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \newpc[1]~input_o\,
	datab => \rfd2_var~7_combout\,
	datac => \Equal2~0_combout\,
	datad => \rfa2[2]~input_o\,
	combout => \rfd2_var~8_combout\);

-- Location: LCCOMB_X62_Y70_N14
\rfd2_var~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~9_combout\ = (\rfa2[0]~input_o\ & (\rfa2[1]~input_o\)) # (!\rfa2[0]~input_o\ & ((\rfa2[1]~input_o\ & ((\inst_reg:6:R|q\(1)))) # (!\rfa2[1]~input_o\ & (\inst_reg:4:R|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[0]~input_o\,
	datab => \rfa2[1]~input_o\,
	datac => \inst_reg:4:R|q\(1),
	datad => \inst_reg:6:R|q\(1),
	combout => \rfd2_var~9_combout\);

-- Location: LCCOMB_X59_Y69_N4
\rfd2_var~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~10_combout\ = (\rfd2_var~9_combout\ & ((\R7|q\(1)) # ((!\rfa2[0]~input_o\)))) # (!\rfd2_var~9_combout\ & (((\inst_reg:5:R|q\(1) & \rfa2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd2_var~9_combout\,
	datab => \R7|q\(1),
	datac => \inst_reg:5:R|q\(1),
	datad => \rfa2[0]~input_o\,
	combout => \rfd2_var~10_combout\);

-- Location: LCCOMB_X59_Y69_N22
\rfd2_var~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~11_combout\ = (\rfd2_var~8_combout\) # ((\rfd2_var~10_combout\ & (!\Equal2~0_combout\ & \rfa2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd2_var~8_combout\,
	datab => \rfd2_var~10_combout\,
	datac => \Equal2~0_combout\,
	datad => \rfa2[2]~input_o\,
	combout => \rfd2_var~11_combout\);

-- Location: LCCOMB_X60_Y68_N6
\rfd2_var~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~12_combout\ = (\rfa2[0]~input_o\ & ((\inst_reg:1:R|q\(2)) # ((\rfa2[1]~input_o\)))) # (!\rfa2[0]~input_o\ & (((\inst_reg:0:R|q\(2) & !\rfa2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_reg:1:R|q\(2),
	datab => \rfa2[0]~input_o\,
	datac => \inst_reg:0:R|q\(2),
	datad => \rfa2[1]~input_o\,
	combout => \rfd2_var~12_combout\);

-- Location: LCCOMB_X59_Y68_N26
\rfd2_var~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~13_combout\ = (\rfa2[1]~input_o\ & ((\rfd2_var~12_combout\ & ((\inst_reg:3:R|q\(2)))) # (!\rfd2_var~12_combout\ & (\inst_reg:2:R|q\(2))))) # (!\rfa2[1]~input_o\ & (((\rfd2_var~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[1]~input_o\,
	datab => \inst_reg:2:R|q\(2),
	datac => \inst_reg:3:R|q\(2),
	datad => \rfd2_var~12_combout\,
	combout => \rfd2_var~13_combout\);

-- Location: LCCOMB_X60_Y70_N20
\rfd2_var~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~14_combout\ = (\newpc[2]~input_o\ & ((\Equal2~0_combout\) # ((\rfd2_var~13_combout\ & !\rfa2[2]~input_o\)))) # (!\newpc[2]~input_o\ & (((\rfd2_var~13_combout\ & !\rfa2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \newpc[2]~input_o\,
	datab => \Equal2~0_combout\,
	datac => \rfd2_var~13_combout\,
	datad => \rfa2[2]~input_o\,
	combout => \rfd2_var~14_combout\);

-- Location: LCCOMB_X62_Y70_N24
\rfd2_var~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~15_combout\ = (\rfa2[0]~input_o\ & (((\rfa2[1]~input_o\)))) # (!\rfa2[0]~input_o\ & ((\rfa2[1]~input_o\ & (\inst_reg:6:R|q\(2))) # (!\rfa2[1]~input_o\ & ((\inst_reg:4:R|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_reg:6:R|q\(2),
	datab => \rfa2[0]~input_o\,
	datac => \inst_reg:4:R|q\(2),
	datad => \rfa2[1]~input_o\,
	combout => \rfd2_var~15_combout\);

-- Location: LCCOMB_X61_Y70_N18
\rfd2_var~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~16_combout\ = (\rfd2_var~15_combout\ & ((\R7|q\(2)) # ((!\rfa2[0]~input_o\)))) # (!\rfd2_var~15_combout\ & (((\inst_reg:5:R|q\(2) & \rfa2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R7|q\(2),
	datab => \rfd2_var~15_combout\,
	datac => \inst_reg:5:R|q\(2),
	datad => \rfa2[0]~input_o\,
	combout => \rfd2_var~16_combout\);

-- Location: LCCOMB_X60_Y70_N6
\rfd2_var~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~17_combout\ = (\rfd2_var~14_combout\) # ((\rfa2[2]~input_o\ & (!\Equal2~0_combout\ & \rfd2_var~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[2]~input_o\,
	datab => \rfd2_var~14_combout\,
	datac => \Equal2~0_combout\,
	datad => \rfd2_var~16_combout\,
	combout => \rfd2_var~17_combout\);

-- Location: LCCOMB_X62_Y70_N18
\rfd2_var~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~21_combout\ = (\rfa2[0]~input_o\ & (((\rfa2[1]~input_o\)))) # (!\rfa2[0]~input_o\ & ((\rfa2[1]~input_o\ & (\inst_reg:6:R|q\(3))) # (!\rfa2[1]~input_o\ & ((\inst_reg:4:R|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_reg:6:R|q\(3),
	datab => \rfa2[0]~input_o\,
	datac => \inst_reg:4:R|q\(3),
	datad => \rfa2[1]~input_o\,
	combout => \rfd2_var~21_combout\);

-- Location: LCCOMB_X61_Y70_N4
\rfd2_var~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~22_combout\ = (\rfa2[0]~input_o\ & ((\rfd2_var~21_combout\ & ((\R7|q\(3)))) # (!\rfd2_var~21_combout\ & (\inst_reg:5:R|q\(3))))) # (!\rfa2[0]~input_o\ & (\rfd2_var~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[0]~input_o\,
	datab => \rfd2_var~21_combout\,
	datac => \inst_reg:5:R|q\(3),
	datad => \R7|q\(3),
	combout => \rfd2_var~22_combout\);

-- Location: LCCOMB_X60_Y68_N2
\rfd2_var~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~18_combout\ = (\rfa2[0]~input_o\ & ((\rfa2[1]~input_o\) # ((\inst_reg:1:R|q\(3))))) # (!\rfa2[0]~input_o\ & (!\rfa2[1]~input_o\ & (\inst_reg:0:R|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[0]~input_o\,
	datab => \rfa2[1]~input_o\,
	datac => \inst_reg:0:R|q\(3),
	datad => \inst_reg:1:R|q\(3),
	combout => \rfd2_var~18_combout\);

-- Location: LCCOMB_X61_Y69_N10
\rfd2_var~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~19_combout\ = (\rfd2_var~18_combout\ & (((\inst_reg:3:R|q\(3))) # (!\rfa2[1]~input_o\))) # (!\rfd2_var~18_combout\ & (\rfa2[1]~input_o\ & ((\inst_reg:2:R|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd2_var~18_combout\,
	datab => \rfa2[1]~input_o\,
	datac => \inst_reg:3:R|q\(3),
	datad => \inst_reg:2:R|q\(3),
	combout => \rfd2_var~19_combout\);

-- Location: LCCOMB_X60_Y70_N24
\rfd2_var~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~20_combout\ = (\rfd2_var~19_combout\ & (((\Equal2~0_combout\ & \newpc[3]~input_o\)) # (!\rfa2[2]~input_o\))) # (!\rfd2_var~19_combout\ & (\Equal2~0_combout\ & (\newpc[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd2_var~19_combout\,
	datab => \Equal2~0_combout\,
	datac => \newpc[3]~input_o\,
	datad => \rfa2[2]~input_o\,
	combout => \rfd2_var~20_combout\);

-- Location: LCCOMB_X60_Y70_N26
\rfd2_var~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~23_combout\ = (\rfd2_var~20_combout\) # ((\rfd2_var~22_combout\ & (!\Equal2~0_combout\ & \rfa2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd2_var~22_combout\,
	datab => \rfd2_var~20_combout\,
	datac => \Equal2~0_combout\,
	datad => \rfa2[2]~input_o\,
	combout => \rfd2_var~23_combout\);

-- Location: LCCOMB_X60_Y68_N14
\rfd2_var~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~24_combout\ = (\rfa2[0]~input_o\ & ((\rfa2[1]~input_o\) # ((\inst_reg:1:R|q\(4))))) # (!\rfa2[0]~input_o\ & (!\rfa2[1]~input_o\ & (\inst_reg:0:R|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[0]~input_o\,
	datab => \rfa2[1]~input_o\,
	datac => \inst_reg:0:R|q\(4),
	datad => \inst_reg:1:R|q\(4),
	combout => \rfd2_var~24_combout\);

-- Location: LCCOMB_X59_Y68_N22
\rfd2_var~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~25_combout\ = (\rfa2[1]~input_o\ & ((\rfd2_var~24_combout\ & (\inst_reg:3:R|q\(4))) # (!\rfd2_var~24_combout\ & ((\inst_reg:2:R|q\(4)))))) # (!\rfa2[1]~input_o\ & (\rfd2_var~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[1]~input_o\,
	datab => \rfd2_var~24_combout\,
	datac => \inst_reg:3:R|q\(4),
	datad => \inst_reg:2:R|q\(4),
	combout => \rfd2_var~25_combout\);

-- Location: LCCOMB_X60_Y70_N28
\rfd2_var~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~26_combout\ = (\rfa2[2]~input_o\ & (((\Equal2~0_combout\ & \newpc[4]~input_o\)))) # (!\rfa2[2]~input_o\ & ((\rfd2_var~25_combout\) # ((\Equal2~0_combout\ & \newpc[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[2]~input_o\,
	datab => \rfd2_var~25_combout\,
	datac => \Equal2~0_combout\,
	datad => \newpc[4]~input_o\,
	combout => \rfd2_var~26_combout\);

-- Location: LCCOMB_X62_Y70_N4
\rfd2_var~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~27_combout\ = (\rfa2[0]~input_o\ & (((\rfa2[1]~input_o\)))) # (!\rfa2[0]~input_o\ & ((\rfa2[1]~input_o\ & (\inst_reg:6:R|q\(4))) # (!\rfa2[1]~input_o\ & ((\inst_reg:4:R|q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_reg:6:R|q\(4),
	datab => \rfa2[0]~input_o\,
	datac => \inst_reg:4:R|q\(4),
	datad => \rfa2[1]~input_o\,
	combout => \rfd2_var~27_combout\);

-- Location: LCCOMB_X61_Y70_N30
\rfd2_var~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~28_combout\ = (\rfa2[0]~input_o\ & ((\rfd2_var~27_combout\ & ((\R7|q\(4)))) # (!\rfd2_var~27_combout\ & (\inst_reg:5:R|q\(4))))) # (!\rfa2[0]~input_o\ & (\rfd2_var~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[0]~input_o\,
	datab => \rfd2_var~27_combout\,
	datac => \inst_reg:5:R|q\(4),
	datad => \R7|q\(4),
	combout => \rfd2_var~28_combout\);

-- Location: LCCOMB_X60_Y70_N22
\rfd2_var~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~29_combout\ = (\rfd2_var~26_combout\) # ((!\Equal2~0_combout\ & (\rfd2_var~28_combout\ & \rfa2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \rfd2_var~26_combout\,
	datac => \rfd2_var~28_combout\,
	datad => \rfa2[2]~input_o\,
	combout => \rfd2_var~29_combout\);

-- Location: LCCOMB_X62_Y70_N16
\rfd2_var~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~33_combout\ = (\rfa2[0]~input_o\ & (((\rfa2[1]~input_o\)))) # (!\rfa2[0]~input_o\ & ((\rfa2[1]~input_o\ & (\inst_reg:6:R|q\(5))) # (!\rfa2[1]~input_o\ & ((\inst_reg:4:R|q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_reg:6:R|q\(5),
	datab => \rfa2[0]~input_o\,
	datac => \inst_reg:4:R|q\(5),
	datad => \rfa2[1]~input_o\,
	combout => \rfd2_var~33_combout\);

-- Location: LCCOMB_X61_Y70_N22
\rfd2_var~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~34_combout\ = (\rfa2[0]~input_o\ & ((\rfd2_var~33_combout\ & ((\R7|q\(5)))) # (!\rfd2_var~33_combout\ & (\inst_reg:5:R|q\(5))))) # (!\rfa2[0]~input_o\ & (\rfd2_var~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[0]~input_o\,
	datab => \rfd2_var~33_combout\,
	datac => \inst_reg:5:R|q\(5),
	datad => \R7|q\(5),
	combout => \rfd2_var~34_combout\);

-- Location: LCCOMB_X60_Y68_N18
\rfd2_var~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~30_combout\ = (\rfa2[1]~input_o\ & (\rfa2[0]~input_o\)) # (!\rfa2[1]~input_o\ & ((\rfa2[0]~input_o\ & ((\inst_reg:1:R|q\(5)))) # (!\rfa2[0]~input_o\ & (\inst_reg:0:R|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[1]~input_o\,
	datab => \rfa2[0]~input_o\,
	datac => \inst_reg:0:R|q\(5),
	datad => \inst_reg:1:R|q\(5),
	combout => \rfd2_var~30_combout\);

-- Location: LCCOMB_X59_Y68_N10
\rfd2_var~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~31_combout\ = (\rfa2[1]~input_o\ & ((\rfd2_var~30_combout\ & ((\inst_reg:3:R|q\(5)))) # (!\rfd2_var~30_combout\ & (\inst_reg:2:R|q\(5))))) # (!\rfa2[1]~input_o\ & (((\rfd2_var~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[1]~input_o\,
	datab => \inst_reg:2:R|q\(5),
	datac => \inst_reg:3:R|q\(5),
	datad => \rfd2_var~30_combout\,
	combout => \rfd2_var~31_combout\);

-- Location: LCCOMB_X60_Y70_N16
\rfd2_var~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~32_combout\ = (\newpc[5]~input_o\ & ((\Equal2~0_combout\) # ((\rfd2_var~31_combout\ & !\rfa2[2]~input_o\)))) # (!\newpc[5]~input_o\ & (((\rfd2_var~31_combout\ & !\rfa2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \newpc[5]~input_o\,
	datab => \Equal2~0_combout\,
	datac => \rfd2_var~31_combout\,
	datad => \rfa2[2]~input_o\,
	combout => \rfd2_var~32_combout\);

-- Location: LCCOMB_X60_Y70_N18
\rfd2_var~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~35_combout\ = (\rfd2_var~32_combout\) # ((\rfd2_var~34_combout\ & (!\Equal2~0_combout\ & \rfa2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd2_var~34_combout\,
	datab => \rfd2_var~32_combout\,
	datac => \Equal2~0_combout\,
	datad => \rfa2[2]~input_o\,
	combout => \rfd2_var~35_combout\);

-- Location: LCCOMB_X62_Y70_N30
\rfd2_var~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~39_combout\ = (\rfa2[0]~input_o\ & (((\rfa2[1]~input_o\)))) # (!\rfa2[0]~input_o\ & ((\rfa2[1]~input_o\ & (\inst_reg:6:R|q\(6))) # (!\rfa2[1]~input_o\ & ((\inst_reg:4:R|q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_reg:6:R|q\(6),
	datab => \rfa2[0]~input_o\,
	datac => \inst_reg:4:R|q\(6),
	datad => \rfa2[1]~input_o\,
	combout => \rfd2_var~39_combout\);

-- Location: LCCOMB_X63_Y70_N30
\rfd2_var~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~40_combout\ = (\rfd2_var~39_combout\ & (((\R7|q\(6))) # (!\rfa2[0]~input_o\))) # (!\rfd2_var~39_combout\ & (\rfa2[0]~input_o\ & (\inst_reg:5:R|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd2_var~39_combout\,
	datab => \rfa2[0]~input_o\,
	datac => \inst_reg:5:R|q\(6),
	datad => \R7|q\(6),
	combout => \rfd2_var~40_combout\);

-- Location: LCCOMB_X60_Y68_N30
\rfd2_var~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~36_combout\ = (\rfa2[0]~input_o\ & ((\inst_reg:1:R|q\(6)) # ((\rfa2[1]~input_o\)))) # (!\rfa2[0]~input_o\ & (((\inst_reg:0:R|q\(6) & !\rfa2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[0]~input_o\,
	datab => \inst_reg:1:R|q\(6),
	datac => \inst_reg:0:R|q\(6),
	datad => \rfa2[1]~input_o\,
	combout => \rfd2_var~36_combout\);

-- Location: LCCOMB_X59_Y68_N18
\rfd2_var~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~37_combout\ = (\rfa2[1]~input_o\ & ((\rfd2_var~36_combout\ & (\inst_reg:3:R|q\(6))) # (!\rfd2_var~36_combout\ & ((\inst_reg:2:R|q\(6)))))) # (!\rfa2[1]~input_o\ & (\rfd2_var~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[1]~input_o\,
	datab => \rfd2_var~36_combout\,
	datac => \inst_reg:3:R|q\(6),
	datad => \inst_reg:2:R|q\(6),
	combout => \rfd2_var~37_combout\);

-- Location: LCCOMB_X60_Y70_N4
\rfd2_var~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~38_combout\ = (\rfa2[2]~input_o\ & (\Equal2~0_combout\ & ((\newpc[6]~input_o\)))) # (!\rfa2[2]~input_o\ & ((\rfd2_var~37_combout\) # ((\Equal2~0_combout\ & \newpc[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[2]~input_o\,
	datab => \Equal2~0_combout\,
	datac => \rfd2_var~37_combout\,
	datad => \newpc[6]~input_o\,
	combout => \rfd2_var~38_combout\);

-- Location: LCCOMB_X60_Y70_N30
\rfd2_var~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~41_combout\ = (\rfd2_var~38_combout\) # ((\rfd2_var~40_combout\ & (!\Equal2~0_combout\ & \rfa2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd2_var~40_combout\,
	datab => \Equal2~0_combout\,
	datac => \rfd2_var~38_combout\,
	datad => \rfa2[2]~input_o\,
	combout => \rfd2_var~41_combout\);

-- Location: LCCOMB_X62_Y70_N2
\rfd2_var~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~45_combout\ = (\rfa2[0]~input_o\ & (((\rfa2[1]~input_o\)))) # (!\rfa2[0]~input_o\ & ((\rfa2[1]~input_o\ & (\inst_reg:6:R|q\(7))) # (!\rfa2[1]~input_o\ & ((\inst_reg:4:R|q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_reg:6:R|q\(7),
	datab => \rfa2[0]~input_o\,
	datac => \inst_reg:4:R|q\(7),
	datad => \rfa2[1]~input_o\,
	combout => \rfd2_var~45_combout\);

-- Location: LCCOMB_X63_Y70_N8
\rfd2_var~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~46_combout\ = (\rfd2_var~45_combout\ & (((\R7|q\(7))) # (!\rfa2[0]~input_o\))) # (!\rfd2_var~45_combout\ & (\rfa2[0]~input_o\ & (\inst_reg:5:R|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd2_var~45_combout\,
	datab => \rfa2[0]~input_o\,
	datac => \inst_reg:5:R|q\(7),
	datad => \R7|q\(7),
	combout => \rfd2_var~46_combout\);

-- Location: LCCOMB_X60_Y68_N26
\rfd2_var~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~42_combout\ = (\rfa2[0]~input_o\ & ((\rfa2[1]~input_o\) # ((\inst_reg:1:R|q\(7))))) # (!\rfa2[0]~input_o\ & (!\rfa2[1]~input_o\ & (\inst_reg:0:R|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[0]~input_o\,
	datab => \rfa2[1]~input_o\,
	datac => \inst_reg:0:R|q\(7),
	datad => \inst_reg:1:R|q\(7),
	combout => \rfd2_var~42_combout\);

-- Location: LCCOMB_X59_Y68_N14
\rfd2_var~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~43_combout\ = (\rfa2[1]~input_o\ & ((\rfd2_var~42_combout\ & ((\inst_reg:3:R|q\(7)))) # (!\rfd2_var~42_combout\ & (\inst_reg:2:R|q\(7))))) # (!\rfa2[1]~input_o\ & (((\rfd2_var~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[1]~input_o\,
	datab => \inst_reg:2:R|q\(7),
	datac => \inst_reg:3:R|q\(7),
	datad => \rfd2_var~42_combout\,
	combout => \rfd2_var~43_combout\);

-- Location: LCCOMB_X60_Y70_N0
\rfd2_var~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~44_combout\ = (\Equal2~0_combout\ & ((\newpc[7]~input_o\) # ((\rfd2_var~43_combout\ & !\rfa2[2]~input_o\)))) # (!\Equal2~0_combout\ & (\rfd2_var~43_combout\ & ((!\rfa2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \rfd2_var~43_combout\,
	datac => \newpc[7]~input_o\,
	datad => \rfa2[2]~input_o\,
	combout => \rfd2_var~44_combout\);

-- Location: LCCOMB_X60_Y70_N2
\rfd2_var~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~47_combout\ = (\rfd2_var~44_combout\) # ((\rfd2_var~46_combout\ & (!\Equal2~0_combout\ & \rfa2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd2_var~46_combout\,
	datab => \rfd2_var~44_combout\,
	datac => \Equal2~0_combout\,
	datad => \rfa2[2]~input_o\,
	combout => \rfd2_var~47_combout\);

-- Location: LCCOMB_X60_Y68_N22
\rfd2_var~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~48_combout\ = (\rfa2[1]~input_o\ & (\rfa2[0]~input_o\)) # (!\rfa2[1]~input_o\ & ((\rfa2[0]~input_o\ & ((\inst_reg:1:R|q\(8)))) # (!\rfa2[0]~input_o\ & (\inst_reg:0:R|q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[1]~input_o\,
	datab => \rfa2[0]~input_o\,
	datac => \inst_reg:0:R|q\(8),
	datad => \inst_reg:1:R|q\(8),
	combout => \rfd2_var~48_combout\);

-- Location: LCCOMB_X61_Y69_N22
\rfd2_var~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~49_combout\ = (\rfa2[1]~input_o\ & ((\rfd2_var~48_combout\ & ((\inst_reg:3:R|q\(8)))) # (!\rfd2_var~48_combout\ & (\inst_reg:2:R|q\(8))))) # (!\rfa2[1]~input_o\ & (((\rfd2_var~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_reg:2:R|q\(8),
	datab => \rfa2[1]~input_o\,
	datac => \inst_reg:3:R|q\(8),
	datad => \rfd2_var~48_combout\,
	combout => \rfd2_var~49_combout\);

-- Location: LCCOMB_X60_Y70_N12
\rfd2_var~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~50_combout\ = (\Equal2~0_combout\ & ((\newpc[8]~input_o\) # ((\rfd2_var~49_combout\ & !\rfa2[2]~input_o\)))) # (!\Equal2~0_combout\ & (\rfd2_var~49_combout\ & ((!\rfa2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \rfd2_var~49_combout\,
	datac => \newpc[8]~input_o\,
	datad => \rfa2[2]~input_o\,
	combout => \rfd2_var~50_combout\);

-- Location: LCCOMB_X62_Y70_N22
\rfd2_var~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~51_combout\ = (\rfa2[0]~input_o\ & (((\rfa2[1]~input_o\)))) # (!\rfa2[0]~input_o\ & ((\rfa2[1]~input_o\ & (\inst_reg:6:R|q\(8))) # (!\rfa2[1]~input_o\ & ((\inst_reg:4:R|q\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[0]~input_o\,
	datab => \inst_reg:6:R|q\(8),
	datac => \inst_reg:4:R|q\(8),
	datad => \rfa2[1]~input_o\,
	combout => \rfd2_var~51_combout\);

-- Location: LCCOMB_X63_Y69_N10
\rfd2_var~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~52_combout\ = (\rfa2[0]~input_o\ & ((\rfd2_var~51_combout\ & ((\R7|q\(8)))) # (!\rfd2_var~51_combout\ & (\inst_reg:5:R|q\(8))))) # (!\rfa2[0]~input_o\ & (\rfd2_var~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[0]~input_o\,
	datab => \rfd2_var~51_combout\,
	datac => \inst_reg:5:R|q\(8),
	datad => \R7|q\(8),
	combout => \rfd2_var~52_combout\);

-- Location: LCCOMB_X63_Y70_N14
\rfd2_var~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~53_combout\ = (\rfd2_var~50_combout\) # ((!\Equal2~0_combout\ & (\rfa2[2]~input_o\ & \rfd2_var~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd2_var~50_combout\,
	datab => \Equal2~0_combout\,
	datac => \rfa2[2]~input_o\,
	datad => \rfd2_var~52_combout\,
	combout => \rfd2_var~53_combout\);

-- Location: LCCOMB_X62_Y69_N2
\rfd2_var~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~57_combout\ = (\rfa2[1]~input_o\ & ((\rfa2[0]~input_o\) # ((\inst_reg:6:R|q\(9))))) # (!\rfa2[1]~input_o\ & (!\rfa2[0]~input_o\ & (\inst_reg:4:R|q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[1]~input_o\,
	datab => \rfa2[0]~input_o\,
	datac => \inst_reg:4:R|q\(9),
	datad => \inst_reg:6:R|q\(9),
	combout => \rfd2_var~57_combout\);

-- Location: LCCOMB_X59_Y69_N28
\rfd2_var~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~58_combout\ = (\rfa2[0]~input_o\ & ((\rfd2_var~57_combout\ & ((\R7|q\(9)))) # (!\rfd2_var~57_combout\ & (\inst_reg:5:R|q\(9))))) # (!\rfa2[0]~input_o\ & (\rfd2_var~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[0]~input_o\,
	datab => \rfd2_var~57_combout\,
	datac => \inst_reg:5:R|q\(9),
	datad => \R7|q\(9),
	combout => \rfd2_var~58_combout\);

-- Location: LCCOMB_X60_Y69_N22
\rfd2_var~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~54_combout\ = (\rfa2[1]~input_o\ & (\rfa2[0]~input_o\)) # (!\rfa2[1]~input_o\ & ((\rfa2[0]~input_o\ & ((\inst_reg:1:R|q\(9)))) # (!\rfa2[0]~input_o\ & (\inst_reg:0:R|q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[1]~input_o\,
	datab => \rfa2[0]~input_o\,
	datac => \inst_reg:0:R|q\(9),
	datad => \inst_reg:1:R|q\(9),
	combout => \rfd2_var~54_combout\);

-- Location: LCCOMB_X61_Y69_N18
\rfd2_var~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~55_combout\ = (\rfa2[1]~input_o\ & ((\rfd2_var~54_combout\ & (\inst_reg:3:R|q\(9))) # (!\rfd2_var~54_combout\ & ((\inst_reg:2:R|q\(9)))))) # (!\rfa2[1]~input_o\ & (\rfd2_var~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[1]~input_o\,
	datab => \rfd2_var~54_combout\,
	datac => \inst_reg:3:R|q\(9),
	datad => \inst_reg:2:R|q\(9),
	combout => \rfd2_var~55_combout\);

-- Location: LCCOMB_X65_Y69_N18
\rfd2_var~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~56_combout\ = (\rfd2_var~55_combout\ & (((\Equal2~0_combout\ & \newpc[9]~input_o\)) # (!\rfa2[2]~input_o\))) # (!\rfd2_var~55_combout\ & (\Equal2~0_combout\ & (\newpc[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd2_var~55_combout\,
	datab => \Equal2~0_combout\,
	datac => \newpc[9]~input_o\,
	datad => \rfa2[2]~input_o\,
	combout => \rfd2_var~56_combout\);

-- Location: LCCOMB_X61_Y69_N28
\rfd2_var~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~59_combout\ = (\rfd2_var~56_combout\) # ((!\Equal2~0_combout\ & (\rfd2_var~58_combout\ & \rfa2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \rfd2_var~58_combout\,
	datac => \rfa2[2]~input_o\,
	datad => \rfd2_var~56_combout\,
	combout => \rfd2_var~59_combout\);

-- Location: LCCOMB_X62_Y69_N0
\rfd2_var~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~63_combout\ = (\rfa2[1]~input_o\ & ((\rfa2[0]~input_o\) # ((\inst_reg:6:R|q\(10))))) # (!\rfa2[1]~input_o\ & (!\rfa2[0]~input_o\ & (\inst_reg:4:R|q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[1]~input_o\,
	datab => \rfa2[0]~input_o\,
	datac => \inst_reg:4:R|q\(10),
	datad => \inst_reg:6:R|q\(10),
	combout => \rfd2_var~63_combout\);

-- Location: LCCOMB_X63_Y69_N16
\rfd2_var~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~64_combout\ = (\rfa2[0]~input_o\ & ((\rfd2_var~63_combout\ & (\R7|q\(10))) # (!\rfd2_var~63_combout\ & ((\inst_reg:5:R|q\(10)))))) # (!\rfa2[0]~input_o\ & (((\rfd2_var~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R7|q\(10),
	datab => \rfa2[0]~input_o\,
	datac => \inst_reg:5:R|q\(10),
	datad => \rfd2_var~63_combout\,
	combout => \rfd2_var~64_combout\);

-- Location: LCCOMB_X60_Y69_N26
\rfd2_var~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~60_combout\ = (\rfa2[1]~input_o\ & (((\rfa2[0]~input_o\)))) # (!\rfa2[1]~input_o\ & ((\rfa2[0]~input_o\ & (\inst_reg:1:R|q\(10))) # (!\rfa2[0]~input_o\ & ((\inst_reg:0:R|q\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[1]~input_o\,
	datab => \inst_reg:1:R|q\(10),
	datac => \inst_reg:0:R|q\(10),
	datad => \rfa2[0]~input_o\,
	combout => \rfd2_var~60_combout\);

-- Location: LCCOMB_X61_Y69_N6
\rfd2_var~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~61_combout\ = (\rfd2_var~60_combout\ & (((\inst_reg:3:R|q\(10)) # (!\rfa2[1]~input_o\)))) # (!\rfd2_var~60_combout\ & (\inst_reg:2:R|q\(10) & ((\rfa2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd2_var~60_combout\,
	datab => \inst_reg:2:R|q\(10),
	datac => \inst_reg:3:R|q\(10),
	datad => \rfa2[1]~input_o\,
	combout => \rfd2_var~61_combout\);

-- Location: LCCOMB_X65_Y69_N20
\rfd2_var~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~62_combout\ = (\rfd2_var~61_combout\ & (((\Equal2~0_combout\ & \newpc[10]~input_o\)) # (!\rfa2[2]~input_o\))) # (!\rfd2_var~61_combout\ & (((\Equal2~0_combout\ & \newpc[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd2_var~61_combout\,
	datab => \rfa2[2]~input_o\,
	datac => \Equal2~0_combout\,
	datad => \newpc[10]~input_o\,
	combout => \rfd2_var~62_combout\);

-- Location: LCCOMB_X65_Y69_N22
\rfd2_var~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~65_combout\ = (\rfd2_var~62_combout\) # ((\rfa2[2]~input_o\ & (\rfd2_var~64_combout\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[2]~input_o\,
	datab => \rfd2_var~64_combout\,
	datac => \Equal2~0_combout\,
	datad => \rfd2_var~62_combout\,
	combout => \rfd2_var~65_combout\);

-- Location: LCCOMB_X62_Y69_N12
\rfd2_var~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~69_combout\ = (\rfa2[1]~input_o\ & ((\rfa2[0]~input_o\) # ((\inst_reg:6:R|q\(11))))) # (!\rfa2[1]~input_o\ & (!\rfa2[0]~input_o\ & (\inst_reg:4:R|q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[1]~input_o\,
	datab => \rfa2[0]~input_o\,
	datac => \inst_reg:4:R|q\(11),
	datad => \inst_reg:6:R|q\(11),
	combout => \rfd2_var~69_combout\);

-- Location: LCCOMB_X63_Y69_N12
\rfd2_var~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~70_combout\ = (\rfd2_var~69_combout\ & ((\R7|q\(11)) # ((!\rfa2[0]~input_o\)))) # (!\rfd2_var~69_combout\ & (((\inst_reg:5:R|q\(11) & \rfa2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd2_var~69_combout\,
	datab => \R7|q\(11),
	datac => \inst_reg:5:R|q\(11),
	datad => \rfa2[0]~input_o\,
	combout => \rfd2_var~70_combout\);

-- Location: LCCOMB_X60_Y69_N30
\rfd2_var~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~66_combout\ = (\rfa2[1]~input_o\ & (((\rfa2[0]~input_o\)))) # (!\rfa2[1]~input_o\ & ((\rfa2[0]~input_o\ & (\inst_reg:1:R|q\(11))) # (!\rfa2[0]~input_o\ & ((\inst_reg:0:R|q\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[1]~input_o\,
	datab => \inst_reg:1:R|q\(11),
	datac => \inst_reg:0:R|q\(11),
	datad => \rfa2[0]~input_o\,
	combout => \rfd2_var~66_combout\);

-- Location: LCCOMB_X61_Y69_N2
\rfd2_var~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~67_combout\ = (\rfa2[1]~input_o\ & ((\rfd2_var~66_combout\ & ((\inst_reg:3:R|q\(11)))) # (!\rfd2_var~66_combout\ & (\inst_reg:2:R|q\(11))))) # (!\rfa2[1]~input_o\ & (((\rfd2_var~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[1]~input_o\,
	datab => \inst_reg:2:R|q\(11),
	datac => \inst_reg:3:R|q\(11),
	datad => \rfd2_var~66_combout\,
	combout => \rfd2_var~67_combout\);

-- Location: LCCOMB_X65_Y69_N16
\rfd2_var~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~68_combout\ = (\rfd2_var~67_combout\ & (((\newpc[11]~input_o\ & \Equal2~0_combout\)) # (!\rfa2[2]~input_o\))) # (!\rfd2_var~67_combout\ & (\newpc[11]~input_o\ & (\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd2_var~67_combout\,
	datab => \newpc[11]~input_o\,
	datac => \Equal2~0_combout\,
	datad => \rfa2[2]~input_o\,
	combout => \rfd2_var~68_combout\);

-- Location: LCCOMB_X65_Y69_N2
\rfd2_var~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~71_combout\ = (\rfd2_var~68_combout\) # ((\rfa2[2]~input_o\ & (\rfd2_var~70_combout\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[2]~input_o\,
	datab => \rfd2_var~70_combout\,
	datac => \Equal2~0_combout\,
	datad => \rfd2_var~68_combout\,
	combout => \rfd2_var~71_combout\);

-- Location: LCCOMB_X60_Y69_N2
\rfd2_var~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~72_combout\ = (\rfa2[1]~input_o\ & (\rfa2[0]~input_o\)) # (!\rfa2[1]~input_o\ & ((\rfa2[0]~input_o\ & ((\inst_reg:1:R|q\(12)))) # (!\rfa2[0]~input_o\ & (\inst_reg:0:R|q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[1]~input_o\,
	datab => \rfa2[0]~input_o\,
	datac => \inst_reg:0:R|q\(12),
	datad => \inst_reg:1:R|q\(12),
	combout => \rfd2_var~72_combout\);

-- Location: LCCOMB_X61_Y69_N14
\rfd2_var~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~73_combout\ = (\rfd2_var~72_combout\ & (((\inst_reg:3:R|q\(12))) # (!\rfa2[1]~input_o\))) # (!\rfd2_var~72_combout\ & (\rfa2[1]~input_o\ & ((\inst_reg:2:R|q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd2_var~72_combout\,
	datab => \rfa2[1]~input_o\,
	datac => \inst_reg:3:R|q\(12),
	datad => \inst_reg:2:R|q\(12),
	combout => \rfd2_var~73_combout\);

-- Location: LCCOMB_X61_Y69_N30
\rfd2_var~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~74_combout\ = (\rfd2_var~73_combout\ & (((\Equal2~0_combout\ & \newpc[12]~input_o\)) # (!\rfa2[2]~input_o\))) # (!\rfd2_var~73_combout\ & (((\Equal2~0_combout\ & \newpc[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd2_var~73_combout\,
	datab => \rfa2[2]~input_o\,
	datac => \Equal2~0_combout\,
	datad => \newpc[12]~input_o\,
	combout => \rfd2_var~74_combout\);

-- Location: LCCOMB_X62_Y69_N10
\rfd2_var~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~75_combout\ = (\rfa2[1]~input_o\ & ((\rfa2[0]~input_o\) # ((\inst_reg:6:R|q\(12))))) # (!\rfa2[1]~input_o\ & (!\rfa2[0]~input_o\ & (\inst_reg:4:R|q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[1]~input_o\,
	datab => \rfa2[0]~input_o\,
	datac => \inst_reg:4:R|q\(12),
	datad => \inst_reg:6:R|q\(12),
	combout => \rfd2_var~75_combout\);

-- Location: LCCOMB_X63_Y69_N8
\rfd2_var~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~76_combout\ = (\rfd2_var~75_combout\ & (((\R7|q\(12))) # (!\rfa2[0]~input_o\))) # (!\rfd2_var~75_combout\ & (\rfa2[0]~input_o\ & (\inst_reg:5:R|q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd2_var~75_combout\,
	datab => \rfa2[0]~input_o\,
	datac => \inst_reg:5:R|q\(12),
	datad => \R7|q\(12),
	combout => \rfd2_var~76_combout\);

-- Location: LCCOMB_X63_Y69_N2
\rfd2_var~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~77_combout\ = (\rfd2_var~74_combout\) # ((\rfd2_var~76_combout\ & (!\Equal2~0_combout\ & \rfa2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd2_var~74_combout\,
	datab => \rfd2_var~76_combout\,
	datac => \Equal2~0_combout\,
	datad => \rfa2[2]~input_o\,
	combout => \rfd2_var~77_combout\);

-- Location: LCCOMB_X62_Y69_N8
\rfd2_var~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~81_combout\ = (\rfa2[0]~input_o\ & (((\rfa2[1]~input_o\)))) # (!\rfa2[0]~input_o\ & ((\rfa2[1]~input_o\ & (\inst_reg:6:R|q\(13))) # (!\rfa2[1]~input_o\ & ((\inst_reg:4:R|q\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_reg:6:R|q\(13),
	datab => \rfa2[0]~input_o\,
	datac => \inst_reg:4:R|q\(13),
	datad => \rfa2[1]~input_o\,
	combout => \rfd2_var~81_combout\);

-- Location: LCCOMB_X63_Y69_N22
\rfd2_var~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~82_combout\ = (\rfd2_var~81_combout\ & (((\R7|q\(13))) # (!\rfa2[0]~input_o\))) # (!\rfd2_var~81_combout\ & (\rfa2[0]~input_o\ & (\inst_reg:5:R|q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd2_var~81_combout\,
	datab => \rfa2[0]~input_o\,
	datac => \inst_reg:5:R|q\(13),
	datad => \R7|q\(13),
	combout => \rfd2_var~82_combout\);

-- Location: LCCOMB_X60_Y69_N14
\rfd2_var~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~78_combout\ = (\rfa2[1]~input_o\ & (\rfa2[0]~input_o\)) # (!\rfa2[1]~input_o\ & ((\rfa2[0]~input_o\ & ((\inst_reg:1:R|q\(13)))) # (!\rfa2[0]~input_o\ & (\inst_reg:0:R|q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[1]~input_o\,
	datab => \rfa2[0]~input_o\,
	datac => \inst_reg:0:R|q\(13),
	datad => \inst_reg:1:R|q\(13),
	combout => \rfd2_var~78_combout\);

-- Location: LCCOMB_X58_Y70_N24
\rfd2_var~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~79_combout\ = (\rfa2[1]~input_o\ & ((\rfd2_var~78_combout\ & (\inst_reg:3:R|q\(13))) # (!\rfd2_var~78_combout\ & ((\inst_reg:2:R|q\(13)))))) # (!\rfa2[1]~input_o\ & (\rfd2_var~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[1]~input_o\,
	datab => \rfd2_var~78_combout\,
	datac => \inst_reg:3:R|q\(13),
	datad => \inst_reg:2:R|q\(13),
	combout => \rfd2_var~79_combout\);

-- Location: LCCOMB_X63_Y69_N28
\rfd2_var~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~80_combout\ = (\Equal2~0_combout\ & ((\newpc[13]~input_o\) # ((!\rfa2[2]~input_o\ & \rfd2_var~79_combout\)))) # (!\Equal2~0_combout\ & (!\rfa2[2]~input_o\ & (\rfd2_var~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \rfa2[2]~input_o\,
	datac => \rfd2_var~79_combout\,
	datad => \newpc[13]~input_o\,
	combout => \rfd2_var~80_combout\);

-- Location: LCCOMB_X63_Y69_N6
\rfd2_var~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~83_combout\ = (\rfd2_var~80_combout\) # ((\rfd2_var~82_combout\ & (\rfa2[2]~input_o\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd2_var~82_combout\,
	datab => \rfa2[2]~input_o\,
	datac => \Equal2~0_combout\,
	datad => \rfd2_var~80_combout\,
	combout => \rfd2_var~83_combout\);

-- Location: LCCOMB_X60_Y69_N10
\rfd2_var~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~84_combout\ = (\rfa2[1]~input_o\ & (\rfa2[0]~input_o\)) # (!\rfa2[1]~input_o\ & ((\rfa2[0]~input_o\ & ((\inst_reg:1:R|q\(14)))) # (!\rfa2[0]~input_o\ & (\inst_reg:0:R|q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[1]~input_o\,
	datab => \rfa2[0]~input_o\,
	datac => \inst_reg:0:R|q\(14),
	datad => \inst_reg:1:R|q\(14),
	combout => \rfd2_var~84_combout\);

-- Location: LCCOMB_X58_Y70_N26
\rfd2_var~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~85_combout\ = (\rfa2[1]~input_o\ & ((\rfd2_var~84_combout\ & ((\inst_reg:3:R|q\(14)))) # (!\rfd2_var~84_combout\ & (\inst_reg:2:R|q\(14))))) # (!\rfa2[1]~input_o\ & (((\rfd2_var~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_reg:2:R|q\(14),
	datab => \rfa2[1]~input_o\,
	datac => \inst_reg:3:R|q\(14),
	datad => \rfd2_var~84_combout\,
	combout => \rfd2_var~85_combout\);

-- Location: LCCOMB_X59_Y70_N16
\rfd2_var~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~86_combout\ = (\Equal2~0_combout\ & ((\newpc[14]~input_o\) # ((\rfd2_var~85_combout\ & !\rfa2[2]~input_o\)))) # (!\Equal2~0_combout\ & (((\rfd2_var~85_combout\ & !\rfa2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \newpc[14]~input_o\,
	datac => \rfd2_var~85_combout\,
	datad => \rfa2[2]~input_o\,
	combout => \rfd2_var~86_combout\);

-- Location: LCCOMB_X59_Y70_N14
\rfd2_var~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~87_combout\ = (\rfa2[0]~input_o\ & (((\rfa2[1]~input_o\)))) # (!\rfa2[0]~input_o\ & ((\rfa2[1]~input_o\ & (\inst_reg:6:R|q\(14))) # (!\rfa2[1]~input_o\ & ((\inst_reg:4:R|q\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_reg:6:R|q\(14),
	datab => \rfa2[0]~input_o\,
	datac => \inst_reg:4:R|q\(14),
	datad => \rfa2[1]~input_o\,
	combout => \rfd2_var~87_combout\);

-- Location: LCCOMB_X63_Y70_N0
\rfd2_var~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~88_combout\ = (\rfd2_var~87_combout\ & (((\R7|q\(14))) # (!\rfa2[0]~input_o\))) # (!\rfd2_var~87_combout\ & (\rfa2[0]~input_o\ & (\inst_reg:5:R|q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd2_var~87_combout\,
	datab => \rfa2[0]~input_o\,
	datac => \inst_reg:5:R|q\(14),
	datad => \R7|q\(14),
	combout => \rfd2_var~88_combout\);

-- Location: LCCOMB_X59_Y70_N2
\rfd2_var~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~89_combout\ = (\rfd2_var~86_combout\) # ((\rfa2[2]~input_o\ & (\rfd2_var~88_combout\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[2]~input_o\,
	datab => \rfd2_var~86_combout\,
	datac => \rfd2_var~88_combout\,
	datad => \Equal2~0_combout\,
	combout => \rfd2_var~89_combout\);

-- Location: LCCOMB_X60_Y69_N6
\rfd2_var~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~90_combout\ = (\rfa2[1]~input_o\ & (\rfa2[0]~input_o\)) # (!\rfa2[1]~input_o\ & ((\rfa2[0]~input_o\ & ((\inst_reg:1:R|q\(15)))) # (!\rfa2[0]~input_o\ & (\inst_reg:0:R|q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[1]~input_o\,
	datab => \rfa2[0]~input_o\,
	datac => \inst_reg:0:R|q\(15),
	datad => \inst_reg:1:R|q\(15),
	combout => \rfd2_var~90_combout\);

-- Location: LCCOMB_X58_Y70_N28
\rfd2_var~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~91_combout\ = (\rfa2[1]~input_o\ & ((\rfd2_var~90_combout\ & ((\inst_reg:3:R|q\(15)))) # (!\rfd2_var~90_combout\ & (\inst_reg:2:R|q\(15))))) # (!\rfa2[1]~input_o\ & (((\rfd2_var~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[1]~input_o\,
	datab => \inst_reg:2:R|q\(15),
	datac => \inst_reg:3:R|q\(15),
	datad => \rfd2_var~90_combout\,
	combout => \rfd2_var~91_combout\);

-- Location: LCCOMB_X59_Y70_N12
\rfd2_var~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~92_combout\ = (\Equal2~0_combout\ & ((\newpc[15]~input_o\) # ((\rfd2_var~91_combout\ & !\rfa2[2]~input_o\)))) # (!\Equal2~0_combout\ & (((\rfd2_var~91_combout\ & !\rfa2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \newpc[15]~input_o\,
	datac => \rfd2_var~91_combout\,
	datad => \rfa2[2]~input_o\,
	combout => \rfd2_var~92_combout\);

-- Location: LCCOMB_X59_Y70_N4
\rfd2_var~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~93_combout\ = (\rfa2[0]~input_o\ & (((\rfa2[1]~input_o\)))) # (!\rfa2[0]~input_o\ & ((\rfa2[1]~input_o\ & (\inst_reg:6:R|q\(15))) # (!\rfa2[1]~input_o\ & ((\inst_reg:4:R|q\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_reg:6:R|q\(15),
	datab => \rfa2[0]~input_o\,
	datac => \inst_reg:4:R|q\(15),
	datad => \rfa2[1]~input_o\,
	combout => \rfd2_var~93_combout\);

-- Location: LCCOMB_X58_Y69_N10
\rfd2_var~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~94_combout\ = (\rfa2[0]~input_o\ & ((\rfd2_var~93_combout\ & (\R7|q\(15))) # (!\rfd2_var~93_combout\ & ((\inst_reg:5:R|q\(15)))))) # (!\rfa2[0]~input_o\ & (((\rfd2_var~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfa2[0]~input_o\,
	datab => \R7|q\(15),
	datac => \inst_reg:5:R|q\(15),
	datad => \rfd2_var~93_combout\,
	combout => \rfd2_var~94_combout\);

-- Location: LCCOMB_X60_Y70_N14
\rfd2_var~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \rfd2_var~95_combout\ = (\rfd2_var~92_combout\) # ((!\Equal2~0_combout\ & (\rfd2_var~94_combout\ & \rfa2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rfd2_var~92_combout\,
	datab => \Equal2~0_combout\,
	datac => \rfd2_var~94_combout\,
	datad => \rfa2[2]~input_o\,
	combout => \rfd2_var~95_combout\);

-- Location: IOIBUF_X31_Y0_N8
\pr5ir[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5ir(2),
	o => \pr5ir[2]~input_o\);

-- Location: IOIBUF_X0_Y50_N22
\pr5ir[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5ir(3),
	o => \pr5ir[3]~input_o\);

-- Location: IOIBUF_X0_Y53_N8
\pr5ir[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5ir(4),
	o => \pr5ir[4]~input_o\);

-- Location: IOIBUF_X3_Y73_N1
\pr5ir[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5ir(5),
	o => \pr5ir[5]~input_o\);

-- Location: IOIBUF_X115_Y63_N1
\pr5ir[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5ir(6),
	o => \pr5ir[6]~input_o\);

-- Location: IOIBUF_X89_Y0_N8
\pr5ir[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5ir(7),
	o => \pr5ir[7]~input_o\);

-- Location: IOIBUF_X100_Y73_N15
\pr5ir[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5ir(8),
	o => \pr5ir[8]~input_o\);

-- Location: IOIBUF_X111_Y73_N1
\pr5ir[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5ir(9),
	o => \pr5ir[9]~input_o\);

-- Location: IOIBUF_X115_Y51_N1
\pr5ir[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5ir(10),
	o => \pr5ir[10]~input_o\);

-- Location: IOIBUF_X113_Y73_N1
\pr5ir[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5ir(11),
	o => \pr5ir[11]~input_o\);

-- Location: IOIBUF_X0_Y14_N8
\pr5ir[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5ir(13),
	o => \pr5ir[13]~input_o\);

ww_rfd1(0) <= \rfd1[0]~output_o\;

ww_rfd1(1) <= \rfd1[1]~output_o\;

ww_rfd1(2) <= \rfd1[2]~output_o\;

ww_rfd1(3) <= \rfd1[3]~output_o\;

ww_rfd1(4) <= \rfd1[4]~output_o\;

ww_rfd1(5) <= \rfd1[5]~output_o\;

ww_rfd1(6) <= \rfd1[6]~output_o\;

ww_rfd1(7) <= \rfd1[7]~output_o\;

ww_rfd1(8) <= \rfd1[8]~output_o\;

ww_rfd1(9) <= \rfd1[9]~output_o\;

ww_rfd1(10) <= \rfd1[10]~output_o\;

ww_rfd1(11) <= \rfd1[11]~output_o\;

ww_rfd1(12) <= \rfd1[12]~output_o\;

ww_rfd1(13) <= \rfd1[13]~output_o\;

ww_rfd1(14) <= \rfd1[14]~output_o\;

ww_rfd1(15) <= \rfd1[15]~output_o\;

ww_rfd2(0) <= \rfd2[0]~output_o\;

ww_rfd2(1) <= \rfd2[1]~output_o\;

ww_rfd2(2) <= \rfd2[2]~output_o\;

ww_rfd2(3) <= \rfd2[3]~output_o\;

ww_rfd2(4) <= \rfd2[4]~output_o\;

ww_rfd2(5) <= \rfd2[5]~output_o\;

ww_rfd2(6) <= \rfd2[6]~output_o\;

ww_rfd2(7) <= \rfd2[7]~output_o\;

ww_rfd2(8) <= \rfd2[8]~output_o\;

ww_rfd2(9) <= \rfd2[9]~output_o\;

ww_rfd2(10) <= \rfd2[10]~output_o\;

ww_rfd2(11) <= \rfd2[11]~output_o\;

ww_rfd2(12) <= \rfd2[12]~output_o\;

ww_rfd2(13) <= \rfd2[13]~output_o\;

ww_rfd2(14) <= \rfd2[14]~output_o\;

ww_rfd2(15) <= \rfd2[15]~output_o\;
END structure;


