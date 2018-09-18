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

-- DATE "04/18/2018 21:05:13"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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

ENTITY 	hw02 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(1 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END hw02;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hw02 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \debounce1|Bounce[0]~0_combout\ : std_logic;
SIGNAL \clock_1s|Add0~0_combout\ : std_logic;
SIGNAL \clock_1s|Add0~1\ : std_logic;
SIGNAL \clock_1s|Add0~2_combout\ : std_logic;
SIGNAL \clock_1k|Add0~1_cout\ : std_logic;
SIGNAL \clock_1k|Add0~2_combout\ : std_logic;
SIGNAL \clock_1k|Add0~3\ : std_logic;
SIGNAL \clock_1k|Add0~4_combout\ : std_logic;
SIGNAL \clock_1k|Add0~5\ : std_logic;
SIGNAL \clock_1k|Add0~6_combout\ : std_logic;
SIGNAL \clock_1k|CLK_Cnt~0_combout\ : std_logic;
SIGNAL \clock_1k|Add0~7\ : std_logic;
SIGNAL \clock_1k|Add0~8_combout\ : std_logic;
SIGNAL \clock_1k|Add0~9\ : std_logic;
SIGNAL \clock_1k|Add0~10_combout\ : std_logic;
SIGNAL \clock_1k|CLK_Cnt~5_combout\ : std_logic;
SIGNAL \clock_1k|Add0~11\ : std_logic;
SIGNAL \clock_1k|Add0~12_combout\ : std_logic;
SIGNAL \clock_1k|Add0~13\ : std_logic;
SIGNAL \clock_1k|Add0~14_combout\ : std_logic;
SIGNAL \clock_1k|CLK_Cnt~4_combout\ : std_logic;
SIGNAL \clock_1k|Add0~15\ : std_logic;
SIGNAL \clock_1k|Add0~16_combout\ : std_logic;
SIGNAL \clock_1k|CLK_Cnt~3_combout\ : std_logic;
SIGNAL \clock_1k|Equal0~5_combout\ : std_logic;
SIGNAL \clock_1k|Add0~17\ : std_logic;
SIGNAL \clock_1k|Add0~18_combout\ : std_logic;
SIGNAL \clock_1k|Add0~19\ : std_logic;
SIGNAL \clock_1k|Add0~20_combout\ : std_logic;
SIGNAL \clock_1k|Add0~21\ : std_logic;
SIGNAL \clock_1k|Add0~22_combout\ : std_logic;
SIGNAL \clock_1k|Add0~23\ : std_logic;
SIGNAL \clock_1k|Add0~24_combout\ : std_logic;
SIGNAL \clock_1k|Add0~25\ : std_logic;
SIGNAL \clock_1k|Add0~27\ : std_logic;
SIGNAL \clock_1k|Add0~28_combout\ : std_logic;
SIGNAL \clock_1k|CLK_Cnt~1_combout\ : std_logic;
SIGNAL \clock_1k|Equal0~4_combout\ : std_logic;
SIGNAL \clock_1k|Equal0~1_combout\ : std_logic;
SIGNAL \clock_1k|Add0~29\ : std_logic;
SIGNAL \clock_1k|Add0~30_combout\ : std_logic;
SIGNAL \clock_1k|Add0~31\ : std_logic;
SIGNAL \clock_1k|Add0~32_combout\ : std_logic;
SIGNAL \clock_1k|Add0~33\ : std_logic;
SIGNAL \clock_1k|Add0~34_combout\ : std_logic;
SIGNAL \clock_1k|Add0~35\ : std_logic;
SIGNAL \clock_1k|Add0~36_combout\ : std_logic;
SIGNAL \clock_1k|Equal0~0_combout\ : std_logic;
SIGNAL \clock_1k|Equal0~2_combout\ : std_logic;
SIGNAL \clock_1k|Equal0~3_combout\ : std_logic;
SIGNAL \clock_1k|Equal0~6_combout\ : std_logic;
SIGNAL \clock_1k|Add0~26_combout\ : std_logic;
SIGNAL \clock_1k|CLK_Cnt~2_combout\ : std_logic;
SIGNAL \clock_1k|Equal1~0_combout\ : std_logic;
SIGNAL \clock_1k|Equal1~1_combout\ : std_logic;
SIGNAL \clock_1k|Equal1~2_combout\ : std_logic;
SIGNAL \clock_1k|CLK_Out~q\ : std_logic;
SIGNAL \sf~q\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \debounce2|Bounce[0]~0_combout\ : std_logic;
SIGNAL \clock_1s|Add0~3\ : std_logic;
SIGNAL \clock_1s|Add0~4_combout\ : std_logic;
SIGNAL \clock_1s|Add0~5\ : std_logic;
SIGNAL \clock_1s|Add0~6_combout\ : std_logic;
SIGNAL \clock_1s|Add0~7\ : std_logic;
SIGNAL \clock_1s|Add0~8_combout\ : std_logic;
SIGNAL \clock_1s|Add0~9\ : std_logic;
SIGNAL \clock_1s|Add0~10_combout\ : std_logic;
SIGNAL \clock_1s|Add0~11\ : std_logic;
SIGNAL \clock_1s|Add0~12_combout\ : std_logic;
SIGNAL \clock_1s|Add0~13\ : std_logic;
SIGNAL \clock_1s|Add0~14_combout\ : std_logic;
SIGNAL \clock_1s|CLK_Cnt~0_combout\ : std_logic;
SIGNAL \clock_1s|Add0~15\ : std_logic;
SIGNAL \clock_1s|Add0~16_combout\ : std_logic;
SIGNAL \clock_1s|Add0~17\ : std_logic;
SIGNAL \clock_1s|Add0~18_combout\ : std_logic;
SIGNAL \clock_1s|Add0~19\ : std_logic;
SIGNAL \clock_1s|Add0~20_combout\ : std_logic;
SIGNAL \clock_1s|Add0~21\ : std_logic;
SIGNAL \clock_1s|Add0~22_combout\ : std_logic;
SIGNAL \clock_1s|Add0~23\ : std_logic;
SIGNAL \clock_1s|Add0~24_combout\ : std_logic;
SIGNAL \clock_1s|CLK_Cnt~11_combout\ : std_logic;
SIGNAL \clock_1s|Add0~25\ : std_logic;
SIGNAL \clock_1s|Add0~26_combout\ : std_logic;
SIGNAL \clock_1s|CLK_Cnt~10_combout\ : std_logic;
SIGNAL \clock_1s|Add0~27\ : std_logic;
SIGNAL \clock_1s|Add0~28_combout\ : std_logic;
SIGNAL \clock_1s|CLK_Cnt~9_combout\ : std_logic;
SIGNAL \clock_1s|Add0~29\ : std_logic;
SIGNAL \clock_1s|Add0~30_combout\ : std_logic;
SIGNAL \clock_1s|CLK_Cnt~8_combout\ : std_logic;
SIGNAL \clock_1s|Equal0~6_combout\ : std_logic;
SIGNAL \clock_1s|Add0~43\ : std_logic;
SIGNAL \clock_1s|Add0~44_combout\ : std_logic;
SIGNAL \clock_1s|CLK_Cnt~3_combout\ : std_logic;
SIGNAL \clock_1s|Equal0~5_combout\ : std_logic;
SIGNAL \clock_1s|Equal0~7_combout\ : std_logic;
SIGNAL \clock_1s|Equal0~8_combout\ : std_logic;
SIGNAL \clock_1s|Add0~45\ : std_logic;
SIGNAL \clock_1s|Add0~46_combout\ : std_logic;
SIGNAL \clock_1s|CLK_Cnt~2_combout\ : std_logic;
SIGNAL \clock_1s|Add0~47\ : std_logic;
SIGNAL \clock_1s|Add0~48_combout\ : std_logic;
SIGNAL \clock_1s|Add0~49\ : std_logic;
SIGNAL \clock_1s|Add0~50_combout\ : std_logic;
SIGNAL \clock_1s|CLK_Cnt~1_combout\ : std_logic;
SIGNAL \clock_1s|Equal0~3_combout\ : std_logic;
SIGNAL \clock_1s|Add0~51\ : std_logic;
SIGNAL \clock_1s|Add0~52_combout\ : std_logic;
SIGNAL \clock_1s|Add0~53\ : std_logic;
SIGNAL \clock_1s|Add0~54_combout\ : std_logic;
SIGNAL \clock_1s|Equal0~0_combout\ : std_logic;
SIGNAL \clock_1s|Equal0~2_combout\ : std_logic;
SIGNAL \clock_1s|Add0~31\ : std_logic;
SIGNAL \clock_1s|Add0~32_combout\ : std_logic;
SIGNAL \clock_1s|Equal0~1_combout\ : std_logic;
SIGNAL \clock_1s|Equal0~4_combout\ : std_logic;
SIGNAL \clock_1s|Equal0~9_combout\ : std_logic;
SIGNAL \clock_1s|Add0~33\ : std_logic;
SIGNAL \clock_1s|Add0~34_combout\ : std_logic;
SIGNAL \clock_1s|CLK_Cnt~7_combout\ : std_logic;
SIGNAL \clock_1s|Add0~35\ : std_logic;
SIGNAL \clock_1s|Add0~36_combout\ : std_logic;
SIGNAL \clock_1s|Add0~37\ : std_logic;
SIGNAL \clock_1s|Add0~38_combout\ : std_logic;
SIGNAL \clock_1s|CLK_Cnt~6_combout\ : std_logic;
SIGNAL \clock_1s|Add0~39\ : std_logic;
SIGNAL \clock_1s|Add0~40_combout\ : std_logic;
SIGNAL \clock_1s|CLK_Cnt~5_combout\ : std_logic;
SIGNAL \clock_1s|Add0~41\ : std_logic;
SIGNAL \clock_1s|Add0~42_combout\ : std_logic;
SIGNAL \clock_1s|CLK_Cnt~4_combout\ : std_logic;
SIGNAL \clock_1s|Equal1~2_combout\ : std_logic;
SIGNAL \clock_1s|Equal1~3_combout\ : std_logic;
SIGNAL \clock_1s|Equal1~4_combout\ : std_logic;
SIGNAL \clock_1s|Equal1~5_combout\ : std_logic;
SIGNAL \clock_1s|Equal1~0_combout\ : std_logic;
SIGNAL \clock_1s|Equal1~1_combout\ : std_logic;
SIGNAL \clock_1s|Equal1~6_combout\ : std_logic;
SIGNAL \clock_1s|CLK_Out~q\ : std_logic;
SIGNAL \d1[3]~0_combout\ : std_logic;
SIGNAL \d1[0]~1_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \d1[2]~3_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \d1[3]~4_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \d1[1]~2_combout\ : std_logic;
SIGNAL \s1|WideOr6~0_combout\ : std_logic;
SIGNAL \s1|WideOr5~0_combout\ : std_logic;
SIGNAL \s1|WideOr4~0_combout\ : std_logic;
SIGNAL \s1|WideOr3~0_combout\ : std_logic;
SIGNAL \s1|WideOr2~0_combout\ : std_logic;
SIGNAL \s1|WideOr1~0_combout\ : std_logic;
SIGNAL \s1|WideOr0~0_combout\ : std_logic;
SIGNAL \d2[1]~1_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \d2[2]~2_combout\ : std_logic;
SIGNAL \d2[3]~3_combout\ : std_logic;
SIGNAL \d3[2]~0_combout\ : std_logic;
SIGNAL \d2[0]~0_combout\ : std_logic;
SIGNAL \s2|WideOr6~0_combout\ : std_logic;
SIGNAL \s2|WideOr5~0_combout\ : std_logic;
SIGNAL \s2|WideOr4~0_combout\ : std_logic;
SIGNAL \s2|WideOr3~0_combout\ : std_logic;
SIGNAL \s2|WideOr2~0_combout\ : std_logic;
SIGNAL \s2|WideOr1~0_combout\ : std_logic;
SIGNAL \s2|WideOr0~0_combout\ : std_logic;
SIGNAL \d3~4_combout\ : std_logic;
SIGNAL \d3~6_combout\ : std_logic;
SIGNAL \mf~0_combout\ : std_logic;
SIGNAL \mf~q\ : std_logic;
SIGNAL \d3[2]~2_combout\ : std_logic;
SIGNAL \d3[2]~3_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \d3[3]~7_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \d3~1_combout\ : std_logic;
SIGNAL \d3~5_combout\ : std_logic;
SIGNAL \s3|WideOr6~0_combout\ : std_logic;
SIGNAL \s3|WideOr5~0_combout\ : std_logic;
SIGNAL \s3|WideOr4~0_combout\ : std_logic;
SIGNAL \s3|WideOr3~0_combout\ : std_logic;
SIGNAL \s3|WideOr2~0_combout\ : std_logic;
SIGNAL \s3|WideOr1~0_combout\ : std_logic;
SIGNAL \s3|WideOr0~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \d4[2]~4_combout\ : std_logic;
SIGNAL \d4[0]~0_combout\ : std_logic;
SIGNAL \d4[0]~1_combout\ : std_logic;
SIGNAL \d4[0]~2_combout\ : std_logic;
SIGNAL \d4[1]~3_combout\ : std_logic;
SIGNAL \Add3~1_combout\ : std_logic;
SIGNAL \d4[3]~5_combout\ : std_logic;
SIGNAL \s4|WideOr6~0_combout\ : std_logic;
SIGNAL \s4|WideOr5~0_combout\ : std_logic;
SIGNAL \s4|WideOr4~0_combout\ : std_logic;
SIGNAL \s4|WideOr3~0_combout\ : std_logic;
SIGNAL \s4|WideOr2~0_combout\ : std_logic;
SIGNAL \s4|WideOr1~0_combout\ : std_logic;
SIGNAL \s4|WideOr0~0_combout\ : std_logic;
SIGNAL \debounce2|Bounce\ : std_logic_vector(3 DOWNTO 0);
SIGNAL d4 : std_logic_vector(3 DOWNTO 0);
SIGNAL d3 : std_logic_vector(3 DOWNTO 0);
SIGNAL \debounce1|Bounce\ : std_logic_vector(3 DOWNTO 0);
SIGNAL d1 : std_logic_vector(3 DOWNTO 0);
SIGNAL d2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_1s|CLK_Cnt\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \clock_1k|CLK_Cnt\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \ALT_INV_d3[2]~3_combout\ : std_logic;
SIGNAL \s4|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \s3|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \s2|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \s1|ALT_INV_WideOr0~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ALT_INV_d3[2]~3_combout\ <= NOT \d3[2]~3_combout\;
\s4|ALT_INV_WideOr0~0_combout\ <= NOT \s4|WideOr0~0_combout\;
\s3|ALT_INV_WideOr0~0_combout\ <= NOT \s3|WideOr0~0_combout\;
\s2|ALT_INV_WideOr0~0_combout\ <= NOT \s2|WideOr0~0_combout\;
\s1|ALT_INV_WideOr0~0_combout\ <= NOT \s1|WideOr0~0_combout\;

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s3|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s3|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s3|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s3|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s3|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s3|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s3|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s4|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s4|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s4|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s4|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s4|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s4|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s4|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X113_Y31_N26
\debounce1|Bounce[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|Bounce[0]~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	combout => \debounce1|Bounce[0]~0_combout\);

-- Location: LCCOMB_X61_Y32_N4
\clock_1s|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Add0~0_combout\ = \clock_1s|CLK_Cnt\(0) $ (VCC)
-- \clock_1s|Add0~1\ = CARRY(\clock_1s|CLK_Cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_1s|CLK_Cnt\(0),
	datad => VCC,
	combout => \clock_1s|Add0~0_combout\,
	cout => \clock_1s|Add0~1\);

-- Location: FF_X61_Y32_N5
\clock_1s|CLK_Cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1s|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1s|CLK_Cnt\(0));

