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

-- DATE "10/17/2020 22:41:40"

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

ENTITY 	uart_transmit IS
    PORT (
	clk : IN std_logic;
	Tx : OUT std_logic;
	button : IN std_logic
	);
END uart_transmit;

-- Design Ports Information
-- Tx	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF uart_transmit IS
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
SIGNAL ww_Tx : std_logic;
SIGNAL ww_button : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Tx~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \count~2_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \count~3_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \count~4_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \count~5_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \i[0]~5_combout\ : std_logic;
SIGNAL \i[0]~6\ : std_logic;
SIGNAL \i[1]~7_combout\ : std_logic;
SIGNAL \i[1]~8\ : std_logic;
SIGNAL \i[2]~9_combout\ : std_logic;
SIGNAL \i[2]~10\ : std_logic;
SIGNAL \i[3]~11_combout\ : std_logic;
SIGNAL \i[3]~12\ : std_logic;
SIGNAL \i[4]~13_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \TxEnable~15_combout\ : std_logic;
SIGNAL \delay[0]~24_combout\ : std_logic;
SIGNAL \button~input_o\ : std_logic;
SIGNAL \TxEnable~9_combout\ : std_logic;
SIGNAL \TxEnable~7_combout\ : std_logic;
SIGNAL \TxEnable~8_combout\ : std_logic;
SIGNAL \TxEnable~10_combout\ : std_logic;
SIGNAL \TxEnable~11_combout\ : std_logic;
SIGNAL \delay[19]~64\ : std_logic;
SIGNAL \delay[20]~65_combout\ : std_logic;
SIGNAL \delay[20]~66\ : std_logic;
SIGNAL \delay[21]~67_combout\ : std_logic;
SIGNAL \delay[21]~68\ : std_logic;
SIGNAL \delay[22]~69_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \delay[22]~70\ : std_logic;
SIGNAL \delay[23]~71_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \delay~26_combout\ : std_logic;
SIGNAL \delay[0]~25\ : std_logic;
SIGNAL \delay[1]~27_combout\ : std_logic;
SIGNAL \delay[1]~28\ : std_logic;
SIGNAL \delay[2]~29_combout\ : std_logic;
SIGNAL \delay[2]~30\ : std_logic;
SIGNAL \delay[3]~31_combout\ : std_logic;
SIGNAL \delay[3]~32\ : std_logic;
SIGNAL \delay[4]~33_combout\ : std_logic;
SIGNAL \delay[4]~34\ : std_logic;
SIGNAL \delay[5]~35_combout\ : std_logic;
SIGNAL \delay[5]~36\ : std_logic;
SIGNAL \delay[6]~37_combout\ : std_logic;
SIGNAL \delay[6]~38\ : std_logic;
SIGNAL \delay[7]~39_combout\ : std_logic;
SIGNAL \delay[7]~40\ : std_logic;
SIGNAL \delay[8]~41_combout\ : std_logic;
SIGNAL \delay[8]~42\ : std_logic;
SIGNAL \delay[9]~43_combout\ : std_logic;
SIGNAL \delay[9]~44\ : std_logic;
SIGNAL \delay[10]~45_combout\ : std_logic;
SIGNAL \delay[10]~46\ : std_logic;
SIGNAL \delay[11]~47_combout\ : std_logic;
SIGNAL \delay[11]~48\ : std_logic;
SIGNAL \delay[12]~49_combout\ : std_logic;
SIGNAL \delay[12]~50\ : std_logic;
SIGNAL \delay[13]~52\ : std_logic;
SIGNAL \delay[14]~53_combout\ : std_logic;
SIGNAL \delay[14]~54\ : std_logic;
SIGNAL \delay[15]~55_combout\ : std_logic;
SIGNAL \delay[15]~56\ : std_logic;
SIGNAL \delay[16]~57_combout\ : std_logic;
SIGNAL \delay[16]~58\ : std_logic;
SIGNAL \delay[17]~59_combout\ : std_logic;
SIGNAL \delay[17]~60\ : std_logic;
SIGNAL \delay[18]~61_combout\ : std_logic;
SIGNAL \delay[18]~62\ : std_logic;
SIGNAL \delay[19]~63_combout\ : std_logic;
SIGNAL \always1~0_combout\ : std_logic;
SIGNAL \delay[13]~51_combout\ : std_logic;
SIGNAL \TxEnable~12_combout\ : std_logic;
SIGNAL \TxEnable~13_combout\ : std_logic;
SIGNAL \TxEnable~14_combout\ : std_logic;
SIGNAL \TxEnable~16_combout\ : std_logic;
SIGNAL \TxEnable.01~q\ : std_logic;
SIGNAL \TxEnable~6_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Tx~0_combout\ : std_logic;
SIGNAL \Tx~reg0_q\ : std_logic;
SIGNAL i : std_logic_vector(4 DOWNTO 0);
SIGNAL delay : std_logic_vector(23 DOWNTO 0);
SIGNAL count : std_logic_vector(11 DOWNTO 0);
SIGNAL \ALT_INV_Tx~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
Tx <= ww_Tx;
ww_button <= button;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_Tx~reg0_q\ <= NOT \Tx~reg0_q\;

