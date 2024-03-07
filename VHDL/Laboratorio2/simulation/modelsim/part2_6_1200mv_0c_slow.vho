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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "02/20/2024 12:45:49"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	part2 IS
    PORT (
	SW : IN std_logic_vector(3 DOWNTO 0);
	HEX1 : OUT std_logic_vector(0 TO 6);
	HEX0 : OUT std_logic_vector(0 TO 6)
	);
END part2;

-- Design Ports Information
-- HEX1[6]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF part2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \z~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \Circuit_D|H[5]~0_combout\ : std_logic;
SIGNAL \Circuit_D|H[4]~1_combout\ : std_logic;
SIGNAL \Circuit_D|H[2]~2_combout\ : std_logic;
SIGNAL \Circuit_D|H[1]~3_combout\ : std_logic;
SIGNAL \Circuit_D|H[0]~4_combout\ : std_logic;
SIGNAL \Circuit_D|H\ : std_logic_vector(0 TO 6);
SIGNAL \Circuit_D|ALT_INV_H[1]~3_combout\ : std_logic;
SIGNAL \ALT_INV_z~0_combout\ : std_logic;

BEGIN

ww_SW <= SW;
HEX1 <= ww_HEX1;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Circuit_D|ALT_INV_H[1]~3_combout\ <= NOT \Circuit_D|H[1]~3_combout\;
\ALT_INV_z~0_combout\ <= NOT \z~0_combout\;

-- Location: IOOBUF_X35_Y29_N23
\HEX1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\HEX1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\HEX1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X7_Y29_N9
\HEX1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\HEX1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_z~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N30
\HEX1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_z~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X41_Y13_N16
\HEX1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X0_Y2_N16
\HEX0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Circuit_D|H\(6),
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\HEX0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Circuit_D|H[5]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\HEX0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Circuit_D|H[4]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\HEX0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Circuit_D|H\(3),
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\HEX0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Circuit_D|H[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\HEX0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Circuit_D|ALT_INV_H[1]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\HEX0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Circuit_D|H[0]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOIBUF_X0_Y10_N22
\SW[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\SW[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X0_Y4_N8
\SW[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X1_Y6_N24
\z~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \z~0_combout\ = (\SW[3]~input_o\ & ((\SW[1]~input_o\) # (\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	combout => \z~0_combout\);

-- Location: IOIBUF_X7_Y0_N29
\SW[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X1_Y6_N2
\Circuit_D|H[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Circuit_D|H\(6) = (\SW[2]~input_o\ & (\SW[1]~input_o\ & (!\SW[3]~input_o\ & \SW[0]~input_o\))) # (!\SW[2]~input_o\ & (\SW[1]~input_o\ $ ((!\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Circuit_D|H\(6));

-- Location: LCCOMB_X1_Y6_N4
\Circuit_D|H[5]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Circuit_D|H[5]~0_combout\ = (\SW[1]~input_o\ & ((\SW[2]~input_o\ & (!\SW[3]~input_o\ & \SW[0]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[0]~input_o\) # (!\SW[3]~input_o\))))) # (!\SW[1]~input_o\ & ((\SW[2]~input_o\ & (\SW[3]~input_o\)) # (!\SW[2]~input_o\ & 
-- (!\SW[3]~input_o\ & \SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Circuit_D|H[5]~0_combout\);

-- Location: LCCOMB_X1_Y6_N14
\Circuit_D|H[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Circuit_D|H[4]~1_combout\ = (\SW[0]~input_o\) # ((\SW[2]~input_o\ & (\SW[1]~input_o\ $ (!\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Circuit_D|H[4]~1_combout\);

-- Location: LCCOMB_X1_Y6_N16
\Circuit_D|H[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Circuit_D|H\(3) = (\SW[0]~input_o\ & (\SW[2]~input_o\ $ (((\SW[3]~input_o\) # (!\SW[1]~input_o\))))) # (!\SW[0]~input_o\ & (\SW[2]~input_o\ & (\SW[1]~input_o\ $ (!\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Circuit_D|H\(3));

-- Location: LCCOMB_X1_Y6_N10
\Circuit_D|H[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Circuit_D|H[2]~2_combout\ = (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (!\SW[2]~input_o\ & !\SW[3]~input_o\)) # (!\SW[1]~input_o\ & (\SW[2]~input_o\ & \SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Circuit_D|H[2]~2_combout\);

-- Location: LCCOMB_X1_Y6_N12
\Circuit_D|H[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Circuit_D|H[1]~3_combout\ = ((\SW[1]~input_o\ & (\SW[3]~input_o\ $ (\SW[0]~input_o\))) # (!\SW[1]~input_o\ & ((\SW[3]~input_o\) # (!\SW[0]~input_o\)))) # (!\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Circuit_D|H[1]~3_combout\);

-- Location: LCCOMB_X1_Y6_N30
\Circuit_D|H[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Circuit_D|H[0]~4_combout\ = (\SW[2]~input_o\ & (!\SW[0]~input_o\ & ((\SW[1]~input_o\) # (!\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & (\SW[0]~input_o\ & (\SW[1]~input_o\ $ (!\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Circuit_D|H[0]~4_combout\);

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;
END structure;


