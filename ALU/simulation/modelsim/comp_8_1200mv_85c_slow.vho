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

-- DATE "11/23/2018 23:27:10"

-- 
-- Device: Altera EP4CGX150DF31C8 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	comp IS
    PORT (
	alu_a : IN std_logic_vector(15 DOWNTO 0);
	alu_b : IN std_logic_vector(15 DOWNTO 0);
	tz : OUT std_logic
	);
END comp;

-- Design Ports Information
-- tz	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a[0]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b[0]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b[1]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b[2]	=>  Location: PIN_AJ30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a[3]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b[3]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a[4]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b[4]	=>  Location: PIN_AA29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a[5]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b[5]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a[6]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b[6]	=>  Location: PIN_AB29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a[7]	=>  Location: PIN_Y30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b[7]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a[8]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b[8]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a[9]	=>  Location: PIN_Y28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b[9]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a[10]	=>  Location: PIN_AA27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b[10]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a[11]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b[11]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a[12]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b[12]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a[13]	=>  Location: PIN_AE30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b[13]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a[14]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b[14]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a[15]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b[15]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF comp IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_alu_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_alu_b : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_tz : std_logic;
SIGNAL \tz~output_o\ : std_logic;
SIGNAL \alu_a[13]~input_o\ : std_logic;
SIGNAL \alu_b[12]~input_o\ : std_logic;
SIGNAL \alu_b[13]~input_o\ : std_logic;
SIGNAL \alu_a[12]~input_o\ : std_logic;
SIGNAL \WideOr0~7_combout\ : std_logic;
SIGNAL \alu_b[11]~input_o\ : std_logic;
SIGNAL \alu_b[10]~input_o\ : std_logic;
SIGNAL \alu_a[10]~input_o\ : std_logic;
SIGNAL \alu_b[8]~input_o\ : std_logic;
SIGNAL \alu_a[8]~input_o\ : std_logic;
SIGNAL \alu_b[9]~input_o\ : std_logic;
SIGNAL \alu_a[9]~input_o\ : std_logic;
SIGNAL \WideOr0~5_combout\ : std_logic;
SIGNAL \alu_a[11]~input_o\ : std_logic;
SIGNAL \WideOr0~6_combout\ : std_logic;
SIGNAL \alu_a[7]~input_o\ : std_logic;
SIGNAL \alu_b[6]~input_o\ : std_logic;
SIGNAL \alu_a[6]~input_o\ : std_logic;
SIGNAL \alu_b[7]~input_o\ : std_logic;
SIGNAL \WideOr0~3_combout\ : std_logic;
SIGNAL \alu_b[0]~input_o\ : std_logic;
SIGNAL \alu_a[1]~input_o\ : std_logic;
SIGNAL \alu_a[0]~input_o\ : std_logic;
SIGNAL \alu_b[1]~input_o\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \alu_a[5]~input_o\ : std_logic;
SIGNAL \alu_b[5]~input_o\ : std_logic;
SIGNAL \alu_a[4]~input_o\ : std_logic;
SIGNAL \alu_b[4]~input_o\ : std_logic;
SIGNAL \WideOr0~2_combout\ : std_logic;
SIGNAL \alu_b[2]~input_o\ : std_logic;
SIGNAL \alu_b[3]~input_o\ : std_logic;
SIGNAL \alu_a[3]~input_o\ : std_logic;
SIGNAL \alu_a[2]~input_o\ : std_logic;
SIGNAL \WideOr0~1_combout\ : std_logic;
SIGNAL \WideOr0~4_combout\ : std_logic;
SIGNAL \alu_a[14]~input_o\ : std_logic;
SIGNAL \alu_a[15]~input_o\ : std_logic;
SIGNAL \alu_b[14]~input_o\ : std_logic;
SIGNAL \alu_b[15]~input_o\ : std_logic;
SIGNAL \WideOr0~8_combout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL temp : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_WideOr0~combout\ : std_logic;

BEGIN

ww_alu_a <= alu_a;
ww_alu_b <= alu_b;
tz <= ww_tz;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_WideOr0~combout\ <= NOT \WideOr0~combout\;

-- Location: IOOBUF_X117_Y29_N9
\tz~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr0~combout\,
	devoe => ww_devoe,
	o => \tz~output_o\);

-- Location: IOIBUF_X117_Y19_N8
\alu_a[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_a(13),
	o => \alu_a[13]~input_o\);

-- Location: IOIBUF_X117_Y15_N8
\alu_b[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_b(12),
	o => \alu_b[12]~input_o\);

-- Location: IOIBUF_X117_Y22_N8
\alu_b[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_b(13),
	o => \alu_b[13]~input_o\);

-- Location: IOIBUF_X117_Y19_N1
\alu_a[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_a(12),
	o => \alu_a[12]~input_o\);

