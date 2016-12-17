--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: ProgramCounter_timesim.vhd
-- /___/   /\     Timestamp: Sat Dec 10 07:54:03 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 1 -pcf ProgramCounter.pcf -rpw 100 -tpw 0 -ar Structure -tm ProgramCounter -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim ProgramCounter.ncd ProgramCounter_timesim.vhd 
-- Device	: 7a100tcsg324-1 (PRODUCTION 1.10 2013-10-13)
-- Input file	: ProgramCounter.ncd
-- Output file	: D:\RAJ_KAMAL\VHDL_Projects\Final_Year_Project\Previously_updated\Update_10_safe_copy\NYU_6463_Processor\netgen\par\ProgramCounter_timesim.vhd
-- # of Entities	: 1
-- Design Name	: ProgramCounter
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity ProgramCounter is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    input_pc : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    output_pc : out STD_LOGIC_VECTOR ( 31 downto 0 ) 
  );
end ProgramCounter;

architecture Structure of ProgramCounter is
  signal clk_BUFGP_IBUFG_362 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal output_pc_10_364 : STD_LOGIC; 
  signal output_pc_11_365 : STD_LOGIC; 
  signal output_pc_12_366 : STD_LOGIC; 
  signal output_pc_20_367 : STD_LOGIC; 
  signal output_pc_13_368 : STD_LOGIC; 
  signal output_pc_21_369 : STD_LOGIC; 
  signal output_pc_14_370 : STD_LOGIC; 
  signal output_pc_22_371 : STD_LOGIC; 
  signal output_pc_30_372 : STD_LOGIC; 
  signal output_pc_15_373 : STD_LOGIC; 
  signal output_pc_23_374 : STD_LOGIC; 
  signal output_pc_31_375 : STD_LOGIC; 
  signal output_pc_16_376 : STD_LOGIC; 
  signal output_pc_24_377 : STD_LOGIC; 
  signal output_pc_17_378 : STD_LOGIC; 
  signal output_pc_25_379 : STD_LOGIC; 
  signal output_pc_18_380 : STD_LOGIC; 
  signal output_pc_26_381 : STD_LOGIC; 
  signal output_pc_19_382 : STD_LOGIC; 
  signal output_pc_27_383 : STD_LOGIC; 
  signal output_pc_28_384 : STD_LOGIC; 
  signal output_pc_29_385 : STD_LOGIC; 
  signal input_pc_10_IBUF_386 : STD_LOGIC; 
  signal output_pc_0_387 : STD_LOGIC; 
  signal input_pc_11_IBUF_388 : STD_LOGIC; 
  signal output_pc_1_389 : STD_LOGIC; 
  signal input_pc_12_IBUF_390 : STD_LOGIC; 
  signal input_pc_20_IBUF_391 : STD_LOGIC; 
  signal output_pc_2_392 : STD_LOGIC; 
  signal input_pc_13_IBUF_393 : STD_LOGIC; 
  signal input_pc_21_IBUF_394 : STD_LOGIC; 
  signal output_pc_3_395 : STD_LOGIC; 
  signal input_pc_14_IBUF_396 : STD_LOGIC; 
  signal input_pc_22_IBUF_397 : STD_LOGIC; 
  signal input_pc_30_IBUF_398 : STD_LOGIC; 
  signal output_pc_4_399 : STD_LOGIC; 
  signal input_pc_15_IBUF_400 : STD_LOGIC; 
  signal input_pc_23_IBUF_401 : STD_LOGIC; 
  signal input_pc_31_IBUF_402 : STD_LOGIC; 
  signal output_pc_5_403 : STD_LOGIC; 
  signal input_pc_16_IBUF_404 : STD_LOGIC; 
  signal input_pc_24_IBUF_405 : STD_LOGIC; 
  signal output_pc_6_406 : STD_LOGIC; 
  signal input_pc_17_IBUF_407 : STD_LOGIC; 
  signal input_pc_25_IBUF_408 : STD_LOGIC; 
  signal output_pc_7_409 : STD_LOGIC; 
  signal input_pc_0_IBUF_410 : STD_LOGIC; 
  signal input_pc_18_IBUF_411 : STD_LOGIC; 
  signal input_pc_26_IBUF_412 : STD_LOGIC; 
  signal output_pc_8_413 : STD_LOGIC; 
  signal input_pc_1_IBUF_414 : STD_LOGIC; 
  signal input_pc_19_IBUF_415 : STD_LOGIC; 
  signal input_pc_27_IBUF_416 : STD_LOGIC; 
  signal output_pc_9_417 : STD_LOGIC; 
  signal input_pc_2_IBUF_418 : STD_LOGIC; 
  signal input_pc_28_IBUF_419 : STD_LOGIC; 
  signal input_pc_3_IBUF_420 : STD_LOGIC; 
  signal input_pc_29_IBUF_421 : STD_LOGIC; 
  signal input_pc_4_IBUF_422 : STD_LOGIC; 
  signal input_pc_5_IBUF_423 : STD_LOGIC; 
  signal input_pc_6_IBUF_424 : STD_LOGIC; 
  signal input_pc_7_IBUF_425 : STD_LOGIC; 
  signal input_pc_8_IBUF_426 : STD_LOGIC; 
  signal input_pc_9_IBUF_427 : STD_LOGIC; 
  signal rst_IBUF_428 : STD_LOGIC; 
  signal ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal input_pc_10_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal input_pc_12_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal input_pc_13_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal input_pc_20_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal input_pc_21_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal input_pc_11_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal input_pc_14_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal input_pc_1_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal input_pc_26_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal input_pc_17_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal input_pc_16_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal input_pc_15_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal input_pc_23_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal input_pc_30_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal input_pc_24_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal input_pc_0_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal input_pc_25_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal input_pc_18_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal input_pc_31_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal input_pc_22_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal input_pc_19_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal input_pc_27_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal input_pc_29_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal input_pc_2_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal input_pc_7_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal input_pc_6_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal input_pc_3_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal input_pc_5_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal input_pc_9_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal rst_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal input_pc_8_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal input_pc_28_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal input_pc_4_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal NlwBufferSignal_clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_21_IN : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_20_IN : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_30_IN : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_22_IN : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_23_IN : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_18_IN : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_16_IN : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_27_IN : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_28_IN : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_26_IN : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_31_IN : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_25_IN : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_19_IN : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_29_IN : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_24_IN : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_17_IN : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_output_pc_5_IN : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
