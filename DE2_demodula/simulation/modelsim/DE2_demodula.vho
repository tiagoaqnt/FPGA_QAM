-- Copyright (C) 1991-2010 Altera Corporation
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
-- PROGRAM "Quartus II"
-- VERSION "Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Web Edition"

-- DATE "06/22/2026 22:30:44"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DE2_demodula IS
    PORT (
	AUD_DACDAT : OUT std_logic;
	KEY0 : IN std_logic;
	CLK_50 : IN std_logic;
	I2C_SCL : INOUT std_logic;
	I2C_SDA : INOUT std_logic;
	AUD_ADCDAT : IN std_logic;
	AUD_MCKL : OUT std_logic;
	AUD_BCLK : OUT std_logic;
	AUD_DACLRCK : OUT std_logic;
	AUD_ADCLRCK : OUT std_logic
	);
END DE2_demodula;

-- Design Ports Information
-- I2C_SCL	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- I2C_SDA	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_DACDAT	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_MCKL	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_BCLK	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_DACLRCK	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_ADCLRCK	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY0	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AUD_ADCDAT	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default

ARCHITECTURE structure OF DE2_demodula IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_AUD_DACDAT : std_logic;
SIGNAL ww_KEY0 : std_logic;
SIGNAL ww_CLK_50 : std_logic;
SIGNAL ww_AUD_ADCDAT : std_logic;
SIGNAL ww_AUD_MCKL : std_logic;
SIGNAL ww_AUD_BCLK : std_logic;
SIGNAL ww_AUD_DACLRCK : std_logic;
SIGNAL ww_AUD_ADCLRCK : std_logic;
SIGNAL \inst7|pll_18432_inst|altpll_component|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst7|pll_18432_inst|altpll_component|pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst13|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst13|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst13|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst3|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst3|Mult0|auto_generated|mac_out4_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst3|Mult0|auto_generated|mac_out4_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst3|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst3|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst3|Mult0|auto_generated|mac_mult3_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst3|Mult0|auto_generated|mac_mult3_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst3|Mult0|auto_generated|mac_mult3_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst2|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst2|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst2|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst3|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst3|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst3|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst3|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst3|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst3|ram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst3|ram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst3|ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst3|ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst3|ram_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst3|ram_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst2|Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst2|Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst13|Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst13|Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst13|Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|nrst_reg~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|lrck_reg~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst9|conf_done_reg~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|pll_18432_inst|altpll_component|pll~CLK1\ : std_logic;
SIGNAL \inst7|pll_18432_inst|altpll_component|pll~CLK2\ : std_logic;
SIGNAL \inst7|lrck_cnt[2]~9_combout\ : std_logic;
SIGNAL \inst7|lrck_cnt[3]~12\ : std_logic;
SIGNAL \inst7|lrck_cnt[4]~13_combout\ : std_logic;
SIGNAL \inst15|Add0~0_combout\ : std_logic;
SIGNAL \inst15|Add0~2_combout\ : std_logic;
SIGNAL \inst15|Add0~8_combout\ : std_logic;
SIGNAL \inst15|Add0~18_combout\ : std_logic;
SIGNAL \inst15|Add0~22_combout\ : std_logic;
SIGNAL \inst15|Add0~28_combout\ : std_logic;
SIGNAL \inst15|acc[2]~25_combout\ : std_logic;
SIGNAL \inst15|acc[7]~35_combout\ : std_logic;
SIGNAL \inst15|acc[8]~37_combout\ : std_logic;
SIGNAL \inst15|acc[12]~45_combout\ : std_logic;
SIGNAL \inst15|acc[13]~47_combout\ : std_logic;
SIGNAL \inst15|acc[18]~57_combout\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~10\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~11\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~12\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~13\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~14\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~15\ : std_logic;
SIGNAL \inst10|count[3]~12\ : std_logic;
SIGNAL \inst10|count[4]~15_combout\ : std_logic;
SIGNAL \inst6|Add0~6_combout\ : std_logic;
SIGNAL \inst6|Add0~9\ : std_logic;
SIGNAL \inst6|Add0~11\ : std_logic;
SIGNAL \inst6|Add0~10_combout\ : std_logic;
SIGNAL \inst6|Add0~12_combout\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out4~DATAOUT1\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out4~DATAOUT2\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out4~DATAOUT7\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out4~DATAOUT8\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out4~DATAOUT10\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out4~0\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out4~1\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out4~2\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out4~3\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out4~4\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out4~5\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out4~6\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|add9_result[0]~0_combout\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst2|r_temp_L[1]~14_combout\ : std_logic;
SIGNAL \inst2|r_temp_L[3]~18_combout\ : std_logic;
SIGNAL \inst2|r_temp_L[8]~28_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~10\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~11\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~12\ : std_logic;
SIGNAL \inst3|Add1~0_combout\ : std_logic;
SIGNAL \inst3|Add1~2_combout\ : std_logic;
SIGNAL \inst3|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \inst3|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \inst3|Add1~8_combout\ : std_logic;
SIGNAL \inst3|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \inst3|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \inst3|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \inst3|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \inst3|Add1~18_combout\ : std_logic;
SIGNAL \inst3|Add1~20_combout\ : std_logic;
SIGNAL \inst3|Add1~22_combout\ : std_logic;
SIGNAL \inst3|Add1~24_combout\ : std_logic;
SIGNAL \inst3|Add1~26_combout\ : std_logic;
SIGNAL \inst3|Add1~28_combout\ : std_logic;
SIGNAL \inst3|Add1~30_combout\ : std_logic;
SIGNAL \inst3|Add1~32_combout\ : std_logic;
SIGNAL \inst3|Add1~34_combout\ : std_logic;
SIGNAL \inst3|Add1~39\ : std_logic;
SIGNAL \inst3|Add1~40_combout\ : std_logic;
SIGNAL \inst2|r_timer[4]~_Duplicate_2_regout\ : std_logic;
SIGNAL \inst2|r_timer[8]~_Duplicate_2_regout\ : std_logic;
SIGNAL \inst14|l_ff[1]~9_combout\ : std_logic;
SIGNAL \inst14|l_ff[2]~11_combout\ : std_logic;
SIGNAL \inst14|l_ff[8]~23_combout\ : std_logic;
SIGNAL \inst2|r_temp_R[0]~12_combout\ : std_logic;
SIGNAL \inst2|r_temp_R[1]~14_combout\ : std_logic;
SIGNAL \inst2|r_temp_R[3]~18_combout\ : std_logic;
SIGNAL \inst2|r_temp_R[5]~22_combout\ : std_logic;
SIGNAL \inst2|r_temp_R[6]~24_combout\ : std_logic;
SIGNAL \inst2|r_temp_R[7]~26_combout\ : std_logic;
SIGNAL \inst2|r_temp_R[8]~28_combout\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_out2~10\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_out2~11\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_out2~12\ : std_logic;
SIGNAL \inst14|r_ff[1]~9_combout\ : std_logic;
SIGNAL \inst14|r_ff[3]~13_combout\ : std_logic;
SIGNAL \inst14|r_ff[5]~17_combout\ : std_logic;
SIGNAL \inst14|r_ff[6]~19_combout\ : std_logic;
SIGNAL \inst14|r_ff[7]~21_combout\ : std_logic;
SIGNAL \inst16|Add0~1\ : std_logic;
SIGNAL \inst16|Add0~0_combout\ : std_logic;
SIGNAL \inst16|Add0~3\ : std_logic;
SIGNAL \inst16|Add0~2_combout\ : std_logic;
SIGNAL \inst16|Add0~5\ : std_logic;
SIGNAL \inst16|Add0~4_combout\ : std_logic;
SIGNAL \inst16|Add0~7\ : std_logic;
SIGNAL \inst16|Add0~6_combout\ : std_logic;
SIGNAL \inst16|Add0~9\ : std_logic;
SIGNAL \inst16|Add0~8_combout\ : std_logic;
SIGNAL \inst16|Add0~11\ : std_logic;
SIGNAL \inst16|Add0~10_combout\ : std_logic;
SIGNAL \inst16|Add0~13\ : std_logic;
SIGNAL \inst16|Add0~12_combout\ : std_logic;
SIGNAL \inst16|Add0~15\ : std_logic;
SIGNAL \inst16|Add0~14_combout\ : std_logic;
SIGNAL \inst16|Add0~17\ : std_logic;
SIGNAL \inst16|Add0~16_combout\ : std_logic;
SIGNAL \inst16|Add0~19\ : std_logic;
SIGNAL \inst16|Add0~18_combout\ : std_logic;
SIGNAL \inst16|Add0~21\ : std_logic;
SIGNAL \inst16|Add0~20_combout\ : std_logic;
SIGNAL \inst16|Add0~23\ : std_logic;
SIGNAL \inst16|Add0~22_combout\ : std_logic;
SIGNAL \inst16|Add0~25\ : std_logic;
SIGNAL \inst16|Add0~24_combout\ : std_logic;
SIGNAL \inst16|Add0~27\ : std_logic;
SIGNAL \inst16|Add0~26_combout\ : std_logic;
SIGNAL \inst16|Add0~29\ : std_logic;
SIGNAL \inst16|Add0~28_combout\ : std_logic;
SIGNAL \inst16|Add0~31\ : std_logic;
SIGNAL \inst16|Add0~30_combout\ : std_logic;
SIGNAL \inst16|Add0~33\ : std_logic;
SIGNAL \inst16|Add0~32_combout\ : std_logic;
SIGNAL \inst16|Add0~35\ : std_logic;
SIGNAL \inst16|Add0~34_combout\ : std_logic;
SIGNAL \inst16|Add0~37\ : std_logic;
SIGNAL \inst16|Add0~36_combout\ : std_logic;
SIGNAL \inst16|Add0~39\ : std_logic;
SIGNAL \inst16|Add0~38_combout\ : std_logic;
SIGNAL \inst16|acc[0]~22\ : std_logic;
SIGNAL \inst16|acc[0]~21_combout\ : std_logic;
SIGNAL \inst16|acc[1]~24\ : std_logic;
SIGNAL \inst16|acc[1]~23_combout\ : std_logic;
SIGNAL \inst16|acc[2]~26\ : std_logic;
SIGNAL \inst16|acc[2]~25_combout\ : std_logic;
SIGNAL \inst16|acc[3]~28\ : std_logic;
SIGNAL \inst16|acc[3]~27_combout\ : std_logic;
SIGNAL \inst16|acc[4]~30\ : std_logic;
SIGNAL \inst16|acc[4]~29_combout\ : std_logic;
SIGNAL \inst16|acc[5]~32\ : std_logic;
SIGNAL \inst16|acc[5]~31_combout\ : std_logic;
SIGNAL \inst16|acc[6]~34\ : std_logic;
SIGNAL \inst16|acc[6]~33_combout\ : std_logic;
SIGNAL \inst16|acc[7]~36\ : std_logic;
SIGNAL \inst16|acc[7]~35_combout\ : std_logic;
SIGNAL \inst16|acc[8]~38\ : std_logic;
SIGNAL \inst16|acc[8]~37_combout\ : std_logic;
SIGNAL \inst16|acc[9]~40\ : std_logic;
SIGNAL \inst16|acc[9]~39_combout\ : std_logic;
SIGNAL \inst16|acc[10]~42\ : std_logic;
SIGNAL \inst16|acc[10]~41_combout\ : std_logic;
SIGNAL \inst16|acc[11]~44\ : std_logic;
SIGNAL \inst16|acc[11]~43_combout\ : std_logic;
SIGNAL \inst16|acc[12]~46\ : std_logic;
SIGNAL \inst16|acc[12]~45_combout\ : std_logic;
SIGNAL \inst16|acc[13]~48\ : std_logic;
SIGNAL \inst16|acc[13]~47_combout\ : std_logic;
SIGNAL \inst16|acc[14]~50\ : std_logic;
SIGNAL \inst16|acc[14]~49_combout\ : std_logic;
SIGNAL \inst16|acc[15]~52\ : std_logic;
SIGNAL \inst16|acc[15]~51_combout\ : std_logic;
SIGNAL \inst16|acc[16]~54\ : std_logic;
SIGNAL \inst16|acc[16]~53_combout\ : std_logic;
SIGNAL \inst16|acc[17]~56\ : std_logic;
SIGNAL \inst16|acc[17]~55_combout\ : std_logic;
SIGNAL \inst16|acc[18]~58\ : std_logic;
SIGNAL \inst16|acc[18]~57_combout\ : std_logic;
SIGNAL \inst16|acc[19]~60\ : std_logic;
SIGNAL \inst16|acc[19]~59_combout\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~10\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~11\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~12\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~13\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~14\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_out2~15\ : std_logic;
SIGNAL \inst16|Add0~40_combout\ : std_logic;
SIGNAL \inst16|acc[20]~61_combout\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~10\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~11\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~12\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~13\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~14\ : std_logic;
SIGNAL \inst13|Mult1|auto_generated|mac_mult1~15\ : std_logic;
SIGNAL \inst6|Mux2~0_combout\ : std_logic;
SIGNAL \inst6|Mux2~1_combout\ : std_logic;
SIGNAL \inst6|sda_o~2_combout\ : std_logic;
SIGNAL \inst6|Mux1~0_combout\ : std_logic;
SIGNAL \inst6|Mux1~1_combout\ : std_logic;
SIGNAL \inst6|sda_o~7_combout\ : std_logic;
SIGNAL \inst6|sda_o~8_combout\ : std_logic;
SIGNAL \inst6|sda_o~9_combout\ : std_logic;
SIGNAL \inst6|sda_o~10_combout\ : std_logic;
SIGNAL \inst10|Equal0~0_combout\ : std_logic;
SIGNAL \inst9|rom_addr_cnt[1]~3_combout\ : std_logic;
SIGNAL \inst9|Mux10~0_combout\ : std_logic;
SIGNAL \inst9|Mux9~0_combout\ : std_logic;
SIGNAL \inst9|Mux11~0_combout\ : std_logic;
SIGNAL \inst9|Mux8~0_combout\ : std_logic;
SIGNAL \inst9|Mux2~0_combout\ : std_logic;
SIGNAL \inst9|Mux3~0_combout\ : std_logic;
SIGNAL \inst9|Mux5~0_combout\ : std_logic;
SIGNAL \inst9|Mux1~0_combout\ : std_logic;
SIGNAL \inst9|Mux1~1_combout\ : std_logic;
SIGNAL \inst9|Mux7~0_combout\ : std_logic;
SIGNAL \inst9|Mux5~1_combout\ : std_logic;
SIGNAL \inst|shft_reg~5_combout\ : std_logic;
SIGNAL \inst13|mixer_out_L~3_combout\ : std_logic;
SIGNAL \inst13|mixer_out_L~4_combout\ : std_logic;
SIGNAL \inst13|mixer_out_L~5_combout\ : std_logic;
SIGNAL \inst13|mixer_out_L~6_combout\ : std_logic;
SIGNAL \inst13|mixer_out_L~8_combout\ : std_logic;
SIGNAL \inst13|mixer_out_L~9_combout\ : std_logic;
SIGNAL \inst|shft_reg~6_combout\ : std_logic;
SIGNAL \inst|shft_reg~7_combout\ : std_logic;
SIGNAL \inst|shft_reg~8_combout\ : std_logic;
SIGNAL \inst|shft_reg~9_combout\ : std_logic;
SIGNAL \inst|shft_reg~10_combout\ : std_logic;
SIGNAL \inst3|ram~26_combout\ : std_logic;
SIGNAL \inst3|ram~27_combout\ : std_logic;
SIGNAL \inst3|ram~29_combout\ : std_logic;
SIGNAL \inst3|ram~30_combout\ : std_logic;
SIGNAL \inst3|ram~31_combout\ : std_logic;
SIGNAL \inst3|ram~32_combout\ : std_logic;
SIGNAL \inst|shft_reg~11_combout\ : std_logic;
SIGNAL \inst2|o_dac_data_R[3]~3_combout\ : std_logic;
SIGNAL \inst2|o_dac_data_R[6]~6_combout\ : std_logic;
SIGNAL \inst|shft_reg~12_combout\ : std_logic;
SIGNAL \inst14|stb_ff~regout\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|LessThan0~1_combout\ : std_logic;
SIGNAL \inst2|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|shft_reg~13_combout\ : std_logic;
SIGNAL \inst|shft_reg~14_combout\ : std_logic;
SIGNAL \inst|shft_reg~15_combout\ : std_logic;
SIGNAL \inst|shft_reg~16_combout\ : std_logic;
SIGNAL \inst|shft_reg~17_combout\ : std_logic;
SIGNAL \inst|shft_reg~18_combout\ : std_logic;
SIGNAL \inst|shft_reg~19_combout\ : std_logic;
SIGNAL \inst|shft_reg~20_combout\ : std_logic;
SIGNAL \inst|shft_reg~21_combout\ : std_logic;
SIGNAL \inst|shft_reg~22_combout\ : std_logic;
SIGNAL \inst|shft_reg~23_combout\ : std_logic;
SIGNAL \inst|shft_reg~24_combout\ : std_logic;
SIGNAL \inst|shft_reg~25_combout\ : std_logic;
SIGNAL \inst|shft_reg~26_combout\ : std_logic;
SIGNAL \inst|shft_reg~27_combout\ : std_logic;
SIGNAL \inst|shft_reg~28_combout\ : std_logic;
SIGNAL \inst|shft_reg~29_combout\ : std_logic;
SIGNAL \inst|shft_reg~30_combout\ : std_logic;
SIGNAL \inst|shft_reg~31_combout\ : std_logic;
SIGNAL \inst|shft_reg~32_combout\ : std_logic;
SIGNAL \inst|shft_reg~33_combout\ : std_logic;
SIGNAL \inst|shft_reg~34_combout\ : std_logic;
SIGNAL \inst|shft_reg~35_combout\ : std_logic;
SIGNAL \inst|shft_reg~36_combout\ : std_logic;
SIGNAL \inst|shft_reg~37_combout\ : std_logic;
SIGNAL \inst13|mixer_out_R~0_combout\ : std_logic;
SIGNAL \inst13|mixer_out_R~1_combout\ : std_logic;
SIGNAL \inst13|mixer_out_R~2_combout\ : std_logic;
SIGNAL \inst13|mixer_out_R~3_combout\ : std_logic;
SIGNAL \inst13|mixer_out_R~4_combout\ : std_logic;
SIGNAL \inst13|mixer_out_R~5_combout\ : std_logic;
SIGNAL \inst13|mixer_out_R~6_combout\ : std_logic;
SIGNAL \inst13|mixer_out_R~7_combout\ : std_logic;
SIGNAL \inst13|mixer_out_R~8_combout\ : std_logic;
SIGNAL \inst13|mixer_out_R~9_combout\ : std_logic;
SIGNAL \inst|shft_reg~38_combout\ : std_logic;
SIGNAL \inst|shft_reg~39_combout\ : std_logic;
SIGNAL \inst|shft_reg~40_combout\ : std_logic;
SIGNAL \inst|shft_reg~41_combout\ : std_logic;
SIGNAL \inst|shft_reg~42_combout\ : std_logic;
SIGNAL \inst|shft_reg~43_combout\ : std_logic;
SIGNAL \inst|shft_reg~44_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst7|lrck_reg~clkctrl_outclk\ : std_logic;
SIGNAL \inst|l_aud_reg[19]~feeder_combout\ : std_logic;
SIGNAL \inst|l_aud_reg[17]~feeder_combout\ : std_logic;
SIGNAL \inst|r_aud_reg[23]~feeder_combout\ : std_logic;
SIGNAL \inst|r_aud_reg[20]~feeder_combout\ : std_logic;
SIGNAL \inst|r_aud_reg[19]~feeder_combout\ : std_logic;
SIGNAL \inst|r_aud_reg[18]~feeder_combout\ : std_logic;
SIGNAL \inst|r_aud_reg[17]~feeder_combout\ : std_logic;
SIGNAL \inst|r_aud_reg[15]~feeder_combout\ : std_logic;
SIGNAL \inst10|sht_reg_left[23]~feeder_combout\ : std_logic;
SIGNAL \inst2|r_curr_R[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|r_timer[4]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \inst2|r_timer[8]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \I2C_SCL~0\ : std_logic;
SIGNAL \I2C_SDA~0\ : std_logic;
SIGNAL \CLK_50~combout\ : std_logic;
SIGNAL \CLK_50~clkctrl_outclk\ : std_logic;
SIGNAL \inst6|busy_flag~0_combout\ : std_logic;
SIGNAL \KEY0~combout\ : std_logic;
SIGNAL \inst6|busy_flag~regout\ : std_logic;
SIGNAL \inst9|rom_addr_cnt[0]~4_combout\ : std_logic;
SIGNAL \inst9|rom_addr_cnt[2]~0_combout\ : std_logic;
SIGNAL \inst9|rom_addr_cnt[2]~2_combout\ : std_logic;
SIGNAL \inst9|rom_addr_cnt[3]~1_combout\ : std_logic;
SIGNAL \inst9|init_reg~0_combout\ : std_logic;
SIGNAL \inst9|init_reg~regout\ : std_logic;
SIGNAL \inst6|process_5~1_combout\ : std_logic;
SIGNAL \inst6|Add0~0_combout\ : std_logic;
SIGNAL \inst6|process_0~0_combout\ : std_logic;
SIGNAL \inst6|clk_cnt~0_combout\ : std_logic;
SIGNAL \inst6|clk_cnt~2_combout\ : std_logic;
SIGNAL \inst6|Add0~3\ : std_logic;
SIGNAL \inst6|Add0~4_combout\ : std_logic;
SIGNAL \inst6|clk_cnt~4_combout\ : std_logic;
SIGNAL \inst6|Add0~5\ : std_logic;
SIGNAL \inst6|Add0~7\ : std_logic;
SIGNAL \inst6|Add0~8_combout\ : std_logic;
SIGNAL \inst6|clk_cnt~1_combout\ : std_logic;
SIGNAL \inst6|Equal1~0_combout\ : std_logic;
SIGNAL \inst6|clk_cnt~3_combout\ : std_logic;
SIGNAL \inst6|process_0~1_combout\ : std_logic;
SIGNAL \inst6|Equal2~0_combout\ : std_logic;
SIGNAL \inst6|process_0~2_combout\ : std_logic;
SIGNAL \inst6|clk_stretch~regout\ : std_logic;
SIGNAL \inst6|Add0~1\ : std_logic;
SIGNAL \inst6|Add0~2_combout\ : std_logic;
SIGNAL \inst6|Equal0~0_combout\ : std_logic;
SIGNAL \inst6|Equal0~1_combout\ : std_logic;
SIGNAL \inst6|p0~regout\ : std_logic;
SIGNAL \inst6|pres_state.start~regout\ : std_logic;
SIGNAL \inst6|Selector1~0_combout\ : std_logic;
SIGNAL \inst6|Selector1~1_combout\ : std_logic;
SIGNAL \inst6|pres_state.slv_cmd~regout\ : std_logic;
SIGNAL \inst6|Selector3~0_combout\ : std_logic;
SIGNAL \inst6|pres_state.data_wr~regout\ : std_logic;
SIGNAL \inst6|bit_cnt~1_combout\ : std_logic;
SIGNAL \inst6|sda_o~13_combout\ : std_logic;
SIGNAL \inst6|bit_cnt~2_combout\ : std_logic;
SIGNAL \inst6|bit_cnt~0_combout\ : std_logic;
SIGNAL \inst6|Equal5~0_combout\ : std_logic;
SIGNAL \inst6|process_5~0_combout\ : std_logic;
SIGNAL \inst6|Equal1~1_combout\ : std_logic;
SIGNAL \inst6|Equal3~0_combout\ : std_logic;
SIGNAL \inst6|p3~regout\ : std_logic;
SIGNAL \inst6|ack_err_flag~0_combout\ : std_logic;
SIGNAL \inst6|ack_err_flag~1_combout\ : std_logic;
SIGNAL \inst6|ack_err_flag~regout\ : std_logic;
SIGNAL \inst6|Selector2~0_combout\ : std_logic;
SIGNAL \inst6|pres_state.reg_wr~regout\ : std_logic;
SIGNAL \inst6|next_state.ack2~0_combout\ : std_logic;
SIGNAL \inst6|pres_state.ack2~regout\ : std_logic;
SIGNAL \inst6|next_state.wr_cmd~0_combout\ : std_logic;
SIGNAL \inst6|pres_state.wr_cmd~regout\ : std_logic;
SIGNAL \inst6|pres_state.ack1~feeder_combout\ : std_logic;
SIGNAL \inst6|pres_state.ack1~regout\ : std_logic;
SIGNAL \inst6|next_state.ack3~0_combout\ : std_logic;
SIGNAL \inst6|pres_state.ack3~regout\ : std_logic;
SIGNAL \inst6|Selector6~0_combout\ : std_logic;
SIGNAL \inst6|pres_state.stop~regout\ : std_logic;
SIGNAL \inst6|Selector0~0_combout\ : std_logic;
SIGNAL \inst6|pres_state.idle~regout\ : std_logic;
SIGNAL \inst6|Equal2~1_combout\ : std_logic;
SIGNAL \inst6|p2~regout\ : std_logic;
SIGNAL \inst6|scl_o~0_combout\ : std_logic;
SIGNAL \inst6|scl_o~1_combout\ : std_logic;
SIGNAL \inst6|scl_o~regout\ : std_logic;
SIGNAL \inst6|Equal1~2_combout\ : std_logic;
SIGNAL \inst6|p1~regout\ : std_logic;
SIGNAL \inst6|sda_o~3_combout\ : std_logic;
SIGNAL \inst6|slv_addr_reg[5]~feeder_combout\ : std_logic;
SIGNAL \inst6|sda_o~0_combout\ : std_logic;
SIGNAL \inst6|sda_o~1_combout\ : std_logic;
SIGNAL \inst6|sda_o~4_combout\ : std_logic;
SIGNAL \inst6|sda_o~5_combout\ : std_logic;
SIGNAL \inst6|sda_o~6_combout\ : std_logic;
SIGNAL \inst6|sda_o~11_combout\ : std_logic;
SIGNAL \inst6|sda_o~12_combout\ : std_logic;
SIGNAL \inst6|sda_o~regout\ : std_logic;
SIGNAL \inst9|conf_done_reg~0_combout\ : std_logic;
SIGNAL \inst9|conf_done_reg~regout\ : std_logic;
SIGNAL \inst9|conf_done_reg~clkctrl_outclk\ : std_logic;
SIGNAL \inst7|pll_18432_inst|altpll_component|_clk0\ : std_logic;
SIGNAL \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \inst7|pll_18432_inst|altpll_component|_locked\ : std_logic;
SIGNAL \inst7|nrst_reg~feeder_combout\ : std_logic;
SIGNAL \inst7|nrst_reg~regout\ : std_logic;
SIGNAL \inst7|bclk_cnt[0]~2_combout\ : std_logic;
SIGNAL \inst7|nrst_reg~clkctrl_outclk\ : std_logic;
SIGNAL \inst7|bclk_cnt~1_combout\ : std_logic;
SIGNAL \inst7|lrck_reg~0_combout\ : std_logic;
SIGNAL \inst7|lrck_cnt[0]~5_combout\ : std_logic;
SIGNAL \inst7|Equal1~0_combout\ : std_logic;
SIGNAL \inst7|lrck_cnt[0]~6\ : std_logic;
SIGNAL \inst7|lrck_cnt[1]~8\ : std_logic;
SIGNAL \inst7|lrck_cnt[2]~10\ : std_logic;
SIGNAL \inst7|lrck_cnt[3]~11_combout\ : std_logic;
SIGNAL \inst7|lrck_cnt[1]~7_combout\ : std_logic;
SIGNAL \inst7|lrck_reg~1_combout\ : std_logic;
SIGNAL \inst7|lrck_reg~2_combout\ : std_logic;
SIGNAL \inst7|lrck_reg~regout\ : std_logic;
SIGNAL \inst10|lrck_prev~regout\ : std_logic;
SIGNAL \AUD_ADCDAT~combout\ : std_logic;
SIGNAL \inst10|sht_reg_left[0]~feeder_combout\ : std_logic;
SIGNAL \inst7|bclk_cnt~0_combout\ : std_logic;
SIGNAL \inst7|bclk_reg~0_combout\ : std_logic;
SIGNAL \inst7|bclk_reg~regout\ : std_logic;
SIGNAL \inst10|bclk_prev~regout\ : std_logic;
SIGNAL \inst10|count[0]~5_combout\ : std_logic;
SIGNAL \inst10|bclk_rise~combout\ : std_logic;
SIGNAL \inst10|count[4]~13_combout\ : std_logic;
SIGNAL \inst10|count[4]~14_combout\ : std_logic;
SIGNAL \inst10|count[0]~6\ : std_logic;
SIGNAL \inst10|count[1]~7_combout\ : std_logic;
SIGNAL \inst10|count[1]~8\ : std_logic;
SIGNAL \inst10|count[2]~9_combout\ : std_logic;
SIGNAL \inst10|count[2]~10\ : std_logic;
SIGNAL \inst10|count[3]~11_combout\ : std_logic;
SIGNAL \inst10|fst_pulse~0_combout\ : std_logic;
SIGNAL \inst10|fst_pulse~regout\ : std_logic;
SIGNAL \inst10|process_1~0_combout\ : std_logic;
SIGNAL \inst10|sht_reg_left[14]~2_combout\ : std_logic;
SIGNAL \inst10|sht_reg_left[1]~feeder_combout\ : std_logic;
SIGNAL \inst10|sht_reg_left[3]~feeder_combout\ : std_logic;
SIGNAL \inst10|sht_reg_left[4]~feeder_combout\ : std_logic;
SIGNAL \inst10|sht_reg_left[5]~feeder_combout\ : std_logic;
SIGNAL \inst10|sht_reg_left[6]~feeder_combout\ : std_logic;
SIGNAL \inst10|sht_reg_left[8]~feeder_combout\ : std_logic;
SIGNAL \inst10|sht_reg_left[9]~feeder_combout\ : std_logic;
SIGNAL \inst10|sht_reg_left[10]~feeder_combout\ : std_logic;
SIGNAL \inst10|sht_reg_left[11]~feeder_combout\ : std_logic;
SIGNAL \inst10|sht_reg_left[12]~feeder_combout\ : std_logic;
SIGNAL \inst10|sht_reg_left[13]~feeder_combout\ : std_logic;
SIGNAL \inst10|sht_reg_left[14]~feeder_combout\ : std_logic;
SIGNAL \inst10|sht_reg_left[16]~feeder_combout\ : std_logic;
SIGNAL \inst10|sht_reg_left[17]~feeder_combout\ : std_logic;
SIGNAL \inst10|sht_reg_left[18]~feeder_combout\ : std_logic;
SIGNAL \inst10|sht_reg_left[20]~feeder_combout\ : std_logic;
SIGNAL \inst14|l_ff[1]~10\ : std_logic;
SIGNAL \inst14|l_ff[2]~12\ : std_logic;
SIGNAL \inst14|l_ff[3]~14\ : std_logic;
SIGNAL \inst14|l_ff[4]~16\ : std_logic;
SIGNAL \inst14|l_ff[5]~18\ : std_logic;
SIGNAL \inst14|l_ff[6]~20\ : std_logic;
SIGNAL \inst14|l_ff[7]~22\ : std_logic;
SIGNAL \inst14|l_ff[8]~24\ : std_logic;
SIGNAL \inst14|l_ff[9]~25_combout\ : std_logic;
SIGNAL \inst10|data_stb~2_combout\ : std_logic;
SIGNAL \inst10|data_stb~3_combout\ : std_logic;
SIGNAL \inst10|data_stb~feeder_combout\ : std_logic;
SIGNAL \inst10|data_stb~regout\ : std_logic;
SIGNAL \inst14|d_en~combout\ : std_logic;
SIGNAL \inst14|l_ff[7]~21_combout\ : std_logic;
SIGNAL \inst14|l_ff[6]~19_combout\ : std_logic;
SIGNAL \inst14|l_ff[5]~17_combout\ : std_logic;
SIGNAL \inst14|l_ff[4]~15_combout\ : std_logic;
SIGNAL \inst14|l_ff[3]~13_combout\ : std_logic;
SIGNAL \inst2|r_data_latch_L[1]~11\ : std_logic;
SIGNAL \inst2|r_data_latch_L[2]~13\ : std_logic;
SIGNAL \inst2|r_data_latch_L[3]~15\ : std_logic;
SIGNAL \inst2|r_data_latch_L[4]~17\ : std_logic;
SIGNAL \inst2|r_data_latch_L[5]~19\ : std_logic;
SIGNAL \inst2|r_data_latch_L[6]~21\ : std_logic;
SIGNAL \inst2|r_data_latch_L[7]~23\ : std_logic;
SIGNAL \inst2|r_data_latch_L[8]~25\ : std_logic;
SIGNAL \inst2|r_data_latch_L[9]~27\ : std_logic;
SIGNAL \inst2|r_data_latch_L[10]~28_combout\ : std_logic;
SIGNAL \inst2|r_next_L[10]~feeder_combout\ : std_logic;
SIGNAL \inst2|r_new_sample_toggle~0_combout\ : std_logic;
SIGNAL \inst2|r_new_sample_toggle~regout\ : std_logic;
SIGNAL \inst2|r_toggle_sync1~feeder_combout\ : std_logic;
SIGNAL \inst2|r_toggle_sync1~regout\ : std_logic;
SIGNAL \inst2|r_toggle_sync2~feeder_combout\ : std_logic;
SIGNAL \inst2|r_toggle_sync2~regout\ : std_logic;
SIGNAL \inst2|r_toggle_last~regout\ : std_logic;
SIGNAL \inst2|process_1~0_combout\ : std_logic;
SIGNAL \inst2|r_data_latch_L[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|r_diff_L[0]~12_combout\ : std_logic;
SIGNAL \inst2|r_data_latch_L[1]~10_combout\ : std_logic;
SIGNAL \inst2|r_data_latch_L[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|r_next_L[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|r_diff_L[0]~13\ : std_logic;
SIGNAL \inst2|r_diff_L[1]~14_combout\ : std_logic;
SIGNAL \inst2|r_data_latch_L[2]~12_combout\ : std_logic;
SIGNAL \inst2|r_next_L[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|r_diff_L[1]~15\ : std_logic;
SIGNAL \inst2|r_diff_L[2]~16_combout\ : std_logic;
SIGNAL \inst2|r_data_latch_L[3]~14_combout\ : std_logic;
SIGNAL \inst2|r_data_latch_L[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|r_diff_L[2]~17\ : std_logic;
SIGNAL \inst2|r_diff_L[3]~18_combout\ : std_logic;
SIGNAL \inst2|r_data_latch_L[4]~16_combout\ : std_logic;
SIGNAL \inst2|r_diff_L[3]~19\ : std_logic;
SIGNAL \inst2|r_diff_L[4]~20_combout\ : std_logic;
SIGNAL \inst2|r_data_latch_L[5]~18_combout\ : std_logic;
SIGNAL \inst2|r_diff_L[4]~21\ : std_logic;
SIGNAL \inst2|r_diff_L[5]~22_combout\ : std_logic;
SIGNAL \inst2|r_data_latch_L[6]~20_combout\ : std_logic;
SIGNAL \inst2|r_curr_L[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|r_diff_L[5]~23\ : std_logic;
SIGNAL \inst2|r_diff_L[6]~24_combout\ : std_logic;
SIGNAL \inst2|r_data_latch_L[7]~22_combout\ : std_logic;
SIGNAL \inst2|r_next_L[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|r_diff_L[6]~25\ : std_logic;
SIGNAL \inst2|r_diff_L[7]~26_combout\ : std_logic;
SIGNAL \inst2|r_data_latch_L[8]~24_combout\ : std_logic;
SIGNAL \inst2|r_diff_L[7]~27\ : std_logic;
SIGNAL \inst2|r_diff_L[8]~28_combout\ : std_logic;
SIGNAL \inst2|r_data_latch_L[9]~26_combout\ : std_logic;
SIGNAL \inst2|r_diff_L[8]~29\ : std_logic;
SIGNAL \inst2|r_diff_L[9]~30_combout\ : std_logic;
SIGNAL \inst2|r_diff_L[9]~31\ : std_logic;
SIGNAL \inst2|r_diff_L[10]~32_combout\ : std_logic;
SIGNAL \inst2|r_diff_L[10]~33\ : std_logic;
SIGNAL \inst2|r_diff_L[11]~34_combout\ : std_logic;
SIGNAL \inst2|r_timer[0]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \inst2|r_timer[0]~_Duplicate_2_regout\ : std_logic;
SIGNAL \inst2|r_timer[0]~10_combout\ : std_logic;
SIGNAL \inst2|r_timer[0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|r_timer[1]~_Duplicate_2_regout\ : std_logic;
SIGNAL \inst2|r_timer[0]~11\ : std_logic;
SIGNAL \inst2|r_timer[1]~12_combout\ : std_logic;
SIGNAL \inst2|r_timer[1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|r_timer[2]~_Duplicate_2_regout\ : std_logic;
SIGNAL \inst2|r_timer[1]~13\ : std_logic;
SIGNAL \inst2|r_timer[2]~14_combout\ : std_logic;
SIGNAL \inst2|r_timer[2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|r_timer[3]~_Duplicate_2_regout\ : std_logic;
SIGNAL \inst2|r_timer[2]~15\ : std_logic;
SIGNAL \inst2|r_timer[3]~16_combout\ : std_logic;
SIGNAL \inst2|r_timer[3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|r_timer[3]~17\ : std_logic;
SIGNAL \inst2|r_timer[4]~18_combout\ : std_logic;
SIGNAL \inst2|r_timer[4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|r_timer[5]~_Duplicate_2_regout\ : std_logic;
SIGNAL \inst2|r_timer[4]~19\ : std_logic;
SIGNAL \inst2|r_timer[5]~20_combout\ : std_logic;
SIGNAL \inst2|r_timer[5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|r_timer[6]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \inst2|r_timer[6]~_Duplicate_2_regout\ : std_logic;
SIGNAL \inst2|r_timer[5]~21\ : std_logic;
SIGNAL \inst2|r_timer[6]~22_combout\ : std_logic;
SIGNAL \inst2|r_timer[6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|r_timer[7]~_Duplicate_2_regout\ : std_logic;
SIGNAL \inst2|r_timer[6]~23\ : std_logic;
SIGNAL \inst2|r_timer[7]~24_combout\ : std_logic;
SIGNAL \inst2|r_timer[7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|r_timer[7]~25\ : std_logic;
SIGNAL \inst2|r_timer[8]~26_combout\ : std_logic;
SIGNAL \inst2|r_timer[8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|r_timer[9]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \inst2|r_timer[9]~_Duplicate_2_regout\ : std_logic;
SIGNAL \inst2|r_timer[8]~27\ : std_logic;
SIGNAL \inst2|r_timer[9]~28_combout\ : std_logic;
SIGNAL \inst2|r_timer[9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~10\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~11\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~12\ : std_logic;
SIGNAL \inst2|r_temp_L[0]~13\ : std_logic;
SIGNAL \inst2|r_temp_L[1]~15\ : std_logic;
SIGNAL \inst2|r_temp_L[2]~17\ : std_logic;
SIGNAL \inst2|r_temp_L[3]~19\ : std_logic;
SIGNAL \inst2|r_temp_L[4]~21\ : std_logic;
SIGNAL \inst2|r_temp_L[5]~23\ : std_logic;
SIGNAL \inst2|r_temp_L[6]~25\ : std_logic;
SIGNAL \inst2|r_temp_L[7]~27\ : std_logic;
SIGNAL \inst2|r_temp_L[8]~29\ : std_logic;
SIGNAL \inst2|r_temp_L[9]~31\ : std_logic;
SIGNAL \inst2|r_temp_L[10]~33\ : std_logic;
SIGNAL \inst2|r_temp_L[11]~34_combout\ : std_logic;
SIGNAL \inst2|r_temp_L[0]~12_combout\ : std_logic;
SIGNAL \inst2|r_temp_L[9]~30_combout\ : std_logic;
SIGNAL \inst2|o_dac_data_L[0]~0_combout\ : std_logic;
SIGNAL \inst2|r_temp_L[10]~32_combout\ : std_logic;
SIGNAL \inst2|o_dac_data_L[1]~1_combout\ : std_logic;
SIGNAL \inst2|r_temp_L[2]~16_combout\ : std_logic;
SIGNAL \inst2|o_dac_data_L[2]~2_combout\ : std_logic;
SIGNAL \inst2|o_dac_data_L[3]~3_combout\ : std_logic;
SIGNAL \inst2|r_temp_L[4]~20_combout\ : std_logic;
SIGNAL \inst2|o_dac_data_L[4]~4_combout\ : std_logic;
SIGNAL \inst2|r_temp_L[5]~22_combout\ : std_logic;
SIGNAL \inst2|o_dac_data_L[5]~5_combout\ : std_logic;
SIGNAL \inst2|r_temp_L[6]~24_combout\ : std_logic;
SIGNAL \inst2|o_dac_data_L[6]~6_combout\ : std_logic;
SIGNAL \inst2|r_temp_L[7]~26_combout\ : std_logic;
SIGNAL \inst2|o_dac_data_L[7]~7_combout\ : std_logic;
SIGNAL \inst2|o_dac_data_L[8]~8_combout\ : std_logic;
SIGNAL \inst10|sht_reg_right[0]~feeder_combout\ : std_logic;
SIGNAL \inst10|sht_reg_right[14]~2_combout\ : std_logic;
SIGNAL \inst10|sht_reg_right[1]~feeder_combout\ : std_logic;
SIGNAL \inst10|sht_reg_right[3]~feeder_combout\ : std_logic;
SIGNAL \inst10|sht_reg_right[5]~feeder_combout\ : std_logic;
SIGNAL \inst10|sht_reg_right[6]~feeder_combout\ : std_logic;
SIGNAL \inst10|sht_reg_right[7]~feeder_combout\ : std_logic;
SIGNAL \inst10|sht_reg_right[8]~feeder_combout\ : std_logic;
SIGNAL \inst10|sht_reg_right[9]~feeder_combout\ : std_logic;
SIGNAL \inst10|sht_reg_right[11]~feeder_combout\ : std_logic;
SIGNAL \inst10|sht_reg_right[12]~feeder_combout\ : std_logic;
SIGNAL \inst10|sht_reg_right[13]~feeder_combout\ : std_logic;
SIGNAL \inst10|sht_reg_right[14]~feeder_combout\ : std_logic;
SIGNAL \inst10|sht_reg_right[17]~feeder_combout\ : std_logic;
SIGNAL \inst10|sht_reg_right[18]~feeder_combout\ : std_logic;
SIGNAL \inst10|sht_reg_right[20]~feeder_combout\ : std_logic;
SIGNAL \inst10|sht_reg_right[22]~feeder_combout\ : std_logic;
SIGNAL \inst14|r_ff[1]~10\ : std_logic;
SIGNAL \inst14|r_ff[2]~12\ : std_logic;
SIGNAL \inst14|r_ff[3]~14\ : std_logic;
SIGNAL \inst14|r_ff[4]~16\ : std_logic;
SIGNAL \inst14|r_ff[5]~18\ : std_logic;
SIGNAL \inst14|r_ff[6]~20\ : std_logic;
SIGNAL \inst14|r_ff[7]~22\ : std_logic;
SIGNAL \inst14|r_ff[8]~24\ : std_logic;
SIGNAL \inst14|r_ff[9]~25_combout\ : std_logic;
SIGNAL \inst14|r_ff[8]~23_combout\ : std_logic;
SIGNAL \inst14|r_ff[4]~15_combout\ : std_logic;
SIGNAL \inst14|r_ff[2]~11_combout\ : std_logic;
SIGNAL \inst14|r_ff[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|r_data_latch_R[1]~11\ : std_logic;
SIGNAL \inst2|r_data_latch_R[2]~13\ : std_logic;
SIGNAL \inst2|r_data_latch_R[3]~15\ : std_logic;
SIGNAL \inst2|r_data_latch_R[4]~17\ : std_logic;
SIGNAL \inst2|r_data_latch_R[5]~19\ : std_logic;
SIGNAL \inst2|r_data_latch_R[6]~21\ : std_logic;
SIGNAL \inst2|r_data_latch_R[7]~23\ : std_logic;
SIGNAL \inst2|r_data_latch_R[8]~25\ : std_logic;
SIGNAL \inst2|r_data_latch_R[9]~27\ : std_logic;
SIGNAL \inst2|r_data_latch_R[10]~28_combout\ : std_logic;
SIGNAL \inst2|r_data_latch_R[10]~feeder_combout\ : std_logic;
SIGNAL \inst2|r_data_latch_R[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|r_diff_R[0]~12_combout\ : std_logic;
SIGNAL \inst2|r_data_latch_R[1]~10_combout\ : std_logic;
SIGNAL \inst2|r_next_R[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|r_diff_R[0]~13\ : std_logic;
SIGNAL \inst2|r_diff_R[1]~14_combout\ : std_logic;
SIGNAL \inst2|r_data_latch_R[2]~12_combout\ : std_logic;
SIGNAL \inst2|r_next_R[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|r_diff_R[1]~15\ : std_logic;
SIGNAL \inst2|r_diff_R[2]~16_combout\ : std_logic;
SIGNAL \inst2|r_data_latch_R[3]~14_combout\ : std_logic;
SIGNAL \inst2|r_diff_R[2]~17\ : std_logic;
SIGNAL \inst2|r_diff_R[3]~18_combout\ : std_logic;
SIGNAL \inst2|r_data_latch_R[4]~16_combout\ : std_logic;
SIGNAL \inst2|r_next_R[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|r_diff_R[3]~19\ : std_logic;
SIGNAL \inst2|r_diff_R[4]~20_combout\ : std_logic;
SIGNAL \inst2|r_data_latch_R[5]~18_combout\ : std_logic;
SIGNAL \inst2|r_diff_R[4]~21\ : std_logic;
SIGNAL \inst2|r_diff_R[5]~22_combout\ : std_logic;
SIGNAL \inst2|r_data_latch_R[6]~20_combout\ : std_logic;
SIGNAL \inst2|r_diff_R[5]~23\ : std_logic;
SIGNAL \inst2|r_diff_R[6]~24_combout\ : std_logic;
SIGNAL \inst2|r_data_latch_R[7]~22_combout\ : std_logic;
SIGNAL \inst2|r_next_R[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|r_diff_R[6]~25\ : std_logic;
SIGNAL \inst2|r_diff_R[7]~26_combout\ : std_logic;
SIGNAL \inst2|r_data_latch_R[8]~24_combout\ : std_logic;
SIGNAL \inst2|r_diff_R[7]~27\ : std_logic;
SIGNAL \inst2|r_diff_R[8]~28_combout\ : std_logic;
SIGNAL \inst2|r_data_latch_R[9]~26_combout\ : std_logic;
SIGNAL \inst2|r_diff_R[8]~29\ : std_logic;
SIGNAL \inst2|r_diff_R[9]~30_combout\ : std_logic;
SIGNAL \inst2|r_diff_R[9]~31\ : std_logic;
SIGNAL \inst2|r_diff_R[10]~32_combout\ : std_logic;
SIGNAL \inst2|r_diff_R[10]~33\ : std_logic;
SIGNAL \inst2|r_diff_R[11]~34_combout\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~10\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~11\ : std_logic;
SIGNAL \inst2|Mult1|auto_generated|mac_mult1~12\ : std_logic;
SIGNAL \inst2|r_temp_R[0]~13\ : std_logic;
SIGNAL \inst2|r_temp_R[1]~15\ : std_logic;
SIGNAL \inst2|r_temp_R[2]~17\ : std_logic;
SIGNAL \inst2|r_temp_R[3]~19\ : std_logic;
SIGNAL \inst2|r_temp_R[4]~21\ : std_logic;
SIGNAL \inst2|r_temp_R[5]~23\ : std_logic;
SIGNAL \inst2|r_temp_R[6]~25\ : std_logic;
SIGNAL \inst2|r_temp_R[7]~27\ : std_logic;
SIGNAL \inst2|r_temp_R[8]~29\ : std_logic;
SIGNAL \inst2|r_temp_R[9]~31\ : std_logic;
SIGNAL \inst2|r_temp_R[10]~33\ : std_logic;
SIGNAL \inst2|r_temp_R[11]~34_combout\ : std_logic;
SIGNAL \inst2|r_temp_R[10]~32_combout\ : std_logic;
SIGNAL \inst2|r_temp_R[9]~30_combout\ : std_logic;
SIGNAL \inst2|o_dac_data_R[8]~8_combout\ : std_logic;
SIGNAL \inst3|Add0~1\ : std_logic;
SIGNAL \inst3|Add0~3\ : std_logic;
SIGNAL \inst3|Add0~4_combout\ : std_logic;
SIGNAL \inst3|Add0~5\ : std_logic;
SIGNAL \inst3|Add0~7\ : std_logic;
SIGNAL \inst3|Add0~8_combout\ : std_logic;
SIGNAL \inst3|ptr~1_combout\ : std_logic;
SIGNAL \inst3|Add0~9\ : std_logic;
SIGNAL \inst3|Add0~10_combout\ : std_logic;
SIGNAL \inst3|Add0~6_combout\ : std_logic;
SIGNAL \inst3|Add0~11\ : std_logic;
SIGNAL \inst3|Add0~12_combout\ : std_logic;
SIGNAL \inst3|Equal0~2_combout\ : std_logic;
SIGNAL \inst3|ptr~2_combout\ : std_logic;
SIGNAL \inst3|Equal0~1_combout\ : std_logic;
SIGNAL \inst3|Add0~13\ : std_logic;
SIGNAL \inst3|Add0~14_combout\ : std_logic;
SIGNAL \inst3|ptr~3_combout\ : std_logic;
SIGNAL \inst3|Add0~15\ : std_logic;
SIGNAL \inst3|Add0~16_combout\ : std_logic;
SIGNAL \inst3|ptr~4_combout\ : std_logic;
SIGNAL \inst3|Add0~17\ : std_logic;
SIGNAL \inst3|Add0~18_combout\ : std_logic;
SIGNAL \inst3|ptr~5_combout\ : std_logic;
SIGNAL \inst3|Add0~19\ : std_logic;
SIGNAL \inst3|Add0~20_combout\ : std_logic;
SIGNAL \inst3|ptr~6_combout\ : std_logic;
SIGNAL \inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|Add0~0_combout\ : std_logic;
SIGNAL \inst3|ptr~0_combout\ : std_logic;
SIGNAL \inst3|Add0~2_combout\ : std_logic;
SIGNAL \inst3|ram_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \inst3|ram~23feeder_combout\ : std_logic;
SIGNAL \inst3|ram~23_regout\ : std_logic;
SIGNAL \inst3|ram~33_combout\ : std_logic;
SIGNAL \inst2|o_dac_data_R[7]~7_combout\ : std_logic;
SIGNAL \inst2|r_temp_R[4]~20_combout\ : std_logic;
SIGNAL \inst2|o_dac_data_R[4]~4_combout\ : std_logic;
SIGNAL \inst2|o_dac_data_R[5]~5_combout\ : std_logic;
SIGNAL \inst3|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \inst3|ram~28_combout\ : std_logic;
SIGNAL \inst2|r_temp_R[2]~16_combout\ : std_logic;
SIGNAL \inst2|o_dac_data_R[2]~2_combout\ : std_logic;
SIGNAL \inst2|o_dac_data_R[0]~0_combout\ : std_logic;
SIGNAL \inst2|o_dac_data_R[1]~1_combout\ : std_logic;
SIGNAL \inst3|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \inst3|ram~25_combout\ : std_logic;
SIGNAL \inst3|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \inst3|ram~24_combout\ : std_logic;
SIGNAL \inst3|acc[0]~22\ : std_logic;
SIGNAL \inst3|acc[1]~23_combout\ : std_logic;
SIGNAL \inst3|data_d[0]~feeder_combout\ : std_logic;
SIGNAL \inst3|Add1~1\ : std_logic;
SIGNAL \inst3|Add1~3\ : std_logic;
SIGNAL \inst3|Add1~4_combout\ : std_logic;
SIGNAL \inst3|acc[1]~24\ : std_logic;
SIGNAL \inst3|acc[2]~26\ : std_logic;
SIGNAL \inst3|acc[3]~27_combout\ : std_logic;
SIGNAL \inst3|Add1~5\ : std_logic;
SIGNAL \inst3|Add1~6_combout\ : std_logic;
SIGNAL \inst3|acc[3]~28\ : std_logic;
SIGNAL \inst3|acc[4]~29_combout\ : std_logic;
SIGNAL \inst3|Add1~7\ : std_logic;
SIGNAL \inst3|Add1~9\ : std_logic;
SIGNAL \inst3|Add1~10_combout\ : std_logic;
SIGNAL \inst3|acc[4]~30\ : std_logic;
SIGNAL \inst3|acc[5]~31_combout\ : std_logic;
SIGNAL \inst3|Add1~11\ : std_logic;
SIGNAL \inst3|Add1~12_combout\ : std_logic;
SIGNAL \inst3|acc[5]~32\ : std_logic;
SIGNAL \inst3|acc[6]~33_combout\ : std_logic;
SIGNAL \inst3|Add1~13\ : std_logic;
SIGNAL \inst3|Add1~15\ : std_logic;
SIGNAL \inst3|Add1~16_combout\ : std_logic;
SIGNAL \inst3|Add1~14_combout\ : std_logic;
SIGNAL \inst3|acc[6]~34\ : std_logic;
SIGNAL \inst3|acc[7]~36\ : std_logic;
SIGNAL \inst3|acc[8]~38\ : std_logic;
SIGNAL \inst3|acc[9]~40\ : std_logic;
SIGNAL \inst3|acc[10]~42\ : std_logic;
SIGNAL \inst3|acc[11]~44\ : std_logic;
SIGNAL \inst3|acc[12]~46\ : std_logic;
SIGNAL \inst3|acc[13]~48\ : std_logic;
SIGNAL \inst3|acc[14]~50\ : std_logic;
SIGNAL \inst3|acc[15]~52\ : std_logic;
SIGNAL \inst3|acc[16]~54\ : std_logic;
SIGNAL \inst3|acc[17]~55_combout\ : std_logic;
SIGNAL \inst3|acc[16]~53_combout\ : std_logic;
SIGNAL \inst3|acc[15]~51_combout\ : std_logic;
SIGNAL \inst3|acc[14]~49_combout\ : std_logic;
SIGNAL \inst3|acc[13]~47_combout\ : std_logic;
SIGNAL \inst3|acc[10]~41_combout\ : std_logic;
SIGNAL \inst3|acc[9]~39_combout\ : std_logic;
SIGNAL \inst3|Add1~17\ : std_logic;
SIGNAL \inst3|Add1~19\ : std_logic;
SIGNAL \inst3|Add1~21\ : std_logic;
SIGNAL \inst3|Add1~23\ : std_logic;
SIGNAL \inst3|Add1~25\ : std_logic;
SIGNAL \inst3|Add1~27\ : std_logic;
SIGNAL \inst3|Add1~29\ : std_logic;
SIGNAL \inst3|Add1~31\ : std_logic;
SIGNAL \inst3|Add1~33\ : std_logic;
SIGNAL \inst3|Add1~35\ : std_logic;
SIGNAL \inst3|Add1~36_combout\ : std_logic;
SIGNAL \inst3|acc[17]~56\ : std_logic;
SIGNAL \inst3|acc[18]~57_combout\ : std_logic;
SIGNAL \inst3|Add1~37\ : std_logic;
SIGNAL \inst3|Add1~38_combout\ : std_logic;
SIGNAL \inst3|acc[18]~58\ : std_logic;
SIGNAL \inst3|acc[19]~59_combout\ : std_logic;
SIGNAL \inst3|acc[19]~60\ : std_logic;
SIGNAL \inst3|acc[20]~61_combout\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult3~dataout\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult3~DATAOUT1\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult3~DATAOUT2\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult3~DATAOUT3\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult3~DATAOUT4\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult3~DATAOUT5\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult3~DATAOUT6\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult3~DATAOUT7\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult3~DATAOUT8\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult3~DATAOUT9\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult3~DATAOUT10\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult3~0\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult3~1\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult3~2\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult3~3\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult3~4\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult3~5\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult3~6\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out4~DATAOUT9\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|add9_result[0]~1\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|add9_result[1]~3\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|add9_result[2]~4_combout\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|add9_result[1]~2_combout\ : std_logic;
SIGNAL \inst3|acc[0]~21_combout\ : std_logic;
SIGNAL \inst3|acc[2]~25_combout\ : std_logic;
SIGNAL \inst3|acc[7]~35_combout\ : std_logic;
SIGNAL \inst3|acc[8]~37_combout\ : std_logic;
SIGNAL \inst3|acc[11]~43_combout\ : std_logic;
SIGNAL \inst3|acc[12]~45_combout\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out4~DATAOUT6\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out4~DATAOUT5\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out4~DATAOUT4\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out4~DATAOUT3\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|mac_out4~dataout\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst3|data_out[0]~0_combout\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst3|data_out[1]~1_combout\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst3|data_out[2]~2_combout\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst3|data_out[3]~3_combout\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst3|data_out[4]~4_combout\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|add9_result[2]~5\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|add9_result[3]~6_combout\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst3|Mult0|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst3|data_out[5]~5_combout\ : std_logic;
SIGNAL \inst3|data_out[6]~6_combout\ : std_logic;
SIGNAL \inst3|data_out[7]~7_combout\ : std_logic;
SIGNAL \inst3|data_out[8]~8_combout\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~10\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~11\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~12\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~13\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~14\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_mult1~15\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \inst13|mixer_out_L~0_combout\ : std_logic;
SIGNAL \inst15|Add0~35\ : std_logic;
SIGNAL \inst15|Add0~37\ : std_logic;
SIGNAL \inst15|Add0~38_combout\ : std_logic;
SIGNAL \inst15|Add0~36_combout\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \inst13|mixer_out_L~1_combout\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \inst13|mixer_out_L~2_combout\ : std_logic;
SIGNAL \inst13|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \inst13|mixer_out_L~7_combout\ : std_logic;
SIGNAL \inst15|acc[0]~22\ : std_logic;
SIGNAL \inst15|acc[1]~23_combout\ : std_logic;
SIGNAL \inst15|acc[0]~21_combout\ : std_logic;
SIGNAL \inst15|Add0~1\ : std_logic;
SIGNAL \inst15|Add0~3\ : std_logic;
SIGNAL \inst15|Add0~4_combout\ : std_logic;
SIGNAL \inst15|acc[1]~24\ : std_logic;
SIGNAL \inst15|acc[2]~26\ : std_logic;
SIGNAL \inst15|acc[3]~27_combout\ : std_logic;
SIGNAL \inst15|Add0~5\ : std_logic;
SIGNAL \inst15|Add0~6_combout\ : std_logic;
SIGNAL \inst15|acc[3]~28\ : std_logic;
SIGNAL \inst15|acc[4]~29_combout\ : std_logic;
SIGNAL \inst15|Add0~7\ : std_logic;
SIGNAL \inst15|Add0~9\ : std_logic;
SIGNAL \inst15|Add0~10_combout\ : std_logic;
SIGNAL \inst15|acc[4]~30\ : std_logic;
SIGNAL \inst15|acc[5]~31_combout\ : std_logic;
SIGNAL \inst15|Add0~11\ : std_logic;
SIGNAL \inst15|Add0~12_combout\ : std_logic;
SIGNAL \inst15|acc[5]~32\ : std_logic;
SIGNAL \inst15|acc[6]~33_combout\ : std_logic;
SIGNAL \inst15|Add0~13\ : std_logic;
SIGNAL \inst15|Add0~15\ : std_logic;
SIGNAL \inst15|Add0~16_combout\ : std_logic;
SIGNAL \inst15|Add0~14_combout\ : std_logic;
SIGNAL \inst15|acc[6]~34\ : std_logic;
SIGNAL \inst15|acc[7]~36\ : std_logic;
SIGNAL \inst15|acc[8]~38\ : std_logic;
SIGNAL \inst15|acc[9]~40\ : std_logic;
SIGNAL \inst15|acc[10]~41_combout\ : std_logic;
SIGNAL \inst15|acc[9]~39_combout\ : std_logic;
SIGNAL \inst15|Add0~17\ : std_logic;
SIGNAL \inst15|Add0~19\ : std_logic;
SIGNAL \inst15|Add0~20_combout\ : std_logic;
SIGNAL \inst15|acc[10]~42\ : std_logic;
SIGNAL \inst15|acc[11]~43_combout\ : std_logic;
SIGNAL \inst15|Add0~21\ : std_logic;
SIGNAL \inst15|Add0~23\ : std_logic;
SIGNAL \inst15|Add0~25\ : std_logic;
SIGNAL \inst15|Add0~26_combout\ : std_logic;
SIGNAL \inst15|Add0~24_combout\ : std_logic;
SIGNAL \inst15|acc[11]~44\ : std_logic;
SIGNAL \inst15|acc[12]~46\ : std_logic;
SIGNAL \inst15|acc[13]~48\ : std_logic;
SIGNAL \inst15|acc[14]~50\ : std_logic;
SIGNAL \inst15|acc[15]~52\ : std_logic;
SIGNAL \inst15|acc[16]~54\ : std_logic;
SIGNAL \inst15|acc[17]~56\ : std_logic;
SIGNAL \inst15|acc[18]~58\ : std_logic;
SIGNAL \inst15|acc[19]~59_combout\ : std_logic;
SIGNAL \inst15|Add0~39\ : std_logic;
SIGNAL \inst15|Add0~40_combout\ : std_logic;
SIGNAL \inst15|acc[19]~60\ : std_logic;
SIGNAL \inst15|acc[20]~61_combout\ : std_logic;
SIGNAL \inst15|acc[14]~49_combout\ : std_logic;
SIGNAL \inst15|Add0~27\ : std_logic;
SIGNAL \inst15|Add0~29\ : std_logic;
SIGNAL \inst15|Add0~30_combout\ : std_logic;
SIGNAL \inst15|acc[15]~51_combout\ : std_logic;
SIGNAL \inst15|Add0~31\ : std_logic;
SIGNAL \inst15|Add0~32_combout\ : std_logic;
SIGNAL \inst15|acc[16]~53_combout\ : std_logic;
SIGNAL \inst15|Add0~33\ : std_logic;
SIGNAL \inst15|Add0~34_combout\ : std_logic;
SIGNAL \inst15|acc[17]~55_combout\ : std_logic;
SIGNAL \inst|shft_reg~4_combout\ : std_logic;
SIGNAL \inst|shft_reg[43]~1_combout\ : std_logic;
SIGNAL \inst|shft_reg~3_combout\ : std_logic;
SIGNAL \inst|shft_reg~2_combout\ : std_logic;
SIGNAL \inst|shft_reg~0_combout\ : std_logic;
SIGNAL \inst3|acc\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \inst3|data_d\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst3|ptr\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst14|r_ff\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|r_curr_R\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst2|r_data_latch_R\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst2|r_mult_R\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst2|r_next_R\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst2|r_temp_R\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst13|mixer_out_L\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst15|acc\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \inst10|sht_reg_left\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst6|bit_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst6|data_wr_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|slv_addr_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst7|lrck_cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|r_aud_reg\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst3|Mult0|auto_generated|w155w\ : std_logic_vector(29 DOWNTO 0);
SIGNAL \inst14|l_ff\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|r_curr_L\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst2|r_data_latch_L\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst2|r_mult_L\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst2|r_next_L\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst2|r_temp_L\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst13|mixer_out_R\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst10|count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst10|sht_reg_right\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst6|clk_cnt\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst6|reg_addr_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|rom_addr_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|bclk_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|l_aud_reg\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst|shft_reg\ : std_logic_vector(56 DOWNTO 0);
SIGNAL \inst16|acc\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \inst6|ALT_INV_scl_o~regout\ : std_logic;
SIGNAL \inst6|ALT_INV_sda_o~regout\ : std_logic;
SIGNAL \inst6|ALT_INV_clk_stretch~regout\ : std_logic;
SIGNAL \ALT_INV_KEY0~combout\ : std_logic;
SIGNAL \inst7|ALT_INV_nrst_reg~clkctrl_outclk\ : std_logic;
SIGNAL \inst9|ALT_INV_conf_done_reg~clkctrl_outclk\ : std_logic;

BEGIN

AUD_DACDAT <= ww_AUD_DACDAT;
ww_KEY0 <= KEY0;
ww_CLK_50 <= CLK_50;
ww_AUD_ADCDAT <= AUD_ADCDAT;
AUD_MCKL <= ww_AUD_MCKL;
AUD_BCLK <= ww_AUD_BCLK;
AUD_DACLRCK <= ww_AUD_DACLRCK;
AUD_ADCLRCK <= ww_AUD_ADCLRCK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst7|pll_18432_inst|altpll_component|pll_INCLK_bus\ <= (gnd & \CLK_50~combout\);

\inst7|pll_18432_inst|altpll_component|_clk0\ <= \inst7|pll_18432_inst|altpll_component|pll_CLK_bus\(0);
\inst7|pll_18432_inst|altpll_component|pll~CLK1\ <= \inst7|pll_18432_inst|altpll_component|pll_CLK_bus\(1);
\inst7|pll_18432_inst|altpll_component|pll~CLK2\ <= \inst7|pll_18432_inst|altpll_component|pll_CLK_bus\(2);

\inst13|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\inst13|Mult0|auto_generated|mac_mult1~DATAOUT19\ & \inst13|Mult0|auto_generated|mac_mult1~DATAOUT18\ & \inst13|Mult0|auto_generated|mac_mult1~DATAOUT17\ & 
\inst13|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \inst13|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \inst13|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \inst13|Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\inst13|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \inst13|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \inst13|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \inst13|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \inst13|Mult0|auto_generated|mac_mult1~DATAOUT8\
& \inst13|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \inst13|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \inst13|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \inst13|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \inst13|Mult0|auto_generated|mac_mult1~DATAOUT3\
& \inst13|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \inst13|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \inst13|Mult0|auto_generated|mac_mult1~dataout\ & \inst13|Mult0|auto_generated|mac_mult1~15\ & \inst13|Mult0|auto_generated|mac_mult1~14\ & 
\inst13|Mult0|auto_generated|mac_mult1~13\ & \inst13|Mult0|auto_generated|mac_mult1~12\ & \inst13|Mult0|auto_generated|mac_mult1~11\ & \inst13|Mult0|auto_generated|mac_mult1~10\ & \inst13|Mult0|auto_generated|mac_mult1~9\ & 
\inst13|Mult0|auto_generated|mac_mult1~8\ & \inst13|Mult0|auto_generated|mac_mult1~7\ & \inst13|Mult0|auto_generated|mac_mult1~6\ & \inst13|Mult0|auto_generated|mac_mult1~5\ & \inst13|Mult0|auto_generated|mac_mult1~4\ & 
\inst13|Mult0|auto_generated|mac_mult1~3\ & \inst13|Mult0|auto_generated|mac_mult1~2\ & \inst13|Mult0|auto_generated|mac_mult1~1\ & \inst13|Mult0|auto_generated|mac_mult1~0\);

\inst13|Mult0|auto_generated|mac_out2~0\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\inst13|Mult0|auto_generated|mac_out2~1\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\inst13|Mult0|auto_generated|mac_out2~2\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\inst13|Mult0|auto_generated|mac_out2~3\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\inst13|Mult0|auto_generated|mac_out2~4\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\inst13|Mult0|auto_generated|mac_out2~5\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\inst13|Mult0|auto_generated|mac_out2~6\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\inst13|Mult0|auto_generated|mac_out2~7\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\inst13|Mult0|auto_generated|mac_out2~8\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\inst13|Mult0|auto_generated|mac_out2~9\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\inst13|Mult0|auto_generated|mac_out2~10\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\inst13|Mult0|auto_generated|mac_out2~11\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\inst13|Mult0|auto_generated|mac_out2~12\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\inst13|Mult0|auto_generated|mac_out2~13\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\inst13|Mult0|auto_generated|mac_out2~14\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\inst13|Mult0|auto_generated|mac_out2~15\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\inst13|Mult0|auto_generated|mac_out2~dataout\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\inst13|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\inst13|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\inst13|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\inst13|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\inst13|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\inst13|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\inst13|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\inst13|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\inst13|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\inst13|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\inst13|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\inst13|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\inst13|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\inst13|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\inst13|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\inst13|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\inst13|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\inst13|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\inst13|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\inst13|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\inst2|r_temp_L\(11) & \inst2|o_dac_data_L[8]~8_combout\ & \inst2|o_dac_data_L[7]~7_combout\ & \inst2|o_dac_data_L[6]~6_combout\ & \inst2|o_dac_data_L[5]~5_combout\ & \inst2|o_dac_data_L[4]~4_combout\
& \inst2|o_dac_data_L[3]~3_combout\ & \inst2|o_dac_data_L[2]~2_combout\ & \inst2|o_dac_data_L[1]~1_combout\ & \inst2|o_dac_data_L[0]~0_combout\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst13|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\inst3|Mult0|auto_generated|op_1~20_combout\ & \inst3|data_out[8]~8_combout\ & \inst3|data_out[7]~7_combout\ & \inst3|data_out[6]~6_combout\ & \inst3|data_out[5]~5_combout\ & 
\inst3|data_out[4]~4_combout\ & \inst3|data_out[3]~3_combout\ & \inst3|data_out[2]~2_combout\ & \inst3|data_out[1]~1_combout\ & \inst3|data_out[0]~0_combout\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst13|Mult0|auto_generated|mac_mult1~0\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\inst13|Mult0|auto_generated|mac_mult1~1\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\inst13|Mult0|auto_generated|mac_mult1~2\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\inst13|Mult0|auto_generated|mac_mult1~3\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\inst13|Mult0|auto_generated|mac_mult1~4\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\inst13|Mult0|auto_generated|mac_mult1~5\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\inst13|Mult0|auto_generated|mac_mult1~6\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\inst13|Mult0|auto_generated|mac_mult1~7\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\inst13|Mult0|auto_generated|mac_mult1~8\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\inst13|Mult0|auto_generated|mac_mult1~9\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\inst13|Mult0|auto_generated|mac_mult1~10\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\inst13|Mult0|auto_generated|mac_mult1~11\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\inst13|Mult0|auto_generated|mac_mult1~12\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\inst13|Mult0|auto_generated|mac_mult1~13\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\inst13|Mult0|auto_generated|mac_mult1~14\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\inst13|Mult0|auto_generated|mac_mult1~15\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\inst13|Mult0|auto_generated|mac_mult1~dataout\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\inst13|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\inst13|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\inst13|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\inst13|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\inst13|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\inst13|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\inst13|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\inst13|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\inst13|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\inst13|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\inst13|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\inst13|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\inst13|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\inst13|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\inst13|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\inst13|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\inst13|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\inst13|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\inst13|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\inst3|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\inst3|Mult0|auto_generated|mac_mult1~DATAOUT25\ & \inst3|Mult0|auto_generated|mac_mult1~DATAOUT24\ & \inst3|Mult0|auto_generated|mac_mult1~DATAOUT23\ & \inst3|Mult0|auto_generated|mac_mult1~DATAOUT22\
& \inst3|Mult0|auto_generated|mac_mult1~DATAOUT21\ & \inst3|Mult0|auto_generated|mac_mult1~DATAOUT20\ & \inst3|Mult0|auto_generated|mac_mult1~DATAOUT19\ & \inst3|Mult0|auto_generated|mac_mult1~DATAOUT18\ & \inst3|Mult0|auto_generated|mac_mult1~DATAOUT17\
& \inst3|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \inst3|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \inst3|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \inst3|Mult0|auto_generated|mac_mult1~DATAOUT13\ & \inst3|Mult0|auto_generated|mac_mult1~DATAOUT12\
& \inst3|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \inst3|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \inst3|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \inst3|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \inst3|Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\inst3|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \inst3|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \inst3|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \inst3|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \inst3|Mult0|auto_generated|mac_mult1~DATAOUT2\ & 
\inst3|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \inst3|Mult0|auto_generated|mac_mult1~dataout\ & \inst3|Mult0|auto_generated|mac_mult1~9\ & \inst3|Mult0|auto_generated|mac_mult1~8\ & \inst3|Mult0|auto_generated|mac_mult1~7\ & 
\inst3|Mult0|auto_generated|mac_mult1~6\ & \inst3|Mult0|auto_generated|mac_mult1~5\ & \inst3|Mult0|auto_generated|mac_mult1~4\ & \inst3|Mult0|auto_generated|mac_mult1~3\ & \inst3|Mult0|auto_generated|mac_mult1~2\ & \inst3|Mult0|auto_generated|mac_mult1~1\
& \inst3|Mult0|auto_generated|mac_mult1~0\);

\inst3|Mult0|auto_generated|mac_out2~0\ <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\inst3|Mult0|auto_generated|mac_out2~1\ <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\inst3|Mult0|auto_generated|mac_out2~2\ <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\inst3|Mult0|auto_generated|mac_out2~3\ <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\inst3|Mult0|auto_generated|mac_out2~4\ <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\inst3|Mult0|auto_generated|mac_out2~5\ <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\inst3|Mult0|auto_generated|mac_out2~6\ <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\inst3|Mult0|auto_generated|mac_out2~7\ <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\inst3|Mult0|auto_generated|mac_out2~8\ <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\inst3|Mult0|auto_generated|mac_out2~9\ <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\inst3|Mult0|auto_generated|w155w\(0) <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\inst3|Mult0|auto_generated|w155w\(1) <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\inst3|Mult0|auto_generated|w155w\(2) <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\inst3|Mult0|auto_generated|w155w\(3) <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\inst3|Mult0|auto_generated|w155w\(4) <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\inst3|Mult0|auto_generated|w155w\(5) <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\inst3|Mult0|auto_generated|w155w\(6) <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\inst3|Mult0|auto_generated|w155w\(7) <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\inst3|Mult0|auto_generated|w155w\(8) <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\inst3|Mult0|auto_generated|w155w\(9) <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\inst3|Mult0|auto_generated|w155w\(10) <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\inst3|Mult0|auto_generated|w155w\(11) <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\inst3|Mult0|auto_generated|w155w\(12) <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\inst3|Mult0|auto_generated|w155w\(13) <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\inst3|Mult0|auto_generated|w155w\(14) <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\inst3|Mult0|auto_generated|w155w\(15) <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\inst3|Mult0|auto_generated|w155w\(16) <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\inst3|Mult0|auto_generated|w155w\(17) <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\inst3|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\inst3|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\inst3|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\inst3|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\inst3|Mult0|auto_generated|mac_out2~DATAOUT22\ <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\inst3|Mult0|auto_generated|mac_out2~DATAOUT23\ <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\inst3|Mult0|auto_generated|mac_out2~DATAOUT24\ <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\inst3|Mult0|auto_generated|mac_out2~DATAOUT25\ <= \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\inst3|Mult0|auto_generated|mac_out4_DATAA_bus\ <= (\inst3|Mult0|auto_generated|mac_mult3~DATAOUT10\ & \inst3|Mult0|auto_generated|mac_mult3~DATAOUT9\ & \inst3|Mult0|auto_generated|mac_mult3~DATAOUT8\ & \inst3|Mult0|auto_generated|mac_mult3~DATAOUT7\ & 
\inst3|Mult0|auto_generated|mac_mult3~DATAOUT6\ & \inst3|Mult0|auto_generated|mac_mult3~DATAOUT5\ & \inst3|Mult0|auto_generated|mac_mult3~DATAOUT4\ & \inst3|Mult0|auto_generated|mac_mult3~DATAOUT3\ & \inst3|Mult0|auto_generated|mac_mult3~DATAOUT2\ & 
\inst3|Mult0|auto_generated|mac_mult3~DATAOUT1\ & \inst3|Mult0|auto_generated|mac_mult3~dataout\ & \inst3|Mult0|auto_generated|mac_mult3~6\ & \inst3|Mult0|auto_generated|mac_mult3~5\ & \inst3|Mult0|auto_generated|mac_mult3~4\ & 
\inst3|Mult0|auto_generated|mac_mult3~3\ & \inst3|Mult0|auto_generated|mac_mult3~2\ & \inst3|Mult0|auto_generated|mac_mult3~1\ & \inst3|Mult0|auto_generated|mac_mult3~0\);

\inst3|Mult0|auto_generated|mac_out4~0\ <= \inst3|Mult0|auto_generated|mac_out4_DATAOUT_bus\(0);
\inst3|Mult0|auto_generated|mac_out4~1\ <= \inst3|Mult0|auto_generated|mac_out4_DATAOUT_bus\(1);
\inst3|Mult0|auto_generated|mac_out4~2\ <= \inst3|Mult0|auto_generated|mac_out4_DATAOUT_bus\(2);
\inst3|Mult0|auto_generated|mac_out4~3\ <= \inst3|Mult0|auto_generated|mac_out4_DATAOUT_bus\(3);
\inst3|Mult0|auto_generated|mac_out4~4\ <= \inst3|Mult0|auto_generated|mac_out4_DATAOUT_bus\(4);
\inst3|Mult0|auto_generated|mac_out4~5\ <= \inst3|Mult0|auto_generated|mac_out4_DATAOUT_bus\(5);
\inst3|Mult0|auto_generated|mac_out4~6\ <= \inst3|Mult0|auto_generated|mac_out4_DATAOUT_bus\(6);
\inst3|Mult0|auto_generated|mac_out4~dataout\ <= \inst3|Mult0|auto_generated|mac_out4_DATAOUT_bus\(7);
\inst3|Mult0|auto_generated|mac_out4~DATAOUT1\ <= \inst3|Mult0|auto_generated|mac_out4_DATAOUT_bus\(8);
\inst3|Mult0|auto_generated|mac_out4~DATAOUT2\ <= \inst3|Mult0|auto_generated|mac_out4_DATAOUT_bus\(9);
\inst3|Mult0|auto_generated|mac_out4~DATAOUT3\ <= \inst3|Mult0|auto_generated|mac_out4_DATAOUT_bus\(10);
\inst3|Mult0|auto_generated|mac_out4~DATAOUT4\ <= \inst3|Mult0|auto_generated|mac_out4_DATAOUT_bus\(11);
\inst3|Mult0|auto_generated|mac_out4~DATAOUT5\ <= \inst3|Mult0|auto_generated|mac_out4_DATAOUT_bus\(12);
\inst3|Mult0|auto_generated|mac_out4~DATAOUT6\ <= \inst3|Mult0|auto_generated|mac_out4_DATAOUT_bus\(13);
\inst3|Mult0|auto_generated|mac_out4~DATAOUT7\ <= \inst3|Mult0|auto_generated|mac_out4_DATAOUT_bus\(14);
\inst3|Mult0|auto_generated|mac_out4~DATAOUT8\ <= \inst3|Mult0|auto_generated|mac_out4_DATAOUT_bus\(15);
\inst3|Mult0|auto_generated|mac_out4~DATAOUT9\ <= \inst3|Mult0|auto_generated|mac_out4_DATAOUT_bus\(16);
\inst3|Mult0|auto_generated|mac_out4~DATAOUT10\ <= \inst3|Mult0|auto_generated|mac_out4_DATAOUT_bus\(17);

\inst3|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\inst3|acc\(17) & \inst3|acc\(16) & \inst3|acc\(15) & \inst3|acc\(14) & \inst3|acc\(13) & \inst3|acc\(12) & \inst3|acc\(11) & \inst3|acc\(10) & \inst3|acc\(9) & \inst3|acc\(8) & 
\inst3|acc\(7) & \inst3|acc\(6) & \inst3|acc\(5) & \inst3|acc\(4) & \inst3|acc\(3) & \inst3|acc\(2) & \inst3|acc\(1) & \inst3|acc\(0));

\inst3|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & vcc & gnd & gnd & vcc & vcc & vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst3|Mult0|auto_generated|mac_mult1~0\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\inst3|Mult0|auto_generated|mac_mult1~1\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\inst3|Mult0|auto_generated|mac_mult1~2\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\inst3|Mult0|auto_generated|mac_mult1~3\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\inst3|Mult0|auto_generated|mac_mult1~4\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\inst3|Mult0|auto_generated|mac_mult1~5\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\inst3|Mult0|auto_generated|mac_mult1~6\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\inst3|Mult0|auto_generated|mac_mult1~7\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\inst3|Mult0|auto_generated|mac_mult1~8\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\inst3|Mult0|auto_generated|mac_mult1~9\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\inst3|Mult0|auto_generated|mac_mult1~dataout\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\inst3|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\inst3|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\inst3|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\inst3|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\inst3|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\inst3|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\inst3|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\inst3|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\inst3|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\inst3|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\inst3|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\inst3|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\inst3|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\inst3|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\inst3|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\inst3|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\inst3|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\inst3|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\inst3|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\inst3|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\inst3|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\inst3|Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\inst3|Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\inst3|Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\inst3|Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\inst3|Mult0|auto_generated|mac_mult3_DATAA_bus\ <= (gnd & vcc & vcc & gnd & gnd & vcc & vcc & vcc & gnd);

\inst3|Mult0|auto_generated|mac_mult3_DATAB_bus\ <= (\inst3|acc\(20) & \inst3|acc\(19) & \inst3|acc\(18) & gnd & gnd & gnd & gnd & gnd & gnd);

\inst3|Mult0|auto_generated|mac_mult3~0\ <= \inst3|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(0);
\inst3|Mult0|auto_generated|mac_mult3~1\ <= \inst3|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(1);
\inst3|Mult0|auto_generated|mac_mult3~2\ <= \inst3|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(2);
\inst3|Mult0|auto_generated|mac_mult3~3\ <= \inst3|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(3);
\inst3|Mult0|auto_generated|mac_mult3~4\ <= \inst3|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(4);
\inst3|Mult0|auto_generated|mac_mult3~5\ <= \inst3|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(5);
\inst3|Mult0|auto_generated|mac_mult3~6\ <= \inst3|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(6);
\inst3|Mult0|auto_generated|mac_mult3~dataout\ <= \inst3|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(7);
\inst3|Mult0|auto_generated|mac_mult3~DATAOUT1\ <= \inst3|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(8);
\inst3|Mult0|auto_generated|mac_mult3~DATAOUT2\ <= \inst3|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(9);
\inst3|Mult0|auto_generated|mac_mult3~DATAOUT3\ <= \inst3|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(10);
\inst3|Mult0|auto_generated|mac_mult3~DATAOUT4\ <= \inst3|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(11);
\inst3|Mult0|auto_generated|mac_mult3~DATAOUT5\ <= \inst3|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(12);
\inst3|Mult0|auto_generated|mac_mult3~DATAOUT6\ <= \inst3|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(13);
\inst3|Mult0|auto_generated|mac_mult3~DATAOUT7\ <= \inst3|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(14);
\inst3|Mult0|auto_generated|mac_mult3~DATAOUT8\ <= \inst3|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(15);
\inst3|Mult0|auto_generated|mac_mult3~DATAOUT9\ <= \inst3|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(16);
\inst3|Mult0|auto_generated|mac_mult3~DATAOUT10\ <= \inst3|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(17);

\inst2|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\inst2|Mult0|auto_generated|mac_mult1~DATAOUT22\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT21\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT20\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT19\
& \inst2|Mult0|auto_generated|mac_mult1~DATAOUT18\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT17\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT14\
& \inst2|Mult0|auto_generated|mac_mult1~DATAOUT13\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT9\
& \inst2|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT4\ & 
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \inst2|Mult0|auto_generated|mac_mult1~dataout\ & \inst2|Mult0|auto_generated|mac_mult1~12\ & 
\inst2|Mult0|auto_generated|mac_mult1~11\ & \inst2|Mult0|auto_generated|mac_mult1~10\ & \inst2|Mult0|auto_generated|mac_mult1~9\ & \inst2|Mult0|auto_generated|mac_mult1~8\ & \inst2|Mult0|auto_generated|mac_mult1~7\ & 
\inst2|Mult0|auto_generated|mac_mult1~6\ & \inst2|Mult0|auto_generated|mac_mult1~5\ & \inst2|Mult0|auto_generated|mac_mult1~4\ & \inst2|Mult0|auto_generated|mac_mult1~3\ & \inst2|Mult0|auto_generated|mac_mult1~2\ & \inst2|Mult0|auto_generated|mac_mult1~1\
& \inst2|Mult0|auto_generated|mac_mult1~0\);

\inst2|Mult0|auto_generated|mac_out2~0\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\inst2|Mult0|auto_generated|mac_out2~1\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\inst2|Mult0|auto_generated|mac_out2~2\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\inst2|Mult0|auto_generated|mac_out2~3\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\inst2|Mult0|auto_generated|mac_out2~4\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\inst2|Mult0|auto_generated|mac_out2~5\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\inst2|Mult0|auto_generated|mac_out2~6\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\inst2|Mult0|auto_generated|mac_out2~7\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\inst2|Mult0|auto_generated|mac_out2~8\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\inst2|Mult0|auto_generated|mac_out2~9\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\inst2|Mult0|auto_generated|mac_out2~10\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\inst2|Mult0|auto_generated|mac_out2~11\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\inst2|Mult0|auto_generated|mac_out2~12\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\inst2|Mult0|auto_generated|mac_out2~dataout\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\inst2|r_mult_L\(10) <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\inst2|r_mult_L\(11) <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\inst2|r_mult_L\(12) <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\inst2|r_mult_L\(13) <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\inst2|r_mult_L\(14) <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\inst2|r_mult_L\(15) <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\inst2|r_mult_L\(16) <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\inst2|r_mult_L\(17) <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\inst2|r_mult_L\(18) <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\inst2|r_mult_L\(19) <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\inst2|r_mult_L\(20) <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\inst2|r_mult_L\(21) <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT22\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\inst2|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\inst2|r_diff_L[11]~34_combout\ & \inst2|r_diff_L[10]~32_combout\ & \inst2|r_diff_L[9]~30_combout\ & \inst2|r_diff_L[8]~28_combout\ & \inst2|r_diff_L[7]~26_combout\ & \inst2|r_diff_L[6]~24_combout\ & 
\inst2|r_diff_L[5]~22_combout\ & \inst2|r_diff_L[4]~20_combout\ & \inst2|r_diff_L[3]~18_combout\ & \inst2|r_diff_L[2]~16_combout\ & \inst2|r_diff_L[1]~14_combout\ & \inst2|r_diff_L[0]~12_combout\ & gnd & gnd & gnd & gnd & gnd & gnd);

\inst2|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & \inst2|r_timer[9]~SCLR_LUT_combout\ & \inst2|r_timer[8]~SCLR_LUT_combout\ & \inst2|r_timer[7]~SCLR_LUT_combout\ & \inst2|r_timer[6]~SCLR_LUT_combout\ & \inst2|r_timer[5]~SCLR_LUT_combout\ & 
\inst2|r_timer[4]~SCLR_LUT_combout\ & \inst2|r_timer[3]~SCLR_LUT_combout\ & \inst2|r_timer[2]~SCLR_LUT_combout\ & \inst2|r_timer[1]~SCLR_LUT_combout\ & \inst2|r_timer[0]~SCLR_LUT_combout\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst2|Mult0|auto_generated|mac_mult1~0\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\inst2|Mult0|auto_generated|mac_mult1~1\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\inst2|Mult0|auto_generated|mac_mult1~2\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\inst2|Mult0|auto_generated|mac_mult1~3\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\inst2|Mult0|auto_generated|mac_mult1~4\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\inst2|Mult0|auto_generated|mac_mult1~5\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\inst2|Mult0|auto_generated|mac_mult1~6\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\inst2|Mult0|auto_generated|mac_mult1~7\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\inst2|Mult0|auto_generated|mac_mult1~8\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\inst2|Mult0|auto_generated|mac_mult1~9\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\inst2|Mult0|auto_generated|mac_mult1~10\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\inst2|Mult0|auto_generated|mac_mult1~11\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\inst2|Mult0|auto_generated|mac_mult1~12\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\inst2|Mult0|auto_generated|mac_mult1~dataout\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\inst3|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\inst2|o_dac_data_R[1]~1_combout\ & \inst2|o_dac_data_R[0]~0_combout\);

\inst3|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst3|ptr\(10) & \inst3|ptr\(9) & \inst3|ptr\(8) & \inst3|ptr\(7) & \inst3|ptr\(6) & \inst3|ptr\(5) & \inst3|ptr\(4) & \inst3|ptr\(3) & \inst3|ptr\(2) & \inst3|ptr\(1) & 
\inst3|ptr\(0));

\inst3|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\inst3|ptr\(10) & \inst3|ptr\(9) & \inst3|ptr\(8) & \inst3|ptr\(7) & \inst3|ptr\(6) & \inst3|ptr\(5) & \inst3|ptr\(4) & \inst3|ptr\(3) & \inst3|ptr\(2) & \inst3|ptr\(1) & 
\inst3|ptr\(0));

\inst3|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \inst3|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\inst3|ram_rtl_0|auto_generated|ram_block1a1\ <= \inst3|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);

\inst3|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ <= (\inst2|o_dac_data_R[3]~3_combout\ & \inst2|o_dac_data_R[2]~2_combout\);

\inst3|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\inst3|ptr\(10) & \inst3|ptr\(9) & \inst3|ptr\(8) & \inst3|ptr\(7) & \inst3|ptr\(6) & \inst3|ptr\(5) & \inst3|ptr\(4) & \inst3|ptr\(3) & \inst3|ptr\(2) & \inst3|ptr\(1) & 
\inst3|ptr\(0));

\inst3|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\inst3|ptr\(10) & \inst3|ptr\(9) & \inst3|ptr\(8) & \inst3|ptr\(7) & \inst3|ptr\(6) & \inst3|ptr\(5) & \inst3|ptr\(4) & \inst3|ptr\(3) & \inst3|ptr\(2) & \inst3|ptr\(1) & 
\inst3|ptr\(0));

\inst3|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \inst3|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);
\inst3|ram_rtl_0|auto_generated|ram_block1a3\ <= \inst3|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(1);

\inst3|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (\inst2|o_dac_data_R[5]~5_combout\ & \inst2|o_dac_data_R[4]~4_combout\);

\inst3|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\inst3|ptr\(10) & \inst3|ptr\(9) & \inst3|ptr\(8) & \inst3|ptr\(7) & \inst3|ptr\(6) & \inst3|ptr\(5) & \inst3|ptr\(4) & \inst3|ptr\(3) & \inst3|ptr\(2) & \inst3|ptr\(1) & 
\inst3|ptr\(0));

\inst3|ram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\inst3|ptr\(10) & \inst3|ptr\(9) & \inst3|ptr\(8) & \inst3|ptr\(7) & \inst3|ptr\(6) & \inst3|ptr\(5) & \inst3|ptr\(4) & \inst3|ptr\(3) & \inst3|ptr\(2) & \inst3|ptr\(1) & 
\inst3|ptr\(0));

\inst3|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \inst3|ram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);
\inst3|ram_rtl_0|auto_generated|ram_block1a5\ <= \inst3|ram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(1);

\inst3|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ <= (\inst2|o_dac_data_R[7]~7_combout\ & \inst2|o_dac_data_R[6]~6_combout\);

\inst3|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\inst3|ptr\(10) & \inst3|ptr\(9) & \inst3|ptr\(8) & \inst3|ptr\(7) & \inst3|ptr\(6) & \inst3|ptr\(5) & \inst3|ptr\(4) & \inst3|ptr\(3) & \inst3|ptr\(2) & \inst3|ptr\(1) & 
\inst3|ptr\(0));

\inst3|ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\inst3|ptr\(10) & \inst3|ptr\(9) & \inst3|ptr\(8) & \inst3|ptr\(7) & \inst3|ptr\(6) & \inst3|ptr\(5) & \inst3|ptr\(4) & \inst3|ptr\(3) & \inst3|ptr\(2) & \inst3|ptr\(1) & 
\inst3|ptr\(0));

\inst3|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \inst3|ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);
\inst3|ram_rtl_0|auto_generated|ram_block1a7\ <= \inst3|ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(1);

\inst3|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ <= (\inst2|r_temp_R\(11) & \inst2|o_dac_data_R[8]~8_combout\);

\inst3|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\inst3|ptr\(10) & \inst3|ptr\(9) & \inst3|ptr\(8) & \inst3|ptr\(7) & \inst3|ptr\(6) & \inst3|ptr\(5) & \inst3|ptr\(4) & \inst3|ptr\(3) & \inst3|ptr\(2) & \inst3|ptr\(1) & 
\inst3|ptr\(0));

\inst3|ram_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\inst3|ptr\(10) & \inst3|ptr\(9) & \inst3|ptr\(8) & \inst3|ptr\(7) & \inst3|ptr\(6) & \inst3|ptr\(5) & \inst3|ptr\(4) & \inst3|ptr\(3) & \inst3|ptr\(2) & \inst3|ptr\(1) & 
\inst3|ptr\(0));

\inst3|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ <= \inst3|ram_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);
\inst3|ram_rtl_0|auto_generated|ram_block1a9\ <= \inst3|ram_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(1);

\inst2|Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\inst2|Mult1|auto_generated|mac_mult1~DATAOUT22\ & \inst2|Mult1|auto_generated|mac_mult1~DATAOUT21\ & \inst2|Mult1|auto_generated|mac_mult1~DATAOUT20\ & \inst2|Mult1|auto_generated|mac_mult1~DATAOUT19\
& \inst2|Mult1|auto_generated|mac_mult1~DATAOUT18\ & \inst2|Mult1|auto_generated|mac_mult1~DATAOUT17\ & \inst2|Mult1|auto_generated|mac_mult1~DATAOUT16\ & \inst2|Mult1|auto_generated|mac_mult1~DATAOUT15\ & \inst2|Mult1|auto_generated|mac_mult1~DATAOUT14\
& \inst2|Mult1|auto_generated|mac_mult1~DATAOUT13\ & \inst2|Mult1|auto_generated|mac_mult1~DATAOUT12\ & \inst2|Mult1|auto_generated|mac_mult1~DATAOUT11\ & \inst2|Mult1|auto_generated|mac_mult1~DATAOUT10\ & \inst2|Mult1|auto_generated|mac_mult1~DATAOUT9\
& \inst2|Mult1|auto_generated|mac_mult1~DATAOUT8\ & \inst2|Mult1|auto_generated|mac_mult1~DATAOUT7\ & \inst2|Mult1|auto_generated|mac_mult1~DATAOUT6\ & \inst2|Mult1|auto_generated|mac_mult1~DATAOUT5\ & \inst2|Mult1|auto_generated|mac_mult1~DATAOUT4\ & 
\inst2|Mult1|auto_generated|mac_mult1~DATAOUT3\ & \inst2|Mult1|auto_generated|mac_mult1~DATAOUT2\ & \inst2|Mult1|auto_generated|mac_mult1~DATAOUT1\ & \inst2|Mult1|auto_generated|mac_mult1~dataout\ & \inst2|Mult1|auto_generated|mac_mult1~12\ & 
\inst2|Mult1|auto_generated|mac_mult1~11\ & \inst2|Mult1|auto_generated|mac_mult1~10\ & \inst2|Mult1|auto_generated|mac_mult1~9\ & \inst2|Mult1|auto_generated|mac_mult1~8\ & \inst2|Mult1|auto_generated|mac_mult1~7\ & 
\inst2|Mult1|auto_generated|mac_mult1~6\ & \inst2|Mult1|auto_generated|mac_mult1~5\ & \inst2|Mult1|auto_generated|mac_mult1~4\ & \inst2|Mult1|auto_generated|mac_mult1~3\ & \inst2|Mult1|auto_generated|mac_mult1~2\ & \inst2|Mult1|auto_generated|mac_mult1~1\
& \inst2|Mult1|auto_generated|mac_mult1~0\);

\inst2|Mult1|auto_generated|mac_out2~0\ <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\inst2|Mult1|auto_generated|mac_out2~1\ <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\inst2|Mult1|auto_generated|mac_out2~2\ <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\inst2|Mult1|auto_generated|mac_out2~3\ <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\inst2|Mult1|auto_generated|mac_out2~4\ <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\inst2|Mult1|auto_generated|mac_out2~5\ <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\inst2|Mult1|auto_generated|mac_out2~6\ <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\inst2|Mult1|auto_generated|mac_out2~7\ <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\inst2|Mult1|auto_generated|mac_out2~8\ <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\inst2|Mult1|auto_generated|mac_out2~9\ <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\inst2|Mult1|auto_generated|mac_out2~10\ <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\inst2|Mult1|auto_generated|mac_out2~11\ <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\inst2|Mult1|auto_generated|mac_out2~12\ <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\inst2|Mult1|auto_generated|mac_out2~dataout\ <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\inst2|Mult1|auto_generated|mac_out2~DATAOUT1\ <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\inst2|Mult1|auto_generated|mac_out2~DATAOUT2\ <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\inst2|Mult1|auto_generated|mac_out2~DATAOUT3\ <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\inst2|Mult1|auto_generated|mac_out2~DATAOUT4\ <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);
\inst2|Mult1|auto_generated|mac_out2~DATAOUT5\ <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(18);
\inst2|Mult1|auto_generated|mac_out2~DATAOUT6\ <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(19);
\inst2|Mult1|auto_generated|mac_out2~DATAOUT7\ <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(20);
\inst2|Mult1|auto_generated|mac_out2~DATAOUT8\ <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(21);
\inst2|Mult1|auto_generated|mac_out2~DATAOUT9\ <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(22);
\inst2|r_mult_R\(10) <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(23);
\inst2|r_mult_R\(11) <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(24);
\inst2|r_mult_R\(12) <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(25);
\inst2|r_mult_R\(13) <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(26);
\inst2|r_mult_R\(14) <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(27);
\inst2|r_mult_R\(15) <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(28);
\inst2|r_mult_R\(16) <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(29);
\inst2|r_mult_R\(17) <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(30);
\inst2|r_mult_R\(18) <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(31);
\inst2|r_mult_R\(19) <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(32);
\inst2|r_mult_R\(20) <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(33);
\inst2|r_mult_R\(21) <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(34);
\inst2|Mult1|auto_generated|mac_out2~DATAOUT22\ <= \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\(35);

\inst2|Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (\inst2|r_diff_R[11]~34_combout\ & \inst2|r_diff_R[10]~32_combout\ & \inst2|r_diff_R[9]~30_combout\ & \inst2|r_diff_R[8]~28_combout\ & \inst2|r_diff_R[7]~26_combout\ & \inst2|r_diff_R[6]~24_combout\ & 
\inst2|r_diff_R[5]~22_combout\ & \inst2|r_diff_R[4]~20_combout\ & \inst2|r_diff_R[3]~18_combout\ & \inst2|r_diff_R[2]~16_combout\ & \inst2|r_diff_R[1]~14_combout\ & \inst2|r_diff_R[0]~12_combout\ & gnd & gnd & gnd & gnd & gnd & gnd);

\inst2|Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & \inst2|r_timer[9]~SCLR_LUT_combout\ & \inst2|r_timer[8]~SCLR_LUT_combout\ & \inst2|r_timer[7]~SCLR_LUT_combout\ & \inst2|r_timer[6]~SCLR_LUT_combout\ & \inst2|r_timer[5]~SCLR_LUT_combout\ & 
\inst2|r_timer[4]~SCLR_LUT_combout\ & \inst2|r_timer[3]~SCLR_LUT_combout\ & \inst2|r_timer[2]~SCLR_LUT_combout\ & \inst2|r_timer[1]~SCLR_LUT_combout\ & \inst2|r_timer[0]~SCLR_LUT_combout\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst2|Mult1|auto_generated|mac_mult1~0\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\inst2|Mult1|auto_generated|mac_mult1~1\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\inst2|Mult1|auto_generated|mac_mult1~2\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\inst2|Mult1|auto_generated|mac_mult1~3\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\inst2|Mult1|auto_generated|mac_mult1~4\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\inst2|Mult1|auto_generated|mac_mult1~5\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\inst2|Mult1|auto_generated|mac_mult1~6\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\inst2|Mult1|auto_generated|mac_mult1~7\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\inst2|Mult1|auto_generated|mac_mult1~8\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\inst2|Mult1|auto_generated|mac_mult1~9\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\inst2|Mult1|auto_generated|mac_mult1~10\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\inst2|Mult1|auto_generated|mac_mult1~11\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\inst2|Mult1|auto_generated|mac_mult1~12\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\inst2|Mult1|auto_generated|mac_mult1~dataout\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\inst2|Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\inst2|Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\inst2|Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\inst2|Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);
\inst2|Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(18);
\inst2|Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(19);
\inst2|Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(20);
\inst2|Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(21);
\inst2|Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(22);
\inst2|Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(23);
\inst2|Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(24);
\inst2|Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(25);
\inst2|Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(26);
\inst2|Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(27);
\inst2|Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(28);
\inst2|Mult1|auto_generated|mac_mult1~DATAOUT16\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(29);
\inst2|Mult1|auto_generated|mac_mult1~DATAOUT17\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(30);
\inst2|Mult1|auto_generated|mac_mult1~DATAOUT18\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(31);
\inst2|Mult1|auto_generated|mac_mult1~DATAOUT19\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(32);
\inst2|Mult1|auto_generated|mac_mult1~DATAOUT20\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(33);
\inst2|Mult1|auto_generated|mac_mult1~DATAOUT21\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(34);
\inst2|Mult1|auto_generated|mac_mult1~DATAOUT22\ <= \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(35);

\inst13|Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\inst13|Mult1|auto_generated|mac_mult1~DATAOUT19\ & \inst13|Mult1|auto_generated|mac_mult1~DATAOUT18\ & \inst13|Mult1|auto_generated|mac_mult1~DATAOUT17\ & 
\inst13|Mult1|auto_generated|mac_mult1~DATAOUT16\ & \inst13|Mult1|auto_generated|mac_mult1~DATAOUT15\ & \inst13|Mult1|auto_generated|mac_mult1~DATAOUT14\ & \inst13|Mult1|auto_generated|mac_mult1~DATAOUT13\ & 
\inst13|Mult1|auto_generated|mac_mult1~DATAOUT12\ & \inst13|Mult1|auto_generated|mac_mult1~DATAOUT11\ & \inst13|Mult1|auto_generated|mac_mult1~DATAOUT10\ & \inst13|Mult1|auto_generated|mac_mult1~DATAOUT9\ & \inst13|Mult1|auto_generated|mac_mult1~DATAOUT8\
& \inst13|Mult1|auto_generated|mac_mult1~DATAOUT7\ & \inst13|Mult1|auto_generated|mac_mult1~DATAOUT6\ & \inst13|Mult1|auto_generated|mac_mult1~DATAOUT5\ & \inst13|Mult1|auto_generated|mac_mult1~DATAOUT4\ & \inst13|Mult1|auto_generated|mac_mult1~DATAOUT3\
& \inst13|Mult1|auto_generated|mac_mult1~DATAOUT2\ & \inst13|Mult1|auto_generated|mac_mult1~DATAOUT1\ & \inst13|Mult1|auto_generated|mac_mult1~dataout\ & \inst13|Mult1|auto_generated|mac_mult1~15\ & \inst13|Mult1|auto_generated|mac_mult1~14\ & 
\inst13|Mult1|auto_generated|mac_mult1~13\ & \inst13|Mult1|auto_generated|mac_mult1~12\ & \inst13|Mult1|auto_generated|mac_mult1~11\ & \inst13|Mult1|auto_generated|mac_mult1~10\ & \inst13|Mult1|auto_generated|mac_mult1~9\ & 
\inst13|Mult1|auto_generated|mac_mult1~8\ & \inst13|Mult1|auto_generated|mac_mult1~7\ & \inst13|Mult1|auto_generated|mac_mult1~6\ & \inst13|Mult1|auto_generated|mac_mult1~5\ & \inst13|Mult1|auto_generated|mac_mult1~4\ & 
\inst13|Mult1|auto_generated|mac_mult1~3\ & \inst13|Mult1|auto_generated|mac_mult1~2\ & \inst13|Mult1|auto_generated|mac_mult1~1\ & \inst13|Mult1|auto_generated|mac_mult1~0\);

\inst13|Mult1|auto_generated|mac_out2~0\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\inst13|Mult1|auto_generated|mac_out2~1\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\inst13|Mult1|auto_generated|mac_out2~2\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\inst13|Mult1|auto_generated|mac_out2~3\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\inst13|Mult1|auto_generated|mac_out2~4\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\inst13|Mult1|auto_generated|mac_out2~5\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\inst13|Mult1|auto_generated|mac_out2~6\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\inst13|Mult1|auto_generated|mac_out2~7\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\inst13|Mult1|auto_generated|mac_out2~8\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\inst13|Mult1|auto_generated|mac_out2~9\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\inst13|Mult1|auto_generated|mac_out2~10\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\inst13|Mult1|auto_generated|mac_out2~11\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\inst13|Mult1|auto_generated|mac_out2~12\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\inst13|Mult1|auto_generated|mac_out2~13\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\inst13|Mult1|auto_generated|mac_out2~14\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\inst13|Mult1|auto_generated|mac_out2~15\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\inst13|Mult1|auto_generated|mac_out2~dataout\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\inst13|Mult1|auto_generated|mac_out2~DATAOUT1\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);
\inst13|Mult1|auto_generated|mac_out2~DATAOUT2\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(18);
\inst13|Mult1|auto_generated|mac_out2~DATAOUT3\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(19);
\inst13|Mult1|auto_generated|mac_out2~DATAOUT4\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(20);
\inst13|Mult1|auto_generated|mac_out2~DATAOUT5\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(21);
\inst13|Mult1|auto_generated|mac_out2~DATAOUT6\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(22);
\inst13|Mult1|auto_generated|mac_out2~DATAOUT7\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(23);
\inst13|Mult1|auto_generated|mac_out2~DATAOUT8\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(24);
\inst13|Mult1|auto_generated|mac_out2~DATAOUT9\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(25);
\inst13|Mult1|auto_generated|mac_out2~DATAOUT10\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(26);
\inst13|Mult1|auto_generated|mac_out2~DATAOUT11\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(27);
\inst13|Mult1|auto_generated|mac_out2~DATAOUT12\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(28);
\inst13|Mult1|auto_generated|mac_out2~DATAOUT13\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(29);
\inst13|Mult1|auto_generated|mac_out2~DATAOUT14\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(30);
\inst13|Mult1|auto_generated|mac_out2~DATAOUT15\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(31);
\inst13|Mult1|auto_generated|mac_out2~DATAOUT16\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(32);
\inst13|Mult1|auto_generated|mac_out2~DATAOUT17\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(33);
\inst13|Mult1|auto_generated|mac_out2~DATAOUT18\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(34);
\inst13|Mult1|auto_generated|mac_out2~DATAOUT19\ <= \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\(35);

\inst13|Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (\inst2|r_temp_L\(11) & \inst2|o_dac_data_L[8]~8_combout\ & \inst2|o_dac_data_L[7]~7_combout\ & \inst2|o_dac_data_L[6]~6_combout\ & \inst2|o_dac_data_L[5]~5_combout\ & \inst2|o_dac_data_L[4]~4_combout\
& \inst2|o_dac_data_L[3]~3_combout\ & \inst2|o_dac_data_L[2]~2_combout\ & \inst2|o_dac_data_L[1]~1_combout\ & \inst2|o_dac_data_L[0]~0_combout\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst13|Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (\inst2|r_temp_R\(11) & \inst2|o_dac_data_R[8]~8_combout\ & \inst2|o_dac_data_R[7]~7_combout\ & \inst2|o_dac_data_R[6]~6_combout\ & \inst2|o_dac_data_R[5]~5_combout\ & \inst2|o_dac_data_R[4]~4_combout\
& \inst2|o_dac_data_R[3]~3_combout\ & \inst2|o_dac_data_R[2]~2_combout\ & \inst2|o_dac_data_R[1]~1_combout\ & \inst2|o_dac_data_R[0]~0_combout\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst13|Mult1|auto_generated|mac_mult1~0\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\inst13|Mult1|auto_generated|mac_mult1~1\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\inst13|Mult1|auto_generated|mac_mult1~2\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\inst13|Mult1|auto_generated|mac_mult1~3\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\inst13|Mult1|auto_generated|mac_mult1~4\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\inst13|Mult1|auto_generated|mac_mult1~5\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\inst13|Mult1|auto_generated|mac_mult1~6\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\inst13|Mult1|auto_generated|mac_mult1~7\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\inst13|Mult1|auto_generated|mac_mult1~8\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\inst13|Mult1|auto_generated|mac_mult1~9\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\inst13|Mult1|auto_generated|mac_mult1~10\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\inst13|Mult1|auto_generated|mac_mult1~11\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\inst13|Mult1|auto_generated|mac_mult1~12\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\inst13|Mult1|auto_generated|mac_mult1~13\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\inst13|Mult1|auto_generated|mac_mult1~14\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\inst13|Mult1|auto_generated|mac_mult1~15\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\inst13|Mult1|auto_generated|mac_mult1~dataout\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\inst13|Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);
\inst13|Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(18);
\inst13|Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(19);
\inst13|Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(20);
\inst13|Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(21);
\inst13|Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(22);
\inst13|Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(23);
\inst13|Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(24);
\inst13|Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(25);
\inst13|Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(26);
\inst13|Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(27);
\inst13|Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(28);
\inst13|Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(29);
\inst13|Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(30);
\inst13|Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(31);
\inst13|Mult1|auto_generated|mac_mult1~DATAOUT16\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(32);
\inst13|Mult1|auto_generated|mac_mult1~DATAOUT17\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(33);
\inst13|Mult1|auto_generated|mac_mult1~DATAOUT18\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(34);
\inst13|Mult1|auto_generated|mac_mult1~DATAOUT19\ <= \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(35);

\inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst7|pll_18432_inst|altpll_component|_clk0\);

\inst7|nrst_reg~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst7|nrst_reg~regout\);

\inst7|lrck_reg~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst7|lrck_reg~regout\);

\CLK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK_50~combout\);

\inst9|conf_done_reg~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst9|conf_done_reg~regout\);
\inst6|ALT_INV_scl_o~regout\ <= NOT \inst6|scl_o~regout\;
\inst6|ALT_INV_sda_o~regout\ <= NOT \inst6|sda_o~regout\;
\inst6|ALT_INV_clk_stretch~regout\ <= NOT \inst6|clk_stretch~regout\;
\ALT_INV_KEY0~combout\ <= NOT \KEY0~combout\;
\inst7|ALT_INV_nrst_reg~clkctrl_outclk\ <= NOT \inst7|nrst_reg~clkctrl_outclk\;
\inst9|ALT_INV_conf_done_reg~clkctrl_outclk\ <= NOT \inst9|conf_done_reg~clkctrl_outclk\;

-- Location: LCFF_X31_Y28_N17
\inst7|lrck_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|lrck_cnt[4]~13_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst7|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|lrck_cnt\(4));

-- Location: LCFF_X31_Y28_N13
\inst7|lrck_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|lrck_cnt[2]~9_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst7|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|lrck_cnt\(2));

-- Location: LCCOMB_X31_Y28_N12
\inst7|lrck_cnt[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|lrck_cnt[2]~9_combout\ = (\inst7|lrck_cnt\(2) & (\inst7|lrck_cnt[1]~8\ $ (GND))) # (!\inst7|lrck_cnt\(2) & (!\inst7|lrck_cnt[1]~8\ & VCC))
-- \inst7|lrck_cnt[2]~10\ = CARRY((\inst7|lrck_cnt\(2) & !\inst7|lrck_cnt[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|lrck_cnt\(2),
	datad => VCC,
	cin => \inst7|lrck_cnt[1]~8\,
	combout => \inst7|lrck_cnt[2]~9_combout\,
	cout => \inst7|lrck_cnt[2]~10\);

-- Location: LCCOMB_X31_Y28_N14
\inst7|lrck_cnt[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|lrck_cnt[3]~11_combout\ = (\inst7|lrck_cnt\(3) & (!\inst7|lrck_cnt[2]~10\)) # (!\inst7|lrck_cnt\(3) & ((\inst7|lrck_cnt[2]~10\) # (GND)))
-- \inst7|lrck_cnt[3]~12\ = CARRY((!\inst7|lrck_cnt[2]~10\) # (!\inst7|lrck_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|lrck_cnt\(3),
	datad => VCC,
	cin => \inst7|lrck_cnt[2]~10\,
	combout => \inst7|lrck_cnt[3]~11_combout\,
	cout => \inst7|lrck_cnt[3]~12\);

-- Location: LCCOMB_X31_Y28_N16
\inst7|lrck_cnt[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|lrck_cnt[4]~13_combout\ = \inst7|lrck_cnt\(4) $ (!\inst7|lrck_cnt[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|lrck_cnt\(4),
	cin => \inst7|lrck_cnt[3]~12\,
	combout => \inst7|lrck_cnt[4]~13_combout\);

-- Location: LCFF_X41_Y20_N17
\inst15|acc[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst15|acc[18]~57_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|acc\(18));

-- Location: LCFF_X41_Y20_N7
\inst15|acc[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst15|acc[13]~47_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|acc\(13));

-- Location: LCFF_X41_Y20_N5
\inst15|acc[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst15|acc[12]~45_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|acc\(12));

-- Location: LCFF_X41_Y21_N29
\inst15|acc[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst15|acc[8]~37_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|acc\(8));

-- Location: LCFF_X41_Y21_N27
\inst15|acc[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst15|acc[7]~35_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|acc\(7));

-- Location: LCFF_X41_Y21_N17
\inst15|acc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst15|acc[2]~25_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|acc\(2));

-- Location: LCCOMB_X40_Y21_N12
\inst15|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Add0~0_combout\ = (\inst13|mixer_out_L\(0) & (\inst15|acc\(0) $ (VCC))) # (!\inst13|mixer_out_L\(0) & (\inst15|acc\(0) & VCC))
-- \inst15|Add0~1\ = CARRY((\inst13|mixer_out_L\(0) & \inst15|acc\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mixer_out_L\(0),
	datab => \inst15|acc\(0),
	datad => VCC,
	combout => \inst15|Add0~0_combout\,
	cout => \inst15|Add0~1\);

-- Location: LCCOMB_X40_Y21_N14
\inst15|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Add0~2_combout\ = (\inst13|mixer_out_L\(1) & ((\inst15|acc\(1) & (\inst15|Add0~1\ & VCC)) # (!\inst15|acc\(1) & (!\inst15|Add0~1\)))) # (!\inst13|mixer_out_L\(1) & ((\inst15|acc\(1) & (!\inst15|Add0~1\)) # (!\inst15|acc\(1) & ((\inst15|Add0~1\) # 
-- (GND)))))
-- \inst15|Add0~3\ = CARRY((\inst13|mixer_out_L\(1) & (!\inst15|acc\(1) & !\inst15|Add0~1\)) # (!\inst13|mixer_out_L\(1) & ((!\inst15|Add0~1\) # (!\inst15|acc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mixer_out_L\(1),
	datab => \inst15|acc\(1),
	datad => VCC,
	cin => \inst15|Add0~1\,
	combout => \inst15|Add0~2_combout\,
	cout => \inst15|Add0~3\);

-- Location: LCCOMB_X40_Y21_N20
\inst15|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Add0~8_combout\ = ((\inst13|mixer_out_L\(4) $ (\inst15|acc\(4) $ (!\inst15|Add0~7\)))) # (GND)
-- \inst15|Add0~9\ = CARRY((\inst13|mixer_out_L\(4) & ((\inst15|acc\(4)) # (!\inst15|Add0~7\))) # (!\inst13|mixer_out_L\(4) & (\inst15|acc\(4) & !\inst15|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mixer_out_L\(4),
	datab => \inst15|acc\(4),
	datad => VCC,
	cin => \inst15|Add0~7\,
	combout => \inst15|Add0~8_combout\,
	cout => \inst15|Add0~9\);

-- Location: LCCOMB_X40_Y21_N30
\inst15|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Add0~18_combout\ = (\inst13|mixer_out_L\(9) & ((\inst15|acc\(9) & (\inst15|Add0~17\ & VCC)) # (!\inst15|acc\(9) & (!\inst15|Add0~17\)))) # (!\inst13|mixer_out_L\(9) & ((\inst15|acc\(9) & (!\inst15|Add0~17\)) # (!\inst15|acc\(9) & 
-- ((\inst15|Add0~17\) # (GND)))))
-- \inst15|Add0~19\ = CARRY((\inst13|mixer_out_L\(9) & (!\inst15|acc\(9) & !\inst15|Add0~17\)) # (!\inst13|mixer_out_L\(9) & ((!\inst15|Add0~17\) # (!\inst15|acc\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mixer_out_L\(9),
	datab => \inst15|acc\(9),
	datad => VCC,
	cin => \inst15|Add0~17\,
	combout => \inst15|Add0~18_combout\,
	cout => \inst15|Add0~19\);

-- Location: LCCOMB_X40_Y20_N2
\inst15|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Add0~22_combout\ = (\inst13|mixer_out_L\(9) & ((\inst15|acc\(11) & (\inst15|Add0~21\ & VCC)) # (!\inst15|acc\(11) & (!\inst15|Add0~21\)))) # (!\inst13|mixer_out_L\(9) & ((\inst15|acc\(11) & (!\inst15|Add0~21\)) # (!\inst15|acc\(11) & 
-- ((\inst15|Add0~21\) # (GND)))))
-- \inst15|Add0~23\ = CARRY((\inst13|mixer_out_L\(9) & (!\inst15|acc\(11) & !\inst15|Add0~21\)) # (!\inst13|mixer_out_L\(9) & ((!\inst15|Add0~21\) # (!\inst15|acc\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mixer_out_L\(9),
	datab => \inst15|acc\(11),
	datad => VCC,
	cin => \inst15|Add0~21\,
	combout => \inst15|Add0~22_combout\,
	cout => \inst15|Add0~23\);

-- Location: LCCOMB_X40_Y20_N8
\inst15|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Add0~28_combout\ = ((\inst13|mixer_out_L\(9) $ (\inst15|acc\(14) $ (!\inst15|Add0~27\)))) # (GND)
-- \inst15|Add0~29\ = CARRY((\inst13|mixer_out_L\(9) & ((\inst15|acc\(14)) # (!\inst15|Add0~27\))) # (!\inst13|mixer_out_L\(9) & (\inst15|acc\(14) & !\inst15|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mixer_out_L\(9),
	datab => \inst15|acc\(14),
	datad => VCC,
	cin => \inst15|Add0~27\,
	combout => \inst15|Add0~28_combout\,
	cout => \inst15|Add0~29\);

-- Location: LCCOMB_X41_Y21_N16
\inst15|acc[2]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|acc[2]~25_combout\ = ((\inst15|acc\(12) $ (\inst15|Add0~4_combout\ $ (\inst15|acc[1]~24\)))) # (GND)
-- \inst15|acc[2]~26\ = CARRY((\inst15|acc\(12) & (\inst15|Add0~4_combout\ & !\inst15|acc[1]~24\)) # (!\inst15|acc\(12) & ((\inst15|Add0~4_combout\) # (!\inst15|acc[1]~24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|acc\(12),
	datab => \inst15|Add0~4_combout\,
	datad => VCC,
	cin => \inst15|acc[1]~24\,
	combout => \inst15|acc[2]~25_combout\,
	cout => \inst15|acc[2]~26\);

-- Location: LCCOMB_X41_Y21_N26
\inst15|acc[7]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|acc[7]~35_combout\ = (\inst15|acc\(17) & ((\inst15|Add0~14_combout\ & (!\inst15|acc[6]~34\)) # (!\inst15|Add0~14_combout\ & ((\inst15|acc[6]~34\) # (GND))))) # (!\inst15|acc\(17) & ((\inst15|Add0~14_combout\ & (\inst15|acc[6]~34\ & VCC)) # 
-- (!\inst15|Add0~14_combout\ & (!\inst15|acc[6]~34\))))
-- \inst15|acc[7]~36\ = CARRY((\inst15|acc\(17) & ((!\inst15|acc[6]~34\) # (!\inst15|Add0~14_combout\))) # (!\inst15|acc\(17) & (!\inst15|Add0~14_combout\ & !\inst15|acc[6]~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|acc\(17),
	datab => \inst15|Add0~14_combout\,
	datad => VCC,
	cin => \inst15|acc[6]~34\,
	combout => \inst15|acc[7]~35_combout\,
	cout => \inst15|acc[7]~36\);

-- Location: LCCOMB_X41_Y21_N28
\inst15|acc[8]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|acc[8]~37_combout\ = ((\inst15|acc\(18) $ (\inst15|Add0~16_combout\ $ (\inst15|acc[7]~36\)))) # (GND)
-- \inst15|acc[8]~38\ = CARRY((\inst15|acc\(18) & (\inst15|Add0~16_combout\ & !\inst15|acc[7]~36\)) # (!\inst15|acc\(18) & ((\inst15|Add0~16_combout\) # (!\inst15|acc[7]~36\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|acc\(18),
	datab => \inst15|Add0~16_combout\,
	datad => VCC,
	cin => \inst15|acc[7]~36\,
	combout => \inst15|acc[8]~37_combout\,
	cout => \inst15|acc[8]~38\);

-- Location: LCCOMB_X41_Y20_N4
\inst15|acc[12]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|acc[12]~45_combout\ = ((\inst15|acc\(20) $ (\inst15|Add0~24_combout\ $ (\inst15|acc[11]~44\)))) # (GND)
-- \inst15|acc[12]~46\ = CARRY((\inst15|acc\(20) & (\inst15|Add0~24_combout\ & !\inst15|acc[11]~44\)) # (!\inst15|acc\(20) & ((\inst15|Add0~24_combout\) # (!\inst15|acc[11]~44\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|acc\(20),
	datab => \inst15|Add0~24_combout\,
	datad => VCC,
	cin => \inst15|acc[11]~44\,
	combout => \inst15|acc[12]~45_combout\,
	cout => \inst15|acc[12]~46\);

-- Location: LCCOMB_X41_Y20_N6
\inst15|acc[13]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|acc[13]~47_combout\ = (\inst15|acc\(20) & ((\inst15|Add0~26_combout\ & (!\inst15|acc[12]~46\)) # (!\inst15|Add0~26_combout\ & ((\inst15|acc[12]~46\) # (GND))))) # (!\inst15|acc\(20) & ((\inst15|Add0~26_combout\ & (\inst15|acc[12]~46\ & VCC)) # 
-- (!\inst15|Add0~26_combout\ & (!\inst15|acc[12]~46\))))
-- \inst15|acc[13]~48\ = CARRY((\inst15|acc\(20) & ((!\inst15|acc[12]~46\) # (!\inst15|Add0~26_combout\))) # (!\inst15|acc\(20) & (!\inst15|Add0~26_combout\ & !\inst15|acc[12]~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|acc\(20),
	datab => \inst15|Add0~26_combout\,
	datad => VCC,
	cin => \inst15|acc[12]~46\,
	combout => \inst15|acc[13]~47_combout\,
	cout => \inst15|acc[13]~48\);

-- Location: LCCOMB_X41_Y20_N16
\inst15|acc[18]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|acc[18]~57_combout\ = ((\inst15|acc\(20) $ (\inst15|Add0~36_combout\ $ (\inst15|acc[17]~56\)))) # (GND)
-- \inst15|acc[18]~58\ = CARRY((\inst15|acc\(20) & (\inst15|Add0~36_combout\ & !\inst15|acc[17]~56\)) # (!\inst15|acc\(20) & ((\inst15|Add0~36_combout\) # (!\inst15|acc[17]~56\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|acc\(20),
	datab => \inst15|Add0~36_combout\,
	datad => VCC,
	cin => \inst15|acc[17]~56\,
	combout => \inst15|acc[18]~57_combout\,
	cout => \inst15|acc[18]~58\);

-- Location: LCFF_X34_Y21_N9
\inst10|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|count[4]~15_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	sclr => \inst10|count[4]~13_combout\,
	ena => \inst10|count[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|count\(4));

-- Location: DSPOUT_X39_Y20_N2
\inst13|Mult0|auto_generated|mac_out2\ : cycloneii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst13|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X34_Y21_N6
\inst10|count[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|count[3]~11_combout\ = (\inst10|count\(3) & (!\inst10|count[2]~10\)) # (!\inst10|count\(3) & ((\inst10|count[2]~10\) # (GND)))
-- \inst10|count[3]~12\ = CARRY((!\inst10|count[2]~10\) # (!\inst10|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|count\(3),
	datad => VCC,
	cin => \inst10|count[2]~10\,
	combout => \inst10|count[3]~11_combout\,
	cout => \inst10|count[3]~12\);

-- Location: LCCOMB_X34_Y21_N8
\inst10|count[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|count[4]~15_combout\ = \inst10|count\(4) $ (!\inst10|count[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|count\(4),
	cin => \inst10|count[3]~12\,
	combout => \inst10|count[4]~15_combout\);

-- Location: LCCOMB_X17_Y29_N6
\inst6|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add0~6_combout\ = (\inst6|clk_cnt\(3) & (!\inst6|Add0~5\)) # (!\inst6|clk_cnt\(3) & ((\inst6|Add0~5\) # (GND)))
-- \inst6|Add0~7\ = CARRY((!\inst6|Add0~5\) # (!\inst6|clk_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|clk_cnt\(3),
	datad => VCC,
	cin => \inst6|Add0~5\,
	combout => \inst6|Add0~6_combout\,
	cout => \inst6|Add0~7\);

-- Location: LCCOMB_X17_Y29_N8
\inst6|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add0~8_combout\ = (\inst6|clk_cnt\(4) & (\inst6|Add0~7\ $ (GND))) # (!\inst6|clk_cnt\(4) & (!\inst6|Add0~7\ & VCC))
-- \inst6|Add0~9\ = CARRY((\inst6|clk_cnt\(4) & !\inst6|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|clk_cnt\(4),
	datad => VCC,
	cin => \inst6|Add0~7\,
	combout => \inst6|Add0~8_combout\,
	cout => \inst6|Add0~9\);

-- Location: LCCOMB_X17_Y29_N10
\inst6|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add0~10_combout\ = (\inst6|clk_cnt\(5) & (!\inst6|Add0~9\)) # (!\inst6|clk_cnt\(5) & ((\inst6|Add0~9\) # (GND)))
-- \inst6|Add0~11\ = CARRY((!\inst6|Add0~9\) # (!\inst6|clk_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|clk_cnt\(5),
	datad => VCC,
	cin => \inst6|Add0~9\,
	combout => \inst6|Add0~10_combout\,
	cout => \inst6|Add0~11\);

-- Location: LCCOMB_X17_Y29_N12
\inst6|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add0~12_combout\ = \inst6|Add0~11\ $ (!\inst6|clk_cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|clk_cnt\(6),
	cin => \inst6|Add0~11\,
	combout => \inst6|Add0~12_combout\);

-- Location: LCFF_X38_Y18_N7
\inst2|r_temp_L[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_temp_L[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_temp_L\(1));

-- Location: LCFF_X38_Y18_N11
\inst2|r_temp_L[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_temp_L[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_temp_L\(3));

-- Location: LCFF_X38_Y18_N21
\inst2|r_temp_L[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_temp_L[8]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_temp_L\(8));

-- Location: DSPOUT_X39_Y16_N2
\inst3|Mult0|auto_generated|mac_out2\ : cycloneii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst3|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: DSPOUT_X39_Y15_N2
\inst3|Mult0|auto_generated|mac_out4\ : cycloneii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|auto_generated|mac_out4_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst3|Mult0|auto_generated|mac_out4_DATAOUT_bus\);

-- Location: LCCOMB_X40_Y15_N0
\inst3|Mult0|auto_generated|add9_result[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mult0|auto_generated|add9_result[0]~0_combout\ = \inst3|Mult0|auto_generated|mac_out4~DATAOUT7\ $ (VCC)
-- \inst3|Mult0|auto_generated|add9_result[0]~1\ = CARRY(\inst3|Mult0|auto_generated|mac_out4~DATAOUT7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|auto_generated|mac_out4~DATAOUT7\,
	datad => VCC,
	combout => \inst3|Mult0|auto_generated|add9_result[0]~0_combout\,
	cout => \inst3|Mult0|auto_generated|add9_result[0]~1\);

-- Location: LCCOMB_X40_Y16_N8
\inst3|Mult0|auto_generated|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mult0|auto_generated|op_1~8_combout\ = ((\inst3|Mult0|auto_generated|mac_out2~DATAOUT22\ $ (\inst3|Mult0|auto_generated|mac_out4~DATAOUT4\ $ (!\inst3|Mult0|auto_generated|op_1~7\)))) # (GND)
-- \inst3|Mult0|auto_generated|op_1~9\ = CARRY((\inst3|Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\inst3|Mult0|auto_generated|mac_out4~DATAOUT4\) # (!\inst3|Mult0|auto_generated|op_1~7\))) # (!\inst3|Mult0|auto_generated|mac_out2~DATAOUT22\ & 
-- (\inst3|Mult0|auto_generated|mac_out4~DATAOUT4\ & !\inst3|Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|auto_generated|mac_out2~DATAOUT22\,
	datab => \inst3|Mult0|auto_generated|mac_out4~DATAOUT4\,
	datad => VCC,
	cin => \inst3|Mult0|auto_generated|op_1~7\,
	combout => \inst3|Mult0|auto_generated|op_1~8_combout\,
	cout => \inst3|Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X40_Y16_N10
\inst3|Mult0|auto_generated|op_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mult0|auto_generated|op_1~10_combout\ = (\inst3|Mult0|auto_generated|mac_out2~DATAOUT23\ & ((\inst3|Mult0|auto_generated|mac_out4~DATAOUT5\ & (\inst3|Mult0|auto_generated|op_1~9\ & VCC)) # (!\inst3|Mult0|auto_generated|mac_out4~DATAOUT5\ & 
-- (!\inst3|Mult0|auto_generated|op_1~9\)))) # (!\inst3|Mult0|auto_generated|mac_out2~DATAOUT23\ & ((\inst3|Mult0|auto_generated|mac_out4~DATAOUT5\ & (!\inst3|Mult0|auto_generated|op_1~9\)) # (!\inst3|Mult0|auto_generated|mac_out4~DATAOUT5\ & 
-- ((\inst3|Mult0|auto_generated|op_1~9\) # (GND)))))
-- \inst3|Mult0|auto_generated|op_1~11\ = CARRY((\inst3|Mult0|auto_generated|mac_out2~DATAOUT23\ & (!\inst3|Mult0|auto_generated|mac_out4~DATAOUT5\ & !\inst3|Mult0|auto_generated|op_1~9\)) # (!\inst3|Mult0|auto_generated|mac_out2~DATAOUT23\ & 
-- ((!\inst3|Mult0|auto_generated|op_1~9\) # (!\inst3|Mult0|auto_generated|mac_out4~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|auto_generated|mac_out2~DATAOUT23\,
	datab => \inst3|Mult0|auto_generated|mac_out4~DATAOUT5\,
	datad => VCC,
	cin => \inst3|Mult0|auto_generated|op_1~9\,
	combout => \inst3|Mult0|auto_generated|op_1~10_combout\,
	cout => \inst3|Mult0|auto_generated|op_1~11\);

-- Location: LCCOMB_X40_Y16_N12
\inst3|Mult0|auto_generated|op_1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mult0|auto_generated|op_1~12_combout\ = ((\inst3|Mult0|auto_generated|mac_out2~DATAOUT24\ $ (\inst3|Mult0|auto_generated|mac_out4~DATAOUT6\ $ (!\inst3|Mult0|auto_generated|op_1~11\)))) # (GND)
-- \inst3|Mult0|auto_generated|op_1~13\ = CARRY((\inst3|Mult0|auto_generated|mac_out2~DATAOUT24\ & ((\inst3|Mult0|auto_generated|mac_out4~DATAOUT6\) # (!\inst3|Mult0|auto_generated|op_1~11\))) # (!\inst3|Mult0|auto_generated|mac_out2~DATAOUT24\ & 
-- (\inst3|Mult0|auto_generated|mac_out4~DATAOUT6\ & !\inst3|Mult0|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|auto_generated|mac_out2~DATAOUT24\,
	datab => \inst3|Mult0|auto_generated|mac_out4~DATAOUT6\,
	datad => VCC,
	cin => \inst3|Mult0|auto_generated|op_1~11\,
	combout => \inst3|Mult0|auto_generated|op_1~12_combout\,
	cout => \inst3|Mult0|auto_generated|op_1~13\);

-- Location: LCCOMB_X40_Y16_N14
\inst3|Mult0|auto_generated|op_1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mult0|auto_generated|op_1~14_combout\ = (\inst3|Mult0|auto_generated|add9_result[0]~0_combout\ & ((\inst3|Mult0|auto_generated|mac_out2~DATAOUT25\ & (!\inst3|Mult0|auto_generated|op_1~13\)) # (!\inst3|Mult0|auto_generated|mac_out2~DATAOUT25\ & 
-- (\inst3|Mult0|auto_generated|op_1~13\ & VCC)))) # (!\inst3|Mult0|auto_generated|add9_result[0]~0_combout\ & ((\inst3|Mult0|auto_generated|mac_out2~DATAOUT25\ & ((\inst3|Mult0|auto_generated|op_1~13\) # (GND))) # 
-- (!\inst3|Mult0|auto_generated|mac_out2~DATAOUT25\ & (!\inst3|Mult0|auto_generated|op_1~13\))))
-- \inst3|Mult0|auto_generated|op_1~15\ = CARRY((\inst3|Mult0|auto_generated|add9_result[0]~0_combout\ & (\inst3|Mult0|auto_generated|mac_out2~DATAOUT25\ & !\inst3|Mult0|auto_generated|op_1~13\)) # (!\inst3|Mult0|auto_generated|add9_result[0]~0_combout\ & 
-- ((\inst3|Mult0|auto_generated|mac_out2~DATAOUT25\) # (!\inst3|Mult0|auto_generated|op_1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|auto_generated|add9_result[0]~0_combout\,
	datab => \inst3|Mult0|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \inst3|Mult0|auto_generated|op_1~13\,
	combout => \inst3|Mult0|auto_generated|op_1~14_combout\,
	cout => \inst3|Mult0|auto_generated|op_1~15\);

-- Location: LCCOMB_X38_Y18_N6
\inst2|r_temp_L[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_temp_L[1]~14_combout\ = (\inst2|r_curr_L\(1) & ((\inst2|r_mult_L\(11) & (\inst2|r_temp_L[0]~13\ & VCC)) # (!\inst2|r_mult_L\(11) & (!\inst2|r_temp_L[0]~13\)))) # (!\inst2|r_curr_L\(1) & ((\inst2|r_mult_L\(11) & (!\inst2|r_temp_L[0]~13\)) # 
-- (!\inst2|r_mult_L\(11) & ((\inst2|r_temp_L[0]~13\) # (GND)))))
-- \inst2|r_temp_L[1]~15\ = CARRY((\inst2|r_curr_L\(1) & (!\inst2|r_mult_L\(11) & !\inst2|r_temp_L[0]~13\)) # (!\inst2|r_curr_L\(1) & ((!\inst2|r_temp_L[0]~13\) # (!\inst2|r_mult_L\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_curr_L\(1),
	datab => \inst2|r_mult_L\(11),
	datad => VCC,
	cin => \inst2|r_temp_L[0]~13\,
	combout => \inst2|r_temp_L[1]~14_combout\,
	cout => \inst2|r_temp_L[1]~15\);

-- Location: LCCOMB_X38_Y18_N10
\inst2|r_temp_L[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_temp_L[3]~18_combout\ = (\inst2|r_mult_L\(13) & ((\inst2|r_curr_L\(3) & (\inst2|r_temp_L[2]~17\ & VCC)) # (!\inst2|r_curr_L\(3) & (!\inst2|r_temp_L[2]~17\)))) # (!\inst2|r_mult_L\(13) & ((\inst2|r_curr_L\(3) & (!\inst2|r_temp_L[2]~17\)) # 
-- (!\inst2|r_curr_L\(3) & ((\inst2|r_temp_L[2]~17\) # (GND)))))
-- \inst2|r_temp_L[3]~19\ = CARRY((\inst2|r_mult_L\(13) & (!\inst2|r_curr_L\(3) & !\inst2|r_temp_L[2]~17\)) # (!\inst2|r_mult_L\(13) & ((!\inst2|r_temp_L[2]~17\) # (!\inst2|r_curr_L\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_mult_L\(13),
	datab => \inst2|r_curr_L\(3),
	datad => VCC,
	cin => \inst2|r_temp_L[2]~17\,
	combout => \inst2|r_temp_L[3]~18_combout\,
	cout => \inst2|r_temp_L[3]~19\);

-- Location: LCCOMB_X38_Y18_N20
\inst2|r_temp_L[8]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_temp_L[8]~28_combout\ = ((\inst2|r_curr_L\(8) $ (\inst2|r_mult_L\(18) $ (!\inst2|r_temp_L[7]~27\)))) # (GND)
-- \inst2|r_temp_L[8]~29\ = CARRY((\inst2|r_curr_L\(8) & ((\inst2|r_mult_L\(18)) # (!\inst2|r_temp_L[7]~27\))) # (!\inst2|r_curr_L\(8) & (\inst2|r_mult_L\(18) & !\inst2|r_temp_L[7]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_curr_L\(8),
	datab => \inst2|r_mult_L\(18),
	datad => VCC,
	cin => \inst2|r_temp_L[7]~27\,
	combout => \inst2|r_temp_L[8]~28_combout\,
	cout => \inst2|r_temp_L[8]~29\);

-- Location: DSPOUT_X39_Y18_N2
\inst2|Mult0|auto_generated|mac_out2\ : cycloneii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \inst2|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X37_Y16_N12
\inst3|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~0_combout\ = (\inst3|acc\(0) & (\inst3|data_d\(0) $ (VCC))) # (!\inst3|acc\(0) & (\inst3|data_d\(0) & VCC))
-- \inst3|Add1~1\ = CARRY((\inst3|acc\(0) & \inst3|data_d\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|acc\(0),
	datab => \inst3|data_d\(0),
	datad => VCC,
	combout => \inst3|Add1~0_combout\,
	cout => \inst3|Add1~1\);

-- Location: LCCOMB_X37_Y16_N14
\inst3|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~2_combout\ = (\inst3|data_d\(1) & ((\inst3|acc\(1) & (\inst3|Add1~1\ & VCC)) # (!\inst3|acc\(1) & (!\inst3|Add1~1\)))) # (!\inst3|data_d\(1) & ((\inst3|acc\(1) & (!\inst3|Add1~1\)) # (!\inst3|acc\(1) & ((\inst3|Add1~1\) # (GND)))))
-- \inst3|Add1~3\ = CARRY((\inst3|data_d\(1) & (!\inst3|acc\(1) & !\inst3|Add1~1\)) # (!\inst3|data_d\(1) & ((!\inst3|Add1~1\) # (!\inst3|acc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|data_d\(1),
	datab => \inst3|acc\(1),
	datad => VCC,
	cin => \inst3|Add1~1\,
	combout => \inst3|Add1~2_combout\,
	cout => \inst3|Add1~3\);

-- Location: M4K_X26_Y16
\inst3|ram_rtl_0|auto_generated|ram_block1a2\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/DE2_demodula.ram0_carrier_phase_shift_90_998cd4c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "carrier_phase_shift_90:inst3|altsyncram:ram_rtl_0|altsyncram_9en1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2001,
	port_a_logical_ram_width => 10,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 11,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 2001,
	port_b_logical_ram_width => 10,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \KEY0~combout\,
	portbrewe => VCC,
	clk0 => \CLK_50~clkctrl_outclk\,
	portadatain => \inst3|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \inst3|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \inst3|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst3|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X37_Y16_N20
\inst3|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~8_combout\ = ((\inst3|data_d\(4) $ (\inst3|acc\(4) $ (!\inst3|Add1~7\)))) # (GND)
-- \inst3|Add1~9\ = CARRY((\inst3|data_d\(4) & ((\inst3|acc\(4)) # (!\inst3|Add1~7\))) # (!\inst3|data_d\(4) & (\inst3|acc\(4) & !\inst3|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|data_d\(4),
	datab => \inst3|acc\(4),
	datad => VCC,
	cin => \inst3|Add1~7\,
	combout => \inst3|Add1~8_combout\,
	cout => \inst3|Add1~9\);

-- Location: M4K_X26_Y17
\inst3|ram_rtl_0|auto_generated|ram_block1a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/DE2_demodula.ram0_carrier_phase_shift_90_998cd4c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "carrier_phase_shift_90:inst3|altsyncram:ram_rtl_0|altsyncram_9en1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2001,
	port_a_logical_ram_width => 10,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 11,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 2001,
	port_b_logical_ram_width => 10,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \KEY0~combout\,
	portbrewe => VCC,
	clk0 => \CLK_50~clkctrl_outclk\,
	portadatain => \inst3|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \inst3|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \inst3|ram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst3|ram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: M4K_X26_Y19
\inst3|ram_rtl_0|auto_generated|ram_block1a6\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/DE2_demodula.ram0_carrier_phase_shift_90_998cd4c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "carrier_phase_shift_90:inst3|altsyncram:ram_rtl_0|altsyncram_9en1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2001,
	port_a_logical_ram_width => 10,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 11,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 2001,
	port_b_logical_ram_width => 10,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \KEY0~combout\,
	portbrewe => VCC,
	clk0 => \CLK_50~clkctrl_outclk\,
	portadatain => \inst3|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \inst3|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \inst3|ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst3|ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: M4K_X26_Y15
\inst3|ram_rtl_0|auto_generated|ram_block1a8\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/DE2_demodula.ram0_carrier_phase_shift_90_998cd4c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "carrier_phase_shift_90:inst3|altsyncram:ram_rtl_0|altsyncram_9en1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2001,
	port_a_logical_ram_width => 10,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 11,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 2001,
	port_b_logical_ram_width => 10,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \KEY0~combout\,
	portbrewe => VCC,
	clk0 => \CLK_50~clkctrl_outclk\,
	portadatain => \inst3|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \inst3|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \inst3|ram_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst3|ram_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X37_Y16_N30
\inst3|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~18_combout\ = (\inst3|data_d\(9) & ((\inst3|acc\(9) & (\inst3|Add1~17\ & VCC)) # (!\inst3|acc\(9) & (!\inst3|Add1~17\)))) # (!\inst3|data_d\(9) & ((\inst3|acc\(9) & (!\inst3|Add1~17\)) # (!\inst3|acc\(9) & ((\inst3|Add1~17\) # (GND)))))
-- \inst3|Add1~19\ = CARRY((\inst3|data_d\(9) & (!\inst3|acc\(9) & !\inst3|Add1~17\)) # (!\inst3|data_d\(9) & ((!\inst3|Add1~17\) # (!\inst3|acc\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|data_d\(9),
	datab => \inst3|acc\(9),
	datad => VCC,
	cin => \inst3|Add1~17\,
	combout => \inst3|Add1~18_combout\,
	cout => \inst3|Add1~19\);

-- Location: LCCOMB_X37_Y15_N0
\inst3|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~20_combout\ = ((\inst3|data_d\(9) $ (\inst3|acc\(10) $ (!\inst3|Add1~19\)))) # (GND)
-- \inst3|Add1~21\ = CARRY((\inst3|data_d\(9) & ((\inst3|acc\(10)) # (!\inst3|Add1~19\))) # (!\inst3|data_d\(9) & (\inst3|acc\(10) & !\inst3|Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|data_d\(9),
	datab => \inst3|acc\(10),
	datad => VCC,
	cin => \inst3|Add1~19\,
	combout => \inst3|Add1~20_combout\,
	cout => \inst3|Add1~21\);

-- Location: LCCOMB_X37_Y15_N2
\inst3|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~22_combout\ = (\inst3|acc\(11) & ((\inst3|data_d\(9) & (\inst3|Add1~21\ & VCC)) # (!\inst3|data_d\(9) & (!\inst3|Add1~21\)))) # (!\inst3|acc\(11) & ((\inst3|data_d\(9) & (!\inst3|Add1~21\)) # (!\inst3|data_d\(9) & ((\inst3|Add1~21\) # 
-- (GND)))))
-- \inst3|Add1~23\ = CARRY((\inst3|acc\(11) & (!\inst3|data_d\(9) & !\inst3|Add1~21\)) # (!\inst3|acc\(11) & ((!\inst3|Add1~21\) # (!\inst3|data_d\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|acc\(11),
	datab => \inst3|data_d\(9),
	datad => VCC,
	cin => \inst3|Add1~21\,
	combout => \inst3|Add1~22_combout\,
	cout => \inst3|Add1~23\);

-- Location: LCCOMB_X37_Y15_N4
\inst3|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~24_combout\ = ((\inst3|acc\(12) $ (\inst3|data_d\(9) $ (!\inst3|Add1~23\)))) # (GND)
-- \inst3|Add1~25\ = CARRY((\inst3|acc\(12) & ((\inst3|data_d\(9)) # (!\inst3|Add1~23\))) # (!\inst3|acc\(12) & (\inst3|data_d\(9) & !\inst3|Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|acc\(12),
	datab => \inst3|data_d\(9),
	datad => VCC,
	cin => \inst3|Add1~23\,
	combout => \inst3|Add1~24_combout\,
	cout => \inst3|Add1~25\);

-- Location: LCCOMB_X37_Y15_N6
\inst3|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~26_combout\ = (\inst3|data_d\(9) & ((\inst3|acc\(13) & (\inst3|Add1~25\ & VCC)) # (!\inst3|acc\(13) & (!\inst3|Add1~25\)))) # (!\inst3|data_d\(9) & ((\inst3|acc\(13) & (!\inst3|Add1~25\)) # (!\inst3|acc\(13) & ((\inst3|Add1~25\) # (GND)))))
-- \inst3|Add1~27\ = CARRY((\inst3|data_d\(9) & (!\inst3|acc\(13) & !\inst3|Add1~25\)) # (!\inst3|data_d\(9) & ((!\inst3|Add1~25\) # (!\inst3|acc\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|data_d\(9),
	datab => \inst3|acc\(13),
	datad => VCC,
	cin => \inst3|Add1~25\,
	combout => \inst3|Add1~26_combout\,
	cout => \inst3|Add1~27\);

-- Location: LCCOMB_X37_Y15_N8
\inst3|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~28_combout\ = ((\inst3|data_d\(9) $ (\inst3|acc\(14) $ (!\inst3|Add1~27\)))) # (GND)
-- \inst3|Add1~29\ = CARRY((\inst3|data_d\(9) & ((\inst3|acc\(14)) # (!\inst3|Add1~27\))) # (!\inst3|data_d\(9) & (\inst3|acc\(14) & !\inst3|Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|data_d\(9),
	datab => \inst3|acc\(14),
	datad => VCC,
	cin => \inst3|Add1~27\,
	combout => \inst3|Add1~28_combout\,
	cout => \inst3|Add1~29\);

-- Location: LCCOMB_X37_Y15_N10
\inst3|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~30_combout\ = (\inst3|data_d\(9) & ((\inst3|acc\(15) & (\inst3|Add1~29\ & VCC)) # (!\inst3|acc\(15) & (!\inst3|Add1~29\)))) # (!\inst3|data_d\(9) & ((\inst3|acc\(15) & (!\inst3|Add1~29\)) # (!\inst3|acc\(15) & ((\inst3|Add1~29\) # (GND)))))
-- \inst3|Add1~31\ = CARRY((\inst3|data_d\(9) & (!\inst3|acc\(15) & !\inst3|Add1~29\)) # (!\inst3|data_d\(9) & ((!\inst3|Add1~29\) # (!\inst3|acc\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|data_d\(9),
	datab => \inst3|acc\(15),
	datad => VCC,
	cin => \inst3|Add1~29\,
	combout => \inst3|Add1~30_combout\,
	cout => \inst3|Add1~31\);

-- Location: LCCOMB_X37_Y15_N12
\inst3|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~32_combout\ = ((\inst3|data_d\(9) $ (\inst3|acc\(16) $ (!\inst3|Add1~31\)))) # (GND)
-- \inst3|Add1~33\ = CARRY((\inst3|data_d\(9) & ((\inst3|acc\(16)) # (!\inst3|Add1~31\))) # (!\inst3|data_d\(9) & (\inst3|acc\(16) & !\inst3|Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|data_d\(9),
	datab => \inst3|acc\(16),
	datad => VCC,
	cin => \inst3|Add1~31\,
	combout => \inst3|Add1~32_combout\,
	cout => \inst3|Add1~33\);

-- Location: LCCOMB_X37_Y15_N14
\inst3|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~34_combout\ = (\inst3|data_d\(9) & ((\inst3|acc\(17) & (\inst3|Add1~33\ & VCC)) # (!\inst3|acc\(17) & (!\inst3|Add1~33\)))) # (!\inst3|data_d\(9) & ((\inst3|acc\(17) & (!\inst3|Add1~33\)) # (!\inst3|acc\(17) & ((\inst3|Add1~33\) # (GND)))))
-- \inst3|Add1~35\ = CARRY((\inst3|data_d\(9) & (!\inst3|acc\(17) & !\inst3|Add1~33\)) # (!\inst3|data_d\(9) & ((!\inst3|Add1~33\) # (!\inst3|acc\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|data_d\(9),
	datab => \inst3|acc\(17),
	datad => VCC,
	cin => \inst3|Add1~33\,
	combout => \inst3|Add1~34_combout\,
	cout => \inst3|Add1~35\);

-- Location: LCCOMB_X37_Y15_N18
\inst3|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~38_combout\ = (\inst3|data_d\(9) & ((\inst3|acc\(19) & (\inst3|Add1~37\ & VCC)) # (!\inst3|acc\(19) & (!\inst3|Add1~37\)))) # (!\inst3|data_d\(9) & ((\inst3|acc\(19) & (!\inst3|Add1~37\)) # (!\inst3|acc\(19) & ((\inst3|Add1~37\) # (GND)))))
-- \inst3|Add1~39\ = CARRY((\inst3|data_d\(9) & (!\inst3|acc\(19) & !\inst3|Add1~37\)) # (!\inst3|data_d\(9) & ((!\inst3|Add1~37\) # (!\inst3|acc\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|data_d\(9),
	datab => \inst3|acc\(19),
	datad => VCC,
	cin => \inst3|Add1~37\,
	combout => \inst3|Add1~38_combout\,
	cout => \inst3|Add1~39\);

-- Location: LCCOMB_X37_Y15_N20
\inst3|Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~40_combout\ = \inst3|data_d\(9) $ (\inst3|Add1~39\ $ (!\inst3|acc\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|data_d\(9),
	datad => \inst3|acc\(20),
	cin => \inst3|Add1~39\,
	combout => \inst3|Add1~40_combout\);

-- Location: LCFF_X37_Y18_N5
\inst2|r_timer[4]~_Duplicate_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_timer[4]~_Duplicate_2feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_timer[4]~_Duplicate_2_regout\);

-- Location: LCFF_X37_Y18_N27
\inst2|r_timer[8]~_Duplicate_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_timer[8]~_Duplicate_2feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_timer[8]~_Duplicate_2_regout\);

-- Location: LCFF_X36_Y19_N27
\inst14|l_ff[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst14|l_ff[8]~23_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst14|d_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|l_ff\(8));

-- Location: LCFF_X36_Y19_N15
\inst14|l_ff[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst14|l_ff[2]~11_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst14|d_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|l_ff\(2));

-- Location: LCFF_X36_Y19_N13
\inst14|l_ff[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst14|l_ff[1]~9_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst14|d_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|l_ff\(1));

-- Location: LCFF_X36_Y16_N1
\inst2|r_temp_R[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_temp_R[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_temp_R\(0));

-- Location: LCFF_X36_Y16_N3
\inst2|r_temp_R[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_temp_R[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_temp_R\(1));

-- Location: LCFF_X36_Y16_N7
\inst2|r_temp_R[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_temp_R[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_temp_R\(3));

-- Location: LCFF_X36_Y16_N11
\inst2|r_temp_R[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_temp_R[5]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_temp_R\(5));

-- Location: LCFF_X36_Y16_N13
\inst2|r_temp_R[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_temp_R[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_temp_R\(6));

-- Location: LCFF_X36_Y16_N15
\inst2|r_temp_R[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_temp_R[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_temp_R\(7));

-- Location: LCFF_X36_Y16_N17
\inst2|r_temp_R[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_temp_R[8]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_temp_R\(8));

-- Location: LCCOMB_X36_Y19_N12
\inst14|l_ff[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|l_ff[1]~9_combout\ = (\inst10|sht_reg_left\(15) & (!\inst10|sht_reg_left\(14) & VCC)) # (!\inst10|sht_reg_left\(15) & (\inst10|sht_reg_left\(14) $ (GND)))
-- \inst14|l_ff[1]~10\ = CARRY((!\inst10|sht_reg_left\(15) & !\inst10|sht_reg_left\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|sht_reg_left\(15),
	datab => \inst10|sht_reg_left\(14),
	datad => VCC,
	combout => \inst14|l_ff[1]~9_combout\,
	cout => \inst14|l_ff[1]~10\);

-- Location: LCCOMB_X36_Y19_N14
\inst14|l_ff[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|l_ff[2]~11_combout\ = (\inst10|sht_reg_left\(16) & ((\inst14|l_ff[1]~10\) # (GND))) # (!\inst10|sht_reg_left\(16) & (!\inst14|l_ff[1]~10\))
-- \inst14|l_ff[2]~12\ = CARRY((\inst10|sht_reg_left\(16)) # (!\inst14|l_ff[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|sht_reg_left\(16),
	datad => VCC,
	cin => \inst14|l_ff[1]~10\,
	combout => \inst14|l_ff[2]~11_combout\,
	cout => \inst14|l_ff[2]~12\);

-- Location: LCCOMB_X36_Y19_N26
\inst14|l_ff[8]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|l_ff[8]~23_combout\ = (\inst10|sht_reg_left\(22) & ((\inst14|l_ff[7]~22\) # (GND))) # (!\inst10|sht_reg_left\(22) & (!\inst14|l_ff[7]~22\))
-- \inst14|l_ff[8]~24\ = CARRY((\inst10|sht_reg_left\(22)) # (!\inst14|l_ff[7]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|sht_reg_left\(22),
	datad => VCC,
	cin => \inst14|l_ff[7]~22\,
	combout => \inst14|l_ff[8]~23_combout\,
	cout => \inst14|l_ff[8]~24\);

-- Location: LCCOMB_X36_Y16_N0
\inst2|r_temp_R[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_temp_R[0]~12_combout\ = (\inst2|r_curr_R\(0) & (\inst2|r_mult_R\(10) $ (VCC))) # (!\inst2|r_curr_R\(0) & (\inst2|r_mult_R\(10) & VCC))
-- \inst2|r_temp_R[0]~13\ = CARRY((\inst2|r_curr_R\(0) & \inst2|r_mult_R\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_curr_R\(0),
	datab => \inst2|r_mult_R\(10),
	datad => VCC,
	combout => \inst2|r_temp_R[0]~12_combout\,
	cout => \inst2|r_temp_R[0]~13\);

-- Location: LCCOMB_X36_Y16_N2
\inst2|r_temp_R[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_temp_R[1]~14_combout\ = (\inst2|r_mult_R\(11) & ((\inst2|r_curr_R\(1) & (\inst2|r_temp_R[0]~13\ & VCC)) # (!\inst2|r_curr_R\(1) & (!\inst2|r_temp_R[0]~13\)))) # (!\inst2|r_mult_R\(11) & ((\inst2|r_curr_R\(1) & (!\inst2|r_temp_R[0]~13\)) # 
-- (!\inst2|r_curr_R\(1) & ((\inst2|r_temp_R[0]~13\) # (GND)))))
-- \inst2|r_temp_R[1]~15\ = CARRY((\inst2|r_mult_R\(11) & (!\inst2|r_curr_R\(1) & !\inst2|r_temp_R[0]~13\)) # (!\inst2|r_mult_R\(11) & ((!\inst2|r_temp_R[0]~13\) # (!\inst2|r_curr_R\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_mult_R\(11),
	datab => \inst2|r_curr_R\(1),
	datad => VCC,
	cin => \inst2|r_temp_R[0]~13\,
	combout => \inst2|r_temp_R[1]~14_combout\,
	cout => \inst2|r_temp_R[1]~15\);

-- Location: LCCOMB_X36_Y16_N6
\inst2|r_temp_R[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_temp_R[3]~18_combout\ = (\inst2|r_curr_R\(3) & ((\inst2|r_mult_R\(13) & (\inst2|r_temp_R[2]~17\ & VCC)) # (!\inst2|r_mult_R\(13) & (!\inst2|r_temp_R[2]~17\)))) # (!\inst2|r_curr_R\(3) & ((\inst2|r_mult_R\(13) & (!\inst2|r_temp_R[2]~17\)) # 
-- (!\inst2|r_mult_R\(13) & ((\inst2|r_temp_R[2]~17\) # (GND)))))
-- \inst2|r_temp_R[3]~19\ = CARRY((\inst2|r_curr_R\(3) & (!\inst2|r_mult_R\(13) & !\inst2|r_temp_R[2]~17\)) # (!\inst2|r_curr_R\(3) & ((!\inst2|r_temp_R[2]~17\) # (!\inst2|r_mult_R\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_curr_R\(3),
	datab => \inst2|r_mult_R\(13),
	datad => VCC,
	cin => \inst2|r_temp_R[2]~17\,
	combout => \inst2|r_temp_R[3]~18_combout\,
	cout => \inst2|r_temp_R[3]~19\);

-- Location: LCCOMB_X36_Y16_N10
\inst2|r_temp_R[5]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_temp_R[5]~22_combout\ = (\inst2|r_curr_R\(5) & ((\inst2|r_mult_R\(15) & (\inst2|r_temp_R[4]~21\ & VCC)) # (!\inst2|r_mult_R\(15) & (!\inst2|r_temp_R[4]~21\)))) # (!\inst2|r_curr_R\(5) & ((\inst2|r_mult_R\(15) & (!\inst2|r_temp_R[4]~21\)) # 
-- (!\inst2|r_mult_R\(15) & ((\inst2|r_temp_R[4]~21\) # (GND)))))
-- \inst2|r_temp_R[5]~23\ = CARRY((\inst2|r_curr_R\(5) & (!\inst2|r_mult_R\(15) & !\inst2|r_temp_R[4]~21\)) # (!\inst2|r_curr_R\(5) & ((!\inst2|r_temp_R[4]~21\) # (!\inst2|r_mult_R\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_curr_R\(5),
	datab => \inst2|r_mult_R\(15),
	datad => VCC,
	cin => \inst2|r_temp_R[4]~21\,
	combout => \inst2|r_temp_R[5]~22_combout\,
	cout => \inst2|r_temp_R[5]~23\);

-- Location: LCCOMB_X36_Y16_N12
\inst2|r_temp_R[6]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_temp_R[6]~24_combout\ = ((\inst2|r_mult_R\(16) $ (\inst2|r_curr_R\(6) $ (!\inst2|r_temp_R[5]~23\)))) # (GND)
-- \inst2|r_temp_R[6]~25\ = CARRY((\inst2|r_mult_R\(16) & ((\inst2|r_curr_R\(6)) # (!\inst2|r_temp_R[5]~23\))) # (!\inst2|r_mult_R\(16) & (\inst2|r_curr_R\(6) & !\inst2|r_temp_R[5]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_mult_R\(16),
	datab => \inst2|r_curr_R\(6),
	datad => VCC,
	cin => \inst2|r_temp_R[5]~23\,
	combout => \inst2|r_temp_R[6]~24_combout\,
	cout => \inst2|r_temp_R[6]~25\);

-- Location: LCCOMB_X36_Y16_N14
\inst2|r_temp_R[7]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_temp_R[7]~26_combout\ = (\inst2|r_mult_R\(17) & ((\inst2|r_curr_R\(7) & (\inst2|r_temp_R[6]~25\ & VCC)) # (!\inst2|r_curr_R\(7) & (!\inst2|r_temp_R[6]~25\)))) # (!\inst2|r_mult_R\(17) & ((\inst2|r_curr_R\(7) & (!\inst2|r_temp_R[6]~25\)) # 
-- (!\inst2|r_curr_R\(7) & ((\inst2|r_temp_R[6]~25\) # (GND)))))
-- \inst2|r_temp_R[7]~27\ = CARRY((\inst2|r_mult_R\(17) & (!\inst2|r_curr_R\(7) & !\inst2|r_temp_R[6]~25\)) # (!\inst2|r_mult_R\(17) & ((!\inst2|r_temp_R[6]~25\) # (!\inst2|r_curr_R\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_mult_R\(17),
	datab => \inst2|r_curr_R\(7),
	datad => VCC,
	cin => \inst2|r_temp_R[6]~25\,
	combout => \inst2|r_temp_R[7]~26_combout\,
	cout => \inst2|r_temp_R[7]~27\);

-- Location: LCCOMB_X36_Y16_N16
\inst2|r_temp_R[8]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_temp_R[8]~28_combout\ = ((\inst2|r_mult_R\(18) $ (\inst2|r_curr_R\(8) $ (!\inst2|r_temp_R[7]~27\)))) # (GND)
-- \inst2|r_temp_R[8]~29\ = CARRY((\inst2|r_mult_R\(18) & ((\inst2|r_curr_R\(8)) # (!\inst2|r_temp_R[7]~27\))) # (!\inst2|r_mult_R\(18) & (\inst2|r_curr_R\(8) & !\inst2|r_temp_R[7]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_mult_R\(18),
	datab => \inst2|r_curr_R\(8),
	datad => VCC,
	cin => \inst2|r_temp_R[7]~27\,
	combout => \inst2|r_temp_R[8]~28_combout\,
	cout => \inst2|r_temp_R[8]~29\);

-- Location: DSPOUT_X39_Y17_N2
\inst2|Mult1|auto_generated|mac_out2\ : cycloneii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \inst2|Mult1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst2|Mult1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCFF_X35_Y19_N15
\inst14|r_ff[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst14|r_ff[7]~21_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst14|d_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|r_ff\(7));

-- Location: LCFF_X35_Y19_N13
\inst14|r_ff[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst14|r_ff[6]~19_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst14|d_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|r_ff\(6));

-- Location: LCFF_X35_Y19_N11
\inst14|r_ff[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst14|r_ff[5]~17_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst14|d_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|r_ff\(5));

-- Location: LCFF_X35_Y19_N7
\inst14|r_ff[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst14|r_ff[3]~13_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst14|d_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|r_ff\(3));

-- Location: LCFF_X35_Y19_N3
\inst14|r_ff[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst14|r_ff[1]~9_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst14|d_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|r_ff\(1));

-- Location: LCCOMB_X35_Y19_N2
\inst14|r_ff[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|r_ff[1]~9_combout\ = (\inst10|sht_reg_right\(14) & (!\inst10|sht_reg_right\(15) & VCC)) # (!\inst10|sht_reg_right\(14) & (\inst10|sht_reg_right\(15) $ (GND)))
-- \inst14|r_ff[1]~10\ = CARRY((!\inst10|sht_reg_right\(14) & !\inst10|sht_reg_right\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|sht_reg_right\(14),
	datab => \inst10|sht_reg_right\(15),
	datad => VCC,
	combout => \inst14|r_ff[1]~9_combout\,
	cout => \inst14|r_ff[1]~10\);

-- Location: LCCOMB_X35_Y19_N6
\inst14|r_ff[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|r_ff[3]~13_combout\ = (\inst10|sht_reg_right\(17) & (!\inst14|r_ff[2]~12\ & VCC)) # (!\inst10|sht_reg_right\(17) & (\inst14|r_ff[2]~12\ $ (GND)))
-- \inst14|r_ff[3]~14\ = CARRY((!\inst10|sht_reg_right\(17) & !\inst14|r_ff[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|sht_reg_right\(17),
	datad => VCC,
	cin => \inst14|r_ff[2]~12\,
	combout => \inst14|r_ff[3]~13_combout\,
	cout => \inst14|r_ff[3]~14\);

-- Location: LCCOMB_X35_Y19_N10
\inst14|r_ff[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|r_ff[5]~17_combout\ = (\inst10|sht_reg_right\(19) & (!\inst14|r_ff[4]~16\ & VCC)) # (!\inst10|sht_reg_right\(19) & (\inst14|r_ff[4]~16\ $ (GND)))
-- \inst14|r_ff[5]~18\ = CARRY((!\inst10|sht_reg_right\(19) & !\inst14|r_ff[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|sht_reg_right\(19),
	datad => VCC,
	cin => \inst14|r_ff[4]~16\,
	combout => \inst14|r_ff[5]~17_combout\,
	cout => \inst14|r_ff[5]~18\);

-- Location: LCCOMB_X35_Y19_N12
\inst14|r_ff[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|r_ff[6]~19_combout\ = (\inst10|sht_reg_right\(20) & ((\inst14|r_ff[5]~18\) # (GND))) # (!\inst10|sht_reg_right\(20) & (!\inst14|r_ff[5]~18\))
-- \inst14|r_ff[6]~20\ = CARRY((\inst10|sht_reg_right\(20)) # (!\inst14|r_ff[5]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|sht_reg_right\(20),
	datad => VCC,
	cin => \inst14|r_ff[5]~18\,
	combout => \inst14|r_ff[6]~19_combout\,
	cout => \inst14|r_ff[6]~20\);

-- Location: LCCOMB_X35_Y19_N14
\inst14|r_ff[7]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|r_ff[7]~21_combout\ = (\inst10|sht_reg_right\(21) & (!\inst14|r_ff[6]~20\ & VCC)) # (!\inst10|sht_reg_right\(21) & (\inst14|r_ff[6]~20\ $ (GND)))
-- \inst14|r_ff[7]~22\ = CARRY((!\inst10|sht_reg_right\(21) & !\inst14|r_ff[6]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|sht_reg_right\(21),
	datad => VCC,
	cin => \inst14|r_ff[6]~20\,
	combout => \inst14|r_ff[7]~21_combout\,
	cout => \inst14|r_ff[7]~22\);

-- Location: LCFF_X37_Y21_N19
\inst16|acc[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst16|acc[19]~59_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|acc\(19));

-- Location: LCFF_X37_Y21_N17
\inst16|acc[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst16|acc[18]~57_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|acc\(18));

-- Location: LCFF_X37_Y21_N15
\inst16|acc[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst16|acc[17]~55_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|acc\(17));

-- Location: LCFF_X37_Y21_N13
\inst16|acc[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst16|acc[16]~53_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|acc\(16));

-- Location: LCFF_X37_Y21_N11
\inst16|acc[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst16|acc[15]~51_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|acc\(15));

-- Location: LCFF_X37_Y21_N9
\inst16|acc[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst16|acc[14]~49_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|acc\(14));

-- Location: LCFF_X37_Y21_N7
\inst16|acc[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst16|acc[13]~47_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|acc\(13));

-- Location: LCFF_X37_Y21_N5
\inst16|acc[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst16|acc[12]~45_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|acc\(12));

-- Location: LCFF_X37_Y21_N3
\inst16|acc[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst16|acc[11]~43_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|acc\(11));

-- Location: LCFF_X37_Y21_N1
\inst16|acc[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst16|acc[10]~41_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|acc\(10));

-- Location: LCFF_X37_Y22_N31
\inst16|acc[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst16|acc[9]~39_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|acc\(9));

-- Location: LCFF_X37_Y22_N29
\inst16|acc[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst16|acc[8]~37_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|acc\(8));

-- Location: LCFF_X37_Y22_N27
\inst16|acc[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst16|acc[7]~35_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|acc\(7));

-- Location: LCFF_X37_Y22_N25
\inst16|acc[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst16|acc[6]~33_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|acc\(6));

-- Location: LCFF_X37_Y22_N23
\inst16|acc[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst16|acc[5]~31_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|acc\(5));

-- Location: LCFF_X37_Y22_N21
\inst16|acc[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst16|acc[4]~29_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|acc\(4));

-- Location: LCFF_X37_Y22_N19
\inst16|acc[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst16|acc[3]~27_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|acc\(3));

-- Location: LCFF_X37_Y22_N17
\inst16|acc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst16|acc[2]~25_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|acc\(2));

-- Location: LCFF_X37_Y22_N15
\inst16|acc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst16|acc[1]~23_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|acc\(1));

-- Location: LCFF_X37_Y22_N13
\inst16|acc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst16|acc[0]~21_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|acc\(0));

-- Location: LCCOMB_X38_Y22_N12
\inst16|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Add0~0_combout\ = (\inst16|acc\(0) & (\inst13|mixer_out_R\(0) $ (VCC))) # (!\inst16|acc\(0) & (\inst13|mixer_out_R\(0) & VCC))
-- \inst16|Add0~1\ = CARRY((\inst16|acc\(0) & \inst13|mixer_out_R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|acc\(0),
	datab => \inst13|mixer_out_R\(0),
	datad => VCC,
	combout => \inst16|Add0~0_combout\,
	cout => \inst16|Add0~1\);

-- Location: LCCOMB_X38_Y22_N14
\inst16|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Add0~2_combout\ = (\inst16|acc\(1) & ((\inst13|mixer_out_R\(1) & (\inst16|Add0~1\ & VCC)) # (!\inst13|mixer_out_R\(1) & (!\inst16|Add0~1\)))) # (!\inst16|acc\(1) & ((\inst13|mixer_out_R\(1) & (!\inst16|Add0~1\)) # (!\inst13|mixer_out_R\(1) & 
-- ((\inst16|Add0~1\) # (GND)))))
-- \inst16|Add0~3\ = CARRY((\inst16|acc\(1) & (!\inst13|mixer_out_R\(1) & !\inst16|Add0~1\)) # (!\inst16|acc\(1) & ((!\inst16|Add0~1\) # (!\inst13|mixer_out_R\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|acc\(1),
	datab => \inst13|mixer_out_R\(1),
	datad => VCC,
	cin => \inst16|Add0~1\,
	combout => \inst16|Add0~2_combout\,
	cout => \inst16|Add0~3\);

-- Location: LCCOMB_X38_Y22_N16
\inst16|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Add0~4_combout\ = ((\inst13|mixer_out_R\(2) $ (\inst16|acc\(2) $ (!\inst16|Add0~3\)))) # (GND)
-- \inst16|Add0~5\ = CARRY((\inst13|mixer_out_R\(2) & ((\inst16|acc\(2)) # (!\inst16|Add0~3\))) # (!\inst13|mixer_out_R\(2) & (\inst16|acc\(2) & !\inst16|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mixer_out_R\(2),
	datab => \inst16|acc\(2),
	datad => VCC,
	cin => \inst16|Add0~3\,
	combout => \inst16|Add0~4_combout\,
	cout => \inst16|Add0~5\);

-- Location: LCCOMB_X38_Y22_N18
\inst16|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Add0~6_combout\ = (\inst13|mixer_out_R\(3) & ((\inst16|acc\(3) & (\inst16|Add0~5\ & VCC)) # (!\inst16|acc\(3) & (!\inst16|Add0~5\)))) # (!\inst13|mixer_out_R\(3) & ((\inst16|acc\(3) & (!\inst16|Add0~5\)) # (!\inst16|acc\(3) & ((\inst16|Add0~5\) # 
-- (GND)))))
-- \inst16|Add0~7\ = CARRY((\inst13|mixer_out_R\(3) & (!\inst16|acc\(3) & !\inst16|Add0~5\)) # (!\inst13|mixer_out_R\(3) & ((!\inst16|Add0~5\) # (!\inst16|acc\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mixer_out_R\(3),
	datab => \inst16|acc\(3),
	datad => VCC,
	cin => \inst16|Add0~5\,
	combout => \inst16|Add0~6_combout\,
	cout => \inst16|Add0~7\);

-- Location: LCCOMB_X38_Y22_N20
\inst16|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Add0~8_combout\ = ((\inst16|acc\(4) $ (\inst13|mixer_out_R\(4) $ (!\inst16|Add0~7\)))) # (GND)
-- \inst16|Add0~9\ = CARRY((\inst16|acc\(4) & ((\inst13|mixer_out_R\(4)) # (!\inst16|Add0~7\))) # (!\inst16|acc\(4) & (\inst13|mixer_out_R\(4) & !\inst16|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|acc\(4),
	datab => \inst13|mixer_out_R\(4),
	datad => VCC,
	cin => \inst16|Add0~7\,
	combout => \inst16|Add0~8_combout\,
	cout => \inst16|Add0~9\);

-- Location: LCCOMB_X38_Y22_N22
\inst16|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Add0~10_combout\ = (\inst13|mixer_out_R\(5) & ((\inst16|acc\(5) & (\inst16|Add0~9\ & VCC)) # (!\inst16|acc\(5) & (!\inst16|Add0~9\)))) # (!\inst13|mixer_out_R\(5) & ((\inst16|acc\(5) & (!\inst16|Add0~9\)) # (!\inst16|acc\(5) & ((\inst16|Add0~9\) # 
-- (GND)))))
-- \inst16|Add0~11\ = CARRY((\inst13|mixer_out_R\(5) & (!\inst16|acc\(5) & !\inst16|Add0~9\)) # (!\inst13|mixer_out_R\(5) & ((!\inst16|Add0~9\) # (!\inst16|acc\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mixer_out_R\(5),
	datab => \inst16|acc\(5),
	datad => VCC,
	cin => \inst16|Add0~9\,
	combout => \inst16|Add0~10_combout\,
	cout => \inst16|Add0~11\);

-- Location: LCCOMB_X38_Y22_N24
\inst16|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Add0~12_combout\ = ((\inst13|mixer_out_R\(6) $ (\inst16|acc\(6) $ (!\inst16|Add0~11\)))) # (GND)
-- \inst16|Add0~13\ = CARRY((\inst13|mixer_out_R\(6) & ((\inst16|acc\(6)) # (!\inst16|Add0~11\))) # (!\inst13|mixer_out_R\(6) & (\inst16|acc\(6) & !\inst16|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mixer_out_R\(6),
	datab => \inst16|acc\(6),
	datad => VCC,
	cin => \inst16|Add0~11\,
	combout => \inst16|Add0~12_combout\,
	cout => \inst16|Add0~13\);

-- Location: LCCOMB_X38_Y22_N26
\inst16|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Add0~14_combout\ = (\inst13|mixer_out_R\(7) & ((\inst16|acc\(7) & (\inst16|Add0~13\ & VCC)) # (!\inst16|acc\(7) & (!\inst16|Add0~13\)))) # (!\inst13|mixer_out_R\(7) & ((\inst16|acc\(7) & (!\inst16|Add0~13\)) # (!\inst16|acc\(7) & 
-- ((\inst16|Add0~13\) # (GND)))))
-- \inst16|Add0~15\ = CARRY((\inst13|mixer_out_R\(7) & (!\inst16|acc\(7) & !\inst16|Add0~13\)) # (!\inst13|mixer_out_R\(7) & ((!\inst16|Add0~13\) # (!\inst16|acc\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mixer_out_R\(7),
	datab => \inst16|acc\(7),
	datad => VCC,
	cin => \inst16|Add0~13\,
	combout => \inst16|Add0~14_combout\,
	cout => \inst16|Add0~15\);

-- Location: LCCOMB_X38_Y22_N28
\inst16|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Add0~16_combout\ = ((\inst13|mixer_out_R\(8) $ (\inst16|acc\(8) $ (!\inst16|Add0~15\)))) # (GND)
-- \inst16|Add0~17\ = CARRY((\inst13|mixer_out_R\(8) & ((\inst16|acc\(8)) # (!\inst16|Add0~15\))) # (!\inst13|mixer_out_R\(8) & (\inst16|acc\(8) & !\inst16|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mixer_out_R\(8),
	datab => \inst16|acc\(8),
	datad => VCC,
	cin => \inst16|Add0~15\,
	combout => \inst16|Add0~16_combout\,
	cout => \inst16|Add0~17\);

-- Location: LCCOMB_X38_Y22_N30
\inst16|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Add0~18_combout\ = (\inst16|acc\(9) & ((\inst13|mixer_out_R\(9) & (\inst16|Add0~17\ & VCC)) # (!\inst13|mixer_out_R\(9) & (!\inst16|Add0~17\)))) # (!\inst16|acc\(9) & ((\inst13|mixer_out_R\(9) & (!\inst16|Add0~17\)) # (!\inst13|mixer_out_R\(9) & 
-- ((\inst16|Add0~17\) # (GND)))))
-- \inst16|Add0~19\ = CARRY((\inst16|acc\(9) & (!\inst13|mixer_out_R\(9) & !\inst16|Add0~17\)) # (!\inst16|acc\(9) & ((!\inst16|Add0~17\) # (!\inst13|mixer_out_R\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|acc\(9),
	datab => \inst13|mixer_out_R\(9),
	datad => VCC,
	cin => \inst16|Add0~17\,
	combout => \inst16|Add0~18_combout\,
	cout => \inst16|Add0~19\);

-- Location: LCCOMB_X38_Y21_N0
\inst16|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Add0~20_combout\ = ((\inst16|acc\(10) $ (\inst13|mixer_out_R\(9) $ (!\inst16|Add0~19\)))) # (GND)
-- \inst16|Add0~21\ = CARRY((\inst16|acc\(10) & ((\inst13|mixer_out_R\(9)) # (!\inst16|Add0~19\))) # (!\inst16|acc\(10) & (\inst13|mixer_out_R\(9) & !\inst16|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|acc\(10),
	datab => \inst13|mixer_out_R\(9),
	datad => VCC,
	cin => \inst16|Add0~19\,
	combout => \inst16|Add0~20_combout\,
	cout => \inst16|Add0~21\);

-- Location: LCCOMB_X38_Y21_N2
\inst16|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Add0~22_combout\ = (\inst16|acc\(11) & ((\inst13|mixer_out_R\(9) & (\inst16|Add0~21\ & VCC)) # (!\inst13|mixer_out_R\(9) & (!\inst16|Add0~21\)))) # (!\inst16|acc\(11) & ((\inst13|mixer_out_R\(9) & (!\inst16|Add0~21\)) # (!\inst13|mixer_out_R\(9) & 
-- ((\inst16|Add0~21\) # (GND)))))
-- \inst16|Add0~23\ = CARRY((\inst16|acc\(11) & (!\inst13|mixer_out_R\(9) & !\inst16|Add0~21\)) # (!\inst16|acc\(11) & ((!\inst16|Add0~21\) # (!\inst13|mixer_out_R\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|acc\(11),
	datab => \inst13|mixer_out_R\(9),
	datad => VCC,
	cin => \inst16|Add0~21\,
	combout => \inst16|Add0~22_combout\,
	cout => \inst16|Add0~23\);

-- Location: LCCOMB_X38_Y21_N4
\inst16|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Add0~24_combout\ = ((\inst13|mixer_out_R\(9) $ (\inst16|acc\(12) $ (!\inst16|Add0~23\)))) # (GND)
-- \inst16|Add0~25\ = CARRY((\inst13|mixer_out_R\(9) & ((\inst16|acc\(12)) # (!\inst16|Add0~23\))) # (!\inst13|mixer_out_R\(9) & (\inst16|acc\(12) & !\inst16|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mixer_out_R\(9),
	datab => \inst16|acc\(12),
	datad => VCC,
	cin => \inst16|Add0~23\,
	combout => \inst16|Add0~24_combout\,
	cout => \inst16|Add0~25\);

-- Location: LCCOMB_X38_Y21_N6
\inst16|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Add0~26_combout\ = (\inst13|mixer_out_R\(9) & ((\inst16|acc\(13) & (\inst16|Add0~25\ & VCC)) # (!\inst16|acc\(13) & (!\inst16|Add0~25\)))) # (!\inst13|mixer_out_R\(9) & ((\inst16|acc\(13) & (!\inst16|Add0~25\)) # (!\inst16|acc\(13) & 
-- ((\inst16|Add0~25\) # (GND)))))
-- \inst16|Add0~27\ = CARRY((\inst13|mixer_out_R\(9) & (!\inst16|acc\(13) & !\inst16|Add0~25\)) # (!\inst13|mixer_out_R\(9) & ((!\inst16|Add0~25\) # (!\inst16|acc\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mixer_out_R\(9),
	datab => \inst16|acc\(13),
	datad => VCC,
	cin => \inst16|Add0~25\,
	combout => \inst16|Add0~26_combout\,
	cout => \inst16|Add0~27\);

-- Location: LCCOMB_X38_Y21_N8
\inst16|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Add0~28_combout\ = ((\inst16|acc\(14) $ (\inst13|mixer_out_R\(9) $ (!\inst16|Add0~27\)))) # (GND)
-- \inst16|Add0~29\ = CARRY((\inst16|acc\(14) & ((\inst13|mixer_out_R\(9)) # (!\inst16|Add0~27\))) # (!\inst16|acc\(14) & (\inst13|mixer_out_R\(9) & !\inst16|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|acc\(14),
	datab => \inst13|mixer_out_R\(9),
	datad => VCC,
	cin => \inst16|Add0~27\,
	combout => \inst16|Add0~28_combout\,
	cout => \inst16|Add0~29\);

-- Location: LCCOMB_X38_Y21_N10
\inst16|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Add0~30_combout\ = (\inst16|acc\(15) & ((\inst13|mixer_out_R\(9) & (\inst16|Add0~29\ & VCC)) # (!\inst13|mixer_out_R\(9) & (!\inst16|Add0~29\)))) # (!\inst16|acc\(15) & ((\inst13|mixer_out_R\(9) & (!\inst16|Add0~29\)) # (!\inst13|mixer_out_R\(9) & 
-- ((\inst16|Add0~29\) # (GND)))))
-- \inst16|Add0~31\ = CARRY((\inst16|acc\(15) & (!\inst13|mixer_out_R\(9) & !\inst16|Add0~29\)) # (!\inst16|acc\(15) & ((!\inst16|Add0~29\) # (!\inst13|mixer_out_R\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|acc\(15),
	datab => \inst13|mixer_out_R\(9),
	datad => VCC,
	cin => \inst16|Add0~29\,
	combout => \inst16|Add0~30_combout\,
	cout => \inst16|Add0~31\);

-- Location: LCCOMB_X38_Y21_N12
\inst16|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Add0~32_combout\ = ((\inst16|acc\(16) $ (\inst13|mixer_out_R\(9) $ (!\inst16|Add0~31\)))) # (GND)
-- \inst16|Add0~33\ = CARRY((\inst16|acc\(16) & ((\inst13|mixer_out_R\(9)) # (!\inst16|Add0~31\))) # (!\inst16|acc\(16) & (\inst13|mixer_out_R\(9) & !\inst16|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|acc\(16),
	datab => \inst13|mixer_out_R\(9),
	datad => VCC,
	cin => \inst16|Add0~31\,
	combout => \inst16|Add0~32_combout\,
	cout => \inst16|Add0~33\);

-- Location: LCCOMB_X38_Y21_N14
\inst16|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Add0~34_combout\ = (\inst13|mixer_out_R\(9) & ((\inst16|acc\(17) & (\inst16|Add0~33\ & VCC)) # (!\inst16|acc\(17) & (!\inst16|Add0~33\)))) # (!\inst13|mixer_out_R\(9) & ((\inst16|acc\(17) & (!\inst16|Add0~33\)) # (!\inst16|acc\(17) & 
-- ((\inst16|Add0~33\) # (GND)))))
-- \inst16|Add0~35\ = CARRY((\inst13|mixer_out_R\(9) & (!\inst16|acc\(17) & !\inst16|Add0~33\)) # (!\inst13|mixer_out_R\(9) & ((!\inst16|Add0~33\) # (!\inst16|acc\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mixer_out_R\(9),
	datab => \inst16|acc\(17),
	datad => VCC,
	cin => \inst16|Add0~33\,
	combout => \inst16|Add0~34_combout\,
	cout => \inst16|Add0~35\);

-- Location: LCCOMB_X38_Y21_N16
\inst16|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Add0~36_combout\ = ((\inst13|mixer_out_R\(9) $ (\inst16|acc\(18) $ (!\inst16|Add0~35\)))) # (GND)
-- \inst16|Add0~37\ = CARRY((\inst13|mixer_out_R\(9) & ((\inst16|acc\(18)) # (!\inst16|Add0~35\))) # (!\inst13|mixer_out_R\(9) & (\inst16|acc\(18) & !\inst16|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mixer_out_R\(9),
	datab => \inst16|acc\(18),
	datad => VCC,
	cin => \inst16|Add0~35\,
	combout => \inst16|Add0~36_combout\,
	cout => \inst16|Add0~37\);

-- Location: LCCOMB_X38_Y21_N18
\inst16|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Add0~38_combout\ = (\inst13|mixer_out_R\(9) & ((\inst16|acc\(19) & (\inst16|Add0~37\ & VCC)) # (!\inst16|acc\(19) & (!\inst16|Add0~37\)))) # (!\inst13|mixer_out_R\(9) & ((\inst16|acc\(19) & (!\inst16|Add0~37\)) # (!\inst16|acc\(19) & 
-- ((\inst16|Add0~37\) # (GND)))))
-- \inst16|Add0~39\ = CARRY((\inst13|mixer_out_R\(9) & (!\inst16|acc\(19) & !\inst16|Add0~37\)) # (!\inst13|mixer_out_R\(9) & ((!\inst16|Add0~37\) # (!\inst16|acc\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mixer_out_R\(9),
	datab => \inst16|acc\(19),
	datad => VCC,
	cin => \inst16|Add0~37\,
	combout => \inst16|Add0~38_combout\,
	cout => \inst16|Add0~39\);

-- Location: LCFF_X37_Y21_N21
\inst16|acc[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst16|acc[20]~61_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|acc\(20));

-- Location: LCCOMB_X37_Y22_N12
\inst16|acc[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|acc[0]~21_combout\ = (\inst16|acc\(10) & (\inst16|Add0~0_combout\ $ (VCC))) # (!\inst16|acc\(10) & ((\inst16|Add0~0_combout\) # (GND)))
-- \inst16|acc[0]~22\ = CARRY((\inst16|Add0~0_combout\) # (!\inst16|acc\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|acc\(10),
	datab => \inst16|Add0~0_combout\,
	datad => VCC,
	combout => \inst16|acc[0]~21_combout\,
	cout => \inst16|acc[0]~22\);

-- Location: LCCOMB_X37_Y22_N14
\inst16|acc[1]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|acc[1]~23_combout\ = (\inst16|acc\(11) & ((\inst16|Add0~2_combout\ & (!\inst16|acc[0]~22\)) # (!\inst16|Add0~2_combout\ & ((\inst16|acc[0]~22\) # (GND))))) # (!\inst16|acc\(11) & ((\inst16|Add0~2_combout\ & (\inst16|acc[0]~22\ & VCC)) # 
-- (!\inst16|Add0~2_combout\ & (!\inst16|acc[0]~22\))))
-- \inst16|acc[1]~24\ = CARRY((\inst16|acc\(11) & ((!\inst16|acc[0]~22\) # (!\inst16|Add0~2_combout\))) # (!\inst16|acc\(11) & (!\inst16|Add0~2_combout\ & !\inst16|acc[0]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|acc\(11),
	datab => \inst16|Add0~2_combout\,
	datad => VCC,
	cin => \inst16|acc[0]~22\,
	combout => \inst16|acc[1]~23_combout\,
	cout => \inst16|acc[1]~24\);

-- Location: LCCOMB_X37_Y22_N16
\inst16|acc[2]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|acc[2]~25_combout\ = ((\inst16|Add0~4_combout\ $ (\inst16|acc\(12) $ (\inst16|acc[1]~24\)))) # (GND)
-- \inst16|acc[2]~26\ = CARRY((\inst16|Add0~4_combout\ & ((!\inst16|acc[1]~24\) # (!\inst16|acc\(12)))) # (!\inst16|Add0~4_combout\ & (!\inst16|acc\(12) & !\inst16|acc[1]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Add0~4_combout\,
	datab => \inst16|acc\(12),
	datad => VCC,
	cin => \inst16|acc[1]~24\,
	combout => \inst16|acc[2]~25_combout\,
	cout => \inst16|acc[2]~26\);

-- Location: LCCOMB_X37_Y22_N18
\inst16|acc[3]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|acc[3]~27_combout\ = (\inst16|acc\(13) & ((\inst16|Add0~6_combout\ & (!\inst16|acc[2]~26\)) # (!\inst16|Add0~6_combout\ & ((\inst16|acc[2]~26\) # (GND))))) # (!\inst16|acc\(13) & ((\inst16|Add0~6_combout\ & (\inst16|acc[2]~26\ & VCC)) # 
-- (!\inst16|Add0~6_combout\ & (!\inst16|acc[2]~26\))))
-- \inst16|acc[3]~28\ = CARRY((\inst16|acc\(13) & ((!\inst16|acc[2]~26\) # (!\inst16|Add0~6_combout\))) # (!\inst16|acc\(13) & (!\inst16|Add0~6_combout\ & !\inst16|acc[2]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|acc\(13),
	datab => \inst16|Add0~6_combout\,
	datad => VCC,
	cin => \inst16|acc[2]~26\,
	combout => \inst16|acc[3]~27_combout\,
	cout => \inst16|acc[3]~28\);

-- Location: LCCOMB_X37_Y22_N20
\inst16|acc[4]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|acc[4]~29_combout\ = ((\inst16|acc\(14) $ (\inst16|Add0~8_combout\ $ (\inst16|acc[3]~28\)))) # (GND)
-- \inst16|acc[4]~30\ = CARRY((\inst16|acc\(14) & (\inst16|Add0~8_combout\ & !\inst16|acc[3]~28\)) # (!\inst16|acc\(14) & ((\inst16|Add0~8_combout\) # (!\inst16|acc[3]~28\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|acc\(14),
	datab => \inst16|Add0~8_combout\,
	datad => VCC,
	cin => \inst16|acc[3]~28\,
	combout => \inst16|acc[4]~29_combout\,
	cout => \inst16|acc[4]~30\);

-- Location: LCCOMB_X37_Y22_N22
\inst16|acc[5]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|acc[5]~31_combout\ = (\inst16|acc\(15) & ((\inst16|Add0~10_combout\ & (!\inst16|acc[4]~30\)) # (!\inst16|Add0~10_combout\ & ((\inst16|acc[4]~30\) # (GND))))) # (!\inst16|acc\(15) & ((\inst16|Add0~10_combout\ & (\inst16|acc[4]~30\ & VCC)) # 
-- (!\inst16|Add0~10_combout\ & (!\inst16|acc[4]~30\))))
-- \inst16|acc[5]~32\ = CARRY((\inst16|acc\(15) & ((!\inst16|acc[4]~30\) # (!\inst16|Add0~10_combout\))) # (!\inst16|acc\(15) & (!\inst16|Add0~10_combout\ & !\inst16|acc[4]~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|acc\(15),
	datab => \inst16|Add0~10_combout\,
	datad => VCC,
	cin => \inst16|acc[4]~30\,
	combout => \inst16|acc[5]~31_combout\,
	cout => \inst16|acc[5]~32\);

-- Location: LCCOMB_X37_Y22_N24
\inst16|acc[6]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|acc[6]~33_combout\ = ((\inst16|acc\(16) $ (\inst16|Add0~12_combout\ $ (\inst16|acc[5]~32\)))) # (GND)
-- \inst16|acc[6]~34\ = CARRY((\inst16|acc\(16) & (\inst16|Add0~12_combout\ & !\inst16|acc[5]~32\)) # (!\inst16|acc\(16) & ((\inst16|Add0~12_combout\) # (!\inst16|acc[5]~32\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|acc\(16),
	datab => \inst16|Add0~12_combout\,
	datad => VCC,
	cin => \inst16|acc[5]~32\,
	combout => \inst16|acc[6]~33_combout\,
	cout => \inst16|acc[6]~34\);

-- Location: LCCOMB_X37_Y22_N26
\inst16|acc[7]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|acc[7]~35_combout\ = (\inst16|Add0~14_combout\ & ((\inst16|acc\(17) & (!\inst16|acc[6]~34\)) # (!\inst16|acc\(17) & (\inst16|acc[6]~34\ & VCC)))) # (!\inst16|Add0~14_combout\ & ((\inst16|acc\(17) & ((\inst16|acc[6]~34\) # (GND))) # 
-- (!\inst16|acc\(17) & (!\inst16|acc[6]~34\))))
-- \inst16|acc[7]~36\ = CARRY((\inst16|Add0~14_combout\ & (\inst16|acc\(17) & !\inst16|acc[6]~34\)) # (!\inst16|Add0~14_combout\ & ((\inst16|acc\(17)) # (!\inst16|acc[6]~34\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Add0~14_combout\,
	datab => \inst16|acc\(17),
	datad => VCC,
	cin => \inst16|acc[6]~34\,
	combout => \inst16|acc[7]~35_combout\,
	cout => \inst16|acc[7]~36\);

-- Location: LCCOMB_X37_Y22_N28
\inst16|acc[8]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|acc[8]~37_combout\ = ((\inst16|acc\(18) $ (\inst16|Add0~16_combout\ $ (\inst16|acc[7]~36\)))) # (GND)
-- \inst16|acc[8]~38\ = CARRY((\inst16|acc\(18) & (\inst16|Add0~16_combout\ & !\inst16|acc[7]~36\)) # (!\inst16|acc\(18) & ((\inst16|Add0~16_combout\) # (!\inst16|acc[7]~36\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|acc\(18),
	datab => \inst16|Add0~16_combout\,
	datad => VCC,
	cin => \inst16|acc[7]~36\,
	combout => \inst16|acc[8]~37_combout\,
	cout => \inst16|acc[8]~38\);

-- Location: LCCOMB_X37_Y22_N30
\inst16|acc[9]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|acc[9]~39_combout\ = (\inst16|acc\(19) & ((\inst16|Add0~18_combout\ & (!\inst16|acc[8]~38\)) # (!\inst16|Add0~18_combout\ & ((\inst16|acc[8]~38\) # (GND))))) # (!\inst16|acc\(19) & ((\inst16|Add0~18_combout\ & (\inst16|acc[8]~38\ & VCC)) # 
-- (!\inst16|Add0~18_combout\ & (!\inst16|acc[8]~38\))))
-- \inst16|acc[9]~40\ = CARRY((\inst16|acc\(19) & ((!\inst16|acc[8]~38\) # (!\inst16|Add0~18_combout\))) # (!\inst16|acc\(19) & (!\inst16|Add0~18_combout\ & !\inst16|acc[8]~38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|acc\(19),
	datab => \inst16|Add0~18_combout\,
	datad => VCC,
	cin => \inst16|acc[8]~38\,
	combout => \inst16|acc[9]~39_combout\,
	cout => \inst16|acc[9]~40\);

-- Location: LCCOMB_X37_Y21_N0
\inst16|acc[10]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|acc[10]~41_combout\ = ((\inst16|acc\(20) $ (\inst16|Add0~20_combout\ $ (\inst16|acc[9]~40\)))) # (GND)
-- \inst16|acc[10]~42\ = CARRY((\inst16|acc\(20) & (\inst16|Add0~20_combout\ & !\inst16|acc[9]~40\)) # (!\inst16|acc\(20) & ((\inst16|Add0~20_combout\) # (!\inst16|acc[9]~40\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|acc\(20),
	datab => \inst16|Add0~20_combout\,
	datad => VCC,
	cin => \inst16|acc[9]~40\,
	combout => \inst16|acc[10]~41_combout\,
	cout => \inst16|acc[10]~42\);

-- Location: LCCOMB_X37_Y21_N2
\inst16|acc[11]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|acc[11]~43_combout\ = (\inst16|Add0~22_combout\ & ((\inst16|acc\(20) & (!\inst16|acc[10]~42\)) # (!\inst16|acc\(20) & (\inst16|acc[10]~42\ & VCC)))) # (!\inst16|Add0~22_combout\ & ((\inst16|acc\(20) & ((\inst16|acc[10]~42\) # (GND))) # 
-- (!\inst16|acc\(20) & (!\inst16|acc[10]~42\))))
-- \inst16|acc[11]~44\ = CARRY((\inst16|Add0~22_combout\ & (\inst16|acc\(20) & !\inst16|acc[10]~42\)) # (!\inst16|Add0~22_combout\ & ((\inst16|acc\(20)) # (!\inst16|acc[10]~42\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Add0~22_combout\,
	datab => \inst16|acc\(20),
	datad => VCC,
	cin => \inst16|acc[10]~42\,
	combout => \inst16|acc[11]~43_combout\,
	cout => \inst16|acc[11]~44\);

-- Location: LCCOMB_X37_Y21_N4
\inst16|acc[12]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|acc[12]~45_combout\ = ((\inst16|acc\(20) $ (\inst16|Add0~24_combout\ $ (\inst16|acc[11]~44\)))) # (GND)
-- \inst16|acc[12]~46\ = CARRY((\inst16|acc\(20) & (\inst16|Add0~24_combout\ & !\inst16|acc[11]~44\)) # (!\inst16|acc\(20) & ((\inst16|Add0~24_combout\) # (!\inst16|acc[11]~44\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|acc\(20),
	datab => \inst16|Add0~24_combout\,
	datad => VCC,
	cin => \inst16|acc[11]~44\,
	combout => \inst16|acc[12]~45_combout\,
	cout => \inst16|acc[12]~46\);

-- Location: LCCOMB_X37_Y21_N6
\inst16|acc[13]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|acc[13]~47_combout\ = (\inst16|acc\(20) & ((\inst16|Add0~26_combout\ & (!\inst16|acc[12]~46\)) # (!\inst16|Add0~26_combout\ & ((\inst16|acc[12]~46\) # (GND))))) # (!\inst16|acc\(20) & ((\inst16|Add0~26_combout\ & (\inst16|acc[12]~46\ & VCC)) # 
-- (!\inst16|Add0~26_combout\ & (!\inst16|acc[12]~46\))))
-- \inst16|acc[13]~48\ = CARRY((\inst16|acc\(20) & ((!\inst16|acc[12]~46\) # (!\inst16|Add0~26_combout\))) # (!\inst16|acc\(20) & (!\inst16|Add0~26_combout\ & !\inst16|acc[12]~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|acc\(20),
	datab => \inst16|Add0~26_combout\,
	datad => VCC,
	cin => \inst16|acc[12]~46\,
	combout => \inst16|acc[13]~47_combout\,
	cout => \inst16|acc[13]~48\);

-- Location: LCCOMB_X37_Y21_N8
\inst16|acc[14]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|acc[14]~49_combout\ = ((\inst16|acc\(20) $ (\inst16|Add0~28_combout\ $ (\inst16|acc[13]~48\)))) # (GND)
-- \inst16|acc[14]~50\ = CARRY((\inst16|acc\(20) & (\inst16|Add0~28_combout\ & !\inst16|acc[13]~48\)) # (!\inst16|acc\(20) & ((\inst16|Add0~28_combout\) # (!\inst16|acc[13]~48\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|acc\(20),
	datab => \inst16|Add0~28_combout\,
	datad => VCC,
	cin => \inst16|acc[13]~48\,
	combout => \inst16|acc[14]~49_combout\,
	cout => \inst16|acc[14]~50\);

-- Location: LCCOMB_X37_Y21_N10
\inst16|acc[15]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|acc[15]~51_combout\ = (\inst16|acc\(20) & ((\inst16|Add0~30_combout\ & (!\inst16|acc[14]~50\)) # (!\inst16|Add0~30_combout\ & ((\inst16|acc[14]~50\) # (GND))))) # (!\inst16|acc\(20) & ((\inst16|Add0~30_combout\ & (\inst16|acc[14]~50\ & VCC)) # 
-- (!\inst16|Add0~30_combout\ & (!\inst16|acc[14]~50\))))
-- \inst16|acc[15]~52\ = CARRY((\inst16|acc\(20) & ((!\inst16|acc[14]~50\) # (!\inst16|Add0~30_combout\))) # (!\inst16|acc\(20) & (!\inst16|Add0~30_combout\ & !\inst16|acc[14]~50\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|acc\(20),
	datab => \inst16|Add0~30_combout\,
	datad => VCC,
	cin => \inst16|acc[14]~50\,
	combout => \inst16|acc[15]~51_combout\,
	cout => \inst16|acc[15]~52\);

-- Location: LCCOMB_X37_Y21_N12
\inst16|acc[16]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|acc[16]~53_combout\ = ((\inst16|acc\(20) $ (\inst16|Add0~32_combout\ $ (\inst16|acc[15]~52\)))) # (GND)
-- \inst16|acc[16]~54\ = CARRY((\inst16|acc\(20) & (\inst16|Add0~32_combout\ & !\inst16|acc[15]~52\)) # (!\inst16|acc\(20) & ((\inst16|Add0~32_combout\) # (!\inst16|acc[15]~52\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|acc\(20),
	datab => \inst16|Add0~32_combout\,
	datad => VCC,
	cin => \inst16|acc[15]~52\,
	combout => \inst16|acc[16]~53_combout\,
	cout => \inst16|acc[16]~54\);

-- Location: LCCOMB_X37_Y21_N14
\inst16|acc[17]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|acc[17]~55_combout\ = (\inst16|acc\(20) & ((\inst16|Add0~34_combout\ & (!\inst16|acc[16]~54\)) # (!\inst16|Add0~34_combout\ & ((\inst16|acc[16]~54\) # (GND))))) # (!\inst16|acc\(20) & ((\inst16|Add0~34_combout\ & (\inst16|acc[16]~54\ & VCC)) # 
-- (!\inst16|Add0~34_combout\ & (!\inst16|acc[16]~54\))))
-- \inst16|acc[17]~56\ = CARRY((\inst16|acc\(20) & ((!\inst16|acc[16]~54\) # (!\inst16|Add0~34_combout\))) # (!\inst16|acc\(20) & (!\inst16|Add0~34_combout\ & !\inst16|acc[16]~54\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|acc\(20),
	datab => \inst16|Add0~34_combout\,
	datad => VCC,
	cin => \inst16|acc[16]~54\,
	combout => \inst16|acc[17]~55_combout\,
	cout => \inst16|acc[17]~56\);

-- Location: LCCOMB_X37_Y21_N16
\inst16|acc[18]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|acc[18]~57_combout\ = ((\inst16|acc\(20) $ (\inst16|Add0~36_combout\ $ (\inst16|acc[17]~56\)))) # (GND)
-- \inst16|acc[18]~58\ = CARRY((\inst16|acc\(20) & (\inst16|Add0~36_combout\ & !\inst16|acc[17]~56\)) # (!\inst16|acc\(20) & ((\inst16|Add0~36_combout\) # (!\inst16|acc[17]~56\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|acc\(20),
	datab => \inst16|Add0~36_combout\,
	datad => VCC,
	cin => \inst16|acc[17]~56\,
	combout => \inst16|acc[18]~57_combout\,
	cout => \inst16|acc[18]~58\);

-- Location: LCCOMB_X37_Y21_N18
\inst16|acc[19]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|acc[19]~59_combout\ = (\inst16|acc\(20) & ((\inst16|Add0~38_combout\ & (!\inst16|acc[18]~58\)) # (!\inst16|Add0~38_combout\ & ((\inst16|acc[18]~58\) # (GND))))) # (!\inst16|acc\(20) & ((\inst16|Add0~38_combout\ & (\inst16|acc[18]~58\ & VCC)) # 
-- (!\inst16|Add0~38_combout\ & (!\inst16|acc[18]~58\))))
-- \inst16|acc[19]~60\ = CARRY((\inst16|acc\(20) & ((!\inst16|acc[18]~58\) # (!\inst16|Add0~38_combout\))) # (!\inst16|acc\(20) & (!\inst16|Add0~38_combout\ & !\inst16|acc[18]~58\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|acc\(20),
	datab => \inst16|Add0~38_combout\,
	datad => VCC,
	cin => \inst16|acc[18]~58\,
	combout => \inst16|acc[19]~59_combout\,
	cout => \inst16|acc[19]~60\);

-- Location: DSPOUT_X39_Y19_N2
\inst13|Mult1|auto_generated|mac_out2\ : cycloneii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mult1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst13|Mult1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X38_Y21_N20
\inst16|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Add0~40_combout\ = \inst16|acc\(20) $ (\inst16|Add0~39\ $ (!\inst13|mixer_out_R\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|acc\(20),
	datad => \inst13|mixer_out_R\(9),
	cin => \inst16|Add0~39\,
	combout => \inst16|Add0~40_combout\);

-- Location: LCCOMB_X37_Y21_N20
\inst16|acc[20]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|acc[20]~61_combout\ = \inst16|acc\(20) $ (\inst16|acc[19]~60\ $ (\inst16|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|acc\(20),
	datad => \inst16|Add0~40_combout\,
	cin => \inst16|acc[19]~60\,
	combout => \inst16|acc[20]~61_combout\);

-- Location: DSPMULT_X39_Y19_N0
\inst13|Mult1|auto_generated|mac_mult1\ : cycloneii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \inst13|Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \inst13|Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst13|Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCFF_X41_Y20_N31
\inst|l_aud_reg[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|acc\(18),
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \inst10|data_stb~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|l_aud_reg\(22));

-- Location: LCFF_X18_Y29_N7
\inst9|rom_addr_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst9|rom_addr_cnt[1]~3_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|rom_addr_cnt\(1));

-- Location: LCFF_X21_Y29_N13
\inst6|data_wr_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst9|Mux10~0_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst6|process_5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|data_wr_reg\(1));

-- Location: LCFF_X21_Y29_N19
\inst6|data_wr_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst9|Mux9~0_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst6|process_5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|data_wr_reg\(2));

-- Location: LCFF_X21_Y29_N25
\inst6|data_wr_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst9|Mux11~0_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst6|process_5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|data_wr_reg\(0));

-- Location: LCCOMB_X21_Y29_N6
\inst6|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux2~0_combout\ = (\inst6|bit_cnt\(1) & (\inst6|data_wr_reg\(0) & (\inst6|bit_cnt\(0)))) # (!\inst6|bit_cnt\(1) & (((\inst6|data_wr_reg\(2)) # (!\inst6|bit_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data_wr_reg\(0),
	datab => \inst6|bit_cnt\(1),
	datac => \inst6|bit_cnt\(0),
	datad => \inst6|data_wr_reg\(2),
	combout => \inst6|Mux2~0_combout\);

-- Location: LCFF_X21_Y29_N5
\inst6|data_wr_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst9|Mux8~0_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst6|process_5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|data_wr_reg\(3));

-- Location: LCCOMB_X21_Y29_N14
\inst6|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux2~1_combout\ = (\inst6|bit_cnt\(0) & (((\inst6|Mux2~0_combout\)))) # (!\inst6|bit_cnt\(0) & ((\inst6|Mux2~0_combout\ & ((\inst6|data_wr_reg\(3)))) # (!\inst6|Mux2~0_combout\ & (\inst6|data_wr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data_wr_reg\(1),
	datab => \inst6|data_wr_reg\(3),
	datac => \inst6|bit_cnt\(0),
	datad => \inst6|Mux2~0_combout\,
	combout => \inst6|Mux2~1_combout\);

-- Location: LCCOMB_X20_Y29_N20
\inst6|sda_o~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sda_o~2_combout\ = (\inst6|pres_state.data_wr~regout\ & (\inst6|p1~regout\ & (\inst6|Mux2~1_combout\ & \inst6|bit_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pres_state.data_wr~regout\,
	datab => \inst6|p1~regout\,
	datac => \inst6|Mux2~1_combout\,
	datad => \inst6|bit_cnt\(2),
	combout => \inst6|sda_o~2_combout\);

-- Location: LCFF_X21_Y29_N29
\inst6|reg_addr_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst9|Mux2~0_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst6|process_5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|reg_addr_reg\(2));

-- Location: LCFF_X21_Y29_N11
\inst6|reg_addr_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst9|Mux3~0_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst6|process_5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|reg_addr_reg\(1));

-- Location: LCFF_X21_Y29_N9
\inst6|reg_addr_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst9|Mux5~0_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst6|process_5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|reg_addr_reg\(0));

-- Location: LCCOMB_X21_Y29_N22
\inst6|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux1~0_combout\ = (\inst6|bit_cnt\(0) & (((\inst6|reg_addr_reg\(0) & \inst6|bit_cnt\(1))))) # (!\inst6|bit_cnt\(0) & ((\inst6|reg_addr_reg\(1)) # ((!\inst6|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|reg_addr_reg\(1),
	datab => \inst6|bit_cnt\(0),
	datac => \inst6|reg_addr_reg\(0),
	datad => \inst6|bit_cnt\(1),
	combout => \inst6|Mux1~0_combout\);

-- Location: LCFF_X21_Y29_N21
\inst6|reg_addr_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst9|Mux1~0_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst6|process_5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|reg_addr_reg\(3));

-- Location: LCCOMB_X21_Y29_N2
\inst6|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux1~1_combout\ = (\inst6|bit_cnt\(1) & (\inst6|Mux1~0_combout\)) # (!\inst6|bit_cnt\(1) & ((\inst6|Mux1~0_combout\ & (\inst6|reg_addr_reg\(3))) # (!\inst6|Mux1~0_combout\ & ((\inst6|reg_addr_reg\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|bit_cnt\(1),
	datab => \inst6|Mux1~0_combout\,
	datac => \inst6|reg_addr_reg\(3),
	datad => \inst6|reg_addr_reg\(2),
	combout => \inst6|Mux1~1_combout\);

-- Location: LCCOMB_X20_Y29_N2
\inst6|sda_o~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sda_o~7_combout\ = (\inst6|bit_cnt\(1) & (\inst6|pres_state.slv_cmd~regout\ & \inst6|slv_addr_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|bit_cnt\(1),
	datac => \inst6|pres_state.slv_cmd~regout\,
	datad => \inst6|slv_addr_reg\(5),
	combout => \inst6|sda_o~7_combout\);

-- Location: LCFF_X21_Y29_N17
\inst6|reg_addr_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst9|Mux1~1_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst6|process_5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|reg_addr_reg\(4));

-- Location: LCCOMB_X20_Y29_N16
\inst6|sda_o~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sda_o~8_combout\ = (\inst6|bit_cnt\(0) & (\inst6|bit_cnt\(1) & (\inst6|reg_addr_reg\(4) & \inst6|pres_state.reg_wr~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|bit_cnt\(0),
	datab => \inst6|bit_cnt\(1),
	datac => \inst6|reg_addr_reg\(4),
	datad => \inst6|pres_state.reg_wr~regout\,
	combout => \inst6|sda_o~8_combout\);

-- Location: LCFF_X21_Y29_N27
\inst6|data_wr_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst9|Mux7~0_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst6|process_5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|data_wr_reg\(4));

-- Location: LCFF_X21_Y29_N1
\inst6|data_wr_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst9|Mux5~1_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst6|process_5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|data_wr_reg\(6));

-- Location: LCCOMB_X21_Y29_N30
\inst6|sda_o~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sda_o~9_combout\ = (\inst6|bit_cnt\(1) & ((\inst6|bit_cnt\(0) & (\inst6|data_wr_reg\(4))) # (!\inst6|bit_cnt\(0) & ((\inst6|data_wr_reg\(6)))))) # (!\inst6|bit_cnt\(1) & (((\inst6|bit_cnt\(0) & \inst6|data_wr_reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|bit_cnt\(1),
	datab => \inst6|data_wr_reg\(4),
	datac => \inst6|bit_cnt\(0),
	datad => \inst6|data_wr_reg\(6),
	combout => \inst6|sda_o~9_combout\);

-- Location: LCCOMB_X20_Y29_N10
\inst6|sda_o~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sda_o~10_combout\ = (\inst6|sda_o~8_combout\) # ((\inst6|sda_o~7_combout\) # ((\inst6|pres_state.data_wr~regout\ & \inst6|sda_o~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sda_o~8_combout\,
	datab => \inst6|sda_o~7_combout\,
	datac => \inst6|pres_state.data_wr~regout\,
	datad => \inst6|sda_o~9_combout\,
	combout => \inst6|sda_o~10_combout\);

-- Location: LCFF_X38_Y20_N13
\inst|shft_reg[52]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~5_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(52));

-- Location: LCFF_X40_Y21_N9
\inst13|mixer_out_L[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst13|mixer_out_L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|mixer_out_L\(6));

-- Location: LCFF_X40_Y21_N7
\inst13|mixer_out_L[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst13|mixer_out_L~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|mixer_out_L\(5));

-- Location: LCFF_X40_Y21_N5
\inst13|mixer_out_L[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst13|mixer_out_L~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|mixer_out_L\(4));

-- Location: LCFF_X40_Y20_N25
\inst13|mixer_out_L[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst13|mixer_out_L~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|mixer_out_L\(3));

-- Location: LCFF_X40_Y20_N29
\inst13|mixer_out_L[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst13|mixer_out_L~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|mixer_out_L\(1));

-- Location: LCFF_X40_Y21_N11
\inst13|mixer_out_L[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst13|mixer_out_L~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|mixer_out_L\(0));

-- Location: LCCOMB_X34_Y21_N14
\inst10|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Equal0~0_combout\ = ((\inst10|count\(0)) # ((\inst10|count\(1)) # (!\inst10|count\(4)))) # (!\inst10|count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|count\(3),
	datab => \inst10|count\(0),
	datac => \inst10|count\(4),
	datad => \inst10|count\(1),
	combout => \inst10|Equal0~0_combout\);

-- Location: LCCOMB_X18_Y29_N6
\inst9|rom_addr_cnt[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|rom_addr_cnt[1]~3_combout\ = \inst9|rom_addr_cnt\(1) $ (((\inst9|rom_addr_cnt\(0) & (!\inst6|busy_flag~regout\ & \inst9|init_reg~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|rom_addr_cnt\(0),
	datab => \inst6|busy_flag~regout\,
	datac => \inst9|rom_addr_cnt\(1),
	datad => \inst9|init_reg~regout\,
	combout => \inst9|rom_addr_cnt[1]~3_combout\);

-- Location: LCCOMB_X21_Y29_N12
\inst9|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux10~0_combout\ = \inst9|rom_addr_cnt\(0) $ (((\inst9|rom_addr_cnt\(1)) # (!\inst9|rom_addr_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|rom_addr_cnt\(1),
	datac => \inst9|rom_addr_cnt\(2),
	datad => \inst9|rom_addr_cnt\(0),
	combout => \inst9|Mux10~0_combout\);

-- Location: LCCOMB_X21_Y29_N18
\inst9|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux9~0_combout\ = (!\inst9|rom_addr_cnt\(1) & (!\inst9|rom_addr_cnt\(2) & !\inst9|rom_addr_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|rom_addr_cnt\(1),
	datac => \inst9|rom_addr_cnt\(2),
	datad => \inst9|rom_addr_cnt\(0),
	combout => \inst9|Mux9~0_combout\);

-- Location: LCCOMB_X21_Y29_N24
\inst9|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux11~0_combout\ = (\inst9|rom_addr_cnt\(1) & (\inst9|rom_addr_cnt\(2) & \inst9|rom_addr_cnt\(0))) # (!\inst9|rom_addr_cnt\(1) & (!\inst9|rom_addr_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|rom_addr_cnt\(1),
	datac => \inst9|rom_addr_cnt\(2),
	datad => \inst9|rom_addr_cnt\(0),
	combout => \inst9|Mux11~0_combout\);

-- Location: LCCOMB_X21_Y29_N4
\inst9|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux8~0_combout\ = (!\inst9|rom_addr_cnt\(1) & \inst9|rom_addr_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|rom_addr_cnt\(1),
	datad => \inst9|rom_addr_cnt\(0),
	combout => \inst9|Mux8~0_combout\);

-- Location: LCCOMB_X21_Y29_N28
\inst9|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux2~0_combout\ = (!\inst9|rom_addr_cnt\(1) & ((\inst9|rom_addr_cnt\(2)) # (\inst9|rom_addr_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|rom_addr_cnt\(1),
	datac => \inst9|rom_addr_cnt\(2),
	datad => \inst9|rom_addr_cnt\(0),
	combout => \inst9|Mux2~0_combout\);

-- Location: LCCOMB_X21_Y29_N10
\inst9|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux3~0_combout\ = (\inst9|rom_addr_cnt\(0) & ((\inst9|rom_addr_cnt\(1)) # (\inst9|rom_addr_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|rom_addr_cnt\(1),
	datac => \inst9|rom_addr_cnt\(2),
	datad => \inst9|rom_addr_cnt\(0),
	combout => \inst9|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y29_N8
\inst9|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux5~0_combout\ = (!\inst9|rom_addr_cnt\(1) & !\inst9|rom_addr_cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|rom_addr_cnt\(1),
	datac => \inst9|rom_addr_cnt\(2),
	combout => \inst9|Mux5~0_combout\);

-- Location: LCCOMB_X21_Y29_N20
\inst9|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux1~0_combout\ = \inst9|rom_addr_cnt\(1) $ (\inst9|rom_addr_cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|rom_addr_cnt\(1),
	datac => \inst9|rom_addr_cnt\(2),
	combout => \inst9|Mux1~0_combout\);

-- Location: LCCOMB_X21_Y29_N16
\inst9|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux1~1_combout\ = (\inst9|rom_addr_cnt\(1) & \inst9|rom_addr_cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|rom_addr_cnt\(1),
	datac => \inst9|rom_addr_cnt\(2),
	combout => \inst9|Mux1~1_combout\);

-- Location: LCCOMB_X21_Y29_N26
\inst9|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux7~0_combout\ = (!\inst9|rom_addr_cnt\(2) & ((!\inst9|rom_addr_cnt\(0)) # (!\inst9|rom_addr_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|rom_addr_cnt\(1),
	datac => \inst9|rom_addr_cnt\(2),
	datad => \inst9|rom_addr_cnt\(0),
	combout => \inst9|Mux7~0_combout\);

-- Location: LCCOMB_X21_Y29_N0
\inst9|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux5~1_combout\ = (!\inst9|rom_addr_cnt\(1) & (!\inst9|rom_addr_cnt\(2) & \inst9|rom_addr_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|rom_addr_cnt\(1),
	datac => \inst9|rom_addr_cnt\(2),
	datad => \inst9|rom_addr_cnt\(0),
	combout => \inst9|Mux5~1_combout\);

-- Location: LCFF_X38_Y20_N7
\inst|shft_reg[51]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~6_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(51));

-- Location: LCFF_X40_Y20_N11
\inst|l_aud_reg[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|acc\(16),
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \inst10|data_stb~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|l_aud_reg\(20));

-- Location: LCCOMB_X38_Y20_N12
\inst|shft_reg~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~5_combout\ = (\inst7|lrck_reg~regout\ & (((\inst|shft_reg\(51))))) # (!\inst7|lrck_reg~regout\ & ((\inst10|lrck_prev~regout\ & (\inst|l_aud_reg\(20))) # (!\inst10|lrck_prev~regout\ & ((\inst|shft_reg\(51))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|lrck_reg~regout\,
	datab => \inst10|lrck_prev~regout\,
	datac => \inst|l_aud_reg\(20),
	datad => \inst|shft_reg\(51),
	combout => \inst|shft_reg~5_combout\);

-- Location: LCCOMB_X40_Y21_N8
\inst13|mixer_out_L~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|mixer_out_L~3_combout\ = (\inst13|Mult0|auto_generated|mac_out2~DATAOUT14\ & ((\inst13|Mult0|auto_generated|mac_out2~DATAOUT18\) # (!\inst13|Mult0|auto_generated|mac_out2~DATAOUT19\))) # (!\inst13|Mult0|auto_generated|mac_out2~DATAOUT14\ & 
-- (\inst13|Mult0|auto_generated|mac_out2~DATAOUT18\ & !\inst13|Mult0|auto_generated|mac_out2~DATAOUT19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datac => \inst13|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datad => \inst13|Mult0|auto_generated|mac_out2~DATAOUT19\,
	combout => \inst13|mixer_out_L~3_combout\);

-- Location: LCCOMB_X40_Y21_N6
\inst13|mixer_out_L~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|mixer_out_L~4_combout\ = (\inst13|Mult0|auto_generated|mac_out2~DATAOUT19\ & (\inst13|Mult0|auto_generated|mac_out2~DATAOUT18\ & \inst13|Mult0|auto_generated|mac_out2~DATAOUT13\)) # (!\inst13|Mult0|auto_generated|mac_out2~DATAOUT19\ & 
-- ((\inst13|Mult0|auto_generated|mac_out2~DATAOUT18\) # (\inst13|Mult0|auto_generated|mac_out2~DATAOUT13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datac => \inst13|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datad => \inst13|Mult0|auto_generated|mac_out2~DATAOUT13\,
	combout => \inst13|mixer_out_L~4_combout\);

-- Location: LCCOMB_X40_Y21_N4
\inst13|mixer_out_L~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|mixer_out_L~5_combout\ = (\inst13|Mult0|auto_generated|mac_out2~DATAOUT19\ & (\inst13|Mult0|auto_generated|mac_out2~DATAOUT18\ & \inst13|Mult0|auto_generated|mac_out2~DATAOUT12\)) # (!\inst13|Mult0|auto_generated|mac_out2~DATAOUT19\ & 
-- ((\inst13|Mult0|auto_generated|mac_out2~DATAOUT18\) # (\inst13|Mult0|auto_generated|mac_out2~DATAOUT12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datac => \inst13|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datad => \inst13|Mult0|auto_generated|mac_out2~DATAOUT12\,
	combout => \inst13|mixer_out_L~5_combout\);

-- Location: LCCOMB_X40_Y20_N24
\inst13|mixer_out_L~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|mixer_out_L~6_combout\ = (\inst13|Mult0|auto_generated|mac_out2~DATAOUT11\ & ((\inst13|Mult0|auto_generated|mac_out2~DATAOUT18\) # (!\inst13|Mult0|auto_generated|mac_out2~DATAOUT19\))) # (!\inst13|Mult0|auto_generated|mac_out2~DATAOUT11\ & 
-- (!\inst13|Mult0|auto_generated|mac_out2~DATAOUT19\ & \inst13|Mult0|auto_generated|mac_out2~DATAOUT18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datac => \inst13|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datad => \inst13|Mult0|auto_generated|mac_out2~DATAOUT18\,
	combout => \inst13|mixer_out_L~6_combout\);

-- Location: LCCOMB_X40_Y20_N28
\inst13|mixer_out_L~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|mixer_out_L~8_combout\ = (\inst13|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\inst13|Mult0|auto_generated|mac_out2~DATAOUT18\) # (!\inst13|Mult0|auto_generated|mac_out2~DATAOUT19\))) # (!\inst13|Mult0|auto_generated|mac_out2~DATAOUT9\ & 
-- (!\inst13|Mult0|auto_generated|mac_out2~DATAOUT19\ & \inst13|Mult0|auto_generated|mac_out2~DATAOUT18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datac => \inst13|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datad => \inst13|Mult0|auto_generated|mac_out2~DATAOUT18\,
	combout => \inst13|mixer_out_L~8_combout\);

-- Location: LCCOMB_X40_Y21_N10
\inst13|mixer_out_L~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|mixer_out_L~9_combout\ = (\inst13|Mult0|auto_generated|mac_out2~DATAOUT8\ & ((\inst13|Mult0|auto_generated|mac_out2~DATAOUT18\) # (!\inst13|Mult0|auto_generated|mac_out2~DATAOUT19\))) # (!\inst13|Mult0|auto_generated|mac_out2~DATAOUT8\ & 
-- (\inst13|Mult0|auto_generated|mac_out2~DATAOUT18\ & !\inst13|Mult0|auto_generated|mac_out2~DATAOUT19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datac => \inst13|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datad => \inst13|Mult0|auto_generated|mac_out2~DATAOUT19\,
	combout => \inst13|mixer_out_L~9_combout\);

-- Location: LCFF_X38_Y20_N17
\inst|shft_reg[50]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~7_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(50));

-- Location: LCFF_X41_Y20_N27
\inst|l_aud_reg[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|l_aud_reg[19]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|data_stb~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|l_aud_reg\(19));

-- Location: LCCOMB_X38_Y20_N6
\inst|shft_reg~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~6_combout\ = (\inst10|lrck_prev~regout\ & ((\inst7|lrck_reg~regout\ & (\inst|shft_reg\(50))) # (!\inst7|lrck_reg~regout\ & ((\inst|l_aud_reg\(19)))))) # (!\inst10|lrck_prev~regout\ & (\inst|shft_reg\(50)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shft_reg\(50),
	datab => \inst10|lrck_prev~regout\,
	datac => \inst7|lrck_reg~regout\,
	datad => \inst|l_aud_reg\(19),
	combout => \inst|shft_reg~6_combout\);

-- Location: LCFF_X38_Y20_N3
\inst|shft_reg[49]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~8_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(49));

-- Location: LCFF_X40_Y20_N15
\inst|l_aud_reg[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|acc\(14),
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \inst10|data_stb~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|l_aud_reg\(18));

-- Location: LCCOMB_X38_Y20_N16
\inst|shft_reg~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~7_combout\ = (\inst10|lrck_prev~regout\ & ((\inst7|lrck_reg~regout\ & ((\inst|shft_reg\(49)))) # (!\inst7|lrck_reg~regout\ & (\inst|l_aud_reg\(18))))) # (!\inst10|lrck_prev~regout\ & (((\inst|shft_reg\(49)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|l_aud_reg\(18),
	datab => \inst10|lrck_prev~regout\,
	datac => \inst7|lrck_reg~regout\,
	datad => \inst|shft_reg\(49),
	combout => \inst|shft_reg~7_combout\);

-- Location: LCFF_X38_Y20_N1
\inst|shft_reg[48]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~9_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(48));

-- Location: LCFF_X41_Y20_N25
\inst|l_aud_reg[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|l_aud_reg[17]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|data_stb~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|l_aud_reg\(17));

-- Location: LCCOMB_X38_Y20_N2
\inst|shft_reg~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~8_combout\ = (\inst10|lrck_prev~regout\ & ((\inst7|lrck_reg~regout\ & ((\inst|shft_reg\(48)))) # (!\inst7|lrck_reg~regout\ & (\inst|l_aud_reg\(17))))) # (!\inst10|lrck_prev~regout\ & (((\inst|shft_reg\(48)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|l_aud_reg\(17),
	datab => \inst10|lrck_prev~regout\,
	datac => \inst7|lrck_reg~regout\,
	datad => \inst|shft_reg\(48),
	combout => \inst|shft_reg~8_combout\);

-- Location: LCFF_X38_Y17_N9
\inst2|r_curr_L[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_next_L\(0),
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_curr_L\(0));

-- Location: LCFF_X38_Y17_N21
\inst2|r_curr_L[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_next_L\(8),
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_curr_L\(8));

-- Location: LCFF_X38_Y17_N17
\inst2|r_curr_L[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_next_L\(4),
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_curr_L\(4));

-- Location: LCFF_X38_Y17_N13
\inst2|r_curr_L[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_next_L\(2),
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_curr_L\(2));

-- Location: LCFF_X38_Y17_N11
\inst2|r_curr_L[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_next_L\(1),
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_curr_L\(1));

-- Location: LCFF_X38_Y20_N19
\inst|shft_reg[47]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~10_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(47));

-- Location: LCFF_X41_Y20_N23
\inst|l_aud_reg[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|acc\(12),
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \inst10|data_stb~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|l_aud_reg\(16));

-- Location: LCCOMB_X38_Y20_N0
\inst|shft_reg~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~9_combout\ = (\inst10|lrck_prev~regout\ & ((\inst7|lrck_reg~regout\ & ((\inst|shft_reg\(47)))) # (!\inst7|lrck_reg~regout\ & (\inst|l_aud_reg\(16))))) # (!\inst10|lrck_prev~regout\ & (((\inst|shft_reg\(47)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|l_aud_reg\(16),
	datab => \inst10|lrck_prev~regout\,
	datac => \inst7|lrck_reg~regout\,
	datad => \inst|shft_reg\(47),
	combout => \inst|shft_reg~9_combout\);

-- Location: LCFF_X38_Y20_N25
\inst|shft_reg[46]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~11_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(46));

-- Location: LCFF_X40_Y20_N9
\inst|l_aud_reg[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|acc\(11),
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \inst10|data_stb~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|l_aud_reg\(15));

-- Location: LCCOMB_X38_Y20_N18
\inst|shft_reg~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~10_combout\ = (\inst10|lrck_prev~regout\ & ((\inst7|lrck_reg~regout\ & (\inst|shft_reg\(46))) # (!\inst7|lrck_reg~regout\ & ((\inst|l_aud_reg\(15)))))) # (!\inst10|lrck_prev~regout\ & (\inst|shft_reg\(46)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shft_reg\(46),
	datab => \inst10|lrck_prev~regout\,
	datac => \inst7|lrck_reg~regout\,
	datad => \inst|l_aud_reg\(15),
	combout => \inst|shft_reg~10_combout\);

-- Location: LCFF_X37_Y16_N13
\inst3|data_d[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|o_dac_data_R[1]~1_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|data_d\(1));

-- Location: LCCOMB_X34_Y16_N24
\inst3|ram~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|ram~26_combout\ = (\inst3|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\ & \inst3|ram~23_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	datad => \inst3|ram~23_regout\,
	combout => \inst3|ram~26_combout\);

-- Location: LCFF_X37_Y16_N17
\inst3|data_d[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|o_dac_data_R[3]~3_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|data_d\(3));

-- Location: LCCOMB_X34_Y16_N2
\inst3|ram~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|ram~27_combout\ = (\inst3|ram_rtl_0|auto_generated|ram_block1a3\ & \inst3|ram~23_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ram_rtl_0|auto_generated|ram_block1a3\,
	datad => \inst3|ram~23_regout\,
	combout => \inst3|ram~27_combout\);

-- Location: LCFF_X37_Y16_N19
\inst3|data_d[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|o_dac_data_R[4]~4_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|data_d\(4));

-- Location: LCFF_X37_Y16_N21
\inst3|data_d[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|o_dac_data_R[5]~5_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|data_d\(5));

-- Location: LCCOMB_X34_Y16_N14
\inst3|ram~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|ram~29_combout\ = (\inst3|ram_rtl_0|auto_generated|ram_block1a5\ & \inst3|ram~23_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ram_rtl_0|auto_generated|ram_block1a5\,
	datad => \inst3|ram~23_regout\,
	combout => \inst3|ram~29_combout\);

-- Location: LCFF_X36_Y16_N31
\inst3|data_d[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|o_dac_data_R[6]~6_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|data_d\(6));

-- Location: LCCOMB_X34_Y16_N8
\inst3|ram~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|ram~30_combout\ = (\inst3|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\ & \inst3|ram~23_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	datad => \inst3|ram~23_regout\,
	combout => \inst3|ram~30_combout\);

-- Location: LCCOMB_X34_Y16_N18
\inst3|ram~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|ram~31_combout\ = (\inst3|ram_rtl_0|auto_generated|ram_block1a7\ & \inst3|ram~23_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ram_rtl_0|auto_generated|ram_block1a7\,
	datad => \inst3|ram~23_regout\,
	combout => \inst3|ram~31_combout\);

-- Location: LCCOMB_X34_Y16_N4
\inst3|ram~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|ram~32_combout\ = (\inst3|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ & \inst3|ram~23_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	datad => \inst3|ram~23_regout\,
	combout => \inst3|ram~32_combout\);

-- Location: LCFF_X37_Y20_N17
\inst|shft_reg[45]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~12_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(45));

-- Location: LCFF_X40_Y20_N23
\inst|l_aud_reg[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|acc\(10),
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \inst10|data_stb~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|l_aud_reg\(14));

-- Location: LCCOMB_X38_Y20_N24
\inst|shft_reg~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~11_combout\ = (\inst10|lrck_prev~regout\ & ((\inst7|lrck_reg~regout\ & ((\inst|shft_reg\(45)))) # (!\inst7|lrck_reg~regout\ & (\inst|l_aud_reg\(14))))) # (!\inst10|lrck_prev~regout\ & (((\inst|shft_reg\(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|l_aud_reg\(14),
	datab => \inst10|lrck_prev~regout\,
	datac => \inst7|lrck_reg~regout\,
	datad => \inst|shft_reg\(45),
	combout => \inst|shft_reg~11_combout\);

-- Location: LCCOMB_X37_Y16_N8
\inst2|o_dac_data_R[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|o_dac_data_R[3]~3_combout\ = (\inst2|r_temp_R\(10) & (((\inst2|r_temp_R\(3) & \inst2|r_temp_R\(9))) # (!\inst2|r_temp_R\(11)))) # (!\inst2|r_temp_R\(10) & (!\inst2|r_temp_R\(11) & ((\inst2|r_temp_R\(3)) # (\inst2|r_temp_R\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_temp_R\(10),
	datab => \inst2|r_temp_R\(11),
	datac => \inst2|r_temp_R\(3),
	datad => \inst2|r_temp_R\(9),
	combout => \inst2|o_dac_data_R[3]~3_combout\);

-- Location: LCCOMB_X36_Y16_N30
\inst2|o_dac_data_R[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|o_dac_data_R[6]~6_combout\ = (\inst2|r_temp_R\(6) & (((\inst2|r_temp_R\(10) & \inst2|r_temp_R\(9))) # (!\inst2|r_temp_R\(11)))) # (!\inst2|r_temp_R\(6) & (!\inst2|r_temp_R\(11) & ((\inst2|r_temp_R\(10)) # (\inst2|r_temp_R\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_temp_R\(6),
	datab => \inst2|r_temp_R\(11),
	datac => \inst2|r_temp_R\(10),
	datad => \inst2|r_temp_R\(9),
	combout => \inst2|o_dac_data_R[6]~6_combout\);

-- Location: LCFF_X37_Y20_N11
\inst|shft_reg[44]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~13_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(44));

-- Location: LCCOMB_X37_Y20_N16
\inst|shft_reg~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~12_combout\ = (\inst|shft_reg\(44) & ((\inst7|lrck_reg~regout\) # (!\inst10|lrck_prev~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|lrck_prev~regout\,
	datac => \inst7|lrck_reg~regout\,
	datad => \inst|shft_reg\(44),
	combout => \inst|shft_reg~12_combout\);

-- Location: LCFF_X35_Y20_N17
\inst14|stb_ff\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst10|data_stb~regout\,
	aclr => \ALT_INV_KEY0~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|stb_ff~regout\);

-- Location: LCCOMB_X36_Y18_N8
\inst2|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = (((!\inst2|r_timer[6]~_Duplicate_2_regout\) # (!\inst2|r_timer[9]~_Duplicate_2_regout\)) # (!\inst2|r_timer[7]~_Duplicate_2_regout\)) # (!\inst2|r_timer[8]~_Duplicate_2_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_timer[8]~_Duplicate_2_regout\,
	datab => \inst2|r_timer[7]~_Duplicate_2_regout\,
	datac => \inst2|r_timer[9]~_Duplicate_2_regout\,
	datad => \inst2|r_timer[6]~_Duplicate_2_regout\,
	combout => \inst2|LessThan0~0_combout\);

-- Location: LCCOMB_X36_Y18_N6
\inst2|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~1_combout\ = (((!\inst2|r_timer[5]~_Duplicate_2_regout\) # (!\inst2|r_timer[2]~_Duplicate_2_regout\)) # (!\inst2|r_timer[3]~_Duplicate_2_regout\)) # (!\inst2|r_timer[4]~_Duplicate_2_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_timer[4]~_Duplicate_2_regout\,
	datab => \inst2|r_timer[3]~_Duplicate_2_regout\,
	datac => \inst2|r_timer[2]~_Duplicate_2_regout\,
	datad => \inst2|r_timer[5]~_Duplicate_2_regout\,
	combout => \inst2|LessThan0~1_combout\);

-- Location: LCCOMB_X36_Y18_N0
\inst2|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~2_combout\ = (\inst2|LessThan0~1_combout\) # (((\inst2|LessThan0~0_combout\) # (!\inst2|r_timer[0]~_Duplicate_2_regout\)) # (!\inst2|r_timer[1]~_Duplicate_2_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan0~1_combout\,
	datab => \inst2|r_timer[1]~_Duplicate_2_regout\,
	datac => \inst2|LessThan0~0_combout\,
	datad => \inst2|r_timer[0]~_Duplicate_2_regout\,
	combout => \inst2|LessThan0~2_combout\);

-- Location: LCFF_X37_Y19_N27
\inst10|sht_reg_left[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|sht_reg_left[23]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|sht_reg_left[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_left\(23));

-- Location: LCFF_X35_Y17_N7
\inst2|r_curr_R[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_next_R\(3),
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_curr_R\(3));

-- Location: LCFF_X36_Y17_N3
\inst2|r_curr_R[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_curr_R[0]~feeder_combout\,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_curr_R\(0));

-- Location: LCFF_X37_Y20_N13
\inst|shft_reg[43]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~14_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(43));

-- Location: LCCOMB_X37_Y20_N10
\inst|shft_reg~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~13_combout\ = (\inst|shft_reg\(43) & ((\inst7|lrck_reg~regout\) # (!\inst10|lrck_prev~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|lrck_prev~regout\,
	datac => \inst7|lrck_reg~regout\,
	datad => \inst|shft_reg\(43),
	combout => \inst|shft_reg~13_combout\);

-- Location: LCFF_X37_Y20_N27
\inst|shft_reg[42]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~15_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(42));

-- Location: LCCOMB_X37_Y20_N12
\inst|shft_reg~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~14_combout\ = (\inst|shft_reg\(42) & ((\inst7|lrck_reg~regout\) # (!\inst10|lrck_prev~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|lrck_prev~regout\,
	datac => \inst7|lrck_reg~regout\,
	datad => \inst|shft_reg\(42),
	combout => \inst|shft_reg~14_combout\);

-- Location: LCFF_X37_Y20_N1
\inst|shft_reg[41]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~16_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(41));

-- Location: LCCOMB_X37_Y20_N26
\inst|shft_reg~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~15_combout\ = (\inst|shft_reg\(41) & ((\inst7|lrck_reg~regout\) # (!\inst10|lrck_prev~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|lrck_prev~regout\,
	datac => \inst7|lrck_reg~regout\,
	datad => \inst|shft_reg\(41),
	combout => \inst|shft_reg~15_combout\);

-- Location: LCFF_X37_Y20_N7
\inst|shft_reg[40]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~17_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(40));

-- Location: LCCOMB_X37_Y20_N0
\inst|shft_reg~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~16_combout\ = (\inst|shft_reg\(40) & ((\inst7|lrck_reg~regout\) # (!\inst10|lrck_prev~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|lrck_prev~regout\,
	datac => \inst7|lrck_reg~regout\,
	datad => \inst|shft_reg\(40),
	combout => \inst|shft_reg~16_combout\);

-- Location: LCFF_X37_Y20_N29
\inst|shft_reg[39]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~18_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(39));

-- Location: LCCOMB_X37_Y20_N6
\inst|shft_reg~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~17_combout\ = (\inst|shft_reg\(39) & ((\inst7|lrck_reg~regout\) # (!\inst10|lrck_prev~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|lrck_prev~regout\,
	datac => \inst7|lrck_reg~regout\,
	datad => \inst|shft_reg\(39),
	combout => \inst|shft_reg~17_combout\);

-- Location: LCFF_X37_Y20_N15
\inst|shft_reg[38]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~19_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(38));

-- Location: LCCOMB_X37_Y20_N28
\inst|shft_reg~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~18_combout\ = (\inst|shft_reg\(38) & ((\inst7|lrck_reg~regout\) # (!\inst10|lrck_prev~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|lrck_reg~regout\,
	datab => \inst10|lrck_prev~regout\,
	datac => \inst|shft_reg\(38),
	combout => \inst|shft_reg~18_combout\);

-- Location: LCFF_X37_Y20_N9
\inst|shft_reg[37]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~20_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(37));

-- Location: LCCOMB_X37_Y20_N14
\inst|shft_reg~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~19_combout\ = (\inst|shft_reg\(37) & ((\inst7|lrck_reg~regout\) # (!\inst10|lrck_prev~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|lrck_reg~regout\,
	datab => \inst10|lrck_prev~regout\,
	datac => \inst|shft_reg\(37),
	combout => \inst|shft_reg~19_combout\);

-- Location: LCFF_X37_Y20_N23
\inst|shft_reg[36]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~21_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(36));

-- Location: LCCOMB_X37_Y20_N8
\inst|shft_reg~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~20_combout\ = (\inst|shft_reg\(36) & ((\inst7|lrck_reg~regout\) # (!\inst10|lrck_prev~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|lrck_prev~regout\,
	datac => \inst7|lrck_reg~regout\,
	datad => \inst|shft_reg\(36),
	combout => \inst|shft_reg~20_combout\);

-- Location: LCFF_X37_Y20_N5
\inst|shft_reg[35]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~22_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(35));

-- Location: LCCOMB_X37_Y20_N22
\inst|shft_reg~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~21_combout\ = (\inst|shft_reg\(35) & ((\inst7|lrck_reg~regout\) # (!\inst10|lrck_prev~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|lrck_reg~regout\,
	datab => \inst10|lrck_prev~regout\,
	datac => \inst|shft_reg\(35),
	combout => \inst|shft_reg~21_combout\);

-- Location: LCFF_X37_Y20_N31
\inst|shft_reg[34]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~23_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(34));

-- Location: LCCOMB_X37_Y20_N4
\inst|shft_reg~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~22_combout\ = (\inst|shft_reg\(34) & ((\inst7|lrck_reg~regout\) # (!\inst10|lrck_prev~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|lrck_prev~regout\,
	datac => \inst7|lrck_reg~regout\,
	datad => \inst|shft_reg\(34),
	combout => \inst|shft_reg~22_combout\);

-- Location: LCFF_X37_Y20_N21
\inst|shft_reg[33]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~24_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(33));

-- Location: LCCOMB_X37_Y20_N30
\inst|shft_reg~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~23_combout\ = (\inst|shft_reg\(33) & ((\inst7|lrck_reg~regout\) # (!\inst10|lrck_prev~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shft_reg\(33),
	datab => \inst10|lrck_prev~regout\,
	datac => \inst7|lrck_reg~regout\,
	combout => \inst|shft_reg~23_combout\);

-- Location: LCFF_X37_Y20_N19
\inst|shft_reg[32]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~25_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(32));

-- Location: LCCOMB_X37_Y20_N20
\inst|shft_reg~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~24_combout\ = (\inst|shft_reg\(32) & ((\inst7|lrck_reg~regout\) # (!\inst10|lrck_prev~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|lrck_prev~regout\,
	datac => \inst7|lrck_reg~regout\,
	datad => \inst|shft_reg\(32),
	combout => \inst|shft_reg~24_combout\);

-- Location: LCFF_X37_Y20_N25
\inst|shft_reg[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~26_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(31));

-- Location: LCCOMB_X37_Y20_N18
\inst|shft_reg~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~25_combout\ = (\inst|shft_reg\(31) & ((\inst7|lrck_reg~regout\) # (!\inst10|lrck_prev~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shft_reg\(31),
	datab => \inst10|lrck_prev~regout\,
	datac => \inst7|lrck_reg~regout\,
	combout => \inst|shft_reg~25_combout\);

-- Location: LCFF_X37_Y20_N3
\inst|shft_reg[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~27_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(30));

-- Location: LCCOMB_X37_Y20_N24
\inst|shft_reg~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~26_combout\ = (\inst|shft_reg\(30) & ((\inst7|lrck_reg~regout\) # (!\inst10|lrck_prev~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|lrck_prev~regout\,
	datac => \inst7|lrck_reg~regout\,
	datad => \inst|shft_reg\(30),
	combout => \inst|shft_reg~26_combout\);

-- Location: LCFF_X36_Y21_N17
\inst|shft_reg[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~28_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(29));

-- Location: LCCOMB_X37_Y20_N2
\inst|shft_reg~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~27_combout\ = (\inst|shft_reg\(29) & ((\inst7|lrck_reg~regout\) # (!\inst10|lrck_prev~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|lrck_prev~regout\,
	datac => \inst7|lrck_reg~regout\,
	datad => \inst|shft_reg\(29),
	combout => \inst|shft_reg~27_combout\);

-- Location: LCFF_X36_Y21_N19
\inst|shft_reg[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~29_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(28));

-- Location: LCCOMB_X36_Y21_N16
\inst|shft_reg~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~28_combout\ = (\inst|shft_reg\(28) & ((\inst7|lrck_reg~regout\) # (!\inst10|lrck_prev~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|lrck_reg~regout\,
	datab => \inst10|lrck_prev~regout\,
	datad => \inst|shft_reg\(28),
	combout => \inst|shft_reg~28_combout\);

-- Location: LCFF_X36_Y21_N25
\inst|shft_reg[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~30_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(27));

-- Location: LCCOMB_X36_Y21_N18
\inst|shft_reg~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~29_combout\ = (\inst|shft_reg\(27) & ((\inst7|lrck_reg~regout\) # (!\inst10|lrck_prev~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|lrck_reg~regout\,
	datac => \inst|shft_reg\(27),
	datad => \inst10|lrck_prev~regout\,
	combout => \inst|shft_reg~29_combout\);

-- Location: LCFF_X36_Y21_N3
\inst|shft_reg[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~31_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(26));

-- Location: LCCOMB_X36_Y21_N24
\inst|shft_reg~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~30_combout\ = (\inst|shft_reg\(26) & ((\inst7|lrck_reg~regout\) # (!\inst10|lrck_prev~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|lrck_reg~regout\,
	datab => \inst10|lrck_prev~regout\,
	datad => \inst|shft_reg\(26),
	combout => \inst|shft_reg~30_combout\);

-- Location: LCFF_X36_Y21_N21
\inst|shft_reg[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~32_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(25));

-- Location: LCCOMB_X36_Y21_N2
\inst|shft_reg~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~31_combout\ = (\inst|shft_reg\(25) & ((\inst7|lrck_reg~regout\) # (!\inst10|lrck_prev~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|lrck_reg~regout\,
	datac => \inst|shft_reg\(25),
	datad => \inst10|lrck_prev~regout\,
	combout => \inst|shft_reg~31_combout\);

-- Location: LCFF_X36_Y21_N7
\inst|shft_reg[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~33_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(24));

-- Location: LCCOMB_X36_Y21_N20
\inst|shft_reg~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~32_combout\ = (\inst|shft_reg\(24) & ((\inst7|lrck_reg~regout\) # (!\inst10|lrck_prev~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|lrck_reg~regout\,
	datab => \inst10|lrck_prev~regout\,
	datad => \inst|shft_reg\(24),
	combout => \inst|shft_reg~32_combout\);

-- Location: LCFF_X36_Y21_N29
\inst|shft_reg[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~34_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(23));

-- Location: LCCOMB_X36_Y21_N6
\inst|shft_reg~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~33_combout\ = (\inst|shft_reg\(23) & ((\inst7|lrck_reg~regout\) # (!\inst10|lrck_prev~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|lrck_reg~regout\,
	datab => \inst10|lrck_prev~regout\,
	datad => \inst|shft_reg\(23),
	combout => \inst|shft_reg~33_combout\);

-- Location: LCFF_X36_Y21_N31
\inst|shft_reg[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~35_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(22));

-- Location: LCFF_X37_Y21_N31
\inst|r_aud_reg[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|r_aud_reg[23]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|data_stb~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|r_aud_reg\(23));

-- Location: LCCOMB_X36_Y21_N28
\inst|shft_reg~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~34_combout\ = (\inst7|lrck_reg~regout\ & (\inst|shft_reg\(22))) # (!\inst7|lrck_reg~regout\ & ((\inst10|lrck_prev~regout\ & ((\inst|r_aud_reg\(23)))) # (!\inst10|lrck_prev~regout\ & (\inst|shft_reg\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|lrck_reg~regout\,
	datab => \inst|shft_reg\(22),
	datac => \inst|r_aud_reg\(23),
	datad => \inst10|lrck_prev~regout\,
	combout => \inst|shft_reg~34_combout\);

-- Location: LCFF_X36_Y21_N5
\inst|shft_reg[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~36_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(21));

-- Location: LCFF_X37_Y21_N25
\inst|r_aud_reg[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst16|acc\(18),
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \inst10|data_stb~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|r_aud_reg\(22));

-- Location: LCCOMB_X36_Y21_N30
\inst|shft_reg~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~35_combout\ = (\inst7|lrck_reg~regout\ & (((\inst|shft_reg\(21))))) # (!\inst7|lrck_reg~regout\ & ((\inst10|lrck_prev~regout\ & ((\inst|r_aud_reg\(22)))) # (!\inst10|lrck_prev~regout\ & (\inst|shft_reg\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|lrck_reg~regout\,
	datab => \inst10|lrck_prev~regout\,
	datac => \inst|shft_reg\(21),
	datad => \inst|r_aud_reg\(22),
	combout => \inst|shft_reg~35_combout\);

-- Location: LCFF_X36_Y21_N15
\inst|shft_reg[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~37_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(20));

-- Location: LCFF_X37_Y21_N23
\inst|r_aud_reg[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst16|acc\(17),
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \inst10|data_stb~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|r_aud_reg\(21));

-- Location: LCCOMB_X36_Y21_N4
\inst|shft_reg~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~36_combout\ = (\inst7|lrck_reg~regout\ & (((\inst|shft_reg\(20))))) # (!\inst7|lrck_reg~regout\ & ((\inst10|lrck_prev~regout\ & ((\inst|r_aud_reg\(21)))) # (!\inst10|lrck_prev~regout\ & (\inst|shft_reg\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|lrck_reg~regout\,
	datab => \inst10|lrck_prev~regout\,
	datac => \inst|shft_reg\(20),
	datad => \inst|r_aud_reg\(21),
	combout => \inst|shft_reg~36_combout\);

-- Location: LCFF_X40_Y19_N5
\inst13|mixer_out_R[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst13|mixer_out_R~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|mixer_out_R\(9));

-- Location: LCFF_X40_Y19_N11
\inst13|mixer_out_R[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst13|mixer_out_R~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|mixer_out_R\(8));

-- Location: LCFF_X40_Y19_N25
\inst13|mixer_out_R[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst13|mixer_out_R~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|mixer_out_R\(7));

-- Location: LCFF_X40_Y19_N19
\inst13|mixer_out_R[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst13|mixer_out_R~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|mixer_out_R\(6));

-- Location: LCFF_X40_Y19_N21
\inst13|mixer_out_R[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst13|mixer_out_R~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|mixer_out_R\(5));

-- Location: LCFF_X40_Y19_N27
\inst13|mixer_out_R[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst13|mixer_out_R~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|mixer_out_R\(4));

-- Location: LCFF_X40_Y19_N13
\inst13|mixer_out_R[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst13|mixer_out_R~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|mixer_out_R\(3));

-- Location: LCFF_X40_Y19_N23
\inst13|mixer_out_R[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst13|mixer_out_R~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|mixer_out_R\(2));

-- Location: LCFF_X40_Y19_N1
\inst13|mixer_out_R[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst13|mixer_out_R~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|mixer_out_R\(1));

-- Location: LCFF_X40_Y19_N3
\inst13|mixer_out_R[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst13|mixer_out_R~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|mixer_out_R\(0));

-- Location: LCFF_X36_Y21_N9
\inst|shft_reg[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~38_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(19));

-- Location: LCFF_X38_Y21_N27
\inst|r_aud_reg[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|r_aud_reg[20]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|data_stb~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|r_aud_reg\(20));

-- Location: LCCOMB_X36_Y21_N14
\inst|shft_reg~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~37_combout\ = (\inst7|lrck_reg~regout\ & (((\inst|shft_reg\(19))))) # (!\inst7|lrck_reg~regout\ & ((\inst10|lrck_prev~regout\ & ((\inst|r_aud_reg\(20)))) # (!\inst10|lrck_prev~regout\ & (\inst|shft_reg\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|lrck_reg~regout\,
	datab => \inst10|lrck_prev~regout\,
	datac => \inst|shft_reg\(19),
	datad => \inst|r_aud_reg\(20),
	combout => \inst|shft_reg~37_combout\);

-- Location: LCCOMB_X40_Y19_N4
\inst13|mixer_out_R~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|mixer_out_R~0_combout\ = (\inst13|Mult1|auto_generated|mac_out2~DATAOUT19\ & ((\inst13|Mult1|auto_generated|mac_out2~DATAOUT17\) # (!\inst13|Mult1|auto_generated|mac_out2~DATAOUT18\))) # (!\inst13|Mult1|auto_generated|mac_out2~DATAOUT19\ & 
-- (!\inst13|Mult1|auto_generated|mac_out2~DATAOUT18\ & \inst13|Mult1|auto_generated|mac_out2~DATAOUT17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mult1|auto_generated|mac_out2~DATAOUT19\,
	datac => \inst13|Mult1|auto_generated|mac_out2~DATAOUT18\,
	datad => \inst13|Mult1|auto_generated|mac_out2~DATAOUT17\,
	combout => \inst13|mixer_out_R~0_combout\);

-- Location: LCCOMB_X40_Y19_N10
\inst13|mixer_out_R~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|mixer_out_R~1_combout\ = (\inst13|Mult1|auto_generated|mac_out2~DATAOUT19\ & (\inst13|Mult1|auto_generated|mac_out2~DATAOUT18\ & \inst13|Mult1|auto_generated|mac_out2~DATAOUT16\)) # (!\inst13|Mult1|auto_generated|mac_out2~DATAOUT19\ & 
-- ((\inst13|Mult1|auto_generated|mac_out2~DATAOUT18\) # (\inst13|Mult1|auto_generated|mac_out2~DATAOUT16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mult1|auto_generated|mac_out2~DATAOUT19\,
	datac => \inst13|Mult1|auto_generated|mac_out2~DATAOUT18\,
	datad => \inst13|Mult1|auto_generated|mac_out2~DATAOUT16\,
	combout => \inst13|mixer_out_R~1_combout\);

-- Location: LCCOMB_X40_Y19_N24
\inst13|mixer_out_R~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|mixer_out_R~2_combout\ = (\inst13|Mult1|auto_generated|mac_out2~DATAOUT19\ & (\inst13|Mult1|auto_generated|mac_out2~DATAOUT18\ & \inst13|Mult1|auto_generated|mac_out2~DATAOUT15\)) # (!\inst13|Mult1|auto_generated|mac_out2~DATAOUT19\ & 
-- ((\inst13|Mult1|auto_generated|mac_out2~DATAOUT18\) # (\inst13|Mult1|auto_generated|mac_out2~DATAOUT15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mult1|auto_generated|mac_out2~DATAOUT19\,
	datac => \inst13|Mult1|auto_generated|mac_out2~DATAOUT18\,
	datad => \inst13|Mult1|auto_generated|mac_out2~DATAOUT15\,
	combout => \inst13|mixer_out_R~2_combout\);

-- Location: LCCOMB_X40_Y19_N18
\inst13|mixer_out_R~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|mixer_out_R~3_combout\ = (\inst13|Mult1|auto_generated|mac_out2~DATAOUT14\ & ((\inst13|Mult1|auto_generated|mac_out2~DATAOUT18\) # (!\inst13|Mult1|auto_generated|mac_out2~DATAOUT19\))) # (!\inst13|Mult1|auto_generated|mac_out2~DATAOUT14\ & 
-- (\inst13|Mult1|auto_generated|mac_out2~DATAOUT18\ & !\inst13|Mult1|auto_generated|mac_out2~DATAOUT19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mult1|auto_generated|mac_out2~DATAOUT14\,
	datac => \inst13|Mult1|auto_generated|mac_out2~DATAOUT18\,
	datad => \inst13|Mult1|auto_generated|mac_out2~DATAOUT19\,
	combout => \inst13|mixer_out_R~3_combout\);

-- Location: LCCOMB_X40_Y19_N20
\inst13|mixer_out_R~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|mixer_out_R~4_combout\ = (\inst13|Mult1|auto_generated|mac_out2~DATAOUT19\ & (\inst13|Mult1|auto_generated|mac_out2~DATAOUT18\ & \inst13|Mult1|auto_generated|mac_out2~DATAOUT13\)) # (!\inst13|Mult1|auto_generated|mac_out2~DATAOUT19\ & 
-- ((\inst13|Mult1|auto_generated|mac_out2~DATAOUT18\) # (\inst13|Mult1|auto_generated|mac_out2~DATAOUT13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mult1|auto_generated|mac_out2~DATAOUT19\,
	datac => \inst13|Mult1|auto_generated|mac_out2~DATAOUT18\,
	datad => \inst13|Mult1|auto_generated|mac_out2~DATAOUT13\,
	combout => \inst13|mixer_out_R~4_combout\);

-- Location: LCCOMB_X40_Y19_N26
\inst13|mixer_out_R~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|mixer_out_R~5_combout\ = (\inst13|Mult1|auto_generated|mac_out2~DATAOUT19\ & (\inst13|Mult1|auto_generated|mac_out2~DATAOUT12\ & \inst13|Mult1|auto_generated|mac_out2~DATAOUT18\)) # (!\inst13|Mult1|auto_generated|mac_out2~DATAOUT19\ & 
-- ((\inst13|Mult1|auto_generated|mac_out2~DATAOUT12\) # (\inst13|Mult1|auto_generated|mac_out2~DATAOUT18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mult1|auto_generated|mac_out2~DATAOUT19\,
	datab => \inst13|Mult1|auto_generated|mac_out2~DATAOUT12\,
	datac => \inst13|Mult1|auto_generated|mac_out2~DATAOUT18\,
	combout => \inst13|mixer_out_R~5_combout\);

-- Location: LCCOMB_X40_Y19_N12
\inst13|mixer_out_R~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|mixer_out_R~6_combout\ = (\inst13|Mult1|auto_generated|mac_out2~DATAOUT19\ & (\inst13|Mult1|auto_generated|mac_out2~DATAOUT18\ & \inst13|Mult1|auto_generated|mac_out2~DATAOUT11\)) # (!\inst13|Mult1|auto_generated|mac_out2~DATAOUT19\ & 
-- ((\inst13|Mult1|auto_generated|mac_out2~DATAOUT18\) # (\inst13|Mult1|auto_generated|mac_out2~DATAOUT11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mult1|auto_generated|mac_out2~DATAOUT19\,
	datac => \inst13|Mult1|auto_generated|mac_out2~DATAOUT18\,
	datad => \inst13|Mult1|auto_generated|mac_out2~DATAOUT11\,
	combout => \inst13|mixer_out_R~6_combout\);

-- Location: LCCOMB_X40_Y19_N22
\inst13|mixer_out_R~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|mixer_out_R~7_combout\ = (\inst13|Mult1|auto_generated|mac_out2~DATAOUT19\ & (\inst13|Mult1|auto_generated|mac_out2~DATAOUT18\ & \inst13|Mult1|auto_generated|mac_out2~DATAOUT10\)) # (!\inst13|Mult1|auto_generated|mac_out2~DATAOUT19\ & 
-- ((\inst13|Mult1|auto_generated|mac_out2~DATAOUT18\) # (\inst13|Mult1|auto_generated|mac_out2~DATAOUT10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mult1|auto_generated|mac_out2~DATAOUT19\,
	datac => \inst13|Mult1|auto_generated|mac_out2~DATAOUT18\,
	datad => \inst13|Mult1|auto_generated|mac_out2~DATAOUT10\,
	combout => \inst13|mixer_out_R~7_combout\);

-- Location: LCCOMB_X40_Y19_N0
\inst13|mixer_out_R~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|mixer_out_R~8_combout\ = (\inst13|Mult1|auto_generated|mac_out2~DATAOUT19\ & (\inst13|Mult1|auto_generated|mac_out2~DATAOUT18\ & \inst13|Mult1|auto_generated|mac_out2~DATAOUT9\)) # (!\inst13|Mult1|auto_generated|mac_out2~DATAOUT19\ & 
-- ((\inst13|Mult1|auto_generated|mac_out2~DATAOUT18\) # (\inst13|Mult1|auto_generated|mac_out2~DATAOUT9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mult1|auto_generated|mac_out2~DATAOUT19\,
	datac => \inst13|Mult1|auto_generated|mac_out2~DATAOUT18\,
	datad => \inst13|Mult1|auto_generated|mac_out2~DATAOUT9\,
	combout => \inst13|mixer_out_R~8_combout\);

-- Location: LCCOMB_X40_Y19_N2
\inst13|mixer_out_R~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|mixer_out_R~9_combout\ = (\inst13|Mult1|auto_generated|mac_out2~DATAOUT19\ & (\inst13|Mult1|auto_generated|mac_out2~DATAOUT8\ & \inst13|Mult1|auto_generated|mac_out2~DATAOUT18\)) # (!\inst13|Mult1|auto_generated|mac_out2~DATAOUT19\ & 
-- ((\inst13|Mult1|auto_generated|mac_out2~DATAOUT8\) # (\inst13|Mult1|auto_generated|mac_out2~DATAOUT18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mult1|auto_generated|mac_out2~DATAOUT19\,
	datab => \inst13|Mult1|auto_generated|mac_out2~DATAOUT8\,
	datac => \inst13|Mult1|auto_generated|mac_out2~DATAOUT18\,
	combout => \inst13|mixer_out_R~9_combout\);

-- Location: LCFF_X36_Y21_N23
\inst|shft_reg[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~39_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(18));

-- Location: LCFF_X38_Y21_N25
\inst|r_aud_reg[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|r_aud_reg[19]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|data_stb~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|r_aud_reg\(19));

-- Location: LCCOMB_X36_Y21_N8
\inst|shft_reg~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~38_combout\ = (\inst7|lrck_reg~regout\ & (((\inst|shft_reg\(18))))) # (!\inst7|lrck_reg~regout\ & ((\inst10|lrck_prev~regout\ & (\inst|r_aud_reg\(19))) # (!\inst10|lrck_prev~regout\ & ((\inst|shft_reg\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|lrck_reg~regout\,
	datab => \inst10|lrck_prev~regout\,
	datac => \inst|r_aud_reg\(19),
	datad => \inst|shft_reg\(18),
	combout => \inst|shft_reg~38_combout\);

-- Location: LCFF_X36_Y21_N1
\inst|shft_reg[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~40_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(17));

-- Location: LCFF_X38_Y21_N31
\inst|r_aud_reg[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|r_aud_reg[18]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|data_stb~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|r_aud_reg\(18));

-- Location: LCCOMB_X36_Y21_N22
\inst|shft_reg~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~39_combout\ = (\inst7|lrck_reg~regout\ & (((\inst|shft_reg\(17))))) # (!\inst7|lrck_reg~regout\ & ((\inst10|lrck_prev~regout\ & (\inst|r_aud_reg\(18))) # (!\inst10|lrck_prev~regout\ & ((\inst|shft_reg\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|lrck_reg~regout\,
	datab => \inst10|lrck_prev~regout\,
	datac => \inst|r_aud_reg\(18),
	datad => \inst|shft_reg\(17),
	combout => \inst|shft_reg~39_combout\);

-- Location: LCFF_X36_Y21_N27
\inst|shft_reg[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~41_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(16));

-- Location: LCFF_X37_Y21_N29
\inst|r_aud_reg[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|r_aud_reg[17]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|data_stb~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|r_aud_reg\(17));

-- Location: LCCOMB_X36_Y21_N0
\inst|shft_reg~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~40_combout\ = (\inst7|lrck_reg~regout\ & (\inst|shft_reg\(16))) # (!\inst7|lrck_reg~regout\ & ((\inst10|lrck_prev~regout\ & ((\inst|r_aud_reg\(17)))) # (!\inst10|lrck_prev~regout\ & (\inst|shft_reg\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|lrck_reg~regout\,
	datab => \inst|shft_reg\(16),
	datac => \inst|r_aud_reg\(17),
	datad => \inst10|lrck_prev~regout\,
	combout => \inst|shft_reg~40_combout\);

-- Location: LCFF_X36_Y21_N13
\inst|shft_reg[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~42_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(15));

-- Location: LCFF_X37_Y21_N27
\inst|r_aud_reg[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst16|acc\(12),
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \inst10|data_stb~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|r_aud_reg\(16));

-- Location: LCCOMB_X36_Y21_N26
\inst|shft_reg~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~41_combout\ = (\inst7|lrck_reg~regout\ & (((\inst|shft_reg\(15))))) # (!\inst7|lrck_reg~regout\ & ((\inst10|lrck_prev~regout\ & (\inst|r_aud_reg\(16))) # (!\inst10|lrck_prev~regout\ & ((\inst|shft_reg\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|lrck_reg~regout\,
	datab => \inst10|lrck_prev~regout\,
	datac => \inst|r_aud_reg\(16),
	datad => \inst|shft_reg\(15),
	combout => \inst|shft_reg~41_combout\);

-- Location: LCFF_X35_Y21_N27
\inst|shft_reg[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~44_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(14));

-- Location: LCFF_X38_Y21_N29
\inst|r_aud_reg[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|r_aud_reg[15]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|data_stb~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|r_aud_reg\(15));

-- Location: LCCOMB_X36_Y21_N12
\inst|shft_reg~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~42_combout\ = (\inst7|lrck_reg~regout\ & (\inst|shft_reg\(14))) # (!\inst7|lrck_reg~regout\ & ((\inst10|lrck_prev~regout\ & ((\inst|r_aud_reg\(15)))) # (!\inst10|lrck_prev~regout\ & (\inst|shft_reg\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|lrck_reg~regout\,
	datab => \inst|shft_reg\(14),
	datac => \inst|r_aud_reg\(15),
	datad => \inst10|lrck_prev~regout\,
	combout => \inst|shft_reg~42_combout\);

-- Location: LCFF_X38_Y21_N23
\inst|r_aud_reg[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst16|acc\(10),
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \inst10|data_stb~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|r_aud_reg\(14));

-- Location: LCCOMB_X35_Y21_N28
\inst|shft_reg~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~43_combout\ = (\inst|shft_reg\(14) & ((\inst7|bclk_reg~regout\) # (!\inst10|bclk_prev~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|bclk_prev~regout\,
	datac => \inst7|bclk_reg~regout\,
	datad => \inst|shft_reg\(14),
	combout => \inst|shft_reg~43_combout\);

-- Location: LCCOMB_X35_Y21_N26
\inst|shft_reg~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~44_combout\ = (\inst10|lrck_prev~regout\ & ((\inst7|lrck_reg~regout\ & (\inst|shft_reg~43_combout\)) # (!\inst7|lrck_reg~regout\ & ((\inst|r_aud_reg\(14)))))) # (!\inst10|lrck_prev~regout\ & (\inst|shft_reg~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|lrck_prev~regout\,
	datab => \inst|shft_reg~43_combout\,
	datac => \inst7|lrck_reg~regout\,
	datad => \inst|r_aud_reg\(14),
	combout => \inst|shft_reg~44_combout\);

-- Location: LCCOMB_X38_Y16_N0
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: CLKCTRL_G8
\inst7|lrck_reg~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7|lrck_reg~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7|lrck_reg~clkctrl_outclk\);

-- Location: LCCOMB_X41_Y20_N26
\inst|l_aud_reg[19]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|l_aud_reg[19]~feeder_combout\ = \inst15|acc\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst15|acc\(15),
	combout => \inst|l_aud_reg[19]~feeder_combout\);

-- Location: LCCOMB_X41_Y20_N24
\inst|l_aud_reg[17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|l_aud_reg[17]~feeder_combout\ = \inst15|acc\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst15|acc\(13),
	combout => \inst|l_aud_reg[17]~feeder_combout\);

-- Location: LCCOMB_X37_Y21_N30
\inst|r_aud_reg[23]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|r_aud_reg[23]~feeder_combout\ = \inst16|acc\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst16|acc\(19),
	combout => \inst|r_aud_reg[23]~feeder_combout\);

-- Location: LCCOMB_X38_Y21_N26
\inst|r_aud_reg[20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|r_aud_reg[20]~feeder_combout\ = \inst16|acc\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst16|acc\(16),
	combout => \inst|r_aud_reg[20]~feeder_combout\);

-- Location: LCCOMB_X38_Y21_N24
\inst|r_aud_reg[19]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|r_aud_reg[19]~feeder_combout\ = \inst16|acc\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst16|acc\(15),
	combout => \inst|r_aud_reg[19]~feeder_combout\);

-- Location: LCCOMB_X38_Y21_N30
\inst|r_aud_reg[18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|r_aud_reg[18]~feeder_combout\ = \inst16|acc\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst16|acc\(14),
	combout => \inst|r_aud_reg[18]~feeder_combout\);

-- Location: LCCOMB_X37_Y21_N28
\inst|r_aud_reg[17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|r_aud_reg[17]~feeder_combout\ = \inst16|acc\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst16|acc\(13),
	combout => \inst|r_aud_reg[17]~feeder_combout\);

-- Location: LCCOMB_X38_Y21_N28
\inst|r_aud_reg[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|r_aud_reg[15]~feeder_combout\ = \inst16|acc\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst16|acc\(11),
	combout => \inst|r_aud_reg[15]~feeder_combout\);

-- Location: LCCOMB_X37_Y19_N26
\inst10|sht_reg_left[23]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_left[23]~feeder_combout\ = \inst10|sht_reg_left\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|sht_reg_left\(22),
	combout => \inst10|sht_reg_left[23]~feeder_combout\);

-- Location: LCCOMB_X36_Y17_N2
\inst2|r_curr_R[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_curr_R[0]~feeder_combout\ = \inst2|r_next_R\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|r_next_R\(0),
	combout => \inst2|r_curr_R[0]~feeder_combout\);

-- Location: LCCOMB_X37_Y18_N4
\inst2|r_timer[4]~_Duplicate_2feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_timer[4]~_Duplicate_2feeder_combout\ = \inst2|r_timer[4]~SCLR_LUT_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|r_timer[4]~SCLR_LUT_combout\,
	combout => \inst2|r_timer[4]~_Duplicate_2feeder_combout\);

-- Location: LCCOMB_X37_Y18_N26
\inst2|r_timer[8]~_Duplicate_2feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_timer[8]~_Duplicate_2feeder_combout\ = \inst2|r_timer[8]~SCLR_LUT_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|r_timer[8]~SCLR_LUT_combout\,
	combout => \inst2|r_timer[8]~_Duplicate_2feeder_combout\);

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\I2C_SCL~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|ALT_INV_scl_o~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => I2C_SCL,
	combout => \I2C_SCL~0\);

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\I2C_SDA~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|ALT_INV_sda_o~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => I2C_SDA,
	combout => \I2C_SDA~0\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLK_50,
	combout => \CLK_50~combout\);

-- Location: CLKCTRL_G2
\CLK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_50~clkctrl_outclk\);

-- Location: LCCOMB_X18_Y29_N26
\inst6|busy_flag~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|busy_flag~0_combout\ = (\inst6|p0~regout\ & ((\inst6|pres_state.idle~regout\ & (\inst6|busy_flag~regout\)) # (!\inst6|pres_state.idle~regout\ & ((!\inst9|init_reg~regout\))))) # (!\inst6|p0~regout\ & (((\inst6|busy_flag~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p0~regout\,
	datab => \inst6|pres_state.idle~regout\,
	datac => \inst6|busy_flag~regout\,
	datad => \inst9|init_reg~regout\,
	combout => \inst6|busy_flag~0_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY0,
	combout => \KEY0~combout\);

-- Location: LCFF_X18_Y29_N27
\inst6|busy_flag\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst6|busy_flag~0_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|busy_flag~regout\);

-- Location: LCCOMB_X18_Y29_N20
\inst9|rom_addr_cnt[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|rom_addr_cnt[0]~4_combout\ = \inst9|rom_addr_cnt\(0) $ (((!\inst6|busy_flag~regout\ & \inst9|init_reg~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|busy_flag~regout\,
	datac => \inst9|rom_addr_cnt\(0),
	datad => \inst9|init_reg~regout\,
	combout => \inst9|rom_addr_cnt[0]~4_combout\);

-- Location: LCFF_X18_Y29_N21
\inst9|rom_addr_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst9|rom_addr_cnt[0]~4_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|rom_addr_cnt\(0));

-- Location: LCCOMB_X18_Y29_N22
\inst9|rom_addr_cnt[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|rom_addr_cnt[2]~0_combout\ = (\inst9|rom_addr_cnt\(1) & (!\inst6|busy_flag~regout\ & (\inst9|rom_addr_cnt\(0) & \inst9|init_reg~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|rom_addr_cnt\(1),
	datab => \inst6|busy_flag~regout\,
	datac => \inst9|rom_addr_cnt\(0),
	datad => \inst9|init_reg~regout\,
	combout => \inst9|rom_addr_cnt[2]~0_combout\);

-- Location: LCCOMB_X18_Y29_N8
\inst9|rom_addr_cnt[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|rom_addr_cnt[2]~2_combout\ = \inst9|rom_addr_cnt\(2) $ (\inst9|rom_addr_cnt[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|rom_addr_cnt\(2),
	datad => \inst9|rom_addr_cnt[2]~0_combout\,
	combout => \inst9|rom_addr_cnt[2]~2_combout\);

-- Location: LCFF_X18_Y29_N9
\inst9|rom_addr_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst9|rom_addr_cnt[2]~2_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|rom_addr_cnt\(2));

-- Location: LCCOMB_X18_Y29_N28
\inst9|rom_addr_cnt[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|rom_addr_cnt[3]~1_combout\ = \inst9|rom_addr_cnt\(3) $ (((\inst9|rom_addr_cnt\(2) & \inst9|rom_addr_cnt[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|rom_addr_cnt\(2),
	datac => \inst9|rom_addr_cnt\(3),
	datad => \inst9|rom_addr_cnt[2]~0_combout\,
	combout => \inst9|rom_addr_cnt[3]~1_combout\);

-- Location: LCFF_X18_Y29_N29
\inst9|rom_addr_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst9|rom_addr_cnt[3]~1_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|rom_addr_cnt\(3));

-- Location: LCCOMB_X18_Y29_N30
\inst9|init_reg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|init_reg~0_combout\ = (\inst6|busy_flag~regout\ & ((\inst9|init_reg~regout\) # (!\inst9|rom_addr_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|rom_addr_cnt\(3),
	datac => \inst9|init_reg~regout\,
	datad => \inst6|busy_flag~regout\,
	combout => \inst9|init_reg~0_combout\);

-- Location: LCFF_X18_Y29_N31
\inst9|init_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst9|init_reg~0_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|init_reg~regout\);

-- Location: LCCOMB_X19_Y29_N16
\inst6|process_5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|process_5~1_combout\ = (\inst9|init_reg~regout\ & !\inst6|pres_state.idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|init_reg~regout\,
	datad => \inst6|pres_state.idle~regout\,
	combout => \inst6|process_5~1_combout\);

-- Location: LCCOMB_X17_Y29_N0
\inst6|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add0~0_combout\ = \inst6|clk_cnt\(0) $ (VCC)
-- \inst6|Add0~1\ = CARRY(\inst6|clk_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|clk_cnt\(0),
	datad => VCC,
	combout => \inst6|Add0~0_combout\,
	cout => \inst6|Add0~1\);

-- Location: LCCOMB_X18_Y29_N10
\inst6|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|process_0~0_combout\ = (!\inst6|scl_o~regout\ & !\I2C_SCL~0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|scl_o~regout\,
	datab => \I2C_SCL~0\,
	combout => \inst6|process_0~0_combout\);

-- Location: LCCOMB_X17_Y29_N22
\inst6|clk_cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|clk_cnt~0_combout\ = (\inst6|Add0~10_combout\ & !\inst6|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~10_combout\,
	datad => \inst6|Equal0~1_combout\,
	combout => \inst6|clk_cnt~0_combout\);

-- Location: LCFF_X17_Y29_N23
\inst6|clk_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst6|clk_cnt~0_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst6|ALT_INV_clk_stretch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|clk_cnt\(5));

-- Location: LCCOMB_X17_Y29_N26
\inst6|clk_cnt~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|clk_cnt~2_combout\ = (\inst6|Add0~6_combout\ & !\inst6|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~6_combout\,
	datad => \inst6|Equal0~1_combout\,
	combout => \inst6|clk_cnt~2_combout\);

-- Location: LCFF_X17_Y29_N27
\inst6|clk_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst6|clk_cnt~2_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst6|ALT_INV_clk_stretch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|clk_cnt\(3));

-- Location: LCCOMB_X17_Y29_N2
\inst6|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add0~2_combout\ = (\inst6|clk_cnt\(1) & (!\inst6|Add0~1\)) # (!\inst6|clk_cnt\(1) & ((\inst6|Add0~1\) # (GND)))
-- \inst6|Add0~3\ = CARRY((!\inst6|Add0~1\) # (!\inst6|clk_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|clk_cnt\(1),
	datad => VCC,
	cin => \inst6|Add0~1\,
	combout => \inst6|Add0~2_combout\,
	cout => \inst6|Add0~3\);

-- Location: LCCOMB_X17_Y29_N4
\inst6|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add0~4_combout\ = (\inst6|clk_cnt\(2) & (\inst6|Add0~3\ $ (GND))) # (!\inst6|clk_cnt\(2) & (!\inst6|Add0~3\ & VCC))
-- \inst6|Add0~5\ = CARRY((\inst6|clk_cnt\(2) & !\inst6|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|clk_cnt\(2),
	datad => VCC,
	cin => \inst6|Add0~3\,
	combout => \inst6|Add0~4_combout\,
	cout => \inst6|Add0~5\);

-- Location: LCCOMB_X17_Y29_N18
\inst6|clk_cnt~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|clk_cnt~4_combout\ = (\inst6|Add0~4_combout\ & !\inst6|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add0~4_combout\,
	datad => \inst6|Equal0~1_combout\,
	combout => \inst6|clk_cnt~4_combout\);

-- Location: LCFF_X17_Y29_N19
\inst6|clk_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst6|clk_cnt~4_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst6|ALT_INV_clk_stretch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|clk_cnt\(2));

-- Location: LCCOMB_X17_Y29_N24
\inst6|clk_cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|clk_cnt~1_combout\ = (\inst6|Add0~8_combout\ & !\inst6|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add0~8_combout\,
	datad => \inst6|Equal0~1_combout\,
	combout => \inst6|clk_cnt~1_combout\);

-- Location: LCFF_X17_Y29_N25
\inst6|clk_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst6|clk_cnt~1_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst6|ALT_INV_clk_stretch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|clk_cnt\(4));

-- Location: LCCOMB_X16_Y29_N0
\inst6|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Equal1~0_combout\ = (\inst6|clk_cnt\(4) & (\inst6|clk_cnt\(3) & \inst6|clk_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|clk_cnt\(4),
	datac => \inst6|clk_cnt\(3),
	datad => \inst6|clk_cnt\(2),
	combout => \inst6|Equal1~0_combout\);

-- Location: LCCOMB_X18_Y29_N24
\inst6|clk_cnt~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|clk_cnt~3_combout\ = (\inst6|Add0~12_combout\ & !\inst6|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~12_combout\,
	datad => \inst6|Equal0~1_combout\,
	combout => \inst6|clk_cnt~3_combout\);

-- Location: LCFF_X18_Y29_N25
\inst6|clk_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst6|clk_cnt~3_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst6|ALT_INV_clk_stretch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|clk_cnt\(6));

-- Location: LCCOMB_X17_Y29_N30
\inst6|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|process_0~1_combout\ = (!\inst6|clk_cnt\(5) & (!\inst6|Equal1~0_combout\ & \inst6|clk_cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|clk_cnt\(5),
	datac => \inst6|Equal1~0_combout\,
	datad => \inst6|clk_cnt\(6),
	combout => \inst6|process_0~1_combout\);

-- Location: LCCOMB_X17_Y29_N14
\inst6|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Equal2~0_combout\ = (\inst6|clk_cnt\(5) & (\inst6|clk_cnt\(0) & (\inst6|Equal1~0_combout\ & !\inst6|clk_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|clk_cnt\(5),
	datab => \inst6|clk_cnt\(0),
	datac => \inst6|Equal1~0_combout\,
	datad => \inst6|clk_cnt\(6),
	combout => \inst6|Equal2~0_combout\);

-- Location: LCCOMB_X18_Y29_N14
\inst6|process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|process_0~2_combout\ = (\inst6|process_0~0_combout\ & ((\inst6|process_0~1_combout\) # ((\inst6|clk_cnt\(1) & \inst6|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|clk_cnt\(1),
	datab => \inst6|process_0~0_combout\,
	datac => \inst6|process_0~1_combout\,
	datad => \inst6|Equal2~0_combout\,
	combout => \inst6|process_0~2_combout\);

-- Location: LCFF_X18_Y29_N15
\inst6|clk_stretch\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst6|process_0~2_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|clk_stretch~regout\);

-- Location: LCFF_X17_Y29_N1
\inst6|clk_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst6|Add0~0_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst6|ALT_INV_clk_stretch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|clk_cnt\(0));

-- Location: LCFF_X17_Y29_N3
\inst6|clk_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst6|Add0~2_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst6|ALT_INV_clk_stretch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|clk_cnt\(1));

-- Location: LCCOMB_X17_Y29_N20
\inst6|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~0_combout\ = (\inst6|clk_cnt\(3) & (\inst6|clk_cnt\(0) & (\inst6|clk_cnt\(4) & \inst6|clk_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|clk_cnt\(3),
	datab => \inst6|clk_cnt\(0),
	datac => \inst6|clk_cnt\(4),
	datad => \inst6|clk_cnt\(5),
	combout => \inst6|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y29_N28
\inst6|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~1_combout\ = (!\inst6|clk_cnt\(2) & (\inst6|clk_cnt\(1) & (\inst6|Equal0~0_combout\ & \inst6|clk_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|clk_cnt\(2),
	datab => \inst6|clk_cnt\(1),
	datac => \inst6|Equal0~0_combout\,
	datad => \inst6|clk_cnt\(6),
	combout => \inst6|Equal0~1_combout\);

-- Location: LCFF_X18_Y29_N11
\inst6|p0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst6|Equal0~1_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|p0~regout\);

-- Location: LCFF_X19_Y29_N17
\inst6|pres_state.start\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst6|process_5~1_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst6|p0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|pres_state.start~regout\);

-- Location: LCCOMB_X20_Y29_N4
\inst6|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Selector1~0_combout\ = (\inst6|pres_state.slv_cmd~regout\ & ((\inst6|bit_cnt\(0)) # ((!\inst6|bit_cnt\(1)) # (!\inst6|bit_cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|bit_cnt\(0),
	datab => \inst6|bit_cnt\(2),
	datac => \inst6|pres_state.slv_cmd~regout\,
	datad => \inst6|bit_cnt\(1),
	combout => \inst6|Selector1~0_combout\);

-- Location: LCCOMB_X19_Y29_N30
\inst6|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Selector1~1_combout\ = (\inst6|pres_state.start~regout\) # (\inst6|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|pres_state.start~regout\,
	datad => \inst6|Selector1~0_combout\,
	combout => \inst6|Selector1~1_combout\);

-- Location: LCFF_X19_Y29_N31
\inst6|pres_state.slv_cmd\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst6|Selector1~1_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst6|p0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|pres_state.slv_cmd~regout\);

-- Location: LCCOMB_X19_Y29_N0
\inst6|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Selector3~0_combout\ = (\inst6|ack_err_flag~regout\ & (((\inst6|pres_state.data_wr~regout\ & !\inst6|Equal5~0_combout\)))) # (!\inst6|ack_err_flag~regout\ & ((\inst6|pres_state.ack2~regout\) # ((\inst6|pres_state.data_wr~regout\ & 
-- !\inst6|Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ack_err_flag~regout\,
	datab => \inst6|pres_state.ack2~regout\,
	datac => \inst6|pres_state.data_wr~regout\,
	datad => \inst6|Equal5~0_combout\,
	combout => \inst6|Selector3~0_combout\);

-- Location: LCFF_X19_Y29_N1
\inst6|pres_state.data_wr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst6|Selector3~0_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst6|p0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|pres_state.data_wr~regout\);

-- Location: LCCOMB_X19_Y29_N8
\inst6|bit_cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|bit_cnt~1_combout\ = (!\inst6|bit_cnt\(0) & ((\inst6|pres_state.reg_wr~regout\) # ((\inst6|pres_state.slv_cmd~regout\) # (\inst6|pres_state.data_wr~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pres_state.reg_wr~regout\,
	datab => \inst6|pres_state.slv_cmd~regout\,
	datac => \inst6|bit_cnt\(0),
	datad => \inst6|pres_state.data_wr~regout\,
	combout => \inst6|bit_cnt~1_combout\);

-- Location: LCFF_X19_Y29_N9
\inst6|bit_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst6|bit_cnt~1_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst6|p0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|bit_cnt\(0));

-- Location: LCCOMB_X20_Y29_N30
\inst6|sda_o~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sda_o~13_combout\ = (!\inst6|pres_state.data_wr~regout\ & (!\inst6|pres_state.reg_wr~regout\ & !\inst6|pres_state.slv_cmd~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pres_state.data_wr~regout\,
	datab => \inst6|pres_state.reg_wr~regout\,
	datac => \inst6|pres_state.slv_cmd~regout\,
	combout => \inst6|sda_o~13_combout\);

-- Location: LCCOMB_X19_Y29_N26
\inst6|bit_cnt~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|bit_cnt~2_combout\ = (!\inst6|sda_o~13_combout\ & (\inst6|bit_cnt\(0) $ (\inst6|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|bit_cnt\(0),
	datac => \inst6|bit_cnt\(1),
	datad => \inst6|sda_o~13_combout\,
	combout => \inst6|bit_cnt~2_combout\);

-- Location: LCFF_X19_Y29_N27
\inst6|bit_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst6|bit_cnt~2_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst6|p0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|bit_cnt\(1));

-- Location: LCCOMB_X19_Y29_N24
\inst6|bit_cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|bit_cnt~0_combout\ = (!\inst6|sda_o~13_combout\ & (\inst6|bit_cnt\(2) $ (((\inst6|bit_cnt\(0) & \inst6|bit_cnt\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|bit_cnt\(0),
	datab => \inst6|bit_cnt\(1),
	datac => \inst6|bit_cnt\(2),
	datad => \inst6|sda_o~13_combout\,
	combout => \inst6|bit_cnt~0_combout\);

-- Location: LCFF_X19_Y29_N25
\inst6|bit_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst6|bit_cnt~0_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst6|p0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|bit_cnt\(2));

-- Location: LCCOMB_X20_Y29_N18
\inst6|Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Equal5~0_combout\ = (\inst6|bit_cnt\(0) & (\inst6|bit_cnt\(2) & \inst6|bit_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|bit_cnt\(0),
	datab => \inst6|bit_cnt\(2),
	datad => \inst6|bit_cnt\(1),
	combout => \inst6|Equal5~0_combout\);

-- Location: LCCOMB_X19_Y29_N4
\inst6|process_5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|process_5~0_combout\ = (\inst6|p0~regout\ & (\inst9|init_reg~regout\ & !\inst6|pres_state.idle~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|p0~regout\,
	datac => \inst9|init_reg~regout\,
	datad => \inst6|pres_state.idle~regout\,
	combout => \inst6|process_5~0_combout\);

-- Location: LCCOMB_X17_Y29_N16
\inst6|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Equal1~1_combout\ = (!\inst6|clk_cnt\(5) & (\inst6|Equal1~0_combout\ & !\inst6|clk_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|clk_cnt\(5),
	datac => \inst6|Equal1~0_combout\,
	datad => \inst6|clk_cnt\(0),
	combout => \inst6|Equal1~1_combout\);

-- Location: LCCOMB_X18_Y29_N18
\inst6|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Equal3~0_combout\ = (!\inst6|clk_cnt\(1) & (\inst6|Equal1~1_combout\ & \inst6|clk_cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|clk_cnt\(1),
	datab => \inst6|Equal1~1_combout\,
	datac => \inst6|clk_cnt\(6),
	combout => \inst6|Equal3~0_combout\);

-- Location: LCFF_X18_Y29_N19
\inst6|p3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst6|Equal3~0_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|p3~regout\);

-- Location: LCCOMB_X19_Y29_N18
\inst6|ack_err_flag~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|ack_err_flag~0_combout\ = (\I2C_SDA~0\ & (\inst6|p3~regout\ & ((\inst6|pres_state.ack1~regout\) # (\inst6|pres_state.ack2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pres_state.ack1~regout\,
	datab => \I2C_SDA~0\,
	datac => \inst6|p3~regout\,
	datad => \inst6|pres_state.ack2~regout\,
	combout => \inst6|ack_err_flag~0_combout\);

-- Location: LCCOMB_X19_Y29_N6
\inst6|ack_err_flag~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|ack_err_flag~1_combout\ = (!\inst6|process_5~0_combout\ & ((\inst6|ack_err_flag~regout\) # (\inst6|ack_err_flag~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|process_5~0_combout\,
	datac => \inst6|ack_err_flag~regout\,
	datad => \inst6|ack_err_flag~0_combout\,
	combout => \inst6|ack_err_flag~1_combout\);

-- Location: LCFF_X19_Y29_N7
\inst6|ack_err_flag\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst6|ack_err_flag~1_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|ack_err_flag~regout\);

-- Location: LCCOMB_X19_Y29_N22
\inst6|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Selector2~0_combout\ = (\inst6|pres_state.ack1~regout\ & (((!\inst6|Equal5~0_combout\ & \inst6|pres_state.reg_wr~regout\)) # (!\inst6|ack_err_flag~regout\))) # (!\inst6|pres_state.ack1~regout\ & (!\inst6|Equal5~0_combout\ & 
-- (\inst6|pres_state.reg_wr~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pres_state.ack1~regout\,
	datab => \inst6|Equal5~0_combout\,
	datac => \inst6|pres_state.reg_wr~regout\,
	datad => \inst6|ack_err_flag~regout\,
	combout => \inst6|Selector2~0_combout\);

-- Location: LCFF_X19_Y29_N23
\inst6|pres_state.reg_wr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst6|Selector2~0_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst6|p0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|pres_state.reg_wr~regout\);

-- Location: LCCOMB_X19_Y29_N2
\inst6|next_state.ack2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|next_state.ack2~0_combout\ = (\inst6|bit_cnt\(2) & (\inst6|pres_state.reg_wr~regout\ & (\inst6|bit_cnt\(0) & \inst6|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|bit_cnt\(2),
	datab => \inst6|pres_state.reg_wr~regout\,
	datac => \inst6|bit_cnt\(0),
	datad => \inst6|bit_cnt\(1),
	combout => \inst6|next_state.ack2~0_combout\);

-- Location: LCFF_X19_Y29_N3
\inst6|pres_state.ack2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst6|next_state.ack2~0_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst6|p0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|pres_state.ack2~regout\);

-- Location: LCCOMB_X19_Y29_N10
\inst6|next_state.wr_cmd~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|next_state.wr_cmd~0_combout\ = (\inst6|bit_cnt\(2) & (\inst6|bit_cnt\(1) & (!\inst6|bit_cnt\(0) & \inst6|pres_state.slv_cmd~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|bit_cnt\(2),
	datab => \inst6|bit_cnt\(1),
	datac => \inst6|bit_cnt\(0),
	datad => \inst6|pres_state.slv_cmd~regout\,
	combout => \inst6|next_state.wr_cmd~0_combout\);

-- Location: LCFF_X19_Y29_N11
\inst6|pres_state.wr_cmd\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst6|next_state.wr_cmd~0_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst6|p0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|pres_state.wr_cmd~regout\);

-- Location: LCCOMB_X19_Y29_N20
\inst6|pres_state.ack1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|pres_state.ack1~feeder_combout\ = \inst6|pres_state.wr_cmd~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|pres_state.wr_cmd~regout\,
	combout => \inst6|pres_state.ack1~feeder_combout\);

-- Location: LCFF_X19_Y29_N21
\inst6|pres_state.ack1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst6|pres_state.ack1~feeder_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst6|p0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|pres_state.ack1~regout\);

-- Location: LCCOMB_X19_Y29_N28
\inst6|next_state.ack3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|next_state.ack3~0_combout\ = (\inst6|bit_cnt\(2) & (\inst6|bit_cnt\(1) & (\inst6|bit_cnt\(0) & \inst6|pres_state.data_wr~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|bit_cnt\(2),
	datab => \inst6|bit_cnt\(1),
	datac => \inst6|bit_cnt\(0),
	datad => \inst6|pres_state.data_wr~regout\,
	combout => \inst6|next_state.ack3~0_combout\);

-- Location: LCFF_X19_Y29_N29
\inst6|pres_state.ack3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst6|next_state.ack3~0_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst6|p0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|pres_state.ack3~regout\);

-- Location: LCCOMB_X19_Y29_N14
\inst6|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Selector6~0_combout\ = (\inst6|pres_state.ack3~regout\) # ((\inst6|ack_err_flag~regout\ & ((\inst6|pres_state.ack2~regout\) # (\inst6|pres_state.ack1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ack_err_flag~regout\,
	datab => \inst6|pres_state.ack2~regout\,
	datac => \inst6|pres_state.ack1~regout\,
	datad => \inst6|pres_state.ack3~regout\,
	combout => \inst6|Selector6~0_combout\);

-- Location: LCFF_X19_Y29_N15
\inst6|pres_state.stop\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst6|Selector6~0_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst6|p0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|pres_state.stop~regout\);

-- Location: LCCOMB_X19_Y29_N12
\inst6|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Selector0~0_combout\ = (!\inst6|pres_state.stop~regout\ & ((\inst9|init_reg~regout\) # (\inst6|pres_state.idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|init_reg~regout\,
	datab => \inst6|pres_state.stop~regout\,
	datac => \inst6|pres_state.idle~regout\,
	combout => \inst6|Selector0~0_combout\);

-- Location: LCFF_X19_Y29_N13
\inst6|pres_state.idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst6|Selector0~0_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst6|p0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|pres_state.idle~regout\);

-- Location: LCCOMB_X18_Y29_N4
\inst6|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Equal2~1_combout\ = (\inst6|Equal2~0_combout\ & !\inst6|clk_cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal2~0_combout\,
	datad => \inst6|clk_cnt\(1),
	combout => \inst6|Equal2~1_combout\);

-- Location: LCFF_X18_Y29_N5
\inst6|p2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst6|Equal2~1_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|p2~regout\);

-- Location: LCCOMB_X18_Y29_N2
\inst6|scl_o~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|scl_o~0_combout\ = (\inst6|scl_o~regout\ & (\inst6|p2~regout\ & ((\inst6|pres_state.stop~regout\) # (!\inst6|p0~regout\)))) # (!\inst6|scl_o~regout\ & ((\inst6|pres_state.stop~regout\) # ((!\inst6|p0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|scl_o~regout\,
	datab => \inst6|pres_state.stop~regout\,
	datac => \inst6|p2~regout\,
	datad => \inst6|p0~regout\,
	combout => \inst6|scl_o~0_combout\);

-- Location: LCCOMB_X18_Y29_N16
\inst6|scl_o~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|scl_o~1_combout\ = (\inst6|pres_state.idle~regout\ & !\inst6|scl_o~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|pres_state.idle~regout\,
	datad => \inst6|scl_o~0_combout\,
	combout => \inst6|scl_o~1_combout\);

-- Location: LCFF_X18_Y29_N17
\inst6|scl_o\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst6|scl_o~1_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|scl_o~regout\);

-- Location: LCCOMB_X18_Y29_N12
\inst6|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Equal1~2_combout\ = (\inst6|clk_cnt\(1) & (\inst6|Equal1~1_combout\ & !\inst6|clk_cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|clk_cnt\(1),
	datab => \inst6|Equal1~1_combout\,
	datac => \inst6|clk_cnt\(6),
	combout => \inst6|Equal1~2_combout\);

-- Location: LCFF_X18_Y29_N13
\inst6|p1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst6|Equal1~2_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|p1~regout\);

-- Location: LCCOMB_X20_Y29_N22
\inst6|sda_o~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sda_o~3_combout\ = (\inst6|Mux1~1_combout\ & (\inst6|bit_cnt\(2) & (\inst6|p1~regout\ & \inst6|pres_state.reg_wr~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mux1~1_combout\,
	datab => \inst6|bit_cnt\(2),
	datac => \inst6|p1~regout\,
	datad => \inst6|pres_state.reg_wr~regout\,
	combout => \inst6|sda_o~3_combout\);

-- Location: LCCOMB_X20_Y29_N6
\inst6|slv_addr_reg[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|slv_addr_reg[5]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst6|slv_addr_reg[5]~feeder_combout\);

-- Location: LCFF_X20_Y29_N7
\inst6|slv_addr_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst6|slv_addr_reg[5]~feeder_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst6|process_5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|slv_addr_reg\(5));

-- Location: LCCOMB_X20_Y29_N8
\inst6|sda_o~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sda_o~0_combout\ = (\inst6|pres_state.slv_cmd~regout\ & (\inst6|bit_cnt\(2) & (\inst6|p1~regout\ & \inst6|slv_addr_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pres_state.slv_cmd~regout\,
	datab => \inst6|bit_cnt\(2),
	datac => \inst6|p1~regout\,
	datad => \inst6|slv_addr_reg\(5),
	combout => \inst6|sda_o~0_combout\);

-- Location: LCCOMB_X20_Y29_N14
\inst6|sda_o~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sda_o~1_combout\ = (\inst6|bit_cnt\(0) & (!\inst6|bit_cnt\(1) & \inst6|sda_o~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|bit_cnt\(0),
	datab => \inst6|bit_cnt\(1),
	datac => \inst6|sda_o~0_combout\,
	combout => \inst6|sda_o~1_combout\);

-- Location: LCCOMB_X20_Y29_N24
\inst6|sda_o~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sda_o~4_combout\ = (\inst6|p3~regout\ & ((\inst6|pres_state.stop~regout\) # ((!\inst6|pres_state.start~regout\ & !\inst6|sda_o~regout\)))) # (!\inst6|p3~regout\ & (((!\inst6|sda_o~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pres_state.stop~regout\,
	datab => \inst6|pres_state.start~regout\,
	datac => \inst6|p3~regout\,
	datad => \inst6|sda_o~regout\,
	combout => \inst6|sda_o~4_combout\);

-- Location: LCCOMB_X20_Y29_N26
\inst6|sda_o~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sda_o~5_combout\ = (!\inst6|pres_state.wr_cmd~regout\ & (!\inst6|pres_state.reg_wr~regout\ & (!\inst6|pres_state.data_wr~regout\ & !\inst6|pres_state.stop~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pres_state.wr_cmd~regout\,
	datab => \inst6|pres_state.reg_wr~regout\,
	datac => \inst6|pres_state.data_wr~regout\,
	datad => \inst6|pres_state.stop~regout\,
	combout => \inst6|sda_o~5_combout\);

-- Location: LCCOMB_X20_Y29_N28
\inst6|sda_o~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sda_o~6_combout\ = (\inst6|p1~regout\ & (!\inst6|pres_state.slv_cmd~regout\ & ((\inst6|sda_o~5_combout\)))) # (!\inst6|p1~regout\ & (((\inst6|sda_o~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|pres_state.slv_cmd~regout\,
	datab => \inst6|p1~regout\,
	datac => \inst6|sda_o~4_combout\,
	datad => \inst6|sda_o~5_combout\,
	combout => \inst6|sda_o~6_combout\);

-- Location: LCCOMB_X20_Y29_N0
\inst6|sda_o~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sda_o~11_combout\ = (\inst6|sda_o~6_combout\) # ((\inst6|sda_o~10_combout\ & (!\inst6|bit_cnt\(2) & \inst6|p1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sda_o~10_combout\,
	datab => \inst6|bit_cnt\(2),
	datac => \inst6|p1~regout\,
	datad => \inst6|sda_o~6_combout\,
	combout => \inst6|sda_o~11_combout\);

-- Location: LCCOMB_X20_Y29_N12
\inst6|sda_o~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|sda_o~12_combout\ = (!\inst6|sda_o~2_combout\ & (!\inst6|sda_o~3_combout\ & (!\inst6|sda_o~1_combout\ & !\inst6|sda_o~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|sda_o~2_combout\,
	datab => \inst6|sda_o~3_combout\,
	datac => \inst6|sda_o~1_combout\,
	datad => \inst6|sda_o~11_combout\,
	combout => \inst6|sda_o~12_combout\);

-- Location: LCFF_X20_Y29_N13
\inst6|sda_o\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst6|sda_o~12_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|sda_o~regout\);

-- Location: LCCOMB_X18_Y29_N0
\inst9|conf_done_reg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|conf_done_reg~0_combout\ = (\inst9|conf_done_reg~regout\) # ((\inst9|rom_addr_cnt\(3) & (\inst6|busy_flag~regout\ & !\inst9|init_reg~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|rom_addr_cnt\(3),
	datab => \inst6|busy_flag~regout\,
	datac => \inst9|conf_done_reg~regout\,
	datad => \inst9|init_reg~regout\,
	combout => \inst9|conf_done_reg~0_combout\);

-- Location: LCFF_X18_Y29_N1
\inst9|conf_done_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst9|conf_done_reg~0_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|conf_done_reg~regout\);

-- Location: CLKCTRL_G9
\inst9|conf_done_reg~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst9|conf_done_reg~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst9|conf_done_reg~clkctrl_outclk\);

-- Location: PLL_1
\inst7|pll_18432_inst|altpll_component|pll\ : cycloneii_pll
-- pragma translate_off
GENERIC MAP (
	bandwidth => 0,
	bandwidth_type => "auto",
	c0_high => 10,
	c0_initial => 1,
	c0_low => 9,
	c0_mode => "odd",
	c0_ph => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	charge_pump_current => 80,
	clk0_counter => "c0",
	clk0_divide_by => 19,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 7,
	clk0_phase_shift => "0",
	clk1_duty_cycle => 50,
	clk1_phase_shift => "0",
	clk2_duty_cycle => 50,
	clk2_phase_shift => "0",
	compensate_clock => "clk0",
	gate_lock_counter => 0,
	gate_lock_signal => "no",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 20000,
	invalid_lock_multiplier => 5,
	loop_filter_c => 3,
	loop_filter_r => " 2.500000",
	m => 7,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 100000,
	pfd_min => 2484,
	pll_compensation_delay => 5370,
	self_reset_on_gated_loss_lock => "off",
	sim_gate_lock_device_behavior => "off",
	simulation_type => "timing",
	valid_lock_multiplier => 1,
	vco_center => 2500,
	vco_max => 3333,
	vco_min => 2000,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \inst9|ALT_INV_conf_done_reg~clkctrl_outclk\,
	inclk => \inst7|pll_18432_inst|altpll_component|pll_INCLK_bus\,
	locked => \inst7|pll_18432_inst|altpll_component|_locked\,
	clk => \inst7|pll_18432_inst|altpll_component|pll_CLK_bus\);

-- Location: CLKCTRL_G3
\inst7|pll_18432_inst|altpll_component|_clk0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\);

-- Location: LCCOMB_X30_Y28_N22
\inst7|nrst_reg~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|nrst_reg~feeder_combout\ = \inst7|pll_18432_inst|altpll_component|_locked\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|pll_18432_inst|altpll_component|_locked\,
	combout => \inst7|nrst_reg~feeder_combout\);

-- Location: LCFF_X30_Y28_N23
\inst7|nrst_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|nrst_reg~feeder_combout\,
	aclr => \inst9|ALT_INV_conf_done_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|nrst_reg~regout\);

-- Location: LCCOMB_X31_Y28_N26
\inst7|bclk_cnt[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|bclk_cnt[0]~2_combout\ = !\inst7|bclk_cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|bclk_cnt\(0),
	combout => \inst7|bclk_cnt[0]~2_combout\);

-- Location: CLKCTRL_G11
\inst7|nrst_reg~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7|nrst_reg~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7|nrst_reg~clkctrl_outclk\);

-- Location: LCFF_X31_Y28_N27
\inst7|bclk_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|bclk_cnt[0]~2_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|bclk_cnt\(0));

-- Location: LCCOMB_X31_Y28_N30
\inst7|bclk_cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|bclk_cnt~1_combout\ = (\inst7|bclk_cnt\(2) & ((!\inst7|bclk_cnt\(0)))) # (!\inst7|bclk_cnt\(2) & (\inst7|bclk_cnt\(1) & \inst7|bclk_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bclk_cnt\(1),
	datac => \inst7|bclk_cnt\(2),
	datad => \inst7|bclk_cnt\(0),
	combout => \inst7|bclk_cnt~1_combout\);

-- Location: LCFF_X31_Y28_N31
\inst7|bclk_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|bclk_cnt~1_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|bclk_cnt\(2));

-- Location: LCCOMB_X30_Y28_N16
\inst7|lrck_reg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|lrck_reg~0_combout\ = (!\inst7|bclk_cnt\(1) & (\inst7|nrst_reg~regout\ & (\inst7|bclk_cnt\(0) & \inst7|bclk_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bclk_cnt\(1),
	datab => \inst7|nrst_reg~regout\,
	datac => \inst7|bclk_cnt\(0),
	datad => \inst7|bclk_cnt\(2),
	combout => \inst7|lrck_reg~0_combout\);

-- Location: LCCOMB_X31_Y28_N8
\inst7|lrck_cnt[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|lrck_cnt[0]~5_combout\ = \inst7|lrck_cnt\(0) $ (VCC)
-- \inst7|lrck_cnt[0]~6\ = CARRY(\inst7|lrck_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|lrck_cnt\(0),
	datad => VCC,
	combout => \inst7|lrck_cnt[0]~5_combout\,
	cout => \inst7|lrck_cnt[0]~6\);

-- Location: LCCOMB_X31_Y28_N0
\inst7|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal1~0_combout\ = (!\inst7|bclk_cnt\(1) & (\inst7|bclk_cnt\(0) & \inst7|bclk_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bclk_cnt\(1),
	datab => \inst7|bclk_cnt\(0),
	datad => \inst7|bclk_cnt\(2),
	combout => \inst7|Equal1~0_combout\);

-- Location: LCFF_X31_Y28_N9
\inst7|lrck_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|lrck_cnt[0]~5_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst7|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|lrck_cnt\(0));

-- Location: LCCOMB_X31_Y28_N10
\inst7|lrck_cnt[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|lrck_cnt[1]~7_combout\ = (\inst7|lrck_cnt\(1) & (!\inst7|lrck_cnt[0]~6\)) # (!\inst7|lrck_cnt\(1) & ((\inst7|lrck_cnt[0]~6\) # (GND)))
-- \inst7|lrck_cnt[1]~8\ = CARRY((!\inst7|lrck_cnt[0]~6\) # (!\inst7|lrck_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|lrck_cnt\(1),
	datad => VCC,
	cin => \inst7|lrck_cnt[0]~6\,
	combout => \inst7|lrck_cnt[1]~7_combout\,
	cout => \inst7|lrck_cnt[1]~8\);

-- Location: LCFF_X31_Y28_N15
\inst7|lrck_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|lrck_cnt[3]~11_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst7|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|lrck_cnt\(3));

-- Location: LCFF_X31_Y28_N11
\inst7|lrck_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|lrck_cnt[1]~7_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst7|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|lrck_cnt\(1));

-- Location: LCCOMB_X31_Y28_N2
\inst7|lrck_reg~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|lrck_reg~1_combout\ = (\inst7|lrck_cnt\(2) & (\inst7|lrck_cnt\(3) & (\inst7|lrck_cnt\(0) & \inst7|lrck_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|lrck_cnt\(2),
	datab => \inst7|lrck_cnt\(3),
	datac => \inst7|lrck_cnt\(0),
	datad => \inst7|lrck_cnt\(1),
	combout => \inst7|lrck_reg~1_combout\);

-- Location: LCCOMB_X31_Y28_N18
\inst7|lrck_reg~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|lrck_reg~2_combout\ = \inst7|lrck_reg~regout\ $ (((\inst7|lrck_cnt\(4) & (\inst7|lrck_reg~0_combout\ & \inst7|lrck_reg~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|lrck_cnt\(4),
	datab => \inst7|lrck_reg~0_combout\,
	datac => \inst7|lrck_reg~regout\,
	datad => \inst7|lrck_reg~1_combout\,
	combout => \inst7|lrck_reg~2_combout\);

-- Location: LCFF_X31_Y28_N19
\inst7|lrck_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|lrck_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|lrck_reg~regout\);

-- Location: LCFF_X35_Y21_N17
\inst10|lrck_prev\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst7|lrck_reg~regout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|lrck_prev~regout\);

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AUD_ADCDAT~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_AUD_ADCDAT,
	combout => \AUD_ADCDAT~combout\);

-- Location: LCCOMB_X36_Y20_N12
\inst10|sht_reg_left[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_left[0]~feeder_combout\ = \AUD_ADCDAT~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AUD_ADCDAT~combout\,
	combout => \inst10|sht_reg_left[0]~feeder_combout\);

-- Location: LCCOMB_X31_Y28_N6
\inst7|bclk_cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|bclk_cnt~0_combout\ = (\inst7|bclk_cnt\(0) & (!\inst7|bclk_cnt\(1) & !\inst7|bclk_cnt\(2))) # (!\inst7|bclk_cnt\(0) & (\inst7|bclk_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|bclk_cnt\(0),
	datac => \inst7|bclk_cnt\(1),
	datad => \inst7|bclk_cnt\(2),
	combout => \inst7|bclk_cnt~0_combout\);

-- Location: LCFF_X31_Y28_N7
\inst7|bclk_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|bclk_cnt~0_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|bclk_cnt\(1));

-- Location: LCCOMB_X30_Y28_N0
\inst7|bclk_reg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|bclk_reg~0_combout\ = (\inst7|bclk_cnt\(0) & (\inst7|bclk_reg~regout\ & ((\inst7|bclk_cnt\(1)) # (!\inst7|bclk_cnt\(2))))) # (!\inst7|bclk_cnt\(0) & ((\inst7|bclk_reg~regout\) # ((!\inst7|bclk_cnt\(2) & \inst7|bclk_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bclk_cnt\(0),
	datab => \inst7|bclk_cnt\(2),
	datac => \inst7|bclk_reg~regout\,
	datad => \inst7|bclk_cnt\(1),
	combout => \inst7|bclk_reg~0_combout\);

-- Location: LCFF_X30_Y28_N1
\inst7|bclk_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst7|bclk_reg~0_combout\,
	ena => \inst7|nrst_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|bclk_reg~regout\);

-- Location: LCFF_X35_Y21_N23
\inst10|bclk_prev\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst7|bclk_reg~regout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|bclk_prev~regout\);

-- Location: LCCOMB_X34_Y21_N0
\inst10|count[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|count[0]~5_combout\ = \inst10|count\(0) $ (VCC)
-- \inst10|count[0]~6\ = CARRY(\inst10|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|count\(0),
	datad => VCC,
	combout => \inst10|count[0]~5_combout\,
	cout => \inst10|count[0]~6\);

-- Location: LCCOMB_X35_Y21_N2
\inst10|bclk_rise\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|bclk_rise~combout\ = (\inst7|bclk_reg~regout\ & !\inst10|bclk_prev~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|bclk_reg~regout\,
	datad => \inst10|bclk_prev~regout\,
	combout => \inst10|bclk_rise~combout\);

-- Location: LCCOMB_X35_Y21_N30
\inst10|count[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|count[4]~13_combout\ = ((\inst10|process_1~0_combout\ & ((\inst10|Equal0~0_combout\) # (\inst10|count\(2))))) # (!\inst10|bclk_rise~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Equal0~0_combout\,
	datab => \inst10|bclk_rise~combout\,
	datac => \inst10|count\(2),
	datad => \inst10|process_1~0_combout\,
	combout => \inst10|count[4]~13_combout\);

-- Location: LCCOMB_X35_Y21_N8
\inst10|count[4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|count[4]~14_combout\ = (\inst10|lrck_prev~regout\ $ (\inst7|lrck_reg~regout\)) # (!\inst10|count[4]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|lrck_prev~regout\,
	datab => \inst10|count[4]~13_combout\,
	datac => \inst7|lrck_reg~regout\,
	combout => \inst10|count[4]~14_combout\);

-- Location: LCFF_X34_Y21_N1
\inst10|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|count[0]~5_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	sclr => \inst10|count[4]~13_combout\,
	ena => \inst10|count[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|count\(0));

-- Location: LCCOMB_X34_Y21_N2
\inst10|count[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|count[1]~7_combout\ = (\inst10|count\(1) & (!\inst10|count[0]~6\)) # (!\inst10|count\(1) & ((\inst10|count[0]~6\) # (GND)))
-- \inst10|count[1]~8\ = CARRY((!\inst10|count[0]~6\) # (!\inst10|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|count\(1),
	datad => VCC,
	cin => \inst10|count[0]~6\,
	combout => \inst10|count[1]~7_combout\,
	cout => \inst10|count[1]~8\);

-- Location: LCFF_X34_Y21_N3
\inst10|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|count[1]~7_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	sclr => \inst10|count[4]~13_combout\,
	ena => \inst10|count[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|count\(1));

-- Location: LCCOMB_X34_Y21_N4
\inst10|count[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|count[2]~9_combout\ = (\inst10|count\(2) & (\inst10|count[1]~8\ $ (GND))) # (!\inst10|count\(2) & (!\inst10|count[1]~8\ & VCC))
-- \inst10|count[2]~10\ = CARRY((\inst10|count\(2) & !\inst10|count[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|count\(2),
	datad => VCC,
	cin => \inst10|count[1]~8\,
	combout => \inst10|count[2]~9_combout\,
	cout => \inst10|count[2]~10\);

-- Location: LCFF_X34_Y21_N5
\inst10|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|count[2]~9_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	sclr => \inst10|count[4]~13_combout\,
	ena => \inst10|count[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|count\(2));

-- Location: LCFF_X34_Y21_N7
\inst10|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|count[3]~11_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	sclr => \inst10|count[4]~13_combout\,
	ena => \inst10|count[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|count\(3));

-- Location: LCCOMB_X35_Y21_N24
\inst10|fst_pulse~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|fst_pulse~0_combout\ = (!\inst10|bclk_rise~combout\ & ((\inst10|fst_pulse~regout\) # (\inst10|lrck_prev~regout\ $ (\inst7|lrck_reg~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|lrck_prev~regout\,
	datab => \inst7|lrck_reg~regout\,
	datac => \inst10|fst_pulse~regout\,
	datad => \inst10|bclk_rise~combout\,
	combout => \inst10|fst_pulse~0_combout\);

-- Location: LCFF_X35_Y21_N25
\inst10|fst_pulse\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|fst_pulse~0_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|fst_pulse~regout\);

-- Location: LCCOMB_X35_Y21_N6
\inst10|process_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|process_1~0_combout\ = (\inst10|fst_pulse~regout\) # ((\inst10|count\(4) & \inst10|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|count\(4),
	datab => \inst10|count\(3),
	datac => \inst10|fst_pulse~regout\,
	combout => \inst10|process_1~0_combout\);

-- Location: LCCOMB_X35_Y21_N12
\inst10|sht_reg_left[14]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_left[14]~2_combout\ = (\inst7|bclk_reg~regout\ & (!\inst10|bclk_prev~regout\ & (!\inst7|lrck_reg~regout\ & !\inst10|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bclk_reg~regout\,
	datab => \inst10|bclk_prev~regout\,
	datac => \inst7|lrck_reg~regout\,
	datad => \inst10|process_1~0_combout\,
	combout => \inst10|sht_reg_left[14]~2_combout\);

-- Location: LCFF_X36_Y20_N13
\inst10|sht_reg_left[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|sht_reg_left[0]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|sht_reg_left[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_left\(0));

-- Location: LCCOMB_X36_Y20_N14
\inst10|sht_reg_left[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_left[1]~feeder_combout\ = \inst10|sht_reg_left\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|sht_reg_left\(0),
	combout => \inst10|sht_reg_left[1]~feeder_combout\);

-- Location: LCFF_X36_Y20_N15
\inst10|sht_reg_left[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|sht_reg_left[1]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|sht_reg_left[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_left\(1));

-- Location: LCFF_X36_Y20_N5
\inst10|sht_reg_left[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst10|sht_reg_left\(1),
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \inst10|sht_reg_left[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_left\(2));

-- Location: LCCOMB_X35_Y20_N0
\inst10|sht_reg_left[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_left[3]~feeder_combout\ = \inst10|sht_reg_left\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|sht_reg_left\(2),
	combout => \inst10|sht_reg_left[3]~feeder_combout\);

-- Location: LCFF_X35_Y20_N1
\inst10|sht_reg_left[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|sht_reg_left[3]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|sht_reg_left[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_left\(3));

-- Location: LCCOMB_X35_Y20_N14
\inst10|sht_reg_left[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_left[4]~feeder_combout\ = \inst10|sht_reg_left\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|sht_reg_left\(3),
	combout => \inst10|sht_reg_left[4]~feeder_combout\);

-- Location: LCFF_X35_Y20_N15
\inst10|sht_reg_left[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|sht_reg_left[4]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|sht_reg_left[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_left\(4));

-- Location: LCCOMB_X36_Y20_N30
\inst10|sht_reg_left[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_left[5]~feeder_combout\ = \inst10|sht_reg_left\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|sht_reg_left\(4),
	combout => \inst10|sht_reg_left[5]~feeder_combout\);

-- Location: LCFF_X36_Y20_N31
\inst10|sht_reg_left[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|sht_reg_left[5]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|sht_reg_left[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_left\(5));

-- Location: LCCOMB_X36_Y20_N8
\inst10|sht_reg_left[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_left[6]~feeder_combout\ = \inst10|sht_reg_left\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|sht_reg_left\(5),
	combout => \inst10|sht_reg_left[6]~feeder_combout\);

-- Location: LCFF_X36_Y20_N9
\inst10|sht_reg_left[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|sht_reg_left[6]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|sht_reg_left[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_left\(6));

-- Location: LCFF_X36_Y20_N23
\inst10|sht_reg_left[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst10|sht_reg_left\(6),
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \inst10|sht_reg_left[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_left\(7));

-- Location: LCCOMB_X36_Y20_N28
\inst10|sht_reg_left[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_left[8]~feeder_combout\ = \inst10|sht_reg_left\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|sht_reg_left\(7),
	combout => \inst10|sht_reg_left[8]~feeder_combout\);

-- Location: LCFF_X36_Y20_N29
\inst10|sht_reg_left[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|sht_reg_left[8]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|sht_reg_left[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_left\(8));

-- Location: LCCOMB_X36_Y20_N10
\inst10|sht_reg_left[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_left[9]~feeder_combout\ = \inst10|sht_reg_left\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|sht_reg_left\(8),
	combout => \inst10|sht_reg_left[9]~feeder_combout\);

-- Location: LCFF_X36_Y20_N11
\inst10|sht_reg_left[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|sht_reg_left[9]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|sht_reg_left[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_left\(9));

-- Location: LCCOMB_X36_Y20_N0
\inst10|sht_reg_left[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_left[10]~feeder_combout\ = \inst10|sht_reg_left\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|sht_reg_left\(9),
	combout => \inst10|sht_reg_left[10]~feeder_combout\);

-- Location: LCFF_X36_Y20_N1
\inst10|sht_reg_left[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|sht_reg_left[10]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|sht_reg_left[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_left\(10));

-- Location: LCCOMB_X36_Y20_N26
\inst10|sht_reg_left[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_left[11]~feeder_combout\ = \inst10|sht_reg_left\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|sht_reg_left\(10),
	combout => \inst10|sht_reg_left[11]~feeder_combout\);

-- Location: LCFF_X36_Y20_N27
\inst10|sht_reg_left[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|sht_reg_left[11]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|sht_reg_left[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_left\(11));

-- Location: LCCOMB_X36_Y20_N16
\inst10|sht_reg_left[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_left[12]~feeder_combout\ = \inst10|sht_reg_left\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|sht_reg_left\(11),
	combout => \inst10|sht_reg_left[12]~feeder_combout\);

-- Location: LCFF_X36_Y20_N17
\inst10|sht_reg_left[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|sht_reg_left[12]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|sht_reg_left[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_left\(12));

-- Location: LCCOMB_X37_Y19_N28
\inst10|sht_reg_left[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_left[13]~feeder_combout\ = \inst10|sht_reg_left\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|sht_reg_left\(12),
	combout => \inst10|sht_reg_left[13]~feeder_combout\);

-- Location: LCFF_X37_Y19_N29
\inst10|sht_reg_left[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|sht_reg_left[13]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|sht_reg_left[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_left\(13));

-- Location: LCCOMB_X37_Y19_N8
\inst10|sht_reg_left[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_left[14]~feeder_combout\ = \inst10|sht_reg_left\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|sht_reg_left\(13),
	combout => \inst10|sht_reg_left[14]~feeder_combout\);

-- Location: LCFF_X37_Y19_N9
\inst10|sht_reg_left[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|sht_reg_left[14]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|sht_reg_left[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_left\(14));

-- Location: LCFF_X37_Y19_N3
\inst10|sht_reg_left[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst10|sht_reg_left\(14),
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \inst10|sht_reg_left[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_left\(15));

-- Location: LCCOMB_X37_Y19_N0
\inst10|sht_reg_left[16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_left[16]~feeder_combout\ = \inst10|sht_reg_left\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|sht_reg_left\(15),
	combout => \inst10|sht_reg_left[16]~feeder_combout\);

-- Location: LCFF_X37_Y19_N1
\inst10|sht_reg_left[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|sht_reg_left[16]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|sht_reg_left[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_left\(16));

-- Location: LCCOMB_X37_Y19_N10
\inst10|sht_reg_left[17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_left[17]~feeder_combout\ = \inst10|sht_reg_left\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|sht_reg_left\(16),
	combout => \inst10|sht_reg_left[17]~feeder_combout\);

-- Location: LCFF_X37_Y19_N11
\inst10|sht_reg_left[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|sht_reg_left[17]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|sht_reg_left[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_left\(17));

-- Location: LCCOMB_X37_Y19_N24
\inst10|sht_reg_left[18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_left[18]~feeder_combout\ = \inst10|sht_reg_left\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|sht_reg_left\(17),
	combout => \inst10|sht_reg_left[18]~feeder_combout\);

-- Location: LCFF_X37_Y19_N25
\inst10|sht_reg_left[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|sht_reg_left[18]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|sht_reg_left[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_left\(18));

-- Location: LCFF_X37_Y19_N31
\inst10|sht_reg_left[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst10|sht_reg_left\(18),
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \inst10|sht_reg_left[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_left\(19));

-- Location: LCCOMB_X37_Y19_N16
\inst10|sht_reg_left[20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_left[20]~feeder_combout\ = \inst10|sht_reg_left\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|sht_reg_left\(19),
	combout => \inst10|sht_reg_left[20]~feeder_combout\);

-- Location: LCFF_X37_Y19_N17
\inst10|sht_reg_left[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|sht_reg_left[20]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|sht_reg_left[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_left\(20));

-- Location: LCFF_X37_Y19_N15
\inst10|sht_reg_left[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst10|sht_reg_left\(20),
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \inst10|sht_reg_left[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_left\(21));

-- Location: LCFF_X37_Y19_N13
\inst10|sht_reg_left[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst10|sht_reg_left\(21),
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \inst10|sht_reg_left[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_left\(22));

-- Location: LCCOMB_X36_Y19_N16
\inst14|l_ff[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|l_ff[3]~13_combout\ = (\inst10|sht_reg_left\(17) & (!\inst14|l_ff[2]~12\ & VCC)) # (!\inst10|sht_reg_left\(17) & (\inst14|l_ff[2]~12\ $ (GND)))
-- \inst14|l_ff[3]~14\ = CARRY((!\inst10|sht_reg_left\(17) & !\inst14|l_ff[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|sht_reg_left\(17),
	datad => VCC,
	cin => \inst14|l_ff[2]~12\,
	combout => \inst14|l_ff[3]~13_combout\,
	cout => \inst14|l_ff[3]~14\);

-- Location: LCCOMB_X36_Y19_N18
\inst14|l_ff[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|l_ff[4]~15_combout\ = (\inst10|sht_reg_left\(18) & ((\inst14|l_ff[3]~14\) # (GND))) # (!\inst10|sht_reg_left\(18) & (!\inst14|l_ff[3]~14\))
-- \inst14|l_ff[4]~16\ = CARRY((\inst10|sht_reg_left\(18)) # (!\inst14|l_ff[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|sht_reg_left\(18),
	datad => VCC,
	cin => \inst14|l_ff[3]~14\,
	combout => \inst14|l_ff[4]~15_combout\,
	cout => \inst14|l_ff[4]~16\);

-- Location: LCCOMB_X36_Y19_N20
\inst14|l_ff[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|l_ff[5]~17_combout\ = (\inst10|sht_reg_left\(19) & (!\inst14|l_ff[4]~16\ & VCC)) # (!\inst10|sht_reg_left\(19) & (\inst14|l_ff[4]~16\ $ (GND)))
-- \inst14|l_ff[5]~18\ = CARRY((!\inst10|sht_reg_left\(19) & !\inst14|l_ff[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|sht_reg_left\(19),
	datad => VCC,
	cin => \inst14|l_ff[4]~16\,
	combout => \inst14|l_ff[5]~17_combout\,
	cout => \inst14|l_ff[5]~18\);

-- Location: LCCOMB_X36_Y19_N22
\inst14|l_ff[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|l_ff[6]~19_combout\ = (\inst10|sht_reg_left\(20) & ((\inst14|l_ff[5]~18\) # (GND))) # (!\inst10|sht_reg_left\(20) & (!\inst14|l_ff[5]~18\))
-- \inst14|l_ff[6]~20\ = CARRY((\inst10|sht_reg_left\(20)) # (!\inst14|l_ff[5]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|sht_reg_left\(20),
	datad => VCC,
	cin => \inst14|l_ff[5]~18\,
	combout => \inst14|l_ff[6]~19_combout\,
	cout => \inst14|l_ff[6]~20\);

-- Location: LCCOMB_X36_Y19_N24
\inst14|l_ff[7]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|l_ff[7]~21_combout\ = (\inst10|sht_reg_left\(21) & (!\inst14|l_ff[6]~20\ & VCC)) # (!\inst10|sht_reg_left\(21) & (\inst14|l_ff[6]~20\ $ (GND)))
-- \inst14|l_ff[7]~22\ = CARRY((!\inst10|sht_reg_left\(21) & !\inst14|l_ff[6]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|sht_reg_left\(21),
	datad => VCC,
	cin => \inst14|l_ff[6]~20\,
	combout => \inst14|l_ff[7]~21_combout\,
	cout => \inst14|l_ff[7]~22\);

-- Location: LCCOMB_X36_Y19_N28
\inst14|l_ff[9]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|l_ff[9]~25_combout\ = \inst10|sht_reg_left\(23) $ (\inst14|l_ff[8]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|sht_reg_left\(23),
	cin => \inst14|l_ff[8]~24\,
	combout => \inst14|l_ff[9]~25_combout\);

-- Location: LCCOMB_X35_Y21_N20
\inst10|data_stb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|data_stb~2_combout\ = (!\inst10|Equal0~0_combout\ & (\inst7|lrck_reg~regout\ & (!\inst10|count\(2) & \inst10|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Equal0~0_combout\,
	datab => \inst7|lrck_reg~regout\,
	datac => \inst10|count\(2),
	datad => \inst10|process_1~0_combout\,
	combout => \inst10|data_stb~2_combout\);

-- Location: LCCOMB_X35_Y21_N10
\inst10|data_stb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|data_stb~3_combout\ = (\inst7|bclk_reg~regout\ & (!\inst10|bclk_prev~regout\ & ((\inst10|data_stb~regout\) # (\inst10|data_stb~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bclk_reg~regout\,
	datab => \inst10|data_stb~regout\,
	datac => \inst10|data_stb~2_combout\,
	datad => \inst10|bclk_prev~regout\,
	combout => \inst10|data_stb~3_combout\);

-- Location: LCCOMB_X34_Y19_N12
\inst10|data_stb~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|data_stb~feeder_combout\ = \inst10|data_stb~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|data_stb~3_combout\,
	combout => \inst10|data_stb~feeder_combout\);

-- Location: LCFF_X34_Y19_N13
\inst10|data_stb\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|data_stb~feeder_combout\,
	ena => \inst7|nrst_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|data_stb~regout\);

-- Location: LCCOMB_X35_Y19_N20
\inst14|d_en\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|d_en~combout\ = (!\inst14|stb_ff~regout\ & \inst10|data_stb~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|stb_ff~regout\,
	datad => \inst10|data_stb~regout\,
	combout => \inst14|d_en~combout\);

-- Location: LCFF_X36_Y19_N29
\inst14|l_ff[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst14|l_ff[9]~25_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst14|d_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|l_ff\(9));

-- Location: LCFF_X36_Y19_N25
\inst14|l_ff[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst14|l_ff[7]~21_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst14|d_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|l_ff\(7));

-- Location: LCFF_X36_Y19_N23
\inst14|l_ff[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst14|l_ff[6]~19_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst14|d_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|l_ff\(6));

-- Location: LCFF_X36_Y19_N21
\inst14|l_ff[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst14|l_ff[5]~17_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst14|d_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|l_ff\(5));

-- Location: LCFF_X36_Y19_N19
\inst14|l_ff[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst14|l_ff[4]~15_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst14|d_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|l_ff\(4));

-- Location: LCFF_X36_Y19_N17
\inst14|l_ff[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst14|l_ff[3]~13_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst14|d_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|l_ff\(3));

-- Location: LCFF_X35_Y19_N21
\inst14|l_ff[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst10|sht_reg_left\(14),
	aclr => \ALT_INV_KEY0~combout\,
	sload => VCC,
	ena => \inst14|d_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|l_ff\(0));

-- Location: LCCOMB_X37_Y17_N10
\inst2|r_data_latch_L[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_data_latch_L[1]~10_combout\ = (\inst14|l_ff\(1) & (!\inst14|l_ff\(0) & VCC)) # (!\inst14|l_ff\(1) & (\inst14|l_ff\(0) $ (GND)))
-- \inst2|r_data_latch_L[1]~11\ = CARRY((!\inst14|l_ff\(1) & !\inst14|l_ff\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|l_ff\(1),
	datab => \inst14|l_ff\(0),
	datad => VCC,
	combout => \inst2|r_data_latch_L[1]~10_combout\,
	cout => \inst2|r_data_latch_L[1]~11\);

-- Location: LCCOMB_X37_Y17_N12
\inst2|r_data_latch_L[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_data_latch_L[2]~12_combout\ = (\inst14|l_ff\(2) & ((\inst2|r_data_latch_L[1]~11\) # (GND))) # (!\inst14|l_ff\(2) & (!\inst2|r_data_latch_L[1]~11\))
-- \inst2|r_data_latch_L[2]~13\ = CARRY((\inst14|l_ff\(2)) # (!\inst2|r_data_latch_L[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|l_ff\(2),
	datad => VCC,
	cin => \inst2|r_data_latch_L[1]~11\,
	combout => \inst2|r_data_latch_L[2]~12_combout\,
	cout => \inst2|r_data_latch_L[2]~13\);

-- Location: LCCOMB_X37_Y17_N14
\inst2|r_data_latch_L[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_data_latch_L[3]~14_combout\ = (\inst14|l_ff\(3) & (!\inst2|r_data_latch_L[2]~13\ & VCC)) # (!\inst14|l_ff\(3) & (\inst2|r_data_latch_L[2]~13\ $ (GND)))
-- \inst2|r_data_latch_L[3]~15\ = CARRY((!\inst14|l_ff\(3) & !\inst2|r_data_latch_L[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|l_ff\(3),
	datad => VCC,
	cin => \inst2|r_data_latch_L[2]~13\,
	combout => \inst2|r_data_latch_L[3]~14_combout\,
	cout => \inst2|r_data_latch_L[3]~15\);

-- Location: LCCOMB_X37_Y17_N16
\inst2|r_data_latch_L[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_data_latch_L[4]~16_combout\ = (\inst14|l_ff\(4) & ((\inst2|r_data_latch_L[3]~15\) # (GND))) # (!\inst14|l_ff\(4) & (!\inst2|r_data_latch_L[3]~15\))
-- \inst2|r_data_latch_L[4]~17\ = CARRY((\inst14|l_ff\(4)) # (!\inst2|r_data_latch_L[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|l_ff\(4),
	datad => VCC,
	cin => \inst2|r_data_latch_L[3]~15\,
	combout => \inst2|r_data_latch_L[4]~16_combout\,
	cout => \inst2|r_data_latch_L[4]~17\);

-- Location: LCCOMB_X37_Y17_N18
\inst2|r_data_latch_L[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_data_latch_L[5]~18_combout\ = (\inst14|l_ff\(5) & (!\inst2|r_data_latch_L[4]~17\ & VCC)) # (!\inst14|l_ff\(5) & (\inst2|r_data_latch_L[4]~17\ $ (GND)))
-- \inst2|r_data_latch_L[5]~19\ = CARRY((!\inst14|l_ff\(5) & !\inst2|r_data_latch_L[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|l_ff\(5),
	datad => VCC,
	cin => \inst2|r_data_latch_L[4]~17\,
	combout => \inst2|r_data_latch_L[5]~18_combout\,
	cout => \inst2|r_data_latch_L[5]~19\);

-- Location: LCCOMB_X37_Y17_N20
\inst2|r_data_latch_L[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_data_latch_L[6]~20_combout\ = (\inst14|l_ff\(6) & ((\inst2|r_data_latch_L[5]~19\) # (GND))) # (!\inst14|l_ff\(6) & (!\inst2|r_data_latch_L[5]~19\))
-- \inst2|r_data_latch_L[6]~21\ = CARRY((\inst14|l_ff\(6)) # (!\inst2|r_data_latch_L[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|l_ff\(6),
	datad => VCC,
	cin => \inst2|r_data_latch_L[5]~19\,
	combout => \inst2|r_data_latch_L[6]~20_combout\,
	cout => \inst2|r_data_latch_L[6]~21\);

-- Location: LCCOMB_X37_Y17_N22
\inst2|r_data_latch_L[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_data_latch_L[7]~22_combout\ = (\inst14|l_ff\(7) & (!\inst2|r_data_latch_L[6]~21\ & VCC)) # (!\inst14|l_ff\(7) & (\inst2|r_data_latch_L[6]~21\ $ (GND)))
-- \inst2|r_data_latch_L[7]~23\ = CARRY((!\inst14|l_ff\(7) & !\inst2|r_data_latch_L[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|l_ff\(7),
	datad => VCC,
	cin => \inst2|r_data_latch_L[6]~21\,
	combout => \inst2|r_data_latch_L[7]~22_combout\,
	cout => \inst2|r_data_latch_L[7]~23\);

-- Location: LCCOMB_X37_Y17_N24
\inst2|r_data_latch_L[8]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_data_latch_L[8]~24_combout\ = (\inst14|l_ff\(8) & ((\inst2|r_data_latch_L[7]~23\) # (GND))) # (!\inst14|l_ff\(8) & (!\inst2|r_data_latch_L[7]~23\))
-- \inst2|r_data_latch_L[8]~25\ = CARRY((\inst14|l_ff\(8)) # (!\inst2|r_data_latch_L[7]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|l_ff\(8),
	datad => VCC,
	cin => \inst2|r_data_latch_L[7]~23\,
	combout => \inst2|r_data_latch_L[8]~24_combout\,
	cout => \inst2|r_data_latch_L[8]~25\);

-- Location: LCCOMB_X37_Y17_N26
\inst2|r_data_latch_L[9]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_data_latch_L[9]~26_combout\ = (\inst14|l_ff\(9) & (!\inst2|r_data_latch_L[8]~25\ & VCC)) # (!\inst14|l_ff\(9) & (\inst2|r_data_latch_L[8]~25\ $ (GND)))
-- \inst2|r_data_latch_L[9]~27\ = CARRY((!\inst14|l_ff\(9) & !\inst2|r_data_latch_L[8]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|l_ff\(9),
	datad => VCC,
	cin => \inst2|r_data_latch_L[8]~25\,
	combout => \inst2|r_data_latch_L[9]~26_combout\,
	cout => \inst2|r_data_latch_L[9]~27\);

-- Location: LCCOMB_X37_Y17_N28
\inst2|r_data_latch_L[10]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_data_latch_L[10]~28_combout\ = \inst2|r_data_latch_L[9]~27\ $ (!\inst14|l_ff\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst14|l_ff\(9),
	cin => \inst2|r_data_latch_L[9]~27\,
	combout => \inst2|r_data_latch_L[10]~28_combout\);

-- Location: LCFF_X37_Y17_N29
\inst2|r_data_latch_L[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|lrck_reg~clkctrl_outclk\,
	datain => \inst2|r_data_latch_L[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_data_latch_L\(10));

-- Location: LCCOMB_X36_Y17_N22
\inst2|r_next_L[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_next_L[10]~feeder_combout\ = \inst2|r_data_latch_L\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|r_data_latch_L\(10),
	combout => \inst2|r_next_L[10]~feeder_combout\);

-- Location: LCCOMB_X37_Y17_N30
\inst2|r_new_sample_toggle~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_new_sample_toggle~0_combout\ = !\inst2|r_new_sample_toggle~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|r_new_sample_toggle~regout\,
	combout => \inst2|r_new_sample_toggle~0_combout\);

-- Location: LCFF_X37_Y17_N31
\inst2|r_new_sample_toggle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|lrck_reg~clkctrl_outclk\,
	datain => \inst2|r_new_sample_toggle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_new_sample_toggle~regout\);

-- Location: LCCOMB_X36_Y17_N0
\inst2|r_toggle_sync1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_toggle_sync1~feeder_combout\ = \inst2|r_new_sample_toggle~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|r_new_sample_toggle~regout\,
	combout => \inst2|r_toggle_sync1~feeder_combout\);

-- Location: LCFF_X36_Y17_N1
\inst2|r_toggle_sync1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_toggle_sync1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_toggle_sync1~regout\);

-- Location: LCCOMB_X36_Y17_N26
\inst2|r_toggle_sync2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_toggle_sync2~feeder_combout\ = \inst2|r_toggle_sync1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|r_toggle_sync1~regout\,
	combout => \inst2|r_toggle_sync2~feeder_combout\);

-- Location: LCFF_X36_Y17_N27
\inst2|r_toggle_sync2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_toggle_sync2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_toggle_sync2~regout\);

-- Location: LCFF_X36_Y17_N5
\inst2|r_toggle_last\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_toggle_sync2~regout\,
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_toggle_last~regout\);

-- Location: LCCOMB_X36_Y17_N4
\inst2|process_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|process_1~0_combout\ = \inst2|r_toggle_last~regout\ $ (\inst2|r_toggle_sync2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|r_toggle_last~regout\,
	datad => \inst2|r_toggle_sync2~regout\,
	combout => \inst2|process_1~0_combout\);

-- Location: LCFF_X36_Y17_N23
\inst2|r_next_L[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_next_L[10]~feeder_combout\,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_next_L\(10));

-- Location: LCFF_X38_Y17_N29
\inst2|r_curr_L[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_next_L\(10),
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_curr_L\(10));

-- Location: LCCOMB_X38_Y17_N4
\inst2|r_data_latch_L[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_data_latch_L[0]~feeder_combout\ = \inst14|l_ff\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|l_ff\(0),
	combout => \inst2|r_data_latch_L[0]~feeder_combout\);

-- Location: LCFF_X38_Y17_N5
\inst2|r_data_latch_L[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|lrck_reg~clkctrl_outclk\,
	datain => \inst2|r_data_latch_L[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_data_latch_L\(0));

-- Location: LCFF_X38_Y17_N25
\inst2|r_next_L[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_data_latch_L\(0),
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_next_L\(0));

-- Location: LCCOMB_X38_Y17_N8
\inst2|r_diff_L[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_diff_L[0]~12_combout\ = (\inst2|r_curr_L\(0) & (\inst2|r_next_L\(0) $ (VCC))) # (!\inst2|r_curr_L\(0) & ((\inst2|r_next_L\(0)) # (GND)))
-- \inst2|r_diff_L[0]~13\ = CARRY((\inst2|r_next_L\(0)) # (!\inst2|r_curr_L\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_curr_L\(0),
	datab => \inst2|r_next_L\(0),
	datad => VCC,
	combout => \inst2|r_diff_L[0]~12_combout\,
	cout => \inst2|r_diff_L[0]~13\);

-- Location: LCCOMB_X38_Y17_N0
\inst2|r_data_latch_L[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_data_latch_L[1]~feeder_combout\ = \inst2|r_data_latch_L[1]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|r_data_latch_L[1]~10_combout\,
	combout => \inst2|r_data_latch_L[1]~feeder_combout\);

-- Location: LCFF_X38_Y17_N1
\inst2|r_data_latch_L[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|lrck_reg~clkctrl_outclk\,
	datain => \inst2|r_data_latch_L[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_data_latch_L\(1));

-- Location: LCCOMB_X38_Y17_N2
\inst2|r_next_L[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_next_L[1]~feeder_combout\ = \inst2|r_data_latch_L\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|r_data_latch_L\(1),
	combout => \inst2|r_next_L[1]~feeder_combout\);

-- Location: LCFF_X38_Y17_N3
\inst2|r_next_L[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_next_L[1]~feeder_combout\,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_next_L\(1));

-- Location: LCCOMB_X38_Y17_N10
\inst2|r_diff_L[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_diff_L[1]~14_combout\ = (\inst2|r_curr_L\(1) & ((\inst2|r_next_L\(1) & (!\inst2|r_diff_L[0]~13\)) # (!\inst2|r_next_L\(1) & ((\inst2|r_diff_L[0]~13\) # (GND))))) # (!\inst2|r_curr_L\(1) & ((\inst2|r_next_L\(1) & (\inst2|r_diff_L[0]~13\ & VCC)) # 
-- (!\inst2|r_next_L\(1) & (!\inst2|r_diff_L[0]~13\))))
-- \inst2|r_diff_L[1]~15\ = CARRY((\inst2|r_curr_L\(1) & ((!\inst2|r_diff_L[0]~13\) # (!\inst2|r_next_L\(1)))) # (!\inst2|r_curr_L\(1) & (!\inst2|r_next_L\(1) & !\inst2|r_diff_L[0]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_curr_L\(1),
	datab => \inst2|r_next_L\(1),
	datad => VCC,
	cin => \inst2|r_diff_L[0]~13\,
	combout => \inst2|r_diff_L[1]~14_combout\,
	cout => \inst2|r_diff_L[1]~15\);

-- Location: LCFF_X37_Y17_N13
\inst2|r_data_latch_L[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|lrck_reg~clkctrl_outclk\,
	datain => \inst2|r_data_latch_L[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_data_latch_L\(2));

-- Location: LCCOMB_X37_Y17_N6
\inst2|r_next_L[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_next_L[2]~feeder_combout\ = \inst2|r_data_latch_L\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|r_data_latch_L\(2),
	combout => \inst2|r_next_L[2]~feeder_combout\);

-- Location: LCFF_X37_Y17_N7
\inst2|r_next_L[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_next_L[2]~feeder_combout\,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_next_L\(2));

-- Location: LCCOMB_X38_Y17_N12
\inst2|r_diff_L[2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_diff_L[2]~16_combout\ = ((\inst2|r_curr_L\(2) $ (\inst2|r_next_L\(2) $ (\inst2|r_diff_L[1]~15\)))) # (GND)
-- \inst2|r_diff_L[2]~17\ = CARRY((\inst2|r_curr_L\(2) & (\inst2|r_next_L\(2) & !\inst2|r_diff_L[1]~15\)) # (!\inst2|r_curr_L\(2) & ((\inst2|r_next_L\(2)) # (!\inst2|r_diff_L[1]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_curr_L\(2),
	datab => \inst2|r_next_L\(2),
	datad => VCC,
	cin => \inst2|r_diff_L[1]~15\,
	combout => \inst2|r_diff_L[2]~16_combout\,
	cout => \inst2|r_diff_L[2]~17\);

-- Location: LCCOMB_X38_Y17_N6
\inst2|r_data_latch_L[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_data_latch_L[3]~feeder_combout\ = \inst2|r_data_latch_L[3]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|r_data_latch_L[3]~14_combout\,
	combout => \inst2|r_data_latch_L[3]~feeder_combout\);

-- Location: LCFF_X38_Y17_N7
\inst2|r_data_latch_L[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|lrck_reg~clkctrl_outclk\,
	datain => \inst2|r_data_latch_L[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_data_latch_L\(3));

-- Location: LCFF_X38_Y17_N31
\inst2|r_next_L[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_data_latch_L\(3),
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_next_L\(3));

-- Location: LCFF_X38_Y17_N15
\inst2|r_curr_L[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_next_L\(3),
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_curr_L\(3));

-- Location: LCCOMB_X38_Y17_N14
\inst2|r_diff_L[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_diff_L[3]~18_combout\ = (\inst2|r_next_L\(3) & ((\inst2|r_curr_L\(3) & (!\inst2|r_diff_L[2]~17\)) # (!\inst2|r_curr_L\(3) & (\inst2|r_diff_L[2]~17\ & VCC)))) # (!\inst2|r_next_L\(3) & ((\inst2|r_curr_L\(3) & ((\inst2|r_diff_L[2]~17\) # (GND))) # 
-- (!\inst2|r_curr_L\(3) & (!\inst2|r_diff_L[2]~17\))))
-- \inst2|r_diff_L[3]~19\ = CARRY((\inst2|r_next_L\(3) & (\inst2|r_curr_L\(3) & !\inst2|r_diff_L[2]~17\)) # (!\inst2|r_next_L\(3) & ((\inst2|r_curr_L\(3)) # (!\inst2|r_diff_L[2]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_next_L\(3),
	datab => \inst2|r_curr_L\(3),
	datad => VCC,
	cin => \inst2|r_diff_L[2]~17\,
	combout => \inst2|r_diff_L[3]~18_combout\,
	cout => \inst2|r_diff_L[3]~19\);

-- Location: LCFF_X37_Y17_N17
\inst2|r_data_latch_L[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|lrck_reg~clkctrl_outclk\,
	datain => \inst2|r_data_latch_L[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_data_latch_L\(4));

-- Location: LCFF_X37_Y17_N5
\inst2|r_next_L[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_data_latch_L\(4),
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_next_L\(4));

-- Location: LCCOMB_X38_Y17_N16
\inst2|r_diff_L[4]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_diff_L[4]~20_combout\ = ((\inst2|r_curr_L\(4) $ (\inst2|r_next_L\(4) $ (\inst2|r_diff_L[3]~19\)))) # (GND)
-- \inst2|r_diff_L[4]~21\ = CARRY((\inst2|r_curr_L\(4) & (\inst2|r_next_L\(4) & !\inst2|r_diff_L[3]~19\)) # (!\inst2|r_curr_L\(4) & ((\inst2|r_next_L\(4)) # (!\inst2|r_diff_L[3]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_curr_L\(4),
	datab => \inst2|r_next_L\(4),
	datad => VCC,
	cin => \inst2|r_diff_L[3]~19\,
	combout => \inst2|r_diff_L[4]~20_combout\,
	cout => \inst2|r_diff_L[4]~21\);

-- Location: LCFF_X37_Y17_N19
\inst2|r_data_latch_L[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|lrck_reg~clkctrl_outclk\,
	datain => \inst2|r_data_latch_L[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_data_latch_L\(5));

-- Location: LCFF_X37_Y17_N11
\inst2|r_next_L[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_data_latch_L\(5),
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_next_L\(5));

-- Location: LCCOMB_X38_Y17_N18
\inst2|r_diff_L[5]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_diff_L[5]~22_combout\ = (\inst2|r_curr_L\(5) & ((\inst2|r_next_L\(5) & (!\inst2|r_diff_L[4]~21\)) # (!\inst2|r_next_L\(5) & ((\inst2|r_diff_L[4]~21\) # (GND))))) # (!\inst2|r_curr_L\(5) & ((\inst2|r_next_L\(5) & (\inst2|r_diff_L[4]~21\ & VCC)) # 
-- (!\inst2|r_next_L\(5) & (!\inst2|r_diff_L[4]~21\))))
-- \inst2|r_diff_L[5]~23\ = CARRY((\inst2|r_curr_L\(5) & ((!\inst2|r_diff_L[4]~21\) # (!\inst2|r_next_L\(5)))) # (!\inst2|r_curr_L\(5) & (!\inst2|r_next_L\(5) & !\inst2|r_diff_L[4]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_curr_L\(5),
	datab => \inst2|r_next_L\(5),
	datad => VCC,
	cin => \inst2|r_diff_L[4]~21\,
	combout => \inst2|r_diff_L[5]~22_combout\,
	cout => \inst2|r_diff_L[5]~23\);

-- Location: LCFF_X37_Y17_N21
\inst2|r_data_latch_L[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|lrck_reg~clkctrl_outclk\,
	datain => \inst2|r_data_latch_L[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_data_latch_L\(6));

-- Location: LCFF_X37_Y17_N3
\inst2|r_next_L[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_data_latch_L\(6),
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_next_L\(6));

-- Location: LCCOMB_X37_Y17_N8
\inst2|r_curr_L[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_curr_L[6]~feeder_combout\ = \inst2|r_next_L\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|r_next_L\(6),
	combout => \inst2|r_curr_L[6]~feeder_combout\);

-- Location: LCFF_X37_Y17_N9
\inst2|r_curr_L[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_curr_L[6]~feeder_combout\,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_curr_L\(6));

-- Location: LCCOMB_X38_Y17_N20
\inst2|r_diff_L[6]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_diff_L[6]~24_combout\ = ((\inst2|r_next_L\(6) $ (\inst2|r_curr_L\(6) $ (\inst2|r_diff_L[5]~23\)))) # (GND)
-- \inst2|r_diff_L[6]~25\ = CARRY((\inst2|r_next_L\(6) & ((!\inst2|r_diff_L[5]~23\) # (!\inst2|r_curr_L\(6)))) # (!\inst2|r_next_L\(6) & (!\inst2|r_curr_L\(6) & !\inst2|r_diff_L[5]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_next_L\(6),
	datab => \inst2|r_curr_L\(6),
	datad => VCC,
	cin => \inst2|r_diff_L[5]~23\,
	combout => \inst2|r_diff_L[6]~24_combout\,
	cout => \inst2|r_diff_L[6]~25\);

-- Location: LCFF_X37_Y17_N23
\inst2|r_data_latch_L[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|lrck_reg~clkctrl_outclk\,
	datain => \inst2|r_data_latch_L[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_data_latch_L\(7));

-- Location: LCCOMB_X37_Y17_N0
\inst2|r_next_L[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_next_L[7]~feeder_combout\ = \inst2|r_data_latch_L\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|r_data_latch_L\(7),
	combout => \inst2|r_next_L[7]~feeder_combout\);

-- Location: LCFF_X37_Y17_N1
\inst2|r_next_L[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_next_L[7]~feeder_combout\,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_next_L\(7));

-- Location: LCFF_X38_Y17_N23
\inst2|r_curr_L[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_next_L\(7),
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_curr_L\(7));

-- Location: LCCOMB_X38_Y17_N22
\inst2|r_diff_L[7]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_diff_L[7]~26_combout\ = (\inst2|r_next_L\(7) & ((\inst2|r_curr_L\(7) & (!\inst2|r_diff_L[6]~25\)) # (!\inst2|r_curr_L\(7) & (\inst2|r_diff_L[6]~25\ & VCC)))) # (!\inst2|r_next_L\(7) & ((\inst2|r_curr_L\(7) & ((\inst2|r_diff_L[6]~25\) # (GND))) # 
-- (!\inst2|r_curr_L\(7) & (!\inst2|r_diff_L[6]~25\))))
-- \inst2|r_diff_L[7]~27\ = CARRY((\inst2|r_next_L\(7) & (\inst2|r_curr_L\(7) & !\inst2|r_diff_L[6]~25\)) # (!\inst2|r_next_L\(7) & ((\inst2|r_curr_L\(7)) # (!\inst2|r_diff_L[6]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_next_L\(7),
	datab => \inst2|r_curr_L\(7),
	datad => VCC,
	cin => \inst2|r_diff_L[6]~25\,
	combout => \inst2|r_diff_L[7]~26_combout\,
	cout => \inst2|r_diff_L[7]~27\);

-- Location: LCFF_X37_Y17_N25
\inst2|r_data_latch_L[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|lrck_reg~clkctrl_outclk\,
	datain => \inst2|r_data_latch_L[8]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_data_latch_L\(8));

-- Location: LCFF_X37_Y17_N15
\inst2|r_next_L[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_data_latch_L\(8),
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_next_L\(8));

-- Location: LCCOMB_X38_Y17_N24
\inst2|r_diff_L[8]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_diff_L[8]~28_combout\ = ((\inst2|r_curr_L\(8) $ (\inst2|r_next_L\(8) $ (\inst2|r_diff_L[7]~27\)))) # (GND)
-- \inst2|r_diff_L[8]~29\ = CARRY((\inst2|r_curr_L\(8) & (\inst2|r_next_L\(8) & !\inst2|r_diff_L[7]~27\)) # (!\inst2|r_curr_L\(8) & ((\inst2|r_next_L\(8)) # (!\inst2|r_diff_L[7]~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_curr_L\(8),
	datab => \inst2|r_next_L\(8),
	datad => VCC,
	cin => \inst2|r_diff_L[7]~27\,
	combout => \inst2|r_diff_L[8]~28_combout\,
	cout => \inst2|r_diff_L[8]~29\);

-- Location: LCFF_X37_Y17_N27
\inst2|r_data_latch_L[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|lrck_reg~clkctrl_outclk\,
	datain => \inst2|r_data_latch_L[9]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_data_latch_L\(9));

-- Location: LCFF_X36_Y17_N29
\inst2|r_next_L[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_data_latch_L\(9),
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_next_L\(9));

-- Location: LCFF_X38_Y17_N27
\inst2|r_curr_L[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_next_L\(9),
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_curr_L\(9));

-- Location: LCCOMB_X38_Y17_N26
\inst2|r_diff_L[9]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_diff_L[9]~30_combout\ = (\inst2|r_next_L\(9) & ((\inst2|r_curr_L\(9) & (!\inst2|r_diff_L[8]~29\)) # (!\inst2|r_curr_L\(9) & (\inst2|r_diff_L[8]~29\ & VCC)))) # (!\inst2|r_next_L\(9) & ((\inst2|r_curr_L\(9) & ((\inst2|r_diff_L[8]~29\) # (GND))) # 
-- (!\inst2|r_curr_L\(9) & (!\inst2|r_diff_L[8]~29\))))
-- \inst2|r_diff_L[9]~31\ = CARRY((\inst2|r_next_L\(9) & (\inst2|r_curr_L\(9) & !\inst2|r_diff_L[8]~29\)) # (!\inst2|r_next_L\(9) & ((\inst2|r_curr_L\(9)) # (!\inst2|r_diff_L[8]~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_next_L\(9),
	datab => \inst2|r_curr_L\(9),
	datad => VCC,
	cin => \inst2|r_diff_L[8]~29\,
	combout => \inst2|r_diff_L[9]~30_combout\,
	cout => \inst2|r_diff_L[9]~31\);

-- Location: LCCOMB_X38_Y17_N28
\inst2|r_diff_L[10]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_diff_L[10]~32_combout\ = ((\inst2|r_next_L\(10) $ (\inst2|r_curr_L\(10) $ (\inst2|r_diff_L[9]~31\)))) # (GND)
-- \inst2|r_diff_L[10]~33\ = CARRY((\inst2|r_next_L\(10) & ((!\inst2|r_diff_L[9]~31\) # (!\inst2|r_curr_L\(10)))) # (!\inst2|r_next_L\(10) & (!\inst2|r_curr_L\(10) & !\inst2|r_diff_L[9]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_next_L\(10),
	datab => \inst2|r_curr_L\(10),
	datad => VCC,
	cin => \inst2|r_diff_L[9]~31\,
	combout => \inst2|r_diff_L[10]~32_combout\,
	cout => \inst2|r_diff_L[10]~33\);

-- Location: LCCOMB_X38_Y17_N30
\inst2|r_diff_L[11]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_diff_L[11]~34_combout\ = \inst2|r_next_L\(10) $ (\inst2|r_diff_L[10]~33\ $ (!\inst2|r_curr_L\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_next_L\(10),
	datad => \inst2|r_curr_L\(10),
	cin => \inst2|r_diff_L[10]~33\,
	combout => \inst2|r_diff_L[11]~34_combout\);

-- Location: LCCOMB_X37_Y18_N28
\inst2|r_timer[0]~_Duplicate_2feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_timer[0]~_Duplicate_2feeder_combout\ = \inst2|r_timer[0]~SCLR_LUT_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|r_timer[0]~SCLR_LUT_combout\,
	combout => \inst2|r_timer[0]~_Duplicate_2feeder_combout\);

-- Location: LCFF_X37_Y18_N29
\inst2|r_timer[0]~_Duplicate_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_timer[0]~_Duplicate_2feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_timer[0]~_Duplicate_2_regout\);

-- Location: LCCOMB_X36_Y18_N10
\inst2|r_timer[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_timer[0]~10_combout\ = (\inst2|LessThan0~2_combout\ & (\inst2|r_timer[0]~_Duplicate_2_regout\ $ (VCC))) # (!\inst2|LessThan0~2_combout\ & (\inst2|r_timer[0]~_Duplicate_2_regout\ & VCC))
-- \inst2|r_timer[0]~11\ = CARRY((\inst2|LessThan0~2_combout\ & \inst2|r_timer[0]~_Duplicate_2_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan0~2_combout\,
	datab => \inst2|r_timer[0]~_Duplicate_2_regout\,
	datad => VCC,
	combout => \inst2|r_timer[0]~10_combout\,
	cout => \inst2|r_timer[0]~11\);

-- Location: LCCOMB_X37_Y18_N18
\inst2|r_timer[0]~SCLR_LUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_timer[0]~SCLR_LUT_combout\ = (!\inst2|process_1~0_combout\ & \inst2|r_timer[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_1~0_combout\,
	datad => \inst2|r_timer[0]~10_combout\,
	combout => \inst2|r_timer[0]~SCLR_LUT_combout\);

-- Location: LCFF_X36_Y18_N27
\inst2|r_timer[1]~_Duplicate_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_timer[1]~SCLR_LUT_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_timer[1]~_Duplicate_2_regout\);

-- Location: LCCOMB_X36_Y18_N12
\inst2|r_timer[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_timer[1]~12_combout\ = (\inst2|r_timer[1]~_Duplicate_2_regout\ & (!\inst2|r_timer[0]~11\)) # (!\inst2|r_timer[1]~_Duplicate_2_regout\ & ((\inst2|r_timer[0]~11\) # (GND)))
-- \inst2|r_timer[1]~13\ = CARRY((!\inst2|r_timer[0]~11\) # (!\inst2|r_timer[1]~_Duplicate_2_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|r_timer[1]~_Duplicate_2_regout\,
	datad => VCC,
	cin => \inst2|r_timer[0]~11\,
	combout => \inst2|r_timer[1]~12_combout\,
	cout => \inst2|r_timer[1]~13\);

-- Location: LCCOMB_X36_Y18_N30
\inst2|r_timer[1]~SCLR_LUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_timer[1]~SCLR_LUT_combout\ = (!\inst2|process_1~0_combout\ & \inst2|r_timer[1]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|process_1~0_combout\,
	datad => \inst2|r_timer[1]~12_combout\,
	combout => \inst2|r_timer[1]~SCLR_LUT_combout\);

-- Location: LCFF_X37_Y18_N15
\inst2|r_timer[2]~_Duplicate_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_timer[2]~SCLR_LUT_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_timer[2]~_Duplicate_2_regout\);

-- Location: LCCOMB_X36_Y18_N14
\inst2|r_timer[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_timer[2]~14_combout\ = (\inst2|r_timer[2]~_Duplicate_2_regout\ & (\inst2|r_timer[1]~13\ $ (GND))) # (!\inst2|r_timer[2]~_Duplicate_2_regout\ & (!\inst2|r_timer[1]~13\ & VCC))
-- \inst2|r_timer[2]~15\ = CARRY((\inst2|r_timer[2]~_Duplicate_2_regout\ & !\inst2|r_timer[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|r_timer[2]~_Duplicate_2_regout\,
	datad => VCC,
	cin => \inst2|r_timer[1]~13\,
	combout => \inst2|r_timer[2]~14_combout\,
	cout => \inst2|r_timer[2]~15\);

-- Location: LCCOMB_X37_Y18_N16
\inst2|r_timer[2]~SCLR_LUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_timer[2]~SCLR_LUT_combout\ = (!\inst2|process_1~0_combout\ & \inst2|r_timer[2]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_1~0_combout\,
	datad => \inst2|r_timer[2]~14_combout\,
	combout => \inst2|r_timer[2]~SCLR_LUT_combout\);

-- Location: LCFF_X36_Y18_N17
\inst2|r_timer[3]~_Duplicate_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_timer[3]~SCLR_LUT_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_timer[3]~_Duplicate_2_regout\);

-- Location: LCCOMB_X36_Y18_N16
\inst2|r_timer[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_timer[3]~16_combout\ = (\inst2|r_timer[3]~_Duplicate_2_regout\ & (!\inst2|r_timer[2]~15\)) # (!\inst2|r_timer[3]~_Duplicate_2_regout\ & ((\inst2|r_timer[2]~15\) # (GND)))
-- \inst2|r_timer[3]~17\ = CARRY((!\inst2|r_timer[2]~15\) # (!\inst2|r_timer[3]~_Duplicate_2_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|r_timer[3]~_Duplicate_2_regout\,
	datad => VCC,
	cin => \inst2|r_timer[2]~15\,
	combout => \inst2|r_timer[3]~16_combout\,
	cout => \inst2|r_timer[3]~17\);

-- Location: LCCOMB_X36_Y18_N4
\inst2|r_timer[3]~SCLR_LUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_timer[3]~SCLR_LUT_combout\ = (\inst2|r_timer[3]~16_combout\ & !\inst2|process_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|r_timer[3]~16_combout\,
	datad => \inst2|process_1~0_combout\,
	combout => \inst2|r_timer[3]~SCLR_LUT_combout\);

-- Location: LCCOMB_X36_Y18_N18
\inst2|r_timer[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_timer[4]~18_combout\ = (\inst2|r_timer[4]~_Duplicate_2_regout\ & (\inst2|r_timer[3]~17\ $ (GND))) # (!\inst2|r_timer[4]~_Duplicate_2_regout\ & (!\inst2|r_timer[3]~17\ & VCC))
-- \inst2|r_timer[4]~19\ = CARRY((\inst2|r_timer[4]~_Duplicate_2_regout\ & !\inst2|r_timer[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_timer[4]~_Duplicate_2_regout\,
	datad => VCC,
	cin => \inst2|r_timer[3]~17\,
	combout => \inst2|r_timer[4]~18_combout\,
	cout => \inst2|r_timer[4]~19\);

-- Location: LCCOMB_X37_Y18_N22
\inst2|r_timer[4]~SCLR_LUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_timer[4]~SCLR_LUT_combout\ = (!\inst2|process_1~0_combout\ & \inst2|r_timer[4]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_1~0_combout\,
	datad => \inst2|r_timer[4]~18_combout\,
	combout => \inst2|r_timer[4]~SCLR_LUT_combout\);

-- Location: LCFF_X37_Y18_N31
\inst2|r_timer[5]~_Duplicate_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_timer[5]~SCLR_LUT_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_timer[5]~_Duplicate_2_regout\);

-- Location: LCCOMB_X36_Y18_N20
\inst2|r_timer[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_timer[5]~20_combout\ = (\inst2|r_timer[5]~_Duplicate_2_regout\ & (!\inst2|r_timer[4]~19\)) # (!\inst2|r_timer[5]~_Duplicate_2_regout\ & ((\inst2|r_timer[4]~19\) # (GND)))
-- \inst2|r_timer[5]~21\ = CARRY((!\inst2|r_timer[4]~19\) # (!\inst2|r_timer[5]~_Duplicate_2_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|r_timer[5]~_Duplicate_2_regout\,
	datad => VCC,
	cin => \inst2|r_timer[4]~19\,
	combout => \inst2|r_timer[5]~20_combout\,
	cout => \inst2|r_timer[5]~21\);

-- Location: LCCOMB_X37_Y18_N8
\inst2|r_timer[5]~SCLR_LUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_timer[5]~SCLR_LUT_combout\ = (\inst2|r_timer[5]~20_combout\ & !\inst2|process_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|r_timer[5]~20_combout\,
	datad => \inst2|process_1~0_combout\,
	combout => \inst2|r_timer[5]~SCLR_LUT_combout\);

-- Location: LCCOMB_X37_Y18_N24
\inst2|r_timer[6]~_Duplicate_2feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_timer[6]~_Duplicate_2feeder_combout\ = \inst2|r_timer[6]~SCLR_LUT_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|r_timer[6]~SCLR_LUT_combout\,
	combout => \inst2|r_timer[6]~_Duplicate_2feeder_combout\);

-- Location: LCFF_X37_Y18_N25
\inst2|r_timer[6]~_Duplicate_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_timer[6]~_Duplicate_2feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_timer[6]~_Duplicate_2_regout\);

-- Location: LCCOMB_X36_Y18_N22
\inst2|r_timer[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_timer[6]~22_combout\ = (\inst2|r_timer[6]~_Duplicate_2_regout\ & (\inst2|r_timer[5]~21\ $ (GND))) # (!\inst2|r_timer[6]~_Duplicate_2_regout\ & (!\inst2|r_timer[5]~21\ & VCC))
-- \inst2|r_timer[6]~23\ = CARRY((\inst2|r_timer[6]~_Duplicate_2_regout\ & !\inst2|r_timer[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|r_timer[6]~_Duplicate_2_regout\,
	datad => VCC,
	cin => \inst2|r_timer[5]~21\,
	combout => \inst2|r_timer[6]~22_combout\,
	cout => \inst2|r_timer[6]~23\);

-- Location: LCCOMB_X37_Y18_N10
\inst2|r_timer[6]~SCLR_LUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_timer[6]~SCLR_LUT_combout\ = (!\inst2|process_1~0_combout\ & \inst2|r_timer[6]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_1~0_combout\,
	datad => \inst2|r_timer[6]~22_combout\,
	combout => \inst2|r_timer[6]~SCLR_LUT_combout\);

-- Location: LCFF_X36_Y18_N19
\inst2|r_timer[7]~_Duplicate_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_timer[7]~SCLR_LUT_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_timer[7]~_Duplicate_2_regout\);

-- Location: LCCOMB_X36_Y18_N24
\inst2|r_timer[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_timer[7]~24_combout\ = (\inst2|r_timer[7]~_Duplicate_2_regout\ & (!\inst2|r_timer[6]~23\)) # (!\inst2|r_timer[7]~_Duplicate_2_regout\ & ((\inst2|r_timer[6]~23\) # (GND)))
-- \inst2|r_timer[7]~25\ = CARRY((!\inst2|r_timer[6]~23\) # (!\inst2|r_timer[7]~_Duplicate_2_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|r_timer[7]~_Duplicate_2_regout\,
	datad => VCC,
	cin => \inst2|r_timer[6]~23\,
	combout => \inst2|r_timer[7]~24_combout\,
	cout => \inst2|r_timer[7]~25\);

-- Location: LCCOMB_X36_Y18_N2
\inst2|r_timer[7]~SCLR_LUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_timer[7]~SCLR_LUT_combout\ = (\inst2|r_timer[7]~24_combout\ & !\inst2|process_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|r_timer[7]~24_combout\,
	datad => \inst2|process_1~0_combout\,
	combout => \inst2|r_timer[7]~SCLR_LUT_combout\);

-- Location: LCCOMB_X36_Y18_N26
\inst2|r_timer[8]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_timer[8]~26_combout\ = (\inst2|r_timer[8]~_Duplicate_2_regout\ & (\inst2|r_timer[7]~25\ $ (GND))) # (!\inst2|r_timer[8]~_Duplicate_2_regout\ & (!\inst2|r_timer[7]~25\ & VCC))
-- \inst2|r_timer[8]~27\ = CARRY((\inst2|r_timer[8]~_Duplicate_2_regout\ & !\inst2|r_timer[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_timer[8]~_Duplicate_2_regout\,
	datad => VCC,
	cin => \inst2|r_timer[7]~25\,
	combout => \inst2|r_timer[8]~26_combout\,
	cout => \inst2|r_timer[8]~27\);

-- Location: LCCOMB_X37_Y18_N12
\inst2|r_timer[8]~SCLR_LUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_timer[8]~SCLR_LUT_combout\ = (!\inst2|process_1~0_combout\ & \inst2|r_timer[8]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_1~0_combout\,
	datad => \inst2|r_timer[8]~26_combout\,
	combout => \inst2|r_timer[8]~SCLR_LUT_combout\);

-- Location: LCCOMB_X37_Y18_N0
\inst2|r_timer[9]~_Duplicate_2feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_timer[9]~_Duplicate_2feeder_combout\ = \inst2|r_timer[9]~SCLR_LUT_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|r_timer[9]~SCLR_LUT_combout\,
	combout => \inst2|r_timer[9]~_Duplicate_2feeder_combout\);

-- Location: LCFF_X37_Y18_N1
\inst2|r_timer[9]~_Duplicate_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_timer[9]~_Duplicate_2feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_timer[9]~_Duplicate_2_regout\);

-- Location: LCCOMB_X36_Y18_N28
\inst2|r_timer[9]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_timer[9]~28_combout\ = \inst2|r_timer[9]~_Duplicate_2_regout\ $ (\inst2|r_timer[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|r_timer[9]~_Duplicate_2_regout\,
	cin => \inst2|r_timer[8]~27\,
	combout => \inst2|r_timer[9]~28_combout\);

-- Location: LCCOMB_X37_Y18_N2
\inst2|r_timer[9]~SCLR_LUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_timer[9]~SCLR_LUT_combout\ = (!\inst2|process_1~0_combout\ & \inst2|r_timer[9]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_1~0_combout\,
	datad => \inst2|r_timer[9]~28_combout\,
	combout => \inst2|r_timer[9]~SCLR_LUT_combout\);

-- Location: DSPMULT_X39_Y18_N0
\inst2|Mult0|auto_generated|mac_mult1\ : cycloneii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \CLK_50~clkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \inst2|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \inst2|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCFF_X38_Y17_N19
\inst2|r_curr_L[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_next_L\(5),
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_curr_L\(5));

-- Location: LCCOMB_X38_Y18_N4
\inst2|r_temp_L[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_temp_L[0]~12_combout\ = (\inst2|r_curr_L\(0) & (\inst2|r_mult_L\(10) $ (VCC))) # (!\inst2|r_curr_L\(0) & (\inst2|r_mult_L\(10) & VCC))
-- \inst2|r_temp_L[0]~13\ = CARRY((\inst2|r_curr_L\(0) & \inst2|r_mult_L\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_curr_L\(0),
	datab => \inst2|r_mult_L\(10),
	datad => VCC,
	combout => \inst2|r_temp_L[0]~12_combout\,
	cout => \inst2|r_temp_L[0]~13\);

-- Location: LCCOMB_X38_Y18_N8
\inst2|r_temp_L[2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_temp_L[2]~16_combout\ = ((\inst2|r_curr_L\(2) $ (\inst2|r_mult_L\(12) $ (!\inst2|r_temp_L[1]~15\)))) # (GND)
-- \inst2|r_temp_L[2]~17\ = CARRY((\inst2|r_curr_L\(2) & ((\inst2|r_mult_L\(12)) # (!\inst2|r_temp_L[1]~15\))) # (!\inst2|r_curr_L\(2) & (\inst2|r_mult_L\(12) & !\inst2|r_temp_L[1]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_curr_L\(2),
	datab => \inst2|r_mult_L\(12),
	datad => VCC,
	cin => \inst2|r_temp_L[1]~15\,
	combout => \inst2|r_temp_L[2]~16_combout\,
	cout => \inst2|r_temp_L[2]~17\);

-- Location: LCCOMB_X38_Y18_N12
\inst2|r_temp_L[4]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_temp_L[4]~20_combout\ = ((\inst2|r_curr_L\(4) $ (\inst2|r_mult_L\(14) $ (!\inst2|r_temp_L[3]~19\)))) # (GND)
-- \inst2|r_temp_L[4]~21\ = CARRY((\inst2|r_curr_L\(4) & ((\inst2|r_mult_L\(14)) # (!\inst2|r_temp_L[3]~19\))) # (!\inst2|r_curr_L\(4) & (\inst2|r_mult_L\(14) & !\inst2|r_temp_L[3]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_curr_L\(4),
	datab => \inst2|r_mult_L\(14),
	datad => VCC,
	cin => \inst2|r_temp_L[3]~19\,
	combout => \inst2|r_temp_L[4]~20_combout\,
	cout => \inst2|r_temp_L[4]~21\);

-- Location: LCCOMB_X38_Y18_N14
\inst2|r_temp_L[5]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_temp_L[5]~22_combout\ = (\inst2|r_mult_L\(15) & ((\inst2|r_curr_L\(5) & (\inst2|r_temp_L[4]~21\ & VCC)) # (!\inst2|r_curr_L\(5) & (!\inst2|r_temp_L[4]~21\)))) # (!\inst2|r_mult_L\(15) & ((\inst2|r_curr_L\(5) & (!\inst2|r_temp_L[4]~21\)) # 
-- (!\inst2|r_curr_L\(5) & ((\inst2|r_temp_L[4]~21\) # (GND)))))
-- \inst2|r_temp_L[5]~23\ = CARRY((\inst2|r_mult_L\(15) & (!\inst2|r_curr_L\(5) & !\inst2|r_temp_L[4]~21\)) # (!\inst2|r_mult_L\(15) & ((!\inst2|r_temp_L[4]~21\) # (!\inst2|r_curr_L\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_mult_L\(15),
	datab => \inst2|r_curr_L\(5),
	datad => VCC,
	cin => \inst2|r_temp_L[4]~21\,
	combout => \inst2|r_temp_L[5]~22_combout\,
	cout => \inst2|r_temp_L[5]~23\);

-- Location: LCCOMB_X38_Y18_N16
\inst2|r_temp_L[6]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_temp_L[6]~24_combout\ = ((\inst2|r_curr_L\(6) $ (\inst2|r_mult_L\(16) $ (!\inst2|r_temp_L[5]~23\)))) # (GND)
-- \inst2|r_temp_L[6]~25\ = CARRY((\inst2|r_curr_L\(6) & ((\inst2|r_mult_L\(16)) # (!\inst2|r_temp_L[5]~23\))) # (!\inst2|r_curr_L\(6) & (\inst2|r_mult_L\(16) & !\inst2|r_temp_L[5]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_curr_L\(6),
	datab => \inst2|r_mult_L\(16),
	datad => VCC,
	cin => \inst2|r_temp_L[5]~23\,
	combout => \inst2|r_temp_L[6]~24_combout\,
	cout => \inst2|r_temp_L[6]~25\);

-- Location: LCCOMB_X38_Y18_N18
\inst2|r_temp_L[7]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_temp_L[7]~26_combout\ = (\inst2|r_mult_L\(17) & ((\inst2|r_curr_L\(7) & (\inst2|r_temp_L[6]~25\ & VCC)) # (!\inst2|r_curr_L\(7) & (!\inst2|r_temp_L[6]~25\)))) # (!\inst2|r_mult_L\(17) & ((\inst2|r_curr_L\(7) & (!\inst2|r_temp_L[6]~25\)) # 
-- (!\inst2|r_curr_L\(7) & ((\inst2|r_temp_L[6]~25\) # (GND)))))
-- \inst2|r_temp_L[7]~27\ = CARRY((\inst2|r_mult_L\(17) & (!\inst2|r_curr_L\(7) & !\inst2|r_temp_L[6]~25\)) # (!\inst2|r_mult_L\(17) & ((!\inst2|r_temp_L[6]~25\) # (!\inst2|r_curr_L\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_mult_L\(17),
	datab => \inst2|r_curr_L\(7),
	datad => VCC,
	cin => \inst2|r_temp_L[6]~25\,
	combout => \inst2|r_temp_L[7]~26_combout\,
	cout => \inst2|r_temp_L[7]~27\);

-- Location: LCCOMB_X38_Y18_N22
\inst2|r_temp_L[9]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_temp_L[9]~30_combout\ = (\inst2|r_curr_L\(9) & ((\inst2|r_mult_L\(19) & (\inst2|r_temp_L[8]~29\ & VCC)) # (!\inst2|r_mult_L\(19) & (!\inst2|r_temp_L[8]~29\)))) # (!\inst2|r_curr_L\(9) & ((\inst2|r_mult_L\(19) & (!\inst2|r_temp_L[8]~29\)) # 
-- (!\inst2|r_mult_L\(19) & ((\inst2|r_temp_L[8]~29\) # (GND)))))
-- \inst2|r_temp_L[9]~31\ = CARRY((\inst2|r_curr_L\(9) & (!\inst2|r_mult_L\(19) & !\inst2|r_temp_L[8]~29\)) # (!\inst2|r_curr_L\(9) & ((!\inst2|r_temp_L[8]~29\) # (!\inst2|r_mult_L\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_curr_L\(9),
	datab => \inst2|r_mult_L\(19),
	datad => VCC,
	cin => \inst2|r_temp_L[8]~29\,
	combout => \inst2|r_temp_L[9]~30_combout\,
	cout => \inst2|r_temp_L[9]~31\);

-- Location: LCCOMB_X38_Y18_N24
\inst2|r_temp_L[10]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_temp_L[10]~32_combout\ = ((\inst2|r_curr_L\(10) $ (\inst2|r_mult_L\(20) $ (!\inst2|r_temp_L[9]~31\)))) # (GND)
-- \inst2|r_temp_L[10]~33\ = CARRY((\inst2|r_curr_L\(10) & ((\inst2|r_mult_L\(20)) # (!\inst2|r_temp_L[9]~31\))) # (!\inst2|r_curr_L\(10) & (\inst2|r_mult_L\(20) & !\inst2|r_temp_L[9]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_curr_L\(10),
	datab => \inst2|r_mult_L\(20),
	datad => VCC,
	cin => \inst2|r_temp_L[9]~31\,
	combout => \inst2|r_temp_L[10]~32_combout\,
	cout => \inst2|r_temp_L[10]~33\);

-- Location: LCCOMB_X38_Y18_N26
\inst2|r_temp_L[11]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_temp_L[11]~34_combout\ = \inst2|r_curr_L\(10) $ (\inst2|r_temp_L[10]~33\ $ (\inst2|r_mult_L\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|r_curr_L\(10),
	datad => \inst2|r_mult_L\(21),
	cin => \inst2|r_temp_L[10]~33\,
	combout => \inst2|r_temp_L[11]~34_combout\);

-- Location: LCFF_X38_Y18_N27
\inst2|r_temp_L[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_temp_L[11]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_temp_L\(11));

-- Location: LCFF_X38_Y18_N5
\inst2|r_temp_L[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_temp_L[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_temp_L\(0));

-- Location: LCFF_X38_Y18_N23
\inst2|r_temp_L[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_temp_L[9]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_temp_L\(9));

-- Location: LCCOMB_X40_Y18_N0
\inst2|o_dac_data_L[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|o_dac_data_L[0]~0_combout\ = (\inst2|r_temp_L\(10) & (((\inst2|r_temp_L\(0) & \inst2|r_temp_L\(9))) # (!\inst2|r_temp_L\(11)))) # (!\inst2|r_temp_L\(10) & (!\inst2|r_temp_L\(11) & ((\inst2|r_temp_L\(0)) # (\inst2|r_temp_L\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_temp_L\(10),
	datab => \inst2|r_temp_L\(11),
	datac => \inst2|r_temp_L\(0),
	datad => \inst2|r_temp_L\(9),
	combout => \inst2|o_dac_data_L[0]~0_combout\);

-- Location: LCFF_X38_Y18_N25
\inst2|r_temp_L[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_temp_L[10]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_temp_L\(10));

-- Location: LCCOMB_X38_Y18_N28
\inst2|o_dac_data_L[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|o_dac_data_L[1]~1_combout\ = (\inst2|r_temp_L\(1) & (((\inst2|r_temp_L\(10) & \inst2|r_temp_L\(9))) # (!\inst2|r_temp_L\(11)))) # (!\inst2|r_temp_L\(1) & (!\inst2|r_temp_L\(11) & ((\inst2|r_temp_L\(10)) # (\inst2|r_temp_L\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_temp_L\(1),
	datab => \inst2|r_temp_L\(11),
	datac => \inst2|r_temp_L\(10),
	datad => \inst2|r_temp_L\(9),
	combout => \inst2|o_dac_data_L[1]~1_combout\);

-- Location: LCFF_X38_Y18_N9
\inst2|r_temp_L[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_temp_L[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_temp_L\(2));

-- Location: LCCOMB_X38_Y18_N2
\inst2|o_dac_data_L[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|o_dac_data_L[2]~2_combout\ = (\inst2|r_temp_L\(10) & (((\inst2|r_temp_L\(2) & \inst2|r_temp_L\(9))) # (!\inst2|r_temp_L\(11)))) # (!\inst2|r_temp_L\(10) & (!\inst2|r_temp_L\(11) & ((\inst2|r_temp_L\(2)) # (\inst2|r_temp_L\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_temp_L\(10),
	datab => \inst2|r_temp_L\(11),
	datac => \inst2|r_temp_L\(2),
	datad => \inst2|r_temp_L\(9),
	combout => \inst2|o_dac_data_L[2]~2_combout\);

-- Location: LCCOMB_X38_Y18_N0
\inst2|o_dac_data_L[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|o_dac_data_L[3]~3_combout\ = (\inst2|r_temp_L\(3) & (((\inst2|r_temp_L\(10) & \inst2|r_temp_L\(9))) # (!\inst2|r_temp_L\(11)))) # (!\inst2|r_temp_L\(3) & (!\inst2|r_temp_L\(11) & ((\inst2|r_temp_L\(10)) # (\inst2|r_temp_L\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_temp_L\(3),
	datab => \inst2|r_temp_L\(11),
	datac => \inst2|r_temp_L\(10),
	datad => \inst2|r_temp_L\(9),
	combout => \inst2|o_dac_data_L[3]~3_combout\);

-- Location: LCFF_X38_Y18_N13
\inst2|r_temp_L[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_temp_L[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_temp_L\(4));

-- Location: LCCOMB_X40_Y18_N2
\inst2|o_dac_data_L[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|o_dac_data_L[4]~4_combout\ = (\inst2|r_temp_L\(10) & (((\inst2|r_temp_L\(4) & \inst2|r_temp_L\(9))) # (!\inst2|r_temp_L\(11)))) # (!\inst2|r_temp_L\(10) & (!\inst2|r_temp_L\(11) & ((\inst2|r_temp_L\(4)) # (\inst2|r_temp_L\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_temp_L\(10),
	datab => \inst2|r_temp_L\(11),
	datac => \inst2|r_temp_L\(4),
	datad => \inst2|r_temp_L\(9),
	combout => \inst2|o_dac_data_L[4]~4_combout\);

-- Location: LCFF_X38_Y18_N15
\inst2|r_temp_L[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_temp_L[5]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_temp_L\(5));

-- Location: LCCOMB_X40_Y18_N20
\inst2|o_dac_data_L[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|o_dac_data_L[5]~5_combout\ = (\inst2|r_temp_L\(10) & (((\inst2|r_temp_L\(5) & \inst2|r_temp_L\(9))) # (!\inst2|r_temp_L\(11)))) # (!\inst2|r_temp_L\(10) & (!\inst2|r_temp_L\(11) & ((\inst2|r_temp_L\(5)) # (\inst2|r_temp_L\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_temp_L\(10),
	datab => \inst2|r_temp_L\(11),
	datac => \inst2|r_temp_L\(5),
	datad => \inst2|r_temp_L\(9),
	combout => \inst2|o_dac_data_L[5]~5_combout\);

-- Location: LCFF_X38_Y18_N17
\inst2|r_temp_L[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_temp_L[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_temp_L\(6));

-- Location: LCCOMB_X40_Y18_N6
\inst2|o_dac_data_L[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|o_dac_data_L[6]~6_combout\ = (\inst2|r_temp_L\(10) & (((\inst2|r_temp_L\(6) & \inst2|r_temp_L\(9))) # (!\inst2|r_temp_L\(11)))) # (!\inst2|r_temp_L\(10) & (!\inst2|r_temp_L\(11) & ((\inst2|r_temp_L\(6)) # (\inst2|r_temp_L\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_temp_L\(10),
	datab => \inst2|r_temp_L\(11),
	datac => \inst2|r_temp_L\(6),
	datad => \inst2|r_temp_L\(9),
	combout => \inst2|o_dac_data_L[6]~6_combout\);

-- Location: LCFF_X38_Y18_N19
\inst2|r_temp_L[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_temp_L[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_temp_L\(7));

-- Location: LCCOMB_X40_Y18_N12
\inst2|o_dac_data_L[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|o_dac_data_L[7]~7_combout\ = (\inst2|r_temp_L\(10) & (((\inst2|r_temp_L\(7) & \inst2|r_temp_L\(9))) # (!\inst2|r_temp_L\(11)))) # (!\inst2|r_temp_L\(10) & (!\inst2|r_temp_L\(11) & ((\inst2|r_temp_L\(7)) # (\inst2|r_temp_L\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_temp_L\(10),
	datab => \inst2|r_temp_L\(11),
	datac => \inst2|r_temp_L\(7),
	datad => \inst2|r_temp_L\(9),
	combout => \inst2|o_dac_data_L[7]~7_combout\);

-- Location: LCCOMB_X38_Y18_N30
\inst2|o_dac_data_L[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|o_dac_data_L[8]~8_combout\ = (\inst2|r_temp_L\(8) & (((\inst2|r_temp_L\(10) & \inst2|r_temp_L\(9))) # (!\inst2|r_temp_L\(11)))) # (!\inst2|r_temp_L\(8) & (!\inst2|r_temp_L\(11) & ((\inst2|r_temp_L\(10)) # (\inst2|r_temp_L\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_temp_L\(8),
	datab => \inst2|r_temp_L\(11),
	datac => \inst2|r_temp_L\(10),
	datad => \inst2|r_temp_L\(9),
	combout => \inst2|o_dac_data_L[8]~8_combout\);

-- Location: LCCOMB_X36_Y20_N6
\inst10|sht_reg_right[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_right[0]~feeder_combout\ = \AUD_ADCDAT~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AUD_ADCDAT~combout\,
	combout => \inst10|sht_reg_right[0]~feeder_combout\);

-- Location: LCCOMB_X35_Y21_N18
\inst10|sht_reg_right[14]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_right[14]~2_combout\ = (\inst7|bclk_reg~regout\ & (!\inst10|bclk_prev~regout\ & (\inst7|lrck_reg~regout\ & !\inst10|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bclk_reg~regout\,
	datab => \inst10|bclk_prev~regout\,
	datac => \inst7|lrck_reg~regout\,
	datad => \inst10|process_1~0_combout\,
	combout => \inst10|sht_reg_right[14]~2_combout\);

-- Location: LCFF_X36_Y20_N7
\inst10|sht_reg_right[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|sht_reg_right[0]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|sht_reg_right[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_right\(0));

-- Location: LCCOMB_X36_Y20_N24
\inst10|sht_reg_right[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_right[1]~feeder_combout\ = \inst10|sht_reg_right\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|sht_reg_right\(0),
	combout => \inst10|sht_reg_right[1]~feeder_combout\);

-- Location: LCFF_X36_Y20_N25
\inst10|sht_reg_right[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|sht_reg_right[1]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|sht_reg_right[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_right\(1));

-- Location: LCFF_X36_Y20_N3
\inst10|sht_reg_right[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst10|sht_reg_right\(1),
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \inst10|sht_reg_right[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_right\(2));

-- Location: LCCOMB_X36_Y20_N20
\inst10|sht_reg_right[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_right[3]~feeder_combout\ = \inst10|sht_reg_right\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|sht_reg_right\(2),
	combout => \inst10|sht_reg_right[3]~feeder_combout\);

-- Location: LCFF_X36_Y20_N21
\inst10|sht_reg_right[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|sht_reg_right[3]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|sht_reg_right[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_right\(3));

-- Location: LCFF_X36_Y20_N19
\inst10|sht_reg_right[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst10|sht_reg_right\(3),
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \inst10|sht_reg_right[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_right\(4));

-- Location: LCCOMB_X36_Y19_N0
\inst10|sht_reg_right[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_right[5]~feeder_combout\ = \inst10|sht_reg_right\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|sht_reg_right\(4),
	combout => \inst10|sht_reg_right[5]~feeder_combout\);

-- Location: LCFF_X36_Y19_N1
\inst10|sht_reg_right[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|sht_reg_right[5]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|sht_reg_right[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_right\(5));

-- Location: LCCOMB_X36_Y19_N10
\inst10|sht_reg_right[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_right[6]~feeder_combout\ = \inst10|sht_reg_right\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|sht_reg_right\(5),
	combout => \inst10|sht_reg_right[6]~feeder_combout\);

-- Location: LCFF_X36_Y19_N11
\inst10|sht_reg_right[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|sht_reg_right[6]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|sht_reg_right[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_right\(6));

-- Location: LCCOMB_X37_Y19_N20
\inst10|sht_reg_right[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_right[7]~feeder_combout\ = \inst10|sht_reg_right\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|sht_reg_right\(6),
	combout => \inst10|sht_reg_right[7]~feeder_combout\);

-- Location: LCFF_X37_Y19_N21
\inst10|sht_reg_right[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|sht_reg_right[7]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|sht_reg_right[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_right\(7));

-- Location: LCCOMB_X37_Y19_N22
\inst10|sht_reg_right[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_right[8]~feeder_combout\ = \inst10|sht_reg_right\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|sht_reg_right\(7),
	combout => \inst10|sht_reg_right[8]~feeder_combout\);

-- Location: LCFF_X37_Y19_N23
\inst10|sht_reg_right[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|sht_reg_right[8]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|sht_reg_right[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_right\(8));

-- Location: LCCOMB_X37_Y19_N4
\inst10|sht_reg_right[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_right[9]~feeder_combout\ = \inst10|sht_reg_right\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|sht_reg_right\(8),
	combout => \inst10|sht_reg_right[9]~feeder_combout\);

-- Location: LCFF_X37_Y19_N5
\inst10|sht_reg_right[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|sht_reg_right[9]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|sht_reg_right[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_right\(9));

-- Location: LCFF_X37_Y19_N19
\inst10|sht_reg_right[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst10|sht_reg_right\(9),
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \inst10|sht_reg_right[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_right\(10));

-- Location: LCCOMB_X34_Y19_N2
\inst10|sht_reg_right[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_right[11]~feeder_combout\ = \inst10|sht_reg_right\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|sht_reg_right\(10),
	combout => \inst10|sht_reg_right[11]~feeder_combout\);

-- Location: LCFF_X34_Y19_N3
\inst10|sht_reg_right[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|sht_reg_right[11]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|sht_reg_right[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_right\(11));

-- Location: LCCOMB_X34_Y19_N0
\inst10|sht_reg_right[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_right[12]~feeder_combout\ = \inst10|sht_reg_right\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|sht_reg_right\(11),
	combout => \inst10|sht_reg_right[12]~feeder_combout\);

-- Location: LCFF_X34_Y19_N1
\inst10|sht_reg_right[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|sht_reg_right[12]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|sht_reg_right[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_right\(12));

-- Location: LCCOMB_X34_Y19_N14
\inst10|sht_reg_right[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_right[13]~feeder_combout\ = \inst10|sht_reg_right\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|sht_reg_right\(12),
	combout => \inst10|sht_reg_right[13]~feeder_combout\);

-- Location: LCFF_X34_Y19_N15
\inst10|sht_reg_right[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|sht_reg_right[13]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|sht_reg_right[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_right\(13));

-- Location: LCCOMB_X35_Y19_N24
\inst10|sht_reg_right[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_right[14]~feeder_combout\ = \inst10|sht_reg_right\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|sht_reg_right\(13),
	combout => \inst10|sht_reg_right[14]~feeder_combout\);

-- Location: LCFF_X35_Y19_N25
\inst10|sht_reg_right[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|sht_reg_right[14]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|sht_reg_right[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_right\(14));

-- Location: LCFF_X35_Y19_N27
\inst10|sht_reg_right[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst10|sht_reg_right\(14),
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \inst10|sht_reg_right[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_right\(15));

-- Location: LCFF_X35_Y19_N31
\inst10|sht_reg_right[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst10|sht_reg_right\(15),
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \inst10|sht_reg_right[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_right\(16));

-- Location: LCCOMB_X35_Y19_N28
\inst10|sht_reg_right[17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_right[17]~feeder_combout\ = \inst10|sht_reg_right\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|sht_reg_right\(16),
	combout => \inst10|sht_reg_right[17]~feeder_combout\);

-- Location: LCFF_X35_Y19_N29
\inst10|sht_reg_right[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|sht_reg_right[17]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|sht_reg_right[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_right\(17));

-- Location: LCCOMB_X34_Y19_N4
\inst10|sht_reg_right[18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_right[18]~feeder_combout\ = \inst10|sht_reg_right\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|sht_reg_right\(17),
	combout => \inst10|sht_reg_right[18]~feeder_combout\);

-- Location: LCFF_X34_Y19_N5
\inst10|sht_reg_right[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|sht_reg_right[18]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|sht_reg_right[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_right\(18));

-- Location: LCFF_X35_Y19_N23
\inst10|sht_reg_right[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst10|sht_reg_right\(18),
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \inst10|sht_reg_right[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_right\(19));

-- Location: LCCOMB_X35_Y19_N0
\inst10|sht_reg_right[20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_right[20]~feeder_combout\ = \inst10|sht_reg_right\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|sht_reg_right\(19),
	combout => \inst10|sht_reg_right[20]~feeder_combout\);

-- Location: LCFF_X35_Y19_N1
\inst10|sht_reg_right[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|sht_reg_right[20]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|sht_reg_right[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_right\(20));

-- Location: LCFF_X34_Y19_N31
\inst10|sht_reg_right[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst10|sht_reg_right\(20),
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \inst10|sht_reg_right[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_right\(21));

-- Location: LCCOMB_X34_Y19_N16
\inst10|sht_reg_right[22]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|sht_reg_right[22]~feeder_combout\ = \inst10|sht_reg_right\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|sht_reg_right\(21),
	combout => \inst10|sht_reg_right[22]~feeder_combout\);

-- Location: LCFF_X34_Y19_N17
\inst10|sht_reg_right[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst10|sht_reg_right[22]~feeder_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst10|sht_reg_right[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_right\(22));

-- Location: LCFF_X34_Y19_N19
\inst10|sht_reg_right[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst10|sht_reg_right\(22),
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \inst10|sht_reg_right[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|sht_reg_right\(23));

-- Location: LCCOMB_X35_Y19_N4
\inst14|r_ff[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|r_ff[2]~11_combout\ = (\inst10|sht_reg_right\(16) & ((\inst14|r_ff[1]~10\) # (GND))) # (!\inst10|sht_reg_right\(16) & (!\inst14|r_ff[1]~10\))
-- \inst14|r_ff[2]~12\ = CARRY((\inst10|sht_reg_right\(16)) # (!\inst14|r_ff[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|sht_reg_right\(16),
	datad => VCC,
	cin => \inst14|r_ff[1]~10\,
	combout => \inst14|r_ff[2]~11_combout\,
	cout => \inst14|r_ff[2]~12\);

-- Location: LCCOMB_X35_Y19_N8
\inst14|r_ff[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|r_ff[4]~15_combout\ = (\inst10|sht_reg_right\(18) & ((\inst14|r_ff[3]~14\) # (GND))) # (!\inst10|sht_reg_right\(18) & (!\inst14|r_ff[3]~14\))
-- \inst14|r_ff[4]~16\ = CARRY((\inst10|sht_reg_right\(18)) # (!\inst14|r_ff[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|sht_reg_right\(18),
	datad => VCC,
	cin => \inst14|r_ff[3]~14\,
	combout => \inst14|r_ff[4]~15_combout\,
	cout => \inst14|r_ff[4]~16\);

-- Location: LCCOMB_X35_Y19_N16
\inst14|r_ff[8]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|r_ff[8]~23_combout\ = (\inst10|sht_reg_right\(22) & ((\inst14|r_ff[7]~22\) # (GND))) # (!\inst10|sht_reg_right\(22) & (!\inst14|r_ff[7]~22\))
-- \inst14|r_ff[8]~24\ = CARRY((\inst10|sht_reg_right\(22)) # (!\inst14|r_ff[7]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|sht_reg_right\(22),
	datad => VCC,
	cin => \inst14|r_ff[7]~22\,
	combout => \inst14|r_ff[8]~23_combout\,
	cout => \inst14|r_ff[8]~24\);

-- Location: LCCOMB_X35_Y19_N18
\inst14|r_ff[9]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|r_ff[9]~25_combout\ = \inst14|r_ff[8]~24\ $ (\inst10|sht_reg_right\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst10|sht_reg_right\(23),
	cin => \inst14|r_ff[8]~24\,
	combout => \inst14|r_ff[9]~25_combout\);

-- Location: LCFF_X35_Y19_N19
\inst14|r_ff[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst14|r_ff[9]~25_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst14|d_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|r_ff\(9));

-- Location: LCFF_X35_Y19_N17
\inst14|r_ff[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst14|r_ff[8]~23_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst14|d_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|r_ff\(8));

-- Location: LCFF_X35_Y19_N9
\inst14|r_ff[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst14|r_ff[4]~15_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst14|d_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|r_ff\(4));

-- Location: LCFF_X35_Y19_N5
\inst14|r_ff[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst14|r_ff[2]~11_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst14|d_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|r_ff\(2));

-- Location: LCCOMB_X36_Y19_N4
\inst14|r_ff[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|r_ff[0]~feeder_combout\ = \inst10|sht_reg_right\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|sht_reg_right\(14),
	combout => \inst14|r_ff[0]~feeder_combout\);

-- Location: LCFF_X36_Y19_N5
\inst14|r_ff[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst14|r_ff[0]~feeder_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \inst14|d_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|r_ff\(0));

-- Location: LCCOMB_X34_Y17_N0
\inst2|r_data_latch_R[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_data_latch_R[1]~10_combout\ = (\inst14|r_ff\(1) & (!\inst14|r_ff\(0) & VCC)) # (!\inst14|r_ff\(1) & (\inst14|r_ff\(0) $ (GND)))
-- \inst2|r_data_latch_R[1]~11\ = CARRY((!\inst14|r_ff\(1) & !\inst14|r_ff\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|r_ff\(1),
	datab => \inst14|r_ff\(0),
	datad => VCC,
	combout => \inst2|r_data_latch_R[1]~10_combout\,
	cout => \inst2|r_data_latch_R[1]~11\);

-- Location: LCCOMB_X34_Y17_N2
\inst2|r_data_latch_R[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_data_latch_R[2]~12_combout\ = (\inst14|r_ff\(2) & ((\inst2|r_data_latch_R[1]~11\) # (GND))) # (!\inst14|r_ff\(2) & (!\inst2|r_data_latch_R[1]~11\))
-- \inst2|r_data_latch_R[2]~13\ = CARRY((\inst14|r_ff\(2)) # (!\inst2|r_data_latch_R[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|r_ff\(2),
	datad => VCC,
	cin => \inst2|r_data_latch_R[1]~11\,
	combout => \inst2|r_data_latch_R[2]~12_combout\,
	cout => \inst2|r_data_latch_R[2]~13\);

-- Location: LCCOMB_X34_Y17_N4
\inst2|r_data_latch_R[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_data_latch_R[3]~14_combout\ = (\inst14|r_ff\(3) & (!\inst2|r_data_latch_R[2]~13\ & VCC)) # (!\inst14|r_ff\(3) & (\inst2|r_data_latch_R[2]~13\ $ (GND)))
-- \inst2|r_data_latch_R[3]~15\ = CARRY((!\inst14|r_ff\(3) & !\inst2|r_data_latch_R[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|r_ff\(3),
	datad => VCC,
	cin => \inst2|r_data_latch_R[2]~13\,
	combout => \inst2|r_data_latch_R[3]~14_combout\,
	cout => \inst2|r_data_latch_R[3]~15\);

-- Location: LCCOMB_X34_Y17_N6
\inst2|r_data_latch_R[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_data_latch_R[4]~16_combout\ = (\inst14|r_ff\(4) & ((\inst2|r_data_latch_R[3]~15\) # (GND))) # (!\inst14|r_ff\(4) & (!\inst2|r_data_latch_R[3]~15\))
-- \inst2|r_data_latch_R[4]~17\ = CARRY((\inst14|r_ff\(4)) # (!\inst2|r_data_latch_R[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|r_ff\(4),
	datad => VCC,
	cin => \inst2|r_data_latch_R[3]~15\,
	combout => \inst2|r_data_latch_R[4]~16_combout\,
	cout => \inst2|r_data_latch_R[4]~17\);

-- Location: LCCOMB_X34_Y17_N8
\inst2|r_data_latch_R[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_data_latch_R[5]~18_combout\ = (\inst14|r_ff\(5) & (!\inst2|r_data_latch_R[4]~17\ & VCC)) # (!\inst14|r_ff\(5) & (\inst2|r_data_latch_R[4]~17\ $ (GND)))
-- \inst2|r_data_latch_R[5]~19\ = CARRY((!\inst14|r_ff\(5) & !\inst2|r_data_latch_R[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|r_ff\(5),
	datad => VCC,
	cin => \inst2|r_data_latch_R[4]~17\,
	combout => \inst2|r_data_latch_R[5]~18_combout\,
	cout => \inst2|r_data_latch_R[5]~19\);

-- Location: LCCOMB_X34_Y17_N10
\inst2|r_data_latch_R[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_data_latch_R[6]~20_combout\ = (\inst14|r_ff\(6) & ((\inst2|r_data_latch_R[5]~19\) # (GND))) # (!\inst14|r_ff\(6) & (!\inst2|r_data_latch_R[5]~19\))
-- \inst2|r_data_latch_R[6]~21\ = CARRY((\inst14|r_ff\(6)) # (!\inst2|r_data_latch_R[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|r_ff\(6),
	datad => VCC,
	cin => \inst2|r_data_latch_R[5]~19\,
	combout => \inst2|r_data_latch_R[6]~20_combout\,
	cout => \inst2|r_data_latch_R[6]~21\);

-- Location: LCCOMB_X34_Y17_N12
\inst2|r_data_latch_R[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_data_latch_R[7]~22_combout\ = (\inst14|r_ff\(7) & (!\inst2|r_data_latch_R[6]~21\ & VCC)) # (!\inst14|r_ff\(7) & (\inst2|r_data_latch_R[6]~21\ $ (GND)))
-- \inst2|r_data_latch_R[7]~23\ = CARRY((!\inst14|r_ff\(7) & !\inst2|r_data_latch_R[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|r_ff\(7),
	datad => VCC,
	cin => \inst2|r_data_latch_R[6]~21\,
	combout => \inst2|r_data_latch_R[7]~22_combout\,
	cout => \inst2|r_data_latch_R[7]~23\);

-- Location: LCCOMB_X34_Y17_N14
\inst2|r_data_latch_R[8]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_data_latch_R[8]~24_combout\ = (\inst14|r_ff\(8) & ((\inst2|r_data_latch_R[7]~23\) # (GND))) # (!\inst14|r_ff\(8) & (!\inst2|r_data_latch_R[7]~23\))
-- \inst2|r_data_latch_R[8]~25\ = CARRY((\inst14|r_ff\(8)) # (!\inst2|r_data_latch_R[7]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|r_ff\(8),
	datad => VCC,
	cin => \inst2|r_data_latch_R[7]~23\,
	combout => \inst2|r_data_latch_R[8]~24_combout\,
	cout => \inst2|r_data_latch_R[8]~25\);

-- Location: LCCOMB_X34_Y17_N16
\inst2|r_data_latch_R[9]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_data_latch_R[9]~26_combout\ = (\inst14|r_ff\(9) & (!\inst2|r_data_latch_R[8]~25\ & VCC)) # (!\inst14|r_ff\(9) & (\inst2|r_data_latch_R[8]~25\ $ (GND)))
-- \inst2|r_data_latch_R[9]~27\ = CARRY((!\inst14|r_ff\(9) & !\inst2|r_data_latch_R[8]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|r_ff\(9),
	datad => VCC,
	cin => \inst2|r_data_latch_R[8]~25\,
	combout => \inst2|r_data_latch_R[9]~26_combout\,
	cout => \inst2|r_data_latch_R[9]~27\);

-- Location: LCCOMB_X34_Y17_N18
\inst2|r_data_latch_R[10]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_data_latch_R[10]~28_combout\ = \inst2|r_data_latch_R[9]~27\ $ (!\inst14|r_ff\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst14|r_ff\(9),
	cin => \inst2|r_data_latch_R[9]~27\,
	combout => \inst2|r_data_latch_R[10]~28_combout\);

-- Location: LCCOMB_X35_Y17_N30
\inst2|r_data_latch_R[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_data_latch_R[10]~feeder_combout\ = \inst2|r_data_latch_R[10]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|r_data_latch_R[10]~28_combout\,
	combout => \inst2|r_data_latch_R[10]~feeder_combout\);

-- Location: LCFF_X35_Y17_N31
\inst2|r_data_latch_R[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|lrck_reg~clkctrl_outclk\,
	datain => \inst2|r_data_latch_R[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_data_latch_R\(10));

-- Location: LCFF_X35_Y17_N23
\inst2|r_next_R[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_data_latch_R\(10),
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_next_R\(10));

-- Location: LCFF_X35_Y17_N21
\inst2|r_curr_R[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_next_R\(10),
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_curr_R\(10));

-- Location: LCCOMB_X35_Y17_N24
\inst2|r_data_latch_R[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_data_latch_R[0]~feeder_combout\ = \inst14|r_ff\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|r_ff\(0),
	combout => \inst2|r_data_latch_R[0]~feeder_combout\);

-- Location: LCFF_X35_Y17_N25
\inst2|r_data_latch_R[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|lrck_reg~clkctrl_outclk\,
	datain => \inst2|r_data_latch_R[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_data_latch_R\(0));

-- Location: LCFF_X35_Y17_N3
\inst2|r_next_R[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_data_latch_R\(0),
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_next_R\(0));

-- Location: LCCOMB_X35_Y17_N0
\inst2|r_diff_R[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_diff_R[0]~12_combout\ = (\inst2|r_curr_R\(0) & (\inst2|r_next_R\(0) $ (VCC))) # (!\inst2|r_curr_R\(0) & ((\inst2|r_next_R\(0)) # (GND)))
-- \inst2|r_diff_R[0]~13\ = CARRY((\inst2|r_next_R\(0)) # (!\inst2|r_curr_R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_curr_R\(0),
	datab => \inst2|r_next_R\(0),
	datad => VCC,
	combout => \inst2|r_diff_R[0]~12_combout\,
	cout => \inst2|r_diff_R[0]~13\);

-- Location: LCFF_X35_Y17_N27
\inst2|r_data_latch_R[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|lrck_reg~clkctrl_outclk\,
	sdata => \inst2|r_data_latch_R[1]~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_data_latch_R\(1));

-- Location: LCCOMB_X35_Y17_N28
\inst2|r_next_R[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_next_R[1]~feeder_combout\ = \inst2|r_data_latch_R\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|r_data_latch_R\(1),
	combout => \inst2|r_next_R[1]~feeder_combout\);

-- Location: LCFF_X35_Y17_N29
\inst2|r_next_R[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_next_R[1]~feeder_combout\,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_next_R\(1));

-- Location: LCFF_X35_Y17_N1
\inst2|r_curr_R[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_next_R\(1),
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_curr_R\(1));

-- Location: LCCOMB_X35_Y17_N2
\inst2|r_diff_R[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_diff_R[1]~14_combout\ = (\inst2|r_next_R\(1) & ((\inst2|r_curr_R\(1) & (!\inst2|r_diff_R[0]~13\)) # (!\inst2|r_curr_R\(1) & (\inst2|r_diff_R[0]~13\ & VCC)))) # (!\inst2|r_next_R\(1) & ((\inst2|r_curr_R\(1) & ((\inst2|r_diff_R[0]~13\) # (GND))) # 
-- (!\inst2|r_curr_R\(1) & (!\inst2|r_diff_R[0]~13\))))
-- \inst2|r_diff_R[1]~15\ = CARRY((\inst2|r_next_R\(1) & (\inst2|r_curr_R\(1) & !\inst2|r_diff_R[0]~13\)) # (!\inst2|r_next_R\(1) & ((\inst2|r_curr_R\(1)) # (!\inst2|r_diff_R[0]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_next_R\(1),
	datab => \inst2|r_curr_R\(1),
	datad => VCC,
	cin => \inst2|r_diff_R[0]~13\,
	combout => \inst2|r_diff_R[1]~14_combout\,
	cout => \inst2|r_diff_R[1]~15\);

-- Location: LCFF_X34_Y17_N3
\inst2|r_data_latch_R[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|lrck_reg~clkctrl_outclk\,
	datain => \inst2|r_data_latch_R[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_data_latch_R\(2));

-- Location: LCCOMB_X34_Y17_N22
\inst2|r_next_R[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_next_R[2]~feeder_combout\ = \inst2|r_data_latch_R\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|r_data_latch_R\(2),
	combout => \inst2|r_next_R[2]~feeder_combout\);

-- Location: LCFF_X34_Y17_N23
\inst2|r_next_R[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_next_R[2]~feeder_combout\,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_next_R\(2));

-- Location: LCFF_X35_Y17_N5
\inst2|r_curr_R[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_next_R\(2),
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_curr_R\(2));

-- Location: LCCOMB_X35_Y17_N4
\inst2|r_diff_R[2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_diff_R[2]~16_combout\ = ((\inst2|r_next_R\(2) $ (\inst2|r_curr_R\(2) $ (\inst2|r_diff_R[1]~15\)))) # (GND)
-- \inst2|r_diff_R[2]~17\ = CARRY((\inst2|r_next_R\(2) & ((!\inst2|r_diff_R[1]~15\) # (!\inst2|r_curr_R\(2)))) # (!\inst2|r_next_R\(2) & (!\inst2|r_curr_R\(2) & !\inst2|r_diff_R[1]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_next_R\(2),
	datab => \inst2|r_curr_R\(2),
	datad => VCC,
	cin => \inst2|r_diff_R[1]~15\,
	combout => \inst2|r_diff_R[2]~16_combout\,
	cout => \inst2|r_diff_R[2]~17\);

-- Location: LCFF_X34_Y17_N5
\inst2|r_data_latch_R[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|lrck_reg~clkctrl_outclk\,
	datain => \inst2|r_data_latch_R[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_data_latch_R\(3));

-- Location: LCFF_X34_Y17_N29
\inst2|r_next_R[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_data_latch_R\(3),
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_next_R\(3));

-- Location: LCCOMB_X35_Y17_N6
\inst2|r_diff_R[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_diff_R[3]~18_combout\ = (\inst2|r_curr_R\(3) & ((\inst2|r_next_R\(3) & (!\inst2|r_diff_R[2]~17\)) # (!\inst2|r_next_R\(3) & ((\inst2|r_diff_R[2]~17\) # (GND))))) # (!\inst2|r_curr_R\(3) & ((\inst2|r_next_R\(3) & (\inst2|r_diff_R[2]~17\ & VCC)) # 
-- (!\inst2|r_next_R\(3) & (!\inst2|r_diff_R[2]~17\))))
-- \inst2|r_diff_R[3]~19\ = CARRY((\inst2|r_curr_R\(3) & ((!\inst2|r_diff_R[2]~17\) # (!\inst2|r_next_R\(3)))) # (!\inst2|r_curr_R\(3) & (!\inst2|r_next_R\(3) & !\inst2|r_diff_R[2]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_curr_R\(3),
	datab => \inst2|r_next_R\(3),
	datad => VCC,
	cin => \inst2|r_diff_R[2]~17\,
	combout => \inst2|r_diff_R[3]~18_combout\,
	cout => \inst2|r_diff_R[3]~19\);

-- Location: LCFF_X34_Y17_N7
\inst2|r_data_latch_R[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|lrck_reg~clkctrl_outclk\,
	datain => \inst2|r_data_latch_R[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_data_latch_R\(4));

-- Location: LCCOMB_X34_Y17_N20
\inst2|r_next_R[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_next_R[4]~feeder_combout\ = \inst2|r_data_latch_R\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|r_data_latch_R\(4),
	combout => \inst2|r_next_R[4]~feeder_combout\);

-- Location: LCFF_X34_Y17_N21
\inst2|r_next_R[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_next_R[4]~feeder_combout\,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_next_R\(4));

-- Location: LCFF_X35_Y17_N9
\inst2|r_curr_R[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_next_R\(4),
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_curr_R\(4));

-- Location: LCCOMB_X35_Y17_N8
\inst2|r_diff_R[4]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_diff_R[4]~20_combout\ = ((\inst2|r_next_R\(4) $ (\inst2|r_curr_R\(4) $ (\inst2|r_diff_R[3]~19\)))) # (GND)
-- \inst2|r_diff_R[4]~21\ = CARRY((\inst2|r_next_R\(4) & ((!\inst2|r_diff_R[3]~19\) # (!\inst2|r_curr_R\(4)))) # (!\inst2|r_next_R\(4) & (!\inst2|r_curr_R\(4) & !\inst2|r_diff_R[3]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_next_R\(4),
	datab => \inst2|r_curr_R\(4),
	datad => VCC,
	cin => \inst2|r_diff_R[3]~19\,
	combout => \inst2|r_diff_R[4]~20_combout\,
	cout => \inst2|r_diff_R[4]~21\);

-- Location: LCFF_X34_Y17_N9
\inst2|r_data_latch_R[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|lrck_reg~clkctrl_outclk\,
	datain => \inst2|r_data_latch_R[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_data_latch_R\(5));

-- Location: LCFF_X34_Y17_N25
\inst2|r_next_R[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_data_latch_R\(5),
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_next_R\(5));

-- Location: LCFF_X35_Y17_N11
\inst2|r_curr_R[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_next_R\(5),
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_curr_R\(5));

-- Location: LCCOMB_X35_Y17_N10
\inst2|r_diff_R[5]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_diff_R[5]~22_combout\ = (\inst2|r_next_R\(5) & ((\inst2|r_curr_R\(5) & (!\inst2|r_diff_R[4]~21\)) # (!\inst2|r_curr_R\(5) & (\inst2|r_diff_R[4]~21\ & VCC)))) # (!\inst2|r_next_R\(5) & ((\inst2|r_curr_R\(5) & ((\inst2|r_diff_R[4]~21\) # (GND))) # 
-- (!\inst2|r_curr_R\(5) & (!\inst2|r_diff_R[4]~21\))))
-- \inst2|r_diff_R[5]~23\ = CARRY((\inst2|r_next_R\(5) & (\inst2|r_curr_R\(5) & !\inst2|r_diff_R[4]~21\)) # (!\inst2|r_next_R\(5) & ((\inst2|r_curr_R\(5)) # (!\inst2|r_diff_R[4]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_next_R\(5),
	datab => \inst2|r_curr_R\(5),
	datad => VCC,
	cin => \inst2|r_diff_R[4]~21\,
	combout => \inst2|r_diff_R[5]~22_combout\,
	cout => \inst2|r_diff_R[5]~23\);

-- Location: LCFF_X34_Y17_N11
\inst2|r_data_latch_R[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|lrck_reg~clkctrl_outclk\,
	datain => \inst2|r_data_latch_R[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_data_latch_R\(6));

-- Location: LCFF_X34_Y17_N19
\inst2|r_next_R[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_data_latch_R\(6),
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_next_R\(6));

-- Location: LCFF_X35_Y17_N13
\inst2|r_curr_R[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_next_R\(6),
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_curr_R\(6));

-- Location: LCCOMB_X35_Y17_N12
\inst2|r_diff_R[6]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_diff_R[6]~24_combout\ = ((\inst2|r_next_R\(6) $ (\inst2|r_curr_R\(6) $ (\inst2|r_diff_R[5]~23\)))) # (GND)
-- \inst2|r_diff_R[6]~25\ = CARRY((\inst2|r_next_R\(6) & ((!\inst2|r_diff_R[5]~23\) # (!\inst2|r_curr_R\(6)))) # (!\inst2|r_next_R\(6) & (!\inst2|r_curr_R\(6) & !\inst2|r_diff_R[5]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_next_R\(6),
	datab => \inst2|r_curr_R\(6),
	datad => VCC,
	cin => \inst2|r_diff_R[5]~23\,
	combout => \inst2|r_diff_R[6]~24_combout\,
	cout => \inst2|r_diff_R[6]~25\);

-- Location: LCFF_X34_Y17_N13
\inst2|r_data_latch_R[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|lrck_reg~clkctrl_outclk\,
	datain => \inst2|r_data_latch_R[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_data_latch_R\(7));

-- Location: LCCOMB_X34_Y17_N26
\inst2|r_next_R[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_next_R[7]~feeder_combout\ = \inst2|r_data_latch_R\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|r_data_latch_R\(7),
	combout => \inst2|r_next_R[7]~feeder_combout\);

-- Location: LCFF_X34_Y17_N27
\inst2|r_next_R[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_next_R[7]~feeder_combout\,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_next_R\(7));

-- Location: LCFF_X35_Y17_N15
\inst2|r_curr_R[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_next_R\(7),
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_curr_R\(7));

-- Location: LCCOMB_X35_Y17_N14
\inst2|r_diff_R[7]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_diff_R[7]~26_combout\ = (\inst2|r_next_R\(7) & ((\inst2|r_curr_R\(7) & (!\inst2|r_diff_R[6]~25\)) # (!\inst2|r_curr_R\(7) & (\inst2|r_diff_R[6]~25\ & VCC)))) # (!\inst2|r_next_R\(7) & ((\inst2|r_curr_R\(7) & ((\inst2|r_diff_R[6]~25\) # (GND))) # 
-- (!\inst2|r_curr_R\(7) & (!\inst2|r_diff_R[6]~25\))))
-- \inst2|r_diff_R[7]~27\ = CARRY((\inst2|r_next_R\(7) & (\inst2|r_curr_R\(7) & !\inst2|r_diff_R[6]~25\)) # (!\inst2|r_next_R\(7) & ((\inst2|r_curr_R\(7)) # (!\inst2|r_diff_R[6]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_next_R\(7),
	datab => \inst2|r_curr_R\(7),
	datad => VCC,
	cin => \inst2|r_diff_R[6]~25\,
	combout => \inst2|r_diff_R[7]~26_combout\,
	cout => \inst2|r_diff_R[7]~27\);

-- Location: LCFF_X34_Y17_N15
\inst2|r_data_latch_R[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|lrck_reg~clkctrl_outclk\,
	datain => \inst2|r_data_latch_R[8]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_data_latch_R\(8));

-- Location: LCFF_X34_Y17_N31
\inst2|r_next_R[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_data_latch_R\(8),
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_next_R\(8));

-- Location: LCFF_X35_Y17_N17
\inst2|r_curr_R[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_next_R\(8),
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_curr_R\(8));

-- Location: LCCOMB_X35_Y17_N16
\inst2|r_diff_R[8]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_diff_R[8]~28_combout\ = ((\inst2|r_next_R\(8) $ (\inst2|r_curr_R\(8) $ (\inst2|r_diff_R[7]~27\)))) # (GND)
-- \inst2|r_diff_R[8]~29\ = CARRY((\inst2|r_next_R\(8) & ((!\inst2|r_diff_R[7]~27\) # (!\inst2|r_curr_R\(8)))) # (!\inst2|r_next_R\(8) & (!\inst2|r_curr_R\(8) & !\inst2|r_diff_R[7]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_next_R\(8),
	datab => \inst2|r_curr_R\(8),
	datad => VCC,
	cin => \inst2|r_diff_R[7]~27\,
	combout => \inst2|r_diff_R[8]~28_combout\,
	cout => \inst2|r_diff_R[8]~29\);

-- Location: LCFF_X34_Y17_N17
\inst2|r_data_latch_R[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|lrck_reg~clkctrl_outclk\,
	datain => \inst2|r_data_latch_R[9]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_data_latch_R\(9));

-- Location: LCFF_X34_Y17_N1
\inst2|r_next_R[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_data_latch_R\(9),
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_next_R\(9));

-- Location: LCFF_X35_Y17_N19
\inst2|r_curr_R[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_next_R\(9),
	sload => VCC,
	ena => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_curr_R\(9));

-- Location: LCCOMB_X35_Y17_N18
\inst2|r_diff_R[9]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_diff_R[9]~30_combout\ = (\inst2|r_next_R\(9) & ((\inst2|r_curr_R\(9) & (!\inst2|r_diff_R[8]~29\)) # (!\inst2|r_curr_R\(9) & (\inst2|r_diff_R[8]~29\ & VCC)))) # (!\inst2|r_next_R\(9) & ((\inst2|r_curr_R\(9) & ((\inst2|r_diff_R[8]~29\) # (GND))) # 
-- (!\inst2|r_curr_R\(9) & (!\inst2|r_diff_R[8]~29\))))
-- \inst2|r_diff_R[9]~31\ = CARRY((\inst2|r_next_R\(9) & (\inst2|r_curr_R\(9) & !\inst2|r_diff_R[8]~29\)) # (!\inst2|r_next_R\(9) & ((\inst2|r_curr_R\(9)) # (!\inst2|r_diff_R[8]~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_next_R\(9),
	datab => \inst2|r_curr_R\(9),
	datad => VCC,
	cin => \inst2|r_diff_R[8]~29\,
	combout => \inst2|r_diff_R[9]~30_combout\,
	cout => \inst2|r_diff_R[9]~31\);

-- Location: LCCOMB_X35_Y17_N20
\inst2|r_diff_R[10]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_diff_R[10]~32_combout\ = ((\inst2|r_curr_R\(10) $ (\inst2|r_next_R\(10) $ (\inst2|r_diff_R[9]~31\)))) # (GND)
-- \inst2|r_diff_R[10]~33\ = CARRY((\inst2|r_curr_R\(10) & (\inst2|r_next_R\(10) & !\inst2|r_diff_R[9]~31\)) # (!\inst2|r_curr_R\(10) & ((\inst2|r_next_R\(10)) # (!\inst2|r_diff_R[9]~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_curr_R\(10),
	datab => \inst2|r_next_R\(10),
	datad => VCC,
	cin => \inst2|r_diff_R[9]~31\,
	combout => \inst2|r_diff_R[10]~32_combout\,
	cout => \inst2|r_diff_R[10]~33\);

-- Location: LCCOMB_X35_Y17_N22
\inst2|r_diff_R[11]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_diff_R[11]~34_combout\ = \inst2|r_next_R\(10) $ (\inst2|r_diff_R[10]~33\ $ (!\inst2|r_curr_R\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|r_next_R\(10),
	datad => \inst2|r_curr_R\(10),
	cin => \inst2|r_diff_R[10]~33\,
	combout => \inst2|r_diff_R[11]~34_combout\);

-- Location: DSPMULT_X39_Y17_N0
\inst2|Mult1|auto_generated|mac_mult1\ : cycloneii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \CLK_50~clkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \inst2|Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \inst2|Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst2|Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X36_Y16_N4
\inst2|r_temp_R[2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_temp_R[2]~16_combout\ = ((\inst2|r_mult_R\(12) $ (\inst2|r_curr_R\(2) $ (!\inst2|r_temp_R[1]~15\)))) # (GND)
-- \inst2|r_temp_R[2]~17\ = CARRY((\inst2|r_mult_R\(12) & ((\inst2|r_curr_R\(2)) # (!\inst2|r_temp_R[1]~15\))) # (!\inst2|r_mult_R\(12) & (\inst2|r_curr_R\(2) & !\inst2|r_temp_R[1]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_mult_R\(12),
	datab => \inst2|r_curr_R\(2),
	datad => VCC,
	cin => \inst2|r_temp_R[1]~15\,
	combout => \inst2|r_temp_R[2]~16_combout\,
	cout => \inst2|r_temp_R[2]~17\);

-- Location: LCCOMB_X36_Y16_N8
\inst2|r_temp_R[4]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_temp_R[4]~20_combout\ = ((\inst2|r_curr_R\(4) $ (\inst2|r_mult_R\(14) $ (!\inst2|r_temp_R[3]~19\)))) # (GND)
-- \inst2|r_temp_R[4]~21\ = CARRY((\inst2|r_curr_R\(4) & ((\inst2|r_mult_R\(14)) # (!\inst2|r_temp_R[3]~19\))) # (!\inst2|r_curr_R\(4) & (\inst2|r_mult_R\(14) & !\inst2|r_temp_R[3]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_curr_R\(4),
	datab => \inst2|r_mult_R\(14),
	datad => VCC,
	cin => \inst2|r_temp_R[3]~19\,
	combout => \inst2|r_temp_R[4]~20_combout\,
	cout => \inst2|r_temp_R[4]~21\);

-- Location: LCCOMB_X36_Y16_N18
\inst2|r_temp_R[9]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_temp_R[9]~30_combout\ = (\inst2|r_curr_R\(9) & ((\inst2|r_mult_R\(19) & (\inst2|r_temp_R[8]~29\ & VCC)) # (!\inst2|r_mult_R\(19) & (!\inst2|r_temp_R[8]~29\)))) # (!\inst2|r_curr_R\(9) & ((\inst2|r_mult_R\(19) & (!\inst2|r_temp_R[8]~29\)) # 
-- (!\inst2|r_mult_R\(19) & ((\inst2|r_temp_R[8]~29\) # (GND)))))
-- \inst2|r_temp_R[9]~31\ = CARRY((\inst2|r_curr_R\(9) & (!\inst2|r_mult_R\(19) & !\inst2|r_temp_R[8]~29\)) # (!\inst2|r_curr_R\(9) & ((!\inst2|r_temp_R[8]~29\) # (!\inst2|r_mult_R\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_curr_R\(9),
	datab => \inst2|r_mult_R\(19),
	datad => VCC,
	cin => \inst2|r_temp_R[8]~29\,
	combout => \inst2|r_temp_R[9]~30_combout\,
	cout => \inst2|r_temp_R[9]~31\);

-- Location: LCCOMB_X36_Y16_N20
\inst2|r_temp_R[10]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_temp_R[10]~32_combout\ = ((\inst2|r_mult_R\(20) $ (\inst2|r_curr_R\(10) $ (!\inst2|r_temp_R[9]~31\)))) # (GND)
-- \inst2|r_temp_R[10]~33\ = CARRY((\inst2|r_mult_R\(20) & ((\inst2|r_curr_R\(10)) # (!\inst2|r_temp_R[9]~31\))) # (!\inst2|r_mult_R\(20) & (\inst2|r_curr_R\(10) & !\inst2|r_temp_R[9]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_mult_R\(20),
	datab => \inst2|r_curr_R\(10),
	datad => VCC,
	cin => \inst2|r_temp_R[9]~31\,
	combout => \inst2|r_temp_R[10]~32_combout\,
	cout => \inst2|r_temp_R[10]~33\);

-- Location: LCCOMB_X36_Y16_N22
\inst2|r_temp_R[11]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|r_temp_R[11]~34_combout\ = \inst2|r_curr_R\(10) $ (\inst2|r_temp_R[10]~33\ $ (\inst2|r_mult_R\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|r_curr_R\(10),
	datad => \inst2|r_mult_R\(21),
	cin => \inst2|r_temp_R[10]~33\,
	combout => \inst2|r_temp_R[11]~34_combout\);

-- Location: LCFF_X36_Y16_N23
\inst2|r_temp_R[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_temp_R[11]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_temp_R\(11));

-- Location: LCFF_X36_Y16_N21
\inst2|r_temp_R[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_temp_R[10]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_temp_R\(10));

-- Location: LCFF_X36_Y16_N19
\inst2|r_temp_R[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_temp_R[9]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_temp_R\(9));

-- Location: LCCOMB_X36_Y16_N24
\inst2|o_dac_data_R[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|o_dac_data_R[8]~8_combout\ = (\inst2|r_temp_R\(8) & (((\inst2|r_temp_R\(10) & \inst2|r_temp_R\(9))) # (!\inst2|r_temp_R\(11)))) # (!\inst2|r_temp_R\(8) & (!\inst2|r_temp_R\(11) & ((\inst2|r_temp_R\(10)) # (\inst2|r_temp_R\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_temp_R\(8),
	datab => \inst2|r_temp_R\(11),
	datac => \inst2|r_temp_R\(10),
	datad => \inst2|r_temp_R\(9),
	combout => \inst2|o_dac_data_R[8]~8_combout\);

-- Location: LCCOMB_X27_Y16_N4
\inst3|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~0_combout\ = \inst3|ptr\(0) $ (VCC)
-- \inst3|Add0~1\ = CARRY(\inst3|ptr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ptr\(0),
	datad => VCC,
	combout => \inst3|Add0~0_combout\,
	cout => \inst3|Add0~1\);

-- Location: LCCOMB_X27_Y16_N6
\inst3|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~2_combout\ = (\inst3|ptr\(1) & (!\inst3|Add0~1\)) # (!\inst3|ptr\(1) & ((\inst3|Add0~1\) # (GND)))
-- \inst3|Add0~3\ = CARRY((!\inst3|Add0~1\) # (!\inst3|ptr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ptr\(1),
	datad => VCC,
	cin => \inst3|Add0~1\,
	combout => \inst3|Add0~2_combout\,
	cout => \inst3|Add0~3\);

-- Location: LCCOMB_X27_Y16_N8
\inst3|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~4_combout\ = (\inst3|ptr\(2) & (\inst3|Add0~3\ $ (GND))) # (!\inst3|ptr\(2) & (!\inst3|Add0~3\ & VCC))
-- \inst3|Add0~5\ = CARRY((\inst3|ptr\(2) & !\inst3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ptr\(2),
	datad => VCC,
	cin => \inst3|Add0~3\,
	combout => \inst3|Add0~4_combout\,
	cout => \inst3|Add0~5\);

-- Location: LCFF_X27_Y16_N9
\inst3|ptr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst3|Add0~4_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|ptr\(2));

-- Location: LCCOMB_X27_Y16_N10
\inst3|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~6_combout\ = (\inst3|ptr\(3) & (!\inst3|Add0~5\)) # (!\inst3|ptr\(3) & ((\inst3|Add0~5\) # (GND)))
-- \inst3|Add0~7\ = CARRY((!\inst3|Add0~5\) # (!\inst3|ptr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ptr\(3),
	datad => VCC,
	cin => \inst3|Add0~5\,
	combout => \inst3|Add0~6_combout\,
	cout => \inst3|Add0~7\);

-- Location: LCCOMB_X27_Y16_N12
\inst3|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~8_combout\ = (\inst3|ptr\(4) & (\inst3|Add0~7\ $ (GND))) # (!\inst3|ptr\(4) & (!\inst3|Add0~7\ & VCC))
-- \inst3|Add0~9\ = CARRY((\inst3|ptr\(4) & !\inst3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ptr\(4),
	datad => VCC,
	cin => \inst3|Add0~7\,
	combout => \inst3|Add0~8_combout\,
	cout => \inst3|Add0~9\);

-- Location: LCCOMB_X27_Y16_N26
\inst3|ptr~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|ptr~1_combout\ = (\inst3|Add0~8_combout\ & (((!\inst3|Equal0~0_combout\) # (!\inst3|Equal0~1_combout\)) # (!\inst3|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~2_combout\,
	datab => \inst3|Equal0~1_combout\,
	datac => \inst3|Equal0~0_combout\,
	datad => \inst3|Add0~8_combout\,
	combout => \inst3|ptr~1_combout\);

-- Location: LCFF_X27_Y16_N27
\inst3|ptr[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst3|ptr~1_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|ptr\(4));

-- Location: LCCOMB_X27_Y16_N14
\inst3|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~10_combout\ = (\inst3|ptr\(5) & (!\inst3|Add0~9\)) # (!\inst3|ptr\(5) & ((\inst3|Add0~9\) # (GND)))
-- \inst3|Add0~11\ = CARRY((!\inst3|Add0~9\) # (!\inst3|ptr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ptr\(5),
	datad => VCC,
	cin => \inst3|Add0~9\,
	combout => \inst3|Add0~10_combout\,
	cout => \inst3|Add0~11\);

-- Location: LCFF_X27_Y16_N15
\inst3|ptr[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst3|Add0~10_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|ptr\(5));

-- Location: LCFF_X27_Y16_N11
\inst3|ptr[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst3|Add0~6_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|ptr\(3));

-- Location: LCCOMB_X27_Y16_N16
\inst3|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~12_combout\ = (\inst3|ptr\(6) & (\inst3|Add0~11\ $ (GND))) # (!\inst3|ptr\(6) & (!\inst3|Add0~11\ & VCC))
-- \inst3|Add0~13\ = CARRY((\inst3|ptr\(6) & !\inst3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ptr\(6),
	datad => VCC,
	cin => \inst3|Add0~11\,
	combout => \inst3|Add0~12_combout\,
	cout => \inst3|Add0~13\);

-- Location: LCCOMB_X27_Y15_N24
\inst3|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~2_combout\ = (!\inst3|ptr\(1) & (!\inst3|ptr\(0) & !\inst3|ptr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ptr\(1),
	datab => \inst3|ptr\(0),
	datad => \inst3|ptr\(2),
	combout => \inst3|Equal0~2_combout\);

-- Location: LCCOMB_X27_Y15_N0
\inst3|ptr~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|ptr~2_combout\ = (\inst3|Add0~12_combout\ & (((!\inst3|Equal0~1_combout\) # (!\inst3|Equal0~2_combout\)) # (!\inst3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~0_combout\,
	datab => \inst3|Add0~12_combout\,
	datac => \inst3|Equal0~2_combout\,
	datad => \inst3|Equal0~1_combout\,
	combout => \inst3|ptr~2_combout\);

-- Location: LCFF_X27_Y15_N1
\inst3|ptr[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst3|ptr~2_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|ptr\(6));

-- Location: LCCOMB_X27_Y15_N2
\inst3|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~1_combout\ = (\inst3|ptr\(4) & (!\inst3|ptr\(5) & (!\inst3|ptr\(3) & \inst3|ptr\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ptr\(4),
	datab => \inst3|ptr\(5),
	datac => \inst3|ptr\(3),
	datad => \inst3|ptr\(6),
	combout => \inst3|Equal0~1_combout\);

-- Location: LCCOMB_X27_Y16_N18
\inst3|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~14_combout\ = (\inst3|ptr\(7) & (!\inst3|Add0~13\)) # (!\inst3|ptr\(7) & ((\inst3|Add0~13\) # (GND)))
-- \inst3|Add0~15\ = CARRY((!\inst3|Add0~13\) # (!\inst3|ptr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ptr\(7),
	datad => VCC,
	cin => \inst3|Add0~13\,
	combout => \inst3|Add0~14_combout\,
	cout => \inst3|Add0~15\);

-- Location: LCCOMB_X27_Y15_N18
\inst3|ptr~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|ptr~3_combout\ = (\inst3|Add0~14_combout\ & (((!\inst3|Equal0~2_combout\) # (!\inst3|Equal0~1_combout\)) # (!\inst3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~0_combout\,
	datab => \inst3|Equal0~1_combout\,
	datac => \inst3|Equal0~2_combout\,
	datad => \inst3|Add0~14_combout\,
	combout => \inst3|ptr~3_combout\);

-- Location: LCFF_X27_Y15_N19
\inst3|ptr[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst3|ptr~3_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|ptr\(7));

-- Location: LCCOMB_X27_Y16_N20
\inst3|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~16_combout\ = (\inst3|ptr\(8) & (\inst3|Add0~15\ $ (GND))) # (!\inst3|ptr\(8) & (!\inst3|Add0~15\ & VCC))
-- \inst3|Add0~17\ = CARRY((\inst3|ptr\(8) & !\inst3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ptr\(8),
	datad => VCC,
	cin => \inst3|Add0~15\,
	combout => \inst3|Add0~16_combout\,
	cout => \inst3|Add0~17\);

-- Location: LCCOMB_X27_Y16_N30
\inst3|ptr~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|ptr~4_combout\ = (\inst3|Add0~16_combout\ & (((!\inst3|Equal0~1_combout\) # (!\inst3|Equal0~0_combout\)) # (!\inst3|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~2_combout\,
	datab => \inst3|Equal0~0_combout\,
	datac => \inst3|Add0~16_combout\,
	datad => \inst3|Equal0~1_combout\,
	combout => \inst3|ptr~4_combout\);

-- Location: LCFF_X27_Y16_N31
\inst3|ptr[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst3|ptr~4_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|ptr\(8));

-- Location: LCCOMB_X27_Y16_N22
\inst3|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~18_combout\ = (\inst3|ptr\(9) & (!\inst3|Add0~17\)) # (!\inst3|ptr\(9) & ((\inst3|Add0~17\) # (GND)))
-- \inst3|Add0~19\ = CARRY((!\inst3|Add0~17\) # (!\inst3|ptr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ptr\(9),
	datad => VCC,
	cin => \inst3|Add0~17\,
	combout => \inst3|Add0~18_combout\,
	cout => \inst3|Add0~19\);

-- Location: LCCOMB_X27_Y16_N0
\inst3|ptr~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|ptr~5_combout\ = (\inst3|Add0~18_combout\ & (((!\inst3|Equal0~0_combout\) # (!\inst3|Equal0~1_combout\)) # (!\inst3|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~2_combout\,
	datab => \inst3|Equal0~1_combout\,
	datac => \inst3|Equal0~0_combout\,
	datad => \inst3|Add0~18_combout\,
	combout => \inst3|ptr~5_combout\);

-- Location: LCFF_X27_Y16_N1
\inst3|ptr[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst3|ptr~5_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|ptr\(9));

-- Location: LCCOMB_X27_Y16_N24
\inst3|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~20_combout\ = \inst3|Add0~19\ $ (!\inst3|ptr\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ptr\(10),
	cin => \inst3|Add0~19\,
	combout => \inst3|Add0~20_combout\);

-- Location: LCCOMB_X27_Y16_N2
\inst3|ptr~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|ptr~6_combout\ = (\inst3|Add0~20_combout\ & (((!\inst3|Equal0~1_combout\) # (!\inst3|Equal0~0_combout\)) # (!\inst3|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~2_combout\,
	datab => \inst3|Equal0~0_combout\,
	datac => \inst3|Add0~20_combout\,
	datad => \inst3|Equal0~1_combout\,
	combout => \inst3|ptr~6_combout\);

-- Location: LCFF_X27_Y16_N3
\inst3|ptr[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst3|ptr~6_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|ptr\(10));

-- Location: LCCOMB_X27_Y15_N12
\inst3|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~0_combout\ = (\inst3|ptr\(8) & (\inst3|ptr\(7) & (\inst3|ptr\(9) & \inst3|ptr\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ptr\(8),
	datab => \inst3|ptr\(7),
	datac => \inst3|ptr\(9),
	datad => \inst3|ptr\(10),
	combout => \inst3|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y16_N28
\inst3|ptr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|ptr~0_combout\ = (\inst3|Add0~0_combout\ & (((!\inst3|Equal0~1_combout\) # (!\inst3|Equal0~0_combout\)) # (!\inst3|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~2_combout\,
	datab => \inst3|Equal0~0_combout\,
	datac => \inst3|Add0~0_combout\,
	datad => \inst3|Equal0~1_combout\,
	combout => \inst3|ptr~0_combout\);

-- Location: LCFF_X27_Y16_N29
\inst3|ptr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst3|ptr~0_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|ptr\(0));

-- Location: LCFF_X27_Y16_N7
\inst3|ptr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst3|Add0~2_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|ptr\(1));

-- Location: LCCOMB_X38_Y15_N30
\inst3|ram~23feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|ram~23feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst3|ram~23feeder_combout\);

-- Location: LCFF_X38_Y15_N31
\inst3|ram~23\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst3|ram~23feeder_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|ram~23_regout\);

-- Location: LCCOMB_X38_Y15_N28
\inst3|ram~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|ram~33_combout\ = (\inst3|ram_rtl_0|auto_generated|ram_block1a9\ & \inst3|ram~23_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ram_rtl_0|auto_generated|ram_block1a9\,
	datad => \inst3|ram~23_regout\,
	combout => \inst3|ram~33_combout\);

-- Location: LCFF_X36_Y16_N25
\inst3|data_d[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|o_dac_data_R[8]~8_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|data_d\(8));

-- Location: LCCOMB_X37_Y16_N2
\inst2|o_dac_data_R[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|o_dac_data_R[7]~7_combout\ = (\inst2|r_temp_R\(7) & (((\inst2|r_temp_R\(10) & \inst2|r_temp_R\(9))) # (!\inst2|r_temp_R\(11)))) # (!\inst2|r_temp_R\(7) & (!\inst2|r_temp_R\(11) & ((\inst2|r_temp_R\(10)) # (\inst2|r_temp_R\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_temp_R\(7),
	datab => \inst2|r_temp_R\(11),
	datac => \inst2|r_temp_R\(10),
	datad => \inst2|r_temp_R\(9),
	combout => \inst2|o_dac_data_R[7]~7_combout\);

-- Location: LCFF_X37_Y16_N23
\inst3|data_d[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|o_dac_data_R[7]~7_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|data_d\(7));

-- Location: LCFF_X36_Y16_N9
\inst2|r_temp_R[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_temp_R[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_temp_R\(4));

-- Location: LCCOMB_X37_Y16_N10
\inst2|o_dac_data_R[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|o_dac_data_R[4]~4_combout\ = (\inst2|r_temp_R\(10) & (((\inst2|r_temp_R\(4) & \inst2|r_temp_R\(9))) # (!\inst2|r_temp_R\(11)))) # (!\inst2|r_temp_R\(10) & (!\inst2|r_temp_R\(11) & ((\inst2|r_temp_R\(4)) # (\inst2|r_temp_R\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_temp_R\(10),
	datab => \inst2|r_temp_R\(11),
	datac => \inst2|r_temp_R\(4),
	datad => \inst2|r_temp_R\(9),
	combout => \inst2|o_dac_data_R[4]~4_combout\);

-- Location: LCCOMB_X37_Y16_N0
\inst2|o_dac_data_R[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|o_dac_data_R[5]~5_combout\ = (\inst2|r_temp_R\(5) & (((\inst2|r_temp_R\(10) & \inst2|r_temp_R\(9))) # (!\inst2|r_temp_R\(11)))) # (!\inst2|r_temp_R\(5) & (!\inst2|r_temp_R\(11) & ((\inst2|r_temp_R\(10)) # (\inst2|r_temp_R\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_temp_R\(5),
	datab => \inst2|r_temp_R\(11),
	datac => \inst2|r_temp_R\(10),
	datad => \inst2|r_temp_R\(9),
	combout => \inst2|o_dac_data_R[5]~5_combout\);

-- Location: LCCOMB_X34_Y16_N12
\inst3|ram~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|ram~28_combout\ = (\inst3|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\ & \inst3|ram~23_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	datad => \inst3|ram~23_regout\,
	combout => \inst3|ram~28_combout\);

-- Location: LCFF_X36_Y16_N5
\inst2|r_temp_R[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst2|r_temp_R[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|r_temp_R\(2));

-- Location: LCCOMB_X37_Y16_N6
\inst2|o_dac_data_R[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|o_dac_data_R[2]~2_combout\ = (\inst2|r_temp_R\(10) & (((\inst2|r_temp_R\(2) & \inst2|r_temp_R\(9))) # (!\inst2|r_temp_R\(11)))) # (!\inst2|r_temp_R\(10) & (!\inst2|r_temp_R\(11) & ((\inst2|r_temp_R\(2)) # (\inst2|r_temp_R\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_temp_R\(10),
	datab => \inst2|r_temp_R\(11),
	datac => \inst2|r_temp_R\(2),
	datad => \inst2|r_temp_R\(9),
	combout => \inst2|o_dac_data_R[2]~2_combout\);

-- Location: LCFF_X37_Y16_N15
\inst3|data_d[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|o_dac_data_R[2]~2_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|data_d\(2));

-- Location: LCCOMB_X36_Y16_N26
\inst2|o_dac_data_R[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|o_dac_data_R[0]~0_combout\ = (\inst2|r_temp_R\(0) & (((\inst2|r_temp_R\(10) & \inst2|r_temp_R\(9))) # (!\inst2|r_temp_R\(11)))) # (!\inst2|r_temp_R\(0) & (!\inst2|r_temp_R\(11) & ((\inst2|r_temp_R\(10)) # (\inst2|r_temp_R\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_temp_R\(0),
	datab => \inst2|r_temp_R\(11),
	datac => \inst2|r_temp_R\(10),
	datad => \inst2|r_temp_R\(9),
	combout => \inst2|o_dac_data_R[0]~0_combout\);

-- Location: LCCOMB_X37_Y16_N4
\inst2|o_dac_data_R[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|o_dac_data_R[1]~1_combout\ = (\inst2|r_temp_R\(1) & (((\inst2|r_temp_R\(10) & \inst2|r_temp_R\(9))) # (!\inst2|r_temp_R\(11)))) # (!\inst2|r_temp_R\(1) & (!\inst2|r_temp_R\(11) & ((\inst2|r_temp_R\(10)) # (\inst2|r_temp_R\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|r_temp_R\(1),
	datab => \inst2|r_temp_R\(11),
	datac => \inst2|r_temp_R\(10),
	datad => \inst2|r_temp_R\(9),
	combout => \inst2|o_dac_data_R[1]~1_combout\);

-- Location: M4K_X26_Y18
\inst3|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/DE2_demodula.ram0_carrier_phase_shift_90_998cd4c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "carrier_phase_shift_90:inst3|altsyncram:ram_rtl_0|altsyncram_9en1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2001,
	port_a_logical_ram_width => 10,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 11,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 2001,
	port_b_logical_ram_width => 10,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \KEY0~combout\,
	portbrewe => VCC,
	clk0 => \CLK_50~clkctrl_outclk\,
	portadatain => \inst3|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst3|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \inst3|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst3|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X34_Y16_N10
\inst3|ram~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|ram~25_combout\ = (\inst3|ram_rtl_0|auto_generated|ram_block1a1\ & \inst3|ram~23_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ram_rtl_0|auto_generated|ram_block1a1\,
	datad => \inst3|ram~23_regout\,
	combout => \inst3|ram~25_combout\);

-- Location: LCCOMB_X34_Y16_N16
\inst3|ram~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|ram~24_combout\ = (\inst3|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ & \inst3|ram~23_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \inst3|ram~23_regout\,
	combout => \inst3|ram~24_combout\);

-- Location: LCCOMB_X38_Y16_N12
\inst3|acc[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|acc[0]~21_combout\ = (\inst3|Add1~0_combout\ & ((GND) # (!\inst3|ram~24_combout\))) # (!\inst3|Add1~0_combout\ & (\inst3|ram~24_combout\ $ (GND)))
-- \inst3|acc[0]~22\ = CARRY((\inst3|Add1~0_combout\) # (!\inst3|ram~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~0_combout\,
	datab => \inst3|ram~24_combout\,
	datad => VCC,
	combout => \inst3|acc[0]~21_combout\,
	cout => \inst3|acc[0]~22\);

-- Location: LCCOMB_X38_Y16_N14
\inst3|acc[1]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|acc[1]~23_combout\ = (\inst3|Add1~2_combout\ & ((\inst3|ram~25_combout\ & (!\inst3|acc[0]~22\)) # (!\inst3|ram~25_combout\ & (\inst3|acc[0]~22\ & VCC)))) # (!\inst3|Add1~2_combout\ & ((\inst3|ram~25_combout\ & ((\inst3|acc[0]~22\) # (GND))) # 
-- (!\inst3|ram~25_combout\ & (!\inst3|acc[0]~22\))))
-- \inst3|acc[1]~24\ = CARRY((\inst3|Add1~2_combout\ & (\inst3|ram~25_combout\ & !\inst3|acc[0]~22\)) # (!\inst3|Add1~2_combout\ & ((\inst3|ram~25_combout\) # (!\inst3|acc[0]~22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~2_combout\,
	datab => \inst3|ram~25_combout\,
	datad => VCC,
	cin => \inst3|acc[0]~22\,
	combout => \inst3|acc[1]~23_combout\,
	cout => \inst3|acc[1]~24\);

-- Location: LCFF_X38_Y16_N15
\inst3|acc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst3|acc[1]~23_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|acc\(1));

-- Location: LCCOMB_X36_Y16_N28
\inst3|data_d[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|data_d[0]~feeder_combout\ = \inst2|o_dac_data_R[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|o_dac_data_R[0]~0_combout\,
	combout => \inst3|data_d[0]~feeder_combout\);

-- Location: LCFF_X36_Y16_N29
\inst3|data_d[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst3|data_d[0]~feeder_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|data_d\(0));

-- Location: LCCOMB_X37_Y16_N16
\inst3|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~4_combout\ = ((\inst3|acc\(2) $ (\inst3|data_d\(2) $ (!\inst3|Add1~3\)))) # (GND)
-- \inst3|Add1~5\ = CARRY((\inst3|acc\(2) & ((\inst3|data_d\(2)) # (!\inst3|Add1~3\))) # (!\inst3|acc\(2) & (\inst3|data_d\(2) & !\inst3|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|acc\(2),
	datab => \inst3|data_d\(2),
	datad => VCC,
	cin => \inst3|Add1~3\,
	combout => \inst3|Add1~4_combout\,
	cout => \inst3|Add1~5\);

-- Location: LCCOMB_X38_Y16_N16
\inst3|acc[2]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|acc[2]~25_combout\ = ((\inst3|ram~26_combout\ $ (\inst3|Add1~4_combout\ $ (\inst3|acc[1]~24\)))) # (GND)
-- \inst3|acc[2]~26\ = CARRY((\inst3|ram~26_combout\ & (\inst3|Add1~4_combout\ & !\inst3|acc[1]~24\)) # (!\inst3|ram~26_combout\ & ((\inst3|Add1~4_combout\) # (!\inst3|acc[1]~24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ram~26_combout\,
	datab => \inst3|Add1~4_combout\,
	datad => VCC,
	cin => \inst3|acc[1]~24\,
	combout => \inst3|acc[2]~25_combout\,
	cout => \inst3|acc[2]~26\);

-- Location: LCCOMB_X38_Y16_N18
\inst3|acc[3]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|acc[3]~27_combout\ = (\inst3|ram~27_combout\ & ((\inst3|Add1~6_combout\ & (!\inst3|acc[2]~26\)) # (!\inst3|Add1~6_combout\ & ((\inst3|acc[2]~26\) # (GND))))) # (!\inst3|ram~27_combout\ & ((\inst3|Add1~6_combout\ & (\inst3|acc[2]~26\ & VCC)) # 
-- (!\inst3|Add1~6_combout\ & (!\inst3|acc[2]~26\))))
-- \inst3|acc[3]~28\ = CARRY((\inst3|ram~27_combout\ & ((!\inst3|acc[2]~26\) # (!\inst3|Add1~6_combout\))) # (!\inst3|ram~27_combout\ & (!\inst3|Add1~6_combout\ & !\inst3|acc[2]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ram~27_combout\,
	datab => \inst3|Add1~6_combout\,
	datad => VCC,
	cin => \inst3|acc[2]~26\,
	combout => \inst3|acc[3]~27_combout\,
	cout => \inst3|acc[3]~28\);

-- Location: LCFF_X38_Y16_N19
\inst3|acc[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst3|acc[3]~27_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|acc\(3));

-- Location: LCCOMB_X37_Y16_N18
\inst3|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~6_combout\ = (\inst3|data_d\(3) & ((\inst3|acc\(3) & (\inst3|Add1~5\ & VCC)) # (!\inst3|acc\(3) & (!\inst3|Add1~5\)))) # (!\inst3|data_d\(3) & ((\inst3|acc\(3) & (!\inst3|Add1~5\)) # (!\inst3|acc\(3) & ((\inst3|Add1~5\) # (GND)))))
-- \inst3|Add1~7\ = CARRY((\inst3|data_d\(3) & (!\inst3|acc\(3) & !\inst3|Add1~5\)) # (!\inst3|data_d\(3) & ((!\inst3|Add1~5\) # (!\inst3|acc\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|data_d\(3),
	datab => \inst3|acc\(3),
	datad => VCC,
	cin => \inst3|Add1~5\,
	combout => \inst3|Add1~6_combout\,
	cout => \inst3|Add1~7\);

-- Location: LCCOMB_X38_Y16_N20
\inst3|acc[4]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|acc[4]~29_combout\ = ((\inst3|Add1~8_combout\ $ (\inst3|ram~28_combout\ $ (\inst3|acc[3]~28\)))) # (GND)
-- \inst3|acc[4]~30\ = CARRY((\inst3|Add1~8_combout\ & ((!\inst3|acc[3]~28\) # (!\inst3|ram~28_combout\))) # (!\inst3|Add1~8_combout\ & (!\inst3|ram~28_combout\ & !\inst3|acc[3]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~8_combout\,
	datab => \inst3|ram~28_combout\,
	datad => VCC,
	cin => \inst3|acc[3]~28\,
	combout => \inst3|acc[4]~29_combout\,
	cout => \inst3|acc[4]~30\);

-- Location: LCFF_X38_Y16_N21
\inst3|acc[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst3|acc[4]~29_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|acc\(4));

-- Location: LCCOMB_X37_Y16_N22
\inst3|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~10_combout\ = (\inst3|data_d\(5) & ((\inst3|acc\(5) & (\inst3|Add1~9\ & VCC)) # (!\inst3|acc\(5) & (!\inst3|Add1~9\)))) # (!\inst3|data_d\(5) & ((\inst3|acc\(5) & (!\inst3|Add1~9\)) # (!\inst3|acc\(5) & ((\inst3|Add1~9\) # (GND)))))
-- \inst3|Add1~11\ = CARRY((\inst3|data_d\(5) & (!\inst3|acc\(5) & !\inst3|Add1~9\)) # (!\inst3|data_d\(5) & ((!\inst3|Add1~9\) # (!\inst3|acc\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|data_d\(5),
	datab => \inst3|acc\(5),
	datad => VCC,
	cin => \inst3|Add1~9\,
	combout => \inst3|Add1~10_combout\,
	cout => \inst3|Add1~11\);

-- Location: LCCOMB_X38_Y16_N22
\inst3|acc[5]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|acc[5]~31_combout\ = (\inst3|ram~29_combout\ & ((\inst3|Add1~10_combout\ & (!\inst3|acc[4]~30\)) # (!\inst3|Add1~10_combout\ & ((\inst3|acc[4]~30\) # (GND))))) # (!\inst3|ram~29_combout\ & ((\inst3|Add1~10_combout\ & (\inst3|acc[4]~30\ & VCC)) # 
-- (!\inst3|Add1~10_combout\ & (!\inst3|acc[4]~30\))))
-- \inst3|acc[5]~32\ = CARRY((\inst3|ram~29_combout\ & ((!\inst3|acc[4]~30\) # (!\inst3|Add1~10_combout\))) # (!\inst3|ram~29_combout\ & (!\inst3|Add1~10_combout\ & !\inst3|acc[4]~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ram~29_combout\,
	datab => \inst3|Add1~10_combout\,
	datad => VCC,
	cin => \inst3|acc[4]~30\,
	combout => \inst3|acc[5]~31_combout\,
	cout => \inst3|acc[5]~32\);

-- Location: LCFF_X38_Y16_N23
\inst3|acc[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst3|acc[5]~31_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|acc\(5));

-- Location: LCCOMB_X37_Y16_N24
\inst3|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~12_combout\ = ((\inst3|data_d\(6) $ (\inst3|acc\(6) $ (!\inst3|Add1~11\)))) # (GND)
-- \inst3|Add1~13\ = CARRY((\inst3|data_d\(6) & ((\inst3|acc\(6)) # (!\inst3|Add1~11\))) # (!\inst3|data_d\(6) & (\inst3|acc\(6) & !\inst3|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|data_d\(6),
	datab => \inst3|acc\(6),
	datad => VCC,
	cin => \inst3|Add1~11\,
	combout => \inst3|Add1~12_combout\,
	cout => \inst3|Add1~13\);

-- Location: LCCOMB_X38_Y16_N24
\inst3|acc[6]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|acc[6]~33_combout\ = ((\inst3|ram~30_combout\ $ (\inst3|Add1~12_combout\ $ (\inst3|acc[5]~32\)))) # (GND)
-- \inst3|acc[6]~34\ = CARRY((\inst3|ram~30_combout\ & (\inst3|Add1~12_combout\ & !\inst3|acc[5]~32\)) # (!\inst3|ram~30_combout\ & ((\inst3|Add1~12_combout\) # (!\inst3|acc[5]~32\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ram~30_combout\,
	datab => \inst3|Add1~12_combout\,
	datad => VCC,
	cin => \inst3|acc[5]~32\,
	combout => \inst3|acc[6]~33_combout\,
	cout => \inst3|acc[6]~34\);

-- Location: LCFF_X38_Y16_N25
\inst3|acc[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst3|acc[6]~33_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|acc\(6));

-- Location: LCCOMB_X37_Y16_N26
\inst3|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~14_combout\ = (\inst3|acc\(7) & ((\inst3|data_d\(7) & (\inst3|Add1~13\ & VCC)) # (!\inst3|data_d\(7) & (!\inst3|Add1~13\)))) # (!\inst3|acc\(7) & ((\inst3|data_d\(7) & (!\inst3|Add1~13\)) # (!\inst3|data_d\(7) & ((\inst3|Add1~13\) # (GND)))))
-- \inst3|Add1~15\ = CARRY((\inst3|acc\(7) & (!\inst3|data_d\(7) & !\inst3|Add1~13\)) # (!\inst3|acc\(7) & ((!\inst3|Add1~13\) # (!\inst3|data_d\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|acc\(7),
	datab => \inst3|data_d\(7),
	datad => VCC,
	cin => \inst3|Add1~13\,
	combout => \inst3|Add1~14_combout\,
	cout => \inst3|Add1~15\);

-- Location: LCCOMB_X37_Y16_N28
\inst3|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~16_combout\ = ((\inst3|acc\(8) $ (\inst3|data_d\(8) $ (!\inst3|Add1~15\)))) # (GND)
-- \inst3|Add1~17\ = CARRY((\inst3|acc\(8) & ((\inst3|data_d\(8)) # (!\inst3|Add1~15\))) # (!\inst3|acc\(8) & (\inst3|data_d\(8) & !\inst3|Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|acc\(8),
	datab => \inst3|data_d\(8),
	datad => VCC,
	cin => \inst3|Add1~15\,
	combout => \inst3|Add1~16_combout\,
	cout => \inst3|Add1~17\);

-- Location: LCCOMB_X38_Y16_N26
\inst3|acc[7]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|acc[7]~35_combout\ = (\inst3|ram~31_combout\ & ((\inst3|Add1~14_combout\ & (!\inst3|acc[6]~34\)) # (!\inst3|Add1~14_combout\ & ((\inst3|acc[6]~34\) # (GND))))) # (!\inst3|ram~31_combout\ & ((\inst3|Add1~14_combout\ & (\inst3|acc[6]~34\ & VCC)) # 
-- (!\inst3|Add1~14_combout\ & (!\inst3|acc[6]~34\))))
-- \inst3|acc[7]~36\ = CARRY((\inst3|ram~31_combout\ & ((!\inst3|acc[6]~34\) # (!\inst3|Add1~14_combout\))) # (!\inst3|ram~31_combout\ & (!\inst3|Add1~14_combout\ & !\inst3|acc[6]~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ram~31_combout\,
	datab => \inst3|Add1~14_combout\,
	datad => VCC,
	cin => \inst3|acc[6]~34\,
	combout => \inst3|acc[7]~35_combout\,
	cout => \inst3|acc[7]~36\);

-- Location: LCCOMB_X38_Y16_N28
\inst3|acc[8]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|acc[8]~37_combout\ = ((\inst3|ram~32_combout\ $ (\inst3|Add1~16_combout\ $ (\inst3|acc[7]~36\)))) # (GND)
-- \inst3|acc[8]~38\ = CARRY((\inst3|ram~32_combout\ & (\inst3|Add1~16_combout\ & !\inst3|acc[7]~36\)) # (!\inst3|ram~32_combout\ & ((\inst3|Add1~16_combout\) # (!\inst3|acc[7]~36\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ram~32_combout\,
	datab => \inst3|Add1~16_combout\,
	datad => VCC,
	cin => \inst3|acc[7]~36\,
	combout => \inst3|acc[8]~37_combout\,
	cout => \inst3|acc[8]~38\);

-- Location: LCCOMB_X38_Y16_N30
\inst3|acc[9]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|acc[9]~39_combout\ = (\inst3|Add1~18_combout\ & ((\inst3|ram~33_combout\ & (!\inst3|acc[8]~38\)) # (!\inst3|ram~33_combout\ & (\inst3|acc[8]~38\ & VCC)))) # (!\inst3|Add1~18_combout\ & ((\inst3|ram~33_combout\ & ((\inst3|acc[8]~38\) # (GND))) # 
-- (!\inst3|ram~33_combout\ & (!\inst3|acc[8]~38\))))
-- \inst3|acc[9]~40\ = CARRY((\inst3|Add1~18_combout\ & (\inst3|ram~33_combout\ & !\inst3|acc[8]~38\)) # (!\inst3|Add1~18_combout\ & ((\inst3|ram~33_combout\) # (!\inst3|acc[8]~38\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~18_combout\,
	datab => \inst3|ram~33_combout\,
	datad => VCC,
	cin => \inst3|acc[8]~38\,
	combout => \inst3|acc[9]~39_combout\,
	cout => \inst3|acc[9]~40\);

-- Location: LCCOMB_X38_Y15_N0
\inst3|acc[10]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|acc[10]~41_combout\ = ((\inst3|Add1~20_combout\ $ (\inst3|ram~33_combout\ $ (\inst3|acc[9]~40\)))) # (GND)
-- \inst3|acc[10]~42\ = CARRY((\inst3|Add1~20_combout\ & ((!\inst3|acc[9]~40\) # (!\inst3|ram~33_combout\))) # (!\inst3|Add1~20_combout\ & (!\inst3|ram~33_combout\ & !\inst3|acc[9]~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~20_combout\,
	datab => \inst3|ram~33_combout\,
	datad => VCC,
	cin => \inst3|acc[9]~40\,
	combout => \inst3|acc[10]~41_combout\,
	cout => \inst3|acc[10]~42\);

-- Location: LCCOMB_X38_Y15_N2
\inst3|acc[11]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|acc[11]~43_combout\ = (\inst3|Add1~22_combout\ & ((\inst3|ram~33_combout\ & (!\inst3|acc[10]~42\)) # (!\inst3|ram~33_combout\ & (\inst3|acc[10]~42\ & VCC)))) # (!\inst3|Add1~22_combout\ & ((\inst3|ram~33_combout\ & ((\inst3|acc[10]~42\) # (GND))) # 
-- (!\inst3|ram~33_combout\ & (!\inst3|acc[10]~42\))))
-- \inst3|acc[11]~44\ = CARRY((\inst3|Add1~22_combout\ & (\inst3|ram~33_combout\ & !\inst3|acc[10]~42\)) # (!\inst3|Add1~22_combout\ & ((\inst3|ram~33_combout\) # (!\inst3|acc[10]~42\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~22_combout\,
	datab => \inst3|ram~33_combout\,
	datad => VCC,
	cin => \inst3|acc[10]~42\,
	combout => \inst3|acc[11]~43_combout\,
	cout => \inst3|acc[11]~44\);

-- Location: LCCOMB_X38_Y15_N4
\inst3|acc[12]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|acc[12]~45_combout\ = ((\inst3|Add1~24_combout\ $ (\inst3|ram~33_combout\ $ (\inst3|acc[11]~44\)))) # (GND)
-- \inst3|acc[12]~46\ = CARRY((\inst3|Add1~24_combout\ & ((!\inst3|acc[11]~44\) # (!\inst3|ram~33_combout\))) # (!\inst3|Add1~24_combout\ & (!\inst3|ram~33_combout\ & !\inst3|acc[11]~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~24_combout\,
	datab => \inst3|ram~33_combout\,
	datad => VCC,
	cin => \inst3|acc[11]~44\,
	combout => \inst3|acc[12]~45_combout\,
	cout => \inst3|acc[12]~46\);

-- Location: LCCOMB_X38_Y15_N6
\inst3|acc[13]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|acc[13]~47_combout\ = (\inst3|Add1~26_combout\ & ((\inst3|ram~33_combout\ & (!\inst3|acc[12]~46\)) # (!\inst3|ram~33_combout\ & (\inst3|acc[12]~46\ & VCC)))) # (!\inst3|Add1~26_combout\ & ((\inst3|ram~33_combout\ & ((\inst3|acc[12]~46\) # (GND))) # 
-- (!\inst3|ram~33_combout\ & (!\inst3|acc[12]~46\))))
-- \inst3|acc[13]~48\ = CARRY((\inst3|Add1~26_combout\ & (\inst3|ram~33_combout\ & !\inst3|acc[12]~46\)) # (!\inst3|Add1~26_combout\ & ((\inst3|ram~33_combout\) # (!\inst3|acc[12]~46\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~26_combout\,
	datab => \inst3|ram~33_combout\,
	datad => VCC,
	cin => \inst3|acc[12]~46\,
	combout => \inst3|acc[13]~47_combout\,
	cout => \inst3|acc[13]~48\);

-- Location: LCCOMB_X38_Y15_N8
\inst3|acc[14]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|acc[14]~49_combout\ = ((\inst3|Add1~28_combout\ $ (\inst3|ram~33_combout\ $ (\inst3|acc[13]~48\)))) # (GND)
-- \inst3|acc[14]~50\ = CARRY((\inst3|Add1~28_combout\ & ((!\inst3|acc[13]~48\) # (!\inst3|ram~33_combout\))) # (!\inst3|Add1~28_combout\ & (!\inst3|ram~33_combout\ & !\inst3|acc[13]~48\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~28_combout\,
	datab => \inst3|ram~33_combout\,
	datad => VCC,
	cin => \inst3|acc[13]~48\,
	combout => \inst3|acc[14]~49_combout\,
	cout => \inst3|acc[14]~50\);

-- Location: LCCOMB_X38_Y15_N10
\inst3|acc[15]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|acc[15]~51_combout\ = (\inst3|Add1~30_combout\ & ((\inst3|ram~33_combout\ & (!\inst3|acc[14]~50\)) # (!\inst3|ram~33_combout\ & (\inst3|acc[14]~50\ & VCC)))) # (!\inst3|Add1~30_combout\ & ((\inst3|ram~33_combout\ & ((\inst3|acc[14]~50\) # (GND))) # 
-- (!\inst3|ram~33_combout\ & (!\inst3|acc[14]~50\))))
-- \inst3|acc[15]~52\ = CARRY((\inst3|Add1~30_combout\ & (\inst3|ram~33_combout\ & !\inst3|acc[14]~50\)) # (!\inst3|Add1~30_combout\ & ((\inst3|ram~33_combout\) # (!\inst3|acc[14]~50\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~30_combout\,
	datab => \inst3|ram~33_combout\,
	datad => VCC,
	cin => \inst3|acc[14]~50\,
	combout => \inst3|acc[15]~51_combout\,
	cout => \inst3|acc[15]~52\);

-- Location: LCCOMB_X38_Y15_N12
\inst3|acc[16]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|acc[16]~53_combout\ = ((\inst3|Add1~32_combout\ $ (\inst3|ram~33_combout\ $ (\inst3|acc[15]~52\)))) # (GND)
-- \inst3|acc[16]~54\ = CARRY((\inst3|Add1~32_combout\ & ((!\inst3|acc[15]~52\) # (!\inst3|ram~33_combout\))) # (!\inst3|Add1~32_combout\ & (!\inst3|ram~33_combout\ & !\inst3|acc[15]~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~32_combout\,
	datab => \inst3|ram~33_combout\,
	datad => VCC,
	cin => \inst3|acc[15]~52\,
	combout => \inst3|acc[16]~53_combout\,
	cout => \inst3|acc[16]~54\);

-- Location: LCCOMB_X38_Y15_N14
\inst3|acc[17]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|acc[17]~55_combout\ = (\inst3|Add1~34_combout\ & ((\inst3|ram~33_combout\ & (!\inst3|acc[16]~54\)) # (!\inst3|ram~33_combout\ & (\inst3|acc[16]~54\ & VCC)))) # (!\inst3|Add1~34_combout\ & ((\inst3|ram~33_combout\ & ((\inst3|acc[16]~54\) # (GND))) # 
-- (!\inst3|ram~33_combout\ & (!\inst3|acc[16]~54\))))
-- \inst3|acc[17]~56\ = CARRY((\inst3|Add1~34_combout\ & (\inst3|ram~33_combout\ & !\inst3|acc[16]~54\)) # (!\inst3|Add1~34_combout\ & ((\inst3|ram~33_combout\) # (!\inst3|acc[16]~54\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~34_combout\,
	datab => \inst3|ram~33_combout\,
	datad => VCC,
	cin => \inst3|acc[16]~54\,
	combout => \inst3|acc[17]~55_combout\,
	cout => \inst3|acc[17]~56\);

-- Location: LCFF_X38_Y15_N15
\inst3|acc[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst3|acc[17]~55_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|acc\(17));

-- Location: LCFF_X38_Y15_N13
\inst3|acc[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst3|acc[16]~53_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|acc\(16));

-- Location: LCFF_X38_Y15_N11
\inst3|acc[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst3|acc[15]~51_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|acc\(15));

-- Location: LCFF_X38_Y15_N9
\inst3|acc[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst3|acc[14]~49_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|acc\(14));

-- Location: LCFF_X38_Y15_N7
\inst3|acc[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst3|acc[13]~47_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|acc\(13));

-- Location: LCFF_X37_Y16_N31
\inst3|data_d[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \inst2|r_temp_R\(11),
	aclr => \ALT_INV_KEY0~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|data_d\(9));

-- Location: LCFF_X38_Y15_N1
\inst3|acc[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst3|acc[10]~41_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|acc\(10));

-- Location: LCFF_X38_Y16_N31
\inst3|acc[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst3|acc[9]~39_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|acc\(9));

-- Location: LCCOMB_X37_Y15_N16
\inst3|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~36_combout\ = ((\inst3|data_d\(9) $ (\inst3|acc\(18) $ (!\inst3|Add1~35\)))) # (GND)
-- \inst3|Add1~37\ = CARRY((\inst3|data_d\(9) & ((\inst3|acc\(18)) # (!\inst3|Add1~35\))) # (!\inst3|data_d\(9) & (\inst3|acc\(18) & !\inst3|Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|data_d\(9),
	datab => \inst3|acc\(18),
	datad => VCC,
	cin => \inst3|Add1~35\,
	combout => \inst3|Add1~36_combout\,
	cout => \inst3|Add1~37\);

-- Location: LCCOMB_X38_Y15_N16
\inst3|acc[18]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|acc[18]~57_combout\ = ((\inst3|ram~33_combout\ $ (\inst3|Add1~36_combout\ $ (\inst3|acc[17]~56\)))) # (GND)
-- \inst3|acc[18]~58\ = CARRY((\inst3|ram~33_combout\ & (\inst3|Add1~36_combout\ & !\inst3|acc[17]~56\)) # (!\inst3|ram~33_combout\ & ((\inst3|Add1~36_combout\) # (!\inst3|acc[17]~56\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ram~33_combout\,
	datab => \inst3|Add1~36_combout\,
	datad => VCC,
	cin => \inst3|acc[17]~56\,
	combout => \inst3|acc[18]~57_combout\,
	cout => \inst3|acc[18]~58\);

-- Location: LCFF_X38_Y15_N17
\inst3|acc[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst3|acc[18]~57_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|acc\(18));

-- Location: LCCOMB_X38_Y15_N18
\inst3|acc[19]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|acc[19]~59_combout\ = (\inst3|ram~33_combout\ & ((\inst3|Add1~38_combout\ & (!\inst3|acc[18]~58\)) # (!\inst3|Add1~38_combout\ & ((\inst3|acc[18]~58\) # (GND))))) # (!\inst3|ram~33_combout\ & ((\inst3|Add1~38_combout\ & (\inst3|acc[18]~58\ & VCC)) 
-- # (!\inst3|Add1~38_combout\ & (!\inst3|acc[18]~58\))))
-- \inst3|acc[19]~60\ = CARRY((\inst3|ram~33_combout\ & ((!\inst3|acc[18]~58\) # (!\inst3|Add1~38_combout\))) # (!\inst3|ram~33_combout\ & (!\inst3|Add1~38_combout\ & !\inst3|acc[18]~58\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ram~33_combout\,
	datab => \inst3|Add1~38_combout\,
	datad => VCC,
	cin => \inst3|acc[18]~58\,
	combout => \inst3|acc[19]~59_combout\,
	cout => \inst3|acc[19]~60\);

-- Location: LCFF_X38_Y15_N19
\inst3|acc[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst3|acc[19]~59_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|acc\(19));

-- Location: LCCOMB_X38_Y15_N20
\inst3|acc[20]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|acc[20]~61_combout\ = \inst3|Add1~40_combout\ $ (\inst3|acc[19]~60\ $ (\inst3|ram~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~40_combout\,
	datad => \inst3|ram~33_combout\,
	cin => \inst3|acc[19]~60\,
	combout => \inst3|acc[20]~61_combout\);

-- Location: LCFF_X38_Y15_N21
\inst3|acc[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst3|acc[20]~61_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|acc\(20));

-- Location: DSPMULT_X39_Y15_N0
\inst3|Mult0|auto_generated|mac_mult3\ : cycloneii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \inst3|Mult0|auto_generated|mac_mult3_DATAA_bus\,
	datab => \inst3|Mult0|auto_generated|mac_mult3_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst3|Mult0|auto_generated|mac_mult3_DATAOUT_bus\);

-- Location: LCCOMB_X40_Y15_N2
\inst3|Mult0|auto_generated|add9_result[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mult0|auto_generated|add9_result[1]~2_combout\ = (\inst3|Mult0|auto_generated|mac_out4~DATAOUT8\ & (!\inst3|Mult0|auto_generated|add9_result[0]~1\)) # (!\inst3|Mult0|auto_generated|mac_out4~DATAOUT8\ & 
-- ((\inst3|Mult0|auto_generated|add9_result[0]~1\) # (GND)))
-- \inst3|Mult0|auto_generated|add9_result[1]~3\ = CARRY((!\inst3|Mult0|auto_generated|add9_result[0]~1\) # (!\inst3|Mult0|auto_generated|mac_out4~DATAOUT8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|auto_generated|mac_out4~DATAOUT8\,
	datad => VCC,
	cin => \inst3|Mult0|auto_generated|add9_result[0]~1\,
	combout => \inst3|Mult0|auto_generated|add9_result[1]~2_combout\,
	cout => \inst3|Mult0|auto_generated|add9_result[1]~3\);

-- Location: LCCOMB_X40_Y15_N4
\inst3|Mult0|auto_generated|add9_result[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mult0|auto_generated|add9_result[2]~4_combout\ = (\inst3|Mult0|auto_generated|mac_out4~DATAOUT9\ & (\inst3|Mult0|auto_generated|add9_result[1]~3\ $ (GND))) # (!\inst3|Mult0|auto_generated|mac_out4~DATAOUT9\ & 
-- (!\inst3|Mult0|auto_generated|add9_result[1]~3\ & VCC))
-- \inst3|Mult0|auto_generated|add9_result[2]~5\ = CARRY((\inst3|Mult0|auto_generated|mac_out4~DATAOUT9\ & !\inst3|Mult0|auto_generated|add9_result[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mult0|auto_generated|mac_out4~DATAOUT9\,
	datad => VCC,
	cin => \inst3|Mult0|auto_generated|add9_result[1]~3\,
	combout => \inst3|Mult0|auto_generated|add9_result[2]~4_combout\,
	cout => \inst3|Mult0|auto_generated|add9_result[2]~5\);

-- Location: LCFF_X38_Y16_N13
\inst3|acc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst3|acc[0]~21_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|acc\(0));

-- Location: LCFF_X38_Y16_N17
\inst3|acc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst3|acc[2]~25_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|acc\(2));

-- Location: LCFF_X38_Y16_N27
\inst3|acc[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst3|acc[7]~35_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|acc\(7));

-- Location: LCFF_X38_Y16_N29
\inst3|acc[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst3|acc[8]~37_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|acc\(8));

-- Location: LCFF_X38_Y15_N3
\inst3|acc[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst3|acc[11]~43_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|acc\(11));

-- Location: LCFF_X38_Y15_N5
\inst3|acc[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst3|acc[12]~45_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|acc\(12));

-- Location: DSPMULT_X39_Y16_N0
\inst3|Mult0|auto_generated|mac_mult1\ : cycloneii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => \~GND~combout\,
	signb => VCC,
	dataa => \inst3|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \inst3|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X40_Y16_N0
\inst3|Mult0|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mult0|auto_generated|op_1~0_combout\ = (\inst3|Mult0|auto_generated|mac_out2~DATAOUT18\ & (\inst3|Mult0|auto_generated|mac_out4~dataout\ $ (VCC))) # (!\inst3|Mult0|auto_generated|mac_out2~DATAOUT18\ & (\inst3|Mult0|auto_generated|mac_out4~dataout\ 
-- & VCC))
-- \inst3|Mult0|auto_generated|op_1~1\ = CARRY((\inst3|Mult0|auto_generated|mac_out2~DATAOUT18\ & \inst3|Mult0|auto_generated|mac_out4~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datab => \inst3|Mult0|auto_generated|mac_out4~dataout\,
	datad => VCC,
	combout => \inst3|Mult0|auto_generated|op_1~0_combout\,
	cout => \inst3|Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X40_Y16_N2
\inst3|Mult0|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mult0|auto_generated|op_1~2_combout\ = (\inst3|Mult0|auto_generated|mac_out4~DATAOUT1\ & ((\inst3|Mult0|auto_generated|mac_out2~DATAOUT19\ & (\inst3|Mult0|auto_generated|op_1~1\ & VCC)) # (!\inst3|Mult0|auto_generated|mac_out2~DATAOUT19\ & 
-- (!\inst3|Mult0|auto_generated|op_1~1\)))) # (!\inst3|Mult0|auto_generated|mac_out4~DATAOUT1\ & ((\inst3|Mult0|auto_generated|mac_out2~DATAOUT19\ & (!\inst3|Mult0|auto_generated|op_1~1\)) # (!\inst3|Mult0|auto_generated|mac_out2~DATAOUT19\ & 
-- ((\inst3|Mult0|auto_generated|op_1~1\) # (GND)))))
-- \inst3|Mult0|auto_generated|op_1~3\ = CARRY((\inst3|Mult0|auto_generated|mac_out4~DATAOUT1\ & (!\inst3|Mult0|auto_generated|mac_out2~DATAOUT19\ & !\inst3|Mult0|auto_generated|op_1~1\)) # (!\inst3|Mult0|auto_generated|mac_out4~DATAOUT1\ & 
-- ((!\inst3|Mult0|auto_generated|op_1~1\) # (!\inst3|Mult0|auto_generated|mac_out2~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|auto_generated|mac_out4~DATAOUT1\,
	datab => \inst3|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \inst3|Mult0|auto_generated|op_1~1\,
	combout => \inst3|Mult0|auto_generated|op_1~2_combout\,
	cout => \inst3|Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X40_Y16_N4
\inst3|Mult0|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mult0|auto_generated|op_1~4_combout\ = ((\inst3|Mult0|auto_generated|mac_out4~DATAOUT2\ $ (\inst3|Mult0|auto_generated|mac_out2~DATAOUT20\ $ (!\inst3|Mult0|auto_generated|op_1~3\)))) # (GND)
-- \inst3|Mult0|auto_generated|op_1~5\ = CARRY((\inst3|Mult0|auto_generated|mac_out4~DATAOUT2\ & ((\inst3|Mult0|auto_generated|mac_out2~DATAOUT20\) # (!\inst3|Mult0|auto_generated|op_1~3\))) # (!\inst3|Mult0|auto_generated|mac_out4~DATAOUT2\ & 
-- (\inst3|Mult0|auto_generated|mac_out2~DATAOUT20\ & !\inst3|Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|auto_generated|mac_out4~DATAOUT2\,
	datab => \inst3|Mult0|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \inst3|Mult0|auto_generated|op_1~3\,
	combout => \inst3|Mult0|auto_generated|op_1~4_combout\,
	cout => \inst3|Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X40_Y16_N6
\inst3|Mult0|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mult0|auto_generated|op_1~6_combout\ = (\inst3|Mult0|auto_generated|mac_out2~DATAOUT21\ & ((\inst3|Mult0|auto_generated|mac_out4~DATAOUT3\ & (\inst3|Mult0|auto_generated|op_1~5\ & VCC)) # (!\inst3|Mult0|auto_generated|mac_out4~DATAOUT3\ & 
-- (!\inst3|Mult0|auto_generated|op_1~5\)))) # (!\inst3|Mult0|auto_generated|mac_out2~DATAOUT21\ & ((\inst3|Mult0|auto_generated|mac_out4~DATAOUT3\ & (!\inst3|Mult0|auto_generated|op_1~5\)) # (!\inst3|Mult0|auto_generated|mac_out4~DATAOUT3\ & 
-- ((\inst3|Mult0|auto_generated|op_1~5\) # (GND)))))
-- \inst3|Mult0|auto_generated|op_1~7\ = CARRY((\inst3|Mult0|auto_generated|mac_out2~DATAOUT21\ & (!\inst3|Mult0|auto_generated|mac_out4~DATAOUT3\ & !\inst3|Mult0|auto_generated|op_1~5\)) # (!\inst3|Mult0|auto_generated|mac_out2~DATAOUT21\ & 
-- ((!\inst3|Mult0|auto_generated|op_1~5\) # (!\inst3|Mult0|auto_generated|mac_out4~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|auto_generated|mac_out2~DATAOUT21\,
	datab => \inst3|Mult0|auto_generated|mac_out4~DATAOUT3\,
	datad => VCC,
	cin => \inst3|Mult0|auto_generated|op_1~5\,
	combout => \inst3|Mult0|auto_generated|op_1~6_combout\,
	cout => \inst3|Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X40_Y16_N16
\inst3|Mult0|auto_generated|op_1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mult0|auto_generated|op_1~16_combout\ = (\inst3|Mult0|auto_generated|add9_result[1]~2_combout\ & ((GND) # (!\inst3|Mult0|auto_generated|op_1~15\))) # (!\inst3|Mult0|auto_generated|add9_result[1]~2_combout\ & (\inst3|Mult0|auto_generated|op_1~15\ $ 
-- (GND)))
-- \inst3|Mult0|auto_generated|op_1~17\ = CARRY((\inst3|Mult0|auto_generated|add9_result[1]~2_combout\) # (!\inst3|Mult0|auto_generated|op_1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mult0|auto_generated|add9_result[1]~2_combout\,
	datad => VCC,
	cin => \inst3|Mult0|auto_generated|op_1~15\,
	combout => \inst3|Mult0|auto_generated|op_1~16_combout\,
	cout => \inst3|Mult0|auto_generated|op_1~17\);

-- Location: LCCOMB_X40_Y16_N18
\inst3|Mult0|auto_generated|op_1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mult0|auto_generated|op_1~18_combout\ = (\inst3|Mult0|auto_generated|add9_result[2]~4_combout\ & (\inst3|Mult0|auto_generated|op_1~17\ & VCC)) # (!\inst3|Mult0|auto_generated|add9_result[2]~4_combout\ & (!\inst3|Mult0|auto_generated|op_1~17\))
-- \inst3|Mult0|auto_generated|op_1~19\ = CARRY((!\inst3|Mult0|auto_generated|add9_result[2]~4_combout\ & !\inst3|Mult0|auto_generated|op_1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mult0|auto_generated|add9_result[2]~4_combout\,
	datad => VCC,
	cin => \inst3|Mult0|auto_generated|op_1~17\,
	combout => \inst3|Mult0|auto_generated|op_1~18_combout\,
	cout => \inst3|Mult0|auto_generated|op_1~19\);

-- Location: LCCOMB_X40_Y16_N22
\inst3|data_out[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|data_out[0]~0_combout\ = (\inst3|Mult0|auto_generated|op_1~20_combout\ & (\inst3|Mult0|auto_generated|op_1~18_combout\ & (\inst3|Mult0|auto_generated|op_1~16_combout\ & \inst3|Mult0|auto_generated|w155w\(17)))) # 
-- (!\inst3|Mult0|auto_generated|op_1~20_combout\ & ((\inst3|Mult0|auto_generated|op_1~18_combout\) # ((\inst3|Mult0|auto_generated|op_1~16_combout\) # (\inst3|Mult0|auto_generated|w155w\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|auto_generated|op_1~20_combout\,
	datab => \inst3|Mult0|auto_generated|op_1~18_combout\,
	datac => \inst3|Mult0|auto_generated|op_1~16_combout\,
	datad => \inst3|Mult0|auto_generated|w155w\(17),
	combout => \inst3|data_out[0]~0_combout\);

-- Location: LCCOMB_X40_Y16_N28
\inst3|data_out[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|data_out[1]~1_combout\ = (\inst3|Mult0|auto_generated|op_1~20_combout\ & (\inst3|Mult0|auto_generated|op_1~0_combout\ & (\inst3|Mult0|auto_generated|op_1~16_combout\ & \inst3|Mult0|auto_generated|op_1~18_combout\))) # 
-- (!\inst3|Mult0|auto_generated|op_1~20_combout\ & ((\inst3|Mult0|auto_generated|op_1~0_combout\) # ((\inst3|Mult0|auto_generated|op_1~16_combout\) # (\inst3|Mult0|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|auto_generated|op_1~20_combout\,
	datab => \inst3|Mult0|auto_generated|op_1~0_combout\,
	datac => \inst3|Mult0|auto_generated|op_1~16_combout\,
	datad => \inst3|Mult0|auto_generated|op_1~18_combout\,
	combout => \inst3|data_out[1]~1_combout\);

-- Location: LCCOMB_X40_Y16_N26
\inst3|data_out[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|data_out[2]~2_combout\ = (\inst3|Mult0|auto_generated|op_1~20_combout\ & (\inst3|Mult0|auto_generated|op_1~2_combout\ & (\inst3|Mult0|auto_generated|op_1~16_combout\ & \inst3|Mult0|auto_generated|op_1~18_combout\))) # 
-- (!\inst3|Mult0|auto_generated|op_1~20_combout\ & ((\inst3|Mult0|auto_generated|op_1~2_combout\) # ((\inst3|Mult0|auto_generated|op_1~16_combout\) # (\inst3|Mult0|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|auto_generated|op_1~20_combout\,
	datab => \inst3|Mult0|auto_generated|op_1~2_combout\,
	datac => \inst3|Mult0|auto_generated|op_1~16_combout\,
	datad => \inst3|Mult0|auto_generated|op_1~18_combout\,
	combout => \inst3|data_out[2]~2_combout\);

-- Location: LCCOMB_X40_Y16_N24
\inst3|data_out[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|data_out[3]~3_combout\ = (\inst3|Mult0|auto_generated|op_1~20_combout\ & (\inst3|Mult0|auto_generated|op_1~4_combout\ & (\inst3|Mult0|auto_generated|op_1~16_combout\ & \inst3|Mult0|auto_generated|op_1~18_combout\))) # 
-- (!\inst3|Mult0|auto_generated|op_1~20_combout\ & ((\inst3|Mult0|auto_generated|op_1~4_combout\) # ((\inst3|Mult0|auto_generated|op_1~16_combout\) # (\inst3|Mult0|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|auto_generated|op_1~20_combout\,
	datab => \inst3|Mult0|auto_generated|op_1~4_combout\,
	datac => \inst3|Mult0|auto_generated|op_1~16_combout\,
	datad => \inst3|Mult0|auto_generated|op_1~18_combout\,
	combout => \inst3|data_out[3]~3_combout\);

-- Location: LCCOMB_X40_Y16_N30
\inst3|data_out[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|data_out[4]~4_combout\ = (\inst3|Mult0|auto_generated|op_1~20_combout\ & (\inst3|Mult0|auto_generated|op_1~18_combout\ & (\inst3|Mult0|auto_generated|op_1~16_combout\ & \inst3|Mult0|auto_generated|op_1~6_combout\))) # 
-- (!\inst3|Mult0|auto_generated|op_1~20_combout\ & ((\inst3|Mult0|auto_generated|op_1~18_combout\) # ((\inst3|Mult0|auto_generated|op_1~16_combout\) # (\inst3|Mult0|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|auto_generated|op_1~20_combout\,
	datab => \inst3|Mult0|auto_generated|op_1~18_combout\,
	datac => \inst3|Mult0|auto_generated|op_1~16_combout\,
	datad => \inst3|Mult0|auto_generated|op_1~6_combout\,
	combout => \inst3|data_out[4]~4_combout\);

-- Location: LCCOMB_X40_Y15_N6
\inst3|Mult0|auto_generated|add9_result[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mult0|auto_generated|add9_result[3]~6_combout\ = \inst3|Mult0|auto_generated|add9_result[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Mult0|auto_generated|add9_result[2]~5\,
	combout => \inst3|Mult0|auto_generated|add9_result[3]~6_combout\);

-- Location: LCCOMB_X40_Y16_N20
\inst3|Mult0|auto_generated|op_1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mult0|auto_generated|op_1~20_combout\ = \inst3|Mult0|auto_generated|mac_out4~DATAOUT10\ $ (\inst3|Mult0|auto_generated|op_1~19\ $ (\inst3|Mult0|auto_generated|add9_result[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|auto_generated|mac_out4~DATAOUT10\,
	datad => \inst3|Mult0|auto_generated|add9_result[3]~6_combout\,
	cin => \inst3|Mult0|auto_generated|op_1~19\,
	combout => \inst3|Mult0|auto_generated|op_1~20_combout\);

-- Location: LCCOMB_X41_Y16_N16
\inst3|data_out[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|data_out[5]~5_combout\ = (\inst3|Mult0|auto_generated|op_1~8_combout\ & (((\inst3|Mult0|auto_generated|op_1~18_combout\ & \inst3|Mult0|auto_generated|op_1~16_combout\)) # (!\inst3|Mult0|auto_generated|op_1~20_combout\))) # 
-- (!\inst3|Mult0|auto_generated|op_1~8_combout\ & (!\inst3|Mult0|auto_generated|op_1~20_combout\ & ((\inst3|Mult0|auto_generated|op_1~18_combout\) # (\inst3|Mult0|auto_generated|op_1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|auto_generated|op_1~8_combout\,
	datab => \inst3|Mult0|auto_generated|op_1~18_combout\,
	datac => \inst3|Mult0|auto_generated|op_1~20_combout\,
	datad => \inst3|Mult0|auto_generated|op_1~16_combout\,
	combout => \inst3|data_out[5]~5_combout\);

-- Location: LCCOMB_X41_Y16_N22
\inst3|data_out[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|data_out[6]~6_combout\ = (\inst3|Mult0|auto_generated|op_1~10_combout\ & (((\inst3|Mult0|auto_generated|op_1~18_combout\ & \inst3|Mult0|auto_generated|op_1~16_combout\)) # (!\inst3|Mult0|auto_generated|op_1~20_combout\))) # 
-- (!\inst3|Mult0|auto_generated|op_1~10_combout\ & (!\inst3|Mult0|auto_generated|op_1~20_combout\ & ((\inst3|Mult0|auto_generated|op_1~18_combout\) # (\inst3|Mult0|auto_generated|op_1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|auto_generated|op_1~10_combout\,
	datab => \inst3|Mult0|auto_generated|op_1~18_combout\,
	datac => \inst3|Mult0|auto_generated|op_1~20_combout\,
	datad => \inst3|Mult0|auto_generated|op_1~16_combout\,
	combout => \inst3|data_out[6]~6_combout\);

-- Location: LCCOMB_X41_Y16_N4
\inst3|data_out[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|data_out[7]~7_combout\ = (\inst3|Mult0|auto_generated|op_1~12_combout\ & (((\inst3|Mult0|auto_generated|op_1~18_combout\ & \inst3|Mult0|auto_generated|op_1~16_combout\)) # (!\inst3|Mult0|auto_generated|op_1~20_combout\))) # 
-- (!\inst3|Mult0|auto_generated|op_1~12_combout\ & (!\inst3|Mult0|auto_generated|op_1~20_combout\ & ((\inst3|Mult0|auto_generated|op_1~18_combout\) # (\inst3|Mult0|auto_generated|op_1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|auto_generated|op_1~12_combout\,
	datab => \inst3|Mult0|auto_generated|op_1~18_combout\,
	datac => \inst3|Mult0|auto_generated|op_1~20_combout\,
	datad => \inst3|Mult0|auto_generated|op_1~16_combout\,
	combout => \inst3|data_out[7]~7_combout\);

-- Location: LCCOMB_X41_Y16_N10
\inst3|data_out[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|data_out[8]~8_combout\ = (\inst3|Mult0|auto_generated|op_1~14_combout\ & (((\inst3|Mult0|auto_generated|op_1~18_combout\ & \inst3|Mult0|auto_generated|op_1~16_combout\)) # (!\inst3|Mult0|auto_generated|op_1~20_combout\))) # 
-- (!\inst3|Mult0|auto_generated|op_1~14_combout\ & (!\inst3|Mult0|auto_generated|op_1~20_combout\ & ((\inst3|Mult0|auto_generated|op_1~18_combout\) # (\inst3|Mult0|auto_generated|op_1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|auto_generated|op_1~14_combout\,
	datab => \inst3|Mult0|auto_generated|op_1~18_combout\,
	datac => \inst3|Mult0|auto_generated|op_1~20_combout\,
	datad => \inst3|Mult0|auto_generated|op_1~16_combout\,
	combout => \inst3|data_out[8]~8_combout\);

-- Location: DSPMULT_X39_Y20_N0
\inst13|Mult0|auto_generated|mac_mult1\ : cycloneii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \inst13|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \inst13|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst13|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X40_Y20_N30
\inst13|mixer_out_L~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|mixer_out_L~0_combout\ = (\inst13|Mult0|auto_generated|mac_out2~DATAOUT17\ & ((\inst13|Mult0|auto_generated|mac_out2~DATAOUT19\) # (!\inst13|Mult0|auto_generated|mac_out2~DATAOUT18\))) # (!\inst13|Mult0|auto_generated|mac_out2~DATAOUT17\ & 
-- (\inst13|Mult0|auto_generated|mac_out2~DATAOUT19\ & !\inst13|Mult0|auto_generated|mac_out2~DATAOUT18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mult0|auto_generated|mac_out2~DATAOUT17\,
	datac => \inst13|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datad => \inst13|Mult0|auto_generated|mac_out2~DATAOUT18\,
	combout => \inst13|mixer_out_L~0_combout\);

-- Location: LCFF_X40_Y20_N31
\inst13|mixer_out_L[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst13|mixer_out_L~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|mixer_out_L\(9));

-- Location: LCCOMB_X40_Y20_N14
\inst15|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Add0~34_combout\ = (\inst13|mixer_out_L\(9) & ((\inst15|acc\(17) & (\inst15|Add0~33\ & VCC)) # (!\inst15|acc\(17) & (!\inst15|Add0~33\)))) # (!\inst13|mixer_out_L\(9) & ((\inst15|acc\(17) & (!\inst15|Add0~33\)) # (!\inst15|acc\(17) & 
-- ((\inst15|Add0~33\) # (GND)))))
-- \inst15|Add0~35\ = CARRY((\inst13|mixer_out_L\(9) & (!\inst15|acc\(17) & !\inst15|Add0~33\)) # (!\inst13|mixer_out_L\(9) & ((!\inst15|Add0~33\) # (!\inst15|acc\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mixer_out_L\(9),
	datab => \inst15|acc\(17),
	datad => VCC,
	cin => \inst15|Add0~33\,
	combout => \inst15|Add0~34_combout\,
	cout => \inst15|Add0~35\);

-- Location: LCCOMB_X40_Y20_N16
\inst15|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Add0~36_combout\ = ((\inst15|acc\(18) $ (\inst13|mixer_out_L\(9) $ (!\inst15|Add0~35\)))) # (GND)
-- \inst15|Add0~37\ = CARRY((\inst15|acc\(18) & ((\inst13|mixer_out_L\(9)) # (!\inst15|Add0~35\))) # (!\inst15|acc\(18) & (\inst13|mixer_out_L\(9) & !\inst15|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|acc\(18),
	datab => \inst13|mixer_out_L\(9),
	datad => VCC,
	cin => \inst15|Add0~35\,
	combout => \inst15|Add0~36_combout\,
	cout => \inst15|Add0~37\);

-- Location: LCCOMB_X40_Y20_N18
\inst15|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Add0~38_combout\ = (\inst13|mixer_out_L\(9) & ((\inst15|acc\(19) & (\inst15|Add0~37\ & VCC)) # (!\inst15|acc\(19) & (!\inst15|Add0~37\)))) # (!\inst13|mixer_out_L\(9) & ((\inst15|acc\(19) & (!\inst15|Add0~37\)) # (!\inst15|acc\(19) & 
-- ((\inst15|Add0~37\) # (GND)))))
-- \inst15|Add0~39\ = CARRY((\inst13|mixer_out_L\(9) & (!\inst15|acc\(19) & !\inst15|Add0~37\)) # (!\inst13|mixer_out_L\(9) & ((!\inst15|Add0~37\) # (!\inst15|acc\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mixer_out_L\(9),
	datab => \inst15|acc\(19),
	datad => VCC,
	cin => \inst15|Add0~37\,
	combout => \inst15|Add0~38_combout\,
	cout => \inst15|Add0~39\);

-- Location: LCCOMB_X40_Y21_N0
\inst13|mixer_out_L~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|mixer_out_L~1_combout\ = (\inst13|Mult0|auto_generated|mac_out2~DATAOUT19\ & (\inst13|Mult0|auto_generated|mac_out2~DATAOUT18\ & \inst13|Mult0|auto_generated|mac_out2~DATAOUT16\)) # (!\inst13|Mult0|auto_generated|mac_out2~DATAOUT19\ & 
-- ((\inst13|Mult0|auto_generated|mac_out2~DATAOUT18\) # (\inst13|Mult0|auto_generated|mac_out2~DATAOUT16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datac => \inst13|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datad => \inst13|Mult0|auto_generated|mac_out2~DATAOUT16\,
	combout => \inst13|mixer_out_L~1_combout\);

-- Location: LCFF_X40_Y21_N1
\inst13|mixer_out_L[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst13|mixer_out_L~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|mixer_out_L\(8));

-- Location: LCCOMB_X40_Y21_N2
\inst13|mixer_out_L~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|mixer_out_L~2_combout\ = (\inst13|Mult0|auto_generated|mac_out2~DATAOUT19\ & (\inst13|Mult0|auto_generated|mac_out2~DATAOUT18\ & \inst13|Mult0|auto_generated|mac_out2~DATAOUT15\)) # (!\inst13|Mult0|auto_generated|mac_out2~DATAOUT19\ & 
-- ((\inst13|Mult0|auto_generated|mac_out2~DATAOUT18\) # (\inst13|Mult0|auto_generated|mac_out2~DATAOUT15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datac => \inst13|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datad => \inst13|Mult0|auto_generated|mac_out2~DATAOUT15\,
	combout => \inst13|mixer_out_L~2_combout\);

-- Location: LCFF_X40_Y21_N3
\inst13|mixer_out_L[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst13|mixer_out_L~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|mixer_out_L\(7));

-- Location: LCCOMB_X40_Y20_N26
\inst13|mixer_out_L~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|mixer_out_L~7_combout\ = (\inst13|Mult0|auto_generated|mac_out2~DATAOUT10\ & ((\inst13|Mult0|auto_generated|mac_out2~DATAOUT18\) # (!\inst13|Mult0|auto_generated|mac_out2~DATAOUT19\))) # (!\inst13|Mult0|auto_generated|mac_out2~DATAOUT10\ & 
-- (!\inst13|Mult0|auto_generated|mac_out2~DATAOUT19\ & \inst13|Mult0|auto_generated|mac_out2~DATAOUT18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Mult0|auto_generated|mac_out2~DATAOUT10\,
	datac => \inst13|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datad => \inst13|Mult0|auto_generated|mac_out2~DATAOUT18\,
	combout => \inst13|mixer_out_L~7_combout\);

-- Location: LCFF_X40_Y20_N27
\inst13|mixer_out_L[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst13|mixer_out_L~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|mixer_out_L\(2));

-- Location: LCCOMB_X41_Y21_N12
\inst15|acc[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|acc[0]~21_combout\ = (\inst15|Add0~0_combout\ & ((GND) # (!\inst15|acc\(10)))) # (!\inst15|Add0~0_combout\ & (\inst15|acc\(10) $ (GND)))
-- \inst15|acc[0]~22\ = CARRY((\inst15|Add0~0_combout\) # (!\inst15|acc\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Add0~0_combout\,
	datab => \inst15|acc\(10),
	datad => VCC,
	combout => \inst15|acc[0]~21_combout\,
	cout => \inst15|acc[0]~22\);

-- Location: LCCOMB_X41_Y21_N14
\inst15|acc[1]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|acc[1]~23_combout\ = (\inst15|Add0~2_combout\ & ((\inst15|acc\(11) & (!\inst15|acc[0]~22\)) # (!\inst15|acc\(11) & (\inst15|acc[0]~22\ & VCC)))) # (!\inst15|Add0~2_combout\ & ((\inst15|acc\(11) & ((\inst15|acc[0]~22\) # (GND))) # 
-- (!\inst15|acc\(11) & (!\inst15|acc[0]~22\))))
-- \inst15|acc[1]~24\ = CARRY((\inst15|Add0~2_combout\ & (\inst15|acc\(11) & !\inst15|acc[0]~22\)) # (!\inst15|Add0~2_combout\ & ((\inst15|acc\(11)) # (!\inst15|acc[0]~22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Add0~2_combout\,
	datab => \inst15|acc\(11),
	datad => VCC,
	cin => \inst15|acc[0]~22\,
	combout => \inst15|acc[1]~23_combout\,
	cout => \inst15|acc[1]~24\);

-- Location: LCFF_X41_Y21_N15
\inst15|acc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst15|acc[1]~23_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|acc\(1));

-- Location: LCFF_X41_Y21_N13
\inst15|acc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst15|acc[0]~21_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|acc\(0));

-- Location: LCCOMB_X40_Y21_N16
\inst15|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Add0~4_combout\ = ((\inst15|acc\(2) $ (\inst13|mixer_out_L\(2) $ (!\inst15|Add0~3\)))) # (GND)
-- \inst15|Add0~5\ = CARRY((\inst15|acc\(2) & ((\inst13|mixer_out_L\(2)) # (!\inst15|Add0~3\))) # (!\inst15|acc\(2) & (\inst13|mixer_out_L\(2) & !\inst15|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|acc\(2),
	datab => \inst13|mixer_out_L\(2),
	datad => VCC,
	cin => \inst15|Add0~3\,
	combout => \inst15|Add0~4_combout\,
	cout => \inst15|Add0~5\);

-- Location: LCCOMB_X41_Y21_N18
\inst15|acc[3]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|acc[3]~27_combout\ = (\inst15|acc\(13) & ((\inst15|Add0~6_combout\ & (!\inst15|acc[2]~26\)) # (!\inst15|Add0~6_combout\ & ((\inst15|acc[2]~26\) # (GND))))) # (!\inst15|acc\(13) & ((\inst15|Add0~6_combout\ & (\inst15|acc[2]~26\ & VCC)) # 
-- (!\inst15|Add0~6_combout\ & (!\inst15|acc[2]~26\))))
-- \inst15|acc[3]~28\ = CARRY((\inst15|acc\(13) & ((!\inst15|acc[2]~26\) # (!\inst15|Add0~6_combout\))) # (!\inst15|acc\(13) & (!\inst15|Add0~6_combout\ & !\inst15|acc[2]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|acc\(13),
	datab => \inst15|Add0~6_combout\,
	datad => VCC,
	cin => \inst15|acc[2]~26\,
	combout => \inst15|acc[3]~27_combout\,
	cout => \inst15|acc[3]~28\);

-- Location: LCFF_X41_Y21_N19
\inst15|acc[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst15|acc[3]~27_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|acc\(3));

-- Location: LCCOMB_X40_Y21_N18
\inst15|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Add0~6_combout\ = (\inst13|mixer_out_L\(3) & ((\inst15|acc\(3) & (\inst15|Add0~5\ & VCC)) # (!\inst15|acc\(3) & (!\inst15|Add0~5\)))) # (!\inst13|mixer_out_L\(3) & ((\inst15|acc\(3) & (!\inst15|Add0~5\)) # (!\inst15|acc\(3) & ((\inst15|Add0~5\) # 
-- (GND)))))
-- \inst15|Add0~7\ = CARRY((\inst13|mixer_out_L\(3) & (!\inst15|acc\(3) & !\inst15|Add0~5\)) # (!\inst13|mixer_out_L\(3) & ((!\inst15|Add0~5\) # (!\inst15|acc\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mixer_out_L\(3),
	datab => \inst15|acc\(3),
	datad => VCC,
	cin => \inst15|Add0~5\,
	combout => \inst15|Add0~6_combout\,
	cout => \inst15|Add0~7\);

-- Location: LCCOMB_X41_Y21_N20
\inst15|acc[4]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|acc[4]~29_combout\ = ((\inst15|Add0~8_combout\ $ (\inst15|acc\(14) $ (\inst15|acc[3]~28\)))) # (GND)
-- \inst15|acc[4]~30\ = CARRY((\inst15|Add0~8_combout\ & ((!\inst15|acc[3]~28\) # (!\inst15|acc\(14)))) # (!\inst15|Add0~8_combout\ & (!\inst15|acc\(14) & !\inst15|acc[3]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Add0~8_combout\,
	datab => \inst15|acc\(14),
	datad => VCC,
	cin => \inst15|acc[3]~28\,
	combout => \inst15|acc[4]~29_combout\,
	cout => \inst15|acc[4]~30\);

-- Location: LCFF_X41_Y21_N21
\inst15|acc[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst15|acc[4]~29_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|acc\(4));

-- Location: LCCOMB_X40_Y21_N22
\inst15|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Add0~10_combout\ = (\inst13|mixer_out_L\(5) & ((\inst15|acc\(5) & (\inst15|Add0~9\ & VCC)) # (!\inst15|acc\(5) & (!\inst15|Add0~9\)))) # (!\inst13|mixer_out_L\(5) & ((\inst15|acc\(5) & (!\inst15|Add0~9\)) # (!\inst15|acc\(5) & ((\inst15|Add0~9\) # 
-- (GND)))))
-- \inst15|Add0~11\ = CARRY((\inst13|mixer_out_L\(5) & (!\inst15|acc\(5) & !\inst15|Add0~9\)) # (!\inst13|mixer_out_L\(5) & ((!\inst15|Add0~9\) # (!\inst15|acc\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mixer_out_L\(5),
	datab => \inst15|acc\(5),
	datad => VCC,
	cin => \inst15|Add0~9\,
	combout => \inst15|Add0~10_combout\,
	cout => \inst15|Add0~11\);

-- Location: LCCOMB_X41_Y21_N22
\inst15|acc[5]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|acc[5]~31_combout\ = (\inst15|acc\(15) & ((\inst15|Add0~10_combout\ & (!\inst15|acc[4]~30\)) # (!\inst15|Add0~10_combout\ & ((\inst15|acc[4]~30\) # (GND))))) # (!\inst15|acc\(15) & ((\inst15|Add0~10_combout\ & (\inst15|acc[4]~30\ & VCC)) # 
-- (!\inst15|Add0~10_combout\ & (!\inst15|acc[4]~30\))))
-- \inst15|acc[5]~32\ = CARRY((\inst15|acc\(15) & ((!\inst15|acc[4]~30\) # (!\inst15|Add0~10_combout\))) # (!\inst15|acc\(15) & (!\inst15|Add0~10_combout\ & !\inst15|acc[4]~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|acc\(15),
	datab => \inst15|Add0~10_combout\,
	datad => VCC,
	cin => \inst15|acc[4]~30\,
	combout => \inst15|acc[5]~31_combout\,
	cout => \inst15|acc[5]~32\);

-- Location: LCFF_X41_Y21_N23
\inst15|acc[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst15|acc[5]~31_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|acc\(5));

-- Location: LCCOMB_X40_Y21_N24
\inst15|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Add0~12_combout\ = ((\inst13|mixer_out_L\(6) $ (\inst15|acc\(6) $ (!\inst15|Add0~11\)))) # (GND)
-- \inst15|Add0~13\ = CARRY((\inst13|mixer_out_L\(6) & ((\inst15|acc\(6)) # (!\inst15|Add0~11\))) # (!\inst13|mixer_out_L\(6) & (\inst15|acc\(6) & !\inst15|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mixer_out_L\(6),
	datab => \inst15|acc\(6),
	datad => VCC,
	cin => \inst15|Add0~11\,
	combout => \inst15|Add0~12_combout\,
	cout => \inst15|Add0~13\);

-- Location: LCCOMB_X41_Y21_N24
\inst15|acc[6]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|acc[6]~33_combout\ = ((\inst15|acc\(16) $ (\inst15|Add0~12_combout\ $ (\inst15|acc[5]~32\)))) # (GND)
-- \inst15|acc[6]~34\ = CARRY((\inst15|acc\(16) & (\inst15|Add0~12_combout\ & !\inst15|acc[5]~32\)) # (!\inst15|acc\(16) & ((\inst15|Add0~12_combout\) # (!\inst15|acc[5]~32\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|acc\(16),
	datab => \inst15|Add0~12_combout\,
	datad => VCC,
	cin => \inst15|acc[5]~32\,
	combout => \inst15|acc[6]~33_combout\,
	cout => \inst15|acc[6]~34\);

-- Location: LCFF_X41_Y21_N25
\inst15|acc[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst15|acc[6]~33_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|acc\(6));

-- Location: LCCOMB_X40_Y21_N26
\inst15|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Add0~14_combout\ = (\inst15|acc\(7) & ((\inst13|mixer_out_L\(7) & (\inst15|Add0~13\ & VCC)) # (!\inst13|mixer_out_L\(7) & (!\inst15|Add0~13\)))) # (!\inst15|acc\(7) & ((\inst13|mixer_out_L\(7) & (!\inst15|Add0~13\)) # (!\inst13|mixer_out_L\(7) & 
-- ((\inst15|Add0~13\) # (GND)))))
-- \inst15|Add0~15\ = CARRY((\inst15|acc\(7) & (!\inst13|mixer_out_L\(7) & !\inst15|Add0~13\)) # (!\inst15|acc\(7) & ((!\inst15|Add0~13\) # (!\inst13|mixer_out_L\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|acc\(7),
	datab => \inst13|mixer_out_L\(7),
	datad => VCC,
	cin => \inst15|Add0~13\,
	combout => \inst15|Add0~14_combout\,
	cout => \inst15|Add0~15\);

-- Location: LCCOMB_X40_Y21_N28
\inst15|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Add0~16_combout\ = ((\inst15|acc\(8) $ (\inst13|mixer_out_L\(8) $ (!\inst15|Add0~15\)))) # (GND)
-- \inst15|Add0~17\ = CARRY((\inst15|acc\(8) & ((\inst13|mixer_out_L\(8)) # (!\inst15|Add0~15\))) # (!\inst15|acc\(8) & (\inst13|mixer_out_L\(8) & !\inst15|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|acc\(8),
	datab => \inst13|mixer_out_L\(8),
	datad => VCC,
	cin => \inst15|Add0~15\,
	combout => \inst15|Add0~16_combout\,
	cout => \inst15|Add0~17\);

-- Location: LCCOMB_X41_Y21_N30
\inst15|acc[9]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|acc[9]~39_combout\ = (\inst15|Add0~18_combout\ & ((\inst15|acc\(19) & (!\inst15|acc[8]~38\)) # (!\inst15|acc\(19) & (\inst15|acc[8]~38\ & VCC)))) # (!\inst15|Add0~18_combout\ & ((\inst15|acc\(19) & ((\inst15|acc[8]~38\) # (GND))) # 
-- (!\inst15|acc\(19) & (!\inst15|acc[8]~38\))))
-- \inst15|acc[9]~40\ = CARRY((\inst15|Add0~18_combout\ & (\inst15|acc\(19) & !\inst15|acc[8]~38\)) # (!\inst15|Add0~18_combout\ & ((\inst15|acc\(19)) # (!\inst15|acc[8]~38\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Add0~18_combout\,
	datab => \inst15|acc\(19),
	datad => VCC,
	cin => \inst15|acc[8]~38\,
	combout => \inst15|acc[9]~39_combout\,
	cout => \inst15|acc[9]~40\);

-- Location: LCCOMB_X41_Y20_N0
\inst15|acc[10]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|acc[10]~41_combout\ = ((\inst15|acc\(20) $ (\inst15|Add0~20_combout\ $ (\inst15|acc[9]~40\)))) # (GND)
-- \inst15|acc[10]~42\ = CARRY((\inst15|acc\(20) & (\inst15|Add0~20_combout\ & !\inst15|acc[9]~40\)) # (!\inst15|acc\(20) & ((\inst15|Add0~20_combout\) # (!\inst15|acc[9]~40\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|acc\(20),
	datab => \inst15|Add0~20_combout\,
	datad => VCC,
	cin => \inst15|acc[9]~40\,
	combout => \inst15|acc[10]~41_combout\,
	cout => \inst15|acc[10]~42\);

-- Location: LCFF_X41_Y20_N1
\inst15|acc[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst15|acc[10]~41_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|acc\(10));

-- Location: LCFF_X41_Y21_N31
\inst15|acc[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst15|acc[9]~39_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|acc\(9));

-- Location: LCCOMB_X40_Y20_N0
\inst15|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Add0~20_combout\ = ((\inst13|mixer_out_L\(9) $ (\inst15|acc\(10) $ (!\inst15|Add0~19\)))) # (GND)
-- \inst15|Add0~21\ = CARRY((\inst13|mixer_out_L\(9) & ((\inst15|acc\(10)) # (!\inst15|Add0~19\))) # (!\inst13|mixer_out_L\(9) & (\inst15|acc\(10) & !\inst15|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mixer_out_L\(9),
	datab => \inst15|acc\(10),
	datad => VCC,
	cin => \inst15|Add0~19\,
	combout => \inst15|Add0~20_combout\,
	cout => \inst15|Add0~21\);

-- Location: LCCOMB_X41_Y20_N2
\inst15|acc[11]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|acc[11]~43_combout\ = (\inst15|Add0~22_combout\ & ((\inst15|acc\(20) & (!\inst15|acc[10]~42\)) # (!\inst15|acc\(20) & (\inst15|acc[10]~42\ & VCC)))) # (!\inst15|Add0~22_combout\ & ((\inst15|acc\(20) & ((\inst15|acc[10]~42\) # (GND))) # 
-- (!\inst15|acc\(20) & (!\inst15|acc[10]~42\))))
-- \inst15|acc[11]~44\ = CARRY((\inst15|Add0~22_combout\ & (\inst15|acc\(20) & !\inst15|acc[10]~42\)) # (!\inst15|Add0~22_combout\ & ((\inst15|acc\(20)) # (!\inst15|acc[10]~42\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Add0~22_combout\,
	datab => \inst15|acc\(20),
	datad => VCC,
	cin => \inst15|acc[10]~42\,
	combout => \inst15|acc[11]~43_combout\,
	cout => \inst15|acc[11]~44\);

-- Location: LCFF_X41_Y20_N3
\inst15|acc[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst15|acc[11]~43_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|acc\(11));

-- Location: LCCOMB_X40_Y20_N4
\inst15|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Add0~24_combout\ = ((\inst15|acc\(12) $ (\inst13|mixer_out_L\(9) $ (!\inst15|Add0~23\)))) # (GND)
-- \inst15|Add0~25\ = CARRY((\inst15|acc\(12) & ((\inst13|mixer_out_L\(9)) # (!\inst15|Add0~23\))) # (!\inst15|acc\(12) & (\inst13|mixer_out_L\(9) & !\inst15|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|acc\(12),
	datab => \inst13|mixer_out_L\(9),
	datad => VCC,
	cin => \inst15|Add0~23\,
	combout => \inst15|Add0~24_combout\,
	cout => \inst15|Add0~25\);

-- Location: LCCOMB_X40_Y20_N6
\inst15|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Add0~26_combout\ = (\inst15|acc\(13) & ((\inst13|mixer_out_L\(9) & (\inst15|Add0~25\ & VCC)) # (!\inst13|mixer_out_L\(9) & (!\inst15|Add0~25\)))) # (!\inst15|acc\(13) & ((\inst13|mixer_out_L\(9) & (!\inst15|Add0~25\)) # (!\inst13|mixer_out_L\(9) & 
-- ((\inst15|Add0~25\) # (GND)))))
-- \inst15|Add0~27\ = CARRY((\inst15|acc\(13) & (!\inst13|mixer_out_L\(9) & !\inst15|Add0~25\)) # (!\inst15|acc\(13) & ((!\inst15|Add0~25\) # (!\inst13|mixer_out_L\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|acc\(13),
	datab => \inst13|mixer_out_L\(9),
	datad => VCC,
	cin => \inst15|Add0~25\,
	combout => \inst15|Add0~26_combout\,
	cout => \inst15|Add0~27\);

-- Location: LCCOMB_X41_Y20_N8
\inst15|acc[14]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|acc[14]~49_combout\ = ((\inst15|Add0~28_combout\ $ (\inst15|acc\(20) $ (\inst15|acc[13]~48\)))) # (GND)
-- \inst15|acc[14]~50\ = CARRY((\inst15|Add0~28_combout\ & ((!\inst15|acc[13]~48\) # (!\inst15|acc\(20)))) # (!\inst15|Add0~28_combout\ & (!\inst15|acc\(20) & !\inst15|acc[13]~48\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Add0~28_combout\,
	datab => \inst15|acc\(20),
	datad => VCC,
	cin => \inst15|acc[13]~48\,
	combout => \inst15|acc[14]~49_combout\,
	cout => \inst15|acc[14]~50\);

-- Location: LCCOMB_X41_Y20_N10
\inst15|acc[15]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|acc[15]~51_combout\ = (\inst15|acc\(20) & ((\inst15|Add0~30_combout\ & (!\inst15|acc[14]~50\)) # (!\inst15|Add0~30_combout\ & ((\inst15|acc[14]~50\) # (GND))))) # (!\inst15|acc\(20) & ((\inst15|Add0~30_combout\ & (\inst15|acc[14]~50\ & VCC)) # 
-- (!\inst15|Add0~30_combout\ & (!\inst15|acc[14]~50\))))
-- \inst15|acc[15]~52\ = CARRY((\inst15|acc\(20) & ((!\inst15|acc[14]~50\) # (!\inst15|Add0~30_combout\))) # (!\inst15|acc\(20) & (!\inst15|Add0~30_combout\ & !\inst15|acc[14]~50\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|acc\(20),
	datab => \inst15|Add0~30_combout\,
	datad => VCC,
	cin => \inst15|acc[14]~50\,
	combout => \inst15|acc[15]~51_combout\,
	cout => \inst15|acc[15]~52\);

-- Location: LCCOMB_X41_Y20_N12
\inst15|acc[16]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|acc[16]~53_combout\ = ((\inst15|acc\(20) $ (\inst15|Add0~32_combout\ $ (\inst15|acc[15]~52\)))) # (GND)
-- \inst15|acc[16]~54\ = CARRY((\inst15|acc\(20) & (\inst15|Add0~32_combout\ & !\inst15|acc[15]~52\)) # (!\inst15|acc\(20) & ((\inst15|Add0~32_combout\) # (!\inst15|acc[15]~52\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|acc\(20),
	datab => \inst15|Add0~32_combout\,
	datad => VCC,
	cin => \inst15|acc[15]~52\,
	combout => \inst15|acc[16]~53_combout\,
	cout => \inst15|acc[16]~54\);

-- Location: LCCOMB_X41_Y20_N14
\inst15|acc[17]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|acc[17]~55_combout\ = (\inst15|acc\(20) & ((\inst15|Add0~34_combout\ & (!\inst15|acc[16]~54\)) # (!\inst15|Add0~34_combout\ & ((\inst15|acc[16]~54\) # (GND))))) # (!\inst15|acc\(20) & ((\inst15|Add0~34_combout\ & (\inst15|acc[16]~54\ & VCC)) # 
-- (!\inst15|Add0~34_combout\ & (!\inst15|acc[16]~54\))))
-- \inst15|acc[17]~56\ = CARRY((\inst15|acc\(20) & ((!\inst15|acc[16]~54\) # (!\inst15|Add0~34_combout\))) # (!\inst15|acc\(20) & (!\inst15|Add0~34_combout\ & !\inst15|acc[16]~54\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|acc\(20),
	datab => \inst15|Add0~34_combout\,
	datad => VCC,
	cin => \inst15|acc[16]~54\,
	combout => \inst15|acc[17]~55_combout\,
	cout => \inst15|acc[17]~56\);

-- Location: LCCOMB_X41_Y20_N18
\inst15|acc[19]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|acc[19]~59_combout\ = (\inst15|acc\(20) & ((\inst15|Add0~38_combout\ & (!\inst15|acc[18]~58\)) # (!\inst15|Add0~38_combout\ & ((\inst15|acc[18]~58\) # (GND))))) # (!\inst15|acc\(20) & ((\inst15|Add0~38_combout\ & (\inst15|acc[18]~58\ & VCC)) # 
-- (!\inst15|Add0~38_combout\ & (!\inst15|acc[18]~58\))))
-- \inst15|acc[19]~60\ = CARRY((\inst15|acc\(20) & ((!\inst15|acc[18]~58\) # (!\inst15|Add0~38_combout\))) # (!\inst15|acc\(20) & (!\inst15|Add0~38_combout\ & !\inst15|acc[18]~58\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|acc\(20),
	datab => \inst15|Add0~38_combout\,
	datad => VCC,
	cin => \inst15|acc[18]~58\,
	combout => \inst15|acc[19]~59_combout\,
	cout => \inst15|acc[19]~60\);

-- Location: LCFF_X41_Y20_N19
\inst15|acc[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst15|acc[19]~59_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|acc\(19));

-- Location: LCCOMB_X40_Y20_N20
\inst15|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Add0~40_combout\ = \inst13|mixer_out_L\(9) $ (\inst15|Add0~39\ $ (!\inst15|acc\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mixer_out_L\(9),
	datad => \inst15|acc\(20),
	cin => \inst15|Add0~39\,
	combout => \inst15|Add0~40_combout\);

-- Location: LCCOMB_X41_Y20_N20
\inst15|acc[20]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|acc[20]~61_combout\ = \inst15|acc\(20) $ (\inst15|acc[19]~60\ $ (\inst15|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|acc\(20),
	datad => \inst15|Add0~40_combout\,
	cin => \inst15|acc[19]~60\,
	combout => \inst15|acc[20]~61_combout\);

-- Location: LCFF_X41_Y20_N21
\inst15|acc[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst15|acc[20]~61_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|acc\(20));

-- Location: LCFF_X41_Y20_N9
\inst15|acc[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst15|acc[14]~49_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|acc\(14));

-- Location: LCCOMB_X40_Y20_N10
\inst15|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Add0~30_combout\ = (\inst13|mixer_out_L\(9) & ((\inst15|acc\(15) & (\inst15|Add0~29\ & VCC)) # (!\inst15|acc\(15) & (!\inst15|Add0~29\)))) # (!\inst13|mixer_out_L\(9) & ((\inst15|acc\(15) & (!\inst15|Add0~29\)) # (!\inst15|acc\(15) & 
-- ((\inst15|Add0~29\) # (GND)))))
-- \inst15|Add0~31\ = CARRY((\inst13|mixer_out_L\(9) & (!\inst15|acc\(15) & !\inst15|Add0~29\)) # (!\inst13|mixer_out_L\(9) & ((!\inst15|Add0~29\) # (!\inst15|acc\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mixer_out_L\(9),
	datab => \inst15|acc\(15),
	datad => VCC,
	cin => \inst15|Add0~29\,
	combout => \inst15|Add0~30_combout\,
	cout => \inst15|Add0~31\);

-- Location: LCFF_X41_Y20_N11
\inst15|acc[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst15|acc[15]~51_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|acc\(15));

-- Location: LCCOMB_X40_Y20_N12
\inst15|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Add0~32_combout\ = ((\inst13|mixer_out_L\(9) $ (\inst15|acc\(16) $ (!\inst15|Add0~31\)))) # (GND)
-- \inst15|Add0~33\ = CARRY((\inst13|mixer_out_L\(9) & ((\inst15|acc\(16)) # (!\inst15|Add0~31\))) # (!\inst13|mixer_out_L\(9) & (\inst15|acc\(16) & !\inst15|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mixer_out_L\(9),
	datab => \inst15|acc\(16),
	datad => VCC,
	cin => \inst15|Add0~31\,
	combout => \inst15|Add0~32_combout\,
	cout => \inst15|Add0~33\);

-- Location: LCFF_X41_Y20_N13
\inst15|acc[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst15|acc[16]~53_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|acc\(16));

-- Location: LCFF_X41_Y20_N15
\inst15|acc[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \inst15|acc[17]~55_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|acc\(17));

-- Location: LCFF_X41_Y20_N29
\inst|l_aud_reg[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|acc\(17),
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \inst10|data_stb~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|l_aud_reg\(21));

-- Location: LCCOMB_X38_Y20_N22
\inst|shft_reg~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~4_combout\ = (\inst10|lrck_prev~regout\ & ((\inst7|lrck_reg~regout\ & (\inst|shft_reg\(52))) # (!\inst7|lrck_reg~regout\ & ((\inst|l_aud_reg\(21)))))) # (!\inst10|lrck_prev~regout\ & (\inst|shft_reg\(52)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shft_reg\(52),
	datab => \inst10|lrck_prev~regout\,
	datac => \inst7|lrck_reg~regout\,
	datad => \inst|l_aud_reg\(21),
	combout => \inst|shft_reg~4_combout\);

-- Location: LCCOMB_X35_Y21_N0
\inst|shft_reg[43]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg[43]~1_combout\ = (\inst7|bclk_reg~regout\ & (!\inst7|lrck_reg~regout\ & (\inst10|lrck_prev~regout\))) # (!\inst7|bclk_reg~regout\ & ((\inst10|bclk_prev~regout\) # ((!\inst7|lrck_reg~regout\ & \inst10|lrck_prev~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bclk_reg~regout\,
	datab => \inst7|lrck_reg~regout\,
	datac => \inst10|lrck_prev~regout\,
	datad => \inst10|bclk_prev~regout\,
	combout => \inst|shft_reg[43]~1_combout\);

-- Location: LCFF_X38_Y20_N23
\inst|shft_reg[53]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~4_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(53));

-- Location: LCCOMB_X38_Y20_N28
\inst|shft_reg~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~3_combout\ = (\inst10|lrck_prev~regout\ & ((\inst7|lrck_reg~regout\ & ((\inst|shft_reg\(53)))) # (!\inst7|lrck_reg~regout\ & (\inst|l_aud_reg\(22))))) # (!\inst10|lrck_prev~regout\ & (((\inst|shft_reg\(53)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|l_aud_reg\(22),
	datab => \inst10|lrck_prev~regout\,
	datac => \inst7|lrck_reg~regout\,
	datad => \inst|shft_reg\(53),
	combout => \inst|shft_reg~3_combout\);

-- Location: LCFF_X38_Y20_N29
\inst|shft_reg[54]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~3_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(54));

-- Location: LCFF_X40_Y20_N17
\inst|l_aud_reg[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|acc\(19),
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \inst10|data_stb~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|l_aud_reg\(23));

-- Location: LCCOMB_X38_Y20_N10
\inst|shft_reg~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~2_combout\ = (\inst7|lrck_reg~regout\ & (\inst|shft_reg\(54))) # (!\inst7|lrck_reg~regout\ & ((\inst10|lrck_prev~regout\ & ((\inst|l_aud_reg\(23)))) # (!\inst10|lrck_prev~regout\ & (\inst|shft_reg\(54)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|lrck_reg~regout\,
	datab => \inst|shft_reg\(54),
	datac => \inst10|lrck_prev~regout\,
	datad => \inst|l_aud_reg\(23),
	combout => \inst|shft_reg~2_combout\);

-- Location: LCFF_X38_Y20_N11
\inst|shft_reg[55]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~2_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(55));

-- Location: LCCOMB_X38_Y20_N20
\inst|shft_reg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|shft_reg~0_combout\ = (\inst|shft_reg\(55) & ((\inst7|lrck_reg~regout\) # (!\inst10|lrck_prev~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|lrck_prev~regout\,
	datac => \inst7|lrck_reg~regout\,
	datad => \inst|shft_reg\(55),
	combout => \inst|shft_reg~0_combout\);

-- Location: LCFF_X38_Y20_N21
\inst|shft_reg[56]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|shft_reg~0_combout\,
	aclr => \inst7|ALT_INV_nrst_reg~clkctrl_outclk\,
	ena => \inst|shft_reg[43]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|shft_reg\(56));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AUD_DACDAT~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|shft_reg\(56),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AUD_DACDAT);

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AUD_MCKL~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|pll_18432_inst|altpll_component|_clk0~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AUD_MCKL);

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AUD_BCLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|bclk_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AUD_BCLK);

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AUD_DACLRCK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|lrck_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AUD_DACLRCK);

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AUD_ADCLRCK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|lrck_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AUD_ADCLRCK);
END structure;


