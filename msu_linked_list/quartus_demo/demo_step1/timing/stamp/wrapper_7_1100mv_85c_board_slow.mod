/*
 Copyright (C) 2020  Intel Corporation. All rights reserved.
 Your use of Intel Corporation's design tools, logic functions 
 and other software and tools, and any partner logic 
 functions, and any output files from any of the foregoing 
 (including device programming or simulation files), and any 
 associated documentation or information are expressly subject 
 to the terms and conditions of the Intel Program License 
 Subscription Agreement, the Intel Quartus Prime License Agreement,
 the Intel FPGA IP License Agreement, or other applicable license
 agreement, including, without limitation, that your use is for
 the sole purpose of programming logic devices manufactured by
 Intel and sold by Intel or its authorized distributors.  Please
 refer to the applicable agreement for further details, at
 https://fpgasoftware.intel.com/eula.
*/
MODEL
/*MODEL HEADER*/
/*
 This file contains Slow Corner delays for the design using part 5CEBA4F23C7
 with speed grade 7, core voltage 1.1V, and temperature 85 Celsius

*/
MODEL_VERSION "1.0";
DESIGN "wrapper";
DATE "09/13/2021 18:26:49";
PROGRAM "Quartus Prime";



INPUT CLOCK_50;
INPUT RESET_N;
INOUT GPIO_0[0];
INOUT GPIO_0[1];
INOUT GPIO_0[2];
INOUT GPIO_0[3];
INOUT GPIO_0[4];
INOUT GPIO_0[5];
INOUT GPIO_0[6];
INOUT GPIO_0[7];
INOUT GPIO_0[8];
INOUT GPIO_0[9];
INOUT GPIO_0[10];
INOUT GPIO_0[11];
INOUT GPIO_0[12];
INOUT GPIO_0[13];
INOUT GPIO_0[14];
INOUT GPIO_0[15];
INOUT GPIO_0[16];
INOUT GPIO_0[17];
INOUT GPIO_0[18];
INOUT GPIO_0[19];
INOUT GPIO_0[20];
INOUT GPIO_0[21];
INOUT GPIO_0[22];
INOUT GPIO_0[23];
INOUT GPIO_0[24];
INOUT GPIO_0[25];
INOUT GPIO_0[26];
INOUT GPIO_0[27];
INOUT GPIO_0[28];
INOUT GPIO_0[29];
INOUT GPIO_0[30];
INOUT GPIO_0[31];
INOUT GPIO_0[32];
INOUT GPIO_0[33];
INOUT GPIO_0[34];
INOUT GPIO_0[35];
INOUT GPIO_1[0];
INOUT GPIO_1[1];
INOUT GPIO_1[2];
INOUT GPIO_1[3];
INOUT GPIO_1[4];
INOUT GPIO_1[5];
INOUT GPIO_1[6];
INOUT GPIO_1[7];
INOUT GPIO_1[8];
INOUT GPIO_1[9];
INOUT GPIO_1[10];
INOUT GPIO_1[11];
INOUT GPIO_1[12];
INOUT GPIO_1[13];
INOUT GPIO_1[14];
INOUT GPIO_1[15];
INOUT GPIO_1[16];
INOUT GPIO_1[17];
INOUT GPIO_1[18];
INOUT GPIO_1[19];
INOUT GPIO_1[20];
INOUT GPIO_1[21];
INOUT GPIO_1[22];
INOUT GPIO_1[23];
INOUT GPIO_1[24];
INOUT GPIO_1[25];
INOUT GPIO_1[26];
INOUT GPIO_1[27];
INOUT GPIO_1[28];
INOUT GPIO_1[29];
INOUT GPIO_1[30];
INOUT GPIO_1[31];
INOUT GPIO_1[32];
INOUT GPIO_1[33];
INOUT GPIO_1[34];
INOUT GPIO_1[35];
INPUT CLOCK2_50;
INPUT CLOCK3_50;
INPUT CLOCK4_50;
INPUT KEY[0];
INPUT KEY[1];
INPUT KEY[2];
INPUT KEY[3];
INPUT SW[0];
INPUT SW[1];
INPUT SW[2];
INPUT SW[3];
INPUT SW[4];
INPUT SW[5];
INPUT SW[6];
INPUT SW[7];
INPUT SW[8];
INPUT SW[9];
OUTPUT LEDR[0];
OUTPUT LEDR[1];
OUTPUT LEDR[2];
OUTPUT LEDR[3];
OUTPUT LEDR[4];
OUTPUT LEDR[5];
OUTPUT LEDR[6];
OUTPUT LEDR[7];
OUTPUT LEDR[8];
OUTPUT LEDR[9];
OUTPUT HEX0[0];
OUTPUT HEX0[1];
OUTPUT HEX0[2];
OUTPUT HEX0[3];
OUTPUT HEX0[4];
OUTPUT HEX0[5];
OUTPUT HEX0[6];
OUTPUT HEX0[7];
OUTPUT HEX1[0];
OUTPUT HEX1[1];
OUTPUT HEX1[2];
OUTPUT HEX1[3];
OUTPUT HEX1[4];
OUTPUT HEX1[5];
OUTPUT HEX1[6];
OUTPUT HEX1[7];
OUTPUT HEX2[0];
OUTPUT HEX2[1];
OUTPUT HEX2[2];
OUTPUT HEX2[3];
OUTPUT HEX2[4];
OUTPUT HEX2[5];
OUTPUT HEX2[6];
OUTPUT HEX2[7];
OUTPUT HEX3[0];
OUTPUT HEX3[1];
OUTPUT HEX3[2];
OUTPUT HEX3[3];
OUTPUT HEX3[4];
OUTPUT HEX3[5];
OUTPUT HEX3[6];
OUTPUT HEX3[7];
OUTPUT HEX4[0];
OUTPUT HEX4[1];
OUTPUT HEX4[2];
OUTPUT HEX4[3];
OUTPUT HEX4[4];
OUTPUT HEX4[5];
OUTPUT HEX4[6];
OUTPUT HEX4[7];
OUTPUT HEX5[0];
OUTPUT HEX5[1];
OUTPUT HEX5[2];
OUTPUT HEX5[3];
OUTPUT HEX5[4];
OUTPUT HEX5[5];
OUTPUT HEX5[6];
OUTPUT HEX5[7];

