-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Standard Edition"

-- DATE "03/08/2024 19:21:11"

-- 
-- Device: Altera EP4CE6E22C7 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hamming_distance IS
    PORT (
	a : IN std_logic_vector(24 DOWNTO 0);
	b : IN std_logic_vector(24 DOWNTO 0);
	y : BUFFER std_logic_vector(4 DOWNTO 0)
	);
END hamming_distance;

-- Design Ports Information
-- y[0]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[8]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[9]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[10]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[11]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[16]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[16]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[17]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[17]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[14]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[15]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[12]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[13]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[20]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[20]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[21]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[21]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[22]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[22]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[23]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[23]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[24]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[24]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[18]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[18]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[19]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[19]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hamming_distance IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(24 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(24 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(4 DOWNTO 0);
SIGNAL \y[0]~output_o\ : std_logic;
SIGNAL \y[1]~output_o\ : std_logic;
SIGNAL \y[2]~output_o\ : std_logic;
SIGNAL \y[3]~output_o\ : std_logic;
SIGNAL \y[4]~output_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \Add22~0_combout\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \Add16~0_combout\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \b[8]~input_o\ : std_logic;
SIGNAL \b[9]~input_o\ : std_logic;
SIGNAL \Add14~0_combout\ : std_logic;
SIGNAL \Add15~0_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \Add20~0_combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \Add18~0_combout\ : std_logic;
SIGNAL \Add19~0_combout\ : std_logic;
SIGNAL \Add17~0_combout\ : std_logic;
SIGNAL \Add21~0_combout\ : std_logic;
SIGNAL \b[11]~input_o\ : std_logic;
SIGNAL \b[10]~input_o\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \Add12~0_combout\ : std_logic;
SIGNAL \b[19]~input_o\ : std_logic;
SIGNAL \a[18]~input_o\ : std_logic;
SIGNAL \b[18]~input_o\ : std_logic;
SIGNAL \a[19]~input_o\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \a[22]~input_o\ : std_logic;
SIGNAL \b[22]~input_o\ : std_logic;
SIGNAL \b[24]~input_o\ : std_logic;
SIGNAL \a[23]~input_o\ : std_logic;
SIGNAL \b[23]~input_o\ : std_logic;
SIGNAL \a[24]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \b[20]~input_o\ : std_logic;
SIGNAL \a[21]~input_o\ : std_logic;
SIGNAL \b[21]~input_o\ : std_logic;
SIGNAL \a[20]~input_o\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \a[17]~input_o\ : std_logic;
SIGNAL \b[16]~input_o\ : std_logic;
SIGNAL \b[17]~input_o\ : std_logic;
SIGNAL \a[16]~input_o\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \b[15]~input_o\ : std_logic;
SIGNAL \b[14]~input_o\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \b[13]~input_o\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \b[12]~input_o\ : std_logic;
SIGNAL \Add10~0_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \Add13~0_combout\ : std_logic;
SIGNAL \Add23~0_combout\ : std_logic;
SIGNAL \Add6~1_combout\ : std_logic;
SIGNAL \Add8~1_combout\ : std_logic;
SIGNAL \Add7~1_combout\ : std_logic;
SIGNAL \Add10~1_combout\ : std_logic;
SIGNAL \Add9~1\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \Add4~1_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add3~1_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add11~1\ : std_logic;
SIGNAL \Add11~2_combout\ : std_logic;
SIGNAL \Add12~1_combout\ : std_logic;
SIGNAL \Add13~1\ : std_logic;
SIGNAL \Add13~2_combout\ : std_logic;
SIGNAL \Add22~1_combout\ : std_logic;
SIGNAL \Add20~1_combout\ : std_logic;
SIGNAL \Add18~1_combout\ : std_logic;
SIGNAL \Add19~1_combout\ : std_logic;
SIGNAL \Add14~1_combout\ : std_logic;
SIGNAL \Add16~1_combout\ : std_logic;
SIGNAL \Add15~1_combout\ : std_logic;
SIGNAL \Add17~1\ : std_logic;
SIGNAL \Add17~2_combout\ : std_logic;
SIGNAL \Add21~1\ : std_logic;
SIGNAL \Add21~2_combout\ : std_logic;
SIGNAL \Add23~1\ : std_logic;
SIGNAL \Add23~2_combout\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \Add3~3_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add11~3\ : std_logic;
SIGNAL \Add11~4_combout\ : std_logic;
SIGNAL \Add13~3\ : std_logic;
SIGNAL \Add13~4_combout\ : std_logic;
SIGNAL \Add19~2_combout\ : std_logic;
SIGNAL \Add15~2_combout\ : std_logic;
SIGNAL \Add17~3\ : std_logic;
SIGNAL \Add17~4_combout\ : std_logic;
SIGNAL \Add21~3\ : std_logic;
SIGNAL \Add21~4_combout\ : std_logic;
SIGNAL \Add23~3\ : std_logic;
SIGNAL \Add23~4_combout\ : std_logic;
SIGNAL \Add17~5\ : std_logic;
SIGNAL \Add17~6_combout\ : std_logic;
SIGNAL \Add21~5\ : std_logic;
SIGNAL \Add21~6_combout\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add11~5\ : std_logic;
SIGNAL \Add11~6_combout\ : std_logic;
SIGNAL \Add13~5\ : std_logic;
SIGNAL \Add13~6_combout\ : std_logic;
SIGNAL \Add23~5\ : std_logic;
SIGNAL \Add23~6_combout\ : std_logic;
SIGNAL \Add13~7\ : std_logic;
SIGNAL \Add13~8_combout\ : std_logic;
SIGNAL \Add23~7\ : std_logic;
SIGNAL \Add23~8_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a <= a;
ww_b <= b;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X32_Y0_N16
\y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add23~0_combout\,
	devoe => ww_devoe,
	o => \y[0]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add23~2_combout\,
	devoe => ww_devoe,
	o => \y[1]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add23~4_combout\,
	devoe => ww_devoe,
	o => \y[2]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add23~6_combout\,
	devoe => ww_devoe,
	o => \y[3]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add23~8_combout\,
	devoe => ww_devoe,
	o => \y[4]~output_o\);

-- Location: IOIBUF_X34_Y20_N8
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X23_Y24_N8
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X34_Y17_N1
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X33_Y5_N12
\Add22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add22~0_combout\ = \a[1]~input_o\ $ (\a[0]~input_o\ $ (\b[0]~input_o\ $ (\b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[0]~input_o\,
	datac => \b[0]~input_o\,
	datad => \b[1]~input_o\,
	combout => \Add22~0_combout\);

-- Location: IOIBUF_X23_Y0_N8
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\b[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\b[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: LCCOMB_X16_Y2_N4
\Add16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~0_combout\ = \a[7]~input_o\ $ (\b[7]~input_o\ $ (\b[6]~input_o\ $ (\a[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datab => \b[7]~input_o\,
	datac => \b[6]~input_o\,
	datad => \a[6]~input_o\,
	combout => \Add16~0_combout\);

-- Location: IOIBUF_X18_Y0_N22
\a[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\a[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\b[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(8),
	o => \b[8]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\b[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(9),
	o => \b[9]~input_o\);

-- Location: LCCOMB_X17_Y2_N4
\Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~0_combout\ = \a[9]~input_o\ $ (\a[8]~input_o\ $ (\b[8]~input_o\ $ (\b[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[9]~input_o\,
	datab => \a[8]~input_o\,
	datac => \b[8]~input_o\,
	datad => \b[9]~input_o\,
	combout => \Add14~0_combout\);

-- Location: LCCOMB_X16_Y2_N26
\Add15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~0_combout\ = \Add16~0_combout\ $ (\Add14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add16~0_combout\,
	datad => \Add14~0_combout\,
	combout => \Add15~0_combout\);

-- Location: IOIBUF_X13_Y0_N15
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X16_Y2_N30
\Add20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add20~0_combout\ = \b[2]~input_o\ $ (\a[3]~input_o\ $ (\b[3]~input_o\ $ (\a[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \a[3]~input_o\,
	datac => \b[3]~input_o\,
	datad => \a[2]~input_o\,
	combout => \Add20~0_combout\);

-- Location: IOIBUF_X0_Y6_N15
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\b[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: LCCOMB_X16_Y2_N16
\Add18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~0_combout\ = \a[4]~input_o\ $ (\b[5]~input_o\ $ (\a[5]~input_o\ $ (\b[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \b[5]~input_o\,
	datac => \a[5]~input_o\,
	datad => \b[4]~input_o\,
	combout => \Add18~0_combout\);

-- Location: LCCOMB_X16_Y2_N0
\Add19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add19~0_combout\ = \Add20~0_combout\ $ (\Add18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add20~0_combout\,
	datad => \Add18~0_combout\,
	combout => \Add19~0_combout\);

-- Location: LCCOMB_X16_Y2_N8
\Add17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add17~0_combout\ = (\Add15~0_combout\ & (\Add19~0_combout\ $ (VCC))) # (!\Add15~0_combout\ & (\Add19~0_combout\ & VCC))
-- \Add17~1\ = CARRY((\Add15~0_combout\ & \Add19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~0_combout\,
	datab => \Add19~0_combout\,
	datad => VCC,
	combout => \Add17~0_combout\,
	cout => \Add17~1\);

-- Location: LCCOMB_X33_Y5_N14
\Add21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add21~0_combout\ = (\Add22~0_combout\ & (\Add17~0_combout\ $ (VCC))) # (!\Add22~0_combout\ & (\Add17~0_combout\ & VCC))
-- \Add21~1\ = CARRY((\Add22~0_combout\ & \Add17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add22~0_combout\,
	datab => \Add17~0_combout\,
	datad => VCC,
	combout => \Add21~0_combout\,
	cout => \Add21~1\);

-- Location: IOIBUF_X28_Y24_N8
\b[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(11),
	o => \b[11]~input_o\);

-- Location: IOIBUF_X28_Y24_N22
\b[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(10),
	o => \b[10]~input_o\);

-- Location: IOIBUF_X30_Y24_N1
\a[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: IOIBUF_X30_Y24_N22
\a[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: LCCOMB_X29_Y21_N0
\Add12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~0_combout\ = \b[11]~input_o\ $ (\b[10]~input_o\ $ (\a[11]~input_o\ $ (\a[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[11]~input_o\,
	datab => \b[10]~input_o\,
	datac => \a[11]~input_o\,
	datad => \a[10]~input_o\,
	combout => \Add12~0_combout\);

-- Location: IOIBUF_X28_Y0_N1
\b[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(19),
	o => \b[19]~input_o\);

-- Location: IOIBUF_X28_Y24_N15
\a[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(18),
	o => \a[18]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\b[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(18),
	o => \b[18]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\a[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(19),
	o => \a[19]~input_o\);

-- Location: LCCOMB_X29_Y5_N26
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = \b[19]~input_o\ $ (\a[18]~input_o\ $ (\b[18]~input_o\ $ (\a[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[19]~input_o\,
	datab => \a[18]~input_o\,
	datac => \b[18]~input_o\,
	datad => \a[19]~input_o\,
	combout => \Add4~0_combout\);

-- Location: IOIBUF_X30_Y0_N8
\a[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(22),
	o => \a[22]~input_o\);

-- Location: IOIBUF_X34_Y18_N15
\b[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(22),
	o => \b[22]~input_o\);

-- Location: IOIBUF_X34_Y7_N8
\b[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(24),
	o => \b[24]~input_o\);

-- Location: IOIBUF_X34_Y2_N22
\a[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(23),
	o => \a[23]~input_o\);

-- Location: IOIBUF_X34_Y2_N15
\b[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(23),
	o => \b[23]~input_o\);

-- Location: IOIBUF_X34_Y9_N8
\a[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(24),
	o => \a[24]~input_o\);

-- Location: LCCOMB_X30_Y5_N26
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \b[24]~input_o\ $ (\a[23]~input_o\ $ (\b[23]~input_o\ $ (\a[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[24]~input_o\,
	datab => \a[23]~input_o\,
	datac => \b[23]~input_o\,
	datad => \a[24]~input_o\,
	combout => \Add0~0_combout\);

-- Location: IOIBUF_X30_Y0_N1
\b[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(20),
	o => \b[20]~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\a[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(21),
	o => \a[21]~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\b[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(21),
	o => \b[21]~input_o\);

-- Location: IOIBUF_X34_Y18_N1
\a[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(20),
	o => \a[20]~input_o\);

-- Location: LCCOMB_X30_Y5_N16
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \b[20]~input_o\ $ (\a[21]~input_o\ $ (\b[21]~input_o\ $ (\a[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[20]~input_o\,
	datab => \a[21]~input_o\,
	datac => \b[21]~input_o\,
	datad => \a[20]~input_o\,
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X30_Y5_N12
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = \a[22]~input_o\ $ (\b[22]~input_o\ $ (\Add0~0_combout\ $ (\Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[22]~input_o\,
	datab => \b[22]~input_o\,
	datac => \Add0~0_combout\,
	datad => \Add2~0_combout\,
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X29_Y5_N0
\Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = (\Add4~0_combout\ & (\Add3~0_combout\ $ (VCC))) # (!\Add4~0_combout\ & (\Add3~0_combout\ & VCC))
-- \Add5~1\ = CARRY((\Add4~0_combout\ & \Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \Add3~0_combout\,
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: IOIBUF_X34_Y9_N15
\a[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(17),
	o => \a[17]~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\b[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(16),
	o => \b[16]~input_o\);

-- Location: IOIBUF_X34_Y9_N1
\b[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(17),
	o => \b[17]~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\a[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(16),
	o => \a[16]~input_o\);

-- Location: LCCOMB_X30_Y9_N8
\Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = \a[17]~input_o\ $ (\b[16]~input_o\ $ (\b[17]~input_o\ $ (\a[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[17]~input_o\,
	datab => \b[16]~input_o\,
	datac => \b[17]~input_o\,
	datad => \a[16]~input_o\,
	combout => \Add6~0_combout\);

-- Location: IOIBUF_X34_Y10_N8
\a[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: IOIBUF_X34_Y9_N22
\b[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(15),
	o => \b[15]~input_o\);

-- Location: IOIBUF_X34_Y17_N22
\b[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(14),
	o => \b[14]~input_o\);

-- Location: IOIBUF_X34_Y17_N15
\a[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: LCCOMB_X30_Y9_N18
\Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = \a[15]~input_o\ $ (\b[15]~input_o\ $ (\b[14]~input_o\ $ (\a[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[15]~input_o\,
	datab => \b[15]~input_o\,
	datac => \b[14]~input_o\,
	datad => \a[14]~input_o\,
	combout => \Add8~0_combout\);

-- Location: LCCOMB_X30_Y9_N20
\Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = \Add6~0_combout\ $ (\Add8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~0_combout\,
	datad => \Add8~0_combout\,
	combout => \Add7~0_combout\);

-- Location: IOIBUF_X32_Y0_N22
\b[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(13),
	o => \b[13]~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\a[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\a[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\b[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(12),
	o => \b[12]~input_o\);

-- Location: LCCOMB_X29_Y5_N24
\Add10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~0_combout\ = \b[13]~input_o\ $ (\a[13]~input_o\ $ (\a[12]~input_o\ $ (\b[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[13]~input_o\,
	datab => \a[13]~input_o\,
	datac => \a[12]~input_o\,
	datad => \b[12]~input_o\,
	combout => \Add10~0_combout\);

-- Location: LCCOMB_X29_Y5_N8
\Add9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = (\Add7~0_combout\ & (\Add10~0_combout\ $ (VCC))) # (!\Add7~0_combout\ & (\Add10~0_combout\ & VCC))
-- \Add9~1\ = CARRY((\Add7~0_combout\ & \Add10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~0_combout\,
	datab => \Add10~0_combout\,
	datad => VCC,
	combout => \Add9~0_combout\,
	cout => \Add9~1\);

-- Location: LCCOMB_X29_Y5_N16
\Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~0_combout\ = (\Add5~0_combout\ & (\Add9~0_combout\ $ (VCC))) # (!\Add5~0_combout\ & (\Add9~0_combout\ & VCC))
-- \Add11~1\ = CARRY((\Add5~0_combout\ & \Add9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~0_combout\,
	datab => \Add9~0_combout\,
	datad => VCC,
	combout => \Add11~0_combout\,
	cout => \Add11~1\);

-- Location: LCCOMB_X33_Y5_N2
\Add13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~0_combout\ = (\Add12~0_combout\ & (\Add11~0_combout\ $ (VCC))) # (!\Add12~0_combout\ & (\Add11~0_combout\ & VCC))
-- \Add13~1\ = CARRY((\Add12~0_combout\ & \Add11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~0_combout\,
	datab => \Add11~0_combout\,
	datad => VCC,
	combout => \Add13~0_combout\,
	cout => \Add13~1\);

-- Location: LCCOMB_X33_Y5_N22
\Add23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add23~0_combout\ = (\Add21~0_combout\ & (\Add13~0_combout\ $ (VCC))) # (!\Add21~0_combout\ & (\Add13~0_combout\ & VCC))
-- \Add23~1\ = CARRY((\Add21~0_combout\ & \Add13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add21~0_combout\,
	datab => \Add13~0_combout\,
	datad => VCC,
	combout => \Add23~0_combout\,
	cout => \Add23~1\);

-- Location: LCCOMB_X30_Y9_N30
\Add6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~1_combout\ = (\a[17]~input_o\ & (!\b[17]~input_o\ & (\a[16]~input_o\ $ (\b[16]~input_o\)))) # (!\a[17]~input_o\ & (\b[17]~input_o\ & (\a[16]~input_o\ $ (\b[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[17]~input_o\,
	datab => \a[16]~input_o\,
	datac => \b[16]~input_o\,
	datad => \b[17]~input_o\,
	combout => \Add6~1_combout\);

-- Location: LCCOMB_X30_Y9_N28
\Add8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~1_combout\ = (\a[15]~input_o\ & (!\b[15]~input_o\ & (\a[14]~input_o\ $ (\b[14]~input_o\)))) # (!\a[15]~input_o\ & (\b[15]~input_o\ & (\a[14]~input_o\ $ (\b[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[15]~input_o\,
	datab => \b[15]~input_o\,
	datac => \a[14]~input_o\,
	datad => \b[14]~input_o\,
	combout => \Add8~1_combout\);

-- Location: LCCOMB_X30_Y9_N6
\Add7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~1_combout\ = \Add6~1_combout\ $ (\Add8~1_combout\ $ (((\Add6~0_combout\ & \Add8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~1_combout\,
	datab => \Add8~1_combout\,
	datac => \Add6~0_combout\,
	datad => \Add8~0_combout\,
	combout => \Add7~1_combout\);

-- Location: LCCOMB_X29_Y5_N28
\Add10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~1_combout\ = (\b[13]~input_o\ & (!\a[13]~input_o\ & (\a[12]~input_o\ $ (\b[12]~input_o\)))) # (!\b[13]~input_o\ & (\a[13]~input_o\ & (\a[12]~input_o\ $ (\b[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[13]~input_o\,
	datab => \a[13]~input_o\,
	datac => \a[12]~input_o\,
	datad => \b[12]~input_o\,
	combout => \Add10~1_combout\);

-- Location: LCCOMB_X29_Y5_N10
\Add9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (\Add7~1_combout\ & ((\Add10~1_combout\ & (\Add9~1\ & VCC)) # (!\Add10~1_combout\ & (!\Add9~1\)))) # (!\Add7~1_combout\ & ((\Add10~1_combout\ & (!\Add9~1\)) # (!\Add10~1_combout\ & ((\Add9~1\) # (GND)))))
-- \Add9~3\ = CARRY((\Add7~1_combout\ & (!\Add10~1_combout\ & !\Add9~1\)) # (!\Add7~1_combout\ & ((!\Add9~1\) # (!\Add10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~1_combout\,
	datab => \Add10~1_combout\,
	datad => VCC,
	cin => \Add9~1\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: LCCOMB_X29_Y5_N30
\Add4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~1_combout\ = (\b[19]~input_o\ & (!\a[19]~input_o\ & (\a[18]~input_o\ $ (\b[18]~input_o\)))) # (!\b[19]~input_o\ & (\a[19]~input_o\ & (\a[18]~input_o\ $ (\b[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[19]~input_o\,
	datab => \a[18]~input_o\,
	datac => \b[18]~input_o\,
	datad => \a[19]~input_o\,
	combout => \Add4~1_combout\);

-- Location: LCCOMB_X30_Y5_N22
\Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = (\b[21]~input_o\ & (!\a[21]~input_o\ & (\b[20]~input_o\ $ (\a[20]~input_o\)))) # (!\b[21]~input_o\ & (\a[21]~input_o\ & (\b[20]~input_o\ $ (\a[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[21]~input_o\,
	datab => \a[21]~input_o\,
	datac => \b[20]~input_o\,
	datad => \a[20]~input_o\,
	combout => \Add2~1_combout\);

-- Location: LCCOMB_X30_Y5_N28
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (\b[23]~input_o\ & (!\a[23]~input_o\ & (\b[24]~input_o\ $ (\a[24]~input_o\)))) # (!\b[23]~input_o\ & (\a[23]~input_o\ & (\b[24]~input_o\ $ (\a[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[23]~input_o\,
	datab => \a[23]~input_o\,
	datac => \b[24]~input_o\,
	datad => \a[24]~input_o\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X30_Y5_N30
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\Add0~1_combout\) # ((\Add0~0_combout\ & (\a[22]~input_o\ $ (\b[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[22]~input_o\,
	datab => \b[22]~input_o\,
	datac => \Add0~0_combout\,
	datad => \Add0~1_combout\,
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X30_Y5_N24
\Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~1_combout\ = (\Add2~0_combout\ & (\a[22]~input_o\ $ (\b[22]~input_o\ $ (\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[22]~input_o\,
	datab => \b[22]~input_o\,
	datac => \Add0~0_combout\,
	datad => \Add2~0_combout\,
	combout => \Add3~1_combout\);

-- Location: LCCOMB_X30_Y5_N18
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = \Add2~1_combout\ $ (\Add1~0_combout\ $ (\Add3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~1_combout\,
	datac => \Add1~0_combout\,
	datad => \Add3~1_combout\,
	combout => \Add3~2_combout\);

-- Location: LCCOMB_X29_Y5_N2
\Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\Add4~1_combout\ & ((\Add3~2_combout\ & (\Add5~1\ & VCC)) # (!\Add3~2_combout\ & (!\Add5~1\)))) # (!\Add4~1_combout\ & ((\Add3~2_combout\ & (!\Add5~1\)) # (!\Add3~2_combout\ & ((\Add5~1\) # (GND)))))
-- \Add5~3\ = CARRY((\Add4~1_combout\ & (!\Add3~2_combout\ & !\Add5~1\)) # (!\Add4~1_combout\ & ((!\Add5~1\) # (!\Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~1_combout\,
	datab => \Add3~2_combout\,
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X29_Y5_N18
\Add11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~2_combout\ = (\Add9~2_combout\ & ((\Add5~2_combout\ & (\Add11~1\ & VCC)) # (!\Add5~2_combout\ & (!\Add11~1\)))) # (!\Add9~2_combout\ & ((\Add5~2_combout\ & (!\Add11~1\)) # (!\Add5~2_combout\ & ((\Add11~1\) # (GND)))))
-- \Add11~3\ = CARRY((\Add9~2_combout\ & (!\Add5~2_combout\ & !\Add11~1\)) # (!\Add9~2_combout\ & ((!\Add11~1\) # (!\Add5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~2_combout\,
	datab => \Add5~2_combout\,
	datad => VCC,
	cin => \Add11~1\,
	combout => \Add11~2_combout\,
	cout => \Add11~3\);

-- Location: LCCOMB_X29_Y21_N14
\Add12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~1_combout\ = (\b[11]~input_o\ & (!\a[11]~input_o\ & (\b[10]~input_o\ $ (\a[10]~input_o\)))) # (!\b[11]~input_o\ & (\a[11]~input_o\ & (\b[10]~input_o\ $ (\a[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[11]~input_o\,
	datab => \b[10]~input_o\,
	datac => \a[11]~input_o\,
	datad => \a[10]~input_o\,
	combout => \Add12~1_combout\);

-- Location: LCCOMB_X33_Y5_N4
\Add13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~2_combout\ = (\Add11~2_combout\ & ((\Add12~1_combout\ & (\Add13~1\ & VCC)) # (!\Add12~1_combout\ & (!\Add13~1\)))) # (!\Add11~2_combout\ & ((\Add12~1_combout\ & (!\Add13~1\)) # (!\Add12~1_combout\ & ((\Add13~1\) # (GND)))))
-- \Add13~3\ = CARRY((\Add11~2_combout\ & (!\Add12~1_combout\ & !\Add13~1\)) # (!\Add11~2_combout\ & ((!\Add13~1\) # (!\Add12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~2_combout\,
	datab => \Add12~1_combout\,
	datad => VCC,
	cin => \Add13~1\,
	combout => \Add13~2_combout\,
	cout => \Add13~3\);

-- Location: LCCOMB_X33_Y5_N0
\Add22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add22~1_combout\ = (\a[1]~input_o\ & (!\b[1]~input_o\ & (\a[0]~input_o\ $ (\b[0]~input_o\)))) # (!\a[1]~input_o\ & (\b[1]~input_o\ & (\a[0]~input_o\ $ (\b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[0]~input_o\,
	datac => \b[0]~input_o\,
	datad => \b[1]~input_o\,
	combout => \Add22~1_combout\);

-- Location: LCCOMB_X16_Y2_N28
\Add20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add20~1_combout\ = (\b[2]~input_o\ & (!\a[2]~input_o\ & (\a[3]~input_o\ $ (\b[3]~input_o\)))) # (!\b[2]~input_o\ & (\a[2]~input_o\ & (\a[3]~input_o\ $ (\b[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \a[3]~input_o\,
	datac => \b[3]~input_o\,
	datad => \a[2]~input_o\,
	combout => \Add20~1_combout\);

-- Location: LCCOMB_X16_Y2_N22
\Add18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~1_combout\ = (\a[4]~input_o\ & (!\b[4]~input_o\ & (\b[5]~input_o\ $ (\a[5]~input_o\)))) # (!\a[4]~input_o\ & (\b[4]~input_o\ & (\b[5]~input_o\ $ (\a[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \b[5]~input_o\,
	datac => \a[5]~input_o\,
	datad => \b[4]~input_o\,
	combout => \Add18~1_combout\);

-- Location: LCCOMB_X16_Y2_N6
\Add19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add19~1_combout\ = \Add20~1_combout\ $ (\Add18~1_combout\ $ (((\Add20~0_combout\ & \Add18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~0_combout\,
	datab => \Add20~1_combout\,
	datac => \Add18~1_combout\,
	datad => \Add18~0_combout\,
	combout => \Add19~1_combout\);

-- Location: LCCOMB_X17_Y2_N30
\Add14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~1_combout\ = (\b[8]~input_o\ & (!\a[8]~input_o\ & (\a[9]~input_o\ $ (\b[9]~input_o\)))) # (!\b[8]~input_o\ & (\a[8]~input_o\ & (\a[9]~input_o\ $ (\b[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[8]~input_o\,
	datab => \a[8]~input_o\,
	datac => \a[9]~input_o\,
	datad => \b[9]~input_o\,
	combout => \Add14~1_combout\);

-- Location: LCCOMB_X16_Y2_N2
\Add16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~1_combout\ = (\a[7]~input_o\ & (!\b[7]~input_o\ & (\b[6]~input_o\ $ (\a[6]~input_o\)))) # (!\a[7]~input_o\ & (\b[7]~input_o\ & (\b[6]~input_o\ $ (\a[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datab => \b[7]~input_o\,
	datac => \b[6]~input_o\,
	datad => \a[6]~input_o\,
	combout => \Add16~1_combout\);

-- Location: LCCOMB_X16_Y2_N20
\Add15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~1_combout\ = \Add14~1_combout\ $ (\Add16~1_combout\ $ (((\Add14~0_combout\ & \Add16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~0_combout\,
	datab => \Add16~0_combout\,
	datac => \Add14~1_combout\,
	datad => \Add16~1_combout\,
	combout => \Add15~1_combout\);

-- Location: LCCOMB_X16_Y2_N10
\Add17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add17~2_combout\ = (\Add19~1_combout\ & ((\Add15~1_combout\ & (\Add17~1\ & VCC)) # (!\Add15~1_combout\ & (!\Add17~1\)))) # (!\Add19~1_combout\ & ((\Add15~1_combout\ & (!\Add17~1\)) # (!\Add15~1_combout\ & ((\Add17~1\) # (GND)))))
-- \Add17~3\ = CARRY((\Add19~1_combout\ & (!\Add15~1_combout\ & !\Add17~1\)) # (!\Add19~1_combout\ & ((!\Add17~1\) # (!\Add15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~1_combout\,
	datab => \Add15~1_combout\,
	datad => VCC,
	cin => \Add17~1\,
	combout => \Add17~2_combout\,
	cout => \Add17~3\);

-- Location: LCCOMB_X33_Y5_N16
\Add21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add21~2_combout\ = (\Add22~1_combout\ & ((\Add17~2_combout\ & (\Add21~1\ & VCC)) # (!\Add17~2_combout\ & (!\Add21~1\)))) # (!\Add22~1_combout\ & ((\Add17~2_combout\ & (!\Add21~1\)) # (!\Add17~2_combout\ & ((\Add21~1\) # (GND)))))
-- \Add21~3\ = CARRY((\Add22~1_combout\ & (!\Add17~2_combout\ & !\Add21~1\)) # (!\Add22~1_combout\ & ((!\Add21~1\) # (!\Add17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add22~1_combout\,
	datab => \Add17~2_combout\,
	datad => VCC,
	cin => \Add21~1\,
	combout => \Add21~2_combout\,
	cout => \Add21~3\);

-- Location: LCCOMB_X33_Y5_N24
\Add23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add23~2_combout\ = (\Add13~2_combout\ & ((\Add21~2_combout\ & (\Add23~1\ & VCC)) # (!\Add21~2_combout\ & (!\Add23~1\)))) # (!\Add13~2_combout\ & ((\Add21~2_combout\ & (!\Add23~1\)) # (!\Add21~2_combout\ & ((\Add23~1\) # (GND)))))
-- \Add23~3\ = CARRY((\Add13~2_combout\ & (!\Add21~2_combout\ & !\Add23~1\)) # (!\Add13~2_combout\ & ((!\Add23~1\) # (!\Add21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~2_combout\,
	datab => \Add21~2_combout\,
	datad => VCC,
	cin => \Add23~1\,
	combout => \Add23~2_combout\,
	cout => \Add23~3\);

-- Location: LCCOMB_X30_Y9_N4
\Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (\Add6~1_combout\ & ((\Add8~1_combout\) # ((\Add6~0_combout\ & \Add8~0_combout\)))) # (!\Add6~1_combout\ & (\Add6~0_combout\ & (\Add8~0_combout\ & \Add8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~1_combout\,
	datab => \Add6~0_combout\,
	datac => \Add8~0_combout\,
	datad => \Add8~1_combout\,
	combout => \Add7~2_combout\);

-- Location: LCCOMB_X29_Y5_N12
\Add9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = (\Add7~2_combout\ & (\Add9~3\ $ (GND))) # (!\Add7~2_combout\ & (!\Add9~3\ & VCC))
-- \Add9~5\ = CARRY((\Add7~2_combout\ & !\Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~2_combout\,
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: LCCOMB_X30_Y5_N4
\Add3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~3_combout\ = (\Add1~0_combout\ & ((\Add2~1_combout\) # (\Add3~1_combout\))) # (!\Add1~0_combout\ & (\Add2~1_combout\ & \Add3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datac => \Add2~1_combout\,
	datad => \Add3~1_combout\,
	combout => \Add3~3_combout\);

-- Location: LCCOMB_X29_Y5_N4
\Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (\Add3~3_combout\ & (\Add5~3\ $ (GND))) # (!\Add3~3_combout\ & (!\Add5~3\ & VCC))
-- \Add5~5\ = CARRY((\Add3~3_combout\ & !\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~3_combout\,
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X29_Y5_N20
\Add11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~4_combout\ = ((\Add9~4_combout\ $ (\Add5~4_combout\ $ (!\Add11~3\)))) # (GND)
-- \Add11~5\ = CARRY((\Add9~4_combout\ & ((\Add5~4_combout\) # (!\Add11~3\))) # (!\Add9~4_combout\ & (\Add5~4_combout\ & !\Add11~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~4_combout\,
	datab => \Add5~4_combout\,
	datad => VCC,
	cin => \Add11~3\,
	combout => \Add11~4_combout\,
	cout => \Add11~5\);

-- Location: LCCOMB_X33_Y5_N6
\Add13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~4_combout\ = (\Add11~4_combout\ & (\Add13~3\ $ (GND))) # (!\Add11~4_combout\ & (!\Add13~3\ & VCC))
-- \Add13~5\ = CARRY((\Add11~4_combout\ & !\Add13~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~4_combout\,
	datad => VCC,
	cin => \Add13~3\,
	combout => \Add13~4_combout\,
	cout => \Add13~5\);

-- Location: LCCOMB_X16_Y2_N18
\Add19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add19~2_combout\ = (\Add18~1_combout\ & ((\Add20~1_combout\) # ((\Add20~0_combout\ & \Add18~0_combout\)))) # (!\Add18~1_combout\ & (\Add20~0_combout\ & (\Add18~0_combout\ & \Add20~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~0_combout\,
	datab => \Add18~0_combout\,
	datac => \Add18~1_combout\,
	datad => \Add20~1_combout\,
	combout => \Add19~2_combout\);

-- Location: LCCOMB_X16_Y2_N24
\Add15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~2_combout\ = (\Add14~1_combout\ & ((\Add16~1_combout\) # ((\Add16~0_combout\ & \Add14~0_combout\)))) # (!\Add14~1_combout\ & (\Add16~1_combout\ & (\Add16~0_combout\ & \Add14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~1_combout\,
	datab => \Add16~1_combout\,
	datac => \Add16~0_combout\,
	datad => \Add14~0_combout\,
	combout => \Add15~2_combout\);

-- Location: LCCOMB_X16_Y2_N12
\Add17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add17~4_combout\ = ((\Add19~2_combout\ $ (\Add15~2_combout\ $ (!\Add17~3\)))) # (GND)
-- \Add17~5\ = CARRY((\Add19~2_combout\ & ((\Add15~2_combout\) # (!\Add17~3\))) # (!\Add19~2_combout\ & (\Add15~2_combout\ & !\Add17~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~2_combout\,
	datab => \Add15~2_combout\,
	datad => VCC,
	cin => \Add17~3\,
	combout => \Add17~4_combout\,
	cout => \Add17~5\);

-- Location: LCCOMB_X33_Y5_N18
\Add21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add21~4_combout\ = (\Add17~4_combout\ & (\Add21~3\ $ (GND))) # (!\Add17~4_combout\ & (!\Add21~3\ & VCC))
-- \Add21~5\ = CARRY((\Add17~4_combout\ & !\Add21~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~4_combout\,
	datad => VCC,
	cin => \Add21~3\,
	combout => \Add21~4_combout\,
	cout => \Add21~5\);

-- Location: LCCOMB_X33_Y5_N26
\Add23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add23~4_combout\ = ((\Add13~4_combout\ $ (\Add21~4_combout\ $ (!\Add23~3\)))) # (GND)
-- \Add23~5\ = CARRY((\Add13~4_combout\ & ((\Add21~4_combout\) # (!\Add23~3\))) # (!\Add13~4_combout\ & (\Add21~4_combout\ & !\Add23~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~4_combout\,
	datab => \Add21~4_combout\,
	datad => VCC,
	cin => \Add23~3\,
	combout => \Add23~4_combout\,
	cout => \Add23~5\);

-- Location: LCCOMB_X16_Y2_N14
\Add17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add17~6_combout\ = \Add17~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add17~5\,
	combout => \Add17~6_combout\);

-- Location: LCCOMB_X33_Y5_N20
\Add21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add21~6_combout\ = \Add21~5\ $ (\Add17~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add17~6_combout\,
	cin => \Add21~5\,
	combout => \Add21~6_combout\);

-- Location: LCCOMB_X29_Y5_N14
\Add9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = \Add9~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add9~5\,
	combout => \Add9~6_combout\);

-- Location: LCCOMB_X29_Y5_N6
\Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = \Add5~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add5~5\,
	combout => \Add5~6_combout\);

-- Location: LCCOMB_X29_Y5_N22
\Add11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~6_combout\ = \Add9~6_combout\ $ (\Add11~5\ $ (\Add5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~6_combout\,
	datad => \Add5~6_combout\,
	cin => \Add11~5\,
	combout => \Add11~6_combout\);

-- Location: LCCOMB_X33_Y5_N8
\Add13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~6_combout\ = (\Add11~6_combout\ & (!\Add13~5\)) # (!\Add11~6_combout\ & ((\Add13~5\) # (GND)))
-- \Add13~7\ = CARRY((!\Add13~5\) # (!\Add11~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~6_combout\,
	datad => VCC,
	cin => \Add13~5\,
	combout => \Add13~6_combout\,
	cout => \Add13~7\);

-- Location: LCCOMB_X33_Y5_N28
\Add23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add23~6_combout\ = (\Add21~6_combout\ & ((\Add13~6_combout\ & (\Add23~5\ & VCC)) # (!\Add13~6_combout\ & (!\Add23~5\)))) # (!\Add21~6_combout\ & ((\Add13~6_combout\ & (!\Add23~5\)) # (!\Add13~6_combout\ & ((\Add23~5\) # (GND)))))
-- \Add23~7\ = CARRY((\Add21~6_combout\ & (!\Add13~6_combout\ & !\Add23~5\)) # (!\Add21~6_combout\ & ((!\Add23~5\) # (!\Add13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add21~6_combout\,
	datab => \Add13~6_combout\,
	datad => VCC,
	cin => \Add23~5\,
	combout => \Add23~6_combout\,
	cout => \Add23~7\);

-- Location: LCCOMB_X33_Y5_N10
\Add13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~8_combout\ = !\Add13~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add13~7\,
	combout => \Add13~8_combout\);

-- Location: LCCOMB_X33_Y5_N30
\Add23~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add23~8_combout\ = \Add23~7\ $ (!\Add13~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add13~8_combout\,
	cin => \Add23~7\,
	combout => \Add23~8_combout\);

ww_y(0) <= \y[0]~output_o\;

ww_y(1) <= \y[1]~output_o\;

ww_y(2) <= \y[2]~output_o\;

ww_y(3) <= \y[3]~output_o\;

ww_y(4) <= \y[4]~output_o\;
END structure;


