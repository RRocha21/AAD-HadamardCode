-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "11/11/2022 20:42:35"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SerialEncoder IS
    PORT (
	clk : IN std_logic;
	mI : IN std_logic;
	GRst : IN std_logic;
	busy : OUT std_logic;
	y : OUT std_logic_vector(7 DOWNTO 0)
	);
END SerialEncoder;

-- Design Ports Information
-- mI	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busy	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GRst	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SerialEncoder IS
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
SIGNAL ww_mI : std_logic;
SIGNAL ww_GRst : std_logic;
SIGNAL ww_busy : std_logic;
SIGNAL ww_y : std_logic_vector(7 DOWNTO 0);
SIGNAL \mI~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \counter30|ff0|Q~0_combout\ : std_logic;
SIGNAL \GRst~input_o\ : std_logic;
SIGNAL \counter30|ff0|Q~q\ : std_logic;
SIGNAL \counter30|ff0|Q~DUPLICATE_q\ : std_logic;
SIGNAL \counter30|ff1|Q~0_combout\ : std_logic;
SIGNAL \counter30|ff1|Q~q\ : std_logic;
SIGNAL \counter30|ff2|Q~0_combout\ : std_logic;
SIGNAL \counter30|ff2|Q~q\ : std_logic;
SIGNAL \counter30|ff0|ALT_INV_Q~DUPLICATE_q\ : std_logic;
SIGNAL \counter30|ff2|ALT_INV_Q~q\ : std_logic;
SIGNAL \counter30|ff1|ALT_INV_Q~q\ : std_logic;
SIGNAL \counter30|ff0|ALT_INV_Q~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_mI <= mI;
ww_GRst <= GRst;
busy <= ww_busy;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\counter30|ff0|ALT_INV_Q~DUPLICATE_q\ <= NOT \counter30|ff0|Q~DUPLICATE_q\;
\counter30|ff2|ALT_INV_Q~q\ <= NOT \counter30|ff2|Q~q\;
\counter30|ff1|ALT_INV_Q~q\ <= NOT \counter30|ff1|Q~q\;
\counter30|ff0|ALT_INV_Q~q\ <= NOT \counter30|ff0|Q~q\;

-- Location: IOOBUF_X68_Y0_N2
\busy~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_busy);

-- Location: IOOBUF_X28_Y0_N53
\y[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \counter30|ff0|Q~q\,
	devoe => ww_devoe,
	o => ww_y(0));

-- Location: IOOBUF_X28_Y0_N2
\y[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \counter30|ff1|Q~q\,
	devoe => ww_devoe,
	o => ww_y(1));

-- Location: IOOBUF_X28_Y0_N19
\y[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \counter30|ff2|Q~q\,
	devoe => ww_devoe,
	o => ww_y(2));

-- Location: IOOBUF_X8_Y0_N19
\y[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_y(3));

-- Location: IOOBUF_X52_Y81_N2
\y[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_y(4));

-- Location: IOOBUF_X54_Y81_N19
\y[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_y(5));

-- Location: IOOBUF_X68_Y81_N53
\y[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_y(6));

-- Location: IOOBUF_X88_Y81_N37
\y[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_y(7));

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: MLABCELL_X28_Y2_N27
\counter30|ff0|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter30|ff0|Q~0_combout\ = ( !\counter30|ff0|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \counter30|ff0|ALT_INV_Q~q\,
	combout => \counter30|ff0|Q~0_combout\);

-- Location: IOIBUF_X28_Y0_N35
\GRst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GRst,
	o => \GRst~input_o\);

-- Location: FF_X28_Y2_N29
\counter30|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter30|ff0|Q~0_combout\,
	clrn => \GRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter30|ff0|Q~q\);

-- Location: FF_X28_Y2_N28
\counter30|ff0|Q~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter30|ff0|Q~0_combout\,
	clrn => \GRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter30|ff0|Q~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y2_N45
\counter30|ff1|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter30|ff1|Q~0_combout\ = ( !\counter30|ff1|Q~q\ & ( \counter30|ff0|Q~DUPLICATE_q\ ) ) # ( \counter30|ff1|Q~q\ & ( !\counter30|ff0|Q~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \counter30|ff1|ALT_INV_Q~q\,
	dataf => \counter30|ff0|ALT_INV_Q~DUPLICATE_q\,
	combout => \counter30|ff1|Q~0_combout\);

-- Location: FF_X28_Y2_N47
\counter30|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter30|ff1|Q~0_combout\,
	clrn => \GRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter30|ff1|Q~q\);

-- Location: MLABCELL_X28_Y2_N54
\counter30|ff2|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter30|ff2|Q~0_combout\ = ( \counter30|ff2|Q~q\ & ( \counter30|ff0|Q~DUPLICATE_q\ & ( !\counter30|ff1|Q~q\ ) ) ) # ( !\counter30|ff2|Q~q\ & ( \counter30|ff0|Q~DUPLICATE_q\ & ( \counter30|ff1|Q~q\ ) ) ) # ( \counter30|ff2|Q~q\ & ( 
-- !\counter30|ff0|Q~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter30|ff1|ALT_INV_Q~q\,
	datae => \counter30|ff2|ALT_INV_Q~q\,
	dataf => \counter30|ff0|ALT_INV_Q~DUPLICATE_q\,
	combout => \counter30|ff2|Q~0_combout\);

-- Location: FF_X28_Y2_N55
\counter30|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter30|ff2|Q~0_combout\,
	clrn => \GRst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter30|ff2|Q~q\);

-- Location: IOIBUF_X50_Y81_N41
\mI~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mI,
	o => \mI~input_o\);

-- Location: LABCELL_X24_Y7_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