-- Location: LCCOMB_X116_Y19_N10
\WideOr0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr0~7_combout\ = (\alu_a[13]~input_o\ & ((\alu_b[12]~input_o\ $ (\alu_a[12]~input_o\)) # (!\alu_b[13]~input_o\))) # (!\alu_a[13]~input_o\ & ((\alu_b[13]~input_o\) # (\alu_b[12]~input_o\ $ (\alu_a[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[13]~input_o\,
	datab => \alu_b[12]~input_o\,
	datac => \alu_b[13]~input_o\,
	datad => \alu_a[12]~input_o\,
	combout => \WideOr0~7_combout\);

-- Location: IOIBUF_X117_Y22_N1
\alu_b[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_b(11),
	o => \alu_b[11]~input_o\);

-- Location: IOIBUF_X117_Y14_N1
\alu_b[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_b(10),
	o => \alu_b[10]~input_o\);

-- Location: IOIBUF_X117_Y14_N8
\alu_a[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_a(10),
	o => \alu_a[10]~input_o\);

-- Location: LCCOMB_X116_Y14_N0
\temp[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- temp(10) = \alu_b[10]~input_o\ $ (\alu_a[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[10]~input_o\,
	datad => \alu_a[10]~input_o\,
	combout => temp(10));

-- Location: IOIBUF_X117_Y23_N8
\alu_b[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_b(8),
	o => \alu_b[8]~input_o\);

-- Location: IOIBUF_X117_Y23_N1
\alu_a[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_a(8),
	o => \alu_a[8]~input_o\);

-- Location: IOIBUF_X117_Y26_N1
\alu_b[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_b(9),
	o => \alu_b[9]~input_o\);

-- Location: IOIBUF_X117_Y28_N1
\alu_a[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_a(9),
	o => \alu_a[9]~input_o\);

-- Location: LCCOMB_X116_Y23_N8
\WideOr0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr0~5_combout\ = (\alu_b[8]~input_o\ & ((\alu_b[9]~input_o\ $ (\alu_a[9]~input_o\)) # (!\alu_a[8]~input_o\))) # (!\alu_b[8]~input_o\ & ((\alu_a[8]~input_o\) # (\alu_b[9]~input_o\ $ (\alu_a[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[8]~input_o\,
	datab => \alu_a[8]~input_o\,
	datac => \alu_b[9]~input_o\,
	datad => \alu_a[9]~input_o\,
	combout => \WideOr0~5_combout\);

-- Location: IOIBUF_X117_Y26_N8
\alu_a[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_a(11),
	o => \alu_a[11]~input_o\);

-- Location: LCCOMB_X116_Y19_N24
\WideOr0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr0~6_combout\ = (temp(10)) # ((\WideOr0~5_combout\) # (\alu_b[11]~input_o\ $ (\alu_a[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[11]~input_o\,
	datab => temp(10),
	datac => \WideOr0~5_combout\,
	datad => \alu_a[11]~input_o\,
	combout => \WideOr0~6_combout\);

-- Location: IOIBUF_X117_Y31_N1
\alu_a[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_a(7),
	o => \alu_a[7]~input_o\);

-- Location: IOIBUF_X117_Y31_N8
\alu_b[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_b(6),
	o => \alu_b[6]~input_o\);

-- Location: IOIBUF_X117_Y32_N8
\alu_a[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_a(6),
	o => \alu_a[6]~input_o\);

-- Location: IOIBUF_X117_Y32_N1
\alu_b[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_b(7),
	o => \alu_b[7]~input_o\);

-- Location: LCCOMB_X116_Y31_N24
\WideOr0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr0~3_combout\ = (\alu_a[7]~input_o\ & ((\alu_b[6]~input_o\ $ (\alu_a[6]~input_o\)) # (!\alu_b[7]~input_o\))) # (!\alu_a[7]~input_o\ & ((\alu_b[7]~input_o\) # (\alu_b[6]~input_o\ $ (\alu_a[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[7]~input_o\,
	datab => \alu_b[6]~input_o\,
	datac => \alu_a[6]~input_o\,
	datad => \alu_b[7]~input_o\,
	combout => \WideOr0~3_combout\);

-- Location: IOIBUF_X117_Y24_N1
\alu_b[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_b(0),
	o => \alu_b[0]~input_o\);

-- Location: IOIBUF_X117_Y13_N8
\alu_a[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_a(1),
	o => \alu_a[1]~input_o\);

-- Location: IOIBUF_X117_Y13_N1
\alu_a[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_a(0),
	o => \alu_a[0]~input_o\);

-- Location: IOIBUF_X117_Y24_N8
\alu_b[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_b(1),
	o => \alu_b[1]~input_o\);

-- Location: LCCOMB_X116_Y20_N24
\WideOr0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\alu_b[0]~input_o\ & ((\alu_a[1]~input_o\ $ (\alu_b[1]~input_o\)) # (!\alu_a[0]~input_o\))) # (!\alu_b[0]~input_o\ & ((\alu_a[0]~input_o\) # (\alu_a[1]~input_o\ $ (\alu_b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[0]~input_o\,
	datab => \alu_a[1]~input_o\,
	datac => \alu_a[0]~input_o\,
	datad => \alu_b[1]~input_o\,
	combout => \WideOr0~0_combout\);

-- Location: IOIBUF_X117_Y27_N1
\alu_a[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_a(5),
	o => \alu_a[5]~input_o\);

-- Location: IOIBUF_X117_Y27_N8
\alu_b[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_b(5),
	o => \alu_b[5]~input_o\);

-- Location: IOIBUF_X117_Y28_N8
\alu_a[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_a(4),
	o => \alu_a[4]~input_o\);

-- Location: IOIBUF_X117_Y29_N1
\alu_b[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_b(4),
	o => \alu_b[4]~input_o\);

-- Location: LCCOMB_X116_Y27_N8
\WideOr0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr0~2_combout\ = (\alu_a[5]~input_o\ & ((\alu_a[4]~input_o\ $ (\alu_b[4]~input_o\)) # (!\alu_b[5]~input_o\))) # (!\alu_a[5]~input_o\ & ((\alu_b[5]~input_o\) # (\alu_a[4]~input_o\ $ (\alu_b[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[5]~input_o\,
	datab => \alu_b[5]~input_o\,
	datac => \alu_a[4]~input_o\,
	datad => \alu_b[4]~input_o\,
	combout => \WideOr0~2_combout\);

-- Location: IOIBUF_X117_Y11_N8
\alu_b[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_b(2),
	o => \alu_b[2]~input_o\);

-- Location: IOIBUF_X117_Y18_N1
\alu_b[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_b(3),
	o => \alu_b[3]~input_o\);

-- Location: IOIBUF_X117_Y15_N1
\alu_a[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_a(3),
	o => \alu_a[3]~input_o\);

-- Location: IOIBUF_X117_Y18_N8
\alu_a[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_a(2),
	o => \alu_a[2]~input_o\);

-- Location: LCCOMB_X116_Y18_N0
\WideOr0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr0~1_combout\ = (\alu_b[2]~input_o\ & ((\alu_b[3]~input_o\ $ (\alu_a[3]~input_o\)) # (!\alu_a[2]~input_o\))) # (!\alu_b[2]~input_o\ & ((\alu_a[2]~input_o\) # (\alu_b[3]~input_o\ $ (\alu_a[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[2]~input_o\,
	datab => \alu_b[3]~input_o\,
	datac => \alu_a[3]~input_o\,
	datad => \alu_a[2]~input_o\,
	combout => \WideOr0~1_combout\);

-- Location: LCCOMB_X116_Y20_N18
\WideOr0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr0~4_combout\ = (\WideOr0~3_combout\) # ((\WideOr0~0_combout\) # ((\WideOr0~2_combout\) # (\WideOr0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~3_combout\,
	datab => \WideOr0~0_combout\,
	datac => \WideOr0~2_combout\,
	datad => \WideOr0~1_combout\,
	combout => \WideOr0~4_combout\);

-- Location: IOIBUF_X117_Y17_N8
\alu_a[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_a(14),
	o => \alu_a[14]~input_o\);

-- Location: IOIBUF_X117_Y17_N1
\alu_a[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_a(15),
	o => \alu_a[15]~input_o\);

-- Location: IOIBUF_X117_Y21_N1
\alu_b[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_b(14),
	o => \alu_b[14]~input_o\);

-- Location: IOIBUF_X117_Y21_N8
\alu_b[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_b(15),
	o => \alu_b[15]~input_o\);

-- Location: LCCOMB_X116_Y17_N16
\WideOr0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr0~8_combout\ = (\alu_a[14]~input_o\ & ((\alu_a[15]~input_o\ $ (\alu_b[15]~input_o\)) # (!\alu_b[14]~input_o\))) # (!\alu_a[14]~input_o\ & ((\alu_b[14]~input_o\) # (\alu_a[15]~input_o\ $ (\alu_b[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[14]~input_o\,
	datab => \alu_a[15]~input_o\,
	datac => \alu_b[14]~input_o\,
	datad => \alu_b[15]~input_o\,
	combout => \WideOr0~8_combout\);

-- Location: LCCOMB_X116_Y19_N4
WideOr0 : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = (\WideOr0~7_combout\) # ((\WideOr0~6_combout\) # ((\WideOr0~4_combout\) # (\WideOr0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~7_combout\,
	datab => \WideOr0~6_combout\,
	datac => \WideOr0~4_combout\,
	datad => \WideOr0~8_combout\,
	combout => \WideOr0~combout\);

ww_tz <= \tz~output_o\;
END structure;


