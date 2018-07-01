-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.2 Build 203 01/18/2017 SJ Lite Edition"

-- DATE "02/10/2018 11:27:34"

-- 
-- Device: Altera 5CEBA2F17A7 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	jaggy IS
    PORT (
	a : IN std_logic;
	a2 : IN std_logic;
	a3 : IN std_logic;
	a4 : IN std_logic;
	a5 : IN std_logic;
	b : IN std_logic;
	b2 : IN std_logic;
	b3 : IN std_logic;
	c : IN std_logic;
	d : IN std_logic;
	e : IN std_logic;
	r : OUT std_logic;
	r1 : OUT std_logic;
	r2 : OUT std_logic;
	r3 : OUT std_logic;
	r4 : OUT std_logic;
	s : OUT std_logic;
	s1 : OUT std_logic;
	t : OUT std_logic;
	u : OUT std_logic;
	v : OUT std_logic;
	w : OUT std_logic;
	x : OUT std_logic
	);
END jaggy;

-- Design Ports Information
-- a	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a3	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a4	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a5	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b3	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r3	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r4	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF jaggy IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_a2 : std_logic;
SIGNAL ww_a3 : std_logic;
SIGNAL ww_a4 : std_logic;
SIGNAL ww_a5 : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_b2 : std_logic;
SIGNAL ww_b3 : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_r : std_logic;
SIGNAL ww_r1 : std_logic;
SIGNAL ww_r2 : std_logic;
SIGNAL ww_r3 : std_logic;
SIGNAL ww_r4 : std_logic;
SIGNAL ww_s : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_t : std_logic;
SIGNAL ww_u : std_logic;
SIGNAL ww_v : std_logic;
SIGNAL ww_w : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \a2~input_o\ : std_logic;
SIGNAL \a3~input_o\ : std_logic;
SIGNAL \a4~input_o\ : std_logic;
SIGNAL \a5~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \b2~input_o\ : std_logic;
SIGNAL \b3~input_o\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \d~input_o\ : std_logic;
SIGNAL \e~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_a2 <= a2;
ww_a3 <= a3;
ww_a4 <= a4;
ww_a5 <= a5;
ww_b <= b;
ww_b2 <= b2;
ww_b3 <= b3;
ww_c <= c;
ww_d <= d;
ww_e <= e;
r <= ww_r;
r1 <= ww_r1;
r2 <= ww_r2;
r3 <= ww_r3;
r4 <= ww_r4;
s <= ww_s;
s1 <= ww_s1;
t <= ww_t;
u <= ww_u;
v <= ww_v;
w <= ww_w;
x <= ww_x;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X36_Y0_N53
\r~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_r);

-- Location: IOOBUF_X36_Y0_N2
\r1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_r1);

-- Location: IOOBUF_X22_Y45_N36
\r2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_r2);

-- Location: IOOBUF_X12_Y0_N2
\r3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_r3);

-- Location: IOOBUF_X34_Y45_N36
\r4~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_r4);

-- Location: IOOBUF_X36_Y0_N36
\s~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_s);

-- Location: IOOBUF_X54_Y17_N56
\s1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_s1);

-- Location: IOOBUF_X0_Y20_N22
\t~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_t);

-- Location: IOOBUF_X34_Y45_N53
\u~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_u);

-- Location: IOOBUF_X22_Y45_N19
\v~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_v);

-- Location: IOOBUF_X14_Y0_N36
\w~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_w);

-- Location: IOOBUF_X18_Y45_N36
\x~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_x);

-- Location: IOIBUF_X54_Y20_N4
\a~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: IOIBUF_X34_Y45_N18
\a2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2,
	o => \a2~input_o\);

-- Location: IOIBUF_X32_Y45_N75
\a3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a3,
	o => \a3~input_o\);

-- Location: IOIBUF_X20_Y45_N18
\a4~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a4,
	o => \a4~input_o\);

-- Location: IOIBUF_X12_Y0_N35
\a5~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a5,
	o => \a5~input_o\);

-- Location: IOIBUF_X0_Y18_N61
\b~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: IOIBUF_X24_Y0_N52
\b2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b2,
	o => \b2~input_o\);

-- Location: IOIBUF_X0_Y19_N21
\b3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b3,
	o => \b3~input_o\);

-- Location: IOIBUF_X54_Y18_N78
\c~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c,
	o => \c~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\d~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d,
	o => \d~input_o\);

-- Location: IOIBUF_X54_Y20_N55
\e~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e,
	o => \e~input_o\);

-- Location: MLABCELL_X28_Y34_N3
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


