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

-- DATE "05/31/2024 12:07:54"

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

ENTITY 	ALU_TEST IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	ALU_Sel : IN std_logic_vector(1 DOWNTO 0);
	segments_0 : BUFFER std_logic_vector(6 DOWNTO 0);
	segments_1 : BUFFER std_logic_vector(6 DOWNTO 0);
	NZVC : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END ALU_TEST;

-- Design Ports Information
-- segments_0[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments_0[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments_0[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments_0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments_0[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments_0[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments_0[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments_1[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments_1[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments_1[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments_1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments_1[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments_1[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments_1[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[0]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[1]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[2]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[3]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[0]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[1]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU_TEST IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ALU_Sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_segments_0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segments_1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_NZVC : std_logic_vector(3 DOWNTO 0);
SIGNAL \segments_0[0]~output_o\ : std_logic;
SIGNAL \segments_0[1]~output_o\ : std_logic;
SIGNAL \segments_0[2]~output_o\ : std_logic;
SIGNAL \segments_0[3]~output_o\ : std_logic;
SIGNAL \segments_0[4]~output_o\ : std_logic;
SIGNAL \segments_0[5]~output_o\ : std_logic;
SIGNAL \segments_0[6]~output_o\ : std_logic;
SIGNAL \segments_1[0]~output_o\ : std_logic;
SIGNAL \segments_1[1]~output_o\ : std_logic;
SIGNAL \segments_1[2]~output_o\ : std_logic;
SIGNAL \segments_1[3]~output_o\ : std_logic;
SIGNAL \segments_1[4]~output_o\ : std_logic;
SIGNAL \segments_1[5]~output_o\ : std_logic;
SIGNAL \segments_1[6]~output_o\ : std_logic;
SIGNAL \NZVC[0]~output_o\ : std_logic;
SIGNAL \NZVC[1]~output_o\ : std_logic;
SIGNAL \NZVC[2]~output_o\ : std_logic;
SIGNAL \NZVC[3]~output_o\ : std_logic;
SIGNAL \ALU_Sel[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \ALU_inst|Add0~0_combout\ : std_logic;
SIGNAL \ALU_inst|Add1~0_combout\ : std_logic;
SIGNAL \ALU_inst|Result[0]~0_combout\ : std_logic;
SIGNAL \ALU_Sel[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \ALU_inst|Add1~1\ : std_logic;
SIGNAL \ALU_inst|Add1~2_combout\ : std_logic;
SIGNAL \ALU_inst|Add0~1\ : std_logic;
SIGNAL \ALU_inst|Add0~2_combout\ : std_logic;
SIGNAL \ALU_inst|Result[1]~1_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \ALU_inst|Add1~3\ : std_logic;
SIGNAL \ALU_inst|Add1~5\ : std_logic;
SIGNAL \ALU_inst|Add1~6_combout\ : std_logic;
SIGNAL \ALU_inst|Add0~3\ : std_logic;
SIGNAL \ALU_inst|Add0~5\ : std_logic;
SIGNAL \ALU_inst|Add0~6_combout\ : std_logic;
SIGNAL \ALU_inst|Result[3]~3_combout\ : std_logic;
SIGNAL \ALU_inst|Add1~4_combout\ : std_logic;
SIGNAL \ALU_inst|Add0~4_combout\ : std_logic;
SIGNAL \ALU_inst|Result[2]~2_combout\ : std_logic;
SIGNAL \display_lower|Mux6~0_combout\ : std_logic;
SIGNAL \display_lower|Mux5~0_combout\ : std_logic;
SIGNAL \display_lower|Mux4~0_combout\ : std_logic;
SIGNAL \display_lower|Mux3~0_combout\ : std_logic;
SIGNAL \display_lower|Mux2~0_combout\ : std_logic;
SIGNAL \display_lower|Mux1~0_combout\ : std_logic;
SIGNAL \display_lower|Mux0~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \ALU_inst|Add1~7\ : std_logic;
SIGNAL \ALU_inst|Add1~9\ : std_logic;
SIGNAL \ALU_inst|Add1~11\ : std_logic;
SIGNAL \ALU_inst|Add1~12_combout\ : std_logic;
SIGNAL \ALU_inst|Add0~7\ : std_logic;
SIGNAL \ALU_inst|Add0~9\ : std_logic;
SIGNAL \ALU_inst|Add0~11\ : std_logic;
SIGNAL \ALU_inst|Add0~12_combout\ : std_logic;
SIGNAL \ALU_inst|Result[6]~6_combout\ : std_logic;
SIGNAL \ALU_inst|Add1~10_combout\ : std_logic;
SIGNAL \ALU_inst|Add0~10_combout\ : std_logic;
SIGNAL \ALU_inst|Result[5]~5_combout\ : std_logic;
SIGNAL \ALU_inst|Add0~8_combout\ : std_logic;
SIGNAL \ALU_inst|Add1~8_combout\ : std_logic;
SIGNAL \ALU_inst|Result[4]~4_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \ALU_inst|Add1~13\ : std_logic;
SIGNAL \ALU_inst|Add1~14_combout\ : std_logic;
SIGNAL \ALU_inst|Add0~13\ : std_logic;
SIGNAL \ALU_inst|Add0~14_combout\ : std_logic;
SIGNAL \ALU_inst|Result[7]~7_combout\ : std_logic;
SIGNAL \display_upper|Mux6~0_combout\ : std_logic;
SIGNAL \display_upper|Mux5~0_combout\ : std_logic;
SIGNAL \display_upper|Mux4~0_combout\ : std_logic;
SIGNAL \display_upper|Mux3~0_combout\ : std_logic;
SIGNAL \display_upper|Mux2~0_combout\ : std_logic;
SIGNAL \display_upper|Mux1~0_combout\ : std_logic;
SIGNAL \display_upper|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_inst|Add0~15\ : std_logic;
SIGNAL \ALU_inst|Add0~16_combout\ : std_logic;
SIGNAL \ALU_inst|LessThan0~1_cout\ : std_logic;
SIGNAL \ALU_inst|LessThan0~3_cout\ : std_logic;
SIGNAL \ALU_inst|LessThan0~5_cout\ : std_logic;
SIGNAL \ALU_inst|LessThan0~7_cout\ : std_logic;
SIGNAL \ALU_inst|LessThan0~9_cout\ : std_logic;
SIGNAL \ALU_inst|LessThan0~11_cout\ : std_logic;
SIGNAL \ALU_inst|LessThan0~13_cout\ : std_logic;
SIGNAL \ALU_inst|LessThan0~14_combout\ : std_logic;
SIGNAL \ALU_inst|NZVC[0]~0_combout\ : std_logic;
SIGNAL \ALU_inst|NZVC[1]~1_combout\ : std_logic;
SIGNAL \ALU_inst|NZVC[1]~2_combout\ : std_logic;
SIGNAL \ALU_inst|NZVC[2]~7_combout\ : std_logic;
SIGNAL \ALU_inst|NZVC[2]~6_combout\ : std_logic;
SIGNAL \ALU_inst|NZVC[2]~3_combout\ : std_logic;
SIGNAL \ALU_inst|NZVC[2]~4_combout\ : std_logic;
SIGNAL \ALU_inst|NZVC[2]~5_combout\ : std_logic;
SIGNAL \ALU_inst|NZVC[2]~8_combout\ : std_logic;
SIGNAL \ALU_inst|Result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALU_inst|NZVC\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \display_upper|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \display_lower|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_ALU_Sel <= ALU_Sel;
segments_0 <= ww_segments_0;
segments_1 <= ww_segments_1;
NZVC <= ww_NZVC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\display_upper|ALT_INV_Mux6~0_combout\ <= NOT \display_upper|Mux6~0_combout\;
\display_lower|ALT_INV_Mux6~0_combout\ <= NOT \display_lower|Mux6~0_combout\;

-- Location: IOOBUF_X26_Y29_N16
\segments_0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_lower|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \segments_0[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\segments_0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_lower|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \segments_0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\segments_0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_lower|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \segments_0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\segments_0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_lower|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \segments_0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\segments_0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_lower|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \segments_0[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\segments_0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_lower|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \segments_0[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\segments_0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_lower|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \segments_0[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\segments_1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_upper|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \segments_1[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\segments_1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_upper|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \segments_1[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\segments_1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_upper|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \segments_1[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\segments_1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_upper|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \segments_1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\segments_1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_upper|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \segments_1[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\segments_1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_upper|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \segments_1[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\segments_1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_upper|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \segments_1[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\NZVC[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_inst|NZVC\(0),
	devoe => ww_devoe,
	o => \NZVC[0]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\NZVC[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_inst|NZVC\(1),
	devoe => ww_devoe,
	o => \NZVC[1]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\NZVC[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_inst|NZVC\(2),
	devoe => ww_devoe,
	o => \NZVC[2]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\NZVC[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_inst|Result\(7),
	devoe => ww_devoe,
	o => \NZVC[3]~output_o\);

-- Location: IOIBUF_X0_Y26_N1
\ALU_Sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(0),
	o => \ALU_Sel[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X11_Y21_N4
\ALU_inst|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Add0~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & VCC))
-- \ALU_inst|Add0~1\ = CARRY((\B[0]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \ALU_inst|Add0~0_combout\,
	cout => \ALU_inst|Add0~1\);

-- Location: LCCOMB_X11_Y17_N0
\ALU_inst|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Add1~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & ((\A[0]~input_o\) # (GND)))
-- \ALU_inst|Add1~1\ = CARRY((\A[0]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \ALU_inst|Add1~0_combout\,
	cout => \ALU_inst|Add1~1\);

-- Location: LCCOMB_X26_Y24_N14
\ALU_inst|Result[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result[0]~0_combout\ = (\ALU_Sel[0]~input_o\ & ((\ALU_inst|Add1~0_combout\))) # (!\ALU_Sel[0]~input_o\ & (\ALU_inst|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Sel[0]~input_o\,
	datac => \ALU_inst|Add0~0_combout\,
	datad => \ALU_inst|Add1~0_combout\,
	combout => \ALU_inst|Result[0]~0_combout\);

-- Location: IOIBUF_X0_Y25_N1
\ALU_Sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(1),
	o => \ALU_Sel[1]~input_o\);

-- Location: LCCOMB_X26_Y24_N16
\ALU_inst|Result[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result\(0) = (\ALU_Sel[1]~input_o\ & (\ALU_inst|Result\(0))) # (!\ALU_Sel[1]~input_o\ & ((\ALU_inst|Result[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_inst|Result\(0),
	datac => \ALU_inst|Result[0]~0_combout\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \ALU_inst|Result\(0));

-- Location: IOIBUF_X9_Y0_N8
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X11_Y17_N2
\ALU_inst|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Add1~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ & (!\ALU_inst|Add1~1\)) # (!\A[1]~input_o\ & ((\ALU_inst|Add1~1\) # (GND))))) # (!\B[1]~input_o\ & ((\A[1]~input_o\ & (\ALU_inst|Add1~1\ & VCC)) # (!\A[1]~input_o\ & (!\ALU_inst|Add1~1\))))
-- \ALU_inst|Add1~3\ = CARRY((\B[1]~input_o\ & ((!\ALU_inst|Add1~1\) # (!\A[1]~input_o\))) # (!\B[1]~input_o\ & (!\A[1]~input_o\ & !\ALU_inst|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \ALU_inst|Add1~1\,
	combout => \ALU_inst|Add1~2_combout\,
	cout => \ALU_inst|Add1~3\);

-- Location: LCCOMB_X11_Y21_N6
\ALU_inst|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Add0~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ & (\ALU_inst|Add0~1\ & VCC)) # (!\A[1]~input_o\ & (!\ALU_inst|Add0~1\)))) # (!\B[1]~input_o\ & ((\A[1]~input_o\ & (!\ALU_inst|Add0~1\)) # (!\A[1]~input_o\ & ((\ALU_inst|Add0~1\) # (GND)))))
-- \ALU_inst|Add0~3\ = CARRY((\B[1]~input_o\ & (!\A[1]~input_o\ & !\ALU_inst|Add0~1\)) # (!\B[1]~input_o\ & ((!\ALU_inst|Add0~1\) # (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \ALU_inst|Add0~1\,
	combout => \ALU_inst|Add0~2_combout\,
	cout => \ALU_inst|Add0~3\);

-- Location: LCCOMB_X26_Y24_N24
\ALU_inst|Result[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result[1]~1_combout\ = (\ALU_Sel[0]~input_o\ & (\ALU_inst|Add1~2_combout\)) # (!\ALU_Sel[0]~input_o\ & ((\ALU_inst|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Sel[0]~input_o\,
	datac => \ALU_inst|Add1~2_combout\,
	datad => \ALU_inst|Add0~2_combout\,
	combout => \ALU_inst|Result[1]~1_combout\);

-- Location: LCCOMB_X26_Y24_N26
\ALU_inst|Result[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result\(1) = (\ALU_Sel[1]~input_o\ & ((\ALU_inst|Result\(1)))) # (!\ALU_Sel[1]~input_o\ & (\ALU_inst|Result[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_inst|Result[1]~1_combout\,
	datac => \ALU_inst|Result\(1),
	datad => \ALU_Sel[1]~input_o\,
	combout => \ALU_inst|Result\(1));

-- Location: IOIBUF_X0_Y23_N8
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X11_Y17_N4
\ALU_inst|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Add1~4_combout\ = ((\B[2]~input_o\ $ (\A[2]~input_o\ $ (\ALU_inst|Add1~3\)))) # (GND)
-- \ALU_inst|Add1~5\ = CARRY((\B[2]~input_o\ & (\A[2]~input_o\ & !\ALU_inst|Add1~3\)) # (!\B[2]~input_o\ & ((\A[2]~input_o\) # (!\ALU_inst|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \ALU_inst|Add1~3\,
	combout => \ALU_inst|Add1~4_combout\,
	cout => \ALU_inst|Add1~5\);

-- Location: LCCOMB_X11_Y17_N6
\ALU_inst|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Add1~6_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\ & (!\ALU_inst|Add1~5\)) # (!\B[3]~input_o\ & (\ALU_inst|Add1~5\ & VCC)))) # (!\A[3]~input_o\ & ((\B[3]~input_o\ & ((\ALU_inst|Add1~5\) # (GND))) # (!\B[3]~input_o\ & (!\ALU_inst|Add1~5\))))
-- \ALU_inst|Add1~7\ = CARRY((\A[3]~input_o\ & (\B[3]~input_o\ & !\ALU_inst|Add1~5\)) # (!\A[3]~input_o\ & ((\B[3]~input_o\) # (!\ALU_inst|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \ALU_inst|Add1~5\,
	combout => \ALU_inst|Add1~6_combout\,
	cout => \ALU_inst|Add1~7\);

-- Location: LCCOMB_X11_Y21_N8
\ALU_inst|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Add0~4_combout\ = ((\A[2]~input_o\ $ (\B[2]~input_o\ $ (!\ALU_inst|Add0~3\)))) # (GND)
-- \ALU_inst|Add0~5\ = CARRY((\A[2]~input_o\ & ((\B[2]~input_o\) # (!\ALU_inst|Add0~3\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & !\ALU_inst|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \ALU_inst|Add0~3\,
	combout => \ALU_inst|Add0~4_combout\,
	cout => \ALU_inst|Add0~5\);

-- Location: LCCOMB_X11_Y21_N10
\ALU_inst|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Add0~6_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\ & (\ALU_inst|Add0~5\ & VCC)) # (!\B[3]~input_o\ & (!\ALU_inst|Add0~5\)))) # (!\A[3]~input_o\ & ((\B[3]~input_o\ & (!\ALU_inst|Add0~5\)) # (!\B[3]~input_o\ & ((\ALU_inst|Add0~5\) # (GND)))))
-- \ALU_inst|Add0~7\ = CARRY((\A[3]~input_o\ & (!\B[3]~input_o\ & !\ALU_inst|Add0~5\)) # (!\A[3]~input_o\ & ((!\ALU_inst|Add0~5\) # (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \ALU_inst|Add0~5\,
	combout => \ALU_inst|Add0~6_combout\,
	cout => \ALU_inst|Add0~7\);

-- Location: LCCOMB_X26_Y24_N12
\ALU_inst|Result[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result[3]~3_combout\ = (\ALU_Sel[0]~input_o\ & (\ALU_inst|Add1~6_combout\)) # (!\ALU_Sel[0]~input_o\ & ((\ALU_inst|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_inst|Add1~6_combout\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \ALU_inst|Add0~6_combout\,
	combout => \ALU_inst|Result[3]~3_combout\);

-- Location: LCCOMB_X26_Y24_N30
\ALU_inst|Result[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result\(3) = (\ALU_Sel[1]~input_o\ & ((\ALU_inst|Result\(3)))) # (!\ALU_Sel[1]~input_o\ & (\ALU_inst|Result[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result[3]~3_combout\,
	datac => \ALU_inst|Result\(3),
	datad => \ALU_Sel[1]~input_o\,
	combout => \ALU_inst|Result\(3));

-- Location: LCCOMB_X26_Y24_N10
\ALU_inst|Result[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result[2]~2_combout\ = (\ALU_Sel[0]~input_o\ & (\ALU_inst|Add1~4_combout\)) # (!\ALU_Sel[0]~input_o\ & ((\ALU_inst|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Add1~4_combout\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \ALU_inst|Add0~4_combout\,
	combout => \ALU_inst|Result[2]~2_combout\);

-- Location: LCCOMB_X26_Y24_N4
\ALU_inst|Result[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result\(2) = (\ALU_Sel[1]~input_o\ & ((\ALU_inst|Result\(2)))) # (!\ALU_Sel[1]~input_o\ & (\ALU_inst|Result[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result[2]~2_combout\,
	datac => \ALU_inst|Result\(2),
	datad => \ALU_Sel[1]~input_o\,
	combout => \ALU_inst|Result\(2));

-- Location: LCCOMB_X26_Y24_N0
\display_lower|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_lower|Mux6~0_combout\ = (\ALU_inst|Result\(0) & ((\ALU_inst|Result\(3)) # (\ALU_inst|Result\(1) $ (\ALU_inst|Result\(2))))) # (!\ALU_inst|Result\(0) & ((\ALU_inst|Result\(1)) # (\ALU_inst|Result\(3) $ (\ALU_inst|Result\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result\(0),
	datab => \ALU_inst|Result\(1),
	datac => \ALU_inst|Result\(3),
	datad => \ALU_inst|Result\(2),
	combout => \display_lower|Mux6~0_combout\);

-- Location: LCCOMB_X26_Y24_N2
\display_lower|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_lower|Mux5~0_combout\ = (\ALU_inst|Result\(0) & (\ALU_inst|Result\(3) $ (((\ALU_inst|Result\(1)) # (!\ALU_inst|Result\(2)))))) # (!\ALU_inst|Result\(0) & (\ALU_inst|Result\(1) & (!\ALU_inst|Result\(3) & !\ALU_inst|Result\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result\(0),
	datab => \ALU_inst|Result\(1),
	datac => \ALU_inst|Result\(3),
	datad => \ALU_inst|Result\(2),
	combout => \display_lower|Mux5~0_combout\);

-- Location: LCCOMB_X26_Y24_N20
\display_lower|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_lower|Mux4~0_combout\ = (\ALU_inst|Result\(1) & (\ALU_inst|Result\(0) & (!\ALU_inst|Result\(3)))) # (!\ALU_inst|Result\(1) & ((\ALU_inst|Result\(2) & ((!\ALU_inst|Result\(3)))) # (!\ALU_inst|Result\(2) & (\ALU_inst|Result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result\(0),
	datab => \ALU_inst|Result\(1),
	datac => \ALU_inst|Result\(3),
	datad => \ALU_inst|Result\(2),
	combout => \display_lower|Mux4~0_combout\);

-- Location: LCCOMB_X26_Y24_N6
\display_lower|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_lower|Mux3~0_combout\ = (\ALU_inst|Result\(1) & ((\ALU_inst|Result\(0) & ((\ALU_inst|Result\(2)))) # (!\ALU_inst|Result\(0) & (\ALU_inst|Result\(3) & !\ALU_inst|Result\(2))))) # (!\ALU_inst|Result\(1) & (!\ALU_inst|Result\(3) & 
-- (\ALU_inst|Result\(0) $ (\ALU_inst|Result\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result\(0),
	datab => \ALU_inst|Result\(1),
	datac => \ALU_inst|Result\(3),
	datad => \ALU_inst|Result\(2),
	combout => \display_lower|Mux3~0_combout\);

-- Location: LCCOMB_X26_Y24_N8
\display_lower|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_lower|Mux2~0_combout\ = (\ALU_inst|Result\(3) & (\ALU_inst|Result\(2) & ((\ALU_inst|Result\(1)) # (!\ALU_inst|Result\(0))))) # (!\ALU_inst|Result\(3) & (!\ALU_inst|Result\(0) & (\ALU_inst|Result\(1) & !\ALU_inst|Result\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result\(0),
	datab => \ALU_inst|Result\(1),
	datac => \ALU_inst|Result\(3),
	datad => \ALU_inst|Result\(2),
	combout => \display_lower|Mux2~0_combout\);

-- Location: LCCOMB_X26_Y24_N18
\display_lower|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_lower|Mux1~0_combout\ = (\ALU_inst|Result\(1) & ((\ALU_inst|Result\(0) & (\ALU_inst|Result\(3))) # (!\ALU_inst|Result\(0) & ((\ALU_inst|Result\(2)))))) # (!\ALU_inst|Result\(1) & (\ALU_inst|Result\(2) & (\ALU_inst|Result\(0) $ 
-- (\ALU_inst|Result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result\(0),
	datab => \ALU_inst|Result\(1),
	datac => \ALU_inst|Result\(3),
	datad => \ALU_inst|Result\(2),
	combout => \display_lower|Mux1~0_combout\);

-- Location: LCCOMB_X26_Y24_N28
\display_lower|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_lower|Mux0~0_combout\ = (\ALU_inst|Result\(3) & (\ALU_inst|Result\(0) & (\ALU_inst|Result\(1) $ (\ALU_inst|Result\(2))))) # (!\ALU_inst|Result\(3) & (!\ALU_inst|Result\(1) & (\ALU_inst|Result\(0) $ (\ALU_inst|Result\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result\(0),
	datab => \ALU_inst|Result\(1),
	datac => \ALU_inst|Result\(3),
	datad => \ALU_inst|Result\(2),
	combout => \display_lower|Mux0~0_combout\);

-- Location: IOIBUF_X0_Y25_N15
\A[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\B[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\B[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\A[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\A[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\B[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X11_Y17_N8
\ALU_inst|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Add1~8_combout\ = ((\A[4]~input_o\ $ (\B[4]~input_o\ $ (\ALU_inst|Add1~7\)))) # (GND)
-- \ALU_inst|Add1~9\ = CARRY((\A[4]~input_o\ & ((!\ALU_inst|Add1~7\) # (!\B[4]~input_o\))) # (!\A[4]~input_o\ & (!\B[4]~input_o\ & !\ALU_inst|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \ALU_inst|Add1~7\,
	combout => \ALU_inst|Add1~8_combout\,
	cout => \ALU_inst|Add1~9\);

-- Location: LCCOMB_X11_Y17_N10
\ALU_inst|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Add1~10_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\ & (!\ALU_inst|Add1~9\)) # (!\A[5]~input_o\ & ((\ALU_inst|Add1~9\) # (GND))))) # (!\B[5]~input_o\ & ((\A[5]~input_o\ & (\ALU_inst|Add1~9\ & VCC)) # (!\A[5]~input_o\ & (!\ALU_inst|Add1~9\))))
-- \ALU_inst|Add1~11\ = CARRY((\B[5]~input_o\ & ((!\ALU_inst|Add1~9\) # (!\A[5]~input_o\))) # (!\B[5]~input_o\ & (!\A[5]~input_o\ & !\ALU_inst|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \ALU_inst|Add1~9\,
	combout => \ALU_inst|Add1~10_combout\,
	cout => \ALU_inst|Add1~11\);

-- Location: LCCOMB_X11_Y17_N12
\ALU_inst|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Add1~12_combout\ = ((\A[6]~input_o\ $ (\B[6]~input_o\ $ (\ALU_inst|Add1~11\)))) # (GND)
-- \ALU_inst|Add1~13\ = CARRY((\A[6]~input_o\ & ((!\ALU_inst|Add1~11\) # (!\B[6]~input_o\))) # (!\A[6]~input_o\ & (!\B[6]~input_o\ & !\ALU_inst|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \ALU_inst|Add1~11\,
	combout => \ALU_inst|Add1~12_combout\,
	cout => \ALU_inst|Add1~13\);

-- Location: LCCOMB_X11_Y21_N12
\ALU_inst|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Add0~8_combout\ = ((\A[4]~input_o\ $ (\B[4]~input_o\ $ (!\ALU_inst|Add0~7\)))) # (GND)
-- \ALU_inst|Add0~9\ = CARRY((\A[4]~input_o\ & ((\B[4]~input_o\) # (!\ALU_inst|Add0~7\))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & !\ALU_inst|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \ALU_inst|Add0~7\,
	combout => \ALU_inst|Add0~8_combout\,
	cout => \ALU_inst|Add0~9\);

-- Location: LCCOMB_X11_Y21_N14
\ALU_inst|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Add0~10_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\ & (\ALU_inst|Add0~9\ & VCC)) # (!\A[5]~input_o\ & (!\ALU_inst|Add0~9\)))) # (!\B[5]~input_o\ & ((\A[5]~input_o\ & (!\ALU_inst|Add0~9\)) # (!\A[5]~input_o\ & ((\ALU_inst|Add0~9\) # (GND)))))
-- \ALU_inst|Add0~11\ = CARRY((\B[5]~input_o\ & (!\A[5]~input_o\ & !\ALU_inst|Add0~9\)) # (!\B[5]~input_o\ & ((!\ALU_inst|Add0~9\) # (!\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \ALU_inst|Add0~9\,
	combout => \ALU_inst|Add0~10_combout\,
	cout => \ALU_inst|Add0~11\);

-- Location: LCCOMB_X11_Y21_N16
\ALU_inst|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Add0~12_combout\ = ((\A[6]~input_o\ $ (\B[6]~input_o\ $ (!\ALU_inst|Add0~11\)))) # (GND)
-- \ALU_inst|Add0~13\ = CARRY((\A[6]~input_o\ & ((\B[6]~input_o\) # (!\ALU_inst|Add0~11\))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & !\ALU_inst|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \ALU_inst|Add0~11\,
	combout => \ALU_inst|Add0~12_combout\,
	cout => \ALU_inst|Add0~13\);

-- Location: LCCOMB_X11_Y27_N18
\ALU_inst|Result[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result[6]~6_combout\ = (\ALU_Sel[0]~input_o\ & (\ALU_inst|Add1~12_combout\)) # (!\ALU_Sel[0]~input_o\ & ((\ALU_inst|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datac => \ALU_inst|Add1~12_combout\,
	datad => \ALU_inst|Add0~12_combout\,
	combout => \ALU_inst|Result[6]~6_combout\);

-- Location: LCCOMB_X11_Y27_N26
\ALU_inst|Result[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result\(6) = (\ALU_Sel[1]~input_o\ & ((\ALU_inst|Result\(6)))) # (!\ALU_Sel[1]~input_o\ & (\ALU_inst|Result[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_inst|Result[6]~6_combout\,
	datac => \ALU_inst|Result\(6),
	datad => \ALU_Sel[1]~input_o\,
	combout => \ALU_inst|Result\(6));

-- Location: LCCOMB_X11_Y27_N8
\ALU_inst|Result[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result[5]~5_combout\ = (\ALU_Sel[0]~input_o\ & (\ALU_inst|Add1~10_combout\)) # (!\ALU_Sel[0]~input_o\ & ((\ALU_inst|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_inst|Add1~10_combout\,
	datac => \ALU_inst|Add0~10_combout\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \ALU_inst|Result[5]~5_combout\);

-- Location: LCCOMB_X11_Y27_N24
\ALU_inst|Result[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result\(5) = (\ALU_Sel[1]~input_o\ & (\ALU_inst|Result\(5))) # (!\ALU_Sel[1]~input_o\ & ((\ALU_inst|Result[5]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_inst|Result\(5),
	datac => \ALU_inst|Result[5]~5_combout\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \ALU_inst|Result\(5));

-- Location: LCCOMB_X11_Y27_N14
\ALU_inst|Result[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result[4]~4_combout\ = (\ALU_Sel[0]~input_o\ & ((\ALU_inst|Add1~8_combout\))) # (!\ALU_Sel[0]~input_o\ & (\ALU_inst|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datac => \ALU_inst|Add0~8_combout\,
	datad => \ALU_inst|Add1~8_combout\,
	combout => \ALU_inst|Result[4]~4_combout\);

-- Location: LCCOMB_X11_Y27_N30
\ALU_inst|Result[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result\(4) = (\ALU_Sel[1]~input_o\ & ((\ALU_inst|Result\(4)))) # (!\ALU_Sel[1]~input_o\ & (\ALU_inst|Result[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_inst|Result[4]~4_combout\,
	datac => \ALU_inst|Result\(4),
	datad => \ALU_Sel[1]~input_o\,
	combout => \ALU_inst|Result\(4));

-- Location: IOIBUF_X0_Y26_N8
\A[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\B[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X11_Y17_N14
\ALU_inst|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Add1~14_combout\ = \A[7]~input_o\ $ (\ALU_inst|Add1~13\ $ (!\B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	cin => \ALU_inst|Add1~13\,
	combout => \ALU_inst|Add1~14_combout\);

-- Location: LCCOMB_X11_Y21_N18
\ALU_inst|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Add0~14_combout\ = (\B[7]~input_o\ & ((\A[7]~input_o\ & (\ALU_inst|Add0~13\ & VCC)) # (!\A[7]~input_o\ & (!\ALU_inst|Add0~13\)))) # (!\B[7]~input_o\ & ((\A[7]~input_o\ & (!\ALU_inst|Add0~13\)) # (!\A[7]~input_o\ & ((\ALU_inst|Add0~13\) # 
-- (GND)))))
-- \ALU_inst|Add0~15\ = CARRY((\B[7]~input_o\ & (!\A[7]~input_o\ & !\ALU_inst|Add0~13\)) # (!\B[7]~input_o\ & ((!\ALU_inst|Add0~13\) # (!\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datad => VCC,
	cin => \ALU_inst|Add0~13\,
	combout => \ALU_inst|Add0~14_combout\,
	cout => \ALU_inst|Add0~15\);

-- Location: LCCOMB_X11_Y21_N0
\ALU_inst|Result[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result[7]~7_combout\ = (\ALU_Sel[0]~input_o\ & (\ALU_inst|Add1~14_combout\)) # (!\ALU_Sel[0]~input_o\ & ((\ALU_inst|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Add1~14_combout\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \ALU_inst|Add0~14_combout\,
	combout => \ALU_inst|Result[7]~7_combout\);

-- Location: LCCOMB_X11_Y27_N20
\ALU_inst|Result[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result\(7) = (\ALU_Sel[1]~input_o\ & ((\ALU_inst|Result\(7)))) # (!\ALU_Sel[1]~input_o\ & (\ALU_inst|Result[7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_inst|Result[7]~7_combout\,
	datac => \ALU_inst|Result\(7),
	datad => \ALU_Sel[1]~input_o\,
	combout => \ALU_inst|Result\(7));

-- Location: LCCOMB_X11_Y27_N0
\display_upper|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_upper|Mux6~0_combout\ = (\ALU_inst|Result\(4) & ((\ALU_inst|Result\(7)) # (\ALU_inst|Result\(6) $ (\ALU_inst|Result\(5))))) # (!\ALU_inst|Result\(4) & ((\ALU_inst|Result\(5)) # (\ALU_inst|Result\(6) $ (\ALU_inst|Result\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result\(6),
	datab => \ALU_inst|Result\(5),
	datac => \ALU_inst|Result\(4),
	datad => \ALU_inst|Result\(7),
	combout => \display_upper|Mux6~0_combout\);

-- Location: LCCOMB_X11_Y27_N10
\display_upper|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_upper|Mux5~0_combout\ = (\ALU_inst|Result\(6) & (\ALU_inst|Result\(4) & (\ALU_inst|Result\(5) $ (\ALU_inst|Result\(7))))) # (!\ALU_inst|Result\(6) & (!\ALU_inst|Result\(7) & ((\ALU_inst|Result\(5)) # (\ALU_inst|Result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result\(6),
	datab => \ALU_inst|Result\(5),
	datac => \ALU_inst|Result\(4),
	datad => \ALU_inst|Result\(7),
	combout => \display_upper|Mux5~0_combout\);

-- Location: LCCOMB_X11_Y27_N12
\display_upper|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_upper|Mux4~0_combout\ = (\ALU_inst|Result\(5) & (((\ALU_inst|Result\(4) & !\ALU_inst|Result\(7))))) # (!\ALU_inst|Result\(5) & ((\ALU_inst|Result\(6) & ((!\ALU_inst|Result\(7)))) # (!\ALU_inst|Result\(6) & (\ALU_inst|Result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result\(6),
	datab => \ALU_inst|Result\(5),
	datac => \ALU_inst|Result\(4),
	datad => \ALU_inst|Result\(7),
	combout => \display_upper|Mux4~0_combout\);

-- Location: LCCOMB_X11_Y27_N6
\display_upper|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_upper|Mux3~0_combout\ = (\ALU_inst|Result\(5) & ((\ALU_inst|Result\(6) & (\ALU_inst|Result\(4))) # (!\ALU_inst|Result\(6) & (!\ALU_inst|Result\(4) & \ALU_inst|Result\(7))))) # (!\ALU_inst|Result\(5) & (!\ALU_inst|Result\(7) & 
-- (\ALU_inst|Result\(6) $ (\ALU_inst|Result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result\(6),
	datab => \ALU_inst|Result\(5),
	datac => \ALU_inst|Result\(4),
	datad => \ALU_inst|Result\(7),
	combout => \display_upper|Mux3~0_combout\);

-- Location: LCCOMB_X11_Y27_N16
\display_upper|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_upper|Mux2~0_combout\ = (\ALU_inst|Result\(6) & (\ALU_inst|Result\(7) & ((\ALU_inst|Result\(5)) # (!\ALU_inst|Result\(4))))) # (!\ALU_inst|Result\(6) & (\ALU_inst|Result\(5) & (!\ALU_inst|Result\(4) & !\ALU_inst|Result\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result\(6),
	datab => \ALU_inst|Result\(5),
	datac => \ALU_inst|Result\(4),
	datad => \ALU_inst|Result\(7),
	combout => \display_upper|Mux2~0_combout\);

-- Location: LCCOMB_X11_Y27_N2
\display_upper|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_upper|Mux1~0_combout\ = (\ALU_inst|Result\(5) & ((\ALU_inst|Result\(4) & ((\ALU_inst|Result\(7)))) # (!\ALU_inst|Result\(4) & (\ALU_inst|Result\(6))))) # (!\ALU_inst|Result\(5) & (\ALU_inst|Result\(6) & (\ALU_inst|Result\(4) $ 
-- (\ALU_inst|Result\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result\(6),
	datab => \ALU_inst|Result\(5),
	datac => \ALU_inst|Result\(4),
	datad => \ALU_inst|Result\(7),
	combout => \display_upper|Mux1~0_combout\);

-- Location: LCCOMB_X11_Y27_N4
\display_upper|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_upper|Mux0~0_combout\ = (\ALU_inst|Result\(6) & (!\ALU_inst|Result\(5) & (\ALU_inst|Result\(4) $ (!\ALU_inst|Result\(7))))) # (!\ALU_inst|Result\(6) & (\ALU_inst|Result\(4) & (\ALU_inst|Result\(5) $ (!\ALU_inst|Result\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result\(6),
	datab => \ALU_inst|Result\(5),
	datac => \ALU_inst|Result\(4),
	datad => \ALU_inst|Result\(7),
	combout => \display_upper|Mux0~0_combout\);

-- Location: LCCOMB_X11_Y21_N20
\ALU_inst|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Add0~16_combout\ = !\ALU_inst|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ALU_inst|Add0~15\,
	combout => \ALU_inst|Add0~16_combout\);

-- Location: LCCOMB_X11_Y17_N16
\ALU_inst|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|LessThan0~1_cout\ = CARRY((\B[0]~input_o\ & !\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	cout => \ALU_inst|LessThan0~1_cout\);

-- Location: LCCOMB_X11_Y17_N18
\ALU_inst|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|LessThan0~3_cout\ = CARRY((\B[1]~input_o\ & (\A[1]~input_o\ & !\ALU_inst|LessThan0~1_cout\)) # (!\B[1]~input_o\ & ((\A[1]~input_o\) # (!\ALU_inst|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \ALU_inst|LessThan0~1_cout\,
	cout => \ALU_inst|LessThan0~3_cout\);

-- Location: LCCOMB_X11_Y17_N20
\ALU_inst|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|LessThan0~5_cout\ = CARRY((\B[2]~input_o\ & ((!\ALU_inst|LessThan0~3_cout\) # (!\A[2]~input_o\))) # (!\B[2]~input_o\ & (!\A[2]~input_o\ & !\ALU_inst|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \ALU_inst|LessThan0~3_cout\,
	cout => \ALU_inst|LessThan0~5_cout\);

-- Location: LCCOMB_X11_Y17_N22
\ALU_inst|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|LessThan0~7_cout\ = CARRY((\A[3]~input_o\ & ((!\ALU_inst|LessThan0~5_cout\) # (!\B[3]~input_o\))) # (!\A[3]~input_o\ & (!\B[3]~input_o\ & !\ALU_inst|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \ALU_inst|LessThan0~5_cout\,
	cout => \ALU_inst|LessThan0~7_cout\);

-- Location: LCCOMB_X11_Y17_N24
\ALU_inst|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|LessThan0~9_cout\ = CARRY((\A[4]~input_o\ & (\B[4]~input_o\ & !\ALU_inst|LessThan0~7_cout\)) # (!\A[4]~input_o\ & ((\B[4]~input_o\) # (!\ALU_inst|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \ALU_inst|LessThan0~7_cout\,
	cout => \ALU_inst|LessThan0~9_cout\);

-- Location: LCCOMB_X11_Y17_N26
\ALU_inst|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|LessThan0~11_cout\ = CARRY((\B[5]~input_o\ & (\A[5]~input_o\ & !\ALU_inst|LessThan0~9_cout\)) # (!\B[5]~input_o\ & ((\A[5]~input_o\) # (!\ALU_inst|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \ALU_inst|LessThan0~9_cout\,
	cout => \ALU_inst|LessThan0~11_cout\);

-- Location: LCCOMB_X11_Y17_N28
\ALU_inst|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|LessThan0~13_cout\ = CARRY((\A[6]~input_o\ & (\B[6]~input_o\ & !\ALU_inst|LessThan0~11_cout\)) # (!\A[6]~input_o\ & ((\B[6]~input_o\) # (!\ALU_inst|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \ALU_inst|LessThan0~11_cout\,
	cout => \ALU_inst|LessThan0~13_cout\);

-- Location: LCCOMB_X11_Y17_N30
\ALU_inst|LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|LessThan0~14_combout\ = (\A[7]~input_o\ & (\ALU_inst|LessThan0~13_cout\ & \B[7]~input_o\)) # (!\A[7]~input_o\ & ((\ALU_inst|LessThan0~13_cout\) # (\B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	cin => \ALU_inst|LessThan0~13_cout\,
	combout => \ALU_inst|LessThan0~14_combout\);

-- Location: LCCOMB_X26_Y21_N16
\ALU_inst|NZVC[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|NZVC[0]~0_combout\ = (\ALU_Sel[0]~input_o\ & ((\ALU_inst|LessThan0~14_combout\))) # (!\ALU_Sel[0]~input_o\ & (\ALU_inst|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Sel[0]~input_o\,
	datac => \ALU_inst|Add0~16_combout\,
	datad => \ALU_inst|LessThan0~14_combout\,
	combout => \ALU_inst|NZVC[0]~0_combout\);

-- Location: LCCOMB_X26_Y21_N26
\ALU_inst|NZVC[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|NZVC\(0) = (\ALU_Sel[1]~input_o\ & ((\ALU_inst|NZVC\(0)))) # (!\ALU_Sel[1]~input_o\ & (\ALU_inst|NZVC[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_inst|NZVC[0]~0_combout\,
	datac => \ALU_inst|NZVC\(0),
	datad => \ALU_Sel[1]~input_o\,
	combout => \ALU_inst|NZVC\(0));

-- Location: LCCOMB_X11_Y21_N2
\ALU_inst|NZVC[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|NZVC[1]~1_combout\ = (\ALU_Sel[0]~input_o\ & (\ALU_inst|Add1~14_combout\)) # (!\ALU_Sel[0]~input_o\ & ((\ALU_inst|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Add1~14_combout\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \ALU_inst|Add0~14_combout\,
	combout => \ALU_inst|NZVC[1]~1_combout\);

-- Location: LCCOMB_X11_Y21_N30
\ALU_inst|NZVC[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|NZVC[1]~2_combout\ = (\A[7]~input_o\ & (!\ALU_inst|NZVC[1]~1_combout\ & (\B[7]~input_o\ $ (\ALU_Sel[0]~input_o\)))) # (!\A[7]~input_o\ & (\ALU_inst|NZVC[1]~1_combout\ & (\B[7]~input_o\ $ (!\ALU_Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \ALU_inst|NZVC[1]~1_combout\,
	combout => \ALU_inst|NZVC[1]~2_combout\);

-- Location: LCCOMB_X26_Y21_N12
\ALU_inst|NZVC[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|NZVC\(1) = (\ALU_Sel[1]~input_o\ & (\ALU_inst|NZVC\(1))) # (!\ALU_Sel[1]~input_o\ & ((\ALU_inst|NZVC[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|NZVC\(1),
	datab => \ALU_inst|NZVC[1]~2_combout\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \ALU_inst|NZVC\(1));

-- Location: LCCOMB_X11_Y21_N28
\ALU_inst|NZVC[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|NZVC[2]~7_combout\ = (!\ALU_inst|Add0~6_combout\ & (!\ALU_inst|Add0~12_combout\ & (!\ALU_inst|Add0~10_combout\ & !\ALU_inst|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Add0~6_combout\,
	datab => \ALU_inst|Add0~12_combout\,
	datac => \ALU_inst|Add0~10_combout\,
	datad => \ALU_inst|Add0~8_combout\,
	combout => \ALU_inst|NZVC[2]~7_combout\);

-- Location: LCCOMB_X11_Y21_N26
\ALU_inst|NZVC[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|NZVC[2]~6_combout\ = (!\ALU_Sel[0]~input_o\ & (!\ALU_inst|Add0~4_combout\ & (!\ALU_inst|Add0~0_combout\ & !\ALU_inst|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \ALU_inst|Add0~4_combout\,
	datac => \ALU_inst|Add0~0_combout\,
	datad => \ALU_inst|Add0~2_combout\,
	combout => \ALU_inst|NZVC[2]~6_combout\);

-- Location: LCCOMB_X26_Y24_N22
\ALU_inst|NZVC[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|NZVC[2]~3_combout\ = (!\ALU_inst|Add1~4_combout\ & (\ALU_Sel[0]~input_o\ & (!\ALU_inst|Add1~2_combout\ & !\ALU_inst|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Add1~4_combout\,
	datab => \ALU_Sel[0]~input_o\,
	datac => \ALU_inst|Add1~2_combout\,
	datad => \ALU_inst|Add1~0_combout\,
	combout => \ALU_inst|NZVC[2]~3_combout\);

-- Location: LCCOMB_X11_Y27_N28
\ALU_inst|NZVC[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|NZVC[2]~4_combout\ = (!\ALU_inst|Add1~8_combout\ & (!\ALU_inst|Add1~12_combout\ & (!\ALU_inst|Add1~10_combout\ & !\ALU_inst|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Add1~8_combout\,
	datab => \ALU_inst|Add1~12_combout\,
	datac => \ALU_inst|Add1~10_combout\,
	datad => \ALU_inst|Add1~6_combout\,
	combout => \ALU_inst|NZVC[2]~4_combout\);

-- Location: LCCOMB_X11_Y21_N24
\ALU_inst|NZVC[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|NZVC[2]~5_combout\ = (!\ALU_inst|Add1~14_combout\ & (\ALU_inst|NZVC[2]~3_combout\ & \ALU_inst|NZVC[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Add1~14_combout\,
	datab => \ALU_inst|NZVC[2]~3_combout\,
	datac => \ALU_inst|NZVC[2]~4_combout\,
	combout => \ALU_inst|NZVC[2]~5_combout\);

-- Location: LCCOMB_X11_Y21_N22
\ALU_inst|NZVC[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|NZVC[2]~8_combout\ = (\ALU_inst|NZVC[2]~5_combout\) # ((!\ALU_inst|Add0~14_combout\ & (\ALU_inst|NZVC[2]~7_combout\ & \ALU_inst|NZVC[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Add0~14_combout\,
	datab => \ALU_inst|NZVC[2]~7_combout\,
	datac => \ALU_inst|NZVC[2]~6_combout\,
	datad => \ALU_inst|NZVC[2]~5_combout\,
	combout => \ALU_inst|NZVC[2]~8_combout\);

-- Location: LCCOMB_X26_Y21_N30
\ALU_inst|NZVC[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|NZVC\(2) = (\ALU_Sel[1]~input_o\ & ((\ALU_inst|NZVC\(2)))) # (!\ALU_Sel[1]~input_o\ & (\ALU_inst|NZVC[2]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_inst|NZVC[2]~8_combout\,
	datac => \ALU_inst|NZVC\(2),
	datad => \ALU_Sel[1]~input_o\,
	combout => \ALU_inst|NZVC\(2));

ww_segments_0(0) <= \segments_0[0]~output_o\;

ww_segments_0(1) <= \segments_0[1]~output_o\;

ww_segments_0(2) <= \segments_0[2]~output_o\;

ww_segments_0(3) <= \segments_0[3]~output_o\;

ww_segments_0(4) <= \segments_0[4]~output_o\;

ww_segments_0(5) <= \segments_0[5]~output_o\;

ww_segments_0(6) <= \segments_0[6]~output_o\;

ww_segments_1(0) <= \segments_1[0]~output_o\;

ww_segments_1(1) <= \segments_1[1]~output_o\;

ww_segments_1(2) <= \segments_1[2]~output_o\;

ww_segments_1(3) <= \segments_1[3]~output_o\;

ww_segments_1(4) <= \segments_1[4]~output_o\;

ww_segments_1(5) <= \segments_1[5]~output_o\;

ww_segments_1(6) <= \segments_1[6]~output_o\;

ww_NZVC(0) <= \NZVC[0]~output_o\;

ww_NZVC(1) <= \NZVC[1]~output_o\;

ww_NZVC(2) <= \NZVC[2]~output_o\;

ww_NZVC(3) <= \NZVC[3]~output_o\;
END structure;