-- Location: LCCOMB_X61_Y32_N6
\clock_1s|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Add0~2_combout\ = (\clock_1s|CLK_Cnt\(1) & (!\clock_1s|Add0~1\)) # (!\clock_1s|CLK_Cnt\(1) & ((\clock_1s|Add0~1\) # (GND)))
-- \clock_1s|Add0~3\ = CARRY((!\clock_1s|Add0~1\) # (!\clock_1s|CLK_Cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1s|CLK_Cnt\(1),
	datad => VCC,
	cin => \clock_1s|Add0~1\,
	combout => \clock_1s|Add0~2_combout\,
	cout => \clock_1s|Add0~3\);

-- Location: FF_X61_Y32_N7
\clock_1s|CLK_Cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1s|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1s|CLK_Cnt\(1));

-- Location: LCCOMB_X66_Y32_N14
\clock_1k|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|Add0~1_cout\ = CARRY((\clock_1s|CLK_Cnt\(1) & \clock_1s|CLK_Cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1s|CLK_Cnt\(1),
	datab => \clock_1s|CLK_Cnt\(0),
	datad => VCC,
	cout => \clock_1k|Add0~1_cout\);

-- Location: LCCOMB_X66_Y32_N16
\clock_1k|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|Add0~2_combout\ = (\clock_1k|CLK_Cnt\(2) & (!\clock_1k|Add0~1_cout\)) # (!\clock_1k|CLK_Cnt\(2) & ((\clock_1k|Add0~1_cout\) # (GND)))
-- \clock_1k|Add0~3\ = CARRY((!\clock_1k|Add0~1_cout\) # (!\clock_1k|CLK_Cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1k|CLK_Cnt\(2),
	datad => VCC,
	cin => \clock_1k|Add0~1_cout\,
	combout => \clock_1k|Add0~2_combout\,
	cout => \clock_1k|Add0~3\);

-- Location: FF_X66_Y32_N17
\clock_1k|CLK_Cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1k|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1k|CLK_Cnt\(2));

-- Location: LCCOMB_X66_Y32_N18
\clock_1k|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|Add0~4_combout\ = (\clock_1k|CLK_Cnt\(3) & (\clock_1k|Add0~3\ $ (GND))) # (!\clock_1k|CLK_Cnt\(3) & (!\clock_1k|Add0~3\ & VCC))
-- \clock_1k|Add0~5\ = CARRY((\clock_1k|CLK_Cnt\(3) & !\clock_1k|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1k|CLK_Cnt\(3),
	datad => VCC,
	cin => \clock_1k|Add0~3\,
	combout => \clock_1k|Add0~4_combout\,
	cout => \clock_1k|Add0~5\);

-- Location: FF_X66_Y32_N19
\clock_1k|CLK_Cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1k|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1k|CLK_Cnt\(3));

-- Location: LCCOMB_X66_Y32_N20
\clock_1k|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|Add0~6_combout\ = (\clock_1k|CLK_Cnt\(4) & (!\clock_1k|Add0~5\)) # (!\clock_1k|CLK_Cnt\(4) & ((\clock_1k|Add0~5\) # (GND)))
-- \clock_1k|Add0~7\ = CARRY((!\clock_1k|Add0~5\) # (!\clock_1k|CLK_Cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1k|CLK_Cnt\(4),
	datad => VCC,
	cin => \clock_1k|Add0~5\,
	combout => \clock_1k|Add0~6_combout\,
	cout => \clock_1k|Add0~7\);

-- Location: LCCOMB_X66_Y32_N0
\clock_1k|CLK_Cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|CLK_Cnt~0_combout\ = (\clock_1k|Add0~6_combout\ & !\clock_1k|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_1k|Add0~6_combout\,
	datad => \clock_1k|Equal0~6_combout\,
	combout => \clock_1k|CLK_Cnt~0_combout\);

-- Location: FF_X66_Y32_N1
\clock_1k|CLK_Cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1k|CLK_Cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1k|CLK_Cnt\(4));

-- Location: LCCOMB_X66_Y32_N22
\clock_1k|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|Add0~8_combout\ = (\clock_1k|CLK_Cnt\(5) & (\clock_1k|Add0~7\ $ (GND))) # (!\clock_1k|CLK_Cnt\(5) & (!\clock_1k|Add0~7\ & VCC))
-- \clock_1k|Add0~9\ = CARRY((\clock_1k|CLK_Cnt\(5) & !\clock_1k|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1k|CLK_Cnt\(5),
	datad => VCC,
	cin => \clock_1k|Add0~7\,
	combout => \clock_1k|Add0~8_combout\,
	cout => \clock_1k|Add0~9\);

-- Location: FF_X66_Y32_N23
\clock_1k|CLK_Cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1k|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1k|CLK_Cnt\(5));

-- Location: LCCOMB_X66_Y32_N24
\clock_1k|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|Add0~10_combout\ = (\clock_1k|CLK_Cnt\(6) & (!\clock_1k|Add0~9\)) # (!\clock_1k|CLK_Cnt\(6) & ((\clock_1k|Add0~9\) # (GND)))
-- \clock_1k|Add0~11\ = CARRY((!\clock_1k|Add0~9\) # (!\clock_1k|CLK_Cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1k|CLK_Cnt\(6),
	datad => VCC,
	cin => \clock_1k|Add0~9\,
	combout => \clock_1k|Add0~10_combout\,
	cout => \clock_1k|Add0~11\);

-- Location: LCCOMB_X66_Y32_N4
\clock_1k|CLK_Cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|CLK_Cnt~5_combout\ = (\clock_1k|Add0~10_combout\ & !\clock_1k|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_1k|Add0~10_combout\,
	datad => \clock_1k|Equal0~6_combout\,
	combout => \clock_1k|CLK_Cnt~5_combout\);

-- Location: FF_X66_Y32_N5
\clock_1k|CLK_Cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1k|CLK_Cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1k|CLK_Cnt\(6));

-- Location: LCCOMB_X66_Y32_N26
\clock_1k|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|Add0~12_combout\ = (\clock_1k|CLK_Cnt\(7) & (\clock_1k|Add0~11\ $ (GND))) # (!\clock_1k|CLK_Cnt\(7) & (!\clock_1k|Add0~11\ & VCC))
-- \clock_1k|Add0~13\ = CARRY((\clock_1k|CLK_Cnt\(7) & !\clock_1k|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1k|CLK_Cnt\(7),
	datad => VCC,
	cin => \clock_1k|Add0~11\,
	combout => \clock_1k|Add0~12_combout\,
	cout => \clock_1k|Add0~13\);

-- Location: FF_X66_Y32_N27
\clock_1k|CLK_Cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1k|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1k|CLK_Cnt\(7));

-- Location: LCCOMB_X66_Y32_N28
\clock_1k|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|Add0~14_combout\ = (\clock_1k|CLK_Cnt\(8) & (!\clock_1k|Add0~13\)) # (!\clock_1k|CLK_Cnt\(8) & ((\clock_1k|Add0~13\) # (GND)))
-- \clock_1k|Add0~15\ = CARRY((!\clock_1k|Add0~13\) # (!\clock_1k|CLK_Cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1k|CLK_Cnt\(8),
	datad => VCC,
	cin => \clock_1k|Add0~13\,
	combout => \clock_1k|Add0~14_combout\,
	cout => \clock_1k|Add0~15\);

-- Location: LCCOMB_X66_Y32_N10
\clock_1k|CLK_Cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|CLK_Cnt~4_combout\ = (\clock_1k|Add0~14_combout\ & !\clock_1k|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_1k|Add0~14_combout\,
	datad => \clock_1k|Equal0~6_combout\,
	combout => \clock_1k|CLK_Cnt~4_combout\);

-- Location: FF_X66_Y32_N11
\clock_1k|CLK_Cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1k|CLK_Cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1k|CLK_Cnt\(8));

