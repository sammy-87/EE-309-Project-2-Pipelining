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

-- DATE "11/23/2018 18:09:33"

-- 
-- Device: Altera EP4CE115F29I8L Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hazard_null IS
    PORT (
	pr2ir : IN std_logic_vector(15 DOWNTO 0);
	pr3ir : IN std_logic_vector(15 DOWNTO 0);
	pr4ir : IN std_logic_vector(15 DOWNTO 0);
	pr2invalid : IN std_logic;
	pr3invalid : IN std_logic;
	pr4invalid : IN std_logic;
	trfwr : IN std_logic;
	pr3tz : IN std_logic;
	pr4trfwr : IN std_logic;
	pennew : IN std_logic_vector(7 DOWNTO 0);
	reset : IN std_logic;
	controlword : IN std_logic_vector(24 DOWNTO 0);
	Q : OUT std_logic_vector(24 DOWNTO 0);
	pr1en : OUT std_logic;
	pr2en : OUT std_logic;
	pcen : OUT std_logic;
	pr1invalid_o : OUT std_logic;
	pr2invalid_o : OUT std_logic;
	pr3invalid_o : OUT std_logic
	);
END hazard_null;

-- Design Ports Information
-- pr2ir[0]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr2ir[1]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr2ir[2]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr2ir[3]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr2ir[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr2ir[5]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[0]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[4]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[5]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[6]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[7]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[8]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[9]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[10]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[11]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[12]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[13]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[14]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[15]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[16]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[17]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[18]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[19]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[20]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[21]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[22]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[23]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[24]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr1en	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr2en	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcen	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr1invalid_o	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr2invalid_o	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr3invalid_o	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlword[0]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlword[1]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlword[2]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlword[3]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlword[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlword[5]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlword[6]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlword[7]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlword[8]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlword[9]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlword[10]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlword[11]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlword[12]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlword[13]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlword[14]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlword[15]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr2ir[13]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr2ir[14]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr2ir[12]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr2ir[15]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr2ir[9]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr2ir[10]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr3ir[4]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr3ir[3]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr2ir[11]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr3ir[5]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr3invalid	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr3ir[15]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr3ir[14]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr3ir[12]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trfwr	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr3ir[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr3ir[1]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr3ir[13]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr3ir[7]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr3ir[6]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr3ir[8]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr3ir[2]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr3ir[9]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr3ir[10]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr3ir[11]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr4ir[14]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr4ir[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr4ir[13]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr4ir[15]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr4ir[4]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr4ir[3]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr4ir[5]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr4invalid	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr4ir[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr4ir[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr4ir[2]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr4trfwr	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr4ir[7]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr4ir[6]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr4ir[8]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr4ir[10]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr4ir[9]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr4ir[11]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr2ir[6]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr2ir[7]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr2ir[8]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlword[16]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlword[17]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlword[18]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlword[19]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlword[20]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlword[21]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlword[22]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pennew[0]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pennew[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pennew[2]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pennew[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pennew[4]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pennew[5]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pennew[6]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pennew[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlword[23]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlword[24]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr3tz	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr2invalid	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hazard_null IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pr2ir : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_pr3ir : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_pr4ir : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_pr2invalid : std_logic;
SIGNAL ww_pr3invalid : std_logic;
SIGNAL ww_pr4invalid : std_logic;
SIGNAL ww_trfwr : std_logic;
SIGNAL ww_pr3tz : std_logic;
SIGNAL ww_pr4trfwr : std_logic;
SIGNAL ww_pennew : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_controlword : std_logic_vector(24 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(24 DOWNTO 0);
SIGNAL ww_pr1en : std_logic;
SIGNAL ww_pr2en : std_logic;
SIGNAL ww_pcen : std_logic;
SIGNAL ww_pr1invalid_o : std_logic;
SIGNAL ww_pr2invalid_o : std_logic;
SIGNAL ww_pr3invalid_o : std_logic;
SIGNAL \pr2ir[0]~input_o\ : std_logic;
SIGNAL \pr2ir[1]~input_o\ : std_logic;
SIGNAL \pr2ir[2]~input_o\ : std_logic;
SIGNAL \pr2ir[3]~input_o\ : std_logic;
SIGNAL \pr2ir[4]~input_o\ : std_logic;
SIGNAL \pr2ir[5]~input_o\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Q[4]~output_o\ : std_logic;
SIGNAL \Q[5]~output_o\ : std_logic;
SIGNAL \Q[6]~output_o\ : std_logic;
SIGNAL \Q[7]~output_o\ : std_logic;
SIGNAL \Q[8]~output_o\ : std_logic;
SIGNAL \Q[9]~output_o\ : std_logic;
SIGNAL \Q[10]~output_o\ : std_logic;
SIGNAL \Q[11]~output_o\ : std_logic;
SIGNAL \Q[12]~output_o\ : std_logic;
SIGNAL \Q[13]~output_o\ : std_logic;
SIGNAL \Q[14]~output_o\ : std_logic;
SIGNAL \Q[15]~output_o\ : std_logic;
SIGNAL \Q[16]~output_o\ : std_logic;
SIGNAL \Q[17]~output_o\ : std_logic;
SIGNAL \Q[18]~output_o\ : std_logic;
SIGNAL \Q[19]~output_o\ : std_logic;
SIGNAL \Q[20]~output_o\ : std_logic;
SIGNAL \Q[21]~output_o\ : std_logic;
SIGNAL \Q[22]~output_o\ : std_logic;
SIGNAL \Q[23]~output_o\ : std_logic;
SIGNAL \Q[24]~output_o\ : std_logic;
SIGNAL \pr1en~output_o\ : std_logic;
SIGNAL \pr2en~output_o\ : std_logic;
SIGNAL \pcen~output_o\ : std_logic;
SIGNAL \pr1invalid_o~output_o\ : std_logic;
SIGNAL \pr2invalid_o~output_o\ : std_logic;
SIGNAL \pr3invalid_o~output_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \controlword[0]~input_o\ : std_logic;
SIGNAL \temp_control_variable~10_combout\ : std_logic;
SIGNAL \controlword[1]~input_o\ : std_logic;
SIGNAL \temp_control_variable~11_combout\ : std_logic;
SIGNAL \controlword[2]~input_o\ : std_logic;
SIGNAL \temp_control_variable~12_combout\ : std_logic;
SIGNAL \controlword[3]~input_o\ : std_logic;
SIGNAL \temp_control_variable~13_combout\ : std_logic;
SIGNAL \controlword[4]~input_o\ : std_logic;
SIGNAL \temp_control_variable~14_combout\ : std_logic;
SIGNAL \controlword[5]~input_o\ : std_logic;
SIGNAL \temp_control_variable~15_combout\ : std_logic;
SIGNAL \controlword[6]~input_o\ : std_logic;
SIGNAL \temp_control_variable~16_combout\ : std_logic;
SIGNAL \controlword[7]~input_o\ : std_logic;
SIGNAL \temp_control_variable~17_combout\ : std_logic;
SIGNAL \controlword[8]~input_o\ : std_logic;
SIGNAL \temp_control_variable~18_combout\ : std_logic;
SIGNAL \controlword[9]~input_o\ : std_logic;
SIGNAL \temp_control_variable~19_combout\ : std_logic;
SIGNAL \controlword[10]~input_o\ : std_logic;
SIGNAL \temp_control_variable~20_combout\ : std_logic;
SIGNAL \controlword[11]~input_o\ : std_logic;
SIGNAL \temp_control_variable~21_combout\ : std_logic;
SIGNAL \controlword[12]~input_o\ : std_logic;
SIGNAL \temp_control_variable~22_combout\ : std_logic;
SIGNAL \controlword[13]~input_o\ : std_logic;
SIGNAL \temp_control_variable~23_combout\ : std_logic;
SIGNAL \controlword[14]~input_o\ : std_logic;
SIGNAL \temp_control_variable~24_combout\ : std_logic;
SIGNAL \controlword[15]~input_o\ : std_logic;
SIGNAL \temp_control_variable~25_combout\ : std_logic;
SIGNAL \controlword[16]~input_o\ : std_logic;
SIGNAL \pr4ir[5]~input_o\ : std_logic;
SIGNAL \pr4ir[4]~input_o\ : std_logic;
SIGNAL \pr2ir[9]~input_o\ : std_logic;
SIGNAL \pr2ir[10]~input_o\ : std_logic;
SIGNAL \pr4ir[3]~input_o\ : std_logic;
SIGNAL \Equal34~0_combout\ : std_logic;
SIGNAL \pr2ir[7]~input_o\ : std_logic;
SIGNAL \pr2ir[6]~input_o\ : std_logic;
SIGNAL \Equal33~0_combout\ : std_logic;
SIGNAL \pr2ir[8]~input_o\ : std_logic;
SIGNAL \Equal33~1_combout\ : std_logic;
SIGNAL \pr2ir[11]~input_o\ : std_logic;
SIGNAL \temp_control_variable~40_combout\ : std_logic;
SIGNAL \pr4ir[9]~input_o\ : std_logic;
SIGNAL \pr4ir[10]~input_o\ : std_logic;
SIGNAL \Equal27~0_combout\ : std_logic;
SIGNAL \pr4ir[11]~input_o\ : std_logic;
SIGNAL \Equal27~1_combout\ : std_logic;
SIGNAL \pr4ir[13]~input_o\ : std_logic;
SIGNAL \pr4ir[12]~input_o\ : std_logic;
SIGNAL \pr4ir[15]~input_o\ : std_logic;
SIGNAL \pr4ir[14]~input_o\ : std_logic;
SIGNAL \pr4invalid~input_o\ : std_logic;
SIGNAL \process_0~27_combout\ : std_logic;
SIGNAL \process_0~38_combout\ : std_logic;
SIGNAL \process_0~22_combout\ : std_logic;
SIGNAL \process_0~39_combout\ : std_logic;
SIGNAL \Equal28~0_combout\ : std_logic;
SIGNAL \Equal28~1_combout\ : std_logic;
SIGNAL \temp_control_variable~41_combout\ : std_logic;
SIGNAL \pr4trfwr~input_o\ : std_logic;
SIGNAL \pr4ir[0]~input_o\ : std_logic;
SIGNAL \process_0~24_combout\ : std_logic;
SIGNAL \pr4ir[1]~input_o\ : std_logic;
SIGNAL \process_0~26_combout\ : std_logic;
SIGNAL \temp_control_variable~42_combout\ : std_logic;
SIGNAL \process_0~28_combout\ : std_logic;
SIGNAL \pr4ir[6]~input_o\ : std_logic;
SIGNAL \pr4ir[7]~input_o\ : std_logic;
SIGNAL \Equal23~0_combout\ : std_logic;
SIGNAL \pr4ir[8]~input_o\ : std_logic;
SIGNAL \Equal23~1_combout\ : std_logic;
SIGNAL \Equal24~0_combout\ : std_logic;
SIGNAL \Equal24~1_combout\ : std_logic;
SIGNAL \temp_control_variable~43_combout\ : std_logic;
SIGNAL \pr2ir[12]~input_o\ : std_logic;
SIGNAL \pr2ir[14]~input_o\ : std_logic;
SIGNAL \pr2ir[13]~input_o\ : std_logic;
SIGNAL \pr2ir[15]~input_o\ : std_logic;
SIGNAL \process_0~30_combout\ : std_logic;
SIGNAL \temp_control_variable~51_combout\ : std_logic;
SIGNAL \temp_control_variable~50_combout\ : std_logic;
SIGNAL \temp_control_variable~111_combout\ : std_logic;
SIGNAL \pr3ir[8]~input_o\ : std_logic;
SIGNAL \pr3ir[7]~input_o\ : std_logic;
SIGNAL \pr3ir[6]~input_o\ : std_logic;
SIGNAL \process_0~18_combout\ : std_logic;
SIGNAL \process_0~19_combout\ : std_logic;
SIGNAL \pr3ir[12]~input_o\ : std_logic;
SIGNAL \pr3ir[15]~input_o\ : std_logic;
SIGNAL \pr3invalid~input_o\ : std_logic;
SIGNAL \pr3ir[14]~input_o\ : std_logic;
SIGNAL \process_0~16_combout\ : std_logic;
SIGNAL \pr3ir[13]~input_o\ : std_logic;
SIGNAL \process_0~34_combout\ : std_logic;
SIGNAL \process_0~35_combout\ : std_logic;
SIGNAL \process_0~36_combout\ : std_logic;
SIGNAL \pr3ir[1]~input_o\ : std_logic;
SIGNAL \process_0~14_combout\ : std_logic;
SIGNAL \pr3ir[0]~input_o\ : std_logic;
SIGNAL \trfwr~input_o\ : std_logic;
SIGNAL \process_0~15_combout\ : std_logic;
SIGNAL \pr3ir[3]~input_o\ : std_logic;
SIGNAL \pr3ir[4]~input_o\ : std_logic;
SIGNAL \Equal16~0_combout\ : std_logic;
SIGNAL \pr3ir[5]~input_o\ : std_logic;
SIGNAL \Equal16~1_combout\ : std_logic;
SIGNAL \Equal17~0_combout\ : std_logic;
SIGNAL \Equal17~1_combout\ : std_logic;
SIGNAL \process_0~32_combout\ : std_logic;
SIGNAL \pr3ir[2]~input_o\ : std_logic;
SIGNAL \process_0~20_combout\ : std_logic;
SIGNAL \process_0~33_combout\ : std_logic;
SIGNAL \pr1en_var~1_combout\ : std_logic;
SIGNAL \pr3ir[11]~input_o\ : std_logic;
SIGNAL \pr3ir[10]~input_o\ : std_logic;
SIGNAL \pr3ir[9]~input_o\ : std_logic;
SIGNAL \Equal20~0_combout\ : std_logic;
SIGNAL \Equal20~1_combout\ : std_logic;
SIGNAL \Equal19~0_combout\ : std_logic;
SIGNAL \Equal19~1_combout\ : std_logic;
SIGNAL \process_0~31_combout\ : std_logic;
SIGNAL \process_0~23_combout\ : std_logic;
SIGNAL \pr1invalid_o_var~0_combout\ : std_logic;
SIGNAL \process_0~29_combout\ : std_logic;
SIGNAL \temp_control_variable~44_combout\ : std_logic;
SIGNAL \temp_control_variable~48_combout\ : std_logic;
SIGNAL \temp_control_variable~54_combout\ : std_logic;
SIGNAL \pr4ir[2]~input_o\ : std_logic;
SIGNAL \process_0~25_combout\ : std_logic;
SIGNAL \temp_control_variable~49_combout\ : std_logic;
SIGNAL \temp_control_variable~110_combout\ : std_logic;
SIGNAL \process_0~37_combout\ : std_logic;
SIGNAL \process_0~17_combout\ : std_logic;
SIGNAL \pr1en_var~0_combout\ : std_logic;
SIGNAL \temp_control_variable~37_combout\ : std_logic;
SIGNAL \temp_control_variable~39_combout\ : std_logic;
SIGNAL \temp_control_variable~52_combout\ : std_logic;
SIGNAL \temp_control_variable~53_combout\ : std_logic;
SIGNAL \temp_control_variable~55_combout\ : std_logic;
SIGNAL \process_0~12_combout\ : std_logic;
SIGNAL \temp_control_variable~32_combout\ : std_logic;
SIGNAL \temp_control_variable~36_combout\ : std_logic;
SIGNAL \temp_control_variable~33_combout\ : std_logic;
SIGNAL \process_0~42_combout\ : std_logic;
SIGNAL \temp_control_variable~38_combout\ : std_logic;
SIGNAL \temp_control_variable~45_combout\ : std_logic;
SIGNAL \temp_control_variable~46_combout\ : std_logic;
SIGNAL \temp_control_variable~34_combout\ : std_logic;
SIGNAL \temp_control_variable~109_combout\ : std_logic;
SIGNAL \temp_control_variable~35_combout\ : std_logic;
SIGNAL \temp_control_variable~47_combout\ : std_logic;
SIGNAL \process_0~13_combout\ : std_logic;
SIGNAL \Equal34~1_combout\ : std_logic;
SIGNAL \temp_control_variable~28_combout\ : std_logic;
SIGNAL \temp_control_variable~108_combout\ : std_logic;
SIGNAL \temp_control_variable~29_combout\ : std_logic;
SIGNAL \temp_control_variable~30_combout\ : std_logic;
SIGNAL \process_0~41_combout\ : std_logic;
SIGNAL \process_0~40_combout\ : std_logic;
SIGNAL \process_0~21_combout\ : std_logic;
SIGNAL \temp_control_variable~26_combout\ : std_logic;
SIGNAL \temp_control_variable~27_combout\ : std_logic;
SIGNAL \temp_control_variable~31_combout\ : std_logic;
SIGNAL \temp_control_variable~56_combout\ : std_logic;
SIGNAL \temp_control_variable~57_combout\ : std_logic;
SIGNAL \process_0~43_combout\ : std_logic;
SIGNAL \temp_control_variable~59_combout\ : std_logic;
SIGNAL \temp_control_variable~60_combout\ : std_logic;
SIGNAL \temp_control_variable~61_combout\ : std_logic;
SIGNAL \temp_control_variable~58_combout\ : std_logic;
SIGNAL \temp_control_variable~62_combout\ : std_logic;
SIGNAL \controlword[17]~input_o\ : std_logic;
SIGNAL \temp_control_variable~64_combout\ : std_logic;
SIGNAL \temp_control_variable~112_combout\ : std_logic;
SIGNAL \temp_control_variable~63_combout\ : std_logic;
SIGNAL \temp_control_variable~65_combout\ : std_logic;
SIGNAL \temp_control_variable~66_combout\ : std_logic;
SIGNAL \temp_control_variable~67_combout\ : std_logic;
SIGNAL \temp_control_variable~68_combout\ : std_logic;
SIGNAL \temp_control_variable~69_combout\ : std_logic;
SIGNAL \controlword[18]~input_o\ : std_logic;
SIGNAL \temp_control_variable~70_combout\ : std_logic;
SIGNAL \temp_control_variable~72_combout\ : std_logic;
SIGNAL \temp_control_variable~73_combout\ : std_logic;
SIGNAL \temp_control_variable~71_combout\ : std_logic;
SIGNAL \temp_control_variable~75_combout\ : std_logic;
SIGNAL \temp_control_variable~74_combout\ : std_logic;
SIGNAL \temp_control_variable~76_combout\ : std_logic;
SIGNAL \temp_control_variable~77_combout\ : std_logic;
SIGNAL \temp_control_variable~78_combout\ : std_logic;
SIGNAL \temp_control_variable~79_combout\ : std_logic;
SIGNAL \temp_control_variable~80_combout\ : std_logic;
SIGNAL \temp_control_variable~86_combout\ : std_logic;
SIGNAL \temp_control_variable~87_combout\ : std_logic;
SIGNAL \temp_control_variable~88_combout\ : std_logic;
SIGNAL \temp_control_variable~89_combout\ : std_logic;
SIGNAL \temp_control_variable~83_combout\ : std_logic;
SIGNAL \temp_control_variable~90_combout\ : std_logic;
SIGNAL \temp_control_variable~91_combout\ : std_logic;
SIGNAL \temp_control_variable~92_combout\ : std_logic;
SIGNAL \temp_control_variable~93_combout\ : std_logic;
SIGNAL \temp_control_variable~94_combout\ : std_logic;
SIGNAL \temp_control_variable~84_combout\ : std_logic;
SIGNAL \temp_control_variable~95_combout\ : std_logic;
SIGNAL \temp_control_variable~81_combout\ : std_logic;
SIGNAL \temp_control_variable~82_combout\ : std_logic;
SIGNAL \temp_control_variable~85_combout\ : std_logic;
SIGNAL \controlword[19]~input_o\ : std_logic;
SIGNAL \temp_control_variable~96_combout\ : std_logic;
SIGNAL \temp_control_variable~97_combout\ : std_logic;
SIGNAL \temp_control_variable~98_combout\ : std_logic;
SIGNAL \controlword[20]~input_o\ : std_logic;
SIGNAL \temp_control_variable~99_combout\ : std_logic;
SIGNAL \temp_control_variable~100_combout\ : std_logic;
SIGNAL \temp_control_variable~101_combout\ : std_logic;
SIGNAL \controlword[21]~input_o\ : std_logic;
SIGNAL \temp_control_variable~102_combout\ : std_logic;
SIGNAL \controlword[22]~input_o\ : std_logic;
SIGNAL \temp_control_variable~103_combout\ : std_logic;
SIGNAL \controlword[23]~input_o\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \pennew[7]~input_o\ : std_logic;
SIGNAL \pennew[4]~input_o\ : std_logic;
SIGNAL \pennew[5]~input_o\ : std_logic;
SIGNAL \pennew[6]~input_o\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \pennew[1]~input_o\ : std_logic;
SIGNAL \pennew[0]~input_o\ : std_logic;
SIGNAL \pennew[3]~input_o\ : std_logic;
SIGNAL \pennew[2]~input_o\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \temp_control_variable~104_combout\ : std_logic;
SIGNAL \temp_control_variable~105_combout\ : std_logic;
SIGNAL \controlword[24]~input_o\ : std_logic;
SIGNAL \temp_control_variable~106_combout\ : std_logic;
SIGNAL \pr1en_var~4_combout\ : std_logic;
SIGNAL \temp_control_variable~107_combout\ : std_logic;
SIGNAL \pr1en_var~5_combout\ : std_logic;
SIGNAL \pr1en_var~2_combout\ : std_logic;
SIGNAL \pr1en_var~3_combout\ : std_logic;
SIGNAL \pr1en_var~6_combout\ : std_logic;
SIGNAL \pr3tz~input_o\ : std_logic;
SIGNAL \pr1invalid_o_var~1_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \pr2invalid~input_o\ : std_logic;
SIGNAL \pr1invalid_o_var~2_combout\ : std_logic;
SIGNAL \pr3invalid_o_var~0_combout\ : std_logic;
SIGNAL \pr3invalid_o_var~1_combout\ : std_logic;
SIGNAL \pr3invalid_o_var~2_combout\ : std_logic;
SIGNAL \pr3invalid_o_var~3_combout\ : std_logic;
SIGNAL \pr3invalid_o_var~4_combout\ : std_logic;

BEGIN

ww_pr2ir <= pr2ir;
ww_pr3ir <= pr3ir;
ww_pr4ir <= pr4ir;
ww_pr2invalid <= pr2invalid;
ww_pr3invalid <= pr3invalid;
ww_pr4invalid <= pr4invalid;
ww_trfwr <= trfwr;
ww_pr3tz <= pr3tz;
ww_pr4trfwr <= pr4trfwr;
ww_pennew <= pennew;
ww_reset <= reset;
ww_controlword <= controlword;
Q <= ww_Q;
pr1en <= ww_pr1en;
pr2en <= ww_pr2en;
pcen <= ww_pcen;
pr1invalid_o <= ww_pr1invalid_o;
pr2invalid_o <= ww_pr2invalid_o;
pr3invalid_o <= ww_pr3invalid_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X54_Y0_N9
\Q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_control_variable~10_combout\,
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\Q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_control_variable~11_combout\,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\Q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_control_variable~12_combout\,
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\Q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_control_variable~13_combout\,
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\Q[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_control_variable~14_combout\,
	devoe => ww_devoe,
	o => \Q[4]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\Q[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_control_variable~15_combout\,
	devoe => ww_devoe,
	o => \Q[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\Q[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_control_variable~16_combout\,
	devoe => ww_devoe,
	o => \Q[6]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\Q[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_control_variable~17_combout\,
	devoe => ww_devoe,
	o => \Q[7]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\Q[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_control_variable~18_combout\,
	devoe => ww_devoe,
	o => \Q[8]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\Q[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_control_variable~19_combout\,
	devoe => ww_devoe,
	o => \Q[9]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\Q[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_control_variable~20_combout\,
	devoe => ww_devoe,
	o => \Q[10]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\Q[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_control_variable~21_combout\,
	devoe => ww_devoe,
	o => \Q[11]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\Q[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_control_variable~22_combout\,
	devoe => ww_devoe,
	o => \Q[12]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\Q[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_control_variable~23_combout\,
	devoe => ww_devoe,
	o => \Q[13]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\Q[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_control_variable~24_combout\,
	devoe => ww_devoe,
	o => \Q[14]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\Q[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_control_variable~25_combout\,
	devoe => ww_devoe,
	o => \Q[15]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\Q[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_control_variable~62_combout\,
	devoe => ww_devoe,
	o => \Q[16]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\Q[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_control_variable~66_combout\,
	devoe => ww_devoe,
	o => \Q[17]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\Q[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_control_variable~70_combout\,
	devoe => ww_devoe,
	o => \Q[18]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\Q[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_control_variable~96_combout\,
	devoe => ww_devoe,
	o => \Q[19]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\Q[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_control_variable~99_combout\,
	devoe => ww_devoe,
	o => \Q[20]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\Q[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_control_variable~102_combout\,
	devoe => ww_devoe,
	o => \Q[21]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\Q[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_control_variable~103_combout\,
	devoe => ww_devoe,
	o => \Q[22]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\Q[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_control_variable~105_combout\,
	devoe => ww_devoe,
	o => \Q[23]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\Q[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_control_variable~106_combout\,
	devoe => ww_devoe,
	o => \Q[24]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\pr1en~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr1en_var~6_combout\,
	devoe => ww_devoe,
	o => \pr1en~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\pr2en~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr1en_var~6_combout\,
	devoe => ww_devoe,
	o => \pr2en~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\pcen~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr1en_var~6_combout\,
	devoe => ww_devoe,
	o => \pcen~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\pr1invalid_o~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr1invalid_o_var~2_combout\,
	devoe => ww_devoe,
	o => \pr1invalid_o~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\pr2invalid_o~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr1invalid_o_var~2_combout\,
	devoe => ww_devoe,
	o => \pr2invalid_o~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\pr3invalid_o~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr3invalid_o_var~4_combout\,
	devoe => ww_devoe,
	o => \pr3invalid_o~output_o\);

-- Location: IOIBUF_X69_Y0_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\controlword[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_controlword(0),
	o => \controlword[0]~input_o\);

-- Location: LCCOMB_X59_Y1_N16
\temp_control_variable~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~10_combout\ = (!\reset~input_o\ & \controlword[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \controlword[0]~input_o\,
	combout => \temp_control_variable~10_combout\);

-- Location: IOIBUF_X52_Y0_N15
\controlword[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_controlword(1),
	o => \controlword[1]~input_o\);

-- Location: LCCOMB_X59_Y1_N18
\temp_control_variable~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~11_combout\ = (!\reset~input_o\ & \controlword[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \controlword[1]~input_o\,
	combout => \temp_control_variable~11_combout\);

-- Location: IOIBUF_X60_Y0_N8
\controlword[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_controlword(2),
	o => \controlword[2]~input_o\);

-- Location: LCCOMB_X59_Y1_N28
\temp_control_variable~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~12_combout\ = (!\reset~input_o\ & \controlword[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \controlword[2]~input_o\,
	combout => \temp_control_variable~12_combout\);

-- Location: IOIBUF_X60_Y0_N15
\controlword[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_controlword(3),
	o => \controlword[3]~input_o\);

-- Location: LCCOMB_X59_Y1_N22
\temp_control_variable~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~13_combout\ = (!\reset~input_o\ & \controlword[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \controlword[3]~input_o\,
	combout => \temp_control_variable~13_combout\);

-- Location: IOIBUF_X67_Y0_N15
\controlword[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_controlword(4),
	o => \controlword[4]~input_o\);

-- Location: LCCOMB_X59_Y1_N0
\temp_control_variable~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~14_combout\ = (\controlword[4]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlword[4]~input_o\,
	datac => \reset~input_o\,
	combout => \temp_control_variable~14_combout\);

-- Location: IOIBUF_X49_Y0_N22
\controlword[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_controlword(5),
	o => \controlword[5]~input_o\);

-- Location: LCCOMB_X59_Y1_N26
\temp_control_variable~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~15_combout\ = (\controlword[5]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlword[5]~input_o\,
	datac => \reset~input_o\,
	combout => \temp_control_variable~15_combout\);

-- Location: IOIBUF_X49_Y0_N15
\controlword[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_controlword(6),
	o => \controlword[6]~input_o\);

-- Location: LCCOMB_X59_Y1_N20
\temp_control_variable~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~16_combout\ = (\controlword[6]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlword[6]~input_o\,
	datac => \reset~input_o\,
	combout => \temp_control_variable~16_combout\);

-- Location: IOIBUF_X65_Y0_N22
\controlword[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_controlword(7),
	o => \controlword[7]~input_o\);

-- Location: LCCOMB_X59_Y1_N30
\temp_control_variable~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~17_combout\ = (\controlword[7]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlword[7]~input_o\,
	datac => \reset~input_o\,
	combout => \temp_control_variable~17_combout\);

-- Location: IOIBUF_X60_Y0_N22
\controlword[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_controlword(8),
	o => \controlword[8]~input_o\);

-- Location: LCCOMB_X59_Y1_N24
\temp_control_variable~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~18_combout\ = (!\reset~input_o\ & \controlword[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \controlword[8]~input_o\,
	combout => \temp_control_variable~18_combout\);

-- Location: IOIBUF_X62_Y0_N22
\controlword[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_controlword(9),
	o => \controlword[9]~input_o\);

-- Location: LCCOMB_X59_Y1_N2
\temp_control_variable~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~19_combout\ = (\controlword[9]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlword[9]~input_o\,
	datac => \reset~input_o\,
	combout => \temp_control_variable~19_combout\);

-- Location: IOIBUF_X100_Y73_N15
\controlword[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_controlword(10),
	o => \controlword[10]~input_o\);

-- Location: LCCOMB_X72_Y69_N16
\temp_control_variable~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~20_combout\ = (!\reset~input_o\ & \controlword[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \controlword[10]~input_o\,
	combout => \temp_control_variable~20_combout\);

-- Location: IOIBUF_X69_Y0_N1
\controlword[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_controlword(11),
	o => \controlword[11]~input_o\);

-- Location: LCCOMB_X65_Y1_N24
\temp_control_variable~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~21_combout\ = (\controlword[11]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controlword[11]~input_o\,
	datad => \reset~input_o\,
	combout => \temp_control_variable~21_combout\);

-- Location: IOIBUF_X54_Y0_N22
\controlword[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_controlword(12),
	o => \controlword[12]~input_o\);

-- Location: LCCOMB_X59_Y1_N12
\temp_control_variable~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~22_combout\ = (\controlword[12]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlword[12]~input_o\,
	datac => \reset~input_o\,
	combout => \temp_control_variable~22_combout\);

-- Location: IOIBUF_X56_Y0_N22
\controlword[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_controlword(13),
	o => \controlword[13]~input_o\);

-- Location: LCCOMB_X59_Y1_N6
\temp_control_variable~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~23_combout\ = (\controlword[13]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlword[13]~input_o\,
	datac => \reset~input_o\,
	combout => \temp_control_variable~23_combout\);

-- Location: IOIBUF_X65_Y0_N8
\controlword[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_controlword(14),
	o => \controlword[14]~input_o\);

-- Location: LCCOMB_X65_Y1_N2
\temp_control_variable~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~24_combout\ = (\controlword[14]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controlword[14]~input_o\,
	datad => \reset~input_o\,
	combout => \temp_control_variable~24_combout\);

-- Location: IOIBUF_X60_Y0_N1
\controlword[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_controlword(15),
	o => \controlword[15]~input_o\);

-- Location: LCCOMB_X59_Y1_N8
\temp_control_variable~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~25_combout\ = (!\reset~input_o\ & \controlword[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \controlword[15]~input_o\,
	combout => \temp_control_variable~25_combout\);

-- Location: IOIBUF_X67_Y73_N22
\controlword[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_controlword(16),
	o => \controlword[16]~input_o\);

-- Location: IOIBUF_X65_Y73_N8
\pr4ir[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr4ir(5),
	o => \pr4ir[5]~input_o\);

-- Location: IOIBUF_X81_Y73_N15
\pr4ir[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr4ir(4),
	o => \pr4ir[4]~input_o\);

-- Location: IOIBUF_X83_Y73_N8
\pr2ir[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr2ir(9),
	o => \pr2ir[9]~input_o\);

-- Location: IOIBUF_X81_Y73_N1
\pr2ir[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr2ir(10),
	o => \pr2ir[10]~input_o\);

-- Location: IOIBUF_X102_Y73_N8
\pr4ir[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr4ir(3),
	o => \pr4ir[3]~input_o\);

-- Location: LCCOMB_X77_Y69_N14
\Equal34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal34~0_combout\ = (\pr4ir[4]~input_o\ & (\pr2ir[10]~input_o\ & (\pr2ir[9]~input_o\ $ (!\pr4ir[3]~input_o\)))) # (!\pr4ir[4]~input_o\ & (!\pr2ir[10]~input_o\ & (\pr2ir[9]~input_o\ $ (!\pr4ir[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr4ir[4]~input_o\,
	datab => \pr2ir[9]~input_o\,
	datac => \pr2ir[10]~input_o\,
	datad => \pr4ir[3]~input_o\,
	combout => \Equal34~0_combout\);

-- Location: IOIBUF_X85_Y73_N15
\pr2ir[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr2ir(7),
	o => \pr2ir[7]~input_o\);

-- Location: IOIBUF_X85_Y73_N1
\pr2ir[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr2ir(6),
	o => \pr2ir[6]~input_o\);

-- Location: LCCOMB_X77_Y69_N8
\Equal33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal33~0_combout\ = (\pr4ir[4]~input_o\ & (\pr2ir[7]~input_o\ & (\pr2ir[6]~input_o\ $ (!\pr4ir[3]~input_o\)))) # (!\pr4ir[4]~input_o\ & (!\pr2ir[7]~input_o\ & (\pr2ir[6]~input_o\ $ (!\pr4ir[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr4ir[4]~input_o\,
	datab => \pr2ir[7]~input_o\,
	datac => \pr2ir[6]~input_o\,
	datad => \pr4ir[3]~input_o\,
	combout => \Equal33~0_combout\);

-- Location: IOIBUF_X79_Y73_N1
\pr2ir[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr2ir(8),
	o => \pr2ir[8]~input_o\);

-- Location: LCCOMB_X63_Y69_N26
\Equal33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal33~1_combout\ = (\Equal33~0_combout\ & (\pr4ir[5]~input_o\ $ (!\pr2ir[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr4ir[5]~input_o\,
	datab => \Equal33~0_combout\,
	datac => \pr2ir[8]~input_o\,
	combout => \Equal33~1_combout\);

-- Location: IOIBUF_X79_Y73_N8
\pr2ir[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr2ir(11),
	o => \pr2ir[11]~input_o\);

-- Location: LCCOMB_X63_Y69_N4
\temp_control_variable~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~40_combout\ = (\Equal33~1_combout\) # ((\Equal34~0_combout\ & (\pr4ir[5]~input_o\ $ (!\pr2ir[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr4ir[5]~input_o\,
	datab => \Equal34~0_combout\,
	datac => \Equal33~1_combout\,
	datad => \pr2ir[11]~input_o\,
	combout => \temp_control_variable~40_combout\);

-- Location: IOIBUF_X87_Y73_N15
\pr4ir[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr4ir(9),
	o => \pr4ir[9]~input_o\);

-- Location: IOIBUF_X87_Y73_N1
\pr4ir[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr4ir(10),
	o => \pr4ir[10]~input_o\);

-- Location: LCCOMB_X77_Y69_N20
\Equal27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~0_combout\ = (\pr4ir[9]~input_o\ & (\pr2ir[6]~input_o\ & (\pr2ir[7]~input_o\ $ (!\pr4ir[10]~input_o\)))) # (!\pr4ir[9]~input_o\ & (!\pr2ir[6]~input_o\ & (\pr2ir[7]~input_o\ $ (!\pr4ir[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr4ir[9]~input_o\,
	datab => \pr2ir[7]~input_o\,
	datac => \pr2ir[6]~input_o\,
	datad => \pr4ir[10]~input_o\,
	combout => \Equal27~0_combout\);

-- Location: IOIBUF_X89_Y73_N22
\pr4ir[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr4ir(11),
	o => \pr4ir[11]~input_o\);

-- Location: LCCOMB_X77_Y69_N22
\Equal27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~1_combout\ = (\Equal27~0_combout\ & (\pr2ir[8]~input_o\ $ (!\pr4ir[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal27~0_combout\,
	datac => \pr2ir[8]~input_o\,
	datad => \pr4ir[11]~input_o\,
	combout => \Equal27~1_combout\);

-- Location: IOIBUF_X62_Y73_N22
\pr4ir[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr4ir(13),
	o => \pr4ir[13]~input_o\);

-- Location: IOIBUF_X65_Y73_N15
\pr4ir[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr4ir(12),
	o => \pr4ir[12]~input_o\);

-- Location: IOIBUF_X62_Y73_N15
\pr4ir[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr4ir(15),
	o => \pr4ir[15]~input_o\);

-- Location: IOIBUF_X40_Y73_N8
\pr4ir[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr4ir(14),
	o => \pr4ir[14]~input_o\);

-- Location: IOIBUF_X65_Y73_N22
\pr4invalid~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr4invalid,
	o => \pr4invalid~input_o\);

-- Location: LCCOMB_X63_Y69_N12
\process_0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~27_combout\ = (\pr4ir[12]~input_o\ & (!\pr4ir[15]~input_o\ & (!\pr4ir[14]~input_o\ & !\pr4invalid~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr4ir[12]~input_o\,
	datab => \pr4ir[15]~input_o\,
	datac => \pr4ir[14]~input_o\,
	datad => \pr4invalid~input_o\,
	combout => \process_0~27_combout\);

-- Location: LCCOMB_X63_Y69_N30
\process_0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~38_combout\ = (\pr4ir[13]~input_o\ & \process_0~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr4ir[13]~input_o\,
	datad => \process_0~27_combout\,
	combout => \process_0~38_combout\);

-- Location: LCCOMB_X63_Y69_N8
\process_0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~22_combout\ = (!\pr4ir[13]~input_o\ & (!\pr4ir[15]~input_o\ & (\pr4ir[14]~input_o\ & !\pr4ir[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr4ir[13]~input_o\,
	datab => \pr4ir[15]~input_o\,
	datac => \pr4ir[14]~input_o\,
	datad => \pr4ir[12]~input_o\,
	combout => \process_0~22_combout\);

-- Location: LCCOMB_X63_Y69_N16
\process_0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~39_combout\ = (\process_0~22_combout\ & !\pr4invalid~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \process_0~22_combout\,
	datad => \pr4invalid~input_o\,
	combout => \process_0~39_combout\);

-- Location: LCCOMB_X77_Y69_N4
\Equal28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal28~0_combout\ = (\pr4ir[9]~input_o\ & (\pr2ir[9]~input_o\ & (\pr2ir[10]~input_o\ $ (!\pr4ir[10]~input_o\)))) # (!\pr4ir[9]~input_o\ & (!\pr2ir[9]~input_o\ & (\pr2ir[10]~input_o\ $ (!\pr4ir[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr4ir[9]~input_o\,
	datab => \pr2ir[9]~input_o\,
	datac => \pr2ir[10]~input_o\,
	datad => \pr4ir[10]~input_o\,
	combout => \Equal28~0_combout\);

-- Location: LCCOMB_X77_Y69_N6
\Equal28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal28~1_combout\ = (\Equal28~0_combout\ & (\pr2ir[11]~input_o\ $ (!\pr4ir[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr2ir[11]~input_o\,
	datac => \Equal28~0_combout\,
	datad => \pr4ir[11]~input_o\,
	combout => \Equal28~1_combout\);

-- Location: LCCOMB_X65_Y69_N12
\temp_control_variable~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~41_combout\ = (\Equal27~1_combout\ & ((\process_0~38_combout\) # ((\process_0~39_combout\)))) # (!\Equal27~1_combout\ & (\Equal28~1_combout\ & ((\process_0~38_combout\) # (\process_0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal27~1_combout\,
	datab => \process_0~38_combout\,
	datac => \process_0~39_combout\,
	datad => \Equal28~1_combout\,
	combout => \temp_control_variable~41_combout\);

-- Location: IOIBUF_X47_Y73_N1
\pr4trfwr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr4trfwr,
	o => \pr4trfwr~input_o\);

-- Location: IOIBUF_X38_Y73_N1
\pr4ir[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr4ir(0),
	o => \pr4ir[0]~input_o\);

-- Location: LCCOMB_X63_Y69_N22
\process_0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~24_combout\ = (!\pr4ir[12]~input_o\ & (!\pr4ir[15]~input_o\ & (!\pr4ir[14]~input_o\ & !\pr4invalid~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr4ir[12]~input_o\,
	datab => \pr4ir[15]~input_o\,
	datac => \pr4ir[14]~input_o\,
	datad => \pr4invalid~input_o\,
	combout => \process_0~24_combout\);

-- Location: IOIBUF_X38_Y73_N8
\pr4ir[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr4ir(1),
	o => \pr4ir[1]~input_o\);

-- Location: LCCOMB_X63_Y69_N2
\process_0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~26_combout\ = (\pr4trfwr~input_o\ & (\process_0~24_combout\ & (\pr4ir[0]~input_o\ $ (\pr4ir[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr4trfwr~input_o\,
	datab => \pr4ir[0]~input_o\,
	datac => \process_0~24_combout\,
	datad => \pr4ir[1]~input_o\,
	combout => \process_0~26_combout\);

-- Location: LCCOMB_X65_Y69_N6
\temp_control_variable~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~42_combout\ = (\temp_control_variable~41_combout\ & (((\Equal27~1_combout\)))) # (!\temp_control_variable~41_combout\ & (\temp_control_variable~40_combout\ & (\process_0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~40_combout\,
	datab => \temp_control_variable~41_combout\,
	datac => \process_0~26_combout\,
	datad => \Equal27~1_combout\,
	combout => \temp_control_variable~42_combout\);

-- Location: LCCOMB_X63_Y69_N14
\process_0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~28_combout\ = (!\pr4ir[13]~input_o\ & \process_0~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr4ir[13]~input_o\,
	datad => \process_0~27_combout\,
	combout => \process_0~28_combout\);

-- Location: IOIBUF_X107_Y73_N8
\pr4ir[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr4ir(6),
	o => \pr4ir[6]~input_o\);

-- Location: IOIBUF_X85_Y73_N8
\pr4ir[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr4ir(7),
	o => \pr4ir[7]~input_o\);

-- Location: LCCOMB_X77_Y69_N16
\Equal23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal23~0_combout\ = (\pr4ir[6]~input_o\ & (\pr2ir[6]~input_o\ & (\pr4ir[7]~input_o\ $ (!\pr2ir[7]~input_o\)))) # (!\pr4ir[6]~input_o\ & (!\pr2ir[6]~input_o\ & (\pr4ir[7]~input_o\ $ (!\pr2ir[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr4ir[6]~input_o\,
	datab => \pr4ir[7]~input_o\,
	datac => \pr2ir[6]~input_o\,
	datad => \pr2ir[7]~input_o\,
	combout => \Equal23~0_combout\);

-- Location: IOIBUF_X102_Y73_N1
\pr4ir[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr4ir(8),
	o => \pr4ir[8]~input_o\);

-- Location: LCCOMB_X77_Y69_N10
\Equal23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal23~1_combout\ = (\Equal23~0_combout\ & (\pr2ir[8]~input_o\ $ (!\pr4ir[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal23~0_combout\,
	datac => \pr2ir[8]~input_o\,
	datad => \pr4ir[8]~input_o\,
	combout => \Equal23~1_combout\);

-- Location: LCCOMB_X77_Y69_N24
\Equal24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal24~0_combout\ = (\pr4ir[6]~input_o\ & (\pr2ir[9]~input_o\ & (\pr2ir[10]~input_o\ $ (!\pr4ir[7]~input_o\)))) # (!\pr4ir[6]~input_o\ & (!\pr2ir[9]~input_o\ & (\pr2ir[10]~input_o\ $ (!\pr4ir[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr4ir[6]~input_o\,
	datab => \pr2ir[9]~input_o\,
	datac => \pr2ir[10]~input_o\,
	datad => \pr4ir[7]~input_o\,
	combout => \Equal24~0_combout\);

-- Location: LCCOMB_X77_Y69_N26
\Equal24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal24~1_combout\ = (\Equal24~0_combout\ & (\pr2ir[11]~input_o\ $ (!\pr4ir[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr2ir[11]~input_o\,
	datab => \Equal24~0_combout\,
	datad => \pr4ir[8]~input_o\,
	combout => \Equal24~1_combout\);

-- Location: LCCOMB_X65_Y69_N16
\temp_control_variable~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~43_combout\ = (\process_0~28_combout\ & ((\Equal23~1_combout\) # ((\temp_control_variable~42_combout\ & !\Equal24~1_combout\)))) # (!\process_0~28_combout\ & (\temp_control_variable~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~42_combout\,
	datab => \process_0~28_combout\,
	datac => \Equal23~1_combout\,
	datad => \Equal24~1_combout\,
	combout => \temp_control_variable~43_combout\);

-- Location: IOIBUF_X60_Y73_N8
\pr2ir[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr2ir(12),
	o => \pr2ir[12]~input_o\);

-- Location: IOIBUF_X49_Y73_N15
\pr2ir[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr2ir(14),
	o => \pr2ir[14]~input_o\);

-- Location: IOIBUF_X52_Y73_N22
\pr2ir[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr2ir(13),
	o => \pr2ir[13]~input_o\);

-- Location: IOIBUF_X60_Y73_N15
\pr2ir[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr2ir(15),
	o => \pr2ir[15]~input_o\);

-- Location: LCCOMB_X61_Y69_N12
\process_0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~30_combout\ = (!\pr2ir[13]~input_o\ & ((\pr2ir[14]~input_o\ & ((!\pr2ir[15]~input_o\))) # (!\pr2ir[14]~input_o\ & (\pr2ir[12]~input_o\ & \pr2ir[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr2ir[12]~input_o\,
	datab => \pr2ir[14]~input_o\,
	datac => \pr2ir[13]~input_o\,
	datad => \pr2ir[15]~input_o\,
	combout => \process_0~30_combout\);

-- Location: LCCOMB_X65_Y69_N28
\temp_control_variable~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~51_combout\ = (\process_0~28_combout\ & ((\Equal23~1_combout\) # ((!\process_0~30_combout\ & \Equal24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal23~1_combout\,
	datab => \process_0~28_combout\,
	datac => \process_0~30_combout\,
	datad => \Equal24~1_combout\,
	combout => \temp_control_variable~51_combout\);

-- Location: LCCOMB_X65_Y69_N2
\temp_control_variable~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~50_combout\ = (\process_0~38_combout\ & ((\Equal27~1_combout\) # ((!\process_0~30_combout\ & \Equal28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal27~1_combout\,
	datab => \process_0~38_combout\,
	datac => \process_0~30_combout\,
	datad => \Equal28~1_combout\,
	combout => \temp_control_variable~50_combout\);

-- Location: LCCOMB_X65_Y69_N30
\temp_control_variable~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~111_combout\ = ((\pr4invalid~input_o\) # ((!\Equal27~1_combout\ & !\Equal28~1_combout\))) # (!\process_0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal27~1_combout\,
	datab => \process_0~22_combout\,
	datac => \pr4invalid~input_o\,
	datad => \Equal28~1_combout\,
	combout => \temp_control_variable~111_combout\);

-- Location: IOIBUF_X94_Y73_N8
\pr3ir[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr3ir(8),
	o => \pr3ir[8]~input_o\);

-- Location: IOIBUF_X89_Y73_N8
\pr3ir[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr3ir(7),
	o => \pr3ir[7]~input_o\);

-- Location: IOIBUF_X83_Y73_N22
\pr3ir[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr3ir(6),
	o => \pr3ir[6]~input_o\);

-- Location: LCCOMB_X77_Y69_N2
\process_0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~18_combout\ = (\pr3ir[7]~input_o\ & (\pr2ir[10]~input_o\ & (\pr2ir[9]~input_o\ $ (!\pr3ir[6]~input_o\)))) # (!\pr3ir[7]~input_o\ & (!\pr2ir[10]~input_o\ & (\pr2ir[9]~input_o\ $ (!\pr3ir[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr3ir[7]~input_o\,
	datab => \pr2ir[9]~input_o\,
	datac => \pr2ir[10]~input_o\,
	datad => \pr3ir[6]~input_o\,
	combout => \process_0~18_combout\);

-- Location: LCCOMB_X70_Y69_N4
\process_0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~19_combout\ = (\process_0~18_combout\ & (\pr2ir[11]~input_o\ $ (!\pr3ir[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr2ir[11]~input_o\,
	datab => \pr3ir[8]~input_o\,
	datac => \process_0~18_combout\,
	combout => \process_0~19_combout\);

-- Location: IOIBUF_X42_Y73_N1
\pr3ir[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr3ir(12),
	o => \pr3ir[12]~input_o\);

-- Location: IOIBUF_X49_Y73_N22
\pr3ir[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr3ir(15),
	o => \pr3ir[15]~input_o\);

-- Location: IOIBUF_X52_Y73_N8
\pr3invalid~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr3invalid,
	o => \pr3invalid~input_o\);

-- Location: IOIBUF_X54_Y73_N8
\pr3ir[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr3ir(14),
	o => \pr3ir[14]~input_o\);

-- Location: LCCOMB_X58_Y69_N26
\process_0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~16_combout\ = (\pr3ir[12]~input_o\ & (!\pr3ir[15]~input_o\ & (!\pr3invalid~input_o\ & !\pr3ir[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr3ir[12]~input_o\,
	datab => \pr3ir[15]~input_o\,
	datac => \pr3invalid~input_o\,
	datad => \pr3ir[14]~input_o\,
	combout => \process_0~16_combout\);

-- Location: IOIBUF_X38_Y73_N22
\pr3ir[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr3ir(13),
	o => \pr3ir[13]~input_o\);

-- Location: LCCOMB_X77_Y69_N30
\process_0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~34_combout\ = (\pr3ir[7]~input_o\ & (\pr2ir[7]~input_o\ & (\pr3ir[6]~input_o\ $ (!\pr2ir[6]~input_o\)))) # (!\pr3ir[7]~input_o\ & (!\pr2ir[7]~input_o\ & (\pr3ir[6]~input_o\ $ (!\pr2ir[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr3ir[7]~input_o\,
	datab => \pr3ir[6]~input_o\,
	datac => \pr2ir[6]~input_o\,
	datad => \pr2ir[7]~input_o\,
	combout => \process_0~34_combout\);

-- Location: LCCOMB_X70_Y69_N22
\process_0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~35_combout\ = (\process_0~34_combout\ & (\pr3ir[8]~input_o\ $ (!\pr2ir[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~34_combout\,
	datac => \pr3ir[8]~input_o\,
	datad => \pr2ir[8]~input_o\,
	combout => \process_0~35_combout\);

-- Location: LCCOMB_X67_Y69_N6
\process_0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~36_combout\ = (\process_0~16_combout\ & (!\pr3ir[13]~input_o\ & ((\process_0~19_combout\) # (\process_0~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~19_combout\,
	datab => \process_0~16_combout\,
	datac => \pr3ir[13]~input_o\,
	datad => \process_0~35_combout\,
	combout => \process_0~36_combout\);

-- Location: IOIBUF_X74_Y73_N22
\pr3ir[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr3ir(1),
	o => \pr3ir[1]~input_o\);

-- Location: LCCOMB_X58_Y69_N0
\process_0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~14_combout\ = (!\pr3ir[12]~input_o\ & (!\pr3ir[15]~input_o\ & (!\pr3invalid~input_o\ & !\pr3ir[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr3ir[12]~input_o\,
	datab => \pr3ir[15]~input_o\,
	datac => \pr3invalid~input_o\,
	datad => \pr3ir[14]~input_o\,
	combout => \process_0~14_combout\);

-- Location: IOIBUF_X69_Y73_N22
\pr3ir[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr3ir(0),
	o => \pr3ir[0]~input_o\);

-- Location: IOIBUF_X72_Y73_N15
\trfwr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_trfwr,
	o => \trfwr~input_o\);

-- Location: LCCOMB_X70_Y69_N2
\process_0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~15_combout\ = (\process_0~14_combout\ & (\trfwr~input_o\ & (\pr3ir[1]~input_o\ $ (\pr3ir[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr3ir[1]~input_o\,
	datab => \process_0~14_combout\,
	datac => \pr3ir[0]~input_o\,
	datad => \trfwr~input_o\,
	combout => \process_0~15_combout\);

-- Location: IOIBUF_X81_Y73_N8
\pr3ir[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr3ir(3),
	o => \pr3ir[3]~input_o\);

-- Location: IOIBUF_X85_Y73_N22
\pr3ir[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr3ir(4),
	o => \pr3ir[4]~input_o\);

-- Location: LCCOMB_X77_Y69_N12
\Equal16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~0_combout\ = (\pr2ir[6]~input_o\ & (\pr3ir[3]~input_o\ & (\pr2ir[7]~input_o\ $ (!\pr3ir[4]~input_o\)))) # (!\pr2ir[6]~input_o\ & (!\pr3ir[3]~input_o\ & (\pr2ir[7]~input_o\ $ (!\pr3ir[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr2ir[6]~input_o\,
	datab => \pr2ir[7]~input_o\,
	datac => \pr3ir[3]~input_o\,
	datad => \pr3ir[4]~input_o\,
	combout => \Equal16~0_combout\);

-- Location: IOIBUF_X67_Y73_N1
\pr3ir[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr3ir(5),
	o => \pr3ir[5]~input_o\);

-- Location: LCCOMB_X70_Y69_N8
\Equal16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~1_combout\ = (\Equal16~0_combout\ & (\pr3ir[5]~input_o\ $ (!\pr2ir[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal16~0_combout\,
	datac => \pr3ir[5]~input_o\,
	datad => \pr2ir[8]~input_o\,
	combout => \Equal16~1_combout\);

-- Location: LCCOMB_X77_Y69_N0
\Equal17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal17~0_combout\ = (\pr2ir[9]~input_o\ & (\pr3ir[3]~input_o\ & (\pr2ir[10]~input_o\ $ (!\pr3ir[4]~input_o\)))) # (!\pr2ir[9]~input_o\ & (!\pr3ir[3]~input_o\ & (\pr2ir[10]~input_o\ $ (!\pr3ir[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr2ir[9]~input_o\,
	datab => \pr3ir[3]~input_o\,
	datac => \pr2ir[10]~input_o\,
	datad => \pr3ir[4]~input_o\,
	combout => \Equal17~0_combout\);

-- Location: LCCOMB_X70_Y69_N24
\Equal17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal17~1_combout\ = (\Equal17~0_combout\ & (\pr3ir[5]~input_o\ $ (!\pr2ir[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal17~0_combout\,
	datac => \pr3ir[5]~input_o\,
	datad => \pr2ir[11]~input_o\,
	combout => \Equal17~1_combout\);

-- Location: LCCOMB_X70_Y69_N10
\process_0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~32_combout\ = (\process_0~15_combout\ & ((\Equal16~1_combout\) # (\Equal17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~15_combout\,
	datac => \Equal16~1_combout\,
	datad => \Equal17~1_combout\,
	combout => \process_0~32_combout\);

-- Location: IOIBUF_X72_Y0_N8
\pr3ir[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr3ir(2),
	o => \pr3ir[2]~input_o\);

-- Location: LCCOMB_X70_Y69_N14
\process_0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~20_combout\ = (!\pr3ir[2]~input_o\ & (\process_0~14_combout\ & (!\pr3ir[0]~input_o\ & !\pr3ir[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr3ir[2]~input_o\,
	datab => \process_0~14_combout\,
	datac => \pr3ir[0]~input_o\,
	datad => \pr3ir[1]~input_o\,
	combout => \process_0~20_combout\);

-- Location: LCCOMB_X70_Y69_N12
\process_0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~33_combout\ = (\process_0~20_combout\ & ((\Equal16~1_combout\) # (\Equal17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~20_combout\,
	datac => \Equal16~1_combout\,
	datad => \Equal17~1_combout\,
	combout => \process_0~33_combout\);

-- Location: LCCOMB_X67_Y69_N2
\pr1en_var~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr1en_var~1_combout\ = (!\process_0~30_combout\ & (!\process_0~32_combout\ & !\process_0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~30_combout\,
	datab => \process_0~32_combout\,
	datac => \process_0~33_combout\,
	combout => \pr1en_var~1_combout\);

-- Location: IOIBUF_X67_Y73_N15
\pr3ir[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr3ir(11),
	o => \pr3ir[11]~input_o\);

-- Location: IOIBUF_X83_Y73_N15
\pr3ir[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr3ir(10),
	o => \pr3ir[10]~input_o\);

-- Location: IOIBUF_X87_Y73_N22
\pr3ir[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr3ir(9),
	o => \pr3ir[9]~input_o\);

-- Location: LCCOMB_X77_Y69_N18
\Equal20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal20~0_combout\ = (\pr2ir[6]~input_o\ & ((\pr2ir[7]~input_o\ $ (\pr3ir[10]~input_o\)) # (!\pr3ir[9]~input_o\))) # (!\pr2ir[6]~input_o\ & ((\pr3ir[9]~input_o\) # (\pr2ir[7]~input_o\ $ (\pr3ir[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr2ir[6]~input_o\,
	datab => \pr2ir[7]~input_o\,
	datac => \pr3ir[10]~input_o\,
	datad => \pr3ir[9]~input_o\,
	combout => \Equal20~0_combout\);

-- Location: LCCOMB_X66_Y69_N2
\Equal20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal20~1_combout\ = (\Equal20~0_combout\) # (\pr3ir[11]~input_o\ $ (\pr2ir[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr3ir[11]~input_o\,
	datab => \Equal20~0_combout\,
	datad => \pr2ir[8]~input_o\,
	combout => \Equal20~1_combout\);

-- Location: LCCOMB_X77_Y69_N28
\Equal19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal19~0_combout\ = (\pr2ir[9]~input_o\ & (\pr3ir[9]~input_o\ & (\pr2ir[10]~input_o\ $ (!\pr3ir[10]~input_o\)))) # (!\pr2ir[9]~input_o\ & (!\pr3ir[9]~input_o\ & (\pr2ir[10]~input_o\ $ (!\pr3ir[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr2ir[9]~input_o\,
	datab => \pr2ir[10]~input_o\,
	datac => \pr3ir[10]~input_o\,
	datad => \pr3ir[9]~input_o\,
	combout => \Equal19~0_combout\);

-- Location: LCCOMB_X68_Y69_N2
\Equal19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal19~1_combout\ = (\Equal19~0_combout\ & (\pr3ir[11]~input_o\ $ (!\pr2ir[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~0_combout\,
	datac => \pr3ir[11]~input_o\,
	datad => \pr2ir[11]~input_o\,
	combout => \Equal19~1_combout\);

-- Location: LCCOMB_X67_Y69_N4
\process_0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~31_combout\ = (\pr3ir[13]~input_o\ & (\process_0~16_combout\ & ((\Equal19~1_combout\) # (!\Equal20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr3ir[13]~input_o\,
	datab => \process_0~16_combout\,
	datac => \Equal20~1_combout\,
	datad => \Equal19~1_combout\,
	combout => \process_0~31_combout\);

-- Location: LCCOMB_X63_Y69_N10
\process_0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~23_combout\ = (!\pr3invalid~input_o\) # (!\process_0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~22_combout\,
	datac => \pr3invalid~input_o\,
	combout => \process_0~23_combout\);

-- Location: LCCOMB_X58_Y69_N12
\pr1invalid_o_var~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr1invalid_o_var~0_combout\ = (!\pr3ir[12]~input_o\ & (!\pr3invalid~input_o\ & !\pr3ir[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr3ir[12]~input_o\,
	datab => \pr3invalid~input_o\,
	datac => \pr3ir[13]~input_o\,
	combout => \pr1invalid_o_var~0_combout\);

-- Location: LCCOMB_X58_Y69_N30
\process_0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~29_combout\ = (\pr3ir[14]~input_o\ & (!\pr3ir[15]~input_o\ & \pr1invalid_o_var~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr3ir[14]~input_o\,
	datab => \pr3ir[15]~input_o\,
	datad => \pr1invalid_o_var~0_combout\,
	combout => \process_0~29_combout\);

-- Location: LCCOMB_X68_Y69_N16
\temp_control_variable~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~44_combout\ = (\process_0~23_combout\ & (((\Equal20~1_combout\ & !\Equal19~1_combout\)) # (!\process_0~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~23_combout\,
	datab => \Equal20~1_combout\,
	datac => \process_0~29_combout\,
	datad => \Equal19~1_combout\,
	combout => \temp_control_variable~44_combout\);

-- Location: LCCOMB_X67_Y69_N20
\temp_control_variable~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~48_combout\ = (!\process_0~36_combout\ & (\pr1en_var~1_combout\ & (!\process_0~31_combout\ & \temp_control_variable~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~36_combout\,
	datab => \pr1en_var~1_combout\,
	datac => \process_0~31_combout\,
	datad => \temp_control_variable~44_combout\,
	combout => \temp_control_variable~48_combout\);

-- Location: LCCOMB_X65_Y69_N22
\temp_control_variable~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~54_combout\ = (!\temp_control_variable~51_combout\ & (!\temp_control_variable~50_combout\ & (\temp_control_variable~111_combout\ & \temp_control_variable~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~51_combout\,
	datab => \temp_control_variable~50_combout\,
	datac => \temp_control_variable~111_combout\,
	datad => \temp_control_variable~48_combout\,
	combout => \temp_control_variable~54_combout\);

-- Location: IOIBUF_X35_Y73_N15
\pr4ir[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr4ir(2),
	o => \pr4ir[2]~input_o\);

-- Location: LCCOMB_X63_Y69_N24
\process_0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~25_combout\ = (\process_0~24_combout\ & (!\pr4ir[0]~input_o\ & (!\pr4ir[1]~input_o\ & !\pr4ir[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~24_combout\,
	datab => \pr4ir[0]~input_o\,
	datac => \pr4ir[1]~input_o\,
	datad => \pr4ir[2]~input_o\,
	combout => \process_0~25_combout\);

-- Location: LCCOMB_X63_Y69_N18
\temp_control_variable~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~49_combout\ = (\process_0~25_combout\ & (\temp_control_variable~40_combout\ & \temp_control_variable~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~25_combout\,
	datac => \temp_control_variable~40_combout\,
	datad => \temp_control_variable~48_combout\,
	combout => \temp_control_variable~49_combout\);

-- Location: LCCOMB_X63_Y69_N6
\temp_control_variable~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~110_combout\ = (\Equal33~1_combout\ & (!\process_0~25_combout\ & ((!\process_0~22_combout\) # (!\pr3invalid~input_o\)))) # (!\Equal33~1_combout\ & (((!\process_0~22_combout\)) # (!\pr3invalid~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal33~1_combout\,
	datab => \pr3invalid~input_o\,
	datac => \process_0~22_combout\,
	datad => \process_0~25_combout\,
	combout => \temp_control_variable~110_combout\);

-- Location: LCCOMB_X67_Y69_N28
\process_0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~37_combout\ = (\pr3ir[13]~input_o\ & (\process_0~16_combout\ & !\Equal20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr3ir[13]~input_o\,
	datab => \process_0~16_combout\,
	datac => \Equal20~1_combout\,
	combout => \process_0~37_combout\);

-- Location: LCCOMB_X67_Y69_N0
\process_0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~17_combout\ = (!\pr3ir[13]~input_o\ & \process_0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pr3ir[13]~input_o\,
	datad => \process_0~16_combout\,
	combout => \process_0~17_combout\);

-- Location: LCCOMB_X70_Y69_N20
\pr1en_var~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr1en_var~0_combout\ = (\process_0~30_combout\ & (((!\process_0~15_combout\ & !\process_0~20_combout\)) # (!\Equal16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~30_combout\,
	datab => \process_0~15_combout\,
	datac => \Equal16~1_combout\,
	datad => \process_0~20_combout\,
	combout => \pr1en_var~0_combout\);

-- Location: LCCOMB_X67_Y69_N22
\temp_control_variable~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~37_combout\ = (!\process_0~37_combout\ & (\pr1en_var~0_combout\ & ((!\process_0~35_combout\) # (!\process_0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~37_combout\,
	datab => \process_0~17_combout\,
	datac => \pr1en_var~0_combout\,
	datad => \process_0~35_combout\,
	combout => \temp_control_variable~37_combout\);

-- Location: LCCOMB_X66_Y69_N6
\temp_control_variable~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~39_combout\ = (\temp_control_variable~110_combout\ & (\temp_control_variable~37_combout\ & ((\Equal20~1_combout\) # (!\process_0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~110_combout\,
	datab => \Equal20~1_combout\,
	datac => \process_0~29_combout\,
	datad => \temp_control_variable~37_combout\,
	combout => \temp_control_variable~39_combout\);

-- Location: LCCOMB_X72_Y69_N12
\temp_control_variable~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~52_combout\ = (!\temp_control_variable~51_combout\ & !\temp_control_variable~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp_control_variable~51_combout\,
	datad => \temp_control_variable~50_combout\,
	combout => \temp_control_variable~52_combout\);

-- Location: LCCOMB_X66_Y69_N18
\temp_control_variable~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~53_combout\ = (\temp_control_variable~39_combout\ & (\temp_control_variable~52_combout\ & ((!\process_0~39_combout\) # (!\Equal27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~39_combout\,
	datab => \temp_control_variable~52_combout\,
	datac => \Equal27~1_combout\,
	datad => \process_0~39_combout\,
	combout => \temp_control_variable~53_combout\);

-- Location: LCCOMB_X66_Y69_N20
\temp_control_variable~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~55_combout\ = (\temp_control_variable~49_combout\) # ((\temp_control_variable~53_combout\) # ((\temp_control_variable~43_combout\ & \temp_control_variable~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~43_combout\,
	datab => \temp_control_variable~54_combout\,
	datac => \temp_control_variable~49_combout\,
	datad => \temp_control_variable~53_combout\,
	combout => \temp_control_variable~55_combout\);

-- Location: LCCOMB_X61_Y69_N16
\process_0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~12_combout\ = (!\pr2ir[15]~input_o\ & ((\pr2ir[14]~input_o\ & ((\pr2ir[13]~input_o\))) # (!\pr2ir[14]~input_o\ & (\pr2ir[12]~input_o\ & !\pr2ir[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr2ir[12]~input_o\,
	datab => \pr2ir[14]~input_o\,
	datac => \pr2ir[13]~input_o\,
	datad => \pr2ir[15]~input_o\,
	combout => \process_0~12_combout\);

-- Location: LCCOMB_X65_Y69_N26
\temp_control_variable~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~32_combout\ = (!\process_0~12_combout\ & (((\process_0~30_combout\ & !\process_0~26_combout\)) # (!\Equal33~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~12_combout\,
	datab => \process_0~30_combout\,
	datac => \process_0~26_combout\,
	datad => \Equal33~1_combout\,
	combout => \temp_control_variable~32_combout\);

-- Location: LCCOMB_X67_Y69_N18
\temp_control_variable~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~36_combout\ = (!\process_0~30_combout\ & ((\process_0~31_combout\ & ((\Equal20~1_combout\))) # (!\process_0~31_combout\ & (\process_0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~30_combout\,
	datab => \process_0~23_combout\,
	datac => \process_0~31_combout\,
	datad => \Equal20~1_combout\,
	combout => \temp_control_variable~36_combout\);

-- Location: LCCOMB_X67_Y69_N24
\temp_control_variable~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~33_combout\ = (!\process_0~36_combout\ & (!\process_0~33_combout\ & ((\process_0~31_combout\) # (!\process_0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~36_combout\,
	datab => \process_0~31_combout\,
	datac => \process_0~32_combout\,
	datad => \process_0~33_combout\,
	combout => \temp_control_variable~33_combout\);

-- Location: LCCOMB_X66_Y69_N24
\process_0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~42_combout\ = (\Equal20~0_combout\) # ((\pr3ir[11]~input_o\ $ (\pr2ir[8]~input_o\)) # (!\process_0~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr3ir[11]~input_o\,
	datab => \Equal20~0_combout\,
	datac => \process_0~29_combout\,
	datad => \pr2ir[8]~input_o\,
	combout => \process_0~42_combout\);

-- Location: LCCOMB_X66_Y69_N28
\temp_control_variable~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~38_combout\ = (\temp_control_variable~36_combout\ & ((\temp_control_variable~33_combout\) # ((!\process_0~42_combout\ & \temp_control_variable~37_combout\)))) # (!\temp_control_variable~36_combout\ & (((!\process_0~42_combout\ & 
-- \temp_control_variable~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~36_combout\,
	datab => \temp_control_variable~33_combout\,
	datac => \process_0~42_combout\,
	datad => \temp_control_variable~37_combout\,
	combout => \temp_control_variable~38_combout\);

-- Location: LCCOMB_X67_Y69_N16
\temp_control_variable~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~45_combout\ = (\temp_control_variable~33_combout\ & (!\process_0~31_combout\ & \temp_control_variable~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp_control_variable~33_combout\,
	datac => \process_0~31_combout\,
	datad => \temp_control_variable~44_combout\,
	combout => \temp_control_variable~45_combout\);

-- Location: LCCOMB_X66_Y69_N16
\temp_control_variable~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~46_combout\ = (\temp_control_variable~39_combout\) # ((\temp_control_variable~43_combout\ & (\temp_control_variable~45_combout\ & !\process_0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~43_combout\,
	datab => \temp_control_variable~45_combout\,
	datac => \process_0~30_combout\,
	datad => \temp_control_variable~39_combout\,
	combout => \temp_control_variable~46_combout\);

-- Location: LCCOMB_X70_Y69_N0
\temp_control_variable~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~34_combout\ = (!\process_0~30_combout\ & !\temp_control_variable~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~30_combout\,
	datad => \temp_control_variable~33_combout\,
	combout => \temp_control_variable~34_combout\);

-- Location: LCCOMB_X70_Y69_N18
\temp_control_variable~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~109_combout\ = (\process_0~36_combout\ & (((!\Equal16~1_combout\ & !\Equal17~1_combout\)) # (!\process_0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~36_combout\,
	datab => \Equal16~1_combout\,
	datac => \process_0~20_combout\,
	datad => \Equal17~1_combout\,
	combout => \temp_control_variable~109_combout\);

-- Location: LCCOMB_X70_Y69_N26
\temp_control_variable~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~35_combout\ = (\temp_control_variable~34_combout\ & ((\temp_control_variable~109_combout\ & (!\process_0~35_combout\)) # (!\temp_control_variable~109_combout\ & ((!\Equal16~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~35_combout\,
	datab => \temp_control_variable~34_combout\,
	datac => \Equal16~1_combout\,
	datad => \temp_control_variable~109_combout\,
	combout => \temp_control_variable~35_combout\);

-- Location: LCCOMB_X72_Y69_N26
\temp_control_variable~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~47_combout\ = (!\temp_control_variable~46_combout\ & (!\process_0~12_combout\ & ((\temp_control_variable~38_combout\) # (\temp_control_variable~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~38_combout\,
	datab => \temp_control_variable~46_combout\,
	datac => \process_0~12_combout\,
	datad => \temp_control_variable~35_combout\,
	combout => \temp_control_variable~47_combout\);

-- Location: LCCOMB_X61_Y69_N2
\process_0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~13_combout\ = (!\pr2ir[14]~input_o\ & ((\pr2ir[12]~input_o\ & (\pr2ir[13]~input_o\ & !\pr2ir[15]~input_o\)) # (!\pr2ir[12]~input_o\ & (!\pr2ir[13]~input_o\ & \pr2ir[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr2ir[12]~input_o\,
	datab => \pr2ir[14]~input_o\,
	datac => \pr2ir[13]~input_o\,
	datad => \pr2ir[15]~input_o\,
	combout => \process_0~13_combout\);

-- Location: LCCOMB_X63_Y69_N20
\Equal34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal34~1_combout\ = (\Equal34~0_combout\ & (\pr4ir[5]~input_o\ $ (!\pr2ir[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr4ir[5]~input_o\,
	datac => \Equal34~0_combout\,
	datad => \pr2ir[11]~input_o\,
	combout => \Equal34~1_combout\);

-- Location: LCCOMB_X65_Y69_N8
\temp_control_variable~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~28_combout\ = (\process_0~28_combout\ & (!\Equal24~1_combout\ & ((!\process_0~26_combout\) # (!\Equal34~1_combout\)))) # (!\process_0~28_combout\ & (((!\process_0~26_combout\)) # (!\Equal34~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~28_combout\,
	datab => \Equal34~1_combout\,
	datac => \process_0~26_combout\,
	datad => \Equal24~1_combout\,
	combout => \temp_control_variable~28_combout\);

-- Location: LCCOMB_X63_Y69_N28
\temp_control_variable~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~108_combout\ = (\pr3invalid~input_o\ & (!\process_0~22_combout\ & ((!\Equal34~1_combout\) # (!\process_0~25_combout\)))) # (!\pr3invalid~input_o\ & (((!\Equal34~1_combout\)) # (!\process_0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr3invalid~input_o\,
	datab => \process_0~25_combout\,
	datac => \process_0~22_combout\,
	datad => \Equal34~1_combout\,
	combout => \temp_control_variable~108_combout\);

-- Location: LCCOMB_X63_Y69_N0
\temp_control_variable~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~29_combout\ = (\process_0~27_combout\ & ((\pr4ir[13]~input_o\) # ((\process_0~22_combout\ & !\pr4invalid~input_o\)))) # (!\process_0~27_combout\ & (((\process_0~22_combout\ & !\pr4invalid~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~27_combout\,
	datab => \pr4ir[13]~input_o\,
	datac => \process_0~22_combout\,
	datad => \pr4invalid~input_o\,
	combout => \temp_control_variable~29_combout\);

-- Location: LCCOMB_X66_Y69_N0
\temp_control_variable~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~30_combout\ = (\temp_control_variable~28_combout\ & (\temp_control_variable~108_combout\ & ((!\Equal28~1_combout\) # (!\temp_control_variable~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~28_combout\,
	datab => \temp_control_variable~108_combout\,
	datac => \temp_control_variable~29_combout\,
	datad => \Equal28~1_combout\,
	combout => \temp_control_variable~30_combout\);

-- Location: LCCOMB_X68_Y69_N22
\process_0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~41_combout\ = ((\pr3ir[11]~input_o\ $ (\pr2ir[11]~input_o\)) # (!\process_0~29_combout\)) # (!\Equal19~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~0_combout\,
	datab => \pr3ir[11]~input_o\,
	datac => \process_0~29_combout\,
	datad => \pr2ir[11]~input_o\,
	combout => \process_0~41_combout\);

-- Location: LCCOMB_X70_Y69_N16
\process_0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~40_combout\ = (\process_0~20_combout\ & (\Equal17~0_combout\ & (\pr3ir[5]~input_o\ $ (!\pr2ir[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~20_combout\,
	datab => \Equal17~0_combout\,
	datac => \pr3ir[5]~input_o\,
	datad => \pr2ir[11]~input_o\,
	combout => \process_0~40_combout\);

-- Location: LCCOMB_X67_Y69_N26
\process_0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~21_combout\ = (\process_0~16_combout\ & (\pr3ir[13]~input_o\ & \Equal19~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~16_combout\,
	datac => \pr3ir[13]~input_o\,
	datad => \Equal19~1_combout\,
	combout => \process_0~21_combout\);

-- Location: LCCOMB_X68_Y69_N0
\temp_control_variable~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~26_combout\ = (\process_0~19_combout\ & (!\process_0~17_combout\ & ((!\process_0~15_combout\) # (!\Equal17~1_combout\)))) # (!\process_0~19_combout\ & (((!\process_0~15_combout\)) # (!\Equal17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~19_combout\,
	datab => \Equal17~1_combout\,
	datac => \process_0~17_combout\,
	datad => \process_0~15_combout\,
	combout => \temp_control_variable~26_combout\);

-- Location: LCCOMB_X68_Y69_N28
\temp_control_variable~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~27_combout\ = (!\process_0~40_combout\ & (\process_0~12_combout\ & (!\process_0~21_combout\ & \temp_control_variable~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~40_combout\,
	datab => \process_0~12_combout\,
	datac => \process_0~21_combout\,
	datad => \temp_control_variable~26_combout\,
	combout => \temp_control_variable~27_combout\);

-- Location: LCCOMB_X68_Y69_N6
\temp_control_variable~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~31_combout\ = (\process_0~13_combout\) # ((\temp_control_variable~27_combout\ & ((\temp_control_variable~30_combout\) # (!\process_0~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~13_combout\,
	datab => \temp_control_variable~30_combout\,
	datac => \process_0~41_combout\,
	datad => \temp_control_variable~27_combout\,
	combout => \temp_control_variable~31_combout\);

-- Location: LCCOMB_X72_Y69_N22
\temp_control_variable~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~56_combout\ = (\temp_control_variable~31_combout\) # ((\temp_control_variable~55_combout\ & (\temp_control_variable~32_combout\)) # (!\temp_control_variable~55_combout\ & ((\temp_control_variable~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~55_combout\,
	datab => \temp_control_variable~32_combout\,
	datac => \temp_control_variable~47_combout\,
	datad => \temp_control_variable~31_combout\,
	combout => \temp_control_variable~56_combout\);

-- Location: LCCOMB_X72_Y69_N24
\temp_control_variable~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~57_combout\ = (!\temp_control_variable~56_combout\ & (!\reset~input_o\ & !\process_0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~56_combout\,
	datab => \reset~input_o\,
	datac => \process_0~12_combout\,
	combout => \temp_control_variable~57_combout\);

-- Location: LCCOMB_X70_Y69_N28
\process_0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~43_combout\ = (\process_0~20_combout\ & (\Equal16~0_combout\ & (\pr3ir[5]~input_o\ $ (!\pr2ir[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~20_combout\,
	datab => \pr3ir[5]~input_o\,
	datac => \Equal16~0_combout\,
	datad => \pr2ir[8]~input_o\,
	combout => \process_0~43_combout\);

-- Location: LCCOMB_X67_Y69_N14
\temp_control_variable~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~59_combout\ = (\process_0~23_combout\ & (((\Equal20~1_combout\) # (!\process_0~16_combout\)) # (!\pr3ir[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr3ir[13]~input_o\,
	datab => \process_0~16_combout\,
	datac => \Equal20~1_combout\,
	datad => \process_0~23_combout\,
	combout => \temp_control_variable~59_combout\);

-- Location: LCCOMB_X72_Y69_N20
\temp_control_variable~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~60_combout\ = (\process_0~30_combout\ & (((\process_0~43_combout\) # (\temp_control_variable~59_combout\)))) # (!\process_0~30_combout\ & (!\temp_control_variable~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~33_combout\,
	datab => \process_0~43_combout\,
	datac => \process_0~30_combout\,
	datad => \temp_control_variable~59_combout\,
	combout => \temp_control_variable~60_combout\);

-- Location: LCCOMB_X72_Y69_N30
\temp_control_variable~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~61_combout\ = (\temp_control_variable~55_combout\) # ((\temp_control_variable~46_combout\ & ((!\temp_control_variable~52_combout\))) # (!\temp_control_variable~46_combout\ & (\temp_control_variable~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~55_combout\,
	datab => \temp_control_variable~60_combout\,
	datac => \temp_control_variable~46_combout\,
	datad => \temp_control_variable~52_combout\,
	combout => \temp_control_variable~61_combout\);

-- Location: LCCOMB_X72_Y69_N10
\temp_control_variable~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~58_combout\ = (\temp_control_variable~56_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~56_combout\,
	datac => \reset~input_o\,
	combout => \temp_control_variable~58_combout\);

-- Location: LCCOMB_X72_Y69_N0
\temp_control_variable~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~62_combout\ = (\controlword[16]~input_o\ & ((\temp_control_variable~58_combout\) # ((\temp_control_variable~57_combout\ & \temp_control_variable~61_combout\)))) # (!\controlword[16]~input_o\ & (\temp_control_variable~57_combout\ & 
-- (\temp_control_variable~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlword[16]~input_o\,
	datab => \temp_control_variable~57_combout\,
	datac => \temp_control_variable~61_combout\,
	datad => \temp_control_variable~58_combout\,
	combout => \temp_control_variable~62_combout\);

-- Location: IOIBUF_X72_Y73_N1
\controlword[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_controlword(17),
	o => \controlword[17]~input_o\);

-- Location: LCCOMB_X72_Y69_N18
\temp_control_variable~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~64_combout\ = (!\temp_control_variable~51_combout\ & \temp_control_variable~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp_control_variable~51_combout\,
	datad => \temp_control_variable~50_combout\,
	combout => \temp_control_variable~64_combout\);

-- Location: LCCOMB_X66_Y69_N26
\temp_control_variable~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~112_combout\ = (!\temp_control_variable~46_combout\ & ((\process_0~30_combout\) # (\temp_control_variable~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp_control_variable~46_combout\,
	datac => \process_0~30_combout\,
	datad => \temp_control_variable~33_combout\,
	combout => \temp_control_variable~112_combout\);

-- Location: LCCOMB_X67_Y69_N8
\temp_control_variable~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~63_combout\ = (\temp_control_variable~112_combout\ & ((\temp_control_variable~37_combout\) # ((!\process_0~30_combout\ & !\process_0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~30_combout\,
	datab => \process_0~31_combout\,
	datac => \temp_control_variable~112_combout\,
	datad => \temp_control_variable~37_combout\,
	combout => \temp_control_variable~63_combout\);

-- Location: LCCOMB_X72_Y69_N28
\temp_control_variable~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~65_combout\ = (\temp_control_variable~55_combout\) # ((\temp_control_variable~63_combout\) # ((!\temp_control_variable~64_combout\ & \temp_control_variable~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~55_combout\,
	datab => \temp_control_variable~64_combout\,
	datac => \temp_control_variable~46_combout\,
	datad => \temp_control_variable~63_combout\,
	combout => \temp_control_variable~65_combout\);

-- Location: LCCOMB_X72_Y69_N6
\temp_control_variable~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~66_combout\ = (\temp_control_variable~58_combout\ & ((\controlword[17]~input_o\) # ((\temp_control_variable~57_combout\ & \temp_control_variable~65_combout\)))) # (!\temp_control_variable~58_combout\ & 
-- (\temp_control_variable~57_combout\ & ((\temp_control_variable~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~58_combout\,
	datab => \temp_control_variable~57_combout\,
	datac => \controlword[17]~input_o\,
	datad => \temp_control_variable~65_combout\,
	combout => \temp_control_variable~66_combout\);

-- Location: LCCOMB_X67_Y69_N10
\temp_control_variable~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~67_combout\ = (\process_0~30_combout\ & (!\process_0~43_combout\ & (!\Equal20~1_combout\))) # (!\process_0~30_combout\ & (((\Equal19~1_combout\) # (!\Equal20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~30_combout\,
	datab => \process_0~43_combout\,
	datac => \Equal20~1_combout\,
	datad => \Equal19~1_combout\,
	combout => \temp_control_variable~67_combout\);

-- Location: LCCOMB_X67_Y69_N12
\temp_control_variable~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~68_combout\ = (\temp_control_variable~112_combout\ & (\process_0~16_combout\ & (\pr3ir[13]~input_o\ & \temp_control_variable~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~112_combout\,
	datab => \process_0~16_combout\,
	datac => \pr3ir[13]~input_o\,
	datad => \temp_control_variable~67_combout\,
	combout => \temp_control_variable~68_combout\);

-- Location: LCCOMB_X72_Y69_N8
\temp_control_variable~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~69_combout\ = (\temp_control_variable~57_combout\ & ((\temp_control_variable~68_combout\) # ((\temp_control_variable~64_combout\ & \temp_control_variable~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~68_combout\,
	datab => \temp_control_variable~64_combout\,
	datac => \temp_control_variable~46_combout\,
	datad => \temp_control_variable~57_combout\,
	combout => \temp_control_variable~69_combout\);

-- Location: IOIBUF_X87_Y73_N8
\controlword[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_controlword(18),
	o => \controlword[18]~input_o\);

-- Location: LCCOMB_X72_Y69_N2
\temp_control_variable~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~70_combout\ = (\temp_control_variable~55_combout\ & (((\controlword[18]~input_o\ & \temp_control_variable~58_combout\)))) # (!\temp_control_variable~55_combout\ & ((\temp_control_variable~69_combout\) # ((\controlword[18]~input_o\ & 
-- \temp_control_variable~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~55_combout\,
	datab => \temp_control_variable~69_combout\,
	datac => \controlword[18]~input_o\,
	datad => \temp_control_variable~58_combout\,
	combout => \temp_control_variable~70_combout\);

-- Location: LCCOMB_X65_Y69_N10
\temp_control_variable~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~72_combout\ = (\temp_control_variable~41_combout\ & (((\Equal28~1_combout\)))) # (!\temp_control_variable~41_combout\ & (\temp_control_variable~40_combout\ & (\process_0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~40_combout\,
	datab => \temp_control_variable~41_combout\,
	datac => \process_0~26_combout\,
	datad => \Equal28~1_combout\,
	combout => \temp_control_variable~72_combout\);

-- Location: LCCOMB_X65_Y69_N20
\temp_control_variable~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~73_combout\ = (\process_0~28_combout\ & ((\Equal24~1_combout\) # ((\temp_control_variable~72_combout\ & !\Equal23~1_combout\)))) # (!\process_0~28_combout\ & (\temp_control_variable~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~72_combout\,
	datab => \process_0~28_combout\,
	datac => \Equal23~1_combout\,
	datad => \Equal24~1_combout\,
	combout => \temp_control_variable~73_combout\);

-- Location: LCCOMB_X65_Y69_N0
\temp_control_variable~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~71_combout\ = (\temp_control_variable~48_combout\ & (((!\Equal27~1_combout\ & !\Equal28~1_combout\)) # (!\process_0~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal27~1_combout\,
	datab => \temp_control_variable~48_combout\,
	datac => \process_0~39_combout\,
	datad => \Equal28~1_combout\,
	combout => \temp_control_variable~71_combout\);

-- Location: LCCOMB_X65_Y69_N24
\temp_control_variable~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~75_combout\ = (\process_0~28_combout\ & ((\Equal24~1_combout\) # ((\Equal23~1_combout\ & !\process_0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal23~1_combout\,
	datab => \process_0~28_combout\,
	datac => \process_0~12_combout\,
	datad => \Equal24~1_combout\,
	combout => \temp_control_variable~75_combout\);

-- Location: LCCOMB_X65_Y69_N14
\temp_control_variable~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~74_combout\ = (\process_0~38_combout\ & ((\Equal28~1_combout\) # ((\Equal27~1_combout\ & !\process_0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal27~1_combout\,
	datab => \process_0~12_combout\,
	datac => \process_0~38_combout\,
	datad => \Equal28~1_combout\,
	combout => \temp_control_variable~74_combout\);

-- Location: LCCOMB_X69_Y69_N8
\temp_control_variable~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~76_combout\ = (!\temp_control_variable~75_combout\ & !\temp_control_variable~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp_control_variable~75_combout\,
	datac => \temp_control_variable~74_combout\,
	combout => \temp_control_variable~76_combout\);

-- Location: LCCOMB_X69_Y69_N26
\temp_control_variable~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~77_combout\ = (\temp_control_variable~73_combout\ & (\temp_control_variable~71_combout\ & (\temp_control_variable~76_combout\ & !\process_0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~73_combout\,
	datab => \temp_control_variable~71_combout\,
	datac => \temp_control_variable~76_combout\,
	datad => \process_0~12_combout\,
	combout => \temp_control_variable~77_combout\);

-- Location: LCCOMB_X66_Y69_N30
\temp_control_variable~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~78_combout\ = (\temp_control_variable~108_combout\ & (\temp_control_variable~27_combout\ & ((!\Equal19~1_combout\) # (!\process_0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~29_combout\,
	datab => \temp_control_variable~108_combout\,
	datac => \Equal19~1_combout\,
	datad => \temp_control_variable~27_combout\,
	combout => \temp_control_variable~78_combout\);

-- Location: LCCOMB_X69_Y69_N4
\temp_control_variable~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~79_combout\ = (\temp_control_variable~78_combout\ & (\temp_control_variable~76_combout\ & ((!\process_0~39_combout\) # (!\Equal28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal28~1_combout\,
	datab => \temp_control_variable~78_combout\,
	datac => \temp_control_variable~76_combout\,
	datad => \process_0~39_combout\,
	combout => \temp_control_variable~79_combout\);

-- Location: LCCOMB_X69_Y69_N6
\temp_control_variable~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~80_combout\ = (\temp_control_variable~77_combout\) # ((\temp_control_variable~79_combout\) # ((!\process_0~12_combout\ & \temp_control_variable~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~77_combout\,
	datab => \process_0~12_combout\,
	datac => \temp_control_variable~79_combout\,
	datad => \temp_control_variable~49_combout\,
	combout => \temp_control_variable~80_combout\);

-- Location: LCCOMB_X65_Y69_N18
\temp_control_variable~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~86_combout\ = (\temp_control_variable~80_combout\ & (((!\process_0~26_combout\ & \process_0~12_combout\)) # (!\Equal34~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~80_combout\,
	datab => \process_0~26_combout\,
	datac => \process_0~12_combout\,
	datad => \Equal34~1_combout\,
	combout => \temp_control_variable~86_combout\);

-- Location: LCCOMB_X65_Y69_N4
\temp_control_variable~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~87_combout\ = (\Equal33~1_combout\ & (!\process_0~26_combout\ & ((!\process_0~28_combout\) # (!\Equal23~1_combout\)))) # (!\Equal33~1_combout\ & (((!\process_0~28_combout\) # (!\Equal23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal33~1_combout\,
	datab => \process_0~26_combout\,
	datac => \Equal23~1_combout\,
	datad => \process_0~28_combout\,
	combout => \temp_control_variable~87_combout\);

-- Location: LCCOMB_X66_Y69_N8
\temp_control_variable~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~88_combout\ = (\temp_control_variable~110_combout\ & (\temp_control_variable~87_combout\ & ((!\temp_control_variable~29_combout\) # (!\Equal27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~110_combout\,
	datab => \temp_control_variable~87_combout\,
	datac => \Equal27~1_combout\,
	datad => \temp_control_variable~29_combout\,
	combout => \temp_control_variable~88_combout\);

-- Location: LCCOMB_X66_Y69_N10
\temp_control_variable~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~89_combout\ = (!\process_0~12_combout\ & (\temp_control_variable~37_combout\ & ((\temp_control_variable~88_combout\) # (!\process_0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~42_combout\,
	datab => \process_0~12_combout\,
	datac => \temp_control_variable~88_combout\,
	datad => \temp_control_variable~37_combout\,
	combout => \temp_control_variable~89_combout\);

-- Location: LCCOMB_X61_Y69_N6
\temp_control_variable~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~83_combout\ = (\pr2ir[14]~input_o\ & (((\pr2ir[15]~input_o\)))) # (!\pr2ir[14]~input_o\ & (((\pr2ir[13]~input_o\)) # (!\pr2ir[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr2ir[12]~input_o\,
	datab => \pr2ir[14]~input_o\,
	datac => \pr2ir[13]~input_o\,
	datad => \pr2ir[15]~input_o\,
	combout => \temp_control_variable~83_combout\);

-- Location: LCCOMB_X70_Y69_N30
\temp_control_variable~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~90_combout\ = (\temp_control_variable~83_combout\ & ((\temp_control_variable~109_combout\ & (!\process_0~19_combout\)) # (!\temp_control_variable~109_combout\ & ((!\Equal17~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~19_combout\,
	datab => \temp_control_variable~109_combout\,
	datac => \temp_control_variable~83_combout\,
	datad => \Equal17~1_combout\,
	combout => \temp_control_variable~90_combout\);

-- Location: LCCOMB_X69_Y69_N20
\temp_control_variable~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~91_combout\ = (!\temp_control_variable~33_combout\ & \temp_control_variable~90_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp_control_variable~33_combout\,
	datac => \temp_control_variable~90_combout\,
	combout => \temp_control_variable~91_combout\);

-- Location: LCCOMB_X69_Y69_N22
\temp_control_variable~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~92_combout\ = (\temp_control_variable~83_combout\ & \temp_control_variable~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \temp_control_variable~83_combout\,
	datad => \temp_control_variable~33_combout\,
	combout => \temp_control_variable~92_combout\);

-- Location: LCCOMB_X68_Y69_N14
\temp_control_variable~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~93_combout\ = (\process_0~41_combout\ & (((!\process_0~21_combout\ & \temp_control_variable~92_combout\)))) # (!\process_0~41_combout\ & ((\temp_control_variable~27_combout\) # ((!\process_0~21_combout\ & 
-- \temp_control_variable~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~41_combout\,
	datab => \temp_control_variable~27_combout\,
	datac => \process_0~21_combout\,
	datad => \temp_control_variable~92_combout\,
	combout => \temp_control_variable~93_combout\);

-- Location: LCCOMB_X69_Y69_N16
\temp_control_variable~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~94_combout\ = (!\temp_control_variable~80_combout\ & ((\temp_control_variable~89_combout\) # ((\temp_control_variable~91_combout\) # (\temp_control_variable~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~89_combout\,
	datab => \temp_control_variable~91_combout\,
	datac => \temp_control_variable~93_combout\,
	datad => \temp_control_variable~80_combout\,
	combout => \temp_control_variable~94_combout\);

-- Location: LCCOMB_X69_Y69_N24
\temp_control_variable~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~84_combout\ = (\temp_control_variable~78_combout\) # ((\temp_control_variable~73_combout\ & (\temp_control_variable~83_combout\ & \temp_control_variable~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~73_combout\,
	datab => \temp_control_variable~78_combout\,
	datac => \temp_control_variable~83_combout\,
	datad => \temp_control_variable~45_combout\,
	combout => \temp_control_variable~84_combout\);

-- Location: LCCOMB_X69_Y69_N10
\temp_control_variable~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~95_combout\ = (\temp_control_variable~86_combout\) # ((\process_0~13_combout\) # ((\temp_control_variable~94_combout\ & !\temp_control_variable~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~86_combout\,
	datab => \temp_control_variable~94_combout\,
	datac => \process_0~13_combout\,
	datad => \temp_control_variable~84_combout\,
	combout => \temp_control_variable~95_combout\);

-- Location: LCCOMB_X68_Y69_N10
\temp_control_variable~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~81_combout\ = (\process_0~12_combout\ & ((\process_0~40_combout\) # ((!\process_0~21_combout\ & \process_0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~21_combout\,
	datab => \process_0~12_combout\,
	datac => \process_0~23_combout\,
	datad => \process_0~40_combout\,
	combout => \temp_control_variable~81_combout\);

-- Location: LCCOMB_X68_Y69_N12
\temp_control_variable~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~82_combout\ = (\temp_control_variable~81_combout\) # ((!\process_0~30_combout\ & (!\process_0~12_combout\ & !\temp_control_variable~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~30_combout\,
	datab => \process_0~12_combout\,
	datac => \temp_control_variable~33_combout\,
	datad => \temp_control_variable~81_combout\,
	combout => \temp_control_variable~82_combout\);

-- Location: LCCOMB_X69_Y69_N18
\temp_control_variable~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~85_combout\ = (\temp_control_variable~80_combout\) # ((\temp_control_variable~84_combout\ & ((!\temp_control_variable~76_combout\))) # (!\temp_control_variable~84_combout\ & (\temp_control_variable~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~82_combout\,
	datab => \temp_control_variable~84_combout\,
	datac => \temp_control_variable~76_combout\,
	datad => \temp_control_variable~80_combout\,
	combout => \temp_control_variable~85_combout\);

-- Location: IOIBUF_X69_Y73_N15
\controlword[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_controlword(19),
	o => \controlword[19]~input_o\);

-- Location: LCCOMB_X69_Y69_N12
\temp_control_variable~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~96_combout\ = (!\reset~input_o\ & ((\temp_control_variable~95_combout\ & ((\controlword[19]~input_o\))) # (!\temp_control_variable~95_combout\ & (\temp_control_variable~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~95_combout\,
	datab => \temp_control_variable~85_combout\,
	datac => \reset~input_o\,
	datad => \controlword[19]~input_o\,
	combout => \temp_control_variable~96_combout\);

-- Location: LCCOMB_X69_Y69_N30
\temp_control_variable~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~97_combout\ = (!\temp_control_variable~75_combout\ & \temp_control_variable~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp_control_variable~75_combout\,
	datac => \temp_control_variable~74_combout\,
	combout => \temp_control_variable~97_combout\);

-- Location: LCCOMB_X69_Y69_N0
\temp_control_variable~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~98_combout\ = (\temp_control_variable~80_combout\) # ((\temp_control_variable~84_combout\ & ((!\temp_control_variable~97_combout\))) # (!\temp_control_variable~84_combout\ & (\temp_control_variable~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~80_combout\,
	datab => \temp_control_variable~27_combout\,
	datac => \temp_control_variable~97_combout\,
	datad => \temp_control_variable~84_combout\,
	combout => \temp_control_variable~98_combout\);

-- Location: IOIBUF_X69_Y73_N1
\controlword[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_controlword(20),
	o => \controlword[20]~input_o\);

-- Location: LCCOMB_X69_Y69_N2
\temp_control_variable~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~99_combout\ = (!\reset~input_o\ & ((\temp_control_variable~95_combout\ & ((\controlword[20]~input_o\))) # (!\temp_control_variable~95_combout\ & (\temp_control_variable~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~95_combout\,
	datab => \temp_control_variable~98_combout\,
	datac => \reset~input_o\,
	datad => \controlword[20]~input_o\,
	combout => \temp_control_variable~99_combout\);

-- Location: LCCOMB_X68_Y69_N8
\temp_control_variable~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~100_combout\ = (\temp_control_variable~92_combout\) # ((!\process_0~40_combout\ & (\process_0~12_combout\ & \process_0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~40_combout\,
	datab => \process_0~12_combout\,
	datac => \process_0~21_combout\,
	datad => \temp_control_variable~92_combout\,
	combout => \temp_control_variable~100_combout\);

-- Location: LCCOMB_X69_Y69_N28
\temp_control_variable~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~101_combout\ = (!\temp_control_variable~80_combout\ & ((\temp_control_variable~84_combout\ & ((\temp_control_variable~97_combout\))) # (!\temp_control_variable~84_combout\ & (\temp_control_variable~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~100_combout\,
	datab => \temp_control_variable~84_combout\,
	datac => \temp_control_variable~97_combout\,
	datad => \temp_control_variable~80_combout\,
	combout => \temp_control_variable~101_combout\);

-- Location: IOIBUF_X72_Y73_N8
\controlword[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_controlword(21),
	o => \controlword[21]~input_o\);

-- Location: LCCOMB_X69_Y69_N14
\temp_control_variable~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~102_combout\ = (!\reset~input_o\ & ((\temp_control_variable~95_combout\ & ((\controlword[21]~input_o\))) # (!\temp_control_variable~95_combout\ & (\temp_control_variable~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~95_combout\,
	datab => \temp_control_variable~101_combout\,
	datac => \reset~input_o\,
	datad => \controlword[21]~input_o\,
	combout => \temp_control_variable~102_combout\);

-- Location: IOIBUF_X67_Y0_N1
\controlword[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_controlword(22),
	o => \controlword[22]~input_o\);

-- Location: LCCOMB_X67_Y1_N24
\temp_control_variable~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~103_combout\ = (\controlword[22]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controlword[22]~input_o\,
	datad => \reset~input_o\,
	combout => \temp_control_variable~103_combout\);

-- Location: IOIBUF_X58_Y73_N15
\controlword[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_controlword(23),
	o => \controlword[23]~input_o\);

-- Location: LCCOMB_X61_Y69_N24
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (\pr2ir[14]~input_o\ & (\pr2ir[13]~input_o\ & !\pr2ir[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pr2ir[14]~input_o\,
	datac => \pr2ir[13]~input_o\,
	datad => \pr2ir[15]~input_o\,
	combout => \Equal3~0_combout\);

-- Location: IOIBUF_X58_Y73_N22
\pennew[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pennew(7),
	o => \pennew[7]~input_o\);

-- Location: IOIBUF_X45_Y73_N1
\pennew[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pennew(4),
	o => \pennew[4]~input_o\);

-- Location: IOIBUF_X52_Y73_N1
\pennew[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pennew(5),
	o => \pennew[5]~input_o\);

-- Location: IOIBUF_X58_Y73_N1
\pennew[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pennew(6),
	o => \pennew[6]~input_o\);

-- Location: LCCOMB_X57_Y72_N16
\Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (!\pennew[7]~input_o\ & (!\pennew[4]~input_o\ & (!\pennew[5]~input_o\ & !\pennew[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pennew[7]~input_o\,
	datab => \pennew[4]~input_o\,
	datac => \pennew[5]~input_o\,
	datad => \pennew[6]~input_o\,
	combout => \Equal4~1_combout\);

-- Location: IOIBUF_X38_Y73_N15
\pennew[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pennew(1),
	o => \pennew[1]~input_o\);

-- Location: IOIBUF_X60_Y73_N1
\pennew[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pennew(0),
	o => \pennew[0]~input_o\);

-- Location: IOIBUF_X52_Y73_N15
\pennew[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pennew(3),
	o => \pennew[3]~input_o\);

-- Location: IOIBUF_X60_Y73_N22
\pennew[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pennew(2),
	o => \pennew[2]~input_o\);

-- Location: LCCOMB_X60_Y72_N16
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!\pennew[1]~input_o\ & (!\pennew[0]~input_o\ & (!\pennew[3]~input_o\ & !\pennew[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pennew[1]~input_o\,
	datab => \pennew[0]~input_o\,
	datac => \pennew[3]~input_o\,
	datad => \pennew[2]~input_o\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X61_Y69_N26
\temp_control_variable~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~104_combout\ = (\Equal3~0_combout\ & ((!\Equal4~0_combout\) # (!\Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \Equal4~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \temp_control_variable~104_combout\);

-- Location: LCCOMB_X61_Y69_N28
\temp_control_variable~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~105_combout\ = (!\reset~input_o\ & ((\temp_control_variable~104_combout\) # ((\controlword[23]~input_o\ & !\Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlword[23]~input_o\,
	datab => \Equal3~0_combout\,
	datac => \temp_control_variable~104_combout\,
	datad => \reset~input_o\,
	combout => \temp_control_variable~105_combout\);

-- Location: IOIBUF_X58_Y73_N8
\controlword[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_controlword(24),
	o => \controlword[24]~input_o\);

-- Location: LCCOMB_X61_Y69_N22
\temp_control_variable~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~106_combout\ = (!\reset~input_o\ & ((\temp_control_variable~104_combout\) # ((!\Equal3~0_combout\ & \controlword[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_control_variable~104_combout\,
	datab => \Equal3~0_combout\,
	datac => \controlword[24]~input_o\,
	datad => \reset~input_o\,
	combout => \temp_control_variable~106_combout\);

-- Location: LCCOMB_X68_Y69_N30
\pr1en_var~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr1en_var~4_combout\ = (\reset~input_o\) # (\process_0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \process_0~13_combout\,
	combout => \pr1en_var~4_combout\);

-- Location: LCCOMB_X68_Y69_N24
\temp_control_variable~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_control_variable~107_combout\ = (\temp_control_variable~26_combout\ & (!\process_0~21_combout\ & ((!\Equal17~1_combout\) # (!\process_0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~20_combout\,
	datab => \temp_control_variable~26_combout\,
	datac => \process_0~21_combout\,
	datad => \Equal17~1_combout\,
	combout => \temp_control_variable~107_combout\);

-- Location: LCCOMB_X68_Y69_N18
\pr1en_var~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr1en_var~5_combout\ = (\temp_control_variable~107_combout\ & (\process_0~41_combout\ & ((!\temp_control_variable~104_combout\) # (!\process_0~23_combout\)))) # (!\temp_control_variable~107_combout\ & (((!\temp_control_variable~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~23_combout\,
	datab => \temp_control_variable~107_combout\,
	datac => \process_0~41_combout\,
	datad => \temp_control_variable~104_combout\,
	combout => \pr1en_var~5_combout\);

-- Location: LCCOMB_X68_Y69_N26
\pr1en_var~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr1en_var~2_combout\ = ((\Equal20~1_combout\ & ((\process_0~30_combout\) # (!\Equal19~1_combout\)))) # (!\process_0~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~30_combout\,
	datab => \Equal20~1_combout\,
	datac => \process_0~29_combout\,
	datad => \Equal19~1_combout\,
	combout => \pr1en_var~2_combout\);

-- Location: LCCOMB_X68_Y69_N4
\pr1en_var~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr1en_var~3_combout\ = (!\process_0~12_combout\ & ((\pr1en_var~2_combout\) # ((!\pr1en_var~1_combout\ & !\pr1en_var~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr1en_var~1_combout\,
	datab => \process_0~12_combout\,
	datac => \pr1en_var~2_combout\,
	datad => \pr1en_var~0_combout\,
	combout => \pr1en_var~3_combout\);

-- Location: LCCOMB_X68_Y69_N20
\pr1en_var~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr1en_var~6_combout\ = (\pr1en_var~4_combout\) # ((\pr1en_var~3_combout\) # ((\pr1en_var~5_combout\ & \process_0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr1en_var~4_combout\,
	datab => \pr1en_var~5_combout\,
	datac => \pr1en_var~3_combout\,
	datad => \process_0~12_combout\,
	combout => \pr1en_var~6_combout\);

-- Location: IOIBUF_X47_Y73_N15
\pr3tz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr3tz,
	o => \pr3tz~input_o\);

-- Location: LCCOMB_X58_Y69_N24
\pr1invalid_o_var~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr1invalid_o_var~1_combout\ = (\pr3ir[15]~input_o\ & (\pr1invalid_o_var~0_combout\ & ((\pr3tz~input_o\) # (!\pr3ir[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr3ir[14]~input_o\,
	datab => \pr3ir[15]~input_o\,
	datac => \pr3tz~input_o\,
	datad => \pr1invalid_o_var~0_combout\,
	combout => \pr1invalid_o_var~1_combout\);

-- Location: LCCOMB_X61_Y69_N0
\Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (\pr2ir[12]~input_o\ & (!\pr2ir[14]~input_o\ & (!\pr2ir[13]~input_o\ & \pr2ir[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr2ir[12]~input_o\,
	datab => \pr2ir[14]~input_o\,
	datac => \pr2ir[13]~input_o\,
	datad => \pr2ir[15]~input_o\,
	combout => \Equal5~0_combout\);

-- Location: IOIBUF_X54_Y73_N1
\pr2invalid~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr2invalid,
	o => \pr2invalid~input_o\);

-- Location: LCCOMB_X61_Y69_N10
\pr1invalid_o_var~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr1invalid_o_var~2_combout\ = (!\reset~input_o\ & ((\pr1invalid_o_var~1_combout\) # ((\Equal5~0_combout\ & !\pr2invalid~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr1invalid_o_var~1_combout\,
	datab => \Equal5~0_combout\,
	datac => \pr2invalid~input_o\,
	datad => \reset~input_o\,
	combout => \pr1invalid_o_var~2_combout\);

-- Location: LCCOMB_X67_Y69_N30
\pr3invalid_o_var~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr3invalid_o_var~0_combout\ = (\pr1en_var~1_combout\ & (!\process_0~31_combout\ & !\process_0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pr1en_var~1_combout\,
	datac => \process_0~31_combout\,
	datad => \process_0~36_combout\,
	combout => \pr3invalid_o_var~0_combout\);

-- Location: LCCOMB_X66_Y69_N12
\pr3invalid_o_var~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr3invalid_o_var~1_combout\ = (\Equal20~1_combout\ & (\Equal19~1_combout\ & (\pr3invalid_o_var~0_combout\))) # (!\Equal20~1_combout\ & (((\pr3invalid_o_var~0_combout\) # (\temp_control_variable~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~1_combout\,
	datab => \Equal20~1_combout\,
	datac => \pr3invalid_o_var~0_combout\,
	datad => \temp_control_variable~37_combout\,
	combout => \pr3invalid_o_var~1_combout\);

-- Location: LCCOMB_X66_Y69_N14
\pr3invalid_o_var~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr3invalid_o_var~2_combout\ = (\pr3invalid_o_var~1_combout\ & (((\Equal19~1_combout\ & \temp_control_variable~27_combout\)) # (!\process_0~12_combout\))) # (!\pr3invalid_o_var~1_combout\ & (((\Equal19~1_combout\ & \temp_control_variable~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr3invalid_o_var~1_combout\,
	datab => \process_0~12_combout\,
	datac => \Equal19~1_combout\,
	datad => \temp_control_variable~27_combout\,
	combout => \pr3invalid_o_var~2_combout\);

-- Location: LCCOMB_X61_Y69_N4
\pr3invalid_o_var~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr3invalid_o_var~3_combout\ = (!\process_0~13_combout\ & (\process_0~29_combout\ & ((\pr2invalid~input_o\) # (!\Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~13_combout\,
	datab => \pr2invalid~input_o\,
	datac => \process_0~29_combout\,
	datad => \Equal5~0_combout\,
	combout => \pr3invalid_o_var~3_combout\);

-- Location: LCCOMB_X61_Y69_N14
\pr3invalid_o_var~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr3invalid_o_var~4_combout\ = (!\reset~input_o\ & ((\pr1invalid_o_var~1_combout\) # ((\pr3invalid_o_var~2_combout\ & \pr3invalid_o_var~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr3invalid_o_var~2_combout\,
	datab => \pr1invalid_o_var~1_combout\,
	datac => \pr3invalid_o_var~3_combout\,
	datad => \reset~input_o\,
	combout => \pr3invalid_o_var~4_combout\);

-- Location: IOIBUF_X0_Y36_N15
\pr2ir[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr2ir(0),
	o => \pr2ir[0]~input_o\);

-- Location: IOIBUF_X0_Y36_N22
\pr2ir[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr2ir(1),
	o => \pr2ir[1]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\pr2ir[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr2ir(2),
	o => \pr2ir[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\pr2ir[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr2ir(3),
	o => \pr2ir[3]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\pr2ir[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr2ir(4),
	o => \pr2ir[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\pr2ir[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr2ir(5),
	o => \pr2ir[5]~input_o\);

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_Q(4) <= \Q[4]~output_o\;

ww_Q(5) <= \Q[5]~output_o\;

ww_Q(6) <= \Q[6]~output_o\;

ww_Q(7) <= \Q[7]~output_o\;

ww_Q(8) <= \Q[8]~output_o\;

ww_Q(9) <= \Q[9]~output_o\;

ww_Q(10) <= \Q[10]~output_o\;

ww_Q(11) <= \Q[11]~output_o\;

ww_Q(12) <= \Q[12]~output_o\;

ww_Q(13) <= \Q[13]~output_o\;

ww_Q(14) <= \Q[14]~output_o\;

ww_Q(15) <= \Q[15]~output_o\;

ww_Q(16) <= \Q[16]~output_o\;

ww_Q(17) <= \Q[17]~output_o\;

ww_Q(18) <= \Q[18]~output_o\;

ww_Q(19) <= \Q[19]~output_o\;

ww_Q(20) <= \Q[20]~output_o\;

ww_Q(21) <= \Q[21]~output_o\;

ww_Q(22) <= \Q[22]~output_o\;

ww_Q(23) <= \Q[23]~output_o\;

ww_Q(24) <= \Q[24]~output_o\;

ww_pr1en <= \pr1en~output_o\;

ww_pr2en <= \pr2en~output_o\;

ww_pcen <= \pcen~output_o\;

ww_pr1invalid_o <= \pr1invalid_o~output_o\;

ww_pr2invalid_o <= \pr2invalid_o~output_o\;

ww_pr3invalid_o <= \pr3invalid_o~output_o\;
END structure;