-- Location: IOOBUF_X28_Y24_N9
\Tx~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Tx~reg0_q\,
	devoe => ww_devoe,
	o => \Tx~output_o\);

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

-- Location: LCCOMB_X13_Y7_N6
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = count(0) $ (VCC)
-- \Add2~1\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X14_Y7_N10
\count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~1_combout\ = (\Add2~0_combout\ & (((!\Equal1~1_combout\) # (!\Equal1~0_combout\)) # (!\Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Equal1~0_combout\,
	datac => \Add2~0_combout\,
	datad => \Equal1~1_combout\,
	combout => \count~1_combout\);

-- Location: FF_X14_Y7_N11
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~1_combout\,
	ena => \TxEnable.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X13_Y7_N8
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (count(1) & (!\Add2~1\)) # (!count(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: FF_X13_Y7_N9
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~2_combout\,
	ena => \TxEnable.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X14_Y7_N24
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!count(3) & (count(2) & (!count(0) & !count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(2),
	datac => count(0),
	datad => count(1),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X13_Y7_N10
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (count(2) & (\Add2~3\ $ (GND))) # (!count(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((count(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X14_Y7_N8
\count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~0_combout\ = (\Add2~4_combout\ & (((!\Equal1~2_combout\) # (!\Equal1~0_combout\)) # (!\Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal1~0_combout\,
	datac => \Add2~4_combout\,
	datad => \Equal1~2_combout\,
	combout => \count~0_combout\);

-- Location: FF_X14_Y7_N9
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~0_combout\,
	ena => \TxEnable.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X13_Y7_N12
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (count(3) & (!\Add2~5\)) # (!count(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: FF_X13_Y7_N13
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~6_combout\,
	ena => \TxEnable.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X13_Y7_N14
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (count(4) & (\Add2~7\ $ (GND))) # (!count(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((count(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: FF_X13_Y7_N15
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~8_combout\,
	ena => \TxEnable.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X13_Y7_N16
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (count(5) & (!\Add2~9\)) # (!count(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X14_Y7_N18
\count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~2_combout\ = (\Add2~10_combout\ & (((!\Equal1~1_combout\) # (!\Equal1~0_combout\)) # (!\Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Equal1~0_combout\,
	datac => \Add2~10_combout\,
	datad => \Equal1~1_combout\,
	combout => \count~2_combout\);

-- Location: FF_X14_Y7_N19
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~2_combout\,
	ena => \TxEnable.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X13_Y7_N18
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (count(6) & (\Add2~11\ $ (GND))) # (!count(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((count(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X14_Y7_N4
\count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~3_combout\ = (\Add2~12_combout\ & (((!\Equal1~2_combout\) # (!\Equal1~0_combout\)) # (!\Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal1~0_combout\,
	datac => \Add2~12_combout\,
	datad => \Equal1~2_combout\,
	combout => \count~3_combout\);

-- Location: FF_X14_Y7_N5
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~3_combout\,
	ena => \TxEnable.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X13_Y7_N20
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (count(7) & (!\Add2~13\)) # (!count(7) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: FF_X13_Y7_N21
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~14_combout\,
	ena => \TxEnable.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X14_Y7_N6
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!count(4) & (count(5) & (count(6) & !count(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datab => count(5),
	datac => count(6),
	datad => count(7),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X13_Y7_N22
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (count(8) & (\Add2~15\ $ (GND))) # (!count(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((count(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X14_Y7_N20
\count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~4_combout\ = (\Add2~16_combout\ & (((!\Equal1~2_combout\) # (!\Equal1~0_combout\)) # (!\Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal1~0_combout\,
	datac => \Add2~16_combout\,
	datad => \Equal1~2_combout\,
	combout => \count~4_combout\);

-- Location: FF_X14_Y7_N21
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~4_combout\,
	ena => \TxEnable.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X13_Y7_N24
\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (count(9) & (!\Add2~17\)) # (!count(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X14_Y7_N22
\count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~5_combout\ = (\Add2~18_combout\ & (((!\Equal1~2_combout\) # (!\Equal1~0_combout\)) # (!\Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal1~0_combout\,
	datac => \Add2~18_combout\,
	datad => \Equal1~2_combout\,
	combout => \count~5_combout\);

-- Location: FF_X14_Y7_N23
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~5_combout\,
	ena => \TxEnable.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X13_Y7_N26
\Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (count(10) & (\Add2~19\ $ (GND))) # (!count(10) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((count(10) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: FF_X13_Y7_N27
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~20_combout\,
	ena => \TxEnable.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X13_Y7_N28
\Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = \Add2~21\ $ (count(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count(11),
	cin => \Add2~21\,
	combout => \Add2~22_combout\);

-- Location: FF_X13_Y7_N29
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~22_combout\,
	ena => \TxEnable.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X14_Y7_N12
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (count(9) & (count(8) & (!count(10) & !count(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datab => count(8),
	datac => count(10),
	datad => count(11),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X24_Y10_N14
\i[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[0]~5_combout\ = i(0) $ (VCC)
-- \i[0]~6\ = CARRY(i(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i(0),
	datad => VCC,
	combout => \i[0]~5_combout\,
	cout => \i[0]~6\);

-- Location: FF_X24_Y10_N15
\i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[0]~5_combout\,
	sclr => \LessThan1~0_combout\,
	ena => \TxEnable~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(0));

-- Location: LCCOMB_X24_Y10_N16
\i[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[1]~7_combout\ = (i(1) & (!\i[0]~6\)) # (!i(1) & ((\i[0]~6\) # (GND)))
-- \i[1]~8\ = CARRY((!\i[0]~6\) # (!i(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(1),
	datad => VCC,
	cin => \i[0]~6\,
	combout => \i[1]~7_combout\,
	cout => \i[1]~8\);

-- Location: FF_X24_Y10_N17
\i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[1]~7_combout\,
	sclr => \LessThan1~0_combout\,
	ena => \TxEnable~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(1));

-- Location: LCCOMB_X24_Y10_N18
\i[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[2]~9_combout\ = (i(2) & (\i[1]~8\ $ (GND))) # (!i(2) & (!\i[1]~8\ & VCC))
-- \i[2]~10\ = CARRY((i(2) & !\i[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(2),
	datad => VCC,
	cin => \i[1]~8\,
	combout => \i[2]~9_combout\,
	cout => \i[2]~10\);

-- Location: FF_X24_Y10_N19
\i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[2]~9_combout\,
	sclr => \LessThan1~0_combout\,
	ena => \TxEnable~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(2));

-- Location: LCCOMB_X24_Y10_N20
\i[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[3]~11_combout\ = (i(3) & (!\i[2]~10\)) # (!i(3) & ((\i[2]~10\) # (GND)))
-- \i[3]~12\ = CARRY((!\i[2]~10\) # (!i(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(3),
	datad => VCC,
	cin => \i[2]~10\,
	combout => \i[3]~11_combout\,
	cout => \i[3]~12\);

-- Location: FF_X24_Y10_N21
\i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[3]~11_combout\,
	sclr => \LessThan1~0_combout\,
	ena => \TxEnable~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(3));

-- Location: LCCOMB_X24_Y10_N22
\i[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[4]~13_combout\ = i(4) $ (!\i[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(4),
	cin => \i[3]~12\,
	combout => \i[4]~13_combout\);

-- Location: FF_X24_Y10_N23
\i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[4]~13_combout\,
	sclr => \LessThan1~0_combout\,
	ena => \TxEnable~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(4));

-- Location: LCCOMB_X24_Y10_N2
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (i(4)) # ((i(3) & ((i(2)) # (i(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(3),
	datab => i(2),
	datac => i(4),
	datad => i(1),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X24_Y10_N10
\TxEnable~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \TxEnable~15_combout\ = (((!\Equal1~1_combout\) # (!\Equal1~0_combout\)) # (!\LessThan1~0_combout\)) # (!\Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \LessThan1~0_combout\,
	datac => \Equal1~0_combout\,
	datad => \Equal1~1_combout\,
	combout => \TxEnable~15_combout\);

-- Location: LCCOMB_X25_Y11_N8
\delay[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay[0]~24_combout\ = delay(0) $ (VCC)
-- \delay[0]~25\ = CARRY(delay(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => delay(0),
	datad => VCC,
	combout => \delay[0]~24_combout\,
	cout => \delay[0]~25\);

-- Location: IOIBUF_X34_Y12_N8
\button~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button,
	o => \button~input_o\);

-- Location: LCCOMB_X25_Y11_N6
\TxEnable~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \TxEnable~9_combout\ = (!delay(11) & (!delay(8) & (!delay(9) & !delay(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay(11),
	datab => delay(8),
	datac => delay(9),
	datad => delay(12),
	combout => \TxEnable~9_combout\);

-- Location: LCCOMB_X25_Y11_N0
\TxEnable~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \TxEnable~7_combout\ = (!delay(1) & (!delay(3) & (!delay(0) & !delay(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay(1),
	datab => delay(3),
	datac => delay(0),
	datad => delay(2),
	combout => \TxEnable~7_combout\);

-- Location: LCCOMB_X24_Y11_N16
\TxEnable~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \TxEnable~8_combout\ = (!delay(6) & (!delay(5) & (!delay(7) & !delay(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay(6),
	datab => delay(5),
	datac => delay(7),
	datad => delay(4),
	combout => \TxEnable~8_combout\);

-- Location: LCCOMB_X25_Y10_N24
\TxEnable~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \TxEnable~10_combout\ = (!delay(17) & (!delay(16) & (!delay(14) & !delay(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay(17),
	datab => delay(16),
	datac => delay(14),
	datad => delay(15),
	combout => \TxEnable~10_combout\);

-- Location: LCCOMB_X25_Y11_N4
\TxEnable~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \TxEnable~11_combout\ = (\TxEnable~9_combout\ & (\TxEnable~7_combout\ & (\TxEnable~8_combout\ & \TxEnable~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TxEnable~9_combout\,
	datab => \TxEnable~7_combout\,
	datac => \TxEnable~8_combout\,
	datad => \TxEnable~10_combout\,
	combout => \TxEnable~11_combout\);

-- Location: LCCOMB_X25_Y10_N14
\delay[19]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay[19]~63_combout\ = (delay(19) & ((\always1~0_combout\ & (\delay[18]~62\ & VCC)) # (!\always1~0_combout\ & (!\delay[18]~62\)))) # (!delay(19) & ((\always1~0_combout\ & (!\delay[18]~62\)) # (!\always1~0_combout\ & ((\delay[18]~62\) # (GND)))))
-- \delay[19]~64\ = CARRY((delay(19) & (!\always1~0_combout\ & !\delay[18]~62\)) # (!delay(19) & ((!\delay[18]~62\) # (!\always1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay(19),
	datab => \always1~0_combout\,
	datad => VCC,
	cin => \delay[18]~62\,
	combout => \delay[19]~63_combout\,
	cout => \delay[19]~64\);

-- Location: LCCOMB_X25_Y10_N16
\delay[20]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay[20]~65_combout\ = ((delay(20) $ (\always1~0_combout\ $ (!\delay[19]~64\)))) # (GND)
-- \delay[20]~66\ = CARRY((delay(20) & ((\always1~0_combout\) # (!\delay[19]~64\))) # (!delay(20) & (\always1~0_combout\ & !\delay[19]~64\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay(20),
	datab => \always1~0_combout\,
	datad => VCC,
	cin => \delay[19]~64\,
	combout => \delay[20]~65_combout\,
	cout => \delay[20]~66\);

-- Location: FF_X25_Y10_N17
\delay[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay[20]~65_combout\,
	ena => \delay~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(20));

-- Location: LCCOMB_X25_Y10_N18
\delay[21]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay[21]~67_combout\ = (delay(21) & ((\always1~0_combout\ & (\delay[20]~66\ & VCC)) # (!\always1~0_combout\ & (!\delay[20]~66\)))) # (!delay(21) & ((\always1~0_combout\ & (!\delay[20]~66\)) # (!\always1~0_combout\ & ((\delay[20]~66\) # (GND)))))
-- \delay[21]~68\ = CARRY((delay(21) & (!\always1~0_combout\ & !\delay[20]~66\)) # (!delay(21) & ((!\delay[20]~66\) # (!\always1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay(21),
	datab => \always1~0_combout\,
	datad => VCC,
	cin => \delay[20]~66\,
	combout => \delay[21]~67_combout\,
	cout => \delay[21]~68\);

-- Location: FF_X25_Y10_N19
\delay[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay[21]~67_combout\,
	ena => \delay~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(21));

-- Location: LCCOMB_X25_Y10_N20
\delay[22]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay[22]~69_combout\ = ((\always1~0_combout\ $ (delay(22) $ (!\delay[21]~68\)))) # (GND)
-- \delay[22]~70\ = CARRY((\always1~0_combout\ & ((delay(22)) # (!\delay[21]~68\))) # (!\always1~0_combout\ & (delay(22) & !\delay[21]~68\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always1~0_combout\,
	datab => delay(22),
	datad => VCC,
	cin => \delay[21]~68\,
	combout => \delay[22]~69_combout\,
	cout => \delay[22]~70\);

-- Location: FF_X25_Y10_N21
\delay[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay[22]~69_combout\,
	ena => \delay~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(22));

-- Location: LCCOMB_X25_Y10_N30
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (delay(18)) # ((delay(20)) # ((delay(13)) # (delay(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay(18),
	datab => delay(20),
	datac => delay(13),
	datad => delay(10),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X25_Y10_N22
\delay[23]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay[23]~71_combout\ = \always1~0_combout\ $ (\delay[22]~70\ $ (delay(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \always1~0_combout\,
	datad => delay(23),
	cin => \delay[22]~70\,
	combout => \delay[23]~71_combout\);

-- Location: FF_X25_Y10_N23
\delay[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay[23]~71_combout\,
	ena => \delay~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(23));

-- Location: LCCOMB_X25_Y10_N28
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (delay(21)) # ((delay(22)) # ((\LessThan0~0_combout\) # (delay(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay(21),
	datab => delay(22),
	datac => \LessThan0~0_combout\,
	datad => delay(23),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X25_Y10_N26
\delay~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay~26_combout\ = ((delay(19)) # ((\LessThan0~1_combout\) # (!\TxEnable~11_combout\))) # (!\button~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button~input_o\,
	datab => delay(19),
	datac => \TxEnable~11_combout\,
	datad => \LessThan0~1_combout\,
	combout => \delay~26_combout\);

-- Location: FF_X25_Y11_N9
\delay[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay[0]~24_combout\,
	ena => \delay~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(0));

-- Location: LCCOMB_X25_Y11_N10
\delay[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay[1]~27_combout\ = (delay(1) & ((\always1~0_combout\ & (\delay[0]~25\ & VCC)) # (!\always1~0_combout\ & (!\delay[0]~25\)))) # (!delay(1) & ((\always1~0_combout\ & (!\delay[0]~25\)) # (!\always1~0_combout\ & ((\delay[0]~25\) # (GND)))))
-- \delay[1]~28\ = CARRY((delay(1) & (!\always1~0_combout\ & !\delay[0]~25\)) # (!delay(1) & ((!\delay[0]~25\) # (!\always1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay(1),
	datab => \always1~0_combout\,
	datad => VCC,
	cin => \delay[0]~25\,
	combout => \delay[1]~27_combout\,
	cout => \delay[1]~28\);

-- Location: FF_X25_Y11_N11
\delay[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay[1]~27_combout\,
	ena => \delay~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(1));

-- Location: LCCOMB_X25_Y11_N12
\delay[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay[2]~29_combout\ = ((delay(2) $ (\always1~0_combout\ $ (!\delay[1]~28\)))) # (GND)
-- \delay[2]~30\ = CARRY((delay(2) & ((\always1~0_combout\) # (!\delay[1]~28\))) # (!delay(2) & (\always1~0_combout\ & !\delay[1]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay(2),
	datab => \always1~0_combout\,
	datad => VCC,
	cin => \delay[1]~28\,
	combout => \delay[2]~29_combout\,
	cout => \delay[2]~30\);

-- Location: FF_X25_Y11_N13
\delay[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay[2]~29_combout\,
	ena => \delay~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(2));

-- Location: LCCOMB_X25_Y11_N14
\delay[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay[3]~31_combout\ = (delay(3) & ((\always1~0_combout\ & (\delay[2]~30\ & VCC)) # (!\always1~0_combout\ & (!\delay[2]~30\)))) # (!delay(3) & ((\always1~0_combout\ & (!\delay[2]~30\)) # (!\always1~0_combout\ & ((\delay[2]~30\) # (GND)))))
-- \delay[3]~32\ = CARRY((delay(3) & (!\always1~0_combout\ & !\delay[2]~30\)) # (!delay(3) & ((!\delay[2]~30\) # (!\always1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay(3),
	datab => \always1~0_combout\,
	datad => VCC,
	cin => \delay[2]~30\,
	combout => \delay[3]~31_combout\,
	cout => \delay[3]~32\);

-- Location: FF_X25_Y11_N15
\delay[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay[3]~31_combout\,
	ena => \delay~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(3));

-- Location: LCCOMB_X25_Y11_N16
\delay[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay[4]~33_combout\ = ((delay(4) $ (\always1~0_combout\ $ (!\delay[3]~32\)))) # (GND)
-- \delay[4]~34\ = CARRY((delay(4) & ((\always1~0_combout\) # (!\delay[3]~32\))) # (!delay(4) & (\always1~0_combout\ & !\delay[3]~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay(4),
	datab => \always1~0_combout\,
	datad => VCC,
	cin => \delay[3]~32\,
	combout => \delay[4]~33_combout\,
	cout => \delay[4]~34\);

-- Location: FF_X25_Y11_N17
\delay[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay[4]~33_combout\,
	ena => \delay~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(4));

-- Location: LCCOMB_X25_Y11_N18
\delay[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay[5]~35_combout\ = (delay(5) & ((\always1~0_combout\ & (\delay[4]~34\ & VCC)) # (!\always1~0_combout\ & (!\delay[4]~34\)))) # (!delay(5) & ((\always1~0_combout\ & (!\delay[4]~34\)) # (!\always1~0_combout\ & ((\delay[4]~34\) # (GND)))))
-- \delay[5]~36\ = CARRY((delay(5) & (!\always1~0_combout\ & !\delay[4]~34\)) # (!delay(5) & ((!\delay[4]~34\) # (!\always1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay(5),
	datab => \always1~0_combout\,
	datad => VCC,
	cin => \delay[4]~34\,
	combout => \delay[5]~35_combout\,
	cout => \delay[5]~36\);

-- Location: FF_X25_Y11_N19
\delay[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay[5]~35_combout\,
	ena => \delay~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(5));

-- Location: LCCOMB_X25_Y11_N20
\delay[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay[6]~37_combout\ = ((delay(6) $ (\always1~0_combout\ $ (!\delay[5]~36\)))) # (GND)
-- \delay[6]~38\ = CARRY((delay(6) & ((\always1~0_combout\) # (!\delay[5]~36\))) # (!delay(6) & (\always1~0_combout\ & !\delay[5]~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay(6),
	datab => \always1~0_combout\,
	datad => VCC,
	cin => \delay[5]~36\,
	combout => \delay[6]~37_combout\,
	cout => \delay[6]~38\);

-- Location: FF_X25_Y11_N21
\delay[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay[6]~37_combout\,
	ena => \delay~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(6));

-- Location: LCCOMB_X25_Y11_N22
\delay[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay[7]~39_combout\ = (delay(7) & ((\always1~0_combout\ & (\delay[6]~38\ & VCC)) # (!\always1~0_combout\ & (!\delay[6]~38\)))) # (!delay(7) & ((\always1~0_combout\ & (!\delay[6]~38\)) # (!\always1~0_combout\ & ((\delay[6]~38\) # (GND)))))
-- \delay[7]~40\ = CARRY((delay(7) & (!\always1~0_combout\ & !\delay[6]~38\)) # (!delay(7) & ((!\delay[6]~38\) # (!\always1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay(7),
	datab => \always1~0_combout\,
	datad => VCC,
	cin => \delay[6]~38\,
	combout => \delay[7]~39_combout\,
	cout => \delay[7]~40\);

-- Location: FF_X25_Y11_N23
\delay[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay[7]~39_combout\,
	ena => \delay~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(7));

-- Location: LCCOMB_X25_Y11_N24
\delay[8]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay[8]~41_combout\ = ((\always1~0_combout\ $ (delay(8) $ (!\delay[7]~40\)))) # (GND)
-- \delay[8]~42\ = CARRY((\always1~0_combout\ & ((delay(8)) # (!\delay[7]~40\))) # (!\always1~0_combout\ & (delay(8) & !\delay[7]~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always1~0_combout\,
	datab => delay(8),
	datad => VCC,
	cin => \delay[7]~40\,
	combout => \delay[8]~41_combout\,
	cout => \delay[8]~42\);

-- Location: FF_X25_Y11_N25
\delay[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay[8]~41_combout\,
	ena => \delay~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(8));

-- Location: LCCOMB_X25_Y11_N26
\delay[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay[9]~43_combout\ = (delay(9) & ((\always1~0_combout\ & (\delay[8]~42\ & VCC)) # (!\always1~0_combout\ & (!\delay[8]~42\)))) # (!delay(9) & ((\always1~0_combout\ & (!\delay[8]~42\)) # (!\always1~0_combout\ & ((\delay[8]~42\) # (GND)))))
-- \delay[9]~44\ = CARRY((delay(9) & (!\always1~0_combout\ & !\delay[8]~42\)) # (!delay(9) & ((!\delay[8]~42\) # (!\always1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay(9),
	datab => \always1~0_combout\,
	datad => VCC,
	cin => \delay[8]~42\,
	combout => \delay[9]~43_combout\,
	cout => \delay[9]~44\);

-- Location: FF_X25_Y11_N27
\delay[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay[9]~43_combout\,
	ena => \delay~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(9));

-- Location: LCCOMB_X25_Y11_N28
\delay[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay[10]~45_combout\ = ((\always1~0_combout\ $ (delay(10) $ (!\delay[9]~44\)))) # (GND)
-- \delay[10]~46\ = CARRY((\always1~0_combout\ & ((delay(10)) # (!\delay[9]~44\))) # (!\always1~0_combout\ & (delay(10) & !\delay[9]~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always1~0_combout\,
	datab => delay(10),
	datad => VCC,
	cin => \delay[9]~44\,
	combout => \delay[10]~45_combout\,
	cout => \delay[10]~46\);

-- Location: FF_X25_Y11_N29
\delay[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay[10]~45_combout\,
	ena => \delay~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(10));

-- Location: LCCOMB_X25_Y11_N30
\delay[11]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay[11]~47_combout\ = (delay(11) & ((\always1~0_combout\ & (\delay[10]~46\ & VCC)) # (!\always1~0_combout\ & (!\delay[10]~46\)))) # (!delay(11) & ((\always1~0_combout\ & (!\delay[10]~46\)) # (!\always1~0_combout\ & ((\delay[10]~46\) # (GND)))))
-- \delay[11]~48\ = CARRY((delay(11) & (!\always1~0_combout\ & !\delay[10]~46\)) # (!delay(11) & ((!\delay[10]~46\) # (!\always1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay(11),
	datab => \always1~0_combout\,
	datad => VCC,
	cin => \delay[10]~46\,
	combout => \delay[11]~47_combout\,
	cout => \delay[11]~48\);

-- Location: FF_X25_Y11_N31
\delay[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay[11]~47_combout\,
	ena => \delay~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(11));

-- Location: LCCOMB_X25_Y10_N0
\delay[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay[12]~49_combout\ = ((delay(12) $ (\always1~0_combout\ $ (!\delay[11]~48\)))) # (GND)
-- \delay[12]~50\ = CARRY((delay(12) & ((\always1~0_combout\) # (!\delay[11]~48\))) # (!delay(12) & (\always1~0_combout\ & !\delay[11]~48\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay(12),
	datab => \always1~0_combout\,
	datad => VCC,
	cin => \delay[11]~48\,
	combout => \delay[12]~49_combout\,
	cout => \delay[12]~50\);

-- Location: FF_X25_Y10_N1
\delay[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay[12]~49_combout\,
	ena => \delay~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(12));

-- Location: LCCOMB_X25_Y10_N2
\delay[13]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay[13]~51_combout\ = (delay(13) & ((\always1~0_combout\ & (\delay[12]~50\ & VCC)) # (!\always1~0_combout\ & (!\delay[12]~50\)))) # (!delay(13) & ((\always1~0_combout\ & (!\delay[12]~50\)) # (!\always1~0_combout\ & ((\delay[12]~50\) # (GND)))))
-- \delay[13]~52\ = CARRY((delay(13) & (!\always1~0_combout\ & !\delay[12]~50\)) # (!delay(13) & ((!\delay[12]~50\) # (!\always1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay(13),
	datab => \always1~0_combout\,
	datad => VCC,
	cin => \delay[12]~50\,
	combout => \delay[13]~51_combout\,
	cout => \delay[13]~52\);

-- Location: LCCOMB_X25_Y10_N4
\delay[14]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay[14]~53_combout\ = ((delay(14) $ (\always1~0_combout\ $ (!\delay[13]~52\)))) # (GND)
-- \delay[14]~54\ = CARRY((delay(14) & ((\always1~0_combout\) # (!\delay[13]~52\))) # (!delay(14) & (\always1~0_combout\ & !\delay[13]~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay(14),
	datab => \always1~0_combout\,
	datad => VCC,
	cin => \delay[13]~52\,
	combout => \delay[14]~53_combout\,
	cout => \delay[14]~54\);

-- Location: FF_X25_Y10_N5
\delay[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay[14]~53_combout\,
	ena => \delay~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(14));

-- Location: LCCOMB_X25_Y10_N6
\delay[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay[15]~55_combout\ = (delay(15) & ((\always1~0_combout\ & (\delay[14]~54\ & VCC)) # (!\always1~0_combout\ & (!\delay[14]~54\)))) # (!delay(15) & ((\always1~0_combout\ & (!\delay[14]~54\)) # (!\always1~0_combout\ & ((\delay[14]~54\) # (GND)))))
-- \delay[15]~56\ = CARRY((delay(15) & (!\always1~0_combout\ & !\delay[14]~54\)) # (!delay(15) & ((!\delay[14]~54\) # (!\always1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay(15),
	datab => \always1~0_combout\,
	datad => VCC,
	cin => \delay[14]~54\,
	combout => \delay[15]~55_combout\,
	cout => \delay[15]~56\);

-- Location: FF_X25_Y10_N7
\delay[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay[15]~55_combout\,
	ena => \delay~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(15));

-- Location: LCCOMB_X25_Y10_N8
\delay[16]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay[16]~57_combout\ = ((delay(16) $ (\always1~0_combout\ $ (!\delay[15]~56\)))) # (GND)
-- \delay[16]~58\ = CARRY((delay(16) & ((\always1~0_combout\) # (!\delay[15]~56\))) # (!delay(16) & (\always1~0_combout\ & !\delay[15]~56\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay(16),
	datab => \always1~0_combout\,
	datad => VCC,
	cin => \delay[15]~56\,
	combout => \delay[16]~57_combout\,
	cout => \delay[16]~58\);

-- Location: FF_X25_Y10_N9
\delay[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay[16]~57_combout\,
	ena => \delay~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(16));

-- Location: LCCOMB_X25_Y10_N10
\delay[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay[17]~59_combout\ = (delay(17) & ((\always1~0_combout\ & (\delay[16]~58\ & VCC)) # (!\always1~0_combout\ & (!\delay[16]~58\)))) # (!delay(17) & ((\always1~0_combout\ & (!\delay[16]~58\)) # (!\always1~0_combout\ & ((\delay[16]~58\) # (GND)))))
-- \delay[17]~60\ = CARRY((delay(17) & (!\always1~0_combout\ & !\delay[16]~58\)) # (!delay(17) & ((!\delay[16]~58\) # (!\always1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay(17),
	datab => \always1~0_combout\,
	datad => VCC,
	cin => \delay[16]~58\,
	combout => \delay[17]~59_combout\,
	cout => \delay[17]~60\);

-- Location: FF_X25_Y10_N11
\delay[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay[17]~59_combout\,
	ena => \delay~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(17));

-- Location: LCCOMB_X25_Y10_N12
\delay[18]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay[18]~61_combout\ = ((delay(18) $ (\always1~0_combout\ $ (!\delay[17]~60\)))) # (GND)
-- \delay[18]~62\ = CARRY((delay(18) & ((\always1~0_combout\) # (!\delay[17]~60\))) # (!delay(18) & (\always1~0_combout\ & !\delay[17]~60\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay(18),
	datab => \always1~0_combout\,
	datad => VCC,
	cin => \delay[17]~60\,
	combout => \delay[18]~61_combout\,
	cout => \delay[18]~62\);

-- Location: FF_X25_Y10_N13
\delay[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay[18]~61_combout\,
	ena => \delay~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(18));

-- Location: FF_X25_Y10_N15
\delay[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay[19]~63_combout\,
	ena => \delay~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(19));

-- Location: LCCOMB_X25_Y11_N2
\always1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~0_combout\ = (\button~input_o\ & ((delay(19)) # ((\LessThan0~1_combout\) # (!\TxEnable~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay(19),
	datab => \button~input_o\,
	datac => \TxEnable~11_combout\,
	datad => \LessThan0~1_combout\,
	combout => \always1~0_combout\);

-- Location: FF_X25_Y10_N3
\delay[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay[13]~51_combout\,
	ena => \delay~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(13));

-- Location: LCCOMB_X24_Y10_N30
\TxEnable~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \TxEnable~12_combout\ = (delay(13) & (delay(18) & (!\TxEnable.01~q\ & delay(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay(13),
	datab => delay(18),
	datac => \TxEnable.01~q\,
	datad => delay(10),
	combout => \TxEnable~12_combout\);

-- Location: LCCOMB_X24_Y10_N8
\TxEnable~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \TxEnable~13_combout\ = (delay(23) & (delay(21) & (delay(22) & delay(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay(23),
	datab => delay(21),
	datac => delay(22),
	datad => delay(20),
	combout => \TxEnable~13_combout\);

-- Location: LCCOMB_X24_Y10_N0
\TxEnable~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \TxEnable~14_combout\ = (\TxEnable~12_combout\ & (!delay(19) & (\TxEnable~13_combout\ & \TxEnable~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TxEnable~12_combout\,
	datab => delay(19),
	datac => \TxEnable~13_combout\,
	datad => \TxEnable~11_combout\,
	combout => \TxEnable~14_combout\);

-- Location: LCCOMB_X24_Y10_N26
\TxEnable~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \TxEnable~16_combout\ = (\TxEnable~14_combout\) # ((\TxEnable~15_combout\ & \TxEnable.01~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TxEnable~15_combout\,
	datac => \TxEnable.01~q\,
	datad => \TxEnable~14_combout\,
	combout => \TxEnable~16_combout\);

-- Location: FF_X24_Y10_N27
\TxEnable.01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \TxEnable~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TxEnable.01~q\);

-- Location: LCCOMB_X24_Y10_N4
\TxEnable~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \TxEnable~6_combout\ = (\TxEnable.01~q\ & (\Equal1~0_combout\ & (\Equal1~2_combout\ & \Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TxEnable.01~q\,
	datab => \Equal1~0_combout\,
	datac => \Equal1~2_combout\,
	datad => \Equal1~1_combout\,
	combout => \TxEnable~6_combout\);

-- Location: LCCOMB_X24_Y10_N24
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\LessThan1~0_combout\) # ((i(1) & (i(0) $ (!i(2)))) # (!i(1) & (i(0) & !i(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => i(1),
	datac => i(0),
	datad => i(2),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X24_Y10_N12
\Tx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Tx~0_combout\ = (\TxEnable~6_combout\ & ((!\Mux0~0_combout\))) # (!\TxEnable~6_combout\ & (\Tx~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TxEnable~6_combout\,
	datac => \Tx~reg0_q\,
	datad => \Mux0~0_combout\,
	combout => \Tx~0_combout\);

-- Location: FF_X24_Y10_N13
\Tx~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Tx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tx~reg0_q\);

ww_Tx <= \Tx~output_o\;
END structure;