-- Location: LCCOMB_X66_Y32_N30
\clock_1k|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|Add0~16_combout\ = (\clock_1k|CLK_Cnt\(9) & (\clock_1k|Add0~15\ $ (GND))) # (!\clock_1k|CLK_Cnt\(9) & (!\clock_1k|Add0~15\ & VCC))
-- \clock_1k|Add0~17\ = CARRY((\clock_1k|CLK_Cnt\(9) & !\clock_1k|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1k|CLK_Cnt\(9),
	datad => VCC,
	cin => \clock_1k|Add0~15\,
	combout => \clock_1k|Add0~16_combout\,
	cout => \clock_1k|Add0~17\);

-- Location: LCCOMB_X66_Y32_N12
\clock_1k|CLK_Cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|CLK_Cnt~3_combout\ = (\clock_1k|Add0~16_combout\ & !\clock_1k|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_1k|Add0~16_combout\,
	datad => \clock_1k|Equal0~6_combout\,
	combout => \clock_1k|CLK_Cnt~3_combout\);

-- Location: FF_X66_Y32_N13
\clock_1k|CLK_Cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1k|CLK_Cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1k|CLK_Cnt\(9));

-- Location: LCCOMB_X66_Y32_N8
\clock_1k|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|Equal0~5_combout\ = (\clock_1k|CLK_Cnt\(8) & (\clock_1k|CLK_Cnt\(3) & (\clock_1k|CLK_Cnt\(6) & \clock_1k|CLK_Cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1k|CLK_Cnt\(8),
	datab => \clock_1k|CLK_Cnt\(3),
	datac => \clock_1k|CLK_Cnt\(6),
	datad => \clock_1k|CLK_Cnt\(9),
	combout => \clock_1k|Equal0~5_combout\);

-- Location: LCCOMB_X66_Y31_N0
\clock_1k|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|Add0~18_combout\ = (\clock_1k|CLK_Cnt\(10) & (!\clock_1k|Add0~17\)) # (!\clock_1k|CLK_Cnt\(10) & ((\clock_1k|Add0~17\) # (GND)))
-- \clock_1k|Add0~19\ = CARRY((!\clock_1k|Add0~17\) # (!\clock_1k|CLK_Cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1k|CLK_Cnt\(10),
	datad => VCC,
	cin => \clock_1k|Add0~17\,
	combout => \clock_1k|Add0~18_combout\,
	cout => \clock_1k|Add0~19\);

-- Location: FF_X66_Y31_N1
\clock_1k|CLK_Cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1k|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1k|CLK_Cnt\(10));

-- Location: LCCOMB_X66_Y31_N2
\clock_1k|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|Add0~20_combout\ = (\clock_1k|CLK_Cnt\(11) & (\clock_1k|Add0~19\ $ (GND))) # (!\clock_1k|CLK_Cnt\(11) & (!\clock_1k|Add0~19\ & VCC))
-- \clock_1k|Add0~21\ = CARRY((\clock_1k|CLK_Cnt\(11) & !\clock_1k|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1k|CLK_Cnt\(11),
	datad => VCC,
	cin => \clock_1k|Add0~19\,
	combout => \clock_1k|Add0~20_combout\,
	cout => \clock_1k|Add0~21\);

-- Location: FF_X66_Y31_N3
\clock_1k|CLK_Cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1k|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1k|CLK_Cnt\(11));

-- Location: LCCOMB_X66_Y31_N4
\clock_1k|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|Add0~22_combout\ = (\clock_1k|CLK_Cnt\(12) & (!\clock_1k|Add0~21\)) # (!\clock_1k|CLK_Cnt\(12) & ((\clock_1k|Add0~21\) # (GND)))
-- \clock_1k|Add0~23\ = CARRY((!\clock_1k|Add0~21\) # (!\clock_1k|CLK_Cnt\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1k|CLK_Cnt\(12),
	datad => VCC,
	cin => \clock_1k|Add0~21\,
	combout => \clock_1k|Add0~22_combout\,
	cout => \clock_1k|Add0~23\);

-- Location: FF_X66_Y31_N5
\clock_1k|CLK_Cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1k|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1k|CLK_Cnt\(12));

-- Location: LCCOMB_X66_Y31_N6
\clock_1k|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|Add0~24_combout\ = (\clock_1k|CLK_Cnt\(13) & (\clock_1k|Add0~23\ $ (GND))) # (!\clock_1k|CLK_Cnt\(13) & (!\clock_1k|Add0~23\ & VCC))
-- \clock_1k|Add0~25\ = CARRY((\clock_1k|CLK_Cnt\(13) & !\clock_1k|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1k|CLK_Cnt\(13),
	datad => VCC,
	cin => \clock_1k|Add0~23\,
	combout => \clock_1k|Add0~24_combout\,
	cout => \clock_1k|Add0~25\);

-- Location: FF_X66_Y31_N7
\clock_1k|CLK_Cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1k|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1k|CLK_Cnt\(13));

-- Location: LCCOMB_X66_Y31_N8
\clock_1k|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|Add0~26_combout\ = (\clock_1k|CLK_Cnt\(14) & (!\clock_1k|Add0~25\)) # (!\clock_1k|CLK_Cnt\(14) & ((\clock_1k|Add0~25\) # (GND)))
-- \clock_1k|Add0~27\ = CARRY((!\clock_1k|Add0~25\) # (!\clock_1k|CLK_Cnt\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1k|CLK_Cnt\(14),
	datad => VCC,
	cin => \clock_1k|Add0~25\,
	combout => \clock_1k|Add0~26_combout\,
	cout => \clock_1k|Add0~27\);

-- Location: LCCOMB_X66_Y31_N10
\clock_1k|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|Add0~28_combout\ = (\clock_1k|CLK_Cnt\(15) & (\clock_1k|Add0~27\ $ (GND))) # (!\clock_1k|CLK_Cnt\(15) & (!\clock_1k|Add0~27\ & VCC))
-- \clock_1k|Add0~29\ = CARRY((\clock_1k|CLK_Cnt\(15) & !\clock_1k|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1k|CLK_Cnt\(15),
	datad => VCC,
	cin => \clock_1k|Add0~27\,
	combout => \clock_1k|Add0~28_combout\,
	cout => \clock_1k|Add0~29\);

-- Location: LCCOMB_X66_Y31_N26
\clock_1k|CLK_Cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|CLK_Cnt~1_combout\ = (!\clock_1k|Equal0~6_combout\ & \clock_1k|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_1k|Equal0~6_combout\,
	datad => \clock_1k|Add0~28_combout\,
	combout => \clock_1k|CLK_Cnt~1_combout\);

-- Location: FF_X66_Y31_N27
\clock_1k|CLK_Cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1k|CLK_Cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1k|CLK_Cnt\(15));