begin
  output_pc_11_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y109"
    )
    port map (
      I => output_pc_11_365,
      O => output_pc(11)
    );
  output_pc_10_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y107"
    )
    port map (
      I => output_pc_10_364,
      O => output_pc(10)
    );
  clk_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGCTRL_X0Y31",
      PATHPULSE => 50 ps
    )
    port map (
      I => NlwBufferSignal_clk_BUFGP_BUFG_IN,
      O => clk_BUFGP
    );
  output_pc_12_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y105"
    )
    port map (
      I => output_pc_12_366,
      O => output_pc(12)
    );
  output_pc_31_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y131"
    )
    port map (
      I => output_pc_31_375,
      O => output_pc(31)
    );
  output_pc_30_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y133"
    )
    port map (
      I => output_pc_30_372,
      O => output_pc(30)
    );
  output_pc_23_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y142"
    )
    port map (
      I => output_pc_23_374,
      O => output_pc(23)
    );
  ProtoComp2_INTERMDISABLE_GND : X_ZERO
    generic map(
      LOC => "IOB_X1Y128"
    )
    port map (
      O => ProtoComp2_INTERMDISABLE_GND_0
    );
  clk_BUFGP_IBUFG : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y128"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => ProtoComp2_INTERMDISABLE_GND_0,
      O => clk_BUFGP_IBUFG_362,
      I => clk,
      TPWRGT => '1'
    );
  output_pc_22_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y144"
    )
    port map (
      I => output_pc_22_371,
      O => output_pc(22)
    );
  output_pc_13_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y104"
    )
    port map (
      I => output_pc_13_368,
      O => output_pc(13)
    );
  output_pc_21_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y146"
    )
    port map (
      I => output_pc_21_369,
      O => output_pc(21)
    );
  output_pc_15_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y102"
    )
    port map (
      I => output_pc_15_373,
      O => output_pc(15)
    );
  output_pc_14_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y110"
    )
    port map (
      I => output_pc_14_370,
      O => output_pc(14)
    );
  output_pc_20_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y147"
    )
    port map (
      I => output_pc_20_367,
      O => output_pc(20)
    );
  output_pc_25_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y138"
    )
    port map (
      I => output_pc_25_379,
      O => output_pc(25)
    );
  output_pc_18_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y149"
    )
    port map (
      I => output_pc_18_380,
      O => output_pc(18)
    );
  output_pc_29_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y135"
    )
    port map (
      I => output_pc_29_385,
      O => output_pc(29)
    );
  output_pc_28_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y139"
    )
    port map (
      I => output_pc_28_384,
      O => output_pc(28)
    );
  ProtoComp2_INTERMDISABLE_GND_1 : X_ZERO
    generic map(
      LOC => "IOB_X0Y133"
    )
    port map (
      O => input_pc_10_ProtoComp2_INTERMDISABLE_GND_0
    );
  input_pc_10_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y133"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => input_pc_10_ProtoComp2_INTERMDISABLE_GND_0,
      O => input_pc_10_IBUF_386,
      I => input_pc(10),
      TPWRGT => '1'
    );
  output_pc_17_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y100"
    )
    port map (
      I => output_pc_17_378,
      O => output_pc(17)
    );
  output_pc_26_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y141"
    )
    port map (
      I => output_pc_26_381,
      O => output_pc(26)
    );
  output_pc_16_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y111"
    )
    port map (
      I => output_pc_16_376,
      O => output_pc(16)
    );
  output_pc_24_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y143"
    )
    port map (
      I => output_pc_24_377,
      O => output_pc(24)
    );
  output_pc_19_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y148"
    )
    port map (
      I => output_pc_19_382,
      O => output_pc(19)
    );
  output_pc_0_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y117"
    )
    port map (
      I => output_pc_0_387,
      O => output_pc(0)
    );
  output_pc_27_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y137"
    )
    port map (
      I => output_pc_27_383,
      O => output_pc(27)
    );
  ProtoComp2_INTERMDISABLE_GND_3 : X_ZERO
    generic map(
      LOC => "IOB_X0Y128"
    )
    port map (
      O => input_pc_12_ProtoComp2_INTERMDISABLE_GND_0
    );
  input_pc_12_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y128"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => input_pc_12_ProtoComp2_INTERMDISABLE_GND_0,
      O => input_pc_12_IBUF_390,
      I => input_pc(12),
      TPWRGT => '1'
    );
  output_pc_1_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y119"
    )
    port map (
      I => output_pc_1_389,
      O => output_pc(1)
    );
  ProtoComp2_INTERMDISABLE_GND_5 : X_ZERO
    generic map(
      LOC => "IOB_X0Y127"
    )
    port map (
      O => input_pc_13_ProtoComp2_INTERMDISABLE_GND_0
    );
  input_pc_13_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y127"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => input_pc_13_ProtoComp2_INTERMDISABLE_GND_0,
      O => input_pc_13_IBUF_393,
      I => input_pc(13),
      TPWRGT => '1'
    );
  output_pc_2_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y122"
    )
    port map (
      I => output_pc_2_392,
      O => output_pc(2)
    );
  ProtoComp2_INTERMDISABLE_GND_4 : X_ZERO
    generic map(
      LOC => "IOB_X0Y147"
    )
    port map (
      O => input_pc_20_ProtoComp2_INTERMDISABLE_GND_0
    );
  input_pc_20_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y147"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => input_pc_20_ProtoComp2_INTERMDISABLE_GND_0,
      O => input_pc_20_IBUF_391,
      I => input_pc(20),
      TPWRGT => '1'
    );
  output_pc_3_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y114"
    )
    port map (
      I => output_pc_3_395,
      O => output_pc(3)
    );
  ProtoComp2_INTERMDISABLE_GND_6 : X_ZERO
    generic map(
      LOC => "IOB_X1Y145"
    )
    port map (
      O => input_pc_21_ProtoComp2_INTERMDISABLE_GND_0
    );
  input_pc_21_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y145"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => input_pc_21_ProtoComp2_INTERMDISABLE_GND_0,
      O => input_pc_21_IBUF_394,
      I => input_pc(21),
      TPWRGT => '1'
    );
  ProtoComp2_INTERMDISABLE_GND_2 : X_ZERO
    generic map(
      LOC => "IOB_X0Y126"
    )
    port map (
      O => input_pc_11_ProtoComp2_INTERMDISABLE_GND_0
    );
  input_pc_11_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y126"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => input_pc_11_ProtoComp2_INTERMDISABLE_GND_0,
      O => input_pc_11_IBUF_388,
      I => input_pc(11),
      TPWRGT => '1'
    );
  ProtoComp2_INTERMDISABLE_GND_7 : X_ZERO
    generic map(
      LOC => "IOB_X0Y129"
    )
    port map (
      O => input_pc_14_ProtoComp2_INTERMDISABLE_GND_0
    );
  input_pc_14_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y129"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => input_pc_14_ProtoComp2_INTERMDISABLE_GND_0,
      O => input_pc_14_IBUF_396,
      I => input_pc(14),
      TPWRGT => '1'
    );
  ProtoComp2_INTERMDISABLE_GND_20 : X_ZERO
    generic map(
      LOC => "IOB_X0Y144"
    )
    port map (
      O => input_pc_1_ProtoComp2_INTERMDISABLE_GND_0
    );
  input_pc_1_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y144"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => input_pc_1_ProtoComp2_INTERMDISABLE_GND_0,
      O => input_pc_1_IBUF_414,
      I => input_pc(1),
      TPWRGT => '1'
    );
  ProtoComp2_INTERMDISABLE_GND_19 : X_ZERO
    generic map(
      LOC => "IOB_X1Y130"
    )
    port map (
      O => input_pc_26_ProtoComp2_INTERMDISABLE_GND_0
    );
  input_pc_26_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y130"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => input_pc_26_ProtoComp2_INTERMDISABLE_GND_0,
      O => input_pc_26_IBUF_412,
      I => input_pc(26),
      TPWRGT => '1'
    );
  output_pc_5_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y115"
    )
    port map (
      I => output_pc_5_403,
      O => output_pc(5)
    );
  ProtoComp2_INTERMDISABLE_GND_15 : X_ZERO
    generic map(
      LOC => "IOB_X0Y120"
    )
    port map (
      O => input_pc_17_ProtoComp2_INTERMDISABLE_GND_0
    );
  input_pc_17_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y120"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => input_pc_17_ProtoComp2_INTERMDISABLE_GND_0,
      O => input_pc_17_IBUF_407,
      I => input_pc(17),
      TPWRGT => '1'
    );
  ProtoComp2_INTERMDISABLE_GND_13 : X_ZERO
    generic map(
      LOC => "IOB_X0Y121"
    )
    port map (
      O => input_pc_16_ProtoComp2_INTERMDISABLE_GND_0
    );
  input_pc_16_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y121"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => input_pc_16_ProtoComp2_INTERMDISABLE_GND_0,
      O => input_pc_16_IBUF_404,
      I => input_pc(16),
      TPWRGT => '1'
    );
  ProtoComp2_INTERMDISABLE_GND_10 : X_ZERO
    generic map(
      LOC => "IOB_X0Y124"
    )
    port map (
      O => input_pc_15_ProtoComp2_INTERMDISABLE_GND_0
    );
  input_pc_15_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y124"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => input_pc_15_ProtoComp2_INTERMDISABLE_GND_0,
      O => input_pc_15_IBUF_400,
      I => input_pc(15),
      TPWRGT => '1'
    );
  output_pc_6_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y139"
    )
    port map (
      I => output_pc_6_406,
      O => output_pc(6)
    );
  ProtoComp2_INTERMDISABLE_GND_11 : X_ZERO
    generic map(
      LOC => "IOB_X0Y142"
    )
    port map (
      O => input_pc_23_ProtoComp2_INTERMDISABLE_GND_0
    );
  input_pc_23_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y142"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => input_pc_23_ProtoComp2_INTERMDISABLE_GND_0,
      O => input_pc_23_IBUF_401,
      I => input_pc(23),
      TPWRGT => '1'
    );
  ProtoComp2_INTERMDISABLE_GND_9 : X_ZERO
    generic map(
      LOC => "IOB_X1Y129"
    )
    port map (
      O => input_pc_30_ProtoComp2_INTERMDISABLE_GND_0
    );
  input_pc_30_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y129"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => input_pc_30_ProtoComp2_INTERMDISABLE_GND_0,
      O => input_pc_30_IBUF_398,
      I => input_pc(30),
      TPWRGT => '1'
    );
  ProtoComp2_INTERMDISABLE_GND_14 : X_ZERO
    generic map(
      LOC => "IOB_X1Y132"
    )
    port map (
      O => input_pc_24_ProtoComp2_INTERMDISABLE_GND_0
    );
  input_pc_24_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y132"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => input_pc_24_ProtoComp2_INTERMDISABLE_GND_0,
      O => input_pc_24_IBUF_405,
      I => input_pc(24),
      TPWRGT => '1'
    );
  output_pc_7_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y113"
    )
    port map (
      I => output_pc_7_409,
      O => output_pc(7)
    );
  ProtoComp2_INTERMDISABLE_GND_17 : X_ZERO
    generic map(
      LOC => "IOB_X0Y146"
    )
    port map (
      O => input_pc_0_ProtoComp2_INTERMDISABLE_GND_0
    );
  input_pc_0_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y146"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => input_pc_0_ProtoComp2_INTERMDISABLE_GND_0,
      O => input_pc_0_IBUF_410,
      I => input_pc(0),
      TPWRGT => '1'
    );
  ProtoComp2_INTERMDISABLE_GND_16 : X_ZERO
    generic map(
      LOC => "IOB_X0Y138"
    )
    port map (
      O => input_pc_25_ProtoComp2_INTERMDISABLE_GND_0
    );
  input_pc_25_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y138"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => input_pc_25_ProtoComp2_INTERMDISABLE_GND_0,
      O => input_pc_25_IBUF_408,
      I => input_pc(25),
      TPWRGT => '1'
    );
  ProtoComp2_INTERMDISABLE_GND_18 : X_ZERO
    generic map(
      LOC => "IOB_X0Y149"
    )
    port map (
      O => input_pc_18_ProtoComp2_INTERMDISABLE_GND_0
    );
  input_pc_18_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y149"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => input_pc_18_ProtoComp2_INTERMDISABLE_GND_0,
      O => input_pc_18_IBUF_411,
      I => input_pc(18),
      TPWRGT => '1'
    );
  output_pc_4_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y123"
    )
    port map (
      I => output_pc_4_399,
      O => output_pc(4)
    );
  ProtoComp2_INTERMDISABLE_GND_12 : X_ZERO
    generic map(
      LOC => "IOB_X1Y127"
    )
    port map (
      O => input_pc_31_ProtoComp2_INTERMDISABLE_GND_0
    );
  input_pc_31_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y127"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => input_pc_31_ProtoComp2_INTERMDISABLE_GND_0,
      O => input_pc_31_IBUF_402,
      I => input_pc(31),
      TPWRGT => '1'
    );
  ProtoComp2_INTERMDISABLE_GND_8 : X_ZERO
    generic map(
      LOC => "IOB_X1Y134"
    )
    port map (
      O => input_pc_22_ProtoComp2_INTERMDISABLE_GND_0
    );
  input_pc_22_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y134"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => input_pc_22_ProtoComp2_INTERMDISABLE_GND_0,
      O => input_pc_22_IBUF_397,
      I => input_pc(22),
      TPWRGT => '1'
    );
  output_pc_8_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y116"
    )
    port map (
      I => output_pc_8_413,
      O => output_pc(8)
    );
  ProtoComp2_INTERMDISABLE_GND_21 : X_ZERO
    generic map(
      LOC => "IOB_X0Y148"
    )
    port map (
      O => input_pc_19_ProtoComp2_INTERMDISABLE_GND_0
    );
  input_pc_19_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y148"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => input_pc_19_ProtoComp2_INTERMDISABLE_GND_0,
      O => input_pc_19_IBUF_415,
      I => input_pc(19),
      TPWRGT => '1'
    );
  ProtoComp2_INTERMDISABLE_GND_22 : X_ZERO
    generic map(
      LOC => "IOB_X0Y137"
    )
    port map (
      O => input_pc_27_ProtoComp2_INTERMDISABLE_GND_0
    );
  input_pc_27_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y137"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => input_pc_27_ProtoComp2_INTERMDISABLE_GND_0,
      O => input_pc_27_IBUF_416,
      I => input_pc(27),
      TPWRGT => '1'
    );
  output_pc_11 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y109",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_output_pc_11_CLK,
      I => NlwBufferSignal_output_pc_11_IN,
      O => output_pc_11_365,
      SET => GND,
      RST => rst_IBUF_428
    );
  output_pc_21 : X_FF
    generic map(
      LOC => "OLOGIC_X1Y146",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_output_pc_21_CLK,
      I => NlwBufferSignal_output_pc_21_IN,
      O => output_pc_21_369,
      SET => GND,
      RST => rst_IBUF_428
    );
  ProtoComp2_INTERMDISABLE_GND_26 : X_ZERO
    generic map(
      LOC => "IOB_X1Y136"
    )
    port map (
      O => input_pc_29_ProtoComp2_INTERMDISABLE_GND_0
    );
  input_pc_29_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y136"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => input_pc_29_ProtoComp2_INTERMDISABLE_GND_0,
      O => input_pc_29_IBUF_421,
      I => input_pc(29),
      TPWRGT => '1'
    );
  output_pc_9_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y118"
    )
    port map (
      I => output_pc_9_417,
      O => output_pc(9)
    );
  ProtoComp2_INTERMDISABLE_GND_23 : X_ZERO
    generic map(
      LOC => "IOB_X0Y143"
    )
    port map (
      O => input_pc_2_ProtoComp2_INTERMDISABLE_GND_0
    );
  input_pc_2_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y143"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => input_pc_2_ProtoComp2_INTERMDISABLE_GND_0,
      O => input_pc_2_IBUF_418,
      I => input_pc(2),
      TPWRGT => '1'
    );
  ProtoComp2_INTERMDISABLE_GND_30 : X_ZERO
    generic map(
      LOC => "IOB_X0Y131"
    )
    port map (
      O => input_pc_7_ProtoComp2_INTERMDISABLE_GND_0
    );
  input_pc_7_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y131"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => input_pc_7_ProtoComp2_INTERMDISABLE_GND_0,
      O => input_pc_7_IBUF_425,
      I => input_pc(7),
      TPWRGT => '1'
    );
  ProtoComp2_INTERMDISABLE_GND_29 : X_ZERO
    generic map(
      LOC => "IOB_X0Y140"
    )
    port map (
      O => input_pc_6_ProtoComp2_INTERMDISABLE_GND_0
    );
  input_pc_6_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y140"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => input_pc_6_ProtoComp2_INTERMDISABLE_GND_0,
      O => input_pc_6_IBUF_424,
      I => input_pc(6),
      TPWRGT => '1'
    );
  ProtoComp2_INTERMDISABLE_GND_25 : X_ZERO
    generic map(
      LOC => "IOB_X0Y136"
    )
    port map (
      O => input_pc_3_ProtoComp2_INTERMDISABLE_GND_0
    );
  input_pc_3_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y136"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => input_pc_3_ProtoComp2_INTERMDISABLE_GND_0,
      O => input_pc_3_IBUF_420,
      I => input_pc(3),
      TPWRGT => '1'
    );
  ProtoComp2_INTERMDISABLE_GND_28 : X_ZERO
    generic map(
      LOC => "IOB_X0Y132"
    )
    port map (
      O => input_pc_5_ProtoComp2_INTERMDISABLE_GND_0
    );
  input_pc_5_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y132"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => input_pc_5_ProtoComp2_INTERMDISABLE_GND_0,
      O => input_pc_5_IBUF_423,
      I => input_pc(5),
      TPWRGT => '1'
    );
  ProtoComp2_INTERMDISABLE_GND_32 : X_ZERO
    generic map(
      LOC => "IOB_X0Y125"
    )
    port map (
      O => input_pc_9_ProtoComp2_INTERMDISABLE_GND_0
    );
  input_pc_9_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y125"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => input_pc_9_ProtoComp2_INTERMDISABLE_GND_0,
      O => input_pc_9_IBUF_427,
      I => input_pc(9),
      TPWRGT => '1'
    );
  ProtoComp2_INTERMDISABLE_GND_33 : X_ZERO
    generic map(
      LOC => "IOB_X0Y145"
    )
    port map (
      O => rst_ProtoComp2_INTERMDISABLE_GND_0
    );
  rst_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y145"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => rst_ProtoComp2_INTERMDISABLE_GND_0,
      O => rst_IBUF_428,
      I => rst,
      TPWRGT => '1'
    );
  output_pc_20 : X_FF
    generic map(
      LOC => "OLOGIC_X1Y147",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_output_pc_20_CLK,
      I => NlwBufferSignal_output_pc_20_IN,
      O => output_pc_20_367,
      SET => GND,
      RST => rst_IBUF_428
    );
  output_pc_14 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y110",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_output_pc_14_CLK,
      I => NlwBufferSignal_output_pc_14_IN,
      O => output_pc_14_370,
      SET => GND,
      RST => rst_IBUF_428
    );
  ProtoComp2_INTERMDISABLE_GND_31 : X_ZERO
    generic map(
      LOC => "IOB_X0Y130"
    )
    port map (
      O => input_pc_8_ProtoComp2_INTERMDISABLE_GND_0
    );
  input_pc_8_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y130"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => input_pc_8_ProtoComp2_INTERMDISABLE_GND_0,
      O => input_pc_8_IBUF_426,
      I => input_pc(8),
      TPWRGT => '1'
    );
  ProtoComp2_INTERMDISABLE_GND_24 : X_ZERO
    generic map(
      LOC => "IOB_X1Y140"
    )
    port map (
      O => input_pc_28_ProtoComp2_INTERMDISABLE_GND_0
    );
  input_pc_28_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y140"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => input_pc_28_ProtoComp2_INTERMDISABLE_GND_0,
      O => input_pc_28_IBUF_419,
      I => input_pc(28),
      TPWRGT => '1'
    );
  output_pc_12 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y105",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_output_pc_12_CLK,
      I => NlwBufferSignal_output_pc_12_IN,
      O => output_pc_12_366,
      SET => GND,
      RST => rst_IBUF_428
    );
  output_pc_13 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y104",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_output_pc_13_CLK,
      I => NlwBufferSignal_output_pc_13_IN,
      O => output_pc_13_368,
      SET => GND,
      RST => rst_IBUF_428
    );
  output_pc_10 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y107",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_output_pc_10_CLK,
      I => NlwBufferSignal_output_pc_10_IN,
      O => output_pc_10_364,
      SET => GND,
      RST => rst_IBUF_428
    );
  ProtoComp2_INTERMDISABLE_GND_27 : X_ZERO
    generic map(
      LOC => "IOB_X0Y141"
    )
    port map (
      O => input_pc_4_ProtoComp2_INTERMDISABLE_GND_0
    );
  input_pc_4_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y141"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => input_pc_4_ProtoComp2_INTERMDISABLE_GND_0,
      O => input_pc_4_IBUF_422,
      I => input_pc(4),
      TPWRGT => '1'
    );
  output_pc_30 : X_FF
    generic map(
      LOC => "OLOGIC_X1Y133",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_output_pc_30_CLK,
      I => NlwBufferSignal_output_pc_30_IN,
      O => output_pc_30_372,
      SET => GND,
      RST => rst_IBUF_428
    );
  output_pc_22 : X_FF
    generic map(
      LOC => "OLOGIC_X1Y144",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_output_pc_22_CLK,
      I => NlwBufferSignal_output_pc_22_IN,
      O => output_pc_22_371,
      SET => GND,
      RST => rst_IBUF_428
    );
  output_pc_23 : X_FF
    generic map(
      LOC => "OLOGIC_X1Y142",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_output_pc_23_CLK,
      I => NlwBufferSignal_output_pc_23_IN,
      O => output_pc_23_374,
      SET => GND,
      RST => rst_IBUF_428
    );
  output_pc_15 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y102",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_output_pc_15_CLK,
      I => NlwBufferSignal_output_pc_15_IN,
      O => output_pc_15_373,
      SET => GND,
      RST => rst_IBUF_428
    );
  output_pc_18 : X_FF
    generic map(
      LOC => "OLOGIC_X1Y149",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_output_pc_18_CLK,
      I => NlwBufferSignal_output_pc_18_IN,
      O => output_pc_18_380,
      SET => GND,
      RST => rst_IBUF_428
    );
  output_pc_8 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y116",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_output_pc_8_CLK,
      I => NlwBufferSignal_output_pc_8_IN,
      O => output_pc_8_413,
      SET => GND,
      RST => rst_IBUF_428
    );
  output_pc_16 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y111",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_output_pc_16_CLK,
      I => NlwBufferSignal_output_pc_16_IN,
      O => output_pc_16_376,
      SET => GND,
      RST => rst_IBUF_428
    );
  output_pc_27 : X_FF
    generic map(
      LOC => "OLOGIC_X1Y137",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_output_pc_27_CLK,
      I => NlwBufferSignal_output_pc_27_IN,
      O => output_pc_27_383,
      SET => GND,
      RST => rst_IBUF_428
    );
  output_pc_28 : X_FF
    generic map(
      LOC => "OLOGIC_X1Y139",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_output_pc_28_CLK,
      I => NlwBufferSignal_output_pc_28_IN,
      O => output_pc_28_384,
      SET => GND,
      RST => rst_IBUF_428
    );
  output_pc_1 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y119",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_output_pc_1_CLK,
      I => NlwBufferSignal_output_pc_1_IN,
      O => output_pc_1_389,
      SET => GND,
      RST => rst_IBUF_428
    );
  output_pc_26 : X_FF
    generic map(
      LOC => "OLOGIC_X1Y141",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_output_pc_26_CLK,
      I => NlwBufferSignal_output_pc_26_IN,
      O => output_pc_26_381,
      SET => GND,
      RST => rst_IBUF_428
    );
  output_pc_0 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y117",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_output_pc_0_CLK,
      I => NlwBufferSignal_output_pc_0_IN,
      O => output_pc_0_387,
      SET => GND,
      RST => rst_IBUF_428
    );
  output_pc_31 : X_FF
    generic map(
      LOC => "OLOGIC_X1Y131",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_output_pc_31_CLK,
      I => NlwBufferSignal_output_pc_31_IN,
      O => output_pc_31_375,
      SET => GND,
      RST => rst_IBUF_428
    );
  output_pc_25 : X_FF
    generic map(
      LOC => "OLOGIC_X1Y138",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_output_pc_25_CLK,
      I => NlwBufferSignal_output_pc_25_IN,
      O => output_pc_25_379,
      SET => GND,
      RST => rst_IBUF_428
    );
  output_pc_7 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y113",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_output_pc_7_CLK,
      I => NlwBufferSignal_output_pc_7_IN,
      O => output_pc_7_409,
      SET => GND,
      RST => rst_IBUF_428
    );
  output_pc_2 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y122",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_output_pc_2_CLK,
      I => NlwBufferSignal_output_pc_2_IN,
      O => output_pc_2_392,
      SET => GND,
      RST => rst_IBUF_428
    );
  output_pc_19 : X_FF
    generic map(
      LOC => "OLOGIC_X1Y148",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_output_pc_19_CLK,
      I => NlwBufferSignal_output_pc_19_IN,
      O => output_pc_19_382,
      SET => GND,
      RST => rst_IBUF_428
    );
  output_pc_6 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y139",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_output_pc_6_CLK,
      I => NlwBufferSignal_output_pc_6_IN,
      O => output_pc_6_406,
      SET => GND,
      RST => rst_IBUF_428
    );
  output_pc_29 : X_FF
    generic map(
      LOC => "OLOGIC_X1Y135",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_output_pc_29_CLK,
      I => NlwBufferSignal_output_pc_29_IN,
      O => output_pc_29_385,
      SET => GND,
      RST => rst_IBUF_428
    );
  output_pc_3 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y114",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_output_pc_3_CLK,
      I => NlwBufferSignal_output_pc_3_IN,
      O => output_pc_3_395,
      SET => GND,
      RST => rst_IBUF_428
    );
  output_pc_4 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y123",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_output_pc_4_CLK,
      I => NlwBufferSignal_output_pc_4_IN,
      O => output_pc_4_399,
      SET => GND,
      RST => rst_IBUF_428
    );
  output_pc_24 : X_FF
    generic map(
      LOC => "OLOGIC_X1Y143",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_output_pc_24_CLK,
      I => NlwBufferSignal_output_pc_24_IN,
      O => output_pc_24_377,
      SET => GND,
      RST => rst_IBUF_428
    );
  output_pc_9 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y118",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_output_pc_9_CLK,
      I => NlwBufferSignal_output_pc_9_IN,
      O => output_pc_9_417,
      SET => GND,
      RST => rst_IBUF_428
    );
  output_pc_17 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y100",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_output_pc_17_CLK,
      I => NlwBufferSignal_output_pc_17_IN,
      O => output_pc_17_378,
      SET => GND,
      RST => rst_IBUF_428
    );
  output_pc_5 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y115",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_output_pc_5_CLK,
      I => NlwBufferSignal_output_pc_5_IN,
      O => output_pc_5_403,
      SET => GND,
      RST => rst_IBUF_428
    );
  NlwBufferBlock_clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_362,
      O => NlwBufferSignal_clk_BUFGP_BUFG_IN
    );
  NlwBufferBlock_output_pc_11_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_output_pc_11_CLK
    );
  NlwBufferBlock_output_pc_11_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => input_pc_11_IBUF_388,
      O => NlwBufferSignal_output_pc_11_IN
    );
  NlwBufferBlock_output_pc_21_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_output_pc_21_CLK
    );
  NlwBufferBlock_output_pc_21_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => input_pc_21_IBUF_394,
      O => NlwBufferSignal_output_pc_21_IN
    );
  NlwBufferBlock_output_pc_20_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_output_pc_20_CLK
    );
  NlwBufferBlock_output_pc_20_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => input_pc_20_IBUF_391,
      O => NlwBufferSignal_output_pc_20_IN
    );
  NlwBufferBlock_output_pc_14_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_output_pc_14_CLK
    );
  NlwBufferBlock_output_pc_14_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => input_pc_14_IBUF_396,
      O => NlwBufferSignal_output_pc_14_IN
    );
  NlwBufferBlock_output_pc_12_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_output_pc_12_CLK
    );
  NlwBufferBlock_output_pc_12_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => input_pc_12_IBUF_390,
      O => NlwBufferSignal_output_pc_12_IN
    );
  NlwBufferBlock_output_pc_13_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_output_pc_13_CLK
    );
  NlwBufferBlock_output_pc_13_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => input_pc_13_IBUF_393,
      O => NlwBufferSignal_output_pc_13_IN
    );
  NlwBufferBlock_output_pc_10_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_output_pc_10_CLK
    );
  NlwBufferBlock_output_pc_10_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => input_pc_10_IBUF_386,
      O => NlwBufferSignal_output_pc_10_IN
    );
  NlwBufferBlock_output_pc_30_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_output_pc_30_CLK
    );
  NlwBufferBlock_output_pc_30_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => input_pc_30_IBUF_398,
      O => NlwBufferSignal_output_pc_30_IN
    );
  NlwBufferBlock_output_pc_22_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_output_pc_22_CLK
    );
  NlwBufferBlock_output_pc_22_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => input_pc_22_IBUF_397,
      O => NlwBufferSignal_output_pc_22_IN
    );
  NlwBufferBlock_output_pc_23_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_output_pc_23_CLK
    );
  NlwBufferBlock_output_pc_23_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => input_pc_23_IBUF_401,
      O => NlwBufferSignal_output_pc_23_IN
    );
  NlwBufferBlock_output_pc_15_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_output_pc_15_CLK
    );
  NlwBufferBlock_output_pc_15_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => input_pc_15_IBUF_400,
      O => NlwBufferSignal_output_pc_15_IN
    );
  NlwBufferBlock_output_pc_18_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_output_pc_18_CLK
    );
  NlwBufferBlock_output_pc_18_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => input_pc_18_IBUF_411,
      O => NlwBufferSignal_output_pc_18_IN
    );
  NlwBufferBlock_output_pc_8_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_output_pc_8_CLK
    );
  NlwBufferBlock_output_pc_8_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => input_pc_8_IBUF_426,
      O => NlwBufferSignal_output_pc_8_IN
    );
  NlwBufferBlock_output_pc_16_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_output_pc_16_CLK
    );
  NlwBufferBlock_output_pc_16_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => input_pc_16_IBUF_404,
      O => NlwBufferSignal_output_pc_16_IN
    );
  NlwBufferBlock_output_pc_27_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_output_pc_27_CLK
    );
  NlwBufferBlock_output_pc_27_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => input_pc_27_IBUF_416,
      O => NlwBufferSignal_output_pc_27_IN
    );
  NlwBufferBlock_output_pc_28_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_output_pc_28_CLK
    );
  NlwBufferBlock_output_pc_28_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => input_pc_28_IBUF_419,
      O => NlwBufferSignal_output_pc_28_IN
    );
  NlwBufferBlock_output_pc_1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_output_pc_1_CLK
    );
  NlwBufferBlock_output_pc_1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => input_pc_1_IBUF_414,
      O => NlwBufferSignal_output_pc_1_IN
    );
  NlwBufferBlock_output_pc_26_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_output_pc_26_CLK
    );
  NlwBufferBlock_output_pc_26_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => input_pc_26_IBUF_412,
      O => NlwBufferSignal_output_pc_26_IN
    );
  NlwBufferBlock_output_pc_0_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_output_pc_0_CLK
    );
  NlwBufferBlock_output_pc_0_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => input_pc_0_IBUF_410,
      O => NlwBufferSignal_output_pc_0_IN
    );
  NlwBufferBlock_output_pc_31_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_output_pc_31_CLK
    );
  NlwBufferBlock_output_pc_31_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => input_pc_31_IBUF_402,
      O => NlwBufferSignal_output_pc_31_IN
    );
  NlwBufferBlock_output_pc_25_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_output_pc_25_CLK
    );
  NlwBufferBlock_output_pc_25_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => input_pc_25_IBUF_408,
      O => NlwBufferSignal_output_pc_25_IN
    );
  NlwBufferBlock_output_pc_7_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_output_pc_7_CLK
    );
  NlwBufferBlock_output_pc_7_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => input_pc_7_IBUF_425,
      O => NlwBufferSignal_output_pc_7_IN
    );
  NlwBufferBlock_output_pc_2_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_output_pc_2_CLK
    );
  NlwBufferBlock_output_pc_2_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => input_pc_2_IBUF_418,
      O => NlwBufferSignal_output_pc_2_IN
    );
  NlwBufferBlock_output_pc_19_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_output_pc_19_CLK
    );
  NlwBufferBlock_output_pc_19_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => input_pc_19_IBUF_415,
      O => NlwBufferSignal_output_pc_19_IN
    );
  NlwBufferBlock_output_pc_6_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_output_pc_6_CLK
    );
  NlwBufferBlock_output_pc_6_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => input_pc_6_IBUF_424,
      O => NlwBufferSignal_output_pc_6_IN
    );
  NlwBufferBlock_output_pc_29_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_output_pc_29_CLK
    );
  NlwBufferBlock_output_pc_29_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => input_pc_29_IBUF_421,
      O => NlwBufferSignal_output_pc_29_IN
    );
  NlwBufferBlock_output_pc_3_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_output_pc_3_CLK
    );
  NlwBufferBlock_output_pc_3_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => input_pc_3_IBUF_420,
      O => NlwBufferSignal_output_pc_3_IN
    );
  NlwBufferBlock_output_pc_4_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_output_pc_4_CLK
    );
  NlwBufferBlock_output_pc_4_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => input_pc_4_IBUF_422,
      O => NlwBufferSignal_output_pc_4_IN
    );
  NlwBufferBlock_output_pc_24_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_output_pc_24_CLK
    );
  NlwBufferBlock_output_pc_24_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => input_pc_24_IBUF_405,
      O => NlwBufferSignal_output_pc_24_IN
    );
  NlwBufferBlock_output_pc_9_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_output_pc_9_CLK
    );
  NlwBufferBlock_output_pc_9_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => input_pc_9_IBUF_427,
      O => NlwBufferSignal_output_pc_9_IN
    );
  NlwBufferBlock_output_pc_17_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_output_pc_17_CLK
    );
  NlwBufferBlock_output_pc_17_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => input_pc_17_IBUF_407,
      O => NlwBufferSignal_output_pc_17_IN
    );
  NlwBufferBlock_output_pc_5_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_output_pc_5_CLK
    );
  NlwBufferBlock_output_pc_5_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => input_pc_5_IBUF_423,
      O => NlwBufferSignal_output_pc_5_IN
    );
  NlwBlock_ProgramCounter_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_ProgramCounter_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

