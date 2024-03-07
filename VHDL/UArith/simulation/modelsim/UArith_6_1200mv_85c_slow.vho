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

-- DATE "03/01/2024 17:15:43"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
LIBRARY STD;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	UArith IS
    PORT (
	A : IN STD.STANDARD.integer range 0 TO 31;
	B : IN STD.STANDARD.integer range 0 TO 31;
	SA0 : IN std_logic;
	SA1 : IN std_logic;
	Signo_A : IN std_logic;
	Signo_B : IN std_logic;
	S_Out : OUT STD.STANDARD.integer range -20 TO 20
	);
END UArith;

-- Design Ports Information
-- S_Out[0]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_Out[1]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_Out[2]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_Out[3]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_Out[4]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_Out[5]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SA0	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Signo_A	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SA1	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Signo_B	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UArith IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_SA0 : std_logic;
SIGNAL ww_SA1 : std_logic;
SIGNAL ww_Signo_A : std_logic;
SIGNAL ww_Signo_B : std_logic;
SIGNAL ww_S_Out : std_logic_vector(5 DOWNTO 0);
SIGNAL \S_Out[0]~output_o\ : std_logic;
SIGNAL \S_Out[1]~output_o\ : std_logic;
SIGNAL \S_Out[2]~output_o\ : std_logic;
SIGNAL \S_Out[3]~output_o\ : std_logic;
SIGNAL \S_Out[4]~output_o\ : std_logic;
SIGNAL \S_Out[5]~output_o\ : std_logic;
SIGNAL \Signo_B~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \SA0~input_o\ : std_logic;
SIGNAL \SA1~input_o\ : std_logic;
SIGNAL \Signo_A~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \S_Out~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \S_Out~1_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \S_Out~2_combout\ : std_logic;
SIGNAL \Add6~1_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Add1~4\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Add7~1_cout\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \S_Out~3_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add3~1_combout\ : std_logic;
SIGNAL \Add4~1_cout\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \S_Out~4_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~7_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add6~3_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add2~1_cout\ : std_logic;
SIGNAL \Add2~3_cout\ : std_logic;
SIGNAL \Add2~5_cout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \S_Out~5_combout\ : std_logic;
SIGNAL \S_Out~6_combout\ : std_logic;
SIGNAL \Add3~3_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \Add0~8\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Add1~8\ : std_logic;
SIGNAL \Add1~9_combout\ : std_logic;
SIGNAL \Add5~1_combout\ : std_logic;
SIGNAL \S_Out~7_combout\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \S_Out~8_combout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add6~5_combout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \S_Out~9_combout\ : std_logic;
SIGNAL \S_Out~10_combout\ : std_logic;

BEGIN

ww_A <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(A, 5);
ww_B <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(B, 5);
ww_SA0 <= SA0;
ww_SA1 <= SA1;
ww_Signo_A <= Signo_A;
ww_Signo_B <= Signo_B;
S_Out <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(SIGNED(ww_S_Out));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X28_Y29_N23
\S_Out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_Out~0_combout\,
	devoe => ww_devoe,
	o => \S_Out[0]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\S_Out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_Out~2_combout\,
	devoe => ww_devoe,
	o => \S_Out[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\S_Out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_Out~4_combout\,
	devoe => ww_devoe,
	o => \S_Out[2]~output_o\);

-- Location: IOOBUF_X16_Y29_N2
\S_Out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_Out~6_combout\,
	devoe => ww_devoe,
	o => \S_Out[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\S_Out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_Out~8_combout\,
	devoe => ww_devoe,
	o => \S_Out[4]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\S_Out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_Out~10_combout\,
	devoe => ww_devoe,
	o => \S_Out[5]~output_o\);

-- Location: IOIBUF_X0_Y9_N8
\Signo_B~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Signo_B,
	o => \Signo_B~input_o\);

