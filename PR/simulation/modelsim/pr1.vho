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

-- DATE "11/24/2018 18:50:50"

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

ENTITY 	pr5 IS
    PORT (
	pc_i : IN std_logic_vector(15 DOWNTO 0);
	ir_i : IN std_logic_vector(15 DOWNTO 0);
	invalid_i : IN std_logic;
	cw_i : IN std_logic_vector(24 DOWNTO 0);
	pr5a_i : IN std_logic_vector(15 DOWNTO 0);
	pr5b_i : IN std_logic_vector(15 DOWNTO 0);
	pr5c_i : IN std_logic;
	pr5z_i : IN std_logic;
	pr5trfwr_i : IN std_logic;
	pr5shift7out_i : IN std_logic_vector(15 DOWNTO 0);
	en : IN std_logic;
	rst : IN std_logic;
	clk : IN std_logic;
	pc_o : OUT std_logic_vector(15 DOWNTO 0);
	ir_o : OUT std_logic_vector(15 DOWNTO 0);
	invalid_o : OUT std_logic;
	cw_o : OUT std_logic_vector(24 DOWNTO 0);
	pr5a_o : OUT std_logic_vector(15 DOWNTO 0);
	pr5b_o : OUT std_logic_vector(15 DOWNTO 0);
	pr5c_o : OUT std_logic;
	pr5z_o : OUT std_logic;
	pr5trfwr_o : OUT std_logic;
	pr5shift7out_o : OUT std_logic_vector(15 DOWNTO 0)
	);
END pr5;

