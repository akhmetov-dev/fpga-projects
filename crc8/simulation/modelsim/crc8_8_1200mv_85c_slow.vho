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

-- DATE "10/20/2020 22:36:46"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
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

ENTITY 	f2 IS
    PORT (
	clk : IN std_logic;
	output_reg : OUT std_logic_vector(7 DOWNTO 0)
	);
END f2;

-- Design Ports Information
-- output_reg[0]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_reg[1]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_reg[2]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_reg[3]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_reg[4]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_reg[5]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_reg[6]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_reg[7]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF f2 IS
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
SIGNAL ww_output_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \output_reg[0]~output_o\ : std_logic;
SIGNAL \output_reg[1]~output_o\ : std_logic;
SIGNAL \output_reg[2]~output_o\ : std_logic;
SIGNAL \output_reg[3]~output_o\ : std_logic;
SIGNAL \output_reg[4]~output_o\ : std_logic;
SIGNAL \output_reg[5]~output_o\ : std_logic;
SIGNAL \output_reg[6]~output_o\ : std_logic;
SIGNAL \output_reg[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \data[0]~feeder_combout\ : std_logic;
SIGNAL \flag~feeder_combout\ : std_logic;
SIGNAL \flag~q\ : std_logic;
SIGNAL \counter~2_combout\ : std_logic;
SIGNAL \counter~3_combout\ : std_logic;
SIGNAL \counter~1_combout\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \data[0]~0_combout\ : std_logic;
SIGNAL \output_reg[0]~0_combout\ : std_logic;
SIGNAL \output_reg[0]~reg0_q\ : std_logic;
SIGNAL \data~2_combout\ : std_logic;
SIGNAL \data[3]~feeder_combout\ : std_logic;
SIGNAL \data[4]~feeder_combout\ : std_logic;
SIGNAL \data~3_combout\ : std_logic;
SIGNAL \data[6]~4_combout\ : std_logic;
SIGNAL \data[7]~5_combout\ : std_logic;
SIGNAL \data~1_combout\ : std_logic;
SIGNAL \output_reg[1]~reg0feeder_combout\ : std_logic;
SIGNAL \output_reg[1]~reg0_q\ : std_logic;
SIGNAL \output_reg[2]~reg0feeder_combout\ : std_logic;
SIGNAL \output_reg[2]~reg0_q\ : std_logic;
SIGNAL \output_reg[3]~reg0feeder_combout\ : std_logic;
SIGNAL \output_reg[3]~reg0_q\ : std_logic;
SIGNAL \output_reg[4]~reg0feeder_combout\ : std_logic;
SIGNAL \output_reg[4]~reg0_q\ : std_logic;
SIGNAL \output_reg[5]~reg0feeder_combout\ : std_logic;
SIGNAL \output_reg[5]~reg0_q\ : std_logic;
SIGNAL \output_reg[6]~1_combout\ : std_logic;
SIGNAL \output_reg[6]~reg0_q\ : std_logic;
SIGNAL \output_reg[7]~reg0feeder_combout\ : std_logic;
SIGNAL \output_reg[7]~reg0_q\ : std_logic;
SIGNAL data : std_logic_vector(7 DOWNTO 0);
SIGNAL counter : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_data[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_flag~q\ : std_logic;
SIGNAL \ALT_INV_output_reg[7]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_output_reg[5]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_output_reg[4]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_output_reg[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_output_reg[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_output_reg[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_output_reg[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_output_reg[6]~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
output_reg <= ww_output_reg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_data[0]~0_combout\ <= NOT \data[0]~0_combout\;
\ALT_INV_flag~q\ <= NOT \flag~q\;
\ALT_INV_output_reg[7]~reg0_q\ <= NOT \output_reg[7]~reg0_q\;
\ALT_INV_output_reg[5]~reg0_q\ <= NOT \output_reg[5]~reg0_q\;
\ALT_INV_output_reg[4]~reg0_q\ <= NOT \output_reg[4]~reg0_q\;
\ALT_INV_output_reg[3]~reg0_q\ <= NOT \output_reg[3]~reg0_q\;
\ALT_INV_output_reg[2]~reg0_q\ <= NOT \output_reg[2]~reg0_q\;
\ALT_INV_output_reg[1]~reg0_q\ <= NOT \output_reg[1]~reg0_q\;
\ALT_INV_output_reg[0]~reg0_q\ <= NOT \output_reg[0]~reg0_q\;
\ALT_INV_output_reg[6]~reg0_q\ <= NOT \output_reg[6]~reg0_q\;

-- Location: IOOBUF_X34_Y4_N23
\output_reg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_output_reg[0]~reg0_q\,
	devoe => ww_devoe,
	o => \output_reg[0]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\output_reg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_output_reg[1]~reg0_q\,
	devoe => ww_devoe,
	o => \output_reg[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\output_reg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_output_reg[2]~reg0_q\,
	devoe => ww_devoe,
	o => \output_reg[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\output_reg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_output_reg[3]~reg0_q\,
	devoe => ww_devoe,
	o => \output_reg[3]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\output_reg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_output_reg[4]~reg0_q\,
	devoe => ww_devoe,
	o => \output_reg[4]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\output_reg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_output_reg[5]~reg0_q\,
	devoe => ww_devoe,
	o => \output_reg[5]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\output_reg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_output_reg[6]~reg0_q\,
	devoe => ww_devoe,
	o => \output_reg[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\output_reg[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_output_reg[7]~reg0_q\,
	devoe => ww_devoe,
	o => \output_reg[7]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
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

-- Location: LCCOMB_X33_Y1_N4
\data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \data[0]~feeder_combout\);

-- Location: LCCOMB_X32_Y1_N8
\flag~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag~feeder_combout\ = \data[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[0]~0_combout\,
	combout => \flag~feeder_combout\);

-- Location: FF_X32_Y1_N9
flag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \flag~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flag~q\);

-- Location: LCCOMB_X32_Y1_N26
\counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~2_combout\ = (!counter(3) & (counter(0) $ (counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(3),
	datac => counter(1),
	combout => \counter~2_combout\);

-- Location: FF_X32_Y1_N27
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~2_combout\,
	ena => \ALT_INV_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X32_Y1_N28
\counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~3_combout\ = (!counter(3) & (counter(2) $ (((counter(0) & counter(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(1),
	datac => counter(2),
	datad => counter(3),
	combout => \counter~3_combout\);

-- Location: FF_X32_Y1_N29
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~3_combout\,
	ena => \ALT_INV_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X32_Y1_N24
\counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~1_combout\ = (!counter(0) & (((!counter(2) & !counter(1))) # (!counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(1),
	datac => counter(0),
	datad => counter(3),
	combout => \counter~1_combout\);

-- Location: FF_X32_Y1_N25
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~1_combout\,
	ena => \ALT_INV_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X32_Y1_N30
\counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = (counter(0) & (counter(1) & (!counter(3) & counter(2)))) # (!counter(0) & (!counter(1) & (counter(3) & !counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(1),
	datac => counter(3),
	datad => counter(2),
	combout => \counter~0_combout\);

-- Location: FF_X32_Y1_N31
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~0_combout\,
	ena => \ALT_INV_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X32_Y1_N10
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (counter(3) & ((counter(0)) # ((counter(1)) # (counter(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(0),
	datac => counter(1),
	datad => counter(2),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X32_Y1_N20
\data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[0]~0_combout\ = (\flag~q\) # (\LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \flag~q\,
	datad => \LessThan0~0_combout\,
	combout => \data[0]~0_combout\);

-- Location: FF_X33_Y1_N5
\data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data[0]~feeder_combout\,
	ena => \ALT_INV_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(0));

-- Location: LCCOMB_X33_Y1_N0
\output_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_reg[0]~0_combout\ = !data(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(0),
	combout => \output_reg[0]~0_combout\);

-- Location: FF_X33_Y1_N1
\output_reg[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output_reg[0]~0_combout\,
	ena => \flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg[0]~reg0_q\);

-- Location: LCCOMB_X33_Y1_N28
\data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \data~2_combout\ = data(1) $ (data(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(1),
	datad => data(7),
	combout => \data~2_combout\);

-- Location: FF_X33_Y1_N29
\data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data~2_combout\,
	ena => \ALT_INV_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(2));

-- Location: LCCOMB_X33_Y1_N6
\data[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[3]~feeder_combout\ = data(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(2),
	combout => \data[3]~feeder_combout\);

-- Location: FF_X33_Y1_N7
\data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data[3]~feeder_combout\,
	ena => \ALT_INV_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(3));

-- Location: LCCOMB_X33_Y1_N8
\data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[4]~feeder_combout\ = data(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(3),
	combout => \data[4]~feeder_combout\);

-- Location: FF_X33_Y1_N9
\data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data[4]~feeder_combout\,
	ena => \ALT_INV_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(4));

-- Location: LCCOMB_X33_Y1_N18
\data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \data~3_combout\ = data(4) $ (data(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(4),
	datad => data(7),
	combout => \data~3_combout\);

-- Location: FF_X33_Y1_N19
\data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data~3_combout\,
	ena => \ALT_INV_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(5));

-- Location: LCCOMB_X33_Y1_N16
\data[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[6]~4_combout\ = !data(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(5),
	combout => \data[6]~4_combout\);

-- Location: FF_X33_Y1_N17
\data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data[6]~4_combout\,
	ena => \ALT_INV_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(6));

-- Location: LCCOMB_X33_Y1_N10
\data[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[7]~5_combout\ = !data(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(6),
	combout => \data[7]~5_combout\);

-- Location: FF_X33_Y1_N11
\data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data[7]~5_combout\,
	ena => \ALT_INV_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(7));

-- Location: LCCOMB_X33_Y1_N14
\data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data~1_combout\ = data(0) $ (!data(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(0),
	datad => data(7),
	combout => \data~1_combout\);

-- Location: FF_X33_Y1_N15
\data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data~1_combout\,
	ena => \ALT_INV_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(1));

-- Location: LCCOMB_X33_Y1_N30
\output_reg[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_reg[1]~reg0feeder_combout\ = data(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(1),
	combout => \output_reg[1]~reg0feeder_combout\);

-- Location: FF_X33_Y1_N31
\output_reg[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output_reg[1]~reg0feeder_combout\,
	ena => \flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg[1]~reg0_q\);

-- Location: LCCOMB_X33_Y1_N20
\output_reg[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_reg[2]~reg0feeder_combout\ = data(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(2),
	combout => \output_reg[2]~reg0feeder_combout\);

-- Location: FF_X33_Y1_N21
\output_reg[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output_reg[2]~reg0feeder_combout\,
	ena => \flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg[2]~reg0_q\);

-- Location: LCCOMB_X33_Y1_N22
\output_reg[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_reg[3]~reg0feeder_combout\ = data(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(3),
	combout => \output_reg[3]~reg0feeder_combout\);

-- Location: FF_X33_Y1_N23
\output_reg[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output_reg[3]~reg0feeder_combout\,
	ena => \flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg[3]~reg0_q\);

-- Location: LCCOMB_X33_Y1_N24
\output_reg[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_reg[4]~reg0feeder_combout\ = data(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(4),
	combout => \output_reg[4]~reg0feeder_combout\);

-- Location: FF_X33_Y1_N25
\output_reg[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output_reg[4]~reg0feeder_combout\,
	ena => \flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg[4]~reg0_q\);

-- Location: LCCOMB_X33_Y1_N2
\output_reg[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_reg[5]~reg0feeder_combout\ = data(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(5),
	combout => \output_reg[5]~reg0feeder_combout\);

-- Location: FF_X33_Y1_N3
\output_reg[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output_reg[5]~reg0feeder_combout\,
	ena => \flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg[5]~reg0_q\);

-- Location: LCCOMB_X33_Y1_N12
\output_reg[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_reg[6]~1_combout\ = !data(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(6),
	combout => \output_reg[6]~1_combout\);

-- Location: FF_X33_Y1_N13
\output_reg[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output_reg[6]~1_combout\,
	ena => \flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg[6]~reg0_q\);

-- Location: LCCOMB_X33_Y1_N26
\output_reg[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_reg[7]~reg0feeder_combout\ = data(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(7),
	combout => \output_reg[7]~reg0feeder_combout\);

-- Location: FF_X33_Y1_N27
\output_reg[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output_reg[7]~reg0feeder_combout\,
	ena => \flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg[7]~reg0_q\);

ww_output_reg(0) <= \output_reg[0]~output_o\;

ww_output_reg(1) <= \output_reg[1]~output_o\;

ww_output_reg(2) <= \output_reg[2]~output_o\;

ww_output_reg(3) <= \output_reg[3]~output_o\;

ww_output_reg(4) <= \output_reg[4]~output_o\;

ww_output_reg(5) <= \output_reg[5]~output_o\;

ww_output_reg(6) <= \output_reg[6]~output_o\;

ww_output_reg(7) <= \output_reg[7]~output_o\;
END structure;