-- Location: IOIBUF_X16_Y29_N22
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X17_Y10_N8
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \Signo_B~input_o\ $ (\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signo_B~input_o\,
	datac => \B[0]~input_o\,
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X19_Y4_N10
\Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = (\Signo_B~input_o\ & (\Add1~0_combout\ $ (VCC))) # (!\Signo_B~input_o\ & (\Add1~0_combout\ & VCC))
-- \Add1~2\ = CARRY((\Signo_B~input_o\ & \Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signo_B~input_o\,
	datab => \Add1~0_combout\,
	datad => VCC,
	combout => \Add1~1_combout\,
	cout => \Add1~2\);

-- Location: IOIBUF_X9_Y0_N1
\SA0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SA0,
	o => \SA0~input_o\);

-- Location: IOIBUF_X21_Y29_N8
\SA1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SA1,
	o => \SA1~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\Signo_A~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Signo_A,
	o => \Signo_A~input_o\);

-- Location: IOIBUF_X23_Y0_N29
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X19_Y4_N20
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \Signo_A~input_o\ $ (\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signo_A~input_o\,
	datad => \A[0]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X19_Y4_N0
\Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (\Signo_A~input_o\ & (\Add0~0_combout\ $ (VCC))) # (!\Signo_A~input_o\ & (\Add0~0_combout\ & VCC))
-- \Add0~2\ = CARRY((\Signo_A~input_o\ & \Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signo_A~input_o\,
	datab => \Add0~0_combout\,
	datad => VCC,
	combout => \Add0~1_combout\,
	cout => \Add0~2\);

-- Location: LCCOMB_X19_Y4_N22
\S_Out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_Out~0_combout\ = (\SA0~input_o\ & (\Add1~1_combout\ $ ((\SA1~input_o\)))) # (!\SA0~input_o\ & (((!\Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~1_combout\,
	datab => \SA0~input_o\,
	datac => \SA1~input_o\,
	datad => \Add0~1_combout\,
	combout => \S_Out~0_combout\);

-- Location: IOIBUF_X23_Y0_N8
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X19_Y4_N12
\Add1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (\Add1~2\ & (\Signo_B~input_o\ $ ((!\B[1]~input_o\)))) # (!\Add1~2\ & ((\Signo_B~input_o\ $ (\B[1]~input_o\)) # (GND)))
-- \Add1~4\ = CARRY((\Signo_B~input_o\ $ (!\B[1]~input_o\)) # (!\Add1~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signo_B~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \Add1~2\,
	combout => \Add1~3_combout\,
	cout => \Add1~4\);

-- Location: LCCOMB_X19_Y4_N24
\S_Out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_Out~1_combout\ = (\SA0~input_o\ & (\Add1~3_combout\ $ (((\Add1~1_combout\ & !\SA1~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~1_combout\,
	datab => \SA0~input_o\,
	datac => \SA1~input_o\,
	datad => \Add1~3_combout\,
	combout => \S_Out~1_combout\);

-- Location: IOIBUF_X23_Y0_N15
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X19_Y4_N2
\Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\Add0~2\ & (\Signo_A~input_o\ $ ((!\A[1]~input_o\)))) # (!\Add0~2\ & ((\Signo_A~input_o\ $ (\A[1]~input_o\)) # (GND)))
-- \Add0~4\ = CARRY((\Signo_A~input_o\ $ (!\A[1]~input_o\)) # (!\Add0~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signo_A~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add0~2\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: LCCOMB_X19_Y4_N26
\S_Out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_Out~2_combout\ = (\S_Out~1_combout\) # ((!\SA0~input_o\ & (\SA1~input_o\ $ (!\Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SA0~input_o\,
	datab => \S_Out~1_combout\,
	datac => \SA1~input_o\,
	datad => \Add0~3_combout\,
	combout => \S_Out~2_combout\);

-- Location: LCCOMB_X17_Y7_N10
\Add6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~1_combout\ = (\Add1~1_combout\) # (\Add1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~1_combout\,
	datad => \Add1~3_combout\,
	combout => \Add6~1_combout\);

-- Location: IOIBUF_X21_Y0_N29
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X19_Y4_N14
\Add1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~5_combout\ = (\Add1~4\ & ((\Signo_B~input_o\ $ (\B[2]~input_o\)))) # (!\Add1~4\ & (\Signo_B~input_o\ $ (\B[2]~input_o\ $ (VCC))))
-- \Add1~6\ = CARRY((!\Add1~4\ & (\Signo_B~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signo_B~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \Add1~4\,
	combout => \Add1~5_combout\,
	cout => \Add1~6\);

-- Location: LCCOMB_X17_Y7_N12
\Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = \Add1~1_combout\ $ (\Add1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~1_combout\,
	datad => \Add1~3_combout\,
	combout => \Add6~2_combout\);

-- Location: LCCOMB_X17_Y7_N16
\Add7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~1_cout\ = CARRY((\Add6~2_combout\ & \Add1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datab => \Add1~1_combout\,
	datad => VCC,
	cout => \Add7~1_cout\);

-- Location: LCCOMB_X17_Y7_N18
\Add7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (\Add7~1_cout\ & ((\Add6~1_combout\ $ (\Add1~5_combout\)))) # (!\Add7~1_cout\ & (\Add6~1_combout\ $ ((!\Add1~5_combout\))))
-- \Add7~3\ = CARRY((!\Add7~1_cout\ & (\Add6~1_combout\ $ (!\Add1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~1_combout\,
	datab => \Add1~5_combout\,
	datad => VCC,
	cin => \Add7~1_cout\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X17_Y7_N0
\Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = \Add1~5_combout\ $ (((\Add1~1_combout\) # (\Add1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~5_combout\,
	datac => \Add1~1_combout\,
	datad => \Add1~3_combout\,
	combout => \Add6~0_combout\);

-- Location: IOIBUF_X19_Y0_N22
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X19_Y4_N4
\Add0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\Add0~4\ & ((\Signo_A~input_o\ $ (\A[2]~input_o\)))) # (!\Add0~4\ & (\Signo_A~input_o\ $ (\A[2]~input_o\ $ (VCC))))
-- \Add0~6\ = CARRY((!\Add0~4\ & (\Signo_A~input_o\ $ (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signo_A~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~5_combout\,
	cout => \Add0~6\);

-- Location: LCCOMB_X19_Y4_N28
\S_Out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_Out~3_combout\ = (\SA1~input_o\ & (((\SA0~input_o\)))) # (!\SA1~input_o\ & ((\SA0~input_o\ & (!\Add6~0_combout\)) # (!\SA0~input_o\ & ((\Add0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => \Add0~5_combout\,
	datac => \SA1~input_o\,
	datad => \SA0~input_o\,
	combout => \S_Out~3_combout\);

-- Location: LCCOMB_X19_Y7_N0
\Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\Add0~3_combout\) # (\Add0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datac => \Add0~1_combout\,
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X19_Y7_N2
\Add3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~1_combout\ = \Add0~3_combout\ $ (\Add0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datac => \Add0~1_combout\,
	combout => \Add3~1_combout\);

-- Location: LCCOMB_X19_Y7_N4
\Add4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~1_cout\ = CARRY((\Add3~1_combout\ & \Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~1_combout\,
	datab => \Add0~1_combout\,
	datad => VCC,
	cout => \Add4~1_cout\);

-- Location: LCCOMB_X19_Y7_N6
\Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\Add4~1_cout\ & ((\Add0~5_combout\ $ (\Add3~0_combout\)))) # (!\Add4~1_cout\ & (\Add0~5_combout\ $ ((!\Add3~0_combout\))))
-- \Add4~3\ = CARRY((!\Add4~1_cout\ & (\Add0~5_combout\ $ (!\Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => \Add3~0_combout\,
	datad => VCC,
	cin => \Add4~1_cout\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X19_Y4_N30
\S_Out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_Out~4_combout\ = (\S_Out~3_combout\ & ((\Add7~2_combout\) # ((!\SA1~input_o\)))) # (!\S_Out~3_combout\ & (((\SA1~input_o\ & \Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~2_combout\,
	datab => \S_Out~3_combout\,
	datac => \SA1~input_o\,
	datad => \Add4~2_combout\,
	combout => \S_Out~4_combout\);

-- Location: IOIBUF_X19_Y0_N15
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X19_Y4_N16
\Add1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~7_combout\ = (\Add1~6\ & (\Signo_B~input_o\ $ ((!\B[3]~input_o\)))) # (!\Add1~6\ & ((\Signo_B~input_o\ $ (\B[3]~input_o\)) # (GND)))
-- \Add1~8\ = CARRY((\Signo_B~input_o\ $ (!\B[3]~input_o\)) # (!\Add1~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signo_B~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \Add1~6\,
	combout => \Add1~7_combout\,
	cout => \Add1~8\);

-- Location: LCCOMB_X17_Y7_N14
\Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = \Add1~7_combout\ $ (((\Add1~5_combout\ & ((\Add1~3_combout\) # (\Add1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~3_combout\,
	datab => \Add1~5_combout\,
	datac => \Add1~1_combout\,
	datad => \Add1~7_combout\,
	combout => \Add5~0_combout\);

-- Location: LCCOMB_X17_Y7_N8
\Add6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~3_combout\ = (\Add1~5_combout\) # ((\Add1~1_combout\) # (\Add1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~5_combout\,
	datac => \Add1~1_combout\,
	datad => \Add1~3_combout\,
	combout => \Add6~3_combout\);

-- Location: LCCOMB_X17_Y7_N20
\Add7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (\Add7~3\ & (\Add6~3_combout\ $ (\Add1~7_combout\ $ (VCC)))) # (!\Add7~3\ & ((\Add6~3_combout\ $ (\Add1~7_combout\)) # (GND)))
-- \Add7~5\ = CARRY((\Add6~3_combout\ $ (\Add1~7_combout\)) # (!\Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~3_combout\,
	datab => \Add1~7_combout\,
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: IOIBUF_X23_Y0_N1
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X19_Y4_N6
\Add0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (\Add0~6\ & (\Signo_A~input_o\ $ ((!\A[3]~input_o\)))) # (!\Add0~6\ & ((\Signo_A~input_o\ $ (\A[3]~input_o\)) # (GND)))
-- \Add0~8\ = CARRY((\Signo_A~input_o\ $ (!\A[3]~input_o\)) # (!\Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signo_A~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \Add0~6\,
	combout => \Add0~7_combout\,
	cout => \Add0~8\);

-- Location: LCCOMB_X19_Y7_N14
\Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\Add0~3_combout\) # ((\Add0~1_combout\) # (\Add0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datab => \Add0~1_combout\,
	datac => \Add0~5_combout\,
	combout => \Add3~2_combout\);

-- Location: LCCOMB_X19_Y7_N16
\Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~1_cout\ = CARRY(\Add0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~1_combout\,
	datad => VCC,
	cout => \Add2~1_cout\);

-- Location: LCCOMB_X19_Y7_N18
\Add2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~3_cout\ = CARRY((!\Add2~1_cout\ & (\Add0~3_combout\ $ (!\Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datab => \Add0~1_combout\,
	datad => VCC,
	cin => \Add2~1_cout\,
	cout => \Add2~3_cout\);

-- Location: LCCOMB_X19_Y7_N20
\Add2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~5_cout\ = CARRY((!\Add2~3_cout\ & (\Add0~5_combout\ $ (\Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => \Add3~0_combout\,
	datad => VCC,
	cin => \Add2~3_cout\,
	cout => \Add2~5_cout\);

-- Location: LCCOMB_X19_Y7_N22
\Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\Add2~5_cout\ & (\Add0~7_combout\ $ ((!\Add3~2_combout\)))) # (!\Add2~5_cout\ & ((\Add0~7_combout\ $ (\Add3~2_combout\)) # (GND)))
-- \Add2~7\ = CARRY((\Add0~7_combout\ $ (!\Add3~2_combout\)) # (!\Add2~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~7_combout\,
	datab => \Add3~2_combout\,
	datad => VCC,
	cin => \Add2~5_cout\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X19_Y7_N8
\Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (\Add4~3\ & (\Add0~7_combout\ $ (\Add3~2_combout\ $ (VCC)))) # (!\Add4~3\ & ((\Add0~7_combout\ $ (\Add3~2_combout\)) # (GND)))
-- \Add4~5\ = CARRY((\Add0~7_combout\ $ (\Add3~2_combout\)) # (!\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~7_combout\,
	datab => \Add3~2_combout\,
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X20_Y8_N24
\S_Out~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_Out~5_combout\ = (\SA0~input_o\ & (((\SA1~input_o\)))) # (!\SA0~input_o\ & ((\SA1~input_o\ & ((\Add4~4_combout\))) # (!\SA1~input_o\ & (\Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \SA0~input_o\,
	datac => \SA1~input_o\,
	datad => \Add4~4_combout\,
	combout => \S_Out~5_combout\);

-- Location: LCCOMB_X20_Y8_N10
\S_Out~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_Out~6_combout\ = (\SA0~input_o\ & ((\S_Out~5_combout\ & ((\Add7~4_combout\))) # (!\S_Out~5_combout\ & (!\Add5~0_combout\)))) # (!\SA0~input_o\ & (((\S_Out~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~0_combout\,
	datab => \SA0~input_o\,
	datac => \Add7~4_combout\,
	datad => \S_Out~5_combout\,
	combout => \S_Out~6_combout\);

-- Location: LCCOMB_X19_Y7_N28
\Add3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~3_combout\ = (\Add0~7_combout\) # ((\Add0~1_combout\) # ((\Add0~5_combout\) # (\Add0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~7_combout\,
	datab => \Add0~1_combout\,
	datac => \Add0~5_combout\,
	datad => \Add0~3_combout\,
	combout => \Add3~3_combout\);

-- Location: IOIBUF_X14_Y0_N22
\A[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X19_Y4_N8
\Add0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = \A[4]~input_o\ $ (\Add0~8\ $ (!\Signo_A~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datad => \Signo_A~input_o\,
	cin => \Add0~8\,
	combout => \Add0~9_combout\);

-- Location: LCCOMB_X19_Y7_N10
\Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (\Add4~5\ & ((\Add3~3_combout\ $ (\Add0~9_combout\)))) # (!\Add4~5\ & (\Add3~3_combout\ $ ((!\Add0~9_combout\))))
-- \Add4~7\ = CARRY((!\Add4~5\ & (\Add3~3_combout\ $ (!\Add0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~3_combout\,
	datab => \Add0~9_combout\,
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X19_Y7_N24
\Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\Add2~7\ & ((\Add3~3_combout\ $ (\Add0~9_combout\)))) # (!\Add2~7\ & (\Add3~3_combout\ $ (\Add0~9_combout\ $ (VCC))))
-- \Add2~9\ = CARRY((!\Add2~7\ & (\Add3~3_combout\ $ (\Add0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~3_combout\,
	datab => \Add0~9_combout\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: IOIBUF_X26_Y0_N8
\B[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X19_Y4_N18
\Add1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~9_combout\ = \Signo_B~input_o\ $ (\Add1~8\ $ (!\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Signo_B~input_o\,
	datad => \B[4]~input_o\,
	cin => \Add1~8\,
	combout => \Add1~9_combout\);

-- Location: LCCOMB_X17_Y7_N26
\Add5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~1_combout\ = \Add1~9_combout\ $ (((\Add6~1_combout\ & (\Add1~5_combout\ & \Add1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~1_combout\,
	datab => \Add1~9_combout\,
	datac => \Add1~5_combout\,
	datad => \Add1~7_combout\,
	combout => \Add5~1_combout\);

-- Location: LCCOMB_X17_Y7_N4
\S_Out~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_Out~7_combout\ = (\SA0~input_o\ & (((\SA1~input_o\) # (!\Add5~1_combout\)))) # (!\SA0~input_o\ & (\Add2~8_combout\ & ((!\SA1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \SA0~input_o\,
	datac => \Add5~1_combout\,
	datad => \SA1~input_o\,
	combout => \S_Out~7_combout\);

-- Location: LCCOMB_X17_Y7_N6
\Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = (\Add1~3_combout\) # ((\Add1~5_combout\) # ((\Add1~1_combout\) # (\Add1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~3_combout\,
	datab => \Add1~5_combout\,
	datac => \Add1~1_combout\,
	datad => \Add1~7_combout\,
	combout => \Add6~4_combout\);

-- Location: LCCOMB_X17_Y7_N22
\Add7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (\Add7~5\ & ((\Add6~4_combout\ $ (\Add1~9_combout\)))) # (!\Add7~5\ & (\Add6~4_combout\ $ ((!\Add1~9_combout\))))
-- \Add7~7\ = CARRY((!\Add7~5\ & (\Add6~4_combout\ $ (!\Add1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~4_combout\,
	datab => \Add1~9_combout\,
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X17_Y7_N2
\S_Out~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_Out~8_combout\ = (\S_Out~7_combout\ & (((\Add7~6_combout\) # (!\SA1~input_o\)))) # (!\S_Out~7_combout\ & (\Add4~6_combout\ & ((\SA1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~6_combout\,
	datab => \S_Out~7_combout\,
	datac => \Add7~6_combout\,
	datad => \SA1~input_o\,
	combout => \S_Out~8_combout\);

-- Location: LCCOMB_X17_Y7_N28
\Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\Add1~9_combout\ & (((!\Add1~7_combout\) # (!\Add1~5_combout\)) # (!\Add6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~1_combout\,
	datab => \Add1~9_combout\,
	datac => \Add1~5_combout\,
	datad => \Add1~7_combout\,
	combout => \Add5~2_combout\);

-- Location: LCCOMB_X17_Y7_N30
\Add6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~5_combout\ = (\Add6~1_combout\) # ((\Add1~9_combout\) # ((\Add1~5_combout\) # (\Add1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~1_combout\,
	datab => \Add1~9_combout\,
	datac => \Add1~5_combout\,
	datad => \Add1~7_combout\,
	combout => \Add6~5_combout\);

-- Location: LCCOMB_X17_Y7_N24
\Add7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = \Add6~5_combout\ $ (\Add7~7\ $ (\Add1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~5_combout\,
	datad => \Add1~9_combout\,
	cin => \Add7~7\,
	combout => \Add7~8_combout\);

-- Location: LCCOMB_X19_Y7_N30
\Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (\Add0~7_combout\) # ((\Add0~5_combout\) # ((\Add0~9_combout\) # (\Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~7_combout\,
	datab => \Add0~5_combout\,
	datac => \Add0~9_combout\,
	datad => \Add3~0_combout\,
	combout => \Add3~4_combout\);

-- Location: LCCOMB_X19_Y7_N26
\Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = \Add3~4_combout\ $ (\Add0~9_combout\ $ (\Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => \Add0~9_combout\,
	cin => \Add2~9\,
	combout => \Add2~10_combout\);

-- Location: LCCOMB_X19_Y7_N12
\Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = \Add3~4_combout\ $ (\Add0~9_combout\ $ (\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => \Add0~9_combout\,
	cin => \Add4~7\,
	combout => \Add4~8_combout\);

-- Location: LCCOMB_X20_Y8_N28
\S_Out~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_Out~9_combout\ = (\SA0~input_o\ & (((\SA1~input_o\)))) # (!\SA0~input_o\ & ((\SA1~input_o\ & ((\Add4~8_combout\))) # (!\SA1~input_o\ & (\Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \SA0~input_o\,
	datac => \SA1~input_o\,
	datad => \Add4~8_combout\,
	combout => \S_Out~9_combout\);

-- Location: LCCOMB_X20_Y8_N22
\S_Out~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_Out~10_combout\ = (\SA0~input_o\ & ((\S_Out~9_combout\ & ((\Add7~8_combout\))) # (!\S_Out~9_combout\ & (!\Add5~2_combout\)))) # (!\SA0~input_o\ & (((\S_Out~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~2_combout\,
	datab => \SA0~input_o\,
	datac => \Add7~8_combout\,
	datad => \S_Out~9_combout\,
	combout => \S_Out~10_combout\);

ww_S_Out(0) <= \S_Out[0]~output_o\;

ww_S_Out(1) <= \S_Out[1]~output_o\;

ww_S_Out(2) <= \S_Out[2]~output_o\;

ww_S_Out(3) <= \S_Out[3]~output_o\;

ww_S_Out(4) <= \S_Out[4]~output_o\;

ww_S_Out(5) <= \S_Out[5]~output_o\;
END structure;


