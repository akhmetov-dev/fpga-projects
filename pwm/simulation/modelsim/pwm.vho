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

-- DATE "11/09/2020 19:45:26"

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

ENTITY 	pwm IS
    PORT (
	clk : IN std_logic;
	leds : OUT std_logic_vector(0 TO 3)
	);
END pwm;

-- Design Ports Information
-- leds[3]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[2]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[0]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pwm IS
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
SIGNAL ww_leds : std_logic_vector(0 TO 3);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \pwm_counter[6]~7_combout\ : std_logic;
SIGNAL \leds~0_combout\ : std_logic;
SIGNAL \leds~4_combout\ : std_logic;
SIGNAL \pwm_counter[6]~8\ : std_logic;
SIGNAL \pwm_counter[5]~9_combout\ : std_logic;
SIGNAL \pwm_counter[5]~10\ : std_logic;
SIGNAL \pwm_counter[4]~11_combout\ : std_logic;
SIGNAL \pwm_counter[4]~12\ : std_logic;
SIGNAL \pwm_counter[3]~13_combout\ : std_logic;
SIGNAL \pwm_counter[3]~14\ : std_logic;
SIGNAL \pwm_counter[2]~15_combout\ : std_logic;
SIGNAL \pwm_counter[2]~16\ : std_logic;
SIGNAL \pwm_counter[1]~17_combout\ : std_logic;
SIGNAL \pwm_counter[1]~18\ : std_logic;
SIGNAL \pwm_counter[0]~19_combout\ : std_logic;
SIGNAL \leds[3]~1_combout\ : std_logic;
SIGNAL \leds[3]~reg0_q\ : std_logic;
SIGNAL \leds~2_combout\ : std_logic;
SIGNAL \leds~3_combout\ : std_logic;
SIGNAL \leds[2]~reg0_q\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \leds[1]~reg0_q\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \leds[0]~reg0_q\ : std_logic;
SIGNAL pwm_counter : std_logic_vector(0 TO 6);
SIGNAL \ALT_INV_leds~4_combout\ : std_logic;
SIGNAL \ALT_INV_leds[3]~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_leds~4_combout\ <= NOT \leds~4_combout\;
\ALT_INV_leds[3]~reg0_q\ <= NOT \leds[3]~reg0_q\;

