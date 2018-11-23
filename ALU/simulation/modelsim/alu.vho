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

-- DATE "11/23/2018 23:20:31"

-- 
-- Device: Altera EP4CE30F29C6 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	comp IS
    PORT (
	alu_a : IN std_logic_vector(15 DOWNTO 0);
	alu_b : IN std_logic_vector(15 DOWNTO 0);
	tz : OUT std_logic
	);
END comp;

-- Design Ports Information
-- tz	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a[0]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a[1]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b[1]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a[2]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a[3]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b[3]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b[2]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a[4]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a[5]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b[5]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b[4]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a[6]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a[7]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b[7]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b[6]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a[8]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a[9]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b[9]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b[8]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a[11]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b[11]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a[10]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b[10]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a[12]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a[13]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b[13]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b[12]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a[14]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_a[15]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b[15]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_b[14]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \alu_b[11]~input_o\ : std_logic;
SIGNAL \alu_b[10]~input_o\ : std_logic;
SIGNAL \alu_a[10]~input_o\ : std_logic;
SIGNAL \alu_a[11]~input_o\ : std_logic;
SIGNAL \alu_a[8]~input_o\ : std_logic;
SIGNAL \alu_b[8]~input_o\ : std_logic;
SIGNAL \alu_a[9]~input_o\ : std_logic;
SIGNAL \alu_b[9]~input_o\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \alu_b[13]~input_o\ : std_logic;
SIGNAL \alu_a[12]~input_o\ : std_logic;
SIGNAL \alu_b[12]~input_o\ : std_logic;
SIGNAL \alu_a[13]~input_o\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \alu_b[15]~input_o\ : std_logic;
SIGNAL \alu_a[14]~input_o\ : std_logic;
SIGNAL \alu_b[14]~input_o\ : std_logic;
SIGNAL \alu_a[15]~input_o\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \alu_b[1]~input_o\ : std_logic;
SIGNAL \alu_a[1]~input_o\ : std_logic;
SIGNAL \alu_b[0]~input_o\ : std_logic;
SIGNAL \alu_a[0]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \alu_a[6]~input_o\ : std_logic;
SIGNAL \alu_b[7]~input_o\ : std_logic;
SIGNAL \alu_a[7]~input_o\ : std_logic;
SIGNAL \alu_b[6]~input_o\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \alu_a[5]~input_o\ : std_logic;
SIGNAL \alu_b[5]~input_o\ : std_logic;
SIGNAL \alu_b[4]~input_o\ : std_logic;
SIGNAL \alu_a[4]~input_o\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \alu_b[3]~input_o\ : std_logic;
SIGNAL \alu_a[2]~input_o\ : std_logic;
SIGNAL \alu_b[2]~input_o\ : std_logic;
SIGNAL \alu_a[3]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL temp : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_alu_a <= alu_a;
ww_alu_b <= alu_b;
tz <= ww_tz;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y14_N23
\tz~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~9_combout\,
	devoe => ww_devoe,
	o => \tz~output_o\);

-- Location: IOIBUF_X0_Y6_N22
\alu_b[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_b(11),
	o => \alu_b[11]~input_o\);

-- Location: IOIBUF_X0_Y9_N1
\alu_b[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_b(10),
	o => \alu_b[10]~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\alu_a[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_a(10),
	o => \alu_a[10]~input_o\);

-- Location: LCCOMB_X1_Y9_N24
\temp[10]\ : cycloneive_lcell_comb
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

-- Location: IOIBUF_X0_Y6_N15
\alu_a[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_a(11),
	o => \alu_a[11]~input_o\);

-- Location: IOIBUF_X0_Y10_N1
\alu_a[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_a(8),
	o => \alu_a[8]~input_o\);

-- Location: IOIBUF_X0_Y13_N22
\alu_b[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_b(8),
	o => \alu_b[8]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\alu_a[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_a(9),
	o => \alu_a[9]~input_o\);

-- Location: IOIBUF_X0_Y14_N8
\alu_b[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_b(9),
	o => \alu_b[9]~input_o\);

-- Location: LCCOMB_X1_Y10_N12
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\alu_a[8]~input_o\ & (\alu_b[8]~input_o\ & (\alu_a[9]~input_o\ $ (!\alu_b[9]~input_o\)))) # (!\alu_a[8]~input_o\ & (!\alu_b[8]~input_o\ & (\alu_a[9]~input_o\ $ (!\alu_b[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[8]~input_o\,
	datab => \alu_b[8]~input_o\,
	datac => \alu_a[9]~input_o\,
	datad => \alu_b[9]~input_o\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X1_Y10_N6
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!temp(10) & (\Equal0~5_combout\ & (\alu_b[11]~input_o\ $ (!\alu_a[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[11]~input_o\,
	datab => temp(10),
	datac => \alu_a[11]~input_o\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~6_combout\);

-- Location: IOIBUF_X0_Y11_N1
\alu_b[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_b(13),
	o => \alu_b[13]~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\alu_a[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_a(12),
	o => \alu_a[12]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\alu_b[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_b(12),
	o => \alu_b[12]~input_o\);

-- Location: IOIBUF_X0_Y13_N15
\alu_a[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_a(13),
	o => \alu_a[13]~input_o\);

-- Location: LCCOMB_X1_Y11_N8
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\alu_b[13]~input_o\ & (\alu_a[13]~input_o\ & (\alu_a[12]~input_o\ $ (!\alu_b[12]~input_o\)))) # (!\alu_b[13]~input_o\ & (!\alu_a[13]~input_o\ & (\alu_a[12]~input_o\ $ (!\alu_b[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[13]~input_o\,
	datab => \alu_a[12]~input_o\,
	datac => \alu_b[12]~input_o\,
	datad => \alu_a[13]~input_o\,
	combout => \Equal0~7_combout\);

-- Location: IOIBUF_X0_Y9_N8
\alu_b[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_b(15),
	o => \alu_b[15]~input_o\);

-- Location: IOIBUF_X0_Y9_N15
\alu_a[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_a(14),
	o => \alu_a[14]~input_o\);

-- Location: IOIBUF_X0_Y9_N22
\alu_b[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_b(14),
	o => \alu_b[14]~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\alu_a[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_a(15),
	o => \alu_a[15]~input_o\);

-- Location: LCCOMB_X1_Y9_N2
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\alu_b[15]~input_o\ & (\alu_a[15]~input_o\ & (\alu_a[14]~input_o\ $ (!\alu_b[14]~input_o\)))) # (!\alu_b[15]~input_o\ & (!\alu_a[15]~input_o\ & (\alu_a[14]~input_o\ $ (!\alu_b[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[15]~input_o\,
	datab => \alu_a[14]~input_o\,
	datac => \alu_b[14]~input_o\,
	datad => \alu_a[15]~input_o\,
	combout => \Equal0~8_combout\);

-- Location: IOIBUF_X0_Y12_N1
\alu_b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_b(1),
	o => \alu_b[1]~input_o\);

-- Location: IOIBUF_X0_Y12_N8
\alu_a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_a(1),
	o => \alu_a[1]~input_o\);

-- Location: IOIBUF_X0_Y12_N15
\alu_b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_b(0),
	o => \alu_b[0]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\alu_a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_a(0),
	o => \alu_a[0]~input_o\);