-- Design Ports Information
-- pc_o[0]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_o[1]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_o[2]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_o[3]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_o[4]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_o[5]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_o[6]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_o[7]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_o[8]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_o[9]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_o[10]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_o[11]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_o[12]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_o[13]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_o[14]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_o[15]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_o[0]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_o[1]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_o[2]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_o[3]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_o[4]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_o[5]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_o[6]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_o[7]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_o[8]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_o[9]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_o[10]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_o[11]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_o[12]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_o[13]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_o[14]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_o[15]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- invalid_o	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_o[0]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_o[1]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_o[2]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_o[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_o[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_o[5]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_o[6]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_o[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_o[8]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_o[9]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_o[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_o[11]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_o[12]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_o[13]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_o[14]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_o[15]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_o[16]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_o[17]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_o[18]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_o[19]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_o[20]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_o[21]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_o[22]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_o[23]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_o[24]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5a_o[0]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5a_o[1]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5a_o[2]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5a_o[3]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5a_o[4]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5a_o[5]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5a_o[6]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5a_o[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5a_o[8]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5a_o[9]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5a_o[10]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5a_o[11]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5a_o[12]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5a_o[13]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5a_o[14]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5a_o[15]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5b_o[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5b_o[1]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5b_o[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5b_o[3]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5b_o[4]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5b_o[5]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5b_o[6]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5b_o[7]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5b_o[8]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5b_o[9]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5b_o[10]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5b_o[11]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5b_o[12]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5b_o[13]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5b_o[14]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5b_o[15]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5c_o	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5z_o	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5trfwr_o	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5shift7out_o[0]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5shift7out_o[1]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5shift7out_o[2]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5shift7out_o[3]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5shift7out_o[4]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5shift7out_o[5]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5shift7out_o[6]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5shift7out_o[7]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5shift7out_o[8]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5shift7out_o[9]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5shift7out_o[10]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5shift7out_o[11]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5shift7out_o[12]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5shift7out_o[13]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5shift7out_o[14]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5shift7out_o[15]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_i[0]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_i[1]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_i[2]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_i[3]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_i[4]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_i[5]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_i[6]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_i[7]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_i[8]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_i[9]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_i[10]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_i[11]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_i[12]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_i[13]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_i[14]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_i[15]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_i[0]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_i[1]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_i[2]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_i[3]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_i[4]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_i[5]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_i[6]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_i[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_i[8]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_i[9]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_i[10]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_i[11]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_i[12]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_i[13]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_i[14]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_i[15]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- invalid_i	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_i[0]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_i[1]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_i[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_i[3]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_i[4]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_i[5]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_i[6]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_i[7]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_i[8]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_i[9]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_i[10]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_i[11]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_i[12]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_i[13]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_i[14]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_i[15]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_i[16]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_i[17]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_i[18]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_i[19]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_i[20]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_i[21]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_i[22]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_i[23]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cw_i[24]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5a_i[0]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5a_i[1]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5a_i[2]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5a_i[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5a_i[4]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5a_i[5]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5a_i[6]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5a_i[7]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5a_i[8]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5a_i[9]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5a_i[10]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5a_i[11]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5a_i[12]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5a_i[13]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5a_i[14]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5a_i[15]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5b_i[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5b_i[1]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5b_i[2]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5b_i[3]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5b_i[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5b_i[5]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5b_i[6]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5b_i[7]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5b_i[8]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5b_i[9]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5b_i[10]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5b_i[11]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5b_i[12]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5b_i[13]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5b_i[14]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5b_i[15]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5c_i	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5z_i	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5trfwr_i	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5shift7out_i[0]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5shift7out_i[1]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5shift7out_i[2]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5shift7out_i[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5shift7out_i[4]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5shift7out_i[5]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5shift7out_i[6]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5shift7out_i[7]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5shift7out_i[8]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5shift7out_i[9]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5shift7out_i[10]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5shift7out_i[11]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5shift7out_i[12]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5shift7out_i[13]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5shift7out_i[14]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr5shift7out_i[15]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pr5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pc_i : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ir_i : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_invalid_i : std_logic;
SIGNAL ww_cw_i : std_logic_vector(24 DOWNTO 0);
SIGNAL ww_pr5a_i : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_pr5b_i : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_pr5c_i : std_logic;
SIGNAL ww_pr5z_i : std_logic;
SIGNAL ww_pr5trfwr_i : std_logic;
SIGNAL ww_pr5shift7out_i : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_en : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_pc_o : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ir_o : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_invalid_o : std_logic;
SIGNAL ww_cw_o : std_logic_vector(24 DOWNTO 0);
SIGNAL ww_pr5a_o : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_pr5b_o : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_pr5c_o : std_logic;
SIGNAL ww_pr5z_o : std_logic;
SIGNAL ww_pr5trfwr_o : std_logic;
SIGNAL ww_pr5shift7out_o : std_logic_vector(15 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pc_o[0]~output_o\ : std_logic;
SIGNAL \pc_o[1]~output_o\ : std_logic;
SIGNAL \pc_o[2]~output_o\ : std_logic;
SIGNAL \pc_o[3]~output_o\ : std_logic;
SIGNAL \pc_o[4]~output_o\ : std_logic;
SIGNAL \pc_o[5]~output_o\ : std_logic;
SIGNAL \pc_o[6]~output_o\ : std_logic;
SIGNAL \pc_o[7]~output_o\ : std_logic;
SIGNAL \pc_o[8]~output_o\ : std_logic;
SIGNAL \pc_o[9]~output_o\ : std_logic;
SIGNAL \pc_o[10]~output_o\ : std_logic;
SIGNAL \pc_o[11]~output_o\ : std_logic;
SIGNAL \pc_o[12]~output_o\ : std_logic;
SIGNAL \pc_o[13]~output_o\ : std_logic;
SIGNAL \pc_o[14]~output_o\ : std_logic;
SIGNAL \pc_o[15]~output_o\ : std_logic;
SIGNAL \ir_o[0]~output_o\ : std_logic;
SIGNAL \ir_o[1]~output_o\ : std_logic;
SIGNAL \ir_o[2]~output_o\ : std_logic;
SIGNAL \ir_o[3]~output_o\ : std_logic;
SIGNAL \ir_o[4]~output_o\ : std_logic;
SIGNAL \ir_o[5]~output_o\ : std_logic;
SIGNAL \ir_o[6]~output_o\ : std_logic;
SIGNAL \ir_o[7]~output_o\ : std_logic;
SIGNAL \ir_o[8]~output_o\ : std_logic;
SIGNAL \ir_o[9]~output_o\ : std_logic;
SIGNAL \ir_o[10]~output_o\ : std_logic;
SIGNAL \ir_o[11]~output_o\ : std_logic;
SIGNAL \ir_o[12]~output_o\ : std_logic;
SIGNAL \ir_o[13]~output_o\ : std_logic;
SIGNAL \ir_o[14]~output_o\ : std_logic;
SIGNAL \ir_o[15]~output_o\ : std_logic;
SIGNAL \invalid_o~output_o\ : std_logic;
SIGNAL \cw_o[0]~output_o\ : std_logic;
SIGNAL \cw_o[1]~output_o\ : std_logic;
SIGNAL \cw_o[2]~output_o\ : std_logic;
SIGNAL \cw_o[3]~output_o\ : std_logic;
SIGNAL \cw_o[4]~output_o\ : std_logic;
SIGNAL \cw_o[5]~output_o\ : std_logic;
SIGNAL \cw_o[6]~output_o\ : std_logic;
SIGNAL \cw_o[7]~output_o\ : std_logic;
SIGNAL \cw_o[8]~output_o\ : std_logic;
SIGNAL \cw_o[9]~output_o\ : std_logic;
SIGNAL \cw_o[10]~output_o\ : std_logic;
SIGNAL \cw_o[11]~output_o\ : std_logic;
SIGNAL \cw_o[12]~output_o\ : std_logic;
SIGNAL \cw_o[13]~output_o\ : std_logic;
SIGNAL \cw_o[14]~output_o\ : std_logic;
SIGNAL \cw_o[15]~output_o\ : std_logic;
SIGNAL \cw_o[16]~output_o\ : std_logic;
SIGNAL \cw_o[17]~output_o\ : std_logic;
SIGNAL \cw_o[18]~output_o\ : std_logic;
SIGNAL \cw_o[19]~output_o\ : std_logic;
SIGNAL \cw_o[20]~output_o\ : std_logic;
SIGNAL \cw_o[21]~output_o\ : std_logic;
SIGNAL \cw_o[22]~output_o\ : std_logic;
SIGNAL \cw_o[23]~output_o\ : std_logic;
SIGNAL \cw_o[24]~output_o\ : std_logic;
SIGNAL \pr5a_o[0]~output_o\ : std_logic;
SIGNAL \pr5a_o[1]~output_o\ : std_logic;
SIGNAL \pr5a_o[2]~output_o\ : std_logic;
SIGNAL \pr5a_o[3]~output_o\ : std_logic;
SIGNAL \pr5a_o[4]~output_o\ : std_logic;
SIGNAL \pr5a_o[5]~output_o\ : std_logic;
SIGNAL \pr5a_o[6]~output_o\ : std_logic;
SIGNAL \pr5a_o[7]~output_o\ : std_logic;
SIGNAL \pr5a_o[8]~output_o\ : std_logic;
SIGNAL \pr5a_o[9]~output_o\ : std_logic;
SIGNAL \pr5a_o[10]~output_o\ : std_logic;
SIGNAL \pr5a_o[11]~output_o\ : std_logic;
SIGNAL \pr5a_o[12]~output_o\ : std_logic;
SIGNAL \pr5a_o[13]~output_o\ : std_logic;
SIGNAL \pr5a_o[14]~output_o\ : std_logic;
SIGNAL \pr5a_o[15]~output_o\ : std_logic;
SIGNAL \pr5b_o[0]~output_o\ : std_logic;
SIGNAL \pr5b_o[1]~output_o\ : std_logic;
SIGNAL \pr5b_o[2]~output_o\ : std_logic;
SIGNAL \pr5b_o[3]~output_o\ : std_logic;
SIGNAL \pr5b_o[4]~output_o\ : std_logic;
SIGNAL \pr5b_o[5]~output_o\ : std_logic;
SIGNAL \pr5b_o[6]~output_o\ : std_logic;
SIGNAL \pr5b_o[7]~output_o\ : std_logic;
SIGNAL \pr5b_o[8]~output_o\ : std_logic;
SIGNAL \pr5b_o[9]~output_o\ : std_logic;
SIGNAL \pr5b_o[10]~output_o\ : std_logic;
SIGNAL \pr5b_o[11]~output_o\ : std_logic;
SIGNAL \pr5b_o[12]~output_o\ : std_logic;
SIGNAL \pr5b_o[13]~output_o\ : std_logic;
SIGNAL \pr5b_o[14]~output_o\ : std_logic;
SIGNAL \pr5b_o[15]~output_o\ : std_logic;
SIGNAL \pr5c_o~output_o\ : std_logic;
SIGNAL \pr5z_o~output_o\ : std_logic;
SIGNAL \pr5trfwr_o~output_o\ : std_logic;
SIGNAL \pr5shift7out_o[0]~output_o\ : std_logic;
SIGNAL \pr5shift7out_o[1]~output_o\ : std_logic;
SIGNAL \pr5shift7out_o[2]~output_o\ : std_logic;
SIGNAL \pr5shift7out_o[3]~output_o\ : std_logic;
SIGNAL \pr5shift7out_o[4]~output_o\ : std_logic;
SIGNAL \pr5shift7out_o[5]~output_o\ : std_logic;
SIGNAL \pr5shift7out_o[6]~output_o\ : std_logic;
SIGNAL \pr5shift7out_o[7]~output_o\ : std_logic;
SIGNAL \pr5shift7out_o[8]~output_o\ : std_logic;
SIGNAL \pr5shift7out_o[9]~output_o\ : std_logic;
SIGNAL \pr5shift7out_o[10]~output_o\ : std_logic;
SIGNAL \pr5shift7out_o[11]~output_o\ : std_logic;
SIGNAL \pr5shift7out_o[12]~output_o\ : std_logic;
SIGNAL \pr5shift7out_o[13]~output_o\ : std_logic;
SIGNAL \pr5shift7out_o[14]~output_o\ : std_logic;
SIGNAL \pr5shift7out_o[15]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \pc_i[0]~input_o\ : std_logic;
SIGNAL \pc_o[0]~reg0feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \pc_o[0]~reg0_q\ : std_logic;
SIGNAL \pc_i[1]~input_o\ : std_logic;
SIGNAL \pc_o[1]~reg0feeder_combout\ : std_logic;
SIGNAL \pc_o[1]~reg0_q\ : std_logic;
SIGNAL \pc_i[2]~input_o\ : std_logic;
SIGNAL \pc_o[2]~reg0_q\ : std_logic;
SIGNAL \pc_i[3]~input_o\ : std_logic;
SIGNAL \pc_o[3]~reg0_q\ : std_logic;
SIGNAL \pc_i[4]~input_o\ : std_logic;
SIGNAL \pc_o[4]~reg0_q\ : std_logic;
SIGNAL \pc_i[5]~input_o\ : std_logic;
SIGNAL \pc_o[5]~reg0_q\ : std_logic;
SIGNAL \pc_i[6]~input_o\ : std_logic;
SIGNAL \pc_o[6]~reg0_q\ : std_logic;
SIGNAL \pc_i[7]~input_o\ : std_logic;
SIGNAL \pc_o[7]~reg0feeder_combout\ : std_logic;
SIGNAL \pc_o[7]~reg0_q\ : std_logic;
SIGNAL \pc_i[8]~input_o\ : std_logic;
SIGNAL \pc_o[8]~reg0feeder_combout\ : std_logic;
SIGNAL \pc_o[8]~reg0_q\ : std_logic;
SIGNAL \pc_i[9]~input_o\ : std_logic;
SIGNAL \pc_o[9]~reg0_q\ : std_logic;
SIGNAL \pc_i[10]~input_o\ : std_logic;
SIGNAL \pc_o[10]~reg0feeder_combout\ : std_logic;
SIGNAL \pc_o[10]~reg0_q\ : std_logic;
SIGNAL \pc_i[11]~input_o\ : std_logic;
SIGNAL \pc_o[11]~reg0feeder_combout\ : std_logic;
SIGNAL \pc_o[11]~reg0_q\ : std_logic;
SIGNAL \pc_i[12]~input_o\ : std_logic;
SIGNAL \pc_o[12]~reg0feeder_combout\ : std_logic;
SIGNAL \pc_o[12]~reg0_q\ : std_logic;
SIGNAL \pc_i[13]~input_o\ : std_logic;
SIGNAL \pc_o[13]~reg0feeder_combout\ : std_logic;
SIGNAL \pc_o[13]~reg0_q\ : std_logic;
SIGNAL \pc_i[14]~input_o\ : std_logic;
SIGNAL \pc_o[14]~reg0_q\ : std_logic;
SIGNAL \pc_i[15]~input_o\ : std_logic;
SIGNAL \pc_o[15]~reg0feeder_combout\ : std_logic;
SIGNAL \pc_o[15]~reg0_q\ : std_logic;
SIGNAL \ir_i[0]~input_o\ : std_logic;
SIGNAL \ir_o[0]~reg0feeder_combout\ : std_logic;
SIGNAL \ir_o[0]~reg0_q\ : std_logic;
SIGNAL \ir_i[1]~input_o\ : std_logic;
SIGNAL \ir_o[1]~reg0feeder_combout\ : std_logic;
SIGNAL \ir_o[1]~reg0_q\ : std_logic;
SIGNAL \ir_i[2]~input_o\ : std_logic;
SIGNAL \ir_o[2]~reg0_q\ : std_logic;
SIGNAL \ir_i[3]~input_o\ : std_logic;
SIGNAL \ir_o[3]~reg0feeder_combout\ : std_logic;
SIGNAL \ir_o[3]~reg0_q\ : std_logic;
SIGNAL \ir_i[4]~input_o\ : std_logic;
SIGNAL \ir_o[4]~reg0_q\ : std_logic;
SIGNAL \ir_i[5]~input_o\ : std_logic;
SIGNAL \ir_o[5]~reg0feeder_combout\ : std_logic;
SIGNAL \ir_o[5]~reg0_q\ : std_logic;
SIGNAL \ir_i[6]~input_o\ : std_logic;
SIGNAL \ir_o[6]~reg0_q\ : std_logic;
SIGNAL \ir_i[7]~input_o\ : std_logic;
SIGNAL \ir_o[7]~reg0feeder_combout\ : std_logic;
SIGNAL \ir_o[7]~reg0_q\ : std_logic;
SIGNAL \ir_i[8]~input_o\ : std_logic;
SIGNAL \ir_o[8]~reg0feeder_combout\ : std_logic;
SIGNAL \ir_o[8]~reg0_q\ : std_logic;
SIGNAL \ir_i[9]~input_o\ : std_logic;
SIGNAL \ir_o[9]~reg0_q\ : std_logic;
SIGNAL \ir_i[10]~input_o\ : std_logic;
SIGNAL \ir_o[10]~reg0feeder_combout\ : std_logic;
SIGNAL \ir_o[10]~reg0_q\ : std_logic;
SIGNAL \ir_i[11]~input_o\ : std_logic;
SIGNAL \ir_o[11]~reg0_q\ : std_logic;
SIGNAL \ir_i[12]~input_o\ : std_logic;
SIGNAL \ir_o[12]~reg0feeder_combout\ : std_logic;
SIGNAL \ir_o[12]~reg0_q\ : std_logic;
SIGNAL \ir_i[13]~input_o\ : std_logic;
SIGNAL \ir_o[13]~reg0_q\ : std_logic;
SIGNAL \ir_i[14]~input_o\ : std_logic;
SIGNAL \ir_o[14]~reg0_q\ : std_logic;
SIGNAL \ir_i[15]~input_o\ : std_logic;
SIGNAL \ir_o[15]~reg0feeder_combout\ : std_logic;
SIGNAL \ir_o[15]~reg0_q\ : std_logic;
SIGNAL \invalid_i~input_o\ : std_logic;
SIGNAL \invalid_o~reg0feeder_combout\ : std_logic;
SIGNAL \invalid_o~reg0_q\ : std_logic;
SIGNAL \cw_i[0]~input_o\ : std_logic;
SIGNAL \cw_o[0]~reg0_q\ : std_logic;
SIGNAL \cw_i[1]~input_o\ : std_logic;
SIGNAL \cw_o[1]~reg0_q\ : std_logic;
SIGNAL \cw_i[2]~input_o\ : std_logic;
SIGNAL \cw_o[2]~reg0_q\ : std_logic;
SIGNAL \cw_i[3]~input_o\ : std_logic;
SIGNAL \cw_o[3]~reg0_q\ : std_logic;
SIGNAL \cw_i[4]~input_o\ : std_logic;
SIGNAL \cw_o[4]~reg0feeder_combout\ : std_logic;
SIGNAL \cw_o[4]~reg0_q\ : std_logic;
SIGNAL \cw_i[5]~input_o\ : std_logic;
SIGNAL \cw_o[5]~reg0feeder_combout\ : std_logic;
SIGNAL \cw_o[5]~reg0_q\ : std_logic;
SIGNAL \cw_i[6]~input_o\ : std_logic;
SIGNAL \cw_o[6]~reg0_q\ : std_logic;
SIGNAL \cw_i[7]~input_o\ : std_logic;
SIGNAL \cw_o[7]~0_combout\ : std_logic;
SIGNAL \cw_o[7]~reg0_q\ : std_logic;
SIGNAL \cw_i[8]~input_o\ : std_logic;
SIGNAL \cw_o[8]~1_combout\ : std_logic;
SIGNAL \cw_o[8]~reg0_q\ : std_logic;
SIGNAL \cw_i[9]~input_o\ : std_logic;
SIGNAL \cw_o[9]~reg0feeder_combout\ : std_logic;
SIGNAL \cw_o[9]~reg0_q\ : std_logic;
SIGNAL \cw_i[10]~input_o\ : std_logic;
SIGNAL \cw_o[10]~reg0_q\ : std_logic;
SIGNAL \cw_i[11]~input_o\ : std_logic;
SIGNAL \cw_o[11]~reg0feeder_combout\ : std_logic;
SIGNAL \cw_o[11]~reg0_q\ : std_logic;
SIGNAL \cw_i[12]~input_o\ : std_logic;
SIGNAL \cw_o[12]~reg0_q\ : std_logic;
SIGNAL \cw_i[13]~input_o\ : std_logic;
SIGNAL \cw_o[13]~reg0_q\ : std_logic;
SIGNAL \cw_i[14]~input_o\ : std_logic;
SIGNAL \cw_o[14]~reg0feeder_combout\ : std_logic;
SIGNAL \cw_o[14]~reg0_q\ : std_logic;
SIGNAL \cw_i[15]~input_o\ : std_logic;
SIGNAL \cw_o[15]~reg0_q\ : std_logic;
SIGNAL \cw_i[16]~input_o\ : std_logic;
SIGNAL \cw_o[16]~reg0_q\ : std_logic;
SIGNAL \cw_i[17]~input_o\ : std_logic;
SIGNAL \cw_o[17]~reg0_q\ : std_logic;
SIGNAL \cw_i[18]~input_o\ : std_logic;
SIGNAL \cw_o[18]~reg0feeder_combout\ : std_logic;
SIGNAL \cw_o[18]~reg0_q\ : std_logic;
SIGNAL \cw_i[19]~input_o\ : std_logic;
SIGNAL \cw_o[19]~reg0feeder_combout\ : std_logic;
SIGNAL \cw_o[19]~reg0_q\ : std_logic;
SIGNAL \cw_i[20]~input_o\ : std_logic;
SIGNAL \cw_o[20]~reg0_q\ : std_logic;
SIGNAL \cw_i[21]~input_o\ : std_logic;
SIGNAL \cw_o[21]~reg0_q\ : std_logic;
SIGNAL \cw_i[22]~input_o\ : std_logic;
SIGNAL \cw_o[22]~reg0feeder_combout\ : std_logic;
SIGNAL \cw_o[22]~reg0_q\ : std_logic;
SIGNAL \cw_i[23]~input_o\ : std_logic;
SIGNAL \cw_o[23]~reg0_q\ : std_logic;
SIGNAL \cw_i[24]~input_o\ : std_logic;
SIGNAL \cw_o[24]~reg0feeder_combout\ : std_logic;
SIGNAL \cw_o[24]~reg0_q\ : std_logic;
SIGNAL \pr5a_i[0]~input_o\ : std_logic;
SIGNAL \pr5a_o[0]~reg0feeder_combout\ : std_logic;
SIGNAL \pr5a_o[0]~reg0_q\ : std_logic;
SIGNAL \pr5a_i[1]~input_o\ : std_logic;
SIGNAL \pr5a_o[1]~reg0feeder_combout\ : std_logic;
SIGNAL \pr5a_o[1]~reg0_q\ : std_logic;
SIGNAL \pr5a_i[2]~input_o\ : std_logic;
SIGNAL \pr5a_o[2]~reg0feeder_combout\ : std_logic;
SIGNAL \pr5a_o[2]~reg0_q\ : std_logic;
SIGNAL \pr5a_i[3]~input_o\ : std_logic;
SIGNAL \pr5a_o[3]~reg0feeder_combout\ : std_logic;
SIGNAL \pr5a_o[3]~reg0_q\ : std_logic;
SIGNAL \pr5a_i[4]~input_o\ : std_logic;
SIGNAL \pr5a_o[4]~reg0_q\ : std_logic;
SIGNAL \pr5a_i[5]~input_o\ : std_logic;
SIGNAL \pr5a_o[5]~reg0feeder_combout\ : std_logic;
SIGNAL \pr5a_o[5]~reg0_q\ : std_logic;
SIGNAL \pr5a_i[6]~input_o\ : std_logic;
SIGNAL \pr5a_o[6]~reg0_q\ : std_logic;
SIGNAL \pr5a_i[7]~input_o\ : std_logic;
SIGNAL \pr5a_o[7]~reg0feeder_combout\ : std_logic;
SIGNAL \pr5a_o[7]~reg0_q\ : std_logic;
SIGNAL \pr5a_i[8]~input_o\ : std_logic;
SIGNAL \pr5a_o[8]~reg0feeder_combout\ : std_logic;
SIGNAL \pr5a_o[8]~reg0_q\ : std_logic;
SIGNAL \pr5a_i[9]~input_o\ : std_logic;
SIGNAL \pr5a_o[9]~reg0feeder_combout\ : std_logic;
SIGNAL \pr5a_o[9]~reg0_q\ : std_logic;
SIGNAL \pr5a_i[10]~input_o\ : std_logic;
SIGNAL \pr5a_o[10]~reg0feeder_combout\ : std_logic;
SIGNAL \pr5a_o[10]~reg0_q\ : std_logic;
SIGNAL \pr5a_i[11]~input_o\ : std_logic;
SIGNAL \pr5a_o[11]~reg0feeder_combout\ : std_logic;
SIGNAL \pr5a_o[11]~reg0_q\ : std_logic;
SIGNAL \pr5a_i[12]~input_o\ : std_logic;
SIGNAL \pr5a_o[12]~reg0feeder_combout\ : std_logic;
SIGNAL \pr5a_o[12]~reg0_q\ : std_logic;
SIGNAL \pr5a_i[13]~input_o\ : std_logic;
SIGNAL \pr5a_o[13]~reg0_q\ : std_logic;
SIGNAL \pr5a_i[14]~input_o\ : std_logic;
SIGNAL \pr5a_o[14]~reg0feeder_combout\ : std_logic;
SIGNAL \pr5a_o[14]~reg0_q\ : std_logic;
SIGNAL \pr5a_i[15]~input_o\ : std_logic;
SIGNAL \pr5a_o[15]~reg0feeder_combout\ : std_logic;
SIGNAL \pr5a_o[15]~reg0_q\ : std_logic;
SIGNAL \pr5b_i[0]~input_o\ : std_logic;
SIGNAL \pr5b_o[0]~reg0_q\ : std_logic;
SIGNAL \pr5b_i[1]~input_o\ : std_logic;
SIGNAL \pr5b_o[1]~reg0feeder_combout\ : std_logic;
SIGNAL \pr5b_o[1]~reg0_q\ : std_logic;
SIGNAL \pr5b_i[2]~input_o\ : std_logic;
SIGNAL \pr5b_o[2]~reg0feeder_combout\ : std_logic;
SIGNAL \pr5b_o[2]~reg0_q\ : std_logic;
SIGNAL \pr5b_i[3]~input_o\ : std_logic;
SIGNAL \pr5b_o[3]~reg0_q\ : std_logic;
SIGNAL \pr5b_i[4]~input_o\ : std_logic;
SIGNAL \pr5b_o[4]~reg0feeder_combout\ : std_logic;
SIGNAL \pr5b_o[4]~reg0_q\ : std_logic;
SIGNAL \pr5b_i[5]~input_o\ : std_logic;
SIGNAL \pr5b_o[5]~reg0feeder_combout\ : std_logic;
SIGNAL \pr5b_o[5]~reg0_q\ : std_logic;
SIGNAL \pr5b_i[6]~input_o\ : std_logic;
SIGNAL \pr5b_o[6]~reg0_q\ : std_logic;
SIGNAL \pr5b_i[7]~input_o\ : std_logic;
SIGNAL \pr5b_o[7]~reg0feeder_combout\ : std_logic;
SIGNAL \pr5b_o[7]~reg0_q\ : std_logic;
SIGNAL \pr5b_i[8]~input_o\ : std_logic;
SIGNAL \pr5b_o[8]~reg0feeder_combout\ : std_logic;
SIGNAL \pr5b_o[8]~reg0_q\ : std_logic;
SIGNAL \pr5b_i[9]~input_o\ : std_logic;
SIGNAL \pr5b_o[9]~reg0_q\ : std_logic;
SIGNAL \pr5b_i[10]~input_o\ : std_logic;
SIGNAL \pr5b_o[10]~reg0feeder_combout\ : std_logic;
SIGNAL \pr5b_o[10]~reg0_q\ : std_logic;
SIGNAL \pr5b_i[11]~input_o\ : std_logic;
SIGNAL \pr5b_o[11]~reg0feeder_combout\ : std_logic;
SIGNAL \pr5b_o[11]~reg0_q\ : std_logic;
SIGNAL \pr5b_i[12]~input_o\ : std_logic;
SIGNAL \pr5b_o[12]~reg0_q\ : std_logic;
SIGNAL \pr5b_i[13]~input_o\ : std_logic;
SIGNAL \pr5b_o[13]~reg0_q\ : std_logic;
SIGNAL \pr5b_i[14]~input_o\ : std_logic;
SIGNAL \pr5b_o[14]~reg0feeder_combout\ : std_logic;
SIGNAL \pr5b_o[14]~reg0_q\ : std_logic;
SIGNAL \pr5b_i[15]~input_o\ : std_logic;
SIGNAL \pr5b_o[15]~reg0_q\ : std_logic;
SIGNAL \pr5c_i~input_o\ : std_logic;
SIGNAL \pr5c_o~reg0feeder_combout\ : std_logic;
SIGNAL \pr5c_o~reg0_q\ : std_logic;
SIGNAL \pr5z_i~input_o\ : std_logic;
SIGNAL \pr5z_o~reg0feeder_combout\ : std_logic;
SIGNAL \pr5z_o~reg0_q\ : std_logic;
SIGNAL \pr5trfwr_i~input_o\ : std_logic;
SIGNAL \pr5trfwr_o~reg0feeder_combout\ : std_logic;
SIGNAL \pr5trfwr_o~reg0_q\ : std_logic;
SIGNAL \pr5shift7out_i[0]~input_o\ : std_logic;
SIGNAL \pr5shift7out_o[0]~reg0feeder_combout\ : std_logic;
SIGNAL \pr5shift7out_o[0]~reg0_q\ : std_logic;
SIGNAL \pr5shift7out_i[1]~input_o\ : std_logic;
SIGNAL \pr5shift7out_o[1]~reg0_q\ : std_logic;
SIGNAL \pr5shift7out_i[2]~input_o\ : std_logic;
SIGNAL \pr5shift7out_o[2]~reg0_q\ : std_logic;
SIGNAL \pr5shift7out_i[3]~input_o\ : std_logic;
SIGNAL \pr5shift7out_o[3]~reg0_q\ : std_logic;
SIGNAL \pr5shift7out_i[4]~input_o\ : std_logic;
SIGNAL \pr5shift7out_o[4]~reg0_q\ : std_logic;
SIGNAL \pr5shift7out_i[5]~input_o\ : std_logic;
SIGNAL \pr5shift7out_o[5]~reg0_q\ : std_logic;
SIGNAL \pr5shift7out_i[6]~input_o\ : std_logic;
SIGNAL \pr5shift7out_o[6]~reg0_q\ : std_logic;
SIGNAL \pr5shift7out_i[7]~input_o\ : std_logic;
SIGNAL \pr5shift7out_o[7]~reg0feeder_combout\ : std_logic;
SIGNAL \pr5shift7out_o[7]~reg0_q\ : std_logic;
SIGNAL \pr5shift7out_i[8]~input_o\ : std_logic;
SIGNAL \pr5shift7out_o[8]~reg0feeder_combout\ : std_logic;
SIGNAL \pr5shift7out_o[8]~reg0_q\ : std_logic;
SIGNAL \pr5shift7out_i[9]~input_o\ : std_logic;
SIGNAL \pr5shift7out_o[9]~reg0_q\ : std_logic;
SIGNAL \pr5shift7out_i[10]~input_o\ : std_logic;
SIGNAL \pr5shift7out_o[10]~reg0feeder_combout\ : std_logic;
SIGNAL \pr5shift7out_o[10]~reg0_q\ : std_logic;
SIGNAL \pr5shift7out_i[11]~input_o\ : std_logic;
SIGNAL \pr5shift7out_o[11]~reg0_q\ : std_logic;
SIGNAL \pr5shift7out_i[12]~input_o\ : std_logic;
SIGNAL \pr5shift7out_o[12]~reg0feeder_combout\ : std_logic;
SIGNAL \pr5shift7out_o[12]~reg0_q\ : std_logic;
SIGNAL \pr5shift7out_i[13]~input_o\ : std_logic;
SIGNAL \pr5shift7out_o[13]~reg0_q\ : std_logic;
SIGNAL \pr5shift7out_i[14]~input_o\ : std_logic;
SIGNAL \pr5shift7out_o[14]~reg0feeder_combout\ : std_logic;
SIGNAL \pr5shift7out_o[14]~reg0_q\ : std_logic;
SIGNAL \pr5shift7out_i[15]~input_o\ : std_logic;
SIGNAL \pr5shift7out_o[15]~reg0feeder_combout\ : std_logic;
SIGNAL \pr5shift7out_o[15]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_cw_o[8]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_cw_o[7]~reg0_q\ : std_logic;

BEGIN

ww_pc_i <= pc_i;
ww_ir_i <= ir_i;
ww_invalid_i <= invalid_i;
ww_cw_i <= cw_i;
ww_pr5a_i <= pr5a_i;
ww_pr5b_i <= pr5b_i;
ww_pr5c_i <= pr5c_i;
ww_pr5z_i <= pr5z_i;
ww_pr5trfwr_i <= pr5trfwr_i;
ww_pr5shift7out_i <= pr5shift7out_i;
ww_en <= en;
ww_rst <= rst;
ww_clk <= clk;
pc_o <= ww_pc_o;
ir_o <= ww_ir_o;
invalid_o <= ww_invalid_o;
cw_o <= ww_cw_o;
pr5a_o <= ww_pr5a_o;
pr5b_o <= ww_pr5b_o;
pr5c_o <= ww_pr5c_o;
pr5z_o <= ww_pr5z_o;
pr5trfwr_o <= ww_pr5trfwr_o;
pr5shift7out_o <= ww_pr5shift7out_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\ALT_INV_cw_o[8]~reg0_q\ <= NOT \cw_o[8]~reg0_q\;
\ALT_INV_cw_o[7]~reg0_q\ <= NOT \cw_o[7]~reg0_q\;

-- Location: IOOBUF_X115_Y23_N9
\pc_o[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_o[0]~reg0_q\,
	devoe => ww_devoe,
	o => \pc_o[0]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\pc_o[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_o[1]~reg0_q\,
	devoe => ww_devoe,
	o => \pc_o[1]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\pc_o[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_o[2]~reg0_q\,
	devoe => ww_devoe,
	o => \pc_o[2]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\pc_o[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_o[3]~reg0_q\,
	devoe => ww_devoe,
	o => \pc_o[3]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\pc_o[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_o[4]~reg0_q\,
	devoe => ww_devoe,
	o => \pc_o[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N16
\pc_o[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_o[5]~reg0_q\,
	devoe => ww_devoe,
	o => \pc_o[5]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\pc_o[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_o[6]~reg0_q\,
	devoe => ww_devoe,
	o => \pc_o[6]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\pc_o[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_o[7]~reg0_q\,
	devoe => ww_devoe,
	o => \pc_o[7]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\pc_o[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_o[8]~reg0_q\,
	devoe => ww_devoe,
	o => \pc_o[8]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\pc_o[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_o[9]~reg0_q\,
	devoe => ww_devoe,
	o => \pc_o[9]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\pc_o[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_o[10]~reg0_q\,
	devoe => ww_devoe,
	o => \pc_o[10]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\pc_o[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_o[11]~reg0_q\,
	devoe => ww_devoe,
	o => \pc_o[11]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\pc_o[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_o[12]~reg0_q\,
	devoe => ww_devoe,
	o => \pc_o[12]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\pc_o[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_o[13]~reg0_q\,
	devoe => ww_devoe,
	o => \pc_o[13]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\pc_o[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_o[14]~reg0_q\,
	devoe => ww_devoe,
	o => \pc_o[14]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\pc_o[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_o[15]~reg0_q\,
	devoe => ww_devoe,
	o => \pc_o[15]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\ir_o[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_o[0]~reg0_q\,
	devoe => ww_devoe,
	o => \ir_o[0]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\ir_o[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_o[1]~reg0_q\,
	devoe => ww_devoe,
	o => \ir_o[1]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\ir_o[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_o[2]~reg0_q\,
	devoe => ww_devoe,
	o => \ir_o[2]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\ir_o[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_o[3]~reg0_q\,
	devoe => ww_devoe,
	o => \ir_o[3]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\ir_o[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_o[4]~reg0_q\,
	devoe => ww_devoe,
	o => \ir_o[4]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\ir_o[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_o[5]~reg0_q\,
	devoe => ww_devoe,
	o => \ir_o[5]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\ir_o[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_o[6]~reg0_q\,
	devoe => ww_devoe,
	o => \ir_o[6]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\ir_o[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_o[7]~reg0_q\,
	devoe => ww_devoe,
	o => \ir_o[7]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\ir_o[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_o[8]~reg0_q\,
	devoe => ww_devoe,
	o => \ir_o[8]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\ir_o[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_o[9]~reg0_q\,
	devoe => ww_devoe,
	o => \ir_o[9]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\ir_o[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_o[10]~reg0_q\,
	devoe => ww_devoe,
	o => \ir_o[10]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\ir_o[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_o[11]~reg0_q\,
	devoe => ww_devoe,
	o => \ir_o[11]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\ir_o[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_o[12]~reg0_q\,
	devoe => ww_devoe,
	o => \ir_o[12]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\ir_o[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_o[13]~reg0_q\,
	devoe => ww_devoe,
	o => \ir_o[13]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\ir_o[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_o[14]~reg0_q\,
	devoe => ww_devoe,
	o => \ir_o[14]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\ir_o[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir_o[15]~reg0_q\,
	devoe => ww_devoe,
	o => \ir_o[15]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\invalid_o~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \invalid_o~reg0_q\,
	devoe => ww_devoe,
	o => \invalid_o~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\cw_o[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cw_o[0]~reg0_q\,
	devoe => ww_devoe,
	o => \cw_o[0]~output_o\);

-- Location: IOOBUF_X113_Y0_N2
\cw_o[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cw_o[1]~reg0_q\,
	devoe => ww_devoe,
	o => \cw_o[1]~output_o\);

-- Location: IOOBUF_X115_Y16_N9
\cw_o[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cw_o[2]~reg0_q\,
	devoe => ww_devoe,
	o => \cw_o[2]~output_o\);

-- Location: IOOBUF_X115_Y18_N9
\cw_o[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cw_o[3]~reg0_q\,
	devoe => ww_devoe,
	o => \cw_o[3]~output_o\);

-- Location: IOOBUF_X115_Y17_N2
\cw_o[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cw_o[4]~reg0_q\,
	devoe => ww_devoe,
	o => \cw_o[4]~output_o\);

-- Location: IOOBUF_X115_Y7_N16
\cw_o[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cw_o[5]~reg0_q\,
	devoe => ww_devoe,
	o => \cw_o[5]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\cw_o[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cw_o[6]~reg0_q\,
	devoe => ww_devoe,
	o => \cw_o[6]~output_o\);

-- Location: IOOBUF_X115_Y15_N2
\cw_o[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_cw_o[7]~reg0_q\,
	devoe => ww_devoe,
	o => \cw_o[7]~output_o\);

-- Location: IOOBUF_X115_Y15_N9
\cw_o[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_cw_o[8]~reg0_q\,
	devoe => ww_devoe,
	o => \cw_o[8]~output_o\);

-- Location: IOOBUF_X115_Y4_N23
\cw_o[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cw_o[9]~reg0_q\,
	devoe => ww_devoe,
	o => \cw_o[9]~output_o\);

-- Location: IOOBUF_X115_Y4_N16
\cw_o[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cw_o[10]~reg0_q\,
	devoe => ww_devoe,
	o => \cw_o[10]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\cw_o[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cw_o[11]~reg0_q\,
	devoe => ww_devoe,
	o => \cw_o[11]~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\cw_o[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cw_o[12]~reg0_q\,
	devoe => ww_devoe,
	o => \cw_o[12]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\cw_o[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cw_o[13]~reg0_q\,
	devoe => ww_devoe,
	o => \cw_o[13]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\cw_o[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cw_o[14]~reg0_q\,
	devoe => ww_devoe,
	o => \cw_o[14]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\cw_o[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cw_o[15]~reg0_q\,
	devoe => ww_devoe,
	o => \cw_o[15]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\cw_o[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cw_o[16]~reg0_q\,
	devoe => ww_devoe,
	o => \cw_o[16]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\cw_o[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cw_o[17]~reg0_q\,
	devoe => ww_devoe,
	o => \cw_o[17]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\cw_o[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cw_o[18]~reg0_q\,
	devoe => ww_devoe,
	o => \cw_o[18]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\cw_o[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cw_o[19]~reg0_q\,
	devoe => ww_devoe,
	o => \cw_o[19]~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\cw_o[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cw_o[20]~reg0_q\,
	devoe => ww_devoe,
	o => \cw_o[20]~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\cw_o[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cw_o[21]~reg0_q\,
	devoe => ww_devoe,
	o => \cw_o[21]~output_o\);

-- Location: IOOBUF_X13_Y73_N16
\cw_o[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cw_o[22]~reg0_q\,
	devoe => ww_devoe,
	o => \cw_o[22]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\cw_o[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cw_o[23]~reg0_q\,
	devoe => ww_devoe,
	o => \cw_o[23]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\cw_o[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cw_o[24]~reg0_q\,
	devoe => ww_devoe,
	o => \cw_o[24]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\pr5a_o[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5a_o[0]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5a_o[0]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\pr5a_o[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5a_o[1]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5a_o[1]~output_o\);

-- Location: IOOBUF_X1_Y73_N23
\pr5a_o[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5a_o[2]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5a_o[2]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\pr5a_o[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5a_o[3]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5a_o[3]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\pr5a_o[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5a_o[4]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5a_o[4]~output_o\);

-- Location: IOOBUF_X115_Y5_N16
\pr5a_o[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5a_o[5]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5a_o[5]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\pr5a_o[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5a_o[6]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5a_o[6]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\pr5a_o[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5a_o[7]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5a_o[7]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\pr5a_o[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5a_o[8]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5a_o[8]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\pr5a_o[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5a_o[9]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5a_o[9]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\pr5a_o[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5a_o[10]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5a_o[10]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\pr5a_o[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5a_o[11]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5a_o[11]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\pr5a_o[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5a_o[12]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5a_o[12]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\pr5a_o[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5a_o[13]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5a_o[13]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\pr5a_o[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5a_o[14]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5a_o[14]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\pr5a_o[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5a_o[15]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5a_o[15]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\pr5b_o[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5b_o[0]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5b_o[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\pr5b_o[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5b_o[1]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5b_o[1]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\pr5b_o[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5b_o[2]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5b_o[2]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\pr5b_o[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5b_o[3]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5b_o[3]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\pr5b_o[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5b_o[4]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5b_o[4]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\pr5b_o[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5b_o[5]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5b_o[5]~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\pr5b_o[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5b_o[6]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5b_o[6]~output_o\);

-- Location: IOOBUF_X115_Y55_N23
\pr5b_o[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5b_o[7]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5b_o[7]~output_o\);

-- Location: IOOBUF_X115_Y66_N23
\pr5b_o[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5b_o[8]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5b_o[8]~output_o\);

-- Location: IOOBUF_X115_Y53_N16
\pr5b_o[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5b_o[9]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5b_o[9]~output_o\);

-- Location: IOOBUF_X115_Y56_N16
\pr5b_o[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5b_o[10]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5b_o[10]~output_o\);

-- Location: IOOBUF_X115_Y62_N16
\pr5b_o[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5b_o[11]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5b_o[11]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\pr5b_o[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5b_o[12]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5b_o[12]~output_o\);

-- Location: IOOBUF_X115_Y55_N16
\pr5b_o[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5b_o[13]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5b_o[13]~output_o\);

-- Location: IOOBUF_X115_Y63_N9
\pr5b_o[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5b_o[14]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5b_o[14]~output_o\);

-- Location: IOOBUF_X115_Y66_N16
\pr5b_o[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5b_o[15]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5b_o[15]~output_o\);

-- Location: IOOBUF_X115_Y62_N23
\pr5c_o~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5c_o~reg0_q\,
	devoe => ww_devoe,
	o => \pr5c_o~output_o\);

-- Location: IOOBUF_X115_Y64_N2
\pr5z_o~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5z_o~reg0_q\,
	devoe => ww_devoe,
	o => \pr5z_o~output_o\);

-- Location: IOOBUF_X115_Y52_N2
\pr5trfwr_o~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5trfwr_o~reg0_q\,
	devoe => ww_devoe,
	o => \pr5trfwr_o~output_o\);

-- Location: IOOBUF_X115_Y63_N2
\pr5shift7out_o[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5shift7out_o[0]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5shift7out_o[0]~output_o\);

-- Location: IOOBUF_X115_Y62_N9
\pr5shift7out_o[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5shift7out_o[1]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5shift7out_o[1]~output_o\);

-- Location: IOOBUF_X115_Y65_N16
\pr5shift7out_o[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5shift7out_o[2]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5shift7out_o[2]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\pr5shift7out_o[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5shift7out_o[3]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5shift7out_o[3]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\pr5shift7out_o[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5shift7out_o[4]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5shift7out_o[4]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\pr5shift7out_o[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5shift7out_o[5]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5shift7out_o[5]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\pr5shift7out_o[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5shift7out_o[6]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5shift7out_o[6]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\pr5shift7out_o[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5shift7out_o[7]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5shift7out_o[7]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\pr5shift7out_o[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5shift7out_o[8]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5shift7out_o[8]~output_o\);

-- Location: IOOBUF_X115_Y40_N9
\pr5shift7out_o[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5shift7out_o[9]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5shift7out_o[9]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\pr5shift7out_o[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5shift7out_o[10]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5shift7out_o[10]~output_o\);

-- Location: IOOBUF_X115_Y46_N9
\pr5shift7out_o[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5shift7out_o[11]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5shift7out_o[11]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\pr5shift7out_o[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5shift7out_o[12]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5shift7out_o[12]~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\pr5shift7out_o[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5shift7out_o[13]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5shift7out_o[13]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\pr5shift7out_o[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5shift7out_o[14]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5shift7out_o[14]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\pr5shift7out_o[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr5shift7out_o[15]~reg0_q\,
	devoe => ww_devoe,
	o => \pr5shift7out_o[15]~output_o\);

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

-- Location: IOIBUF_X115_Y28_N1
\pc_i[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_i(0),
	o => \pc_i[0]~input_o\);

-- Location: LCCOMB_X114_Y26_N8
\pc_o[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_o[0]~reg0feeder_combout\ = \pc_i[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pc_i[0]~input_o\,
	combout => \pc_o[0]~reg0feeder_combout\);

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

-- Location: IOIBUF_X115_Y69_N1
\en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: FF_X114_Y26_N9
\pc_o[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc_o[0]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_o[0]~reg0_q\);

-- Location: IOIBUF_X115_Y28_N8
\pc_i[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_i(1),
	o => \pc_i[1]~input_o\);

-- Location: LCCOMB_X114_Y26_N18
\pc_o[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_o[1]~reg0feeder_combout\ = \pc_i[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pc_i[1]~input_o\,
	combout => \pc_o[1]~reg0feeder_combout\);

-- Location: FF_X114_Y26_N19
\pc_o[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc_o[1]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_o[1]~reg0_q\);

-- Location: IOIBUF_X115_Y23_N1
\pc_i[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_i(2),
	o => \pc_i[2]~input_o\);

-- Location: FF_X114_Y26_N5
\pc_o[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pc_i[2]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_o[2]~reg0_q\);

-- Location: IOIBUF_X115_Y26_N22
\pc_i[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_i(3),
	o => \pc_i[3]~input_o\);

-- Location: FF_X114_Y26_N31
\pc_o[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pc_i[3]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_o[3]~reg0_q\);

-- Location: IOIBUF_X115_Y22_N1
\pc_i[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_i(4),
	o => \pc_i[4]~input_o\);

-- Location: FF_X114_Y26_N17
\pc_o[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pc_i[4]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_o[4]~reg0_q\);

-- Location: IOIBUF_X115_Y27_N8
\pc_i[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_i(5),
	o => \pc_i[5]~input_o\);

-- Location: FF_X114_Y26_N11
\pc_o[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pc_i[5]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_o[5]~reg0_q\);

-- Location: IOIBUF_X115_Y24_N1
\pc_i[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_i(6),
	o => \pc_i[6]~input_o\);

-- Location: FF_X114_Y26_N13
\pc_o[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pc_i[6]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_o[6]~reg0_q\);

-- Location: IOIBUF_X115_Y25_N22
\pc_i[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_i(7),
	o => \pc_i[7]~input_o\);

-- Location: LCCOMB_X114_Y26_N14
\pc_o[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_o[7]~reg0feeder_combout\ = \pc_i[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pc_i[7]~input_o\,
	combout => \pc_o[7]~reg0feeder_combout\);

-- Location: FF_X114_Y26_N15
\pc_o[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc_o[7]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_o[7]~reg0_q\);

-- Location: IOIBUF_X115_Y29_N1
\pc_i[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_i(8),
	o => \pc_i[8]~input_o\);

-- Location: LCCOMB_X114_Y26_N24
\pc_o[8]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_o[8]~reg0feeder_combout\ = \pc_i[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pc_i[8]~input_o\,
	combout => \pc_o[8]~reg0feeder_combout\);

-- Location: FF_X114_Y26_N25
\pc_o[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc_o[8]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_o[8]~reg0_q\);

-- Location: IOIBUF_X115_Y25_N15
\pc_i[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_i(9),
	o => \pc_i[9]~input_o\);

-- Location: FF_X114_Y26_N27
\pc_o[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pc_i[9]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_o[9]~reg0_q\);

-- Location: IOIBUF_X60_Y0_N1
\pc_i[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_i(10),
	o => \pc_i[10]~input_o\);

-- Location: LCCOMB_X60_Y1_N24
\pc_o[10]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_o[10]~reg0feeder_combout\ = \pc_i[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pc_i[10]~input_o\,
	combout => \pc_o[10]~reg0feeder_combout\);

-- Location: FF_X60_Y1_N25
\pc_o[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc_o[10]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_o[10]~reg0_q\);

-- Location: IOIBUF_X115_Y30_N8
\pc_i[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_i(11),
	o => \pc_i[11]~input_o\);

-- Location: LCCOMB_X114_Y26_N20
\pc_o[11]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_o[11]~reg0feeder_combout\ = \pc_i[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pc_i[11]~input_o\,
	combout => \pc_o[11]~reg0feeder_combout\);

-- Location: FF_X114_Y26_N21
\pc_o[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc_o[11]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_o[11]~reg0_q\);

-- Location: IOIBUF_X115_Y24_N8
\pc_i[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_i(12),
	o => \pc_i[12]~input_o\);

-- Location: LCCOMB_X114_Y26_N22
\pc_o[12]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_o[12]~reg0feeder_combout\ = \pc_i[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pc_i[12]~input_o\,
	combout => \pc_o[12]~reg0feeder_combout\);

-- Location: FF_X114_Y26_N23
\pc_o[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc_o[12]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_o[12]~reg0_q\);

-- Location: IOIBUF_X115_Y31_N8
\pc_i[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_i(13),
	o => \pc_i[13]~input_o\);

-- Location: LCCOMB_X114_Y26_N0
\pc_o[13]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_o[13]~reg0feeder_combout\ = \pc_i[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pc_i[13]~input_o\,
	combout => \pc_o[13]~reg0feeder_combout\);

-- Location: FF_X114_Y26_N1
\pc_o[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc_o[13]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_o[13]~reg0_q\);

-- Location: IOIBUF_X115_Y26_N15
\pc_i[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_i(14),
	o => \pc_i[14]~input_o\);

-- Location: FF_X114_Y26_N3
\pc_o[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pc_i[14]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_o[14]~reg0_q\);

-- Location: IOIBUF_X115_Y27_N1
\pc_i[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_i(15),
	o => \pc_i[15]~input_o\);

-- Location: LCCOMB_X114_Y26_N28
\pc_o[15]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_o[15]~reg0feeder_combout\ = \pc_i[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pc_i[15]~input_o\,
	combout => \pc_o[15]~reg0feeder_combout\);

-- Location: FF_X114_Y26_N29
\pc_o[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc_o[15]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_o[15]~reg0_q\);

-- Location: IOIBUF_X49_Y0_N1
\ir_i[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_i(0),
	o => \ir_i[0]~input_o\);

-- Location: LCCOMB_X43_Y1_N16
\ir_o[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_o[0]~reg0feeder_combout\ = \ir_i[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_i[0]~input_o\,
	combout => \ir_o[0]~reg0feeder_combout\);

-- Location: FF_X43_Y1_N17
\ir_o[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir_o[0]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_o[0]~reg0_q\);

-- Location: IOIBUF_X29_Y0_N15
\ir_i[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_i(1),
	o => \ir_i[1]~input_o\);

-- Location: LCCOMB_X34_Y1_N24
\ir_o[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_o[1]~reg0feeder_combout\ = \ir_i[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_i[1]~input_o\,
	combout => \ir_o[1]~reg0feeder_combout\);

-- Location: FF_X34_Y1_N25
\ir_o[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir_o[1]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_o[1]~reg0_q\);

-- Location: IOIBUF_X107_Y0_N1
\ir_i[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_i(2),
	o => \ir_i[2]~input_o\);

-- Location: FF_X43_Y1_N27
\ir_o[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ir_i[2]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_o[2]~reg0_q\);

-- Location: IOIBUF_X54_Y0_N1
\ir_i[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_i(3),
	o => \ir_i[3]~input_o\);

-- Location: LCCOMB_X54_Y1_N24
\ir_o[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_o[3]~reg0feeder_combout\ = \ir_i[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_i[3]~input_o\,
	combout => \ir_o[3]~reg0feeder_combout\);

-- Location: FF_X54_Y1_N25
\ir_o[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir_o[3]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_o[3]~reg0_q\);

-- Location: IOIBUF_X42_Y73_N8
\ir_i[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_i(4),
	o => \ir_i[4]~input_o\);

-- Location: FF_X43_Y1_N29
\ir_o[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ir_i[4]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_o[4]~reg0_q\);

-- Location: IOIBUF_X35_Y0_N22
\ir_i[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_i(5),
	o => \ir_i[5]~input_o\);

-- Location: LCCOMB_X43_Y1_N30
\ir_o[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_o[5]~reg0feeder_combout\ = \ir_i[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_i[5]~input_o\,
	combout => \ir_o[5]~reg0feeder_combout\);

-- Location: FF_X43_Y1_N31
\ir_o[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir_o[5]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_o[5]~reg0_q\);

-- Location: IOIBUF_X42_Y0_N22
\ir_i[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_i(6),
	o => \ir_i[6]~input_o\);

-- Location: FF_X43_Y1_N25
\ir_o[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ir_i[6]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_o[6]~reg0_q\);

-- Location: IOIBUF_X52_Y0_N1
\ir_i[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_i(7),
	o => \ir_i[7]~input_o\);

-- Location: LCCOMB_X43_Y1_N10
\ir_o[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_o[7]~reg0feeder_combout\ = \ir_i[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_i[7]~input_o\,
	combout => \ir_o[7]~reg0feeder_combout\);

-- Location: FF_X43_Y1_N11
\ir_o[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir_o[7]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_o[7]~reg0_q\);

-- Location: IOIBUF_X40_Y0_N15
\ir_i[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_i(8),
	o => \ir_i[8]~input_o\);

-- Location: LCCOMB_X43_Y1_N20
\ir_o[8]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_o[8]~reg0feeder_combout\ = \ir_i[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_i[8]~input_o\,
	combout => \ir_o[8]~reg0feeder_combout\);

-- Location: FF_X43_Y1_N21
\ir_o[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir_o[8]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_o[8]~reg0_q\);

-- Location: IOIBUF_X35_Y0_N15
\ir_i[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_i(9),
	o => \ir_i[9]~input_o\);

-- Location: FF_X43_Y1_N23
\ir_o[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ir_i[9]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_o[9]~reg0_q\);

-- Location: IOIBUF_X27_Y0_N22
\ir_i[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_i(10),
	o => \ir_i[10]~input_o\);

-- Location: LCCOMB_X34_Y1_N2
\ir_o[10]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_o[10]~reg0feeder_combout\ = \ir_i[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_i[10]~input_o\,
	combout => \ir_o[10]~reg0feeder_combout\);

-- Location: FF_X34_Y1_N3
\ir_o[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir_o[10]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_o[10]~reg0_q\);

-- Location: IOIBUF_X49_Y0_N8
\ir_i[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_i(11),
	o => \ir_i[11]~input_o\);

-- Location: FF_X43_Y1_N1
\ir_o[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ir_i[11]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_o[11]~reg0_q\);

-- Location: IOIBUF_X47_Y0_N8
\ir_i[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_i(12),
	o => \ir_i[12]~input_o\);

-- Location: LCCOMB_X43_Y1_N18
\ir_o[12]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_o[12]~reg0feeder_combout\ = \ir_i[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_i[12]~input_o\,
	combout => \ir_o[12]~reg0feeder_combout\);

-- Location: FF_X43_Y1_N19
\ir_o[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir_o[12]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_o[12]~reg0_q\);

-- Location: IOIBUF_X40_Y0_N22
\ir_i[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_i(13),
	o => \ir_i[13]~input_o\);

-- Location: FF_X43_Y1_N5
\ir_o[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ir_i[13]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_o[13]~reg0_q\);

-- Location: IOIBUF_X47_Y0_N1
\ir_i[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_i(14),
	o => \ir_i[14]~input_o\);

-- Location: FF_X43_Y1_N15
\ir_o[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ir_i[14]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_o[14]~reg0_q\);

-- Location: IOIBUF_X52_Y0_N8
\ir_i[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_i(15),
	o => \ir_i[15]~input_o\);

-- Location: LCCOMB_X43_Y1_N8
\ir_o[15]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_o[15]~reg0feeder_combout\ = \ir_i[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_i[15]~input_o\,
	combout => \ir_o[15]~reg0feeder_combout\);

-- Location: FF_X43_Y1_N9
\ir_o[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir_o[15]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_o[15]~reg0_q\);

-- Location: IOIBUF_X111_Y0_N8
\invalid_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_invalid_i,
	o => \invalid_i~input_o\);

-- Location: LCCOMB_X114_Y11_N0
\invalid_o~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \invalid_o~reg0feeder_combout\ = \invalid_i~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \invalid_i~input_o\,
	combout => \invalid_o~reg0feeder_combout\);

-- Location: FF_X114_Y11_N1
\invalid_o~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \invalid_o~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \invalid_o~reg0_q\);

-- Location: IOIBUF_X115_Y10_N8
\cw_i[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cw_i(0),
	o => \cw_i[0]~input_o\);

-- Location: FF_X114_Y11_N11
\cw_o[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cw_i[0]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cw_o[0]~reg0_q\);

-- Location: IOIBUF_X115_Y11_N1
\cw_i[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cw_i(1),
	o => \cw_i[1]~input_o\);

-- Location: FF_X114_Y11_N21
\cw_o[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cw_i[1]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cw_o[1]~reg0_q\);

-- Location: IOIBUF_X115_Y13_N1
\cw_i[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cw_i(2),
	o => \cw_i[2]~input_o\);

-- Location: FF_X114_Y11_N23
\cw_o[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cw_i[2]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cw_o[2]~reg0_q\);

-- Location: IOIBUF_X115_Y12_N1
\cw_i[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cw_i(3),
	o => \cw_i[3]~input_o\);

-- Location: FF_X114_Y11_N25
\cw_o[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cw_i[3]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cw_o[3]~reg0_q\);

-- Location: IOIBUF_X115_Y14_N1
\cw_i[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cw_i(4),
	o => \cw_i[4]~input_o\);

-- Location: LCCOMB_X114_Y11_N26
\cw_o[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cw_o[4]~reg0feeder_combout\ = \cw_i[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cw_i[4]~input_o\,
	combout => \cw_o[4]~reg0feeder_combout\);

-- Location: FF_X114_Y11_N27
\cw_o[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cw_o[4]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cw_o[4]~reg0_q\);

-- Location: IOIBUF_X115_Y13_N8
\cw_i[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cw_i(5),
	o => \cw_i[5]~input_o\);

-- Location: LCCOMB_X114_Y11_N28
\cw_o[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cw_o[5]~reg0feeder_combout\ = \cw_i[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cw_i[5]~input_o\,
	combout => \cw_o[5]~reg0feeder_combout\);

-- Location: FF_X114_Y11_N29
\cw_o[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cw_o[5]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cw_o[5]~reg0_q\);

-- Location: IOIBUF_X111_Y0_N1
\cw_i[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cw_i(6),
	o => \cw_i[6]~input_o\);

-- Location: FF_X114_Y11_N31
\cw_o[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cw_i[6]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cw_o[6]~reg0_q\);

-- Location: IOIBUF_X115_Y10_N1
\cw_i[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cw_i(7),
	o => \cw_i[7]~input_o\);

-- Location: LCCOMB_X114_Y11_N16
\cw_o[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cw_o[7]~0_combout\ = !\cw_i[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cw_i[7]~input_o\,
	combout => \cw_o[7]~0_combout\);

-- Location: FF_X114_Y11_N17
\cw_o[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cw_o[7]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cw_o[7]~reg0_q\);

-- Location: IOIBUF_X115_Y8_N15
\cw_i[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cw_i(8),
	o => \cw_i[8]~input_o\);

-- Location: LCCOMB_X114_Y11_N2
\cw_o[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cw_o[8]~1_combout\ = !\cw_i[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cw_i[8]~input_o\,
	combout => \cw_o[8]~1_combout\);

-- Location: FF_X114_Y11_N3
\cw_o[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cw_o[8]~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cw_o[8]~reg0_q\);

-- Location: IOIBUF_X115_Y12_N8
\cw_i[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cw_i(9),
	o => \cw_i[9]~input_o\);

-- Location: LCCOMB_X114_Y11_N12
\cw_o[9]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cw_o[9]~reg0feeder_combout\ = \cw_i[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cw_i[9]~input_o\,
	combout => \cw_o[9]~reg0feeder_combout\);

-- Location: FF_X114_Y11_N13
\cw_o[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cw_o[9]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cw_o[9]~reg0_q\);

-- Location: IOIBUF_X115_Y8_N22
\cw_i[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cw_i(10),
	o => \cw_i[10]~input_o\);

-- Location: FF_X114_Y11_N15
\cw_o[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cw_i[10]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cw_o[10]~reg0_q\);

-- Location: IOIBUF_X115_Y11_N8
\cw_i[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cw_i(11),
	o => \cw_i[11]~input_o\);

-- Location: LCCOMB_X114_Y11_N8
\cw_o[11]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cw_o[11]~reg0feeder_combout\ = \cw_i[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cw_i[11]~input_o\,
	combout => \cw_o[11]~reg0feeder_combout\);

-- Location: FF_X114_Y11_N9
\cw_o[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cw_o[11]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cw_o[11]~reg0_q\);

-- Location: IOIBUF_X115_Y9_N22
\cw_i[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cw_i(12),
	o => \cw_i[12]~input_o\);

-- Location: FF_X114_Y11_N19
\cw_o[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cw_i[12]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cw_o[12]~reg0_q\);

-- Location: IOIBUF_X115_Y6_N15
\cw_i[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cw_i(13),
	o => \cw_i[13]~input_o\);

-- Location: FF_X114_Y11_N5
\cw_o[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cw_i[13]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cw_o[13]~reg0_q\);

-- Location: IOIBUF_X5_Y73_N22
\cw_i[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cw_i(14),
	o => \cw_i[14]~input_o\);

-- Location: LCCOMB_X12_Y72_N16
\cw_o[14]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cw_o[14]~reg0feeder_combout\ = \cw_i[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cw_i[14]~input_o\,
	combout => \cw_o[14]~reg0feeder_combout\);

-- Location: FF_X12_Y72_N17
\cw_o[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cw_o[14]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cw_o[14]~reg0_q\);

-- Location: IOIBUF_X20_Y73_N8
\cw_i[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cw_i(15),
	o => \cw_i[15]~input_o\);

-- Location: FF_X12_Y72_N3
\cw_o[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cw_i[15]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cw_o[15]~reg0_q\);

-- Location: IOIBUF_X11_Y73_N15
\cw_i[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cw_i(16),
	o => \cw_i[16]~input_o\);

-- Location: FF_X12_Y72_N13
\cw_o[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cw_i[16]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cw_o[16]~reg0_q\);

-- Location: IOIBUF_X9_Y73_N1
\cw_i[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cw_i(17),
	o => \cw_i[17]~input_o\);

-- Location: FF_X12_Y72_N15
\cw_o[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cw_i[17]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cw_o[17]~reg0_q\);

-- Location: IOIBUF_X18_Y73_N22
\cw_i[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cw_i(18),
	o => \cw_i[18]~input_o\);

-- Location: LCCOMB_X12_Y72_N24
\cw_o[18]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cw_o[18]~reg0feeder_combout\ = \cw_i[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cw_i[18]~input_o\,
	combout => \cw_o[18]~reg0feeder_combout\);

-- Location: FF_X12_Y72_N25
\cw_o[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cw_o[18]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cw_o[18]~reg0_q\);

-- Location: IOIBUF_X13_Y73_N8
\cw_i[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cw_i(19),
	o => \cw_i[19]~input_o\);

-- Location: LCCOMB_X12_Y72_N26
\cw_o[19]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cw_o[19]~reg0feeder_combout\ = \cw_i[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cw_i[19]~input_o\,
	combout => \cw_o[19]~reg0feeder_combout\);

-- Location: FF_X12_Y72_N27
\cw_o[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cw_o[19]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cw_o[19]~reg0_q\);

-- Location: IOIBUF_X13_Y73_N1
\cw_i[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cw_i(20),
	o => \cw_i[20]~input_o\);

-- Location: FF_X12_Y72_N21
\cw_o[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cw_i[20]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cw_o[20]~reg0_q\);

-- Location: IOIBUF_X7_Y73_N15
\cw_i[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cw_i(21),
	o => \cw_i[21]~input_o\);

-- Location: FF_X12_Y72_N7
\cw_o[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cw_i[21]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cw_o[21]~reg0_q\);

-- Location: IOIBUF_X16_Y73_N1
\cw_i[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cw_i(22),
	o => \cw_i[22]~input_o\);

-- Location: LCCOMB_X12_Y72_N0
\cw_o[22]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cw_o[22]~reg0feeder_combout\ = \cw_i[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cw_i[22]~input_o\,
	combout => \cw_o[22]~reg0feeder_combout\);

-- Location: FF_X12_Y72_N1
\cw_o[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cw_o[22]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cw_o[22]~reg0_q\);

-- Location: IOIBUF_X18_Y73_N15
\cw_i[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cw_i(23),
	o => \cw_i[23]~input_o\);

-- Location: FF_X12_Y72_N11
\cw_o[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cw_i[23]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cw_o[23]~reg0_q\);

-- Location: IOIBUF_X20_Y73_N1
\cw_i[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cw_i(24),
	o => \cw_i[24]~input_o\);

-- Location: LCCOMB_X12_Y72_N28
\cw_o[24]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cw_o[24]~reg0feeder_combout\ = \cw_i[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cw_i[24]~input_o\,
	combout => \cw_o[24]~reg0feeder_combout\);

-- Location: FF_X12_Y72_N29
\cw_o[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cw_o[24]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cw_o[24]~reg0_q\);

-- Location: IOIBUF_X11_Y73_N22
\pr5a_i[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5a_i(0),
	o => \pr5a_i[0]~input_o\);

-- Location: LCCOMB_X12_Y72_N30
\pr5a_o[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr5a_o[0]~reg0feeder_combout\ = \pr5a_i[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr5a_i[0]~input_o\,
	combout => \pr5a_o[0]~reg0feeder_combout\);

-- Location: FF_X12_Y72_N31
\pr5a_o[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr5a_o[0]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5a_o[0]~reg0_q\);

-- Location: IOIBUF_X3_Y73_N22
\pr5a_i[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5a_i(1),
	o => \pr5a_i[1]~input_o\);

-- Location: LCCOMB_X12_Y72_N8
\pr5a_o[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr5a_o[1]~reg0feeder_combout\ = \pr5a_i[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr5a_i[1]~input_o\,
	combout => \pr5a_o[1]~reg0feeder_combout\);

-- Location: FF_X12_Y72_N9
\pr5a_o[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr5a_o[1]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5a_o[1]~reg0_q\);

-- Location: IOIBUF_X20_Y73_N15
\pr5a_i[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5a_i(2),
	o => \pr5a_i[2]~input_o\);

-- Location: LCCOMB_X12_Y72_N18
\pr5a_o[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr5a_o[2]~reg0feeder_combout\ = \pr5a_i[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr5a_i[2]~input_o\,
	combout => \pr5a_o[2]~reg0feeder_combout\);

-- Location: FF_X12_Y72_N19
\pr5a_o[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr5a_o[2]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5a_o[2]~reg0_q\);

-- Location: IOIBUF_X23_Y73_N1
\pr5a_i[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5a_i(3),
	o => \pr5a_i[3]~input_o\);

-- Location: LCCOMB_X12_Y72_N4
\pr5a_o[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr5a_o[3]~reg0feeder_combout\ = \pr5a_i[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr5a_i[3]~input_o\,
	combout => \pr5a_o[3]~reg0feeder_combout\);

-- Location: FF_X12_Y72_N5
\pr5a_o[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr5a_o[3]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5a_o[3]~reg0_q\);

-- Location: IOIBUF_X67_Y73_N15
\pr5a_i[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5a_i(4),
	o => \pr5a_i[4]~input_o\);

-- Location: FF_X61_Y72_N1
\pr5a_o[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pr5a_i[4]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5a_o[4]~reg0_q\);

-- Location: IOIBUF_X115_Y14_N8
\pr5a_i[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5a_i(5),
	o => \pr5a_i[5]~input_o\);

-- Location: LCCOMB_X114_Y11_N6
\pr5a_o[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr5a_o[5]~reg0feeder_combout\ = \pr5a_i[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr5a_i[5]~input_o\,
	combout => \pr5a_o[5]~reg0feeder_combout\);

-- Location: FF_X114_Y11_N7
\pr5a_o[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr5a_o[5]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5a_o[5]~reg0_q\);

-- Location: IOIBUF_X16_Y73_N8
\pr5a_i[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5a_i(6),
	o => \pr5a_i[6]~input_o\);

-- Location: FF_X12_Y72_N23
\pr5a_o[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pr5a_i[6]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5a_o[6]~reg0_q\);

-- Location: IOIBUF_X67_Y73_N8
\pr5a_i[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5a_i(7),
	o => \pr5a_i[7]~input_o\);

-- Location: LCCOMB_X61_Y72_N10
\pr5a_o[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr5a_o[7]~reg0feeder_combout\ = \pr5a_i[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr5a_i[7]~input_o\,
	combout => \pr5a_o[7]~reg0feeder_combout\);

-- Location: FF_X61_Y72_N11
\pr5a_o[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr5a_o[7]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5a_o[7]~reg0_q\);

-- Location: IOIBUF_X58_Y73_N8
\pr5a_i[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5a_i(8),
	o => \pr5a_i[8]~input_o\);

-- Location: LCCOMB_X61_Y72_N28
\pr5a_o[8]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr5a_o[8]~reg0feeder_combout\ = \pr5a_i[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr5a_i[8]~input_o\,
	combout => \pr5a_o[8]~reg0feeder_combout\);

-- Location: FF_X61_Y72_N29
\pr5a_o[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr5a_o[8]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5a_o[8]~reg0_q\);

-- Location: IOIBUF_X58_Y0_N22
\pr5a_i[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5a_i(9),
	o => \pr5a_i[9]~input_o\);

-- Location: LCCOMB_X61_Y72_N6
\pr5a_o[9]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr5a_o[9]~reg0feeder_combout\ = \pr5a_i[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr5a_i[9]~input_o\,
	combout => \pr5a_o[9]~reg0feeder_combout\);

-- Location: FF_X61_Y72_N7
\pr5a_o[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr5a_o[9]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5a_o[9]~reg0_q\);

-- Location: IOIBUF_X58_Y0_N15
\pr5a_i[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5a_i(10),
	o => \pr5a_i[10]~input_o\);

-- Location: LCCOMB_X61_Y72_N8
\pr5a_o[10]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr5a_o[10]~reg0feeder_combout\ = \pr5a_i[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr5a_i[10]~input_o\,
	combout => \pr5a_o[10]~reg0feeder_combout\);

-- Location: FF_X61_Y72_N9
\pr5a_o[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr5a_o[10]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5a_o[10]~reg0_q\);

-- Location: IOIBUF_X58_Y73_N15
\pr5a_i[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5a_i(11),
	o => \pr5a_i[11]~input_o\);

-- Location: LCCOMB_X61_Y72_N26
\pr5a_o[11]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr5a_o[11]~reg0feeder_combout\ = \pr5a_i[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr5a_i[11]~input_o\,
	combout => \pr5a_o[11]~reg0feeder_combout\);

-- Location: FF_X61_Y72_N27
\pr5a_o[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr5a_o[11]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5a_o[11]~reg0_q\);

-- Location: IOIBUF_X52_Y73_N15
\pr5a_i[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5a_i(12),
	o => \pr5a_i[12]~input_o\);

-- Location: LCCOMB_X61_Y72_N12
\pr5a_o[12]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr5a_o[12]~reg0feeder_combout\ = \pr5a_i[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr5a_i[12]~input_o\,
	combout => \pr5a_o[12]~reg0feeder_combout\);

-- Location: FF_X61_Y72_N13
\pr5a_o[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr5a_o[12]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5a_o[12]~reg0_q\);

-- Location: IOIBUF_X60_Y73_N15
\pr5a_i[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5a_i(13),
	o => \pr5a_i[13]~input_o\);

-- Location: FF_X61_Y72_N15
\pr5a_o[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pr5a_i[13]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5a_o[13]~reg0_q\);

-- Location: IOIBUF_X0_Y36_N22
\pr5a_i[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5a_i(14),
	o => \pr5a_i[14]~input_o\);

-- Location: LCCOMB_X61_Y72_N24
\pr5a_o[14]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr5a_o[14]~reg0feeder_combout\ = \pr5a_i[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr5a_i[14]~input_o\,
	combout => \pr5a_o[14]~reg0feeder_combout\);

-- Location: FF_X61_Y72_N25
\pr5a_o[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr5a_o[14]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5a_o[14]~reg0_q\);

-- Location: IOIBUF_X67_Y73_N1
\pr5a_i[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5a_i(15),
	o => \pr5a_i[15]~input_o\);

-- Location: LCCOMB_X61_Y72_N2
\pr5a_o[15]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr5a_o[15]~reg0feeder_combout\ = \pr5a_i[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr5a_i[15]~input_o\,
	combout => \pr5a_o[15]~reg0feeder_combout\);

-- Location: FF_X61_Y72_N3
\pr5a_o[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr5a_o[15]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5a_o[15]~reg0_q\);

-- Location: IOIBUF_X58_Y73_N1
\pr5b_i[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5b_i(0),
	o => \pr5b_i[0]~input_o\);

-- Location: FF_X61_Y72_N5
\pr5b_o[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pr5b_i[0]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5b_o[0]~reg0_q\);

-- Location: IOIBUF_X72_Y73_N8
\pr5b_i[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5b_i(1),
	o => \pr5b_i[1]~input_o\);

-- Location: LCCOMB_X61_Y72_N30
\pr5b_o[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr5b_o[1]~reg0feeder_combout\ = \pr5b_i[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr5b_i[1]~input_o\,
	combout => \pr5b_o[1]~reg0feeder_combout\);

-- Location: FF_X61_Y72_N31
\pr5b_o[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr5b_o[1]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5b_o[1]~reg0_q\);

-- Location: IOIBUF_X58_Y73_N22
\pr5b_i[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5b_i(2),
	o => \pr5b_i[2]~input_o\);

-- Location: LCCOMB_X61_Y72_N16
\pr5b_o[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr5b_o[2]~reg0feeder_combout\ = \pr5b_i[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr5b_i[2]~input_o\,
	combout => \pr5b_o[2]~reg0feeder_combout\);

-- Location: FF_X61_Y72_N17
\pr5b_o[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr5b_o[2]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5b_o[2]~reg0_q\);

-- Location: IOIBUF_X69_Y73_N1
\pr5b_i[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5b_i(3),
	o => \pr5b_i[3]~input_o\);

-- Location: FF_X61_Y72_N19
\pr5b_o[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pr5b_i[3]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5b_o[3]~reg0_q\);

-- Location: IOIBUF_X72_Y73_N1
\pr5b_i[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5b_i(4),
	o => \pr5b_i[4]~input_o\);

-- Location: LCCOMB_X61_Y72_N20
\pr5b_o[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr5b_o[4]~reg0feeder_combout\ = \pr5b_i[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr5b_i[4]~input_o\,
	combout => \pr5b_o[4]~reg0feeder_combout\);

-- Location: FF_X61_Y72_N21
\pr5b_o[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr5b_o[4]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5b_o[4]~reg0_q\);

-- Location: IOIBUF_X65_Y73_N8
\pr5b_i[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5b_i(5),
	o => \pr5b_i[5]~input_o\);

-- Location: LCCOMB_X61_Y72_N22
\pr5b_o[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr5b_o[5]~reg0feeder_combout\ = \pr5b_i[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr5b_i[5]~input_o\,
	combout => \pr5b_o[5]~reg0feeder_combout\);

-- Location: FF_X61_Y72_N23
\pr5b_o[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr5b_o[5]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5b_o[5]~reg0_q\);

-- Location: IOIBUF_X115_Y57_N15
\pr5b_i[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5b_i(6),
	o => \pr5b_i[6]~input_o\);

-- Location: FF_X114_Y61_N9
\pr5b_o[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pr5b_i[6]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5b_o[6]~reg0_q\);

-- Location: IOIBUF_X115_Y67_N15
\pr5b_i[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5b_i(7),
	o => \pr5b_i[7]~input_o\);

-- Location: LCCOMB_X114_Y61_N18
\pr5b_o[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr5b_o[7]~reg0feeder_combout\ = \pr5b_i[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr5b_i[7]~input_o\,
	combout => \pr5b_o[7]~reg0feeder_combout\);

-- Location: FF_X114_Y61_N19
\pr5b_o[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr5b_o[7]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5b_o[7]~reg0_q\);

-- Location: IOIBUF_X115_Y61_N15
\pr5b_i[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5b_i(8),
	o => \pr5b_i[8]~input_o\);

-- Location: LCCOMB_X114_Y61_N20
\pr5b_o[8]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr5b_o[8]~reg0feeder_combout\ = \pr5b_i[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr5b_i[8]~input_o\,
	combout => \pr5b_o[8]~reg0feeder_combout\);

-- Location: FF_X114_Y61_N21
\pr5b_o[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr5b_o[8]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5b_o[8]~reg0_q\);

-- Location: IOIBUF_X115_Y58_N22
\pr5b_i[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5b_i(9),
	o => \pr5b_i[9]~input_o\);

-- Location: FF_X114_Y61_N7
\pr5b_o[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pr5b_i[9]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5b_o[9]~reg0_q\);

-- Location: IOIBUF_X115_Y68_N15
\pr5b_i[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5b_i(10),
	o => \pr5b_i[10]~input_o\);

-- Location: LCCOMB_X114_Y61_N16
\pr5b_o[10]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr5b_o[10]~reg0feeder_combout\ = \pr5b_i[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr5b_i[10]~input_o\,
	combout => \pr5b_o[10]~reg0feeder_combout\);

-- Location: FF_X114_Y61_N17
\pr5b_o[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr5b_o[10]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5b_o[10]~reg0_q\);

-- Location: IOIBUF_X115_Y68_N22
\pr5b_i[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5b_i(11),
	o => \pr5b_i[11]~input_o\);

-- Location: LCCOMB_X114_Y61_N2
\pr5b_o[11]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr5b_o[11]~reg0feeder_combout\ = \pr5b_i[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr5b_i[11]~input_o\,
	combout => \pr5b_o[11]~reg0feeder_combout\);

-- Location: FF_X114_Y61_N3
\pr5b_o[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr5b_o[11]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5b_o[11]~reg0_q\);

-- Location: IOIBUF_X115_Y56_N22
\pr5b_i[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5b_i(12),
	o => \pr5b_i[12]~input_o\);

-- Location: FF_X114_Y61_N29
\pr5b_o[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pr5b_i[12]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5b_o[12]~reg0_q\);

-- Location: IOIBUF_X115_Y57_N22
\pr5b_i[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5b_i(13),
	o => \pr5b_i[13]~input_o\);

-- Location: FF_X114_Y61_N23
\pr5b_o[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pr5b_i[13]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5b_o[13]~reg0_q\);

-- Location: IOIBUF_X115_Y64_N8
\pr5b_i[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5b_i(14),
	o => \pr5b_i[14]~input_o\);

-- Location: LCCOMB_X114_Y61_N0
\pr5b_o[14]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr5b_o[14]~reg0feeder_combout\ = \pr5b_i[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr5b_i[14]~input_o\,
	combout => \pr5b_o[14]~reg0feeder_combout\);

-- Location: FF_X114_Y61_N1
\pr5b_o[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr5b_o[14]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5b_o[14]~reg0_q\);

-- Location: IOIBUF_X115_Y60_N15
\pr5b_i[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5b_i(15),
	o => \pr5b_i[15]~input_o\);

-- Location: FF_X114_Y61_N11
\pr5b_o[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pr5b_i[15]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5b_o[15]~reg0_q\);

-- Location: IOIBUF_X115_Y58_N15
\pr5c_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5c_i,
	o => \pr5c_i~input_o\);

-- Location: LCCOMB_X114_Y61_N4
\pr5c_o~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr5c_o~reg0feeder_combout\ = \pr5c_i~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr5c_i~input_o\,
	combout => \pr5c_o~reg0feeder_combout\);

-- Location: FF_X114_Y61_N5
\pr5c_o~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr5c_o~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5c_o~reg0_q\);

-- Location: IOIBUF_X115_Y69_N22
\pr5z_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5z_i,
	o => \pr5z_i~input_o\);

-- Location: LCCOMB_X114_Y61_N30
\pr5z_o~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr5z_o~reg0feeder_combout\ = \pr5z_i~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr5z_i~input_o\,
	combout => \pr5z_o~reg0feeder_combout\);

-- Location: FF_X114_Y61_N31
\pr5z_o~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr5z_o~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5z_o~reg0_q\);

-- Location: IOIBUF_X115_Y59_N15
\pr5trfwr_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5trfwr_i,
	o => \pr5trfwr_i~input_o\);

-- Location: LCCOMB_X114_Y61_N24
\pr5trfwr_o~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr5trfwr_o~reg0feeder_combout\ = \pr5trfwr_i~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr5trfwr_i~input_o\,
	combout => \pr5trfwr_o~reg0feeder_combout\);

-- Location: FF_X114_Y61_N25
\pr5trfwr_o~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr5trfwr_o~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5trfwr_o~reg0_q\);

-- Location: IOIBUF_X115_Y65_N22
\pr5shift7out_i[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5shift7out_i(0),
	o => \pr5shift7out_i[0]~input_o\);

-- Location: LCCOMB_X114_Y61_N26
\pr5shift7out_o[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr5shift7out_o[0]~reg0feeder_combout\ = \pr5shift7out_i[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr5shift7out_i[0]~input_o\,
	combout => \pr5shift7out_o[0]~reg0feeder_combout\);

-- Location: FF_X114_Y61_N27
\pr5shift7out_o[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr5shift7out_o[0]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5shift7out_o[0]~reg0_q\);

-- Location: IOIBUF_X115_Y59_N22
\pr5shift7out_i[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5shift7out_i(1),
	o => \pr5shift7out_i[1]~input_o\);

-- Location: FF_X114_Y61_N13
\pr5shift7out_o[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pr5shift7out_i[1]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5shift7out_o[1]~reg0_q\);

-- Location: IOIBUF_X115_Y61_N22
\pr5shift7out_i[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5shift7out_i(2),
	o => \pr5shift7out_i[2]~input_o\);

-- Location: FF_X114_Y61_N15
\pr5shift7out_o[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pr5shift7out_i[2]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5shift7out_o[2]~reg0_q\);

-- Location: IOIBUF_X115_Y36_N8
\pr5shift7out_i[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5shift7out_i(3),
	o => \pr5shift7out_i[3]~input_o\);

-- Location: FF_X114_Y44_N17
\pr5shift7out_o[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pr5shift7out_i[3]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5shift7out_o[3]~reg0_q\);

-- Location: IOIBUF_X115_Y36_N1
\pr5shift7out_i[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5shift7out_i(4),
	o => \pr5shift7out_i[4]~input_o\);

-- Location: FF_X114_Y44_N3
\pr5shift7out_o[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pr5shift7out_i[4]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5shift7out_o[4]~reg0_q\);

-- Location: IOIBUF_X115_Y36_N15
\pr5shift7out_i[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5shift7out_i(5),
	o => \pr5shift7out_i[5]~input_o\);

-- Location: FF_X114_Y44_N21
\pr5shift7out_o[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pr5shift7out_i[5]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5shift7out_o[5]~reg0_q\);

-- Location: IOIBUF_X115_Y35_N22
\pr5shift7out_i[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5shift7out_i(6),
	o => \pr5shift7out_i[6]~input_o\);

-- Location: FF_X114_Y44_N31
\pr5shift7out_o[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pr5shift7out_i[6]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5shift7out_o[6]~reg0_q\);

-- Location: IOIBUF_X115_Y44_N8
\pr5shift7out_i[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5shift7out_i(7),
	o => \pr5shift7out_i[7]~input_o\);

-- Location: LCCOMB_X114_Y44_N8
\pr5shift7out_o[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr5shift7out_o[7]~reg0feeder_combout\ = \pr5shift7out_i[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr5shift7out_i[7]~input_o\,
	combout => \pr5shift7out_o[7]~reg0feeder_combout\);

-- Location: FF_X114_Y44_N9
\pr5shift7out_o[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr5shift7out_o[7]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5shift7out_o[7]~reg0_q\);

-- Location: IOIBUF_X115_Y50_N1
\pr5shift7out_i[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5shift7out_i(8),
	o => \pr5shift7out_i[8]~input_o\);

-- Location: LCCOMB_X114_Y44_N18
\pr5shift7out_o[8]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr5shift7out_o[8]~reg0feeder_combout\ = \pr5shift7out_i[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr5shift7out_i[8]~input_o\,
	combout => \pr5shift7out_o[8]~reg0feeder_combout\);

-- Location: FF_X114_Y44_N19
\pr5shift7out_o[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr5shift7out_o[8]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5shift7out_o[8]~reg0_q\);

-- Location: IOIBUF_X115_Y48_N8
\pr5shift7out_i[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5shift7out_i(9),
	o => \pr5shift7out_i[9]~input_o\);

-- Location: FF_X114_Y44_N13
\pr5shift7out_o[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pr5shift7out_i[9]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5shift7out_o[9]~reg0_q\);

-- Location: IOIBUF_X115_Y44_N1
\pr5shift7out_i[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5shift7out_i(10),
	o => \pr5shift7out_i[10]~input_o\);

-- Location: LCCOMB_X114_Y44_N6
\pr5shift7out_o[10]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr5shift7out_o[10]~reg0feeder_combout\ = \pr5shift7out_i[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr5shift7out_i[10]~input_o\,
	combout => \pr5shift7out_o[10]~reg0feeder_combout\);

-- Location: FF_X114_Y44_N7
\pr5shift7out_o[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr5shift7out_o[10]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5shift7out_o[10]~reg0_q\);

-- Location: IOIBUF_X115_Y45_N15
\pr5shift7out_i[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5shift7out_i(11),
	o => \pr5shift7out_i[11]~input_o\);

-- Location: FF_X114_Y44_N1
\pr5shift7out_o[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pr5shift7out_i[11]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5shift7out_o[11]~reg0_q\);

-- Location: IOIBUF_X115_Y51_N8
\pr5shift7out_i[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5shift7out_i(12),
	o => \pr5shift7out_i[12]~input_o\);

-- Location: LCCOMB_X114_Y44_N26
\pr5shift7out_o[12]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr5shift7out_o[12]~reg0feeder_combout\ = \pr5shift7out_i[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr5shift7out_i[12]~input_o\,
	combout => \pr5shift7out_o[12]~reg0feeder_combout\);

-- Location: FF_X114_Y44_N27
\pr5shift7out_o[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr5shift7out_o[12]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5shift7out_o[12]~reg0_q\);

-- Location: IOIBUF_X115_Y49_N8
\pr5shift7out_i[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5shift7out_i(13),
	o => \pr5shift7out_i[13]~input_o\);

-- Location: FF_X114_Y44_N29
\pr5shift7out_o[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pr5shift7out_i[13]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5shift7out_o[13]~reg0_q\);

-- Location: IOIBUF_X115_Y45_N22
\pr5shift7out_i[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5shift7out_i(14),
	o => \pr5shift7out_i[14]~input_o\);

-- Location: LCCOMB_X114_Y44_N22
\pr5shift7out_o[14]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr5shift7out_o[14]~reg0feeder_combout\ = \pr5shift7out_i[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr5shift7out_i[14]~input_o\,
	combout => \pr5shift7out_o[14]~reg0feeder_combout\);

-- Location: FF_X114_Y44_N23
\pr5shift7out_o[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr5shift7out_o[14]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5shift7out_o[14]~reg0_q\);

-- Location: IOIBUF_X115_Y50_N8
\pr5shift7out_i[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr5shift7out_i(15),
	o => \pr5shift7out_i[15]~input_o\);

-- Location: LCCOMB_X114_Y44_N24
\pr5shift7out_o[15]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pr5shift7out_o[15]~reg0feeder_combout\ = \pr5shift7out_i[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pr5shift7out_i[15]~input_o\,
	combout => \pr5shift7out_o[15]~reg0feeder_combout\);

-- Location: FF_X114_Y44_N25
\pr5shift7out_o[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pr5shift7out_o[15]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr5shift7out_o[15]~reg0_q\);

ww_pc_o(0) <= \pc_o[0]~output_o\;

ww_pc_o(1) <= \pc_o[1]~output_o\;

ww_pc_o(2) <= \pc_o[2]~output_o\;

ww_pc_o(3) <= \pc_o[3]~output_o\;

ww_pc_o(4) <= \pc_o[4]~output_o\;

ww_pc_o(5) <= \pc_o[5]~output_o\;

ww_pc_o(6) <= \pc_o[6]~output_o\;

ww_pc_o(7) <= \pc_o[7]~output_o\;

ww_pc_o(8) <= \pc_o[8]~output_o\;

ww_pc_o(9) <= \pc_o[9]~output_o\;

ww_pc_o(10) <= \pc_o[10]~output_o\;

ww_pc_o(11) <= \pc_o[11]~output_o\;

ww_pc_o(12) <= \pc_o[12]~output_o\;

ww_pc_o(13) <= \pc_o[13]~output_o\;

ww_pc_o(14) <= \pc_o[14]~output_o\;

ww_pc_o(15) <= \pc_o[15]~output_o\;

ww_ir_o(0) <= \ir_o[0]~output_o\;

ww_ir_o(1) <= \ir_o[1]~output_o\;

ww_ir_o(2) <= \ir_o[2]~output_o\;

ww_ir_o(3) <= \ir_o[3]~output_o\;

ww_ir_o(4) <= \ir_o[4]~output_o\;

ww_ir_o(5) <= \ir_o[5]~output_o\;

ww_ir_o(6) <= \ir_o[6]~output_o\;

ww_ir_o(7) <= \ir_o[7]~output_o\;

ww_ir_o(8) <= \ir_o[8]~output_o\;

ww_ir_o(9) <= \ir_o[9]~output_o\;

ww_ir_o(10) <= \ir_o[10]~output_o\;

ww_ir_o(11) <= \ir_o[11]~output_o\;

ww_ir_o(12) <= \ir_o[12]~output_o\;

ww_ir_o(13) <= \ir_o[13]~output_o\;

ww_ir_o(14) <= \ir_o[14]~output_o\;

ww_ir_o(15) <= \ir_o[15]~output_o\;

ww_invalid_o <= \invalid_o~output_o\;

ww_cw_o(0) <= \cw_o[0]~output_o\;

ww_cw_o(1) <= \cw_o[1]~output_o\;

ww_cw_o(2) <= \cw_o[2]~output_o\;

ww_cw_o(3) <= \cw_o[3]~output_o\;

ww_cw_o(4) <= \cw_o[4]~output_o\;

ww_cw_o(5) <= \cw_o[5]~output_o\;

ww_cw_o(6) <= \cw_o[6]~output_o\;

ww_cw_o(7) <= \cw_o[7]~output_o\;

ww_cw_o(8) <= \cw_o[8]~output_o\;

ww_cw_o(9) <= \cw_o[9]~output_o\;

ww_cw_o(10) <= \cw_o[10]~output_o\;

ww_cw_o(11) <= \cw_o[11]~output_o\;

ww_cw_o(12) <= \cw_o[12]~output_o\;

ww_cw_o(13) <= \cw_o[13]~output_o\;

ww_cw_o(14) <= \cw_o[14]~output_o\;

ww_cw_o(15) <= \cw_o[15]~output_o\;

ww_cw_o(16) <= \cw_o[16]~output_o\;

ww_cw_o(17) <= \cw_o[17]~output_o\;

ww_cw_o(18) <= \cw_o[18]~output_o\;

ww_cw_o(19) <= \cw_o[19]~output_o\;

ww_cw_o(20) <= \cw_o[20]~output_o\;

ww_cw_o(21) <= \cw_o[21]~output_o\;

ww_cw_o(22) <= \cw_o[22]~output_o\;

ww_cw_o(23) <= \cw_o[23]~output_o\;

ww_cw_o(24) <= \cw_o[24]~output_o\;

ww_pr5a_o(0) <= \pr5a_o[0]~output_o\;

ww_pr5a_o(1) <= \pr5a_o[1]~output_o\;

ww_pr5a_o(2) <= \pr5a_o[2]~output_o\;

ww_pr5a_o(3) <= \pr5a_o[3]~output_o\;

ww_pr5a_o(4) <= \pr5a_o[4]~output_o\;

ww_pr5a_o(5) <= \pr5a_o[5]~output_o\;

ww_pr5a_o(6) <= \pr5a_o[6]~output_o\;

ww_pr5a_o(7) <= \pr5a_o[7]~output_o\;

ww_pr5a_o(8) <= \pr5a_o[8]~output_o\;

ww_pr5a_o(9) <= \pr5a_o[9]~output_o\;

ww_pr5a_o(10) <= \pr5a_o[10]~output_o\;

ww_pr5a_o(11) <= \pr5a_o[11]~output_o\;

ww_pr5a_o(12) <= \pr5a_o[12]~output_o\;

ww_pr5a_o(13) <= \pr5a_o[13]~output_o\;

ww_pr5a_o(14) <= \pr5a_o[14]~output_o\;

ww_pr5a_o(15) <= \pr5a_o[15]~output_o\;

ww_pr5b_o(0) <= \pr5b_o[0]~output_o\;

ww_pr5b_o(1) <= \pr5b_o[1]~output_o\;

ww_pr5b_o(2) <= \pr5b_o[2]~output_o\;

ww_pr5b_o(3) <= \pr5b_o[3]~output_o\;

ww_pr5b_o(4) <= \pr5b_o[4]~output_o\;

ww_pr5b_o(5) <= \pr5b_o[5]~output_o\;

ww_pr5b_o(6) <= \pr5b_o[6]~output_o\;

ww_pr5b_o(7) <= \pr5b_o[7]~output_o\;

ww_pr5b_o(8) <= \pr5b_o[8]~output_o\;

ww_pr5b_o(9) <= \pr5b_o[9]~output_o\;

ww_pr5b_o(10) <= \pr5b_o[10]~output_o\;

ww_pr5b_o(11) <= \pr5b_o[11]~output_o\;

ww_pr5b_o(12) <= \pr5b_o[12]~output_o\;

ww_pr5b_o(13) <= \pr5b_o[13]~output_o\;

ww_pr5b_o(14) <= \pr5b_o[14]~output_o\;

ww_pr5b_o(15) <= \pr5b_o[15]~output_o\;

ww_pr5c_o <= \pr5c_o~output_o\;

ww_pr5z_o <= \pr5z_o~output_o\;

ww_pr5trfwr_o <= \pr5trfwr_o~output_o\;

ww_pr5shift7out_o(0) <= \pr5shift7out_o[0]~output_o\;

ww_pr5shift7out_o(1) <= \pr5shift7out_o[1]~output_o\;

ww_pr5shift7out_o(2) <= \pr5shift7out_o[2]~output_o\;

ww_pr5shift7out_o(3) <= \pr5shift7out_o[3]~output_o\;

ww_pr5shift7out_o(4) <= \pr5shift7out_o[4]~output_o\;

ww_pr5shift7out_o(5) <= \pr5shift7out_o[5]~output_o\;

ww_pr5shift7out_o(6) <= \pr5shift7out_o[6]~output_o\;

ww_pr5shift7out_o(7) <= \pr5shift7out_o[7]~output_o\;

ww_pr5shift7out_o(8) <= \pr5shift7out_o[8]~output_o\;

ww_pr5shift7out_o(9) <= \pr5shift7out_o[9]~output_o\;

ww_pr5shift7out_o(10) <= \pr5shift7out_o[10]~output_o\;

ww_pr5shift7out_o(11) <= \pr5shift7out_o[11]~output_o\;

ww_pr5shift7out_o(12) <= \pr5shift7out_o[12]~output_o\;

ww_pr5shift7out_o(13) <= \pr5shift7out_o[13]~output_o\;

ww_pr5shift7out_o(14) <= \pr5shift7out_o[14]~output_o\;

ww_pr5shift7out_o(15) <= \pr5shift7out_o[15]~output_o\;
END structure;


