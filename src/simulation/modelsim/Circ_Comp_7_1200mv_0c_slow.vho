-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "05/18/2026 21:12:54"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	Circ_Comp IS
    PORT (
	SW : IN std_logic_vector(10 DOWNTO 0);
	HEX7 : OUT std_logic_vector(0 TO 6);
	HEX6 : OUT std_logic_vector(0 TO 6);
	HEX5 : OUT std_logic_vector(0 TO 6);
	HEX4 : OUT std_logic_vector(0 TO 6);
	HEX3 : OUT std_logic_vector(0 TO 6);
	HEX2 : OUT std_logic_vector(0 TO 6);
	HEX0 : OUT std_logic_vector(0 TO 6);
	LEDR : OUT std_logic_vector(5 DOWNTO 0)
	);
END Circ_Comp;

-- Design Ports Information
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Circ_Comp IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX6 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX5 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX4 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX3 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX2 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_LEDR : std_logic_vector(5 DOWNTO 0);
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \Operation7|operation0|E_aux~0_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \Operation5|stage0|stage0|Cout~0_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \Operation5|stage0|stage1|Cout~0_combout\ : std_logic;
SIGNAL \Operation5|stage0|stage3|s~combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \Mux53~10_combout\ : std_logic;
SIGNAL \Operation1[1]~1_combout\ : std_logic;
SIGNAL \Mux0~10_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \Operation4|stage0|stage0|Cout~0_combout\ : std_logic;
SIGNAL \Operation4|stage0|stage1|Cout~0_combout\ : std_logic;
SIGNAL \Operation4|stage0|stage3|s~combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL \Mux56~3_combout\ : std_logic;
SIGNAL \Operation4|stage0|stage2|s~combout\ : std_logic;
SIGNAL \Operation4|stage0|stage0|s~combout\ : std_logic;
SIGNAL \Operation7|operation0|I[1]~0_combout\ : std_logic;
SIGNAL \Operation4|stage0|stage1|s~combout\ : std_logic;
SIGNAL \Operation4|Mux20~0_combout\ : std_logic;
SIGNAL \Operation5|stage0|stage2|s~combout\ : std_logic;
SIGNAL \Operation5|stage0|stage1|s~combout\ : std_logic;
SIGNAL \Operation5|Mux20~0_combout\ : std_logic;
SIGNAL \Mux55~0_combout\ : std_logic;
SIGNAL \Mux55~1_combout\ : std_logic;
SIGNAL \Operation1[0]~0_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Operation6|Sum0|operation0|s~0_combout\ : std_logic;
SIGNAL \Operation6|Sum0|operation1|s~0_combout\ : std_logic;
SIGNAL \Mux56~0_combout\ : std_logic;
SIGNAL \Mux56~1_combout\ : std_logic;
SIGNAL \Mux0~9_combout\ : std_logic;
SIGNAL \Mux56~2_combout\ : std_logic;
SIGNAL \Mux56~4_combout\ : std_logic;
SIGNAL \Operation5|Mux19~0_combout\ : std_logic;
SIGNAL \Operation4|Mux19~0_combout\ : std_logic;
SIGNAL \Operation6|Mux13~0_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux55~2_combout\ : std_logic;
SIGNAL \Mux55~3_combout\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mux55~4_combout\ : std_logic;
SIGNAL \Mux55~5_combout\ : std_logic;
SIGNAL \Mux54~2_combout\ : std_logic;
SIGNAL \Mux54~1_combout\ : std_logic;
SIGNAL \Mux54~3_combout\ : std_logic;
SIGNAL \Mux54~4_combout\ : std_logic;
SIGNAL \Mux54~5_combout\ : std_logic;
SIGNAL \Mux54~6_combout\ : std_logic;
SIGNAL \Mux54~7_combout\ : std_logic;
SIGNAL \Mux54~8_combout\ : std_logic;
SIGNAL \Mux53~11_combout\ : std_logic;
SIGNAL \Mux54~0_combout\ : std_logic;
SIGNAL \Mux54~9_combout\ : std_logic;
SIGNAL \Mux53~12_combout\ : std_logic;
SIGNAL \Mux53~20_combout\ : std_logic;
SIGNAL \Mux53~14_combout\ : std_logic;
SIGNAL \Mux53~21_combout\ : std_logic;
SIGNAL \Mux53~13_combout\ : std_logic;
SIGNAL \Mux53~15_combout\ : std_logic;
SIGNAL \Mux53~16_combout\ : std_logic;
SIGNAL \Mux53~17_combout\ : std_logic;
SIGNAL \Mux53~22_combout\ : std_logic;
SIGNAL \Mux53~18_combout\ : std_logic;
SIGNAL \Mux53~19_combout\ : std_logic;
SIGNAL \Operation4|Mux16~0_combout\ : std_logic;
SIGNAL \Mux52~0_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux52~1_combout\ : std_logic;
SIGNAL \Operation5|Mux16~0_combout\ : std_logic;
SIGNAL \Mux52~2_combout\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Mux52~3_combout\ : std_logic;
SIGNAL \Mux52~4_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux51~0_combout\ : std_logic;
SIGNAL \Mux51~1_combout\ : std_logic;
SIGNAL \Operation5|Mux15~0_combout\ : std_logic;
SIGNAL \Operation4|Mux15~0_combout\ : std_logic;
SIGNAL \Mux51~2_combout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Mux51~3_combout\ : std_logic;
SIGNAL \Mux51~4_combout\ : std_logic;
SIGNAL \Operation4|Mux14~0_combout\ : std_logic;
SIGNAL \Operation6|Mux8~0_combout\ : std_logic;
SIGNAL \Operation6|Mux8~1_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux50~0_combout\ : std_logic;
SIGNAL \Operation5|Mux14~0_combout\ : std_logic;
SIGNAL \Mux50~1_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Mux50~2_combout\ : std_logic;
SIGNAL \Mux50~3_combout\ : std_logic;
SIGNAL \Operation4|Mux6~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Operation4|Mux5~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Operation4|Mux3~0_combout\ : std_logic;
SIGNAL \Operation4|Mux3~1_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Operation4|Mux1~0_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Operation4|Mux0~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Operation4|Mux13~0_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Operation4|Mux12~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Operation4|Mux8~0_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Operation4|Mux7~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \LEDR~19_combout\ : std_logic;
SIGNAL \LEDR~20_combout\ : std_logic;
SIGNAL \LEDR~12_combout\ : std_logic;
SIGNAL \LEDR~17_combout\ : std_logic;
SIGNAL \LEDR~13_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \LEDR~18_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \LEDR~14_combout\ : std_logic;
SIGNAL \LEDR~15_combout\ : std_logic;
SIGNAL \LEDR~16_combout\ : std_logic;
SIGNAL \Operation7|operation0|E~0_combout\ : std_logic;
SIGNAL \Mux58~0_combout\ : std_logic;
SIGNAL \Mux59~0_combout\ : std_logic;
SIGNAL \Operation7|operation0|G~0_combout\ : std_logic;
SIGNAL \Operation7|operation0|G~1_combout\ : std_logic;
SIGNAL \Mux58~1_combout\ : std_logic;
SIGNAL \Mux57~0_combout\ : std_logic;
SIGNAL \Mux57~1_combout\ : std_logic;
SIGNAL Operation2 : std_logic_vector(3 DOWNTO 0);
SIGNAL Operation1 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Mux0~8_combout\ : std_logic;
SIGNAL \ALT_INV_SW[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux57~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SW <= SW;
HEX7 <= ww_HEX7;
HEX6 <= ww_HEX6;
HEX5 <= ww_HEX5;
HEX4 <= ww_HEX4;
HEX3 <= ww_HEX3;
HEX2 <= ww_HEX2;
HEX0 <= ww_HEX0;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux0~8_combout\ <= NOT \Mux0~8_combout\;
\ALT_INV_SW[10]~input_o\ <= NOT \SW[10]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_Mux57~1_combout\ <= NOT \Mux57~1_combout\;
\ALT_INV_Mux23~0_combout\ <= NOT \Mux23~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~8_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux56~4_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux55~5_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux54~9_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux53~19_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux52~4_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux51~4_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux50~3_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[10]~input_o\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[6]~input_o\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux23~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~17_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~15_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~16_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux59~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux58~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux57~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X109_Y13_N16
\Operation7|operation0|E_aux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation7|operation0|E_aux~0_combout\ = \SW[10]~input_o\ $ (\SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[10]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \Operation7|operation0|E_aux~0_combout\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X110_Y13_N20
\Operation5|stage0|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation5|stage0|stage0|Cout~0_combout\ = (\SW[7]~input_o\ & ((\SW[0]~input_o\) # (!\SW[3]~input_o\))) # (!\SW[7]~input_o\ & (!\SW[3]~input_o\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[7]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Operation5|stage0|stage0|Cout~0_combout\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X110_Y13_N14
\Operation5|stage0|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation5|stage0|stage1|Cout~0_combout\ = (\SW[4]~input_o\ & (\Operation5|stage0|stage0|Cout~0_combout\ & \SW[8]~input_o\)) # (!\SW[4]~input_o\ & ((\Operation5|stage0|stage0|Cout~0_combout\) # (\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \Operation5|stage0|stage0|Cout~0_combout\,
	datad => \SW[8]~input_o\,
	combout => \Operation5|stage0|stage1|Cout~0_combout\);

-- Location: LCCOMB_X109_Y11_N6
\Operation5|stage0|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation5|stage0|stage3|s~combout\ = \Operation7|operation0|E_aux~0_combout\ $ (((\SW[5]~input_o\ & (\SW[9]~input_o\ & \Operation5|stage0|stage1|Cout~0_combout\)) # (!\SW[5]~input_o\ & ((\SW[9]~input_o\) # (\Operation5|stage0|stage1|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation7|operation0|E_aux~0_combout\,
	datab => \SW[5]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \Operation5|stage0|stage1|Cout~0_combout\,
	combout => \Operation5|stage0|stage3|s~combout\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X111_Y12_N24
\Mux53~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~10_combout\ = (\SW[2]~input_o\ & (\SW[1]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux53~10_combout\);

-- Location: LCCOMB_X110_Y12_N16
\Operation1[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation1[1]~1_combout\ = (\SW[8]~input_o\ & \SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[8]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Operation1[1]~1_combout\);

-- Location: LCCOMB_X111_Y12_N16
\Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~10_combout\ = (\SW[7]~input_o\ & (\Mux53~10_combout\ & (\Operation1[1]~1_combout\ & \SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \Mux53~10_combout\,
	datac => \Operation1[1]~1_combout\,
	datad => \SW[3]~input_o\,
	combout => \Mux0~10_combout\);

-- Location: LCCOMB_X109_Y13_N26
\Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\SW[10]~input_o\ & (\SW[1]~input_o\ $ (((\SW[0]~input_o\ & \SW[6]~input_o\))))) # (!\SW[10]~input_o\ & (\SW[1]~input_o\ & (\SW[0]~input_o\ $ (\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X109_Y12_N0
\Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (\Mux0~10_combout\) # ((\Mux0~5_combout\ & !\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~10_combout\,
	datac => \Mux0~5_combout\,
	datad => \SW[2]~input_o\,
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X109_Y12_N26
\Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (\SW[2]~input_o\ & (!\SW[1]~input_o\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux0~7_combout\);

-- Location: LCCOMB_X109_Y11_N10
\Operation1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- Operation1(2) = (\SW[5]~input_o\ & \SW[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datac => \SW[9]~input_o\,
	combout => Operation1(2));

-- Location: LCCOMB_X109_Y11_N24
\Operation2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- Operation2(2) = (\SW[5]~input_o\) # (\SW[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datac => \SW[9]~input_o\,
	combout => Operation2(2));

-- Location: LCCOMB_X110_Y13_N0
\Operation4|stage0|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation4|stage0|stage0|Cout~0_combout\ = (\SW[7]~input_o\ & ((\SW[3]~input_o\) # (\SW[0]~input_o\))) # (!\SW[7]~input_o\ & (\SW[3]~input_o\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[7]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Operation4|stage0|stage0|Cout~0_combout\);

-- Location: LCCOMB_X110_Y13_N2
\Operation4|stage0|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation4|stage0|stage1|Cout~0_combout\ = (\SW[4]~input_o\ & ((\Operation4|stage0|stage0|Cout~0_combout\) # (\SW[8]~input_o\))) # (!\SW[4]~input_o\ & (\Operation4|stage0|stage0|Cout~0_combout\ & \SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \Operation4|stage0|stage0|Cout~0_combout\,
	datad => \SW[8]~input_o\,
	combout => \Operation4|stage0|stage1|Cout~0_combout\);

-- Location: LCCOMB_X109_Y11_N4
\Operation4|stage0|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation4|stage0|stage3|s~combout\ = \Operation7|operation0|E_aux~0_combout\ $ (((Operation1(2)) # ((Operation2(2) & \Operation4|stage0|stage1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Operation1(2),
	datab => Operation2(2),
	datac => \Operation7|operation0|E_aux~0_combout\,
	datad => \Operation4|stage0|stage1|Cout~0_combout\,
	combout => \Operation4|stage0|stage3|s~combout\);

-- Location: LCCOMB_X109_Y14_N16
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (!\SW[1]~input_o\ & (\SW[2]~input_o\ & (\Operation4|stage0|stage3|s~combout\ & !\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \Operation4|stage0|stage3|s~combout\,
	datad => \SW[0]~input_o\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X109_Y12_N20
\Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (\Mux0~6_combout\) # ((\Mux0~4_combout\) # ((!\Operation5|stage0|stage3|s~combout\ & \Mux0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation5|stage0|stage3|s~combout\,
	datab => \Mux0~6_combout\,
	datac => \Mux0~7_combout\,
	datad => \Mux0~4_combout\,
	combout => \Mux0~8_combout\);

-- Location: LCCOMB_X109_Y13_N8
\Operation2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- Operation2(3) = (\SW[10]~input_o\) # (\SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[10]~input_o\,
	datad => \SW[6]~input_o\,
	combout => Operation2(3));

-- Location: LCCOMB_X110_Y12_N18
\Operation2[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- Operation2(1) = (\SW[8]~input_o\) # (\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[8]~input_o\,
	datad => \SW[4]~input_o\,
	combout => Operation2(1));

-- Location: LCCOMB_X110_Y13_N4
\Operation2[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- Operation2(0) = (\SW[3]~input_o\) # (\SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[3]~input_o\,
	datad => \SW[7]~input_o\,
	combout => Operation2(0));

-- Location: LCCOMB_X110_Y12_N4
\Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = (Operation2(1) & (((!Operation2(2)) # (!Operation2(0))))) # (!Operation2(1) & ((Operation2(2)) # ((Operation2(3) & !Operation2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Operation2(3),
	datab => Operation2(1),
	datac => Operation2(0),
	datad => Operation2(2),
	combout => \Mux42~0_combout\);

-- Location: LCCOMB_X110_Y15_N8
\Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = (\SW[5]~input_o\ & (((\SW[3]~input_o\ & !\SW[6]~input_o\)) # (!\SW[4]~input_o\))) # (!\SW[5]~input_o\ & ((\SW[3]~input_o\) # ((\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux49~0_combout\);

-- Location: LCCOMB_X111_Y15_N16
\Mux56~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~3_combout\ = (\SW[0]~input_o\ & ((!\Mux49~0_combout\))) # (!\SW[0]~input_o\ & (!\Mux42~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux42~0_combout\,
	datab => \SW[0]~input_o\,
	datad => \Mux49~0_combout\,
	combout => \Mux56~3_combout\);

-- Location: LCCOMB_X109_Y11_N8
\Operation4|stage0|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation4|stage0|stage2|s~combout\ = \SW[5]~input_o\ $ (\SW[9]~input_o\ $ (\Operation4|stage0|stage1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \Operation4|stage0|stage1|Cout~0_combout\,
	combout => \Operation4|stage0|stage2|s~combout\);

-- Location: LCCOMB_X109_Y12_N30
\Operation4|stage0|stage0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation4|stage0|stage0|s~combout\ = \SW[7]~input_o\ $ (\SW[3]~input_o\ $ (\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Operation4|stage0|stage0|s~combout\);

-- Location: LCCOMB_X110_Y13_N24
\Operation7|operation0|I[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation7|operation0|I[1]~0_combout\ = \SW[4]~input_o\ $ (\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \Operation7|operation0|I[1]~0_combout\);

-- Location: LCCOMB_X109_Y13_N4
\Operation4|stage0|stage1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation4|stage0|stage1|s~combout\ = \Operation7|operation0|I[1]~0_combout\ $ (((\SW[7]~input_o\ & ((\SW[3]~input_o\) # (\SW[0]~input_o\))) # (!\SW[7]~input_o\ & (\SW[3]~input_o\ & \SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \Operation7|operation0|I[1]~0_combout\,
	combout => \Operation4|stage0|stage1|s~combout\);

-- Location: LCCOMB_X110_Y11_N8
\Operation4|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation4|Mux20~0_combout\ = (\Operation4|stage0|stage2|s~combout\ & (((!\Operation4|stage0|stage1|s~combout\)) # (!\Operation4|stage0|stage0|s~combout\))) # (!\Operation4|stage0|stage2|s~combout\ & ((\Operation4|stage0|stage1|s~combout\) # 
-- ((!\Operation4|stage0|stage0|s~combout\ & \Operation4|stage0|stage3|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation4|stage0|stage2|s~combout\,
	datab => \Operation4|stage0|stage0|s~combout\,
	datac => \Operation4|stage0|stage3|s~combout\,
	datad => \Operation4|stage0|stage1|s~combout\,
	combout => \Operation4|Mux20~0_combout\);

-- Location: LCCOMB_X109_Y11_N2
\Operation5|stage0|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation5|stage0|stage2|s~combout\ = \SW[5]~input_o\ $ (\SW[9]~input_o\ $ (\Operation5|stage0|stage1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \Operation5|stage0|stage1|Cout~0_combout\,
	combout => \Operation5|stage0|stage2|s~combout\);

-- Location: LCCOMB_X109_Y13_N30
\Operation5|stage0|stage1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation5|stage0|stage1|s~combout\ = \Operation7|operation0|I[1]~0_combout\ $ (((\SW[7]~input_o\ & ((\SW[0]~input_o\) # (!\SW[3]~input_o\))) # (!\SW[7]~input_o\ & (!\SW[3]~input_o\ & \SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \Operation7|operation0|I[1]~0_combout\,
	combout => \Operation5|stage0|stage1|s~combout\);

-- Location: LCCOMB_X109_Y12_N24
\Operation5|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation5|Mux20~0_combout\ = (\Operation4|stage0|stage0|s~combout\ & (((!\Operation5|stage0|stage3|s~combout\) # (!\Operation5|stage0|stage1|s~combout\)) # (!\Operation5|stage0|stage2|s~combout\))) # (!\Operation4|stage0|stage0|s~combout\ & 
-- (\Operation5|stage0|stage2|s~combout\ $ ((\Operation5|stage0|stage1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation4|stage0|stage0|s~combout\,
	datab => \Operation5|stage0|stage2|s~combout\,
	datac => \Operation5|stage0|stage1|s~combout\,
	datad => \Operation5|stage0|stage3|s~combout\,
	combout => \Operation5|Mux20~0_combout\);

-- Location: LCCOMB_X111_Y11_N10
\Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = (\SW[2]~input_o\ & (\SW[1]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux55~0_combout\);

-- Location: LCCOMB_X111_Y11_N20
\Mux55~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~1_combout\ = (\SW[2]~input_o\ & ((\SW[1]~input_o\) # (\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux55~1_combout\);

-- Location: LCCOMB_X109_Y8_N0
\Operation1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- Operation1(3) = (\SW[10]~input_o\ & \SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[10]~input_o\,
	datad => \SW[6]~input_o\,
	combout => Operation1(3));

-- Location: LCCOMB_X112_Y11_N0
\Operation1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation1[0]~0_combout\ = (\SW[3]~input_o\ & \SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datac => \SW[7]~input_o\,
	combout => \Operation1[0]~0_combout\);

-- Location: LCCOMB_X112_Y11_N10
\Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (\Operation1[1]~1_combout\ & (((!\Operation1[0]~0_combout\)) # (!Operation1(2)))) # (!\Operation1[1]~1_combout\ & ((Operation1(2)) # ((Operation1(3) & !\Operation1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation1[1]~1_combout\,
	datab => Operation1(2),
	datac => Operation1(3),
	datad => \Operation1[0]~0_combout\,
	combout => \Mux35~0_combout\);

-- Location: LCCOMB_X110_Y13_N10
\Operation6|Sum0|operation0|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation6|Sum0|operation0|s~0_combout\ = (\SW[4]~input_o\ & (\SW[7]~input_o\ $ (((\SW[8]~input_o\ & \SW[3]~input_o\))))) # (!\SW[4]~input_o\ & (\SW[8]~input_o\ & (\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \Operation6|Sum0|operation0|s~0_combout\);

-- Location: LCCOMB_X111_Y12_N2
\Operation6|Sum0|operation1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation6|Sum0|operation1|s~0_combout\ = (\SW[8]~input_o\ & (\SW[4]~input_o\ & ((!\SW[3]~input_o\) # (!\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Operation6|Sum0|operation1|s~0_combout\);

-- Location: LCCOMB_X112_Y11_N4
\Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~0_combout\ = (\SW[0]~input_o\) # ((!\Operation6|Sum0|operation0|s~0_combout\ & !\Operation6|Sum0|operation1|s~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \Operation6|Sum0|operation0|s~0_combout\,
	datac => \Operation6|Sum0|operation1|s~0_combout\,
	combout => \Mux56~0_combout\);

-- Location: LCCOMB_X111_Y11_N30
\Mux56~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~1_combout\ = (\Mux55~0_combout\ & ((\Mux55~1_combout\ & ((\Mux56~0_combout\))) # (!\Mux55~1_combout\ & (!\Mux35~0_combout\)))) # (!\Mux55~0_combout\ & (!\Mux55~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~0_combout\,
	datab => \Mux55~1_combout\,
	datac => \Mux35~0_combout\,
	datad => \Mux56~0_combout\,
	combout => \Mux56~1_combout\);

-- Location: LCCOMB_X111_Y11_N24
\Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~9_combout\ = (!\SW[1]~input_o\ & \SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \Mux0~9_combout\);

-- Location: LCCOMB_X111_Y11_N8
\Mux56~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~2_combout\ = (\Mux56~1_combout\ & (((!\Mux0~9_combout\)) # (!\Operation4|Mux20~0_combout\))) # (!\Mux56~1_combout\ & (((!\Operation5|Mux20~0_combout\ & \Mux0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation4|Mux20~0_combout\,
	datab => \Operation5|Mux20~0_combout\,
	datac => \Mux56~1_combout\,
	datad => \Mux0~9_combout\,
	combout => \Mux56~2_combout\);

-- Location: LCCOMB_X111_Y11_N2
\Mux56~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~4_combout\ = (\SW[1]~input_o\ & ((\SW[2]~input_o\ & ((\Mux56~2_combout\))) # (!\SW[2]~input_o\ & (\Mux56~3_combout\)))) # (!\SW[1]~input_o\ & (((\Mux56~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux56~3_combout\,
	datab => \SW[1]~input_o\,
	datac => \Mux56~2_combout\,
	datad => \SW[2]~input_o\,
	combout => \Mux56~4_combout\);

-- Location: LCCOMB_X109_Y12_N18
\Operation5|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation5|Mux19~0_combout\ = (\Operation5|stage0|stage1|s~combout\ & ((\Operation4|stage0|stage0|s~combout\) # ((!\Operation5|stage0|stage2|s~combout\ & \Operation5|stage0|stage3|s~combout\)))) # (!\Operation5|stage0|stage1|s~combout\ & 
-- ((\Operation5|stage0|stage2|s~combout\ & ((!\Operation5|stage0|stage3|s~combout\))) # (!\Operation5|stage0|stage2|s~combout\ & (\Operation4|stage0|stage0|s~combout\ & \Operation5|stage0|stage3|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation4|stage0|stage0|s~combout\,
	datab => \Operation5|stage0|stage2|s~combout\,
	datac => \Operation5|stage0|stage1|s~combout\,
	datad => \Operation5|stage0|stage3|s~combout\,
	combout => \Operation5|Mux19~0_combout\);

-- Location: LCCOMB_X110_Y11_N18
\Operation4|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation4|Mux19~0_combout\ = (\Operation4|stage0|stage1|s~combout\ & ((\Operation4|stage0|stage2|s~combout\ & ((\Operation4|stage0|stage0|s~combout\) # (\Operation4|stage0|stage3|s~combout\))) # (!\Operation4|stage0|stage2|s~combout\ & 
-- ((!\Operation4|stage0|stage3|s~combout\))))) # (!\Operation4|stage0|stage1|s~combout\ & (\Operation4|stage0|stage0|s~combout\ & ((\Operation4|stage0|stage3|s~combout\) # (!\Operation4|stage0|stage2|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation4|stage0|stage2|s~combout\,
	datab => \Operation4|stage0|stage0|s~combout\,
	datac => \Operation4|stage0|stage3|s~combout\,
	datad => \Operation4|stage0|stage1|s~combout\,
	combout => \Operation4|Mux19~0_combout\);

-- Location: LCCOMB_X112_Y11_N24
\Operation6|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation6|Mux13~0_combout\ = (\SW[0]~input_o\) # ((\Operation1[0]~0_combout\) # ((\Operation6|Sum0|operation0|s~0_combout\ & !\Operation6|Sum0|operation1|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \Operation6|Sum0|operation0|s~0_combout\,
	datac => \Operation6|Sum0|operation1|s~0_combout\,
	datad => \Operation1[0]~0_combout\,
	combout => \Operation6|Mux13~0_combout\);

-- Location: LCCOMB_X112_Y11_N30
\Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (\Operation1[1]~1_combout\ & ((Operation1(2) & ((Operation1(3)) # (\Operation1[0]~0_combout\))) # (!Operation1(2) & (!Operation1(3))))) # (!\Operation1[1]~1_combout\ & (\Operation1[0]~0_combout\ & ((Operation1(3)) # (!Operation1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation1[1]~1_combout\,
	datab => Operation1(2),
	datac => Operation1(3),
	datad => \Operation1[0]~0_combout\,
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X111_Y11_N12
\Mux55~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~2_combout\ = (\Mux55~0_combout\ & ((\Mux55~1_combout\ & (\Operation6|Mux13~0_combout\)) # (!\Mux55~1_combout\ & ((\Mux34~0_combout\))))) # (!\Mux55~0_combout\ & (((!\Mux55~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~0_combout\,
	datab => \Operation6|Mux13~0_combout\,
	datac => \Mux34~0_combout\,
	datad => \Mux55~1_combout\,
	combout => \Mux55~2_combout\);

-- Location: LCCOMB_X110_Y11_N28
\Mux55~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~3_combout\ = (\Mux55~2_combout\ & (((\Operation4|Mux19~0_combout\) # (!\Mux0~9_combout\)))) # (!\Mux55~2_combout\ & (!\Operation5|Mux19~0_combout\ & ((\Mux0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation5|Mux19~0_combout\,
	datab => \Operation4|Mux19~0_combout\,
	datac => \Mux55~2_combout\,
	datad => \Mux0~9_combout\,
	combout => \Mux55~3_combout\);

-- Location: LCCOMB_X110_Y15_N26
\Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = (\SW[4]~input_o\ & ((\SW[3]~input_o\) # ((!\SW[5]~input_o\ & \SW[6]~input_o\)))) # (!\SW[4]~input_o\ & ((\SW[5]~input_o\ & ((!\SW[6]~input_o\))) # (!\SW[5]~input_o\ & (\SW[3]~input_o\ & \SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux48~0_combout\);

-- Location: LCCOMB_X110_Y12_N30
\Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = (Operation2(1) & ((Operation2(3) & ((Operation2(2)))) # (!Operation2(3) & ((Operation2(0)) # (!Operation2(2)))))) # (!Operation2(1) & (Operation2(0) & ((Operation2(3)) # (!Operation2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Operation2(3),
	datab => Operation2(1),
	datac => Operation2(0),
	datad => Operation2(2),
	combout => \Mux41~0_combout\);

-- Location: LCCOMB_X110_Y12_N0
\Mux55~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~4_combout\ = (\SW[0]~input_o\ & (!\Mux48~0_combout\)) # (!\SW[0]~input_o\ & ((\Mux41~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \Mux48~0_combout\,
	datac => \Mux41~0_combout\,
	combout => \Mux55~4_combout\);

-- Location: LCCOMB_X110_Y11_N14
\Mux55~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~5_combout\ = (\SW[1]~input_o\ & ((\SW[2]~input_o\ & (\Mux55~3_combout\)) # (!\SW[2]~input_o\ & ((\Mux55~4_combout\))))) # (!\SW[1]~input_o\ & (\Mux55~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \Mux55~3_combout\,
	datac => \SW[2]~input_o\,
	datad => \Mux55~4_combout\,
	combout => \Mux55~5_combout\);

-- Location: LCCOMB_X110_Y12_N10
\Mux54~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~2_combout\ = (\SW[3]~input_o\ & (\SW[7]~input_o\)) # (!\SW[3]~input_o\ & (!\SW[7]~input_o\ & (\SW[8]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux54~2_combout\);

-- Location: LCCOMB_X109_Y12_N12
\Mux54~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~1_combout\ = (\Operation4|stage0|stage0|s~combout\ & (!\Operation5|stage0|stage2|s~combout\ & (\Operation5|stage0|stage1|s~combout\))) # (!\Operation4|stage0|stage0|s~combout\ & (((\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation4|stage0|stage0|s~combout\,
	datab => \Operation5|stage0|stage2|s~combout\,
	datac => \Operation5|stage0|stage1|s~combout\,
	datad => \SW[0]~input_o\,
	combout => \Mux54~1_combout\);

-- Location: LCCOMB_X110_Y12_N12
\Mux54~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~3_combout\ = (\SW[1]~input_o\ & ((\Mux54~2_combout\) # ((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (((\Mux54~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~2_combout\,
	datab => \Mux54~1_combout\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \Mux54~3_combout\);

-- Location: LCCOMB_X109_Y11_N28
\Mux54~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~4_combout\ = (\SW[1]~input_o\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux54~4_combout\);

-- Location: LCCOMB_X109_Y11_N30
\Mux54~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~5_combout\ = (\Mux54~4_combout\ & (((!\SW[5]~input_o\ & \SW[4]~input_o\)) # (!\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \Mux54~4_combout\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux54~5_combout\);

-- Location: LCCOMB_X112_Y11_N26
\Mux54~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~6_combout\ = (!\SW[1]~input_o\ & ((\Operation1[0]~0_combout\) # ((!\Operation1[1]~1_combout\ & Operation1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation1[1]~1_combout\,
	datab => Operation1(2),
	datac => \SW[1]~input_o\,
	datad => \Operation1[0]~0_combout\,
	combout => \Mux54~6_combout\);

-- Location: LCCOMB_X110_Y12_N6
\Mux54~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~7_combout\ = ((Operation2(0)) # ((!Operation2(1) & Operation2(2)))) # (!\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => Operation2(1),
	datac => Operation2(0),
	datad => Operation2(2),
	combout => \Mux54~7_combout\);

-- Location: LCCOMB_X110_Y12_N24
\Mux54~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~8_combout\ = (\Mux54~5_combout\) # ((\Mux54~6_combout\) # ((!\SW[0]~input_o\ & \Mux54~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~5_combout\,
	datab => \Mux54~6_combout\,
	datac => \SW[0]~input_o\,
	datad => \Mux54~7_combout\,
	combout => \Mux54~8_combout\);

-- Location: LCCOMB_X110_Y11_N16
\Mux53~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~11_combout\ = (!\SW[1]~input_o\ & !\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux53~11_combout\);

-- Location: LCCOMB_X110_Y11_N2
\Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~0_combout\ = (\Mux53~11_combout\ & ((\Operation4|stage0|stage0|s~combout\) # ((\Operation4|stage0|stage2|s~combout\ & !\Operation4|stage0|stage1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation4|stage0|stage2|s~combout\,
	datab => \Mux53~11_combout\,
	datac => \Operation4|stage0|stage0|s~combout\,
	datad => \Operation4|stage0|stage1|s~combout\,
	combout => \Mux54~0_combout\);

-- Location: LCCOMB_X110_Y12_N2
\Mux54~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~9_combout\ = (\Mux54~0_combout\) # ((\SW[2]~input_o\ & (\Mux54~3_combout\)) # (!\SW[2]~input_o\ & ((\Mux54~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~3_combout\,
	datab => \Mux54~8_combout\,
	datac => \Mux54~0_combout\,
	datad => \SW[2]~input_o\,
	combout => \Mux54~9_combout\);

-- Location: LCCOMB_X109_Y11_N0
\Mux53~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~12_combout\ = (\Mux54~4_combout\ & ((\SW[3]~input_o\ & (!\SW[5]~input_o\ & \SW[4]~input_o\)) # (!\SW[3]~input_o\ & (\SW[5]~input_o\ $ (!\SW[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \Mux54~4_combout\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux53~12_combout\);

-- Location: LCCOMB_X111_Y12_N18
\Mux53~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~20_combout\ = (!Operation1(2) & (\SW[3]~input_o\ & (!\Operation1[1]~1_combout\ & \SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Operation1(2),
	datab => \SW[3]~input_o\,
	datac => \Operation1[1]~1_combout\,
	datad => \SW[7]~input_o\,
	combout => \Mux53~20_combout\);

-- Location: LCCOMB_X110_Y12_N20
\Mux53~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~14_combout\ = (!\SW[0]~input_o\ & ((Operation2(0) & (Operation2(1) $ (!Operation2(2)))) # (!Operation2(0) & (!Operation2(1) & Operation2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Operation2(0),
	datab => Operation2(1),
	datac => \SW[0]~input_o\,
	datad => Operation2(2),
	combout => \Mux53~14_combout\);

-- Location: LCCOMB_X110_Y12_N22
\Mux53~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~21_combout\ = (\Mux53~14_combout\) # ((!\SW[1]~input_o\ & ((\Mux53~20_combout\) # (!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \Mux53~20_combout\,
	datac => \SW[0]~input_o\,
	datad => \Mux53~14_combout\,
	combout => \Mux53~21_combout\);

-- Location: LCCOMB_X111_Y12_N4
\Mux53~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~13_combout\ = (Operation1(2) & (!\SW[1]~input_o\ & (\Operation1[1]~1_combout\ $ (!\Operation1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Operation1(2),
	datab => \SW[1]~input_o\,
	datac => \Operation1[1]~1_combout\,
	datad => \Operation1[0]~0_combout\,
	combout => \Mux53~13_combout\);

-- Location: LCCOMB_X109_Y12_N6
\Mux53~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~15_combout\ = (!\SW[2]~input_o\ & ((\Mux53~12_combout\) # ((\Mux53~21_combout\) # (\Mux53~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux53~12_combout\,
	datab => \Mux53~21_combout\,
	datac => \Mux53~13_combout\,
	datad => \SW[2]~input_o\,
	combout => \Mux53~15_combout\);

-- Location: LCCOMB_X109_Y12_N16
\Mux53~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~16_combout\ = (\Mux0~7_combout\ & ((\Operation4|stage0|stage0|s~combout\ & (!\Operation5|stage0|stage2|s~combout\ & \Operation5|stage0|stage1|s~combout\)) # (!\Operation4|stage0|stage0|s~combout\ & (\Operation5|stage0|stage2|s~combout\ $ 
-- (!\Operation5|stage0|stage1|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation4|stage0|stage0|s~combout\,
	datab => \Operation5|stage0|stage2|s~combout\,
	datac => \Mux0~7_combout\,
	datad => \Operation5|stage0|stage1|s~combout\,
	combout => \Mux53~16_combout\);

-- Location: LCCOMB_X111_Y12_N14
\Mux53~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~17_combout\ = (!\Operation6|Sum0|operation0|s~0_combout\ & (\Mux53~10_combout\ & (\Operation6|Sum0|operation1|s~0_combout\ $ (\Operation1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation6|Sum0|operation0|s~0_combout\,
	datab => \Mux53~10_combout\,
	datac => \Operation6|Sum0|operation1|s~0_combout\,
	datad => \Operation1[0]~0_combout\,
	combout => \Mux53~17_combout\);

-- Location: LCCOMB_X109_Y12_N4
\Mux53~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~22_combout\ = (\Mux53~17_combout\) # ((\SW[2]~input_o\ & (\SW[1]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux53~17_combout\,
	datab => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux53~22_combout\);

-- Location: LCCOMB_X110_Y11_N4
\Mux53~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~18_combout\ = (\Mux53~11_combout\ & ((\Operation4|stage0|stage2|s~combout\ & (\Operation4|stage0|stage0|s~combout\ $ (!\Operation4|stage0|stage1|s~combout\))) # (!\Operation4|stage0|stage2|s~combout\ & (\Operation4|stage0|stage0|s~combout\ & 
-- !\Operation4|stage0|stage1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation4|stage0|stage2|s~combout\,
	datab => \Mux53~11_combout\,
	datac => \Operation4|stage0|stage0|s~combout\,
	datad => \Operation4|stage0|stage1|s~combout\,
	combout => \Mux53~18_combout\);

-- Location: LCCOMB_X109_Y12_N2
\Mux53~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~19_combout\ = (\Mux53~15_combout\) # ((\Mux53~16_combout\) # ((\Mux53~22_combout\) # (\Mux53~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux53~15_combout\,
	datab => \Mux53~16_combout\,
	datac => \Mux53~22_combout\,
	datad => \Mux53~18_combout\,
	combout => \Mux53~19_combout\);

-- Location: LCCOMB_X110_Y11_N6
\Operation4|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation4|Mux16~0_combout\ = (!\Operation4|stage0|stage0|s~combout\ & (\Operation4|stage0|stage1|s~combout\ & (\Operation4|stage0|stage2|s~combout\ $ (!\Operation4|stage0|stage3|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation4|stage0|stage2|s~combout\,
	datab => \Operation4|stage0|stage0|s~combout\,
	datac => \Operation4|stage0|stage3|s~combout\,
	datad => \Operation4|stage0|stage1|s~combout\,
	combout => \Operation4|Mux16~0_combout\);

-- Location: LCCOMB_X112_Y11_N6
\Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~0_combout\ = (\SW[0]~input_o\) # ((\Operation6|Sum0|operation0|s~0_combout\ & (!\Operation6|Sum0|operation1|s~0_combout\ & !\Operation1[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \Operation6|Sum0|operation0|s~0_combout\,
	datac => \Operation6|Sum0|operation1|s~0_combout\,
	datad => \Operation1[0]~0_combout\,
	combout => \Mux52~0_combout\);

-- Location: LCCOMB_X112_Y11_N20
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\Operation1[1]~1_combout\ & (!\Operation1[0]~0_combout\ & (Operation1(2) $ (!Operation1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation1[1]~1_combout\,
	datab => Operation1(2),
	datac => Operation1(3),
	datad => \Operation1[0]~0_combout\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X111_Y11_N22
\Mux52~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~1_combout\ = (\Mux55~0_combout\ & ((\Mux55~1_combout\ & (\Mux52~0_combout\)) # (!\Mux55~1_combout\ & ((\Mux31~0_combout\))))) # (!\Mux55~0_combout\ & (!\Mux55~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~0_combout\,
	datab => \Mux55~1_combout\,
	datac => \Mux52~0_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux52~1_combout\);

-- Location: LCCOMB_X109_Y12_N28
\Operation5|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation5|Mux16~0_combout\ = (\Operation4|stage0|stage0|s~combout\ & (!\Operation5|stage0|stage1|s~combout\ & (\Operation5|stage0|stage2|s~combout\ $ (!\Operation5|stage0|stage3|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation4|stage0|stage0|s~combout\,
	datab => \Operation5|stage0|stage2|s~combout\,
	datac => \Operation5|stage0|stage1|s~combout\,
	datad => \Operation5|stage0|stage3|s~combout\,
	combout => \Operation5|Mux16~0_combout\);

-- Location: LCCOMB_X110_Y11_N24
\Mux52~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~2_combout\ = (\Mux52~1_combout\ & ((\Operation4|Mux16~0_combout\) # ((!\Mux0~9_combout\)))) # (!\Mux52~1_combout\ & (((\Operation5|Mux16~0_combout\ & \Mux0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation4|Mux16~0_combout\,
	datab => \Mux52~1_combout\,
	datac => \Operation5|Mux16~0_combout\,
	datad => \Mux0~9_combout\,
	combout => \Mux52~2_combout\);

-- Location: LCCOMB_X110_Y15_N28
\Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = (\SW[3]~input_o\ & (!\SW[4]~input_o\ & (\SW[5]~input_o\ $ (!\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux45~0_combout\);

-- Location: LCCOMB_X110_Y12_N14
\Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (Operation2(1) & (!Operation2(0) & (Operation2(3) $ (!Operation2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Operation2(3),
	datab => Operation2(1),
	datac => Operation2(0),
	datad => Operation2(2),
	combout => \Mux38~0_combout\);

-- Location: LCCOMB_X110_Y12_N8
\Mux52~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~3_combout\ = (\SW[0]~input_o\ & (\Mux45~0_combout\)) # (!\SW[0]~input_o\ & ((\Mux38~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \Mux45~0_combout\,
	datac => \Mux38~0_combout\,
	combout => \Mux52~3_combout\);

-- Location: LCCOMB_X111_Y11_N0
\Mux52~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~4_combout\ = (\SW[1]~input_o\ & ((\SW[2]~input_o\ & (\Mux52~2_combout\)) # (!\SW[2]~input_o\ & ((\Mux52~3_combout\))))) # (!\SW[1]~input_o\ & (\Mux52~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~2_combout\,
	datab => \SW[1]~input_o\,
	datac => \Mux52~3_combout\,
	datad => \SW[2]~input_o\,
	combout => \Mux52~4_combout\);

-- Location: LCCOMB_X112_Y11_N8
\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (Operation1(2) & (!Operation1(3) & (\Operation1[1]~1_combout\ $ (\Operation1[0]~0_combout\)))) # (!Operation1(2) & (\Operation1[1]~1_combout\ & (Operation1(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation1[1]~1_combout\,
	datab => Operation1(2),
	datac => Operation1(3),
	datad => \Operation1[0]~0_combout\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X112_Y11_N18
\Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~0_combout\ = (\SW[0]~input_o\) # ((\Operation6|Sum0|operation0|s~0_combout\ & \Operation6|Sum0|operation1|s~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \Operation6|Sum0|operation0|s~0_combout\,
	datac => \Operation6|Sum0|operation1|s~0_combout\,
	combout => \Mux51~0_combout\);

-- Location: LCCOMB_X111_Y11_N26
\Mux51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~1_combout\ = (\Mux55~0_combout\ & ((\Mux55~1_combout\ & ((\Mux51~0_combout\))) # (!\Mux55~1_combout\ & (\Mux30~0_combout\)))) # (!\Mux55~0_combout\ & (!\Mux55~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~0_combout\,
	datab => \Mux55~1_combout\,
	datac => \Mux30~0_combout\,
	datad => \Mux51~0_combout\,
	combout => \Mux51~1_combout\);

-- Location: LCCOMB_X109_Y12_N14
\Operation5|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation5|Mux15~0_combout\ = (\Operation5|stage0|stage2|s~combout\ & (((!\Operation5|stage0|stage1|s~combout\ & !\Operation5|stage0|stage3|s~combout\)))) # (!\Operation5|stage0|stage2|s~combout\ & (\Operation5|stage0|stage3|s~combout\ & 
-- (\Operation4|stage0|stage0|s~combout\ $ (\Operation5|stage0|stage1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation4|stage0|stage0|s~combout\,
	datab => \Operation5|stage0|stage2|s~combout\,
	datac => \Operation5|stage0|stage1|s~combout\,
	datad => \Operation5|stage0|stage3|s~combout\,
	combout => \Operation5|Mux15~0_combout\);

-- Location: LCCOMB_X110_Y11_N26
\Operation4|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation4|Mux15~0_combout\ = (\Operation4|stage0|stage2|s~combout\ & (!\Operation4|stage0|stage3|s~combout\ & (\Operation4|stage0|stage0|s~combout\ $ (\Operation4|stage0|stage1|s~combout\)))) # (!\Operation4|stage0|stage2|s~combout\ & 
-- (((\Operation4|stage0|stage3|s~combout\ & \Operation4|stage0|stage1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation4|stage0|stage2|s~combout\,
	datab => \Operation4|stage0|stage0|s~combout\,
	datac => \Operation4|stage0|stage3|s~combout\,
	datad => \Operation4|stage0|stage1|s~combout\,
	combout => \Operation4|Mux15~0_combout\);

-- Location: LCCOMB_X110_Y11_N12
\Mux51~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~2_combout\ = (\Mux51~1_combout\ & (((\Operation4|Mux15~0_combout\) # (!\Mux0~9_combout\)))) # (!\Mux51~1_combout\ & (\Operation5|Mux15~0_combout\ & ((\Mux0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux51~1_combout\,
	datab => \Operation5|Mux15~0_combout\,
	datac => \Operation4|Mux15~0_combout\,
	datad => \Mux0~9_combout\,
	combout => \Mux51~2_combout\);

-- Location: LCCOMB_X109_Y11_N18
\Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = (\SW[6]~input_o\ & (!\SW[5]~input_o\ & (\SW[3]~input_o\ $ (\SW[4]~input_o\)))) # (!\SW[6]~input_o\ & (\SW[5]~input_o\ & ((!\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux44~0_combout\);

-- Location: LCCOMB_X110_Y12_N26
\Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = (Operation2(3) & (Operation2(1) & ((!Operation2(2))))) # (!Operation2(3) & (Operation2(2) & (Operation2(1) $ (Operation2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Operation2(3),
	datab => Operation2(1),
	datac => Operation2(0),
	datad => Operation2(2),
	combout => \Mux37~0_combout\);

-- Location: LCCOMB_X111_Y11_N4
\Mux51~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~3_combout\ = (\SW[0]~input_o\ & (\Mux44~0_combout\)) # (!\SW[0]~input_o\ & ((\Mux37~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux44~0_combout\,
	datac => \Mux37~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \Mux51~3_combout\);

-- Location: LCCOMB_X111_Y11_N6
\Mux51~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~4_combout\ = (\SW[1]~input_o\ & ((\SW[2]~input_o\ & (\Mux51~2_combout\)) # (!\SW[2]~input_o\ & ((\Mux51~3_combout\))))) # (!\SW[1]~input_o\ & (\Mux51~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux51~2_combout\,
	datab => \SW[1]~input_o\,
	datac => \Mux51~3_combout\,
	datad => \SW[2]~input_o\,
	combout => \Mux51~4_combout\);

-- Location: LCCOMB_X110_Y11_N30
\Operation4|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation4|Mux14~0_combout\ = (\Operation4|stage0|stage3|s~combout\ & (\Operation4|stage0|stage2|s~combout\ & (\Operation4|stage0|stage0|s~combout\ $ (!\Operation4|stage0|stage1|s~combout\)))) # (!\Operation4|stage0|stage3|s~combout\ & 
-- (!\Operation4|stage0|stage1|s~combout\ & (\Operation4|stage0|stage2|s~combout\ $ (\Operation4|stage0|stage0|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation4|stage0|stage2|s~combout\,
	datab => \Operation4|stage0|stage0|s~combout\,
	datac => \Operation4|stage0|stage3|s~combout\,
	datad => \Operation4|stage0|stage1|s~combout\,
	combout => \Operation4|Mux14~0_combout\);

-- Location: LCCOMB_X110_Y13_N30
\Operation6|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation6|Mux8~0_combout\ = (\SW[4]~input_o\ & (\SW[8]~input_o\ & (!\SW[3]~input_o\ & !\SW[7]~input_o\))) # (!\SW[4]~input_o\ & (!\SW[8]~input_o\ & (\SW[3]~input_o\ & \SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \Operation6|Mux8~0_combout\);

-- Location: LCCOMB_X110_Y13_N8
\Operation6|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation6|Mux8~1_combout\ = (\Operation6|Mux8~0_combout\) # (\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation6|Mux8~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \Operation6|Mux8~1_combout\);

-- Location: LCCOMB_X112_Y11_N28
\Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (Operation1(3) & (Operation1(2) & (\Operation1[1]~1_combout\ $ (!\Operation1[0]~0_combout\)))) # (!Operation1(3) & (!\Operation1[1]~1_combout\ & (Operation1(2) $ (\Operation1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation1[1]~1_combout\,
	datab => Operation1(2),
	datac => Operation1(3),
	datad => \Operation1[0]~0_combout\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X111_Y11_N16
\Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~0_combout\ = (\Mux55~0_combout\ & ((\Mux55~1_combout\ & (\Operation6|Mux8~1_combout\)) # (!\Mux55~1_combout\ & ((\Mux29~0_combout\))))) # (!\Mux55~0_combout\ & (!\Mux55~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~0_combout\,
	datab => \Mux55~1_combout\,
	datac => \Operation6|Mux8~1_combout\,
	datad => \Mux29~0_combout\,
	combout => \Mux50~0_combout\);

-- Location: LCCOMB_X109_Y12_N8
\Operation5|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation5|Mux14~0_combout\ = (\Operation5|stage0|stage3|s~combout\ & ((\Operation4|stage0|stage0|s~combout\ $ (!\Operation5|stage0|stage2|s~combout\)) # (!\Operation5|stage0|stage1|s~combout\))) # (!\Operation5|stage0|stage3|s~combout\ & 
-- ((\Operation5|stage0|stage2|s~combout\) # (\Operation4|stage0|stage0|s~combout\ $ (\Operation5|stage0|stage1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation4|stage0|stage0|s~combout\,
	datab => \Operation5|stage0|stage2|s~combout\,
	datac => \Operation5|stage0|stage1|s~combout\,
	datad => \Operation5|stage0|stage3|s~combout\,
	combout => \Operation5|Mux14~0_combout\);

-- Location: LCCOMB_X110_Y11_N0
\Mux50~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~1_combout\ = (\Mux50~0_combout\ & ((\Operation4|Mux14~0_combout\) # ((!\Mux0~9_combout\)))) # (!\Mux50~0_combout\ & (((!\Operation5|Mux14~0_combout\ & \Mux0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation4|Mux14~0_combout\,
	datab => \Mux50~0_combout\,
	datac => \Operation5|Mux14~0_combout\,
	datad => \Mux0~9_combout\,
	combout => \Mux50~1_combout\);

-- Location: LCCOMB_X109_Y11_N20
\Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = (\SW[6]~input_o\ & ((\SW[5]~input_o\ $ (!\SW[3]~input_o\)) # (!\SW[4]~input_o\))) # (!\SW[6]~input_o\ & ((\SW[5]~input_o\) # (\SW[3]~input_o\ $ (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux43~0_combout\);

-- Location: LCCOMB_X110_Y12_N28
\Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (Operation2(3) & (Operation2(2) & (Operation2(1) $ (!Operation2(0))))) # (!Operation2(3) & (!Operation2(1) & (Operation2(0) $ (Operation2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Operation2(3),
	datab => Operation2(1),
	datac => Operation2(0),
	datad => Operation2(2),
	combout => \Mux36~0_combout\);

-- Location: LCCOMB_X110_Y11_N10
\Mux50~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~2_combout\ = (\SW[0]~input_o\ & (!\Mux43~0_combout\)) # (!\SW[0]~input_o\ & ((\Mux36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \Mux43~0_combout\,
	datad => \Mux36~0_combout\,
	combout => \Mux50~2_combout\);

-- Location: LCCOMB_X110_Y11_N20
\Mux50~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~3_combout\ = (\SW[1]~input_o\ & ((\SW[2]~input_o\ & (\Mux50~1_combout\)) # (!\SW[2]~input_o\ & ((\Mux50~2_combout\))))) # (!\SW[1]~input_o\ & (\Mux50~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \Mux50~1_combout\,
	datac => \SW[2]~input_o\,
	datad => \Mux50~2_combout\,
	combout => \Mux50~3_combout\);

-- Location: LCCOMB_X109_Y8_N18
\Operation4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation4|Mux6~0_combout\ = (\SW[7]~input_o\ & ((\SW[8]~input_o\ $ (\SW[9]~input_o\)))) # (!\SW[7]~input_o\ & ((\SW[10]~input_o\) # ((\SW[8]~input_o\) # (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Operation4|Mux6~0_combout\);

-- Location: LCCOMB_X109_Y11_N14
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (!\SW[0]~input_o\ & (\SW[1]~input_o\ $ (!\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X109_Y8_N28
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\Mux11~0_combout\ & (((!\SW[2]~input_o\)) # (!\SW[8]~input_o\))) # (!\Mux11~0_combout\ & (((!\Operation4|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \Operation4|Mux6~0_combout\,
	datac => \Mux11~0_combout\,
	datad => \SW[2]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X109_Y8_N6
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\SW[7]~input_o\) # ((\SW[8]~input_o\) # (!\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X109_Y8_N8
\Operation4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation4|Mux5~0_combout\ = (\SW[8]~input_o\ & ((\SW[10]~input_o\ & ((\SW[9]~input_o\))) # (!\SW[10]~input_o\ & ((\SW[7]~input_o\) # (!\SW[9]~input_o\))))) # (!\SW[8]~input_o\ & (\SW[7]~input_o\ & ((\SW[10]~input_o\) # (!\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Operation4|Mux5~0_combout\);

-- Location: LCCOMB_X109_Y8_N26
\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Mux11~0_combout\ & (\Mux13~0_combout\)) # (!\Mux11~0_combout\ & ((\Operation4|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~0_combout\,
	datab => \Mux11~0_combout\,
	datac => \Operation4|Mux5~0_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X112_Y11_N22
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\SW[7]~input_o\) # ((!\SW[2]~input_o\ & (!\SW[0]~input_o\ & !\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X109_Y8_N4
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux12~0_combout\) # ((!\SW[8]~input_o\ & (!\Mux11~0_combout\ & \SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \Mux12~0_combout\,
	datac => \Mux11~0_combout\,
	datad => \SW[9]~input_o\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X109_Y8_N30
\Operation4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation4|Mux3~0_combout\ = (\SW[7]~input_o\ & !\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datac => \SW[8]~input_o\,
	combout => \Operation4|Mux3~0_combout\);

-- Location: LCCOMB_X109_Y8_N16
\Operation4|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation4|Mux3~1_combout\ = (\SW[7]~input_o\ & (\SW[8]~input_o\ $ (!\SW[9]~input_o\))) # (!\SW[7]~input_o\ & (!\SW[8]~input_o\ & \SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Operation4|Mux3~1_combout\);

-- Location: LCCOMB_X109_Y8_N10
\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux11~0_combout\ & ((\Operation4|Mux3~0_combout\) # ((!\SW[2]~input_o\)))) # (!\Mux11~0_combout\ & (((\Operation4|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation4|Mux3~0_combout\,
	datab => \Operation4|Mux3~1_combout\,
	datac => \Mux11~0_combout\,
	datad => \SW[2]~input_o\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X109_Y8_N12
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\SW[8]~input_o\ & ((\Mux11~0_combout\) # (\SW[10]~input_o\ $ (!\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \Mux11~0_combout\,
	datad => \SW[9]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X109_Y8_N22
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux10~0_combout\ & (((\Mux11~0_combout\ & !\SW[2]~input_o\)) # (!\SW[7]~input_o\))) # (!\Mux10~0_combout\ & (\Mux11~0_combout\ & ((!\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \Mux11~0_combout\,
	datac => \SW[7]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X109_Y8_N24
\Operation4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation4|Mux1~0_combout\ = (\SW[10]~input_o\ & (((\SW[8]~input_o\ & !\SW[9]~input_o\)))) # (!\SW[10]~input_o\ & (\SW[9]~input_o\ & (\SW[7]~input_o\ $ (\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Operation4|Mux1~0_combout\);

-- Location: LCCOMB_X109_Y12_N22
\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Operation4|Mux1~0_combout\ & (((\SW[0]~input_o\) # (!\SW[1]~input_o\)) # (!\SW[2]~input_o\))) # (!\Operation4|Mux1~0_combout\ & (!\SW[2]~input_o\ & (!\SW[1]~input_o\ & !\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation4|Mux1~0_combout\,
	datab => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X109_Y8_N2
\Operation4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation4|Mux0~0_combout\ = (\SW[10]~input_o\ & (\SW[9]~input_o\ & (\SW[7]~input_o\ $ (!\SW[8]~input_o\)))) # (!\SW[10]~input_o\ & (!\SW[8]~input_o\ & (\SW[7]~input_o\ $ (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Operation4|Mux0~0_combout\);

-- Location: LCCOMB_X109_Y8_N20
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Mux11~0_combout\ & ((\Operation4|Mux3~0_combout\) # ((!\SW[2]~input_o\)))) # (!\Mux11~0_combout\ & (((\Operation4|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation4|Mux3~0_combout\,
	datab => \Operation4|Mux0~0_combout\,
	datac => \Mux11~0_combout\,
	datad => \SW[2]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X110_Y15_N30
\Operation4|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation4|Mux13~0_combout\ = (\SW[5]~input_o\ & (((!\SW[4]~input_o\)) # (!\SW[3]~input_o\))) # (!\SW[5]~input_o\ & ((\SW[4]~input_o\) # ((!\SW[3]~input_o\ & \SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Operation4|Mux13~0_combout\);

-- Location: LCCOMB_X110_Y15_N16
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\Mux11~0_combout\ & (((!\SW[2]~input_o\) # (!\SW[4]~input_o\)))) # (!\Mux11~0_combout\ & (!\Operation4|Mux13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation4|Mux13~0_combout\,
	datab => \SW[4]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \Mux11~0_combout\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X110_Y15_N10
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = ((\SW[3]~input_o\) # (\SW[4]~input_o\)) # (!\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X110_Y15_N12
\Operation4|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation4|Mux12~0_combout\ = (\SW[4]~input_o\ & ((\SW[5]~input_o\ & ((\SW[3]~input_o\) # (\SW[6]~input_o\))) # (!\SW[5]~input_o\ & ((!\SW[6]~input_o\))))) # (!\SW[4]~input_o\ & (\SW[3]~input_o\ & ((\SW[6]~input_o\) # (!\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Operation4|Mux12~0_combout\);

-- Location: LCCOMB_X110_Y15_N14
\Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\Mux11~0_combout\ & (\Mux20~0_combout\)) # (!\Mux11~0_combout\ & ((\Operation4|Mux12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~0_combout\,
	datac => \Mux11~0_combout\,
	datad => \Operation4|Mux12~0_combout\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X109_Y11_N16
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\SW[3]~input_o\) # ((!\SW[1]~input_o\ & (!\SW[2]~input_o\ & !\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X109_Y11_N26
\Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\Mux19~0_combout\) # ((!\Mux11~0_combout\ & (\SW[5]~input_o\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => \Mux11~0_combout\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X110_Y15_N0
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\SW[3]~input_o\ & !\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X110_Y15_N18
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\Mux11~0_combout\ & (\SW[2]~input_o\ & ((\SW[4]~input_o\) # (!\SW[3]~input_o\)))) # (!\Mux11~0_combout\ & (\SW[3]~input_o\ $ (((\SW[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X110_Y15_N4
\Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\SW[5]~input_o\ & (((!\Mux18~0_combout\)))) # (!\SW[5]~input_o\ & ((\Mux15~0_combout\) # ((\Mux11~0_combout\ & !\Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datab => \Mux15~0_combout\,
	datac => \Mux18~0_combout\,
	datad => \SW[5]~input_o\,
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X110_Y15_N22
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\SW[4]~input_o\ & ((\Mux11~0_combout\) # (\SW[6]~input_o\ $ (!\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datab => \SW[4]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X110_Y15_N24
\Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Mux17~0_combout\ & (((!\SW[2]~input_o\ & \Mux11~0_combout\)) # (!\SW[3]~input_o\))) # (!\Mux17~0_combout\ & (((!\SW[2]~input_o\ & \Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~0_combout\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \Mux11~0_combout\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X110_Y15_N2
\Operation4|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation4|Mux8~0_combout\ = (\SW[5]~input_o\ & (!\SW[6]~input_o\ & (\SW[3]~input_o\ $ (\SW[4]~input_o\)))) # (!\SW[5]~input_o\ & (((\SW[6]~input_o\ & \SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Operation4|Mux8~0_combout\);

-- Location: LCCOMB_X111_Y16_N14
\Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\Operation4|Mux8~0_combout\ & (((\SW[0]~input_o\) # (!\SW[2]~input_o\)) # (!\SW[1]~input_o\))) # (!\Operation4|Mux8~0_combout\ & (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & !\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation4|Mux8~0_combout\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X110_Y15_N20
\Operation4|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation4|Mux7~0_combout\ = (\SW[6]~input_o\ & (\SW[5]~input_o\ & (\SW[3]~input_o\ $ (!\SW[4]~input_o\)))) # (!\SW[6]~input_o\ & (!\SW[4]~input_o\ & (\SW[5]~input_o\ $ (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Operation4|Mux7~0_combout\);

-- Location: LCCOMB_X110_Y15_N6
\Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Mux11~0_combout\ & (((\Mux15~0_combout\) # (!\SW[2]~input_o\)))) # (!\Mux11~0_combout\ & (\Operation4|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datab => \Operation4|Mux7~0_combout\,
	datac => \SW[2]~input_o\,
	datad => \Mux15~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X111_Y16_N24
\Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\SW[1]~input_o\ & (\SW[0]~input_o\ & \SW[2]~input_o\)) # (!\SW[1]~input_o\ & ((!\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X111_Y16_N10
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # (!\SW[2]~input_o\))) # (!\SW[1]~input_o\ & (\SW[0]~input_o\ & !\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X111_Y16_N28
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\SW[0]~input_o\) # ((!\SW[1]~input_o\ & \SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X111_Y16_N22
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\SW[1]~input_o\ & (\SW[0]~input_o\ & \SW[2]~input_o\)) # (!\SW[1]~input_o\ & (\SW[0]~input_o\ $ (\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X111_Y16_N8
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\SW[1]~input_o\ & (!\SW[0]~input_o\ & !\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X111_Y16_N2
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\SW[1]~input_o\ $ (!\SW[0]~input_o\)) # (!\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X111_Y16_N12
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (!\SW[1]~input_o\ & (\SW[0]~input_o\ $ (\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X109_Y11_N12
\LEDR~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~19_combout\ = (\SW[0]~input_o\ & (!\SW[5]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[5]~input_o\ & ((\SW[9]~input_o\) # (\Operation4|stage0|stage1|Cout~0_combout\))) # (!\SW[5]~input_o\ & (\SW[9]~input_o\ & \Operation4|stage0|stage1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \Operation4|stage0|stage1|Cout~0_combout\,
	combout => \LEDR~19_combout\);

-- Location: LCCOMB_X109_Y11_N22
\LEDR~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~20_combout\ = (\LEDR~19_combout\ & ((\SW[5]~input_o\) # ((\SW[9]~input_o\) # (\Operation5|stage0|stage1|Cout~0_combout\)))) # (!\LEDR~19_combout\ & (\SW[5]~input_o\ & (\SW[9]~input_o\ & \Operation5|stage0|stage1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDR~19_combout\,
	datab => \SW[5]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \Operation5|stage0|stage1|Cout~0_combout\,
	combout => \LEDR~20_combout\);

-- Location: LCCOMB_X109_Y13_N18
\LEDR~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~12_combout\ = (\SW[10]~input_o\ & ((\LEDR~20_combout\) # (\SW[6]~input_o\ $ (\SW[0]~input_o\)))) # (!\SW[10]~input_o\ & (\LEDR~20_combout\ & (\SW[6]~input_o\ $ (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \LEDR~20_combout\,
	combout => \LEDR~12_combout\);

-- Location: LCCOMB_X111_Y16_N0
\LEDR~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~17_combout\ = (\Mux0~10_combout\) # ((\LEDR~12_combout\ & (!\SW[1]~input_o\ & \SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDR~12_combout\,
	datab => \SW[1]~input_o\,
	datac => \Mux0~10_combout\,
	datad => \SW[2]~input_o\,
	combout => \LEDR~17_combout\);

-- Location: LCCOMB_X110_Y13_N26
\LEDR~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~13_combout\ = (\SW[1]~input_o\ & (!\SW[0]~input_o\ & ((!\SW[3]~input_o\) # (!\SW[7]~input_o\)))) # (!\SW[1]~input_o\ & (\SW[7]~input_o\ $ ((!\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \LEDR~13_combout\);

-- Location: LCCOMB_X110_Y13_N28
\Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = \Operation7|operation0|I[1]~0_combout\ $ (((\SW[0]~input_o\ & (!\Operation5|stage0|stage0|Cout~0_combout\)) # (!\SW[0]~input_o\ & ((\Operation4|stage0|stage0|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation5|stage0|stage0|Cout~0_combout\,
	datab => \Operation4|stage0|stage0|Cout~0_combout\,
	datac => \Operation7|operation0|I[1]~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X110_Y13_N12
\LEDR~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~18_combout\ = (\SW[1]~input_o\ & (\Operation6|Sum0|operation0|s~0_combout\ & ((!\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (((\Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation6|Sum0|operation0|s~0_combout\,
	datab => \Mux21~1_combout\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \LEDR~18_combout\);

-- Location: LCCOMB_X112_Y11_N16
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\SW[0]~input_o\ & \Operation6|Sum0|operation1|s~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \Operation6|Sum0|operation1|s~0_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X111_Y11_N18
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux55~0_combout\ & ((\Mux55~1_combout\ & ((\Mux4~0_combout\))) # (!\Mux55~1_combout\ & (Operation1(2))))) # (!\Mux55~0_combout\ & (\Mux55~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~0_combout\,
	datab => \Mux55~1_combout\,
	datac => Operation1(2),
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X110_Y11_N22
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux0~9_combout\ & ((\Mux4~1_combout\ & ((!\Operation5|stage0|stage2|s~combout\))) # (!\Mux4~1_combout\ & (\Operation4|stage0|stage2|s~combout\)))) # (!\Mux0~9_combout\ & (((\Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation4|stage0|stage2|s~combout\,
	datab => \Mux0~9_combout\,
	datac => \Operation5|stage0|stage2|s~combout\,
	datad => \Mux4~1_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X110_Y13_N6
\LEDR~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~14_combout\ = (!\LEDR~18_combout\ & (!\Mux4~2_combout\ & \SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDR~18_combout\,
	datac => \Mux4~2_combout\,
	datad => \SW[2]~input_o\,
	combout => \LEDR~14_combout\);

-- Location: LCCOMB_X110_Y13_N16
\LEDR~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~15_combout\ = (!\Mux0~8_combout\ & (\LEDR~13_combout\ & \LEDR~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~8_combout\,
	datac => \LEDR~13_combout\,
	datad => \LEDR~14_combout\,
	combout => \LEDR~15_combout\);

-- Location: LCCOMB_X109_Y12_N10
\LEDR~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~16_combout\ = (\Mux0~10_combout\) # ((\Mux0~9_combout\ & (\LEDR~12_combout\ $ (Operation1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~9_combout\,
	datab => \LEDR~12_combout\,
	datac => Operation1(2),
	datad => \Mux0~10_combout\,
	combout => \LEDR~16_combout\);

-- Location: LCCOMB_X109_Y13_N6
\Operation7|operation0|E~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation7|operation0|E~0_combout\ = (\SW[5]~input_o\ & (\SW[9]~input_o\ & (\SW[3]~input_o\ $ (!\SW[7]~input_o\)))) # (!\SW[5]~input_o\ & (!\SW[9]~input_o\ & (\SW[3]~input_o\ $ (!\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Operation7|operation0|E~0_combout\);

-- Location: LCCOMB_X109_Y13_N12
\Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~0_combout\ = (\SW[2]~input_o\ & (\SW[1]~input_o\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	combout => \Mux58~0_combout\);

-- Location: LCCOMB_X109_Y13_N0
\Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~0_combout\ = (\Operation7|operation0|E~0_combout\ & (!\Operation7|operation0|E_aux~0_combout\ & (\Mux58~0_combout\ & !\Operation7|operation0|I[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation7|operation0|E~0_combout\,
	datab => \Operation7|operation0|E_aux~0_combout\,
	datac => \Mux58~0_combout\,
	datad => \Operation7|operation0|I[1]~0_combout\,
	combout => \Mux59~0_combout\);

-- Location: LCCOMB_X110_Y13_N18
\Operation7|operation0|G~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation7|operation0|G~0_combout\ = (\SW[4]~input_o\ & (\SW[8]~input_o\ & (!\SW[3]~input_o\ & \SW[7]~input_o\))) # (!\SW[4]~input_o\ & ((\SW[8]~input_o\) # ((!\SW[3]~input_o\ & \SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \Operation7|operation0|G~0_combout\);

-- Location: LCCOMB_X109_Y13_N10
\Operation7|operation0|G~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Operation7|operation0|G~1_combout\ = (!\Operation7|operation0|E_aux~0_combout\ & ((\Operation7|operation0|G~0_combout\ & ((\SW[9]~input_o\) # (!\SW[5]~input_o\))) # (!\Operation7|operation0|G~0_combout\ & (!\SW[5]~input_o\ & \SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation7|operation0|E_aux~0_combout\,
	datab => \Operation7|operation0|G~0_combout\,
	datac => \SW[5]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Operation7|operation0|G~1_combout\);

-- Location: LCCOMB_X109_Y13_N28
\Mux58~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~1_combout\ = (\Mux58~0_combout\ & ((\Operation7|operation0|G~1_combout\) # ((\SW[10]~input_o\ & !\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~0_combout\,
	datab => \SW[10]~input_o\,
	datac => \Operation7|operation0|G~1_combout\,
	datad => \SW[6]~input_o\,
	combout => \Mux58~1_combout\);

-- Location: LCCOMB_X109_Y13_N22
\Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~0_combout\ = (\Mux58~0_combout\ & (((\Operation7|operation0|E_aux~0_combout\) # (\Operation7|operation0|I[1]~0_combout\)) # (!\Operation7|operation0|E~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation7|operation0|E~0_combout\,
	datab => \Operation7|operation0|E_aux~0_combout\,
	datac => \Mux58~0_combout\,
	datad => \Operation7|operation0|I[1]~0_combout\,
	combout => \Mux57~0_combout\);

-- Location: LCCOMB_X109_Y13_N24
\Mux57~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~1_combout\ = (\Operation7|operation0|G~1_combout\) # (((\SW[10]~input_o\ & !\SW[6]~input_o\)) # (!\Mux57~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operation7|operation0|G~1_combout\,
	datab => \SW[10]~input_o\,
	datac => \Mux57~0_combout\,
	datad => \SW[6]~input_o\,
	combout => \Mux57~1_combout\);

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;
END structure;


