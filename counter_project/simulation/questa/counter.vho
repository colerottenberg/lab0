-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition"

-- DATE "01/28/2024 18:41:03"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	counter_circuit IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	led : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END counter_circuit;

-- Design Ports Information
-- led[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF counter_circuit IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_led : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clock_div_inst|temp_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \led[0]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \led[4]~output_o\ : std_logic;
SIGNAL \led[5]~output_o\ : std_logic;
SIGNAL \led[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \clock_div_inst|Add0~0_combout\ : std_logic;
SIGNAL \clock_div_inst|counter~12_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \clock_div_inst|Add0~1\ : std_logic;
SIGNAL \clock_div_inst|Add0~2_combout\ : std_logic;
SIGNAL \clock_div_inst|Add0~3\ : std_logic;
SIGNAL \clock_div_inst|Add0~4_combout\ : std_logic;
SIGNAL \clock_div_inst|Add0~5\ : std_logic;
SIGNAL \clock_div_inst|Add0~6_combout\ : std_logic;
SIGNAL \clock_div_inst|Add0~7\ : std_logic;
SIGNAL \clock_div_inst|Add0~8_combout\ : std_logic;
SIGNAL \clock_div_inst|Add0~9\ : std_logic;
SIGNAL \clock_div_inst|Add0~10_combout\ : std_logic;
SIGNAL \clock_div_inst|Add0~11\ : std_logic;
SIGNAL \clock_div_inst|Add0~12_combout\ : std_logic;
SIGNAL \clock_div_inst|counter~11_combout\ : std_logic;
SIGNAL \clock_div_inst|Add0~13\ : std_logic;
SIGNAL \clock_div_inst|Add0~14_combout\ : std_logic;
SIGNAL \clock_div_inst|Add0~15\ : std_logic;
SIGNAL \clock_div_inst|Add0~16_combout\ : std_logic;
SIGNAL \clock_div_inst|Equal0~5_combout\ : std_logic;
SIGNAL \clock_div_inst|Equal0~6_combout\ : std_logic;
SIGNAL \clock_div_inst|Add0~17\ : std_logic;
SIGNAL \clock_div_inst|Add0~18_combout\ : std_logic;
SIGNAL \clock_div_inst|Add0~19\ : std_logic;
SIGNAL \clock_div_inst|Add0~20_combout\ : std_logic;
SIGNAL \clock_div_inst|Add0~21\ : std_logic;
SIGNAL \clock_div_inst|Add0~22_combout\ : std_logic;
SIGNAL \clock_div_inst|counter~10_combout\ : std_logic;
SIGNAL \clock_div_inst|Add0~23\ : std_logic;
SIGNAL \clock_div_inst|Add0~24_combout\ : std_logic;
SIGNAL \clock_div_inst|counter~9_combout\ : std_logic;
SIGNAL \clock_div_inst|Add0~25\ : std_logic;
SIGNAL \clock_div_inst|Add0~26_combout\ : std_logic;
SIGNAL \clock_div_inst|counter~8_combout\ : std_logic;
SIGNAL \clock_div_inst|Add0~27\ : std_logic;
SIGNAL \clock_div_inst|Add0~28_combout\ : std_logic;
SIGNAL \clock_div_inst|counter~7_combout\ : std_logic;
SIGNAL \clock_div_inst|Add0~29\ : std_logic;
SIGNAL \clock_div_inst|Add0~30_combout\ : std_logic;
SIGNAL \clock_div_inst|Add0~31\ : std_logic;
SIGNAL \clock_div_inst|Add0~32_combout\ : std_logic;
SIGNAL \clock_div_inst|counter~6_combout\ : std_logic;
SIGNAL \clock_div_inst|Add0~33\ : std_logic;
SIGNAL \clock_div_inst|Add0~34_combout\ : std_logic;
SIGNAL \clock_div_inst|Add0~35\ : std_logic;
SIGNAL \clock_div_inst|Add0~36_combout\ : std_logic;
SIGNAL \clock_div_inst|counter~5_combout\ : std_logic;
SIGNAL \clock_div_inst|Add0~37\ : std_logic;
SIGNAL \clock_div_inst|Add0~38_combout\ : std_logic;
SIGNAL \clock_div_inst|counter~4_combout\ : std_logic;
SIGNAL \clock_div_inst|Add0~39\ : std_logic;
SIGNAL \clock_div_inst|Add0~40_combout\ : std_logic;
SIGNAL \clock_div_inst|counter~3_combout\ : std_logic;
SIGNAL \clock_div_inst|Add0~41\ : std_logic;
SIGNAL \clock_div_inst|Add0~42_combout\ : std_logic;
SIGNAL \clock_div_inst|counter~2_combout\ : std_logic;
SIGNAL \clock_div_inst|Add0~43\ : std_logic;
SIGNAL \clock_div_inst|Add0~44_combout\ : std_logic;
SIGNAL \clock_div_inst|counter~1_combout\ : std_logic;
SIGNAL \clock_div_inst|Add0~45\ : std_logic;
SIGNAL \clock_div_inst|Add0~46_combout\ : std_logic;
SIGNAL \clock_div_inst|Add0~47\ : std_logic;
SIGNAL \clock_div_inst|Add0~48_combout\ : std_logic;
SIGNAL \clock_div_inst|counter~0_combout\ : std_logic;
SIGNAL \clock_div_inst|Equal0~0_combout\ : std_logic;
SIGNAL \clock_div_inst|Equal0~2_combout\ : std_logic;
SIGNAL \clock_div_inst|Equal0~1_combout\ : std_logic;
SIGNAL \clock_div_inst|Equal0~3_combout\ : std_logic;
SIGNAL \clock_div_inst|Equal0~4_combout\ : std_logic;
SIGNAL \clock_div_inst|Equal0~7_combout\ : std_logic;
SIGNAL \clock_div_inst|temp_clk~0_combout\ : std_logic;
SIGNAL \clock_div_inst|temp_clk~feeder_combout\ : std_logic;
SIGNAL \clock_div_inst|temp_clk~q\ : std_logic;
SIGNAL \clock_div_inst|temp_clk~clkctrl_outclk\ : std_logic;
SIGNAL \counter_inst|count_r[0]~2_combout\ : std_logic;
SIGNAL \counter_inst|Add0~0_combout\ : std_logic;
SIGNAL \counter_inst|count_r[2]~1_combout\ : std_logic;
SIGNAL \counter_inst|count_r[3]~0_combout\ : std_logic;
SIGNAL \encoder_inst|number_out[0]~0_combout\ : std_logic;
SIGNAL \encoder_inst|number_out[1]~1_combout\ : std_logic;
SIGNAL \encoder_inst|number_out[2]~2_combout\ : std_logic;
SIGNAL \encoder_inst|number_out[3]~3_combout\ : std_logic;
SIGNAL \encoder_inst|number_out[4]~4_combout\ : std_logic;
SIGNAL \encoder_inst|number_out[5]~5_combout\ : std_logic;
SIGNAL \encoder_inst|number_out[6]~6_combout\ : std_logic;
SIGNAL \clock_div_inst|counter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \counter_inst|count_r\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \encoder_inst|ALT_INV_number_out[6]~6_combout\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clock_div_inst|temp_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_div_inst|temp_clk~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\encoder_inst|ALT_INV_number_out[6]~6_combout\ <= NOT \encoder_inst|number_out[6]~6_combout\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X58_Y54_N16
\led[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encoder_inst|number_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \led[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\led[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encoder_inst|number_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\led[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encoder_inst|number_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\led[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encoder_inst|number_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\led[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encoder_inst|number_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \led[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\led[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encoder_inst|number_out[5]~5_combout\,
	devoe => ww_devoe,
	o => \led[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\led[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encoder_inst|ALT_INV_number_out[6]~6_combout\,
	devoe => ww_devoe,
	o => \led[6]~output_o\);

-- Location: IOIBUF_X78_Y29_N22
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
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

-- Location: LCCOMB_X50_Y51_N8
\clock_div_inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|Add0~0_combout\ = \clock_div_inst|counter\(0) $ (VCC)
-- \clock_div_inst|Add0~1\ = CARRY(\clock_div_inst|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_inst|counter\(0),
	datad => VCC,
	combout => \clock_div_inst|Add0~0_combout\,
	cout => \clock_div_inst|Add0~1\);

-- Location: LCCOMB_X50_Y51_N6
\clock_div_inst|counter~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|counter~12_combout\ = (\clock_div_inst|Add0~0_combout\ & !\clock_div_inst|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_div_inst|Add0~0_combout\,
	datad => \clock_div_inst|Equal0~7_combout\,
	combout => \clock_div_inst|counter~12_combout\);

-- Location: IOIBUF_X51_Y54_N29
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X50_Y51_N7
\clock_div_inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_div_inst|counter~12_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_inst|counter\(0));

-- Location: LCCOMB_X50_Y51_N10
\clock_div_inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|Add0~2_combout\ = (\clock_div_inst|counter\(1) & (!\clock_div_inst|Add0~1\)) # (!\clock_div_inst|counter\(1) & ((\clock_div_inst|Add0~1\) # (GND)))
-- \clock_div_inst|Add0~3\ = CARRY((!\clock_div_inst|Add0~1\) # (!\clock_div_inst|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_inst|counter\(1),
	datad => VCC,
	cin => \clock_div_inst|Add0~1\,
	combout => \clock_div_inst|Add0~2_combout\,
	cout => \clock_div_inst|Add0~3\);

-- Location: FF_X50_Y51_N11
\clock_div_inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_div_inst|Add0~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_inst|counter\(1));

-- Location: LCCOMB_X50_Y51_N12
\clock_div_inst|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|Add0~4_combout\ = (\clock_div_inst|counter\(2) & (\clock_div_inst|Add0~3\ $ (GND))) # (!\clock_div_inst|counter\(2) & (!\clock_div_inst|Add0~3\ & VCC))
-- \clock_div_inst|Add0~5\ = CARRY((\clock_div_inst|counter\(2) & !\clock_div_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_inst|counter\(2),
	datad => VCC,
	cin => \clock_div_inst|Add0~3\,
	combout => \clock_div_inst|Add0~4_combout\,
	cout => \clock_div_inst|Add0~5\);

-- Location: FF_X50_Y51_N13
\clock_div_inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_div_inst|Add0~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_inst|counter\(2));

-- Location: LCCOMB_X50_Y51_N14
\clock_div_inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|Add0~6_combout\ = (\clock_div_inst|counter\(3) & (!\clock_div_inst|Add0~5\)) # (!\clock_div_inst|counter\(3) & ((\clock_div_inst|Add0~5\) # (GND)))
-- \clock_div_inst|Add0~7\ = CARRY((!\clock_div_inst|Add0~5\) # (!\clock_div_inst|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_inst|counter\(3),
	datad => VCC,
	cin => \clock_div_inst|Add0~5\,
	combout => \clock_div_inst|Add0~6_combout\,
	cout => \clock_div_inst|Add0~7\);

-- Location: FF_X50_Y51_N15
\clock_div_inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_div_inst|Add0~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_inst|counter\(3));

-- Location: LCCOMB_X50_Y51_N16
\clock_div_inst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|Add0~8_combout\ = (\clock_div_inst|counter\(4) & (\clock_div_inst|Add0~7\ $ (GND))) # (!\clock_div_inst|counter\(4) & (!\clock_div_inst|Add0~7\ & VCC))
-- \clock_div_inst|Add0~9\ = CARRY((\clock_div_inst|counter\(4) & !\clock_div_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_inst|counter\(4),
	datad => VCC,
	cin => \clock_div_inst|Add0~7\,
	combout => \clock_div_inst|Add0~8_combout\,
	cout => \clock_div_inst|Add0~9\);

-- Location: FF_X50_Y51_N17
\clock_div_inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_div_inst|Add0~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_inst|counter\(4));

-- Location: LCCOMB_X50_Y51_N18
\clock_div_inst|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|Add0~10_combout\ = (\clock_div_inst|counter\(5) & (!\clock_div_inst|Add0~9\)) # (!\clock_div_inst|counter\(5) & ((\clock_div_inst|Add0~9\) # (GND)))
-- \clock_div_inst|Add0~11\ = CARRY((!\clock_div_inst|Add0~9\) # (!\clock_div_inst|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_inst|counter\(5),
	datad => VCC,
	cin => \clock_div_inst|Add0~9\,
	combout => \clock_div_inst|Add0~10_combout\,
	cout => \clock_div_inst|Add0~11\);

-- Location: FF_X50_Y51_N19
\clock_div_inst|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_div_inst|Add0~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_inst|counter\(5));

-- Location: LCCOMB_X50_Y51_N20
\clock_div_inst|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|Add0~12_combout\ = (\clock_div_inst|counter\(6) & (\clock_div_inst|Add0~11\ $ (GND))) # (!\clock_div_inst|counter\(6) & (!\clock_div_inst|Add0~11\ & VCC))
-- \clock_div_inst|Add0~13\ = CARRY((\clock_div_inst|counter\(6) & !\clock_div_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_inst|counter\(6),
	datad => VCC,
	cin => \clock_div_inst|Add0~11\,
	combout => \clock_div_inst|Add0~12_combout\,
	cout => \clock_div_inst|Add0~13\);

-- Location: LCCOMB_X50_Y51_N2
\clock_div_inst|counter~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|counter~11_combout\ = (\clock_div_inst|Add0~12_combout\ & !\clock_div_inst|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_inst|Add0~12_combout\,
	datad => \clock_div_inst|Equal0~7_combout\,
	combout => \clock_div_inst|counter~11_combout\);

-- Location: FF_X50_Y51_N3
\clock_div_inst|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_div_inst|counter~11_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_inst|counter\(6));

-- Location: LCCOMB_X50_Y51_N22
\clock_div_inst|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|Add0~14_combout\ = (\clock_div_inst|counter\(7) & (!\clock_div_inst|Add0~13\)) # (!\clock_div_inst|counter\(7) & ((\clock_div_inst|Add0~13\) # (GND)))
-- \clock_div_inst|Add0~15\ = CARRY((!\clock_div_inst|Add0~13\) # (!\clock_div_inst|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_inst|counter\(7),
	datad => VCC,
	cin => \clock_div_inst|Add0~13\,
	combout => \clock_div_inst|Add0~14_combout\,
	cout => \clock_div_inst|Add0~15\);

-- Location: FF_X50_Y51_N23
\clock_div_inst|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_div_inst|Add0~14_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_inst|counter\(7));

-- Location: LCCOMB_X50_Y51_N24
\clock_div_inst|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|Add0~16_combout\ = (\clock_div_inst|counter\(8) & (\clock_div_inst|Add0~15\ $ (GND))) # (!\clock_div_inst|counter\(8) & (!\clock_div_inst|Add0~15\ & VCC))
-- \clock_div_inst|Add0~17\ = CARRY((\clock_div_inst|counter\(8) & !\clock_div_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_inst|counter\(8),
	datad => VCC,
	cin => \clock_div_inst|Add0~15\,
	combout => \clock_div_inst|Add0~16_combout\,
	cout => \clock_div_inst|Add0~17\);

-- Location: FF_X50_Y51_N25
\clock_div_inst|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_div_inst|Add0~16_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_inst|counter\(8));

-- Location: LCCOMB_X50_Y51_N4
\clock_div_inst|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|Equal0~5_combout\ = (!\clock_div_inst|counter\(7) & (!\clock_div_inst|counter\(5) & (\clock_div_inst|counter\(6) & !\clock_div_inst|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_inst|counter\(7),
	datab => \clock_div_inst|counter\(5),
	datac => \clock_div_inst|counter\(6),
	datad => \clock_div_inst|counter\(8),
	combout => \clock_div_inst|Equal0~5_combout\);

-- Location: LCCOMB_X49_Y51_N28
\clock_div_inst|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|Equal0~6_combout\ = (!\clock_div_inst|counter\(3) & (!\clock_div_inst|counter\(1) & (!\clock_div_inst|counter\(2) & !\clock_div_inst|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_inst|counter\(3),
	datab => \clock_div_inst|counter\(1),
	datac => \clock_div_inst|counter\(2),
	datad => \clock_div_inst|counter\(4),
	combout => \clock_div_inst|Equal0~6_combout\);

-- Location: LCCOMB_X50_Y51_N26
\clock_div_inst|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|Add0~18_combout\ = (\clock_div_inst|counter\(9) & (!\clock_div_inst|Add0~17\)) # (!\clock_div_inst|counter\(9) & ((\clock_div_inst|Add0~17\) # (GND)))
-- \clock_div_inst|Add0~19\ = CARRY((!\clock_div_inst|Add0~17\) # (!\clock_div_inst|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_inst|counter\(9),
	datad => VCC,
	cin => \clock_div_inst|Add0~17\,
	combout => \clock_div_inst|Add0~18_combout\,
	cout => \clock_div_inst|Add0~19\);

-- Location: FF_X50_Y51_N27
\clock_div_inst|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_div_inst|Add0~18_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_inst|counter\(9));

-- Location: LCCOMB_X50_Y51_N28
\clock_div_inst|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|Add0~20_combout\ = (\clock_div_inst|counter\(10) & (\clock_div_inst|Add0~19\ $ (GND))) # (!\clock_div_inst|counter\(10) & (!\clock_div_inst|Add0~19\ & VCC))
-- \clock_div_inst|Add0~21\ = CARRY((\clock_div_inst|counter\(10) & !\clock_div_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_inst|counter\(10),
	datad => VCC,
	cin => \clock_div_inst|Add0~19\,
	combout => \clock_div_inst|Add0~20_combout\,
	cout => \clock_div_inst|Add0~21\);

-- Location: FF_X50_Y51_N29
\clock_div_inst|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_div_inst|Add0~20_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_inst|counter\(10));

-- Location: LCCOMB_X50_Y51_N30
\clock_div_inst|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|Add0~22_combout\ = (\clock_div_inst|counter\(11) & (!\clock_div_inst|Add0~21\)) # (!\clock_div_inst|counter\(11) & ((\clock_div_inst|Add0~21\) # (GND)))
-- \clock_div_inst|Add0~23\ = CARRY((!\clock_div_inst|Add0~21\) # (!\clock_div_inst|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_inst|counter\(11),
	datad => VCC,
	cin => \clock_div_inst|Add0~21\,
	combout => \clock_div_inst|Add0~22_combout\,
	cout => \clock_div_inst|Add0~23\);

-- Location: LCCOMB_X50_Y51_N0
\clock_div_inst|counter~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|counter~10_combout\ = (\clock_div_inst|Add0~22_combout\ & !\clock_div_inst|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_div_inst|Add0~22_combout\,
	datad => \clock_div_inst|Equal0~7_combout\,
	combout => \clock_div_inst|counter~10_combout\);

-- Location: FF_X50_Y51_N1
\clock_div_inst|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_div_inst|counter~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_inst|counter\(11));

-- Location: LCCOMB_X50_Y50_N0
\clock_div_inst|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|Add0~24_combout\ = (\clock_div_inst|counter\(12) & (\clock_div_inst|Add0~23\ $ (GND))) # (!\clock_div_inst|counter\(12) & (!\clock_div_inst|Add0~23\ & VCC))
-- \clock_div_inst|Add0~25\ = CARRY((\clock_div_inst|counter\(12) & !\clock_div_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_inst|counter\(12),
	datad => VCC,
	cin => \clock_div_inst|Add0~23\,
	combout => \clock_div_inst|Add0~24_combout\,
	cout => \clock_div_inst|Add0~25\);

-- Location: LCCOMB_X50_Y50_N30
\clock_div_inst|counter~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|counter~9_combout\ = (!\clock_div_inst|Equal0~7_combout\ & \clock_div_inst|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_inst|Equal0~7_combout\,
	datad => \clock_div_inst|Add0~24_combout\,
	combout => \clock_div_inst|counter~9_combout\);

-- Location: FF_X50_Y50_N31
\clock_div_inst|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_div_inst|counter~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_inst|counter\(12));

-- Location: LCCOMB_X50_Y50_N2
\clock_div_inst|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|Add0~26_combout\ = (\clock_div_inst|counter\(13) & (!\clock_div_inst|Add0~25\)) # (!\clock_div_inst|counter\(13) & ((\clock_div_inst|Add0~25\) # (GND)))
-- \clock_div_inst|Add0~27\ = CARRY((!\clock_div_inst|Add0~25\) # (!\clock_div_inst|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_inst|counter\(13),
	datad => VCC,
	cin => \clock_div_inst|Add0~25\,
	combout => \clock_div_inst|Add0~26_combout\,
	cout => \clock_div_inst|Add0~27\);

-- Location: LCCOMB_X49_Y50_N8
\clock_div_inst|counter~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|counter~8_combout\ = (!\clock_div_inst|Equal0~7_combout\ & \clock_div_inst|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_inst|Equal0~7_combout\,
	datac => \clock_div_inst|Add0~26_combout\,
	combout => \clock_div_inst|counter~8_combout\);

-- Location: FF_X49_Y50_N9
\clock_div_inst|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_div_inst|counter~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_inst|counter\(13));

-- Location: LCCOMB_X50_Y50_N4
\clock_div_inst|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|Add0~28_combout\ = (\clock_div_inst|counter\(14) & (\clock_div_inst|Add0~27\ $ (GND))) # (!\clock_div_inst|counter\(14) & (!\clock_div_inst|Add0~27\ & VCC))
-- \clock_div_inst|Add0~29\ = CARRY((\clock_div_inst|counter\(14) & !\clock_div_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_inst|counter\(14),
	datad => VCC,
	cin => \clock_div_inst|Add0~27\,
	combout => \clock_div_inst|Add0~28_combout\,
	cout => \clock_div_inst|Add0~29\);

-- Location: LCCOMB_X49_Y50_N26
\clock_div_inst|counter~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|counter~7_combout\ = (!\clock_div_inst|Equal0~7_combout\ & \clock_div_inst|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_inst|Equal0~7_combout\,
	datad => \clock_div_inst|Add0~28_combout\,
	combout => \clock_div_inst|counter~7_combout\);

-- Location: FF_X49_Y50_N27
\clock_div_inst|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_div_inst|counter~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_inst|counter\(14));

-- Location: LCCOMB_X50_Y50_N6
\clock_div_inst|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|Add0~30_combout\ = (\clock_div_inst|counter\(15) & (!\clock_div_inst|Add0~29\)) # (!\clock_div_inst|counter\(15) & ((\clock_div_inst|Add0~29\) # (GND)))
-- \clock_div_inst|Add0~31\ = CARRY((!\clock_div_inst|Add0~29\) # (!\clock_div_inst|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_inst|counter\(15),
	datad => VCC,
	cin => \clock_div_inst|Add0~29\,
	combout => \clock_div_inst|Add0~30_combout\,
	cout => \clock_div_inst|Add0~31\);

-- Location: FF_X50_Y50_N7
\clock_div_inst|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_div_inst|Add0~30_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_inst|counter\(15));

-- Location: LCCOMB_X50_Y50_N8
\clock_div_inst|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|Add0~32_combout\ = (\clock_div_inst|counter\(16) & (\clock_div_inst|Add0~31\ $ (GND))) # (!\clock_div_inst|counter\(16) & (!\clock_div_inst|Add0~31\ & VCC))
-- \clock_div_inst|Add0~33\ = CARRY((\clock_div_inst|counter\(16) & !\clock_div_inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_inst|counter\(16),
	datad => VCC,
	cin => \clock_div_inst|Add0~31\,
	combout => \clock_div_inst|Add0~32_combout\,
	cout => \clock_div_inst|Add0~33\);

-- Location: LCCOMB_X49_Y50_N20
\clock_div_inst|counter~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|counter~6_combout\ = (\clock_div_inst|Add0~32_combout\ & !\clock_div_inst|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_div_inst|Add0~32_combout\,
	datad => \clock_div_inst|Equal0~7_combout\,
	combout => \clock_div_inst|counter~6_combout\);

-- Location: FF_X49_Y50_N21
\clock_div_inst|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_div_inst|counter~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_inst|counter\(16));

-- Location: LCCOMB_X50_Y50_N10
\clock_div_inst|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|Add0~34_combout\ = (\clock_div_inst|counter\(17) & (!\clock_div_inst|Add0~33\)) # (!\clock_div_inst|counter\(17) & ((\clock_div_inst|Add0~33\) # (GND)))
-- \clock_div_inst|Add0~35\ = CARRY((!\clock_div_inst|Add0~33\) # (!\clock_div_inst|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_inst|counter\(17),
	datad => VCC,
	cin => \clock_div_inst|Add0~33\,
	combout => \clock_div_inst|Add0~34_combout\,
	cout => \clock_div_inst|Add0~35\);

-- Location: FF_X50_Y50_N11
\clock_div_inst|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_div_inst|Add0~34_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_inst|counter\(17));

-- Location: LCCOMB_X50_Y50_N12
\clock_div_inst|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|Add0~36_combout\ = (\clock_div_inst|counter\(18) & (\clock_div_inst|Add0~35\ $ (GND))) # (!\clock_div_inst|counter\(18) & (!\clock_div_inst|Add0~35\ & VCC))
-- \clock_div_inst|Add0~37\ = CARRY((\clock_div_inst|counter\(18) & !\clock_div_inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_inst|counter\(18),
	datad => VCC,
	cin => \clock_div_inst|Add0~35\,
	combout => \clock_div_inst|Add0~36_combout\,
	cout => \clock_div_inst|Add0~37\);

-- Location: LCCOMB_X50_Y50_N28
\clock_div_inst|counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|counter~5_combout\ = (!\clock_div_inst|Equal0~7_combout\ & \clock_div_inst|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_inst|Equal0~7_combout\,
	datad => \clock_div_inst|Add0~36_combout\,
	combout => \clock_div_inst|counter~5_combout\);

-- Location: FF_X50_Y50_N29
\clock_div_inst|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_div_inst|counter~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_inst|counter\(18));

-- Location: LCCOMB_X50_Y50_N14
\clock_div_inst|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|Add0~38_combout\ = (\clock_div_inst|counter\(19) & (!\clock_div_inst|Add0~37\)) # (!\clock_div_inst|counter\(19) & ((\clock_div_inst|Add0~37\) # (GND)))
-- \clock_div_inst|Add0~39\ = CARRY((!\clock_div_inst|Add0~37\) # (!\clock_div_inst|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_inst|counter\(19),
	datad => VCC,
	cin => \clock_div_inst|Add0~37\,
	combout => \clock_div_inst|Add0~38_combout\,
	cout => \clock_div_inst|Add0~39\);

-- Location: LCCOMB_X49_Y50_N6
\clock_div_inst|counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|counter~4_combout\ = (\clock_div_inst|Add0~38_combout\ & !\clock_div_inst|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_div_inst|Add0~38_combout\,
	datad => \clock_div_inst|Equal0~7_combout\,
	combout => \clock_div_inst|counter~4_combout\);

-- Location: FF_X49_Y50_N7
\clock_div_inst|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_div_inst|counter~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_inst|counter\(19));

-- Location: LCCOMB_X50_Y50_N16
\clock_div_inst|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|Add0~40_combout\ = (\clock_div_inst|counter\(20) & (\clock_div_inst|Add0~39\ $ (GND))) # (!\clock_div_inst|counter\(20) & (!\clock_div_inst|Add0~39\ & VCC))
-- \clock_div_inst|Add0~41\ = CARRY((\clock_div_inst|counter\(20) & !\clock_div_inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_inst|counter\(20),
	datad => VCC,
	cin => \clock_div_inst|Add0~39\,
	combout => \clock_div_inst|Add0~40_combout\,
	cout => \clock_div_inst|Add0~41\);

-- Location: LCCOMB_X49_Y50_N14
\clock_div_inst|counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|counter~3_combout\ = (!\clock_div_inst|Equal0~7_combout\ & \clock_div_inst|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_inst|Equal0~7_combout\,
	datad => \clock_div_inst|Add0~40_combout\,
	combout => \clock_div_inst|counter~3_combout\);

-- Location: FF_X49_Y50_N15
\clock_div_inst|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_div_inst|counter~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_inst|counter\(20));

-- Location: LCCOMB_X50_Y50_N18
\clock_div_inst|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|Add0~42_combout\ = (\clock_div_inst|counter\(21) & (!\clock_div_inst|Add0~41\)) # (!\clock_div_inst|counter\(21) & ((\clock_div_inst|Add0~41\) # (GND)))
-- \clock_div_inst|Add0~43\ = CARRY((!\clock_div_inst|Add0~41\) # (!\clock_div_inst|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_inst|counter\(21),
	datad => VCC,
	cin => \clock_div_inst|Add0~41\,
	combout => \clock_div_inst|Add0~42_combout\,
	cout => \clock_div_inst|Add0~43\);

-- Location: LCCOMB_X49_Y50_N18
\clock_div_inst|counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|counter~2_combout\ = (!\clock_div_inst|Equal0~7_combout\ & \clock_div_inst|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_inst|Equal0~7_combout\,
	datad => \clock_div_inst|Add0~42_combout\,
	combout => \clock_div_inst|counter~2_combout\);

-- Location: FF_X49_Y50_N19
\clock_div_inst|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_div_inst|counter~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_inst|counter\(21));

-- Location: LCCOMB_X50_Y50_N20
\clock_div_inst|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|Add0~44_combout\ = (\clock_div_inst|counter\(22) & (\clock_div_inst|Add0~43\ $ (GND))) # (!\clock_div_inst|counter\(22) & (!\clock_div_inst|Add0~43\ & VCC))
-- \clock_div_inst|Add0~45\ = CARRY((\clock_div_inst|counter\(22) & !\clock_div_inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_inst|counter\(22),
	datad => VCC,
	cin => \clock_div_inst|Add0~43\,
	combout => \clock_div_inst|Add0~44_combout\,
	cout => \clock_div_inst|Add0~45\);

-- Location: LCCOMB_X50_Y50_N26
\clock_div_inst|counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|counter~1_combout\ = (!\clock_div_inst|Equal0~7_combout\ & \clock_div_inst|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_inst|Equal0~7_combout\,
	datad => \clock_div_inst|Add0~44_combout\,
	combout => \clock_div_inst|counter~1_combout\);

-- Location: FF_X50_Y50_N27
\clock_div_inst|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_div_inst|counter~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_inst|counter\(22));

-- Location: LCCOMB_X50_Y50_N22
\clock_div_inst|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|Add0~46_combout\ = (\clock_div_inst|counter\(23) & (!\clock_div_inst|Add0~45\)) # (!\clock_div_inst|counter\(23) & ((\clock_div_inst|Add0~45\) # (GND)))
-- \clock_div_inst|Add0~47\ = CARRY((!\clock_div_inst|Add0~45\) # (!\clock_div_inst|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_inst|counter\(23),
	datad => VCC,
	cin => \clock_div_inst|Add0~45\,
	combout => \clock_div_inst|Add0~46_combout\,
	cout => \clock_div_inst|Add0~47\);

-- Location: FF_X50_Y50_N23
\clock_div_inst|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_div_inst|Add0~46_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_inst|counter\(23));

-- Location: LCCOMB_X50_Y50_N24
\clock_div_inst|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|Add0~48_combout\ = \clock_div_inst|Add0~47\ $ (!\clock_div_inst|counter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clock_div_inst|counter\(24),
	cin => \clock_div_inst|Add0~47\,
	combout => \clock_div_inst|Add0~48_combout\);

-- Location: LCCOMB_X49_Y50_N22
\clock_div_inst|counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|counter~0_combout\ = (!\clock_div_inst|Equal0~7_combout\ & \clock_div_inst|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_inst|Equal0~7_combout\,
	datad => \clock_div_inst|Add0~48_combout\,
	combout => \clock_div_inst|counter~0_combout\);

-- Location: FF_X49_Y50_N23
\clock_div_inst|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_div_inst|counter~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_inst|counter\(24));

-- Location: LCCOMB_X49_Y50_N30
\clock_div_inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|Equal0~0_combout\ = (\clock_div_inst|counter\(24) & (\clock_div_inst|counter\(21) & (\clock_div_inst|counter\(22) & !\clock_div_inst|counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_inst|counter\(24),
	datab => \clock_div_inst|counter\(21),
	datac => \clock_div_inst|counter\(22),
	datad => \clock_div_inst|counter\(23),
	combout => \clock_div_inst|Equal0~0_combout\);

-- Location: LCCOMB_X49_Y50_N16
\clock_div_inst|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|Equal0~2_combout\ = (\clock_div_inst|counter\(14) & (\clock_div_inst|counter\(16) & (\clock_div_inst|counter\(13) & !\clock_div_inst|counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_inst|counter\(14),
	datab => \clock_div_inst|counter\(16),
	datac => \clock_div_inst|counter\(13),
	datad => \clock_div_inst|counter\(15),
	combout => \clock_div_inst|Equal0~2_combout\);

-- Location: LCCOMB_X49_Y50_N4
\clock_div_inst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|Equal0~1_combout\ = (\clock_div_inst|counter\(19) & (\clock_div_inst|counter\(20) & (!\clock_div_inst|counter\(17) & \clock_div_inst|counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_inst|counter\(19),
	datab => \clock_div_inst|counter\(20),
	datac => \clock_div_inst|counter\(17),
	datad => \clock_div_inst|counter\(18),
	combout => \clock_div_inst|Equal0~1_combout\);

-- Location: LCCOMB_X49_Y50_N24
\clock_div_inst|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|Equal0~3_combout\ = (!\clock_div_inst|counter\(9) & (\clock_div_inst|counter\(12) & (\clock_div_inst|counter\(11) & !\clock_div_inst|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_inst|counter\(9),
	datab => \clock_div_inst|counter\(12),
	datac => \clock_div_inst|counter\(11),
	datad => \clock_div_inst|counter\(10),
	combout => \clock_div_inst|Equal0~3_combout\);

-- Location: LCCOMB_X49_Y50_N28
\clock_div_inst|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|Equal0~4_combout\ = (\clock_div_inst|Equal0~0_combout\ & (\clock_div_inst|Equal0~2_combout\ & (\clock_div_inst|Equal0~1_combout\ & \clock_div_inst|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_inst|Equal0~0_combout\,
	datab => \clock_div_inst|Equal0~2_combout\,
	datac => \clock_div_inst|Equal0~1_combout\,
	datad => \clock_div_inst|Equal0~3_combout\,
	combout => \clock_div_inst|Equal0~4_combout\);

-- Location: LCCOMB_X49_Y50_N10
\clock_div_inst|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|Equal0~7_combout\ = (!\clock_div_inst|counter\(0) & (\clock_div_inst|Equal0~5_combout\ & (\clock_div_inst|Equal0~6_combout\ & \clock_div_inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div_inst|counter\(0),
	datab => \clock_div_inst|Equal0~5_combout\,
	datac => \clock_div_inst|Equal0~6_combout\,
	datad => \clock_div_inst|Equal0~4_combout\,
	combout => \clock_div_inst|Equal0~7_combout\);

-- Location: LCCOMB_X49_Y50_N12
\clock_div_inst|temp_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|temp_clk~0_combout\ = \clock_div_inst|temp_clk~q\ $ (\clock_div_inst|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_div_inst|temp_clk~q\,
	datad => \clock_div_inst|Equal0~7_combout\,
	combout => \clock_div_inst|temp_clk~0_combout\);

-- Location: LCCOMB_X49_Y50_N2
\clock_div_inst|temp_clk~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div_inst|temp_clk~feeder_combout\ = \clock_div_inst|temp_clk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_div_inst|temp_clk~0_combout\,
	combout => \clock_div_inst|temp_clk~feeder_combout\);

-- Location: FF_X49_Y50_N3
\clock_div_inst|temp_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clock_div_inst|temp_clk~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div_inst|temp_clk~q\);

-- Location: CLKCTRL_G11
\clock_div_inst|temp_clk~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_div_inst|temp_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_div_inst|temp_clk~clkctrl_outclk\);

-- Location: LCCOMB_X67_Y53_N12
\counter_inst|count_r[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_inst|count_r[0]~2_combout\ = !\counter_inst|count_r\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_inst|count_r\(0),
	combout => \counter_inst|count_r[0]~2_combout\);

-- Location: FF_X67_Y53_N13
\counter_inst|count_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div_inst|temp_clk~clkctrl_outclk\,
	d => \counter_inst|count_r[0]~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_inst|count_r\(0));

-- Location: LCCOMB_X67_Y53_N18
\counter_inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_inst|Add0~0_combout\ = \counter_inst|count_r\(1) $ (\counter_inst|count_r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_inst|count_r\(1),
	datad => \counter_inst|count_r\(0),
	combout => \counter_inst|Add0~0_combout\);

-- Location: FF_X67_Y53_N19
\counter_inst|count_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div_inst|temp_clk~clkctrl_outclk\,
	d => \counter_inst|Add0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_inst|count_r\(1));

-- Location: LCCOMB_X67_Y53_N28
\counter_inst|count_r[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_inst|count_r[2]~1_combout\ = \counter_inst|count_r\(2) $ (((\counter_inst|count_r\(1) & \counter_inst|count_r\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_inst|count_r\(1),
	datac => \counter_inst|count_r\(2),
	datad => \counter_inst|count_r\(0),
	combout => \counter_inst|count_r[2]~1_combout\);

-- Location: FF_X67_Y53_N29
\counter_inst|count_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div_inst|temp_clk~clkctrl_outclk\,
	d => \counter_inst|count_r[2]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_inst|count_r\(2));

-- Location: LCCOMB_X67_Y53_N22
\counter_inst|count_r[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_inst|count_r[3]~0_combout\ = \counter_inst|count_r\(3) $ (((\counter_inst|count_r\(0) & (\counter_inst|count_r\(1) & \counter_inst|count_r\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|count_r\(0),
	datab => \counter_inst|count_r\(1),
	datac => \counter_inst|count_r\(3),
	datad => \counter_inst|count_r\(2),
	combout => \counter_inst|count_r[3]~0_combout\);

-- Location: FF_X67_Y53_N23
\counter_inst|count_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div_inst|temp_clk~clkctrl_outclk\,
	d => \counter_inst|count_r[3]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_inst|count_r\(3));

-- Location: LCCOMB_X67_Y53_N8
\encoder_inst|number_out[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \encoder_inst|number_out[0]~0_combout\ = (\counter_inst|count_r\(3) & (\counter_inst|count_r\(0) & (\counter_inst|count_r\(1) $ (\counter_inst|count_r\(2))))) # (!\counter_inst|count_r\(3) & (!\counter_inst|count_r\(1) & (\counter_inst|count_r\(0) $ 
-- (\counter_inst|count_r\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|count_r\(1),
	datab => \counter_inst|count_r\(0),
	datac => \counter_inst|count_r\(3),
	datad => \counter_inst|count_r\(2),
	combout => \encoder_inst|number_out[0]~0_combout\);

-- Location: LCCOMB_X67_Y53_N14
\encoder_inst|number_out[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \encoder_inst|number_out[1]~1_combout\ = (\counter_inst|count_r\(1) & ((\counter_inst|count_r\(0) & (\counter_inst|count_r\(3))) # (!\counter_inst|count_r\(0) & ((\counter_inst|count_r\(2)))))) # (!\counter_inst|count_r\(1) & (\counter_inst|count_r\(2) & 
-- (\counter_inst|count_r\(0) $ (\counter_inst|count_r\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|count_r\(1),
	datab => \counter_inst|count_r\(0),
	datac => \counter_inst|count_r\(3),
	datad => \counter_inst|count_r\(2),
	combout => \encoder_inst|number_out[1]~1_combout\);

-- Location: LCCOMB_X67_Y53_N16
\encoder_inst|number_out[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \encoder_inst|number_out[2]~2_combout\ = (\counter_inst|count_r\(3) & (\counter_inst|count_r\(2) & ((\counter_inst|count_r\(1)) # (!\counter_inst|count_r\(0))))) # (!\counter_inst|count_r\(3) & (\counter_inst|count_r\(1) & (!\counter_inst|count_r\(0) & 
-- !\counter_inst|count_r\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|count_r\(1),
	datab => \counter_inst|count_r\(0),
	datac => \counter_inst|count_r\(3),
	datad => \counter_inst|count_r\(2),
	combout => \encoder_inst|number_out[2]~2_combout\);

-- Location: LCCOMB_X67_Y53_N30
\encoder_inst|number_out[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \encoder_inst|number_out[3]~3_combout\ = (\counter_inst|count_r\(1) & ((\counter_inst|count_r\(0) & ((\counter_inst|count_r\(2)))) # (!\counter_inst|count_r\(0) & (\counter_inst|count_r\(3) & !\counter_inst|count_r\(2))))) # (!\counter_inst|count_r\(1) & 
-- (!\counter_inst|count_r\(3) & (\counter_inst|count_r\(0) $ (\counter_inst|count_r\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|count_r\(1),
	datab => \counter_inst|count_r\(0),
	datac => \counter_inst|count_r\(3),
	datad => \counter_inst|count_r\(2),
	combout => \encoder_inst|number_out[3]~3_combout\);

-- Location: LCCOMB_X67_Y53_N24
\encoder_inst|number_out[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \encoder_inst|number_out[4]~4_combout\ = (\counter_inst|count_r\(2) & (((!\counter_inst|count_r\(3))))) # (!\counter_inst|count_r\(2) & (\counter_inst|count_r\(0) & ((!\counter_inst|count_r\(3)) # (!\counter_inst|count_r\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|count_r\(1),
	datab => \counter_inst|count_r\(0),
	datac => \counter_inst|count_r\(3),
	datad => \counter_inst|count_r\(2),
	combout => \encoder_inst|number_out[4]~4_combout\);

-- Location: LCCOMB_X67_Y53_N10
\encoder_inst|number_out[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \encoder_inst|number_out[5]~5_combout\ = (\counter_inst|count_r\(1) & (!\counter_inst|count_r\(3) & ((\counter_inst|count_r\(0)) # (!\counter_inst|count_r\(2))))) # (!\counter_inst|count_r\(1) & (\counter_inst|count_r\(0) & (\counter_inst|count_r\(3) $ 
-- (!\counter_inst|count_r\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|count_r\(1),
	datab => \counter_inst|count_r\(0),
	datac => \counter_inst|count_r\(3),
	datad => \counter_inst|count_r\(2),
	combout => \encoder_inst|number_out[5]~5_combout\);

-- Location: LCCOMB_X67_Y53_N20
\encoder_inst|number_out[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \encoder_inst|number_out[6]~6_combout\ = (\counter_inst|count_r\(0) & ((\counter_inst|count_r\(3)) # (\counter_inst|count_r\(1) $ (\counter_inst|count_r\(2))))) # (!\counter_inst|count_r\(0) & ((\counter_inst|count_r\(1)) # (\counter_inst|count_r\(3) $ 
-- (\counter_inst|count_r\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_inst|count_r\(1),
	datab => \counter_inst|count_r\(0),
	datac => \counter_inst|count_r\(3),
	datad => \counter_inst|count_r\(2),
	combout => \encoder_inst|number_out[6]~6_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_led(0) <= \led[0]~output_o\;

ww_led(1) <= \led[1]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(3) <= \led[3]~output_o\;

ww_led(4) <= \led[4]~output_o\;

ww_led(5) <= \led[5]~output_o\;

ww_led(6) <= \led[6]~output_o\;
END structure;