-- Location: IOOBUF_X34_Y7_N9
\leds[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_leds[3]~reg0_q\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\leds[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[2]~reg0_q\,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\leds[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[1]~reg0_q\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\leds[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[0]~reg0_q\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

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

-- Location: LCCOMB_X33_Y2_N10
\pwm_counter[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm_counter[6]~7_combout\ = pwm_counter(6) $ (VCC)
-- \pwm_counter[6]~8\ = CARRY(pwm_counter(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(6),
	datad => VCC,
	combout => \pwm_counter[6]~7_combout\,
	cout => \pwm_counter[6]~8\);

-- Location: LCCOMB_X33_Y2_N28
\leds~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds~0_combout\ = ((!pwm_counter(2) & (!pwm_counter(3) & !pwm_counter(4)))) # (!pwm_counter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(2),
	datab => pwm_counter(3),
	datac => pwm_counter(4),
	datad => pwm_counter(1),
	combout => \leds~0_combout\);

-- Location: LCCOMB_X33_Y2_N2
\leds~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds~4_combout\ = (\leds~0_combout\) # (!pwm_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => pwm_counter(0),
	datad => \leds~0_combout\,
	combout => \leds~4_combout\);

-- Location: FF_X33_Y2_N11
\pwm_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_counter[6]~7_combout\,
	sclr => \ALT_INV_leds~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(6));

-- Location: LCCOMB_X33_Y2_N12
\pwm_counter[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm_counter[5]~9_combout\ = (pwm_counter(5) & (!\pwm_counter[6]~8\)) # (!pwm_counter(5) & ((\pwm_counter[6]~8\) # (GND)))
-- \pwm_counter[5]~10\ = CARRY((!\pwm_counter[6]~8\) # (!pwm_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(5),
	datad => VCC,
	cin => \pwm_counter[6]~8\,
	combout => \pwm_counter[5]~9_combout\,
	cout => \pwm_counter[5]~10\);

-- Location: FF_X33_Y2_N13
\pwm_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_counter[5]~9_combout\,
	sclr => \ALT_INV_leds~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(5));

-- Location: LCCOMB_X33_Y2_N14
\pwm_counter[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm_counter[4]~11_combout\ = (pwm_counter(4) & (\pwm_counter[5]~10\ $ (GND))) # (!pwm_counter(4) & (!\pwm_counter[5]~10\ & VCC))
-- \pwm_counter[4]~12\ = CARRY((pwm_counter(4) & !\pwm_counter[5]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_counter(4),
	datad => VCC,
	cin => \pwm_counter[5]~10\,
	combout => \pwm_counter[4]~11_combout\,
	cout => \pwm_counter[4]~12\);

-- Location: FF_X33_Y2_N15
\pwm_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_counter[4]~11_combout\,
	sclr => \ALT_INV_leds~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(4));

-- Location: LCCOMB_X33_Y2_N16
\pwm_counter[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm_counter[3]~13_combout\ = (pwm_counter(3) & (!\pwm_counter[4]~12\)) # (!pwm_counter(3) & ((\pwm_counter[4]~12\) # (GND)))
-- \pwm_counter[3]~14\ = CARRY((!\pwm_counter[4]~12\) # (!pwm_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_counter(3),
	datad => VCC,
	cin => \pwm_counter[4]~12\,
	combout => \pwm_counter[3]~13_combout\,
	cout => \pwm_counter[3]~14\);

-- Location: FF_X33_Y2_N17
\pwm_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_counter[3]~13_combout\,
	sclr => \ALT_INV_leds~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(3));

-- Location: LCCOMB_X33_Y2_N18
\pwm_counter[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm_counter[2]~15_combout\ = (pwm_counter(2) & (\pwm_counter[3]~14\ $ (GND))) # (!pwm_counter(2) & (!\pwm_counter[3]~14\ & VCC))
-- \pwm_counter[2]~16\ = CARRY((pwm_counter(2) & !\pwm_counter[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_counter(2),
	datad => VCC,
	cin => \pwm_counter[3]~14\,
	combout => \pwm_counter[2]~15_combout\,
	cout => \pwm_counter[2]~16\);

-- Location: FF_X33_Y2_N19
\pwm_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_counter[2]~15_combout\,
	sclr => \ALT_INV_leds~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(2));

-- Location: LCCOMB_X33_Y2_N20
\pwm_counter[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm_counter[1]~17_combout\ = (pwm_counter(1) & (!\pwm_counter[2]~16\)) # (!pwm_counter(1) & ((\pwm_counter[2]~16\) # (GND)))
-- \pwm_counter[1]~18\ = CARRY((!\pwm_counter[2]~16\) # (!pwm_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_counter(1),
	datad => VCC,
	cin => \pwm_counter[2]~16\,
	combout => \pwm_counter[1]~17_combout\,
	cout => \pwm_counter[1]~18\);

-- Location: FF_X33_Y2_N21
\pwm_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_counter[1]~17_combout\,
	sclr => \ALT_INV_leds~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(1));

-- Location: LCCOMB_X33_Y2_N22
\pwm_counter[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm_counter[0]~19_combout\ = pwm_counter(0) $ (!\pwm_counter[1]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(0),
	cin => \pwm_counter[1]~18\,
	combout => \pwm_counter[0]~19_combout\);

-- Location: FF_X33_Y2_N23
\pwm_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_counter[0]~19_combout\,
	sclr => \ALT_INV_leds~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(0));

-- Location: LCCOMB_X33_Y2_N8
\leds[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds[3]~1_combout\ = ((\leds[3]~reg0_q\) # (\leds~0_combout\)) # (!pwm_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(0),
	datac => \leds[3]~reg0_q\,
	datad => \leds~0_combout\,
	combout => \leds[3]~1_combout\);

-- Location: FF_X33_Y2_N9
\leds[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \leds[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[3]~reg0_q\);

-- Location: LCCOMB_X33_Y2_N24
\leds~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds~2_combout\ = (pwm_counter(3) & ((pwm_counter(4)) # ((pwm_counter(5) & pwm_counter(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(4),
	datab => pwm_counter(3),
	datac => pwm_counter(5),
	datad => pwm_counter(6),
	combout => \leds~2_combout\);

-- Location: LCCOMB_X33_Y2_N26
\leds~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds~3_combout\ = (pwm_counter(0) & ((pwm_counter(2)) # ((pwm_counter(1)) # (\leds~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(2),
	datab => pwm_counter(1),
	datac => pwm_counter(0),
	datad => \leds~2_combout\,
	combout => \leds~3_combout\);

-- Location: FF_X33_Y2_N27
\leds[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \leds~3_combout\,
	ena => \leds~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[2]~reg0_q\);

-- Location: LCCOMB_X33_Y2_N0
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!pwm_counter(4) & (!pwm_counter(5) & (!pwm_counter(0) & !pwm_counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(4),
	datab => pwm_counter(5),
	datac => pwm_counter(0),
	datad => pwm_counter(3),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X33_Y2_N4
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!\LessThan1~0_combout\ & ((pwm_counter(0)) # ((pwm_counter(2) & pwm_counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(2),
	datab => pwm_counter(1),
	datac => pwm_counter(0),
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: FF_X33_Y2_N5
\leds[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LessThan1~1_combout\,
	ena => \leds~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[1]~reg0_q\);

-- Location: LCCOMB_X33_Y2_N6
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!pwm_counter(4) & (!pwm_counter(5) & !pwm_counter(6)))) # (!pwm_counter(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(4),
	datab => pwm_counter(3),
	datac => pwm_counter(5),
	datad => pwm_counter(6),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X33_Y2_N30
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (pwm_counter(1)) # ((pwm_counter(0)) # ((pwm_counter(2) & !\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(2),
	datab => pwm_counter(1),
	datac => pwm_counter(0),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: FF_X33_Y2_N31
\leds[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LessThan0~1_combout\,
	ena => \leds~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[0]~reg0_q\);

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(0) <= \leds[0]~output_o\;
END structure;