-- Location: LCCOMB_X1_Y12_N16
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\alu_b[1]~input_o\ & (\alu_a[1]~input_o\ & (\alu_b[0]~input_o\ $ (!\alu_a[0]~input_o\)))) # (!\alu_b[1]~input_o\ & (!\alu_a[1]~input_o\ & (\alu_b[0]~input_o\ $ (!\alu_a[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[1]~input_o\,
	datab => \alu_a[1]~input_o\,
	datac => \alu_b[0]~input_o\,
	datad => \alu_a[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X0_Y7_N1
\alu_a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_a(6),
	o => \alu_a[6]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\alu_b[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_b(7),
	o => \alu_b[7]~input_o\);

-- Location: IOIBUF_X0_Y7_N15
\alu_a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_a(7),
	o => \alu_a[7]~input_o\);

-- Location: IOIBUF_X0_Y7_N22
\alu_b[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_b(6),
	o => \alu_b[6]~input_o\);

-- Location: LCCOMB_X1_Y7_N24
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\alu_a[6]~input_o\ & (\alu_b[6]~input_o\ & (\alu_b[7]~input_o\ $ (!\alu_a[7]~input_o\)))) # (!\alu_a[6]~input_o\ & (!\alu_b[6]~input_o\ & (\alu_b[7]~input_o\ $ (!\alu_a[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[6]~input_o\,
	datab => \alu_b[7]~input_o\,
	datac => \alu_a[7]~input_o\,
	datad => \alu_b[6]~input_o\,
	combout => \Equal0~3_combout\);

-- Location: IOIBUF_X0_Y8_N1
\alu_a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_a(5),
	o => \alu_a[5]~input_o\);

-- Location: IOIBUF_X0_Y8_N8
\alu_b[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_b(5),
	o => \alu_b[5]~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\alu_b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_b(4),
	o => \alu_b[4]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\alu_a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_a(4),
	o => \alu_a[4]~input_o\);

-- Location: LCCOMB_X1_Y8_N0
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\alu_a[5]~input_o\ & (\alu_b[5]~input_o\ & (\alu_b[4]~input_o\ $ (!\alu_a[4]~input_o\)))) # (!\alu_a[5]~input_o\ & (!\alu_b[5]~input_o\ & (\alu_b[4]~input_o\ $ (!\alu_a[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[5]~input_o\,
	datab => \alu_b[5]~input_o\,
	datac => \alu_b[4]~input_o\,
	datad => \alu_a[4]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: IOIBUF_X0_Y10_N8
\alu_b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_b(3),
	o => \alu_b[3]~input_o\);

-- Location: IOIBUF_X0_Y10_N15
\alu_a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_a(2),
	o => \alu_a[2]~input_o\);

-- Location: IOIBUF_X0_Y6_N1
\alu_b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_b(2),
	o => \alu_b[2]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\alu_a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_a(3),
	o => \alu_a[3]~input_o\);

-- Location: LCCOMB_X1_Y10_N24
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\alu_b[3]~input_o\ & (\alu_a[3]~input_o\ & (\alu_a[2]~input_o\ $ (!\alu_b[2]~input_o\)))) # (!\alu_b[3]~input_o\ & (!\alu_a[3]~input_o\ & (\alu_a[2]~input_o\ $ (!\alu_b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[3]~input_o\,
	datab => \alu_a[2]~input_o\,
	datac => \alu_b[2]~input_o\,
	datad => \alu_a[3]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X1_Y10_N10
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~3_combout\ & (\Equal0~2_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X1_Y10_N0
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~6_combout\ & (\Equal0~7_combout\ & (\Equal0~8_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~9_combout\);

ww_tz <= \tz~output_o\;
END structure;


