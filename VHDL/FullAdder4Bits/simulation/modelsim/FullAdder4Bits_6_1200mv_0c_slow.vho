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

-- DATE "02/23/2024 09:15:12"

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

ENTITY 	FullAdder4Bits IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	Cin : IN std_logic;
	Sum : OUT std_logic_vector(4 DOWNTO 0)
	);
END FullAdder4Bits;

-- Design Ports Information
-- Sum[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[1]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[2]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[3]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[4]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FullAdder4Bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_Sum : std_logic_vector(4 DOWNTO 0);
SIGNAL \Sum[0]~output_o\ : std_logic;
SIGNAL \Sum[1]~output_o\ : std_logic;
SIGNAL \Sum[2]~output_o\ : std_logic;
SIGNAL \Sum[3]~output_o\ : std_logic;
SIGNAL \Sum[4]~output_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A0|HA2|Sum~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A0|Cout~0_combout\ : std_logic;
SIGNAL \A1|HA2|Sum~combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A1|Cout~0_combout\ : std_logic;
SIGNAL \A2|HA2|Sum~combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A2|Cout~0_combout\ : std_logic;
SIGNAL \A3|HA2|Sum~combout\ : std_logic;
SIGNAL \A3|Cout~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Cin <= Cin;
Sum <= ww_Sum;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y13_N9
\Sum[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A0|HA2|Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[0]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\Sum[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|HA2|Sum~combout\,
	devoe => ww_devoe,
	o => \Sum[1]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\Sum[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|HA2|Sum~combout\,
	devoe => ww_devoe,
	o => \Sum[2]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\Sum[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A3|HA2|Sum~combout\,
	devoe => ww_devoe,
	o => \Sum[3]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\Sum[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A3|Cout~0_combout\,
	devoe => ww_devoe,
	o => \Sum[4]~output_o\);

-- Location: IOIBUF_X0_Y11_N15
\Cin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X0_Y22_N1
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X1_Y13_N16
\A0|HA2|Sum~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|HA2|Sum~0_combout\ = \Cin~input_o\ $ (\B[0]~input_o\ $ (\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \A0|HA2|Sum~0_combout\);

-- Location: IOIBUF_X0_Y13_N15
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X0_Y9_N15
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X1_Y13_N10
\A0|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Cout~0_combout\ = (\Cin~input_o\ & ((\B[0]~input_o\) # (\A[0]~input_o\))) # (!\Cin~input_o\ & (\B[0]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \A0|Cout~0_combout\);

-- Location: LCCOMB_X1_Y13_N20
\A1|HA2|Sum\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|HA2|Sum~combout\ = \A[1]~input_o\ $ (\B[1]~input_o\ $ (\A0|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A0|Cout~0_combout\,
	combout => \A1|HA2|Sum~combout\);

-- Location: IOIBUF_X0_Y21_N8
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X0_Y9_N22
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X1_Y13_N6
\A1|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Cout~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # (\A0|Cout~0_combout\))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & \A0|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A0|Cout~0_combout\,
	combout => \A1|Cout~0_combout\);

-- Location: LCCOMB_X1_Y13_N0
\A2|HA2|Sum\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A2|HA2|Sum~combout\ = \A[2]~input_o\ $ (\B[2]~input_o\ $ (\A1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => \A1|Cout~0_combout\,
	combout => \A2|HA2|Sum~combout\);

-- Location: IOIBUF_X0_Y7_N8
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X0_Y20_N1
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X1_Y13_N2
\A2|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A2|Cout~0_combout\ = (\A[2]~input_o\ & ((\B[2]~input_o\) # (\A1|Cout~0_combout\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & \A1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => \A1|Cout~0_combout\,
	combout => \A2|Cout~0_combout\);

-- Location: LCCOMB_X1_Y13_N12
\A3|HA2|Sum\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|HA2|Sum~combout\ = \B[3]~input_o\ $ (\A[3]~input_o\ $ (\A2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A2|Cout~0_combout\,
	combout => \A3|HA2|Sum~combout\);

-- Location: LCCOMB_X1_Y13_N22
\A3|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Cout~0_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\) # (\A2|Cout~0_combout\))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & \A2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A2|Cout~0_combout\,
	combout => \A3|Cout~0_combout\);

ww_Sum(0) <= \Sum[0]~output_o\;

ww_Sum(1) <= \Sum[1]~output_o\;

ww_Sum(2) <= \Sum[2]~output_o\;

ww_Sum(3) <= \Sum[3]~output_o\;

ww_Sum(4) <= \Sum[4]~output_o\;
END structure;


