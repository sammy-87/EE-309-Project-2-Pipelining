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

-- DATE "11/24/2018 11:30:35"

-- 
-- Device: Altera EP4CE115F29I7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	zerodetector IS
    PORT (
	mem2d : IN std_logic_vector(15 DOWNTO 0);
	Z : OUT std_logic
	);
END zerodetector;

-- Design Ports Information
-- Z	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem2d[0]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem2d[1]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem2d[2]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem2d[3]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem2d[4]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem2d[5]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem2d[6]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem2d[7]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem2d[8]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem2d[9]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem2d[10]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem2d[11]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem2d[12]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem2d[13]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem2d[14]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem2d[15]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF zerodetector IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_mem2d : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Z : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \mem2d[15]~input_o\ : std_logic;
SIGNAL \mem2d[12]~input_o\ : std_logic;
SIGNAL \mem2d[14]~input_o\ : std_logic;
SIGNAL \mem2d[13]~input_o\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \mem2d[7]~input_o\ : std_logic;
SIGNAL \mem2d[6]~input_o\ : std_logic;
SIGNAL \mem2d[5]~input_o\ : std_logic;
SIGNAL \mem2d[4]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \mem2d[1]~input_o\ : std_logic;
SIGNAL \mem2d[3]~input_o\ : std_logic;
SIGNAL \mem2d[2]~input_o\ : std_logic;
SIGNAL \mem2d[0]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \mem2d[10]~input_o\ : std_logic;
SIGNAL \mem2d[11]~input_o\ : std_logic;
SIGNAL \mem2d[9]~input_o\ : std_logic;
SIGNAL \mem2d[8]~input_o\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;

BEGIN

ww_mem2d <= mem2d;
Z <= ww_Z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X3_Y0_N2
\Z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~4_combout\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOIBUF_X0_Y7_N8
\mem2d[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem2d(15),
	o => \mem2d[15]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\mem2d[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem2d(12),
	o => \mem2d[12]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\mem2d[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem2d(14),
	o => \mem2d[14]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\mem2d[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem2d(13),
	o => \mem2d[13]~input_o\);

-- Location: LCCOMB_X4_Y4_N10
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\mem2d[15]~input_o\ & (!\mem2d[12]~input_o\ & (!\mem2d[14]~input_o\ & !\mem2d[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem2d[15]~input_o\,
	datab => \mem2d[12]~input_o\,
	datac => \mem2d[14]~input_o\,
	datad => \mem2d[13]~input_o\,
	combout => \Equal0~3_combout\);

-- Location: IOIBUF_X0_Y4_N1
\mem2d[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem2d(7),
	o => \mem2d[7]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\mem2d[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem2d(6),
	o => \mem2d[6]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\mem2d[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem2d(5),
	o => \mem2d[5]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\mem2d[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem2d(4),
	o => \mem2d[4]~input_o\);

-- Location: LCCOMB_X4_Y4_N24
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\mem2d[7]~input_o\ & (!\mem2d[6]~input_o\ & (!\mem2d[5]~input_o\ & !\mem2d[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem2d[7]~input_o\,
	datab => \mem2d[6]~input_o\,
	datac => \mem2d[5]~input_o\,
	datad => \mem2d[4]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: IOIBUF_X0_Y4_N8
\mem2d[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem2d(1),
	o => \mem2d[1]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\mem2d[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem2d(3),
	o => \mem2d[3]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\mem2d[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem2d(2),
	o => \mem2d[2]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\mem2d[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem2d(0),
	o => \mem2d[0]~input_o\);

-- Location: LCCOMB_X1_Y4_N24
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\mem2d[1]~input_o\ & (!\mem2d[3]~input_o\ & (!\mem2d[2]~input_o\ & !\mem2d[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem2d[1]~input_o\,
	datab => \mem2d[3]~input_o\,
	datac => \mem2d[2]~input_o\,
	datad => \mem2d[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X5_Y0_N15
\mem2d[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem2d(10),
	o => \mem2d[10]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\mem2d[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem2d(11),
	o => \mem2d[11]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\mem2d[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem2d(9),
	o => \mem2d[9]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\mem2d[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem2d(8),
	o => \mem2d[8]~input_o\);

-- Location: LCCOMB_X7_Y1_N0
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\mem2d[10]~input_o\ & (!\mem2d[11]~input_o\ & (!\mem2d[9]~input_o\ & !\mem2d[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem2d[10]~input_o\,
	datab => \mem2d[11]~input_o\,
	datac => \mem2d[9]~input_o\,
	datad => \mem2d[8]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X4_Y4_N28
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~1_combout\ & (\Equal0~0_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

ww_Z <= \Z~output_o\;
END structure;