/*Arc definitions start here*/
pos_CLOCK_50__LEDR[1]__delay:		DELAY (POSEDGE) CLOCK_50 LEDR[1] ;
pos_CLOCK_50__LEDR[1]__delay:		DELAY (POSEDGE) CLOCK_50 LEDR[1] ;
pos_clk_divider:i_clk_divider|cnt[9]__HEX0[0]__delay:		DELAY (POSEDGE) clk_divider:i_clk_divider|cnt[9] HEX0[0] ;
pos_clk_divider:i_clk_divider|cnt[9]__HEX0[1]__delay:		DELAY (POSEDGE) clk_divider:i_clk_divider|cnt[9] HEX0[1] ;
pos_clk_divider:i_clk_divider|cnt[9]__HEX0[2]__delay:		DELAY (POSEDGE) clk_divider:i_clk_divider|cnt[9] HEX0[2] ;
pos_clk_divider:i_clk_divider|cnt[9]__HEX0[3]__delay:		DELAY (POSEDGE) clk_divider:i_clk_divider|cnt[9] HEX0[3] ;
pos_clk_divider:i_clk_divider|cnt[9]__HEX0[4]__delay:		DELAY (POSEDGE) clk_divider:i_clk_divider|cnt[9] HEX0[4] ;
pos_clk_divider:i_clk_divider|cnt[9]__HEX0[5]__delay:		DELAY (POSEDGE) clk_divider:i_clk_divider|cnt[9] HEX0[5] ;
pos_clk_divider:i_clk_divider|cnt[9]__HEX0[6]__delay:		DELAY (POSEDGE) clk_divider:i_clk_divider|cnt[9] HEX0[6] ;
pos_clk_divider:i_clk_divider|cnt[9]__LEDR[0]__delay:		DELAY (POSEDGE) clk_divider:i_clk_divider|cnt[9] LEDR[0] ;
pos_clk_divider:i_clk_divider|cnt[9]__LEDR[2]__delay:		DELAY (POSEDGE) clk_divider:i_clk_divider|cnt[9] LEDR[2] ;
pos_clk_divider:i_clk_divider|cnt[9]__LEDR[2]__delay:		DELAY (POSEDGE) clk_divider:i_clk_divider|cnt[9] LEDR[2] ;

ENDMODEL
