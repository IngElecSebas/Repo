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

-- DATE "03/05/2024 17:24:02"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DivFreq IS
    PORT (
	clk : IN std_logic;
	out1 : BUFFER std_logic;
	out2 : BUFFER std_logic
	);
END DivFreq;

-- Design Ports Information
-- out1	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DivFreq IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_out1 : std_logic;
SIGNAL ww_out2 : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \out1~output_o\ : std_logic;
SIGNAL \out2~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \contador1~2_combout\ : std_logic;
SIGNAL \contador1~1_combout\ : std_logic;
SIGNAL \contador1~0_combout\ : std_logic;
SIGNAL \out1~0_combout\ : std_logic;
SIGNAL \out1~reg0_q\ : std_logic;
SIGNAL \reloj:contador2[0]~0_combout\ : std_logic;
SIGNAL \reloj:contador2[0]~q\ : std_logic;
SIGNAL \contador2~1_combout\ : std_logic;
SIGNAL \reloj:contador2[2]~q\ : std_logic;
SIGNAL \contador2~0_combout\ : std_logic;
SIGNAL \reloj:contador2[1]~q\ : std_logic;
SIGNAL \out2~0_combout\ : std_logic;
SIGNAL \out2~reg0_q\ : std_logic;
SIGNAL contador1 : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_clk <= clk;
out1 <= ww_out1;
out2 <= ww_out2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X0_Y8_N9
\out1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~reg0_q\,
	devoe => ww_devoe,
	o => \out1~output_o\);

-- Location: IOOBUF_X0_Y2_N16
\out2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out2~reg0_q\,
	devoe => ww_devoe,
	o => \out2~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
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

-- Location: LCCOMB_X1_Y8_N18
\contador1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador1~2_combout\ = (contador1(2) & ((!contador1(1)))) # (!contador1(2) & (contador1(0) & contador1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador1(0),
	datac => contador1(2),
	datad => contador1(1),
	combout => \contador1~2_combout\);

-- Location: FF_X1_Y8_N19
\contador1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador1(2));

-- Location: LCCOMB_X1_Y8_N28
\contador1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador1~1_combout\ = (contador1(1) & (!contador1(2) & !contador1(0))) # (!contador1(1) & ((contador1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador1(2),
	datac => contador1(1),
	datad => contador1(0),
	combout => \contador1~1_combout\);

-- Location: FF_X1_Y8_N29
\contador1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador1(1));

-- Location: LCCOMB_X1_Y8_N6
\contador1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador1~0_combout\ = (!contador1(0) & ((!contador1(2)) # (!contador1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador1(1),
	datac => contador1(0),
	datad => contador1(2),
	combout => \contador1~0_combout\);

-- Location: FF_X1_Y8_N7
\contador1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador1(0));

-- Location: LCCOMB_X1_Y8_N8
\out1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \out1~0_combout\ = \out1~reg0_q\ $ (((!contador1(0) & (contador1(2) & contador1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador1(0),
	datab => contador1(2),
	datac => \out1~reg0_q\,
	datad => contador1(1),
	combout => \out1~0_combout\);

-- Location: FF_X1_Y8_N9
\out1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \out1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out1~reg0_q\);

-- Location: LCCOMB_X1_Y2_N18
\reloj:contador2[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reloj:contador2[0]~0_combout\ = !\reloj:contador2[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reloj:contador2[0]~q\,
	combout => \reloj:contador2[0]~0_combout\);

-- Location: FF_X1_Y2_N19
\reloj:contador2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reloj:contador2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reloj:contador2[0]~q\);

-- Location: LCCOMB_X1_Y2_N20
\contador2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador2~1_combout\ = (\reloj:contador2[2]~q\ & ((!\reloj:contador2[0]~q\))) # (!\reloj:contador2[2]~q\ & (\reloj:contador2[1]~q\ & \reloj:contador2[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reloj:contador2[1]~q\,
	datac => \reloj:contador2[2]~q\,
	datad => \reloj:contador2[0]~q\,
	combout => \contador2~1_combout\);

-- Location: FF_X1_Y2_N21
\reloj:contador2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reloj:contador2[2]~q\);

-- Location: LCCOMB_X1_Y2_N6
\contador2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador2~0_combout\ = (\reloj:contador2[1]~q\ & ((!\reloj:contador2[0]~q\))) # (!\reloj:contador2[1]~q\ & (!\reloj:contador2[2]~q\ & \reloj:contador2[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reloj:contador2[2]~q\,
	datac => \reloj:contador2[1]~q\,
	datad => \reloj:contador2[0]~q\,
	combout => \contador2~0_combout\);

-- Location: FF_X1_Y2_N7
\reloj:contador2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reloj:contador2[1]~q\);

-- Location: LCCOMB_X1_Y2_N16
\out2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \out2~0_combout\ = \out2~reg0_q\ $ (((!\reloj:contador2[1]~q\ & (\reloj:contador2[0]~q\ & \reloj:contador2[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reloj:contador2[1]~q\,
	datab => \reloj:contador2[0]~q\,
	datac => \out2~reg0_q\,
	datad => \reloj:contador2[2]~q\,
	combout => \out2~0_combout\);

-- Location: FF_X1_Y2_N17
\out2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \out2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out2~reg0_q\);

ww_out1 <= \out1~output_o\;

ww_out2 <= \out2~output_o\;
END structure;


