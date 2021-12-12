###############################################################################
# Copyright (C) 1991-2021 Altera Corporation. All rights reserved.
# Any  megafunction  design,  and related netlist (encrypted  or  decrypted),
# support information,  device programming or simulation file,  and any other
# associated  documentation or information  provided by  Intel  or a partner
# under  Intel's   Megafunction   Partnership   Program  may  be  used  only
# to program  PLD  devices (but not masked  PLD  devices) from  Intel.   Any
# other  use  of such  megafunction  design,  netlist,  support  information,
# device programming or simulation file,  or any other  related documentation
# or information  is prohibited  for  any  other purpose,  including, but not
# limited to  modification,  reverse engineering,  de-compiling, or use  with
# any other  silicon devices,  unless such use is  explicitly  licensed under
# a separate agreement with  Intel  or a megafunction partner.  Title to the
# intellectual property,  including patents,  copyrights,  trademarks,  trade
# secrets,  or maskworks,  embodied in any such megafunction design, netlist,
# support  information,  device programming or simulation file,  or any other
# related documentation or information provided by  Intel  or a megafunction
# partner, remains with Intel, the megafunction partner, or their respective
# licensors. No other licenses, including any licenses needed under any third
# party's intellectual property, are provided herein.
#
###############################################################################


# FPGA Xchange file generated using Quartus Prime Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition

# DESIGN=linked_list
# REVISION=wrapper
# DEVICE=5CEBA4
# PACKAGE=FBGA
# SPEEDGRADE=7

Signal Name,Pin Number,Direction,IO Standard,Drive (mA),Termination,Slew Rate,Swap Group,Diff Type

CLOCK2_50,T19,input,2.5 V,,Off,--,swap_0,--
CLOCK3_50,T14,input,2.5 V,,Off,--,swap_0,--
CLOCK4_50,H18,input,2.5 V,,Off,--,swap_0,--
KEY[0],A10,input,2.5 V,,Off,--,swap_0,--
KEY[1],B12,input,2.5 V,,Off,--,swap_0,--
KEY[2],U8,input,2.5 V,,Off,--,swap_0,--
KEY[3],M20,input,2.5 V,,Off,--,swap_0,--
SW[0],B10,input,2.5 V,,Off,--,swap_0,--
SW[1],L17,input,2.5 V,,Off,--,swap_0,--
SW[2],Y22,input,2.5 V,,Off,--,swap_0,--
SW[3],E9,input,2.5 V,,Off,--,swap_0,--
SW[4],K7,input,2.5 V,,Off,--,swap_0,--
SW[5],C15,input,2.5 V,,Off,--,swap_0,--
SW[6],V16,input,2.5 V,,Off,--,swap_0,--
SW[7],H14,input,2.5 V,,Off,--,swap_0,--
SW[8],U7,input,2.5 V,,Off,--,swap_0,--
SW[9],J9,input,2.5 V,,Off,--,swap_0,--
LEDR[0],AA7,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
LEDR[1],AB10,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
LEDR[2],AA10,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
LEDR[3],T10,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
LEDR[4],AA9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
LEDR[5],U11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
LEDR[6],Y9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
LEDR[7],AB11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
LEDR[8],R9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
LEDR[9],Y10,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX0[0],V10,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX0[1],AB5,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX0[2],R7,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX0[3],AB6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX0[4],M6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX0[5],AB7,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX0[6],V9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX0[7],AA1,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX1[0],P12,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX1[1],AB8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX1[2],AA14,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX1[3],U6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX1[4],M7,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX1[5],AB12,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX1[6],AA13,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX1[7],P14,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX2[0],N9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX2[1],M9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX2[2],AA15,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX2[3],M8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX2[4],T7,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX2[5],U12,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX2[6],T13,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX2[7],P17,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX3[0],R10,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX3[1],U10,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX3[2],T12,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX3[3],P6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX3[4],P7,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX3[5],AB13,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX3[6],Y11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX3[7],C13,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX4[0],P9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX4[1],AA8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX4[2],V13,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX4[3],N6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX4[4],V6,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX4[5],R12,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX4[6],Y15,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX4[7],J18,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX5[0],R11,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX5[1],T9,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX5[2],AB15,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX5[3],W8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX5[4],T8,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX5[5],U13,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX5[6],Y14,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
HEX5[7],F13,output,2.5 V,Default,Series 50 Ohm without Calibration,FAST,swap_1,--
GPIO_0[0],L8,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[1],F10,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[2],H13,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[3],K20,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[4],V15,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[5],K19,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[6],E15,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[7],AB18,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[8],G2,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[9],K21,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[10],Y16,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[11],N21,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[12],P18,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[13],K22,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[14],F7,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[15],H9,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[16],W21,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[17],B5,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[18],N16,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[19],K9,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[20],H16,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[21],H8,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[22],D7,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[23],A14,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[24],Y17,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[25],R22,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[26],R21,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[27],H10,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[28],G12,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[29],V19,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[30],U16,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[31],J19,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[32],AA18,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[33],U21,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[34],H6,bidir,2.5 V,,Off,--,swap_2,--
GPIO_0[35],P8,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[0],G18,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[1],AA17,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[2],F15,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[3],T15,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[4],F12,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[5],C16,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[6],G6,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[7],A8,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[8],M18,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[9],D9,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[10],AA12,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[11],B15,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[12],F14,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[13],AA19,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[14],AA22,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[15],P16,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[16],U20,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[17],J17,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[18],L22,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[19],H11,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[20],W19,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[21],T18,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[22],V14,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[23],G10,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[24],AB21,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[25],B6,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[26],AB17,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[27],N20,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[28],N1,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[29],E7,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[30],D17,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[31],A9,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[32],N19,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[33],E14,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[34],AB22,bidir,2.5 V,,Off,--,swap_2,--
GPIO_1[35],U15,bidir,2.5 V,,Off,--,swap_2,--
RESET_N,N8,input,2.5 V,,Off,--,swap_0,--
CLOCK_50,M16,input,2.5 V,,Off,--,swap_0,--
