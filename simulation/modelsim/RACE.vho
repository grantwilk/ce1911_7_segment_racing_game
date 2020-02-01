-- Copyright (C) 2018  Intel Corporation. All rights reserved.
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
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "01/31/2020 15:15:49"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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

ENTITY 	RACE IS
    PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	A_LOW : IN std_logic;
	SEG7 : OUT std_logic_vector(47 DOWNTO 0)
	);
END RACE;

-- Design Ports Information
-- SEG7[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[8]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[9]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[10]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[11]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[12]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[13]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[14]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[15]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[16]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[17]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[18]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[19]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[20]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[21]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[22]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[23]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[24]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[25]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[26]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[27]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[28]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[29]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[30]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[31]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[32]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[33]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[34]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[35]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[36]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[37]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[38]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[39]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[40]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[41]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[42]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[43]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[44]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[45]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[46]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG7[47]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_LOW	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RACE IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_A_LOW : std_logic;
SIGNAL ww_SEG7 : std_logic_vector(47 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rtl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK1KHZ~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \SEG7[0]~output_o\ : std_logic;
SIGNAL \SEG7[1]~output_o\ : std_logic;
SIGNAL \SEG7[2]~output_o\ : std_logic;
SIGNAL \SEG7[3]~output_o\ : std_logic;
SIGNAL \SEG7[4]~output_o\ : std_logic;
SIGNAL \SEG7[5]~output_o\ : std_logic;
SIGNAL \SEG7[6]~output_o\ : std_logic;
SIGNAL \SEG7[7]~output_o\ : std_logic;
SIGNAL \SEG7[8]~output_o\ : std_logic;
SIGNAL \SEG7[9]~output_o\ : std_logic;
SIGNAL \SEG7[10]~output_o\ : std_logic;
SIGNAL \SEG7[11]~output_o\ : std_logic;
SIGNAL \SEG7[12]~output_o\ : std_logic;
SIGNAL \SEG7[13]~output_o\ : std_logic;
SIGNAL \SEG7[14]~output_o\ : std_logic;
SIGNAL \SEG7[15]~output_o\ : std_logic;
SIGNAL \SEG7[16]~output_o\ : std_logic;
SIGNAL \SEG7[17]~output_o\ : std_logic;
SIGNAL \SEG7[18]~output_o\ : std_logic;
SIGNAL \SEG7[19]~output_o\ : std_logic;
SIGNAL \SEG7[20]~output_o\ : std_logic;
SIGNAL \SEG7[21]~output_o\ : std_logic;
SIGNAL \SEG7[22]~output_o\ : std_logic;
SIGNAL \SEG7[23]~output_o\ : std_logic;
SIGNAL \SEG7[24]~output_o\ : std_logic;
SIGNAL \SEG7[25]~output_o\ : std_logic;
SIGNAL \SEG7[26]~output_o\ : std_logic;
SIGNAL \SEG7[27]~output_o\ : std_logic;
SIGNAL \SEG7[28]~output_o\ : std_logic;
SIGNAL \SEG7[29]~output_o\ : std_logic;
SIGNAL \SEG7[30]~output_o\ : std_logic;
SIGNAL \SEG7[31]~output_o\ : std_logic;
SIGNAL \SEG7[32]~output_o\ : std_logic;
SIGNAL \SEG7[33]~output_o\ : std_logic;
SIGNAL \SEG7[34]~output_o\ : std_logic;
SIGNAL \SEG7[35]~output_o\ : std_logic;
SIGNAL \SEG7[36]~output_o\ : std_logic;
SIGNAL \SEG7[37]~output_o\ : std_logic;
SIGNAL \SEG7[38]~output_o\ : std_logic;
SIGNAL \SEG7[39]~output_o\ : std_logic;
SIGNAL \SEG7[40]~output_o\ : std_logic;
SIGNAL \SEG7[41]~output_o\ : std_logic;
SIGNAL \SEG7[42]~output_o\ : std_logic;
SIGNAL \SEG7[43]~output_o\ : std_logic;
SIGNAL \SEG7[44]~output_o\ : std_logic;
SIGNAL \SEG7[45]~output_o\ : std_logic;
SIGNAL \SEG7[46]~output_o\ : std_logic;
SIGNAL \SEG7[47]~output_o\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Q[3]~213_combout\ : std_logic;
SIGNAL \Q[2]~130_combout\ : std_logic;
SIGNAL \A_LOW~input_o\ : std_logic;
SIGNAL \A_LAST~q\ : std_logic;
SIGNAL \TOGGLELIMITER~0_combout\ : std_logic;
SIGNAL \TOGGLELIMITER~q\ : std_logic;
SIGNAL \D~20_combout\ : std_logic;
SIGNAL \D~65_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \COUNTERCLK1HZ~10_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \COUNTERCLK1HZ~3_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \COUNTERCLK1HZ~6_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \COUNTERCLK1HZ~2_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \COUNTERCLK1HZ~5_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \COUNTERCLK1HZ~25_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \COUNTERCLK1HZ~24_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \COUNTERCLK1HZ~23_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \COUNTERCLK1HZ~22_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \COUNTERCLK1HZ~1_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \COUNTERCLK1HZ~4_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \COUNTERCLK1HZ~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \COUNTERCLK1HZ~20_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \COUNTERCLK1HZ~19_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \COUNTERCLK1HZ~18_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \COUNTERCLK1HZ~17_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \COUNTERCLK1HZ~9_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \COUNTERCLK1HZ~8_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \COUNTERCLK1HZ~16_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \COUNTERCLK1HZ~15_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \COUNTERCLK1HZ~14_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \COUNTERCLK1HZ~7_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \D~37_combout\ : std_logic;
SIGNAL \D~35_combout\ : std_logic;
SIGNAL \D~38_combout\ : std_logic;
SIGNAL \D~13_combout\ : std_logic;
SIGNAL \D~16_combout\ : std_logic;
SIGNAL \Q[1]~194_combout\ : std_logic;
SIGNAL \D~45_combout\ : std_logic;
SIGNAL \Q~166_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \CLK1KHZ_COUNT~6_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \CLK1KHZ_COUNT~5_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \CLK1KHZ_COUNT~4_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \CLK1KHZ_COUNT~3_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \CLK1KHZ_COUNT~2_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Equal4~3_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \CLK1KHZ_COUNT~1_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \CLK1KHZ_COUNT~0_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \Equal4~4_combout\ : std_logic;
SIGNAL \CLK1KHZ~0_combout\ : std_logic;
SIGNAL \CLK1KHZ~q\ : std_logic;
SIGNAL \CLK1KHZ~clkctrl_outclk\ : std_logic;
SIGNAL \P2_TIMER[0]~16_combout\ : std_logic;
SIGNAL \P2_TIMER~48_combout\ : std_logic;
SIGNAL \P2_TIMER~49_combout\ : std_logic;
SIGNAL \Equal64~9_combout\ : std_logic;
SIGNAL \Equal64~22_combout\ : std_logic;
SIGNAL \P1_TIMER~50_combout\ : std_logic;
SIGNAL \P1_TIMER~51_combout\ : std_logic;
SIGNAL \P2_TIMER[15]~50_combout\ : std_logic;
SIGNAL \P2_TIMER[0]~17\ : std_logic;
SIGNAL \P2_TIMER[1]~18_combout\ : std_logic;
SIGNAL \P2_TIMER[1]~19\ : std_logic;
SIGNAL \P2_TIMER[2]~20_combout\ : std_logic;
SIGNAL \P2_TIMER[2]~21\ : std_logic;
SIGNAL \P2_TIMER[3]~22_combout\ : std_logic;
SIGNAL \P2_TIMER[3]~23\ : std_logic;
SIGNAL \P2_TIMER[4]~24_combout\ : std_logic;
SIGNAL \P2_TIMER[4]~25\ : std_logic;
SIGNAL \P2_TIMER[5]~26_combout\ : std_logic;
SIGNAL \P2_TIMER[5]~27\ : std_logic;
SIGNAL \P2_TIMER[6]~28_combout\ : std_logic;
SIGNAL \P2_TIMER[6]~29\ : std_logic;
SIGNAL \P2_TIMER[7]~30_combout\ : std_logic;
SIGNAL \P2_TIMER[7]~31\ : std_logic;
SIGNAL \P2_TIMER[8]~32_combout\ : std_logic;
SIGNAL \P2_TIMER[8]~33\ : std_logic;
SIGNAL \P2_TIMER[9]~34_combout\ : std_logic;
SIGNAL \P2_TIMER[9]~35\ : std_logic;
SIGNAL \P2_TIMER[10]~36_combout\ : std_logic;
SIGNAL \P2_TIMER[10]~37\ : std_logic;
SIGNAL \P2_TIMER[11]~38_combout\ : std_logic;
SIGNAL \P2_TIMER[11]~39\ : std_logic;
SIGNAL \P2_TIMER[12]~40_combout\ : std_logic;
SIGNAL \P2_TIMER[12]~41\ : std_logic;
SIGNAL \P2_TIMER[13]~42_combout\ : std_logic;
SIGNAL \P2_TIMER[13]~43\ : std_logic;
SIGNAL \P2_TIMER[14]~44_combout\ : std_logic;
SIGNAL \P2_TIMER[14]~45\ : std_logic;
SIGNAL \P2_TIMER[15]~46_combout\ : std_logic;
SIGNAL \P1_TIMER[0]~18_combout\ : std_logic;
SIGNAL \Equal64~17_combout\ : std_logic;
SIGNAL \P1_TIMER[8]~52_combout\ : std_logic;
SIGNAL \P1_TIMER[0]~19\ : std_logic;
SIGNAL \P1_TIMER[1]~20_combout\ : std_logic;
SIGNAL \P1_TIMER[1]~21\ : std_logic;
SIGNAL \P1_TIMER[2]~22_combout\ : std_logic;
SIGNAL \P1_TIMER[2]~23\ : std_logic;
SIGNAL \P1_TIMER[3]~24_combout\ : std_logic;
SIGNAL \P1_TIMER[3]~25\ : std_logic;
SIGNAL \P1_TIMER[4]~26_combout\ : std_logic;
SIGNAL \P1_TIMER[4]~27\ : std_logic;
SIGNAL \P1_TIMER[5]~28_combout\ : std_logic;
SIGNAL \P1_TIMER[5]~29\ : std_logic;
SIGNAL \P1_TIMER[6]~30_combout\ : std_logic;
SIGNAL \P1_TIMER[6]~31\ : std_logic;
SIGNAL \P1_TIMER[7]~32_combout\ : std_logic;
SIGNAL \P1_TIMER[7]~33\ : std_logic;
SIGNAL \P1_TIMER[8]~34_combout\ : std_logic;
SIGNAL \P1_TIMER[8]~35\ : std_logic;
SIGNAL \P1_TIMER[9]~36_combout\ : std_logic;
SIGNAL \P1_TIMER[9]~37\ : std_logic;
SIGNAL \P1_TIMER[10]~38_combout\ : std_logic;
SIGNAL \P1_TIMER[10]~39\ : std_logic;
SIGNAL \P1_TIMER[11]~40_combout\ : std_logic;
SIGNAL \P1_TIMER[11]~41\ : std_logic;
SIGNAL \P1_TIMER[12]~42_combout\ : std_logic;
SIGNAL \P1_TIMER[12]~43\ : std_logic;
SIGNAL \P1_TIMER[13]~44_combout\ : std_logic;
SIGNAL \P1_TIMER[13]~45\ : std_logic;
SIGNAL \P1_TIMER[14]~46_combout\ : std_logic;
SIGNAL \P1_TIMER[14]~47\ : std_logic;
SIGNAL \P1_TIMER[15]~48_combout\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~15_cout\ : std_logic;
SIGNAL \LessThan1~17_cout\ : std_logic;
SIGNAL \LessThan1~19_cout\ : std_logic;
SIGNAL \LessThan1~21_cout\ : std_logic;
SIGNAL \LessThan1~23_cout\ : std_logic;
SIGNAL \LessThan1~25_cout\ : std_logic;
SIGNAL \LessThan1~27_cout\ : std_logic;
SIGNAL \LessThan1~29_cout\ : std_logic;
SIGNAL \LessThan1~30_combout\ : std_logic;
SIGNAL \Q~167_combout\ : std_logic;
SIGNAL \D~42_combout\ : std_logic;
SIGNAL \Q~168_combout\ : std_logic;
SIGNAL \Q~169_combout\ : std_logic;
SIGNAL \Q~170_combout\ : std_logic;
SIGNAL \Q~173_combout\ : std_logic;
SIGNAL \Q~174_combout\ : std_logic;
SIGNAL \Q~175_combout\ : std_logic;
SIGNAL \Q~171_combout\ : std_logic;
SIGNAL \Q~172_combout\ : std_logic;
SIGNAL \Q~176_combout\ : std_logic;
SIGNAL \Q~154_combout\ : std_logic;
SIGNAL \Q~155_combout\ : std_logic;
SIGNAL \Q~156_combout\ : std_logic;
SIGNAL \Q~160_combout\ : std_logic;
SIGNAL \Q~161_combout\ : std_logic;
SIGNAL \Q~162_combout\ : std_logic;
SIGNAL \Q~163_combout\ : std_logic;
SIGNAL \Q~164_combout\ : std_logic;
SIGNAL \Q~157_combout\ : std_logic;
SIGNAL \Q~158_combout\ : std_logic;
SIGNAL \Q~159_combout\ : std_logic;
SIGNAL \Q~165_combout\ : std_logic;
SIGNAL \Q~149_combout\ : std_logic;
SIGNAL \D~12_combout\ : std_logic;
SIGNAL \Q~148_combout\ : std_logic;
SIGNAL \Q~150_combout\ : std_logic;
SIGNAL \Q~151_combout\ : std_logic;
SIGNAL \Q~152_combout\ : std_logic;
SIGNAL \Q~153_combout\ : std_logic;
SIGNAL \Q~145_combout\ : std_logic;
SIGNAL \Q~146_combout\ : std_logic;
SIGNAL \Q~143_combout\ : std_logic;
SIGNAL \SEG7~144_combout\ : std_logic;
SIGNAL \Q~144_combout\ : std_logic;
SIGNAL \Q~147_combout\ : std_logic;
SIGNAL \Q~192_combout\ : std_logic;
SIGNAL \D~50_combout\ : std_logic;
SIGNAL \D~19_combout\ : std_logic;
SIGNAL \Q~186_combout\ : std_logic;
SIGNAL \D~46_combout\ : std_logic;
SIGNAL \D~54_combout\ : std_logic;
SIGNAL \Equal64~20_combout\ : std_logic;
SIGNAL \D~30_combout\ : std_logic;
SIGNAL \D~52_combout\ : std_logic;
SIGNAL \Q~188_combout\ : std_logic;
SIGNAL \Q~189_combout\ : std_logic;
SIGNAL \Equal64~15_combout\ : std_logic;
SIGNAL \D~33_combout\ : std_logic;
SIGNAL \D~55_combout\ : std_logic;
SIGNAL \D~29_combout\ : std_logic;
SIGNAL \Q~187_combout\ : std_logic;
SIGNAL \D~22_combout\ : std_logic;
SIGNAL \D~56_combout\ : std_logic;
SIGNAL \D~32_combout\ : std_logic;
SIGNAL \Q~190_combout\ : std_logic;
SIGNAL \Q~191_combout\ : std_logic;
SIGNAL \Equal64~11_combout\ : std_logic;
SIGNAL \Q~250_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~21_cout\ : std_logic;
SIGNAL \LessThan0~23_cout\ : std_logic;
SIGNAL \LessThan0~25_cout\ : std_logic;
SIGNAL \LessThan0~27_cout\ : std_logic;
SIGNAL \LessThan0~29_cout\ : std_logic;
SIGNAL \LessThan0~30_combout\ : std_logic;
SIGNAL \Equal64~14_combout\ : std_logic;
SIGNAL \Q[3]~248_combout\ : std_logic;
SIGNAL \Q~133_combout\ : std_logic;
SIGNAL \D~34_combout\ : std_logic;
SIGNAL \Q~136_combout\ : std_logic;
SIGNAL \Q~193_combout\ : std_logic;
SIGNAL \Q~183_combout\ : std_logic;
SIGNAL \Q~184_combout\ : std_logic;
SIGNAL \D~18_combout\ : std_logic;
SIGNAL \D~47_combout\ : std_logic;
SIGNAL \Q~134_combout\ : std_logic;
SIGNAL \Q~135_combout\ : std_logic;
SIGNAL \Q~185_combout\ : std_logic;
SIGNAL \Q[1]~195_combout\ : std_logic;
SIGNAL \Q[1]~252_combout\ : std_logic;
SIGNAL \D~53_combout\ : std_logic;
SIGNAL \D~15_combout\ : std_logic;
SIGNAL \Q~200_combout\ : std_logic;
SIGNAL \D~31_combout\ : std_logic;
SIGNAL \Q~197_combout\ : std_logic;
SIGNAL \Q~198_combout\ : std_logic;
SIGNAL \D~49_combout\ : std_logic;
SIGNAL \D~57_combout\ : std_logic;
SIGNAL \Q~196_combout\ : std_logic;
SIGNAL \Q~199_combout\ : std_logic;
SIGNAL \D~39_combout\ : std_logic;
SIGNAL \Q~201_combout\ : std_logic;
SIGNAL \Q~260_combout\ : std_logic;
SIGNAL \Q~202_combout\ : std_logic;
SIGNAL \D~59_combout\ : std_logic;
SIGNAL \SEG7~148_combout\ : std_logic;
SIGNAL \D~44_combout\ : std_logic;
SIGNAL \Q~203_combout\ : std_logic;
SIGNAL \D~58_combout\ : std_logic;
SIGNAL \D~40_combout\ : std_logic;
SIGNAL \Q~204_combout\ : std_logic;
SIGNAL \Q~205_combout\ : std_logic;
SIGNAL \Q[0]~253_combout\ : std_logic;
SIGNAL \Q~258_combout\ : std_logic;
SIGNAL \Q~219_combout\ : std_logic;
SIGNAL \D~60_combout\ : std_logic;
SIGNAL \D~43_combout\ : std_logic;
SIGNAL \SEG7~243_combout\ : std_logic;
SIGNAL \D~41_combout\ : std_logic;
SIGNAL \Q~138_combout\ : std_logic;
SIGNAL \Q~139_combout\ : std_logic;
SIGNAL \Q~140_combout\ : std_logic;
SIGNAL \Q~216_combout\ : std_logic;
SIGNAL \Q~214_combout\ : std_logic;
SIGNAL \Q~215_combout\ : std_logic;
SIGNAL \D~36_combout\ : std_logic;
SIGNAL \D~63_combout\ : std_logic;
SIGNAL \Q~217_combout\ : std_logic;
SIGNAL \Q~218_combout\ : std_logic;
SIGNAL \D~51_combout\ : std_logic;
SIGNAL \Q~220_combout\ : std_logic;
SIGNAL \Q[3]~221_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Q_LAST[5]~feeder_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \COUNTERCLK1HZ~13_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \COUNTERCLK1HZ~21_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \COUNTERCLK1HZ~12_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \COUNTERCLK1HZ~11_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \D~17_combout\ : std_logic;
SIGNAL \D~24_combout\ : std_logic;
SIGNAL \Equal64~16_combout\ : std_logic;
SIGNAL \Q[3]~112_combout\ : std_logic;
SIGNAL \Q[3]~113_combout\ : std_logic;
SIGNAL \Equal64~18_combout\ : std_logic;
SIGNAL \Q[3]~114_combout\ : std_logic;
SIGNAL \Equal64~13_combout\ : std_logic;
SIGNAL \Equal64~12_combout\ : std_logic;
SIGNAL \Q[3]~115_combout\ : std_logic;
SIGNAL \Q[3]~116_combout\ : std_logic;
SIGNAL \D~23_combout\ : std_logic;
SIGNAL \Q[3]~111_combout\ : std_logic;
SIGNAL \Q[3]~110_combout\ : std_logic;
SIGNAL \Q[3]~266_combout\ : std_logic;
SIGNAL \Q[3]~267_combout\ : std_logic;
SIGNAL \Q[3]~104_combout\ : std_logic;
SIGNAL \Q[3]~105_combout\ : std_logic;
SIGNAL \Q[3]~109_combout\ : std_logic;
SIGNAL \Q[3]~261_combout\ : std_logic;
SIGNAL \Q[3]~117_combout\ : std_logic;
SIGNAL \Q[3]~77_combout\ : std_logic;
SIGNAL \Q[3]~74_combout\ : std_logic;
SIGNAL \Q[3]~73_combout\ : std_logic;
SIGNAL \Q[3]~268_combout\ : std_logic;
SIGNAL \Q[3]~269_combout\ : std_logic;
SIGNAL \Q[3]~86_combout\ : std_logic;
SIGNAL \Q[3]~88_combout\ : std_logic;
SIGNAL \Q[3]~83_combout\ : std_logic;
SIGNAL \Q[3]~264_combout\ : std_logic;
SIGNAL \Q[3]~265_combout\ : std_logic;
SIGNAL \Q[3]~256_combout\ : std_logic;
SIGNAL \Q[3]~247_combout\ : std_logic;
SIGNAL \Equal64~8_combout\ : std_logic;
SIGNAL \Q[3]~123_combout\ : std_logic;
SIGNAL \Q[3]~124_combout\ : std_logic;
SIGNAL \SEG7~166_combout\ : std_logic;
SIGNAL \Q[3]~126_combout\ : std_logic;
SIGNAL \Q[3]~257_combout\ : std_logic;
SIGNAL \Q[3]~249_combout\ : std_logic;
SIGNAL \Q[3]~127_combout\ : std_logic;
SIGNAL \D~62_combout\ : std_logic;
SIGNAL \Q[3]~122_combout\ : std_logic;
SIGNAL \Equal64~10_combout\ : std_logic;
SIGNAL \Q[3]~262_combout\ : std_logic;
SIGNAL \Q[3]~120_combout\ : std_logic;
SIGNAL \Q[3]~121_combout\ : std_logic;
SIGNAL \Q[3]~263_combout\ : std_logic;
SIGNAL \Q[3]~125_combout\ : std_logic;
SIGNAL \Q[3]~128_combout\ : std_logic;
SIGNAL \D~28_combout\ : std_logic;
SIGNAL \D~27_combout\ : std_logic;
SIGNAL \Q[3]~119_combout\ : std_logic;
SIGNAL \D~25_combout\ : std_logic;
SIGNAL \Equal64~19_combout\ : std_logic;
SIGNAL \D~26_combout\ : std_logic;
SIGNAL \Q[3]~118_combout\ : std_logic;
SIGNAL \Q[3]~129_combout\ : std_logic;
SIGNAL \Q[4]~206_combout\ : std_logic;
SIGNAL \Q~208_combout\ : std_logic;
SIGNAL \Q~209_combout\ : std_logic;
SIGNAL \Q~210_combout\ : std_logic;
SIGNAL \Q~207_combout\ : std_logic;
SIGNAL \D~66_combout\ : std_logic;
SIGNAL \Q~211_combout\ : std_logic;
SIGNAL \Q~137_combout\ : std_logic;
SIGNAL \Q~141_combout\ : std_logic;
SIGNAL \Q~142_combout\ : std_logic;
SIGNAL \Q~177_combout\ : std_logic;
SIGNAL \Q~178_combout\ : std_logic;
SIGNAL \Q[4]~212_combout\ : std_logic;
SIGNAL \SEG7~274_combout\ : std_logic;
SIGNAL \D~21_combout\ : std_logic;
SIGNAL \D~48_combout\ : std_logic;
SIGNAL \Q~179_combout\ : std_logic;
SIGNAL \Q~259_combout\ : std_logic;
SIGNAL \D~14_combout\ : std_logic;
SIGNAL \D~64_combout\ : std_logic;
SIGNAL \Q~180_combout\ : std_logic;
SIGNAL \Q~181_combout\ : std_logic;
SIGNAL \Q~131_combout\ : std_logic;
SIGNAL \Q~132_combout\ : std_logic;
SIGNAL \Q~182_combout\ : std_logic;
SIGNAL \Q[5]~251_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \Mux0~9_combout\ : std_logic;
SIGNAL \Mux0~10_combout\ : std_logic;
SIGNAL \Mux0~11_combout\ : std_logic;
SIGNAL \Mux0~12_combout\ : std_logic;
SIGNAL \Mux0~13_combout\ : std_logic;
SIGNAL \Mux0~14_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \D~61_combout\ : std_logic;
SIGNAL \Q~233_combout\ : std_logic;
SIGNAL \SEG7~174_combout\ : std_logic;
SIGNAL \Q~234_combout\ : std_logic;
SIGNAL \Q~239_combout\ : std_logic;
SIGNAL \Q~240_combout\ : std_logic;
SIGNAL \Q~241_combout\ : std_logic;
SIGNAL \Q~242_combout\ : std_logic;
SIGNAL \Q~254_combout\ : std_logic;
SIGNAL \Q~243_combout\ : std_logic;
SIGNAL \Q~237_combout\ : std_logic;
SIGNAL \Q~238_combout\ : std_logic;
SIGNAL \Q~244_combout\ : std_logic;
SIGNAL \Q~235_combout\ : std_logic;
SIGNAL \Q~236_combout\ : std_logic;
SIGNAL \Q~245_combout\ : std_logic;
SIGNAL \Q~229_combout\ : std_logic;
SIGNAL \Q~230_combout\ : std_logic;
SIGNAL \Q~231_combout\ : std_logic;
SIGNAL \Q~232_combout\ : std_logic;
SIGNAL \Q~222_combout\ : std_logic;
SIGNAL \Q~223_combout\ : std_logic;
SIGNAL \Q~225_combout\ : std_logic;
SIGNAL \Q~224_combout\ : std_logic;
SIGNAL \Q~226_combout\ : std_logic;
SIGNAL \Q~227_combout\ : std_logic;
SIGNAL \Q~228_combout\ : std_logic;
SIGNAL \Q~246_combout\ : std_logic;
SIGNAL \Q[2]~255_combout\ : std_logic;
SIGNAL \SEG7~137_combout\ : std_logic;
SIGNAL \SEG7~136_combout\ : std_logic;
SIGNAL \SEG7~134_combout\ : std_logic;
SIGNAL \SEG7~133_combout\ : std_logic;
SIGNAL \SEG7~135_combout\ : std_logic;
SIGNAL \SEG7~138_combout\ : std_logic;
SIGNAL \SEG7~139_combout\ : std_logic;
SIGNAL \SEG7~140_combout\ : std_logic;
SIGNAL \SEG7~141_combout\ : std_logic;
SIGNAL \SEG7~142_combout\ : std_logic;
SIGNAL \SEG7~143_combout\ : std_logic;
SIGNAL \SEG7~145_combout\ : std_logic;
SIGNAL \SEG7~275_combout\ : std_logic;
SIGNAL \SEG7~146_combout\ : std_logic;
SIGNAL \SEG7~298_combout\ : std_logic;
SIGNAL \SEG7~299_combout\ : std_logic;
SIGNAL \SEG7~43_combout\ : std_logic;
SIGNAL \SEG7~42_combout\ : std_logic;
SIGNAL \SEG7~122_combout\ : std_logic;
SIGNAL \SEG7~297_combout\ : std_logic;
SIGNAL \SEG7~153_combout\ : std_logic;
SIGNAL \SEG7~152_combout\ : std_logic;
SIGNAL \SEG7~154_combout\ : std_logic;
SIGNAL \SEG7~149_combout\ : std_logic;
SIGNAL \Equal64~23_combout\ : std_logic;
SIGNAL \SEG7~284_combout\ : std_logic;
SIGNAL \SEG7~285_combout\ : std_logic;
SIGNAL \SEG7~150_combout\ : std_logic;
SIGNAL \SEG7~276_combout\ : std_logic;
SIGNAL \Equal64~24_combout\ : std_logic;
SIGNAL \SEG7~147_combout\ : std_logic;
SIGNAL \SEG7~151_combout\ : std_logic;
SIGNAL \SEG7~155_combout\ : std_logic;
SIGNAL \SEG7~157_combout\ : std_logic;
SIGNAL \SEG7~158_combout\ : std_logic;
SIGNAL \SEG7~159_combout\ : std_logic;
SIGNAL \SEG7~160_combout\ : std_logic;
SIGNAL \SEG7~156_combout\ : std_logic;
SIGNAL \SEG7~161_combout\ : std_logic;
SIGNAL \SEG7~162_combout\ : std_logic;
SIGNAL \SEG7~163_combout\ : std_logic;
SIGNAL \SEG7~164_combout\ : std_logic;
SIGNAL \SEG7~165_combout\ : std_logic;
SIGNAL \SEG7~167_combout\ : std_logic;
SIGNAL \SEG7~168_combout\ : std_logic;
SIGNAL \SEG7~169_combout\ : std_logic;
SIGNAL \SEG7~170_combout\ : std_logic;
SIGNAL \SEG7~171_combout\ : std_logic;
SIGNAL \SEG7~286_combout\ : std_logic;
SIGNAL \SEG7~172_combout\ : std_logic;
SIGNAL \SEG7~287_combout\ : std_logic;
SIGNAL \SEG7~173_combout\ : std_logic;
SIGNAL \SEG7~175_combout\ : std_logic;
SIGNAL \SEG7~104_combout\ : std_logic;
SIGNAL \SEG7~289_combout\ : std_logic;
SIGNAL \SEG7~176_combout\ : std_logic;
SIGNAL \SEG7~177_combout\ : std_logic;
SIGNAL \SEG7~178_combout\ : std_logic;
SIGNAL \SEG7~179_combout\ : std_logic;
SIGNAL \SEG7~277_combout\ : std_logic;
SIGNAL \SEG7~57_combout\ : std_logic;
SIGNAL \SEG7~53_combout\ : std_logic;
SIGNAL \SEG7~54_combout\ : std_logic;
SIGNAL \SEG7~123_combout\ : std_logic;
SIGNAL \SEG7~56_combout\ : std_logic;
SIGNAL \SEG7~124_combout\ : std_logic;
SIGNAL \SEG7~295_combout\ : std_logic;
SIGNAL \SEG7~296_combout\ : std_logic;
SIGNAL \SEG7~64_combout\ : std_logic;
SIGNAL \SEG7~63_combout\ : std_logic;
SIGNAL \SEG7~288_combout\ : std_logic;
SIGNAL \SEG7~181_combout\ : std_logic;
SIGNAL \SEG7~182_combout\ : std_logic;
SIGNAL \SEG7~278_combout\ : std_logic;
SIGNAL \SEG7~186_combout\ : std_logic;
SIGNAL \SEG7~183_combout\ : std_logic;
SIGNAL \SEG7~184_combout\ : std_logic;
SIGNAL \SEG7~185_combout\ : std_logic;
SIGNAL \SEG7~187_combout\ : std_logic;
SIGNAL \SEG7~283_combout\ : std_logic;
SIGNAL \SEG7~188_combout\ : std_logic;
SIGNAL \SEG7~189_combout\ : std_logic;
SIGNAL \SEG7~190_combout\ : std_logic;
SIGNAL \SEG7~191_combout\ : std_logic;
SIGNAL \SEG7~195_combout\ : std_logic;
SIGNAL \SEG7~196_combout\ : std_logic;
SIGNAL \Equal64~21_combout\ : std_logic;
SIGNAL \SEG7~192_combout\ : std_logic;
SIGNAL \SEG7~193_combout\ : std_logic;
SIGNAL \SEG7~194_combout\ : std_logic;
SIGNAL \SEG7~197_combout\ : std_logic;
SIGNAL \SEG7~198_combout\ : std_logic;
SIGNAL \SEG7~200_combout\ : std_logic;
SIGNAL \SEG7~199_combout\ : std_logic;
SIGNAL \SEG7~201_combout\ : std_logic;
SIGNAL \SEG7~202_combout\ : std_logic;
SIGNAL \SEG7~293_combout\ : std_logic;
SIGNAL \SEG7~294_combout\ : std_logic;
SIGNAL \SEG7~203_combout\ : std_logic;
SIGNAL \SEG7~204_combout\ : std_logic;
SIGNAL \SEG7~212_combout\ : std_logic;
SIGNAL \SEG7~213_combout\ : std_logic;
SIGNAL \SEG7~205_combout\ : std_logic;
SIGNAL \SEG7~206_combout\ : std_logic;
SIGNAL \SEG7~207_combout\ : std_logic;
SIGNAL \SEG7~208_combout\ : std_logic;
SIGNAL \SEG7~214_combout\ : std_logic;
SIGNAL \SEG7~210_combout\ : std_logic;
SIGNAL \SEG7~209_combout\ : std_logic;
SIGNAL \SEG7~211_combout\ : std_logic;
SIGNAL \SEG7~215_combout\ : std_logic;
SIGNAL \SEG7~216_combout\ : std_logic;
SIGNAL \SEG7~218_combout\ : std_logic;
SIGNAL \SEG7~217_combout\ : std_logic;
SIGNAL \SEG7~219_combout\ : std_logic;
SIGNAL \SEG7~220_combout\ : std_logic;
SIGNAL \SEG7~221_combout\ : std_logic;
SIGNAL \SEG7~222_combout\ : std_logic;
SIGNAL \SEG7~223_combout\ : std_logic;
SIGNAL \SEG7~224_combout\ : std_logic;
SIGNAL \SEG7~291_combout\ : std_logic;
SIGNAL \SEG7~292_combout\ : std_logic;
SIGNAL \SEG7~225_combout\ : std_logic;
SIGNAL \SEG7~229_combout\ : std_logic;
SIGNAL \SEG7~227_combout\ : std_logic;
SIGNAL \SEG7~226_combout\ : std_logic;
SIGNAL \SEG7~228_combout\ : std_logic;
SIGNAL \SEG7~230_combout\ : std_logic;
SIGNAL \SEG7~231_combout\ : std_logic;
SIGNAL \SEG7~232_combout\ : std_logic;
SIGNAL \SEG7~279_combout\ : std_logic;
SIGNAL \SEG7~239_combout\ : std_logic;
SIGNAL \SEG7~235_combout\ : std_logic;
SIGNAL \SEG7~240_combout\ : std_logic;
SIGNAL \SEG7~234_combout\ : std_logic;
SIGNAL \SEG7~280_combout\ : std_logic;
SIGNAL \SEG7~236_combout\ : std_logic;
SIGNAL \SEG7~233_combout\ : std_logic;
SIGNAL \SEG7~237_combout\ : std_logic;
SIGNAL \SEG7~238_combout\ : std_logic;
SIGNAL \SEG7~241_combout\ : std_logic;
SIGNAL \SEG7~75_combout\ : std_logic;
SIGNAL \SEG7~71_combout\ : std_logic;
SIGNAL \SEG7~72_combout\ : std_logic;
SIGNAL \SEG7~125_combout\ : std_logic;
SIGNAL \SEG7~74_combout\ : std_logic;
SIGNAL \SEG7~126_combout\ : std_logic;
SIGNAL \SEG7~242_combout\ : std_logic;
SIGNAL \SEG7~281_combout\ : std_logic;
SIGNAL \SEG7~244_combout\ : std_logic;
SIGNAL \SEG7~245_combout\ : std_logic;
SIGNAL \SEG7~247_combout\ : std_logic;
SIGNAL \SEG7~248_combout\ : std_logic;
SIGNAL \SEG7~246_combout\ : std_logic;
SIGNAL \SEG7~249_combout\ : std_logic;
SIGNAL \SEG7~250_combout\ : std_logic;
SIGNAL \SEG7~79_combout\ : std_logic;
SIGNAL \SEG7~80_combout\ : std_logic;
SIGNAL \SEG7~127_combout\ : std_logic;
SIGNAL \SEG7~83_combout\ : std_logic;
SIGNAL \SEG7~82_combout\ : std_logic;
SIGNAL \SEG7~128_combout\ : std_logic;
SIGNAL \SEG7~35_combout\ : std_logic;
SIGNAL \SEG7~34_combout\ : std_logic;
SIGNAL \SEG7~31_combout\ : std_logic;
SIGNAL \SEG7~32_combout\ : std_logic;
SIGNAL \SEG7~119_combout\ : std_logic;
SIGNAL \SEG7~120_combout\ : std_logic;
SIGNAL \SEG7~87_combout\ : std_logic;
SIGNAL \SEG7~129_combout\ : std_logic;
SIGNAL \SEG7~90_combout\ : std_logic;
SIGNAL \SEG7~91_combout\ : std_logic;
SIGNAL \SEG7~130_combout\ : std_logic;
SIGNAL \SEG7~252_combout\ : std_logic;
SIGNAL \SEG7~253_combout\ : std_logic;
SIGNAL \SEG7~254_combout\ : std_logic;
SIGNAL \SEG7~255_combout\ : std_logic;
SIGNAL \SEG7~251_combout\ : std_logic;
SIGNAL \SEG7~256_combout\ : std_logic;
SIGNAL \SEG7~258_combout\ : std_logic;
SIGNAL \SEG7~282_combout\ : std_logic;
SIGNAL \SEG7~259_combout\ : std_logic;
SIGNAL \SEG7~257_combout\ : std_logic;
SIGNAL \SEG7~260_combout\ : std_logic;
SIGNAL \SEG7~99_combout\ : std_logic;
SIGNAL \SEG7~98_combout\ : std_logic;
SIGNAL \SEG7~96_combout\ : std_logic;
SIGNAL \SEG7~95_combout\ : std_logic;
SIGNAL \SEG7~131_combout\ : std_logic;
SIGNAL \SEG7~132_combout\ : std_logic;
SIGNAL \SEG7~262_combout\ : std_logic;
SIGNAL \SEG7~263_combout\ : std_logic;
SIGNAL \SEG7~266_combout\ : std_logic;
SIGNAL \SEG7~265_combout\ : std_logic;
SIGNAL \SEG7~267_combout\ : std_logic;
SIGNAL \Equal64~25_combout\ : std_logic;
SIGNAL \SEG7~180_combout\ : std_logic;
SIGNAL \SEG7~268_combout\ : std_logic;
SIGNAL \SEG7~269_combout\ : std_logic;
SIGNAL \SEG7~261_combout\ : std_logic;
SIGNAL \SEG7~264_combout\ : std_logic;
SIGNAL \SEG7~270_combout\ : std_logic;
SIGNAL \SEG7~110_combout\ : std_logic;
SIGNAL \SEG7~290_combout\ : std_logic;
SIGNAL \SEG7~271_combout\ : std_logic;
SIGNAL \SEG7~272_combout\ : std_logic;
SIGNAL \SEG7~273_combout\ : std_logic;
SIGNAL P1_TIMER : std_logic_vector(15 DOWNTO 0);
SIGNAL P2_TIMER : std_logic_vector(15 DOWNTO 0);
SIGNAL Q : std_logic_vector(7 DOWNTO 0);
SIGNAL COUNTERCLK1HZ : std_logic_vector(25 DOWNTO 0);
SIGNAL Q_LAST : std_logic_vector(7 DOWNTO 0);
SIGNAL CLK1KHZ_COUNT : std_logic_vector(15 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_RST <= RST;
ww_A_LOW <= A_LOW;
SEG7 <= ww_SEG7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\rtl~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~0_combout\);

\CLK1KHZ~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK1KHZ~q\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y49_N12
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
\SEG7[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~138_combout\,
	devoe => ww_devoe,
	o => \SEG7[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\SEG7[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~142_combout\,
	devoe => ww_devoe,
	o => \SEG7[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\SEG7[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~146_combout\,
	devoe => ww_devoe,
	o => \SEG7[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\SEG7[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~122_combout\,
	devoe => ww_devoe,
	o => \SEG7[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\SEG7[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~155_combout\,
	devoe => ww_devoe,
	o => \SEG7[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\SEG7[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~161_combout\,
	devoe => ww_devoe,
	o => \SEG7[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\SEG7[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~164_combout\,
	devoe => ww_devoe,
	o => \SEG7[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\SEG7[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SEG7[7]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\SEG7[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~169_combout\,
	devoe => ww_devoe,
	o => \SEG7[8]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\SEG7[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~173_combout\,
	devoe => ww_devoe,
	o => \SEG7[9]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\SEG7[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~277_combout\,
	devoe => ww_devoe,
	o => \SEG7[10]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\SEG7[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~124_combout\,
	devoe => ww_devoe,
	o => \SEG7[11]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\SEG7[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~288_combout\,
	devoe => ww_devoe,
	o => \SEG7[12]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\SEG7[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~278_combout\,
	devoe => ww_devoe,
	o => \SEG7[13]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\SEG7[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~187_combout\,
	devoe => ww_devoe,
	o => \SEG7[14]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\SEG7[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SEG7[15]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\SEG7[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~191_combout\,
	devoe => ww_devoe,
	o => \SEG7[16]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\SEG7[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~198_combout\,
	devoe => ww_devoe,
	o => \SEG7[17]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\SEG7[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~201_combout\,
	devoe => ww_devoe,
	o => \SEG7[18]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\SEG7[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~204_combout\,
	devoe => ww_devoe,
	o => \SEG7[19]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\SEG7[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~215_combout\,
	devoe => ww_devoe,
	o => \SEG7[20]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\SEG7[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~219_combout\,
	devoe => ww_devoe,
	o => \SEG7[21]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\SEG7[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~221_combout\,
	devoe => ww_devoe,
	o => \SEG7[22]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\SEG7[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SEG7[23]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\SEG7[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~225_combout\,
	devoe => ww_devoe,
	o => \SEG7[24]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\SEG7[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~230_combout\,
	devoe => ww_devoe,
	o => \SEG7[25]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\SEG7[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~231_combout\,
	devoe => ww_devoe,
	o => \SEG7[26]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\SEG7[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~279_combout\,
	devoe => ww_devoe,
	o => \SEG7[27]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\SEG7[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~241_combout\,
	devoe => ww_devoe,
	o => \SEG7[28]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\SEG7[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~126_combout\,
	devoe => ww_devoe,
	o => \SEG7[29]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\SEG7[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~245_combout\,
	devoe => ww_devoe,
	o => \SEG7[30]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\SEG7[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SEG7[31]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\SEG7[32]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~250_combout\,
	devoe => ww_devoe,
	o => \SEG7[32]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\SEG7[33]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~128_combout\,
	devoe => ww_devoe,
	o => \SEG7[33]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\SEG7[34]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~120_combout\,
	devoe => ww_devoe,
	o => \SEG7[34]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\SEG7[35]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~130_combout\,
	devoe => ww_devoe,
	o => \SEG7[35]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\SEG7[36]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~256_combout\,
	devoe => ww_devoe,
	o => \SEG7[36]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\SEG7[37]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~260_combout\,
	devoe => ww_devoe,
	o => \SEG7[37]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\SEG7[38]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~132_combout\,
	devoe => ww_devoe,
	o => \SEG7[38]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\SEG7[39]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SEG7[39]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\SEG7[40]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~270_combout\,
	devoe => ww_devoe,
	o => \SEG7[40]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\SEG7[41]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~290_combout\,
	devoe => ww_devoe,
	o => \SEG7[41]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\SEG7[42]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~273_combout\,
	devoe => ww_devoe,
	o => \SEG7[42]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\SEG7[43]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~273_combout\,
	devoe => ww_devoe,
	o => \SEG7[43]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\SEG7[44]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~270_combout\,
	devoe => ww_devoe,
	o => \SEG7[44]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\SEG7[45]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~270_combout\,
	devoe => ww_devoe,
	o => \SEG7[45]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\SEG7[46]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7~290_combout\,
	devoe => ww_devoe,
	o => \SEG7[46]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\SEG7[47]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SEG7[47]~output_o\);

-- Location: IOIBUF_X46_Y54_N29
\RST~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: IOIBUF_X34_Y0_N29
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G19
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X63_Y44_N6
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = COUNTERCLK1HZ(0) $ (GND)
-- \Add2~1\ = CARRY(!COUNTERCLK1HZ(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTERCLK1HZ(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X57_Y45_N28
\Q[3]~213\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~213_combout\ = (\Q[3]~129_combout\ & Q(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Q[3]~129_combout\,
	datad => Q(3),
	combout => \Q[3]~213_combout\);

-- Location: LCCOMB_X57_Y45_N18
\Q[2]~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[2]~130_combout\ = (!\Q[3]~129_combout\ & \RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Q[3]~129_combout\,
	datac => \RST~input_o\,
	combout => \Q[2]~130_combout\);

-- Location: IOIBUF_X49_Y54_N29
\A_LOW~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_LOW,
	o => \A_LOW~input_o\);

-- Location: FF_X57_Y46_N3
A_LAST : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	asdata => \A_LOW~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A_LAST~q\);

-- Location: LCCOMB_X57_Y46_N0
\TOGGLELIMITER~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TOGGLELIMITER~0_combout\ = (\A_LOW~input_o\ & (\TOGGLELIMITER~q\ & \A_LAST~q\)) # (!\A_LOW~input_o\ & ((\TOGGLELIMITER~q\) # (\A_LAST~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_LOW~input_o\,
	datac => \TOGGLELIMITER~q\,
	datad => \A_LAST~q\,
	combout => \TOGGLELIMITER~0_combout\);

-- Location: FF_X57_Y46_N1
TOGGLELIMITER : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \TOGGLELIMITER~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TOGGLELIMITER~q\);

-- Location: LCCOMB_X57_Y46_N10
\D~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~20_combout\ = (!\A_LOW~input_o\ & !\TOGGLELIMITER~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_LOW~input_o\,
	datac => \TOGGLELIMITER~q\,
	combout => \D~20_combout\);

-- Location: LCCOMB_X58_Y48_N18
\D~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~65_combout\ = (!Q(5) & (Q(4) & (\D~20_combout\ & !Q(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => Q(4),
	datac => \D~20_combout\,
	datad => Q(3),
	combout => \D~65_combout\);

-- Location: LCCOMB_X63_Y43_N0
\Add2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (COUNTERCLK1HZ(13) & (!\Add2~25\)) # (!COUNTERCLK1HZ(13) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!COUNTERCLK1HZ(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTERCLK1HZ(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X63_Y43_N2
\Add2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (COUNTERCLK1HZ(14) & (\Add2~27\ $ (GND))) # (!COUNTERCLK1HZ(14) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((COUNTERCLK1HZ(14) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTERCLK1HZ(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X62_Y45_N28
\COUNTERCLK1HZ~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTERCLK1HZ~10_combout\ = (!\Equal2~2_combout\ & (\Add2~28_combout\ & \Equal3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~2_combout\,
	datac => \Add2~28_combout\,
	datad => \Equal3~3_combout\,
	combout => \COUNTERCLK1HZ~10_combout\);

-- Location: FF_X62_Y45_N29
\COUNTERCLK1HZ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNTERCLK1HZ~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTERCLK1HZ(14));

-- Location: LCCOMB_X62_Y45_N24
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (COUNTERCLK1HZ(13) & (COUNTERCLK1HZ(12) & COUNTERCLK1HZ(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTERCLK1HZ(13),
	datab => COUNTERCLK1HZ(12),
	datad => COUNTERCLK1HZ(14),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X63_Y43_N4
\Add2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (COUNTERCLK1HZ(15) & (!\Add2~29\)) # (!COUNTERCLK1HZ(15) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!COUNTERCLK1HZ(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTERCLK1HZ(15),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X63_Y45_N28
\COUNTERCLK1HZ~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTERCLK1HZ~3_combout\ = (!\Equal2~2_combout\ & (\Equal3~3_combout\ & \Add2~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~2_combout\,
	datac => \Equal3~3_combout\,
	datad => \Add2~30_combout\,
	combout => \COUNTERCLK1HZ~3_combout\);

-- Location: FF_X63_Y45_N29
\COUNTERCLK1HZ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNTERCLK1HZ~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTERCLK1HZ(15));

-- Location: LCCOMB_X63_Y43_N6
\Add2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (COUNTERCLK1HZ(16) & (\Add2~31\ $ (GND))) # (!COUNTERCLK1HZ(16) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((COUNTERCLK1HZ(16) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTERCLK1HZ(16),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X63_Y43_N26
\COUNTERCLK1HZ~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTERCLK1HZ~6_combout\ = (\Add2~32_combout\ & (!\Equal2~2_combout\ & \Equal3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~32_combout\,
	datab => \Equal2~2_combout\,
	datad => \Equal3~3_combout\,
	combout => \COUNTERCLK1HZ~6_combout\);

-- Location: FF_X63_Y43_N27
\COUNTERCLK1HZ[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNTERCLK1HZ~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTERCLK1HZ(16));

-- Location: LCCOMB_X63_Y43_N8
\Add2~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (COUNTERCLK1HZ(17) & (!\Add2~33\)) # (!COUNTERCLK1HZ(17) & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!COUNTERCLK1HZ(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTERCLK1HZ(17),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X63_Y45_N22
\COUNTERCLK1HZ~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTERCLK1HZ~2_combout\ = (!\Equal2~2_combout\ & (\Equal3~3_combout\ & \Add2~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~2_combout\,
	datac => \Equal3~3_combout\,
	datad => \Add2~34_combout\,
	combout => \COUNTERCLK1HZ~2_combout\);

-- Location: FF_X63_Y45_N23
\COUNTERCLK1HZ[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNTERCLK1HZ~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTERCLK1HZ(17));

-- Location: LCCOMB_X63_Y43_N10
\Add2~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (COUNTERCLK1HZ(18) & (\Add2~35\ $ (GND))) # (!COUNTERCLK1HZ(18) & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((COUNTERCLK1HZ(18) & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTERCLK1HZ(18),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X63_Y43_N28
\COUNTERCLK1HZ~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTERCLK1HZ~5_combout\ = (\Add2~36_combout\ & (!\Equal2~2_combout\ & \Equal3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~36_combout\,
	datab => \Equal2~2_combout\,
	datad => \Equal3~3_combout\,
	combout => \COUNTERCLK1HZ~5_combout\);

-- Location: FF_X63_Y43_N29
\COUNTERCLK1HZ[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNTERCLK1HZ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTERCLK1HZ(18));

-- Location: LCCOMB_X63_Y43_N12
\Add2~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (COUNTERCLK1HZ(19) & (!\Add2~37\)) # (!COUNTERCLK1HZ(19) & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!COUNTERCLK1HZ(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTERCLK1HZ(19),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X64_Y45_N12
\COUNTERCLK1HZ~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTERCLK1HZ~25_combout\ = (\Add2~38_combout\ & (!\Equal2~2_combout\ & \Equal3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~38_combout\,
	datac => \Equal2~2_combout\,
	datad => \Equal3~3_combout\,
	combout => \COUNTERCLK1HZ~25_combout\);

-- Location: FF_X64_Y45_N13
\COUNTERCLK1HZ[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNTERCLK1HZ~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTERCLK1HZ(19));

-- Location: LCCOMB_X63_Y43_N14
\Add2~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (COUNTERCLK1HZ(20) & (\Add2~39\ $ (GND))) # (!COUNTERCLK1HZ(20) & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((COUNTERCLK1HZ(20) & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTERCLK1HZ(20),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X63_Y45_N20
\COUNTERCLK1HZ~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTERCLK1HZ~24_combout\ = (!\Equal2~2_combout\ & (\Equal3~3_combout\ & \Add2~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~2_combout\,
	datac => \Equal3~3_combout\,
	datad => \Add2~40_combout\,
	combout => \COUNTERCLK1HZ~24_combout\);

-- Location: FF_X63_Y45_N21
\COUNTERCLK1HZ[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNTERCLK1HZ~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTERCLK1HZ(20));

-- Location: LCCOMB_X63_Y43_N16
\Add2~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (COUNTERCLK1HZ(21) & (!\Add2~41\)) # (!COUNTERCLK1HZ(21) & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!COUNTERCLK1HZ(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTERCLK1HZ(21),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X64_Y45_N6
\COUNTERCLK1HZ~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTERCLK1HZ~23_combout\ = (!\Equal2~2_combout\ & (\Add2~42_combout\ & \Equal3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~2_combout\,
	datac => \Add2~42_combout\,
	datad => \Equal3~3_combout\,
	combout => \COUNTERCLK1HZ~23_combout\);

-- Location: FF_X64_Y45_N7
\COUNTERCLK1HZ[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNTERCLK1HZ~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTERCLK1HZ(21));

-- Location: LCCOMB_X63_Y43_N18
\Add2~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (COUNTERCLK1HZ(22) & (\Add2~43\ $ (GND))) # (!COUNTERCLK1HZ(22) & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((COUNTERCLK1HZ(22) & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTERCLK1HZ(22),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X64_Y45_N0
\COUNTERCLK1HZ~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTERCLK1HZ~22_combout\ = (!\Equal2~2_combout\ & (\Add2~44_combout\ & \Equal3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~2_combout\,
	datac => \Add2~44_combout\,
	datad => \Equal3~3_combout\,
	combout => \COUNTERCLK1HZ~22_combout\);

-- Location: FF_X64_Y45_N1
\COUNTERCLK1HZ[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNTERCLK1HZ~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTERCLK1HZ(22));

-- Location: LCCOMB_X64_Y45_N24
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (COUNTERCLK1HZ(22) & (COUNTERCLK1HZ(20) & (COUNTERCLK1HZ(21) & COUNTERCLK1HZ(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTERCLK1HZ(22),
	datab => COUNTERCLK1HZ(20),
	datac => COUNTERCLK1HZ(21),
	datad => COUNTERCLK1HZ(19),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X63_Y43_N20
\Add2~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (COUNTERCLK1HZ(23) & (!\Add2~45\)) # (!COUNTERCLK1HZ(23) & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!COUNTERCLK1HZ(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTERCLK1HZ(23),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: LCCOMB_X62_Y45_N0
\COUNTERCLK1HZ~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTERCLK1HZ~1_combout\ = (!\Equal2~2_combout\ & (\Add2~46_combout\ & \Equal3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~2_combout\,
	datac => \Add2~46_combout\,
	datad => \Equal3~3_combout\,
	combout => \COUNTERCLK1HZ~1_combout\);

-- Location: FF_X62_Y45_N1
\COUNTERCLK1HZ[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNTERCLK1HZ~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTERCLK1HZ(23));

-- Location: LCCOMB_X63_Y43_N22
\Add2~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (COUNTERCLK1HZ(24) & (\Add2~47\ $ (GND))) # (!COUNTERCLK1HZ(24) & (!\Add2~47\ & VCC))
-- \Add2~49\ = CARRY((COUNTERCLK1HZ(24) & !\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTERCLK1HZ(24),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: LCCOMB_X63_Y43_N30
\COUNTERCLK1HZ~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTERCLK1HZ~4_combout\ = (!\Equal2~2_combout\ & (\Add2~48_combout\ & \Equal3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~2_combout\,
	datac => \Add2~48_combout\,
	datad => \Equal3~3_combout\,
	combout => \COUNTERCLK1HZ~4_combout\);

-- Location: FF_X63_Y43_N31
\COUNTERCLK1HZ[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNTERCLK1HZ~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTERCLK1HZ(24));

-- Location: LCCOMB_X63_Y43_N24
\Add2~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = \Add2~49\ $ (COUNTERCLK1HZ(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => COUNTERCLK1HZ(25),
	cin => \Add2~49\,
	combout => \Add2~50_combout\);

-- Location: LCCOMB_X63_Y45_N12
\COUNTERCLK1HZ~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTERCLK1HZ~0_combout\ = (!\Equal2~2_combout\ & (\Equal3~3_combout\ & \Add2~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~2_combout\,
	datac => \Equal3~3_combout\,
	datad => \Add2~50_combout\,
	combout => \COUNTERCLK1HZ~0_combout\);

-- Location: FF_X63_Y45_N13
\COUNTERCLK1HZ[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNTERCLK1HZ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTERCLK1HZ(25));

-- Location: LCCOMB_X63_Y45_N26
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!COUNTERCLK1HZ(25) & (!COUNTERCLK1HZ(15) & (!COUNTERCLK1HZ(23) & !COUNTERCLK1HZ(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTERCLK1HZ(25),
	datab => COUNTERCLK1HZ(15),
	datac => COUNTERCLK1HZ(23),
	datad => COUNTERCLK1HZ(17),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X63_Y44_N8
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (COUNTERCLK1HZ(1) & (!\Add2~1\)) # (!COUNTERCLK1HZ(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!COUNTERCLK1HZ(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTERCLK1HZ(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X63_Y44_N10
\Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (COUNTERCLK1HZ(2) & (\Add2~3\ $ (GND))) # (!COUNTERCLK1HZ(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((COUNTERCLK1HZ(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTERCLK1HZ(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X62_Y44_N6
\COUNTERCLK1HZ~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTERCLK1HZ~20_combout\ = (\Add2~4_combout\ & (\Equal3~3_combout\ & !\Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~4_combout\,
	datac => \Equal3~3_combout\,
	datad => \Equal2~2_combout\,
	combout => \COUNTERCLK1HZ~20_combout\);

-- Location: FF_X62_Y44_N7
\COUNTERCLK1HZ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNTERCLK1HZ~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTERCLK1HZ(2));

-- Location: LCCOMB_X63_Y44_N12
\Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (COUNTERCLK1HZ(3) & (!\Add2~5\)) # (!COUNTERCLK1HZ(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!COUNTERCLK1HZ(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTERCLK1HZ(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X62_Y44_N16
\COUNTERCLK1HZ~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTERCLK1HZ~19_combout\ = (\Add2~6_combout\ & (\Equal3~3_combout\ & !\Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~6_combout\,
	datac => \Equal3~3_combout\,
	datad => \Equal2~2_combout\,
	combout => \COUNTERCLK1HZ~19_combout\);

-- Location: FF_X62_Y44_N17
\COUNTERCLK1HZ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNTERCLK1HZ~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTERCLK1HZ(3));

-- Location: LCCOMB_X63_Y44_N14
\Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (COUNTERCLK1HZ(4) & (\Add2~7\ $ (GND))) # (!COUNTERCLK1HZ(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((COUNTERCLK1HZ(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTERCLK1HZ(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X62_Y45_N4
\COUNTERCLK1HZ~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTERCLK1HZ~18_combout\ = (\Add2~8_combout\ & (!\Equal2~2_combout\ & \Equal3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \Equal2~2_combout\,
	datad => \Equal3~3_combout\,
	combout => \COUNTERCLK1HZ~18_combout\);

-- Location: FF_X62_Y45_N5
\COUNTERCLK1HZ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNTERCLK1HZ~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTERCLK1HZ(4));

-- Location: LCCOMB_X63_Y44_N16
\Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (COUNTERCLK1HZ(5) & (!\Add2~9\)) # (!COUNTERCLK1HZ(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!COUNTERCLK1HZ(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTERCLK1HZ(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X62_Y45_N26
\COUNTERCLK1HZ~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTERCLK1HZ~17_combout\ = (\Add2~10_combout\ & (!\Equal2~2_combout\ & \Equal3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \Equal2~2_combout\,
	datad => \Equal3~3_combout\,
	combout => \COUNTERCLK1HZ~17_combout\);

-- Location: FF_X62_Y45_N27
\COUNTERCLK1HZ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNTERCLK1HZ~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTERCLK1HZ(5));

-- Location: LCCOMB_X63_Y44_N18
\Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (COUNTERCLK1HZ(6) & (\Add2~11\ $ (GND))) # (!COUNTERCLK1HZ(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((COUNTERCLK1HZ(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTERCLK1HZ(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X63_Y45_N4
\COUNTERCLK1HZ~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTERCLK1HZ~9_combout\ = (\Add2~12_combout\ & (!\Equal2~2_combout\ & \Equal3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => \Equal2~2_combout\,
	datac => \Equal3~3_combout\,
	combout => \COUNTERCLK1HZ~9_combout\);

-- Location: FF_X63_Y45_N5
\COUNTERCLK1HZ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNTERCLK1HZ~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTERCLK1HZ(6));

-- Location: LCCOMB_X63_Y44_N20
\Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (COUNTERCLK1HZ(7) & (!\Add2~13\)) # (!COUNTERCLK1HZ(7) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!COUNTERCLK1HZ(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTERCLK1HZ(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X63_Y45_N10
\COUNTERCLK1HZ~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTERCLK1HZ~8_combout\ = (!\Equal2~2_combout\ & (\Equal3~3_combout\ & \Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~2_combout\,
	datac => \Equal3~3_combout\,
	datad => \Add2~14_combout\,
	combout => \COUNTERCLK1HZ~8_combout\);

-- Location: FF_X63_Y45_N11
\COUNTERCLK1HZ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNTERCLK1HZ~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTERCLK1HZ(7));

-- Location: LCCOMB_X63_Y44_N22
\Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (COUNTERCLK1HZ(8) & (\Add2~15\ $ (GND))) # (!COUNTERCLK1HZ(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((COUNTERCLK1HZ(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTERCLK1HZ(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X62_Y44_N0
\COUNTERCLK1HZ~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTERCLK1HZ~16_combout\ = (\Add2~16_combout\ & (\Equal3~3_combout\ & !\Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~16_combout\,
	datac => \Equal3~3_combout\,
	datad => \Equal2~2_combout\,
	combout => \COUNTERCLK1HZ~16_combout\);

-- Location: FF_X62_Y44_N1
\COUNTERCLK1HZ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNTERCLK1HZ~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTERCLK1HZ(8));

-- Location: LCCOMB_X63_Y44_N24
\Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (COUNTERCLK1HZ(9) & (!\Add2~17\)) # (!COUNTERCLK1HZ(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!COUNTERCLK1HZ(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTERCLK1HZ(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X62_Y44_N30
\COUNTERCLK1HZ~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTERCLK1HZ~15_combout\ = (\Add2~18_combout\ & (\Equal3~3_combout\ & !\Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~18_combout\,
	datac => \Equal3~3_combout\,
	datad => \Equal2~2_combout\,
	combout => \COUNTERCLK1HZ~15_combout\);

-- Location: FF_X62_Y44_N31
\COUNTERCLK1HZ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNTERCLK1HZ~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTERCLK1HZ(9));

-- Location: LCCOMB_X63_Y44_N26
\Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (COUNTERCLK1HZ(10) & (\Add2~19\ $ (GND))) # (!COUNTERCLK1HZ(10) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((COUNTERCLK1HZ(10) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTERCLK1HZ(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X62_Y44_N8
\COUNTERCLK1HZ~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTERCLK1HZ~14_combout\ = (\Add2~20_combout\ & (\Equal3~3_combout\ & !\Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~20_combout\,
	datac => \Equal3~3_combout\,
	datad => \Equal2~2_combout\,
	combout => \COUNTERCLK1HZ~14_combout\);

-- Location: FF_X62_Y44_N9
\COUNTERCLK1HZ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNTERCLK1HZ~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTERCLK1HZ(10));

-- Location: LCCOMB_X63_Y44_N28
\Add2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (COUNTERCLK1HZ(11) & (!\Add2~21\)) # (!COUNTERCLK1HZ(11) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!COUNTERCLK1HZ(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTERCLK1HZ(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X62_Y45_N10
\COUNTERCLK1HZ~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTERCLK1HZ~7_combout\ = (\Add2~22_combout\ & (!\Equal2~2_combout\ & \Equal3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~22_combout\,
	datac => \Equal2~2_combout\,
	datad => \Equal3~3_combout\,
	combout => \COUNTERCLK1HZ~7_combout\);

-- Location: FF_X62_Y45_N11
\COUNTERCLK1HZ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNTERCLK1HZ~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTERCLK1HZ(11));

-- Location: LCCOMB_X63_Y45_N0
\Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (COUNTERCLK1HZ(11) & (COUNTERCLK1HZ(16) & (COUNTERCLK1HZ(24) & COUNTERCLK1HZ(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTERCLK1HZ(11),
	datab => COUNTERCLK1HZ(16),
	datac => COUNTERCLK1HZ(24),
	datad => COUNTERCLK1HZ(18),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X63_Y45_N30
\Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (\Equal0~0_combout\ & (!COUNTERCLK1HZ(7) & (COUNTERCLK1HZ(6) & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => COUNTERCLK1HZ(7),
	datac => COUNTERCLK1HZ(6),
	datad => \Equal1~2_combout\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X63_Y45_N24
\Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~0_combout\ & (\Equal1~1_combout\ & (\Equal1~3_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal1~1_combout\,
	datac => \Equal1~3_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X58_Y44_N18
\D~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~37_combout\ = (!Q(1) & (Q(0) & (\Equal1~4_combout\ $ (\Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datab => \Equal1~4_combout\,
	datac => \Equal0~8_combout\,
	datad => Q(0),
	combout => \D~37_combout\);

-- Location: LCCOMB_X58_Y44_N6
\D~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~35_combout\ = (Q(4) & !Q(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(4),
	datad => Q(3),
	combout => \D~35_combout\);

-- Location: LCCOMB_X58_Y44_N28
\D~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~38_combout\ = (Q(2) & (\D~37_combout\ & (\D~35_combout\ & Q(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => \D~37_combout\,
	datac => \D~35_combout\,
	datad => Q(5),
	combout => \D~38_combout\);

-- Location: LCCOMB_X57_Y48_N14
\D~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~13_combout\ = (!Q(0) & Q(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datac => Q(1),
	combout => \D~13_combout\);

-- Location: LCCOMB_X57_Y44_N26
\D~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~16_combout\ = (!Q(1) & Q(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Q(1),
	datad => Q(0),
	combout => \D~16_combout\);

-- Location: LCCOMB_X58_Y48_N28
\Q[1]~194\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[1]~194_combout\ = (\D~38_combout\) # ((\D~65_combout\ & ((\D~13_combout\) # (\D~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~65_combout\,
	datab => \D~38_combout\,
	datac => \D~13_combout\,
	datad => \D~16_combout\,
	combout => \Q[1]~194_combout\);

-- Location: LCCOMB_X60_Y45_N20
\D~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~45_combout\ = (Q(2) & (Q(0) & Q(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => Q(0),
	datac => Q(1),
	combout => \D~45_combout\);

-- Location: LCCOMB_X58_Y45_N24
\Q~166\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~166_combout\ = (Q(1) & Q(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(1),
	datac => Q(0),
	combout => \Q~166_combout\);

-- Location: LCCOMB_X46_Y38_N0
\Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = CLK1KHZ_COUNT(0) $ (VCC)
-- \Add3~1\ = CARRY(CLK1KHZ_COUNT(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CLK1KHZ_COUNT(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X45_Y38_N6
\CLK1KHZ_COUNT~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK1KHZ_COUNT~6_combout\ = (!\Equal4~4_combout\ & \Add3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~4_combout\,
	datac => \Add3~0_combout\,
	combout => \CLK1KHZ_COUNT~6_combout\);

-- Location: FF_X45_Y38_N7
\CLK1KHZ_COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK1KHZ_COUNT~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK1KHZ_COUNT(0));

-- Location: LCCOMB_X46_Y38_N2
\Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (CLK1KHZ_COUNT(1) & (!\Add3~1\)) # (!CLK1KHZ_COUNT(1) & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!CLK1KHZ_COUNT(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK1KHZ_COUNT(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: FF_X46_Y38_N3
\CLK1KHZ_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK1KHZ_COUNT(1));

-- Location: LCCOMB_X46_Y38_N4
\Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (CLK1KHZ_COUNT(2) & (\Add3~3\ $ (GND))) # (!CLK1KHZ_COUNT(2) & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((CLK1KHZ_COUNT(2) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK1KHZ_COUNT(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: FF_X46_Y38_N5
\CLK1KHZ_COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK1KHZ_COUNT(2));

-- Location: LCCOMB_X46_Y38_N6
\Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (CLK1KHZ_COUNT(3) & (!\Add3~5\)) # (!CLK1KHZ_COUNT(3) & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!CLK1KHZ_COUNT(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CLK1KHZ_COUNT(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X45_Y38_N16
\CLK1KHZ_COUNT~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK1KHZ_COUNT~5_combout\ = (!\Equal4~4_combout\ & \Add3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal4~4_combout\,
	datad => \Add3~6_combout\,
	combout => \CLK1KHZ_COUNT~5_combout\);

-- Location: FF_X45_Y38_N17
\CLK1KHZ_COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK1KHZ_COUNT~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK1KHZ_COUNT(3));

-- Location: LCCOMB_X46_Y38_N8
\Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (CLK1KHZ_COUNT(4) & (\Add3~7\ $ (GND))) # (!CLK1KHZ_COUNT(4) & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((CLK1KHZ_COUNT(4) & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK1KHZ_COUNT(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: FF_X46_Y38_N9
\CLK1KHZ_COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK1KHZ_COUNT(4));

-- Location: LCCOMB_X46_Y38_N10
\Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (CLK1KHZ_COUNT(5) & (!\Add3~9\)) # (!CLK1KHZ_COUNT(5) & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!CLK1KHZ_COUNT(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK1KHZ_COUNT(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X45_Y38_N28
\CLK1KHZ_COUNT~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK1KHZ_COUNT~4_combout\ = (!\Equal4~4_combout\ & \Add3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~4_combout\,
	datac => \Add3~10_combout\,
	combout => \CLK1KHZ_COUNT~4_combout\);

-- Location: FF_X45_Y38_N29
\CLK1KHZ_COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK1KHZ_COUNT~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK1KHZ_COUNT(5));

-- Location: LCCOMB_X46_Y38_N12
\Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (CLK1KHZ_COUNT(6) & (\Add3~11\ $ (GND))) # (!CLK1KHZ_COUNT(6) & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((CLK1KHZ_COUNT(6) & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CLK1KHZ_COUNT(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: FF_X46_Y38_N13
\CLK1KHZ_COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add3~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK1KHZ_COUNT(6));

-- Location: LCCOMB_X46_Y38_N14
\Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (CLK1KHZ_COUNT(7) & (!\Add3~13\)) # (!CLK1KHZ_COUNT(7) & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!CLK1KHZ_COUNT(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK1KHZ_COUNT(7),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X45_Y38_N18
\CLK1KHZ_COUNT~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK1KHZ_COUNT~3_combout\ = (!\Equal4~4_combout\ & \Add3~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~4_combout\,
	datac => \Add3~14_combout\,
	combout => \CLK1KHZ_COUNT~3_combout\);

-- Location: FF_X45_Y38_N19
\CLK1KHZ_COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK1KHZ_COUNT~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK1KHZ_COUNT(7));

-- Location: LCCOMB_X46_Y38_N16
\Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (CLK1KHZ_COUNT(8) & (\Add3~15\ $ (GND))) # (!CLK1KHZ_COUNT(8) & (!\Add3~15\ & VCC))
-- \Add3~17\ = CARRY((CLK1KHZ_COUNT(8) & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK1KHZ_COUNT(8),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X45_Y38_N30
\CLK1KHZ_COUNT~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK1KHZ_COUNT~2_combout\ = (!\Equal4~4_combout\ & \Add3~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal4~4_combout\,
	datad => \Add3~16_combout\,
	combout => \CLK1KHZ_COUNT~2_combout\);

-- Location: FF_X45_Y38_N31
\CLK1KHZ_COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK1KHZ_COUNT~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK1KHZ_COUNT(8));

-- Location: LCCOMB_X46_Y38_N18
\Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (CLK1KHZ_COUNT(9) & (!\Add3~17\)) # (!CLK1KHZ_COUNT(9) & ((\Add3~17\) # (GND)))
-- \Add3~19\ = CARRY((!\Add3~17\) # (!CLK1KHZ_COUNT(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK1KHZ_COUNT(9),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: FF_X46_Y38_N19
\CLK1KHZ_COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add3~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK1KHZ_COUNT(9));

-- Location: LCCOMB_X46_Y38_N20
\Add3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (CLK1KHZ_COUNT(10) & (\Add3~19\ $ (GND))) # (!CLK1KHZ_COUNT(10) & (!\Add3~19\ & VCC))
-- \Add3~21\ = CARRY((CLK1KHZ_COUNT(10) & !\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK1KHZ_COUNT(10),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: FF_X46_Y38_N21
\CLK1KHZ_COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add3~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK1KHZ_COUNT(10));

-- Location: LCCOMB_X46_Y38_N22
\Add3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (CLK1KHZ_COUNT(11) & (!\Add3~21\)) # (!CLK1KHZ_COUNT(11) & ((\Add3~21\) # (GND)))
-- \Add3~23\ = CARRY((!\Add3~21\) # (!CLK1KHZ_COUNT(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CLK1KHZ_COUNT(11),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: FF_X46_Y38_N23
\CLK1KHZ_COUNT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add3~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK1KHZ_COUNT(11));

-- Location: LCCOMB_X45_Y38_N12
\Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (CLK1KHZ_COUNT(8) & (!CLK1KHZ_COUNT(11) & (!CLK1KHZ_COUNT(10) & !CLK1KHZ_COUNT(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CLK1KHZ_COUNT(8),
	datab => CLK1KHZ_COUNT(11),
	datac => CLK1KHZ_COUNT(10),
	datad => CLK1KHZ_COUNT(9),
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X45_Y38_N20
\Equal4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~3_combout\ = (!CLK1KHZ_COUNT(2) & (CLK1KHZ_COUNT(3) & (!CLK1KHZ_COUNT(0) & !CLK1KHZ_COUNT(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CLK1KHZ_COUNT(2),
	datab => CLK1KHZ_COUNT(3),
	datac => CLK1KHZ_COUNT(0),
	datad => CLK1KHZ_COUNT(1),
	combout => \Equal4~3_combout\);

-- Location: LCCOMB_X46_Y38_N24
\Add3~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (CLK1KHZ_COUNT(12) & (\Add3~23\ $ (GND))) # (!CLK1KHZ_COUNT(12) & (!\Add3~23\ & VCC))
-- \Add3~25\ = CARRY((CLK1KHZ_COUNT(12) & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK1KHZ_COUNT(12),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: FF_X46_Y38_N25
\CLK1KHZ_COUNT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add3~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK1KHZ_COUNT(12));

-- Location: LCCOMB_X46_Y38_N26
\Add3~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (CLK1KHZ_COUNT(13) & (!\Add3~25\)) # (!CLK1KHZ_COUNT(13) & ((\Add3~25\) # (GND)))
-- \Add3~27\ = CARRY((!\Add3~25\) # (!CLK1KHZ_COUNT(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CLK1KHZ_COUNT(13),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X45_Y38_N26
\CLK1KHZ_COUNT~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK1KHZ_COUNT~1_combout\ = (!\Equal4~4_combout\ & \Add3~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal4~4_combout\,
	datad => \Add3~26_combout\,
	combout => \CLK1KHZ_COUNT~1_combout\);

-- Location: FF_X45_Y38_N27
\CLK1KHZ_COUNT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK1KHZ_COUNT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK1KHZ_COUNT(13));

-- Location: LCCOMB_X46_Y38_N28
\Add3~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (CLK1KHZ_COUNT(14) & (\Add3~27\ $ (GND))) # (!CLK1KHZ_COUNT(14) & (!\Add3~27\ & VCC))
-- \Add3~29\ = CARRY((CLK1KHZ_COUNT(14) & !\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK1KHZ_COUNT(14),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X45_Y38_N24
\CLK1KHZ_COUNT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK1KHZ_COUNT~0_combout\ = (!\Equal4~4_combout\ & \Add3~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal4~4_combout\,
	datad => \Add3~28_combout\,
	combout => \CLK1KHZ_COUNT~0_combout\);

-- Location: FF_X45_Y38_N25
\CLK1KHZ_COUNT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK1KHZ_COUNT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK1KHZ_COUNT(14));

-- Location: LCCOMB_X46_Y38_N30
\Add3~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = CLK1KHZ_COUNT(15) $ (\Add3~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CLK1KHZ_COUNT(15),
	cin => \Add3~29\,
	combout => \Add3~30_combout\);

-- Location: FF_X46_Y38_N31
\CLK1KHZ_COUNT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add3~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK1KHZ_COUNT(15));

-- Location: LCCOMB_X45_Y38_N4
\Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (CLK1KHZ_COUNT(13) & (CLK1KHZ_COUNT(14) & (!CLK1KHZ_COUNT(15) & !CLK1KHZ_COUNT(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CLK1KHZ_COUNT(13),
	datab => CLK1KHZ_COUNT(14),
	datac => CLK1KHZ_COUNT(15),
	datad => CLK1KHZ_COUNT(12),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X45_Y38_N10
\Equal4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = (CLK1KHZ_COUNT(5) & (!CLK1KHZ_COUNT(6) & (!CLK1KHZ_COUNT(4) & CLK1KHZ_COUNT(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CLK1KHZ_COUNT(5),
	datab => CLK1KHZ_COUNT(6),
	datac => CLK1KHZ_COUNT(4),
	datad => CLK1KHZ_COUNT(7),
	combout => \Equal4~2_combout\);

-- Location: LCCOMB_X45_Y38_N22
\Equal4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~4_combout\ = (\Equal4~1_combout\ & (\Equal4~3_combout\ & (\Equal4~0_combout\ & \Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \Equal4~3_combout\,
	datac => \Equal4~0_combout\,
	datad => \Equal4~2_combout\,
	combout => \Equal4~4_combout\);

-- Location: LCCOMB_X45_Y42_N0
\CLK1KHZ~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK1KHZ~0_combout\ = \CLK1KHZ~q\ $ (\Equal4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK1KHZ~q\,
	datad => \Equal4~4_combout\,
	combout => \CLK1KHZ~0_combout\);

-- Location: FF_X45_Y42_N9
CLK1KHZ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \CLK1KHZ~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1KHZ~q\);

-- Location: CLKCTRL_G11
\CLK1KHZ~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK1KHZ~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK1KHZ~clkctrl_outclk\);

-- Location: LCCOMB_X55_Y46_N0
\P2_TIMER[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P2_TIMER[0]~16_combout\ = P2_TIMER(0) $ (VCC)
-- \P2_TIMER[0]~17\ = CARRY(P2_TIMER(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => P2_TIMER(0),
	datad => VCC,
	combout => \P2_TIMER[0]~16_combout\,
	cout => \P2_TIMER[0]~17\);

-- Location: LCCOMB_X56_Y45_N12
\P2_TIMER~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P2_TIMER~48_combout\ = (Q(4) & (!Q(2) & ((!Q(0)) # (!Q(1))))) # (!Q(4) & (Q(1) & (Q(0) & Q(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datab => Q(4),
	datac => Q(0),
	datad => Q(2),
	combout => \P2_TIMER~48_combout\);

-- Location: LCCOMB_X56_Y45_N6
\P2_TIMER~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P2_TIMER~49_combout\ = ((Q(3) & ((Q(4)))) # (!Q(3) & (!\P2_TIMER~48_combout\))) # (!Q(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2_TIMER~48_combout\,
	datab => Q(3),
	datac => Q(4),
	datad => Q(5),
	combout => \P2_TIMER~49_combout\);

-- Location: LCCOMB_X56_Y45_N8
\Equal64~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal64~9_combout\ = (!Q(3) & (!Q(4) & (Q(2) & Q(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(4),
	datac => Q(2),
	datad => Q(5),
	combout => \Equal64~9_combout\);

-- Location: LCCOMB_X56_Y45_N22
\Equal64~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal64~22_combout\ = (!Q(0) & (\Equal64~9_combout\ & !Q(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(0),
	datac => \Equal64~9_combout\,
	datad => Q(1),
	combout => \Equal64~22_combout\);

-- Location: LCCOMB_X56_Y45_N0
\P1_TIMER~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1_TIMER~50_combout\ = (Q(4) & (Q(1) & (Q(0) & Q(2)))) # (!Q(4) & ((Q(2)) # ((Q(1) & Q(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datab => Q(0),
	datac => Q(4),
	datad => Q(2),
	combout => \P1_TIMER~50_combout\);

-- Location: LCCOMB_X56_Y45_N26
\P1_TIMER~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1_TIMER~51_combout\ = (Q(5)) # ((Q(3) & ((Q(4)) # (!\P1_TIMER~50_combout\))) # (!Q(3) & ((\P1_TIMER~50_combout\) # (!Q(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => Q(3),
	datac => Q(4),
	datad => \P1_TIMER~50_combout\,
	combout => \P1_TIMER~51_combout\);

-- Location: LCCOMB_X56_Y45_N20
\P2_TIMER[15]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P2_TIMER[15]~50_combout\ = (\P1_TIMER~51_combout\ & ((\Equal64~22_combout\) # (!\P2_TIMER~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal64~22_combout\,
	datac => \P1_TIMER~51_combout\,
	datad => \P2_TIMER~49_combout\,
	combout => \P2_TIMER[15]~50_combout\);

-- Location: FF_X55_Y46_N1
\P2_TIMER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \P2_TIMER[0]~16_combout\,
	sclr => \P2_TIMER~49_combout\,
	ena => \P2_TIMER[15]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P2_TIMER(0));

-- Location: LCCOMB_X55_Y46_N2
\P2_TIMER[1]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P2_TIMER[1]~18_combout\ = (P2_TIMER(1) & (!\P2_TIMER[0]~17\)) # (!P2_TIMER(1) & ((\P2_TIMER[0]~17\) # (GND)))
-- \P2_TIMER[1]~19\ = CARRY((!\P2_TIMER[0]~17\) # (!P2_TIMER(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => P2_TIMER(1),
	datad => VCC,
	cin => \P2_TIMER[0]~17\,
	combout => \P2_TIMER[1]~18_combout\,
	cout => \P2_TIMER[1]~19\);

-- Location: FF_X55_Y46_N3
\P2_TIMER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \P2_TIMER[1]~18_combout\,
	sclr => \P2_TIMER~49_combout\,
	ena => \P2_TIMER[15]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P2_TIMER(1));

-- Location: LCCOMB_X55_Y46_N4
\P2_TIMER[2]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P2_TIMER[2]~20_combout\ = (P2_TIMER(2) & (\P2_TIMER[1]~19\ $ (GND))) # (!P2_TIMER(2) & (!\P2_TIMER[1]~19\ & VCC))
-- \P2_TIMER[2]~21\ = CARRY((P2_TIMER(2) & !\P2_TIMER[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => P2_TIMER(2),
	datad => VCC,
	cin => \P2_TIMER[1]~19\,
	combout => \P2_TIMER[2]~20_combout\,
	cout => \P2_TIMER[2]~21\);

-- Location: FF_X55_Y46_N5
\P2_TIMER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \P2_TIMER[2]~20_combout\,
	sclr => \P2_TIMER~49_combout\,
	ena => \P2_TIMER[15]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P2_TIMER(2));

-- Location: LCCOMB_X55_Y46_N6
\P2_TIMER[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P2_TIMER[3]~22_combout\ = (P2_TIMER(3) & (!\P2_TIMER[2]~21\)) # (!P2_TIMER(3) & ((\P2_TIMER[2]~21\) # (GND)))
-- \P2_TIMER[3]~23\ = CARRY((!\P2_TIMER[2]~21\) # (!P2_TIMER(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P2_TIMER(3),
	datad => VCC,
	cin => \P2_TIMER[2]~21\,
	combout => \P2_TIMER[3]~22_combout\,
	cout => \P2_TIMER[3]~23\);

-- Location: FF_X55_Y46_N7
\P2_TIMER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \P2_TIMER[3]~22_combout\,
	sclr => \P2_TIMER~49_combout\,
	ena => \P2_TIMER[15]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P2_TIMER(3));

-- Location: LCCOMB_X55_Y46_N8
\P2_TIMER[4]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P2_TIMER[4]~24_combout\ = (P2_TIMER(4) & (\P2_TIMER[3]~23\ $ (GND))) # (!P2_TIMER(4) & (!\P2_TIMER[3]~23\ & VCC))
-- \P2_TIMER[4]~25\ = CARRY((P2_TIMER(4) & !\P2_TIMER[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => P2_TIMER(4),
	datad => VCC,
	cin => \P2_TIMER[3]~23\,
	combout => \P2_TIMER[4]~24_combout\,
	cout => \P2_TIMER[4]~25\);

-- Location: FF_X55_Y46_N9
\P2_TIMER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \P2_TIMER[4]~24_combout\,
	sclr => \P2_TIMER~49_combout\,
	ena => \P2_TIMER[15]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P2_TIMER(4));

-- Location: LCCOMB_X55_Y46_N10
\P2_TIMER[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P2_TIMER[5]~26_combout\ = (P2_TIMER(5) & (!\P2_TIMER[4]~25\)) # (!P2_TIMER(5) & ((\P2_TIMER[4]~25\) # (GND)))
-- \P2_TIMER[5]~27\ = CARRY((!\P2_TIMER[4]~25\) # (!P2_TIMER(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P2_TIMER(5),
	datad => VCC,
	cin => \P2_TIMER[4]~25\,
	combout => \P2_TIMER[5]~26_combout\,
	cout => \P2_TIMER[5]~27\);

-- Location: FF_X55_Y46_N11
\P2_TIMER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \P2_TIMER[5]~26_combout\,
	sclr => \P2_TIMER~49_combout\,
	ena => \P2_TIMER[15]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P2_TIMER(5));

-- Location: LCCOMB_X55_Y46_N12
\P2_TIMER[6]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P2_TIMER[6]~28_combout\ = (P2_TIMER(6) & (\P2_TIMER[5]~27\ $ (GND))) # (!P2_TIMER(6) & (!\P2_TIMER[5]~27\ & VCC))
-- \P2_TIMER[6]~29\ = CARRY((P2_TIMER(6) & !\P2_TIMER[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P2_TIMER(6),
	datad => VCC,
	cin => \P2_TIMER[5]~27\,
	combout => \P2_TIMER[6]~28_combout\,
	cout => \P2_TIMER[6]~29\);

-- Location: FF_X55_Y46_N13
\P2_TIMER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \P2_TIMER[6]~28_combout\,
	sclr => \P2_TIMER~49_combout\,
	ena => \P2_TIMER[15]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P2_TIMER(6));

-- Location: LCCOMB_X55_Y46_N14
\P2_TIMER[7]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P2_TIMER[7]~30_combout\ = (P2_TIMER(7) & (!\P2_TIMER[6]~29\)) # (!P2_TIMER(7) & ((\P2_TIMER[6]~29\) # (GND)))
-- \P2_TIMER[7]~31\ = CARRY((!\P2_TIMER[6]~29\) # (!P2_TIMER(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => P2_TIMER(7),
	datad => VCC,
	cin => \P2_TIMER[6]~29\,
	combout => \P2_TIMER[7]~30_combout\,
	cout => \P2_TIMER[7]~31\);

-- Location: FF_X55_Y46_N15
\P2_TIMER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \P2_TIMER[7]~30_combout\,
	sclr => \P2_TIMER~49_combout\,
	ena => \P2_TIMER[15]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P2_TIMER(7));

-- Location: LCCOMB_X55_Y46_N16
\P2_TIMER[8]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P2_TIMER[8]~32_combout\ = (P2_TIMER(8) & (\P2_TIMER[7]~31\ $ (GND))) # (!P2_TIMER(8) & (!\P2_TIMER[7]~31\ & VCC))
-- \P2_TIMER[8]~33\ = CARRY((P2_TIMER(8) & !\P2_TIMER[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => P2_TIMER(8),
	datad => VCC,
	cin => \P2_TIMER[7]~31\,
	combout => \P2_TIMER[8]~32_combout\,
	cout => \P2_TIMER[8]~33\);

-- Location: FF_X55_Y46_N17
\P2_TIMER[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \P2_TIMER[8]~32_combout\,
	sclr => \P2_TIMER~49_combout\,
	ena => \P2_TIMER[15]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P2_TIMER(8));

-- Location: LCCOMB_X55_Y46_N18
\P2_TIMER[9]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P2_TIMER[9]~34_combout\ = (P2_TIMER(9) & (!\P2_TIMER[8]~33\)) # (!P2_TIMER(9) & ((\P2_TIMER[8]~33\) # (GND)))
-- \P2_TIMER[9]~35\ = CARRY((!\P2_TIMER[8]~33\) # (!P2_TIMER(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => P2_TIMER(9),
	datad => VCC,
	cin => \P2_TIMER[8]~33\,
	combout => \P2_TIMER[9]~34_combout\,
	cout => \P2_TIMER[9]~35\);

-- Location: FF_X55_Y46_N19
\P2_TIMER[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \P2_TIMER[9]~34_combout\,
	sclr => \P2_TIMER~49_combout\,
	ena => \P2_TIMER[15]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P2_TIMER(9));

-- Location: LCCOMB_X55_Y46_N20
\P2_TIMER[10]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P2_TIMER[10]~36_combout\ = (P2_TIMER(10) & (\P2_TIMER[9]~35\ $ (GND))) # (!P2_TIMER(10) & (!\P2_TIMER[9]~35\ & VCC))
-- \P2_TIMER[10]~37\ = CARRY((P2_TIMER(10) & !\P2_TIMER[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => P2_TIMER(10),
	datad => VCC,
	cin => \P2_TIMER[9]~35\,
	combout => \P2_TIMER[10]~36_combout\,
	cout => \P2_TIMER[10]~37\);

-- Location: FF_X55_Y46_N21
\P2_TIMER[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \P2_TIMER[10]~36_combout\,
	sclr => \P2_TIMER~49_combout\,
	ena => \P2_TIMER[15]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P2_TIMER(10));

-- Location: LCCOMB_X55_Y46_N22
\P2_TIMER[11]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P2_TIMER[11]~38_combout\ = (P2_TIMER(11) & (!\P2_TIMER[10]~37\)) # (!P2_TIMER(11) & ((\P2_TIMER[10]~37\) # (GND)))
-- \P2_TIMER[11]~39\ = CARRY((!\P2_TIMER[10]~37\) # (!P2_TIMER(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P2_TIMER(11),
	datad => VCC,
	cin => \P2_TIMER[10]~37\,
	combout => \P2_TIMER[11]~38_combout\,
	cout => \P2_TIMER[11]~39\);

-- Location: FF_X55_Y46_N23
\P2_TIMER[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \P2_TIMER[11]~38_combout\,
	sclr => \P2_TIMER~49_combout\,
	ena => \P2_TIMER[15]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P2_TIMER(11));

-- Location: LCCOMB_X55_Y46_N24
\P2_TIMER[12]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P2_TIMER[12]~40_combout\ = (P2_TIMER(12) & (\P2_TIMER[11]~39\ $ (GND))) # (!P2_TIMER(12) & (!\P2_TIMER[11]~39\ & VCC))
-- \P2_TIMER[12]~41\ = CARRY((P2_TIMER(12) & !\P2_TIMER[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => P2_TIMER(12),
	datad => VCC,
	cin => \P2_TIMER[11]~39\,
	combout => \P2_TIMER[12]~40_combout\,
	cout => \P2_TIMER[12]~41\);

-- Location: FF_X55_Y46_N25
\P2_TIMER[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \P2_TIMER[12]~40_combout\,
	sclr => \P2_TIMER~49_combout\,
	ena => \P2_TIMER[15]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P2_TIMER(12));

-- Location: LCCOMB_X55_Y46_N26
\P2_TIMER[13]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P2_TIMER[13]~42_combout\ = (P2_TIMER(13) & (!\P2_TIMER[12]~41\)) # (!P2_TIMER(13) & ((\P2_TIMER[12]~41\) # (GND)))
-- \P2_TIMER[13]~43\ = CARRY((!\P2_TIMER[12]~41\) # (!P2_TIMER(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P2_TIMER(13),
	datad => VCC,
	cin => \P2_TIMER[12]~41\,
	combout => \P2_TIMER[13]~42_combout\,
	cout => \P2_TIMER[13]~43\);

-- Location: FF_X55_Y46_N27
\P2_TIMER[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \P2_TIMER[13]~42_combout\,
	sclr => \P2_TIMER~49_combout\,
	ena => \P2_TIMER[15]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P2_TIMER(13));

-- Location: LCCOMB_X55_Y46_N28
\P2_TIMER[14]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P2_TIMER[14]~44_combout\ = (P2_TIMER(14) & (\P2_TIMER[13]~43\ $ (GND))) # (!P2_TIMER(14) & (!\P2_TIMER[13]~43\ & VCC))
-- \P2_TIMER[14]~45\ = CARRY((P2_TIMER(14) & !\P2_TIMER[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => P2_TIMER(14),
	datad => VCC,
	cin => \P2_TIMER[13]~43\,
	combout => \P2_TIMER[14]~44_combout\,
	cout => \P2_TIMER[14]~45\);

-- Location: FF_X55_Y46_N29
\P2_TIMER[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \P2_TIMER[14]~44_combout\,
	sclr => \P2_TIMER~49_combout\,
	ena => \P2_TIMER[15]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P2_TIMER(14));

-- Location: LCCOMB_X55_Y46_N30
\P2_TIMER[15]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P2_TIMER[15]~46_combout\ = P2_TIMER(15) $ (\P2_TIMER[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P2_TIMER(15),
	cin => \P2_TIMER[14]~45\,
	combout => \P2_TIMER[15]~46_combout\);

-- Location: FF_X55_Y46_N31
\P2_TIMER[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \P2_TIMER[15]~46_combout\,
	sclr => \P2_TIMER~49_combout\,
	ena => \P2_TIMER[15]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P2_TIMER(15));

-- Location: LCCOMB_X55_Y45_N0
\P1_TIMER[0]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1_TIMER[0]~18_combout\ = P1_TIMER(0) $ (VCC)
-- \P1_TIMER[0]~19\ = CARRY(P1_TIMER(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => P1_TIMER(0),
	datad => VCC,
	combout => \P1_TIMER[0]~18_combout\,
	cout => \P1_TIMER[0]~19\);

-- Location: LCCOMB_X54_Y45_N10
\Equal64~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal64~17_combout\ = (Q(3) & (!Q(2) & (!Q(5) & !Q(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(2),
	datac => Q(5),
	datad => Q(4),
	combout => \Equal64~17_combout\);

-- Location: LCCOMB_X56_Y45_N4
\P1_TIMER[8]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1_TIMER[8]~52_combout\ = ((\Equal64~17_combout\ & (!Q(0) & !Q(1)))) # (!\P1_TIMER~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal64~17_combout\,
	datab => Q(0),
	datac => \P1_TIMER~51_combout\,
	datad => Q(1),
	combout => \P1_TIMER[8]~52_combout\);

-- Location: FF_X55_Y45_N1
\P1_TIMER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \P1_TIMER[0]~18_combout\,
	sclr => \P1_TIMER~51_combout\,
	ena => \P1_TIMER[8]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P1_TIMER(0));

-- Location: LCCOMB_X55_Y45_N2
\P1_TIMER[1]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1_TIMER[1]~20_combout\ = (P1_TIMER(1) & (!\P1_TIMER[0]~19\)) # (!P1_TIMER(1) & ((\P1_TIMER[0]~19\) # (GND)))
-- \P1_TIMER[1]~21\ = CARRY((!\P1_TIMER[0]~19\) # (!P1_TIMER(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => P1_TIMER(1),
	datad => VCC,
	cin => \P1_TIMER[0]~19\,
	combout => \P1_TIMER[1]~20_combout\,
	cout => \P1_TIMER[1]~21\);

-- Location: FF_X55_Y45_N3
\P1_TIMER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \P1_TIMER[1]~20_combout\,
	sclr => \P1_TIMER~51_combout\,
	ena => \P1_TIMER[8]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P1_TIMER(1));

-- Location: LCCOMB_X55_Y45_N4
\P1_TIMER[2]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1_TIMER[2]~22_combout\ = (P1_TIMER(2) & (\P1_TIMER[1]~21\ $ (GND))) # (!P1_TIMER(2) & (!\P1_TIMER[1]~21\ & VCC))
-- \P1_TIMER[2]~23\ = CARRY((P1_TIMER(2) & !\P1_TIMER[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => P1_TIMER(2),
	datad => VCC,
	cin => \P1_TIMER[1]~21\,
	combout => \P1_TIMER[2]~22_combout\,
	cout => \P1_TIMER[2]~23\);

-- Location: FF_X55_Y45_N5
\P1_TIMER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \P1_TIMER[2]~22_combout\,
	sclr => \P1_TIMER~51_combout\,
	ena => \P1_TIMER[8]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P1_TIMER(2));

-- Location: LCCOMB_X55_Y45_N6
\P1_TIMER[3]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1_TIMER[3]~24_combout\ = (P1_TIMER(3) & (!\P1_TIMER[2]~23\)) # (!P1_TIMER(3) & ((\P1_TIMER[2]~23\) # (GND)))
-- \P1_TIMER[3]~25\ = CARRY((!\P1_TIMER[2]~23\) # (!P1_TIMER(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P1_TIMER(3),
	datad => VCC,
	cin => \P1_TIMER[2]~23\,
	combout => \P1_TIMER[3]~24_combout\,
	cout => \P1_TIMER[3]~25\);

-- Location: FF_X55_Y45_N7
\P1_TIMER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \P1_TIMER[3]~24_combout\,
	sclr => \P1_TIMER~51_combout\,
	ena => \P1_TIMER[8]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P1_TIMER(3));

-- Location: LCCOMB_X55_Y45_N8
\P1_TIMER[4]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1_TIMER[4]~26_combout\ = (P1_TIMER(4) & (\P1_TIMER[3]~25\ $ (GND))) # (!P1_TIMER(4) & (!\P1_TIMER[3]~25\ & VCC))
-- \P1_TIMER[4]~27\ = CARRY((P1_TIMER(4) & !\P1_TIMER[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => P1_TIMER(4),
	datad => VCC,
	cin => \P1_TIMER[3]~25\,
	combout => \P1_TIMER[4]~26_combout\,
	cout => \P1_TIMER[4]~27\);

-- Location: FF_X55_Y45_N9
\P1_TIMER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \P1_TIMER[4]~26_combout\,
	sclr => \P1_TIMER~51_combout\,
	ena => \P1_TIMER[8]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P1_TIMER(4));

-- Location: LCCOMB_X55_Y45_N10
\P1_TIMER[5]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1_TIMER[5]~28_combout\ = (P1_TIMER(5) & (!\P1_TIMER[4]~27\)) # (!P1_TIMER(5) & ((\P1_TIMER[4]~27\) # (GND)))
-- \P1_TIMER[5]~29\ = CARRY((!\P1_TIMER[4]~27\) # (!P1_TIMER(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P1_TIMER(5),
	datad => VCC,
	cin => \P1_TIMER[4]~27\,
	combout => \P1_TIMER[5]~28_combout\,
	cout => \P1_TIMER[5]~29\);

-- Location: FF_X55_Y45_N11
\P1_TIMER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \P1_TIMER[5]~28_combout\,
	sclr => \P1_TIMER~51_combout\,
	ena => \P1_TIMER[8]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P1_TIMER(5));

-- Location: LCCOMB_X55_Y45_N12
\P1_TIMER[6]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1_TIMER[6]~30_combout\ = (P1_TIMER(6) & (\P1_TIMER[5]~29\ $ (GND))) # (!P1_TIMER(6) & (!\P1_TIMER[5]~29\ & VCC))
-- \P1_TIMER[6]~31\ = CARRY((P1_TIMER(6) & !\P1_TIMER[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P1_TIMER(6),
	datad => VCC,
	cin => \P1_TIMER[5]~29\,
	combout => \P1_TIMER[6]~30_combout\,
	cout => \P1_TIMER[6]~31\);

-- Location: FF_X55_Y45_N13
\P1_TIMER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \P1_TIMER[6]~30_combout\,
	sclr => \P1_TIMER~51_combout\,
	ena => \P1_TIMER[8]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P1_TIMER(6));

-- Location: LCCOMB_X55_Y45_N14
\P1_TIMER[7]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1_TIMER[7]~32_combout\ = (P1_TIMER(7) & (!\P1_TIMER[6]~31\)) # (!P1_TIMER(7) & ((\P1_TIMER[6]~31\) # (GND)))
-- \P1_TIMER[7]~33\ = CARRY((!\P1_TIMER[6]~31\) # (!P1_TIMER(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => P1_TIMER(7),
	datad => VCC,
	cin => \P1_TIMER[6]~31\,
	combout => \P1_TIMER[7]~32_combout\,
	cout => \P1_TIMER[7]~33\);

-- Location: FF_X55_Y45_N15
\P1_TIMER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \P1_TIMER[7]~32_combout\,
	sclr => \P1_TIMER~51_combout\,
	ena => \P1_TIMER[8]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P1_TIMER(7));

-- Location: LCCOMB_X55_Y45_N16
\P1_TIMER[8]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1_TIMER[8]~34_combout\ = (P1_TIMER(8) & (\P1_TIMER[7]~33\ $ (GND))) # (!P1_TIMER(8) & (!\P1_TIMER[7]~33\ & VCC))
-- \P1_TIMER[8]~35\ = CARRY((P1_TIMER(8) & !\P1_TIMER[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => P1_TIMER(8),
	datad => VCC,
	cin => \P1_TIMER[7]~33\,
	combout => \P1_TIMER[8]~34_combout\,
	cout => \P1_TIMER[8]~35\);

-- Location: FF_X55_Y45_N17
\P1_TIMER[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \P1_TIMER[8]~34_combout\,
	sclr => \P1_TIMER~51_combout\,
	ena => \P1_TIMER[8]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P1_TIMER(8));

-- Location: LCCOMB_X55_Y45_N18
\P1_TIMER[9]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1_TIMER[9]~36_combout\ = (P1_TIMER(9) & (!\P1_TIMER[8]~35\)) # (!P1_TIMER(9) & ((\P1_TIMER[8]~35\) # (GND)))
-- \P1_TIMER[9]~37\ = CARRY((!\P1_TIMER[8]~35\) # (!P1_TIMER(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => P1_TIMER(9),
	datad => VCC,
	cin => \P1_TIMER[8]~35\,
	combout => \P1_TIMER[9]~36_combout\,
	cout => \P1_TIMER[9]~37\);

-- Location: FF_X55_Y45_N19
\P1_TIMER[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \P1_TIMER[9]~36_combout\,
	sclr => \P1_TIMER~51_combout\,
	ena => \P1_TIMER[8]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P1_TIMER(9));

-- Location: LCCOMB_X55_Y45_N20
\P1_TIMER[10]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1_TIMER[10]~38_combout\ = (P1_TIMER(10) & (\P1_TIMER[9]~37\ $ (GND))) # (!P1_TIMER(10) & (!\P1_TIMER[9]~37\ & VCC))
-- \P1_TIMER[10]~39\ = CARRY((P1_TIMER(10) & !\P1_TIMER[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => P1_TIMER(10),
	datad => VCC,
	cin => \P1_TIMER[9]~37\,
	combout => \P1_TIMER[10]~38_combout\,
	cout => \P1_TIMER[10]~39\);

-- Location: FF_X55_Y45_N21
\P1_TIMER[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \P1_TIMER[10]~38_combout\,
	sclr => \P1_TIMER~51_combout\,
	ena => \P1_TIMER[8]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P1_TIMER(10));

-- Location: LCCOMB_X55_Y45_N22
\P1_TIMER[11]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1_TIMER[11]~40_combout\ = (P1_TIMER(11) & (!\P1_TIMER[10]~39\)) # (!P1_TIMER(11) & ((\P1_TIMER[10]~39\) # (GND)))
-- \P1_TIMER[11]~41\ = CARRY((!\P1_TIMER[10]~39\) # (!P1_TIMER(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P1_TIMER(11),
	datad => VCC,
	cin => \P1_TIMER[10]~39\,
	combout => \P1_TIMER[11]~40_combout\,
	cout => \P1_TIMER[11]~41\);

-- Location: FF_X55_Y45_N23
\P1_TIMER[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \P1_TIMER[11]~40_combout\,
	sclr => \P1_TIMER~51_combout\,
	ena => \P1_TIMER[8]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P1_TIMER(11));

-- Location: LCCOMB_X55_Y45_N24
\P1_TIMER[12]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1_TIMER[12]~42_combout\ = (P1_TIMER(12) & (\P1_TIMER[11]~41\ $ (GND))) # (!P1_TIMER(12) & (!\P1_TIMER[11]~41\ & VCC))
-- \P1_TIMER[12]~43\ = CARRY((P1_TIMER(12) & !\P1_TIMER[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => P1_TIMER(12),
	datad => VCC,
	cin => \P1_TIMER[11]~41\,
	combout => \P1_TIMER[12]~42_combout\,
	cout => \P1_TIMER[12]~43\);

-- Location: FF_X55_Y45_N25
\P1_TIMER[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \P1_TIMER[12]~42_combout\,
	sclr => \P1_TIMER~51_combout\,
	ena => \P1_TIMER[8]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P1_TIMER(12));

-- Location: LCCOMB_X55_Y45_N26
\P1_TIMER[13]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1_TIMER[13]~44_combout\ = (P1_TIMER(13) & (!\P1_TIMER[12]~43\)) # (!P1_TIMER(13) & ((\P1_TIMER[12]~43\) # (GND)))
-- \P1_TIMER[13]~45\ = CARRY((!\P1_TIMER[12]~43\) # (!P1_TIMER(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P1_TIMER(13),
	datad => VCC,
	cin => \P1_TIMER[12]~43\,
	combout => \P1_TIMER[13]~44_combout\,
	cout => \P1_TIMER[13]~45\);

-- Location: FF_X55_Y45_N27
\P1_TIMER[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \P1_TIMER[13]~44_combout\,
	sclr => \P1_TIMER~51_combout\,
	ena => \P1_TIMER[8]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P1_TIMER(13));

-- Location: LCCOMB_X55_Y45_N28
\P1_TIMER[14]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1_TIMER[14]~46_combout\ = (P1_TIMER(14) & (\P1_TIMER[13]~45\ $ (GND))) # (!P1_TIMER(14) & (!\P1_TIMER[13]~45\ & VCC))
-- \P1_TIMER[14]~47\ = CARRY((P1_TIMER(14) & !\P1_TIMER[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => P1_TIMER(14),
	datad => VCC,
	cin => \P1_TIMER[13]~45\,
	combout => \P1_TIMER[14]~46_combout\,
	cout => \P1_TIMER[14]~47\);

-- Location: FF_X55_Y45_N29
\P1_TIMER[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \P1_TIMER[14]~46_combout\,
	sclr => \P1_TIMER~51_combout\,
	ena => \P1_TIMER[8]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P1_TIMER(14));

-- Location: LCCOMB_X55_Y45_N30
\P1_TIMER[15]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1_TIMER[15]~48_combout\ = P1_TIMER(15) $ (\P1_TIMER[14]~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P1_TIMER(15),
	cin => \P1_TIMER[14]~47\,
	combout => \P1_TIMER[15]~48_combout\);

-- Location: FF_X55_Y45_N31
\P1_TIMER[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1KHZ~clkctrl_outclk\,
	d => \P1_TIMER[15]~48_combout\,
	sclr => \P1_TIMER~51_combout\,
	ena => \P1_TIMER[8]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P1_TIMER(15));

-- Location: LCCOMB_X54_Y46_N0
\LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((!P1_TIMER(0) & P2_TIMER(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P1_TIMER(0),
	datab => P2_TIMER(0),
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X54_Y46_N2
\LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((P2_TIMER(1) & (P1_TIMER(1) & !\LessThan1~1_cout\)) # (!P2_TIMER(1) & ((P1_TIMER(1)) # (!\LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P2_TIMER(1),
	datab => P1_TIMER(1),
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X54_Y46_N4
\LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((P2_TIMER(2) & ((!\LessThan1~3_cout\) # (!P1_TIMER(2)))) # (!P2_TIMER(2) & (!P1_TIMER(2) & !\LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P2_TIMER(2),
	datab => P1_TIMER(2),
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X54_Y46_N6
\LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((P2_TIMER(3) & (P1_TIMER(3) & !\LessThan1~5_cout\)) # (!P2_TIMER(3) & ((P1_TIMER(3)) # (!\LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P2_TIMER(3),
	datab => P1_TIMER(3),
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X54_Y46_N8
\LessThan1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((P2_TIMER(4) & ((!\LessThan1~7_cout\) # (!P1_TIMER(4)))) # (!P2_TIMER(4) & (!P1_TIMER(4) & !\LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P2_TIMER(4),
	datab => P1_TIMER(4),
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X54_Y46_N10
\LessThan1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((P2_TIMER(5) & (P1_TIMER(5) & !\LessThan1~9_cout\)) # (!P2_TIMER(5) & ((P1_TIMER(5)) # (!\LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P2_TIMER(5),
	datab => P1_TIMER(5),
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X54_Y46_N12
\LessThan1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((P2_TIMER(6) & ((!\LessThan1~11_cout\) # (!P1_TIMER(6)))) # (!P2_TIMER(6) & (!P1_TIMER(6) & !\LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P2_TIMER(6),
	datab => P1_TIMER(6),
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X54_Y46_N14
\LessThan1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~15_cout\ = CARRY((P2_TIMER(7) & (P1_TIMER(7) & !\LessThan1~13_cout\)) # (!P2_TIMER(7) & ((P1_TIMER(7)) # (!\LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P2_TIMER(7),
	datab => P1_TIMER(7),
	datad => VCC,
	cin => \LessThan1~13_cout\,
	cout => \LessThan1~15_cout\);

-- Location: LCCOMB_X54_Y46_N16
\LessThan1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~17_cout\ = CARRY((P1_TIMER(8) & (P2_TIMER(8) & !\LessThan1~15_cout\)) # (!P1_TIMER(8) & ((P2_TIMER(8)) # (!\LessThan1~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P1_TIMER(8),
	datab => P2_TIMER(8),
	datad => VCC,
	cin => \LessThan1~15_cout\,
	cout => \LessThan1~17_cout\);

-- Location: LCCOMB_X54_Y46_N18
\LessThan1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~19_cout\ = CARRY((P1_TIMER(9) & ((!\LessThan1~17_cout\) # (!P2_TIMER(9)))) # (!P1_TIMER(9) & (!P2_TIMER(9) & !\LessThan1~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P1_TIMER(9),
	datab => P2_TIMER(9),
	datad => VCC,
	cin => \LessThan1~17_cout\,
	cout => \LessThan1~19_cout\);

-- Location: LCCOMB_X54_Y46_N20
\LessThan1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~21_cout\ = CARRY((P1_TIMER(10) & (P2_TIMER(10) & !\LessThan1~19_cout\)) # (!P1_TIMER(10) & ((P2_TIMER(10)) # (!\LessThan1~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P1_TIMER(10),
	datab => P2_TIMER(10),
	datad => VCC,
	cin => \LessThan1~19_cout\,
	cout => \LessThan1~21_cout\);

-- Location: LCCOMB_X54_Y46_N22
\LessThan1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~23_cout\ = CARRY((P2_TIMER(11) & (P1_TIMER(11) & !\LessThan1~21_cout\)) # (!P2_TIMER(11) & ((P1_TIMER(11)) # (!\LessThan1~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P2_TIMER(11),
	datab => P1_TIMER(11),
	datad => VCC,
	cin => \LessThan1~21_cout\,
	cout => \LessThan1~23_cout\);

-- Location: LCCOMB_X54_Y46_N24
\LessThan1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~25_cout\ = CARRY((P1_TIMER(12) & (P2_TIMER(12) & !\LessThan1~23_cout\)) # (!P1_TIMER(12) & ((P2_TIMER(12)) # (!\LessThan1~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P1_TIMER(12),
	datab => P2_TIMER(12),
	datad => VCC,
	cin => \LessThan1~23_cout\,
	cout => \LessThan1~25_cout\);

-- Location: LCCOMB_X54_Y46_N26
\LessThan1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~27_cout\ = CARRY((P2_TIMER(13) & (P1_TIMER(13) & !\LessThan1~25_cout\)) # (!P2_TIMER(13) & ((P1_TIMER(13)) # (!\LessThan1~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P2_TIMER(13),
	datab => P1_TIMER(13),
	datad => VCC,
	cin => \LessThan1~25_cout\,
	cout => \LessThan1~27_cout\);

-- Location: LCCOMB_X54_Y46_N28
\LessThan1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~29_cout\ = CARRY((P1_TIMER(14) & (P2_TIMER(14) & !\LessThan1~27_cout\)) # (!P1_TIMER(14) & ((P2_TIMER(14)) # (!\LessThan1~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P1_TIMER(14),
	datab => P2_TIMER(14),
	datad => VCC,
	cin => \LessThan1~27_cout\,
	cout => \LessThan1~29_cout\);

-- Location: LCCOMB_X54_Y46_N30
\LessThan1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~30_combout\ = (P2_TIMER(15) & ((\LessThan1~29_cout\) # (!P1_TIMER(15)))) # (!P2_TIMER(15) & (\LessThan1~29_cout\ & !P1_TIMER(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => P2_TIMER(15),
	datad => P1_TIMER(15),
	cin => \LessThan1~29_cout\,
	combout => \LessThan1~30_combout\);

-- Location: LCCOMB_X58_Y45_N2
\Q~167\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~167_combout\ = (Q(4) & ((\Q~166_combout\ & ((\LessThan1~30_combout\) # (!Q(2)))) # (!\Q~166_combout\ & (Q(2))))) # (!Q(4) & (((Q(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datab => \Q~166_combout\,
	datac => Q(2),
	datad => \LessThan1~30_combout\,
	combout => \Q~167_combout\);

-- Location: LCCOMB_X57_Y44_N12
\D~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~42_combout\ = (Q(2) & (Q(5) & (Q(1) & Q(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => Q(5),
	datac => Q(1),
	datad => Q(0),
	combout => \D~42_combout\);

-- Location: LCCOMB_X58_Y45_N4
\Q~168\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~168_combout\ = (!Q(3) & ((Q(4) & (!\Q~167_combout\)) # (!Q(4) & (\Q~167_combout\ & \D~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datab => \Q~167_combout\,
	datac => \D~42_combout\,
	datad => Q(3),
	combout => \Q~168_combout\);

-- Location: LCCOMB_X58_Y45_N30
\Q~169\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~169_combout\ = (Q(5) & (((\Equal0~8_combout\ & \Q~168_combout\)))) # (!Q(5) & (!\D~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~45_combout\,
	datab => \Equal0~8_combout\,
	datac => \Q~168_combout\,
	datad => Q(5),
	combout => \Q~169_combout\);

-- Location: LCCOMB_X58_Y45_N0
\Q~170\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~170_combout\ = ((\A_LOW~input_o\ & (\Q~169_combout\)) # (!\A_LOW~input_o\ & ((!\LessThan1~30_combout\)))) # (!Q(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datab => \A_LOW~input_o\,
	datac => \Q~169_combout\,
	datad => \LessThan1~30_combout\,
	combout => \Q~170_combout\);

-- Location: LCCOMB_X60_Y45_N14
\Q~173\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~173_combout\ = (\A_LOW~input_o\ & ((Q(4)) # ((\D~45_combout\ & Q(5))))) # (!\A_LOW~input_o\ & (((Q(5) & Q(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_LOW~input_o\,
	datab => \D~45_combout\,
	datac => Q(5),
	datad => Q(4),
	combout => \Q~173_combout\);

-- Location: LCCOMB_X60_Y45_N0
\Q~174\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~174_combout\ = (\Q~173_combout\ & (\Equal0~8_combout\ & !Q(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Q~173_combout\,
	datac => \Equal0~8_combout\,
	datad => Q(3),
	combout => \Q~174_combout\);

-- Location: LCCOMB_X60_Y45_N30
\Q~175\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~175_combout\ = (\Q~174_combout\ & ((\A_LOW~input_o\) # (\D~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_LOW~input_o\,
	datab => \Q~174_combout\,
	datad => \D~45_combout\,
	combout => \Q~175_combout\);

-- Location: LCCOMB_X58_Y45_N22
\Q~171\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~171_combout\ = (Q(4) & (\Q~169_combout\)) # (!Q(4) & ((\D~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datac => \Q~169_combout\,
	datad => \D~42_combout\,
	combout => \Q~171_combout\);

-- Location: LCCOMB_X58_Y45_N28
\Q~172\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~172_combout\ = (!Q(3) & (\Equal0~8_combout\ & \Q~171_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datac => \Equal0~8_combout\,
	datad => \Q~171_combout\,
	combout => \Q~172_combout\);

-- Location: LCCOMB_X58_Y45_N10
\Q~176\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~176_combout\ = (\TOGGLELIMITER~q\ & (((\Q~172_combout\)))) # (!\TOGGLELIMITER~q\ & (\Q~170_combout\ & (\Q~175_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~170_combout\,
	datab => \Q~175_combout\,
	datac => \TOGGLELIMITER~q\,
	datad => \Q~172_combout\,
	combout => \Q~176_combout\);

-- Location: LCCOMB_X60_Y45_N18
\Q~154\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~154_combout\ = (!Q(3) & ((!\Equal1~4_combout\) # (!\D~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => \D~45_combout\,
	datac => \Equal1~4_combout\,
	combout => \Q~154_combout\);

-- Location: LCCOMB_X60_Y45_N28
\Q~155\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~155_combout\ = (!Q(2) & ((\Equal1~4_combout\) # ((Q(0) & Q(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(1),
	datac => Q(2),
	datad => \Equal1~4_combout\,
	combout => \Q~155_combout\);

-- Location: LCCOMB_X60_Y45_N22
\Q~156\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~156_combout\ = ((\Q~154_combout\) # ((Q(3) & !\Q~155_combout\))) # (!Q(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datab => Q(3),
	datac => \Q~154_combout\,
	datad => \Q~155_combout\,
	combout => \Q~156_combout\);

-- Location: LCCOMB_X60_Y45_N10
\Q~160\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~160_combout\ = (Q(2)) # ((Q(1) & ((Q(0)) # (Q(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => Q(0),
	datac => Q(3),
	datad => Q(1),
	combout => \Q~160_combout\);

-- Location: LCCOMB_X60_Y45_N12
\Q~161\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~161_combout\ = (Q(5) & ((\TOGGLELIMITER~q\) # ((\Q~160_combout\ & Q(4))))) # (!Q(5) & (((!\TOGGLELIMITER~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => \Q~160_combout\,
	datac => Q(4),
	datad => \TOGGLELIMITER~q\,
	combout => \Q~161_combout\);

-- Location: LCCOMB_X60_Y45_N2
\Q~162\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~162_combout\ = (Q(3) & (!Q(2) & ((!Q(1)) # (!Q(0))))) # (!Q(3) & (Q(0) & (Q(1) & Q(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(0),
	datac => Q(1),
	datad => Q(2),
	combout => \Q~162_combout\);

-- Location: LCCOMB_X60_Y45_N16
\Q~163\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~163_combout\ = (Q(4) & (!\Equal1~4_combout\ & \Q~162_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datab => \Equal1~4_combout\,
	datac => \Q~162_combout\,
	combout => \Q~163_combout\);

-- Location: LCCOMB_X60_Y45_N6
\Q~164\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~164_combout\ = (Q(5) & (\Q~161_combout\)) # (!Q(5) & ((\Q~163_combout\) # (!\Q~161_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datac => \Q~161_combout\,
	datad => \Q~163_combout\,
	combout => \Q~164_combout\);

-- Location: LCCOMB_X60_Y45_N8
\Q~157\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~157_combout\ = Q(2) $ (((Q(1) & Q(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => Q(1),
	datad => Q(0),
	combout => \Q~157_combout\);

-- Location: LCCOMB_X60_Y45_N26
\Q~158\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~158_combout\ = (!Q(3) & (\Q~157_combout\ & (Q(5) & Q(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => \Q~157_combout\,
	datac => Q(5),
	datad => Q(4),
	combout => \Q~158_combout\);

-- Location: LCCOMB_X60_Y45_N4
\Q~159\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~159_combout\ = (!\A_LOW~input_o\ & (!\Equal0~8_combout\ & ((!\Q~158_combout\) # (!\Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_LOW~input_o\,
	datab => \Equal1~4_combout\,
	datac => \Equal0~8_combout\,
	datad => \Q~158_combout\,
	combout => \Q~159_combout\);

-- Location: LCCOMB_X60_Y45_N24
\Q~165\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~165_combout\ = (\Q~164_combout\ & (\Q~159_combout\ & ((\Q~156_combout\) # (\Q~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~156_combout\,
	datab => \Q~164_combout\,
	datac => \Q~159_combout\,
	datad => \Q~161_combout\,
	combout => \Q~165_combout\);

-- Location: LCCOMB_X59_Y45_N12
\Q~149\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~149_combout\ = (Q(3)) # ((Q(1) & Q(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(1),
	datac => Q(3),
	datad => Q(0),
	combout => \Q~149_combout\);

-- Location: LCCOMB_X57_Y48_N8
\D~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~12_combout\ = (Q(0) & Q(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datad => Q(1),
	combout => \D~12_combout\);

-- Location: LCCOMB_X59_Y45_N30
\Q~148\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~148_combout\ = (Q(5) & (((!Q(3) & \Equal1~4_combout\)))) # (!Q(5) & (Q(3) & ((\D~12_combout\) # (\Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => \D~12_combout\,
	datac => Q(3),
	datad => \Equal1~4_combout\,
	combout => \Q~148_combout\);

-- Location: LCCOMB_X59_Y45_N10
\Q~150\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~150_combout\ = (Q(4) & ((Q(2)) # ((\Q~149_combout\ & \Q~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => \Q~149_combout\,
	datac => \Q~148_combout\,
	datad => Q(4),
	combout => \Q~150_combout\);

-- Location: LCCOMB_X58_Y48_N2
\Q~151\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~151_combout\ = (Q(5) $ (((!Q(0)) # (!Q(1))))) # (!\Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datab => \Equal1~4_combout\,
	datac => Q(0),
	datad => Q(5),
	combout => \Q~151_combout\);

-- Location: LCCOMB_X59_Y45_N16
\Q~152\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~152_combout\ = (Q(2) & ((\Q~151_combout\) # (Q(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~151_combout\,
	datab => Q(3),
	datac => Q(2),
	combout => \Q~152_combout\);

-- Location: LCCOMB_X59_Y45_N6
\Q~153\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~153_combout\ = (!\Equal0~8_combout\ & (\A_LOW~input_o\ & ((\Q~152_combout\) # (!\Q~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~150_combout\,
	datab => \Q~152_combout\,
	datac => \Equal0~8_combout\,
	datad => \A_LOW~input_o\,
	combout => \Q~153_combout\);

-- Location: LCCOMB_X57_Y46_N28
\Q~145\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~145_combout\ = (Q(5) & ((\TOGGLELIMITER~q\) # ((\A_LOW~input_o\) # (Q(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => \TOGGLELIMITER~q\,
	datac => \A_LOW~input_o\,
	datad => Q(4),
	combout => \Q~145_combout\);

-- Location: LCCOMB_X57_Y46_N22
\Q~146\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~146_combout\ = (\Q~145_combout\ & ((Q(2)) # ((Q(1)) # (!Q(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~145_combout\,
	datab => Q(2),
	datac => Q(1),
	datad => Q(4),
	combout => \Q~146_combout\);

-- Location: LCCOMB_X57_Y46_N16
\Q~143\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~143_combout\ = (Q(1) & (Q(0) & ((\A_LOW~input_o\) # (\TOGGLELIMITER~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_LOW~input_o\,
	datab => \TOGGLELIMITER~q\,
	datac => Q(1),
	datad => Q(0),
	combout => \Q~143_combout\);

-- Location: LCCOMB_X57_Y47_N20
\SEG7~144\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~144_combout\ = (!Q(5) & !Q(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Q(5),
	datad => Q(4),
	combout => \SEG7~144_combout\);

-- Location: LCCOMB_X57_Y46_N26
\Q~144\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~144_combout\ = (\SEG7~144_combout\ & ((Q(2) & ((!\D~20_combout\))) # (!Q(2) & (\Q~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~143_combout\,
	datab => Q(2),
	datac => \SEG7~144_combout\,
	datad => \D~20_combout\,
	combout => \Q~144_combout\);

-- Location: LCCOMB_X57_Y46_N8
\Q~147\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~147_combout\ = (Q(3) & (\Equal0~8_combout\ & ((\Q~146_combout\) # (\Q~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~146_combout\,
	datab => \Q~144_combout\,
	datac => Q(3),
	datad => \Equal0~8_combout\,
	combout => \Q~147_combout\);

-- Location: LCCOMB_X58_Y45_N26
\Q~192\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~192_combout\ = (\Q~176_combout\) # ((\Q~165_combout\) # ((\Q~153_combout\) # (\Q~147_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~176_combout\,
	datab => \Q~165_combout\,
	datac => \Q~153_combout\,
	datad => \Q~147_combout\,
	combout => \Q~192_combout\);

-- Location: LCCOMB_X58_Y46_N28
\D~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~50_combout\ = (!Q(4) & (!\TOGGLELIMITER~q\ & (Q(3) & !\A_LOW~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datab => \TOGGLELIMITER~q\,
	datac => Q(3),
	datad => \A_LOW~input_o\,
	combout => \D~50_combout\);

-- Location: LCCOMB_X58_Y48_N8
\D~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~19_combout\ = (!Q(1) & (Q(2) & Q(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datab => Q(2),
	datac => Q(0),
	combout => \D~19_combout\);

-- Location: LCCOMB_X58_Y47_N26
\Q~186\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~186_combout\ = ((!\D~19_combout\ & !\D~53_combout\)) # (!\D~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~50_combout\,
	datac => \D~19_combout\,
	datad => \D~53_combout\,
	combout => \Q~186_combout\);

-- Location: LCCOMB_X58_Y43_N12
\D~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~46_combout\ = (Q(5) & (\D~20_combout\ & (Q(3) & !Q(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => \D~20_combout\,
	datac => Q(3),
	datad => Q(4),
	combout => \D~46_combout\);

-- Location: LCCOMB_X58_Y47_N20
\D~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~54_combout\ = (!Q(5) & (Q(4) & (Q(2) & Q(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => Q(4),
	datac => Q(2),
	datad => Q(3),
	combout => \D~54_combout\);

-- Location: LCCOMB_X58_Y47_N14
\Equal64~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal64~20_combout\ = (Q(3) & (Q(4) & (!Q(2) & !Q(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(4),
	datac => Q(2),
	datad => Q(5),
	combout => \Equal64~20_combout\);

-- Location: LCCOMB_X57_Y46_N30
\D~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~30_combout\ = (Q(0) & (\Equal0~8_combout\ & ((\A_LOW~input_o\) # (\TOGGLELIMITER~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_LOW~input_o\,
	datab => \TOGGLELIMITER~q\,
	datac => Q(0),
	datad => \Equal0~8_combout\,
	combout => \D~30_combout\);

-- Location: LCCOMB_X58_Y47_N12
\D~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~52_combout\ = (\D~30_combout\ & !Q(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~30_combout\,
	datad => Q(1),
	combout => \D~52_combout\);

-- Location: LCCOMB_X58_Y47_N28
\Q~188\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~188_combout\ = (\D~54_combout\ & (!\D~52_combout\ & ((!\D~37_combout\) # (!\Equal64~20_combout\)))) # (!\D~54_combout\ & (((!\D~37_combout\)) # (!\Equal64~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~54_combout\,
	datab => \Equal64~20_combout\,
	datac => \D~52_combout\,
	datad => \D~37_combout\,
	combout => \Q~188_combout\);

-- Location: LCCOMB_X58_Y47_N2
\Q~189\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~189_combout\ = (\Q~188_combout\ & (((Q(2)) # (!\D~16_combout\)) # (!\D~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~46_combout\,
	datab => \Q~188_combout\,
	datac => \D~16_combout\,
	datad => Q(2),
	combout => \Q~189_combout\);

-- Location: LCCOMB_X57_Y47_N0
\Equal64~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal64~15_combout\ = (!Q(2) & Q(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(2),
	datac => Q(3),
	combout => \Equal64~15_combout\);

-- Location: LCCOMB_X58_Y44_N16
\D~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~33_combout\ = (Q(1) & (!Q(0) & (\Equal1~4_combout\ $ (\Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \Equal0~8_combout\,
	datac => Q(1),
	datad => Q(0),
	combout => \D~33_combout\);

-- Location: LCCOMB_X58_Y47_N18
\D~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~55_combout\ = (\Equal64~15_combout\ & (Q(4) & (\D~33_combout\ & !Q(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal64~15_combout\,
	datab => Q(4),
	datac => \D~33_combout\,
	datad => Q(5),
	combout => \D~55_combout\);

-- Location: LCCOMB_X57_Y46_N4
\D~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~29_combout\ = (!Q(0) & (\Equal0~8_combout\ & ((\A_LOW~input_o\) # (\TOGGLELIMITER~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_LOW~input_o\,
	datab => \TOGGLELIMITER~q\,
	datac => Q(0),
	datad => \Equal0~8_combout\,
	combout => \D~29_combout\);

-- Location: LCCOMB_X58_Y47_N16
\Q~187\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~187_combout\ = (!\D~55_combout\ & (((!Q(1)) # (!\D~29_combout\)) # (!\D~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~54_combout\,
	datab => \D~55_combout\,
	datac => \D~29_combout\,
	datad => Q(1),
	combout => \Q~187_combout\);

-- Location: LCCOMB_X59_Y44_N22
\D~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~22_combout\ = (!Q(4) & (!Q(5) & (!Q(2) & Q(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datab => Q(5),
	datac => Q(2),
	datad => Q(3),
	combout => \D~22_combout\);

-- Location: LCCOMB_X58_Y47_N24
\D~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~56_combout\ = (\D~29_combout\ & !Q(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~29_combout\,
	datad => Q(1),
	combout => \D~56_combout\);

-- Location: LCCOMB_X58_Y44_N14
\D~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~32_combout\ = (Q(1) & (!Q(0) & !Q(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datac => Q(0),
	datad => Q(2),
	combout => \D~32_combout\);

-- Location: LCCOMB_X58_Y47_N22
\Q~190\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~190_combout\ = (\D~46_combout\ & (!\D~32_combout\ & ((!\D~56_combout\) # (!\D~22_combout\)))) # (!\D~46_combout\ & (((!\D~56_combout\)) # (!\D~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~46_combout\,
	datab => \D~22_combout\,
	datac => \D~56_combout\,
	datad => \D~32_combout\,
	combout => \Q~190_combout\);

-- Location: LCCOMB_X58_Y47_N8
\Q~191\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~191_combout\ = (\Q~186_combout\ & (\Q~189_combout\ & (\Q~187_combout\ & \Q~190_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~186_combout\,
	datab => \Q~189_combout\,
	datac => \Q~187_combout\,
	datad => \Q~190_combout\,
	combout => \Q~191_combout\);

-- Location: LCCOMB_X57_Y47_N22
\Equal64~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal64~11_combout\ = (Q(5) & (!Q(2) & (Q(4) & Q(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => Q(2),
	datac => Q(4),
	datad => Q(3),
	combout => \Equal64~11_combout\);

-- Location: LCCOMB_X57_Y47_N12
\Q~250\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~250_combout\ = (\Equal64~11_combout\ & (Q(1) & ((\A_LOW~input_o\) # (\TOGGLELIMITER~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_LOW~input_o\,
	datab => \Equal64~11_combout\,
	datac => \TOGGLELIMITER~q\,
	datad => Q(1),
	combout => \Q~250_combout\);

-- Location: LCCOMB_X55_Y47_N0
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((P1_TIMER(0) & !P2_TIMER(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P1_TIMER(0),
	datab => P2_TIMER(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X55_Y47_N2
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((P2_TIMER(1) & ((!\LessThan0~1_cout\) # (!P1_TIMER(1)))) # (!P2_TIMER(1) & (!P1_TIMER(1) & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P2_TIMER(1),
	datab => P1_TIMER(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X55_Y47_N4
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((P1_TIMER(2) & ((!\LessThan0~3_cout\) # (!P2_TIMER(2)))) # (!P1_TIMER(2) & (!P2_TIMER(2) & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P1_TIMER(2),
	datab => P2_TIMER(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X55_Y47_N6
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((P2_TIMER(3) & ((!\LessThan0~5_cout\) # (!P1_TIMER(3)))) # (!P2_TIMER(3) & (!P1_TIMER(3) & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P2_TIMER(3),
	datab => P1_TIMER(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X55_Y47_N8
\LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((P2_TIMER(4) & (P1_TIMER(4) & !\LessThan0~7_cout\)) # (!P2_TIMER(4) & ((P1_TIMER(4)) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P2_TIMER(4),
	datab => P1_TIMER(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X55_Y47_N10
\LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((P2_TIMER(5) & ((!\LessThan0~9_cout\) # (!P1_TIMER(5)))) # (!P2_TIMER(5) & (!P1_TIMER(5) & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P2_TIMER(5),
	datab => P1_TIMER(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X55_Y47_N12
\LessThan0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((P1_TIMER(6) & ((!\LessThan0~11_cout\) # (!P2_TIMER(6)))) # (!P1_TIMER(6) & (!P2_TIMER(6) & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P1_TIMER(6),
	datab => P2_TIMER(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X55_Y47_N14
\LessThan0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((P2_TIMER(7) & ((!\LessThan0~13_cout\) # (!P1_TIMER(7)))) # (!P2_TIMER(7) & (!P1_TIMER(7) & !\LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P2_TIMER(7),
	datab => P1_TIMER(7),
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X55_Y47_N16
\LessThan0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((P1_TIMER(8) & ((!\LessThan0~15_cout\) # (!P2_TIMER(8)))) # (!P1_TIMER(8) & (!P2_TIMER(8) & !\LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P1_TIMER(8),
	datab => P2_TIMER(8),
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X55_Y47_N18
\LessThan0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((P1_TIMER(9) & (P2_TIMER(9) & !\LessThan0~17_cout\)) # (!P1_TIMER(9) & ((P2_TIMER(9)) # (!\LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P1_TIMER(9),
	datab => P2_TIMER(9),
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X55_Y47_N20
\LessThan0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((P1_TIMER(10) & ((!\LessThan0~19_cout\) # (!P2_TIMER(10)))) # (!P1_TIMER(10) & (!P2_TIMER(10) & !\LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P1_TIMER(10),
	datab => P2_TIMER(10),
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

-- Location: LCCOMB_X55_Y47_N22
\LessThan0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((P2_TIMER(11) & ((!\LessThan0~21_cout\) # (!P1_TIMER(11)))) # (!P2_TIMER(11) & (!P1_TIMER(11) & !\LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P2_TIMER(11),
	datab => P1_TIMER(11),
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

-- Location: LCCOMB_X55_Y47_N24
\LessThan0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((P1_TIMER(12) & ((!\LessThan0~23_cout\) # (!P2_TIMER(12)))) # (!P1_TIMER(12) & (!P2_TIMER(12) & !\LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P1_TIMER(12),
	datab => P2_TIMER(12),
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

-- Location: LCCOMB_X55_Y47_N26
\LessThan0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((P1_TIMER(13) & (P2_TIMER(13) & !\LessThan0~25_cout\)) # (!P1_TIMER(13) & ((P2_TIMER(13)) # (!\LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P1_TIMER(13),
	datab => P2_TIMER(13),
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

-- Location: LCCOMB_X55_Y47_N28
\LessThan0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((P2_TIMER(14) & (P1_TIMER(14) & !\LessThan0~27_cout\)) # (!P2_TIMER(14) & ((P1_TIMER(14)) # (!\LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P2_TIMER(14),
	datab => P1_TIMER(14),
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

-- Location: LCCOMB_X55_Y47_N30
\LessThan0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~30_combout\ = (P1_TIMER(15) & ((\LessThan0~29_cout\) # (!P2_TIMER(15)))) # (!P1_TIMER(15) & (!P2_TIMER(15) & \LessThan0~29_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P1_TIMER(15),
	datab => P2_TIMER(15),
	cin => \LessThan0~29_cout\,
	combout => \LessThan0~30_combout\);

-- Location: LCCOMB_X56_Y46_N6
\Equal64~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal64~14_combout\ = (Q(4) & (Q(2) & (Q(5) & !Q(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datab => Q(2),
	datac => Q(5),
	datad => Q(3),
	combout => \Equal64~14_combout\);

-- Location: LCCOMB_X57_Y47_N16
\Q[3]~248\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~248_combout\ = (((!Q(1)) # (!\Equal64~14_combout\)) # (!\LessThan0~30_combout\)) # (!Q(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => \LessThan0~30_combout\,
	datac => \Equal64~14_combout\,
	datad => Q(1),
	combout => \Q[3]~248_combout\);

-- Location: LCCOMB_X57_Y47_N8
\Q~133\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~133_combout\ = (\Equal0~8_combout\ & ((\Q~250_combout\) # (!\Q[3]~248_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datac => \Q~250_combout\,
	datad => \Q[3]~248_combout\,
	combout => \Q~133_combout\);

-- Location: LCCOMB_X57_Y44_N16
\D~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~34_combout\ = (!Q(4) & (!Q(5) & (Q(3) & \D~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datab => Q(5),
	datac => Q(3),
	datad => \D~20_combout\,
	combout => \D~34_combout\);

-- Location: LCCOMB_X57_Y44_N10
\Q~136\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~136_combout\ = (Q(2)) # (((!\D~13_combout\ & !\D~16_combout\)) # (!\D~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => \D~13_combout\,
	datac => \D~16_combout\,
	datad => \D~34_combout\,
	combout => \Q~136_combout\);

-- Location: LCCOMB_X58_Y45_N20
\Q~193\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~193_combout\ = (\Q~191_combout\ & (\Q~136_combout\ & ((!\Q~133_combout\) # (!\Q~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~192_combout\,
	datab => \Q~191_combout\,
	datac => \Q~133_combout\,
	datad => \Q~136_combout\,
	combout => \Q~193_combout\);

-- Location: LCCOMB_X59_Y44_N20
\Q~183\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~183_combout\ = (Q(5) & (((Q(3))))) # (!Q(5) & ((Q(3) & ((Q(2)))) # (!Q(3) & (Q(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => Q(1),
	datac => Q(2),
	datad => Q(3),
	combout => \Q~183_combout\);

-- Location: LCCOMB_X59_Y44_N2
\Q~184\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~184_combout\ = (\Q~183_combout\ & (!Q(3) & ((\D~29_combout\) # (\D~52_combout\)))) # (!\Q~183_combout\ & (((\D~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~183_combout\,
	datab => \D~29_combout\,
	datac => Q(3),
	datad => \D~52_combout\,
	combout => \Q~184_combout\);

-- Location: LCCOMB_X57_Y44_N18
\D~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~18_combout\ = (!Q(2) & Q(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datad => Q(5),
	combout => \D~18_combout\);

-- Location: LCCOMB_X57_Y44_N8
\D~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~47_combout\ = (\D~16_combout\ & (\D~20_combout\ & (\D~18_combout\ & \D~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~16_combout\,
	datab => \D~20_combout\,
	datac => \D~18_combout\,
	datad => \D~35_combout\,
	combout => \D~47_combout\);

-- Location: LCCOMB_X58_Y44_N26
\Q~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~134_combout\ = (\D~32_combout\ & ((\D~20_combout\) # ((\D~33_combout\ & Q(2))))) # (!\D~32_combout\ & (\D~33_combout\ & (Q(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~32_combout\,
	datab => \D~33_combout\,
	datac => Q(2),
	datad => \D~20_combout\,
	combout => \Q~134_combout\);

-- Location: LCCOMB_X58_Y44_N4
\Q~135\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~135_combout\ = (((Q(3)) # (!Q(4))) # (!\Q~134_combout\)) # (!Q(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => \Q~134_combout\,
	datac => Q(4),
	datad => Q(3),
	combout => \Q~135_combout\);

-- Location: LCCOMB_X59_Y44_N4
\Q~185\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~185_combout\ = (\D~47_combout\) # (((\Q~184_combout\ & !Q(4))) # (!\Q~135_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~184_combout\,
	datab => \D~47_combout\,
	datac => \Q~135_combout\,
	datad => Q(4),
	combout => \Q~185_combout\);

-- Location: LCCOMB_X58_Y45_N6
\Q[1]~195\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[1]~195_combout\ = (!\Q[1]~194_combout\ & (\Q~193_combout\ & (!\Q~185_combout\ & \Q~179_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[1]~194_combout\,
	datab => \Q~193_combout\,
	datac => \Q~185_combout\,
	datad => \Q~179_combout\,
	combout => \Q[1]~195_combout\);

-- Location: LCCOMB_X58_Y45_N18
\Q[1]~252\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[1]~252_combout\ = (\Q[3]~129_combout\ & (((Q(1))))) # (!\Q[3]~129_combout\ & (!\Q[1]~195_combout\ & ((\RST~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[1]~195_combout\,
	datab => \Q[3]~129_combout\,
	datac => Q(1),
	datad => \RST~input_o\,
	combout => \Q[1]~252_combout\);

-- Location: FF_X58_Y45_N19
\Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \Q[1]~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(1));

-- Location: LCCOMB_X58_Y43_N30
\D~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~53_combout\ = (Q(1) & (Q(2) & !Q(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datac => Q(2),
	datad => Q(0),
	combout => \D~53_combout\);

-- Location: LCCOMB_X57_Y44_N20
\D~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~15_combout\ = (!Q(0) & !Q(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(0),
	datac => Q(1),
	combout => \D~15_combout\);

-- Location: LCCOMB_X57_Y43_N10
\Q~200\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~200_combout\ = (\D~34_combout\ & ((\D~53_combout\) # ((Q(2) & \D~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => \D~53_combout\,
	datac => \D~34_combout\,
	datad => \D~15_combout\,
	combout => \Q~200_combout\);

-- Location: LCCOMB_X57_Y43_N24
\D~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~31_combout\ = (\TOGGLELIMITER~q\) # ((Q(2) & ((Q(0)) # (Q(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => \TOGGLELIMITER~q\,
	datac => Q(1),
	datad => Q(2),
	combout => \D~31_combout\);

-- Location: LCCOMB_X57_Y43_N28
\Q~197\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~197_combout\ = (\D~29_combout\ & ((Q(1) $ (!Q(2))) # (!Q(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datab => Q(2),
	datac => \D~29_combout\,
	datad => Q(5),
	combout => \Q~197_combout\);

-- Location: LCCOMB_X57_Y43_N30
\Q~198\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~198_combout\ = (\Q~197_combout\) # ((Q(5) & (!\D~31_combout\ & !\A_LOW~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => \D~31_combout\,
	datac => \Q~197_combout\,
	datad => \A_LOW~input_o\,
	combout => \Q~198_combout\);

-- Location: LCCOMB_X57_Y43_N20
\D~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~49_combout\ = (Q(1) & (\D~29_combout\ & !Q(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datac => \D~29_combout\,
	datad => Q(2),
	combout => \D~49_combout\);

-- Location: LCCOMB_X57_Y43_N4
\D~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~57_combout\ = (Q(3) & (!Q(2) & (!Q(0) & !Q(1)))) # (!Q(3) & (Q(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(2),
	datac => Q(0),
	datad => Q(1),
	combout => \D~57_combout\);

-- Location: LCCOMB_X57_Y43_N6
\Q~196\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~196_combout\ = (!Q(5) & ((\D~49_combout\) # ((\D~20_combout\ & \D~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => \D~20_combout\,
	datac => \D~49_combout\,
	datad => \D~57_combout\,
	combout => \Q~196_combout\);

-- Location: LCCOMB_X57_Y43_N12
\Q~199\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~199_combout\ = (!Q(4) & ((\Q~196_combout\) # ((!Q(3) & \Q~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => \Q~198_combout\,
	datac => \Q~196_combout\,
	datad => Q(4),
	combout => \Q~199_combout\);

-- Location: LCCOMB_X58_Y44_N22
\D~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~39_combout\ = (!Q(1) & (!Q(0) & (\Equal0~8_combout\ $ (\Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datab => \Equal0~8_combout\,
	datac => Q(0),
	datad => \Equal1~4_combout\,
	combout => \D~39_combout\);

-- Location: LCCOMB_X58_Y47_N10
\Q~201\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~201_combout\ = (\D~54_combout\ & (!\D~56_combout\ & ((!\D~39_combout\) # (!\Equal64~20_combout\)))) # (!\D~54_combout\ & (((!\D~39_combout\) # (!\Equal64~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~54_combout\,
	datab => \D~56_combout\,
	datac => \Equal64~20_combout\,
	datad => \D~39_combout\,
	combout => \Q~201_combout\);

-- Location: LCCOMB_X58_Y47_N30
\Q~260\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~260_combout\ = (\Q~201_combout\ & (\Q~187_combout\ & ((Q(0)) # (!\D~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~201_combout\,
	datab => Q(0),
	datac => \D~65_combout\,
	datad => \Q~187_combout\,
	combout => \Q~260_combout\);

-- Location: LCCOMB_X57_Y43_N8
\Q~202\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~202_combout\ = (\Q~200_combout\) # ((\Q~199_combout\) # (!\Q~260_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~200_combout\,
	datac => \Q~199_combout\,
	datad => \Q~260_combout\,
	combout => \Q~202_combout\);

-- Location: LCCOMB_X57_Y47_N26
\D~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~59_combout\ = (\Equal64~11_combout\ & (\D~13_combout\ & (!\D~20_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal64~11_combout\,
	datab => \D~13_combout\,
	datac => \D~20_combout\,
	datad => \Equal0~8_combout\,
	combout => \D~59_combout\);

-- Location: LCCOMB_X57_Y44_N4
\SEG7~148\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~148_combout\ = (!Q(2) & (Q(5) & (Q(3) & Q(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => Q(5),
	datac => Q(3),
	datad => Q(4),
	combout => \SEG7~148_combout\);

-- Location: LCCOMB_X57_Y44_N2
\D~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~44_combout\ = (\D~15_combout\ & (\D~20_combout\ & (\D~18_combout\ & \D~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~15_combout\,
	datab => \D~20_combout\,
	datac => \D~18_combout\,
	datad => \D~35_combout\,
	combout => \D~44_combout\);

-- Location: LCCOMB_X58_Y44_N12
\Q~203\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~203_combout\ = (\D~44_combout\) # (((\SEG7~148_combout\ & \D~56_combout\)) # (!\Q~135_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~148_combout\,
	datab => \D~44_combout\,
	datac => \Q~135_combout\,
	datad => \D~56_combout\,
	combout => \Q~203_combout\);

-- Location: LCCOMB_X59_Y44_N30
\D~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~58_combout\ = (\D~22_combout\ & (!Q(1) & \D~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~22_combout\,
	datab => Q(1),
	datad => \D~29_combout\,
	combout => \D~58_combout\);

-- Location: LCCOMB_X58_Y44_N0
\D~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~40_combout\ = (Q(2) & (\D~39_combout\ & (\D~35_combout\ & Q(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => \D~39_combout\,
	datac => \D~35_combout\,
	datad => Q(5),
	combout => \D~40_combout\);

-- Location: LCCOMB_X58_Y44_N30
\Q~204\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~204_combout\ = ((\Q~203_combout\) # ((\D~58_combout\) # (\D~40_combout\))) # (!\Q~259_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~259_combout\,
	datab => \Q~203_combout\,
	datac => \D~58_combout\,
	datad => \D~40_combout\,
	combout => \Q~204_combout\);

-- Location: LCCOMB_X57_Y45_N12
\Q~205\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~205_combout\ = (\Q~202_combout\) # ((\Q~204_combout\) # ((\D~59_combout\ & \Q~192_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~202_combout\,
	datab => \D~59_combout\,
	datac => \Q~192_combout\,
	datad => \Q~204_combout\,
	combout => \Q~205_combout\);

-- Location: LCCOMB_X57_Y45_N4
\Q[0]~253\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[0]~253_combout\ = (\Q[3]~129_combout\ & (((Q(0))))) # (!\Q[3]~129_combout\ & (\Q~205_combout\ & (\RST~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~205_combout\,
	datab => \RST~input_o\,
	datac => Q(0),
	datad => \Q[3]~129_combout\,
	combout => \Q[0]~253_combout\);

-- Location: FF_X57_Y45_N5
\Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \Q[0]~253_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(0));

-- Location: LCCOMB_X58_Y46_N14
\Q~258\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~258_combout\ = (Q(2) & (Q(0) $ (!Q(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => Q(0),
	datad => Q(1),
	combout => \Q~258_combout\);

-- Location: LCCOMB_X58_Y46_N6
\Q~219\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~219_combout\ = (\D~12_combout\ & (!\Equal64~20_combout\ & ((\Q~258_combout\) # (!\D~50_combout\)))) # (!\D~12_combout\ & (((!\D~50_combout\)) # (!\Q~258_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~258_combout\,
	datab => \Equal64~20_combout\,
	datac => \D~50_combout\,
	datad => \D~12_combout\,
	combout => \Q~219_combout\);

-- Location: LCCOMB_X57_Y44_N30
\D~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~60_combout\ = (Q(5) & (\D~15_combout\ & (!Q(2) & \D~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => \D~15_combout\,
	datac => Q(2),
	datad => \D~50_combout\,
	combout => \D~60_combout\);

-- Location: LCCOMB_X57_Y44_N6
\D~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~43_combout\ = (\D~42_combout\ & (\LessThan1~30_combout\ & (\Equal0~8_combout\ & \D~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~42_combout\,
	datab => \LessThan1~30_combout\,
	datac => \Equal0~8_combout\,
	datad => \D~35_combout\,
	combout => \D~43_combout\);

-- Location: LCCOMB_X58_Y44_N8
\SEG7~243\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~243_combout\ = (Q(2) & !Q(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Q(2),
	datad => Q(3),
	combout => \SEG7~243_combout\);

-- Location: LCCOMB_X58_Y46_N10
\D~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~41_combout\ = (!Q(4) & (!\A_LOW~input_o\ & (Q(5) & !\TOGGLELIMITER~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datab => \A_LOW~input_o\,
	datac => Q(5),
	datad => \TOGGLELIMITER~q\,
	combout => \D~41_combout\);

-- Location: LCCOMB_X57_Y44_N0
\Q~138\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~138_combout\ = (((!\D~13_combout\ & !\D~16_combout\)) # (!\D~41_combout\)) # (!\SEG7~243_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~13_combout\,
	datab => \SEG7~243_combout\,
	datac => \D~16_combout\,
	datad => \D~41_combout\,
	combout => \Q~138_combout\);

-- Location: LCCOMB_X57_Y44_N22
\Q~139\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~139_combout\ = ((Q(1)) # ((!\D~29_combout\ & !\D~30_combout\))) # (!\SEG7~148_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~29_combout\,
	datab => \SEG7~148_combout\,
	datac => Q(1),
	datad => \D~30_combout\,
	combout => \Q~139_combout\);

-- Location: LCCOMB_X57_Y44_N24
\Q~140\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~140_combout\ = (!\D~43_combout\ & (\Q~138_combout\ & \Q~139_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~43_combout\,
	datab => \Q~138_combout\,
	datad => \Q~139_combout\,
	combout => \Q~140_combout\);

-- Location: LCCOMB_X57_Y46_N6
\Q~216\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~216_combout\ = (\D~30_combout\ & (Q(1) & (Q(3) $ (!Q(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~30_combout\,
	datab => Q(3),
	datac => Q(1),
	datad => Q(4),
	combout => \Q~216_combout\);

-- Location: LCCOMB_X57_Y46_N18
\Q~214\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~214_combout\ = (\Equal64~15_combout\ & ((Q(1) & ((\D~29_combout\))) # (!Q(1) & (\D~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~30_combout\,
	datab => \Equal64~15_combout\,
	datac => Q(1),
	datad => \D~29_combout\,
	combout => \Q~214_combout\);

-- Location: LCCOMB_X57_Y46_N20
\Q~215\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~215_combout\ = (!Q(4) & ((\Q~214_combout\) # ((\D~57_combout\ & \D~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~57_combout\,
	datab => \Q~214_combout\,
	datac => \D~20_combout\,
	datad => Q(4),
	combout => \Q~215_combout\);

-- Location: LCCOMB_X58_Y44_N24
\D~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~36_combout\ = (Q(1) & (Q(0) & (\Equal1~4_combout\ $ (\Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datab => \Equal1~4_combout\,
	datac => \Equal0~8_combout\,
	datad => Q(0),
	combout => \D~36_combout\);

-- Location: LCCOMB_X58_Y44_N2
\D~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~63_combout\ = (Q(4) & (\D~36_combout\ & !Q(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datab => \D~36_combout\,
	datac => Q(3),
	combout => \D~63_combout\);

-- Location: LCCOMB_X57_Y46_N12
\Q~217\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~217_combout\ = (\Q~215_combout\) # ((Q(2) & ((\Q~216_combout\) # (\D~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~216_combout\,
	datab => \Q~215_combout\,
	datac => Q(2),
	datad => \D~63_combout\,
	combout => \Q~217_combout\);

-- Location: LCCOMB_X58_Y46_N4
\Q~218\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~218_combout\ = (\D~60_combout\) # (((\Q~217_combout\ & !Q(5))) # (!\Q~140_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~60_combout\,
	datab => \Q~140_combout\,
	datac => \Q~217_combout\,
	datad => Q(5),
	combout => \Q~218_combout\);

-- Location: LCCOMB_X58_Y46_N22
\D~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~51_combout\ = (\D~45_combout\ & (!Q(3) & \D~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~45_combout\,
	datab => Q(3),
	datac => \D~41_combout\,
	combout => \D~51_combout\);

-- Location: LCCOMB_X58_Y46_N0
\Q~220\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~220_combout\ = ((\Q~218_combout\) # ((\D~51_combout\) # (!\Q~201_combout\))) # (!\Q~219_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~219_combout\,
	datab => \Q~218_combout\,
	datac => \D~51_combout\,
	datad => \Q~201_combout\,
	combout => \Q~220_combout\);

-- Location: LCCOMB_X57_Y45_N8
\Q[3]~221\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~221_combout\ = (\Q[3]~213_combout\) # ((\Q[2]~130_combout\ & ((\Q~220_combout\) # (!\Q~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[3]~213_combout\,
	datab => \Q[2]~130_combout\,
	datac => \Q~220_combout\,
	datad => \Q~193_combout\,
	combout => \Q[3]~221_combout\);

-- Location: FF_X57_Y45_N9
\Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \Q[3]~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(3));

-- Location: FF_X62_Y45_N25
\Q_LAST[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	asdata => Q(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q_LAST(3));

-- Location: FF_X62_Y45_N9
\Q_LAST[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	asdata => Q(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q_LAST(2));

-- Location: LCCOMB_X62_Y45_N8
\Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (Q(2) & (Q_LAST(2) & (Q_LAST(3) $ (!Q(3))))) # (!Q(2) & (!Q_LAST(2) & (Q_LAST(3) $ (!Q(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => Q_LAST(3),
	datac => Q_LAST(2),
	datad => Q(3),
	combout => \Equal3~1_combout\);

-- Location: FF_X62_Y45_N15
\Q_LAST[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	asdata => Q(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q_LAST(1));

-- Location: FF_X62_Y45_N31
\Q_LAST[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	asdata => Q(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q_LAST(0));

-- Location: LCCOMB_X62_Y45_N30
\Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (Q(0) & (Q_LAST(0) & (Q_LAST(1) $ (!Q(1))))) # (!Q(0) & (!Q_LAST(0) & (Q_LAST(1) $ (!Q(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q_LAST(1),
	datac => Q_LAST(0),
	datad => Q(1),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X62_Y45_N2
\Q_LAST[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q_LAST[5]~feeder_combout\ = Q(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => Q(5),
	combout => \Q_LAST[5]~feeder_combout\);

-- Location: FF_X62_Y45_N3
\Q_LAST[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \Q_LAST[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q_LAST(5));

-- Location: FF_X62_Y45_N21
\Q_LAST[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	asdata => Q(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q_LAST(4));

-- Location: LCCOMB_X62_Y45_N20
\Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (Q(4) & (Q_LAST(4) & (Q_LAST(5) $ (!Q(5))))) # (!Q(4) & (!Q_LAST(4) & (Q_LAST(5) $ (!Q(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datab => Q_LAST(5),
	datac => Q_LAST(4),
	datad => Q(5),
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X62_Y45_N6
\Equal3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = (\Equal3~1_combout\ & (\Equal3~0_combout\ & \Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~1_combout\,
	datac => \Equal3~0_combout\,
	datad => \Equal3~2_combout\,
	combout => \Equal3~3_combout\);

-- Location: LCCOMB_X62_Y45_N16
\COUNTERCLK1HZ~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTERCLK1HZ~13_combout\ = (\Equal2~2_combout\) # ((!\Add2~0_combout\ & \Equal3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~0_combout\,
	datac => \Equal2~2_combout\,
	datad => \Equal3~3_combout\,
	combout => \COUNTERCLK1HZ~13_combout\);

-- Location: FF_X62_Y45_N17
\COUNTERCLK1HZ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNTERCLK1HZ~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTERCLK1HZ(0));

-- Location: LCCOMB_X62_Y45_N22
\COUNTERCLK1HZ~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTERCLK1HZ~21_combout\ = (!\Equal2~2_combout\ & (\Add2~2_combout\ & \Equal3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~2_combout\,
	datac => \Add2~2_combout\,
	datad => \Equal3~3_combout\,
	combout => \COUNTERCLK1HZ~21_combout\);

-- Location: FF_X62_Y45_N23
\COUNTERCLK1HZ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNTERCLK1HZ~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTERCLK1HZ(1));

-- Location: LCCOMB_X62_Y44_N4
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!COUNTERCLK1HZ(2) & (!COUNTERCLK1HZ(3) & (!COUNTERCLK1HZ(5) & !COUNTERCLK1HZ(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTERCLK1HZ(2),
	datab => COUNTERCLK1HZ(3),
	datac => COUNTERCLK1HZ(5),
	datad => COUNTERCLK1HZ(4),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X62_Y44_N26
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!COUNTERCLK1HZ(9) & (!COUNTERCLK1HZ(8) & (!COUNTERCLK1HZ(10) & COUNTERCLK1HZ(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTERCLK1HZ(9),
	datab => COUNTERCLK1HZ(8),
	datac => COUNTERCLK1HZ(10),
	datad => COUNTERCLK1HZ(0),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X62_Y44_N10
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!COUNTERCLK1HZ(1) & (\Equal0~5_combout\ & \Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => COUNTERCLK1HZ(1),
	datac => \Equal0~5_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X63_Y45_N6
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (COUNTERCLK1HZ(23) & (COUNTERCLK1HZ(15) & (COUNTERCLK1HZ(17) & COUNTERCLK1HZ(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTERCLK1HZ(23),
	datab => COUNTERCLK1HZ(15),
	datac => COUNTERCLK1HZ(17),
	datad => COUNTERCLK1HZ(25),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X63_Y45_N8
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!COUNTERCLK1HZ(11) & (!COUNTERCLK1HZ(16) & (!COUNTERCLK1HZ(24) & !COUNTERCLK1HZ(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTERCLK1HZ(11),
	datab => COUNTERCLK1HZ(16),
	datac => COUNTERCLK1HZ(24),
	datad => COUNTERCLK1HZ(18),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X63_Y45_N16
\Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\Equal2~0_combout\ & (\Equal0~1_combout\ & (!COUNTERCLK1HZ(6) & COUNTERCLK1HZ(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal0~1_combout\,
	datac => COUNTERCLK1HZ(6),
	datad => COUNTERCLK1HZ(7),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X63_Y45_N14
\Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (\Equal0~6_combout\ & (\Equal1~1_combout\ & (\Equal1~0_combout\ & \Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal1~1_combout\,
	datac => \Equal1~0_combout\,
	datad => \Equal2~1_combout\,
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X63_Y44_N30
\Add2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (COUNTERCLK1HZ(12) & (\Add2~23\ $ (GND))) # (!COUNTERCLK1HZ(12) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((COUNTERCLK1HZ(12) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTERCLK1HZ(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X62_Y45_N12
\COUNTERCLK1HZ~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTERCLK1HZ~12_combout\ = (!\Equal2~2_combout\ & (\Add2~24_combout\ & \Equal3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~2_combout\,
	datac => \Add2~24_combout\,
	datad => \Equal3~3_combout\,
	combout => \COUNTERCLK1HZ~12_combout\);

-- Location: FF_X62_Y45_N13
\COUNTERCLK1HZ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNTERCLK1HZ~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTERCLK1HZ(12));

-- Location: LCCOMB_X62_Y45_N18
\COUNTERCLK1HZ~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTERCLK1HZ~11_combout\ = (\Add2~26_combout\ & (!\Equal2~2_combout\ & \Equal3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~26_combout\,
	datac => \Equal2~2_combout\,
	datad => \Equal3~3_combout\,
	combout => \COUNTERCLK1HZ~11_combout\);

-- Location: FF_X62_Y45_N19
\COUNTERCLK1HZ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNTERCLK1HZ~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTERCLK1HZ(13));

-- Location: LCCOMB_X62_Y45_N14
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!COUNTERCLK1HZ(13) & (!COUNTERCLK1HZ(14) & !COUNTERCLK1HZ(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTERCLK1HZ(13),
	datab => COUNTERCLK1HZ(14),
	datad => COUNTERCLK1HZ(12),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X64_Y45_N26
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!COUNTERCLK1HZ(22) & (!COUNTERCLK1HZ(20) & (!COUNTERCLK1HZ(21) & !COUNTERCLK1HZ(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTERCLK1HZ(22),
	datab => COUNTERCLK1HZ(20),
	datac => COUNTERCLK1HZ(21),
	datad => COUNTERCLK1HZ(19),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X63_Y45_N2
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~0_combout\ & (!COUNTERCLK1HZ(6) & (\Equal0~1_combout\ & !COUNTERCLK1HZ(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => COUNTERCLK1HZ(6),
	datac => \Equal0~1_combout\,
	datad => COUNTERCLK1HZ(7),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X63_Y45_N18
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~3_combout\ & (\Equal0~7_combout\ & (\Equal0~2_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X57_Y47_N24
\D~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~17_combout\ = (!Q(1) & \Equal64~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(1),
	datad => \Equal64~11_combout\,
	combout => \D~17_combout\);

-- Location: LCCOMB_X57_Y47_N6
\D~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~24_combout\ = (\Equal0~8_combout\ & (!Q(0) & (!\D~20_combout\ & \D~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => Q(0),
	datac => \D~20_combout\,
	datad => \D~17_combout\,
	combout => \D~24_combout\);

-- Location: LCCOMB_X54_Y45_N16
\Equal64~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal64~16_combout\ = (!Q(3) & (!Q(2) & (!Q(5) & !Q(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(2),
	datac => Q(5),
	datad => Q(4),
	combout => \Equal64~16_combout\);

-- Location: LCCOMB_X54_Y45_N12
\Q[3]~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~112_combout\ = (\Equal64~16_combout\ & ((Q(0) $ (Q(1))))) # (!\Equal64~16_combout\ & (\Equal64~17_combout\ & (!Q(0) & Q(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal64~17_combout\,
	datab => \Equal64~16_combout\,
	datac => Q(0),
	datad => Q(1),
	combout => \Q[3]~112_combout\);

-- Location: LCCOMB_X54_Y45_N6
\Q[3]~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~113_combout\ = ((\A_LOW~input_o\) # (\TOGGLELIMITER~q\)) # (!\Q[3]~112_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[3]~112_combout\,
	datac => \A_LOW~input_o\,
	datad => \TOGGLELIMITER~q\,
	combout => \Q[3]~113_combout\);

-- Location: LCCOMB_X57_Y48_N10
\Equal64~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal64~18_combout\ = (Q(3) & (!Q(2) & (!Q(5) & Q(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(2),
	datac => Q(5),
	datad => Q(4),
	combout => \Equal64~18_combout\);

-- Location: LCCOMB_X57_Y48_N28
\Q[3]~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~114_combout\ = (\RST~input_o\ & (((!Q(1)) # (!Q(0))) # (!\Equal64~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal64~18_combout\,
	datab => Q(0),
	datac => \RST~input_o\,
	datad => Q(1),
	combout => \Q[3]~114_combout\);

-- Location: LCCOMB_X57_Y48_N30
\Equal64~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal64~13_combout\ = (!Q(3) & (Q(5) & (!Q(2) & Q(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(5),
	datac => Q(2),
	datad => Q(4),
	combout => \Equal64~13_combout\);

-- Location: LCCOMB_X57_Y48_N4
\Equal64~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal64~12_combout\ = (Q(3) & (!Q(4) & (Q(5) & Q(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(4),
	datac => Q(5),
	datad => Q(2),
	combout => \Equal64~12_combout\);

-- Location: LCCOMB_X57_Y48_N22
\Q[3]~115\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~115_combout\ = (\Equal64~12_combout\ & (((\D~13_combout\) # (\D~12_combout\)))) # (!\Equal64~12_combout\ & (\Equal64~13_combout\ & (\D~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal64~13_combout\,
	datab => \Equal64~12_combout\,
	datac => \D~13_combout\,
	datad => \D~12_combout\,
	combout => \Q[3]~115_combout\);

-- Location: LCCOMB_X57_Y45_N6
\Q[3]~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~116_combout\ = (\Q[3]~113_combout\ & (\Q[3]~114_combout\ & ((!\Q[3]~115_combout\) # (!\D~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[3]~113_combout\,
	datab => \D~20_combout\,
	datac => \Q[3]~114_combout\,
	datad => \Q[3]~115_combout\,
	combout => \Q[3]~116_combout\);

-- Location: LCCOMB_X57_Y47_N2
\D~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~23_combout\ = (\Equal64~11_combout\ & (Q(0) & !Q(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal64~11_combout\,
	datab => Q(0),
	datad => Q(1),
	combout => \D~23_combout\);

-- Location: LCCOMB_X57_Y47_N28
\Q[3]~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~111_combout\ = ((!\D~23_combout\ & ((!\SEG7~243_combout\) # (!\SEG7~144_combout\)))) # (!\D~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~144_combout\,
	datab => \D~20_combout\,
	datac => \D~23_combout\,
	datad => \SEG7~243_combout\,
	combout => \Q[3]~111_combout\);

-- Location: LCCOMB_X57_Y48_N12
\Q[3]~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~110_combout\ = (((!\Equal64~12_combout\ & !\Equal64~13_combout\)) # (!\D~20_combout\)) # (!\D~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal64~12_combout\,
	datab => \D~16_combout\,
	datac => \Equal64~13_combout\,
	datad => \D~20_combout\,
	combout => \Q[3]~110_combout\);

-- Location: LCCOMB_X57_Y45_N0
\Q[3]~266\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~266_combout\ = ((Q(2) & ((Q(5)) # (!Q(4)))) # (!Q(2) & ((Q(4)) # (!Q(5))))) # (!Q(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(2),
	datac => Q(4),
	datad => Q(5),
	combout => \Q[3]~266_combout\);

-- Location: LCCOMB_X57_Y45_N10
\Q[3]~267\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~267_combout\ = (Q(0) & (Q(1))) # (!Q(0) & ((\Q[3]~266_combout\) # ((!Q(1) & Q(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datab => \Q[3]~266_combout\,
	datac => Q(0),
	datad => Q(5),
	combout => \Q[3]~267_combout\);

-- Location: LCCOMB_X56_Y45_N16
\Q[3]~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~104_combout\ = (Q(5)) # ((Q(4) $ (Q(2))) # (!Q(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datab => Q(2),
	datac => Q(5),
	datad => Q(3),
	combout => \Q[3]~104_combout\);

-- Location: LCCOMB_X56_Y45_N18
\Q[3]~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~105_combout\ = (Q(4)) # ((Q(5) & (Q(2) $ (!Q(3)))) # (!Q(5) & ((Q(2)) # (Q(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => Q(2),
	datac => Q(4),
	datad => Q(3),
	combout => \Q[3]~105_combout\);

-- Location: LCCOMB_X57_Y45_N20
\Q[3]~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~109_combout\ = (\Q[3]~267_combout\ & (((\Q[3]~105_combout\) # (!Q(0))))) # (!\Q[3]~267_combout\ & (\Q[3]~104_combout\ & (Q(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[3]~267_combout\,
	datab => \Q[3]~104_combout\,
	datac => Q(0),
	datad => \Q[3]~105_combout\,
	combout => \Q[3]~109_combout\);

-- Location: LCCOMB_X57_Y45_N30
\Q[3]~261\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~261_combout\ = (\TOGGLELIMITER~q\) # ((\Q[3]~109_combout\) # (\A_LOW~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TOGGLELIMITER~q\,
	datab => \Q[3]~109_combout\,
	datad => \A_LOW~input_o\,
	combout => \Q[3]~261_combout\);

-- Location: LCCOMB_X57_Y45_N24
\Q[3]~117\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~117_combout\ = (\Q[3]~116_combout\ & (\Q[3]~111_combout\ & (\Q[3]~110_combout\ & \Q[3]~261_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[3]~116_combout\,
	datab => \Q[3]~111_combout\,
	datac => \Q[3]~110_combout\,
	datad => \Q[3]~261_combout\,
	combout => \Q[3]~117_combout\);

-- Location: LCCOMB_X61_Y45_N10
\Q[3]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~77_combout\ = ((Q(5)) # (Q(4))) # (!Q(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(5),
	datad => Q(4),
	combout => \Q[3]~77_combout\);

-- Location: LCCOMB_X61_Y45_N16
\Q[3]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~74_combout\ = (Q(5)) # (((Q(4)) # (!Q(3))) # (!Q(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => Q(2),
	datac => Q(4),
	datad => Q(3),
	combout => \Q[3]~74_combout\);

-- Location: LCCOMB_X61_Y45_N18
\Q[3]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~73_combout\ = (Q(4) & (((Q(2))) # (!Q(5)))) # (!Q(4) & (!Q(3) & ((Q(5)) # (Q(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => Q(2),
	datac => Q(4),
	datad => Q(3),
	combout => \Q[3]~73_combout\);

-- Location: LCCOMB_X61_Y45_N28
\Q[3]~268\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~268_combout\ = (Q(1) & ((\Q[3]~74_combout\ $ (Q(0))))) # (!Q(1) & ((Q(0) & ((\Q[3]~74_combout\))) # (!Q(0) & (\Q[3]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datab => \Q[3]~73_combout\,
	datac => \Q[3]~74_combout\,
	datad => Q(0),
	combout => \Q[3]~268_combout\);

-- Location: LCCOMB_X61_Y45_N14
\Q[3]~269\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~269_combout\ = (\Q[3]~77_combout\ & ((\Q[3]~268_combout\) # ((\Q[3]~74_combout\ & Q(1))))) # (!\Q[3]~77_combout\ & (\Q[3]~268_combout\ & ((\Q[3]~74_combout\) # (!Q(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[3]~77_combout\,
	datab => \Q[3]~74_combout\,
	datac => Q(1),
	datad => \Q[3]~268_combout\,
	combout => \Q[3]~269_combout\);

-- Location: LCCOMB_X61_Y45_N12
\Q[3]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~86_combout\ = Q(3) $ (((Q(1) & (Q(2) & Q(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(1),
	datac => Q(2),
	datad => Q(0),
	combout => \Q[3]~86_combout\);

-- Location: LCCOMB_X61_Y45_N26
\Q[3]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~88_combout\ = (Q(3) & ((Q(1)) # ((Q(2)) # (!Q(0))))) # (!Q(3) & (Q(1) & (Q(2) & Q(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(1),
	datac => Q(2),
	datad => Q(0),
	combout => \Q[3]~88_combout\);

-- Location: LCCOMB_X61_Y45_N4
\Q[3]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~83_combout\ = (Q(5) & (((\Q[3]~88_combout\) # (Q(4))))) # (!Q(5) & ((\Q[3]~86_combout\) # ((!Q(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => \Q[3]~86_combout\,
	datac => \Q[3]~88_combout\,
	datad => Q(4),
	combout => \Q[3]~83_combout\);

-- Location: LCCOMB_X61_Y45_N2
\Q[3]~264\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~264_combout\ = (\A_LOW~input_o\) # ((\TOGGLELIMITER~q\) # ((\Q[3]~269_combout\ & \Q[3]~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[3]~269_combout\,
	datab => \A_LOW~input_o\,
	datac => \Q[3]~83_combout\,
	datad => \TOGGLELIMITER~q\,
	combout => \Q[3]~264_combout\);

-- Location: LCCOMB_X57_Y45_N26
\Q[3]~265\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~265_combout\ = (!\D~24_combout\ & (\Q[3]~117_combout\ & \Q[3]~264_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~24_combout\,
	datab => \Q[3]~117_combout\,
	datac => \Q[3]~264_combout\,
	combout => \Q[3]~265_combout\);

-- Location: LCCOMB_X56_Y46_N24
\Q[3]~256\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~256_combout\ = (\Equal64~9_combout\ & (Q(0) $ (Q(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(0),
	datac => Q(1),
	datad => \Equal64~9_combout\,
	combout => \Q[3]~256_combout\);

-- Location: LCCOMB_X56_Y46_N2
\Q[3]~247\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~247_combout\ = (\Q[3]~256_combout\ & (((\TOGGLELIMITER~q\) # (\A_LOW~input_o\)))) # (!\Q[3]~256_combout\ & (\Equal64~22_combout\ & ((\TOGGLELIMITER~q\) # (\A_LOW~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[3]~256_combout\,
	datab => \Equal64~22_combout\,
	datac => \TOGGLELIMITER~q\,
	datad => \A_LOW~input_o\,
	combout => \Q[3]~247_combout\);

-- Location: LCCOMB_X54_Y45_N8
\Equal64~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal64~8_combout\ = (!Q(3) & (!Q(4) & (!Q(2) & Q(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(4),
	datac => Q(2),
	datad => Q(5),
	combout => \Equal64~8_combout\);

-- Location: LCCOMB_X56_Y46_N16
\Q[3]~123\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~123_combout\ = (\LessThan1~30_combout\ & ((\Equal64~14_combout\) # ((!\D~20_combout\ & \Equal64~8_combout\)))) # (!\LessThan1~30_combout\ & (!\D~20_combout\ & (\Equal64~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~30_combout\,
	datab => \D~20_combout\,
	datac => \Equal64~8_combout\,
	datad => \Equal64~14_combout\,
	combout => \Q[3]~123_combout\);

-- Location: LCCOMB_X56_Y46_N30
\Q[3]~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~124_combout\ = ((!\Q[3]~247_combout\ & ((!\Q[3]~123_combout\) # (!\D~12_combout\)))) # (!\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \Q[3]~247_combout\,
	datac => \D~12_combout\,
	datad => \Q[3]~123_combout\,
	combout => \Q[3]~124_combout\);

-- Location: LCCOMB_X57_Y47_N14
\SEG7~166\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~166_combout\ = (Q(5) & Q(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datac => Q(4),
	combout => \SEG7~166_combout\);

-- Location: LCCOMB_X57_Y47_N4
\Q[3]~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~126_combout\ = (((!\D~20_combout\) # (!\Equal64~15_combout\)) # (!Q(1))) # (!\SEG7~166_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~166_combout\,
	datab => Q(1),
	datac => \Equal64~15_combout\,
	datad => \D~20_combout\,
	combout => \Q[3]~126_combout\);

-- Location: LCCOMB_X57_Y47_N10
\Q[3]~257\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~257_combout\ = (!Q(1)) # (!\Equal64~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal64~11_combout\,
	datad => Q(1),
	combout => \Q[3]~257_combout\);

-- Location: LCCOMB_X57_Y47_N18
\Q[3]~249\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~249_combout\ = (\Q[3]~257_combout\ & (((!\A_LOW~input_o\ & !\TOGGLELIMITER~q\)) # (!\D~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[3]~257_combout\,
	datab => \D~23_combout\,
	datac => \A_LOW~input_o\,
	datad => \TOGGLELIMITER~q\,
	combout => \Q[3]~249_combout\);

-- Location: LCCOMB_X57_Y47_N30
\Q[3]~127\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~127_combout\ = (\Equal0~8_combout\ & (((\Q[3]~249_combout\ & \Q[3]~248_combout\)))) # (!\Equal0~8_combout\ & (\Q[3]~126_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[3]~126_combout\,
	datab => \Q[3]~249_combout\,
	datac => \Equal0~8_combout\,
	datad => \Q[3]~248_combout\,
	combout => \Q[3]~127_combout\);

-- Location: LCCOMB_X54_Y45_N0
\D~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~62_combout\ = (\Equal0~8_combout\ & ((\TOGGLELIMITER~q\) # (\A_LOW~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \TOGGLELIMITER~q\,
	datac => \A_LOW~input_o\,
	combout => \D~62_combout\);

-- Location: LCCOMB_X54_Y45_N28
\Q[3]~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~122_combout\ = (((Q(1) & Q(0))) # (!\D~62_combout\)) # (!\Equal64~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal64~17_combout\,
	datab => \D~62_combout\,
	datac => Q(1),
	datad => Q(0),
	combout => \Q[3]~122_combout\);

-- Location: LCCOMB_X54_Y45_N2
\Equal64~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal64~10_combout\ = (Q(3) & (Q(4) & (!Q(5) & Q(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(4),
	datac => Q(5),
	datad => Q(2),
	combout => \Equal64~10_combout\);

-- Location: LCCOMB_X54_Y45_N14
\Q[3]~262\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~262_combout\ = (\A_LOW~input_o\ & (((!\Equal64~10_combout\ & !\Equal64~16_combout\)))) # (!\A_LOW~input_o\ & (((!\Equal64~10_combout\ & !\Equal64~16_combout\)) # (!\TOGGLELIMITER~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_LOW~input_o\,
	datab => \TOGGLELIMITER~q\,
	datac => \Equal64~10_combout\,
	datad => \Equal64~16_combout\,
	combout => \Q[3]~262_combout\);

-- Location: LCCOMB_X54_Y45_N4
\Q[3]~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~120_combout\ = (!Q(3) & (Q(2) & !Q(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(2),
	datad => Q(5),
	combout => \Q[3]~120_combout\);

-- Location: LCCOMB_X54_Y45_N18
\Q[3]~121\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~121_combout\ = ((\D~20_combout\) # ((Q(4)) # (!\Equal0~8_combout\))) # (!\Q[3]~120_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[3]~120_combout\,
	datab => \D~20_combout\,
	datac => \Equal0~8_combout\,
	datad => Q(4),
	combout => \Q[3]~121_combout\);

-- Location: LCCOMB_X54_Y45_N20
\Q[3]~263\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~263_combout\ = (\Q[3]~122_combout\ & (\Q[3]~121_combout\ & ((\Q[3]~262_combout\) # (!\Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \Q[3]~122_combout\,
	datac => \Q[3]~262_combout\,
	datad => \Q[3]~121_combout\,
	combout => \Q[3]~263_combout\);

-- Location: LCCOMB_X54_Y45_N26
\Q[3]~125\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~125_combout\ = (((Q(0) & Q(1))) # (!\D~62_combout\)) # (!\Equal64~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => \Equal64~8_combout\,
	datac => Q(1),
	datad => \D~62_combout\,
	combout => \Q[3]~125_combout\);

-- Location: LCCOMB_X57_Y45_N2
\Q[3]~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~128_combout\ = (\Q[3]~124_combout\ & (\Q[3]~127_combout\ & (\Q[3]~263_combout\ & \Q[3]~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[3]~124_combout\,
	datab => \Q[3]~127_combout\,
	datac => \Q[3]~263_combout\,
	datad => \Q[3]~125_combout\,
	combout => \Q[3]~128_combout\);

-- Location: LCCOMB_X56_Y46_N28
\D~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~28_combout\ = (\D~12_combout\ & (\Equal64~13_combout\ & ((\Equal0~8_combout\) # (\Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \D~12_combout\,
	datac => \Equal64~13_combout\,
	datad => \Equal1~4_combout\,
	combout => \D~28_combout\);

-- Location: LCCOMB_X56_Y46_N22
\D~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~27_combout\ = (\Equal64~14_combout\ & ((\Equal0~8_combout\) # (\Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal64~14_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal1~4_combout\,
	combout => \D~27_combout\);

-- Location: LCCOMB_X56_Y46_N14
\Q[3]~119\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~119_combout\ = (!\D~28_combout\ & (((Q(1) & Q(0))) # (!\D~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~28_combout\,
	datab => \D~27_combout\,
	datac => Q(1),
	datad => Q(0),
	combout => \Q[3]~119_combout\);

-- Location: LCCOMB_X57_Y48_N20
\D~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~25_combout\ = (\Equal64~18_combout\ & ((\Equal0~8_combout\) # (\Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal64~18_combout\,
	datab => \Equal0~8_combout\,
	datad => \Equal1~4_combout\,
	combout => \D~25_combout\);

-- Location: LCCOMB_X57_Y48_N2
\Equal64~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal64~19_combout\ = (Q(2) & (Q(4) & (!Q(5) & !Q(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => Q(4),
	datac => Q(5),
	datad => Q(3),
	combout => \Equal64~19_combout\);

-- Location: LCCOMB_X57_Y48_N16
\D~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~26_combout\ = (\D~12_combout\ & (\Equal64~19_combout\ & ((\Equal0~8_combout\) # (\Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~12_combout\,
	datab => \Equal0~8_combout\,
	datac => \Equal64~19_combout\,
	datad => \Equal1~4_combout\,
	combout => \D~26_combout\);

-- Location: LCCOMB_X57_Y48_N6
\Q[3]~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~118_combout\ = (!\D~26_combout\ & (((Q(0) & Q(1))) # (!\D~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~25_combout\,
	datab => Q(0),
	datac => \D~26_combout\,
	datad => Q(1),
	combout => \Q[3]~118_combout\);

-- Location: LCCOMB_X57_Y45_N16
\Q[3]~129\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~129_combout\ = (\Q[3]~265_combout\ & (\Q[3]~128_combout\ & (\Q[3]~119_combout\ & \Q[3]~118_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[3]~265_combout\,
	datab => \Q[3]~128_combout\,
	datac => \Q[3]~119_combout\,
	datad => \Q[3]~118_combout\,
	combout => \Q[3]~129_combout\);

-- Location: LCCOMB_X57_Y45_N22
\Q[4]~206\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[4]~206_combout\ = (\Q[3]~129_combout\ & Q(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Q[3]~129_combout\,
	datac => Q(4),
	combout => \Q[4]~206_combout\);

-- Location: LCCOMB_X57_Y46_N14
\Q~208\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~208_combout\ = (Q(4) & (((\D~30_combout\)))) # (!Q(4) & (Q(0) & ((\D~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => \D~30_combout\,
	datac => \D~20_combout\,
	datad => Q(4),
	combout => \Q~208_combout\);

-- Location: LCCOMB_X57_Y46_N24
\Q~209\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~209_combout\ = (\D~63_combout\) # ((\Q~208_combout\ & (Q(3) & Q(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~208_combout\,
	datab => Q(3),
	datac => \D~63_combout\,
	datad => Q(1),
	combout => \Q~209_combout\);

-- Location: LCCOMB_X58_Y47_N6
\Q~210\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~210_combout\ = (\Q~188_combout\ & (((Q(5)) # (!Q(2))) # (!\Q~209_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~209_combout\,
	datab => \Q~188_combout\,
	datac => Q(2),
	datad => Q(5),
	combout => \Q~210_combout\);

-- Location: LCCOMB_X58_Y47_N0
\Q~207\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~207_combout\ = (\D~65_combout\ & ((\D~16_combout\) # ((\Equal64~20_combout\ & \D~12_combout\)))) # (!\D~65_combout\ & (((\Equal64~20_combout\ & \D~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~65_combout\,
	datab => \D~16_combout\,
	datac => \Equal64~20_combout\,
	datad => \D~12_combout\,
	combout => \Q~207_combout\);

-- Location: LCCOMB_X58_Y48_N20
\D~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~66_combout\ = (Q(1) & (!Q(2) & (Q(0) & \D~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datab => Q(2),
	datac => Q(0),
	datad => \D~65_combout\,
	combout => \D~66_combout\);

-- Location: LCCOMB_X58_Y47_N4
\Q~211\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~211_combout\ = (((\Q~207_combout\) # (\D~66_combout\)) # (!\Q~260_combout\)) # (!\Q~210_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~210_combout\,
	datab => \Q~260_combout\,
	datac => \Q~207_combout\,
	datad => \D~66_combout\,
	combout => \Q~211_combout\);

-- Location: LCCOMB_X58_Y44_N10
\Q~137\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~137_combout\ = (!\D~38_combout\ & (!\D~40_combout\ & ((!\D~63_combout\) # (!\D~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~38_combout\,
	datab => \D~18_combout\,
	datac => \D~40_combout\,
	datad => \D~63_combout\,
	combout => \Q~137_combout\);

-- Location: LCCOMB_X57_Y44_N14
\Q~141\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~141_combout\ = (!\D~47_combout\ & (!\D~44_combout\ & ((!\D~46_combout\) # (!\D~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~45_combout\,
	datab => \D~47_combout\,
	datac => \D~44_combout\,
	datad => \D~46_combout\,
	combout => \Q~141_combout\);

-- Location: LCCOMB_X57_Y44_N28
\Q~142\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~142_combout\ = (\Q~137_combout\ & (\Q~136_combout\ & (\Q~141_combout\ & \Q~140_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~137_combout\,
	datab => \Q~136_combout\,
	datac => \Q~141_combout\,
	datad => \Q~140_combout\,
	combout => \Q~142_combout\);

-- Location: LCCOMB_X58_Y45_N8
\Q~177\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~177_combout\ = (\Q~176_combout\) # ((\Q~165_combout\) # ((\Q~153_combout\) # (\Q~147_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~176_combout\,
	datab => \Q~165_combout\,
	datac => \Q~153_combout\,
	datad => \Q~147_combout\,
	combout => \Q~177_combout\);

-- Location: LCCOMB_X58_Y45_N14
\Q~178\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~178_combout\ = (\Q~142_combout\ & (\Q~135_combout\ & ((!\Q~177_combout\) # (!\Q~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~142_combout\,
	datab => \Q~133_combout\,
	datac => \Q~177_combout\,
	datad => \Q~135_combout\,
	combout => \Q~178_combout\);

-- Location: LCCOMB_X57_Y45_N14
\Q[4]~212\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[4]~212_combout\ = (\Q[4]~206_combout\) # ((\Q[2]~130_combout\ & ((\Q~211_combout\) # (!\Q~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[4]~206_combout\,
	datab => \Q[2]~130_combout\,
	datac => \Q~211_combout\,
	datad => \Q~178_combout\,
	combout => \Q[4]~212_combout\);

-- Location: FF_X57_Y45_N15
\Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \Q[4]~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(4));

-- Location: LCCOMB_X57_Y43_N16
\SEG7~274\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~274_combout\ = (!Q(4) & Q(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Q(4),
	datad => Q(5),
	combout => \SEG7~274_combout\);

-- Location: LCCOMB_X57_Y43_N0
\D~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~21_combout\ = (!Q(4) & (!Q(3) & Q(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datac => Q(3),
	datad => Q(5),
	combout => \D~21_combout\);

-- Location: LCCOMB_X57_Y43_N18
\D~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~48_combout\ = (!Q(3) & (!Q(1) & (\D~29_combout\ & Q(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(1),
	datac => \D~29_combout\,
	datad => Q(2),
	combout => \D~48_combout\);

-- Location: LCCOMB_X57_Y43_N2
\Q~179\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~179_combout\ = (\SEG7~274_combout\ & (!\D~48_combout\ & ((!\D~21_combout\) # (!\D~49_combout\)))) # (!\SEG7~274_combout\ & (((!\D~21_combout\)) # (!\D~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~274_combout\,
	datab => \D~49_combout\,
	datac => \D~21_combout\,
	datad => \D~48_combout\,
	combout => \Q~179_combout\);

-- Location: LCCOMB_X57_Y43_N26
\Q~259\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~259_combout\ = (\Q~179_combout\ & (((Q(0)) # (!\D~50_combout\)) # (!Q(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => \Q~179_combout\,
	datac => Q(0),
	datad => \D~50_combout\,
	combout => \Q~259_combout\);

-- Location: LCCOMB_X58_Y46_N16
\D~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~14_combout\ = (Q(2) & (Q(4) & Q(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datac => Q(4),
	datad => Q(3),
	combout => \D~14_combout\);

-- Location: LCCOMB_X58_Y46_N12
\D~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~64_combout\ = (\D~14_combout\ & (!\A_LOW~input_o\ & (!Q(5) & !\TOGGLELIMITER~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~14_combout\,
	datab => \A_LOW~input_o\,
	datac => Q(5),
	datad => \TOGGLELIMITER~q\,
	combout => \D~64_combout\);

-- Location: LCCOMB_X58_Y46_N24
\Q~180\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~180_combout\ = (\D~50_combout\ & ((\D~16_combout\) # ((!Q(2) & \D~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => \D~16_combout\,
	datac => \D~50_combout\,
	datad => \D~12_combout\,
	combout => \Q~180_combout\);

-- Location: LCCOMB_X58_Y46_N26
\Q~181\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~181_combout\ = (\D~64_combout\) # ((\D~51_combout\) # ((\Q~180_combout\ & Q(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~64_combout\,
	datab => \Q~180_combout\,
	datac => \D~51_combout\,
	datad => Q(5),
	combout => \Q~181_combout\);

-- Location: LCCOMB_X57_Y43_N14
\Q~131\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~131_combout\ = (Q(1) & ((Q(2) & ((\D~29_combout\))) # (!Q(2) & (\D~30_combout\)))) # (!Q(1) & ((\D~30_combout\) # ((\D~29_combout\ & !Q(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datab => \D~30_combout\,
	datac => \D~29_combout\,
	datad => Q(2),
	combout => \Q~131_combout\);

-- Location: LCCOMB_X57_Y43_N22
\Q~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~132_combout\ = (\D~21_combout\ & ((\Q~131_combout\) # ((!\D~31_combout\ & !\A_LOW~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~131_combout\,
	datab => \D~31_combout\,
	datac => \D~21_combout\,
	datad => \A_LOW~input_o\,
	combout => \Q~132_combout\);

-- Location: LCCOMB_X58_Y45_N16
\Q~182\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~182_combout\ = (((\Q~181_combout\) # (\Q~132_combout\)) # (!\Q~178_combout\)) # (!\Q~259_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~259_combout\,
	datab => \Q~178_combout\,
	datac => \Q~181_combout\,
	datad => \Q~132_combout\,
	combout => \Q~182_combout\);

-- Location: LCCOMB_X58_Y45_N12
\Q[5]~251\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[5]~251_combout\ = (\Q[3]~129_combout\ & (((Q(5))))) # (!\Q[3]~129_combout\ & (\RST~input_o\ & (\Q~182_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \Q~182_combout\,
	datac => Q(5),
	datad => \Q[3]~129_combout\,
	combout => \Q[5]~251_combout\);

-- Location: FF_X58_Y45_N13
\Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \Q[5]~251_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(5));

-- Location: LCCOMB_X45_Y42_N28
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (Q(0) & ((!\CLK1KHZ~q\))) # (!Q(0) & (!\CLK~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datac => \CLK~input_o\,
	datad => \CLK1KHZ~q\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X45_Y42_N2
\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (Q(1) & ((!\Mux0~0_combout\))) # (!Q(1) & (\CLK~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(1),
	datac => \CLK~input_o\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X45_Y42_N12
\Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (Q(2) & (!\CLK1KHZ~q\)) # (!Q(2) & ((!\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(2),
	datac => \CLK1KHZ~q\,
	datad => \Mux0~1_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X45_Y42_N4
\Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (Q(3) & ((\Mux0~2_combout\))) # (!Q(3) & (!\CLK~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(3),
	datac => \CLK~input_o\,
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X45_Y42_N14
\Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (Q(0) & (!\CLK~input_o\)) # (!Q(0) & ((!\CLK1KHZ~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datac => \CLK~input_o\,
	datad => \CLK1KHZ~q\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X45_Y42_N22
\Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (Q(1) & (!\Mux0~4_combout\)) # (!Q(1) & ((\CLK1KHZ~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(1),
	datac => \Mux0~4_combout\,
	datad => \CLK1KHZ~q\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X45_Y42_N10
\Mux0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (Q(2) & (!\Mux0~5_combout\)) # (!Q(2) & ((!\CLK1KHZ~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(2),
	datac => \Mux0~5_combout\,
	datad => \CLK1KHZ~q\,
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X45_Y42_N16
\Mux0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (Q(3) & (!\CLK~input_o\)) # (!Q(3) & ((\Mux0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(3),
	datac => \CLK~input_o\,
	datad => \Mux0~6_combout\,
	combout => \Mux0~7_combout\);

-- Location: LCCOMB_X45_Y42_N6
\Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (Q(4) & ((!\Mux0~7_combout\))) # (!Q(4) & (!\Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(4),
	datac => \Mux0~3_combout\,
	datad => \Mux0~7_combout\,
	combout => \Mux0~8_combout\);

-- Location: LCCOMB_X45_Y42_N18
\Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~9_combout\ = (Q(2) & ((!\Mux0~1_combout\))) # (!Q(2) & (!\CLK~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(2),
	datac => \CLK~input_o\,
	datad => \Mux0~1_combout\,
	combout => \Mux0~9_combout\);

-- Location: LCCOMB_X45_Y42_N26
\Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~10_combout\ = (Q(3) & (!\CLK1KHZ~q\)) # (!Q(3) & ((\Mux0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(3),
	datac => \CLK1KHZ~q\,
	datad => \Mux0~9_combout\,
	combout => \Mux0~10_combout\);

-- Location: LCCOMB_X45_Y42_N30
\Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~11_combout\ = (Q(2) & ((!\CLK~input_o\))) # (!Q(2) & (!\Mux0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(2),
	datac => \Mux0~5_combout\,
	datad => \CLK~input_o\,
	combout => \Mux0~11_combout\);

-- Location: LCCOMB_X45_Y42_N8
\Mux0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~12_combout\ = (Q(2) & (!\CLK1KHZ~q\)) # (!Q(2) & ((!\CLK~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(2),
	datac => \CLK1KHZ~q\,
	datad => \CLK~input_o\,
	combout => \Mux0~12_combout\);

-- Location: LCCOMB_X45_Y42_N20
\Mux0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~13_combout\ = (Q(3) & ((\Mux0~12_combout\))) # (!Q(3) & (\Mux0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(3),
	datac => \Mux0~11_combout\,
	datad => \Mux0~12_combout\,
	combout => \Mux0~13_combout\);

-- Location: LCCOMB_X45_Y42_N24
\Mux0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~14_combout\ = (Q(4) & ((!\Mux0~13_combout\))) # (!Q(4) & (!\Mux0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(4),
	datac => \Mux0~10_combout\,
	datad => \Mux0~13_combout\,
	combout => \Mux0~14_combout\);

-- Location: LCCOMB_X46_Y42_N12
\rtl~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = LCELL((Q(5) & ((\Mux0~14_combout\))) # (!Q(5) & (\Mux0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datac => \Mux0~8_combout\,
	datad => \Mux0~14_combout\,
	combout => \rtl~0_combout\);

-- Location: CLKCTRL_G10
\rtl~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~0clkctrl_outclk\);

-- Location: LCCOMB_X57_Y48_N24
\D~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~61_combout\ = (\D~13_combout\ & (\Equal64~14_combout\ & ((\Equal1~4_combout\) # (\Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \D~13_combout\,
	datac => \Equal64~14_combout\,
	datad => \Equal0~8_combout\,
	combout => \D~61_combout\);

-- Location: LCCOMB_X61_Y45_N22
\Q~233\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~233_combout\ = (Q(1) & ((Q(2) & (Q(3))) # (!Q(2) & ((Q(0)))))) # (!Q(1) & (((Q(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(1),
	datac => Q(2),
	datad => Q(0),
	combout => \Q~233_combout\);

-- Location: LCCOMB_X61_Y45_N8
\SEG7~174\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~174_combout\ = (Q(3)) # ((Q(1) & (Q(2) & Q(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(1),
	datac => Q(2),
	datad => Q(0),
	combout => \SEG7~174_combout\);

-- Location: LCCOMB_X61_Y45_N24
\Q~234\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~234_combout\ = (\Q~233_combout\ & (\SEG7~174_combout\ $ (((!Q(5) & Q(4)))))) # (!\Q~233_combout\ & ((\SEG7~174_combout\ & (Q(5))) # (!\SEG7~174_combout\ & ((Q(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~233_combout\,
	datab => Q(5),
	datac => \SEG7~174_combout\,
	datad => Q(4),
	combout => \Q~234_combout\);

-- Location: LCCOMB_X59_Y45_N18
\Q~239\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~239_combout\ = (\Equal1~4_combout\ & (((Q(2) & Q(1))))) # (!\Equal1~4_combout\ & ((Q(2)) # ((Q(0) & Q(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => \Equal1~4_combout\,
	datac => Q(2),
	datad => Q(1),
	combout => \Q~239_combout\);

-- Location: LCCOMB_X59_Y45_N0
\Q~240\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~240_combout\ = (Q(4) & ((\Q~239_combout\) # (Q(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Q~239_combout\,
	datac => Q(3),
	datad => Q(4),
	combout => \Q~240_combout\);

-- Location: LCCOMB_X59_Y45_N26
\Q~241\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~241_combout\ = (Q(5) & ((\TOGGLELIMITER~q\) # ((\Q~240_combout\)))) # (!Q(5) & (!\TOGGLELIMITER~q\ & ((\Q~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => \TOGGLELIMITER~q\,
	datac => \Q~240_combout\,
	datad => \Q~163_combout\,
	combout => \Q~241_combout\);

-- Location: LCCOMB_X59_Y46_N2
\Q~242\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~242_combout\ = (\Equal1~4_combout\ & ((Q(2) & (!Q(1))) # (!Q(2) & (Q(1) & Q(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => Q(1),
	datac => Q(0),
	datad => \Equal1~4_combout\,
	combout => \Q~242_combout\);

-- Location: LCCOMB_X59_Y46_N20
\Q~254\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~254_combout\ = (Q(3)) # ((!\Q~242_combout\) # (!Q(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(4),
	datac => \Q~242_combout\,
	combout => \Q~254_combout\);

-- Location: LCCOMB_X59_Y45_N20
\Q~243\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~243_combout\ = (\Q~241_combout\ & (((\Q~254_combout\) # (!\TOGGLELIMITER~q\)))) # (!\Q~241_combout\ & (\Q~156_combout\ & (\TOGGLELIMITER~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~241_combout\,
	datab => \Q~156_combout\,
	datac => \TOGGLELIMITER~q\,
	datad => \Q~254_combout\,
	combout => \Q~243_combout\);

-- Location: LCCOMB_X58_Y44_N20
\Q~237\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~237_combout\ = (!Q(3) & ((Q(1) & (Q(0) & !Q(5))) # (!Q(1) & ((Q(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datab => Q(3),
	datac => Q(0),
	datad => Q(5),
	combout => \Q~237_combout\);

-- Location: LCCOMB_X59_Y45_N28
\Q~238\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~238_combout\ = ((Q(2) & ((!\Q~237_combout\) # (!\Equal1~4_combout\)))) # (!\Q~150_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~150_combout\,
	datab => \Equal1~4_combout\,
	datac => \Q~237_combout\,
	datad => Q(2),
	combout => \Q~238_combout\);

-- Location: LCCOMB_X59_Y45_N2
\Q~244\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~244_combout\ = (\Equal0~8_combout\ & (((\A_LOW~input_o\)))) # (!\Equal0~8_combout\ & ((\A_LOW~input_o\ & ((\Q~238_combout\))) # (!\A_LOW~input_o\ & (\Q~243_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~243_combout\,
	datab => \Q~238_combout\,
	datac => \Equal0~8_combout\,
	datad => \A_LOW~input_o\,
	combout => \Q~244_combout\);

-- Location: LCCOMB_X58_Y43_N4
\Q~235\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~235_combout\ = (Q(4) & ((Q(3)) # ((Q(1) & Q(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datab => Q(3),
	datac => Q(1),
	datad => Q(2),
	combout => \Q~235_combout\);

-- Location: LCCOMB_X59_Y45_N22
\Q~236\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~236_combout\ = (\TOGGLELIMITER~q\ & (((\Q~234_combout\)))) # (!\TOGGLELIMITER~q\ & (\Q~235_combout\ & ((Q(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~235_combout\,
	datab => \TOGGLELIMITER~q\,
	datac => \Q~234_combout\,
	datad => Q(5),
	combout => \Q~236_combout\);

-- Location: LCCOMB_X59_Y45_N4
\Q~245\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~245_combout\ = (\Q~244_combout\ & ((\Q~234_combout\) # ((!\Equal0~8_combout\)))) # (!\Q~244_combout\ & (((\Equal0~8_combout\ & \Q~236_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~234_combout\,
	datab => \Q~244_combout\,
	datac => \Equal0~8_combout\,
	datad => \Q~236_combout\,
	combout => \Q~245_combout\);

-- Location: LCCOMB_X58_Y48_N4
\Q~229\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~229_combout\ = (\D~65_combout\ & ((\D~19_combout\) # ((\D~15_combout\ & Q(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~15_combout\,
	datab => Q(2),
	datac => \D~65_combout\,
	datad => \D~19_combout\,
	combout => \Q~229_combout\);

-- Location: LCCOMB_X58_Y48_N30
\Q~230\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~230_combout\ = (\D~54_combout\ & (\Equal0~8_combout\ & ((\TOGGLELIMITER~q\) # (\A_LOW~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~54_combout\,
	datab => \Equal0~8_combout\,
	datac => \TOGGLELIMITER~q\,
	datad => \A_LOW~input_o\,
	combout => \Q~230_combout\);

-- Location: LCCOMB_X58_Y48_N24
\Q~231\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~231_combout\ = (\Q~230_combout\) # ((\D~65_combout\ & (Q(2) & \D~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~65_combout\,
	datab => \Q~230_combout\,
	datac => Q(2),
	datad => \D~13_combout\,
	combout => \Q~231_combout\);

-- Location: LCCOMB_X59_Y45_N8
\Q~232\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~232_combout\ = (\Q~229_combout\) # (((\Q~231_combout\) # (!\Q~186_combout\)) # (!\Q~137_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~229_combout\,
	datab => \Q~137_combout\,
	datac => \Q~231_combout\,
	datad => \Q~186_combout\,
	combout => \Q~232_combout\);

-- Location: LCCOMB_X58_Y48_N22
\Q~222\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~222_combout\ = (Q(2) & ((\TOGGLELIMITER~q\) # (\A_LOW~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TOGGLELIMITER~q\,
	datac => Q(2),
	datad => \A_LOW~input_o\,
	combout => \Q~222_combout\);

-- Location: LCCOMB_X58_Y46_N2
\Q~223\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~223_combout\ = (\Q~222_combout\ & (\Equal0~8_combout\ & ((!Q(1)) # (!Q(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~222_combout\,
	datab => Q(0),
	datac => \Equal0~8_combout\,
	datad => Q(1),
	combout => \Q~223_combout\);

-- Location: LCCOMB_X58_Y46_N20
\Q~225\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~225_combout\ = (Q(5) & ((Q(2) & (!Q(0) & !Q(1))) # (!Q(2) & (Q(0) & Q(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => Q(0),
	datac => Q(5),
	datad => Q(1),
	combout => \Q~225_combout\);

-- Location: LCCOMB_X57_Y46_N2
\Q~224\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~224_combout\ = (\Equal0~8_combout\ & ((\TOGGLELIMITER~q\) # (\A_LOW~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TOGGLELIMITER~q\,
	datac => \A_LOW~input_o\,
	datad => \Equal0~8_combout\,
	combout => \Q~224_combout\);

-- Location: LCCOMB_X58_Y46_N18
\Q~226\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~226_combout\ = (Q(2) & (\Q~225_combout\ & ((\D~20_combout\)))) # (!Q(2) & ((\D~20_combout\) # ((\Q~225_combout\ & \Q~224_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => \Q~225_combout\,
	datac => \Q~224_combout\,
	datad => \D~20_combout\,
	combout => \Q~226_combout\);

-- Location: LCCOMB_X58_Y46_N8
\Q~227\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~227_combout\ = (!Q(3) & ((\Q~223_combout\) # (\Q~226_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~223_combout\,
	datab => Q(3),
	datac => \Q~226_combout\,
	combout => \Q~227_combout\);

-- Location: LCCOMB_X58_Y46_N30
\Q~228\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~228_combout\ = (\D~66_combout\) # (((\Q~227_combout\ & !Q(4))) # (!\Q~219_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~227_combout\,
	datab => Q(4),
	datac => \D~66_combout\,
	datad => \Q~219_combout\,
	combout => \Q~228_combout\);

-- Location: LCCOMB_X59_Y45_N14
\Q~246\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q~246_combout\ = (\Q~232_combout\) # ((\Q~228_combout\) # ((\D~61_combout\ & \Q~245_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~61_combout\,
	datab => \Q~245_combout\,
	datac => \Q~232_combout\,
	datad => \Q~228_combout\,
	combout => \Q~246_combout\);

-- Location: LCCOMB_X59_Y45_N24
\Q[2]~255\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[2]~255_combout\ = (\Q[3]~129_combout\ & (((Q(2))))) # (!\Q[3]~129_combout\ & (\Q~246_combout\ & ((\RST~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[3]~129_combout\,
	datab => \Q~246_combout\,
	datac => Q(2),
	datad => \RST~input_o\,
	combout => \Q[2]~255_combout\);

-- Location: FF_X59_Y45_N25
\Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \Q[2]~255_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(2));

-- Location: LCCOMB_X59_Y47_N8
\SEG7~137\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~137_combout\ = (!Q(2) & (!Q(4) & !Q(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(2),
	datac => Q(4),
	datad => Q(3),
	combout => \SEG7~137_combout\);

-- Location: LCCOMB_X60_Y48_N18
\SEG7~136\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~136_combout\ = ((!Q(2)) # (!Q(3))) # (!Q(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(4),
	datac => Q(3),
	datad => Q(2),
	combout => \SEG7~136_combout\);

-- Location: LCCOMB_X60_Y48_N22
\SEG7~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~134_combout\ = (!Q(4) & (Q(2) & (Q(0) $ (Q(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(4),
	datac => Q(2),
	datad => Q(3),
	combout => \SEG7~134_combout\);

-- Location: LCCOMB_X60_Y48_N0
\SEG7~133\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~133_combout\ = (Q(0) & (!Q(4) & (!Q(2) & Q(3)))) # (!Q(0) & (Q(4) & (Q(2) $ (!Q(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(4),
	datac => Q(2),
	datad => Q(3),
	combout => \SEG7~133_combout\);

-- Location: LCCOMB_X60_Y48_N28
\SEG7~135\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~135_combout\ = (Q(1) & (((Q(5))))) # (!Q(1) & ((Q(5) & (!\SEG7~134_combout\)) # (!Q(5) & ((!\SEG7~133_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~134_combout\,
	datab => Q(1),
	datac => Q(5),
	datad => \SEG7~133_combout\,
	combout => \SEG7~135_combout\);

-- Location: LCCOMB_X60_Y48_N12
\SEG7~138\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~138_combout\ = (\SEG7~135_combout\) # ((!\SEG7~137_combout\ & (\SEG7~136_combout\ & Q(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~137_combout\,
	datab => \SEG7~136_combout\,
	datac => Q(1),
	datad => \SEG7~135_combout\,
	combout => \SEG7~138_combout\);

-- Location: LCCOMB_X61_Y46_N12
\SEG7~139\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~139_combout\ = (Q(3) & (!Q(2) & !Q(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(2),
	datad => Q(4),
	combout => \SEG7~139_combout\);

-- Location: LCCOMB_X57_Y48_N18
\SEG7~140\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~140_combout\ = (Q(2) & ((Q(3) & ((!Q(4)))) # (!Q(3) & (!Q(0))))) # (!Q(2) & (!Q(0) & ((Q(4)) # (Q(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(2),
	datac => Q(4),
	datad => Q(3),
	combout => \SEG7~140_combout\);

-- Location: LCCOMB_X57_Y48_N0
\SEG7~141\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~141_combout\ = (Q(1) & (!Q(5) & (Q(0) $ (\SEG7~140_combout\)))) # (!Q(1) & (((Q(0)) # (\SEG7~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datab => Q(5),
	datac => Q(0),
	datad => \SEG7~140_combout\,
	combout => \SEG7~141_combout\);

-- Location: LCCOMB_X61_Y46_N6
\SEG7~142\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~142_combout\ = (\SEG7~141_combout\) # ((Q(5) & ((!\D~12_combout\) # (!\SEG7~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~139_combout\,
	datab => Q(5),
	datac => \D~12_combout\,
	datad => \SEG7~141_combout\,
	combout => \SEG7~142_combout\);

-- Location: LCCOMB_X60_Y48_N26
\SEG7~143\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~143_combout\ = (Q(1) & ((Q(0)) # (Q(2) $ (Q(3))))) # (!Q(1) & (((Q(2)) # (Q(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(1),
	datac => Q(2),
	datad => Q(3),
	combout => \SEG7~143_combout\);

-- Location: LCCOMB_X60_Y48_N20
\SEG7~145\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~145_combout\ = (Q(2) & (Q(3) & (Q(0) $ (Q(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(1),
	datac => Q(2),
	datad => Q(3),
	combout => \SEG7~145_combout\);

-- Location: LCCOMB_X60_Y48_N8
\SEG7~275\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~275_combout\ = (Q(4) & (((!\SEG7~145_combout\)))) # (!Q(4) & (\SEG7~143_combout\ & (!Q(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~143_combout\,
	datab => Q(4),
	datac => Q(5),
	datad => \SEG7~145_combout\,
	combout => \SEG7~275_combout\);

-- Location: LCCOMB_X60_Y48_N10
\SEG7~146\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~146_combout\ = (\SEG7~275_combout\) # ((Q(5) & ((!\D~13_combout\) # (!\SEG7~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => \SEG7~275_combout\,
	datac => \SEG7~139_combout\,
	datad => \D~13_combout\,
	combout => \SEG7~146_combout\);

-- Location: LCCOMB_X61_Y49_N24
\SEG7~298\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~298_combout\ = (Q(3) & ((Q(5)) # (Q(2) $ (Q(4))))) # (!Q(3) & ((Q(4)) # (Q(5) $ (Q(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(5),
	datac => Q(2),
	datad => Q(4),
	combout => \SEG7~298_combout\);

-- Location: LCCOMB_X61_Y49_N26
\SEG7~299\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~299_combout\ = (Q(0) & (((Q(1))))) # (!Q(0) & ((\SEG7~298_combout\) # ((!Q(4) & !Q(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datab => Q(1),
	datac => Q(0),
	datad => \SEG7~298_combout\,
	combout => \SEG7~299_combout\);

-- Location: LCCOMB_X61_Y49_N0
\SEG7~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~43_combout\ = (Q(5)) # ((Q(3) & ((!Q(4)) # (!Q(2)))) # (!Q(3) & ((Q(2)) # (Q(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(5),
	datac => Q(2),
	datad => Q(4),
	combout => \SEG7~43_combout\);

-- Location: LCCOMB_X61_Y49_N18
\SEG7~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~42_combout\ = (Q(3) & ((Q(2) & (Q(5))) # (!Q(2) & ((Q(4)))))) # (!Q(3) & ((Q(4)) # (Q(5) $ (Q(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(5),
	datac => Q(2),
	datad => Q(4),
	combout => \SEG7~42_combout\);

-- Location: LCCOMB_X61_Y49_N30
\SEG7~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~122_combout\ = (\SEG7~299_combout\ & ((\SEG7~43_combout\) # ((!Q(0))))) # (!\SEG7~299_combout\ & (((Q(0) & \SEG7~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~299_combout\,
	datab => \SEG7~43_combout\,
	datac => Q(0),
	datad => \SEG7~42_combout\,
	combout => \SEG7~122_combout\);

-- Location: LCCOMB_X60_Y48_N6
\SEG7~297\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~297_combout\ = (Q(4) & ((!Q(2)) # (!Q(3)))) # (!Q(4) & ((Q(3)) # (Q(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(4),
	datac => Q(3),
	datad => Q(2),
	combout => \SEG7~297_combout\);

-- Location: LCCOMB_X60_Y48_N16
\SEG7~153\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~153_combout\ = (Q(0) & ((Q(1)) # ((!\SEG7~139_combout\)))) # (!Q(0) & (!Q(1) & ((\SEG7~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(1),
	datac => \SEG7~139_combout\,
	datad => \SEG7~136_combout\,
	combout => \SEG7~153_combout\);

-- Location: LCCOMB_X61_Y43_N24
\SEG7~152\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~152_combout\ = (Q(2) & ((!Q(3)) # (!Q(4)))) # (!Q(2) & (Q(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => Q(4),
	datac => Q(3),
	combout => \SEG7~152_combout\);

-- Location: LCCOMB_X60_Y48_N30
\SEG7~154\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~154_combout\ = (\SEG7~153_combout\ & ((\SEG7~297_combout\) # ((!Q(1))))) # (!\SEG7~153_combout\ & (((Q(1) & \SEG7~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~297_combout\,
	datab => \SEG7~153_combout\,
	datac => Q(1),
	datad => \SEG7~152_combout\,
	combout => \SEG7~154_combout\);

-- Location: LCCOMB_X56_Y45_N30
\SEG7~149\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~149_combout\ = (Q(1) & ((\SEG7~148_combout\) # ((\Equal64~9_combout\ & Q(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal64~9_combout\,
	datab => Q(1),
	datac => Q(0),
	datad => \SEG7~148_combout\,
	combout => \SEG7~149_combout\);

-- Location: LCCOMB_X56_Y45_N2
\Equal64~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal64~23_combout\ = (!Q(2) & (!Q(4) & (Q(3) & Q(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => Q(4),
	datac => Q(3),
	datad => Q(5),
	combout => \Equal64~23_combout\);

-- Location: LCCOMB_X57_Y48_N26
\SEG7~284\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~284_combout\ = (!\Equal64~13_combout\ & (!\Equal64~12_combout\ & !\Equal64~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal64~13_combout\,
	datab => \Equal64~12_combout\,
	datac => \Equal64~14_combout\,
	combout => \SEG7~284_combout\);

-- Location: LCCOMB_X56_Y45_N10
\SEG7~285\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~285_combout\ = (\SEG7~149_combout\) # ((\Equal64~23_combout\) # ((\D~17_combout\) # (!\SEG7~284_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~149_combout\,
	datab => \Equal64~23_combout\,
	datac => \D~17_combout\,
	datad => \SEG7~284_combout\,
	combout => \SEG7~285_combout\);

-- Location: LCCOMB_X56_Y49_N16
\SEG7~150\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~150_combout\ = (!\Equal64~8_combout\ & ((Q(1)) # (!\Equal64~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal64~9_combout\,
	datac => \Equal64~8_combout\,
	datad => Q(1),
	combout => \SEG7~150_combout\);

-- Location: LCCOMB_X56_Y46_N8
\SEG7~276\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~276_combout\ = (\SEG7~150_combout\ & (((!Q(0)) # (!Q(1))) # (!\Equal64~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal64~10_combout\,
	datab => Q(1),
	datac => \SEG7~150_combout\,
	datad => Q(0),
	combout => \SEG7~276_combout\);

-- Location: LCCOMB_X56_Y45_N28
\Equal64~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal64~24_combout\ = (\Equal64~9_combout\ & (Q(0) & !Q(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal64~9_combout\,
	datac => Q(0),
	datad => Q(1),
	combout => \Equal64~24_combout\);

-- Location: LCCOMB_X56_Y46_N0
\SEG7~147\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~147_combout\ = (\Equal64~8_combout\ & (((!\Equal64~10_combout\)) # (!\D~12_combout\))) # (!\Equal64~8_combout\ & (!\Equal64~24_combout\ & ((!\Equal64~10_combout\) # (!\D~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal64~8_combout\,
	datab => \D~12_combout\,
	datac => \Equal64~24_combout\,
	datad => \Equal64~10_combout\,
	combout => \SEG7~147_combout\);

-- Location: LCCOMB_X56_Y46_N20
\SEG7~151\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~151_combout\ = (Q(5) & (\SEG7~147_combout\ & ((\SEG7~285_combout\) # (!\SEG7~276_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~285_combout\,
	datab => Q(5),
	datac => \SEG7~276_combout\,
	datad => \SEG7~147_combout\,
	combout => \SEG7~151_combout\);

-- Location: LCCOMB_X60_Y48_N4
\SEG7~155\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~155_combout\ = (\SEG7~151_combout\) # ((\SEG7~154_combout\ & !Q(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~154_combout\,
	datab => \SEG7~151_combout\,
	datac => Q(5),
	combout => \SEG7~155_combout\);

-- Location: LCCOMB_X59_Y47_N30
\SEG7~157\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~157_combout\ = (!Q(4) & !Q(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datac => Q(2),
	combout => \SEG7~157_combout\);

-- Location: LCCOMB_X56_Y46_N26
\SEG7~158\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~158_combout\ = (\SEG7~147_combout\ & (((!\Equal64~9_combout\) # (!\SEG7~276_combout\)) # (!\D~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~13_combout\,
	datab => \SEG7~147_combout\,
	datac => \SEG7~276_combout\,
	datad => \Equal64~9_combout\,
	combout => \SEG7~158_combout\);

-- Location: LCCOMB_X62_Y46_N20
\SEG7~159\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~159_combout\ = (Q(5) & (((\SEG7~158_combout\)))) # (!Q(5) & ((Q(3) & ((!\SEG7~158_combout\))) # (!Q(3) & (\SEG7~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~157_combout\,
	datab => \SEG7~158_combout\,
	datac => Q(3),
	datad => Q(5),
	combout => \SEG7~159_combout\);

-- Location: LCCOMB_X62_Y46_N10
\SEG7~160\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~160_combout\ = (Q(5) & (((\SEG7~159_combout\)))) # (!Q(5) & ((Q(0) & ((\SEG7~159_combout\) # (!Q(1)))) # (!Q(0) & (Q(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(5),
	datac => Q(1),
	datad => \SEG7~159_combout\,
	combout => \SEG7~160_combout\);

-- Location: LCCOMB_X59_Y46_N24
\SEG7~156\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~156_combout\ = Q(1) $ (Q(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Q(1),
	datad => Q(0),
	combout => \SEG7~156_combout\);

-- Location: LCCOMB_X59_Y46_N18
\SEG7~161\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~161_combout\ = (\SEG7~160_combout\ & ((Q(5)) # ((\SEG7~156_combout\ & \SEG7~152_combout\)))) # (!\SEG7~160_combout\ & (((!Q(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~160_combout\,
	datab => \SEG7~156_combout\,
	datac => \SEG7~152_combout\,
	datad => Q(5),
	combout => \SEG7~161_combout\);

-- Location: LCCOMB_X60_Y48_N2
\SEG7~162\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~162_combout\ = (Q(1) & (((Q(0))))) # (!Q(1) & ((Q(0) & (\SEG7~152_combout\)) # (!Q(0) & ((\SEG7~136_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~152_combout\,
	datab => \SEG7~136_combout\,
	datac => Q(1),
	datad => Q(0),
	combout => \SEG7~162_combout\);

-- Location: LCCOMB_X60_Y48_N24
\SEG7~163\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~163_combout\ = (Q(1) & ((\SEG7~162_combout\ & (\SEG7~297_combout\)) # (!\SEG7~162_combout\ & ((!\SEG7~139_combout\))))) # (!Q(1) & (((\SEG7~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~297_combout\,
	datab => Q(1),
	datac => \SEG7~139_combout\,
	datad => \SEG7~162_combout\,
	combout => \SEG7~163_combout\);

-- Location: LCCOMB_X60_Y48_N14
\SEG7~164\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~164_combout\ = (\SEG7~151_combout\) # ((!Q(5) & \SEG7~163_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEG7~151_combout\,
	datac => Q(5),
	datad => \SEG7~163_combout\,
	combout => \SEG7~164_combout\);

-- Location: LCCOMB_X61_Y46_N16
\SEG7~165\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~165_combout\ = (Q(3) & Q(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datad => Q(2),
	combout => \SEG7~165_combout\);

-- Location: LCCOMB_X61_Y49_N20
\SEG7~167\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~167_combout\ = (Q(0) & ((Q(5)) # ((!Q(2) & !Q(4))))) # (!Q(0) & ((Q(4)) # ((Q(5) & !Q(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(5),
	datac => Q(2),
	datad => Q(4),
	combout => \SEG7~167_combout\);

-- Location: LCCOMB_X61_Y49_N10
\SEG7~168\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~168_combout\ = (Q(2) & (!Q(1) & ((!Q(3)) # (!\SEG7~167_combout\)))) # (!Q(2) & (((\SEG7~167_combout\) # (Q(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datab => \SEG7~167_combout\,
	datac => Q(3),
	datad => Q(2),
	combout => \SEG7~168_combout\);

-- Location: LCCOMB_X61_Y49_N16
\SEG7~169\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~169_combout\ = (\SEG7~168_combout\) # ((Q(1) & ((!\SEG7~165_combout\) # (!\SEG7~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~166_combout\,
	datab => \SEG7~165_combout\,
	datac => Q(1),
	datad => \SEG7~168_combout\,
	combout => \SEG7~169_combout\);

-- Location: LCCOMB_X56_Y45_N24
\SEG7~170\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~170_combout\ = (Q(0)) # ((Q(4) & (!Q(3))) # (!Q(4) & ((Q(3)) # (Q(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(4),
	datac => Q(3),
	datad => Q(5),
	combout => \SEG7~170_combout\);

-- Location: LCCOMB_X56_Y45_N14
\SEG7~171\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~171_combout\ = (Q(1)) # (Q(4) $ (Q(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datab => Q(4),
	datac => Q(2),
	combout => \SEG7~171_combout\);

-- Location: LCCOMB_X59_Y46_N10
\SEG7~286\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~286_combout\ = (Q(2) & Q(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(2),
	datac => Q(1),
	combout => \SEG7~286_combout\);

-- Location: LCCOMB_X61_Y43_N14
\SEG7~172\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~172_combout\ = (!Q(4) & !Q(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(4),
	datac => Q(3),
	combout => \SEG7~172_combout\);

-- Location: LCCOMB_X59_Y46_N28
\SEG7~287\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~287_combout\ = (Q(5) & (((\SEG7~286_combout\ & Q(0))) # (!\SEG7~172_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~286_combout\,
	datab => \SEG7~172_combout\,
	datac => Q(0),
	datad => Q(5),
	combout => \SEG7~287_combout\);

-- Location: LCCOMB_X56_Y43_N24
\SEG7~173\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~173_combout\ = (\SEG7~287_combout\ & (((\SEG7~285_combout\)))) # (!\SEG7~287_combout\ & ((\SEG7~170_combout\) # ((\SEG7~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~170_combout\,
	datab => \SEG7~171_combout\,
	datac => \SEG7~285_combout\,
	datad => \SEG7~287_combout\,
	combout => \SEG7~173_combout\);

-- Location: LCCOMB_X61_Y45_N6
\SEG7~175\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~175_combout\ = (!Q(4) & (!\SEG7~174_combout\ & Q(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datac => \SEG7~174_combout\,
	datad => Q(5),
	combout => \SEG7~175_combout\);

-- Location: LCCOMB_X58_Y43_N14
\SEG7~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~104_combout\ = (Q(3) & ((Q(0)) # (Q(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(3),
	datad => Q(2),
	combout => \SEG7~104_combout\);

-- Location: LCCOMB_X56_Y46_N18
\SEG7~289\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~289_combout\ = ((Q(4) & (\SEG7~104_combout\)) # (!Q(4) & ((!Q(3))))) # (!Q(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datab => Q(5),
	datac => \SEG7~104_combout\,
	datad => Q(3),
	combout => \SEG7~289_combout\);

-- Location: LCCOMB_X56_Y46_N12
\SEG7~176\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~176_combout\ = (\D~12_combout\ & ((\Equal64~9_combout\) # ((\D~14_combout\ & !Q(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~14_combout\,
	datab => \D~12_combout\,
	datac => Q(5),
	datad => \Equal64~9_combout\,
	combout => \SEG7~176_combout\);

-- Location: LCCOMB_X56_Y46_N10
\SEG7~177\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~177_combout\ = (!\Equal64~24_combout\ & ((\SEG7~175_combout\) # ((\SEG7~176_combout\) # (!\SEG7~289_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~175_combout\,
	datab => \SEG7~289_combout\,
	datac => \Equal64~24_combout\,
	datad => \SEG7~176_combout\,
	combout => \SEG7~177_combout\);

-- Location: LCCOMB_X63_Y47_N28
\SEG7~178\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~178_combout\ = (((Q(1) & \SEG7~177_combout\)) # (!Q(2))) # (!Q(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(1),
	datac => \SEG7~177_combout\,
	datad => Q(2),
	combout => \SEG7~178_combout\);

-- Location: LCCOMB_X63_Y47_N18
\SEG7~179\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~179_combout\ = (Q(4) & (\SEG7~178_combout\)) # (!Q(4) & (((Q(1)) # (Q(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datab => \SEG7~178_combout\,
	datac => Q(1),
	datad => Q(2),
	combout => \SEG7~179_combout\);

-- Location: LCCOMB_X63_Y47_N24
\SEG7~277\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~277_combout\ = (Q(5) & (\SEG7~177_combout\)) # (!Q(5) & (((\SEG7~179_combout\) # (!Q(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => \SEG7~177_combout\,
	datac => Q(0),
	datad => \SEG7~179_combout\,
	combout => \SEG7~277_combout\);

-- Location: LCCOMB_X61_Y49_N12
\SEG7~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~57_combout\ = (Q(3) & (((!Q(5) & !Q(2))) # (!Q(4)))) # (!Q(3) & ((Q(5)) # ((Q(2)) # (Q(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(5),
	datac => Q(2),
	datad => Q(4),
	combout => \SEG7~57_combout\);

-- Location: LCCOMB_X61_Y49_N2
\SEG7~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~53_combout\ = ((Q(5) & (Q(2) $ (Q(4)))) # (!Q(5) & ((Q(4)) # (!Q(2))))) # (!Q(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(5),
	datac => Q(2),
	datad => Q(4),
	combout => \SEG7~53_combout\);

-- Location: LCCOMB_X61_Y49_N28
\SEG7~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~54_combout\ = (Q(3) & (((!Q(4)) # (!Q(2))))) # (!Q(3) & ((Q(5)) # ((Q(2)) # (Q(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(5),
	datac => Q(2),
	datad => Q(4),
	combout => \SEG7~54_combout\);

-- Location: LCCOMB_X61_Y49_N8
\SEG7~123\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~123_combout\ = (Q(1) & (((Q(0)) # (\SEG7~54_combout\)))) # (!Q(1) & (\SEG7~53_combout\ & (!Q(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datab => \SEG7~53_combout\,
	datac => Q(0),
	datad => \SEG7~54_combout\,
	combout => \SEG7~123_combout\);

-- Location: LCCOMB_X61_Y49_N6
\SEG7~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~56_combout\ = (Q(3) & (Q(4) $ (((Q(5)) # (Q(2)))))) # (!Q(3) & ((Q(4)) # (Q(5) $ (Q(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(5),
	datac => Q(2),
	datad => Q(4),
	combout => \SEG7~56_combout\);

-- Location: LCCOMB_X61_Y49_N22
\SEG7~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~124_combout\ = (\SEG7~123_combout\ & ((\SEG7~57_combout\) # ((!Q(0))))) # (!\SEG7~123_combout\ & (((Q(0) & \SEG7~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~57_combout\,
	datab => \SEG7~123_combout\,
	datac => Q(0),
	datad => \SEG7~56_combout\,
	combout => \SEG7~124_combout\);

-- Location: LCCOMB_X63_Y46_N12
\SEG7~295\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~295_combout\ = (Q(5) & ((Q(0)) # ((!Q(2)) # (!Q(1))))) # (!Q(5) & ((Q(2)) # ((Q(0) & !Q(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(1),
	datac => Q(5),
	datad => Q(2),
	combout => \SEG7~295_combout\);

-- Location: LCCOMB_X63_Y46_N22
\SEG7~296\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~296_combout\ = (\SEG7~295_combout\) # ((Q(4) & ((Q(1)) # (!Q(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~295_combout\,
	datab => Q(1),
	datac => Q(4),
	datad => Q(2),
	combout => \SEG7~296_combout\);

-- Location: LCCOMB_X63_Y46_N0
\SEG7~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~64_combout\ = (Q(2) & (((Q(0) & !Q(1))) # (!Q(4)))) # (!Q(2) & ((Q(0)) # ((Q(4)) # (!Q(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(2),
	datac => Q(1),
	datad => Q(4),
	combout => \SEG7~64_combout\);

-- Location: LCCOMB_X63_Y46_N16
\SEG7~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~63_combout\ = (Q(5) & (((!Q(4))) # (!Q(2)))) # (!Q(5) & (((\SEG7~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => Q(2),
	datac => Q(4),
	datad => \SEG7~64_combout\,
	combout => \SEG7~63_combout\);

-- Location: LCCOMB_X63_Y46_N30
\SEG7~288\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~288_combout\ = (Q(3) & ((\SEG7~63_combout\))) # (!Q(3) & (\SEG7~296_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~296_combout\,
	datac => Q(3),
	datad => \SEG7~63_combout\,
	combout => \SEG7~288_combout\);

-- Location: LCCOMB_X63_Y47_N12
\SEG7~181\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~181_combout\ = (!Q(0) & ((Q(3) & ((!Q(4)) # (!Q(2)))) # (!Q(3) & ((Q(2)) # (Q(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(2),
	datac => Q(0),
	datad => Q(4),
	combout => \SEG7~181_combout\);

-- Location: LCCOMB_X63_Y47_N26
\SEG7~182\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~182_combout\ = (\SEG7~181_combout\) # ((Q(0) & \SEG7~179_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~181_combout\,
	datac => Q(0),
	datad => \SEG7~179_combout\,
	combout => \SEG7~182_combout\);

-- Location: LCCOMB_X63_Y47_N6
\SEG7~278\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~278_combout\ = (Q(5) & (\SEG7~177_combout\)) # (!Q(5) & ((\SEG7~182_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEG7~177_combout\,
	datac => \SEG7~182_combout\,
	datad => Q(5),
	combout => \SEG7~278_combout\);

-- Location: LCCOMB_X59_Y46_N14
\SEG7~186\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~186_combout\ = (Q(2) & (((!Q(4)) # (!Q(3))))) # (!Q(2) & ((Q(4)) # ((!\SEG7~156_combout\ & Q(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => \SEG7~156_combout\,
	datac => Q(3),
	datad => Q(4),
	combout => \SEG7~186_combout\);

-- Location: LCCOMB_X59_Y46_N8
\SEG7~183\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~183_combout\ = (!Q(3) & (((Q(1)) # (Q(4))) # (!Q(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => Q(3),
	datac => Q(1),
	datad => Q(4),
	combout => \SEG7~183_combout\);

-- Location: LCCOMB_X59_Y46_N22
\SEG7~184\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~184_combout\ = (\SEG7~183_combout\) # ((Q(3) & ((!\SEG7~148_combout\) # (!Q(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => \SEG7~148_combout\,
	datac => Q(3),
	datad => \SEG7~183_combout\,
	combout => \SEG7~184_combout\);

-- Location: LCCOMB_X59_Y46_N12
\SEG7~185\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~185_combout\ = (Q(0) & (((\SEG7~184_combout\)))) # (!Q(0) & (((!\SEG7~286_combout\)) # (!\SEG7~172_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => \SEG7~172_combout\,
	datac => \SEG7~184_combout\,
	datad => \SEG7~286_combout\,
	combout => \SEG7~185_combout\);

-- Location: LCCOMB_X59_Y46_N4
\SEG7~187\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~187_combout\ = (Q(5) & ((\SEG7~185_combout\))) # (!Q(5) & (\SEG7~186_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datac => \SEG7~186_combout\,
	datad => \SEG7~185_combout\,
	combout => \SEG7~187_combout\);

-- Location: LCCOMB_X61_Y43_N2
\SEG7~283\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~283_combout\ = (Q(2) & (Q(4))) # (!Q(2) & (((!Q(5)) # (!Q(3))) # (!Q(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => Q(4),
	datac => Q(3),
	datad => Q(5),
	combout => \SEG7~283_combout\);

-- Location: LCCOMB_X61_Y43_N28
\SEG7~188\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~188_combout\ = ((Q(2) & ((!Q(3)) # (!Q(4)))) # (!Q(2) & ((Q(4)) # (Q(3))))) # (!Q(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => Q(4),
	datac => Q(3),
	datad => Q(0),
	combout => \SEG7~188_combout\);

-- Location: LCCOMB_X61_Y43_N22
\SEG7~189\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~189_combout\ = (Q(2) & (((!Q(0)) # (!Q(3))) # (!Q(4)))) # (!Q(2) & ((Q(4) & ((Q(3)) # (Q(0)))) # (!Q(4) & (Q(3) $ (!Q(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => Q(4),
	datac => Q(3),
	datad => Q(0),
	combout => \SEG7~189_combout\);

-- Location: LCCOMB_X61_Y43_N12
\SEG7~190\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~190_combout\ = (Q(1) & (!Q(5) & ((\SEG7~189_combout\)))) # (!Q(1) & (((\SEG7~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => \SEG7~188_combout\,
	datac => Q(1),
	datad => \SEG7~189_combout\,
	combout => \SEG7~190_combout\);

-- Location: LCCOMB_X61_Y43_N6
\SEG7~191\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~191_combout\ = (\SEG7~190_combout\) # ((Q(5) & ((\SEG7~283_combout\) # (!\D~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => \SEG7~283_combout\,
	datac => \D~13_combout\,
	datad => \SEG7~190_combout\,
	combout => \SEG7~191_combout\);

-- Location: LCCOMB_X56_Y47_N6
\SEG7~195\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~195_combout\ = (Q(2) & (Q(0) & ((!Q(3)) # (!Q(4))))) # (!Q(2) & ((Q(4) & (Q(0))) # (!Q(4) & ((Q(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => Q(0),
	datac => Q(4),
	datad => Q(3),
	combout => \SEG7~195_combout\);

-- Location: LCCOMB_X56_Y47_N12
\SEG7~196\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~196_combout\ = (Q(5) & (!Q(0) & (\SEG7~172_combout\))) # (!Q(5) & (Q(0) $ (((\SEG7~195_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(5),
	datac => \SEG7~172_combout\,
	datad => \SEG7~195_combout\,
	combout => \SEG7~196_combout\);

-- Location: LCCOMB_X59_Y47_N22
\Equal64~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal64~21_combout\ = (Q(1) & (!Q(0) & \Equal64~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(1),
	datac => Q(0),
	datad => \Equal64~11_combout\,
	combout => \Equal64~21_combout\);

-- Location: LCCOMB_X56_Y47_N8
\SEG7~192\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~192_combout\ = Q(3) $ (((Q(0)) # ((Q(1)) # (Q(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(3),
	datac => Q(1),
	datad => Q(2),
	combout => \SEG7~192_combout\);

-- Location: LCCOMB_X56_Y47_N18
\SEG7~193\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~193_combout\ = (\Equal64~21_combout\ & (\SEG7~192_combout\ & ((!\Equal64~15_combout\) # (!\D~15_combout\)))) # (!\Equal64~21_combout\ & (((!\Equal64~15_combout\) # (!\D~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal64~21_combout\,
	datab => \SEG7~192_combout\,
	datac => \D~15_combout\,
	datad => \Equal64~15_combout\,
	combout => \SEG7~193_combout\);

-- Location: LCCOMB_X56_Y47_N20
\SEG7~194\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~194_combout\ = ((\SEG7~193_combout\) # ((\Equal64~13_combout\ & \D~15_combout\))) # (!\SEG7~166_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal64~13_combout\,
	datab => \D~15_combout\,
	datac => \SEG7~166_combout\,
	datad => \SEG7~193_combout\,
	combout => \SEG7~194_combout\);

-- Location: LCCOMB_X56_Y47_N10
\SEG7~197\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~197_combout\ = (Q(5) & (\SEG7~194_combout\ & ((!Q(1)) # (!\SEG7~196_combout\)))) # (!Q(5) & (\SEG7~196_combout\ & ((Q(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~196_combout\,
	datab => \SEG7~194_combout\,
	datac => Q(5),
	datad => Q(1),
	combout => \SEG7~197_combout\);

-- Location: LCCOMB_X56_Y47_N28
\SEG7~198\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~198_combout\ = (\SEG7~197_combout\ & (((Q(5))))) # (!\SEG7~197_combout\ & (((\D~13_combout\ & \SEG7~137_combout\)) # (!Q(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~197_combout\,
	datab => \D~13_combout\,
	datac => Q(5),
	datad => \SEG7~137_combout\,
	combout => \SEG7~198_combout\);

-- Location: LCCOMB_X59_Y44_N8
\SEG7~200\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~200_combout\ = (Q(5) & (Q(2) $ (((Q(0)) # (!Q(1)))))) # (!Q(5) & (Q(0) & (Q(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => Q(0),
	datac => Q(1),
	datad => Q(2),
	combout => \SEG7~200_combout\);

-- Location: LCCOMB_X60_Y44_N2
\SEG7~199\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~199_combout\ = (Q(1) & ((Q(5) & (!Q(0) & Q(2))) # (!Q(5) & ((!Q(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => Q(0),
	datac => Q(2),
	datad => Q(1),
	combout => \SEG7~199_combout\);

-- Location: LCCOMB_X60_Y44_N24
\SEG7~201\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~201_combout\ = (Q(4) & (((\SEG7~199_combout\) # (!\SEG7~200_combout\)) # (!Q(3)))) # (!Q(4) & ((Q(3) $ (!\SEG7~200_combout\)) # (!\SEG7~199_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => \SEG7~200_combout\,
	datac => Q(4),
	datad => \SEG7~199_combout\,
	combout => \SEG7~201_combout\);

-- Location: LCCOMB_X59_Y47_N28
\SEG7~202\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~202_combout\ = ((Q(3)) # (!Q(0))) # (!Q(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(2),
	datac => Q(0),
	datad => Q(3),
	combout => \SEG7~202_combout\);

-- Location: LCCOMB_X59_Y47_N12
\SEG7~293\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~293_combout\ = (Q(2) & ((Q(1) $ (!Q(3))) # (!Q(4)))) # (!Q(2) & (!Q(3) & ((Q(1)) # (Q(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => Q(1),
	datac => Q(4),
	datad => Q(3),
	combout => \SEG7~293_combout\);

-- Location: LCCOMB_X59_Y47_N26
\SEG7~294\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~294_combout\ = (Q(5) & (Q(1))) # (!Q(5) & (((\SEG7~293_combout\) # (!Q(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => Q(1),
	datac => Q(0),
	datad => \SEG7~293_combout\,
	combout => \SEG7~294_combout\);

-- Location: LCCOMB_X59_Y47_N2
\SEG7~203\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~203_combout\ = (Q(3) & (!\Equal64~21_combout\)) # (!Q(3) & (((\SEG7~157_combout\) # (!Q(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => \Equal64~21_combout\,
	datac => \SEG7~157_combout\,
	datad => Q(0),
	combout => \SEG7~203_combout\);

-- Location: LCCOMB_X59_Y47_N20
\SEG7~204\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~204_combout\ = (Q(5) & ((\SEG7~294_combout\ & ((\SEG7~203_combout\))) # (!\SEG7~294_combout\ & (\SEG7~202_combout\)))) # (!Q(5) & (((\SEG7~294_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => \SEG7~202_combout\,
	datac => \SEG7~294_combout\,
	datad => \SEG7~203_combout\,
	combout => \SEG7~204_combout\);

-- Location: LCCOMB_X61_Y43_N18
\SEG7~212\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~212_combout\ = (!Q(3) & (!Q(4) & ((\D~18_combout\) # (!Q(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(4),
	datac => Q(0),
	datad => \D~18_combout\,
	combout => \SEG7~212_combout\);

-- Location: LCCOMB_X61_Y43_N4
\SEG7~213\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~213_combout\ = (\SEG7~212_combout\) # ((!Q(5) & ((\SEG7~152_combout\) # (!Q(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~152_combout\,
	datab => \SEG7~212_combout\,
	datac => Q(0),
	datad => Q(5),
	combout => \SEG7~213_combout\);

-- Location: LCCOMB_X59_Y47_N10
\SEG7~205\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~205_combout\ = (Q(4) & (((!Q(3))))) # (!Q(4) & ((Q(3)) # ((Q(2) & Q(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => Q(1),
	datac => Q(4),
	datad => Q(3),
	combout => \SEG7~205_combout\);

-- Location: LCCOMB_X59_Y47_N24
\SEG7~206\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~206_combout\ = Q(4) $ (Q(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Q(4),
	datad => Q(3),
	combout => \SEG7~206_combout\);

-- Location: LCCOMB_X59_Y47_N18
\SEG7~207\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~207_combout\ = (Q(3) & (\Equal64~11_combout\ & (!Q(2) & !Q(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => \Equal64~11_combout\,
	datac => Q(2),
	datad => Q(1),
	combout => \SEG7~207_combout\);

-- Location: LCCOMB_X59_Y47_N4
\SEG7~208\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~208_combout\ = (Q(0) & (\SEG7~205_combout\)) # (!Q(0) & (((\SEG7~206_combout\) # (\SEG7~207_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~205_combout\,
	datab => \SEG7~206_combout\,
	datac => Q(0),
	datad => \SEG7~207_combout\,
	combout => \SEG7~208_combout\);

-- Location: LCCOMB_X61_Y43_N26
\SEG7~214\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~214_combout\ = (\SEG7~213_combout\) # ((!\SEG7~172_combout\ & (\SEG7~208_combout\ & Q(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~172_combout\,
	datab => \SEG7~213_combout\,
	datac => \SEG7~208_combout\,
	datad => Q(5),
	combout => \SEG7~214_combout\);

-- Location: LCCOMB_X61_Y43_N10
\SEG7~210\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~210_combout\ = (Q(2) & (((Q(5))))) # (!Q(2) & ((Q(4) & ((Q(5)))) # (!Q(4) & (Q(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => Q(4),
	datac => Q(3),
	datad => Q(5),
	combout => \SEG7~210_combout\);

-- Location: LCCOMB_X61_Y43_N8
\SEG7~209\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~209_combout\ = (Q(2) & (!Q(5) & ((!Q(3)) # (!Q(4))))) # (!Q(2) & (Q(5) $ (((Q(4)) # (Q(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => Q(4),
	datac => Q(3),
	datad => Q(5),
	combout => \SEG7~209_combout\);

-- Location: LCCOMB_X61_Y43_N20
\SEG7~211\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~211_combout\ = (\SEG7~210_combout\ & ((\SEG7~209_combout\ & ((Q(0)))) # (!\SEG7~209_combout\ & (\SEG7~208_combout\)))) # (!\SEG7~210_combout\ & (((\SEG7~209_combout\) # (!Q(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~210_combout\,
	datab => \SEG7~208_combout\,
	datac => Q(0),
	datad => \SEG7~209_combout\,
	combout => \SEG7~211_combout\);

-- Location: LCCOMB_X61_Y43_N0
\SEG7~215\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~215_combout\ = (Q(1) & ((\SEG7~211_combout\))) # (!Q(1) & (\SEG7~214_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~214_combout\,
	datac => Q(1),
	datad => \SEG7~211_combout\,
	combout => \SEG7~215_combout\);

-- Location: LCCOMB_X62_Y46_N28
\SEG7~216\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~216_combout\ = (\SEG7~158_combout\ & ((Q(5)) # ((Q(3) & \D~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => \SEG7~158_combout\,
	datac => \D~12_combout\,
	datad => Q(5),
	combout => \SEG7~216_combout\);

-- Location: LCCOMB_X62_Y46_N4
\SEG7~218\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~218_combout\ = (Q(3) & (!Q(1) & (Q(4) $ (Q(2))))) # (!Q(3) & ((Q(4)) # ((Q(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(4),
	datac => Q(1),
	datad => Q(2),
	combout => \SEG7~218_combout\);

-- Location: LCCOMB_X62_Y46_N30
\SEG7~217\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~217_combout\ = (!Q(0) & (((Q(4)) # (!Q(1))) # (!\Equal64~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal64~15_combout\,
	datab => Q(0),
	datac => Q(1),
	datad => Q(4),
	combout => \SEG7~217_combout\);

-- Location: LCCOMB_X62_Y46_N22
\SEG7~219\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~219_combout\ = (\SEG7~216_combout\) # ((!Q(5) & ((\SEG7~218_combout\) # (\SEG7~217_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~216_combout\,
	datab => \SEG7~218_combout\,
	datac => \SEG7~217_combout\,
	datad => Q(5),
	combout => \SEG7~219_combout\);

-- Location: LCCOMB_X61_Y43_N30
\SEG7~220\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~220_combout\ = (Q(5) & ((\SEG7~172_combout\) # ((\SEG7~208_combout\)))) # (!Q(5) & (((\SEG7~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~172_combout\,
	datab => \SEG7~188_combout\,
	datac => \SEG7~208_combout\,
	datad => Q(5),
	combout => \SEG7~220_combout\);

-- Location: LCCOMB_X61_Y43_N16
\SEG7~221\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~221_combout\ = (Q(1) & ((\SEG7~211_combout\))) # (!Q(1) & (\SEG7~220_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~220_combout\,
	datac => Q(1),
	datad => \SEG7~211_combout\,
	combout => \SEG7~221_combout\);

-- Location: LCCOMB_X56_Y47_N26
\SEG7~222\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~222_combout\ = (Q(4) & (((Q(3))))) # (!Q(4) & (Q(0) & (Q(3) $ (!Q(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(3),
	datac => Q(1),
	datad => Q(4),
	combout => \SEG7~222_combout\);

-- Location: LCCOMB_X56_Y47_N4
\SEG7~223\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~223_combout\ = (Q(3) & ((Q(4)) # ((Q(0) & !Q(1))))) # (!Q(3) & (Q(1) & (Q(0) $ (!Q(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(3),
	datac => Q(1),
	datad => Q(4),
	combout => \SEG7~223_combout\);

-- Location: LCCOMB_X56_Y47_N14
\SEG7~224\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~224_combout\ = (Q(5) & ((\SEG7~223_combout\) # (Q(2)))) # (!Q(5) & (\SEG7~223_combout\ & Q(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(5),
	datac => \SEG7~223_combout\,
	datad => Q(2),
	combout => \SEG7~224_combout\);

-- Location: LCCOMB_X56_Y47_N22
\SEG7~291\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~291_combout\ = (Q(0)) # ((Q(2) & ((Q(5)) # (!Q(1)))) # (!Q(2) & ((Q(1)) # (!Q(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => Q(5),
	datac => Q(1),
	datad => Q(0),
	combout => \SEG7~291_combout\);

-- Location: LCCOMB_X56_Y47_N24
\SEG7~292\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~292_combout\ = (\SEG7~291_combout\ & ((\SEG7~194_combout\) # (!Q(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~291_combout\,
	datab => \SEG7~194_combout\,
	datac => Q(5),
	combout => \SEG7~292_combout\);

-- Location: LCCOMB_X56_Y47_N0
\SEG7~225\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~225_combout\ = (\SEG7~222_combout\ & ((\SEG7~223_combout\ & ((\SEG7~292_combout\))) # (!\SEG7~223_combout\ & (!\SEG7~224_combout\)))) # (!\SEG7~222_combout\ & (((\SEG7~224_combout\)) # (!\SEG7~223_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~222_combout\,
	datab => \SEG7~223_combout\,
	datac => \SEG7~224_combout\,
	datad => \SEG7~292_combout\,
	combout => \SEG7~225_combout\);

-- Location: LCCOMB_X56_Y47_N30
\SEG7~229\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~229_combout\ = (\D~16_combout\ & ((\SEG7~137_combout\) # ((\SEG7~194_combout\ & !\SEG7~172_combout\)))) # (!\D~16_combout\ & (((\SEG7~194_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~137_combout\,
	datab => \SEG7~194_combout\,
	datac => \SEG7~172_combout\,
	datad => \D~16_combout\,
	combout => \SEG7~229_combout\);

-- Location: LCCOMB_X59_Y46_N0
\SEG7~227\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~227_combout\ = (Q(0) & (!Q(1) & (Q(3) & !Q(4)))) # (!Q(0) & (Q(1) & (Q(3) $ (!Q(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(1),
	datac => Q(3),
	datad => Q(4),
	combout => \SEG7~227_combout\);

-- Location: LCCOMB_X59_Y46_N30
\SEG7~226\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~226_combout\ = (Q(3) & !Q(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Q(3),
	datad => Q(0),
	combout => \SEG7~226_combout\);

-- Location: LCCOMB_X59_Y46_N26
\SEG7~228\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~228_combout\ = (!Q(5) & ((Q(2) $ (\SEG7~226_combout\)) # (!\SEG7~227_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => \SEG7~227_combout\,
	datac => \SEG7~226_combout\,
	datad => Q(5),
	combout => \SEG7~228_combout\);

-- Location: LCCOMB_X56_Y47_N16
\SEG7~230\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~230_combout\ = (\SEG7~228_combout\) # ((\SEG7~229_combout\ & Q(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~229_combout\,
	datab => \SEG7~228_combout\,
	datac => Q(5),
	combout => \SEG7~230_combout\);

-- Location: LCCOMB_X59_Y46_N16
\SEG7~231\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~231_combout\ = (\SEG7~228_combout\) # ((Q(5) & ((\SEG7~184_combout\) # (!Q(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~184_combout\,
	datab => \SEG7~228_combout\,
	datac => Q(0),
	datad => Q(5),
	combout => \SEG7~231_combout\);

-- Location: LCCOMB_X61_Y49_N14
\SEG7~232\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~232_combout\ = (Q(3) & (!Q(5) & (!Q(2) & !Q(4)))) # (!Q(3) & ((Q(5) & (Q(2) $ (Q(4)))) # (!Q(5) & (Q(2) & Q(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(5),
	datac => Q(2),
	datad => Q(4),
	combout => \SEG7~232_combout\);

-- Location: LCCOMB_X61_Y49_N4
\SEG7~279\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~279_combout\ = ((Q(0)) # (!Q(1))) # (!\SEG7~232_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEG7~232_combout\,
	datac => Q(0),
	datad => Q(1),
	combout => \SEG7~279_combout\);

-- Location: LCCOMB_X60_Y46_N12
\SEG7~239\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~239_combout\ = (Q(5) & ((Q(3)) # (Q(4) $ (!Q(2))))) # (!Q(5) & (Q(4) $ (((Q(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => Q(4),
	datac => Q(3),
	datad => Q(2),
	combout => \SEG7~239_combout\);

-- Location: LCCOMB_X60_Y46_N24
\SEG7~235\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~235_combout\ = (Q(2) & (((!Q(3))))) # (!Q(2) & ((Q(3) & ((Q(0)))) # (!Q(3) & (Q(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => Q(1),
	datac => Q(3),
	datad => Q(0),
	combout => \SEG7~235_combout\);

-- Location: LCCOMB_X60_Y46_N26
\SEG7~240\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~240_combout\ = (\SEG7~239_combout\ & ((\SEG7~235_combout\) # ((!\SEG7~166_combout\)))) # (!\SEG7~239_combout\ & (((!Q(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~239_combout\,
	datab => \SEG7~235_combout\,
	datac => \SEG7~166_combout\,
	datad => Q(0),
	combout => \SEG7~240_combout\);

-- Location: LCCOMB_X60_Y46_N10
\SEG7~234\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~234_combout\ = (!Q(4) & ((Q(0)) # (!Q(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(2),
	datac => Q(4),
	datad => Q(0),
	combout => \SEG7~234_combout\);

-- Location: LCCOMB_X60_Y46_N20
\SEG7~280\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~280_combout\ = (\SEG7~234_combout\) # ((Q(4) & (Q(5) & \SEG7~235_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~234_combout\,
	datab => Q(4),
	datac => Q(5),
	datad => \SEG7~235_combout\,
	combout => \SEG7~280_combout\);

-- Location: LCCOMB_X60_Y46_N22
\SEG7~236\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~236_combout\ = (Q(3) & (((Q(5))))) # (!Q(3) & ((Q(5) & ((\SEG7~280_combout\))) # (!Q(5) & (!\SEG7~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => \SEG7~157_combout\,
	datac => Q(5),
	datad => \SEG7~280_combout\,
	combout => \SEG7~236_combout\);

-- Location: LCCOMB_X60_Y46_N16
\SEG7~233\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~233_combout\ = (Q(2) & (!Q(4))) # (!Q(2) & ((Q(4)) # (Q(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(2),
	datac => Q(4),
	datad => Q(0),
	combout => \SEG7~233_combout\);

-- Location: LCCOMB_X60_Y46_N28
\SEG7~237\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~237_combout\ = ((Q(5) & \SEG7~235_combout\)) # (!Q(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(4),
	datac => Q(5),
	datad => \SEG7~235_combout\,
	combout => \SEG7~237_combout\);

-- Location: LCCOMB_X60_Y46_N6
\SEG7~238\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~238_combout\ = (\SEG7~236_combout\ & (((\SEG7~237_combout\) # (!Q(3))))) # (!\SEG7~236_combout\ & (\SEG7~233_combout\ & (Q(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~236_combout\,
	datab => \SEG7~233_combout\,
	datac => Q(3),
	datad => \SEG7~237_combout\,
	combout => \SEG7~238_combout\);

-- Location: LCCOMB_X60_Y46_N8
\SEG7~241\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~241_combout\ = (Q(1) & ((\SEG7~238_combout\))) # (!Q(1) & (\SEG7~240_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datac => \SEG7~240_combout\,
	datad => \SEG7~238_combout\,
	combout => \SEG7~241_combout\);

-- Location: LCCOMB_X59_Y44_N28
\SEG7~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~75_combout\ = (Q(0)) # ((Q(5) & ((Q(2)))) # (!Q(5) & ((!Q(2)) # (!Q(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => Q(0),
	datac => Q(1),
	datad => Q(2),
	combout => \SEG7~75_combout\);

-- Location: LCCOMB_X59_Y44_N6
\SEG7~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~71_combout\ = (Q(5) & ((Q(0) $ (!Q(1))) # (!Q(2)))) # (!Q(5) & ((Q(0)) # ((Q(2)) # (!Q(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => Q(0),
	datac => Q(1),
	datad => Q(2),
	combout => \SEG7~71_combout\);

-- Location: LCCOMB_X59_Y44_N16
\SEG7~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~72_combout\ = (Q(0)) # ((Q(1)) # (Q(5) $ (!Q(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => Q(0),
	datac => Q(1),
	datad => Q(2),
	combout => \SEG7~72_combout\);

-- Location: LCCOMB_X59_Y44_N14
\SEG7~125\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~125_combout\ = (Q(3) & (((Q(4))))) # (!Q(3) & ((Q(4) & ((\SEG7~72_combout\))) # (!Q(4) & (\SEG7~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~71_combout\,
	datab => \SEG7~72_combout\,
	datac => Q(3),
	datad => Q(4),
	combout => \SEG7~125_combout\);

-- Location: LCCOMB_X59_Y44_N10
\SEG7~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~74_combout\ = (Q(5)) # ((Q(2)) # (Q(0) $ (!Q(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => Q(0),
	datac => Q(1),
	datad => Q(2),
	combout => \SEG7~74_combout\);

-- Location: LCCOMB_X59_Y44_N12
\SEG7~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~126_combout\ = (Q(3) & ((\SEG7~125_combout\ & (\SEG7~75_combout\)) # (!\SEG7~125_combout\ & ((\SEG7~74_combout\))))) # (!Q(3) & (((\SEG7~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => \SEG7~75_combout\,
	datac => \SEG7~125_combout\,
	datad => \SEG7~74_combout\,
	combout => \SEG7~126_combout\);

-- Location: LCCOMB_X60_Y46_N30
\SEG7~242\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~242_combout\ = (!Q(0) & (((!Q(3) & !Q(4))) # (!Q(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(4),
	datac => Q(5),
	datad => Q(0),
	combout => \SEG7~242_combout\);

-- Location: LCCOMB_X60_Y46_N14
\SEG7~281\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~281_combout\ = (Q(4) & ((\SEG7~235_combout\) # ((!Q(2) & !Q(3))))) # (!Q(4) & (((Q(3))) # (!Q(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => Q(4),
	datac => Q(3),
	datad => \SEG7~235_combout\,
	combout => \SEG7~281_combout\);

-- Location: LCCOMB_X60_Y46_N4
\SEG7~244\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~244_combout\ = (\SEG7~242_combout\) # ((Q(5) & (\SEG7~281_combout\)) # (!Q(5) & ((\SEG7~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~242_combout\,
	datab => \SEG7~281_combout\,
	datac => Q(5),
	datad => \SEG7~152_combout\,
	combout => \SEG7~244_combout\);

-- Location: LCCOMB_X60_Y46_N18
\SEG7~245\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~245_combout\ = (Q(1) & ((\SEG7~238_combout\))) # (!Q(1) & (\SEG7~244_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datac => \SEG7~244_combout\,
	datad => \SEG7~238_combout\,
	combout => \SEG7~245_combout\);

-- Location: LCCOMB_X60_Y44_N30
\SEG7~247\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~247_combout\ = (Q(5) & ((Q(3) $ (!Q(2))) # (!Q(4)))) # (!Q(5) & (Q(4) $ ((Q(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => Q(4),
	datac => Q(3),
	datad => Q(2),
	combout => \SEG7~247_combout\);

-- Location: LCCOMB_X60_Y43_N16
\SEG7~248\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~248_combout\ = (Q(0) & (((\SEG7~148_combout\) # (Q(1))))) # (!Q(0) & (!\SEG7~247_combout\ & ((!Q(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~247_combout\,
	datab => \SEG7~148_combout\,
	datac => Q(0),
	datad => Q(1),
	combout => \SEG7~248_combout\);

-- Location: LCCOMB_X61_Y45_N20
\SEG7~246\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~246_combout\ = (Q(4) & (Q(3) $ (((!Q(5)) # (!Q(2)))))) # (!Q(4) & ((Q(2) & ((Q(3)) # (!Q(5)))) # (!Q(2) & ((Q(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datab => Q(2),
	datac => Q(3),
	datad => Q(5),
	combout => \SEG7~246_combout\);

-- Location: LCCOMB_X61_Y45_N30
\SEG7~249\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~249_combout\ = (Q(4) & ((Q(2) $ (!Q(5))) # (!Q(3)))) # (!Q(4) & ((Q(3)) # ((Q(2) & Q(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datab => Q(2),
	datac => Q(3),
	datad => Q(5),
	combout => \SEG7~249_combout\);

-- Location: LCCOMB_X61_Y45_N0
\SEG7~250\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~250_combout\ = (\SEG7~248_combout\ & (((!Q(1)) # (!\SEG7~249_combout\)))) # (!\SEG7~248_combout\ & (!\SEG7~246_combout\ & ((Q(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~248_combout\,
	datab => \SEG7~246_combout\,
	datac => \SEG7~249_combout\,
	datad => Q(1),
	combout => \SEG7~250_combout\);

-- Location: LCCOMB_X62_Y44_N12
\SEG7~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~79_combout\ = (Q(3) & (Q(0) $ (((Q(1)) # (Q(4)))))) # (!Q(3) & (!Q(4) & ((Q(1)) # (!Q(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(1),
	datac => Q(4),
	datad => Q(3),
	combout => \SEG7~79_combout\);

-- Location: LCCOMB_X62_Y44_N22
\SEG7~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~80_combout\ = (Q(4) & (Q(3) & ((Q(1)) # (!Q(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(1),
	datac => Q(4),
	datad => Q(3),
	combout => \SEG7~80_combout\);

-- Location: LCCOMB_X62_Y44_N20
\SEG7~127\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~127_combout\ = (Q(2) & (((\SEG7~80_combout\) # (Q(5))))) # (!Q(2) & (\SEG7~79_combout\ & ((!Q(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~79_combout\,
	datab => Q(2),
	datac => \SEG7~80_combout\,
	datad => Q(5),
	combout => \SEG7~127_combout\);

-- Location: LCCOMB_X62_Y44_N14
\SEG7~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~83_combout\ = (Q(3) & (((Q(4))))) # (!Q(3) & (Q(0) $ (((Q(1)) # (Q(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(1),
	datac => Q(4),
	datad => Q(3),
	combout => \SEG7~83_combout\);

-- Location: LCCOMB_X62_Y44_N28
\SEG7~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~82_combout\ = (Q(3) & (Q(4) & !Q(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datac => Q(4),
	datad => Q(0),
	combout => \SEG7~82_combout\);

-- Location: LCCOMB_X62_Y44_N18
\SEG7~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~128_combout\ = (Q(5) & ((\SEG7~127_combout\ & (\SEG7~83_combout\)) # (!\SEG7~127_combout\ & ((\SEG7~82_combout\))))) # (!Q(5) & (\SEG7~127_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => \SEG7~127_combout\,
	datac => \SEG7~83_combout\,
	datad => \SEG7~82_combout\,
	combout => \SEG7~128_combout\);

-- Location: LCCOMB_X63_Y46_N2
\SEG7~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~35_combout\ = (Q(4) & ((Q(2)) # (!Q(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(2),
	datac => Q(4),
	datad => Q(0),
	combout => \SEG7~35_combout\);

-- Location: LCCOMB_X63_Y46_N4
\SEG7~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~34_combout\ = (Q(0) & (!Q(1) & (!Q(4) & Q(2)))) # (!Q(0) & ((Q(4) $ (!Q(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(1),
	datac => Q(4),
	datad => Q(2),
	combout => \SEG7~34_combout\);

-- Location: LCCOMB_X63_Y46_N20
\SEG7~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~31_combout\ = (!Q(4) & (((!Q(0) & Q(1))) # (!Q(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(1),
	datac => Q(4),
	datad => Q(2),
	combout => \SEG7~31_combout\);

-- Location: LCCOMB_X63_Y46_N18
\SEG7~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~32_combout\ = (Q(0) & ((Q(4) & ((Q(2)))) # (!Q(4) & (!Q(1) & !Q(2))))) # (!Q(0) & (((Q(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(1),
	datac => Q(4),
	datad => Q(2),
	combout => \SEG7~32_combout\);

-- Location: LCCOMB_X63_Y46_N24
\SEG7~119\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~119_combout\ = (Q(5) & (((Q(3))))) # (!Q(5) & ((Q(3) & ((\SEG7~32_combout\))) # (!Q(3) & (\SEG7~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => \SEG7~31_combout\,
	datac => Q(3),
	datad => \SEG7~32_combout\,
	combout => \SEG7~119_combout\);

-- Location: LCCOMB_X63_Y46_N6
\SEG7~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~120_combout\ = (Q(5) & ((\SEG7~119_combout\ & (\SEG7~35_combout\)) # (!\SEG7~119_combout\ & ((\SEG7~34_combout\))))) # (!Q(5) & (((\SEG7~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => \SEG7~35_combout\,
	datac => \SEG7~34_combout\,
	datad => \SEG7~119_combout\,
	combout => \SEG7~120_combout\);

-- Location: LCCOMB_X63_Y46_N14
\SEG7~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~87_combout\ = (!Q(4) & ((Q(0) $ (!Q(1))) # (!Q(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(1),
	datac => Q(4),
	datad => Q(2),
	combout => \SEG7~87_combout\);

-- Location: LCCOMB_X63_Y46_N28
\SEG7~129\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~129_combout\ = (Q(3) & (((Q(5)) # (\SEG7~32_combout\)))) # (!Q(3) & (\SEG7~87_combout\ & (!Q(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => \SEG7~87_combout\,
	datac => Q(5),
	datad => \SEG7~32_combout\,
	combout => \SEG7~129_combout\);

-- Location: LCCOMB_X63_Y46_N8
\SEG7~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~90_combout\ = (Q(0) & (!Q(4) & (Q(2) $ (Q(1))))) # (!Q(0) & (Q(2) & ((Q(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(2),
	datac => Q(1),
	datad => Q(4),
	combout => \SEG7~90_combout\);

-- Location: LCCOMB_X63_Y46_N10
\SEG7~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~91_combout\ = (!Q(2) & (Q(4) & !Q(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(2),
	datac => Q(4),
	datad => Q(0),
	combout => \SEG7~91_combout\);

-- Location: LCCOMB_X63_Y46_N26
\SEG7~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~130_combout\ = (Q(5) & ((\SEG7~129_combout\ & ((\SEG7~91_combout\))) # (!\SEG7~129_combout\ & (\SEG7~90_combout\)))) # (!Q(5) & (\SEG7~129_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => \SEG7~129_combout\,
	datac => \SEG7~90_combout\,
	datad => \SEG7~91_combout\,
	combout => \SEG7~130_combout\);

-- Location: LCCOMB_X62_Y46_N26
\SEG7~252\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~252_combout\ = (!Q(3) & ((Q(1)) # (Q(5) $ (Q(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => Q(1),
	datac => Q(2),
	datad => Q(3),
	combout => \SEG7~252_combout\);

-- Location: LCCOMB_X62_Y46_N0
\SEG7~253\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~253_combout\ = (Q(1) & (Q(2) $ (((Q(3)) # (!Q(5)))))) # (!Q(1) & (!Q(5) & ((!Q(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => Q(1),
	datac => Q(2),
	datad => Q(3),
	combout => \SEG7~253_combout\);

-- Location: LCCOMB_X62_Y46_N14
\SEG7~254\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~254_combout\ = (!Q(4) & ((Q(0) & (\SEG7~252_combout\)) # (!Q(0) & ((\SEG7~253_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~252_combout\,
	datab => \SEG7~253_combout\,
	datac => Q(0),
	datad => Q(4),
	combout => \SEG7~254_combout\);

-- Location: LCCOMB_X61_Y46_N14
\SEG7~255\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~255_combout\ = (Q(4) & ((\SEG7~226_combout\) # ((\SEG7~165_combout\ & \D~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~226_combout\,
	datab => \SEG7~165_combout\,
	datac => \D~12_combout\,
	datad => Q(4),
	combout => \SEG7~255_combout\);

-- Location: LCCOMB_X62_Y46_N12
\SEG7~251\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~251_combout\ = (\SEG7~166_combout\ & (!Q(0) & ((\Equal64~15_combout\) # (\SEG7~243_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~166_combout\,
	datab => Q(0),
	datac => \Equal64~15_combout\,
	datad => \SEG7~243_combout\,
	combout => \SEG7~251_combout\);

-- Location: LCCOMB_X62_Y46_N16
\SEG7~256\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~256_combout\ = (\SEG7~287_combout\ & (((\SEG7~251_combout\)))) # (!\SEG7~287_combout\ & ((\SEG7~254_combout\) # ((\SEG7~255_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~287_combout\,
	datab => \SEG7~254_combout\,
	datac => \SEG7~255_combout\,
	datad => \SEG7~251_combout\,
	combout => \SEG7~256_combout\);

-- Location: LCCOMB_X62_Y46_N8
\SEG7~258\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~258_combout\ = (!Q(4) & ((Q(2)) # ((Q(1)) # (!Q(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => Q(4),
	datac => Q(1),
	datad => Q(0),
	combout => \SEG7~258_combout\);

-- Location: LCCOMB_X62_Y46_N2
\SEG7~282\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~282_combout\ = (Q(4) & (\SEG7~251_combout\)) # (!Q(4) & (((\SEG7~251_combout\ & Q(1))) # (!Q(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~251_combout\,
	datab => Q(1),
	datac => Q(4),
	datad => Q(2),
	combout => \SEG7~282_combout\);

-- Location: LCCOMB_X62_Y46_N6
\SEG7~259\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~259_combout\ = (Q(5) & ((Q(3)) # ((\SEG7~282_combout\)))) # (!Q(5) & (!Q(3) & (\SEG7~258_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => Q(3),
	datac => \SEG7~258_combout\,
	datad => \SEG7~282_combout\,
	combout => \SEG7~259_combout\);

-- Location: LCCOMB_X62_Y46_N18
\SEG7~257\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~257_combout\ = (Q(4) & (((Q(1) & Q(2))) # (!Q(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datab => Q(0),
	datac => Q(1),
	datad => Q(2),
	combout => \SEG7~257_combout\);

-- Location: LCCOMB_X62_Y46_N24
\SEG7~260\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~260_combout\ = (\SEG7~259_combout\ & (((\SEG7~251_combout\) # (!Q(3))))) # (!\SEG7~259_combout\ & (\SEG7~257_combout\ & (Q(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~259_combout\,
	datab => \SEG7~257_combout\,
	datac => Q(3),
	datad => \SEG7~251_combout\,
	combout => \SEG7~260_combout\);

-- Location: LCCOMB_X63_Y47_N22
\SEG7~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~99_combout\ = ((!Q(2) & !Q(0))) # (!Q(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(2),
	datac => Q(0),
	combout => \SEG7~99_combout\);

-- Location: LCCOMB_X63_Y47_N20
\SEG7~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~98_combout\ = (Q(3)) # ((Q(0) & (Q(1))) # (!Q(0) & (!Q(1) & Q(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(0),
	datac => Q(1),
	datad => Q(2),
	combout => \SEG7~98_combout\);

-- Location: LCCOMB_X63_Y47_N2
\SEG7~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~96_combout\ = (((Q(1)) # (!Q(2))) # (!Q(0))) # (!Q(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(0),
	datac => Q(1),
	datad => Q(2),
	combout => \SEG7~96_combout\);

-- Location: LCCOMB_X63_Y47_N8
\SEG7~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~95_combout\ = (Q(0) & ((Q(1)) # ((Q(3) & Q(2))))) # (!Q(0) & ((Q(3) $ (!Q(2))) # (!Q(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(0),
	datac => Q(1),
	datad => Q(2),
	combout => \SEG7~95_combout\);

-- Location: LCCOMB_X63_Y47_N4
\SEG7~131\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~131_combout\ = (Q(4) & ((\SEG7~96_combout\) # ((Q(5))))) # (!Q(4) & (((\SEG7~95_combout\ & !Q(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datab => \SEG7~96_combout\,
	datac => \SEG7~95_combout\,
	datad => Q(5),
	combout => \SEG7~131_combout\);

-- Location: LCCOMB_X63_Y47_N14
\SEG7~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~132_combout\ = (\SEG7~131_combout\ & ((\SEG7~99_combout\) # ((!Q(5))))) # (!\SEG7~131_combout\ & (((\SEG7~98_combout\ & Q(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~99_combout\,
	datab => \SEG7~98_combout\,
	datac => \SEG7~131_combout\,
	datad => Q(5),
	combout => \SEG7~132_combout\);

-- Location: LCCOMB_X56_Y46_N4
\SEG7~262\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~262_combout\ = (Q(4) & (Q(0) & ((\Equal64~14_combout\) # (!Q(1))))) # (!Q(4) & ((Q(1) $ (Q(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datab => \Equal64~14_combout\,
	datac => Q(1),
	datad => Q(0),
	combout => \SEG7~262_combout\);

-- Location: LCCOMB_X60_Y44_N18
\SEG7~263\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~263_combout\ = Q(4) $ (((!Q(3) & ((\SEG7~262_combout\) # (!Q(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datab => \SEG7~262_combout\,
	datac => Q(3),
	datad => Q(2),
	combout => \SEG7~263_combout\);

-- Location: LCCOMB_X60_Y44_N0
\SEG7~266\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~266_combout\ = (Q(5) & (\SEG7~263_combout\ & ((Q(2)) # (Q(3))))) # (!Q(5) & (!Q(2) & (!Q(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => Q(2),
	datac => Q(3),
	datad => \SEG7~263_combout\,
	combout => \SEG7~266_combout\);

-- Location: LCCOMB_X60_Y44_N6
\SEG7~265\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~265_combout\ = (Q(0) & ((Q(5) & (\SEG7~263_combout\)) # (!Q(5) & ((!\SEG7~165_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => \SEG7~263_combout\,
	datac => Q(0),
	datad => \SEG7~165_combout\,
	combout => \SEG7~265_combout\);

-- Location: LCCOMB_X60_Y44_N22
\SEG7~267\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~267_combout\ = (!Q(1) & ((\SEG7~265_combout\) # ((!Q(0) & \SEG7~266_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(1),
	datac => \SEG7~266_combout\,
	datad => \SEG7~265_combout\,
	combout => \SEG7~267_combout\);

-- Location: LCCOMB_X59_Y44_N24
\Equal64~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal64~25_combout\ = (!Q(0) & (!Q(1) & \Equal64~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(0),
	datac => Q(1),
	datad => \Equal64~16_combout\,
	combout => \Equal64~25_combout\);

-- Location: LCCOMB_X60_Y44_N8
\SEG7~180\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~180_combout\ = (!Q(0) & !Q(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datad => Q(2),
	combout => \SEG7~180_combout\);

-- Location: LCCOMB_X60_Y44_N20
\SEG7~268\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~268_combout\ = (Q(5) & (((\SEG7~263_combout\)))) # (!Q(5) & ((\SEG7~180_combout\) # ((!Q(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => \SEG7~180_combout\,
	datac => Q(3),
	datad => \SEG7~263_combout\,
	combout => \SEG7~268_combout\);

-- Location: LCCOMB_X60_Y44_N14
\SEG7~269\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~269_combout\ = (!\Equal64~25_combout\ & (!Q(4) & ((!\SEG7~268_combout\) # (!Q(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datab => \Equal64~25_combout\,
	datac => Q(4),
	datad => \SEG7~268_combout\,
	combout => \SEG7~269_combout\);

-- Location: LCCOMB_X60_Y44_N28
\SEG7~261\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~261_combout\ = (!Q(5) & (Q(3) & ((Q(2)) # (!Q(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => Q(0),
	datac => Q(3),
	datad => Q(2),
	combout => \SEG7~261_combout\);

-- Location: LCCOMB_X60_Y44_N4
\SEG7~264\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~264_combout\ = ((\SEG7~261_combout\) # ((Q(5) & \SEG7~263_combout\))) # (!Q(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => \SEG7~263_combout\,
	datac => Q(4),
	datad => \SEG7~261_combout\,
	combout => \SEG7~264_combout\);

-- Location: LCCOMB_X60_Y44_N16
\SEG7~270\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~270_combout\ = (\SEG7~264_combout\ & ((\SEG7~267_combout\) # (!\SEG7~269_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~267_combout\,
	datab => \SEG7~269_combout\,
	datac => \SEG7~264_combout\,
	combout => \SEG7~270_combout\);

-- Location: LCCOMB_X62_Y44_N2
\SEG7~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~110_combout\ = (Q(4)) # (Q(2) $ (!Q(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datac => Q(2),
	datad => Q(5),
	combout => \SEG7~110_combout\);

-- Location: LCCOMB_X62_Y44_N24
\SEG7~290\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~290_combout\ = (Q(0)) # ((Q(1)) # ((Q(3)) # (\SEG7~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(1),
	datac => Q(3),
	datad => \SEG7~110_combout\,
	combout => \SEG7~290_combout\);

-- Location: LCCOMB_X60_Y44_N10
\SEG7~271\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~271_combout\ = (Q(5) & ((\SEG7~263_combout\) # ((!Q(2) & !Q(3))))) # (!Q(5) & (((!Q(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => Q(2),
	datac => Q(3),
	datad => \SEG7~263_combout\,
	combout => \SEG7~271_combout\);

-- Location: LCCOMB_X60_Y44_N12
\SEG7~272\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~272_combout\ = (!Q(1) & ((\SEG7~265_combout\) # ((!Q(0) & \SEG7~271_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(1),
	datac => \SEG7~271_combout\,
	datad => \SEG7~265_combout\,
	combout => \SEG7~272_combout\);

-- Location: LCCOMB_X60_Y44_N26
\SEG7~273\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7~273_combout\ = (\SEG7~264_combout\ & ((\SEG7~272_combout\) # (!\SEG7~269_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7~272_combout\,
	datab => \SEG7~264_combout\,
	datac => \SEG7~269_combout\,
	combout => \SEG7~273_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
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

ww_SEG7(0) <= \SEG7[0]~output_o\;

ww_SEG7(1) <= \SEG7[1]~output_o\;

ww_SEG7(2) <= \SEG7[2]~output_o\;

ww_SEG7(3) <= \SEG7[3]~output_o\;

ww_SEG7(4) <= \SEG7[4]~output_o\;

ww_SEG7(5) <= \SEG7[5]~output_o\;

ww_SEG7(6) <= \SEG7[6]~output_o\;

ww_SEG7(7) <= \SEG7[7]~output_o\;

ww_SEG7(8) <= \SEG7[8]~output_o\;

ww_SEG7(9) <= \SEG7[9]~output_o\;

ww_SEG7(10) <= \SEG7[10]~output_o\;

ww_SEG7(11) <= \SEG7[11]~output_o\;

ww_SEG7(12) <= \SEG7[12]~output_o\;

ww_SEG7(13) <= \SEG7[13]~output_o\;

ww_SEG7(14) <= \SEG7[14]~output_o\;

ww_SEG7(15) <= \SEG7[15]~output_o\;

ww_SEG7(16) <= \SEG7[16]~output_o\;

ww_SEG7(17) <= \SEG7[17]~output_o\;

ww_SEG7(18) <= \SEG7[18]~output_o\;

ww_SEG7(19) <= \SEG7[19]~output_o\;

ww_SEG7(20) <= \SEG7[20]~output_o\;

ww_SEG7(21) <= \SEG7[21]~output_o\;

ww_SEG7(22) <= \SEG7[22]~output_o\;

ww_SEG7(23) <= \SEG7[23]~output_o\;

ww_SEG7(24) <= \SEG7[24]~output_o\;

ww_SEG7(25) <= \SEG7[25]~output_o\;

ww_SEG7(26) <= \SEG7[26]~output_o\;

ww_SEG7(27) <= \SEG7[27]~output_o\;

ww_SEG7(28) <= \SEG7[28]~output_o\;

ww_SEG7(29) <= \SEG7[29]~output_o\;

ww_SEG7(30) <= \SEG7[30]~output_o\;

ww_SEG7(31) <= \SEG7[31]~output_o\;

ww_SEG7(32) <= \SEG7[32]~output_o\;

ww_SEG7(33) <= \SEG7[33]~output_o\;

ww_SEG7(34) <= \SEG7[34]~output_o\;

ww_SEG7(35) <= \SEG7[35]~output_o\;

ww_SEG7(36) <= \SEG7[36]~output_o\;

ww_SEG7(37) <= \SEG7[37]~output_o\;

ww_SEG7(38) <= \SEG7[38]~output_o\;

ww_SEG7(39) <= \SEG7[39]~output_o\;

ww_SEG7(40) <= \SEG7[40]~output_o\;

ww_SEG7(41) <= \SEG7[41]~output_o\;

ww_SEG7(42) <= \SEG7[42]~output_o\;

ww_SEG7(43) <= \SEG7[43]~output_o\;

ww_SEG7(44) <= \SEG7[44]~output_o\;

ww_SEG7(45) <= \SEG7[45]~output_o\;

ww_SEG7(46) <= \SEG7[46]~output_o\;

ww_SEG7(47) <= \SEG7[47]~output_o\;
END structure;