-- Location: LCCOMB_X65_Y31_N16
\clock_1k|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|Equal0~4_combout\ = (\clock_1s|CLK_Cnt\(1) & (\clock_1k|CLK_Cnt\(15) & (\clock_1s|CLK_Cnt\(0) & \clock_1k|CLK_Cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1s|CLK_Cnt\(1),
	datab => \clock_1k|CLK_Cnt\(15),
	datac => \clock_1s|CLK_Cnt\(0),
	datad => \clock_1k|CLK_Cnt\(14),
	combout => \clock_1k|Equal0~4_combout\);

-- Location: LCCOMB_X66_Y31_N30
\clock_1k|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|Equal0~1_combout\ = (!\clock_1k|CLK_Cnt\(13) & (!\clock_1k|CLK_Cnt\(10) & (!\clock_1k|CLK_Cnt\(12) & !\clock_1k|CLK_Cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1k|CLK_Cnt\(13),
	datab => \clock_1k|CLK_Cnt\(10),
	datac => \clock_1k|CLK_Cnt\(12),
	datad => \clock_1k|CLK_Cnt\(11),
	combout => \clock_1k|Equal0~1_combout\);

-- Location: LCCOMB_X66_Y31_N12
\clock_1k|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|Add0~30_combout\ = (\clock_1k|CLK_Cnt\(16) & (!\clock_1k|Add0~29\)) # (!\clock_1k|CLK_Cnt\(16) & ((\clock_1k|Add0~29\) # (GND)))
-- \clock_1k|Add0~31\ = CARRY((!\clock_1k|Add0~29\) # (!\clock_1k|CLK_Cnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1k|CLK_Cnt\(16),
	datad => VCC,
	cin => \clock_1k|Add0~29\,
	combout => \clock_1k|Add0~30_combout\,
	cout => \clock_1k|Add0~31\);

-- Location: FF_X66_Y31_N13
\clock_1k|CLK_Cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1k|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1k|CLK_Cnt\(16));

-- Location: LCCOMB_X66_Y31_N14
\clock_1k|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|Add0~32_combout\ = (\clock_1k|CLK_Cnt\(17) & (\clock_1k|Add0~31\ $ (GND))) # (!\clock_1k|CLK_Cnt\(17) & (!\clock_1k|Add0~31\ & VCC))
-- \clock_1k|Add0~33\ = CARRY((\clock_1k|CLK_Cnt\(17) & !\clock_1k|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1k|CLK_Cnt\(17),
	datad => VCC,
	cin => \clock_1k|Add0~31\,
	combout => \clock_1k|Add0~32_combout\,
	cout => \clock_1k|Add0~33\);

-- Location: FF_X66_Y31_N15
\clock_1k|CLK_Cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1k|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1k|CLK_Cnt\(17));

-- Location: LCCOMB_X66_Y31_N16
\clock_1k|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|Add0~34_combout\ = (\clock_1k|CLK_Cnt\(18) & (!\clock_1k|Add0~33\)) # (!\clock_1k|CLK_Cnt\(18) & ((\clock_1k|Add0~33\) # (GND)))
-- \clock_1k|Add0~35\ = CARRY((!\clock_1k|Add0~33\) # (!\clock_1k|CLK_Cnt\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1k|CLK_Cnt\(18),
	datad => VCC,
	cin => \clock_1k|Add0~33\,
	combout => \clock_1k|Add0~34_combout\,
	cout => \clock_1k|Add0~35\);

-- Location: FF_X66_Y31_N17
\clock_1k|CLK_Cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1k|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1k|CLK_Cnt\(18));

-- Location: LCCOMB_X66_Y31_N18
\clock_1k|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|Add0~36_combout\ = \clock_1k|Add0~35\ $ (!\clock_1k|CLK_Cnt\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clock_1k|CLK_Cnt\(19),
	cin => \clock_1k|Add0~35\,
	combout => \clock_1k|Add0~36_combout\);

-- Location: FF_X66_Y31_N19
\clock_1k|CLK_Cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1k|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1k|CLK_Cnt\(19));

-- Location: LCCOMB_X66_Y31_N24
\clock_1k|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|Equal0~0_combout\ = (!\clock_1k|CLK_Cnt\(16) & (!\clock_1k|CLK_Cnt\(18) & (!\clock_1k|CLK_Cnt\(17) & !\clock_1k|CLK_Cnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1k|CLK_Cnt\(16),
	datab => \clock_1k|CLK_Cnt\(18),
	datac => \clock_1k|CLK_Cnt\(17),
	datad => \clock_1k|CLK_Cnt\(19),
	combout => \clock_1k|Equal0~0_combout\);

-- Location: LCCOMB_X66_Y32_N2
\clock_1k|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|Equal0~2_combout\ = (!\clock_1k|CLK_Cnt\(5) & (!\clock_1k|CLK_Cnt\(7) & !\clock_1k|CLK_Cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1k|CLK_Cnt\(5),
	datac => \clock_1k|CLK_Cnt\(7),
	datad => \clock_1k|CLK_Cnt\(4),
	combout => \clock_1k|Equal0~2_combout\);

-- Location: LCCOMB_X66_Y31_N20
\clock_1k|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|Equal0~3_combout\ = (\clock_1k|Equal0~1_combout\ & (\clock_1k|Equal0~0_combout\ & \clock_1k|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1k|Equal0~1_combout\,
	datab => \clock_1k|Equal0~0_combout\,
	datad => \clock_1k|Equal0~2_combout\,
	combout => \clock_1k|Equal0~3_combout\);

-- Location: LCCOMB_X66_Y31_N22
\clock_1k|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|Equal0~6_combout\ = (\clock_1k|CLK_Cnt\(2) & (\clock_1k|Equal0~5_combout\ & (\clock_1k|Equal0~4_combout\ & \clock_1k|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1k|CLK_Cnt\(2),
	datab => \clock_1k|Equal0~5_combout\,
	datac => \clock_1k|Equal0~4_combout\,
	datad => \clock_1k|Equal0~3_combout\,
	combout => \clock_1k|Equal0~6_combout\);

-- Location: LCCOMB_X66_Y31_N28
\clock_1k|CLK_Cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|CLK_Cnt~2_combout\ = (!\clock_1k|Equal0~6_combout\ & \clock_1k|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1k|Equal0~6_combout\,
	datac => \clock_1k|Add0~26_combout\,
	combout => \clock_1k|CLK_Cnt~2_combout\);

-- Location: FF_X66_Y31_N29
\clock_1k|CLK_Cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1k|CLK_Cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1k|CLK_Cnt\(14));

-- Location: LCCOMB_X65_Y31_N2
\clock_1k|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|Equal1~0_combout\ = (!\clock_1s|CLK_Cnt\(1) & (!\clock_1k|CLK_Cnt\(14) & (!\clock_1s|CLK_Cnt\(0) & !\clock_1k|CLK_Cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1s|CLK_Cnt\(1),
	datab => \clock_1k|CLK_Cnt\(14),
	datac => \clock_1s|CLK_Cnt\(0),
	datad => \clock_1k|CLK_Cnt\(15),
	combout => \clock_1k|Equal1~0_combout\);

-- Location: LCCOMB_X66_Y32_N6
\clock_1k|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|Equal1~1_combout\ = (!\clock_1k|CLK_Cnt\(8) & (!\clock_1k|CLK_Cnt\(3) & (!\clock_1k|CLK_Cnt\(6) & !\clock_1k|CLK_Cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1k|CLK_Cnt\(8),
	datab => \clock_1k|CLK_Cnt\(3),
	datac => \clock_1k|CLK_Cnt\(6),
	datad => \clock_1k|CLK_Cnt\(9),
	combout => \clock_1k|Equal1~1_combout\);

-- Location: LCCOMB_X65_Y31_N28
\clock_1k|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1k|Equal1~2_combout\ = (!\clock_1k|CLK_Cnt\(2) & (\clock_1k|Equal1~0_combout\ & (\clock_1k|Equal0~3_combout\ & \clock_1k|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1k|CLK_Cnt\(2),
	datab => \clock_1k|Equal1~0_combout\,
	datac => \clock_1k|Equal0~3_combout\,
	datad => \clock_1k|Equal1~1_combout\,
	combout => \clock_1k|Equal1~2_combout\);

-- Location: FF_X65_Y31_N29
\clock_1k|CLK_Out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1k|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1k|CLK_Out~q\);

-- Location: FF_X113_Y31_N27
\debounce1|Bounce[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|Bounce[0]~0_combout\,
	ena => \clock_1k|CLK_Out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|Bounce\(0));

-- Location: FF_X113_Y31_N17
sf : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debounce1|Bounce\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sf~q\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X113_Y31_N24
\debounce2|Bounce[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce2|Bounce[0]~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[1]~input_o\,
	combout => \debounce2|Bounce[0]~0_combout\);

-- Location: FF_X113_Y31_N25
\debounce2|Bounce[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce2|Bounce[0]~0_combout\,
	ena => \clock_1k|CLK_Out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce2|Bounce\(0));

-- Location: LCCOMB_X61_Y32_N8
\clock_1s|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Add0~4_combout\ = (\clock_1s|CLK_Cnt\(2) & (\clock_1s|Add0~3\ $ (GND))) # (!\clock_1s|CLK_Cnt\(2) & (!\clock_1s|Add0~3\ & VCC))
-- \clock_1s|Add0~5\ = CARRY((\clock_1s|CLK_Cnt\(2) & !\clock_1s|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1s|CLK_Cnt\(2),
	datad => VCC,
	cin => \clock_1s|Add0~3\,
	combout => \clock_1s|Add0~4_combout\,
	cout => \clock_1s|Add0~5\);

-- Location: FF_X61_Y32_N9
\clock_1s|CLK_Cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1s|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1s|CLK_Cnt\(2));

-- Location: LCCOMB_X61_Y32_N10
\clock_1s|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Add0~6_combout\ = (\clock_1s|CLK_Cnt\(3) & (!\clock_1s|Add0~5\)) # (!\clock_1s|CLK_Cnt\(3) & ((\clock_1s|Add0~5\) # (GND)))
-- \clock_1s|Add0~7\ = CARRY((!\clock_1s|Add0~5\) # (!\clock_1s|CLK_Cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1s|CLK_Cnt\(3),
	datad => VCC,
	cin => \clock_1s|Add0~5\,
	combout => \clock_1s|Add0~6_combout\,
	cout => \clock_1s|Add0~7\);

-- Location: FF_X61_Y32_N11
\clock_1s|CLK_Cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1s|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1s|CLK_Cnt\(3));

-- Location: LCCOMB_X61_Y32_N12
\clock_1s|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Add0~8_combout\ = (\clock_1s|CLK_Cnt\(4) & (\clock_1s|Add0~7\ $ (GND))) # (!\clock_1s|CLK_Cnt\(4) & (!\clock_1s|Add0~7\ & VCC))
-- \clock_1s|Add0~9\ = CARRY((\clock_1s|CLK_Cnt\(4) & !\clock_1s|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1s|CLK_Cnt\(4),
	datad => VCC,
	cin => \clock_1s|Add0~7\,
	combout => \clock_1s|Add0~8_combout\,
	cout => \clock_1s|Add0~9\);

-- Location: FF_X61_Y32_N13
\clock_1s|CLK_Cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1s|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1s|CLK_Cnt\(4));

-- Location: LCCOMB_X61_Y32_N14
\clock_1s|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Add0~10_combout\ = (\clock_1s|CLK_Cnt\(5) & (!\clock_1s|Add0~9\)) # (!\clock_1s|CLK_Cnt\(5) & ((\clock_1s|Add0~9\) # (GND)))
-- \clock_1s|Add0~11\ = CARRY((!\clock_1s|Add0~9\) # (!\clock_1s|CLK_Cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1s|CLK_Cnt\(5),
	datad => VCC,
	cin => \clock_1s|Add0~9\,
	combout => \clock_1s|Add0~10_combout\,
	cout => \clock_1s|Add0~11\);

-- Location: FF_X61_Y32_N15
\clock_1s|CLK_Cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1s|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1s|CLK_Cnt\(5));

-- Location: LCCOMB_X61_Y32_N16
\clock_1s|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Add0~12_combout\ = (\clock_1s|CLK_Cnt\(6) & (\clock_1s|Add0~11\ $ (GND))) # (!\clock_1s|CLK_Cnt\(6) & (!\clock_1s|Add0~11\ & VCC))
-- \clock_1s|Add0~13\ = CARRY((\clock_1s|CLK_Cnt\(6) & !\clock_1s|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1s|CLK_Cnt\(6),
	datad => VCC,
	cin => \clock_1s|Add0~11\,
	combout => \clock_1s|Add0~12_combout\,
	cout => \clock_1s|Add0~13\);

-- Location: FF_X61_Y32_N17
\clock_1s|CLK_Cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1s|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1s|CLK_Cnt\(6));

-- Location: LCCOMB_X61_Y32_N18
\clock_1s|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Add0~14_combout\ = (\clock_1s|CLK_Cnt\(7) & (!\clock_1s|Add0~13\)) # (!\clock_1s|CLK_Cnt\(7) & ((\clock_1s|Add0~13\) # (GND)))
-- \clock_1s|Add0~15\ = CARRY((!\clock_1s|Add0~13\) # (!\clock_1s|CLK_Cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1s|CLK_Cnt\(7),
	datad => VCC,
	cin => \clock_1s|Add0~13\,
	combout => \clock_1s|Add0~14_combout\,
	cout => \clock_1s|Add0~15\);

-- Location: LCCOMB_X61_Y32_N0
\clock_1s|CLK_Cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|CLK_Cnt~0_combout\ = (\clock_1s|Add0~14_combout\ & !\clock_1s|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_1s|Add0~14_combout\,
	datac => \clock_1s|Equal0~9_combout\,
	combout => \clock_1s|CLK_Cnt~0_combout\);

-- Location: FF_X61_Y32_N1
\clock_1s|CLK_Cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1s|CLK_Cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1s|CLK_Cnt\(7));

-- Location: LCCOMB_X61_Y32_N20
\clock_1s|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Add0~16_combout\ = (\clock_1s|CLK_Cnt\(8) & (\clock_1s|Add0~15\ $ (GND))) # (!\clock_1s|CLK_Cnt\(8) & (!\clock_1s|Add0~15\ & VCC))
-- \clock_1s|Add0~17\ = CARRY((\clock_1s|CLK_Cnt\(8) & !\clock_1s|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1s|CLK_Cnt\(8),
	datad => VCC,
	cin => \clock_1s|Add0~15\,
	combout => \clock_1s|Add0~16_combout\,
	cout => \clock_1s|Add0~17\);

-- Location: FF_X61_Y32_N21
\clock_1s|CLK_Cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1s|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1s|CLK_Cnt\(8));

-- Location: LCCOMB_X61_Y32_N22
\clock_1s|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Add0~18_combout\ = (\clock_1s|CLK_Cnt\(9) & (!\clock_1s|Add0~17\)) # (!\clock_1s|CLK_Cnt\(9) & ((\clock_1s|Add0~17\) # (GND)))
-- \clock_1s|Add0~19\ = CARRY((!\clock_1s|Add0~17\) # (!\clock_1s|CLK_Cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1s|CLK_Cnt\(9),
	datad => VCC,
	cin => \clock_1s|Add0~17\,
	combout => \clock_1s|Add0~18_combout\,
	cout => \clock_1s|Add0~19\);

-- Location: FF_X61_Y32_N23
\clock_1s|CLK_Cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1s|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1s|CLK_Cnt\(9));

-- Location: LCCOMB_X61_Y32_N24
\clock_1s|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Add0~20_combout\ = (\clock_1s|CLK_Cnt\(10) & (\clock_1s|Add0~19\ $ (GND))) # (!\clock_1s|CLK_Cnt\(10) & (!\clock_1s|Add0~19\ & VCC))
-- \clock_1s|Add0~21\ = CARRY((\clock_1s|CLK_Cnt\(10) & !\clock_1s|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1s|CLK_Cnt\(10),
	datad => VCC,
	cin => \clock_1s|Add0~19\,
	combout => \clock_1s|Add0~20_combout\,
	cout => \clock_1s|Add0~21\);

-- Location: FF_X61_Y32_N25
\clock_1s|CLK_Cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1s|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1s|CLK_Cnt\(10));

-- Location: LCCOMB_X61_Y32_N26
\clock_1s|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Add0~22_combout\ = (\clock_1s|CLK_Cnt\(11) & (!\clock_1s|Add0~21\)) # (!\clock_1s|CLK_Cnt\(11) & ((\clock_1s|Add0~21\) # (GND)))
-- \clock_1s|Add0~23\ = CARRY((!\clock_1s|Add0~21\) # (!\clock_1s|CLK_Cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1s|CLK_Cnt\(11),
	datad => VCC,
	cin => \clock_1s|Add0~21\,
	combout => \clock_1s|Add0~22_combout\,
	cout => \clock_1s|Add0~23\);

-- Location: FF_X61_Y32_N27
\clock_1s|CLK_Cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1s|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1s|CLK_Cnt\(11));

-- Location: LCCOMB_X61_Y32_N28
\clock_1s|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Add0~24_combout\ = (\clock_1s|CLK_Cnt\(12) & (\clock_1s|Add0~23\ $ (GND))) # (!\clock_1s|CLK_Cnt\(12) & (!\clock_1s|Add0~23\ & VCC))
-- \clock_1s|Add0~25\ = CARRY((\clock_1s|CLK_Cnt\(12) & !\clock_1s|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1s|CLK_Cnt\(12),
	datad => VCC,
	cin => \clock_1s|Add0~23\,
	combout => \clock_1s|Add0~24_combout\,
	cout => \clock_1s|Add0~25\);

-- Location: LCCOMB_X61_Y32_N2
\clock_1s|CLK_Cnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|CLK_Cnt~11_combout\ = (\clock_1s|Add0~24_combout\ & !\clock_1s|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_1s|Add0~24_combout\,
	datac => \clock_1s|Equal0~9_combout\,
	combout => \clock_1s|CLK_Cnt~11_combout\);

-- Location: FF_X61_Y32_N3
\clock_1s|CLK_Cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1s|CLK_Cnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1s|CLK_Cnt\(12));

-- Location: LCCOMB_X61_Y32_N30
\clock_1s|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Add0~26_combout\ = (\clock_1s|CLK_Cnt\(13) & (!\clock_1s|Add0~25\)) # (!\clock_1s|CLK_Cnt\(13) & ((\clock_1s|Add0~25\) # (GND)))
-- \clock_1s|Add0~27\ = CARRY((!\clock_1s|Add0~25\) # (!\clock_1s|CLK_Cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1s|CLK_Cnt\(13),
	datad => VCC,
	cin => \clock_1s|Add0~25\,
	combout => \clock_1s|Add0~26_combout\,
	cout => \clock_1s|Add0~27\);

-- Location: LCCOMB_X62_Y31_N18
\clock_1s|CLK_Cnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|CLK_Cnt~10_combout\ = (!\clock_1s|Equal0~9_combout\ & \clock_1s|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_1s|Equal0~9_combout\,
	datac => \clock_1s|Add0~26_combout\,
	combout => \clock_1s|CLK_Cnt~10_combout\);

-- Location: FF_X62_Y31_N19
\clock_1s|CLK_Cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1s|CLK_Cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1s|CLK_Cnt\(13));

-- Location: LCCOMB_X61_Y31_N0
\clock_1s|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Add0~28_combout\ = (\clock_1s|CLK_Cnt\(14) & (\clock_1s|Add0~27\ $ (GND))) # (!\clock_1s|CLK_Cnt\(14) & (!\clock_1s|Add0~27\ & VCC))
-- \clock_1s|Add0~29\ = CARRY((\clock_1s|CLK_Cnt\(14) & !\clock_1s|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1s|CLK_Cnt\(14),
	datad => VCC,
	cin => \clock_1s|Add0~27\,
	combout => \clock_1s|Add0~28_combout\,
	cout => \clock_1s|Add0~29\);

-- Location: LCCOMB_X62_Y31_N28
\clock_1s|CLK_Cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|CLK_Cnt~9_combout\ = (\clock_1s|Add0~28_combout\ & !\clock_1s|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1s|Add0~28_combout\,
	datac => \clock_1s|Equal0~9_combout\,
	combout => \clock_1s|CLK_Cnt~9_combout\);

-- Location: FF_X62_Y31_N29
\clock_1s|CLK_Cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1s|CLK_Cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1s|CLK_Cnt\(14));

-- Location: LCCOMB_X61_Y31_N2
\clock_1s|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Add0~30_combout\ = (\clock_1s|CLK_Cnt\(15) & (!\clock_1s|Add0~29\)) # (!\clock_1s|CLK_Cnt\(15) & ((\clock_1s|Add0~29\) # (GND)))
-- \clock_1s|Add0~31\ = CARRY((!\clock_1s|Add0~29\) # (!\clock_1s|CLK_Cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1s|CLK_Cnt\(15),
	datad => VCC,
	cin => \clock_1s|Add0~29\,
	combout => \clock_1s|Add0~30_combout\,
	cout => \clock_1s|Add0~31\);

-- Location: LCCOMB_X62_Y31_N26
\clock_1s|CLK_Cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|CLK_Cnt~8_combout\ = (\clock_1s|Add0~30_combout\ & !\clock_1s|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1s|Add0~30_combout\,
	datac => \clock_1s|Equal0~9_combout\,
	combout => \clock_1s|CLK_Cnt~8_combout\);

-- Location: FF_X62_Y31_N27
\clock_1s|CLK_Cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1s|CLK_Cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1s|CLK_Cnt\(15));

-- Location: LCCOMB_X62_Y31_N6
\clock_1s|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Equal0~6_combout\ = (\clock_1s|CLK_Cnt\(14) & (\clock_1s|CLK_Cnt\(17) & (\clock_1s|CLK_Cnt\(13) & \clock_1s|CLK_Cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1s|CLK_Cnt\(14),
	datab => \clock_1s|CLK_Cnt\(17),
	datac => \clock_1s|CLK_Cnt\(13),
	datad => \clock_1s|CLK_Cnt\(15),
	combout => \clock_1s|Equal0~6_combout\);

-- Location: LCCOMB_X61_Y31_N14
\clock_1s|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Add0~42_combout\ = (\clock_1s|CLK_Cnt\(21) & (!\clock_1s|Add0~41\)) # (!\clock_1s|CLK_Cnt\(21) & ((\clock_1s|Add0~41\) # (GND)))
-- \clock_1s|Add0~43\ = CARRY((!\clock_1s|Add0~41\) # (!\clock_1s|CLK_Cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1s|CLK_Cnt\(21),
	datad => VCC,
	cin => \clock_1s|Add0~41\,
	combout => \clock_1s|Add0~42_combout\,
	cout => \clock_1s|Add0~43\);

-- Location: LCCOMB_X61_Y31_N16
\clock_1s|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Add0~44_combout\ = (\clock_1s|CLK_Cnt\(22) & (\clock_1s|Add0~43\ $ (GND))) # (!\clock_1s|CLK_Cnt\(22) & (!\clock_1s|Add0~43\ & VCC))
-- \clock_1s|Add0~45\ = CARRY((\clock_1s|CLK_Cnt\(22) & !\clock_1s|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1s|CLK_Cnt\(22),
	datad => VCC,
	cin => \clock_1s|Add0~43\,
	combout => \clock_1s|Add0~44_combout\,
	cout => \clock_1s|Add0~45\);

-- Location: LCCOMB_X61_Y31_N28
\clock_1s|CLK_Cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|CLK_Cnt~3_combout\ = (\clock_1s|Add0~44_combout\ & !\clock_1s|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_1s|Add0~44_combout\,
	datac => \clock_1s|Equal0~9_combout\,
	combout => \clock_1s|CLK_Cnt~3_combout\);

-- Location: FF_X61_Y31_N29
\clock_1s|CLK_Cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1s|CLK_Cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1s|CLK_Cnt\(22));

-- Location: LCCOMB_X62_Y31_N16
\clock_1s|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Equal0~5_combout\ = (\clock_1s|CLK_Cnt\(21) & (\clock_1s|CLK_Cnt\(22) & (\clock_1s|CLK_Cnt\(20) & \clock_1s|CLK_Cnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1s|CLK_Cnt\(21),
	datab => \clock_1s|CLK_Cnt\(22),
	datac => \clock_1s|CLK_Cnt\(20),
	datad => \clock_1s|CLK_Cnt\(19),
	combout => \clock_1s|Equal0~5_combout\);

-- Location: LCCOMB_X62_Y32_N30
\clock_1s|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Equal0~7_combout\ = (\clock_1s|CLK_Cnt\(5) & (\clock_1s|CLK_Cnt\(12) & (\clock_1s|CLK_Cnt\(6) & \clock_1s|CLK_Cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1s|CLK_Cnt\(5),
	datab => \clock_1s|CLK_Cnt\(12),
	datac => \clock_1s|CLK_Cnt\(6),
	datad => \clock_1s|CLK_Cnt\(4),
	combout => \clock_1s|Equal0~7_combout\);

-- Location: LCCOMB_X62_Y31_N4
\clock_1s|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Equal0~8_combout\ = (\clock_1s|CLK_Cnt\(2) & (\clock_1s|Equal0~7_combout\ & \clock_1s|CLK_Cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1s|CLK_Cnt\(2),
	datac => \clock_1s|Equal0~7_combout\,
	datad => \clock_1s|CLK_Cnt\(3),
	combout => \clock_1s|Equal0~8_combout\);

-- Location: LCCOMB_X61_Y31_N18
\clock_1s|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Add0~46_combout\ = (\clock_1s|CLK_Cnt\(23) & (!\clock_1s|Add0~45\)) # (!\clock_1s|CLK_Cnt\(23) & ((\clock_1s|Add0~45\) # (GND)))
-- \clock_1s|Add0~47\ = CARRY((!\clock_1s|Add0~45\) # (!\clock_1s|CLK_Cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1s|CLK_Cnt\(23),
	datad => VCC,
	cin => \clock_1s|Add0~45\,
	combout => \clock_1s|Add0~46_combout\,
	cout => \clock_1s|Add0~47\);

-- Location: LCCOMB_X60_Y31_N20
\clock_1s|CLK_Cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|CLK_Cnt~2_combout\ = (!\clock_1s|Equal0~9_combout\ & \clock_1s|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_1s|Equal0~9_combout\,
	datad => \clock_1s|Add0~46_combout\,
	combout => \clock_1s|CLK_Cnt~2_combout\);

-- Location: FF_X60_Y31_N21
\clock_1s|CLK_Cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1s|CLK_Cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1s|CLK_Cnt\(23));

-- Location: LCCOMB_X61_Y31_N20
\clock_1s|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Add0~48_combout\ = (\clock_1s|CLK_Cnt\(24) & (\clock_1s|Add0~47\ $ (GND))) # (!\clock_1s|CLK_Cnt\(24) & (!\clock_1s|Add0~47\ & VCC))
-- \clock_1s|Add0~49\ = CARRY((\clock_1s|CLK_Cnt\(24) & !\clock_1s|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1s|CLK_Cnt\(24),
	datad => VCC,
	cin => \clock_1s|Add0~47\,
	combout => \clock_1s|Add0~48_combout\,
	cout => \clock_1s|Add0~49\);

-- Location: FF_X61_Y31_N21
\clock_1s|CLK_Cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1s|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1s|CLK_Cnt\(24));

-- Location: LCCOMB_X61_Y31_N22
\clock_1s|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Add0~50_combout\ = (\clock_1s|CLK_Cnt\(25) & (!\clock_1s|Add0~49\)) # (!\clock_1s|CLK_Cnt\(25) & ((\clock_1s|Add0~49\) # (GND)))
-- \clock_1s|Add0~51\ = CARRY((!\clock_1s|Add0~49\) # (!\clock_1s|CLK_Cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1s|CLK_Cnt\(25),
	datad => VCC,
	cin => \clock_1s|Add0~49\,
	combout => \clock_1s|Add0~50_combout\,
	cout => \clock_1s|Add0~51\);

-- Location: LCCOMB_X60_Y31_N30
\clock_1s|CLK_Cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|CLK_Cnt~1_combout\ = (!\clock_1s|Equal0~9_combout\ & \clock_1s|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_1s|Equal0~9_combout\,
	datad => \clock_1s|Add0~50_combout\,
	combout => \clock_1s|CLK_Cnt~1_combout\);

-- Location: FF_X60_Y31_N31
\clock_1s|CLK_Cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1s|CLK_Cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1s|CLK_Cnt\(25));

-- Location: LCCOMB_X60_Y31_N6
\clock_1s|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Equal0~3_combout\ = (\clock_1s|CLK_Cnt\(25) & (\clock_1s|CLK_Cnt\(23) & (\clock_1s|CLK_Cnt\(1) & \clock_1s|CLK_Cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1s|CLK_Cnt\(25),
	datab => \clock_1s|CLK_Cnt\(23),
	datac => \clock_1s|CLK_Cnt\(1),
	datad => \clock_1s|CLK_Cnt\(0),
	combout => \clock_1s|Equal0~3_combout\);

-- Location: LCCOMB_X61_Y31_N24
\clock_1s|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Add0~52_combout\ = (\clock_1s|CLK_Cnt\(26) & (\clock_1s|Add0~51\ $ (GND))) # (!\clock_1s|CLK_Cnt\(26) & (!\clock_1s|Add0~51\ & VCC))
-- \clock_1s|Add0~53\ = CARRY((\clock_1s|CLK_Cnt\(26) & !\clock_1s|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1s|CLK_Cnt\(26),
	datad => VCC,
	cin => \clock_1s|Add0~51\,
	combout => \clock_1s|Add0~52_combout\,
	cout => \clock_1s|Add0~53\);

-- Location: FF_X61_Y31_N25
\clock_1s|CLK_Cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1s|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1s|CLK_Cnt\(26));

-- Location: LCCOMB_X61_Y31_N26
\clock_1s|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Add0~54_combout\ = \clock_1s|CLK_Cnt\(27) $ (\clock_1s|Add0~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1s|CLK_Cnt\(27),
	cin => \clock_1s|Add0~53\,
	combout => \clock_1s|Add0~54_combout\);

-- Location: FF_X61_Y31_N27
\clock_1s|CLK_Cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1s|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1s|CLK_Cnt\(27));

-- Location: LCCOMB_X60_Y31_N8
\clock_1s|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Equal0~0_combout\ = (!\clock_1s|CLK_Cnt\(27) & (!\clock_1s|CLK_Cnt\(26) & (!\clock_1s|CLK_Cnt\(18) & !\clock_1s|CLK_Cnt\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1s|CLK_Cnt\(27),
	datab => \clock_1s|CLK_Cnt\(26),
	datac => \clock_1s|CLK_Cnt\(18),
	datad => \clock_1s|CLK_Cnt\(24),
	combout => \clock_1s|Equal0~0_combout\);

-- Location: LCCOMB_X60_Y31_N4
\clock_1s|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Equal0~2_combout\ = (!\clock_1s|CLK_Cnt\(7) & !\clock_1s|CLK_Cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_1s|CLK_Cnt\(7),
	datad => \clock_1s|CLK_Cnt\(8),
	combout => \clock_1s|Equal0~2_combout\);

-- Location: LCCOMB_X61_Y31_N4
\clock_1s|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Add0~32_combout\ = (\clock_1s|CLK_Cnt\(16) & (\clock_1s|Add0~31\ $ (GND))) # (!\clock_1s|CLK_Cnt\(16) & (!\clock_1s|Add0~31\ & VCC))
-- \clock_1s|Add0~33\ = CARRY((\clock_1s|CLK_Cnt\(16) & !\clock_1s|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1s|CLK_Cnt\(16),
	datad => VCC,
	cin => \clock_1s|Add0~31\,
	combout => \clock_1s|Add0~32_combout\,
	cout => \clock_1s|Add0~33\);

-- Location: FF_X61_Y31_N5
\clock_1s|CLK_Cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1s|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1s|CLK_Cnt\(16));

-- Location: LCCOMB_X60_Y31_N10
\clock_1s|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Equal0~1_combout\ = (!\clock_1s|CLK_Cnt\(16) & (!\clock_1s|CLK_Cnt\(11) & (!\clock_1s|CLK_Cnt\(9) & !\clock_1s|CLK_Cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1s|CLK_Cnt\(16),
	datab => \clock_1s|CLK_Cnt\(11),
	datac => \clock_1s|CLK_Cnt\(9),
	datad => \clock_1s|CLK_Cnt\(10),
	combout => \clock_1s|Equal0~1_combout\);

-- Location: LCCOMB_X60_Y31_N24
\clock_1s|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Equal0~4_combout\ = (\clock_1s|Equal0~3_combout\ & (\clock_1s|Equal0~0_combout\ & (\clock_1s|Equal0~2_combout\ & \clock_1s|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1s|Equal0~3_combout\,
	datab => \clock_1s|Equal0~0_combout\,
	datac => \clock_1s|Equal0~2_combout\,
	datad => \clock_1s|Equal0~1_combout\,
	combout => \clock_1s|Equal0~4_combout\);

-- Location: LCCOMB_X62_Y31_N14
\clock_1s|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Equal0~9_combout\ = (\clock_1s|Equal0~6_combout\ & (\clock_1s|Equal0~5_combout\ & (\clock_1s|Equal0~8_combout\ & \clock_1s|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1s|Equal0~6_combout\,
	datab => \clock_1s|Equal0~5_combout\,
	datac => \clock_1s|Equal0~8_combout\,
	datad => \clock_1s|Equal0~4_combout\,
	combout => \clock_1s|Equal0~9_combout\);

-- Location: LCCOMB_X61_Y31_N6
\clock_1s|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Add0~34_combout\ = (\clock_1s|CLK_Cnt\(17) & (!\clock_1s|Add0~33\)) # (!\clock_1s|CLK_Cnt\(17) & ((\clock_1s|Add0~33\) # (GND)))
-- \clock_1s|Add0~35\ = CARRY((!\clock_1s|Add0~33\) # (!\clock_1s|CLK_Cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1s|CLK_Cnt\(17),
	datad => VCC,
	cin => \clock_1s|Add0~33\,
	combout => \clock_1s|Add0~34_combout\,
	cout => \clock_1s|Add0~35\);

-- Location: LCCOMB_X62_Y31_N12
\clock_1s|CLK_Cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|CLK_Cnt~7_combout\ = (!\clock_1s|Equal0~9_combout\ & \clock_1s|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_1s|Equal0~9_combout\,
	datac => \clock_1s|Add0~34_combout\,
	combout => \clock_1s|CLK_Cnt~7_combout\);

-- Location: FF_X62_Y31_N13
\clock_1s|CLK_Cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1s|CLK_Cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1s|CLK_Cnt\(17));

-- Location: LCCOMB_X61_Y31_N8
\clock_1s|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Add0~36_combout\ = (\clock_1s|CLK_Cnt\(18) & (\clock_1s|Add0~35\ $ (GND))) # (!\clock_1s|CLK_Cnt\(18) & (!\clock_1s|Add0~35\ & VCC))
-- \clock_1s|Add0~37\ = CARRY((\clock_1s|CLK_Cnt\(18) & !\clock_1s|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1s|CLK_Cnt\(18),
	datad => VCC,
	cin => \clock_1s|Add0~35\,
	combout => \clock_1s|Add0~36_combout\,
	cout => \clock_1s|Add0~37\);

-- Location: FF_X61_Y31_N9
\clock_1s|CLK_Cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1s|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1s|CLK_Cnt\(18));

-- Location: LCCOMB_X61_Y31_N10
\clock_1s|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Add0~38_combout\ = (\clock_1s|CLK_Cnt\(19) & (!\clock_1s|Add0~37\)) # (!\clock_1s|CLK_Cnt\(19) & ((\clock_1s|Add0~37\) # (GND)))
-- \clock_1s|Add0~39\ = CARRY((!\clock_1s|Add0~37\) # (!\clock_1s|CLK_Cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1s|CLK_Cnt\(19),
	datad => VCC,
	cin => \clock_1s|Add0~37\,
	combout => \clock_1s|Add0~38_combout\,
	cout => \clock_1s|Add0~39\);

-- Location: LCCOMB_X61_Y31_N30
\clock_1s|CLK_Cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|CLK_Cnt~6_combout\ = (\clock_1s|Add0~38_combout\ & !\clock_1s|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1s|Add0~38_combout\,
	datac => \clock_1s|Equal0~9_combout\,
	combout => \clock_1s|CLK_Cnt~6_combout\);

-- Location: FF_X61_Y31_N31
\clock_1s|CLK_Cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1s|CLK_Cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1s|CLK_Cnt\(19));

-- Location: LCCOMB_X61_Y31_N12
\clock_1s|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Add0~40_combout\ = (\clock_1s|CLK_Cnt\(20) & (\clock_1s|Add0~39\ $ (GND))) # (!\clock_1s|CLK_Cnt\(20) & (!\clock_1s|Add0~39\ & VCC))
-- \clock_1s|Add0~41\ = CARRY((\clock_1s|CLK_Cnt\(20) & !\clock_1s|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_1s|CLK_Cnt\(20),
	datad => VCC,
	cin => \clock_1s|Add0~39\,
	combout => \clock_1s|Add0~40_combout\,
	cout => \clock_1s|Add0~41\);

-- Location: LCCOMB_X62_Y31_N8
\clock_1s|CLK_Cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|CLK_Cnt~5_combout\ = (\clock_1s|Add0~40_combout\ & !\clock_1s|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1s|Add0~40_combout\,
	datac => \clock_1s|Equal0~9_combout\,
	combout => \clock_1s|CLK_Cnt~5_combout\);

-- Location: FF_X62_Y31_N9
\clock_1s|CLK_Cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1s|CLK_Cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1s|CLK_Cnt\(20));

-- Location: LCCOMB_X62_Y31_N30
\clock_1s|CLK_Cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|CLK_Cnt~4_combout\ = (\clock_1s|Add0~42_combout\ & !\clock_1s|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1s|Add0~42_combout\,
	datac => \clock_1s|Equal0~9_combout\,
	combout => \clock_1s|CLK_Cnt~4_combout\);

-- Location: FF_X62_Y31_N31
\clock_1s|CLK_Cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1s|CLK_Cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1s|CLK_Cnt\(21));

-- Location: LCCOMB_X62_Y31_N10
\clock_1s|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Equal1~2_combout\ = (!\clock_1s|CLK_Cnt\(21) & (!\clock_1s|CLK_Cnt\(22) & (!\clock_1s|CLK_Cnt\(20) & !\clock_1s|CLK_Cnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1s|CLK_Cnt\(21),
	datab => \clock_1s|CLK_Cnt\(22),
	datac => \clock_1s|CLK_Cnt\(20),
	datad => \clock_1s|CLK_Cnt\(19),
	combout => \clock_1s|Equal1~2_combout\);

-- Location: LCCOMB_X62_Y31_N24
\clock_1s|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Equal1~3_combout\ = (!\clock_1s|CLK_Cnt\(14) & (!\clock_1s|CLK_Cnt\(17) & (!\clock_1s|CLK_Cnt\(13) & !\clock_1s|CLK_Cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1s|CLK_Cnt\(14),
	datab => \clock_1s|CLK_Cnt\(17),
	datac => \clock_1s|CLK_Cnt\(13),
	datad => \clock_1s|CLK_Cnt\(15),
	combout => \clock_1s|Equal1~3_combout\);

-- Location: LCCOMB_X62_Y32_N0
\clock_1s|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Equal1~4_combout\ = (!\clock_1s|CLK_Cnt\(5) & (!\clock_1s|CLK_Cnt\(4) & (!\clock_1s|CLK_Cnt\(6) & !\clock_1s|CLK_Cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1s|CLK_Cnt\(5),
	datab => \clock_1s|CLK_Cnt\(4),
	datac => \clock_1s|CLK_Cnt\(6),
	datad => \clock_1s|CLK_Cnt\(12),
	combout => \clock_1s|Equal1~4_combout\);

-- Location: LCCOMB_X62_Y31_N22
\clock_1s|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Equal1~5_combout\ = (!\clock_1s|CLK_Cnt\(3) & (\clock_1s|Equal1~4_combout\ & !\clock_1s|CLK_Cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1s|CLK_Cnt\(3),
	datac => \clock_1s|Equal1~4_combout\,
	datad => \clock_1s|CLK_Cnt\(2),
	combout => \clock_1s|Equal1~5_combout\);

-- Location: LCCOMB_X60_Y31_N26
\clock_1s|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Equal1~0_combout\ = (!\clock_1s|CLK_Cnt\(25) & (!\clock_1s|CLK_Cnt\(0) & (!\clock_1s|CLK_Cnt\(1) & !\clock_1s|CLK_Cnt\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1s|CLK_Cnt\(25),
	datab => \clock_1s|CLK_Cnt\(0),
	datac => \clock_1s|CLK_Cnt\(1),
	datad => \clock_1s|CLK_Cnt\(23),
	combout => \clock_1s|Equal1~0_combout\);

-- Location: LCCOMB_X60_Y31_N16
\clock_1s|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Equal1~1_combout\ = (\clock_1s|Equal0~1_combout\ & (\clock_1s|Equal0~2_combout\ & (\clock_1s|Equal1~0_combout\ & \clock_1s|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1s|Equal0~1_combout\,
	datab => \clock_1s|Equal0~2_combout\,
	datac => \clock_1s|Equal1~0_combout\,
	datad => \clock_1s|Equal0~0_combout\,
	combout => \clock_1s|Equal1~1_combout\);

-- Location: LCCOMB_X62_Y31_N20
\clock_1s|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_1s|Equal1~6_combout\ = (\clock_1s|Equal1~2_combout\ & (\clock_1s|Equal1~3_combout\ & (\clock_1s|Equal1~5_combout\ & \clock_1s|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_1s|Equal1~2_combout\,
	datab => \clock_1s|Equal1~3_combout\,
	datac => \clock_1s|Equal1~5_combout\,
	datad => \clock_1s|Equal1~1_combout\,
	combout => \clock_1s|Equal1~6_combout\);

-- Location: FF_X62_Y31_N21
\clock_1s|CLK_Out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_1s|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_1s|CLK_Out~q\);

-- Location: LCCOMB_X114_Y31_N16
\d1[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1[3]~0_combout\ = (\debounce1|Bounce\(0) & (\sf~q\)) # (!\debounce1|Bounce\(0) & (((\debounce2|Bounce\(0)) # (!\clock_1s|CLK_Out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sf~q\,
	datab => \debounce2|Bounce\(0),
	datac => \debounce1|Bounce\(0),
	datad => \clock_1s|CLK_Out~q\,
	combout => \d1[3]~0_combout\);

-- Location: LCCOMB_X114_Y31_N4
\d1[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1[0]~1_combout\ = (!\LessThan0~0_combout\ & (d1(0) $ (!\d1[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~0_combout\,
	datac => d1(0),
	datad => \d1[3]~0_combout\,
	combout => \d1[0]~1_combout\);

-- Location: FF_X114_Y31_N5
\d1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d1(0));

-- Location: LCCOMB_X113_Y31_N16
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = d1(2) $ (((d1(1) & d1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d1(1),
	datab => d1(2),
	datad => d1(0),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X114_Y31_N24
\d1[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1[2]~3_combout\ = (!\LessThan0~0_combout\ & ((\d1[3]~0_combout\ & ((d1(2)))) # (!\d1[3]~0_combout\ & (\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \LessThan0~0_combout\,
	datac => d1(2),
	datad => \d1[3]~0_combout\,
	combout => \d1[2]~3_combout\);

-- Location: FF_X114_Y31_N25
\d1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d1[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d1(2));

-- Location: LCCOMB_X113_Y31_N14
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = d1(3) $ (((d1(1) & (d1(2) & d1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d1(1),
	datab => d1(2),
	datac => d1(3),
	datad => d1(0),
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X114_Y31_N6
\d1[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1[3]~4_combout\ = (!\LessThan0~0_combout\ & ((\d1[3]~0_combout\ & ((d1(3)))) # (!\d1[3]~0_combout\ & (\Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => \LessThan0~0_combout\,
	datac => d1(3),
	datad => \d1[3]~0_combout\,
	combout => \d1[3]~4_combout\);

-- Location: FF_X114_Y31_N7
\d1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d1[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d1(3));

-- Location: LCCOMB_X114_Y31_N22
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (d1(3) & ((d1(2)) # (d1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d1(3),
	datab => d1(2),
	datad => d1(1),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X114_Y31_N2
\d1[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1[1]~2_combout\ = (!\LessThan0~0_combout\ & (d1(1) $ (((d1(0) & !\d1[3]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => d1(0),
	datac => d1(1),
	datad => \d1[3]~0_combout\,
	combout => \d1[1]~2_combout\);

-- Location: FF_X114_Y31_N3
\d1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d1(1));

-- Location: LCCOMB_X113_Y31_N0
\s1|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1|WideOr6~0_combout\ = (d1(2) & (!d1(1) & (d1(3) $ (!d1(0))))) # (!d1(2) & (d1(0) & (d1(1) $ (!d1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d1(1),
	datab => d1(2),
	datac => d1(3),
	datad => d1(0),
	combout => \s1|WideOr6~0_combout\);

-- Location: LCCOMB_X113_Y31_N30
\s1|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1|WideOr5~0_combout\ = (d1(1) & ((d1(0) & ((d1(3)))) # (!d1(0) & (d1(2))))) # (!d1(1) & (d1(2) & (d1(3) $ (d1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d1(1),
	datab => d1(2),
	datac => d1(3),
	datad => d1(0),
	combout => \s1|WideOr5~0_combout\);

-- Location: LCCOMB_X113_Y31_N22
\s1|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1|WideOr4~0_combout\ = (d1(2) & (d1(3) & ((d1(1)) # (!d1(0))))) # (!d1(2) & (d1(1) & (!d1(3) & !d1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d1(1),
	datab => d1(2),
	datac => d1(3),
	datad => d1(0),
	combout => \s1|WideOr4~0_combout\);

-- Location: LCCOMB_X113_Y31_N6
\s1|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1|WideOr3~0_combout\ = (d1(0) & (d1(1) $ ((!d1(2))))) # (!d1(0) & ((d1(1) & (!d1(2) & d1(3))) # (!d1(1) & (d1(2) & !d1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d1(1),
	datab => d1(2),
	datac => d1(3),
	datad => d1(0),
	combout => \s1|WideOr3~0_combout\);

-- Location: LCCOMB_X114_Y31_N0
\s1|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1|WideOr2~0_combout\ = (d1(1) & (!d1(3) & (d1(0)))) # (!d1(1) & ((d1(2) & (!d1(3))) # (!d1(2) & ((d1(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d1(3),
	datab => d1(1),
	datac => d1(0),
	datad => d1(2),
	combout => \s1|WideOr2~0_combout\);

-- Location: LCCOMB_X114_Y31_N10
\s1|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1|WideOr1~0_combout\ = (d1(1) & (!d1(3) & ((d1(0)) # (!d1(2))))) # (!d1(1) & (d1(0) & (d1(3) $ (!d1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d1(3),
	datab => d1(1),
	datac => d1(0),
	datad => d1(2),
	combout => \s1|WideOr1~0_combout\);

-- Location: LCCOMB_X114_Y31_N8
\s1|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1|WideOr0~0_combout\ = (d1(0) & ((d1(3)) # (d1(1) $ (d1(2))))) # (!d1(0) & ((d1(1)) # (d1(3) $ (d1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d1(3),
	datab => d1(1),
	datac => d1(0),
	datad => d1(2),
	combout => \s1|WideOr0~0_combout\);

-- Location: LCCOMB_X113_Y31_N20
\d2[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2[1]~1_combout\ = (\LessThan0~0_combout\ & (d2(0) $ (((d2(1)))))) # (!\LessThan0~0_combout\ & (((\d3[2]~0_combout\ & d2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d2(0),
	datab => \d3[2]~0_combout\,
	datac => d2(1),
	datad => \LessThan0~0_combout\,
	combout => \d2[1]~1_combout\);

-- Location: FF_X113_Y31_N21
\d2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d2(1));

-- Location: LCCOMB_X113_Y31_N10
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (d2(1) & d2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => d2(1),
	datad => d2(0),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X113_Y31_N18
\d2[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2[2]~2_combout\ = (\LessThan0~0_combout\ & ((\Add2~0_combout\ $ (d2(2))))) # (!\LessThan0~0_combout\ & (\d3[2]~0_combout\ & ((d2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d3[2]~0_combout\,
	datab => \Add2~0_combout\,
	datac => d2(2),
	datad => \LessThan0~0_combout\,
	combout => \d2[2]~2_combout\);

-- Location: FF_X113_Y31_N19
\d2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d2[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d2(2));

-- Location: LCCOMB_X113_Y31_N8
\d2[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2[3]~3_combout\ = (\LessThan0~0_combout\ & (d2(3) $ (((d2(2) & \Add2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d2(2),
	datab => \Add2~0_combout\,
	datac => d2(3),
	datad => \LessThan0~0_combout\,
	combout => \d2[3]~3_combout\);

-- Location: FF_X113_Y31_N9
\d2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d2[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d2(3));

-- Location: LCCOMB_X113_Y31_N2
\d3[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3[2]~0_combout\ = (!d2(3) & ((!d2(1)) # (!d2(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => d2(2),
	datac => d2(3),
	datad => d2(1),
	combout => \d3[2]~0_combout\);

-- Location: LCCOMB_X113_Y31_N28
\d2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2[0]~0_combout\ = (d2(0) & (\d3[2]~0_combout\ & !\LessThan0~0_combout\)) # (!d2(0) & ((\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d3[2]~0_combout\,
	datac => d2(0),
	datad => \LessThan0~0_combout\,
	combout => \d2[0]~0_combout\);

-- Location: FF_X113_Y31_N29
\d2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d2(0));

-- Location: LCCOMB_X114_Y31_N26
\s2|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2|WideOr6~0_combout\ = (d2(2) & (!d2(1) & (d2(0) $ (!d2(3))))) # (!d2(2) & (d2(0) & (d2(3) $ (!d2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d2(0),
	datab => d2(2),
	datac => d2(3),
	datad => d2(1),
	combout => \s2|WideOr6~0_combout\);

-- Location: LCCOMB_X114_Y31_N28
\s2|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2|WideOr5~0_combout\ = (d2(3) & ((d2(0) & ((d2(1)))) # (!d2(0) & (d2(2))))) # (!d2(3) & (d2(2) & (d2(0) $ (d2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d2(0),
	datab => d2(2),
	datac => d2(3),
	datad => d2(1),
	combout => \s2|WideOr5~0_combout\);

-- Location: LCCOMB_X114_Y31_N18
\s2|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2|WideOr4~0_combout\ = (d2(2) & (d2(3) & ((d2(1)) # (!d2(0))))) # (!d2(2) & (!d2(0) & (!d2(3) & d2(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d2(0),
	datab => d2(2),
	datac => d2(3),
	datad => d2(1),
	combout => \s2|WideOr4~0_combout\);

-- Location: LCCOMB_X114_Y31_N20
\s2|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2|WideOr3~0_combout\ = (d2(0) & (d2(2) $ (((!d2(1)))))) # (!d2(0) & ((d2(2) & (!d2(3) & !d2(1))) # (!d2(2) & (d2(3) & d2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d2(0),
	datab => d2(2),
	datac => d2(3),
	datad => d2(1),
	combout => \s2|WideOr3~0_combout\);

-- Location: LCCOMB_X114_Y31_N30
\s2|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2|WideOr2~0_combout\ = (d2(1) & (d2(0) & ((!d2(3))))) # (!d2(1) & ((d2(2) & ((!d2(3)))) # (!d2(2) & (d2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d2(0),
	datab => d2(2),
	datac => d2(3),
	datad => d2(1),
	combout => \s2|WideOr2~0_combout\);

-- Location: LCCOMB_X114_Y31_N12
\s2|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2|WideOr1~0_combout\ = (d2(0) & (d2(3) $ (((d2(1)) # (!d2(2)))))) # (!d2(0) & (!d2(2) & (!d2(3) & d2(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d2(0),
	datab => d2(2),
	datac => d2(3),
	datad => d2(1),
	combout => \s2|WideOr1~0_combout\);

-- Location: LCCOMB_X114_Y31_N14
\s2|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2|WideOr0~0_combout\ = (d2(0) & ((d2(3)) # (d2(2) $ (d2(1))))) # (!d2(0) & ((d2(1)) # (d2(2) $ (d2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d2(0),
	datab => d2(2),
	datac => d2(3),
	datad => d2(1),
	combout => \s2|WideOr0~0_combout\);

-- Location: LCCOMB_X114_Y18_N6
\d3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3~4_combout\ = ((\LessThan0~0_combout\) # (!\d3[2]~0_combout\)) # (!\LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datac => \d3[2]~0_combout\,
	datad => \LessThan0~0_combout\,
	combout => \d3~4_combout\);

-- Location: LCCOMB_X114_Y18_N8
\d3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3~6_combout\ = (\d3~4_combout\ & (d3(2) $ (((d3(1) & d3(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d3(1),
	datab => d3(0),
	datac => d3(2),
	datad => \d3~4_combout\,
	combout => \d3~6_combout\);

-- Location: LCCOMB_X113_Y31_N12
\mf~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mf~0_combout\ = (\debounce2|Bounce\(0) & ((\mf~q\) # (\sf~q\ $ (!\debounce1|Bounce\(0))))) # (!\debounce2|Bounce\(0) & (\mf~q\ & (\sf~q\ $ (\debounce1|Bounce\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce2|Bounce\(0),
	datab => \sf~q\,
	datac => \mf~q\,
	datad => \debounce1|Bounce\(0),
	combout => \mf~0_combout\);

-- Location: FF_X113_Y31_N13
mf : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mf~q\);

-- Location: LCCOMB_X113_Y31_N4
\d3[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3[2]~2_combout\ = (\mf~q\) # ((\sf~q\ $ (\debounce1|Bounce\(0))) # (!\debounce2|Bounce\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mf~q\,
	datab => \sf~q\,
	datac => \debounce1|Bounce\(0),
	datad => \debounce2|Bounce\(0),
	combout => \d3[2]~2_combout\);

-- Location: LCCOMB_X114_Y18_N4
\d3[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3[2]~3_combout\ = (\d3[2]~2_combout\ & ((\LessThan0~0_combout\) # ((!\LessThan2~0_combout\ & \d3[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \d3[2]~0_combout\,
	datac => \d3[2]~2_combout\,
	datad => \LessThan0~0_combout\,
	combout => \d3[2]~3_combout\);

-- Location: FF_X114_Y18_N9
\d3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d3~6_combout\,
	ena => \ALT_INV_d3[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d3(2));

-- Location: LCCOMB_X114_Y18_N12
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = d3(3) $ (((d3(1) & (d3(2) & d3(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d3(1),
	datab => d3(3),
	datac => d3(2),
	datad => d3(0),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X114_Y18_N18
\d3[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3[3]~7_combout\ = (\d3[2]~3_combout\ & (((d3(3))))) # (!\d3[2]~3_combout\ & (\Add1~0_combout\ & ((\d3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \d3[2]~3_combout\,
	datac => d3(3),
	datad => \d3~4_combout\,
	combout => \d3[3]~7_combout\);

-- Location: FF_X114_Y18_N19
\d3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d3[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d3(3));

-- Location: LCCOMB_X114_Y18_N26
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (d3(3) & ((d3(1)) # (d3(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d3(1),
	datac => d3(2),
	datad => d3(3),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X114_Y18_N20
\d3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3~1_combout\ = (!d3(0) & (((\LessThan0~0_combout\) # (!\d3[2]~0_combout\)) # (!\LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \d3[2]~0_combout\,
	datac => d3(0),
	datad => \LessThan0~0_combout\,
	combout => \d3~1_combout\);

-- Location: FF_X114_Y18_N21
\d3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d3~1_combout\,
	ena => \ALT_INV_d3[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d3(0));

-- Location: LCCOMB_X114_Y18_N10
\d3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3~5_combout\ = (\d3~4_combout\ & (d3(0) $ (d3(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => d3(0),
	datac => d3(1),
	datad => \d3~4_combout\,
	combout => \d3~5_combout\);

-- Location: FF_X114_Y18_N11
\d3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d3~5_combout\,
	ena => \ALT_INV_d3[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d3(1));

-- Location: LCCOMB_X114_Y18_N28
\s3|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s3|WideOr6~0_combout\ = (d3(3) & (d3(0) & (d3(1) $ (d3(2))))) # (!d3(3) & (!d3(1) & (d3(2) $ (d3(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d3(1),
	datab => d3(3),
	datac => d3(2),
	datad => d3(0),
	combout => \s3|WideOr6~0_combout\);

-- Location: LCCOMB_X114_Y18_N14
\s3|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s3|WideOr5~0_combout\ = (d3(1) & ((d3(0) & (d3(3))) # (!d3(0) & ((d3(2)))))) # (!d3(1) & (d3(2) & (d3(3) $ (d3(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d3(1),
	datab => d3(3),
	datac => d3(2),
	datad => d3(0),
	combout => \s3|WideOr5~0_combout\);

-- Location: LCCOMB_X114_Y18_N0
\s3|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s3|WideOr4~0_combout\ = (d3(3) & (d3(2) & ((d3(1)) # (!d3(0))))) # (!d3(3) & (d3(1) & (!d3(2) & !d3(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d3(1),
	datab => d3(3),
	datac => d3(2),
	datad => d3(0),
	combout => \s3|WideOr4~0_combout\);

-- Location: LCCOMB_X114_Y18_N22
\s3|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s3|WideOr3~0_combout\ = (d3(0) & (d3(1) $ (((!d3(2)))))) # (!d3(0) & ((d3(1) & (d3(3) & !d3(2))) # (!d3(1) & (!d3(3) & d3(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d3(1),
	datab => d3(3),
	datac => d3(2),
	datad => d3(0),
	combout => \s3|WideOr3~0_combout\);

-- Location: LCCOMB_X114_Y18_N24
\s3|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s3|WideOr2~0_combout\ = (d3(1) & (!d3(3) & ((d3(0))))) # (!d3(1) & ((d3(2) & (!d3(3))) # (!d3(2) & ((d3(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d3(1),
	datab => d3(3),
	datac => d3(2),
	datad => d3(0),
	combout => \s3|WideOr2~0_combout\);

-- Location: LCCOMB_X114_Y18_N2
\s3|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s3|WideOr1~0_combout\ = (d3(1) & (!d3(3) & ((d3(0)) # (!d3(2))))) # (!d3(1) & (d3(0) & (d3(3) $ (!d3(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d3(1),
	datab => d3(3),
	datac => d3(2),
	datad => d3(0),
	combout => \s3|WideOr1~0_combout\);

-- Location: LCCOMB_X114_Y18_N16
\s3|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s3|WideOr0~0_combout\ = (d3(0) & ((d3(3)) # (d3(1) $ (d3(2))))) # (!d3(0) & ((d3(1)) # (d3(3) $ (d3(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d3(1),
	datab => d3(3),
	datac => d3(2),
	datad => d3(0),
	combout => \s3|WideOr0~0_combout\);

-- Location: LCCOMB_X113_Y18_N22
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = d4(2) $ (((d4(1) & d4(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => d4(1),
	datac => d4(2),
	datad => d4(0),
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X113_Y18_N8
\d4[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d4[2]~4_combout\ = (\d4[0]~1_combout\ & (((d4(2))))) # (!\d4[0]~1_combout\ & (\Add3~0_combout\ & (\LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \LessThan2~0_combout\,
	datac => d4(2),
	datad => \d4[0]~1_combout\,
	combout => \d4[2]~4_combout\);

-- Location: FF_X113_Y18_N9
\d4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d4[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d4(2));

-- Location: LCCOMB_X113_Y18_N10
\d4[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d4[0]~0_combout\ = (!d4(3) & (!\LessThan2~0_combout\ & ((!d4(2)) # (!d4(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d4(3),
	datab => d4(1),
	datac => d4(2),
	datad => \LessThan2~0_combout\,
	combout => \d4[0]~0_combout\);

-- Location: LCCOMB_X113_Y18_N20
\d4[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d4[0]~1_combout\ = (\d4[0]~0_combout\) # ((\LessThan0~0_combout\) # (!\d3[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d4[0]~0_combout\,
	datac => \LessThan0~0_combout\,
	datad => \d3[2]~0_combout\,
	combout => \d4[0]~1_combout\);

-- Location: LCCOMB_X113_Y18_N0
\d4[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d4[0]~2_combout\ = (d4(0) & ((\d4[0]~1_combout\))) # (!d4(0) & (\LessThan2~0_combout\ & !\d4[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~0_combout\,
	datac => d4(0),
	datad => \d4[0]~1_combout\,
	combout => \d4[0]~2_combout\);

-- Location: FF_X113_Y18_N1
\d4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d4[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d4(0));

-- Location: LCCOMB_X113_Y18_N2
\d4[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d4[1]~3_combout\ = (\d4[0]~1_combout\ & (((d4(1))))) # (!\d4[0]~1_combout\ & (\LessThan2~0_combout\ & (d4(0) $ (d4(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d4(0),
	datab => \LessThan2~0_combout\,
	datac => d4(1),
	datad => \d4[0]~1_combout\,
	combout => \d4[1]~3_combout\);

-- Location: FF_X113_Y18_N3
\d4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d4[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d4(1));

-- Location: LCCOMB_X113_Y18_N12
\Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~1_combout\ = d4(3) $ (((d4(1) & (d4(2) & d4(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d4(3),
	datab => d4(1),
	datac => d4(2),
	datad => d4(0),
	combout => \Add3~1_combout\);

-- Location: LCCOMB_X113_Y18_N6
\d4[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d4[3]~5_combout\ = (\d4[0]~1_combout\ & (((d4(3))))) # (!\d4[0]~1_combout\ & (\Add3~1_combout\ & (\LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~1_combout\,
	datab => \LessThan2~0_combout\,
	datac => d4(3),
	datad => \d4[0]~1_combout\,
	combout => \d4[3]~5_combout\);

-- Location: FF_X113_Y18_N7
\d4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d4[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d4(3));

-- Location: LCCOMB_X113_Y18_N16
\s4|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s4|WideOr6~0_combout\ = (d4(3) & (d4(0) & (d4(1) $ (d4(2))))) # (!d4(3) & (!d4(1) & (d4(2) $ (d4(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d4(3),
	datab => d4(1),
	datac => d4(2),
	datad => d4(0),
	combout => \s4|WideOr6~0_combout\);

-- Location: LCCOMB_X113_Y18_N30
\s4|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s4|WideOr5~0_combout\ = (d4(3) & ((d4(0) & (d4(1))) # (!d4(0) & ((d4(2)))))) # (!d4(3) & (d4(2) & (d4(1) $ (d4(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d4(3),
	datab => d4(1),
	datac => d4(2),
	datad => d4(0),
	combout => \s4|WideOr5~0_combout\);

-- Location: LCCOMB_X113_Y18_N28
\s4|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s4|WideOr4~0_combout\ = (d4(3) & (d4(2) & ((d4(1)) # (!d4(0))))) # (!d4(3) & (d4(1) & (!d4(2) & !d4(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d4(3),
	datab => d4(1),
	datac => d4(2),
	datad => d4(0),
	combout => \s4|WideOr4~0_combout\);

-- Location: LCCOMB_X113_Y18_N18
\s4|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s4|WideOr3~0_combout\ = (d4(0) & ((d4(1) $ (!d4(2))))) # (!d4(0) & ((d4(3) & (d4(1) & !d4(2))) # (!d4(3) & (!d4(1) & d4(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d4(3),
	datab => d4(1),
	datac => d4(2),
	datad => d4(0),
	combout => \s4|WideOr3~0_combout\);

-- Location: LCCOMB_X113_Y18_N4
\s4|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s4|WideOr2~0_combout\ = (d4(1) & (!d4(3) & ((d4(0))))) # (!d4(1) & ((d4(2) & (!d4(3))) # (!d4(2) & ((d4(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d4(3),
	datab => d4(1),
	datac => d4(2),
	datad => d4(0),
	combout => \s4|WideOr2~0_combout\);

-- Location: LCCOMB_X113_Y18_N26
\s4|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s4|WideOr1~0_combout\ = (d4(1) & (!d4(3) & ((d4(0)) # (!d4(2))))) # (!d4(1) & (d4(0) & (d4(3) $ (!d4(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d4(3),
	datab => d4(1),
	datac => d4(2),
	datad => d4(0),
	combout => \s4|WideOr1~0_combout\);

-- Location: LCCOMB_X113_Y18_N24
\s4|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s4|WideOr0~0_combout\ = (d4(0) & ((d4(3)) # (d4(1) $ (d4(2))))) # (!d4(0) & ((d4(1)) # (d4(3) $ (d4(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d4(3),
	datab => d4(1),
	datac => d4(2),
	datad => d4(0),
	combout => \s4|WideOr0~0_combout\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;
END structure;


