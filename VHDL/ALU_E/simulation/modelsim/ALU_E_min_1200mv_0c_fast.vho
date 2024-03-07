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

-- DATE "03/01/2024 16:14:14"

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

ENTITY 	ALU_E IS
    PORT (
	Ai : IN std_logic_vector(3 DOWNTO 0);
	Bi : IN std_logic_vector(3 DOWNTO 0);
	S0 : IN std_logic;
	S1 : IN std_logic;
	S2 : IN std_logic;
	SALUi : OUT std_logic_vector(3 DOWNTO 0)
	);
END ALU_E;

-- Design Ports Information
-- SALUi[0]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SALUi[1]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SALUi[2]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SALUi[3]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ai[3]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ai[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ai[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ai[1]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bi[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bi[2]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bi[0]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bi[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU_E IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Ai : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Bi : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S0 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_SALUi : std_logic_vector(3 DOWNTO 0);
SIGNAL \SALUi[0]~output_o\ : std_logic;
SIGNAL \SALUi[1]~output_o\ : std_logic;
SIGNAL \SALUi[2]~output_o\ : std_logic;
SIGNAL \SALUi[3]~output_o\ : std_logic;
SIGNAL \Bi[0]~input_o\ : std_logic;
SIGNAL \S0~input_o\ : std_logic;
SIGNAL \S1~input_o\ : std_logic;
SIGNAL \Ai[0]~input_o\ : std_logic;
SIGNAL \SALUi~5_combout\ : std_logic;
SIGNAL \S2~input_o\ : std_logic;
SIGNAL \Bi[1]~input_o\ : std_logic;
SIGNAL \Bi[3]~input_o\ : std_logic;
SIGNAL \Bi[2]~input_o\ : std_logic;
SIGNAL \UA|Add3~0_combout\ : std_logic;
SIGNAL \SALUi~2_combout\ : std_logic;
SIGNAL \Ai[2]~input_o\ : std_logic;
SIGNAL \Ai[1]~input_o\ : std_logic;
SIGNAL \UA|Add1~0_combout\ : std_logic;
SIGNAL \Ai[3]~input_o\ : std_logic;
SIGNAL \UA|Add1~1_combout\ : std_logic;
SIGNAL \UA|Add1~2_combout\ : std_logic;
SIGNAL \UA|Add2~1_cout\ : std_logic;
SIGNAL \UA|Add2~3\ : std_logic;
SIGNAL \UA|Add2~5\ : std_logic;
SIGNAL \UA|Add2~6_combout\ : std_logic;
SIGNAL \UA|Add0~1_cout\ : std_logic;
SIGNAL \UA|Add0~3_cout\ : std_logic;
SIGNAL \UA|Add0~5_cout\ : std_logic;
SIGNAL \UA|Add0~7\ : std_logic;
SIGNAL \UA|Add0~8_combout\ : std_logic;
SIGNAL \UA|Add4~0_combout\ : std_logic;
SIGNAL \UA|Add4~1_combout\ : std_logic;
SIGNAL \UA|Add4~2_combout\ : std_logic;
SIGNAL \UA|Add5~1_cout\ : std_logic;
SIGNAL \UA|Add5~3\ : std_logic;
SIGNAL \UA|Add5~5\ : std_logic;
SIGNAL \UA|Add5~6_combout\ : std_logic;
SIGNAL \SALUi~3_combout\ : std_logic;
SIGNAL \SALUi~4_combout\ : std_logic;
SIGNAL \SALUi~6_combout\ : std_logic;
SIGNAL \SALUi~9_combout\ : std_logic;
SIGNAL \UA|Add3~1_combout\ : std_logic;
SIGNAL \UA|Add0~6_combout\ : std_logic;
SIGNAL \UA|Add5~4_combout\ : std_logic;
SIGNAL \SALUi~7_combout\ : std_logic;
SIGNAL \UA|Add2~4_combout\ : std_logic;
SIGNAL \SALUi~8_combout\ : std_logic;
SIGNAL \SALUi~10_combout\ : std_logic;
SIGNAL \UA|Add2~2_combout\ : std_logic;
SIGNAL \SALUi~13_combout\ : std_logic;
SIGNAL \SALUi~14_combout\ : std_logic;
SIGNAL \UA|Add4~3_combout\ : std_logic;
SIGNAL \UA|Add5~2_combout\ : std_logic;
SIGNAL \SALUi~11_combout\ : std_logic;
SIGNAL \SALUi~12_combout\ : std_logic;
SIGNAL \SALUi~15_combout\ : std_logic;
SIGNAL \SALUi~16_combout\ : std_logic;
SIGNAL \SALUi~19_combout\ : std_logic;
SIGNAL \SALUi~17_combout\ : std_logic;
SIGNAL \SALUi~18_combout\ : std_logic;

BEGIN

ww_Ai <= Ai;
ww_Bi <= Bi;
ww_S0 <= S0;
ww_S1 <= S1;
ww_S2 <= S2;
SALUi <= ww_SALUi;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X7_Y29_N2
\SALUi[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SALUi~6_combout\,
	devoe => ww_devoe,
	o => \SALUi[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\SALUi[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SALUi~10_combout\,
	devoe => ww_devoe,
	o => \SALUi[1]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\SALUi[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SALUi~15_combout\,
	devoe => ww_devoe,
	o => \SALUi[2]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\SALUi[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SALUi~18_combout\,
	devoe => ww_devoe,
	o => \SALUi[3]~output_o\);

-- Location: IOIBUF_X0_Y4_N8
\Bi[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bi(0),
	o => \Bi[0]~input_o\);

-- Location: IOIBUF_X5_Y29_N1
\S0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S0,
	o => \S0~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\S1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S1,
	o => \S1~input_o\);

-- Location: IOIBUF_X7_Y29_N8
\Ai[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ai(0),
	o => \Ai[0]~input_o\);

-- Location: LCCOMB_X8_Y12_N8
\SALUi~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SALUi~5_combout\ = (\S0~input_o\ & ((\Bi[0]~input_o\ & ((\Ai[0]~input_o\))) # (!\Bi[0]~input_o\ & (!\S1~input_o\)))) # (!\S0~input_o\ & ((\S1~input_o\ & (!\Bi[0]~input_o\)) # (!\S1~input_o\ & ((!\Ai[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bi[0]~input_o\,
	datab => \S0~input_o\,
	datac => \S1~input_o\,
	datad => \Ai[0]~input_o\,
	combout => \SALUi~5_combout\);

-- Location: IOIBUF_X16_Y0_N29
\S2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S2,
	o => \S2~input_o\);

-- Location: IOIBUF_X0_Y20_N1
\Bi[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bi(1),
	o => \Bi[1]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\Bi[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bi(3),
	o => \Bi[3]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\Bi[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bi(2),
	o => \Bi[2]~input_o\);

-- Location: LCCOMB_X8_Y12_N12
\UA|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UA|Add3~0_combout\ = (\Bi[3]~input_o\ & (\Bi[2]~input_o\ & ((\Bi[0]~input_o\) # (\Bi[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bi[0]~input_o\,
	datab => \Bi[1]~input_o\,
	datac => \Bi[3]~input_o\,
	datad => \Bi[2]~input_o\,
	combout => \UA|Add3~0_combout\);

-- Location: LCCOMB_X8_Y12_N24
\SALUi~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SALUi~2_combout\ = \S1~input_o\ $ (\S0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S1~input_o\,
	datad => \S0~input_o\,
	combout => \SALUi~2_combout\);

-- Location: IOIBUF_X0_Y2_N1
\Ai[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ai(2),
	o => \Ai[2]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\Ai[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ai(1),
	o => \Ai[1]~input_o\);

-- Location: LCCOMB_X1_Y2_N26
\UA|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UA|Add1~0_combout\ = (\Ai[2]~input_o\) # ((\Ai[1]~input_o\) # (\Ai[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ai[2]~input_o\,
	datac => \Ai[1]~input_o\,
	datad => \Ai[0]~input_o\,
	combout => \UA|Add1~0_combout\);

-- Location: IOIBUF_X7_Y0_N15
\Ai[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ai(3),
	o => \Ai[3]~input_o\);

-- Location: LCCOMB_X1_Y2_N20
\UA|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UA|Add1~1_combout\ = (\Ai[1]~input_o\) # (\Ai[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ai[1]~input_o\,
	datad => \Ai[0]~input_o\,
	combout => \UA|Add1~1_combout\);

-- Location: LCCOMB_X1_Y2_N22
\UA|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UA|Add1~2_combout\ = \Ai[1]~input_o\ $ (\Ai[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ai[1]~input_o\,
	datad => \Ai[0]~input_o\,
	combout => \UA|Add1~2_combout\);

-- Location: LCCOMB_X1_Y2_N0
\UA|Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UA|Add2~1_cout\ = CARRY((\UA|Add1~2_combout\ & \Ai[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UA|Add1~2_combout\,
	datab => \Ai[0]~input_o\,
	datad => VCC,
	cout => \UA|Add2~1_cout\);

-- Location: LCCOMB_X1_Y2_N2
\UA|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UA|Add2~2_combout\ = (\UA|Add2~1_cout\ & ((\Ai[2]~input_o\ $ (\UA|Add1~1_combout\)))) # (!\UA|Add2~1_cout\ & (\Ai[2]~input_o\ $ ((!\UA|Add1~1_combout\))))
-- \UA|Add2~3\ = CARRY((!\UA|Add2~1_cout\ & (\Ai[2]~input_o\ $ (!\UA|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ai[2]~input_o\,
	datab => \UA|Add1~1_combout\,
	datad => VCC,
	cin => \UA|Add2~1_cout\,
	combout => \UA|Add2~2_combout\,
	cout => \UA|Add2~3\);

-- Location: LCCOMB_X1_Y2_N4
\UA|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UA|Add2~4_combout\ = (\UA|Add2~3\ & (\UA|Add1~0_combout\ $ (\Ai[3]~input_o\ $ (VCC)))) # (!\UA|Add2~3\ & ((\UA|Add1~0_combout\ $ (\Ai[3]~input_o\)) # (GND)))
-- \UA|Add2~5\ = CARRY((\UA|Add1~0_combout\ $ (\Ai[3]~input_o\)) # (!\UA|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UA|Add1~0_combout\,
	datab => \Ai[3]~input_o\,
	datad => VCC,
	cin => \UA|Add2~3\,
	combout => \UA|Add2~4_combout\,
	cout => \UA|Add2~5\);

-- Location: LCCOMB_X1_Y2_N6
\UA|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UA|Add2~6_combout\ = \UA|Add2~5\ $ (((!\UA|Add1~0_combout\ & !\Ai[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UA|Add1~0_combout\,
	datab => \Ai[3]~input_o\,
	cin => \UA|Add2~5\,
	combout => \UA|Add2~6_combout\);

-- Location: LCCOMB_X1_Y2_N8
\UA|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UA|Add0~1_cout\ = CARRY(\Ai[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ai[0]~input_o\,
	datad => VCC,
	cout => \UA|Add0~1_cout\);

-- Location: LCCOMB_X1_Y2_N10
\UA|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UA|Add0~3_cout\ = CARRY((!\UA|Add0~1_cout\ & (\Ai[1]~input_o\ $ (!\Ai[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ai[1]~input_o\,
	datab => \Ai[0]~input_o\,
	datad => VCC,
	cin => \UA|Add0~1_cout\,
	cout => \UA|Add0~3_cout\);

-- Location: LCCOMB_X1_Y2_N12
\UA|Add0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UA|Add0~5_cout\ = CARRY((!\UA|Add0~3_cout\ & (\Ai[2]~input_o\ $ (\UA|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ai[2]~input_o\,
	datab => \UA|Add1~1_combout\,
	datad => VCC,
	cin => \UA|Add0~3_cout\,
	cout => \UA|Add0~5_cout\);

-- Location: LCCOMB_X1_Y2_N14
\UA|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UA|Add0~6_combout\ = (\UA|Add0~5_cout\ & (\UA|Add1~0_combout\ $ ((!\Ai[3]~input_o\)))) # (!\UA|Add0~5_cout\ & ((\UA|Add1~0_combout\ $ (\Ai[3]~input_o\)) # (GND)))
-- \UA|Add0~7\ = CARRY((\UA|Add1~0_combout\ $ (!\Ai[3]~input_o\)) # (!\UA|Add0~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UA|Add1~0_combout\,
	datab => \Ai[3]~input_o\,
	datad => VCC,
	cin => \UA|Add0~5_cout\,
	combout => \UA|Add0~6_combout\,
	cout => \UA|Add0~7\);

-- Location: LCCOMB_X1_Y2_N16
\UA|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UA|Add0~8_combout\ = \UA|Add0~7\ $ (((!\UA|Add1~0_combout\ & !\Ai[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UA|Add1~0_combout\,
	datab => \Ai[3]~input_o\,
	cin => \UA|Add0~7\,
	combout => \UA|Add0~8_combout\);

-- Location: LCCOMB_X30_Y19_N0
\UA|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UA|Add4~0_combout\ = (\Bi[2]~input_o\) # ((\Bi[0]~input_o\) # (\Bi[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bi[2]~input_o\,
	datab => \Bi[0]~input_o\,
	datac => \Bi[1]~input_o\,
	combout => \UA|Add4~0_combout\);

-- Location: LCCOMB_X30_Y19_N18
\UA|Add4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UA|Add4~1_combout\ = (\Bi[0]~input_o\) # (\Bi[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bi[0]~input_o\,
	datac => \Bi[1]~input_o\,
	combout => \UA|Add4~1_combout\);

-- Location: LCCOMB_X30_Y19_N4
\UA|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UA|Add4~2_combout\ = \Bi[0]~input_o\ $ (\Bi[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bi[0]~input_o\,
	datac => \Bi[1]~input_o\,
	combout => \UA|Add4~2_combout\);

-- Location: LCCOMB_X30_Y19_N6
\UA|Add5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UA|Add5~1_cout\ = CARRY((\UA|Add4~2_combout\ & \Bi[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UA|Add4~2_combout\,
	datab => \Bi[0]~input_o\,
	datad => VCC,
	cout => \UA|Add5~1_cout\);

-- Location: LCCOMB_X30_Y19_N8
\UA|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UA|Add5~2_combout\ = (\UA|Add5~1_cout\ & ((\Bi[2]~input_o\ $ (\UA|Add4~1_combout\)))) # (!\UA|Add5~1_cout\ & (\Bi[2]~input_o\ $ ((!\UA|Add4~1_combout\))))
-- \UA|Add5~3\ = CARRY((!\UA|Add5~1_cout\ & (\Bi[2]~input_o\ $ (!\UA|Add4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bi[2]~input_o\,
	datab => \UA|Add4~1_combout\,
	datad => VCC,
	cin => \UA|Add5~1_cout\,
	combout => \UA|Add5~2_combout\,
	cout => \UA|Add5~3\);

-- Location: LCCOMB_X30_Y19_N10
\UA|Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UA|Add5~4_combout\ = (\UA|Add5~3\ & (\Bi[3]~input_o\ $ (\UA|Add4~0_combout\ $ (VCC)))) # (!\UA|Add5~3\ & ((\Bi[3]~input_o\ $ (\UA|Add4~0_combout\)) # (GND)))
-- \UA|Add5~5\ = CARRY((\Bi[3]~input_o\ $ (\UA|Add4~0_combout\)) # (!\UA|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bi[3]~input_o\,
	datab => \UA|Add4~0_combout\,
	datad => VCC,
	cin => \UA|Add5~3\,
	combout => \UA|Add5~4_combout\,
	cout => \UA|Add5~5\);

-- Location: LCCOMB_X30_Y19_N12
\UA|Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UA|Add5~6_combout\ = \UA|Add5~5\ $ (((!\Bi[3]~input_o\ & !\UA|Add4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bi[3]~input_o\,
	datad => \UA|Add4~0_combout\,
	cin => \UA|Add5~5\,
	combout => \UA|Add5~6_combout\);

-- Location: LCCOMB_X8_Y12_N10
\SALUi~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SALUi~3_combout\ = (\S0~input_o\ & (((\UA|Add5~6_combout\) # (!\S1~input_o\)))) # (!\S0~input_o\ & (\UA|Add0~8_combout\ & (!\S1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \UA|Add0~8_combout\,
	datac => \S1~input_o\,
	datad => \UA|Add5~6_combout\,
	combout => \SALUi~3_combout\);

-- Location: LCCOMB_X8_Y12_N6
\SALUi~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SALUi~4_combout\ = (\SALUi~2_combout\ & ((\SALUi~3_combout\ & (!\UA|Add3~0_combout\)) # (!\SALUi~3_combout\ & ((\UA|Add2~6_combout\))))) # (!\SALUi~2_combout\ & (((\SALUi~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UA|Add3~0_combout\,
	datab => \SALUi~2_combout\,
	datac => \UA|Add2~6_combout\,
	datad => \SALUi~3_combout\,
	combout => \SALUi~4_combout\);

-- Location: LCCOMB_X8_Y12_N18
\SALUi~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SALUi~6_combout\ = (\S2~input_o\ & ((\SALUi~4_combout\))) # (!\S2~input_o\ & (\SALUi~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SALUi~5_combout\,
	datac => \S2~input_o\,
	datad => \SALUi~4_combout\,
	combout => \SALUi~6_combout\);

-- Location: LCCOMB_X8_Y12_N2
\SALUi~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SALUi~9_combout\ = (\S0~input_o\ & ((\Bi[1]~input_o\ & (\Ai[1]~input_o\)) # (!\Bi[1]~input_o\ & ((!\S1~input_o\))))) # (!\S0~input_o\ & ((\S1~input_o\ & ((!\Bi[1]~input_o\))) # (!\S1~input_o\ & (!\Ai[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ai[1]~input_o\,
	datab => \Bi[1]~input_o\,
	datac => \S1~input_o\,
	datad => \S0~input_o\,
	combout => \SALUi~9_combout\);

-- Location: LCCOMB_X8_Y12_N22
\UA|Add3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UA|Add3~1_combout\ = \Bi[3]~input_o\ $ (((\Bi[2]~input_o\ & ((\Bi[0]~input_o\) # (\Bi[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bi[0]~input_o\,
	datab => \Bi[1]~input_o\,
	datac => \Bi[3]~input_o\,
	datad => \Bi[2]~input_o\,
	combout => \UA|Add3~1_combout\);

-- Location: LCCOMB_X8_Y12_N28
\SALUi~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SALUi~7_combout\ = (\S0~input_o\ & (((\UA|Add5~4_combout\) # (!\S1~input_o\)))) # (!\S0~input_o\ & (\UA|Add0~6_combout\ & (!\S1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UA|Add0~6_combout\,
	datab => \S0~input_o\,
	datac => \S1~input_o\,
	datad => \UA|Add5~4_combout\,
	combout => \SALUi~7_combout\);

-- Location: LCCOMB_X8_Y12_N0
\SALUi~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SALUi~8_combout\ = (\SALUi~7_combout\ & (((!\SALUi~2_combout\)) # (!\UA|Add3~1_combout\))) # (!\SALUi~7_combout\ & (((\UA|Add2~4_combout\ & \SALUi~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UA|Add3~1_combout\,
	datab => \SALUi~7_combout\,
	datac => \UA|Add2~4_combout\,
	datad => \SALUi~2_combout\,
	combout => \SALUi~8_combout\);

-- Location: LCCOMB_X8_Y12_N4
\SALUi~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SALUi~10_combout\ = (\S2~input_o\ & ((\SALUi~8_combout\))) # (!\S2~input_o\ & (\SALUi~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SALUi~9_combout\,
	datac => \S2~input_o\,
	datad => \SALUi~8_combout\,
	combout => \SALUi~10_combout\);

-- Location: LCCOMB_X30_Y19_N28
\SALUi~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SALUi~13_combout\ = (\SALUi~2_combout\ & ((\S2~input_o\ & ((\UA|Add2~2_combout\))) # (!\S2~input_o\ & (!\Bi[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bi[2]~input_o\,
	datab => \UA|Add2~2_combout\,
	datac => \SALUi~2_combout\,
	datad => \S2~input_o\,
	combout => \SALUi~13_combout\);

-- Location: LCCOMB_X30_Y19_N22
\SALUi~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SALUi~14_combout\ = (\SALUi~13_combout\) # ((!\SALUi~2_combout\ & (\S2~input_o\ $ (!\Ai[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S2~input_o\,
	datab => \Ai[2]~input_o\,
	datac => \SALUi~2_combout\,
	datad => \SALUi~13_combout\,
	combout => \SALUi~14_combout\);

-- Location: LCCOMB_X30_Y19_N16
\UA|Add4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UA|Add4~3_combout\ = \Bi[2]~input_o\ $ (((\Bi[0]~input_o\) # (\Bi[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bi[2]~input_o\,
	datab => \Bi[0]~input_o\,
	datac => \Bi[1]~input_o\,
	combout => \UA|Add4~3_combout\);

-- Location: LCCOMB_X30_Y19_N30
\SALUi~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SALUi~11_combout\ = (\Bi[2]~input_o\ & ((\S2~input_o\ & ((\SALUi~2_combout\))) # (!\S2~input_o\ & (\Ai[2]~input_o\)))) # (!\Bi[2]~input_o\ & (((\SALUi~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bi[2]~input_o\,
	datab => \Ai[2]~input_o\,
	datac => \SALUi~2_combout\,
	datad => \S2~input_o\,
	combout => \SALUi~11_combout\);

-- Location: LCCOMB_X30_Y19_N2
\SALUi~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SALUi~12_combout\ = (\S2~input_o\ & ((\SALUi~11_combout\ & (!\UA|Add4~3_combout\)) # (!\SALUi~11_combout\ & ((\UA|Add5~2_combout\))))) # (!\S2~input_o\ & (((\SALUi~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S2~input_o\,
	datab => \UA|Add4~3_combout\,
	datac => \UA|Add5~2_combout\,
	datad => \SALUi~11_combout\,
	combout => \SALUi~12_combout\);

-- Location: LCCOMB_X30_Y19_N24
\SALUi~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SALUi~15_combout\ = (\S0~input_o\ & ((\SALUi~12_combout\))) # (!\S0~input_o\ & (\SALUi~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S0~input_o\,
	datac => \SALUi~14_combout\,
	datad => \SALUi~12_combout\,
	combout => \SALUi~15_combout\);

-- Location: LCCOMB_X8_Y12_N30
\SALUi~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SALUi~16_combout\ = (\S0~input_o\ & ((\Bi[3]~input_o\ & ((\Ai[3]~input_o\))) # (!\Bi[3]~input_o\ & (!\S1~input_o\)))) # (!\S0~input_o\ & ((\S1~input_o\ & (!\Bi[3]~input_o\)) # (!\S1~input_o\ & ((!\Ai[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bi[3]~input_o\,
	datab => \S0~input_o\,
	datac => \S1~input_o\,
	datad => \Ai[3]~input_o\,
	combout => \SALUi~16_combout\);

-- Location: LCCOMB_X8_Y12_N20
\SALUi~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SALUi~19_combout\ = (\S0~input_o\ & (((!\S1~input_o\ & \UA|Add4~2_combout\)))) # (!\S0~input_o\ & (\Ai[1]~input_o\ & (\S1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ai[1]~input_o\,
	datab => \S0~input_o\,
	datac => \S1~input_o\,
	datad => \UA|Add4~2_combout\,
	combout => \SALUi~19_combout\);

-- Location: LCCOMB_X8_Y12_N16
\SALUi~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SALUi~17_combout\ = (\S1~input_o\ & (((\Bi[1]~input_o\ & \S0~input_o\)))) # (!\S1~input_o\ & (!\Ai[1]~input_o\ & ((!\S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ai[1]~input_o\,
	datab => \Bi[1]~input_o\,
	datac => \S1~input_o\,
	datad => \S0~input_o\,
	combout => \SALUi~17_combout\);

-- Location: LCCOMB_X8_Y12_N26
\SALUi~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SALUi~18_combout\ = (\S2~input_o\ & (((\SALUi~19_combout\) # (\SALUi~17_combout\)))) # (!\S2~input_o\ & (\SALUi~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SALUi~16_combout\,
	datab => \SALUi~19_combout\,
	datac => \S2~input_o\,
	datad => \SALUi~17_combout\,
	combout => \SALUi~18_combout\);

ww_SALUi(0) <= \SALUi[0]~output_o\;

ww_SALUi(1) <= \SALUi[1]~output_o\;

ww_SALUi(2) <= \SALUi[2]~output_o\;

ww_SALUi(3) <= \SALUi[3]~output_o\;
END structure;


