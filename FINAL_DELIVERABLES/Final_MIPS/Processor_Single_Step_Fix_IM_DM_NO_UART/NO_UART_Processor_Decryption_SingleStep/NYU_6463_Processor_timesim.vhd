--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: NYU_6463_Processor_timesim.vhd
-- /___/   /\     Timestamp: Mon Dec 12 18:35:07 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 1 -pcf NYU_6463_Processor.pcf -rpw 100 -tpw 0 -ar Structure -tm NYU_6463_Processor -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim NYU_6463_Processor.ncd NYU_6463_Processor_timesim.vhd 
-- Device	: 7a100tcsg324-1 (PRODUCTION 1.10 2013-10-13)
-- Input file	: NYU_6463_Processor.ncd
-- Output file	: D:\RAJ_KAMAL\VHDL_Projects\Final_Year_Project\Previously_updated\Update_13_Working_encryption_2cycles\Test_decryption\Final_test\Sampl2\NYU_6463_Processor\netgen\par\NYU_6463_Processor_timesim.vhd
-- # of Entities	: 1
-- Design Name	: NYU_6463_Processor
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

entity NYU_6463_Processor is
  port (
    clk : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    PC_reset : in STD_LOGIC := 'X'; 
    Instruction : out STD_LOGIC_VECTOR ( 31 downto 0 ); 
    output : out STD_LOGIC_VECTOR ( 31 downto 0 ) 
  );
end NYU_6463_Processor;

architecture Structure of NYU_6463_Processor is
  signal Op_2_ALU_sig_12_Q : STD_LOGIC; 
  signal Instruction_17_OBUF_4208 : STD_LOGIC; 
  signal Itype_sig : STD_LOGIC; 
  signal Instruction_12_OBUF_4210 : STD_LOGIC; 
  signal Op_2_Rt_sig_12_0 : STD_LOGIC; 
  signal Write_Reg_Address_sig_1_0 : STD_LOGIC; 
  signal Op_2_ALU_sig_14_Q : STD_LOGIC; 
  signal Instruction_19_OBUF_4215 : STD_LOGIC; 
  signal Instruction_14_OBUF_4216 : STD_LOGIC; 
  signal Op_2_Rt_sig_14_0 : STD_LOGIC; 
  signal Write_Reg_Address_sig_3_0 : STD_LOGIC; 
  signal Instruction_30_OBUF_4220 : STD_LOGIC; 
  signal Instruction_29_OBUF_4222 : STD_LOGIC; 
  signal Ctrl_Next_PC_signal_1_0 : STD_LOGIC; 
  signal Op_2_Rt_sig_24_0 : STD_LOGIC; 
  signal OP_1_Rs_sig_24_0 : STD_LOGIC; 
  signal Op_2_Rt_sig_26_0 : STD_LOGIC; 
  signal OP_1_Rs_sig_26_0 : STD_LOGIC; 
  signal Op_2_Rt_sig_28_0 : STD_LOGIC; 
  signal OP_1_Rs_sig_28_0 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_11_Q_4236 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_14_0 : STD_LOGIC; 
  signal Op_2_Rt_sig_0_0 : STD_LOGIC; 
  signal OP_1_Rs_sig_0_0 : STD_LOGIC; 
  signal Op_2_Rt_sig_2_0 : STD_LOGIC; 
  signal OP_1_Rs_sig_2_0 : STD_LOGIC; 
  signal Op_2_Rt_sig_4_0 : STD_LOGIC; 
  signal OP_1_Rs_sig_4_0 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_3_Q_4250 : STD_LOGIC; 
  signal Op_2_Rt_sig_6_0 : STD_LOGIC; 
  signal OP_1_Rs_sig_6_0 : STD_LOGIC; 
  signal Op_2_Rt_sig_8_0 : STD_LOGIC; 
  signal OP_1_Rs_sig_8_0 : STD_LOGIC; 
  signal Op_2_Rt_sig_10_0 : STD_LOGIC; 
  signal OP_1_Rs_sig_10_0 : STD_LOGIC; 
  signal OP_1_Rs_sig_12_0 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_7_Q_4266 : STD_LOGIC; 
  signal OP_1_Rs_sig_14_0 : STD_LOGIC; 
  signal Op_2_Rt_sig_16_0 : STD_LOGIC; 
  signal OP_1_Rs_sig_16_0 : STD_LOGIC; 
  signal Op_2_Rt_sig_18_0 : STD_LOGIC; 
  signal OP_1_Rs_sig_18_0 : STD_LOGIC; 
  signal Op_2_Rt_sig_20_0 : STD_LOGIC; 
  signal OP_1_Rs_sig_20_0 : STD_LOGIC; 
  signal Op_2_Rt_sig_22_0 : STD_LOGIC; 
  signal OP_1_Rs_sig_22_0 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal PC_Plus_1_sig_0_0 : STD_LOGIC; 
  signal Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_0_1_4288 : STD_LOGIC; 
  signal PC_Plus_1_sig_1_0 : STD_LOGIC; 
  signal Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_1_1_4290 : STD_LOGIC; 
  signal N6_0 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal PC_Plus_1_sig_4_0 : STD_LOGIC; 
  signal Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_4_1_4294 : STD_LOGIC; 
  signal PC_Plus_1_sig_5_0 : STD_LOGIC; 
  signal Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_5_1_4296 : STD_LOGIC; 
  signal N10_0 : STD_LOGIC; 
  signal Op_2_ALU_sig_19_Q : STD_LOGIC; 
  signal Instruction_10_OBUF_4300 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7113_0 : STD_LOGIC; 
  signal Op_2_ALU_sig_28_Q : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7212_0 : STD_LOGIC; 
  signal Op_2_ALU_sig_18_Q : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7103_0 : STD_LOGIC; 
  signal output_27_OBUF_4306 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_split_27_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7202_0 : STD_LOGIC; 
  signal Op_2_ALU_sig_27_Q : STD_LOGIC; 
  signal Op_2_ALU_sig_29_Q : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7222_0 : STD_LOGIC; 
  signal Op_2_ALU_sig_21_Q : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7143_0 : STD_LOGIC; 
  signal Op_2_ALU_sig_8_Q : STD_LOGIC; 
  signal Op_2_ALU_sig_7_0 : STD_LOGIC; 
  signal Op_2_ALU_sig_20_Q : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7133_0 : STD_LOGIC; 
  signal Op_2_ALU_sig_31_Q : STD_LOGIC; 
  signal Instruction_20_OBUF_4321 : STD_LOGIC; 
  signal Write_Reg_Address_sig_4_0 : STD_LOGIC; 
  signal Op_2_ALU_sig_22_Q : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7153_0 : STD_LOGIC; 
  signal Op_2_ALU_sig_30_Q : STD_LOGIC; 
  signal OP_1_Rs_sig_30_0 : STD_LOGIC; 
  signal Op_2_Rt_sig_30_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7246_0 : STD_LOGIC; 
  signal Op_2_ALU_sig_24_Q : STD_LOGIC; 
  signal Op_2_ALU_sig_15_0 : STD_LOGIC; 
  signal Op_2_ALU_sig_25_Q : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7183_0 : STD_LOGIC; 
  signal Op_2_ALU_sig_23_Q : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7163_0 : STD_LOGIC; 
  signal Op_2_ALU_sig_26_Q : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7193_0 : STD_LOGIC; 
  signal Op_2_ALU_sig_6_Q : STD_LOGIC; 
  signal Op_2_ALU_sig_10_0 : STD_LOGIC; 
  signal Op_2_ALU_sig_11_Q : STD_LOGIC; 
  signal Instruction_16_OBUF_4341 : STD_LOGIC; 
  signal Instruction_11_OBUF_4342 : STD_LOGIC; 
  signal Write_Reg_Address_sig_0_0 : STD_LOGIC; 
  signal Op_2_ALU_sig_13_Q : STD_LOGIC; 
  signal Instruction_18_OBUF_4345 : STD_LOGIC; 
  signal Instruction_13_OBUF_4346 : STD_LOGIC; 
  signal Write_Reg_Address_sig_2_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output793_0 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal PC_Plus_1_sig_2_0 : STD_LOGIC; 
  signal Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_2_1_4351 : STD_LOGIC; 
  signal PC_Plus_1_sig_3_0 : STD_LOGIC; 
  signal Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_3_1_4353 : STD_LOGIC; 
  signal N14_0 : STD_LOGIC; 
  signal Instruction_0_OBUF_4355 : STD_LOGIC; 
  signal Decoder_Mmux_alu_op_sel11_4356 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_split_0_0 : STD_LOGIC; 
  signal Instruction_1_OBUF_4358 : STD_LOGIC; 
  signal Decoder_Mmux_alu_op_sel32 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_split_1_0 : STD_LOGIC; 
  signal Instruction_2_OBUF_4362 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_split_2_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_rs_cy_3_Q_4364 : STD_LOGIC; 
  signal Instruction_3_OBUF_4365 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_split_3_0 : STD_LOGIC; 
  signal Instruction_4_OBUF_4367 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_split_4_0 : STD_LOGIC; 
  signal Instruction_5_OBUF_4369 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_split_5_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_split_6_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_rs_cy_7_Q_4372 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_split_7_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_split_8_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_split_9_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_split_10_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_rs_cy_11_Q_4377 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_split_11_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_split_12_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_split_13_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_split_14_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_rs_cy_15_Q_4382 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_split_15_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_split_16_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_split_17_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_split_18_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_rs_cy_19_Q_4387 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_split_19_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_split_20_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_split_21_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_split_22_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_rs_cy_23_Q_4392 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_split_23_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_split_24_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_split_25_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_split_26_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_rs_cy_27_Q_4397 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_split_28_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_split_29_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_split_30_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output1_split_31_0 : STD_LOGIC; 
  signal PC_Itype_Branch_sig_0_0 : STD_LOGIC; 
  signal PC_Itype_Branch_sig_1_0 : STD_LOGIC; 
  signal PC_Itype_Branch_sig_2_0 : STD_LOGIC; 
  signal PC_Itype_Branch_sig_3_0 : STD_LOGIC; 
  signal PC_Itype_Branch_sig_4_0 : STD_LOGIC; 
  signal PC_Itype_Branch_sig_5_0 : STD_LOGIC; 
  signal Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_3_Q_4411 : STD_LOGIC; 
  signal Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_7_Q_4412 : STD_LOGIC; 
  signal Compare_input1_31_input2_31_equal_1_o_0 : STD_LOGIC; 
  signal reset_IBUF_4421 : STD_LOGIC; 
  signal output_18_OBUF_4422 : STD_LOGIC; 
  signal output_17_OBUF_4423 : STD_LOGIC; 
  signal output_16_OBUF_4424 : STD_LOGIC; 
  signal output_15_OBUF_4425 : STD_LOGIC; 
  signal output_19_OBUF_4426 : STD_LOGIC; 
  signal output_10_OBUF_4427 : STD_LOGIC; 
  signal output_14_OBUF_4428 : STD_LOGIC; 
  signal output_13_OBUF_4429 : STD_LOGIC; 
  signal output_12_OBUF_4430 : STD_LOGIC; 
  signal output_11_OBUF_4431 : STD_LOGIC; 
  signal output_28_OBUF_0 : STD_LOGIC; 
  signal output_26_OBUF_4433 : STD_LOGIC; 
  signal output_25_OBUF_4434 : STD_LOGIC; 
  signal output_29_OBUF_0 : STD_LOGIC; 
  signal output_20_OBUF_4436 : STD_LOGIC; 
  signal output_24_OBUF_0 : STD_LOGIC; 
  signal output_23_OBUF_4438 : STD_LOGIC; 
  signal output_22_OBUF_4439 : STD_LOGIC; 
  signal output_21_OBUF_4440 : STD_LOGIC; 
  signal output_30_OBUF_4441 : STD_LOGIC; 
  signal output_31_OBUF_0 : STD_LOGIC; 
  signal Instruction_28_OBUF_4443 : STD_LOGIC; 
  signal Instruction_27_OBUF_4444 : STD_LOGIC; 
  signal Instruction_26_OBUF_4445 : STD_LOGIC; 
  signal Instruction_25_OBUF_4446 : STD_LOGIC; 
  signal Instruction_24_OBUF_4447 : STD_LOGIC; 
  signal Instruction_23_OBUF_4448 : STD_LOGIC; 
  signal Instruction_22_OBUF_4449 : STD_LOGIC; 
  signal Instruction_21_OBUF_4450 : STD_LOGIC; 
  signal PC_reset_IBUF_4451 : STD_LOGIC; 
  signal output_9_OBUF_4452 : STD_LOGIC; 
  signal output_5_OBUF_4453 : STD_LOGIC; 
  signal output_6_OBUF_4454 : STD_LOGIC; 
  signal output_7_OBUF_4455 : STD_LOGIC; 
  signal output_8_OBUF_4456 : STD_LOGIC; 
  signal output_1_OBUF_4457 : STD_LOGIC; 
  signal output_2_OBUF_4458 : STD_LOGIC; 
  signal output_3_OBUF_4459 : STD_LOGIC; 
  signal output_4_OBUF_4460 : STD_LOGIC; 
  signal output_0_OBUF_4461 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_4462 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal write_data_Reg_File_sig_0_0 : STD_LOGIC; 
  signal write_enable_sig : STD_LOGIC; 
  signal write_data_Reg_File_sig_8_0 : STD_LOGIC; 
  signal write_data_Reg_File_sig_9_0 : STD_LOGIC; 
  signal write_data_Reg_File_sig_10_0 : STD_LOGIC; 
  signal write_data_Reg_File_sig_11_0 : STD_LOGIC; 
  signal write_data_Reg_File_sig_15_0 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out181_0 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out110_0 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out191_0 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out29_0 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out201_0 : STD_LOGIC; 
  signal Decoder_is_itype_sig1_4502 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out211_0 : STD_LOGIC; 
  signal Op_2_ALU_sig_3_Q : STD_LOGIC; 
  signal Op_2_ALU_sig_4_Q : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out221_0 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out261_0 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out241_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output732_0 : STD_LOGIC; 
  signal Op_2_ALU_sig_2_Q : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out251_0 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out231_0 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out28_0 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out101_0 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out111_0 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out271_0 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out121_0 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out31_0 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out15_0 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out17_0 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out41_0 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out141_0 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out51_0 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out151_0 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out161_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output751_0 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out71_0 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out171_0 : STD_LOGIC; 
  signal ALU_op_operand2_3_mmx_out8 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out21 : STD_LOGIC; 
  signal Op_2_ALU_sig_1_Q : STD_LOGIC; 
  signal Op_2_ALU_sig_0_Q : STD_LOGIC; 
  signal N119 : STD_LOGIC; 
  signal N140 : STD_LOGIC; 
  signal ALU_op_operand2_3_mmx_out9 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out18 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out22 : STD_LOGIC; 
  signal ALU_op_operand2_2_mmx_out7 : STD_LOGIC; 
  signal N148 : STD_LOGIC; 
  signal ALU_op_operand2_2_mmx_out8 : STD_LOGIC; 
  signal N147 : STD_LOGIC; 
  signal N135 : STD_LOGIC; 
  signal ALU_op_operand2_2_mmx_out24 : STD_LOGIC; 
  signal ALU_op_operand2_2_mmx_out231 : STD_LOGIC; 
  signal ALU_op_operand2_2_mmx_out31 : STD_LOGIC; 
  signal N142 : STD_LOGIC; 
  signal N145 : STD_LOGIC; 
  signal N143 : STD_LOGIC; 
  signal N144 : STD_LOGIC; 
  signal ALU_op_operand2_2_mmx_out121 : STD_LOGIC; 
  signal ALU_op_operand2_2_mmx_out41 : STD_LOGIC; 
  signal ALU_op_operand2_2_mmx_out131 : STD_LOGIC; 
  signal ALU_op_operand2_2_mmx_out51 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output720 : STD_LOGIC; 
  signal ALU_op_operand2_3_mmx_out10 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7244_4557 : STD_LOGIC; 
  signal ALU_op_operand2_2_mmx_out141 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output721_4559 : STD_LOGIC; 
  signal ALU_op_operand2_0_mmx_out14 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7211_4561 : STD_LOGIC; 
  signal ALU_op_operand2_3_mmx_out11 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output721411 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7221_4564 : STD_LOGIC; 
  signal ALU_op_operand2_3_mmx_out13 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output723_4566 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7235_4567 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7245_4568 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7241_0 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out26 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7242_4571 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out7 : STD_LOGIC; 
  signal load_sig : STD_LOGIC; 
  signal store_sig : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7291 : STD_LOGIC; 
  signal N190 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7293_4578 : STD_LOGIC; 
  signal ALU_op_operand2_2_mmx_out12 : STD_LOGIC; 
  signal ALU_op_operand2_0_mmx_out30 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7252_4581 : STD_LOGIC; 
  signal ALU_op_operand2_0_mmx_out15 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out27 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out8 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7251_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7254_4586 : STD_LOGIC; 
  signal ALU_op_operand2_2_mmx_out171 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7263_4588 : STD_LOGIC; 
  signal ALU_op_operand2_0_mmx_out161 : STD_LOGIC; 
  signal ALU_op_operand2_0_mmx_out141 : STD_LOGIC; 
  signal Mux_ALU_Mmux_output231_4591 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7128_4592 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7127_4593 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7122_4594 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7265_4596 : STD_LOGIC; 
  signal ALU_op_operand2_2_mmx_out9 : STD_LOGIC; 
  signal N121 : STD_LOGIC; 
  signal ALU_op_operand2_3_mmx_out21 : STD_LOGIC; 
  signal Mux_ALU_Mmux_output261_4600 : STD_LOGIC; 
  signal N120 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output728 : STD_LOGIC; 
  signal N109 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7111_4607 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out19 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out4 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out23 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7112_4611 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7125_4613 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7126_4614 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7124_4615 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7131_4616 : STD_LOGIC; 
  signal ALU_op_operand2_2_mmx_out10 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out20 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out1 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out5 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out24 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7132_4622 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7141_4624 : STD_LOGIC; 
  signal ALU_op_operand2_2_mmx_out11 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out2 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out6 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out25 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7142_4629 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7101_4631 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out3 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7102_4633 : STD_LOGIC; 
  signal ALU_op_operand2_3_mmx_out16 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output719 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7191_4637 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7151_4638 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7152_4639 : STD_LOGIC; 
  signal ALU_op_operand2_3_mmx_out41 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7162_4642 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output716 : STD_LOGIC; 
  signal ALU_op_operand2_2_mmx_out13 : STD_LOGIC; 
  signal ALU_op_operand2_2_mmx_out161 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output717_4646 : STD_LOGIC; 
  signal ALU_op_operand2_2_mmx_out201 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out9 : STD_LOGIC; 
  signal ALU_op_operand2_3_mmx_out7 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7181_4650 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output718_4651 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7311_4652 : STD_LOGIC; 
  signal ALU_op_operand2_2_mmx_out191 : STD_LOGIC; 
  signal ALU_op_operand2_2_mmx_out181 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output712_4656 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7321_4657 : STD_LOGIC; 
  signal Op_2_ALU_sig_9_Q : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7303_4660 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7302_4661 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7301_4662 : STD_LOGIC; 
  signal ALU_op_operand2_0_mmx_out151 : STD_LOGIC; 
  signal Data_MEM_write_enable_read_enable_AND_33_o : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7232 : STD_LOGIC; 
  signal ALU_op_operand2_3_mmx_out17 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out10 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out12 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out13 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output722_4679 : STD_LOGIC; 
  signal ALU_op_operand2_3_mmx_out151 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7121_4681 : STD_LOGIC; 
  signal ALU_op_operand2_3_mmx_out51 : STD_LOGIC; 
  signal ALU_op_operand2_2_mmx_out151 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output730 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output791_4685 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output792_4686 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output761_4688 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output763_4689 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output762_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output753_4692 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output752_4693 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output782_4695 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output783_4696 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output78_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output771_4699 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output772_4700 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output726 : STD_LOGIC; 
  signal ALU_op_operand2_2_mmx_out25 : STD_LOGIC; 
  signal ALU_op_operand2_2_mmx_out110 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output71 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7116 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7110 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7114_4709 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output741_4710 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output743_4711 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output742_4712 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output733_4714 : STD_LOGIC; 
  signal N137 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_15_Q_4717 : STD_LOGIC; 
  signal N184 : STD_LOGIC; 
  signal N185 : STD_LOGIC; 
  signal N123 : STD_LOGIC; 
  signal Decoder_next_pc_2_1_4728 : STD_LOGIC; 
  signal ALU_op_operand2_2_5 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output781_4730 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7213_4731 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7223_4732 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output714_4733 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output713_4734 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7171_4735 : STD_LOGIC; 
  signal ALU_op_operand2_2_mmx_out21 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output79 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output711_4738 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output773_4739 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7253_4740 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7182_4741 : STD_LOGIC; 
  signal N139 : STD_LOGIC; 
  signal N186 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output734_4744 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7161_4745 : STD_LOGIC; 
  signal Reg_File_Mram_register_file14_RAMD_D1_O_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output731_4747 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7192_4748 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7123_4749 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output74 : STD_LOGIC; 
  signal N124 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7118 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7312_4754 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output73 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7203_4756 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7210 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7322_4758 : STD_LOGIC; 
  signal Op_2_ALU_sig_17_Q : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output715_4760 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7243_4761 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output710 : STD_LOGIC; 
  signal ALU_op_operand2_3_mmx_out31 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7281_4764 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7115_4765 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output77 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7292_4767 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7271 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out81 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7234 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output72 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out91 : STD_LOGIC; 
  signal Reg_File_Mram_register_file5_RAMD_D1_O_0 : STD_LOGIC; 
  signal Reg_File_Mram_register_file15_RAMD_D1_O_0 : STD_LOGIC; 
  signal Reg_File_Mram_register_file12_RAMD_D1_O_0 : STD_LOGIC; 
  signal Reg_File_Mram_register_file13_RAMD_D1_O_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output76 : STD_LOGIC; 
  signal Reg_File_Mram_register_file6_RAMD_D1_O_0 : STD_LOGIC; 
  signal Reg_File_Mram_register_file2_RAMD_D1_O_0 : STD_LOGIC; 
  signal Reg_File_Mram_register_file4_RAMD_D1_O_0 : STD_LOGIC; 
  signal Reg_File_Mram_register_file3_RAMD_D1_O_0 : STD_LOGIC; 
  signal Reg_File_Mram_register_file11_RAMD_D1_O_0 : STD_LOGIC; 
  signal Decoder_next_pc_2_2_4784 : STD_LOGIC; 
  signal Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_8_Q_510 : STD_LOGIC; 
  signal Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_9_Q_502 : STD_LOGIC; 
  signal Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_10_Q_490 : STD_LOGIC; 
  signal Compare_input1_31_input2_31_equal_1_o : STD_LOGIC; 
  signal Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_5_Q_483 : STD_LOGIC; 
  signal Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_6_Q_468 : STD_LOGIC; 
  signal Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_7_Q_463 : STD_LOGIC; 
  signal Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_4_Q_461 : STD_LOGIC; 
  signal PC_output_pc_2_rt_529 : STD_LOGIC; 
  signal PC_output_pc_3_rt_514 : STD_LOGIC; 
  signal PC_output_pc_1_rt_513 : STD_LOGIC; 
  signal ProtoComp21_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal PC_output_pc_4_rt_540 : STD_LOGIC; 
  signal PC_output_pc_5_rt_535 : STD_LOGIC; 
  signal Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_1_Q_438 : STD_LOGIC; 
  signal Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_0_Q_435 : STD_LOGIC; 
  signal Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_2_Q_426 : STD_LOGIC; 
  signal Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_3_Q_422 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi13_19 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi12_16 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_14_Q_14 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_12_Q_12 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_14_Q_11 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_13_Q_8 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi14_3 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi_48 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_0_Q_44 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi1_38 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_1_Q_37 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi2_32 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi3_29 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_2_Q_28 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_3_Q_25 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_5_Q_74 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi4_67 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_4_Q_66 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi5_63 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_6_Q_60 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi6_58 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi7_57 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_7_Q_55 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_9_Q_104 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi8_97 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_8_Q_96 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi9_93 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_10_Q_90 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi10_88 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi11_87 : STD_LOGIC; 
  signal Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_11_Q_85 : STD_LOGIC; 
  signal N201 : STD_LOGIC; 
  signal N200 : STD_LOGIC; 
  signal output_31_OBUF_1297 : STD_LOGIC; 
  signal Data_MEM_n0012_8_INV_Data_MEM_Mram_data_memory9CLK : STD_LOGIC; 
  signal Data_MEM_n0012_8_INV_Data_MEM_Mram_data_memory30CLK : STD_LOGIC; 
  signal Data_MEM_n0012_8_INV_Data_MEM_Mram_data_memory31CLK : STD_LOGIC; 
  signal Data_MEM_n0012_8_INV_Data_MEM_Mram_data_memory32CLK : STD_LOGIC; 
  signal Op_2_ALU_sig_7_Q : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7222_927 : STD_LOGIC; 
  signal N198 : STD_LOGIC; 
  signal N199 : STD_LOGIC; 
  signal output_24_OBUF_1019 : STD_LOGIC; 
  signal N208 : STD_LOGIC; 
  signal N209 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7251 : STD_LOGIC; 
  signal Data_MEM_n0012_21_INV_Data_MEM_Mram_data_memory22CLK : STD_LOGIC; 
  signal Data_MEM_n0012_21_INV_Data_MEM_Mram_data_memory23CLK : STD_LOGIC; 
  signal Data_MEM_n0012_21_INV_Data_MEM_Mram_data_memory24CLK : STD_LOGIC; 
  signal Data_MEM_n0012_21_INV_Data_MEM_Mram_data_memory25CLK : STD_LOGIC; 
  signal Data_MEM_n0012_0_INV_Data_MEM_Mram_data_memory1CLK : STD_LOGIC; 
  signal Data_MEM_n0012_0_INV_Data_MEM_Mram_data_memory2CLK : STD_LOGIC; 
  signal Data_MEM_n0012_0_INV_Data_MEM_Mram_data_memory3CLK : STD_LOGIC; 
  signal Data_MEM_n0012_0_INV_Data_MEM_Mram_data_memory4CLK : STD_LOGIC; 
  signal OP_1_Rs_sig_0_rt_128 : STD_LOGIC; 
  signal PC_reset_ProtoComp21_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal output_28_OBUF_749 : STD_LOGIC; 
  signal N194 : STD_LOGIC; 
  signal N195 : STD_LOGIC; 
  signal N196 : STD_LOGIC; 
  signal output_29_OBUF_797 : STD_LOGIC; 
  signal N197 : STD_LOGIC; 
  signal clk_ProtoComp21_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7212_740 : STD_LOGIC; 
  signal Data_MEM_n0012_9_INV_Data_MEM_Mram_data_memory10CLK : STD_LOGIC; 
  signal Data_MEM_n0012_9_INV_Data_MEM_Mram_data_memory11CLK : STD_LOGIC; 
  signal Data_MEM_n0012_9_INV_Data_MEM_Mram_data_memory12CLK : STD_LOGIC; 
  signal Data_MEM_n0012_9_INV_Data_MEM_Mram_data_memory13CLK : STD_LOGIC; 
  signal Reg_File_Mram_register_file14_RAMD_D1_O : STD_LOGIC; 
  signal Data_MEM_n0012_4_INV_Data_MEM_Mram_data_memory5CLK : STD_LOGIC; 
  signal Data_MEM_n0012_4_INV_Data_MEM_Mram_data_memory6CLK : STD_LOGIC; 
  signal Data_MEM_n0012_4_INV_Data_MEM_Mram_data_memory7CLK : STD_LOGIC; 
  signal Data_MEM_n0012_4_INV_Data_MEM_Mram_data_memory8CLK : STD_LOGIC; 
  signal Data_MEM_n0012_13_INV_Data_MEM_Mram_data_memory14CLK : STD_LOGIC; 
  signal Data_MEM_n0012_13_INV_Data_MEM_Mram_data_memory15CLK : STD_LOGIC; 
  signal Data_MEM_n0012_13_INV_Data_MEM_Mram_data_memory16CLK : STD_LOGIC; 
  signal Data_MEM_n0012_13_INV_Data_MEM_Mram_data_memory17CLK : STD_LOGIC; 
  signal Data_MEM_n0012_25_INV_Data_MEM_Mram_data_memory26CLK : STD_LOGIC; 
  signal Data_MEM_n0012_25_INV_Data_MEM_Mram_data_memory27CLK : STD_LOGIC; 
  signal Data_MEM_n0012_25_INV_Data_MEM_Mram_data_memory28CLK : STD_LOGIC; 
  signal Data_MEM_n0012_25_INV_Data_MEM_Mram_data_memory29CLK : STD_LOGIC; 
  signal Data_MEM_n0012_17_INV_Data_MEM_Mram_data_memory18CLK : STD_LOGIC; 
  signal Data_MEM_n0012_17_INV_Data_MEM_Mram_data_memory19CLK : STD_LOGIC; 
  signal Data_MEM_n0012_17_INV_Data_MEM_Mram_data_memory20CLK : STD_LOGIC; 
  signal Data_MEM_n0012_17_INV_Data_MEM_Mram_data_memory21CLK : STD_LOGIC; 
  signal N206 : STD_LOGIC; 
  signal N207 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7202 : STD_LOGIC; 
  signal N202 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output78 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7143_1746 : STD_LOGIC; 
  signal N203 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7103_1843 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7153_1841 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7133_2545 : STD_LOGIC; 
  signal N227 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out15 : STD_LOGIC; 
  signal N226 : STD_LOGIC; 
  signal N235 : STD_LOGIC; 
  signal N234 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out17 : STD_LOGIC; 
  signal Op_2_ALU_sig_15_Q : STD_LOGIC; 
  signal N249 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out161 : STD_LOGIC; 
  signal N248 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7193_2270 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7113_2109 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output793_2232 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output762_2138 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7203_pack_1 : STD_LOGIC; 
  signal N211 : STD_LOGIC; 
  signal N210 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7241 : STD_LOGIC; 
  signal Reg_File_Mram_register_file5_RAMD_D1_O : STD_LOGIC; 
  signal Reg_File_Mram_register_file12_RAMD_D1_O : STD_LOGIC; 
  signal Reg_File_Mram_register_file15_RAMD_D1_O : STD_LOGIC; 
  signal Reg_File_Mram_register_file13_RAMD_D1_O : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out241 : STD_LOGIC; 
  signal N228 : STD_LOGIC; 
  signal N229 : STD_LOGIC; 
  signal N260 : STD_LOGIC; 
  signal N261 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out31 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7163_2752 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7183_2818 : STD_LOGIC; 
  signal Op_2_ALU_sig_10_Q : STD_LOGIC; 
  signal N231 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out121 : STD_LOGIC; 
  signal N230 : STD_LOGIC; 
  signal Reg_File_Mram_register_file6_RAMD_D1_O : STD_LOGIC; 
  signal N225 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out111 : STD_LOGIC; 
  signal N224 : STD_LOGIC; 
  signal Reg_File_Mram_register_file2_RAMD_D1_O : STD_LOGIC; 
  signal N259 : STD_LOGIC; 
  signal N258 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out41 : STD_LOGIC; 
  signal Reg_File_Mram_register_file4_RAMD_D1_O : STD_LOGIC; 
  signal N215 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out251 : STD_LOGIC; 
  signal N214 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output751 : STD_LOGIC; 
  signal N204 : STD_LOGIC; 
  signal N205 : STD_LOGIC; 
  signal N189 : STD_LOGIC; 
  signal N188 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out261 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output7246_3200 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out29 : STD_LOGIC; 
  signal N244 : STD_LOGIC; 
  signal N245 : STD_LOGIC; 
  signal N243 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out171 : STD_LOGIC; 
  signal N242 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out181 : STD_LOGIC; 
  signal N247 : STD_LOGIC; 
  signal N246 : STD_LOGIC; 
  signal N192 : STD_LOGIC; 
  signal ALU_op_Mmux_sig_output732_3447 : STD_LOGIC; 
  signal N193 : STD_LOGIC; 
  signal N253 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out51 : STD_LOGIC; 
  signal N252 : STD_LOGIC; 
  signal N239 : STD_LOGIC; 
  signal N238 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out191 : STD_LOGIC; 
  signal N223 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out231 : STD_LOGIC; 
  signal N222 : STD_LOGIC; 
  signal N233 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out211 : STD_LOGIC; 
  signal N232 : STD_LOGIC; 
  signal N257 : STD_LOGIC; 
  signal N256 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out151 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N221 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out201 : STD_LOGIC; 
  signal N220 : STD_LOGIC; 
  signal N241 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out110 : STD_LOGIC; 
  signal N240 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out221 : STD_LOGIC; 
  signal N213 : STD_LOGIC; 
  signal N212 : STD_LOGIC; 
  signal N255 : STD_LOGIC; 
  signal N254 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out271 : STD_LOGIC; 
  signal N251 : STD_LOGIC; 
  signal N250 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out141 : STD_LOGIC; 
  signal N219 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out101 : STD_LOGIC; 
  signal N218 : STD_LOGIC; 
  signal Reg_File_Mram_register_file3_RAMD_D1_O : STD_LOGIC; 
  signal N237 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out28 : STD_LOGIC; 
  signal N236 : STD_LOGIC; 
  signal N217 : STD_LOGIC; 
  signal ALU_op_operand2_1_mmx_out71 : STD_LOGIC; 
  signal N216 : STD_LOGIC; 
  signal Reg_File_Mram_register_file11_RAMD_D1_O : STD_LOGIC; 
  signal NlwBufferSignal_Adder_PC_Itype_Branch_Madd_sum_out_xor_5_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_23_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_23_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_23_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_23_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_xor_31_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_xor_31_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_xor_31_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_Adder_PC_Itype_Branch_Madd_sum_out_cy_3_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_Adder_PC_Itype_Branch_Madd_sum_out_cy_3_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_Adder_PC_Itype_Branch_Madd_sum_out_cy_3_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_Adder_PC_Itype_Branch_Madd_sum_out_cy_3_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_27_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_27_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_27_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_27_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_output_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_14_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_19_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_13_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_16_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_15_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_18_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_17_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_28_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_12_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory9_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory9_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory9_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory9_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory9_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory9_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory9_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory9_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory9_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory9_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory9_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory9_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory9_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory9_WE : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory30_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory30_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory30_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory30_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory30_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory30_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory30_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory30_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory30_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory30_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory30_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory30_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory30_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory30_WE : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory31_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory31_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory31_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory31_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory31_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory31_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory31_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory31_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory31_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory31_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory31_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory31_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory31_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory31_WE : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory32_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory32_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory32_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory32_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory32_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory32_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory32_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory32_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory32_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory32_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory32_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory32_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory32_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory32_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory32_WE : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory22_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory22_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory22_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory22_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory22_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory22_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory22_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory22_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory22_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory22_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory22_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory22_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory22_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory22_WE : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory23_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory23_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory23_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory23_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory23_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory23_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory23_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory23_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory23_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory23_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory23_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory23_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory23_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory23_WE : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory24_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory24_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory24_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory24_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory24_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory24_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory24_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory24_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory24_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory24_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory24_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory24_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory24_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory24_WE : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory25_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory25_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory25_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory25_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory25_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory25_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory25_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory25_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory25_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory25_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory25_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory25_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory25_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory25_WE : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory1_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory1_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory1_WE : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory2_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory2_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory2_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory2_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory2_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory2_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory2_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory2_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory2_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory2_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory2_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory2_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory2_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory2_WE : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory3_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory3_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory3_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory3_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory3_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory3_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory3_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory3_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory3_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory3_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory3_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory3_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory3_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory3_WE : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory4_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory4_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory4_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory4_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory4_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory4_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory4_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory4_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory4_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory4_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory4_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory4_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory4_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory4_WE : STD_LOGIC; 
  signal NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_11_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_11_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_11_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_11_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_19_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_19_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_19_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_19_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_7_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_7_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_7_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_7_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_15_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_15_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_15_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_15_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_3_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_3_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_3_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_output_20_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_15_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_24_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_13_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_26_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_27_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_18_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_17_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_30_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_31_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_19_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_25_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_22_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_29_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_16_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_14_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_12_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_23_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_21_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_31_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_30_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_29_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_28_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_21_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_20_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_24_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_22_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_27_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_25_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_26_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_23_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory10_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory10_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory10_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory10_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory10_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory10_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory10_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory10_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory10_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory10_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory10_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory10_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory10_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory10_WE : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory11_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory11_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory11_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory11_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory11_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory11_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory11_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory11_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory11_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory11_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory11_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory11_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory11_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory11_WE : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory12_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory12_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory12_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory12_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory12_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory12_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory12_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory12_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory12_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory12_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory12_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory12_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory12_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory12_WE : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory13_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory13_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory13_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory13_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory13_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory13_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory13_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory13_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory13_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory13_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory13_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory13_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory13_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory13_WE : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory5_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory5_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory5_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory5_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory5_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory5_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory5_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory5_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory5_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory5_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory5_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory5_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory5_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory5_WE : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory6_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory6_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory6_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory6_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory6_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory6_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory6_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory6_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory6_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory6_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory6_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory6_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory6_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory6_WE : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory7_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory7_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory7_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory7_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory7_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory7_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory7_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory7_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory7_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory7_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory7_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory7_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory7_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory7_WE : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory8_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory8_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory8_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory8_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory8_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory8_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory8_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory8_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory8_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory8_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory8_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory8_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory8_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory8_WE : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory14_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory14_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory14_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory14_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory14_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory14_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory14_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory14_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory14_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory14_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory14_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory14_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory14_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory14_WE : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory15_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory15_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory15_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory15_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory15_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory15_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory15_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory15_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory15_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory15_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory15_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory15_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory15_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory15_WE : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory16_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory16_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory16_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory16_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory16_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory16_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory16_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory16_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory16_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory16_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory16_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory16_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory16_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory16_WE : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory17_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory17_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory17_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory17_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory17_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory17_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory17_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory17_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory17_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory17_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory17_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory17_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory17_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory17_WE : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory26_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory26_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory26_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory26_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory26_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory26_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory26_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory26_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory26_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory26_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory26_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory26_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory26_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory26_WE : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory27_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory27_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory27_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory27_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory27_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory27_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory27_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory27_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory27_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory27_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory27_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory27_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory27_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory27_WE : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory28_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory28_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory28_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory28_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory28_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory28_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory28_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory28_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory28_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory28_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory28_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory28_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory28_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory28_WE : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory29_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory29_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory29_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory29_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory29_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory29_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory29_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory29_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory29_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory29_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory29_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory29_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory29_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory29_WE : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory18_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory18_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory18_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory18_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory18_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory18_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory18_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory18_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory18_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory18_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory18_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory18_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory18_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory18_WE : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory19_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory19_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory19_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory19_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory19_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory19_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory19_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory19_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory19_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory19_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory19_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory19_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory19_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory19_WE : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory20_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory20_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory20_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory20_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory20_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory20_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory20_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory20_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory20_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory20_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory20_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory20_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory20_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory20_WE : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory21_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory21_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory21_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory21_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory21_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory21_RADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory21_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory21_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory21_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory21_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory21_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory21_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory21_WADR5 : STD_LOGIC; 
  signal NlwBufferSignal_Data_MEM_Mram_data_memory21_WE : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_PC_output_pc_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PC_output_pc_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file72_SP_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file72_SP_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file72_SP_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file72_SP_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file72_SP_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file72_SP_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file72_SP_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file72_SP_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file72_SP_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file72_SP_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file72_SP_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file72_SP_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file71_SP_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file71_SP_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file71_SP_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file71_SP_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file71_SP_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file71_SP_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file71_SP_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file71_SP_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file71_SP_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file71_SP_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file71_SP_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file71_SP_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file162_SP_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file162_SP_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file162_SP_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file162_SP_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file162_SP_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file162_SP_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file162_SP_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file162_SP_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file162_SP_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file162_SP_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file162_SP_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file162_SP_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file161_SP_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file161_SP_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file161_SP_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file161_SP_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file161_SP_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file161_SP_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file161_SP_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file161_SP_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file161_SP_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file161_SP_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file161_SP_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file161_SP_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file72_DP_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file72_DP_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file72_DP_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file72_DP_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file72_DP_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file72_DP_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file72_DP_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file72_DP_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file72_DP_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file72_DP_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file72_DP_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file72_DP_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file71_DP_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file71_DP_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file71_DP_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file71_DP_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file71_DP_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file71_DP_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file71_DP_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file71_DP_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file71_DP_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file71_DP_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file71_DP_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file71_DP_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file162_DP_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file162_DP_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file162_DP_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file162_DP_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file162_DP_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file162_DP_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file162_DP_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file162_DP_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file162_DP_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file162_DP_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file162_DP_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file162_DP_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file161_DP_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file161_DP_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file161_DP_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file161_DP_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file161_DP_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file161_DP_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file161_DP_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file161_DP_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file161_DP_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file161_DP_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file161_DP_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file161_DP_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_PC_output_pc_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PC_output_pc_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PC_output_pc_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PC_output_pc_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_IN : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_WADR4 : STD_LOGIC; 
  signal NLW_Adder_PC_Itype_Branch_Madd_sum_out_xor_5_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Adder_PC_Itype_Branch_Madd_sum_out_xor_5_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Adder_PC_Itype_Branch_Madd_sum_out_xor_5_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Adder_PC_Itype_Branch_Madd_sum_out_xor_5_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Adder_PC_Itype_Branch_Madd_sum_out_xor_5_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Adder_PC_Itype_Branch_Madd_sum_out_xor_5_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Adder_PC_Itype_Branch_Madd_sum_out_xor_5_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Adder_PC_Itype_Branch_Madd_sum_out_xor_5_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Adder_PC_Itype_Branch_Madd_sum_out_xor_5_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Adder_PC_Itype_Branch_Madd_sum_out_xor_5_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Adder_PC_Itype_Branch_Madd_sum_out_xor_5_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_op_Mmux_sig_output1_rs_cy_23_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_op_Mmux_sig_output1_rs_cy_23_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_op_Mmux_sig_output1_rs_cy_23_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_op_Mmux_sig_output1_rs_xor_31_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_op_Mmux_sig_output1_rs_xor_31_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_op_Mmux_sig_output1_rs_xor_31_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_op_Mmux_sig_output1_rs_xor_31_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_op_Mmux_sig_output1_rs_xor_31_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp14_CYINITGND_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Adder_PC_Itype_Branch_Madd_sum_out_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Adder_PC_Itype_Branch_Madd_sum_out_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Adder_PC_Itype_Branch_Madd_sum_out_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_op_Mmux_sig_output1_rs_cy_27_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_op_Mmux_sig_output1_rs_cy_27_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_op_Mmux_sig_output1_rs_cy_27_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_10_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_10_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_10_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_10_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_10_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_10_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_10_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_10_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_10_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_17_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_7_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_7_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_7_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_7_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_5_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp19_CYINITGND_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Adder_PC_Normal_Madd_sum_out_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Adder_PC_Normal_Madd_sum_out_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Adder_PC_Normal_Madd_sum_out_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_4_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_3_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Adder_PC_Normal_Madd_sum_out_xor_5_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Adder_PC_Normal_Madd_sum_out_xor_5_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Adder_PC_Normal_Madd_sum_out_xor_5_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Adder_PC_Normal_Madd_sum_out_xor_5_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Adder_PC_Normal_Madd_sum_out_xor_5_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Adder_PC_Normal_Madd_sum_out_xor_5_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Adder_PC_Normal_Madd_sum_out_xor_5_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Adder_PC_Normal_Madd_sum_out_xor_5_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Adder_PC_Normal_Madd_sum_out_xor_5_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Adder_PC_Normal_Madd_sum_out_xor_5_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Adder_PC_Normal_Madd_sum_out_xor_5_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_6_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp16_CYINITVCC_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_14_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_14_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_14_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_14_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_14_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_14_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_14_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_14_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_14_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp3_CYINITVCC_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_7_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_7_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_7_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_7_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_11_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_11_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_11_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_11_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_op_Mmux_sig_output1_rs_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_op_Mmux_sig_output1_rs_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_op_Mmux_sig_output1_rs_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_op_Mmux_sig_output1_rs_cy_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_op_Mmux_sig_output1_rs_cy_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_op_Mmux_sig_output1_rs_cy_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_op_Mmux_sig_output1_rs_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_op_Mmux_sig_output1_rs_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_op_Mmux_sig_output1_rs_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_op_Mmux_sig_output1_rs_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_op_Mmux_sig_output1_rs_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_op_Mmux_sig_output1_rs_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_op_Mmux_sig_output1_rs_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_op_Mmux_sig_output1_rs_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALU_op_Mmux_sig_output1_rs_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Reg_File_Mram_register_file14_RAMD_D1_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Reg_File_Mram_register_file5_RAMD_D1_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Reg_File_Mram_register_file12_RAMD_D1_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Reg_File_Mram_register_file15_RAMD_D1_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Reg_File_Mram_register_file13_RAMD_D1_O_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_Reg_File_Mram_register_file6_RAMD_D1_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Reg_File_Mram_register_file2_RAMD_D1_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Reg_File_Mram_register_file4_RAMD_D1_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Reg_File_Mram_register_file72_SP_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Reg_File_Mram_register_file71_SP_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Reg_File_Mram_register_file162_SP_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Reg_File_Mram_register_file161_SP_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Reg_File_Mram_register_file3_RAMD_D1_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Reg_File_Mram_register_file11_RAMD_D1_O_UNCONNECTED : STD_LOGIC; 
  signal Ctrl_Next_PC_signal : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal Decoder_next_pc : STD_LOGIC_VECTOR ( 2 downto 1 ); 
  signal Op_2_Rt_sig : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal OP_1_Rs_sig : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal ALU_operation_sig : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Adder_PC_Itype_Branch_Madd_sum_out_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal PC_output_pc : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal Adder_PC_Normal_Madd_sum_out_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal write_data_Reg_File_sig : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Data_MEM_n0012 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Adder_PC_Itype_Branch_Madd_sum_out_lut : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal PC_Itype_Branch_sig : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal ALU_op_Mmux_sig_output1_rs_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal ALU_op_Mmux_sig_output1_split : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal PC_Plus_1_sig : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal Adder_PC_Normal_Madd_sum_out_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Write_Reg_Address_sig : STD_LOGIC_VECTOR ( 4 downto 0 ); 
begin
  PC_Itype_Branch_sig_5_PC_Itype_Branch_sig_5_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => PC_Itype_Branch_sig(5),
      O => PC_Itype_Branch_sig_5_0
    );
  PC_Itype_Branch_sig_5_PC_Itype_Branch_sig_5_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => PC_Itype_Branch_sig(4),
      O => PC_Itype_Branch_sig_4_0
    );
  Adder_PC_Itype_Branch_Madd_sum_out_xor_5_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X39Y114"
    )
    port map (
      CI => Adder_PC_Itype_Branch_Madd_sum_out_cy(3),
      CYINIT => '0',
      CO(3) => NLW_Adder_PC_Itype_Branch_Madd_sum_out_xor_5_CO_3_UNCONNECTED,
      CO(2) => NLW_Adder_PC_Itype_Branch_Madd_sum_out_xor_5_CO_2_UNCONNECTED,
      CO(1) => NLW_Adder_PC_Itype_Branch_Madd_sum_out_xor_5_CO_1_UNCONNECTED,
      CO(0) => NLW_Adder_PC_Itype_Branch_Madd_sum_out_xor_5_CO_0_UNCONNECTED,
      DI(3) => NLW_Adder_PC_Itype_Branch_Madd_sum_out_xor_5_DI_3_UNCONNECTED,
      DI(2) => NLW_Adder_PC_Itype_Branch_Madd_sum_out_xor_5_DI_2_UNCONNECTED,
      DI(1) => NLW_Adder_PC_Itype_Branch_Madd_sum_out_xor_5_DI_1_UNCONNECTED,
      DI(0) => NlwBufferSignal_Adder_PC_Itype_Branch_Madd_sum_out_xor_5_DI_0_Q,
      O(3) => NLW_Adder_PC_Itype_Branch_Madd_sum_out_xor_5_O_3_UNCONNECTED,
      O(2) => NLW_Adder_PC_Itype_Branch_Madd_sum_out_xor_5_O_2_UNCONNECTED,
      O(1) => PC_Itype_Branch_sig(5),
      O(0) => PC_Itype_Branch_sig(4),
      S(3) => NLW_Adder_PC_Itype_Branch_Madd_sum_out_xor_5_S_3_UNCONNECTED,
      S(2) => NLW_Adder_PC_Itype_Branch_Madd_sum_out_xor_5_S_2_UNCONNECTED,
      S(1) => Adder_PC_Itype_Branch_Madd_sum_out_lut(5),
      S(0) => Adder_PC_Itype_Branch_Madd_sum_out_lut(4)
    );
  Adder_PC_Itype_Branch_Madd_sum_out_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X39Y114",
      INIT => X"0FF00FF00FF00FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR2 => PC_Plus_1_sig_5_0,
      ADR3 => Instruction_5_OBUF_4369,
      O => Adder_PC_Itype_Branch_Madd_sum_out_lut(5)
    );
  Adder_PC_Itype_Branch_Madd_sum_out_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X39Y114",
      INIT => X"3C3C3C3C3C3C3C3C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR1 => PC_Plus_1_sig_4_0,
      ADR2 => Instruction_4_OBUF_4367,
      O => Adder_PC_Itype_Branch_Madd_sum_out_lut(4)
    );
  ALU_op_Mmux_sig_output1_rs_cy_23_ALU_op_Mmux_sig_output1_rs_cy_23_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output1_split(23),
      O => ALU_op_Mmux_sig_output1_split_23_0
    );
  ALU_op_Mmux_sig_output1_rs_cy_23_ALU_op_Mmux_sig_output1_rs_cy_23_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output1_split(22),
      O => ALU_op_Mmux_sig_output1_split_22_0
    );
  ALU_op_Mmux_sig_output1_rs_cy_23_ALU_op_Mmux_sig_output1_rs_cy_23_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output1_split(21),
      O => ALU_op_Mmux_sig_output1_split_21_0
    );
  ALU_op_Mmux_sig_output1_rs_cy_23_ALU_op_Mmux_sig_output1_rs_cy_23_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output1_split(20),
      O => ALU_op_Mmux_sig_output1_split_20_0
    );
  ALU_op_Mmux_sig_output1_rs_lut_23_Q : X_LUT6
    generic map(
      LOC => "SLICE_X31Y124",
      INIT => X"C3C3C33C3C3CC33C"
    )
    port map (
      ADR0 => '1',
      ADR2 => OP_1_Rs_sig(23),
      ADR4 => Itype_sig,
      ADR5 => Instruction_10_OBUF_4300,
      ADR3 => Op_2_Rt_sig(23),
      ADR1 => ALU_operation_sig(0),
      O => ALU_op_Mmux_sig_output1_rs_lut(23)
    );
  ALU_op_Mmux_sig_output1_rs_cy_23_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X31Y124"
    )
    port map (
      CI => ALU_op_Mmux_sig_output1_rs_cy_19_Q_4387,
      CYINIT => '0',
      CO(3) => ALU_op_Mmux_sig_output1_rs_cy_23_Q_4392,
      CO(2) => NLW_ALU_op_Mmux_sig_output1_rs_cy_23_CO_2_UNCONNECTED,
      CO(1) => NLW_ALU_op_Mmux_sig_output1_rs_cy_23_CO_1_UNCONNECTED,
      CO(0) => NLW_ALU_op_Mmux_sig_output1_rs_cy_23_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_23_DI_3_Q,
      DI(2) => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_23_DI_2_Q,
      DI(1) => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_23_DI_1_Q,
      DI(0) => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_23_DI_0_Q,
      O(3) => ALU_op_Mmux_sig_output1_split(23),
      O(2) => ALU_op_Mmux_sig_output1_split(22),
      O(1) => ALU_op_Mmux_sig_output1_split(21),
      O(0) => ALU_op_Mmux_sig_output1_split(20),
      S(3) => ALU_op_Mmux_sig_output1_rs_lut(23),
      S(2) => ALU_op_Mmux_sig_output1_rs_lut(22),
      S(1) => ALU_op_Mmux_sig_output1_rs_lut(21),
      S(0) => ALU_op_Mmux_sig_output1_rs_lut(20)
    );
  ALU_op_Mmux_sig_output1_rs_lut_22_Q : X_LUT6
    generic map(
      LOC => "SLICE_X31Y124",
      INIT => X"FA0505FA0AF5F50A"
    )
    port map (
      ADR1 => '1',
      ADR4 => OP_1_Rs_sig_22_0,
      ADR2 => Itype_sig,
      ADR5 => Instruction_10_OBUF_4300,
      ADR0 => Op_2_Rt_sig_22_0,
      ADR3 => ALU_operation_sig(0),
      O => ALU_op_Mmux_sig_output1_rs_lut(22)
    );
  ALU_op_Mmux_sig_output1_rs_lut_21_Q : X_LUT6
    generic map(
      LOC => "SLICE_X31Y124",
      INIT => X"FC0C03F303F3FC0C"
    )
    port map (
      ADR0 => '1',
      ADR4 => OP_1_Rs_sig(21),
      ADR2 => Itype_sig,
      ADR3 => Instruction_10_OBUF_4300,
      ADR1 => Op_2_Rt_sig(21),
      ADR5 => ALU_operation_sig(0),
      O => ALU_op_Mmux_sig_output1_rs_lut(21)
    );
  ALU_op_Mmux_sig_output1_rs_lut_20_Q : X_LUT6
    generic map(
      LOC => "SLICE_X31Y124",
      INIT => X"9999A5A566665A5A"
    )
    port map (
      ADR3 => '1',
      ADR0 => OP_1_Rs_sig_20_0,
      ADR4 => Itype_sig,
      ADR1 => Instruction_10_OBUF_4300,
      ADR2 => Op_2_Rt_sig_20_0,
      ADR5 => ALU_operation_sig(0),
      O => ALU_op_Mmux_sig_output1_rs_lut(20)
    );
  ALU_op_Mmux_sig_output1_split_31_ALU_op_Mmux_sig_output1_split_31_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output1_split(31),
      O => ALU_op_Mmux_sig_output1_split_31_0
    );
  ALU_op_Mmux_sig_output1_split_31_ALU_op_Mmux_sig_output1_split_31_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output1_split(30),
      O => ALU_op_Mmux_sig_output1_split_30_0
    );
  ALU_op_Mmux_sig_output1_split_31_ALU_op_Mmux_sig_output1_split_31_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output1_split(29),
      O => ALU_op_Mmux_sig_output1_split_29_0
    );
  ALU_op_Mmux_sig_output1_split_31_ALU_op_Mmux_sig_output1_split_31_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output1_split(28),
      O => ALU_op_Mmux_sig_output1_split_28_0
    );
  ALU_op_Mmux_sig_output1_rs_lut_31_Q : X_LUT6
    generic map(
      LOC => "SLICE_X31Y126",
      INIT => X"EE1111EE44BBBB44"
    )
    port map (
      ADR2 => '1',
      ADR4 => OP_1_Rs_sig(31),
      ADR0 => Itype_sig,
      ADR5 => Instruction_10_OBUF_4300,
      ADR1 => Op_2_Rt_sig(31),
      ADR3 => ALU_operation_sig(0),
      O => ALU_op_Mmux_sig_output1_rs_lut(31)
    );
  ALU_op_Mmux_sig_output1_rs_xor_31_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X31Y126"
    )
    port map (
      CI => ALU_op_Mmux_sig_output1_rs_cy_27_Q_4397,
      CYINIT => '0',
      CO(3) => NLW_ALU_op_Mmux_sig_output1_rs_xor_31_CO_3_UNCONNECTED,
      CO(2) => NLW_ALU_op_Mmux_sig_output1_rs_xor_31_CO_2_UNCONNECTED,
      CO(1) => NLW_ALU_op_Mmux_sig_output1_rs_xor_31_CO_1_UNCONNECTED,
      CO(0) => NLW_ALU_op_Mmux_sig_output1_rs_xor_31_CO_0_UNCONNECTED,
      DI(3) => NLW_ALU_op_Mmux_sig_output1_rs_xor_31_DI_3_UNCONNECTED,
      DI(2) => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_xor_31_DI_2_Q,
      DI(1) => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_xor_31_DI_1_Q,
      DI(0) => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_xor_31_DI_0_Q,
      O(3) => ALU_op_Mmux_sig_output1_split(31),
      O(2) => ALU_op_Mmux_sig_output1_split(30),
      O(1) => ALU_op_Mmux_sig_output1_split(29),
      O(0) => ALU_op_Mmux_sig_output1_split(28),
      S(3) => ALU_op_Mmux_sig_output1_rs_lut(31),
      S(2) => ALU_op_Mmux_sig_output1_rs_lut(30),
      S(1) => ALU_op_Mmux_sig_output1_rs_lut(29),
      S(0) => ALU_op_Mmux_sig_output1_rs_lut(28)
    );
  ALU_op_Mmux_sig_output1_rs_lut_30_Q : X_LUT6
    generic map(
      LOC => "SLICE_X31Y126",
      INIT => X"EE1111EE44BBBB44"
    )
    port map (
      ADR2 => '1',
      ADR4 => OP_1_Rs_sig_30_0,
      ADR0 => Itype_sig,
      ADR5 => Instruction_10_OBUF_4300,
      ADR1 => Op_2_Rt_sig_30_0,
      ADR3 => ALU_operation_sig(0),
      O => ALU_op_Mmux_sig_output1_rs_lut(30)
    );
  ALU_op_Mmux_sig_output1_rs_lut_29_Q : X_LUT6
    generic map(
      LOC => "SLICE_X31Y126",
      INIT => X"FC030CF303FCF30C"
    )
    port map (
      ADR0 => '1',
      ADR3 => OP_1_Rs_sig(29),
      ADR2 => Itype_sig,
      ADR4 => Instruction_10_OBUF_4300,
      ADR1 => Op_2_Rt_sig(29),
      ADR5 => ALU_operation_sig(0),
      O => ALU_op_Mmux_sig_output1_rs_lut(29)
    );
  ALU_op_Mmux_sig_output1_rs_lut_28_Q : X_LUT6
    generic map(
      LOC => "SLICE_X31Y126",
      INIT => X"CC33AA5533CC55AA"
    )
    port map (
      ADR2 => '1',
      ADR3 => OP_1_Rs_sig_28_0,
      ADR4 => Itype_sig,
      ADR1 => Instruction_10_OBUF_4300,
      ADR0 => Op_2_Rt_sig_28_0,
      ADR5 => ALU_operation_sig(0),
      O => ALU_op_Mmux_sig_output1_rs_lut(28)
    );
  Adder_PC_Itype_Branch_Madd_sum_out_cy_3_Adder_PC_Itype_Branch_Madd_sum_out_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => PC_Itype_Branch_sig(3),
      O => PC_Itype_Branch_sig_3_0
    );
  Adder_PC_Itype_Branch_Madd_sum_out_cy_3_Adder_PC_Itype_Branch_Madd_sum_out_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => PC_Itype_Branch_sig(2),
      O => PC_Itype_Branch_sig_2_0
    );
  Adder_PC_Itype_Branch_Madd_sum_out_cy_3_Adder_PC_Itype_Branch_Madd_sum_out_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => PC_Itype_Branch_sig(1),
      O => PC_Itype_Branch_sig_1_0
    );
  Adder_PC_Itype_Branch_Madd_sum_out_cy_3_Adder_PC_Itype_Branch_Madd_sum_out_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => PC_Itype_Branch_sig(0),
      O => PC_Itype_Branch_sig_0_0
    );
  Adder_PC_Itype_Branch_Madd_sum_out_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X39Y113",
      INIT => X"0F0F0F0FF0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => PC_Plus_1_sig_3_0,
      ADR2 => Instruction_3_OBUF_4365,
      O => Adder_PC_Itype_Branch_Madd_sum_out_lut(3)
    );
  ProtoComp14_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X39Y113"
    )
    port map (
      O => NLW_ProtoComp14_CYINITGND_O_UNCONNECTED
    );
  Adder_PC_Itype_Branch_Madd_sum_out_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X39Y113"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => Adder_PC_Itype_Branch_Madd_sum_out_cy(3),
      CO(2) => NLW_Adder_PC_Itype_Branch_Madd_sum_out_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_Adder_PC_Itype_Branch_Madd_sum_out_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_Adder_PC_Itype_Branch_Madd_sum_out_cy_3_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_Adder_PC_Itype_Branch_Madd_sum_out_cy_3_DI_3_Q,
      DI(2) => NlwBufferSignal_Adder_PC_Itype_Branch_Madd_sum_out_cy_3_DI_2_Q,
      DI(1) => NlwBufferSignal_Adder_PC_Itype_Branch_Madd_sum_out_cy_3_DI_1_Q,
      DI(0) => NlwBufferSignal_Adder_PC_Itype_Branch_Madd_sum_out_cy_3_DI_0_Q,
      O(3) => PC_Itype_Branch_sig(3),
      O(2) => PC_Itype_Branch_sig(2),
      O(1) => PC_Itype_Branch_sig(1),
      O(0) => PC_Itype_Branch_sig(0),
      S(3) => Adder_PC_Itype_Branch_Madd_sum_out_lut(3),
      S(2) => Adder_PC_Itype_Branch_Madd_sum_out_lut(2),
      S(1) => Adder_PC_Itype_Branch_Madd_sum_out_lut(1),
      S(0) => Adder_PC_Itype_Branch_Madd_sum_out_lut(0)
    );
  Adder_PC_Itype_Branch_Madd_sum_out_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X39Y113",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PC_Plus_1_sig_2_0,
      ADR5 => Instruction_2_OBUF_4362,
      O => Adder_PC_Itype_Branch_Madd_sum_out_lut(2)
    );
  Adder_PC_Itype_Branch_Madd_sum_out_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X39Y113",
      INIT => X"0FF00FF00FF00FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR2 => PC_Plus_1_sig_1_0,
      ADR3 => Instruction_1_OBUF_4358,
      O => Adder_PC_Itype_Branch_Madd_sum_out_lut(1)
    );
  Adder_PC_Itype_Branch_Madd_sum_out_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X39Y113",
      INIT => X"6666666666666666"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => PC_Plus_1_sig_0_0,
      ADR0 => Instruction_0_OBUF_4355,
      O => Adder_PC_Itype_Branch_Madd_sum_out_lut(0)
    );
  ALU_op_Mmux_sig_output1_rs_cy_27_ALU_op_Mmux_sig_output1_rs_cy_27_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output1_split(27),
      O => ALU_op_Mmux_sig_output1_split_27_0
    );
  ALU_op_Mmux_sig_output1_rs_cy_27_ALU_op_Mmux_sig_output1_rs_cy_27_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output1_split(26),
      O => ALU_op_Mmux_sig_output1_split_26_0
    );
  ALU_op_Mmux_sig_output1_rs_cy_27_ALU_op_Mmux_sig_output1_rs_cy_27_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output1_split(25),
      O => ALU_op_Mmux_sig_output1_split_25_0
    );
  ALU_op_Mmux_sig_output1_rs_cy_27_ALU_op_Mmux_sig_output1_rs_cy_27_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output1_split(24),
      O => ALU_op_Mmux_sig_output1_split_24_0
    );
  ALU_op_Mmux_sig_output1_rs_lut_27_Q : X_LUT6
    generic map(
      LOC => "SLICE_X31Y125",
      INIT => X"C33CC3C3C33C3C3C"
    )
    port map (
      ADR0 => '1',
      ADR2 => OP_1_Rs_sig(27),
      ADR4 => Itype_sig,
      ADR3 => Instruction_10_OBUF_4300,
      ADR5 => Op_2_Rt_sig(27),
      ADR1 => ALU_operation_sig(0),
      O => ALU_op_Mmux_sig_output1_rs_lut(27)
    );
  ALU_op_Mmux_sig_output1_rs_cy_27_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X31Y125"
    )
    port map (
      CI => ALU_op_Mmux_sig_output1_rs_cy_23_Q_4392,
      CYINIT => '0',
      CO(3) => ALU_op_Mmux_sig_output1_rs_cy_27_Q_4397,
      CO(2) => NLW_ALU_op_Mmux_sig_output1_rs_cy_27_CO_2_UNCONNECTED,
      CO(1) => NLW_ALU_op_Mmux_sig_output1_rs_cy_27_CO_1_UNCONNECTED,
      CO(0) => NLW_ALU_op_Mmux_sig_output1_rs_cy_27_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_27_DI_3_Q,
      DI(2) => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_27_DI_2_Q,
      DI(1) => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_27_DI_1_Q,
      DI(0) => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_27_DI_0_Q,
      O(3) => ALU_op_Mmux_sig_output1_split(27),
      O(2) => ALU_op_Mmux_sig_output1_split(26),
      O(1) => ALU_op_Mmux_sig_output1_split(25),
      O(0) => ALU_op_Mmux_sig_output1_split(24),
      S(3) => ALU_op_Mmux_sig_output1_rs_lut(27),
      S(2) => ALU_op_Mmux_sig_output1_rs_lut(26),
      S(1) => ALU_op_Mmux_sig_output1_rs_lut(25),
      S(0) => ALU_op_Mmux_sig_output1_rs_lut(24)
    );
  ALU_op_Mmux_sig_output1_rs_lut_26_Q : X_LUT6
    generic map(
      LOC => "SLICE_X31Y125",
      INIT => X"AA55A5A555AA5A5A"
    )
    port map (
      ADR1 => '1',
      ADR0 => OP_1_Rs_sig_26_0,
      ADR4 => Itype_sig,
      ADR3 => Instruction_10_OBUF_4300,
      ADR2 => Op_2_Rt_sig_26_0,
      ADR5 => ALU_operation_sig(0),
      O => ALU_op_Mmux_sig_output1_rs_lut(26)
    );
  ALU_op_Mmux_sig_output1_rs_lut_25_Q : X_LUT6
    generic map(
      LOC => "SLICE_X31Y125",
      INIT => X"AFA0505F505FAFA0"
    )
    port map (
      ADR1 => '1',
      ADR4 => OP_1_Rs_sig(25),
      ADR2 => Itype_sig,
      ADR0 => Instruction_10_OBUF_4300,
      ADR3 => Op_2_Rt_sig(25),
      ADR5 => ALU_operation_sig(0),
      O => ALU_op_Mmux_sig_output1_rs_lut(25)
    );
  ALU_op_Mmux_sig_output1_rs_lut_24_Q : X_LUT6
    generic map(
      LOC => "SLICE_X31Y125",
      INIT => X"AF50A05F50AF5FA0"
    )
    port map (
      ADR1 => '1',
      ADR3 => OP_1_Rs_sig_24_0,
      ADR2 => Itype_sig,
      ADR0 => Instruction_10_OBUF_4300,
      ADR4 => Op_2_Rt_sig_24_0,
      ADR5 => ALU_operation_sig(0),
      O => ALU_op_Mmux_sig_output1_rs_lut(24)
    );
  output_10_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y139"
    )
    port map (
      I => NlwBufferSignal_output_10_OBUF_I,
      O => output(10)
    );
  output_14_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y135"
    )
    port map (
      I => NlwBufferSignal_output_14_OBUF_I,
      O => output(14)
    );
  output_19_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y123"
    )
    port map (
      I => NlwBufferSignal_output_19_OBUF_I,
      O => output(19)
    );
  output_13_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y134"
    )
    port map (
      I => NlwBufferSignal_output_13_OBUF_I,
      O => output(13)
    );
  Compare_input1_31_input2_31_equal_1_o_Compare_input1_31_input2_31_equal_1_o_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Compare_input1_31_input2_31_equal_1_o,
      O => Compare_input1_31_input2_31_equal_1_o_0
    );
  Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_10_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X33Y126"
    )
    port map (
      CI => Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_7_Q_4412,
      CYINIT => '0',
      CO(3) => NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_10_CO_3_UNCONNECTED,
      CO(2) => Compare_input1_31_input2_31_equal_1_o,
      CO(1) => NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_10_CO_1_UNCONNECTED,
      CO(0) => NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_10_CO_0_UNCONNECTED,
      DI(3) => NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_10_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_10_O_3_UNCONNECTED,
      O(2) => NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_10_O_2_UNCONNECTED,
      O(1) => NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_10_O_1_UNCONNECTED,
      O(0) => NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_10_O_0_UNCONNECTED,
      S(3) => NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_10_S_3_UNCONNECTED,
      S(2) => Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_10_Q_490,
      S(1) => Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_9_Q_502,
      S(0) => Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_8_Q_510
    );
  Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X33Y126",
      INIT => X"8844221188442211"
    )
    port map (
      ADR2 => '1',
      ADR1 => OP_1_Rs_sig_30_0,
      ADR4 => Op_2_Rt_sig_30_0,
      ADR3 => OP_1_Rs_sig(31),
      ADR0 => Op_2_Rt_sig(31),
      ADR5 => '1',
      O => Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_10_Q_490
    );
  N1_17_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X33Y126",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_17_C5LUT_O_UNCONNECTED
    );
  Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X33Y126",
      INIT => X"8200410000820041"
    )
    port map (
      ADR1 => OP_1_Rs_sig(27),
      ADR2 => Op_2_Rt_sig(27),
      ADR0 => OP_1_Rs_sig_28_0,
      ADR4 => Op_2_Rt_sig_28_0,
      ADR5 => OP_1_Rs_sig(29),
      ADR3 => Op_2_Rt_sig(29),
      O => Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_9_Q_502
    );
  Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X33Y126",
      INIT => X"9000090000900009"
    )
    port map (
      ADR0 => OP_1_Rs_sig_24_0,
      ADR1 => Op_2_Rt_sig_24_0,
      ADR4 => OP_1_Rs_sig(25),
      ADR2 => Op_2_Rt_sig(25),
      ADR3 => OP_1_Rs_sig_26_0,
      ADR5 => Op_2_Rt_sig_26_0,
      O => Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_8_Q_510
    );
  Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X33Y125",
      INIT => X"8400008421000021"
    )
    port map (
      ADR2 => OP_1_Rs_sig(21),
      ADR0 => Op_2_Rt_sig(21),
      ADR4 => OP_1_Rs_sig_22_0,
      ADR3 => Op_2_Rt_sig_22_0,
      ADR1 => OP_1_Rs_sig(23),
      ADR5 => Op_2_Rt_sig(23),
      O => Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_7_Q_463
    );
  Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X33Y125"
    )
    port map (
      CI => Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_3_Q_4411,
      CYINIT => '0',
      CO(3) => Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_7_Q_4412,
      CO(2) => NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_7_O_3_UNCONNECTED,
      O(2) => NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_7_O_2_UNCONNECTED,
      O(1) => NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_7_O_1_UNCONNECTED,
      O(0) => NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_7_O_0_UNCONNECTED,
      S(3) => Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_7_Q_463,
      S(2) => Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_6_Q_468,
      S(1) => Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_5_Q_483,
      S(0) => Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_4_Q_461
    );
  Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X33Y125",
      INIT => X"8200008241000041"
    )
    port map (
      ADR1 => OP_1_Rs_sig_18_0,
      ADR2 => Op_2_Rt_sig_18_0,
      ADR0 => OP_1_Rs_sig(19),
      ADR5 => Op_2_Rt_sig(19),
      ADR3 => OP_1_Rs_sig_20_0,
      ADR4 => Op_2_Rt_sig_20_0,
      O => Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_6_Q_468
    );
  Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X33Y125",
      INIT => X"9000009009000009"
    )
    port map (
      ADR2 => OP_1_Rs_sig(15),
      ADR5 => Op_2_Rt_sig(15),
      ADR3 => OP_1_Rs_sig_16_0,
      ADR4 => Op_2_Rt_sig_16_0,
      ADR0 => OP_1_Rs_sig(17),
      ADR1 => Op_2_Rt_sig(17),
      O => Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_5_Q_483
    );
  Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X33Y125",
      INIT => X"8400008421000021"
    )
    port map (
      ADR3 => OP_1_Rs_sig_12_0,
      ADR4 => Op_2_Rt_sig_12_0,
      ADR0 => OP_1_Rs_sig(13),
      ADR2 => Op_2_Rt_sig(13),
      ADR5 => OP_1_Rs_sig_14_0,
      ADR1 => Op_2_Rt_sig_14_0,
      O => Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_4_Q_461
    );
  Adder_PC_Normal_Madd_sum_out_cy_3_Adder_PC_Normal_Madd_sum_out_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => PC_Plus_1_sig(3),
      O => PC_Plus_1_sig_3_0
    );
  Adder_PC_Normal_Madd_sum_out_cy_3_Adder_PC_Normal_Madd_sum_out_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => PC_Plus_1_sig(2),
      O => PC_Plus_1_sig_2_0
    );
  Adder_PC_Normal_Madd_sum_out_cy_3_Adder_PC_Normal_Madd_sum_out_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => PC_Plus_1_sig(1),
      O => PC_Plus_1_sig_1_0
    );
  Adder_PC_Normal_Madd_sum_out_cy_3_Adder_PC_Normal_Madd_sum_out_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => PC_Plus_1_sig(0),
      O => PC_Plus_1_sig_0_0
    );
  PC_output_pc_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X41Y112",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PC_output_pc(3),
      ADR5 => '1',
      O => PC_output_pc_3_rt_514
    );
  N1_5_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X41Y112",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_5_D5LUT_O_UNCONNECTED
    );
  ProtoComp19_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X41Y112"
    )
    port map (
      O => NLW_ProtoComp19_CYINITGND_O_UNCONNECTED
    );
  Adder_PC_Normal_Madd_sum_out_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X41Y112"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => Adder_PC_Normal_Madd_sum_out_cy(3),
      CO(2) => NLW_Adder_PC_Normal_Madd_sum_out_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_Adder_PC_Normal_Madd_sum_out_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_Adder_PC_Normal_Madd_sum_out_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => PC_Plus_1_sig(3),
      O(2) => PC_Plus_1_sig(2),
      O(1) => PC_Plus_1_sig(1),
      O(0) => PC_Plus_1_sig(0),
      S(3) => PC_output_pc_3_rt_514,
      S(2) => PC_output_pc_2_rt_529,
      S(1) => PC_output_pc_1_rt_513,
      S(0) => Adder_PC_Normal_Madd_sum_out_lut(0)
    );
  PC_output_pc_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X41Y112",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => PC_output_pc(2),
      ADR5 => '1',
      O => PC_output_pc_2_rt_529
    );
  N1_4_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X41Y112",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_4_C5LUT_O_UNCONNECTED
    );
  PC_output_pc_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X41Y112",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => PC_output_pc(1),
      ADR5 => '1',
      O => PC_output_pc_1_rt_513
    );
  N1_3_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X41Y112",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_3_B5LUT_O_UNCONNECTED
    );
  Adder_PC_Normal_Madd_sum_out_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X41Y112",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PC_output_pc(0),
      ADR5 => '1',
      O => Adder_PC_Normal_Madd_sum_out_lut(0)
    );
  N0_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X41Y112",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_A5LUT_O_UNCONNECTED
    );
  ProtoComp21_INTERMDISABLE_GND : X_ZERO
    generic map(
      LOC => "IOB_X1Y123"
    )
    port map (
      O => ProtoComp21_INTERMDISABLE_GND_0
    );
  reset_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y123"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => ProtoComp21_INTERMDISABLE_GND_0,
      O => reset_IBUF_4421,
      I => reset,
      TPWRGT => '1'
    );
  output_16_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y133"
    )
    port map (
      I => NlwBufferSignal_output_16_OBUF_I,
      O => output(16)
    );
  output_15_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y127"
    )
    port map (
      I => NlwBufferSignal_output_15_OBUF_I,
      O => output(15)
    );
  PC_Plus_1_sig_5_PC_Plus_1_sig_5_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => PC_Plus_1_sig(5),
      O => PC_Plus_1_sig_5_0
    );
  PC_Plus_1_sig_5_PC_Plus_1_sig_5_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => PC_Plus_1_sig(4),
      O => PC_Plus_1_sig_4_0
    );
  Adder_PC_Normal_Madd_sum_out_xor_5_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X41Y113"
    )
    port map (
      CI => Adder_PC_Normal_Madd_sum_out_cy(3),
      CYINIT => '0',
      CO(3) => NLW_Adder_PC_Normal_Madd_sum_out_xor_5_CO_3_UNCONNECTED,
      CO(2) => NLW_Adder_PC_Normal_Madd_sum_out_xor_5_CO_2_UNCONNECTED,
      CO(1) => NLW_Adder_PC_Normal_Madd_sum_out_xor_5_CO_1_UNCONNECTED,
      CO(0) => NLW_Adder_PC_Normal_Madd_sum_out_xor_5_CO_0_UNCONNECTED,
      DI(3) => NLW_Adder_PC_Normal_Madd_sum_out_xor_5_DI_3_UNCONNECTED,
      DI(2) => NLW_Adder_PC_Normal_Madd_sum_out_xor_5_DI_2_UNCONNECTED,
      DI(1) => NLW_Adder_PC_Normal_Madd_sum_out_xor_5_DI_1_UNCONNECTED,
      DI(0) => '0',
      O(3) => NLW_Adder_PC_Normal_Madd_sum_out_xor_5_O_3_UNCONNECTED,
      O(2) => NLW_Adder_PC_Normal_Madd_sum_out_xor_5_O_2_UNCONNECTED,
      O(1) => PC_Plus_1_sig(5),
      O(0) => PC_Plus_1_sig(4),
      S(3) => NLW_Adder_PC_Normal_Madd_sum_out_xor_5_S_3_UNCONNECTED,
      S(2) => NLW_Adder_PC_Normal_Madd_sum_out_xor_5_S_2_UNCONNECTED,
      S(1) => PC_output_pc_5_rt_535,
      S(0) => PC_output_pc_4_rt_540
    );
  PC_output_pc_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X41Y113",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => PC_output_pc(5),
      O => PC_output_pc_5_rt_535
    );
  PC_output_pc_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X41Y113",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => PC_output_pc(4),
      ADR5 => '1',
      O => PC_output_pc_4_rt_540
    );
  N1_6_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X41Y113",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_6_A5LUT_O_UNCONNECTED
    );
  output_18_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y131"
    )
    port map (
      I => NlwBufferSignal_output_18_OBUF_I,
      O => output(18)
    );
  output_17_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y130"
    )
    port map (
      I => NlwBufferSignal_output_17_OBUF_I,
      O => output(17)
    );
  Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X33Y124",
      INIT => X"8040201008040201"
    )
    port map (
      ADR0 => OP_1_Rs_sig(9),
      ADR3 => Op_2_Rt_sig(9),
      ADR5 => OP_1_Rs_sig_10_0,
      ADR2 => Op_2_Rt_sig_10_0,
      ADR1 => OP_1_Rs_sig(11),
      ADR4 => Op_2_Rt_sig(11),
      O => Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_3_Q_422
    );
  ProtoComp16_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X33Y124"
    )
    port map (
      O => NLW_ProtoComp16_CYINITVCC_O_UNCONNECTED
    );
  Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X33Y124"
    )
    port map (
      CI => '0',
      CYINIT => '1',
      CO(3) => Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_3_Q_4411,
      CO(2) => NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_Compare_Mcompar_input1_31_input2_31_equal_1_o_cy_3_O_0_UNCONNECTED,
      S(3) => Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_3_Q_422,
      S(2) => Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_2_Q_426,
      S(1) => Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_1_Q_438,
      S(0) => Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_0_Q_435
    );
  Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X33Y124",
      INIT => X"8020080240100401"
    )
    port map (
      ADR0 => OP_1_Rs_sig_6_0,
      ADR5 => Op_2_Rt_sig_6_0,
      ADR4 => OP_1_Rs_sig(7),
      ADR2 => Op_2_Rt_sig(7),
      ADR3 => OP_1_Rs_sig_8_0,
      ADR1 => Op_2_Rt_sig_8_0,
      O => Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_2_Q_426
    );
  Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X33Y124",
      INIT => X"8040080420100201"
    )
    port map (
      ADR4 => OP_1_Rs_sig(3),
      ADR2 => Op_2_Rt_sig(3),
      ADR0 => OP_1_Rs_sig_4_0,
      ADR3 => Op_2_Rt_sig_4_0,
      ADR1 => OP_1_Rs_sig(5),
      ADR5 => Op_2_Rt_sig(5),
      O => Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_1_Q_438
    );
  Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X33Y124",
      INIT => X"8020080240100401"
    )
    port map (
      ADR1 => OP_1_Rs_sig_0_0,
      ADR3 => Op_2_Rt_sig_0_0,
      ADR2 => OP_1_Rs_sig(1),
      ADR4 => Op_2_Rt_sig(1),
      ADR5 => OP_1_Rs_sig_2_0,
      ADR0 => Op_2_Rt_sig_2_0,
      O => Compare_Mcompar_input1_31_input2_31_equal_1_o_lut_0_Q_435
    );
  output_11_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y136"
    )
    port map (
      I => NlwBufferSignal_output_11_OBUF_I,
      O => output(11)
    );
  output_28_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y121"
    )
    port map (
      I => NlwBufferSignal_output_28_OBUF_I,
      O => output(28)
    );
  output_12_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y137"
    )
    port map (
      I => NlwBufferSignal_output_12_OBUF_I,
      O => output(12)
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_14_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_14_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_14_Q_14,
      O => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_14_0
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_14_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X32Y126"
    )
    port map (
      CI => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_11_Q_4236,
      CYINIT => '0',
      CO(3) => NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_14_CO_3_UNCONNECTED,
      CO(2) => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_14_Q_14,
      CO(1) => NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_14_CO_1_UNCONNECTED,
      CO(0) => NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_14_CO_0_UNCONNECTED,
      DI(3) => NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_14_DI_3_UNCONNECTED,
      DI(2) => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi14_3,
      DI(1) => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi13_19,
      DI(0) => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi12_16,
      O(3) => NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_14_O_3_UNCONNECTED,
      O(2) => NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_14_O_2_UNCONNECTED,
      O(1) => NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_14_O_1_UNCONNECTED,
      O(0) => NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_14_O_0_UNCONNECTED,
      S(3) => NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_14_S_3_UNCONNECTED,
      S(2) => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_14_Q_11,
      S(1) => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_13_Q_8,
      S(0) => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_12_Q_12
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y126",
      INIT => X"8421842184218421"
    )
    port map (
      ADR4 => '1',
      ADR0 => Op_2_Rt_sig_28_0,
      ADR2 => OP_1_Rs_sig_28_0,
      ADR3 => Op_2_Rt_sig(29),
      ADR1 => OP_1_Rs_sig(29),
      ADR5 => '1',
      O => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_14_Q_11
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi14 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y126",
      INIT => X"40DC40DC"
    )
    port map (
      ADR4 => '1',
      ADR0 => Op_2_Rt_sig_28_0,
      ADR2 => OP_1_Rs_sig_28_0,
      ADR3 => Op_2_Rt_sig(29),
      ADR1 => OP_1_Rs_sig(29),
      O => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi14_3
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y126",
      INIT => X"C30000C3C30000C3"
    )
    port map (
      ADR0 => '1',
      ADR2 => Op_2_Rt_sig_26_0,
      ADR1 => OP_1_Rs_sig_26_0,
      ADR4 => Op_2_Rt_sig(27),
      ADR3 => OP_1_Rs_sig(27),
      ADR5 => '1',
      O => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_13_Q_8
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi13 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y126",
      INIT => X"0C00FF0C"
    )
    port map (
      ADR0 => '1',
      ADR2 => Op_2_Rt_sig_26_0,
      ADR1 => OP_1_Rs_sig_26_0,
      ADR4 => Op_2_Rt_sig(27),
      ADR3 => OP_1_Rs_sig(27),
      O => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi13_19
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y126",
      INIT => X"8421842184218421"
    )
    port map (
      ADR4 => '1',
      ADR3 => Op_2_Rt_sig_24_0,
      ADR1 => OP_1_Rs_sig_24_0,
      ADR2 => Op_2_Rt_sig(25),
      ADR0 => OP_1_Rs_sig(25),
      ADR5 => '1',
      O => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_12_Q_12
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi12 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y126",
      INIT => X"0A8E0A8E"
    )
    port map (
      ADR4 => '1',
      ADR3 => Op_2_Rt_sig_24_0,
      ADR1 => OP_1_Rs_sig_24_0,
      ADR2 => Op_2_Rt_sig(25),
      ADR0 => OP_1_Rs_sig(25),
      O => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi12_16
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y123",
      INIT => X"8282414182824141"
    )
    port map (
      ADR3 => '1',
      ADR1 => Op_2_Rt_sig_6_0,
      ADR2 => OP_1_Rs_sig_6_0,
      ADR0 => Op_2_Rt_sig(7),
      ADR4 => OP_1_Rs_sig(7),
      ADR5 => '1',
      O => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_3_Q_25
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi3 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y123",
      INIT => X"75751010"
    )
    port map (
      ADR3 => '1',
      ADR1 => Op_2_Rt_sig_6_0,
      ADR2 => OP_1_Rs_sig_6_0,
      ADR0 => Op_2_Rt_sig(7),
      ADR4 => OP_1_Rs_sig(7),
      O => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi3_29
    );
  ProtoComp3_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X32Y123"
    )
    port map (
      O => NLW_ProtoComp3_CYINITVCC_O_UNCONNECTED
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X32Y123"
    )
    port map (
      CI => '0',
      CYINIT => '1',
      CO(3) => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_3_Q_4250,
      CO(2) => NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_3_CO_0_UNCONNECTED,
      DI(3) => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi3_29,
      DI(2) => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi2_32,
      DI(1) => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi1_38,
      DI(0) => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi_48,
      O(3) => NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_3_O_0_UNCONNECTED,
      S(3) => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_3_Q_25,
      S(2) => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_2_Q_28,
      S(1) => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_1_Q_37,
      S(0) => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_0_Q_44
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y123",
      INIT => X"A50000A5A50000A5"
    )
    port map (
      ADR1 => '1',
      ADR0 => Op_2_Rt_sig_4_0,
      ADR2 => OP_1_Rs_sig_4_0,
      ADR3 => Op_2_Rt_sig(5),
      ADR4 => OP_1_Rs_sig(5),
      ADR5 => '1',
      O => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_2_Q_28
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi2 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y123",
      INIT => X"50FF0050"
    )
    port map (
      ADR1 => '1',
      ADR0 => Op_2_Rt_sig_4_0,
      ADR2 => OP_1_Rs_sig_4_0,
      ADR3 => Op_2_Rt_sig(5),
      ADR4 => OP_1_Rs_sig(5),
      O => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi2_32
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y123",
      INIT => X"9900009999000099"
    )
    port map (
      ADR2 => '1',
      ADR4 => Op_2_Rt_sig_2_0,
      ADR3 => OP_1_Rs_sig_2_0,
      ADR1 => Op_2_Rt_sig(3),
      ADR0 => OP_1_Rs_sig(3),
      ADR5 => '1',
      O => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_1_Q_37
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi1 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y123",
      INIT => X"2222BB22"
    )
    port map (
      ADR2 => '1',
      ADR4 => Op_2_Rt_sig_2_0,
      ADR3 => OP_1_Rs_sig_2_0,
      ADR1 => Op_2_Rt_sig(3),
      ADR0 => OP_1_Rs_sig(3),
      O => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi1_38
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y123",
      INIT => X"C00C3003C00C3003"
    )
    port map (
      ADR0 => '1',
      ADR3 => Op_2_Rt_sig_0_0,
      ADR2 => OP_1_Rs_sig_0_0,
      ADR4 => Op_2_Rt_sig(1),
      ADR1 => OP_1_Rs_sig(1),
      ADR5 => '1',
      O => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_0_Q_44
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi : X_LUT5
    generic map(
      LOC => "SLICE_X32Y123",
      INIT => X"00C0CCFC"
    )
    port map (
      ADR0 => '1',
      ADR3 => Op_2_Rt_sig_0_0,
      ADR2 => OP_1_Rs_sig_0_0,
      ADR4 => Op_2_Rt_sig(1),
      ADR1 => OP_1_Rs_sig(1),
      O => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi_48
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y124",
      INIT => X"9090090990900909"
    )
    port map (
      ADR3 => '1',
      ADR0 => Op_2_Rt_sig_14_0,
      ADR1 => OP_1_Rs_sig_14_0,
      ADR2 => Op_2_Rt_sig(15),
      ADR4 => OP_1_Rs_sig(15),
      ADR5 => '1',
      O => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_7_Q_55
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi7 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y124",
      INIT => X"4F4F0404"
    )
    port map (
      ADR3 => '1',
      ADR0 => Op_2_Rt_sig_14_0,
      ADR1 => OP_1_Rs_sig_14_0,
      ADR2 => Op_2_Rt_sig(15),
      ADR4 => OP_1_Rs_sig(15),
      O => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi7_57
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X32Y124"
    )
    port map (
      CI => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_3_Q_4250,
      CYINIT => '0',
      CO(3) => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_7_Q_4266,
      CO(2) => NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_7_CO_0_UNCONNECTED,
      DI(3) => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi7_57,
      DI(2) => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi6_58,
      DI(1) => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi5_63,
      DI(0) => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi4_67,
      O(3) => NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_7_O_3_UNCONNECTED,
      O(2) => NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_7_O_2_UNCONNECTED,
      O(1) => NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_7_O_1_UNCONNECTED,
      O(0) => NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_7_O_0_UNCONNECTED,
      S(3) => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_7_Q_55,
      S(2) => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_6_Q_60,
      S(1) => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_5_Q_74,
      S(0) => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_4_Q_66
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y124",
      INIT => X"8484212184842121"
    )
    port map (
      ADR3 => '1',
      ADR2 => Op_2_Rt_sig_12_0,
      ADR0 => OP_1_Rs_sig_12_0,
      ADR1 => Op_2_Rt_sig(13),
      ADR4 => OP_1_Rs_sig(13),
      ADR5 => '1',
      O => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_6_Q_60
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi6 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y124",
      INIT => X"3B3B0202"
    )
    port map (
      ADR3 => '1',
      ADR2 => Op_2_Rt_sig_12_0,
      ADR0 => OP_1_Rs_sig_12_0,
      ADR1 => Op_2_Rt_sig(13),
      ADR4 => OP_1_Rs_sig(13),
      O => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi6_58
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y124",
      INIT => X"9900009999000099"
    )
    port map (
      ADR2 => '1',
      ADR0 => Op_2_Rt_sig_10_0,
      ADR1 => OP_1_Rs_sig_10_0,
      ADR4 => Op_2_Rt_sig(11),
      ADR3 => OP_1_Rs_sig(11),
      ADR5 => '1',
      O => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_5_Q_74
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi5 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y124",
      INIT => X"4400FF44"
    )
    port map (
      ADR2 => '1',
      ADR0 => Op_2_Rt_sig_10_0,
      ADR1 => OP_1_Rs_sig_10_0,
      ADR4 => Op_2_Rt_sig(11),
      ADR3 => OP_1_Rs_sig(11),
      O => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi5_63
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y124",
      INIT => X"C0300C03C0300C03"
    )
    port map (
      ADR0 => '1',
      ADR4 => Op_2_Rt_sig_8_0,
      ADR2 => OP_1_Rs_sig_8_0,
      ADR3 => Op_2_Rt_sig(9),
      ADR1 => OP_1_Rs_sig(9),
      ADR5 => '1',
      O => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_4_Q_66
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi4 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y124",
      INIT => X"00CCC0FC"
    )
    port map (
      ADR0 => '1',
      ADR4 => Op_2_Rt_sig_8_0,
      ADR2 => OP_1_Rs_sig_8_0,
      ADR3 => Op_2_Rt_sig(9),
      ADR1 => OP_1_Rs_sig(9),
      O => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi4_67
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y125",
      INIT => X"C0300C03C0300C03"
    )
    port map (
      ADR0 => '1',
      ADR2 => Op_2_Rt_sig_22_0,
      ADR4 => OP_1_Rs_sig_22_0,
      ADR1 => Op_2_Rt_sig(23),
      ADR3 => OP_1_Rs_sig(23),
      ADR5 => '1',
      O => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_11_Q_85
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi11 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y125",
      INIT => X"3F033300"
    )
    port map (
      ADR0 => '1',
      ADR2 => Op_2_Rt_sig_22_0,
      ADR4 => OP_1_Rs_sig_22_0,
      ADR1 => Op_2_Rt_sig(23),
      ADR3 => OP_1_Rs_sig(23),
      O => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi11_87
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X32Y125"
    )
    port map (
      CI => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_7_Q_4266,
      CYINIT => '0',
      CO(3) => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_11_Q_4236,
      CO(2) => NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_11_CO_0_UNCONNECTED,
      DI(3) => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi11_87,
      DI(2) => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi10_88,
      DI(1) => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi9_93,
      DI(0) => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi8_97,
      O(3) => NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_11_O_3_UNCONNECTED,
      O(2) => NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_11_O_2_UNCONNECTED,
      O(1) => NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_11_O_1_UNCONNECTED,
      O(0) => NLW_Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_11_O_0_UNCONNECTED,
      S(3) => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_11_Q_85,
      S(2) => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_10_Q_90,
      S(1) => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_9_Q_104,
      S(0) => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_8_Q_96
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y125",
      INIT => X"C30000C3C30000C3"
    )
    port map (
      ADR0 => '1',
      ADR2 => Op_2_Rt_sig_20_0,
      ADR1 => OP_1_Rs_sig_20_0,
      ADR3 => Op_2_Rt_sig(21),
      ADR4 => OP_1_Rs_sig(21),
      ADR5 => '1',
      O => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_10_Q_90
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi10 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y125",
      INIT => X"0CFF000C"
    )
    port map (
      ADR0 => '1',
      ADR2 => Op_2_Rt_sig_20_0,
      ADR1 => OP_1_Rs_sig_20_0,
      ADR3 => Op_2_Rt_sig(21),
      ADR4 => OP_1_Rs_sig(21),
      O => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi10_88
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y125",
      INIT => X"A0500A05A0500A05"
    )
    port map (
      ADR1 => '1',
      ADR0 => Op_2_Rt_sig_18_0,
      ADR3 => OP_1_Rs_sig_18_0,
      ADR2 => Op_2_Rt_sig(19),
      ADR4 => OP_1_Rs_sig(19),
      ADR5 => '1',
      O => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_9_Q_104
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi9 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y125",
      INIT => X"5F0F0500"
    )
    port map (
      ADR1 => '1',
      ADR0 => Op_2_Rt_sig_18_0,
      ADR3 => OP_1_Rs_sig_18_0,
      ADR2 => Op_2_Rt_sig(19),
      ADR4 => OP_1_Rs_sig(19),
      O => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi9_93
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y125",
      INIT => X"8822441188224411"
    )
    port map (
      ADR2 => '1',
      ADR4 => Op_2_Rt_sig_16_0,
      ADR0 => OP_1_Rs_sig_16_0,
      ADR1 => Op_2_Rt_sig(17),
      ADR3 => OP_1_Rs_sig(17),
      ADR5 => '1',
      O => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lut_8_Q_96
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi8 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y125",
      INIT => X"3300BB22"
    )
    port map (
      ADR2 => '1',
      ADR4 => Op_2_Rt_sig_16_0,
      ADR0 => OP_1_Rs_sig_16_0,
      ADR1 => Op_2_Rt_sig(17),
      ADR3 => OP_1_Rs_sig(17),
      O => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_lutdi8_97
    );
  ALU_op_operand2_1_232 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y118",
      INIT => X"FEAE5E0EF4A45404"
    )
    port map (
      ADR2 => Op_2_ALU_sig_0_Q,
      ADR0 => Op_2_ALU_sig_1_Q,
      ADR4 => OP_1_Rs_sig(17),
      ADR3 => OP_1_Rs_sig(19),
      ADR1 => OP_1_Rs_sig_20_0,
      ADR5 => OP_1_Rs_sig_18_0,
      O => ALU_op_operand2_1_mmx_out5
    );
  ALU_op_Mmux_sig_output7212 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y118",
      INIT => X"BFB38F83BCB08C80"
    )
    port map (
      ADR1 => Op_2_ALU_sig_2_Q,
      ADR2 => Op_2_ALU_sig_3_Q,
      ADR0 => ALU_op_operand2_1_mmx_out1,
      ADR3 => ALU_op_operand2_1_mmx_out9,
      ADR5 => ALU_op_Mmux_sig_output721_4559,
      ADR4 => ALU_op_operand2_1_mmx_out5,
      O => ALU_op_Mmux_sig_output7211_4561
    );
  Mux_ALU_DMem_to_Reg_Mmux_output171 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y118",
      INIT => X"00FFF0F00000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => load_sig,
      ADR2 => output_24_OBUF_0,
      ADR5 => Data_MEM_n0012(24),
      ADR3 => store_sig,
      O => write_data_Reg_File_sig(24)
    );
  ALU_op_operand2_1_272 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y118",
      INIT => X"E4E4FF55E4E4AA00"
    )
    port map (
      ADR0 => Op_2_ALU_sig_0_Q,
      ADR4 => Op_2_ALU_sig_1_Q,
      ADR2 => OP_1_Rs_sig(21),
      ADR3 => OP_1_Rs_sig(23),
      ADR5 => OP_1_Rs_sig_24_0,
      ADR1 => OP_1_Rs_sig_22_0,
      O => ALU_op_operand2_1_mmx_out9
    );
  ALU_op_operand2_2_21_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y111",
      INIT => X"FFFFFFFFFB00FB00"
    )
    port map (
      ADR4 => '1',
      ADR1 => OP_1_Rs_sig_0_0,
      ADR2 => Op_2_ALU_sig_0_Q,
      ADR0 => Op_2_ALU_sig_1_Q,
      ADR3 => Op_2_ALU_sig_2_Q,
      ADR5 => Op_2_ALU_sig_3_Q,
      O => N140
    );
  Mux_ALU_DMem_to_Reg_Mmux_output41 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y114",
      INIT => X"22222222EE22EE22"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR1 => load_sig,
      ADR0 => output_12_OBUF_4430,
      ADR3 => Data_MEM_n0012(12),
      ADR5 => store_sig,
      O => write_data_Reg_File_sig(12)
    );
  ALU_op_Mmux_sig_output745 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y114",
      INIT => X"7250FAFA72505050"
    )
    port map (
      ADR0 => ALU_operation_sig(2),
      ADR4 => ALU_operation_sig(1),
      ADR5 => ALU_op_Mmux_sig_output742_4712,
      ADR3 => ALU_op_Mmux_sig_output741_4710,
      ADR1 => ALU_operation_sig(0),
      ADR2 => ALU_op_Mmux_sig_output743_4711,
      O => output_12_OBUF_4430
    );
  ALU_op_Mmux_sig_output7265 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y114",
      INIT => X"0000000501010101"
    )
    port map (
      ADR2 => Op_2_ALU_sig_3_Q,
      ADR0 => ALU_operation_sig(1),
      ADR5 => ALU_operation_sig(0),
      ADR1 => OP_1_Rs_sig(3),
      ADR4 => Op_2_ALU_sig_4_Q,
      ADR3 => ALU_op_operand2_2_mmx_out9,
      O => ALU_op_Mmux_sig_output7265_4596
    );
  Ins_MEM_Mram_instruction_memory121 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y114",
      INIT => X"040208140030000C"
    )
    port map (
      ADR3 => PC_output_pc(1),
      ADR4 => PC_output_pc(0),
      ADR2 => PC_output_pc(4),
      ADR1 => PC_output_pc(5),
      ADR5 => PC_output_pc(3),
      ADR0 => PC_output_pc(2),
      O => Instruction_12_OBUF_4210
    );
  ALU_op_Mmux_sig_output7253_ALU_op_Mmux_sig_output7253_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_31_OBUF_1297,
      O => output_31_OBUF_0
    );
  ALU_op_Mmux_sig_output7258 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y126"
    )
    port map (
      IA => N200,
      IB => N201,
      O => output_31_OBUF_1297,
      SEL => ALU_operation_sig(2)
    );
  ALU_op_Mmux_sig_output7258_F : X_LUT6
    generic map(
      LOC => "SLICE_X12Y126",
      INIT => X"FCFFC0FFFC00C000"
    )
    port map (
      ADR0 => '1',
      ADR3 => ALU_operation_sig(1),
      ADR1 => OP_1_Rs_sig(31),
      ADR4 => Op_2_ALU_sig_31_Q,
      ADR2 => ALU_operation_sig(0),
      ADR5 => ALU_op_Mmux_sig_output1_split_31_0,
      O => N200
    );
  ALU_op_Mmux_sig_output7258_G : X_LUT6
    generic map(
      LOC => "SLICE_X12Y126",
      INIT => X"33FF00CC33F300C0"
    )
    port map (
      ADR0 => '1',
      ADR1 => ALU_operation_sig(0),
      ADR3 => ALU_operation_sig(1),
      ADR2 => ALU_op_Mmux_sig_output7251_0,
      ADR5 => ALU_op_Mmux_sig_output7253_4740,
      ADR4 => ALU_op_Mmux_sig_output7254_4586,
      O => N201
    );
  ALU_op_Mmux_sig_output7254 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y126",
      INIT => X"0030003033220022"
    )
    port map (
      ADR1 => Op_2_ALU_sig_2_Q,
      ADR5 => Op_2_ALU_sig_3_Q,
      ADR3 => Op_2_ALU_sig_4_Q,
      ADR4 => ALU_op_operand2_1_mmx_out27,
      ADR0 => ALU_op_Mmux_sig_output7252_4581,
      ADR2 => ALU_op_operand2_1_mmx_out8,
      O => ALU_op_Mmux_sig_output7253_4740
    );
  Mux_ALU_DMem_to_Reg_Mmux_output181 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y120",
      INIT => X"30FC30FC30303030"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => load_sig,
      ADR2 => output_25_OBUF_4434,
      ADR5 => Data_MEM_n0012(25),
      ADR3 => store_sig,
      O => write_data_Reg_File_sig(25)
    );
  ALU_op_operand2_1_141 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y129",
      INIT => X"FA0AFA0ACFCFC0C0"
    )
    port map (
      ADR2 => Op_2_ALU_sig_0_Q,
      ADR5 => Op_2_ALU_sig_1_Q,
      ADR3 => OP_1_Rs_sig_6_0,
      ADR1 => OP_1_Rs_sig_8_0,
      ADR4 => OP_1_Rs_sig(9),
      ADR0 => OP_1_Rs_sig(7),
      O => ALU_op_operand2_1_mmx_out21
    );
  Mux_ALU_DMem_to_Reg_Mmux_output91 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y129",
      INIT => X"0FAF00A00FAF00A0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => load_sig,
      ADR4 => output_17_OBUF_4423,
      ADR0 => Data_MEM_n0012(17),
      ADR3 => store_sig,
      O => write_data_Reg_File_sig(17)
    );
  ALU_op_Mmux_sig_output795 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y129",
      INIT => X"FCFCFFAAFCFC5500"
    )
    port map (
      ADR4 => ALU_operation_sig(2),
      ADR2 => ALU_op_Mmux_sig_output791_4685,
      ADR1 => ALU_op_Mmux_sig_output792_4686,
      ADR0 => ALU_operation_sig(1),
      ADR5 => ALU_op_Mmux_sig_output793_0,
      ADR3 => ALU_op_Mmux_sig_output1_split_17_0,
      O => output_17_OBUF_4423
    );
  Mux_ALU_DMem_to_Reg_Mmux_output141 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y124",
      INIT => X"3F3F0C0C33330000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => load_sig,
      ADR4 => output_21_OBUF_4440,
      ADR5 => Data_MEM_n0012(21),
      ADR2 => store_sig,
      O => write_data_Reg_File_sig(21)
    );
  ALU_op_Mmux_sig_output7145 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y124",
      INIT => X"FAFACACAFFF0CFC0"
    )
    port map (
      ADR2 => ALU_operation_sig(2),
      ADR1 => ALU_op_Mmux_sig_output7141_4624,
      ADR4 => ALU_op_Mmux_sig_output7142_4629,
      ADR5 => ALU_operation_sig(1),
      ADR0 => ALU_op_Mmux_sig_output7143_0,
      ADR3 => ALU_op_Mmux_sig_output1_split_21_0,
      O => output_21_OBUF_4440
    );
  ALU_op_Mmux_sig_output7183 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y131",
      INIT => X"04540454FFFF0000"
    )
    port map (
      ADR5 => ALU_operation_sig(0),
      ADR0 => ALU_operation_sig(1),
      ADR2 => Op_2_ALU_sig_4_Q,
      ADR3 => ALU_op_operand2_3_mmx_out8,
      ADR1 => ALU_op_Mmux_sig_output718_4651,
      ADR4 => ALU_op_Mmux_sig_output7181_4650,
      O => ALU_op_Mmux_sig_output7182_4741
    );
  ALU_op_Mmux_sig_output7185 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y131",
      INIT => X"FF0FFA0AF505F000"
    )
    port map (
      ADR1 => '1',
      ADR2 => ALU_operation_sig(2),
      ADR5 => ALU_op_Mmux_sig_output7183_0,
      ADR0 => ALU_operation_sig(1),
      ADR4 => ALU_op_Mmux_sig_output1_split_25_0,
      ADR3 => ALU_op_Mmux_sig_output7182_4741,
      O => output_25_OBUF_4434
    );
  ALU_op_Mmux_sig_output7127 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y109",
      INIT => X"223322000A0F0A00"
    )
    port map (
      ADR1 => Instruction_1_OBUF_4358,
      ADR0 => OP_1_Rs_sig_2_0,
      ADR4 => OP_1_Rs_sig(1),
      ADR2 => Op_2_Rt_sig(1),
      ADR5 => Itype_sig,
      ADR3 => Op_2_ALU_sig_0_Q,
      O => ALU_op_Mmux_sig_output7126_4614
    );
  ALU_op_Mmux_sig_output7125 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y109",
      INIT => X"000000000000A0C0"
    )
    port map (
      ADR0 => OP_1_Rs_sig_0_0,
      ADR1 => OP_1_Rs_sig(1),
      ADR4 => ALU_operation_sig(1),
      ADR2 => ALU_operation_sig(0),
      ADR3 => Op_2_ALU_sig_0_Q,
      ADR5 => Op_2_ALU_sig_1_Q,
      O => ALU_op_Mmux_sig_output7124_4615
    );
  ALU_op_Mmux_sig_output7111 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y122",
      INIT => X"EE44EE44F5F5A0A0"
    )
    port map (
      ADR0 => Op_2_ALU_sig_2_Q,
      ADR5 => Op_2_ALU_sig_3_Q,
      ADR3 => ALU_op_operand2_1_mmx_out19,
      ADR2 => ALU_op_operand2_1_mmx_out27,
      ADR4 => ALU_op_operand2_1_mmx_out4,
      ADR1 => ALU_op_operand2_1_mmx_out23,
      O => ALU_op_Mmux_sig_output711_4738
    );
  ALU_op_Mmux_sig_output7112 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y122",
      INIT => X"000000A0003000A0"
    )
    port map (
      ADR2 => ALU_operation_sig(0),
      ADR3 => ALU_operation_sig(1),
      ADR4 => Op_2_ALU_sig_4_Q,
      ADR1 => ALU_op_operand2_2_mmx_out9,
      ADR5 => Op_2_ALU_sig_3_Q,
      ADR0 => ALU_op_Mmux_sig_output711_4738,
      O => ALU_op_Mmux_sig_output7111_4607
    );
  ALU_op_operand2_1_222 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y122",
      INIT => X"CFAFC0AFCFA0C0A0"
    )
    port map (
      ADR3 => Op_2_ALU_sig_0_Q,
      ADR2 => Op_2_ALU_sig_1_Q,
      ADR1 => OP_1_Rs_sig_16_0,
      ADR4 => OP_1_Rs_sig_18_0,
      ADR5 => OP_1_Rs_sig(19),
      ADR0 => OP_1_Rs_sig(17),
      O => ALU_op_operand2_1_mmx_out4
    );
  ALU_op_Mmux_sig_output7201 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y122",
      INIT => X"CCAACCAAF0FFF000"
    )
    port map (
      ADR3 => Op_2_ALU_sig_2_Q,
      ADR5 => Op_2_ALU_sig_3_Q,
      ADR1 => ALU_op_operand2_1_mmx_out27,
      ADR2 => ALU_op_operand2_1_mmx_out8,
      ADR4 => ALU_op_operand2_1_mmx_out13,
      ADR0 => ALU_op_operand2_1_mmx_out4,
      O => ALU_op_Mmux_sig_output720
    );
  ALU_op_operand2_2_21_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y110",
      INIT => X"FFEFFFEFFFFFFFFF"
    )
    port map (
      ADR4 => '1',
      ADR2 => OP_1_Rs_sig_0_0,
      ADR0 => Op_2_ALU_sig_0_Q,
      ADR3 => Op_2_ALU_sig_1_Q,
      ADR5 => Op_2_ALU_sig_2_Q,
      ADR1 => Op_2_ALU_sig_3_Q,
      O => N139
    );
  ALU_op_Mmux_sig_output7275_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y110",
      INIT => X"FFEEFCFCDDCCFCFC"
    )
    port map (
      ADR2 => OP_1_Rs_sig_4_0,
      ADR4 => ALU_operation_sig(0),
      ADR1 => Op_2_ALU_sig_4_Q,
      ADR0 => ALU_op_operand2_1_mmx_out15_0,
      ADR5 => N140,
      ADR3 => N139,
      O => N119
    );
  INV_Data_MEM_Mram_data_memory9CLK : X_INV
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => Data_MEM_n0012_8_INV_Data_MEM_Mram_data_memory9CLK
    );
  INV_Data_MEM_Mram_data_memory30CLK : X_INV
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => Data_MEM_n0012_8_INV_Data_MEM_Mram_data_memory30CLK
    );
  INV_Data_MEM_Mram_data_memory31CLK : X_INV
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => Data_MEM_n0012_8_INV_Data_MEM_Mram_data_memory31CLK
    );
  INV_Data_MEM_Mram_data_memory32CLK : X_INV
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => Data_MEM_n0012_8_INV_Data_MEM_Mram_data_memory32CLK
    );
  Data_MEM_Mram_data_memory9 : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X12Y116",
      INIT => X"0000000BB642C800"
    )
    port map (
      RADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory9_RADR0,
      RADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory9_RADR1,
      RADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory9_RADR2,
      RADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory9_RADR3,
      RADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory9_RADR4,
      RADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory9_RADR5,
      CLK => NlwBufferSignal_Data_MEM_Mram_data_memory9_CLK,
      I => NlwBufferSignal_Data_MEM_Mram_data_memory9_IN,
      O => Data_MEM_n0012(8),
      WADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory9_WADR0,
      WADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory9_WADR1,
      WADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory9_WADR2,
      WADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory9_WADR3,
      WADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory9_WADR4,
      WADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory9_WADR5,
      WE1 => '1',
      WE2 => '1',
      WE => NlwBufferSignal_Data_MEM_Mram_data_memory9_WE
    );
  Data_MEM_Mram_data_memory30 : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X12Y116",
      INIT => X"0000000DBDA6C000"
    )
    port map (
      RADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory30_RADR0,
      RADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory30_RADR1,
      RADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory30_RADR2,
      RADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory30_RADR3,
      RADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory30_RADR4,
      RADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory30_RADR5,
      CLK => NlwBufferSignal_Data_MEM_Mram_data_memory30_CLK,
      I => NlwBufferSignal_Data_MEM_Mram_data_memory30_IN,
      O => Data_MEM_n0012(29),
      WADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory30_WADR0,
      WADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory30_WADR1,
      WADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory30_WADR2,
      WADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory30_WADR3,
      WADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory30_WADR4,
      WADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory30_WADR5,
      WE1 => '1',
      WE2 => '1',
      WE => NlwBufferSignal_Data_MEM_Mram_data_memory30_WE
    );
  Data_MEM_Mram_data_memory31 : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X12Y116",
      INIT => X"0000000E52737000"
    )
    port map (
      RADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory31_RADR0,
      RADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory31_RADR1,
      RADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory31_RADR2,
      RADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory31_RADR3,
      RADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory31_RADR4,
      RADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory31_RADR5,
      CLK => NlwBufferSignal_Data_MEM_Mram_data_memory31_CLK,
      I => NlwBufferSignal_Data_MEM_Mram_data_memory31_IN,
      O => Data_MEM_n0012(30),
      WADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory31_WADR0,
      WADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory31_WADR1,
      WADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory31_WADR2,
      WADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory31_WADR3,
      WADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory31_WADR4,
      WADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory31_WADR5,
      WE1 => '1',
      WE2 => '1',
      WE => NlwBufferSignal_Data_MEM_Mram_data_memory31_WE
    );
  Data_MEM_Mram_data_memory32 : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X12Y116",
      INIT => X"000001048B120400"
    )
    port map (
      RADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory32_RADR0,
      RADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory32_RADR1,
      RADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory32_RADR2,
      RADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory32_RADR3,
      RADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory32_RADR4,
      RADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory32_RADR5,
      CLK => NlwBufferSignal_Data_MEM_Mram_data_memory32_CLK,
      I => NlwBufferSignal_Data_MEM_Mram_data_memory32_IN,
      O => Data_MEM_n0012(31),
      WADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory32_WADR0,
      WADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory32_WADR1,
      WADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory32_WADR2,
      WADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory32_WADR3,
      WADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory32_WADR4,
      WADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory32_WADR5,
      WE1 => '1',
      WE2 => '1',
      WE => NlwBufferSignal_Data_MEM_Mram_data_memory32_WE
    );
  output_15_OBUF_output_15_OBUF_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(15),
      O => write_data_Reg_File_sig_15_0
    );
  ALU_op_Mmux_sig_output775 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y123",
      INIT => X"FFFFFF00FFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => ALU_op_Mmux_sig_output771_4699,
      ADR3 => ALU_op_Mmux_sig_output773_4739,
      ADR5 => '1',
      O => output_15_OBUF_4425
    );
  Mux_ALU_DMem_to_Reg_Mmux_output71 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y123",
      INIT => X"3B3B3B08"
    )
    port map (
      ADR1 => load_sig,
      ADR0 => Data_MEM_n0012(15),
      ADR2 => store_sig,
      ADR4 => ALU_op_Mmux_sig_output771_4699,
      ADR3 => ALU_op_Mmux_sig_output773_4739,
      O => write_data_Reg_File_sig(15)
    );
  ALU_op_Mmux_sig_output774 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y123",
      INIT => X"04000F0F04000000"
    )
    port map (
      ADR2 => ALU_operation_sig(1),
      ADR4 => ALU_operation_sig(2),
      ADR1 => ALU_op_Mmux_sig_output772_4700,
      ADR0 => Op_2_ALU_sig_4_Q,
      ADR3 => ALU_operation_sig(0),
      ADR5 => ALU_op_Mmux_sig_output1_split_15_0,
      O => ALU_op_Mmux_sig_output773_4739
    );
  N123_N123_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig(0),
      O => Write_Reg_Address_sig_0_0
    );
  ALU_op_Mmux_sig_output7266_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y113",
      INIT => X"0005555F5055F5FF"
    )
    port map (
      ADR1 => '1',
      ADR5 => Instruction_3_OBUF_4365,
      ADR3 => Op_2_Rt_sig(3),
      ADR0 => OP_1_Rs_sig(3),
      ADR2 => Itype_sig,
      ADR4 => ALU_operation_sig(0),
      O => N123
    );
  Mux_ALU_Mmux_output31 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y113",
      INIT => X"FA50FA50FA50FA50"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => Itype_sig,
      ADR3 => Instruction_11_OBUF_4342,
      ADR2 => Op_2_Rt_sig(11),
      ADR5 => '1',
      O => Op_2_ALU_sig_11_Q
    );
  Mux_Rd_Rt_Mmux_output11 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y113",
      INIT => X"FFAA5500"
    )
    port map (
      ADR2 => '1',
      ADR4 => Instruction_16_OBUF_4341,
      ADR0 => Itype_sig,
      ADR3 => Instruction_11_OBUF_4342,
      ADR1 => '1',
      O => Write_Reg_Address_sig(0)
    );
  ALU_op_Mmux_sig_output716_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y113",
      INIT => X"FFFFFFFFFFFFD8FF"
    )
    port map (
      ADR1 => Instruction_3_OBUF_4365,
      ADR2 => Op_2_Rt_sig(3),
      ADR0 => Itype_sig,
      ADR3 => ALU_operation_sig(0),
      ADR5 => Op_2_ALU_sig_4_Q,
      ADR4 => ALU_op_operand2_2_mmx_out8,
      O => N148
    );
  ALU_op_Mmux_sig_output7281 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y112",
      INIT => X"FFB8B80000000000"
    )
    port map (
      ADR0 => Instruction_5_OBUF_4369,
      ADR2 => Op_2_Rt_sig(5),
      ADR3 => OP_1_Rs_sig(5),
      ADR1 => Itype_sig,
      ADR5 => ALU_operation_sig(1),
      ADR4 => ALU_operation_sig(0),
      O => ALU_op_Mmux_sig_output728
    );
  ALU_op_operand2_2_31_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y112",
      INIT => X"FFFFFFFFBB00AF00"
    )
    port map (
      ADR1 => OP_1_Rs_sig_0_0,
      ADR2 => OP_1_Rs_sig(1),
      ADR4 => Op_2_ALU_sig_0_Q,
      ADR0 => Op_2_ALU_sig_1_Q,
      ADR5 => Op_2_ALU_sig_4_Q,
      ADR3 => Op_2_ALU_sig_2_Q,
      O => N186
    );
  ALU_op_Mmux_sig_output7286_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y112",
      INIT => X"FEDCFFFFFEDC0000"
    )
    port map (
      ADR5 => N184,
      ADR4 => ALU_operation_sig(0),
      ADR1 => Op_2_ALU_sig_3_Q,
      ADR0 => ALU_op_operand2_1_mmx_out17_0,
      ADR2 => N185,
      ADR3 => N186,
      O => N108
    );
  Ins_MEM_Mram_instruction_memory141 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y109",
      INIT => X"000A090A7018C028"
    )
    port map (
      ADR2 => PC_output_pc(4),
      ADR5 => PC_output_pc(5),
      ADR1 => PC_output_pc(1),
      ADR4 => PC_output_pc(0),
      ADR0 => PC_output_pc(3),
      ADR3 => PC_output_pc(2),
      O => Instruction_14_OBUF_4216
    );
  ALU_op_operand2_1_181 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y132",
      INIT => X"AFA0AFA0CFCFC0C0"
    )
    port map (
      ADR5 => Op_2_ALU_sig_0_Q,
      ADR2 => Op_2_ALU_sig_1_Q,
      ADR0 => OP_1_Rs_sig_10_0,
      ADR3 => OP_1_Rs_sig_12_0,
      ADR4 => OP_1_Rs_sig(13),
      ADR1 => OP_1_Rs_sig(11),
      O => ALU_op_operand2_1_mmx_out25
    );
  ALU_op_operand2_1_241 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y132",
      INIT => X"CCFFF0AACC00F0AA"
    )
    port map (
      ADR3 => Op_2_ALU_sig_0_Q,
      ADR4 => Op_2_ALU_sig_1_Q,
      ADR1 => OP_1_Rs_sig_18_0,
      ADR2 => OP_1_Rs_sig_20_0,
      ADR0 => OP_1_Rs_sig(21),
      ADR5 => OP_1_Rs_sig(19),
      O => ALU_op_operand2_1_mmx_out6
    );
  ALU_op_Mmux_sig_output7222 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y132",
      INIT => X"EEEEF3C02222F3C0"
    )
    port map (
      ADR1 => Op_2_ALU_sig_2_Q,
      ADR4 => Op_2_ALU_sig_3_Q,
      ADR5 => ALU_op_operand2_1_mmx_out2,
      ADR2 => ALU_op_operand2_1_mmx_out10,
      ADR3 => ALU_op_Mmux_sig_output722_4679,
      ADR0 => ALU_op_operand2_1_mmx_out6,
      O => ALU_op_Mmux_sig_output7221_4564
    );
  ALU_op_Mmux_sig_output773 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y122",
      INIT => X"FE32FE32DC10DC10"
    )
    port map (
      ADR4 => '1',
      ADR1 => Op_2_ALU_sig_3_Q,
      ADR5 => ALU_op_operand2_1_mmx_out23,
      ADR0 => Op_2_ALU_sig_2_Q,
      ADR2 => ALU_op_operand2_1_mmx_out27,
      ADR3 => ALU_op_operand2_2_mmx_out13,
      O => ALU_op_Mmux_sig_output772_4700
    );
  ALU_op_operand2_1_201 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y122",
      INIT => X"EEEE2222F3C0F3C0"
    )
    port map (
      ADR1 => Op_2_ALU_sig_0_Q,
      ADR5 => Op_2_ALU_sig_1_Q,
      ADR4 => OP_1_Rs_sig_12_0,
      ADR2 => OP_1_Rs_sig_14_0,
      ADR3 => OP_1_Rs_sig(15),
      ADR0 => OP_1_Rs_sig(13),
      O => ALU_op_operand2_1_mmx_out27
    );
  ALU_op_Mmux_sig_output7161 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y122",
      INIT => X"FB3BF838CB0BC808"
    )
    port map (
      ADR2 => Op_2_ALU_sig_2_Q,
      ADR1 => Op_2_ALU_sig_3_Q,
      ADR3 => ALU_op_operand2_1_mmx_out23,
      ADR5 => ALU_op_operand2_1_mmx_out4,
      ADR4 => ALU_op_operand2_1_mmx_out8,
      ADR0 => ALU_op_operand2_1_mmx_out27,
      O => ALU_op_Mmux_sig_output716
    );
  ALU_op_Mmux_sig_output7131 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y116",
      INIT => X"FF33CC00E2E2E2E2"
    )
    port map (
      ADR1 => Op_2_ALU_sig_2_Q,
      ADR5 => Op_2_ALU_sig_3_Q,
      ADR3 => ALU_op_operand2_1_mmx_out20,
      ADR2 => ALU_op_operand2_1_mmx_out1,
      ADR0 => ALU_op_operand2_1_mmx_out5,
      ADR4 => ALU_op_operand2_1_mmx_out24,
      O => ALU_op_Mmux_sig_output713_4734
    );
  ALU_op_Mmux_sig_output7132 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y116",
      INIT => X"1100000015040000"
    )
    port map (
      ADR4 => ALU_operation_sig(0),
      ADR0 => ALU_operation_sig(1),
      ADR1 => Op_2_ALU_sig_4_Q,
      ADR2 => ALU_op_operand2_2_mmx_out10,
      ADR5 => Op_2_ALU_sig_3_Q,
      ADR3 => ALU_op_Mmux_sig_output713_4734,
      O => ALU_op_Mmux_sig_output7131_4616
    );
  Op_2_ALU_sig_8_Op_2_ALU_sig_8_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_ALU_sig_7_Q,
      O => Op_2_ALU_sig_7_0
    );
  Mux_ALU_Mmux_output311 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y123",
      INIT => X"DD88DD88DD88DD88"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR0 => Itype_sig,
      ADR1 => Instruction_10_OBUF_4300,
      ADR3 => Op_2_Rt_sig_8_0,
      ADR5 => '1',
      O => Op_2_ALU_sig_8_Q
    );
  Mux_ALU_Mmux_output301 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y123",
      INIT => X"DDDD8888"
    )
    port map (
      ADR2 => '1',
      ADR4 => Op_2_Rt_sig(7),
      ADR0 => Itype_sig,
      ADR1 => Instruction_10_OBUF_4300,
      ADR3 => '1',
      O => Op_2_ALU_sig_7_Q
    );
  ALU_op_operand2_1_262 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y124",
      INIT => X"AAAAFF00F0F0CCCC"
    )
    port map (
      ADR5 => Op_2_ALU_sig_0_Q,
      ADR4 => Op_2_ALU_sig_1_Q,
      ADR0 => OP_1_Rs_sig_20_0,
      ADR3 => OP_1_Rs_sig_22_0,
      ADR1 => OP_1_Rs_sig(23),
      ADR2 => OP_1_Rs_sig(21),
      O => ALU_op_operand2_1_mmx_out8
    );
  ALU_op_Mmux_sig_output791 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y129",
      INIT => X"FDECB9A875643120"
    )
    port map (
      ADR1 => Op_2_ALU_sig_2_Q,
      ADR0 => Op_2_ALU_sig_3_Q,
      ADR5 => ALU_op_operand2_1_mmx_out17_0,
      ADR4 => ALU_op_operand2_1_mmx_out25,
      ADR3 => ALU_op_operand2_1_mmx_out2,
      ADR2 => ALU_op_operand2_1_mmx_out21,
      O => ALU_op_Mmux_sig_output79
    );
  ALU_op_Mmux_sig_output792 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y129",
      INIT => X"0300000013001000"
    )
    port map (
      ADR3 => ALU_operation_sig(0),
      ADR1 => ALU_operation_sig(1),
      ADR2 => Op_2_ALU_sig_4_Q,
      ADR5 => ALU_op_operand2_2_mmx_out21,
      ADR0 => Op_2_ALU_sig_3_Q,
      ADR4 => ALU_op_Mmux_sig_output79,
      O => ALU_op_Mmux_sig_output791_4685
    );
  ALU_op_operand2_2_142 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y129",
      INIT => X"FFCFFFCFFFCCFFFF"
    )
    port map (
      ADR0 => '1',
      ADR3 => Op_2_ALU_sig_1_Q,
      ADR1 => Op_2_ALU_sig_2_Q,
      ADR5 => Op_2_ALU_sig_0_Q,
      ADR4 => OP_1_Rs_sig(1),
      ADR2 => OP_1_Rs_sig_0_0,
      O => ALU_op_operand2_2_mmx_out21
    );
  ALU_op_operand2_3_141 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y129",
      INIT => X"A0A3ACAFA0A3ACAF"
    )
    port map (
      ADR5 => '1',
      ADR2 => Op_2_ALU_sig_3_Q,
      ADR4 => ALU_op_operand2_1_mmx_out17_0,
      ADR1 => Op_2_ALU_sig_2_Q,
      ADR3 => ALU_op_operand2_1_mmx_out21,
      ADR0 => ALU_op_operand2_2_mmx_out21,
      O => ALU_op_operand2_3_mmx_out8
    );
  ALU_op_Mmux_sig_output711 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y115",
      INIT => X"00FB00EA00A20080"
    )
    port map (
      ADR2 => Instruction_0_OBUF_4355,
      ADR0 => OP_1_Rs_sig_0_0,
      ADR4 => Op_2_Rt_sig_0_0,
      ADR1 => Itype_sig,
      ADR3 => ALU_operation_sig(2),
      ADR5 => ALU_operation_sig(0),
      O => ALU_op_Mmux_sig_output71
    );
  Mux_ALU_DMem_to_Reg_Mmux_output251 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y115",
      INIT => X"0ACA0ACA0ACA0ACA"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR2 => load_sig,
      ADR0 => output_31_OBUF_0,
      ADR1 => Data_MEM_n0012(31),
      ADR3 => store_sig,
      O => write_data_Reg_File_sig(31)
    );
  ALU_op_operand2_2_21 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y114",
      INIT => X"F0F0FFFFB0B0BFBF"
    )
    port map (
      ADR3 => '1',
      ADR2 => Op_2_ALU_sig_2_Q,
      ADR0 => Op_2_ALU_sig_1_Q,
      ADR5 => Op_2_ALU_sig_0_Q,
      ADR1 => OP_1_Rs_sig_0_0,
      ADR4 => ALU_op_operand2_1_mmx_out15_0,
      O => ALU_op_operand2_2_mmx_out10
    );
  ALU_op_Mmux_sig_output754 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y123",
      INIT => X"EEE2EEE2E222E222"
    )
    port map (
      ADR4 => '1',
      ADR1 => ALU_operation_sig(1),
      ADR5 => OP_1_Rs_sig(13),
      ADR2 => Op_2_ALU_sig_13_Q,
      ADR3 => ALU_operation_sig(0),
      ADR0 => ALU_op_Mmux_sig_output1_split_13_0,
      O => ALU_op_Mmux_sig_output753_4692
    );
  Ins_MEM_Mram_instruction_memory1111 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y107",
      INIT => X"000C248010077C00"
    )
    port map (
      ADR3 => PC_output_pc(0),
      ADR4 => PC_output_pc(5),
      ADR2 => PC_output_pc(4),
      ADR0 => PC_output_pc(2),
      ADR1 => PC_output_pc(3),
      ADR5 => PC_output_pc(1),
      O => Instruction_11_OBUF_4342
    );
  ALU_op_Mmux_sig_output7275_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y116",
      INIT => X"000C003F0CFF3FFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => Instruction_4_OBUF_4367,
      ADR5 => OP_1_Rs_sig_4_0,
      ADR4 => Op_2_Rt_sig_4_0,
      ADR1 => Itype_sig,
      ADR3 => ALU_operation_sig(0),
      O => N120
    );
  Mux_ALU_DMem_to_Reg_Mmux_output51 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y124",
      INIT => X"55F500A055F500A0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR0 => load_sig,
      ADR4 => output_13_OBUF_4429,
      ADR2 => Data_MEM_n0012(13),
      ADR3 => store_sig,
      O => write_data_Reg_File_sig(13)
    );
  ALU_op_Mmux_sig_output755 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y124",
      INIT => X"77225500F5A0F5A0"
    )
    port map (
      ADR0 => ALU_operation_sig(2),
      ADR5 => ALU_operation_sig(1),
      ADR2 => ALU_op_Mmux_sig_output752_4693,
      ADR4 => ALU_op_Mmux_sig_output751_0,
      ADR1 => ALU_operation_sig(0),
      ADR3 => ALU_op_Mmux_sig_output753_4692,
      O => output_13_OBUF_4429
    );
  ALU_op_Mmux_sig_output7304 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y125",
      INIT => X"FBB3C880FBB3C880"
    )
    port map (
      ADR5 => '1',
      ADR1 => ALU_operation_sig(1),
      ADR2 => OP_1_Rs_sig(7),
      ADR0 => Op_2_ALU_sig_7_0,
      ADR3 => ALU_operation_sig(0),
      ADR4 => ALU_op_Mmux_sig_output1_split_7_0,
      O => ALU_op_Mmux_sig_output7303_4660
    );
  ALU_op_operand2_1_111 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y112",
      INIT => X"BF8FB383BC8CB080"
    )
    port map (
      ADR1 => Op_2_ALU_sig_0_Q,
      ADR2 => Op_2_ALU_sig_1_Q,
      ADR0 => OP_1_Rs_sig_4_0,
      ADR4 => OP_1_Rs_sig_6_0,
      ADR5 => OP_1_Rs_sig(7),
      ADR3 => OP_1_Rs_sig(5),
      O => ALU_op_operand2_1_mmx_out19
    );
  Mux_ALU_DMem_to_Reg_Mmux_output261 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y114",
      INIT => X"0ACC0ACC0ACC0ACC"
    )
    port map (
      ADR4 => '1',
      ADR5 => '1',
      ADR3 => load_sig,
      ADR1 => output_3_OBUF_4459,
      ADR0 => Data_MEM_n0012(3),
      ADR2 => store_sig,
      O => write_data_Reg_File_sig(3)
    );
  Op_2_ALU_sig_29_Op_2_ALU_sig_29_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output7222_927,
      O => ALU_op_Mmux_sig_output7222_0
    );
  Mux_ALU_Mmux_output221 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y126",
      INIT => X"DD88DD88DD88DD88"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR0 => Itype_sig,
      ADR1 => Instruction_10_OBUF_4300,
      ADR3 => Op_2_Rt_sig(29),
      ADR5 => '1',
      O => Op_2_ALU_sig_29_Q
    );
  ALU_op_Mmux_sig_output7223 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y126",
      INIT => X"00002277"
    )
    port map (
      ADR2 => '1',
      ADR4 => OP_1_Rs_sig(29),
      ADR0 => Itype_sig,
      ADR1 => Instruction_10_OBUF_4300,
      ADR3 => Op_2_Rt_sig(29),
      O => ALU_op_Mmux_sig_output7222_927
    );
  ALU_op_operand2_3_51 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y126",
      INIT => X"FF440044FF770077"
    )
    port map (
      ADR2 => '1',
      ADR3 => Op_2_ALU_sig_3_Q,
      ADR0 => ALU_op_operand2_1_mmx_out21,
      ADR1 => Op_2_ALU_sig_2_Q,
      ADR5 => ALU_op_operand2_1_mmx_out25,
      ADR4 => ALU_op_operand2_2_mmx_out11,
      O => ALU_op_operand2_3_mmx_out13
    );
  ALU_op_Mmux_sig_output753 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y126",
      INIT => X"0055030300550303"
    )
    port map (
      ADR5 => '1',
      ADR4 => ALU_operation_sig(0),
      ADR2 => Op_2_ALU_sig_13_Q,
      ADR1 => OP_1_Rs_sig(13),
      ADR3 => Op_2_ALU_sig_4_Q,
      ADR0 => ALU_op_operand2_3_mmx_out13,
      O => ALU_op_Mmux_sig_output752_4693
    );
  Mux_ALU_DMem_to_Reg_Mmux_output231 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y113",
      INIT => X"2222EE222222EE22"
    )
    port map (
      ADR2 => '1',
      ADR5 => '1',
      ADR1 => load_sig,
      ADR0 => output_2_OBUF_4458,
      ADR3 => Data_MEM_n0012(2),
      ADR4 => store_sig,
      O => write_data_Reg_File_sig(2)
    );
  ALU_op_Mmux_sig_output7171_ALU_op_Mmux_sig_output7171_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_24_OBUF_1019,
      O => output_24_OBUF_0
    );
  ALU_op_Mmux_sig_output7175 : X_MUX2
    generic map(
      LOC => "SLICE_X13Y118"
    )
    port map (
      IA => N198,
      IB => N199,
      O => output_24_OBUF_1019,
      SEL => ALU_operation_sig(2)
    );
  ALU_op_Mmux_sig_output7175_F : X_LUT6
    generic map(
      LOC => "SLICE_X13Y118",
      INIT => X"FFF5F555AAA0A000"
    )
    port map (
      ADR1 => '1',
      ADR0 => ALU_operation_sig(1),
      ADR2 => Op_2_ALU_sig_24_Q,
      ADR4 => ALU_operation_sig(0),
      ADR3 => OP_1_Rs_sig_24_0,
      ADR5 => ALU_op_Mmux_sig_output1_split_24_0,
      O => N198
    );
  ALU_op_Mmux_sig_output7175_G : X_LUT6
    generic map(
      LOC => "SLICE_X13Y118",
      INIT => X"15FF150004FF0400"
    )
    port map (
      ADR3 => ALU_operation_sig(0),
      ADR0 => ALU_operation_sig(1),
      ADR1 => Op_2_ALU_sig_4_Q,
      ADR2 => ALU_op_operand2_3_mmx_out7,
      ADR5 => ALU_op_Mmux_sig_output7171_4735,
      ADR4 => ALU_op_Mmux_sig_output717_4646,
      O => N199
    );
  ALU_op_Mmux_sig_output7172 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y118",
      INIT => X"FFD8AAD855D800D8"
    )
    port map (
      ADR0 => Op_2_ALU_sig_2_Q,
      ADR3 => Op_2_ALU_sig_3_Q,
      ADR5 => ALU_op_operand2_1_mmx_out24,
      ADR1 => ALU_op_operand2_1_mmx_out5,
      ADR2 => ALU_op_operand2_1_mmx_out9,
      ADR4 => ALU_op_operand2_1_mmx_out1,
      O => ALU_op_Mmux_sig_output7171_4735
    );
  ALU_op_operand2_1_mmx_out23_ALU_op_operand2_1_mmx_out23_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output7251,
      O => ALU_op_Mmux_sig_output7251_0
    );
  ALU_op_Mmux_sig_output7252 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y122"
    )
    port map (
      IA => N208,
      IB => N209,
      O => ALU_op_Mmux_sig_output7251,
      SEL => Op_2_ALU_sig_3_Q
    );
  ALU_op_Mmux_sig_output7252_F : X_LUT6
    generic map(
      LOC => "SLICE_X10Y122",
      INIT => X"FCFA000030500000"
    )
    port map (
      ADR4 => Op_2_ALU_sig_2_Q,
      ADR3 => Itype_sig,
      ADR1 => Instruction_4_OBUF_4367,
      ADR2 => ALU_op_operand2_1_mmx_out13,
      ADR5 => ALU_op_operand2_1_mmx_out23,
      ADR0 => Op_2_Rt_sig_4_0,
      O => N208
    );
  ALU_op_Mmux_sig_output7252_G : X_LUT6
    generic map(
      LOC => "SLICE_X10Y122",
      INIT => X"CDFDC808C808C808"
    )
    port map (
      ADR2 => Itype_sig,
      ADR3 => Instruction_4_OBUF_4367,
      ADR0 => Op_2_Rt_sig_4_0,
      ADR5 => ALU_op_operand2_1_mmx_out4,
      ADR4 => Op_2_ALU_sig_2_Q,
      ADR1 => ALU_op_operand2_2_mmx_out13,
      O => N209
    );
  ALU_op_operand2_1_162 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y122",
      INIT => X"FAFCFA0C0AFC0A0C"
    )
    port map (
      ADR3 => Op_2_ALU_sig_0_Q,
      ADR2 => Op_2_ALU_sig_1_Q,
      ADR5 => OP_1_Rs_sig_8_0,
      ADR0 => OP_1_Rs_sig_10_0,
      ADR1 => OP_1_Rs_sig(11),
      ADR4 => OP_1_Rs_sig(9),
      O => ALU_op_operand2_1_mmx_out23
    );
  Mux_ALU_DMem_to_Reg_Mmux_output161 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y117",
      INIT => X"0F0FCFCF0000C0C0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => load_sig,
      ADR5 => output_23_OBUF_4438,
      ADR1 => Data_MEM_n0012(23),
      ADR4 => store_sig,
      O => write_data_Reg_File_sig(23)
    );
  ALU_op_operand2_2_51 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y121",
      INIT => X"E2E2FF33E2E2CC00"
    )
    port map (
      ADR4 => Op_2_ALU_sig_0_Q,
      ADR1 => Op_2_ALU_sig_1_Q,
      ADR2 => OP_1_Rs_sig_0_0,
      ADR0 => OP_1_Rs_sig_2_0,
      ADR5 => OP_1_Rs_sig(3),
      ADR3 => OP_1_Rs_sig(1),
      O => ALU_op_operand2_2_5
    );
  ALU_op_operand2_3_131 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y113",
      INIT => X"F5F0F5FF0500050F"
    )
    port map (
      ADR1 => '1',
      ADR2 => Op_2_ALU_sig_3_Q,
      ADR0 => ALU_op_operand2_1_mmx_out15_0,
      ADR3 => Op_2_ALU_sig_2_Q,
      ADR4 => ALU_op_operand2_1_mmx_out20,
      ADR5 => ALU_op_operand2_2_mmx_out8,
      O => ALU_op_operand2_3_mmx_out7
    );
  ALU_op_operand2_1_131 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y113",
      INIT => X"FF33B8B8CC00B8B8"
    )
    port map (
      ADR1 => Op_2_ALU_sig_0_Q,
      ADR4 => Op_2_ALU_sig_1_Q,
      ADR3 => OP_1_Rs_sig(5),
      ADR0 => OP_1_Rs_sig(7),
      ADR2 => OP_1_Rs_sig_8_0,
      ADR5 => OP_1_Rs_sig_6_0,
      O => ALU_op_operand2_1_mmx_out20
    );
  INV_Data_MEM_Mram_data_memory22CLK : X_INV
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => Data_MEM_n0012_21_INV_Data_MEM_Mram_data_memory22CLK
    );
  INV_Data_MEM_Mram_data_memory23CLK : X_INV
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => Data_MEM_n0012_21_INV_Data_MEM_Mram_data_memory23CLK
    );
  INV_Data_MEM_Mram_data_memory24CLK : X_INV
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => Data_MEM_n0012_21_INV_Data_MEM_Mram_data_memory24CLK
    );
  INV_Data_MEM_Mram_data_memory25CLK : X_INV
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => Data_MEM_n0012_21_INV_Data_MEM_Mram_data_memory25CLK
    );
  Data_MEM_Mram_data_memory22 : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X12Y115",
      INIT => X"00000100587F5C00"
    )
    port map (
      RADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory22_RADR0,
      RADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory22_RADR1,
      RADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory22_RADR2,
      RADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory22_RADR3,
      RADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory22_RADR4,
      RADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory22_RADR5,
      CLK => NlwBufferSignal_Data_MEM_Mram_data_memory22_CLK,
      I => NlwBufferSignal_Data_MEM_Mram_data_memory22_IN,
      O => Data_MEM_n0012(21),
      WADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory22_WADR0,
      WADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory22_WADR1,
      WADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory22_WADR2,
      WADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory22_WADR3,
      WADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory22_WADR4,
      WADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory22_WADR5,
      WE1 => '1',
      WE2 => '1',
      WE => NlwBufferSignal_Data_MEM_Mram_data_memory22_WE
    );
  Data_MEM_Mram_data_memory23 : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X12Y115",
      INIT => X"000003050E40D000"
    )
    port map (
      RADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory23_RADR0,
      RADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory23_RADR1,
      RADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory23_RADR2,
      RADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory23_RADR3,
      RADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory23_RADR4,
      RADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory23_RADR5,
      CLK => NlwBufferSignal_Data_MEM_Mram_data_memory23_CLK,
      I => NlwBufferSignal_Data_MEM_Mram_data_memory23_IN,
      O => Data_MEM_n0012(22),
      WADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory23_WADR0,
      WADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory23_WADR1,
      WADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory23_WADR2,
      WADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory23_WADR3,
      WADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory23_WADR4,
      WADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory23_WADR5,
      WE1 => '1',
      WE2 => '1',
      WE => NlwBufferSignal_Data_MEM_Mram_data_memory23_WE
    );
  Data_MEM_Mram_data_memory24 : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X12Y115",
      INIT => X"000001055F885400"
    )
    port map (
      RADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory24_RADR0,
      RADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory24_RADR1,
      RADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory24_RADR2,
      RADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory24_RADR3,
      RADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory24_RADR4,
      RADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory24_RADR5,
      CLK => NlwBufferSignal_Data_MEM_Mram_data_memory24_CLK,
      I => NlwBufferSignal_Data_MEM_Mram_data_memory24_IN,
      O => Data_MEM_n0012(23),
      WADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory24_WADR0,
      WADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory24_WADR1,
      WADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory24_WADR2,
      WADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory24_WADR3,
      WADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory24_WADR4,
      WADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory24_WADR5,
      WE1 => '1',
      WE2 => '1',
      WE => NlwBufferSignal_Data_MEM_Mram_data_memory24_WE
    );
  Data_MEM_Mram_data_memory25 : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X12Y115",
      INIT => X"0000010A79ED0400"
    )
    port map (
      RADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory25_RADR0,
      RADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory25_RADR1,
      RADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory25_RADR2,
      RADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory25_RADR3,
      RADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory25_RADR4,
      RADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory25_RADR5,
      CLK => NlwBufferSignal_Data_MEM_Mram_data_memory25_CLK,
      I => NlwBufferSignal_Data_MEM_Mram_data_memory25_IN,
      O => Data_MEM_n0012(24),
      WADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory25_WADR0,
      WADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory25_WADR1,
      WADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory25_WADR2,
      WADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory25_WADR3,
      WADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory25_WADR4,
      WADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory25_WADR5,
      WE1 => '1',
      WE2 => '1',
      WE => NlwBufferSignal_Data_MEM_Mram_data_memory25_WE
    );
  INV_Data_MEM_Mram_data_memory1CLK : X_INV
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => Data_MEM_n0012_0_INV_Data_MEM_Mram_data_memory1CLK
    );
  INV_Data_MEM_Mram_data_memory2CLK : X_INV
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => Data_MEM_n0012_0_INV_Data_MEM_Mram_data_memory2CLK
    );
  INV_Data_MEM_Mram_data_memory3CLK : X_INV
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => Data_MEM_n0012_0_INV_Data_MEM_Mram_data_memory3CLK
    );
  INV_Data_MEM_Mram_data_memory4CLK : X_INV
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => Data_MEM_n0012_0_INV_Data_MEM_Mram_data_memory4CLK
    );
  Data_MEM_Mram_data_memory1 : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X12Y114",
      INIT => X"00000104A9FCB800"
    )
    port map (
      RADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory1_RADR0,
      RADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory1_RADR1,
      RADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory1_RADR2,
      RADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory1_RADR3,
      RADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory1_RADR4,
      RADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory1_RADR5,
      CLK => NlwBufferSignal_Data_MEM_Mram_data_memory1_CLK,
      I => NlwBufferSignal_Data_MEM_Mram_data_memory1_IN,
      O => Data_MEM_n0012(0),
      WADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory1_WADR0,
      WADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory1_WADR1,
      WADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory1_WADR2,
      WADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory1_WADR3,
      WADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory1_WADR4,
      WADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory1_WADR5,
      WE1 => '1',
      WE2 => '1',
      WE => NlwBufferSignal_Data_MEM_Mram_data_memory1_WE
    );
  Data_MEM_Mram_data_memory2 : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X12Y114",
      INIT => X"00000301E612C800"
    )
    port map (
      RADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory2_RADR0,
      RADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory2_RADR1,
      RADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory2_RADR2,
      RADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory2_RADR3,
      RADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory2_RADR4,
      RADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory2_RADR5,
      CLK => NlwBufferSignal_Data_MEM_Mram_data_memory2_CLK,
      I => NlwBufferSignal_Data_MEM_Mram_data_memory2_IN,
      O => Data_MEM_n0012(1),
      WADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory2_WADR0,
      WADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory2_WADR1,
      WADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory2_WADR2,
      WADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory2_WADR3,
      WADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory2_WADR4,
      WADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory2_WADR5,
      WE1 => '1',
      WE2 => '1',
      WE => NlwBufferSignal_Data_MEM_Mram_data_memory2_WE
    );
  Data_MEM_Mram_data_memory3 : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X12Y114",
      INIT => X"00000202C4AD3000"
    )
    port map (
      RADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory3_RADR0,
      RADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory3_RADR1,
      RADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory3_RADR2,
      RADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory3_RADR3,
      RADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory3_RADR4,
      RADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory3_RADR5,
      CLK => NlwBufferSignal_Data_MEM_Mram_data_memory3_CLK,
      I => NlwBufferSignal_Data_MEM_Mram_data_memory3_IN,
      O => Data_MEM_n0012(2),
      WADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory3_WADR0,
      WADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory3_WADR1,
      WADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory3_WADR2,
      WADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory3_WADR3,
      WADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory3_WADR4,
      WADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory3_WADR5,
      WE1 => '1',
      WE2 => '1',
      WE => NlwBufferSignal_Data_MEM_Mram_data_memory3_WE
    );
  Data_MEM_Mram_data_memory4 : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X12Y114",
      INIT => X"000002013BFC4C00"
    )
    port map (
      RADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory4_RADR0,
      RADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory4_RADR1,
      RADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory4_RADR2,
      RADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory4_RADR3,
      RADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory4_RADR4,
      RADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory4_RADR5,
      CLK => NlwBufferSignal_Data_MEM_Mram_data_memory4_CLK,
      I => NlwBufferSignal_Data_MEM_Mram_data_memory4_IN,
      O => Data_MEM_n0012(3),
      WADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory4_WADR0,
      WADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory4_WADR1,
      WADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory4_WADR2,
      WADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory4_WADR3,
      WADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory4_WADR4,
      WADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory4_WADR5,
      WE1 => '1',
      WE2 => '1',
      WE => NlwBufferSignal_Data_MEM_Mram_data_memory4_WE
    );
  ALU_op_Mmux_sig_output1_rs_cy_11_ALU_op_Mmux_sig_output1_rs_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output1_split(11),
      O => ALU_op_Mmux_sig_output1_split_11_0
    );
  ALU_op_Mmux_sig_output1_rs_cy_11_ALU_op_Mmux_sig_output1_rs_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output1_split(10),
      O => ALU_op_Mmux_sig_output1_split_10_0
    );
  ALU_op_Mmux_sig_output1_rs_cy_11_ALU_op_Mmux_sig_output1_rs_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output1_split(9),
      O => ALU_op_Mmux_sig_output1_split_9_0
    );
  ALU_op_Mmux_sig_output1_rs_cy_11_ALU_op_Mmux_sig_output1_rs_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output1_split(8),
      O => ALU_op_Mmux_sig_output1_split_8_0
    );
  ALU_op_Mmux_sig_output1_rs_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X31Y121",
      INIT => X"CC993366663399CC"
    )
    port map (
      ADR2 => '1',
      ADR1 => OP_1_Rs_sig(11),
      ADR0 => Itype_sig,
      ADR5 => Instruction_11_OBUF_4342,
      ADR3 => Op_2_Rt_sig(11),
      ADR4 => ALU_operation_sig(0),
      O => ALU_op_Mmux_sig_output1_rs_lut(11)
    );
  ALU_op_Mmux_sig_output1_rs_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X31Y121"
    )
    port map (
      CI => ALU_op_Mmux_sig_output1_rs_cy_7_Q_4372,
      CYINIT => '0',
      CO(3) => ALU_op_Mmux_sig_output1_rs_cy_11_Q_4377,
      CO(2) => NLW_ALU_op_Mmux_sig_output1_rs_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_ALU_op_Mmux_sig_output1_rs_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_ALU_op_Mmux_sig_output1_rs_cy_11_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_11_DI_3_Q,
      DI(2) => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_11_DI_2_Q,
      DI(1) => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_11_DI_1_Q,
      DI(0) => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_11_DI_0_Q,
      O(3) => ALU_op_Mmux_sig_output1_split(11),
      O(2) => ALU_op_Mmux_sig_output1_split(10),
      O(1) => ALU_op_Mmux_sig_output1_split(9),
      O(0) => ALU_op_Mmux_sig_output1_split(8),
      S(3) => ALU_op_Mmux_sig_output1_rs_lut(11),
      S(2) => ALU_op_Mmux_sig_output1_rs_lut(10),
      S(1) => ALU_op_Mmux_sig_output1_rs_lut(9),
      S(0) => ALU_op_Mmux_sig_output1_rs_lut(8)
    );
  ALU_op_Mmux_sig_output1_rs_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X31Y121",
      INIT => X"DD22887722DD7788"
    )
    port map (
      ADR2 => '1',
      ADR3 => OP_1_Rs_sig_10_0,
      ADR0 => Itype_sig,
      ADR1 => Instruction_10_OBUF_4300,
      ADR4 => Op_2_Rt_sig_10_0,
      ADR5 => ALU_operation_sig(0),
      O => ALU_op_Mmux_sig_output1_rs_lut(10)
    );
  ALU_op_Mmux_sig_output1_rs_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X31Y121",
      INIT => X"CA3535CACA3535CA"
    )
    port map (
      ADR5 => '1',
      ADR3 => OP_1_Rs_sig(9),
      ADR2 => Itype_sig,
      ADR1 => Instruction_10_OBUF_4300,
      ADR0 => Op_2_Rt_sig(9),
      ADR4 => ALU_operation_sig(0),
      O => ALU_op_Mmux_sig_output1_rs_lut(9)
    );
  ALU_op_Mmux_sig_output1_rs_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X31Y121",
      INIT => X"CACA35353535CACA"
    )
    port map (
      ADR3 => '1',
      ADR5 => OP_1_Rs_sig_8_0,
      ADR2 => Itype_sig,
      ADR1 => Instruction_10_OBUF_4300,
      ADR0 => Op_2_Rt_sig_8_0,
      ADR4 => ALU_operation_sig(0),
      O => ALU_op_Mmux_sig_output1_rs_lut(8)
    );
  ALU_op_Mmux_sig_output1_rs_cy_19_ALU_op_Mmux_sig_output1_rs_cy_19_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output1_split(19),
      O => ALU_op_Mmux_sig_output1_split_19_0
    );
  ALU_op_Mmux_sig_output1_rs_cy_19_ALU_op_Mmux_sig_output1_rs_cy_19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output1_split(18),
      O => ALU_op_Mmux_sig_output1_split_18_0
    );
  ALU_op_Mmux_sig_output1_rs_cy_19_ALU_op_Mmux_sig_output1_rs_cy_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output1_split(17),
      O => ALU_op_Mmux_sig_output1_split_17_0
    );
  ALU_op_Mmux_sig_output1_rs_cy_19_ALU_op_Mmux_sig_output1_rs_cy_19_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output1_split(16),
      O => ALU_op_Mmux_sig_output1_split_16_0
    );
  ALU_op_Mmux_sig_output1_rs_lut_19_Q : X_LUT6
    generic map(
      LOC => "SLICE_X31Y123",
      INIT => X"F05A0FA5A50F5AF0"
    )
    port map (
      ADR1 => '1',
      ADR2 => OP_1_Rs_sig(19),
      ADR0 => Itype_sig,
      ADR3 => Instruction_10_OBUF_4300,
      ADR5 => Op_2_Rt_sig(19),
      ADR4 => ALU_operation_sig(0),
      O => ALU_op_Mmux_sig_output1_rs_lut(19)
    );
  ALU_op_Mmux_sig_output1_rs_cy_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X31Y123"
    )
    port map (
      CI => ALU_op_Mmux_sig_output1_rs_cy_15_Q_4382,
      CYINIT => '0',
      CO(3) => ALU_op_Mmux_sig_output1_rs_cy_19_Q_4387,
      CO(2) => NLW_ALU_op_Mmux_sig_output1_rs_cy_19_CO_2_UNCONNECTED,
      CO(1) => NLW_ALU_op_Mmux_sig_output1_rs_cy_19_CO_1_UNCONNECTED,
      CO(0) => NLW_ALU_op_Mmux_sig_output1_rs_cy_19_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_19_DI_3_Q,
      DI(2) => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_19_DI_2_Q,
      DI(1) => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_19_DI_1_Q,
      DI(0) => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_19_DI_0_Q,
      O(3) => ALU_op_Mmux_sig_output1_split(19),
      O(2) => ALU_op_Mmux_sig_output1_split(18),
      O(1) => ALU_op_Mmux_sig_output1_split(17),
      O(0) => ALU_op_Mmux_sig_output1_split(16),
      S(3) => ALU_op_Mmux_sig_output1_rs_lut(19),
      S(2) => ALU_op_Mmux_sig_output1_rs_lut(18),
      S(1) => ALU_op_Mmux_sig_output1_rs_lut(17),
      S(0) => ALU_op_Mmux_sig_output1_rs_lut(16)
    );
  ALU_op_Mmux_sig_output1_rs_lut_18_Q : X_LUT6
    generic map(
      LOC => "SLICE_X31Y123",
      INIT => X"FA0505FA50AFAF50"
    )
    port map (
      ADR1 => '1',
      ADR3 => OP_1_Rs_sig_18_0,
      ADR0 => Itype_sig,
      ADR5 => Instruction_10_OBUF_4300,
      ADR2 => Op_2_Rt_sig_18_0,
      ADR4 => ALU_operation_sig(0),
      O => ALU_op_Mmux_sig_output1_rs_lut(18)
    );
  ALU_op_Mmux_sig_output1_rs_lut_17_Q : X_LUT6
    generic map(
      LOC => "SLICE_X31Y123",
      INIT => X"AA55A5A555AA5A5A"
    )
    port map (
      ADR1 => '1',
      ADR5 => OP_1_Rs_sig(17),
      ADR4 => Itype_sig,
      ADR3 => Instruction_10_OBUF_4300,
      ADR2 => Op_2_Rt_sig(17),
      ADR0 => ALU_operation_sig(0),
      O => ALU_op_Mmux_sig_output1_rs_lut(17)
    );
  ALU_op_Mmux_sig_output1_rs_lut_16_Q : X_LUT6
    generic map(
      LOC => "SLICE_X31Y123",
      INIT => X"9966A55A9966A55A"
    )
    port map (
      ADR5 => '1',
      ADR3 => OP_1_Rs_sig_16_0,
      ADR4 => Itype_sig,
      ADR1 => Instruction_10_OBUF_4300,
      ADR2 => Op_2_Rt_sig_16_0,
      ADR0 => ALU_operation_sig(0),
      O => ALU_op_Mmux_sig_output1_rs_lut(16)
    );
  ALU_op_Mmux_sig_output1_rs_cy_7_ALU_op_Mmux_sig_output1_rs_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output1_split(7),
      O => ALU_op_Mmux_sig_output1_split_7_0
    );
  ALU_op_Mmux_sig_output1_rs_cy_7_ALU_op_Mmux_sig_output1_rs_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output1_split(6),
      O => ALU_op_Mmux_sig_output1_split_6_0
    );
  ALU_op_Mmux_sig_output1_rs_cy_7_ALU_op_Mmux_sig_output1_rs_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output1_split(5),
      O => ALU_op_Mmux_sig_output1_split_5_0
    );
  ALU_op_Mmux_sig_output1_rs_cy_7_ALU_op_Mmux_sig_output1_rs_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output1_split(4),
      O => ALU_op_Mmux_sig_output1_split_4_0
    );
  ALU_op_Mmux_sig_output1_rs_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X31Y120",
      INIT => X"E11EE11E2DD22DD2"
    )
    port map (
      ADR4 => '1',
      ADR2 => OP_1_Rs_sig(7),
      ADR1 => Itype_sig,
      ADR5 => Instruction_10_OBUF_4300,
      ADR0 => Op_2_Rt_sig(7),
      ADR3 => ALU_operation_sig(0),
      O => ALU_op_Mmux_sig_output1_rs_lut(7)
    );
  ALU_op_Mmux_sig_output1_rs_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X31Y120"
    )
    port map (
      CI => ALU_op_Mmux_sig_output1_rs_cy_3_Q_4364,
      CYINIT => '0',
      CO(3) => ALU_op_Mmux_sig_output1_rs_cy_7_Q_4372,
      CO(2) => NLW_ALU_op_Mmux_sig_output1_rs_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_ALU_op_Mmux_sig_output1_rs_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_ALU_op_Mmux_sig_output1_rs_cy_7_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_7_DI_3_Q,
      DI(2) => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_7_DI_2_Q,
      DI(1) => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_7_DI_1_Q,
      DI(0) => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_7_DI_0_Q,
      O(3) => ALU_op_Mmux_sig_output1_split(7),
      O(2) => ALU_op_Mmux_sig_output1_split(6),
      O(1) => ALU_op_Mmux_sig_output1_split(5),
      O(0) => ALU_op_Mmux_sig_output1_split(4),
      S(3) => ALU_op_Mmux_sig_output1_rs_lut(7),
      S(2) => ALU_op_Mmux_sig_output1_rs_lut(6),
      S(1) => ALU_op_Mmux_sig_output1_rs_lut(5),
      S(0) => ALU_op_Mmux_sig_output1_rs_lut(4)
    );
  ALU_op_Mmux_sig_output1_rs_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X31Y120",
      INIT => X"AA55996655AA9966"
    )
    port map (
      ADR2 => '1',
      ADR0 => OP_1_Rs_sig_6_0,
      ADR4 => Itype_sig,
      ADR5 => Instruction_10_OBUF_4300,
      ADR1 => Op_2_Rt_sig_6_0,
      ADR3 => ALU_operation_sig(0),
      O => ALU_op_Mmux_sig_output1_rs_lut(6)
    );
  ALU_op_Mmux_sig_output1_rs_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X31Y120",
      INIT => X"CFC0303F303FCFC0"
    )
    port map (
      ADR0 => '1',
      ADR5 => OP_1_Rs_sig(5),
      ADR2 => Itype_sig,
      ADR1 => Instruction_5_OBUF_4369,
      ADR3 => Op_2_Rt_sig(5),
      ADR4 => ALU_operation_sig(0),
      O => ALU_op_Mmux_sig_output1_rs_lut(5)
    );
  ALU_op_Mmux_sig_output1_rs_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X31Y120",
      INIT => X"9CAF635093A06C5F"
    )
    port map (
      ADR0 => Instruction_4_OBUF_4367,
      ADR4 => OP_1_Rs_sig_4_0,
      ADR5 => Op_2_Rt_sig_4_0,
      ADR1 => Decoder_Mmux_alu_op_sel32,
      ADR3 => N111,
      ADR2 => Itype_sig,
      O => ALU_op_Mmux_sig_output1_rs_lut(4)
    );
  ALU_op_Mmux_sig_output1_rs_cy_15_ALU_op_Mmux_sig_output1_rs_cy_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output1_split(15),
      O => ALU_op_Mmux_sig_output1_split_15_0
    );
  ALU_op_Mmux_sig_output1_rs_cy_15_ALU_op_Mmux_sig_output1_rs_cy_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output1_split(14),
      O => ALU_op_Mmux_sig_output1_split_14_0
    );
  ALU_op_Mmux_sig_output1_rs_cy_15_ALU_op_Mmux_sig_output1_rs_cy_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output1_split(13),
      O => ALU_op_Mmux_sig_output1_split_13_0
    );
  ALU_op_Mmux_sig_output1_rs_cy_15_ALU_op_Mmux_sig_output1_rs_cy_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output1_split(12),
      O => ALU_op_Mmux_sig_output1_split_12_0
    );
  ALU_op_Mmux_sig_output1_rs_lut_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X31Y122",
      INIT => X"C3C3C33C3CC33C3C"
    )
    port map (
      ADR0 => '1',
      ADR1 => OP_1_Rs_sig(15),
      ADR3 => Itype_sig,
      ADR5 => Instruction_10_OBUF_4300,
      ADR4 => Op_2_Rt_sig(15),
      ADR2 => ALU_operation_sig(0),
      O => ALU_op_Mmux_sig_output1_rs_lut(15)
    );
  ALU_op_Mmux_sig_output1_rs_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X31Y122"
    )
    port map (
      CI => ALU_op_Mmux_sig_output1_rs_cy_11_Q_4377,
      CYINIT => '0',
      CO(3) => ALU_op_Mmux_sig_output1_rs_cy_15_Q_4382,
      CO(2) => NLW_ALU_op_Mmux_sig_output1_rs_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_ALU_op_Mmux_sig_output1_rs_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_ALU_op_Mmux_sig_output1_rs_cy_15_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_15_DI_3_Q,
      DI(2) => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_15_DI_2_Q,
      DI(1) => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_15_DI_1_Q,
      DI(0) => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_15_DI_0_Q,
      O(3) => ALU_op_Mmux_sig_output1_split(15),
      O(2) => ALU_op_Mmux_sig_output1_split(14),
      O(1) => ALU_op_Mmux_sig_output1_split(13),
      O(0) => ALU_op_Mmux_sig_output1_split(12),
      S(3) => ALU_op_Mmux_sig_output1_rs_lut(15),
      S(2) => ALU_op_Mmux_sig_output1_rs_lut(14),
      S(1) => ALU_op_Mmux_sig_output1_rs_lut(13),
      S(0) => ALU_op_Mmux_sig_output1_rs_lut(12)
    );
  ALU_op_Mmux_sig_output1_rs_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X31Y122",
      INIT => X"C3F0C30F3C0F3CF0"
    )
    port map (
      ADR0 => '1',
      ADR5 => OP_1_Rs_sig_14_0,
      ADR3 => Itype_sig,
      ADR1 => Instruction_14_OBUF_4216,
      ADR4 => Op_2_Rt_sig_14_0,
      ADR2 => ALU_operation_sig(0),
      O => ALU_op_Mmux_sig_output1_rs_lut(14)
    );
  ALU_op_Mmux_sig_output1_rs_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X31Y122",
      INIT => X"9969966699699666"
    )
    port map (
      ADR5 => '1',
      ADR1 => OP_1_Rs_sig(13),
      ADR2 => Itype_sig,
      ADR3 => Instruction_13_OBUF_4346,
      ADR4 => Op_2_Rt_sig(13),
      ADR0 => ALU_operation_sig(0),
      O => ALU_op_Mmux_sig_output1_rs_lut(13)
    );
  ALU_op_Mmux_sig_output1_rs_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X31Y122",
      INIT => X"9999696996966666"
    )
    port map (
      ADR3 => '1',
      ADR0 => OP_1_Rs_sig_12_0,
      ADR2 => Itype_sig,
      ADR4 => Instruction_12_OBUF_4210,
      ADR5 => Op_2_Rt_sig_12_0,
      ADR1 => ALU_operation_sig(0),
      O => ALU_op_Mmux_sig_output1_rs_lut(12)
    );
  ALU_op_Mmux_sig_output1_rs_cy_3_ALU_op_Mmux_sig_output1_rs_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output1_split(3),
      O => ALU_op_Mmux_sig_output1_split_3_0
    );
  ALU_op_Mmux_sig_output1_rs_cy_3_ALU_op_Mmux_sig_output1_rs_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output1_split(2),
      O => ALU_op_Mmux_sig_output1_split_2_0
    );
  ALU_op_Mmux_sig_output1_rs_cy_3_ALU_op_Mmux_sig_output1_rs_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output1_split(1),
      O => ALU_op_Mmux_sig_output1_split_1_0
    );
  ALU_op_Mmux_sig_output1_rs_cy_3_ALU_op_Mmux_sig_output1_rs_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output1_split(0),
      O => ALU_op_Mmux_sig_output1_split_0_0
    );
  ALU_op_Mmux_sig_output1_rs_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X31Y119",
      INIT => X"9ACF653095C06A3F"
    )
    port map (
      ADR1 => Instruction_3_OBUF_4365,
      ADR5 => Op_2_Rt_sig(3),
      ADR4 => OP_1_Rs_sig(3),
      ADR0 => Decoder_Mmux_alu_op_sel32,
      ADR3 => N111,
      ADR2 => Itype_sig,
      O => ALU_op_Mmux_sig_output1_rs_lut(3)
    );
  ALU_op_Mmux_sig_output1_rs_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X31Y119"
    )
    port map (
      CI => '0',
      CYINIT => ALU_operation_sig(0),
      CO(3) => ALU_op_Mmux_sig_output1_rs_cy_3_Q_4364,
      CO(2) => NLW_ALU_op_Mmux_sig_output1_rs_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_ALU_op_Mmux_sig_output1_rs_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_ALU_op_Mmux_sig_output1_rs_cy_3_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_3_DI_3_Q,
      DI(2) => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_3_DI_2_Q,
      DI(1) => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_3_DI_1_Q,
      DI(0) => OP_1_Rs_sig_0_rt_128,
      O(3) => ALU_op_Mmux_sig_output1_split(3),
      O(2) => ALU_op_Mmux_sig_output1_split(2),
      O(1) => ALU_op_Mmux_sig_output1_split(1),
      O(0) => ALU_op_Mmux_sig_output1_split(0),
      S(3) => ALU_op_Mmux_sig_output1_rs_lut(3),
      S(2) => ALU_op_Mmux_sig_output1_rs_lut(2),
      S(1) => ALU_op_Mmux_sig_output1_rs_lut(1),
      S(0) => ALU_op_Mmux_sig_output1_rs_lut(0)
    );
  ALU_op_Mmux_sig_output1_rs_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X31Y119",
      INIT => X"9A95656ACFC0303F"
    )
    port map (
      ADR1 => Instruction_2_OBUF_4362,
      ADR4 => OP_1_Rs_sig_2_0,
      ADR3 => Op_2_Rt_sig_2_0,
      ADR0 => Decoder_Mmux_alu_op_sel32,
      ADR5 => N111,
      ADR2 => Itype_sig,
      O => ALU_op_Mmux_sig_output1_rs_lut(2)
    );
  ALU_op_Mmux_sig_output1_rs_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X31Y119",
      INIT => X"96A596A5C3F03C0F"
    )
    port map (
      ADR0 => Instruction_1_OBUF_4358,
      ADR2 => OP_1_Rs_sig(1),
      ADR4 => Op_2_Rt_sig(1),
      ADR1 => Decoder_Mmux_alu_op_sel32,
      ADR3 => N111,
      ADR5 => Itype_sig,
      O => ALU_op_Mmux_sig_output1_rs_lut(1)
    );
  ALU_op_Mmux_sig_output1_rs_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X31Y119",
      INIT => X"A55A9696A55A9696"
    )
    port map (
      ADR0 => OP_1_Rs_sig_0_0,
      ADR4 => Itype_sig,
      ADR3 => Instruction_0_OBUF_4355,
      ADR1 => Op_2_Rt_sig_0_0,
      ADR2 => Decoder_Mmux_alu_op_sel11_4356,
      ADR5 => '1',
      O => ALU_op_Mmux_sig_output1_rs_lut(0)
    );
  OP_1_Rs_sig_0_rt : X_LUT5
    generic map(
      LOC => "SLICE_X31Y119",
      INIT => X"AAAAAAAA"
    )
    port map (
      ADR0 => OP_1_Rs_sig_0_0,
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => OP_1_Rs_sig_0_rt_128
    );
  output_20_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y129"
    )
    port map (
      I => NlwBufferSignal_output_20_OBUF_I,
      O => output(20)
    );
  Instruction_15_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y102"
    )
    port map (
      I => NlwBufferSignal_Instruction_15_OBUF_I,
      O => Instruction(15)
    );
  output_24_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y125"
    )
    port map (
      I => NlwBufferSignal_output_24_OBUF_I,
      O => output(24)
    );
  Instruction_13_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y107"
    )
    port map (
      I => NlwBufferSignal_Instruction_13_OBUF_I,
      O => Instruction(13)
    );
  output_26_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y119"
    )
    port map (
      I => NlwBufferSignal_output_26_OBUF_I,
      O => output(26)
    );
  output_27_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y120"
    )
    port map (
      I => NlwBufferSignal_output_27_OBUF_I,
      O => output(27)
    );
  Instruction_18_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y144"
    )
    port map (
      I => NlwBufferSignal_Instruction_18_OBUF_I,
      O => Instruction(18)
    );
  Instruction_17_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y113"
    )
    port map (
      I => NlwBufferSignal_Instruction_17_OBUF_I,
      O => Instruction(17)
    );
  output_30_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y128"
    )
    port map (
      I => NlwBufferSignal_output_30_OBUF_I,
      O => output(30)
    );
  Instruction_31_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y136"
    )
    port map (
      I => NlwBufferSignal_Instruction_31_OBUF_I,
      O => Instruction(31)
    );
  Instruction_19_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y145"
    )
    port map (
      I => NlwBufferSignal_Instruction_19_OBUF_I,
      O => Instruction(19)
    );
  output_25_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y122"
    )
    port map (
      I => NlwBufferSignal_output_25_OBUF_I,
      O => output(25)
    );
  output_22_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y132"
    )
    port map (
      I => NlwBufferSignal_output_22_OBUF_I,
      O => output(22)
    );
  output_29_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y117"
    )
    port map (
      I => NlwBufferSignal_output_29_OBUF_I,
      O => output(29)
    );
  Instruction_16_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y116"
    )
    port map (
      I => NlwBufferSignal_Instruction_16_OBUF_I,
      O => Instruction(16)
    );
  Instruction_14_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y110"
    )
    port map (
      I => NlwBufferSignal_Instruction_14_OBUF_I,
      O => Instruction(14)
    );
  Instruction_12_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y114"
    )
    port map (
      I => NlwBufferSignal_Instruction_12_OBUF_I,
      O => Instruction(12)
    );
  output_23_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y124"
    )
    port map (
      I => NlwBufferSignal_output_23_OBUF_I,
      O => output(23)
    );
  output_21_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y126"
    )
    port map (
      I => NlwBufferSignal_output_21_OBUF_I,
      O => output(21)
    );
  output_31_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y115"
    )
    port map (
      I => NlwBufferSignal_output_31_OBUF_I,
      O => output(31)
    );
  Instruction_30_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y135"
    )
    port map (
      I => NlwBufferSignal_Instruction_30_OBUF_I,
      O => Instruction(30)
    );
  Instruction_11_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y108"
    )
    port map (
      I => NlwBufferSignal_Instruction_11_OBUF_I,
      O => Instruction(11)
    );
  Instruction_29_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y125"
    )
    port map (
      I => NlwBufferSignal_Instruction_29_OBUF_I,
      O => Instruction(29)
    );
  Instruction_10_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y100"
    )
    port map (
      I => NlwBufferSignal_Instruction_10_OBUF_I,
      O => Instruction(10)
    );
  output_6_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y142"
    )
    port map (
      I => NlwBufferSignal_output_6_OBUF_I,
      O => output(6)
    );
  Instruction_28_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y129"
    )
    port map (
      I => NlwBufferSignal_Instruction_28_OBUF_I,
      O => Instruction(28)
    );
  Instruction_21_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y143"
    )
    port map (
      I => NlwBufferSignal_Instruction_21_OBUF_I,
      O => Instruction(21)
    );
  output_5_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y143"
    )
    port map (
      I => NlwBufferSignal_output_5_OBUF_I,
      O => output(5)
    );
  output_8_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y141"
    )
    port map (
      I => NlwBufferSignal_output_8_OBUF_I,
      O => output(8)
    );
  output_2_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y147"
    )
    port map (
      I => NlwBufferSignal_output_2_OBUF_I,
      O => output(2)
    );
  Instruction_20_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y142"
    )
    port map (
      I => NlwBufferSignal_Instruction_20_OBUF_I,
      O => Instruction(20)
    );
  Instruction_24_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y138"
    )
    port map (
      I => NlwBufferSignal_Instruction_24_OBUF_I,
      O => Instruction(24)
    );
  output_3_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y144"
    )
    port map (
      I => NlwBufferSignal_output_3_OBUF_I,
      O => output(3)
    );
  output_9_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y138"
    )
    port map (
      I => NlwBufferSignal_output_9_OBUF_I,
      O => output(9)
    );
  output_1_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y148"
    )
    port map (
      I => NlwBufferSignal_output_1_OBUF_I,
      O => output(1)
    );
  Instruction_22_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y140"
    )
    port map (
      I => NlwBufferSignal_Instruction_22_OBUF_I,
      O => Instruction(22)
    );
  output_0_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y149"
    )
    port map (
      I => NlwBufferSignal_output_0_OBUF_I,
      O => output(0)
    );
  Instruction_7_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y103"
    )
    port map (
      I => NlwBufferSignal_Instruction_7_OBUF_I,
      O => Instruction(7)
    );
  output_4_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y145"
    )
    port map (
      I => NlwBufferSignal_output_4_OBUF_I,
      O => output(4)
    );
  ProtoComp21_INTERMDISABLE_GND_1 : X_ZERO
    generic map(
      LOC => "IOB_X1Y121"
    )
    port map (
      O => PC_reset_ProtoComp21_INTERMDISABLE_GND_0
    );
  PC_reset_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y121"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => PC_reset_ProtoComp21_INTERMDISABLE_GND_0,
      O => PC_reset_IBUF_4451,
      I => PC_reset,
      TPWRGT => '1'
    );
  Instruction_27_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y137"
    )
    port map (
      I => NlwBufferSignal_Instruction_27_OBUF_I,
      O => Instruction(27)
    );
  output_7_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y140"
    )
    port map (
      I => NlwBufferSignal_output_7_OBUF_I,
      O => output(7)
    );
  Instruction_25_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y139"
    )
    port map (
      I => NlwBufferSignal_Instruction_25_OBUF_I,
      O => Instruction(25)
    );
  Instruction_26_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y133"
    )
    port map (
      I => NlwBufferSignal_Instruction_26_OBUF_I,
      O => Instruction(26)
    );
  Instruction_23_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y141"
    )
    port map (
      I => NlwBufferSignal_Instruction_23_OBUF_I,
      O => Instruction(23)
    );
  Instruction_6_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y104"
    )
    port map (
      I => NlwBufferSignal_Instruction_6_OBUF_I,
      O => Instruction(6)
    );
  Instruction_5_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y112"
    )
    port map (
      I => NlwBufferSignal_Instruction_5_OBUF_I,
      O => Instruction(5)
    );
  Instruction_8_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y105"
    )
    port map (
      I => NlwBufferSignal_Instruction_8_OBUF_I,
      O => Instruction(8)
    );
  Instruction_3_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y106"
    )
    port map (
      I => NlwBufferSignal_Instruction_3_OBUF_I,
      O => Instruction(3)
    );
  Instruction_2_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y118"
    )
    port map (
      I => NlwBufferSignal_Instruction_2_OBUF_I,
      O => Instruction(2)
    );
  Ins_MEM_Mram_instruction_memory131 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y108",
      INIT => X"0010008211000022"
    )
    port map (
      ADR1 => PC_output_pc(1),
      ADR3 => PC_output_pc(4),
      ADR4 => PC_output_pc(0),
      ADR0 => PC_output_pc(5),
      ADR5 => PC_output_pc(3),
      ADR2 => PC_output_pc(2),
      O => Instruction_13_OBUF_4346
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
  ALU_op_operand2_1_172 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y116",
      INIT => X"F7D5B391E6C4A280"
    )
    port map (
      ADR1 => Op_2_ALU_sig_0_Q,
      ADR0 => Op_2_ALU_sig_1_Q,
      ADR2 => OP_1_Rs_sig(9),
      ADR4 => OP_1_Rs_sig(11),
      ADR5 => OP_1_Rs_sig_12_0,
      ADR3 => OP_1_Rs_sig_10_0,
      O => ALU_op_operand2_1_mmx_out24
    );
  Mux_ALU_DMem_to_Reg_Mmux_output301 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y125",
      INIT => X"55F500A055F500A0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR0 => load_sig,
      ADR4 => output_7_OBUF_4455,
      ADR2 => Data_MEM_n0012(7),
      ADR3 => store_sig,
      O => write_data_Reg_File_sig(7)
    );
  ALU_op_Mmux_sig_output7305 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y125",
      INIT => X"4444E4E4FF00FF00"
    )
    port map (
      ADR5 => ALU_operation_sig(2),
      ADR0 => ALU_operation_sig(1),
      ADR1 => ALU_op_Mmux_sig_output7302_4661,
      ADR2 => ALU_op_Mmux_sig_output7301_4662,
      ADR4 => ALU_operation_sig(0),
      ADR3 => ALU_op_Mmux_sig_output7303_4660,
      O => output_7_OBUF_4455
    );
  ALU_op_Mmux_sig_output7303 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y122",
      INIT => X"02000200020002FF"
    )
    port map (
      ADR3 => ALU_operation_sig(0),
      ADR5 => Op_2_ALU_sig_7_0,
      ADR4 => OP_1_Rs_sig(7),
      ADR0 => ALU_op_operand2_2_mmx_out13,
      ADR2 => Op_2_ALU_sig_4_Q,
      ADR1 => Op_2_ALU_sig_3_Q,
      O => ALU_op_Mmux_sig_output7302_4661
    );
  ALU_op_operand2_2_52 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y122",
      INIT => X"F0CCF0CCF0F0CCCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => Itype_sig,
      ADR3 => Instruction_2_OBUF_4362,
      ADR1 => ALU_op_operand2_1_mmx_out19,
      ADR2 => ALU_op_operand2_2_5,
      ADR4 => Op_2_Rt_sig_2_0,
      O => ALU_op_operand2_2_mmx_out13
    );
  Instruction_1_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y111"
    )
    port map (
      I => NlwBufferSignal_Instruction_1_OBUF_I,
      O => Instruction(1)
    );
  ALU_op_operand2_1_12 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y115",
      INIT => X"FFAAD8D85500D8D8"
    )
    port map (
      ADR4 => Op_2_ALU_sig_0_Q,
      ADR0 => Op_2_ALU_sig_1_Q,
      ADR5 => OP_1_Rs_sig(13),
      ADR3 => OP_1_Rs_sig(15),
      ADR2 => OP_1_Rs_sig_16_0,
      ADR1 => OP_1_Rs_sig_14_0,
      O => ALU_op_operand2_1_mmx_out1
    );
  ALU_op_Mmux_sig_output7213_ALU_op_Mmux_sig_output7213_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_28_OBUF_749,
      O => output_28_OBUF_0
    );
  ALU_op_Mmux_sig_output7217 : X_MUX2
    generic map(
      LOC => "SLICE_X11Y120"
    )
    port map (
      IA => N194,
      IB => N195,
      O => output_28_OBUF_749,
      SEL => ALU_operation_sig(2)
    );
  ALU_op_Mmux_sig_output7217_F : X_LUT6
    generic map(
      LOC => "SLICE_X11Y120",
      INIT => X"FBB3FBB3C880C880"
    )
    port map (
      ADR4 => '1',
      ADR1 => ALU_operation_sig(1),
      ADR2 => OP_1_Rs_sig_28_0,
      ADR0 => Op_2_ALU_sig_28_Q,
      ADR3 => ALU_operation_sig(0),
      ADR5 => ALU_op_Mmux_sig_output1_split_28_0,
      O => N194
    );
  ALU_op_Mmux_sig_output7217_G : X_LUT6
    generic map(
      LOC => "SLICE_X11Y120",
      INIT => X"F0F0F0F0F0F0FAF0"
    )
    port map (
      ADR1 => '1',
      ADR2 => ALU_op_Mmux_sig_output7213_4731,
      ADR0 => ALU_op_Mmux_sig_output721411,
      ADR5 => Op_2_ALU_sig_2_Q,
      ADR3 => ALU_op_operand2_1_mmx_out191_0,
      ADR4 => ALU_operation_sig(0),
      O => N195
    );
  ALU_op_Mmux_sig_output7214 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y120",
      INIT => X"0022332230303030"
    )
    port map (
      ADR1 => ALU_operation_sig(1),
      ADR5 => ALU_operation_sig(0),
      ADR3 => Op_2_ALU_sig_4_Q,
      ADR0 => ALU_op_Mmux_sig_output7211_4561,
      ADR4 => ALU_op_operand2_3_mmx_out11,
      ADR2 => ALU_op_Mmux_sig_output7212_0,
      O => ALU_op_Mmux_sig_output7213_4731
    );
  ALU_op_Mmux_sig_output7214111 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y120",
      INIT => X"000000440C000C44"
    )
    port map (
      ADR1 => ALU_operation_sig(1),
      ADR3 => Itype_sig,
      ADR2 => Instruction_3_OBUF_4365,
      ADR5 => Instruction_4_OBUF_4367,
      ADR4 => Op_2_Rt_sig(3),
      ADR0 => Op_2_Rt_sig_4_0,
      O => ALU_op_Mmux_sig_output721411
    );
  Instruction_4_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y109"
    )
    port map (
      I => NlwBufferSignal_Instruction_4_OBUF_I,
      O => Instruction(4)
    );
  Instruction_9_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y101"
    )
    port map (
      I => NlwBufferSignal_Instruction_9_OBUF_I,
      O => Instruction(9)
    );
  Instruction_0_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y146"
    )
    port map (
      I => NlwBufferSignal_Instruction_0_OBUF_I,
      O => Instruction(0)
    );
  ALU_op_Mmux_sig_output7223_ALU_op_Mmux_sig_output7223_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_29_OBUF_797,
      O => output_29_OBUF_0
    );
  ALU_op_Mmux_sig_output7227 : X_MUX2
    generic map(
      LOC => "SLICE_X11Y126"
    )
    port map (
      IA => N196,
      IB => N197,
      O => output_29_OBUF_797,
      SEL => ALU_operation_sig(2)
    );
  ALU_op_Mmux_sig_output7227_F : X_LUT6
    generic map(
      LOC => "SLICE_X11Y126",
      INIT => X"FFCCF3C0F3C03300"
    )
    port map (
      ADR0 => '1',
      ADR1 => ALU_operation_sig(1),
      ADR5 => OP_1_Rs_sig(29),
      ADR2 => Op_2_ALU_sig_29_Q,
      ADR4 => ALU_operation_sig(0),
      ADR3 => ALU_op_Mmux_sig_output1_split_29_0,
      O => N196
    );
  ALU_op_Mmux_sig_output7227_G : X_LUT6
    generic map(
      LOC => "SLICE_X11Y126",
      INIT => X"FFFFFFFF00001100"
    )
    port map (
      ADR2 => '1',
      ADR5 => ALU_op_Mmux_sig_output7223_4732,
      ADR0 => Op_2_ALU_sig_2_Q,
      ADR4 => ALU_operation_sig(0),
      ADR3 => ALU_op_Mmux_sig_output721411,
      ADR1 => ALU_op_operand2_1_mmx_out261_0,
      O => N197
    );
  ALU_op_Mmux_sig_output7224 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y126",
      INIT => X"0323332300203020"
    )
    port map (
      ADR1 => ALU_operation_sig(1),
      ADR2 => ALU_operation_sig(0),
      ADR3 => Op_2_ALU_sig_4_Q,
      ADR0 => ALU_op_Mmux_sig_output7221_4564,
      ADR4 => ALU_op_operand2_3_mmx_out13,
      ADR5 => ALU_op_Mmux_sig_output7222_0,
      O => ALU_op_Mmux_sig_output7223_4732
    );
  ProtoComp21_INTERMDISABLE_GND_2 : X_ZERO
    generic map(
      LOC => "IOB_X1Y128"
    )
    port map (
      O => clk_ProtoComp21_INTERMDISABLE_GND_0
    );
  clk_BUFGP_IBUFG : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y128"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => clk_ProtoComp21_INTERMDISABLE_GND_0,
      O => clk_BUFGP_IBUFG_4462,
      I => clk,
      TPWRGT => '1'
    );
  ALU_op_operand2_3_31 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y114",
      INIT => X"B1A0B1F5B1A0B1F5"
    )
    port map (
      ADR5 => '1',
      ADR0 => Op_2_ALU_sig_3_Q,
      ADR1 => ALU_op_operand2_1_mmx_out20,
      ADR3 => Op_2_ALU_sig_2_Q,
      ADR4 => ALU_op_operand2_1_mmx_out24,
      ADR2 => ALU_op_operand2_2_mmx_out10,
      O => ALU_op_operand2_3_mmx_out11
    );
  ALU_op_Mmux_sig_output743 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y114",
      INIT => X"0033003300005555"
    )
    port map (
      ADR2 => '1',
      ADR5 => ALU_operation_sig(0),
      ADR4 => Op_2_ALU_sig_12_Q,
      ADR0 => OP_1_Rs_sig_12_0,
      ADR1 => Op_2_ALU_sig_4_Q,
      ADR3 => ALU_op_operand2_3_mmx_out11,
      O => ALU_op_Mmux_sig_output742_4712
    );
  ALU_op_Mmux_sig_output782 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y113",
      INIT => X"FFCCE2E23300E2E2"
    )
    port map (
      ADR1 => Op_2_ALU_sig_2_Q,
      ADR4 => Op_2_ALU_sig_3_Q,
      ADR5 => ALU_op_operand2_1_mmx_out15_0,
      ADR2 => ALU_op_operand2_1_mmx_out24,
      ADR0 => ALU_op_operand2_1_mmx_out1,
      ADR3 => ALU_op_operand2_1_mmx_out20,
      O => ALU_op_Mmux_sig_output781_4730
    );
  ALU_op_Mmux_sig_output783 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y113",
      INIT => X"1100130200000000"
    )
    port map (
      ADR5 => ALU_operation_sig(0),
      ADR1 => ALU_operation_sig(1),
      ADR0 => Op_2_ALU_sig_4_Q,
      ADR2 => ALU_op_operand2_2_mmx_out8,
      ADR4 => Op_2_ALU_sig_3_Q,
      ADR3 => ALU_op_Mmux_sig_output781_4730,
      O => ALU_op_Mmux_sig_output782_4695
    );
  Mux_ALU_DMem_to_Reg_Mmux_output221 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y117",
      INIT => X"0CFC0C0C0CFC0C0C"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => load_sig,
      ADR1 => output_29_OBUF_0,
      ADR4 => Data_MEM_n0012(29),
      ADR3 => store_sig,
      O => write_data_Reg_File_sig(29)
    );
  Op_2_ALU_sig_28_Op_2_ALU_sig_28_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output7212_740,
      O => ALU_op_Mmux_sig_output7212_0
    );
  Mux_ALU_Mmux_output211 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y119",
      INIT => X"FF33CC00FF33CC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => Itype_sig,
      ADR3 => Instruction_10_OBUF_4300,
      ADR4 => Op_2_Rt_sig_28_0,
      ADR5 => '1',
      O => Op_2_ALU_sig_28_Q
    );
  ALU_op_Mmux_sig_output7213 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y119",
      INIT => X"00441155"
    )
    port map (
      ADR2 => '1',
      ADR0 => OP_1_Rs_sig_28_0,
      ADR1 => Itype_sig,
      ADR3 => Instruction_10_OBUF_4300,
      ADR4 => Op_2_Rt_sig_28_0,
      O => ALU_op_Mmux_sig_output7212_740
    );
  ALU_op_Mmux_sig_output7141 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y129",
      INIT => X"F7D5B391E6C4A280"
    )
    port map (
      ADR1 => Op_2_ALU_sig_2_Q,
      ADR0 => Op_2_ALU_sig_3_Q,
      ADR2 => ALU_op_operand2_1_mmx_out21,
      ADR4 => ALU_op_operand2_1_mmx_out2,
      ADR5 => ALU_op_operand2_1_mmx_out6,
      ADR3 => ALU_op_operand2_1_mmx_out25,
      O => ALU_op_Mmux_sig_output714_4733
    );
  ALU_op_Mmux_sig_output7142 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y129",
      INIT => X"0100010033000000"
    )
    port map (
      ADR3 => ALU_operation_sig(0),
      ADR1 => ALU_operation_sig(1),
      ADR5 => Op_2_ALU_sig_4_Q,
      ADR2 => ALU_op_operand2_2_mmx_out11,
      ADR0 => Op_2_ALU_sig_3_Q,
      ADR4 => ALU_op_Mmux_sig_output714_4733,
      O => ALU_op_Mmux_sig_output7141_4624
    );
  ALU_op_operand2_1_121 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y132",
      INIT => X"F7D5B391E6C4A280"
    )
    port map (
      ADR1 => Op_2_ALU_sig_0_Q,
      ADR0 => Op_2_ALU_sig_1_Q,
      ADR2 => OP_1_Rs_sig_14_0,
      ADR4 => OP_1_Rs_sig_16_0,
      ADR5 => OP_1_Rs_sig(17),
      ADR3 => OP_1_Rs_sig(15),
      O => ALU_op_operand2_1_mmx_out2
    );
  ALU_op_Mmux_sig_output7181 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y132",
      INIT => X"FCFCAFA00C0CAFA0"
    )
    port map (
      ADR4 => Op_2_ALU_sig_2_Q,
      ADR2 => Op_2_ALU_sig_3_Q,
      ADR5 => ALU_op_operand2_1_mmx_out25,
      ADR1 => ALU_op_operand2_1_mmx_out6,
      ADR3 => ALU_op_operand2_1_mmx_out10,
      ADR0 => ALU_op_operand2_1_mmx_out2,
      O => ALU_op_Mmux_sig_output718_4651
    );
  Mux_ALU_DMem_to_Reg_Mmux_output121 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y118",
      INIT => X"7722772255005500"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR0 => load_sig,
      ADR3 => output_1_OBUF_4457,
      ADR5 => Data_MEM_n0012(1),
      ADR1 => store_sig,
      O => write_data_Reg_File_sig(1)
    );
  ALU_op_Mmux_sig_output71210 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y118",
      INIT => X"FFFFAAAAF3F0F3F0"
    )
    port map (
      ADR5 => ALU_operation_sig(2),
      ADR1 => ALU_operation_sig(1),
      ADR2 => ALU_op_Mmux_sig_output7128_4592,
      ADR3 => ALU_op_Mmux_sig_output1_split_1_0,
      ADR4 => ALU_op_Mmux_sig_output7127_4593,
      ADR0 => ALU_op_Mmux_sig_output7122_4594,
      O => output_1_OBUF_4457
    );
  Mux_ALU_DMem_to_Reg_Mmux_output191 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y118",
      INIT => X"55550000F5F5A0A0"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => load_sig,
      ADR4 => output_26_OBUF_4433,
      ADR2 => Data_MEM_n0012(26),
      ADR5 => store_sig,
      O => write_data_Reg_File_sig(26)
    );
  Mux_ALU_DMem_to_Reg_Mmux_output211 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y118",
      INIT => X"0000AAAAF0F0AAAA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => load_sig,
      ADR0 => output_28_OBUF_0,
      ADR2 => Data_MEM_n0012(28),
      ADR5 => store_sig,
      O => write_data_Reg_File_sig(28)
    );
  ALU_op_Mmux_sig_output7221 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y139",
      INIT => X"F0CCF0CCFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR5 => Op_2_ALU_sig_1_Q,
      ADR1 => OP_1_Rs_sig(27),
      ADR3 => Op_2_ALU_sig_0_Q,
      ADR2 => OP_1_Rs_sig_26_0,
      ADR4 => ALU_op_operand2_0_mmx_out15,
      O => ALU_op_Mmux_sig_output722_4679
    );
  ALU_op_operand2_0_71 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y139",
      INIT => X"FF22DD00FF778800"
    )
    port map (
      ADR2 => '1',
      ADR0 => Itype_sig,
      ADR1 => Instruction_0_OBUF_4355,
      ADR4 => OP_1_Rs_sig(29),
      ADR3 => OP_1_Rs_sig_28_0,
      ADR5 => Op_2_Rt_sig_0_0,
      O => ALU_op_operand2_0_mmx_out15
    );
  ALU_op_Mmux_sig_output7193 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y138",
      INIT => X"555F55DD000A0088"
    )
    port map (
      ADR0 => ALU_operation_sig(0),
      ADR3 => ALU_operation_sig(1),
      ADR4 => Op_2_ALU_sig_4_Q,
      ADR2 => ALU_op_operand2_3_mmx_out9,
      ADR1 => ALU_op_Mmux_sig_output719,
      ADR5 => ALU_op_Mmux_sig_output7191_4637,
      O => ALU_op_Mmux_sig_output7192_4748
    );
  ALU_op_Mmux_sig_output7195 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y138",
      INIT => X"FB0BF808FB0BF808"
    )
    port map (
      ADR5 => '1',
      ADR2 => ALU_operation_sig(2),
      ADR0 => ALU_op_Mmux_sig_output7193_0,
      ADR1 => ALU_operation_sig(1),
      ADR4 => ALU_op_Mmux_sig_output1_split_26_0,
      ADR3 => ALU_op_Mmux_sig_output7192_4748,
      O => output_26_OBUF_4433
    );
  ALU_op_Mmux_sig_output718 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y115",
      INIT => X"FDA8FDA8FDA8DD88"
    )
    port map (
      ADR0 => ALU_operation_sig(1),
      ADR2 => ALU_op_Mmux_sig_output7110,
      ADR1 => ALU_op_Mmux_sig_output71,
      ADR3 => ALU_op_Mmux_sig_output7118,
      ADR4 => ALU_op_Mmux_sig_output7116,
      ADR5 => ALU_op_Mmux_sig_output7114_4709,
      O => output_0_OBUF_4461
    );
  ALU_op_Mmux_sig_output717 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y115",
      INIT => X"0F1FEFFF0010E0F0"
    )
    port map (
      ADR0 => OP_1_Rs_sig_0_0,
      ADR2 => ALU_operation_sig(2),
      ADR1 => Op_2_ALU_sig_0_Q,
      ADR5 => ALU_op_Mmux_sig_output1_split_0_0,
      ADR3 => N147,
      ADR4 => N148,
      O => ALU_op_Mmux_sig_output7118
    );
  ALU_op_Mmux_sig_output7266_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y115",
      INIT => X"FFFFFFFFFF1D001D"
    )
    port map (
      ADR5 => ALU_operation_sig(0),
      ADR3 => Op_2_ALU_sig_4_Q,
      ADR1 => Op_2_ALU_sig_3_Q,
      ADR0 => ALU_op_Mmux_sig_output7263_4588,
      ADR2 => ALU_op_operand2_2_mmx_out31,
      ADR4 => ALU_op_operand2_3_mmx_out17,
      O => N124
    );
  ALU_op_Mmux_sig_output7266 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y115",
      INIT => X"F0FFF0F03333AAAA"
    )
    port map (
      ADR5 => ALU_operation_sig(2),
      ADR4 => ALU_operation_sig(1),
      ADR1 => N123,
      ADR0 => ALU_op_Mmux_sig_output1_split_3_0,
      ADR2 => ALU_op_Mmux_sig_output7265_4596,
      ADR3 => N124,
      O => output_3_OBUF_4459
    );
  Mux_ALU_DMem_to_Reg_Mmux_output271 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y116",
      INIT => X"5500F5A05500F5A0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR0 => load_sig,
      ADR3 => output_4_OBUF_4460,
      ADR2 => Data_MEM_n0012(4),
      ADR4 => store_sig,
      O => write_data_Reg_File_sig(4)
    );
  ALU_op_Mmux_sig_output7275 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y116",
      INIT => X"4444777730FC30FC"
    )
    port map (
      ADR5 => ALU_operation_sig(2),
      ADR1 => ALU_operation_sig(1),
      ADR3 => N120,
      ADR2 => ALU_op_Mmux_sig_output1_split_4_0,
      ADR4 => N119,
      ADR0 => N121,
      O => output_4_OBUF_4460
    );
  Mux_ALU_DMem_to_Reg_Mmux_output281 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y116",
      INIT => X"5050FFFF50500000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => load_sig,
      ADR5 => output_5_OBUF_4453,
      ADR2 => Data_MEM_n0012(5),
      ADR0 => store_sig,
      O => write_data_Reg_File_sig(5)
    );
  ALU_op_Mmux_sig_output7286 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y116",
      INIT => X"33AA33AA0FFF0FAA"
    )
    port map (
      ADR3 => ALU_operation_sig(2),
      ADR5 => ALU_operation_sig(1),
      ADR0 => ALU_op_Mmux_sig_output728,
      ADR4 => ALU_op_Mmux_sig_output1_split_5_0,
      ADR2 => N108,
      ADR1 => N109,
      O => output_5_OBUF_4453
    );
  ALU_op_Mmux_sig_output7128 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y109",
      INIT => X"FF00CC00EC00CC00"
    )
    port map (
      ADR2 => Op_2_ALU_sig_1_Q,
      ADR0 => ALU_op_operand2_0_mmx_out141,
      ADR4 => ALU_op_Mmux_sig_output7125_4613,
      ADR5 => ALU_op_Mmux_sig_output7126_4614,
      ADR1 => ALU_op_Mmux_sig_output7124_4615,
      ADR3 => ALU_op_Mmux_sig_output7123_4749,
      O => ALU_op_Mmux_sig_output7127_4593
    );
  ALU_op_Mmux_sig_output7124 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y109",
      INIT => X"000000001100110F"
    )
    port map (
      ADR0 => Instruction_3_OBUF_4365,
      ADR1 => Instruction_4_OBUF_4367,
      ADR2 => Op_2_Rt_sig(3),
      ADR4 => Op_2_Rt_sig_4_0,
      ADR3 => Itype_sig,
      ADR5 => Op_2_ALU_sig_2_Q,
      O => ALU_op_Mmux_sig_output7123_4749
    );
  ALU_op_operand2_3_21 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y112",
      INIT => X"FF00FF0055553333"
    )
    port map (
      ADR2 => '1',
      ADR5 => Op_2_ALU_sig_3_Q,
      ADR0 => ALU_op_operand2_1_mmx_out19,
      ADR4 => Op_2_ALU_sig_2_Q,
      ADR1 => ALU_op_operand2_1_mmx_out23,
      ADR3 => ALU_op_operand2_2_mmx_out9,
      O => ALU_op_operand2_3_mmx_out10
    );
  ALU_op_operand2_2_23 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y112",
      INIT => X"FFFFFFFFAA03AACF"
    )
    port map (
      ADR2 => OP_1_Rs_sig(3),
      ADR4 => OP_1_Rs_sig(1),
      ADR0 => N16,
      ADR3 => Op_2_ALU_sig_0_Q,
      ADR1 => Op_2_ALU_sig_1_Q,
      ADR5 => Op_2_ALU_sig_2_Q,
      O => ALU_op_operand2_2_mmx_out9
    );
  ALU_op_operand2_2_31_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y111",
      INIT => X"FFFFF0CCFFFFF0CC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => Instruction_5_OBUF_4369,
      ADR1 => Op_2_Rt_sig(5),
      ADR4 => OP_1_Rs_sig(5),
      ADR3 => Itype_sig,
      O => N184
    );
  ALU_op_operand2_2_31_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y111",
      INIT => X"EEFFEFFFFFFFEFFF"
    )
    port map (
      ADR5 => OP_1_Rs_sig_0_0,
      ADR2 => OP_1_Rs_sig(1),
      ADR4 => Op_2_ALU_sig_0_Q,
      ADR0 => Op_2_ALU_sig_1_Q,
      ADR1 => Op_2_ALU_sig_4_Q,
      ADR3 => Op_2_ALU_sig_2_Q,
      O => N185
    );
  ALU_op_Mmux_sig_output743_ALU_op_Mmux_sig_output743_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(0),
      O => write_data_Reg_File_sig_0_0
    );
  ALU_op_Mmux_sig_output744 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y114",
      INIT => X"EF8FEF8FE080E080"
    )
    port map (
      ADR4 => '1',
      ADR2 => ALU_operation_sig(1),
      ADR1 => OP_1_Rs_sig_12_0,
      ADR0 => Op_2_ALU_sig_12_Q,
      ADR3 => ALU_operation_sig(0),
      ADR5 => ALU_op_Mmux_sig_output1_split_12_0,
      O => ALU_op_Mmux_sig_output743_4711
    );
  Data_MEM_write_enable_read_enable_AND_33_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y114",
      INIT => X"0000F0F00000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => store_sig,
      ADR4 => load_sig,
      ADR5 => '1',
      O => Data_MEM_write_enable_read_enable_AND_33_o
    );
  Mux_ALU_DMem_to_Reg_Mmux_output11 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y114",
      INIT => X"0C0CAAAA"
    )
    port map (
      ADR3 => '1',
      ADR0 => output_0_OBUF_4461,
      ADR1 => Data_MEM_n0012(0),
      ADR2 => store_sig,
      ADR4 => load_sig,
      O => write_data_Reg_File_sig(0)
    );
  Decoder_is_load_sig_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y114",
      INIT => X"0000000000C00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => Instruction_29_OBUF_4222,
      ADR5 => Instruction_30_OBUF_4220,
      ADR2 => Instruction_26_OBUF_4445,
      ADR4 => Instruction_27_OBUF_4444,
      ADR1 => Instruction_28_OBUF_4443,
      O => load_sig
    );
  Mux_ALU_DMem_to_Reg_Mmux_output201 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y119",
      INIT => X"00FF0000F0FFF000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => load_sig,
      ADR4 => output_27_OBUF_4306,
      ADR2 => Data_MEM_n0012(27),
      ADR5 => store_sig,
      O => write_data_Reg_File_sig(27)
    );
  ALU_op_operand2_1_mmx_out13_ALU_op_operand2_1_mmx_out13_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig(1),
      O => Write_Reg_Address_sig_1_0
    );
  ALU_op_operand2_1_51 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y113",
      INIT => X"DD88DD88F5F5A0A0"
    )
    port map (
      ADR5 => Op_2_ALU_sig_0_Q,
      ADR0 => Op_2_ALU_sig_1_Q,
      ADR1 => OP_1_Rs_sig_24_0,
      ADR3 => OP_1_Rs_sig_26_0,
      ADR4 => OP_1_Rs_sig(27),
      ADR2 => OP_1_Rs_sig(25),
      O => ALU_op_operand2_1_mmx_out13
    );
  Mux_ALU_Mmux_output41 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y113",
      INIT => X"F0AAF0AAF0AAF0AA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => Itype_sig,
      ADR2 => Instruction_12_OBUF_4210,
      ADR0 => Op_2_Rt_sig_12_0,
      ADR5 => '1',
      O => Op_2_ALU_sig_12_Q
    );
  Mux_Rd_Rt_Mmux_output21 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y113",
      INIT => X"FFF000F0"
    )
    port map (
      ADR0 => '1',
      ADR4 => Instruction_17_OBUF_4208,
      ADR3 => Itype_sig,
      ADR2 => Instruction_12_OBUF_4210,
      ADR1 => '1',
      O => Write_Reg_Address_sig(1)
    );
  ALU_op_Mmux_sig_output7129 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y117",
      INIT => X"CCCCC480C4800000"
    )
    port map (
      ADR2 => Instruction_1_OBUF_4358,
      ADR5 => OP_1_Rs_sig(1),
      ADR3 => Op_2_Rt_sig(1),
      ADR0 => Itype_sig,
      ADR1 => ALU_operation_sig(1),
      ADR4 => ALU_operation_sig(0),
      O => ALU_op_Mmux_sig_output7128_4592
    );
  ALU_op_Mmux_sig_output7234_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y117",
      INIT => X"88FF8BFFB8FFBBFF"
    )
    port map (
      ADR1 => Op_2_ALU_sig_4_Q,
      ADR2 => Op_2_ALU_sig_3_Q,
      ADR3 => ALU_op_Mmux_sig_output7125_4613,
      ADR4 => ALU_op_Mmux_sig_output7232,
      ADR5 => ALU_op_operand2_2_mmx_out24,
      ADR0 => ALU_op_operand2_3_mmx_out16,
      O => N24
    );
  ALU_op_Mmux_sig_output7237 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y117",
      INIT => X"FBFB0BFBFAFA0AFA"
    )
    port map (
      ADR2 => ALU_operation_sig(2),
      ADR1 => ALU_operation_sig(1),
      ADR0 => ALU_op_Mmux_sig_output723_4566,
      ADR5 => ALU_op_Mmux_sig_output1_split_2_0,
      ADR4 => ALU_op_Mmux_sig_output7235_4567,
      ADR3 => N24,
      O => output_2_OBUF_4458
    );
  output_8_OBUF_output_8_OBUF_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(8),
      O => write_data_Reg_File_sig_8_0
    );
  ALU_op_Mmux_sig_output7314 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y120",
      INIT => X"FFAAFFAAFFAAFFAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => ALU_op_Mmux_sig_output7311_4652,
      ADR3 => ALU_op_Mmux_sig_output7312_4754,
      ADR5 => '1',
      O => output_8_OBUF_4456
    );
  Mux_ALU_DMem_to_Reg_Mmux_output311 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y120",
      INIT => X"3F2E3322"
    )
    port map (
      ADR1 => load_sig,
      ADR4 => Data_MEM_n0012(8),
      ADR2 => store_sig,
      ADR0 => ALU_op_Mmux_sig_output7311_4652,
      ADR3 => ALU_op_Mmux_sig_output7312_4754,
      O => write_data_Reg_File_sig(8)
    );
  ALU_op_Mmux_sig_output7313 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y120",
      INIT => X"0055000010551000"
    )
    port map (
      ADR0 => ALU_operation_sig(1),
      ADR3 => ALU_operation_sig(2),
      ADR5 => ALU_op_operand2_3_mmx_out7,
      ADR1 => Op_2_ALU_sig_4_Q,
      ADR2 => ALU_operation_sig(0),
      ADR4 => ALU_op_Mmux_sig_output1_split_8_0,
      O => ALU_op_Mmux_sig_output7312_4754
    );
  ALU_op_Mmux_sig_output7171 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y120",
      INIT => X"000000880505058D"
    )
    port map (
      ADR0 => ALU_operation_sig(1),
      ADR5 => OP_1_Rs_sig_24_0,
      ADR2 => Op_2_ALU_sig_24_Q,
      ADR1 => ALU_op_operand2_2_mmx_out201,
      ADR3 => Op_2_ALU_sig_4_Q,
      ADR4 => Op_2_ALU_sig_3_Q,
      O => ALU_op_Mmux_sig_output717_4646
    );
  ALU_op_Mmux_sig_output741 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y110",
      INIT => X"FA50FA50EEEE4444"
    )
    port map (
      ADR5 => Op_2_ALU_sig_2_Q,
      ADR0 => Op_2_ALU_sig_3_Q,
      ADR3 => ALU_op_operand2_1_mmx_out181_0,
      ADR2 => ALU_op_operand2_1_mmx_out161_0,
      ADR1 => ALU_op_operand2_1_mmx_out151_0,
      ADR4 => ALU_op_operand2_1_mmx_out171_0,
      O => ALU_op_Mmux_sig_output74
    );
  ALU_op_Mmux_sig_output742 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y110",
      INIT => X"00FF000022FF2200"
    )
    port map (
      ADR2 => '1',
      ADR3 => Op_2_ALU_sig_4_Q,
      ADR4 => ALU_op_Mmux_sig_output74,
      ADR0 => ALU_op_operand2_1_mmx_out191_0,
      ADR5 => Op_2_ALU_sig_3_Q,
      ADR1 => Op_2_ALU_sig_2_Q,
      O => ALU_op_Mmux_sig_output741_4710
    );
  INV_Data_MEM_Mram_data_memory10CLK : X_INV
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => Data_MEM_n0012_9_INV_Data_MEM_Mram_data_memory10CLK
    );
  INV_Data_MEM_Mram_data_memory11CLK : X_INV
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => Data_MEM_n0012_9_INV_Data_MEM_Mram_data_memory11CLK
    );
  INV_Data_MEM_Mram_data_memory12CLK : X_INV
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => Data_MEM_n0012_9_INV_Data_MEM_Mram_data_memory12CLK
    );
  INV_Data_MEM_Mram_data_memory13CLK : X_INV
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => Data_MEM_n0012_9_INV_Data_MEM_Mram_data_memory13CLK
    );
  Data_MEM_Mram_data_memory10 : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X14Y115",
      INIT => X"0000020B5A4CC800"
    )
    port map (
      RADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory10_RADR0,
      RADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory10_RADR1,
      RADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory10_RADR2,
      RADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory10_RADR3,
      RADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory10_RADR4,
      RADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory10_RADR5,
      CLK => NlwBufferSignal_Data_MEM_Mram_data_memory10_CLK,
      I => NlwBufferSignal_Data_MEM_Mram_data_memory10_IN,
      O => Data_MEM_n0012(9),
      WADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory10_WADR0,
      WADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory10_WADR1,
      WADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory10_WADR2,
      WADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory10_WADR3,
      WADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory10_WADR4,
      WADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory10_WADR5,
      WE1 => '1',
      WE2 => '1',
      WE => NlwBufferSignal_Data_MEM_Mram_data_memory10_WE
    );
  Data_MEM_Mram_data_memory11 : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X14Y115",
      INIT => X"0000000423C70800"
    )
    port map (
      RADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory11_RADR0,
      RADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory11_RADR1,
      RADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory11_RADR2,
      RADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory11_RADR3,
      RADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory11_RADR4,
      RADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory11_RADR5,
      CLK => NlwBufferSignal_Data_MEM_Mram_data_memory11_CLK,
      I => NlwBufferSignal_Data_MEM_Mram_data_memory11_IN,
      O => Data_MEM_n0012(10),
      WADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory11_WADR0,
      WADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory11_WADR1,
      WADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory11_WADR2,
      WADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory11_WADR3,
      WADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory11_WADR4,
      WADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory11_WADR5,
      WE1 => '1',
      WE2 => '1',
      WE => NlwBufferSignal_Data_MEM_Mram_data_memory11_WE
    );
  Data_MEM_Mram_data_memory12 : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X14Y115",
      INIT => X"00000001717A5400"
    )
    port map (
      RADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory12_RADR0,
      RADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory12_RADR1,
      RADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory12_RADR2,
      RADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory12_RADR3,
      RADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory12_RADR4,
      RADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory12_RADR5,
      CLK => NlwBufferSignal_Data_MEM_Mram_data_memory12_CLK,
      I => NlwBufferSignal_Data_MEM_Mram_data_memory12_IN,
      O => Data_MEM_n0012(11),
      WADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory12_WADR0,
      WADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory12_WADR1,
      WADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory12_WADR2,
      WADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory12_WADR3,
      WADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory12_WADR4,
      WADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory12_WADR5,
      WE1 => '1',
      WE2 => '1',
      WE => NlwBufferSignal_Data_MEM_Mram_data_memory12_WE
    );
  Data_MEM_Mram_data_memory13 : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X14Y115",
      INIT => X"0000020425294C00"
    )
    port map (
      RADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory13_RADR0,
      RADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory13_RADR1,
      RADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory13_RADR2,
      RADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory13_RADR3,
      RADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory13_RADR4,
      RADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory13_RADR5,
      CLK => NlwBufferSignal_Data_MEM_Mram_data_memory13_CLK,
      I => NlwBufferSignal_Data_MEM_Mram_data_memory13_IN,
      O => Data_MEM_n0012(12),
      WADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory13_WADR0,
      WADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory13_WADR1,
      WADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory13_WADR2,
      WADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory13_WADR3,
      WADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory13_WADR4,
      WADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory13_WADR5,
      WE1 => '1',
      WE2 => '1',
      WE => NlwBufferSignal_Data_MEM_Mram_data_memory13_WE
    );
  Ins_MEM_Mram_instruction_memory51 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y120",
      INIT => X"0000000281C41130"
    )
    port map (
      ADR5 => PC_output_pc(3),
      ADR1 => PC_output_pc(4),
      ADR4 => PC_output_pc(0),
      ADR2 => PC_output_pc(2),
      ADR0 => PC_output_pc(5),
      ADR3 => PC_output_pc(1),
      O => Instruction_5_OBUF_4369
    );
  Mux_ALU_DMem_to_Reg_Mmux_output81 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y126",
      INIT => X"2F202F202F202F20"
    )
    port map (
      ADR4 => '1',
      ADR5 => '1',
      ADR2 => load_sig,
      ADR3 => output_16_OBUF_4424,
      ADR0 => Data_MEM_n0012(16),
      ADR1 => store_sig,
      O => write_data_Reg_File_sig(16)
    );
  ALU_op_Mmux_sig_output785 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y126",
      INIT => X"EEFAEEFAEEFA4450"
    )
    port map (
      ADR0 => ALU_operation_sig(2),
      ADR4 => ALU_op_Mmux_sig_output78_0,
      ADR5 => ALU_op_Mmux_sig_output782_4695,
      ADR3 => ALU_operation_sig(1),
      ADR1 => ALU_op_Mmux_sig_output783_4696,
      ADR2 => ALU_op_Mmux_sig_output1_split_16_0,
      O => output_16_OBUF_4424
    );
  Mux_ALU_DMem_to_Reg_Mmux_output241 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y126",
      INIT => X"5D5D08085D5D0808"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR0 => load_sig,
      ADR4 => output_30_OBUF_4441,
      ADR1 => Data_MEM_n0012(30),
      ADR2 => store_sig,
      O => write_data_Reg_File_sig(30)
    );
  ALU_op_Mmux_sig_output7248 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y126",
      INIT => X"FFFF0F0CFFFF000C"
    )
    port map (
      ADR0 => '1',
      ADR2 => ALU_operation_sig(2),
      ADR3 => ALU_operation_sig(1),
      ADR5 => ALU_op_Mmux_sig_output7246_0,
      ADR1 => ALU_op_Mmux_sig_output1_split_30_0,
      ADR4 => ALU_op_Mmux_sig_output7245_4568,
      O => output_30_OBUF_4441
    );
  Op_2_Rt_sig_23_Op_2_Rt_sig_23_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Reg_File_Mram_register_file14_RAMD_D1_O,
      O => Reg_File_Mram_register_file14_RAMD_D1_O_0
    );
  Op_2_Rt_sig_23_Op_2_Rt_sig_23_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig(22),
      O => Op_2_Rt_sig_22_0
    );
  Op_2_Rt_sig_23_Op_2_Rt_sig_23_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig(20),
      O => Op_2_Rt_sig_20_0
    );
  Op_2_Rt_sig_23_Op_2_Rt_sig_23_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig(18),
      O => Op_2_Rt_sig_18_0
    );
  Reg_File_Mram_register_file14_RAMD_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X14Y123",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_D1_CLK,
      I => '0',
      O => NLW_Reg_File_Mram_register_file14_RAMD_D1_O_UNCONNECTED,
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file14_RAMD : X_RAMD32
    generic map(
      LOC => "SLICE_X14Y123",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_CLK,
      I => '0',
      O => Reg_File_Mram_register_file14_RAMD_D1_O,
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file14_RAMC_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X14Y123",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_IN,
      O => Op_2_Rt_sig(23),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file14_RAMC : X_RAMD32
    generic map(
      LOC => "SLICE_X14Y123",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_IN,
      O => Op_2_Rt_sig(22),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file14_RAMB_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X14Y123",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_IN,
      O => Op_2_Rt_sig(21),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file14_RAMB : X_RAMD32
    generic map(
      LOC => "SLICE_X14Y123",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_IN,
      O => Op_2_Rt_sig(20),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file14_RAMA_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X14Y123",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_IN,
      O => Op_2_Rt_sig(19),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file14_RAMA : X_RAMD32
    generic map(
      LOC => "SLICE_X14Y123",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_IN,
      O => Op_2_Rt_sig(18),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_WADR4,
      WE => write_enable_sig
    );
  INV_Data_MEM_Mram_data_memory5CLK : X_INV
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => Data_MEM_n0012_4_INV_Data_MEM_Mram_data_memory5CLK
    );
  INV_Data_MEM_Mram_data_memory6CLK : X_INV
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => Data_MEM_n0012_4_INV_Data_MEM_Mram_data_memory6CLK
    );
  INV_Data_MEM_Mram_data_memory7CLK : X_INV
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => Data_MEM_n0012_4_INV_Data_MEM_Mram_data_memory7CLK
    );
  INV_Data_MEM_Mram_data_memory8CLK : X_INV
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => Data_MEM_n0012_4_INV_Data_MEM_Mram_data_memory8CLK
    );
  Data_MEM_Mram_data_memory5 : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X14Y116",
      INIT => X"0000030456CD0800"
    )
    port map (
      RADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory5_RADR0,
      RADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory5_RADR1,
      RADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory5_RADR2,
      RADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory5_RADR3,
      RADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory5_RADR4,
      RADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory5_RADR5,
      CLK => NlwBufferSignal_Data_MEM_Mram_data_memory5_CLK,
      I => NlwBufferSignal_Data_MEM_Mram_data_memory5_IN,
      O => Data_MEM_n0012(4),
      WADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory5_WADR0,
      WADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory5_WADR1,
      WADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory5_WADR2,
      WADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory5_WADR3,
      WADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory5_WADR4,
      WADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory5_WADR5,
      WE1 => '1',
      WE2 => '1',
      WE => NlwBufferSignal_Data_MEM_Mram_data_memory5_WE
    );
  Data_MEM_Mram_data_memory6 : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X14Y116",
      INIT => X"00000204F0320800"
    )
    port map (
      RADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory6_RADR0,
      RADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory6_RADR1,
      RADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory6_RADR2,
      RADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory6_RADR3,
      RADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory6_RADR4,
      RADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory6_RADR5,
      CLK => NlwBufferSignal_Data_MEM_Mram_data_memory6_CLK,
      I => NlwBufferSignal_Data_MEM_Mram_data_memory6_IN,
      O => Data_MEM_n0012(5),
      WADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory6_WADR0,
      WADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory6_WADR1,
      WADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory6_WADR2,
      WADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory6_WADR3,
      WADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory6_WADR4,
      WADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory6_WADR5,
      WE1 => '1',
      WE2 => '1',
      WE => NlwBufferSignal_Data_MEM_Mram_data_memory6_WE
    );
  Data_MEM_Mram_data_memory7 : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X14Y116",
      INIT => X"00000300C99D1C00"
    )
    port map (
      RADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory7_RADR0,
      RADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory7_RADR1,
      RADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory7_RADR2,
      RADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory7_RADR3,
      RADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory7_RADR4,
      RADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory7_RADR5,
      CLK => NlwBufferSignal_Data_MEM_Mram_data_memory7_CLK,
      I => NlwBufferSignal_Data_MEM_Mram_data_memory7_IN,
      O => Data_MEM_n0012(6),
      WADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory7_WADR0,
      WADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory7_WADR1,
      WADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory7_WADR2,
      WADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory7_WADR3,
      WADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory7_WADR4,
      WADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory7_WADR5,
      WE1 => '1',
      WE2 => '1',
      WE => NlwBufferSignal_Data_MEM_Mram_data_memory7_WE
    );
  Data_MEM_Mram_data_memory8 : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X14Y116",
      INIT => X"0000000814C07C00"
    )
    port map (
      RADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory8_RADR0,
      RADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory8_RADR1,
      RADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory8_RADR2,
      RADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory8_RADR3,
      RADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory8_RADR4,
      RADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory8_RADR5,
      CLK => NlwBufferSignal_Data_MEM_Mram_data_memory8_CLK,
      I => NlwBufferSignal_Data_MEM_Mram_data_memory8_IN,
      O => Data_MEM_n0012(7),
      WADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory8_WADR0,
      WADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory8_WADR1,
      WADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory8_WADR2,
      WADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory8_WADR3,
      WADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory8_WADR4,
      WADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory8_WADR5,
      WE1 => '1',
      WE2 => '1',
      WE => NlwBufferSignal_Data_MEM_Mram_data_memory8_WE
    );
  Mux_ALU_DMem_to_Reg_Mmux_output111 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y122",
      INIT => X"3333FF000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => load_sig,
      ADR3 => output_19_OBUF_4426,
      ADR5 => Data_MEM_n0012(19),
      ADR1 => store_sig,
      O => write_data_Reg_File_sig(19)
    );
  ALU_op_Mmux_sig_output7115 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y122",
      INIT => X"FFF3AFA3FCF0ACA0"
    )
    port map (
      ADR2 => ALU_operation_sig(2),
      ADR4 => ALU_op_Mmux_sig_output7111_4607,
      ADR0 => ALU_op_Mmux_sig_output7112_4611,
      ADR1 => ALU_operation_sig(1),
      ADR3 => ALU_op_Mmux_sig_output7113_0,
      ADR5 => ALU_op_Mmux_sig_output1_split_19_0,
      O => output_19_OBUF_4426
    );
  ALU_op_Mmux_sig_output7162 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y122",
      INIT => X"0404550000000000"
    )
    port map (
      ADR5 => ALU_operation_sig(0),
      ADR0 => ALU_operation_sig(1),
      ADR4 => Op_2_ALU_sig_4_Q,
      ADR3 => ALU_op_Mmux_sig_output716,
      ADR1 => ALU_op_operand2_2_mmx_out13,
      ADR2 => Op_2_ALU_sig_3_Q,
      O => ALU_op_Mmux_sig_output7161_4745
    );
  ALU_op_Mmux_sig_output7165 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y122",
      INIT => X"FFCFFACAF0C0FACA"
    )
    port map (
      ADR2 => ALU_operation_sig(2),
      ADR3 => ALU_op_Mmux_sig_output7161_4745,
      ADR1 => ALU_op_Mmux_sig_output7162_4642,
      ADR4 => ALU_operation_sig(1),
      ADR5 => ALU_op_Mmux_sig_output7163_0,
      ADR0 => ALU_op_Mmux_sig_output1_split_23_0,
      O => output_23_OBUF_4438
    );
  INV_Data_MEM_Mram_data_memory14CLK : X_INV
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => Data_MEM_n0012_13_INV_Data_MEM_Mram_data_memory14CLK
    );
  INV_Data_MEM_Mram_data_memory15CLK : X_INV
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => Data_MEM_n0012_13_INV_Data_MEM_Mram_data_memory15CLK
    );
  INV_Data_MEM_Mram_data_memory16CLK : X_INV
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => Data_MEM_n0012_13_INV_Data_MEM_Mram_data_memory16CLK
    );
  INV_Data_MEM_Mram_data_memory17CLK : X_INV
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => Data_MEM_n0012_13_INV_Data_MEM_Mram_data_memory17CLK
    );
  Data_MEM_Mram_data_memory14 : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X14Y119",
      INIT => X"0000020B84DA7800"
    )
    port map (
      RADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory14_RADR0,
      RADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory14_RADR1,
      RADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory14_RADR2,
      RADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory14_RADR3,
      RADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory14_RADR4,
      RADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory14_RADR5,
      CLK => NlwBufferSignal_Data_MEM_Mram_data_memory14_CLK,
      I => NlwBufferSignal_Data_MEM_Mram_data_memory14_IN,
      O => Data_MEM_n0012(13),
      WADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory14_WADR0,
      WADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory14_WADR1,
      WADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory14_WADR2,
      WADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory14_WADR3,
      WADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory14_WADR4,
      WADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory14_WADR5,
      WE1 => '1',
      WE2 => '1',
      WE => NlwBufferSignal_Data_MEM_Mram_data_memory14_WE
    );
  Data_MEM_Mram_data_memory15 : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X14Y119",
      INIT => X"0000030948323C00"
    )
    port map (
      RADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory15_RADR0,
      RADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory15_RADR1,
      RADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory15_RADR2,
      RADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory15_RADR3,
      RADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory15_RADR4,
      RADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory15_RADR5,
      CLK => NlwBufferSignal_Data_MEM_Mram_data_memory15_CLK,
      I => NlwBufferSignal_Data_MEM_Mram_data_memory15_IN,
      O => Data_MEM_n0012(14),
      WADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory15_WADR0,
      WADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory15_WADR1,
      WADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory15_WADR2,
      WADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory15_WADR3,
      WADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory15_WADR4,
      WADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory15_WADR5,
      WE1 => '1',
      WE2 => '1',
      WE => NlwBufferSignal_Data_MEM_Mram_data_memory15_WE
    );
  Data_MEM_Mram_data_memory16 : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X14Y119",
      INIT => X"000001005AA29C00"
    )
    port map (
      RADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory16_RADR0,
      RADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory16_RADR1,
      RADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory16_RADR2,
      RADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory16_RADR3,
      RADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory16_RADR4,
      RADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory16_RADR5,
      CLK => NlwBufferSignal_Data_MEM_Mram_data_memory16_CLK,
      I => NlwBufferSignal_Data_MEM_Mram_data_memory16_IN,
      O => Data_MEM_n0012(15),
      WADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory16_WADR0,
      WADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory16_WADR1,
      WADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory16_WADR2,
      WADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory16_WADR3,
      WADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory16_WADR4,
      WADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory16_WADR5,
      WE1 => '1',
      WE2 => '1',
      WE => NlwBufferSignal_Data_MEM_Mram_data_memory16_WE
    );
  Data_MEM_Mram_data_memory17 : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X14Y119",
      INIT => X"0000030358D68C00"
    )
    port map (
      RADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory17_RADR0,
      RADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory17_RADR1,
      RADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory17_RADR2,
      RADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory17_RADR3,
      RADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory17_RADR4,
      RADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory17_RADR5,
      CLK => NlwBufferSignal_Data_MEM_Mram_data_memory17_CLK,
      I => NlwBufferSignal_Data_MEM_Mram_data_memory17_IN,
      O => Data_MEM_n0012(16),
      WADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory17_WADR0,
      WADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory17_WADR1,
      WADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory17_WADR2,
      WADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory17_WADR3,
      WADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory17_WADR4,
      WADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory17_WADR5,
      WE1 => '1',
      WE2 => '1',
      WE => NlwBufferSignal_Data_MEM_Mram_data_memory17_WE
    );
  INV_Data_MEM_Mram_data_memory26CLK : X_INV
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => Data_MEM_n0012_25_INV_Data_MEM_Mram_data_memory26CLK
    );
  INV_Data_MEM_Mram_data_memory27CLK : X_INV
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => Data_MEM_n0012_25_INV_Data_MEM_Mram_data_memory27CLK
    );
  INV_Data_MEM_Mram_data_memory28CLK : X_INV
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => Data_MEM_n0012_25_INV_Data_MEM_Mram_data_memory28CLK
    );
  INV_Data_MEM_Mram_data_memory29CLK : X_INV
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => Data_MEM_n0012_25_INV_Data_MEM_Mram_data_memory29CLK
    );
  Data_MEM_Mram_data_memory26 : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X14Y118",
      INIT => X"00000106AFC23C00"
    )
    port map (
      RADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory26_RADR0,
      RADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory26_RADR1,
      RADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory26_RADR2,
      RADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory26_RADR3,
      RADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory26_RADR4,
      RADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory26_RADR5,
      CLK => NlwBufferSignal_Data_MEM_Mram_data_memory26_CLK,
      I => NlwBufferSignal_Data_MEM_Mram_data_memory26_IN,
      O => Data_MEM_n0012(25),
      WADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory26_WADR0,
      WADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory26_WADR1,
      WADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory26_WADR2,
      WADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory26_WADR3,
      WADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory26_WADR4,
      WADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory26_WADR5,
      WE1 => '1',
      WE2 => '1',
      WE => NlwBufferSignal_Data_MEM_Mram_data_memory26_WE
    );
  Data_MEM_Mram_data_memory27 : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X14Y118",
      INIT => X"0000010CCF923000"
    )
    port map (
      RADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory27_RADR0,
      RADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory27_RADR1,
      RADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory27_RADR2,
      RADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory27_RADR3,
      RADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory27_RADR4,
      RADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory27_RADR5,
      CLK => NlwBufferSignal_Data_MEM_Mram_data_memory27_CLK,
      I => NlwBufferSignal_Data_MEM_Mram_data_memory27_IN,
      O => Data_MEM_n0012(26),
      WADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory27_WADR0,
      WADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory27_WADR1,
      WADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory27_WADR2,
      WADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory27_WADR3,
      WADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory27_WADR4,
      WADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory27_WADR5,
      WE1 => '1',
      WE2 => '1',
      WE => NlwBufferSignal_Data_MEM_Mram_data_memory27_WE
    );
  Data_MEM_Mram_data_memory28 : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X14Y118",
      INIT => X"00000200E2408C00"
    )
    port map (
      RADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory28_RADR0,
      RADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory28_RADR1,
      RADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory28_RADR2,
      RADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory28_RADR3,
      RADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory28_RADR4,
      RADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory28_RADR5,
      CLK => NlwBufferSignal_Data_MEM_Mram_data_memory28_CLK,
      I => NlwBufferSignal_Data_MEM_Mram_data_memory28_IN,
      O => Data_MEM_n0012(27),
      WADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory28_WADR0,
      WADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory28_WADR1,
      WADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory28_WADR2,
      WADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory28_WADR3,
      WADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory28_WADR4,
      WADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory28_WADR5,
      WE1 => '1',
      WE2 => '1',
      WE => NlwBufferSignal_Data_MEM_Mram_data_memory28_WE
    );
  Data_MEM_Mram_data_memory29 : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X14Y118",
      INIT => X"00000105263F4C00"
    )
    port map (
      RADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory29_RADR0,
      RADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory29_RADR1,
      RADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory29_RADR2,
      RADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory29_RADR3,
      RADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory29_RADR4,
      RADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory29_RADR5,
      CLK => NlwBufferSignal_Data_MEM_Mram_data_memory29_CLK,
      I => NlwBufferSignal_Data_MEM_Mram_data_memory29_IN,
      O => Data_MEM_n0012(28),
      WADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory29_WADR0,
      WADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory29_WADR1,
      WADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory29_WADR2,
      WADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory29_WADR3,
      WADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory29_WADR4,
      WADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory29_WADR5,
      WE1 => '1',
      WE2 => '1',
      WE => NlwBufferSignal_Data_MEM_Mram_data_memory29_WE
    );
  INV_Data_MEM_Mram_data_memory18CLK : X_INV
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => Data_MEM_n0012_17_INV_Data_MEM_Mram_data_memory18CLK
    );
  INV_Data_MEM_Mram_data_memory19CLK : X_INV
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => Data_MEM_n0012_17_INV_Data_MEM_Mram_data_memory19CLK
    );
  INV_Data_MEM_Mram_data_memory20CLK : X_INV
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => Data_MEM_n0012_17_INV_Data_MEM_Mram_data_memory20CLK
    );
  INV_Data_MEM_Mram_data_memory21CLK : X_INV
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => Data_MEM_n0012_17_INV_Data_MEM_Mram_data_memory21CLK
    );
  Data_MEM_Mram_data_memory18 : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X14Y117",
      INIT => X"00000101FA318C00"
    )
    port map (
      RADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory18_RADR0,
      RADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory18_RADR1,
      RADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory18_RADR2,
      RADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory18_RADR3,
      RADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory18_RADR4,
      RADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory18_RADR5,
      CLK => NlwBufferSignal_Data_MEM_Mram_data_memory18_CLK,
      I => NlwBufferSignal_Data_MEM_Mram_data_memory18_IN,
      O => Data_MEM_n0012(17),
      WADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory18_WADR0,
      WADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory18_WADR1,
      WADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory18_WADR2,
      WADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory18_WADR3,
      WADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory18_WADR4,
      WADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory18_WADR5,
      WE1 => '1',
      WE2 => '1',
      WE => NlwBufferSignal_Data_MEM_Mram_data_memory18_WE
    );
  Data_MEM_Mram_data_memory19 : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X14Y117",
      INIT => X"0000010DDA152800"
    )
    port map (
      RADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory19_RADR0,
      RADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory19_RADR1,
      RADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory19_RADR2,
      RADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory19_RADR3,
      RADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory19_RADR4,
      RADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory19_RADR5,
      CLK => NlwBufferSignal_Data_MEM_Mram_data_memory19_CLK,
      I => NlwBufferSignal_Data_MEM_Mram_data_memory19_IN,
      O => Data_MEM_n0012(18),
      WADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory19_WADR0,
      WADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory19_WADR1,
      WADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory19_WADR2,
      WADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory19_WADR3,
      WADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory19_WADR4,
      WADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory19_WADR5,
      WE1 => '1',
      WE2 => '1',
      WE => NlwBufferSignal_Data_MEM_Mram_data_memory19_WE
    );
  Data_MEM_Mram_data_memory20 : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X14Y117",
      INIT => X"000001066AE9F400"
    )
    port map (
      RADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory20_RADR0,
      RADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory20_RADR1,
      RADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory20_RADR2,
      RADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory20_RADR3,
      RADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory20_RADR4,
      RADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory20_RADR5,
      CLK => NlwBufferSignal_Data_MEM_Mram_data_memory20_CLK,
      I => NlwBufferSignal_Data_MEM_Mram_data_memory20_IN,
      O => Data_MEM_n0012(19),
      WADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory20_WADR0,
      WADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory20_WADR1,
      WADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory20_WADR2,
      WADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory20_WADR3,
      WADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory20_WADR4,
      WADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory20_WADR5,
      WE1 => '1',
      WE2 => '1',
      WE => NlwBufferSignal_Data_MEM_Mram_data_memory20_WE
    );
  Data_MEM_Mram_data_memory21 : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X14Y117",
      INIT => X"00000103C3E15C00"
    )
    port map (
      RADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory21_RADR0,
      RADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory21_RADR1,
      RADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory21_RADR2,
      RADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory21_RADR3,
      RADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory21_RADR4,
      RADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory21_RADR5,
      CLK => NlwBufferSignal_Data_MEM_Mram_data_memory21_CLK,
      I => NlwBufferSignal_Data_MEM_Mram_data_memory21_IN,
      O => Data_MEM_n0012(20),
      WADR0 => NlwBufferSignal_Data_MEM_Mram_data_memory21_WADR0,
      WADR1 => NlwBufferSignal_Data_MEM_Mram_data_memory21_WADR1,
      WADR2 => NlwBufferSignal_Data_MEM_Mram_data_memory21_WADR2,
      WADR3 => NlwBufferSignal_Data_MEM_Mram_data_memory21_WADR3,
      WADR4 => NlwBufferSignal_Data_MEM_Mram_data_memory21_WADR4,
      WADR5 => NlwBufferSignal_Data_MEM_Mram_data_memory21_WADR5,
      WE1 => '1',
      WE2 => '1',
      WE => NlwBufferSignal_Data_MEM_Mram_data_memory21_WE
    );
  output_11_OBUF_output_11_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(11),
      O => write_data_Reg_File_sig_11_0
    );
  ALU_op_Mmux_sig_output734 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y121",
      INIT => X"FFFFF0F0FFFFF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => ALU_op_Mmux_sig_output733_4714,
      ADR4 => ALU_op_Mmux_sig_output734_4744,
      ADR5 => '1',
      O => output_11_OBUF_4431
    );
  Mux_ALU_DMem_to_Reg_Mmux_output31 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y121",
      INIT => X"55DD50D8"
    )
    port map (
      ADR0 => load_sig,
      ADR1 => Data_MEM_n0012(11),
      ADR3 => store_sig,
      ADR2 => ALU_op_Mmux_sig_output733_4714,
      ADR4 => ALU_op_Mmux_sig_output734_4744,
      O => write_data_Reg_File_sig(11)
    );
  ALU_op_Mmux_sig_output733 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y121",
      INIT => X"0307030300040000"
    )
    port map (
      ADR2 => ALU_operation_sig(1),
      ADR1 => ALU_operation_sig(2),
      ADR3 => ALU_op_operand2_3_mmx_out10,
      ADR0 => Op_2_ALU_sig_4_Q,
      ADR4 => ALU_operation_sig(0),
      ADR5 => ALU_op_Mmux_sig_output1_split_11_0,
      O => ALU_op_Mmux_sig_output734_4744
    );
  ALU_op_operand2_2_mmx_out51_ALU_op_operand2_2_mmx_out51_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output7202,
      O => ALU_op_Mmux_sig_output7202_0
    );
  ALU_op_Mmux_sig_output7203 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y124"
    )
    port map (
      IA => N206,
      IB => N207,
      O => ALU_op_Mmux_sig_output7202,
      SEL => ALU_operation_sig(0)
    );
  ALU_op_Mmux_sig_output7203_F : X_LUT6
    generic map(
      LOC => "SLICE_X14Y124",
      INIT => X"0005000500052227"
    )
    port map (
      ADR0 => ALU_operation_sig(1),
      ADR3 => OP_1_Rs_sig(27),
      ADR2 => Op_2_ALU_sig_27_Q,
      ADR1 => Op_2_ALU_sig_3_Q,
      ADR5 => ALU_op_operand2_2_mmx_out51,
      ADR4 => Op_2_ALU_sig_4_Q,
      O => N206
    );
  ALU_op_Mmux_sig_output7203_G : X_LUT6
    generic map(
      LOC => "SLICE_X14Y124",
      INIT => X"003F005F000C000A"
    )
    port map (
      ADR3 => ALU_operation_sig(1),
      ADR4 => Itype_sig,
      ADR1 => Instruction_4_OBUF_4367,
      ADR5 => ALU_op_Mmux_sig_output720,
      ADR2 => ALU_op_operand2_3_mmx_out10,
      ADR0 => Op_2_Rt_sig_4_0,
      O => N207
    );
  ALU_op_operand2_2_1911 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y124",
      INIT => X"EE00EEFFFF00FFFF"
    )
    port map (
      ADR2 => '1',
      ADR3 => Op_2_ALU_sig_2_Q,
      ADR1 => Op_2_ALU_sig_1_Q,
      ADR0 => Op_2_ALU_sig_0_Q,
      ADR5 => OP_1_Rs_sig(31),
      ADR4 => ALU_op_operand2_1_mmx_out121_0,
      O => ALU_op_operand2_2_mmx_out51
    );
  Instruction_10_OBUF_Instruction_10_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output78,
      O => ALU_op_Mmux_sig_output78_0
    );
  Instruction_10_OBUF_Instruction_10_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output7143_1746,
      O => ALU_op_Mmux_sig_output7143_0
    );
  ALU_op_Mmux_sig_output781 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y125"
    )
    port map (
      IA => N202,
      IB => N203,
      O => ALU_op_Mmux_sig_output78,
      SEL => ALU_operation_sig(1)
    );
  ALU_op_Mmux_sig_output781_F : X_LUT6
    generic map(
      LOC => "SLICE_X14Y125",
      INIT => X"0000010100004545"
    )
    port map (
      ADR3 => '1',
      ADR0 => ALU_operation_sig(0),
      ADR4 => OP_1_Rs_sig_16_0,
      ADR1 => Itype_sig,
      ADR5 => Instruction_10_OBUF_4300,
      ADR2 => Op_2_Rt_sig_16_0,
      O => N202
    );
  ALU_op_Mmux_sig_output781_G : X_LUT6
    generic map(
      LOC => "SLICE_X14Y125",
      INIT => X"0405040004050400"
    )
    port map (
      ADR5 => '1',
      ADR2 => ALU_operation_sig(0),
      ADR0 => Op_2_ALU_sig_4_Q,
      ADR3 => Op_2_ALU_sig_3_Q,
      ADR4 => ALU_op_operand2_2_mmx_out191,
      ADR1 => ALU_op_operand2_2_mmx_out201,
      O => N203
    );
  Instruction_6_1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y125",
      INIT => X"0200014000000240"
    )
    port map (
      ADR1 => PC_output_pc(4),
      ADR2 => PC_output_pc(0),
      ADR3 => PC_output_pc(5),
      ADR4 => PC_output_pc(1),
      ADR0 => PC_output_pc(3),
      ADR5 => PC_output_pc(2),
      O => Instruction_10_OBUF_4300
    );
  Mux_ALU_Mmux_output141 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y125",
      INIT => X"FA50FA50FA50FA50"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => Itype_sig,
      ADR3 => Instruction_10_OBUF_4300,
      ADR2 => Op_2_Rt_sig(21),
      ADR5 => '1',
      O => Op_2_ALU_sig_21_Q
    );
  ALU_op_Mmux_sig_output7144 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y125",
      INIT => X"FEDCC840"
    )
    port map (
      ADR1 => OP_1_Rs_sig(21),
      ADR4 => ALU_operation_sig(0),
      ADR0 => Itype_sig,
      ADR3 => Instruction_10_OBUF_4300,
      ADR2 => Op_2_Rt_sig(21),
      O => ALU_op_Mmux_sig_output7143_1746
    );
  Mux_ALU_DMem_to_Reg_Mmux_output151 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y131",
      INIT => X"7722772255005500"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR0 => load_sig,
      ADR3 => output_22_OBUF_4439,
      ADR5 => Data_MEM_n0012(22),
      ADR1 => store_sig,
      O => write_data_Reg_File_sig(22)
    );
  ALU_op_Mmux_sig_output7155 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y131",
      INIT => X"FCFFFC00FCAAFCAA"
    )
    port map (
      ADR3 => ALU_operation_sig(2),
      ADR2 => ALU_op_Mmux_sig_output7151_4638,
      ADR1 => ALU_op_Mmux_sig_output7152_4639,
      ADR5 => ALU_operation_sig(1),
      ADR4 => ALU_op_Mmux_sig_output7153_0,
      ADR0 => ALU_op_Mmux_sig_output1_split_22_0,
      O => output_22_OBUF_4439
    );
  Mux_ALU_DMem_to_Reg_Mmux_output101 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y131",
      INIT => X"0F0F0000FF0FF000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => load_sig,
      ADR4 => output_18_OBUF_4422,
      ADR3 => Data_MEM_n0012(18),
      ADR5 => store_sig,
      O => write_data_Reg_File_sig(18)
    );
  ALU_op_Mmux_sig_output7105 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y131",
      INIT => X"FFFCFF30AAFCAA30"
    )
    port map (
      ADR3 => ALU_operation_sig(2),
      ADR0 => ALU_op_Mmux_sig_output7101_4631,
      ADR5 => ALU_op_Mmux_sig_output7102_4633,
      ADR1 => ALU_operation_sig(1),
      ADR4 => ALU_op_Mmux_sig_output7103_0,
      ADR2 => ALU_op_Mmux_sig_output1_split_18_0,
      O => output_18_OBUF_4422
    );
  ALU_op_Mmux_sig_output7231 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y127",
      INIT => X"FD00F800D0008000"
    )
    port map (
      ADR1 => Instruction_2_OBUF_4362,
      ADR5 => OP_1_Rs_sig_2_0,
      ADR4 => Op_2_Rt_sig_2_0,
      ADR0 => Itype_sig,
      ADR3 => ALU_operation_sig(1),
      ADR2 => ALU_operation_sig(0),
      O => ALU_op_Mmux_sig_output723_4566
    );
  ALU_op_Mmux_sig_output7255 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y127",
      INIT => X"0000000F11111111"
    )
    port map (
      ADR5 => ALU_operation_sig(1),
      ADR0 => OP_1_Rs_sig(31),
      ADR1 => Op_2_ALU_sig_31_Q,
      ADR4 => Op_2_ALU_sig_3_Q,
      ADR3 => ALU_op_operand2_2_mmx_out171,
      ADR2 => Op_2_ALU_sig_4_Q,
      O => ALU_op_Mmux_sig_output7254_4586
    );
  Op_2_ALU_sig_22_Op_2_ALU_sig_22_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output7153_1841,
      O => ALU_op_Mmux_sig_output7153_0
    );
  Op_2_ALU_sig_22_Op_2_ALU_sig_22_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output7103_1843,
      O => ALU_op_Mmux_sig_output7103_0
    );
  Mux_ALU_Mmux_output151 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y132",
      INIT => X"FCFC3030FCFC3030"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => Itype_sig,
      ADR4 => Instruction_10_OBUF_4300,
      ADR2 => Op_2_Rt_sig_22_0,
      ADR5 => '1',
      O => Op_2_ALU_sig_22_Q
    );
  ALU_op_Mmux_sig_output7154 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y132",
      INIT => X"FEA8BA20"
    )
    port map (
      ADR0 => OP_1_Rs_sig_22_0,
      ADR3 => ALU_operation_sig(0),
      ADR1 => Itype_sig,
      ADR4 => Instruction_10_OBUF_4300,
      ADR2 => Op_2_Rt_sig_22_0,
      O => ALU_op_Mmux_sig_output7153_1841
    );
  Mux_ALU_Mmux_output101 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y132",
      INIT => X"E2E2E2E2E2E2E2E2"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR1 => Itype_sig,
      ADR2 => Instruction_10_OBUF_4300,
      ADR0 => Op_2_Rt_sig_18_0,
      ADR5 => '1',
      O => Op_2_ALU_sig_18_Q
    );
  ALU_op_Mmux_sig_output7104 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y132",
      INIT => X"FFE2E200"
    )
    port map (
      ADR3 => OP_1_Rs_sig_18_0,
      ADR4 => ALU_operation_sig(0),
      ADR1 => Itype_sig,
      ADR2 => Instruction_10_OBUF_4300,
      ADR0 => Op_2_Rt_sig_18_0,
      O => ALU_op_Mmux_sig_output7103_1843
    );
  ALU_op_Mmux_sig_output7311 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y128",
      INIT => X"5E545E540E040E04"
    )
    port map (
      ADR4 => '1',
      ADR0 => Op_2_ALU_sig_4_Q,
      ADR2 => Op_2_ALU_sig_3_Q,
      ADR5 => ALU_op_operand2_2_mmx_out191,
      ADR1 => ALU_op_operand2_2_mmx_out181,
      ADR3 => ALU_op_operand2_2_mmx_out201,
      O => ALU_op_Mmux_sig_output731_4747
    );
  ALU_op_Mmux_sig_output7312 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y128",
      INIT => X"0E0E0000F8081010"
    )
    port map (
      ADR1 => OP_1_Rs_sig_8_0,
      ADR0 => Op_2_ALU_sig_8_Q,
      ADR5 => ALU_operation_sig(0),
      ADR4 => ALU_operation_sig(1),
      ADR2 => ALU_operation_sig(2),
      ADR3 => ALU_op_Mmux_sig_output731_4747,
      O => ALU_op_Mmux_sig_output7311_4652
    );
  ALU_op_operand2_2_811 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y129",
      INIT => X"E4E4F0F0E4E4CCCC"
    )
    port map (
      ADR3 => '1',
      ADR4 => Itype_sig,
      ADR0 => Instruction_2_OBUF_4362,
      ADR1 => ALU_op_operand2_1_mmx_out111_0,
      ADR2 => ALU_op_operand2_1_mmx_out121_0,
      ADR5 => Op_2_Rt_sig_2_0,
      O => ALU_op_operand2_2_mmx_out161
    );
  ALU_op_operand2_2_1111 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y110",
      INIT => X"AEAEBFBFA2A28080"
    )
    port map (
      ADR3 => '1',
      ADR2 => Instruction_2_OBUF_4362,
      ADR4 => Op_2_Rt_sig_2_0,
      ADR1 => Itype_sig,
      ADR0 => ALU_op_operand2_1_mmx_out171_0,
      ADR5 => ALU_op_operand2_1_mmx_out161_0,
      O => ALU_op_operand2_2_mmx_out191
    );
  ALU_op_Mmux_sig_output7272 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y110",
      INIT => X"FCBBFC8830BB3088"
    )
    port map (
      ADR1 => Op_2_ALU_sig_2_Q,
      ADR3 => Mux_ALU_Mmux_output261_4600,
      ADR5 => ALU_op_operand2_1_mmx_out161_0,
      ADR0 => ALU_op_operand2_1_mmx_out141_0,
      ADR4 => ALU_op_operand2_1_mmx_out28_0,
      ADR2 => ALU_op_operand2_1_mmx_out151_0,
      O => ALU_op_Mmux_sig_output7271
    );
  ALU_op_Mmux_sig_output7275_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y110",
      INIT => X"FEFFF2FFF0F1F0FD"
    )
    port map (
      ADR4 => Instruction_4_OBUF_4367,
      ADR0 => Op_2_Rt_sig_4_0,
      ADR1 => Itype_sig,
      ADR2 => ALU_operation_sig(0),
      ADR5 => ALU_op_operand2_3_mmx_out21,
      ADR3 => ALU_op_Mmux_sig_output7271,
      O => N121
    );
  ALU_op_operand2_2_1711 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y110",
      INIT => X"FBCBF8C83B0B3808"
    )
    port map (
      ADR4 => N142,
      ADR5 => N145,
      ADR3 => N143,
      ADR0 => N144,
      ADR2 => Op_2_ALU_sig_0_Q,
      ADR1 => Op_2_ALU_sig_1_Q,
      O => ALU_op_operand2_2_mmx_out31
    );
  ALU_op_operand2_3_811 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y110",
      INIT => X"FF33FF33550F550F"
    )
    port map (
      ADR4 => '1',
      ADR3 => Mux_ALU_Mmux_output261_4600,
      ADR5 => Op_2_ALU_sig_2_Q,
      ADR0 => ALU_op_operand2_1_mmx_out191_0,
      ADR2 => ALU_op_operand2_1_mmx_out171_0,
      ADR1 => ALU_op_operand2_1_mmx_out181_0,
      O => ALU_op_operand2_3_mmx_out21
    );
  ALU_op_Mmux_sig_output7133 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y110",
      INIT => X"0011001100000505"
    )
    port map (
      ADR0 => ALU_operation_sig(0),
      ADR5 => ALU_operation_sig(1),
      ADR2 => Op_2_ALU_sig_20_Q,
      ADR4 => OP_1_Rs_sig_20_0,
      ADR3 => ALU_op_operand2_3_mmx_out21,
      ADR1 => Op_2_ALU_sig_4_Q,
      O => ALU_op_Mmux_sig_output7132_4622
    );
  ALU_op_operand2_3_161 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y111",
      INIT => X"8083B0B38C8FBCBF"
    )
    port map (
      ADR1 => Op_2_ALU_sig_3_Q,
      ADR0 => N22,
      ADR2 => Op_2_ALU_sig_2_Q,
      ADR5 => ALU_op_operand2_1_mmx_out51_0,
      ADR4 => ALU_op_operand2_1_mmx_out41_0,
      ADR3 => ALU_op_operand2_1_mmx_out31_0,
      O => ALU_op_operand2_3_mmx_out16
    );
  ALU_op_operand2_3_161_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y111",
      INIT => X"F5B1F5A0F5B1F5F5"
    )
    port map (
      ADR1 => OP_1_Rs_sig(31),
      ADR5 => OP_1_Rs_sig_30_0,
      ADR3 => Op_2_Rt_sig(1),
      ADR4 => Op_2_Rt_sig_0_0,
      ADR0 => Itype_sig,
      ADR2 => N137,
      O => N22
    );
  ALU_op_operand2_2_1311 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y111",
      INIT => X"FFB84700FFB84700"
    )
    port map (
      ADR5 => '1',
      ADR0 => Instruction_2_OBUF_4362,
      ADR2 => Op_2_Rt_sig_2_0,
      ADR1 => Itype_sig,
      ADR4 => ALU_op_operand2_1_mmx_out191_0,
      ADR3 => ALU_op_operand2_1_mmx_out181_0,
      O => ALU_op_operand2_2_mmx_out201
    );
  ALU_op_Mmux_sig_output713 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y111",
      INIT => X"AA22F0308800C000"
    )
    port map (
      ADR4 => Itype_sig,
      ADR0 => Instruction_4_OBUF_4367,
      ADR2 => Op_2_Rt_sig_4_0,
      ADR1 => Op_2_ALU_sig_3_Q,
      ADR5 => ALU_op_operand2_2_mmx_out191,
      ADR3 => ALU_op_operand2_2_mmx_out201,
      O => ALU_op_Mmux_sig_output7114_4709
    );
  Op_2_ALU_sig_20_Op_2_ALU_sig_20_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output7133_2545,
      O => ALU_op_Mmux_sig_output7133_0
    );
  Mux_ALU_Mmux_output131 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y124",
      INIT => X"CCCCFF00CCCCFF00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => Itype_sig,
      ADR1 => Instruction_10_OBUF_4300,
      ADR3 => Op_2_Rt_sig_20_0,
      ADR5 => '1',
      O => Op_2_ALU_sig_20_Q
    );
  ALU_op_Mmux_sig_output7134 : X_LUT5
    generic map(
      LOC => "SLICE_X28Y124",
      INIT => X"E8E8FAA0"
    )
    port map (
      ADR2 => OP_1_Rs_sig_20_0,
      ADR0 => ALU_operation_sig(0),
      ADR4 => Itype_sig,
      ADR1 => Instruction_10_OBUF_4300,
      ADR3 => Op_2_Rt_sig_20_0,
      O => ALU_op_Mmux_sig_output7133_2545
    );
  ALU_op_operand2_2_911 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y118",
      INIT => X"FFFFFEFFFFFFF2FF"
    )
    port map (
      ADR2 => Op_2_ALU_sig_1_Q,
      ADR4 => Op_2_ALU_sig_2_Q,
      ADR1 => Itype_sig,
      ADR5 => Instruction_0_OBUF_4355,
      ADR0 => Op_2_Rt_sig_0_0,
      ADR3 => OP_1_Rs_sig(31),
      O => ALU_op_operand2_2_mmx_out171
    );
  Ins_MEM_Mram_instruction_memory110 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y118",
      INIT => X"70B7146E336E52E6"
    )
    port map (
      ADR3 => PC_output_pc(3),
      ADR0 => PC_output_pc(5),
      ADR4 => PC_output_pc(0),
      ADR5 => PC_output_pc(1),
      ADR2 => PC_output_pc(2),
      ADR1 => PC_output_pc(4),
      O => Instruction_0_OBUF_4355
    );
  N16_N16_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_operand2_1_mmx_out15,
      O => ALU_op_operand2_1_mmx_out15_0
    );
  ALU_op_operand2_1_71 : X_MUX2
    generic map(
      LOC => "SLICE_X28Y111"
    )
    port map (
      IA => N226,
      IB => N227,
      O => ALU_op_operand2_1_mmx_out15,
      SEL => Itype_sig
    );
  ALU_op_operand2_1_71_F : X_LUT6
    generic map(
      LOC => "SLICE_X28Y111",
      INIT => X"B8B8B8B8FFCC3300"
    )
    port map (
      ADR1 => Op_2_Rt_sig(1),
      ADR5 => Op_2_Rt_sig_0_0,
      ADR0 => OP_1_Rs_sig(1),
      ADR4 => OP_1_Rs_sig_2_0,
      ADR3 => OP_1_Rs_sig_4_0,
      ADR2 => OP_1_Rs_sig(3),
      O => N226
    );
  ALU_op_operand2_1_71_G : X_LUT6
    generic map(
      LOC => "SLICE_X28Y111",
      INIT => X"BBBB8888F3C0F3C0"
    )
    port map (
      ADR5 => Instruction_1_OBUF_4358,
      ADR1 => Instruction_0_OBUF_4355,
      ADR0 => OP_1_Rs_sig(1),
      ADR4 => OP_1_Rs_sig_2_0,
      ADR3 => OP_1_Rs_sig_4_0,
      ADR2 => OP_1_Rs_sig(3),
      O => N227
    );
  ALU_op_operand2_2_23_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y111",
      INIT => X"31313B3B20207F7F"
    )
    port map (
      ADR3 => '1',
      ADR2 => Instruction_1_OBUF_4358,
      ADR4 => OP_1_Rs_sig_2_0,
      ADR1 => OP_1_Rs_sig_0_0,
      ADR5 => Op_2_Rt_sig(1),
      ADR0 => Itype_sig,
      O => N16
    );
  ALU_op_operand2_2_211 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y121",
      INIT => X"FFFFFFFFF3F3505F"
    )
    port map (
      ADR3 => OP_1_Rs_sig_2_0,
      ADR0 => OP_1_Rs_sig_0_0,
      ADR1 => OP_1_Rs_sig(1),
      ADR4 => Op_2_ALU_sig_0_Q,
      ADR2 => Op_2_ALU_sig_1_Q,
      ADR5 => Op_2_ALU_sig_2_Q,
      O => ALU_op_operand2_2_mmx_out7
    );
  ALU_op_operand2_3_151 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y121",
      INIT => X"AAAA3333AAAA00FF"
    )
    port map (
      ADR2 => '1',
      ADR4 => Op_2_ALU_sig_3_Q,
      ADR1 => ALU_op_operand2_1_mmx_out18,
      ADR5 => Op_2_ALU_sig_2_Q,
      ADR3 => ALU_op_operand2_1_mmx_out22,
      ADR0 => ALU_op_operand2_2_mmx_out7,
      O => ALU_op_operand2_3_mmx_out9
    );
  ALU_op_Mmux_sig_output771 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y129",
      INIT => X"0055DDDD00558888"
    )
    port map (
      ADR2 => '1',
      ADR0 => Op_2_ALU_sig_3_Q,
      ADR4 => Op_2_ALU_sig_4_Q,
      ADR5 => ALU_op_operand2_2_mmx_out151,
      ADR3 => ALU_op_operand2_2_mmx_out171,
      ADR1 => ALU_op_operand2_2_mmx_out161,
      O => ALU_op_Mmux_sig_output77
    );
  ALU_op_Mmux_sig_output772 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y129",
      INIT => X"4C484440480A4002"
    )
    port map (
      ADR5 => OP_1_Rs_sig(15),
      ADR3 => Op_2_ALU_sig_15_0,
      ADR2 => ALU_operation_sig(0),
      ADR1 => ALU_operation_sig(1),
      ADR0 => ALU_operation_sig(2),
      ADR4 => ALU_op_Mmux_sig_output77,
      O => ALU_op_Mmux_sig_output771_4699
    );
  ALU_op_Mmux_sig_output7182 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y131",
      INIT => X"0000050500220527"
    )
    port map (
      ADR0 => ALU_operation_sig(1),
      ADR4 => OP_1_Rs_sig(25),
      ADR2 => Op_2_ALU_sig_25_Q,
      ADR5 => Op_2_ALU_sig_3_Q,
      ADR1 => ALU_op_operand2_2_mmx_out231,
      ADR3 => Op_2_ALU_sig_4_Q,
      O => ALU_op_Mmux_sig_output7181_4650
    );
  ALU_op_Mmux_sig_output764 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y134",
      INIT => X"5555CCF000000000"
    )
    port map (
      ADR5 => ALU_op_Mmux_sig_output762_0,
      ADR4 => Op_2_ALU_sig_3_Q,
      ADR1 => ALU_op_operand2_1_mmx_out22,
      ADR3 => Op_2_ALU_sig_2_Q,
      ADR2 => ALU_op_operand2_1_mmx_out26,
      ADR0 => ALU_op_operand2_2_mmx_out12,
      O => ALU_op_Mmux_sig_output763_4689
    );
  ALU_op_operand2_2_1211 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y138",
      INIT => X"AAFA3333AFFF3333"
    )
    port map (
      ADR4 => Op_2_ALU_sig_2_Q,
      ADR0 => Op_2_ALU_sig_1_Q,
      ADR3 => OP_1_Rs_sig(31),
      ADR2 => Op_2_ALU_sig_0_Q,
      ADR5 => OP_1_Rs_sig_30_0,
      ADR1 => ALU_op_operand2_1_mmx_out51_0,
      O => ALU_op_operand2_2_mmx_out25
    );
  ALU_op_Mmux_sig_output7192 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y138",
      INIT => X"0011000000110F0F"
    )
    port map (
      ADR4 => ALU_operation_sig(1),
      ADR5 => OP_1_Rs_sig_26_0,
      ADR2 => Op_2_ALU_sig_26_Q,
      ADR0 => Op_2_ALU_sig_3_Q,
      ADR3 => ALU_op_operand2_2_mmx_out25,
      ADR1 => Op_2_ALU_sig_4_Q,
      O => ALU_op_Mmux_sig_output7191_4637
    );
  ALU_op_Mmux_sig_output7294 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y140",
      INIT => X"FCFCFC0CFC0C0C0C"
    )
    port map (
      ADR0 => '1',
      ADR2 => ALU_operation_sig(1),
      ADR3 => OP_1_Rs_sig_6_0,
      ADR4 => Op_2_ALU_sig_6_Q,
      ADR5 => ALU_operation_sig(0),
      ADR1 => ALU_op_Mmux_sig_output1_split_6_0,
      O => ALU_op_Mmux_sig_output7293_4578
    );
  Mux_ALU_Mmux_output11 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y112",
      INIT => X"FF00FFFFFF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Instruction_0_OBUF_4355,
      ADR5 => Op_2_Rt_sig_0_0,
      ADR4 => Decoder_is_itype_sig1_4502,
      O => Op_2_ALU_sig_0_Q
    );
  ALU_op_operand2_2_31 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y112",
      INIT => X"88DD8ADFAAFF8ADF"
    )
    port map (
      ADR0 => Op_2_ALU_sig_2_Q,
      ADR1 => Op_2_ALU_sig_1_Q,
      ADR5 => OP_1_Rs_sig_0_0,
      ADR4 => Op_2_ALU_sig_0_Q,
      ADR2 => OP_1_Rs_sig(1),
      ADR3 => ALU_op_operand2_1_mmx_out17_0,
      O => ALU_op_operand2_2_mmx_out11
    );
  ALU_op_Mmux_sig_output714 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y112",
      INIT => X"FAFAFFAA50505500"
    )
    port map (
      ADR1 => '1',
      ADR2 => OP_1_Rs_sig(1),
      ADR3 => OP_1_Rs_sig_0_0,
      ADR4 => Op_2_ALU_sig_0_Q,
      ADR0 => Op_2_ALU_sig_1_Q,
      ADR5 => ALU_op_operand2_0_mmx_out151,
      O => ALU_op_Mmux_sig_output7115_4765
    );
  ALU_op_Mmux_sig_output715 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y112",
      INIT => X"00FD00EC00310020"
    )
    port map (
      ADR3 => Op_2_ALU_sig_4_Q,
      ADR1 => Op_2_ALU_sig_3_Q,
      ADR2 => ALU_op_operand2_1_mmx_out28_0,
      ADR0 => Op_2_ALU_sig_2_Q,
      ADR4 => ALU_op_Mmux_sig_output7115_4765,
      ADR5 => ALU_op_operand2_2_mmx_out181,
      O => ALU_op_Mmux_sig_output7116
    );
  ALU_op_operand2_2_mmx_out8_ALU_op_operand2_2_mmx_out8_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_operand2_1_mmx_out17,
      O => ALU_op_operand2_1_mmx_out17_0
    );
  ALU_op_operand2_1_92 : X_MUX2
    generic map(
      LOC => "SLICE_X28Y113"
    )
    port map (
      IA => N234,
      IB => N235,
      O => ALU_op_operand2_1_mmx_out17,
      SEL => Itype_sig
    );
  ALU_op_operand2_1_92_F : X_LUT6
    generic map(
      LOC => "SLICE_X28Y113",
      INIT => X"FFD8AAD855D800D8"
    )
    port map (
      ADR0 => Op_2_Rt_sig(1),
      ADR3 => Op_2_Rt_sig_0_0,
      ADR5 => OP_1_Rs_sig_2_0,
      ADR1 => OP_1_Rs_sig(3),
      ADR2 => OP_1_Rs_sig(5),
      ADR4 => OP_1_Rs_sig_4_0,
      O => N234
    );
  ALU_op_operand2_1_92_G : X_LUT6
    generic map(
      LOC => "SLICE_X28Y113",
      INIT => X"E4E4E4E4FFAA5500"
    )
    port map (
      ADR5 => Instruction_1_OBUF_4358,
      ADR0 => Instruction_0_OBUF_4355,
      ADR2 => OP_1_Rs_sig_2_0,
      ADR1 => OP_1_Rs_sig(3),
      ADR3 => OP_1_Rs_sig(5),
      ADR4 => OP_1_Rs_sig_4_0,
      O => N235
    );
  ALU_op_operand2_2_221 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y113",
      INIT => X"F3F3F3F3FFFFFFBB"
    )
    port map (
      ADR1 => OP_1_Rs_sig_0_0,
      ADR2 => N135,
      ADR0 => Op_2_Rt_sig_2_0,
      ADR4 => Op_2_Rt_sig(1),
      ADR3 => Op_2_Rt_sig_0_0,
      ADR5 => Itype_sig,
      O => ALU_op_operand2_2_mmx_out8
    );
  ALU_op_Mmux_sig_output716_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y113",
      INIT => X"AAAAAAAAAAA8AA20"
    )
    port map (
      ADR4 => Instruction_3_OBUF_4365,
      ADR2 => Op_2_Rt_sig(3),
      ADR1 => Itype_sig,
      ADR0 => ALU_operation_sig(0),
      ADR5 => Op_2_ALU_sig_4_Q,
      ADR3 => ALU_op_operand2_2_mmx_out8,
      O => N147
    );
  Op_2_ALU_sig_24_Op_2_ALU_sig_24_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_ALU_sig_15_Q,
      O => Op_2_ALU_sig_15_0
    );
  Mux_ALU_Mmux_output171 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y125",
      INIT => X"FA0AFA0AFA0AFA0A"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => Itype_sig,
      ADR3 => Instruction_10_OBUF_4300,
      ADR0 => Op_2_Rt_sig_24_0,
      ADR5 => '1',
      O => Op_2_ALU_sig_24_Q
    );
  Mux_ALU_Mmux_output71 : X_LUT5
    generic map(
      LOC => "SLICE_X28Y125",
      INIT => X"FF0FF000"
    )
    port map (
      ADR0 => '1',
      ADR4 => Op_2_Rt_sig(15),
      ADR2 => Itype_sig,
      ADR3 => Instruction_10_OBUF_4300,
      ADR1 => '1',
      O => Op_2_ALU_sig_15_Q
    );
  ALU_op_Mmux_sig_output7293 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y141",
      INIT => X"0000005003030353"
    )
    port map (
      ADR2 => ALU_operation_sig(0),
      ADR1 => Op_2_ALU_sig_6_Q,
      ADR5 => OP_1_Rs_sig_6_0,
      ADR4 => Op_2_ALU_sig_3_Q,
      ADR0 => ALU_op_operand2_2_mmx_out12,
      ADR3 => Op_2_ALU_sig_4_Q,
      O => ALU_op_Mmux_sig_output7292_4767
    );
  ALU_op_Mmux_sig_output7295 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y141",
      INIT => X"7722F0F05500F0F0"
    )
    port map (
      ADR4 => ALU_operation_sig(2),
      ADR0 => ALU_operation_sig(1),
      ADR3 => ALU_op_Mmux_sig_output7292_4767,
      ADR5 => ALU_op_Mmux_sig_output7291,
      ADR1 => ALU_operation_sig(0),
      ADR2 => ALU_op_Mmux_sig_output7293_4578,
      O => output_6_OBUF_4454
    );
  ALU_op_operand2_1_mmx_out161_ALU_op_operand2_1_mmx_out161_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_operand2_1_mmx_out161,
      O => ALU_op_operand2_1_mmx_out161_0
    );
  ALU_op_operand2_1_811 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y109"
    )
    port map (
      IA => N248,
      IB => N249,
      O => ALU_op_operand2_1_mmx_out161,
      SEL => Itype_sig
    );
  ALU_op_operand2_1_811_F : X_LUT6
    generic map(
      LOC => "SLICE_X29Y109",
      INIT => X"F0CCF0CCFFAA00AA"
    )
    port map (
      ADR3 => Op_2_Rt_sig(1),
      ADR5 => Op_2_Rt_sig_0_0,
      ADR2 => OP_1_Rs_sig(19),
      ADR4 => OP_1_Rs_sig_18_0,
      ADR0 => OP_1_Rs_sig_16_0,
      ADR1 => OP_1_Rs_sig(17),
      O => N248
    );
  ALU_op_operand2_1_811_G : X_LUT6
    generic map(
      LOC => "SLICE_X29Y109",
      INIT => X"F0CCF0CCFFAA00AA"
    )
    port map (
      ADR5 => Instruction_0_OBUF_4355,
      ADR3 => Instruction_1_OBUF_4358,
      ADR2 => OP_1_Rs_sig(19),
      ADR1 => OP_1_Rs_sig(17),
      ADR0 => OP_1_Rs_sig_16_0,
      ADR4 => OP_1_Rs_sig_18_0,
      O => N249
    );
  ALU_op_operand2_1_42 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y150",
      INIT => X"CCF0FFAACCF000AA"
    )
    port map (
      ADR4 => Op_2_ALU_sig_0_Q,
      ADR3 => Op_2_ALU_sig_1_Q,
      ADR1 => OP_1_Rs_sig(23),
      ADR2 => OP_1_Rs_sig(25),
      ADR0 => OP_1_Rs_sig_26_0,
      ADR5 => OP_1_Rs_sig_24_0,
      O => ALU_op_operand2_1_mmx_out12
    );
  Op_2_ALU_sig_14_Op_2_ALU_sig_14_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig(3),
      O => Write_Reg_Address_sig_3_0
    );
  Mux_ALU_Mmux_output61 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y121",
      INIT => X"CCFFCC00CCFFCC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => Itype_sig,
      ADR1 => Instruction_14_OBUF_4216,
      ADR4 => Op_2_Rt_sig_14_0,
      ADR5 => '1',
      O => Op_2_ALU_sig_14_Q
    );
  Mux_Rd_Rt_Mmux_output41 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y121",
      INIT => X"AACCAACC"
    )
    port map (
      ADR2 => '1',
      ADR0 => Instruction_19_OBUF_4215,
      ADR3 => Itype_sig,
      ADR1 => Instruction_14_OBUF_4216,
      ADR4 => '1',
      O => Write_Reg_Address_sig(3)
    );
  ALU_op_Mmux_sig_output731 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y121",
      INIT => X"232F232F202C202C"
    )
    port map (
      ADR4 => '1',
      ADR2 => Op_2_ALU_sig_3_Q,
      ADR1 => Op_2_ALU_sig_4_Q,
      ADR5 => ALU_op_operand2_2_mmx_out31,
      ADR3 => ALU_op_operand2_2_mmx_out51,
      ADR0 => ALU_op_operand2_2_mmx_out41,
      O => ALU_op_Mmux_sig_output73
    );
  ALU_op_Mmux_sig_output732 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y121",
      INIT => X"0A00A8A80B018080"
    )
    port map (
      ADR1 => OP_1_Rs_sig(11),
      ADR5 => Op_2_ALU_sig_11_Q,
      ADR2 => ALU_operation_sig(0),
      ADR0 => ALU_operation_sig(1),
      ADR4 => ALU_operation_sig(2),
      ADR3 => ALU_op_Mmux_sig_output73,
      O => ALU_op_Mmux_sig_output733_4714
    );
  ALU_op_operand2_1_212 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y150",
      INIT => X"FFB8CCB833B800B8"
    )
    port map (
      ADR1 => Op_2_ALU_sig_0_Q,
      ADR3 => Op_2_ALU_sig_1_Q,
      ADR5 => OP_1_Rs_sig(15),
      ADR0 => OP_1_Rs_sig(17),
      ADR2 => OP_1_Rs_sig_18_0,
      ADR4 => OP_1_Rs_sig_16_0,
      O => ALU_op_operand2_1_mmx_out3
    );
  ALU_op_Mmux_sig_output7191 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y150",
      INIT => X"FFAA5500E4E4E4E4"
    )
    port map (
      ADR0 => Op_2_ALU_sig_2_Q,
      ADR5 => Op_2_ALU_sig_3_Q,
      ADR4 => ALU_op_operand2_1_mmx_out26,
      ADR2 => ALU_op_operand2_1_mmx_out7,
      ADR1 => ALU_op_operand2_1_mmx_out12,
      ADR3 => ALU_op_operand2_1_mmx_out3,
      O => ALU_op_Mmux_sig_output719
    );
  ALU_op_Mmux_sig_output7151 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y150",
      INIT => X"CCAACCAAFFF000F0"
    )
    port map (
      ADR3 => Op_2_ALU_sig_2_Q,
      ADR5 => Op_2_ALU_sig_3_Q,
      ADR1 => ALU_op_operand2_1_mmx_out22,
      ADR4 => ALU_op_operand2_1_mmx_out3,
      ADR2 => ALU_op_operand2_1_mmx_out7,
      ADR0 => ALU_op_operand2_1_mmx_out26,
      O => ALU_op_Mmux_sig_output715_4760
    );
  ALU_op_Mmux_sig_output7152 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y150",
      INIT => X"0300070400000000"
    )
    port map (
      ADR5 => ALU_operation_sig(0),
      ADR2 => ALU_operation_sig(1),
      ADR1 => Op_2_ALU_sig_4_Q,
      ADR4 => ALU_op_operand2_2_mmx_out12,
      ADR0 => Op_2_ALU_sig_3_Q,
      ADR3 => ALU_op_Mmux_sig_output715_4760,
      O => ALU_op_Mmux_sig_output7151_4638
    );
  output_9_OBUF_output_9_OBUF_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(9),
      O => write_data_Reg_File_sig_9_0
    );
  ALU_op_Mmux_sig_output7324 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y126",
      INIT => X"FFAAFFAAFFAAFFAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => ALU_op_Mmux_sig_output7321_4657,
      ADR3 => ALU_op_Mmux_sig_output7322_4758,
      ADR5 => '1',
      O => output_9_OBUF_4452
    );
  Mux_ALU_DMem_to_Reg_Mmux_output321 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y126",
      INIT => X"3030FFAA"
    )
    port map (
      ADR4 => load_sig,
      ADR2 => Data_MEM_n0012(9),
      ADR1 => store_sig,
      ADR0 => ALU_op_Mmux_sig_output7321_4657,
      ADR3 => ALU_op_Mmux_sig_output7322_4758,
      O => write_data_Reg_File_sig(9)
    );
  ALU_op_Mmux_sig_output7323 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y126",
      INIT => X"0000000004FF0400"
    )
    port map (
      ADR5 => ALU_operation_sig(1),
      ADR3 => ALU_operation_sig(2),
      ADR0 => ALU_op_operand2_3_mmx_out8,
      ADR2 => Op_2_ALU_sig_4_Q,
      ADR1 => ALU_operation_sig(0),
      ADR4 => ALU_op_Mmux_sig_output1_split_9_0,
      O => ALU_op_Mmux_sig_output7322_4758
    );
  ALU_op_Mmux_sig_output784 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y126",
      INIT => X"FCFCFFF0C0C0F000"
    )
    port map (
      ADR0 => '1',
      ADR2 => OP_1_Rs_sig_16_0,
      ADR4 => Itype_sig,
      ADR1 => Instruction_10_OBUF_4300,
      ADR3 => Op_2_Rt_sig_16_0,
      ADR5 => ALU_operation_sig(0),
      O => ALU_op_Mmux_sig_output783_4696
    );
  ALU_op_Mmux_sig_output7252_ALU_op_Mmux_sig_output7252_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output7193_2270,
      O => ALU_op_Mmux_sig_output7193_0
    );
  ALU_op_Mmux_sig_output7253 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y138",
      INIT => X"BBBBB8B88888B8B8"
    )
    port map (
      ADR3 => '1',
      ADR1 => Op_2_ALU_sig_1_Q,
      ADR5 => OP_1_Rs_sig_30_0,
      ADR4 => Op_2_ALU_sig_0_Q,
      ADR2 => OP_1_Rs_sig(31),
      ADR0 => ALU_op_operand2_0_mmx_out15,
      O => ALU_op_Mmux_sig_output7252_4581
    );
  Mux_ALU_Mmux_output191 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y138",
      INIT => X"F0F0FF00F0F0FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => Itype_sig,
      ADR2 => Instruction_10_OBUF_4300,
      ADR3 => Op_2_Rt_sig_26_0,
      ADR5 => '1',
      O => Op_2_ALU_sig_26_Q
    );
  ALU_op_Mmux_sig_output7194 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y138",
      INIT => X"E8E8EE88"
    )
    port map (
      ADR1 => OP_1_Rs_sig_26_0,
      ADR0 => ALU_operation_sig(0),
      ADR4 => Itype_sig,
      ADR2 => Instruction_10_OBUF_4300,
      ADR3 => Op_2_Rt_sig_26_0,
      O => ALU_op_Mmux_sig_output7193_2270
    );
  ALU_op_Mmux_sig_output7301_ALU_op_Mmux_sig_output7301_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(10),
      O => write_data_Reg_File_sig_10_0
    );
  ALU_op_Mmux_sig_output7302 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y125",
      INIT => X"54FE10BA54FE10BA"
    )
    port map (
      ADR5 => '1',
      ADR0 => Op_2_ALU_sig_4_Q,
      ADR4 => ALU_op_operand2_2_mmx_out151,
      ADR1 => Op_2_ALU_sig_3_Q,
      ADR2 => ALU_op_Mmux_sig_output730,
      ADR3 => ALU_op_operand2_3_mmx_out51,
      O => ALU_op_Mmux_sig_output7301_4662
    );
  ALU_op_operand2_3_1111 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y125",
      INIT => X"888B888BBB8BBB8B"
    )
    port map (
      ADR4 => '1',
      ADR1 => Op_2_ALU_sig_3_Q,
      ADR5 => ALU_op_operand2_1_mmx_out121_0,
      ADR3 => Op_2_ALU_sig_2_Q,
      ADR2 => ALU_op_operand2_1_mmx_out111_0,
      ADR0 => ALU_op_operand2_2_mmx_out171,
      O => ALU_op_operand2_3_mmx_out51
    );
  ALU_op_Mmux_sig_output724 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y125",
      INIT => X"FFFFFF00FFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => ALU_op_Mmux_sig_output726,
      ADR4 => ALU_op_Mmux_sig_output7210,
      ADR5 => '1',
      O => output_10_OBUF_4427
    );
  Mux_ALU_DMem_to_Reg_Mmux_output21 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y125",
      INIT => X"2F2F2F20"
    )
    port map (
      ADR2 => load_sig,
      ADR0 => Data_MEM_n0012(10),
      ADR1 => store_sig,
      ADR3 => ALU_op_Mmux_sig_output726,
      ADR4 => ALU_op_Mmux_sig_output7210,
      O => write_data_Reg_File_sig(10)
    );
  ALU_op_Mmux_sig_output723 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y125",
      INIT => X"0100010033330000"
    )
    port map (
      ADR1 => ALU_operation_sig(1),
      ADR5 => ALU_operation_sig(2),
      ADR0 => ALU_op_operand2_3_mmx_out9,
      ADR2 => Op_2_ALU_sig_4_Q,
      ADR3 => ALU_operation_sig(0),
      ADR4 => ALU_op_Mmux_sig_output1_split_10_0,
      O => ALU_op_Mmux_sig_output7210
    );
  Op_2_ALU_sig_19_Op_2_ALU_sig_19_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output7113_2109,
      O => ALU_op_Mmux_sig_output7113_0
    );
  Op_2_ALU_sig_19_Op_2_ALU_sig_19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig(2),
      O => Write_Reg_Address_sig_2_0
    );
  Mux_ALU_Mmux_output111 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y122",
      INIT => X"F0F0FF00F0F0FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => Itype_sig,
      ADR2 => Instruction_10_OBUF_4300,
      ADR3 => Op_2_Rt_sig(19),
      ADR5 => '1',
      O => Op_2_ALU_sig_19_Q
    );
  ALU_op_Mmux_sig_output7114 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y122",
      INIT => X"E8E8EE88"
    )
    port map (
      ADR0 => OP_1_Rs_sig(19),
      ADR1 => ALU_operation_sig(0),
      ADR4 => Itype_sig,
      ADR2 => Instruction_10_OBUF_4300,
      ADR3 => Op_2_Rt_sig(19),
      O => ALU_op_Mmux_sig_output7113_2109
    );
  Mux_ALU_Mmux_output51 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y122",
      INIT => X"AAAAF0F0AAAAF0F0"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => Itype_sig,
      ADR0 => Instruction_13_OBUF_4346,
      ADR2 => Op_2_Rt_sig(13),
      ADR5 => '1',
      O => Op_2_ALU_sig_13_Q
    );
  Mux_Rd_Rt_Mmux_output31 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y122",
      INIT => X"FF00AAAA"
    )
    port map (
      ADR1 => '1',
      ADR3 => Instruction_18_OBUF_4345,
      ADR4 => Itype_sig,
      ADR0 => Instruction_13_OBUF_4346,
      ADR2 => '1',
      O => Write_Reg_Address_sig(2)
    );
  Mux_ALU_DMem_to_Reg_Mmux_output291 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y122",
      INIT => X"00AAF0AA00AAF0AA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => load_sig,
      ADR0 => output_6_OBUF_4454,
      ADR2 => Data_MEM_n0012(6),
      ADR4 => store_sig,
      O => write_data_Reg_File_sig(6)
    );
  Decoder_is_store_sig_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y122",
      INIT => X"0000000000000300"
    )
    port map (
      ADR0 => '1',
      ADR2 => Instruction_26_OBUF_4445,
      ADR1 => Instruction_27_OBUF_4444,
      ADR5 => Instruction_28_OBUF_4443,
      ADR3 => Instruction_29_OBUF_4222,
      ADR4 => Instruction_30_OBUF_4220,
      O => store_sig
    );
  Op_2_ALU_sig_17_Op_2_ALU_sig_17_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output793_2232,
      O => ALU_op_Mmux_sig_output793_0
    );
  Mux_ALU_Mmux_output91 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y129",
      INIT => X"AAAAFF00AAAAFF00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => Itype_sig,
      ADR0 => Instruction_10_OBUF_4300,
      ADR3 => Op_2_Rt_sig(17),
      ADR5 => '1',
      O => Op_2_ALU_sig_17_Q
    );
  ALU_op_Mmux_sig_output794 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y129",
      INIT => X"E8E8FCC0"
    )
    port map (
      ADR1 => OP_1_Rs_sig(17),
      ADR2 => ALU_operation_sig(0),
      ADR4 => Itype_sig,
      ADR0 => Instruction_10_OBUF_4300,
      ADR3 => Op_2_Rt_sig(17),
      O => ALU_op_Mmux_sig_output793_2232
    );
  ALU_op_Mmux_sig_output793 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y129",
      INIT => X"0000005501010101"
    )
    port map (
      ADR0 => ALU_operation_sig(0),
      ADR5 => ALU_operation_sig(1),
      ADR2 => Op_2_ALU_sig_17_Q,
      ADR1 => OP_1_Rs_sig(17),
      ADR4 => ALU_op_operand2_3_mmx_out151,
      ADR3 => Op_2_ALU_sig_4_Q,
      O => ALU_op_Mmux_sig_output792_4686
    );
  ALU_op_Mmux_sig_output7110_ALU_op_Mmux_sig_output7110_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output762_2138,
      O => ALU_op_Mmux_sig_output762_0
    );
  ALU_op_Mmux_sig_output712 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y123",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => ALU_operation_sig(2),
      ADR3 => ALU_operation_sig(0),
      ADR5 => '1',
      O => ALU_op_Mmux_sig_output7110
    );
  ALU_op_Mmux_sig_output763 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y123",
      INIT => X"47000000"
    )
    port map (
      ADR1 => Itype_sig,
      ADR0 => Instruction_4_OBUF_4367,
      ADR2 => Op_2_Rt_sig_4_0,
      ADR4 => ALU_operation_sig(2),
      ADR3 => ALU_operation_sig(0),
      O => ALU_op_Mmux_sig_output762_2138
    );
  Ins_MEM_Mram_instruction_memory41 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y123",
      INIT => X"252D2020373E708C"
    )
    port map (
      ADR5 => PC_output_pc(1),
      ADR1 => PC_output_pc(5),
      ADR2 => PC_output_pc(4),
      ADR3 => PC_output_pc(0),
      ADR4 => PC_output_pc(3),
      ADR0 => PC_output_pc(2),
      O => Instruction_4_OBUF_4367
    );
  Mux_ALU_DMem_to_Reg_Mmux_output131 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y123",
      INIT => X"0FFF00F00F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => load_sig,
      ADR4 => output_20_OBUF_4436,
      ADR5 => Data_MEM_n0012(20),
      ADR3 => store_sig,
      O => write_data_Reg_File_sig(20)
    );
  ALU_op_Mmux_sig_output7135 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y123",
      INIT => X"FFF5EEE4AAA0EEE4"
    )
    port map (
      ADR0 => ALU_operation_sig(2),
      ADR2 => ALU_op_Mmux_sig_output7131_4616,
      ADR3 => ALU_op_Mmux_sig_output7132_4622,
      ADR4 => ALU_operation_sig(1),
      ADR5 => ALU_op_Mmux_sig_output7133_0,
      ADR1 => ALU_op_Mmux_sig_output1_split_20_0,
      O => output_20_OBUF_4436
    );
  Mux_ALU_DMem_to_Reg_Mmux_output61 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y131",
      INIT => X"00FF0000F0FFF000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => load_sig,
      ADR4 => output_14_OBUF_4428,
      ADR2 => Data_MEM_n0012(14),
      ADR5 => store_sig,
      O => write_data_Reg_File_sig(14)
    );
  ALU_op_Mmux_sig_output765 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y131",
      INIT => X"FF00FF00FFBBFFAA"
    )
    port map (
      ADR2 => '1',
      ADR5 => ALU_operation_sig(1),
      ADR4 => ALU_op_Mmux_sig_output1_split_14_0,
      ADR1 => ALU_operation_sig(2),
      ADR0 => ALU_op_Mmux_sig_output763_4689,
      ADR3 => ALU_op_Mmux_sig_output761_4688,
      O => output_14_OBUF_4428
    );
  Op_2_ALU_sig_27_Op_2_ALU_sig_27_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output7203_pack_1,
      O => ALU_op_Mmux_sig_output7203_4756
    );
  Mux_ALU_Mmux_output201 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y124",
      INIT => X"FA50FA50FA50FA50"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => Itype_sig,
      ADR3 => Instruction_10_OBUF_4300,
      ADR2 => Op_2_Rt_sig(27),
      ADR5 => '1',
      O => Op_2_ALU_sig_27_Q
    );
  ALU_op_Mmux_sig_output7204 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y124",
      INIT => X"FEDCC840"
    )
    port map (
      ADR1 => OP_1_Rs_sig(27),
      ADR4 => ALU_operation_sig(0),
      ADR0 => Itype_sig,
      ADR3 => Instruction_10_OBUF_4300,
      ADR2 => Op_2_Rt_sig(27),
      O => ALU_op_Mmux_sig_output7203_pack_1
    );
  ALU_op_Mmux_sig_output7205 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y124",
      INIT => X"F0F0FF00F0F0AAAA"
    )
    port map (
      ADR1 => '1',
      ADR4 => ALU_operation_sig(2),
      ADR3 => ALU_op_Mmux_sig_output7203_4756,
      ADR5 => ALU_operation_sig(1),
      ADR0 => ALU_op_Mmux_sig_output1_split_27_0,
      ADR2 => ALU_op_Mmux_sig_output7202_0,
      O => output_27_OBUF_4306
    );
  ALU_op_Mmux_sig_output7153 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y132",
      INIT => X"0000000000110A1B"
    )
    port map (
      ADR5 => ALU_operation_sig(0),
      ADR0 => ALU_operation_sig(1),
      ADR1 => Op_2_ALU_sig_22_Q,
      ADR3 => OP_1_Rs_sig_22_0,
      ADR4 => ALU_op_operand2_3_mmx_out41,
      ADR2 => Op_2_ALU_sig_4_Q,
      O => ALU_op_Mmux_sig_output7152_4639
    );
  ALU_op_Mmux_sig_output7103 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y132",
      INIT => X"0000000000053035"
    )
    port map (
      ADR5 => ALU_operation_sig(0),
      ADR2 => ALU_operation_sig(1),
      ADR0 => Op_2_ALU_sig_18_Q,
      ADR3 => OP_1_Rs_sig_18_0,
      ADR1 => ALU_op_operand2_3_mmx_out16,
      ADR4 => Op_2_ALU_sig_4_Q,
      O => ALU_op_Mmux_sig_output7102_4633
    );
  ALU_op_Mmux_sig_output7243 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y139",
      INIT => X"FFFF0000EE22EE22"
    )
    port map (
      ADR2 => '1',
      ADR5 => Op_2_ALU_sig_1_Q,
      ADR3 => OP_1_Rs_sig(29),
      ADR1 => Op_2_ALU_sig_0_Q,
      ADR0 => OP_1_Rs_sig_30_0,
      ADR4 => ALU_op_operand2_0_mmx_out14,
      O => ALU_op_Mmux_sig_output7242_4571
    );
  ALU_op_operand2_0_61 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y139",
      INIT => X"CCCCEE44DD88FF00"
    )
    port map (
      ADR2 => '1',
      ADR0 => Itype_sig,
      ADR4 => Instruction_0_OBUF_4355,
      ADR3 => OP_1_Rs_sig_28_0,
      ADR1 => OP_1_Rs_sig(27),
      ADR5 => Op_2_Rt_sig_0_0,
      O => ALU_op_operand2_0_mmx_out14
    );
  ALU_op_Mmux_sig_output7211 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y140",
      INIT => X"FF00F0F0CCCCF0F0"
    )
    port map (
      ADR0 => '1',
      ADR4 => Op_2_ALU_sig_1_Q,
      ADR1 => OP_1_Rs_sig_26_0,
      ADR5 => Op_2_ALU_sig_0_Q,
      ADR3 => OP_1_Rs_sig(25),
      ADR2 => ALU_op_operand2_0_mmx_out14,
      O => ALU_op_Mmux_sig_output721_4559
    );
  ALU_op_operand2_1_251 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y151",
      INIT => X"FCFC3030BB88BB88"
    )
    port map (
      ADR1 => Op_2_ALU_sig_0_Q,
      ADR5 => Op_2_ALU_sig_1_Q,
      ADR4 => OP_1_Rs_sig(19),
      ADR0 => OP_1_Rs_sig(21),
      ADR3 => OP_1_Rs_sig_22_0,
      ADR2 => OP_1_Rs_sig_20_0,
      O => ALU_op_operand2_1_mmx_out7
    );
  ALU_op_operand2_1_mmx_out22_ALU_op_operand2_1_mmx_out22_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output7241,
      O => ALU_op_Mmux_sig_output7241_0
    );
  ALU_op_Mmux_sig_output7242 : X_MUX2
    generic map(
      LOC => "SLICE_X23Y150"
    )
    port map (
      IA => N210,
      IB => N211,
      O => ALU_op_Mmux_sig_output7241,
      SEL => Op_2_ALU_sig_3_Q
    );
  ALU_op_Mmux_sig_output7242_F : X_LUT6
    generic map(
      LOC => "SLICE_X23Y150",
      INIT => X"CC88CCC044000C00"
    )
    port map (
      ADR1 => Op_2_ALU_sig_2_Q,
      ADR4 => Itype_sig,
      ADR0 => Instruction_4_OBUF_4367,
      ADR3 => ALU_op_operand2_1_mmx_out12,
      ADR5 => ALU_op_operand2_1_mmx_out22,
      ADR2 => Op_2_Rt_sig_4_0,
      O => N210
    );
  ALU_op_Mmux_sig_output7242_G : X_LUT6
    generic map(
      LOC => "SLICE_X23Y150",
      INIT => X"40004C00EFAFECA0"
    )
    port map (
      ADR3 => Op_2_ALU_sig_2_Q,
      ADR1 => ALU_op_operand2_1_mmx_out3,
      ADR2 => Itype_sig,
      ADR0 => Instruction_4_OBUF_4367,
      ADR4 => Op_2_Rt_sig_4_0,
      ADR5 => ALU_op_operand2_2_mmx_out12,
      O => N211
    );
  ALU_op_operand2_1_151 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y150",
      INIT => X"EEEEFC302222FC30"
    )
    port map (
      ADR1 => Op_2_ALU_sig_0_Q,
      ADR4 => Op_2_ALU_sig_1_Q,
      ADR5 => OP_1_Rs_sig(7),
      ADR3 => OP_1_Rs_sig(9),
      ADR2 => OP_1_Rs_sig_10_0,
      ADR0 => OP_1_Rs_sig_8_0,
      O => ALU_op_operand2_1_mmx_out22
    );
  ALU_op_Mmux_sig_output7282 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y109",
      INIT => X"D8D8D8D8FFAA5500"
    )
    port map (
      ADR0 => Mux_ALU_Mmux_output231_4591,
      ADR5 => Mux_ALU_Mmux_output261_4600,
      ADR3 => ALU_op_operand2_1_mmx_out201_0,
      ADR1 => ALU_op_operand2_1_mmx_out231_0,
      ADR2 => ALU_op_operand2_1_mmx_out221_0,
      ADR4 => ALU_op_operand2_1_mmx_out211_0,
      O => ALU_op_Mmux_sig_output7281_4764
    );
  ALU_op_Mmux_sig_output7286_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y109",
      INIT => X"FFD8FFFFFF00FF27"
    )
    port map (
      ADR1 => Instruction_4_OBUF_4367,
      ADR2 => Op_2_Rt_sig_4_0,
      ADR0 => Itype_sig,
      ADR3 => ALU_operation_sig(0),
      ADR5 => ALU_op_operand2_3_mmx_out31,
      ADR4 => ALU_op_Mmux_sig_output7281_4764,
      O => N109
    );
  ALU_op_operand2_3_911 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y109",
      INIT => X"CCC0CFC3FCF0FFF3"
    )
    port map (
      ADR0 => '1',
      ADR2 => Mux_ALU_Mmux_output231_4591,
      ADR1 => Mux_ALU_Mmux_output261_4600,
      ADR3 => ALU_op_operand2_1_mmx_out261_0,
      ADR5 => ALU_op_operand2_1_mmx_out251_0,
      ADR4 => ALU_op_operand2_1_mmx_out241_0,
      O => ALU_op_operand2_3_mmx_out31
    );
  ALU_op_Mmux_sig_output7143 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y109",
      INIT => X"0010001000100313"
    )
    port map (
      ADR1 => ALU_operation_sig(0),
      ADR2 => ALU_operation_sig(1),
      ADR4 => Op_2_ALU_sig_21_Q,
      ADR5 => OP_1_Rs_sig(21),
      ADR3 => ALU_op_operand2_3_mmx_out31,
      ADR0 => Op_2_ALU_sig_4_Q,
      O => ALU_op_Mmux_sig_output7142_4629
    );
  Ins_MEM_Mram_instruction_memory32 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y107",
      INIT => X"2401003400041120"
    )
    port map (
      ADR3 => PC_output_pc(1),
      ADR2 => PC_output_pc(0),
      ADR0 => PC_output_pc(4),
      ADR4 => PC_output_pc(3),
      ADR1 => PC_output_pc(5),
      ADR5 => PC_output_pc(2),
      O => Instruction_3_OBUF_4365
    );
  ALU_op_Mmux_sig_output7101 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y150",
      INIT => X"FC30BBBBFC308888"
    )
    port map (
      ADR1 => Op_2_ALU_sig_2_Q,
      ADR4 => Op_2_ALU_sig_3_Q,
      ADR3 => ALU_op_operand2_1_mmx_out18,
      ADR0 => ALU_op_operand2_1_mmx_out26,
      ADR5 => ALU_op_operand2_1_mmx_out3,
      ADR2 => ALU_op_operand2_1_mmx_out22,
      O => ALU_op_Mmux_sig_output710
    );
  ALU_op_Mmux_sig_output7102 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y150",
      INIT => X"0000000030007040"
    )
    port map (
      ADR2 => ALU_operation_sig(0),
      ADR5 => ALU_operation_sig(1),
      ADR1 => Op_2_ALU_sig_4_Q,
      ADR0 => ALU_op_operand2_2_mmx_out7,
      ADR4 => Op_2_ALU_sig_3_Q,
      ADR3 => ALU_op_Mmux_sig_output710,
      O => ALU_op_Mmux_sig_output7101_4631
    );
  ALU_op_Mmux_sig_output7244 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y151",
      INIT => X"0044004400F500A0"
    )
    port map (
      ADR3 => Op_2_ALU_sig_2_Q,
      ADR0 => Op_2_ALU_sig_3_Q,
      ADR5 => Op_2_ALU_sig_4_Q,
      ADR1 => ALU_op_operand2_1_mmx_out26,
      ADR4 => ALU_op_Mmux_sig_output7242_4571,
      ADR2 => ALU_op_operand2_1_mmx_out7,
      O => ALU_op_Mmux_sig_output7243_4761
    );
  ALU_op_Mmux_sig_output7246 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y151",
      INIT => X"3F3B00000C080000"
    )
    port map (
      ADR4 => ALU_operation_sig(2),
      ADR1 => ALU_operation_sig(0),
      ADR2 => ALU_operation_sig(1),
      ADR0 => ALU_op_Mmux_sig_output7241_0,
      ADR3 => ALU_op_Mmux_sig_output7243_4761,
      ADR5 => ALU_op_Mmux_sig_output7244_4557,
      O => ALU_op_Mmux_sig_output7245_4568
    );
  ALU_op_Mmux_sig_output7322 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y125",
      INIT => X"00F000C0A0C0A300"
    )
    port map (
      ADR1 => OP_1_Rs_sig(9),
      ADR4 => Op_2_ALU_sig_9_Q,
      ADR5 => ALU_operation_sig(0),
      ADR2 => ALU_operation_sig(1),
      ADR3 => ALU_operation_sig(2),
      ADR0 => ALU_op_Mmux_sig_output732_0,
      O => ALU_op_Mmux_sig_output7321_4657
    );
  ALU_op_operand2_2_611 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y133",
      INIT => X"FBFBFAFAFBFBFFFF"
    )
    port map (
      ADR3 => '1',
      ADR2 => Op_2_ALU_sig_1_Q,
      ADR0 => Op_2_ALU_sig_2_Q,
      ADR4 => Op_2_ALU_sig_0_Q,
      ADR5 => OP_1_Rs_sig_30_0,
      ADR1 => OP_1_Rs_sig(31),
      O => ALU_op_operand2_2_mmx_out141
    );
  ALU_op_Mmux_sig_output7245 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y133",
      INIT => X"0003000300035503"
    )
    port map (
      ADR3 => ALU_operation_sig(1),
      ADR2 => OP_1_Rs_sig_30_0,
      ADR1 => Op_2_ALU_sig_30_Q,
      ADR5 => Op_2_ALU_sig_3_Q,
      ADR4 => ALU_op_operand2_2_mmx_out141,
      ADR0 => Op_2_ALU_sig_4_Q,
      O => ALU_op_Mmux_sig_output7244_4557
    );
  ALU_op_Mmux_sig_output7292_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y117",
      INIT => X"F0F3F0C0FFF300C0"
    )
    port map (
      ADR0 => '1',
      ADR3 => Itype_sig,
      ADR5 => Instruction_2_OBUF_4362,
      ADR4 => ALU_op_operand2_1_mmx_out271_0,
      ADR2 => ALU_op_operand2_1_mmx_out110_0,
      ADR1 => Op_2_Rt_sig_2_0,
      O => N190
    );
  OP_1_Rs_sig_23_OP_1_Rs_sig_23_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Reg_File_Mram_register_file5_RAMD_D1_O,
      O => Reg_File_Mram_register_file5_RAMD_D1_O_0
    );
  OP_1_Rs_sig_23_OP_1_Rs_sig_23_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig(22),
      O => OP_1_Rs_sig_22_0
    );
  OP_1_Rs_sig_23_OP_1_Rs_sig_23_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig(20),
      O => OP_1_Rs_sig_20_0
    );
  OP_1_Rs_sig_23_OP_1_Rs_sig_23_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig(18),
      O => OP_1_Rs_sig_18_0
    );
  Reg_File_Mram_register_file5_RAMD_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X30Y110",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_D1_CLK,
      I => '0',
      O => NLW_Reg_File_Mram_register_file5_RAMD_D1_O_UNCONNECTED,
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file5_RAMD : X_RAMD32
    generic map(
      LOC => "SLICE_X30Y110",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_CLK,
      I => '0',
      O => Reg_File_Mram_register_file5_RAMD_D1_O,
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file5_RAMC_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X30Y110",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_IN,
      O => OP_1_Rs_sig(23),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file5_RAMC : X_RAMD32
    generic map(
      LOC => "SLICE_X30Y110",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_IN,
      O => OP_1_Rs_sig(22),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file5_RAMB_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X30Y110",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_IN,
      O => OP_1_Rs_sig(21),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file5_RAMB : X_RAMD32
    generic map(
      LOC => "SLICE_X30Y110",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_IN,
      O => OP_1_Rs_sig(20),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file5_RAMA_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X30Y110",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_IN,
      O => OP_1_Rs_sig(19),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file5_RAMA : X_RAMD32
    generic map(
      LOC => "SLICE_X30Y110",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_IN,
      O => OP_1_Rs_sig(18),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_WADR4,
      WE => write_enable_sig
    );
  ALU_op_operand2_2_411 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y121",
      INIT => X"FFEE0044DDCC88CC"
    )
    port map (
      ADR2 => '1',
      ADR0 => Itype_sig,
      ADR5 => Instruction_2_OBUF_4362,
      ADR1 => ALU_op_operand2_1_mmx_out29_0,
      ADR4 => ALU_op_operand2_1_mmx_out31_0,
      ADR3 => Op_2_Rt_sig_2_0,
      O => ALU_op_operand2_2_mmx_out121
    );
  Mux_ALU_Mmux_output121 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y112",
      INIT => X"AACCAACCAACCAACC"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR0 => Instruction_1_OBUF_4358,
      ADR1 => Op_2_Rt_sig(1),
      ADR3 => Decoder_is_itype_sig1_4502,
      O => Op_2_ALU_sig_1_Q
    );
  Decoder_is_itype_sig1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y112",
      INIT => X"7FFFFDFE7FFFFDFE"
    )
    port map (
      ADR5 => '1',
      ADR3 => Instruction_28_OBUF_4443,
      ADR0 => Instruction_29_OBUF_4222,
      ADR2 => Instruction_30_OBUF_4220,
      ADR4 => Instruction_26_OBUF_4445,
      ADR1 => Instruction_27_OBUF_4444,
      O => Decoder_is_itype_sig1_4502
    );
  Mux_ALU_Mmux_output231 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y112",
      INIT => X"FF00FFFFFF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Instruction_2_OBUF_4362,
      ADR5 => Op_2_Rt_sig_2_0,
      ADR4 => Itype_sig,
      O => Op_2_ALU_sig_2_Q
    );
  Decoder_is_itype_sig1 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y112",
      INIT => X"7FFFFBFE7FFFFBFE"
    )
    port map (
      ADR5 => '1',
      ADR3 => Instruction_28_OBUF_4443,
      ADR1 => Instruction_29_OBUF_4222,
      ADR0 => Instruction_30_OBUF_4220,
      ADR4 => Instruction_26_OBUF_4445,
      ADR2 => Instruction_27_OBUF_4444,
      O => Itype_sig
    );
  Mux_ALU_Mmux_output121_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y111",
      INIT => X"FFFFFFFF22227777"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR5 => Instruction_1_OBUF_4358,
      ADR0 => Instruction_0_OBUF_4355,
      ADR4 => OP_1_Rs_sig_30_0,
      ADR1 => OP_1_Rs_sig(31),
      O => N137
    );
  ALU_op_operand2_0_611 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y111",
      INIT => X"AFBBAFBBA088A088"
    )
    port map (
      ADR4 => '1',
      ADR2 => Instruction_0_OBUF_4355,
      ADR0 => OP_1_Rs_sig_4_0,
      ADR5 => OP_1_Rs_sig(3),
      ADR1 => Op_2_Rt_sig_0_0,
      ADR3 => Itype_sig,
      O => ALU_op_operand2_0_mmx_out141
    );
  Op_2_Rt_sig_11_Op_2_Rt_sig_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Reg_File_Mram_register_file12_RAMD_D1_O,
      O => Reg_File_Mram_register_file12_RAMD_D1_O_0
    );
  Op_2_Rt_sig_11_Op_2_Rt_sig_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig(10),
      O => Op_2_Rt_sig_10_0
    );
  Op_2_Rt_sig_11_Op_2_Rt_sig_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig(8),
      O => Op_2_Rt_sig_8_0
    );
  Op_2_Rt_sig_11_Op_2_Rt_sig_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig(6),
      O => Op_2_Rt_sig_6_0
    );
  Reg_File_Mram_register_file12_RAMD_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X30Y120",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_D1_CLK,
      I => '0',
      O => NLW_Reg_File_Mram_register_file12_RAMD_D1_O_UNCONNECTED,
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file12_RAMD : X_RAMD32
    generic map(
      LOC => "SLICE_X30Y120",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_CLK,
      I => '0',
      O => Reg_File_Mram_register_file12_RAMD_D1_O,
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file12_RAMC_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X30Y120",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_IN,
      O => Op_2_Rt_sig(11),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file12_RAMC : X_RAMD32
    generic map(
      LOC => "SLICE_X30Y120",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_IN,
      O => Op_2_Rt_sig(10),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file12_RAMB_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X30Y120",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_IN,
      O => Op_2_Rt_sig(9),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file12_RAMB : X_RAMD32
    generic map(
      LOC => "SLICE_X30Y120",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_IN,
      O => Op_2_Rt_sig(8),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file12_RAMA_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X30Y120",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_IN,
      O => Op_2_Rt_sig(7),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file12_RAMA : X_RAMD32
    generic map(
      LOC => "SLICE_X30Y120",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_IN,
      O => Op_2_Rt_sig(6),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_WADR4,
      WE => write_enable_sig
    );
  Op_2_Rt_sig_29_Op_2_Rt_sig_29_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Reg_File_Mram_register_file15_RAMD_D1_O,
      O => Reg_File_Mram_register_file15_RAMD_D1_O_0
    );
  Op_2_Rt_sig_29_Op_2_Rt_sig_29_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig(28),
      O => Op_2_Rt_sig_28_0
    );
  Op_2_Rt_sig_29_Op_2_Rt_sig_29_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig(26),
      O => Op_2_Rt_sig_26_0
    );
  Op_2_Rt_sig_29_Op_2_Rt_sig_29_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig(24),
      O => Op_2_Rt_sig_24_0
    );
  Reg_File_Mram_register_file15_RAMD_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X30Y118",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_D1_CLK,
      I => '0',
      O => NLW_Reg_File_Mram_register_file15_RAMD_D1_O_UNCONNECTED,
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file15_RAMD : X_RAMD32
    generic map(
      LOC => "SLICE_X30Y118",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_CLK,
      I => '0',
      O => Reg_File_Mram_register_file15_RAMD_D1_O,
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file15_RAMC_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X30Y118",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_IN,
      O => Op_2_Rt_sig(29),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file15_RAMC : X_RAMD32
    generic map(
      LOC => "SLICE_X30Y118",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_IN,
      O => Op_2_Rt_sig(28),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file15_RAMB_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X30Y118",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_IN,
      O => Op_2_Rt_sig(27),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file15_RAMB : X_RAMD32
    generic map(
      LOC => "SLICE_X30Y118",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_IN,
      O => Op_2_Rt_sig(26),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file15_RAMA_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X30Y118",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_IN,
      O => Op_2_Rt_sig(25),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file15_RAMA : X_RAMD32
    generic map(
      LOC => "SLICE_X30Y118",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_IN,
      O => Op_2_Rt_sig(24),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_WADR4,
      WE => write_enable_sig
    );
  Decoder_Mmux_alu_op_sel11_1 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y119",
      INIT => X"FFFFFFFFB0BDB0BC"
    )
    port map (
      ADR0 => Instruction_29_OBUF_4222,
      ADR2 => Instruction_28_OBUF_4443,
      ADR1 => Instruction_27_OBUF_4444,
      ADR3 => Instruction_26_OBUF_4445,
      ADR4 => Instruction_0_OBUF_4355,
      ADR5 => Decoder_Mmux_alu_op_sel32,
      O => Decoder_Mmux_alu_op_sel11_4356
    );
  Op_2_Rt_sig_17_Op_2_Rt_sig_17_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Reg_File_Mram_register_file13_RAMD_D1_O,
      O => Reg_File_Mram_register_file13_RAMD_D1_O_0
    );
  Op_2_Rt_sig_17_Op_2_Rt_sig_17_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig(16),
      O => Op_2_Rt_sig_16_0
    );
  Op_2_Rt_sig_17_Op_2_Rt_sig_17_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig(14),
      O => Op_2_Rt_sig_14_0
    );
  Op_2_Rt_sig_17_Op_2_Rt_sig_17_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig(12),
      O => Op_2_Rt_sig_12_0
    );
  Reg_File_Mram_register_file13_RAMD_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X30Y123",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_D1_CLK,
      I => '0',
      O => NLW_Reg_File_Mram_register_file13_RAMD_D1_O_UNCONNECTED,
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file13_RAMD : X_RAMD32
    generic map(
      LOC => "SLICE_X30Y123",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_CLK,
      I => '0',
      O => Reg_File_Mram_register_file13_RAMD_D1_O,
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file13_RAMC_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X30Y123",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_IN,
      O => Op_2_Rt_sig(17),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file13_RAMC : X_RAMD32
    generic map(
      LOC => "SLICE_X30Y123",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_IN,
      O => Op_2_Rt_sig(16),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file13_RAMB_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X30Y123",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_IN,
      O => Op_2_Rt_sig(15),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file13_RAMB : X_RAMD32
    generic map(
      LOC => "SLICE_X30Y123",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_IN,
      O => Op_2_Rt_sig(14),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file13_RAMA_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X30Y123",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_IN,
      O => Op_2_Rt_sig(13),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file13_RAMA : X_RAMD32
    generic map(
      LOC => "SLICE_X30Y123",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_IN,
      O => Op_2_Rt_sig(12),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_WADR4,
      WE => write_enable_sig
    );
  Mux_ALU_Mmux_output321 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y124",
      INIT => X"CFC0CFC0CFC0CFC0"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR2 => Itype_sig,
      ADR1 => Instruction_10_OBUF_4300,
      ADR3 => Op_2_Rt_sig(9),
      O => Op_2_ALU_sig_9_Q
    );
  Instruction_1_OBUF_Instruction_1_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_operand2_1_mmx_out241,
      O => ALU_op_operand2_1_mmx_out241_0
    );
  ALU_op_operand2_1_1711 : X_MUX2
    generic map(
      LOC => "SLICE_X30Y109"
    )
    port map (
      IA => N228,
      IB => N229,
      O => ALU_op_operand2_1_mmx_out241,
      SEL => Itype_sig
    );
  ALU_op_operand2_1_1711_F : X_LUT6
    generic map(
      LOC => "SLICE_X30Y109",
      INIT => X"AACCFFF0AACC00F0"
    )
    port map (
      ADR4 => Op_2_Rt_sig(1),
      ADR3 => Op_2_Rt_sig_0_0,
      ADR0 => OP_1_Rs_sig_24_0,
      ADR1 => OP_1_Rs_sig(23),
      ADR2 => OP_1_Rs_sig(21),
      ADR5 => OP_1_Rs_sig_22_0,
      O => N228
    );
  ALU_op_operand2_1_1711_G : X_LUT6
    generic map(
      LOC => "SLICE_X30Y109",
      INIT => X"EEEEFA504444FA50"
    )
    port map (
      ADR0 => Instruction_0_OBUF_4355,
      ADR4 => Instruction_1_OBUF_4358,
      ADR5 => OP_1_Rs_sig_24_0,
      ADR3 => OP_1_Rs_sig_22_0,
      ADR2 => OP_1_Rs_sig(21),
      ADR1 => OP_1_Rs_sig(23),
      O => N229
    );
  Ins_MEM_Mram_instruction_memory112 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y109",
      INIT => X"0085B08814001008"
    )
    port map (
      ADR2 => PC_output_pc(0),
      ADR3 => PC_output_pc(5),
      ADR0 => PC_output_pc(4),
      ADR1 => PC_output_pc(1),
      ADR4 => PC_output_pc(3),
      ADR5 => PC_output_pc(2),
      O => Instruction_1_OBUF_4358
    );
  ALU_op_Mmux_sig_output7123 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y109",
      INIT => X"00F000FC00F800F8"
    )
    port map (
      ADR1 => ALU_operation_sig(1),
      ADR3 => ALU_operation_sig(0),
      ADR5 => Op_2_ALU_sig_4_Q,
      ADR2 => ALU_op_Mmux_sig_output712_4656,
      ADR0 => ALU_op_Mmux_sig_output7121_4681,
      ADR4 => ALU_op_operand2_3_mmx_out151,
      O => ALU_op_Mmux_sig_output7122_4594
    );
  ALU_op_operand2_3_711 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y109",
      INIT => X"8ACE9BDF02461357"
    )
    port map (
      ADR1 => Op_2_ALU_sig_3_Q,
      ADR5 => ALU_op_operand2_1_mmx_out261_0,
      ADR0 => Op_2_ALU_sig_2_Q,
      ADR3 => ALU_op_operand2_1_mmx_out251_0,
      ADR2 => ALU_op_operand2_1_mmx_out241_0,
      ADR4 => ALU_op_operand2_1_mmx_out231_0,
      O => ALU_op_operand2_3_mmx_out151
    );
  Decoder_Mmux_alu_op_sel11 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y117",
      INIT => X"FFFFFFFFFF550A0E"
    )
    port map (
      ADR3 => Instruction_29_OBUF_4222,
      ADR4 => Instruction_28_OBUF_4443,
      ADR0 => Instruction_27_OBUF_4444,
      ADR2 => Instruction_26_OBUF_4445,
      ADR1 => Instruction_0_OBUF_4355,
      ADR5 => Decoder_Mmux_alu_op_sel32,
      O => ALU_operation_sig(0)
    );
  ALU_op_Mmux_sig_output7126 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y117",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => ALU_operation_sig(1),
      ADR4 => ALU_operation_sig(0),
      O => ALU_op_Mmux_sig_output7125_4613
    );
  Mux_ALU_Mmux_output271 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y117",
      INIT => X"F0F0AAAAF0F0AAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Instruction_4_OBUF_4367,
      ADR0 => Op_2_Rt_sig_4_0,
      ADR4 => Itype_sig,
      O => Op_2_ALU_sig_4_Q
    );
  ALU_op_Mmux_sig_output7163 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y117",
      INIT => X"0000010100550101"
    )
    port map (
      ADR0 => ALU_operation_sig(0),
      ADR4 => ALU_operation_sig(1),
      ADR2 => Op_2_ALU_sig_23_Q,
      ADR1 => OP_1_Rs_sig(23),
      ADR5 => ALU_op_operand2_3_mmx_out51,
      ADR3 => Op_2_ALU_sig_4_Q,
      O => ALU_op_Mmux_sig_output7162_4642
    );
  Mux_ALU_Mmux_output261_Mux_ALU_Mmux_output261_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_operand2_1_mmx_out31,
      O => ALU_op_operand2_1_mmx_out31_0
    );
  ALU_op_operand2_1_2111 : X_MUX2
    generic map(
      LOC => "SLICE_X31Y110"
    )
    port map (
      IA => N260,
      IB => N261,
      O => ALU_op_operand2_1_mmx_out31,
      SEL => Itype_sig
    );
  ALU_op_operand2_1_2111_F : X_LUT6
    generic map(
      LOC => "SLICE_X31Y110",
      INIT => X"AAFFAA00F0CCF0CC"
    )
    port map (
      ADR3 => Op_2_Rt_sig(1),
      ADR5 => Op_2_Rt_sig_0_0,
      ADR0 => OP_1_Rs_sig(21),
      ADR2 => OP_1_Rs_sig_20_0,
      ADR1 => OP_1_Rs_sig_18_0,
      ADR4 => OP_1_Rs_sig(19),
      O => N260
    );
  ALU_op_operand2_1_2111_G : X_LUT6
    generic map(
      LOC => "SLICE_X31Y110",
      INIT => X"B8B8B8B8FF33CC00"
    )
    port map (
      ADR5 => Instruction_1_OBUF_4358,
      ADR1 => Instruction_0_OBUF_4355,
      ADR0 => OP_1_Rs_sig(21),
      ADR2 => OP_1_Rs_sig_20_0,
      ADR4 => OP_1_Rs_sig_18_0,
      ADR3 => OP_1_Rs_sig(19),
      O => N261
    );
  Mux_ALU_Mmux_output261_1 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y110",
      INIT => X"F0F0F0F0CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => Instruction_3_OBUF_4365,
      ADR1 => Op_2_Rt_sig(3),
      ADR5 => Itype_sig,
      O => Mux_ALU_Mmux_output261_4600
    );
  ALU_op_Mmux_sig_output7235 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y118",
      INIT => X"0055000000555555"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => Instruction_2_OBUF_4362,
      ADR0 => OP_1_Rs_sig_2_0,
      ADR5 => Op_2_Rt_sig_2_0,
      ADR4 => Itype_sig,
      O => ALU_op_Mmux_sig_output7234
    );
  ALU_op_Mmux_sig_output7236 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y118",
      INIT => X"0000550001015500"
    )
    port map (
      ADR0 => ALU_operation_sig(1),
      ADR3 => ALU_op_Mmux_sig_output7234,
      ADR4 => ALU_operation_sig(0),
      ADR2 => Op_2_ALU_sig_4_Q,
      ADR1 => Op_2_ALU_sig_3_Q,
      ADR5 => ALU_op_operand2_2_mmx_out7,
      O => ALU_op_Mmux_sig_output7235_4567
    );
  ALU_op_operand2_2_511 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y124",
      INIT => X"CCFCCC0CCFFFC000"
    )
    port map (
      ADR0 => '1',
      ADR2 => Itype_sig,
      ADR3 => Instruction_2_OBUF_4362,
      ADR4 => ALU_op_operand2_1_mmx_out41_0,
      ADR1 => ALU_op_operand2_1_mmx_out51_0,
      ADR5 => Op_2_Rt_sig_2_0,
      O => ALU_op_operand2_2_mmx_out131
    );
  ALU_op_operand2_1_2611 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y115",
      INIT => X"F7D5B391E6C4A280"
    )
    port map (
      ADR1 => Op_2_ALU_sig_0_Q,
      ADR0 => Op_2_ALU_sig_1_Q,
      ADR2 => OP_1_Rs_sig_14_0,
      ADR4 => OP_1_Rs_sig_12_0,
      ADR5 => OP_1_Rs_sig(11),
      ADR3 => OP_1_Rs_sig(13),
      O => ALU_op_operand2_1_mmx_out81
    );
  ALU_op_Mmux_sig_output7301 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y115",
      INIT => X"FF00DD88EE44CCCC"
    )
    port map (
      ADR2 => '1',
      ADR0 => Itype_sig,
      ADR4 => Instruction_2_OBUF_4362,
      ADR1 => ALU_op_operand2_1_mmx_out71_0,
      ADR3 => ALU_op_operand2_1_mmx_out81,
      ADR5 => Op_2_Rt_sig_2_0,
      O => ALU_op_Mmux_sig_output730
    );
  Op_2_ALU_sig_23_Op_2_ALU_sig_23_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output7163_2752,
      O => ALU_op_Mmux_sig_output7163_0
    );
  Mux_ALU_Mmux_output161 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y123",
      INIT => X"FF0FF000FF0FF000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => Itype_sig,
      ADR3 => Instruction_10_OBUF_4300,
      ADR4 => Op_2_Rt_sig(23),
      ADR5 => '1',
      O => Op_2_ALU_sig_23_Q
    );
  ALU_op_Mmux_sig_output7164 : X_LUT5
    generic map(
      LOC => "SLICE_X29Y123",
      INIT => X"EE8EE888"
    )
    port map (
      ADR1 => OP_1_Rs_sig(23),
      ADR0 => ALU_operation_sig(0),
      ADR2 => Itype_sig,
      ADR3 => Instruction_10_OBUF_4300,
      ADR4 => Op_2_Rt_sig(23),
      O => ALU_op_Mmux_sig_output7163_2752
    );
  ALU_op_operand2_2_1711_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y111",
      INIT => X"FFF3FFC00C003F00"
    )
    port map (
      ADR0 => '1',
      ADR2 => Instruction_2_OBUF_4362,
      ADR5 => OP_1_Rs_sig_16_0,
      ADR3 => OP_1_Rs_sig_12_0,
      ADR4 => Op_2_Rt_sig_2_0,
      ADR1 => Itype_sig,
      O => N143
    );
  ALU_op_operand2_2_1711_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y111",
      INIT => X"DC8CDC8CDF80DF80"
    )
    port map (
      ADR4 => '1',
      ADR0 => Instruction_2_OBUF_4362,
      ADR1 => OP_1_Rs_sig(17),
      ADR3 => OP_1_Rs_sig(13),
      ADR5 => Op_2_Rt_sig_2_0,
      ADR2 => Itype_sig,
      O => N144
    );
  ALU_op_operand2_1_191 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y137",
      INIT => X"FF33E2E2CC00E2E2"
    )
    port map (
      ADR1 => Op_2_ALU_sig_0_Q,
      ADR4 => Op_2_ALU_sig_1_Q,
      ADR3 => OP_1_Rs_sig(11),
      ADR2 => OP_1_Rs_sig(13),
      ADR0 => OP_1_Rs_sig_14_0,
      ADR5 => OP_1_Rs_sig_12_0,
      O => ALU_op_operand2_1_mmx_out26
    );
  ALU_op_operand2_2_221_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y113",
      INIT => X"FFFFFFF0FFFFFFF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => Instruction_2_OBUF_4362,
      ADR2 => Instruction_1_OBUF_4358,
      ADR4 => Instruction_0_OBUF_4355,
      O => N135
    );
  ALU_op_operand2_2_1101 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y121",
      INIT => X"AAACAAACCACCCACC"
    )
    port map (
      ADR4 => '1',
      ADR2 => Itype_sig,
      ADR5 => Instruction_2_OBUF_4362,
      ADR1 => ALU_op_operand2_1_mmx_out31_0,
      ADR0 => ALU_op_operand2_1_mmx_out41_0,
      ADR3 => Op_2_Rt_sig_2_0,
      O => ALU_op_operand2_2_mmx_out110
    );
  ALU_op_operand2_2_1811 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y121",
      INIT => X"CDFDC808CDFDC808"
    )
    port map (
      ADR5 => '1',
      ADR2 => Itype_sig,
      ADR3 => Instruction_2_OBUF_4362,
      ADR4 => ALU_op_operand2_1_mmx_out101_0,
      ADR1 => ALU_op_operand2_1_mmx_out111_0,
      ADR0 => Op_2_Rt_sig_2_0,
      O => ALU_op_operand2_2_mmx_out41
    );
  ALU_op_operand2_1_102 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y130",
      INIT => X"EFEA4F4AE5E04540"
    )
    port map (
      ADR2 => Op_2_ALU_sig_0_Q,
      ADR0 => Op_2_ALU_sig_1_Q,
      ADR4 => OP_1_Rs_sig(3),
      ADR1 => OP_1_Rs_sig(5),
      ADR3 => OP_1_Rs_sig_6_0,
      ADR5 => OP_1_Rs_sig_4_0,
      O => ALU_op_operand2_1_mmx_out18
    );
  ALU_op_operand2_2_4 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y130",
      INIT => X"A3A300FFF3F300FF"
    )
    port map (
      ADR4 => Op_2_ALU_sig_2_Q,
      ADR2 => Op_2_ALU_sig_0_Q,
      ADR0 => Op_2_ALU_sig_1_Q,
      ADR5 => OP_1_Rs_sig(1),
      ADR1 => N18,
      ADR3 => ALU_op_operand2_1_mmx_out18,
      O => ALU_op_operand2_2_mmx_out12
    );
  ALU_op_operand2_1_2711 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y125",
      INIT => X"FCFCBB883030BB88"
    )
    port map (
      ADR1 => Op_2_ALU_sig_0_Q,
      ADR4 => Op_2_ALU_sig_1_Q,
      ADR5 => OP_1_Rs_sig_18_0,
      ADR0 => OP_1_Rs_sig_16_0,
      ADR3 => OP_1_Rs_sig(15),
      ADR2 => OP_1_Rs_sig(17),
      O => ALU_op_operand2_1_mmx_out91
    );
  ALU_op_operand2_2_711 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y125",
      INIT => X"BBAF88A0BBAF88A0"
    )
    port map (
      ADR5 => '1',
      ADR3 => Itype_sig,
      ADR1 => Instruction_2_OBUF_4362,
      ADR4 => ALU_op_operand2_1_mmx_out91,
      ADR0 => ALU_op_operand2_1_mmx_out101_0,
      ADR2 => Op_2_Rt_sig_2_0,
      O => ALU_op_operand2_2_mmx_out151
    );
  ALU_op_Mmux_sig_output721 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y125",
      INIT => X"1111FCFC11113030"
    )
    port map (
      ADR3 => '1',
      ADR1 => Op_2_ALU_sig_3_Q,
      ADR4 => Op_2_ALU_sig_4_Q,
      ADR2 => ALU_op_operand2_2_mmx_out24,
      ADR0 => ALU_op_operand2_2_mmx_out25,
      ADR5 => ALU_op_operand2_2_mmx_out110,
      O => ALU_op_Mmux_sig_output72
    );
  ALU_op_Mmux_sig_output722 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y125",
      INIT => X"5000E0E051018080"
    )
    port map (
      ADR1 => OP_1_Rs_sig_10_0,
      ADR5 => Op_2_ALU_sig_10_0,
      ADR0 => ALU_operation_sig(0),
      ADR2 => ALU_operation_sig(1),
      ADR4 => ALU_operation_sig(2),
      ADR3 => ALU_op_Mmux_sig_output72,
      O => ALU_op_Mmux_sig_output726
    );
  ALU_op_operand2_2_1711_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y112",
      INIT => X"FFF500A0FAF050F0"
    )
    port map (
      ADR1 => '1',
      ADR3 => Instruction_2_OBUF_4362,
      ADR2 => OP_1_Rs_sig_14_0,
      ADR4 => OP_1_Rs_sig_18_0,
      ADR5 => Op_2_Rt_sig_2_0,
      ADR0 => Itype_sig,
      O => N145
    );
  ALU_op_operand2_2_4_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y127",
      INIT => X"FF33FF0FCC00F000"
    )
    port map (
      ADR0 => '1',
      ADR4 => Itype_sig,
      ADR1 => Instruction_1_OBUF_4358,
      ADR5 => OP_1_Rs_sig_2_0,
      ADR3 => OP_1_Rs_sig_0_0,
      ADR2 => Op_2_Rt_sig(1),
      O => N18
    );
  Op_2_ALU_sig_25_Op_2_ALU_sig_25_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output7183_2818,
      O => ALU_op_Mmux_sig_output7183_0
    );
  Mux_ALU_Mmux_output181 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y131",
      INIT => X"FF55AA00FF55AA00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => Itype_sig,
      ADR3 => Instruction_10_OBUF_4300,
      ADR4 => Op_2_Rt_sig(25),
      ADR5 => '1',
      O => Op_2_ALU_sig_25_Q
    );
  ALU_op_Mmux_sig_output7184 : X_LUT5
    generic map(
      LOC => "SLICE_X29Y131",
      INIT => X"FCD4E8C0"
    )
    port map (
      ADR2 => OP_1_Rs_sig(25),
      ADR1 => ALU_operation_sig(0),
      ADR0 => Itype_sig,
      ADR3 => Instruction_10_OBUF_4300,
      ADR4 => Op_2_Rt_sig(25),
      O => ALU_op_Mmux_sig_output7183_2818
    );
  ALU_op_operand2_2_1611 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y126",
      INIT => X"A808ABFBA808ABFB"
    )
    port map (
      ADR5 => '1',
      ADR2 => Itype_sig,
      ADR3 => Instruction_2_OBUF_4362,
      ADR4 => ALU_op_operand2_1_mmx_out251_0,
      ADR0 => ALU_op_operand2_1_mmx_out261_0,
      ADR1 => Op_2_Rt_sig_2_0,
      O => ALU_op_operand2_2_mmx_out231
    );
  ALU_op_operand2_1_27 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y134",
      INIT => X"F0AAFFCCF0AA00CC"
    )
    port map (
      ADR3 => Op_2_ALU_sig_0_Q,
      ADR4 => Op_2_ALU_sig_1_Q,
      ADR2 => OP_1_Rs_sig_22_0,
      ADR5 => OP_1_Rs_sig_24_0,
      ADR1 => OP_1_Rs_sig(25),
      ADR0 => OP_1_Rs_sig(23),
      O => ALU_op_operand2_1_mmx_out10
    );
  ALU_op_operand2_2_241 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y117",
      INIT => X"FFEE0022BBAA88AA"
    )
    port map (
      ADR2 => '1',
      ADR5 => Instruction_2_OBUF_4362,
      ADR3 => Op_2_Rt_sig_2_0,
      ADR1 => Itype_sig,
      ADR4 => ALU_op_operand2_1_mmx_out29_0,
      ADR0 => ALU_op_operand2_1_mmx_out110_0,
      O => ALU_op_operand2_2_mmx_out24
    );
  Decoder_Mmux_alu_op_sel21 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y116",
      INIT => X"FFFFFFFFFF5A0A0E"
    )
    port map (
      ADR4 => Instruction_27_OBUF_4444,
      ADR3 => Instruction_29_OBUF_4222,
      ADR0 => Instruction_28_OBUF_4443,
      ADR2 => Instruction_26_OBUF_4445,
      ADR1 => Instruction_1_OBUF_4358,
      ADR5 => Decoder_Mmux_alu_op_sel32,
      O => ALU_operation_sig(1)
    );
  ALU_op_Mmux_sig_output7121 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y116",
      INIT => X"0010001500100015"
    )
    port map (
      ADR5 => '1',
      ADR1 => Instruction_1_OBUF_4358,
      ADR0 => OP_1_Rs_sig(1),
      ADR4 => Op_2_Rt_sig(1),
      ADR2 => Itype_sig,
      ADR3 => ALU_operation_sig(1),
      O => ALU_op_Mmux_sig_output712_4656
    );
  Op_2_ALU_sig_6_Op_2_ALU_sig_6_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_ALU_sig_10_Q,
      O => Op_2_ALU_sig_10_0
    );
  Mux_ALU_Mmux_output291 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y127",
      INIT => X"F0F0FF00F0F0FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => Itype_sig,
      ADR2 => Instruction_10_OBUF_4300,
      ADR3 => Op_2_Rt_sig_6_0,
      ADR5 => '1',
      O => Op_2_ALU_sig_6_Q
    );
  Mux_ALU_Mmux_output21 : X_LUT5
    generic map(
      LOC => "SLICE_X31Y127",
      INIT => X"F0F0CCCC"
    )
    port map (
      ADR0 => '1',
      ADR1 => Op_2_Rt_sig_10_0,
      ADR4 => Itype_sig,
      ADR2 => Instruction_10_OBUF_4300,
      ADR3 => '1',
      O => Op_2_ALU_sig_10_Q
    );
  ALU_op_Mmux_sig_output7292 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y131",
      INIT => X"4E4E4E4EFF55AA00"
    )
    port map (
      ADR0 => Op_2_ALU_sig_3_Q,
      ADR5 => Op_2_ALU_sig_4_Q,
      ADR2 => ALU_op_operand2_2_mmx_out141,
      ADR3 => ALU_op_operand2_2_mmx_out121,
      ADR4 => N190,
      ADR1 => ALU_op_operand2_2_mmx_out131,
      O => ALU_op_Mmux_sig_output7291
    );
  ALU_op_Mmux_sig_output7263 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y112",
      INIT => X"EEFA4450EEFA4450"
    )
    port map (
      ADR5 => '1',
      ADR1 => ALU_op_operand2_0_mmx_out161,
      ADR2 => ALU_op_operand2_0_mmx_out141,
      ADR3 => Op_2_ALU_sig_1_Q,
      ADR0 => Mux_ALU_Mmux_output231_4591,
      ADR4 => ALU_op_operand2_1_mmx_out71_0,
      O => ALU_op_Mmux_sig_output7263_4588
    );
  ALU_op_operand2_2_1011 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y112",
      INIT => X"EEFA220AEEFA220A"
    )
    port map (
      ADR5 => '1',
      ADR1 => Instruction_2_OBUF_4362,
      ADR2 => Op_2_Rt_sig_2_0,
      ADR3 => Itype_sig,
      ADR0 => ALU_op_operand2_1_mmx_out141_0,
      ADR4 => ALU_op_operand2_1_mmx_out151_0,
      O => ALU_op_operand2_2_mmx_out181
    );
  ALU_op_Mmux_sig_output7233 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y112",
      INIT => X"FF00AAAAFF00F0F0"
    )
    port map (
      ADR1 => '1',
      ADR0 => ALU_op_operand2_0_mmx_out30,
      ADR2 => ALU_op_operand2_0_mmx_out151,
      ADR5 => Op_2_ALU_sig_1_Q,
      ADR4 => Mux_ALU_Mmux_output231_4591,
      ADR3 => ALU_op_operand2_1_mmx_out271_0,
      O => ALU_op_Mmux_sig_output7232
    );
  Mux_ALU_Mmux_output231_1 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y112",
      INIT => X"CFCFCFCFC0C0C0C0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => Instruction_2_OBUF_4362,
      ADR5 => Op_2_Rt_sig_2_0,
      ADR2 => Itype_sig,
      O => Mux_ALU_Mmux_output231_4591
    );
  ALU_op_operand2_1_mmx_out121_ALU_op_operand2_1_mmx_out121_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_operand2_1_mmx_out121,
      O => ALU_op_operand2_1_mmx_out121_0
    );
  ALU_op_operand2_1_411 : X_MUX2
    generic map(
      LOC => "SLICE_X34Y109"
    )
    port map (
      IA => N230,
      IB => N231,
      O => ALU_op_operand2_1_mmx_out121,
      SEL => Itype_sig
    );
  ALU_op_operand2_1_411_F : X_LUT6
    generic map(
      LOC => "SLICE_X34Y109",
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      ADR4 => Op_2_Rt_sig(1),
      ADR5 => Op_2_Rt_sig_0_0,
      ADR2 => OP_1_Rs_sig_30_0,
      ADR3 => OP_1_Rs_sig(29),
      ADR0 => OP_1_Rs_sig(27),
      ADR1 => OP_1_Rs_sig_28_0,
      O => N230
    );
  ALU_op_operand2_1_411_G : X_LUT6
    generic map(
      LOC => "SLICE_X34Y109",
      INIT => X"FDAD5D0DF8A85808"
    )
    port map (
      ADR0 => Instruction_0_OBUF_4355,
      ADR2 => Instruction_1_OBUF_4358,
      ADR4 => OP_1_Rs_sig_30_0,
      ADR1 => OP_1_Rs_sig_28_0,
      ADR5 => OP_1_Rs_sig(27),
      ADR3 => OP_1_Rs_sig(29),
      O => N231
    );
  Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X35Y123",
      INIT => X"B3B32020FBFB3232"
    )
    port map (
      ADR3 => '1',
      ADR0 => OP_1_Rs_sig_30_0,
      ADR1 => OP_1_Rs_sig(31),
      ADR5 => Op_2_Rt_sig_30_0,
      ADR2 => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_14_0,
      ADR4 => Op_2_Rt_sig(31),
      O => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_15_Q_4717
    );
  Ins_MEM_Mram_instruction_memory271 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y113",
      INIT => X"0901FA9C693B3366"
    )
    port map (
      ADR4 => PC_output_pc(4),
      ADR1 => PC_output_pc(3),
      ADR0 => PC_output_pc(1),
      ADR5 => PC_output_pc(2),
      ADR3 => PC_output_pc(0),
      ADR2 => PC_output_pc(5),
      O => Instruction_27_OBUF_4444
    );
  Ins_MEM_Mram_instruction_memory161 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y113",
      INIT => X"06F633C31C5E3388"
    )
    port map (
      ADR2 => PC_output_pc(5),
      ADR1 => PC_output_pc(2),
      ADR5 => PC_output_pc(0),
      ADR4 => PC_output_pc(4),
      ADR0 => PC_output_pc(1),
      ADR3 => PC_output_pc(3),
      O => Instruction_16_OBUF_4341
    );
  PC_output_pc_5 : X_SFF
    generic map(
      LOC => "SLICE_X35Y113",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PC_output_pc_5_CLK,
      I => Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_5_1_4296,
      O => PC_output_pc(5),
      SRST => PC_reset_IBUF_4451,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y113",
      INIT => X"5400545504000455"
    )
    port map (
      ADR0 => PC_reset_IBUF_4451,
      ADR3 => Ctrl_Next_PC_signal_1_0,
      ADR5 => PC_Itype_Branch_sig_5_0,
      ADR2 => Ctrl_Next_PC_signal(0),
      ADR1 => Instruction_5_OBUF_4369,
      ADR4 => N8,
      O => Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_5_1_4296
    );
  PC_output_pc_4 : X_SFF
    generic map(
      LOC => "SLICE_X35Y113",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PC_output_pc_4_CLK,
      I => Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_4_1_4294,
      O => PC_output_pc(4),
      SRST => PC_reset_IBUF_4451,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y113",
      INIT => X"0000DDD100001D11"
    )
    port map (
      ADR4 => PC_reset_IBUF_4451,
      ADR1 => Ctrl_Next_PC_signal_1_0,
      ADR5 => PC_Itype_Branch_sig_4_0,
      ADR2 => Ctrl_Next_PC_signal(0),
      ADR3 => Instruction_4_OBUF_4367,
      ADR0 => N10_0,
      O => Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_4_1_4294
    );
  OP_1_Rs_sig_29_OP_1_Rs_sig_29_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Reg_File_Mram_register_file6_RAMD_D1_O,
      O => Reg_File_Mram_register_file6_RAMD_D1_O_0
    );
  OP_1_Rs_sig_29_OP_1_Rs_sig_29_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig(28),
      O => OP_1_Rs_sig_28_0
    );
  OP_1_Rs_sig_29_OP_1_Rs_sig_29_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig(26),
      O => OP_1_Rs_sig_26_0
    );
  OP_1_Rs_sig_29_OP_1_Rs_sig_29_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig(24),
      O => OP_1_Rs_sig_24_0
    );
  Reg_File_Mram_register_file6_RAMD_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X34Y108",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_D1_CLK,
      I => '0',
      O => NLW_Reg_File_Mram_register_file6_RAMD_D1_O_UNCONNECTED,
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file6_RAMD : X_RAMD32
    generic map(
      LOC => "SLICE_X34Y108",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_CLK,
      I => '0',
      O => Reg_File_Mram_register_file6_RAMD_D1_O,
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file6_RAMC_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X34Y108",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_IN,
      O => OP_1_Rs_sig(29),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file6_RAMC : X_RAMD32
    generic map(
      LOC => "SLICE_X34Y108",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_IN,
      O => OP_1_Rs_sig(28),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file6_RAMB_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X34Y108",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_IN,
      O => OP_1_Rs_sig(27),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file6_RAMB : X_RAMD32
    generic map(
      LOC => "SLICE_X34Y108",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_IN,
      O => OP_1_Rs_sig(26),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file6_RAMA_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X34Y108",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_IN,
      O => OP_1_Rs_sig(25),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file6_RAMA : X_RAMD32
    generic map(
      LOC => "SLICE_X34Y108",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_IN,
      O => OP_1_Rs_sig(24),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_WADR4,
      WE => write_enable_sig
    );
  Ins_MEM_Mram_instruction_memory281 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y114",
      INIT => X"020811024B000104"
    )
    port map (
      ADR2 => PC_output_pc(2),
      ADR0 => PC_output_pc(4),
      ADR4 => PC_output_pc(0),
      ADR3 => PC_output_pc(1),
      ADR1 => PC_output_pc(3),
      ADR5 => PC_output_pc(5),
      O => Instruction_28_OBUF_4443
    );
  Decoder_write_enable1 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y114",
      INIT => X"7E7EFFFFCCCCFFFF"
    )
    port map (
      ADR3 => '1',
      ADR5 => Instruction_28_OBUF_4443,
      ADR0 => Instruction_27_OBUF_4444,
      ADR2 => Instruction_26_OBUF_4445,
      ADR1 => Instruction_30_OBUF_4220,
      ADR4 => Instruction_29_OBUF_4222,
      O => write_enable_sig
    );
  Ins_MEM_Mram_instruction_memory291 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y114",
      INIT => X"03004140401A0E00"
    )
    port map (
      ADR2 => PC_output_pc(1),
      ADR3 => PC_output_pc(5),
      ADR5 => PC_output_pc(3),
      ADR1 => PC_output_pc(2),
      ADR4 => PC_output_pc(4),
      ADR0 => PC_output_pc(0),
      O => Instruction_29_OBUF_4222
    );
  ALU_op_operand2_1_mmx_out111_ALU_op_operand2_1_mmx_out111_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_operand2_1_mmx_out111,
      O => ALU_op_operand2_1_mmx_out111_0
    );
  ALU_op_operand2_1_311 : X_MUX2
    generic map(
      LOC => "SLICE_X36Y109"
    )
    port map (
      IA => N224,
      IB => N225,
      O => ALU_op_operand2_1_mmx_out111,
      SEL => Itype_sig
    );
  ALU_op_operand2_1_311_F : X_LUT6
    generic map(
      LOC => "SLICE_X36Y109",
      INIT => X"F5F5DD88A0A0DD88"
    )
    port map (
      ADR0 => Op_2_Rt_sig(1),
      ADR4 => Op_2_Rt_sig_0_0,
      ADR2 => OP_1_Rs_sig_26_0,
      ADR1 => OP_1_Rs_sig(25),
      ADR3 => OP_1_Rs_sig(23),
      ADR5 => OP_1_Rs_sig_24_0,
      O => N224
    );
  ALU_op_operand2_1_311_G : X_LUT6
    generic map(
      LOC => "SLICE_X36Y109",
      INIT => X"DDDD8888F5A0F5A0"
    )
    port map (
      ADR0 => Instruction_1_OBUF_4358,
      ADR5 => Instruction_0_OBUF_4355,
      ADR1 => OP_1_Rs_sig_26_0,
      ADR2 => OP_1_Rs_sig(25),
      ADR3 => OP_1_Rs_sig(23),
      ADR4 => OP_1_Rs_sig_24_0,
      O => N225
    );
  OP_1_Rs_sig_5_OP_1_Rs_sig_5_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Reg_File_Mram_register_file2_RAMD_D1_O,
      O => Reg_File_Mram_register_file2_RAMD_D1_O_0
    );
  OP_1_Rs_sig_5_OP_1_Rs_sig_5_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig(4),
      O => OP_1_Rs_sig_4_0
    );
  OP_1_Rs_sig_5_OP_1_Rs_sig_5_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig(2),
      O => OP_1_Rs_sig_2_0
    );
  OP_1_Rs_sig_5_OP_1_Rs_sig_5_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig(0),
      O => OP_1_Rs_sig_0_0
    );
  Reg_File_Mram_register_file2_RAMD_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X34Y111",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_D1_CLK,
      I => '0',
      O => NLW_Reg_File_Mram_register_file2_RAMD_D1_O_UNCONNECTED,
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file2_RAMD : X_RAMD32
    generic map(
      LOC => "SLICE_X34Y111",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_CLK,
      I => '0',
      O => Reg_File_Mram_register_file2_RAMD_D1_O,
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file2_RAMC_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X34Y111",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_IN,
      O => OP_1_Rs_sig(5),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file2_RAMC : X_RAMD32
    generic map(
      LOC => "SLICE_X34Y111",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_IN,
      O => OP_1_Rs_sig(4),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file2_RAMB_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X34Y111",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_IN,
      O => OP_1_Rs_sig(3),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file2_RAMB : X_RAMD32
    generic map(
      LOC => "SLICE_X34Y111",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_IN,
      O => OP_1_Rs_sig(2),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file2_RAMA_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X34Y111",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_IN,
      O => OP_1_Rs_sig(1),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file2_RAMA : X_RAMD32
    generic map(
      LOC => "SLICE_X34Y111",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_IN,
      O => OP_1_Rs_sig(0),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_WADR4,
      WE => write_enable_sig
    );
  Instruction_25_OBUF_Instruction_25_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_operand2_1_mmx_out41,
      O => ALU_op_operand2_1_mmx_out41_0
    );
  ALU_op_operand2_1_2211 : X_MUX2
    generic map(
      LOC => "SLICE_X34Y110"
    )
    port map (
      IA => N258,
      IB => N259,
      O => ALU_op_operand2_1_mmx_out41,
      SEL => Itype_sig
    );
  ALU_op_operand2_1_2211_F : X_LUT6
    generic map(
      LOC => "SLICE_X34Y110",
      INIT => X"F0FFCCAAF000CCAA"
    )
    port map (
      ADR4 => Op_2_Rt_sig(1),
      ADR3 => Op_2_Rt_sig_0_0,
      ADR2 => OP_1_Rs_sig(25),
      ADR5 => OP_1_Rs_sig_24_0,
      ADR0 => OP_1_Rs_sig_22_0,
      ADR1 => OP_1_Rs_sig(23),
      O => N258
    );
  ALU_op_operand2_1_2211_G : X_LUT6
    generic map(
      LOC => "SLICE_X34Y110",
      INIT => X"F3F3EE22C0C0EE22"
    )
    port map (
      ADR1 => Instruction_0_OBUF_4355,
      ADR4 => Instruction_1_OBUF_4358,
      ADR2 => OP_1_Rs_sig(25),
      ADR3 => OP_1_Rs_sig(23),
      ADR0 => OP_1_Rs_sig_22_0,
      ADR5 => OP_1_Rs_sig_24_0,
      O => N259
    );
  Ins_MEM_Mram_instruction_memory251 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y110",
      INIT => X"080AD30F3D06035A"
    )
    port map (
      ADR2 => PC_output_pc(3),
      ADR0 => PC_output_pc(0),
      ADR3 => PC_output_pc(1),
      ADR4 => PC_output_pc(4),
      ADR1 => PC_output_pc(5),
      ADR5 => PC_output_pc(2),
      O => Instruction_25_OBUF_4446
    );
  OP_1_Rs_sig_17_OP_1_Rs_sig_17_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Reg_File_Mram_register_file4_RAMD_D1_O,
      O => Reg_File_Mram_register_file4_RAMD_D1_O_0
    );
  OP_1_Rs_sig_17_OP_1_Rs_sig_17_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig(16),
      O => OP_1_Rs_sig_16_0
    );
  OP_1_Rs_sig_17_OP_1_Rs_sig_17_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig(14),
      O => OP_1_Rs_sig_14_0
    );
  OP_1_Rs_sig_17_OP_1_Rs_sig_17_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig(12),
      O => OP_1_Rs_sig_12_0
    );
  Reg_File_Mram_register_file4_RAMD_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X34Y113",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_D1_CLK,
      I => '0',
      O => NLW_Reg_File_Mram_register_file4_RAMD_D1_O_UNCONNECTED,
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file4_RAMD : X_RAMD32
    generic map(
      LOC => "SLICE_X34Y113",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_CLK,
      I => '0',
      O => Reg_File_Mram_register_file4_RAMD_D1_O,
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file4_RAMC_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X34Y113",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_IN,
      O => OP_1_Rs_sig(17),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file4_RAMC : X_RAMD32
    generic map(
      LOC => "SLICE_X34Y113",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_IN,
      O => OP_1_Rs_sig(16),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file4_RAMB_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X34Y113",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_IN,
      O => OP_1_Rs_sig(15),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file4_RAMB : X_RAMD32
    generic map(
      LOC => "SLICE_X34Y113",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_IN,
      O => OP_1_Rs_sig(14),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file4_RAMA_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X34Y113",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_IN,
      O => OP_1_Rs_sig(13),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file4_RAMA : X_RAMD32
    generic map(
      LOC => "SLICE_X34Y113",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_IN,
      O => OP_1_Rs_sig(12),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_WADR4,
      WE => write_enable_sig
    );
  OP_1_Rs_sig_31_OP_1_Rs_sig_31_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig(30),
      O => OP_1_Rs_sig_30_0
    );
  OP_1_Rs_sig_31_OP_1_Rs_sig_31_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig(30),
      O => Op_2_Rt_sig_30_0
    );
  Reg_File_Mram_register_file72_SP : X_RAMD32
    generic map(
      LOC => "SLICE_X34Y112",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file72_SP_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file72_SP_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file72_SP_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file72_SP_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file72_SP_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file72_SP_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file72_SP_IN,
      O => NLW_Reg_File_Mram_register_file72_SP_O_UNCONNECTED,
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file72_SP_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file72_SP_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file72_SP_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file72_SP_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file72_SP_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file71_SP : X_RAMD32
    generic map(
      LOC => "SLICE_X34Y112",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file71_SP_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file71_SP_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file71_SP_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file71_SP_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file71_SP_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file71_SP_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file71_SP_IN,
      O => NLW_Reg_File_Mram_register_file71_SP_O_UNCONNECTED,
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file71_SP_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file71_SP_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file71_SP_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file71_SP_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file71_SP_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file162_SP : X_RAMD32
    generic map(
      LOC => "SLICE_X34Y112",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file162_SP_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file162_SP_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file162_SP_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file162_SP_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file162_SP_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file162_SP_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file162_SP_IN,
      O => NLW_Reg_File_Mram_register_file162_SP_O_UNCONNECTED,
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file162_SP_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file162_SP_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file162_SP_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file162_SP_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file162_SP_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file161_SP : X_RAMD32
    generic map(
      LOC => "SLICE_X34Y112",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file161_SP_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file161_SP_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file161_SP_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file161_SP_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file161_SP_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file161_SP_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file161_SP_IN,
      O => NLW_Reg_File_Mram_register_file161_SP_O_UNCONNECTED,
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file161_SP_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file161_SP_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file161_SP_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file161_SP_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file161_SP_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file72_DP : X_RAMD32
    generic map(
      LOC => "SLICE_X34Y112",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file72_DP_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file72_DP_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file72_DP_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file72_DP_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file72_DP_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file72_DP_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file72_DP_IN,
      O => OP_1_Rs_sig(31),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file72_DP_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file72_DP_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file72_DP_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file72_DP_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file72_DP_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file71_DP : X_RAMD32
    generic map(
      LOC => "SLICE_X34Y112",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file71_DP_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file71_DP_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file71_DP_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file71_DP_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file71_DP_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file71_DP_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file71_DP_IN,
      O => OP_1_Rs_sig(30),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file71_DP_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file71_DP_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file71_DP_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file71_DP_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file71_DP_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file162_DP : X_RAMD32
    generic map(
      LOC => "SLICE_X34Y112",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file162_DP_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file162_DP_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file162_DP_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file162_DP_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file162_DP_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file162_DP_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file162_DP_IN,
      O => Op_2_Rt_sig(31),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file162_DP_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file162_DP_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file162_DP_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file162_DP_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file162_DP_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file161_DP : X_RAMD32
    generic map(
      LOC => "SLICE_X34Y112",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file161_DP_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file161_DP_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file161_DP_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file161_DP_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file161_DP_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file161_DP_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file161_DP_IN,
      O => Op_2_Rt_sig(30),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file161_DP_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file161_DP_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file161_DP_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file161_DP_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file161_DP_WADR4,
      WE => write_enable_sig
    );
  ALU_op_operand2_1_mmx_out251_ALU_op_operand2_1_mmx_out251_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_operand2_1_mmx_out251,
      O => ALU_op_operand2_1_mmx_out251_0
    );
  ALU_op_operand2_1_1811 : X_MUX2
    generic map(
      LOC => "SLICE_X32Y109"
    )
    port map (
      IA => N214,
      IB => N215,
      O => ALU_op_operand2_1_mmx_out251,
      SEL => Itype_sig
    );
  ALU_op_operand2_1_1811_F : X_LUT6
    generic map(
      LOC => "SLICE_X32Y109",
      INIT => X"FCFC0C0CFA0AFA0A"
    )
    port map (
      ADR2 => Op_2_Rt_sig(1),
      ADR5 => Op_2_Rt_sig_0_0,
      ADR4 => OP_1_Rs_sig_28_0,
      ADR3 => OP_1_Rs_sig(27),
      ADR0 => OP_1_Rs_sig(25),
      ADR1 => OP_1_Rs_sig_26_0,
      O => N214
    );
  ALU_op_operand2_1_1811_G : X_LUT6
    generic map(
      LOC => "SLICE_X32Y109",
      INIT => X"FEDC7654BA983210"
    )
    port map (
      ADR0 => Instruction_1_OBUF_4358,
      ADR1 => Instruction_0_OBUF_4355,
      ADR4 => OP_1_Rs_sig_28_0,
      ADR3 => OP_1_Rs_sig(27),
      ADR2 => OP_1_Rs_sig(25),
      ADR5 => OP_1_Rs_sig_26_0,
      O => N215
    );
  ALU_op_Mmux_sig_output751_ALU_op_Mmux_sig_output751_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output751,
      O => ALU_op_Mmux_sig_output751_0
    );
  ALU_op_Mmux_sig_output752 : X_MUX2
    generic map(
      LOC => "SLICE_X32Y116"
    )
    port map (
      IA => N204,
      IB => N205,
      O => ALU_op_Mmux_sig_output751,
      SEL => Op_2_ALU_sig_4_Q
    );
  ALU_op_Mmux_sig_output752_F : X_LUT6
    generic map(
      LOC => "SLICE_X32Y116",
      INIT => X"F0CCF0CCAAFFAA00"
    )
    port map (
      ADR3 => Op_2_ALU_sig_2_Q,
      ADR5 => Op_2_ALU_sig_3_Q,
      ADR2 => ALU_op_operand2_1_mmx_out251_0,
      ADR0 => ALU_op_operand2_1_mmx_out231_0,
      ADR4 => ALU_op_operand2_1_mmx_out221_0,
      ADR1 => ALU_op_operand2_1_mmx_out241_0,
      O => N204
    );
  ALU_op_Mmux_sig_output752_G : X_LUT6
    generic map(
      LOC => "SLICE_X32Y116",
      INIT => X"0101000001010033"
    )
    port map (
      ADR1 => ALU_op_operand2_1_mmx_out261_0,
      ADR4 => Itype_sig,
      ADR5 => Op_2_Rt_sig_2_0,
      ADR3 => Op_2_Rt_sig(3),
      ADR2 => Instruction_3_OBUF_4365,
      ADR0 => Instruction_2_OBUF_4362,
      O => N205
    );
  Op_2_ALU_sig_3_Op_2_ALU_sig_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_operand2_1_mmx_out261,
      O => ALU_op_operand2_1_mmx_out261_0
    );
  ALU_op_operand2_1_1911 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y110"
    )
    port map (
      IA => N188,
      IB => N189,
      O => ALU_op_operand2_1_mmx_out261,
      SEL => Decoder_is_itype_sig1_4502
    );
  ALU_op_operand2_1_1911_F : X_LUT6
    generic map(
      LOC => "SLICE_X33Y110",
      INIT => X"F0FFF0FF50505F5F"
    )
    port map (
      ADR1 => '1',
      ADR0 => OP_1_Rs_sig(31),
      ADR3 => OP_1_Rs_sig_30_0,
      ADR4 => OP_1_Rs_sig(29),
      ADR2 => Op_2_Rt_sig(1),
      ADR5 => Op_2_Rt_sig_0_0,
      O => N188
    );
  ALU_op_operand2_1_1911_G : X_LUT6
    generic map(
      LOC => "SLICE_X33Y110",
      INIT => X"A0F0AAFAA5F5AFFF"
    )
    port map (
      ADR1 => '1',
      ADR2 => Instruction_1_OBUF_4358,
      ADR0 => Instruction_0_OBUF_4355,
      ADR3 => OP_1_Rs_sig(31),
      ADR4 => OP_1_Rs_sig_30_0,
      ADR5 => OP_1_Rs_sig(29),
      O => N189
    );
  Mux_ALU_Mmux_output261 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y110",
      INIT => X"F0F0FFFFF0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Instruction_3_OBUF_4365,
      ADR5 => Op_2_Rt_sig(3),
      ADR4 => Itype_sig,
      O => Op_2_ALU_sig_3_Q
    );
  ALU_op_Mmux_sig_output7122 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y110",
      INIT => X"EAE04A40EAE04A40"
    )
    port map (
      ADR5 => '1',
      ADR0 => Op_2_ALU_sig_2_Q,
      ADR2 => Op_2_ALU_sig_3_Q,
      ADR3 => ALU_op_operand2_1_mmx_out201_0,
      ADR4 => ALU_op_operand2_1_mmx_out221_0,
      ADR1 => ALU_op_operand2_1_mmx_out211_0,
      O => ALU_op_Mmux_sig_output7121_4681
    );
  Op_2_ALU_sig_31_Op_2_ALU_sig_31_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig(4),
      O => Write_Reg_Address_sig_4_0
    );
  Op_2_ALU_sig_31_Op_2_ALU_sig_31_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output7246_3200,
      O => ALU_op_Mmux_sig_output7246_0
    );
  Mux_ALU_Mmux_output251 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y126",
      INIT => X"FFAA5500FFAA5500"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => Itype_sig,
      ADR4 => Instruction_10_OBUF_4300,
      ADR3 => Op_2_Rt_sig(31),
      ADR5 => '1',
      O => Op_2_ALU_sig_31_Q
    );
  Mux_Rd_Rt_Mmux_output51 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y126",
      INIT => X"F5F5A0A0"
    )
    port map (
      ADR3 => '1',
      ADR2 => Instruction_20_OBUF_4321,
      ADR0 => Itype_sig,
      ADR4 => Instruction_10_OBUF_4300,
      ADR1 => '1',
      O => Write_Reg_Address_sig(4)
    );
  Mux_ALU_Mmux_output241 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y126",
      INIT => X"CCCCFF00CCCCFF00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => Itype_sig,
      ADR1 => Instruction_10_OBUF_4300,
      ADR3 => Op_2_Rt_sig_30_0,
      ADR5 => '1',
      O => Op_2_ALU_sig_30_Q
    );
  ALU_op_Mmux_sig_output7247 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y126",
      INIT => X"E8E8FAA0"
    )
    port map (
      ADR2 => OP_1_Rs_sig_30_0,
      ADR0 => ALU_operation_sig(0),
      ADR4 => Itype_sig,
      ADR1 => Instruction_10_OBUF_4300,
      ADR3 => Op_2_Rt_sig_30_0,
      O => ALU_op_Mmux_sig_output7246_3200
    );
  ALU_op_operand2_3_1011 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y132",
      INIT => X"A8A80808ABABFBFB"
    )
    port map (
      ADR3 => '1',
      ADR2 => Itype_sig,
      ADR4 => Instruction_3_OBUF_4365,
      ADR5 => ALU_op_operand2_2_mmx_out131,
      ADR0 => ALU_op_operand2_2_mmx_out141,
      ADR1 => Op_2_Rt_sig(3),
      O => ALU_op_operand2_3_mmx_out41
    );
  Instruction_24_OBUF_Instruction_24_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_operand2_1_mmx_out29,
      O => ALU_op_operand2_1_mmx_out29_0
    );
  ALU_op_operand2_1_1211 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y112"
    )
    port map (
      IA => N244,
      IB => N245,
      O => ALU_op_operand2_1_mmx_out29,
      SEL => Itype_sig
    );
  ALU_op_operand2_1_1211_F : X_LUT6
    generic map(
      LOC => "SLICE_X33Y112",
      INIT => X"FA0AFA0ACFCFC0C0"
    )
    port map (
      ADR2 => Op_2_Rt_sig(1),
      ADR5 => Op_2_Rt_sig_0_0,
      ADR3 => OP_1_Rs_sig(17),
      ADR1 => OP_1_Rs_sig_16_0,
      ADR4 => OP_1_Rs_sig_14_0,
      ADR0 => OP_1_Rs_sig(15),
      O => N244
    );
  ALU_op_operand2_1_1211_G : X_LUT6
    generic map(
      LOC => "SLICE_X33Y112",
      INIT => X"FF00CCCCAAAAF0F0"
    )
    port map (
      ADR5 => Instruction_1_OBUF_4358,
      ADR4 => Instruction_0_OBUF_4355,
      ADR3 => OP_1_Rs_sig(17),
      ADR1 => OP_1_Rs_sig_16_0,
      ADR2 => OP_1_Rs_sig_14_0,
      ADR0 => OP_1_Rs_sig(15),
      O => N245
    );
  Ins_MEM_Mram_instruction_memory241 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y112",
      INIT => X"1F1DE52F1F32EFBC"
    )
    port map (
      ADR4 => PC_output_pc(4),
      ADR0 => PC_output_pc(5),
      ADR2 => PC_output_pc(3),
      ADR1 => PC_output_pc(2),
      ADR5 => PC_output_pc(0),
      ADR3 => PC_output_pc(1),
      O => Instruction_24_OBUF_4447
    );
  ALU_op_operand2_2_1711_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y112",
      INIT => X"FF35CA00FF35CA00"
    )
    port map (
      ADR5 => '1',
      ADR1 => Instruction_2_OBUF_4362,
      ADR4 => OP_1_Rs_sig(11),
      ADR3 => OP_1_Rs_sig(15),
      ADR0 => Op_2_Rt_sig_2_0,
      ADR2 => Itype_sig,
      O => N142
    );
  ALU_op_operand2_1_mmx_out171_ALU_op_operand2_1_mmx_out171_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_operand2_1_mmx_out171,
      O => ALU_op_operand2_1_mmx_out171_0
    );
  ALU_op_operand2_1_911 : X_MUX2
    generic map(
      LOC => "SLICE_X32Y110"
    )
    port map (
      IA => N242,
      IB => N243,
      O => ALU_op_operand2_1_mmx_out171,
      SEL => Itype_sig
    );
  ALU_op_operand2_1_911_F : X_LUT6
    generic map(
      LOC => "SLICE_X32Y110",
      INIT => X"CACACACAFFF00F00"
    )
    port map (
      ADR2 => Op_2_Rt_sig(1),
      ADR5 => Op_2_Rt_sig_0_0,
      ADR1 => OP_1_Rs_sig(23),
      ADR4 => OP_1_Rs_sig_22_0,
      ADR3 => OP_1_Rs_sig_20_0,
      ADR0 => OP_1_Rs_sig(21),
      O => N242
    );
  ALU_op_operand2_1_911_G : X_LUT6
    generic map(
      LOC => "SLICE_X32Y110",
      INIT => X"EF2FE323EC2CE020"
    )
    port map (
      ADR1 => Instruction_1_OBUF_4358,
      ADR2 => Instruction_0_OBUF_4355,
      ADR3 => OP_1_Rs_sig(23),
      ADR4 => OP_1_Rs_sig_22_0,
      ADR5 => OP_1_Rs_sig_20_0,
      ADR0 => OP_1_Rs_sig(21),
      O => N243
    );
  ALU_op_Mmux_sig_output1_rs_lut_1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y115",
      INIT => X"3F330C303F330C33"
    )
    port map (
      ADR0 => '1',
      ADR1 => Instruction_28_OBUF_4443,
      ADR3 => Instruction_27_OBUF_4444,
      ADR2 => Instruction_29_OBUF_4222,
      ADR5 => Instruction_0_OBUF_4355,
      ADR4 => Instruction_26_OBUF_4445,
      O => N111
    );
  Ins_MEM_Mram_instruction_memory261 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y115",
      INIT => X"0C492212C40C073E"
    )
    port map (
      ADR2 => PC_output_pc(3),
      ADR1 => PC_output_pc(0),
      ADR5 => PC_output_pc(5),
      ADR4 => PC_output_pc(4),
      ADR3 => PC_output_pc(1),
      ADR0 => PC_output_pc(2),
      O => Instruction_26_OBUF_4445
    );
  ALU_op_operand2_0_mmx_out161_ALU_op_operand2_0_mmx_out161_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_operand2_1_mmx_out181,
      O => ALU_op_operand2_1_mmx_out181_0
    );
  ALU_op_operand2_1_1011 : X_MUX2
    generic map(
      LOC => "SLICE_X32Y112"
    )
    port map (
      IA => N246,
      IB => N247,
      O => ALU_op_operand2_1_mmx_out181,
      SEL => Itype_sig
    );
  ALU_op_operand2_1_1011_F : X_LUT6
    generic map(
      LOC => "SLICE_X32Y112",
      INIT => X"BFBCB3B08F8C8380"
    )
    port map (
      ADR1 => Op_2_Rt_sig(1),
      ADR2 => Op_2_Rt_sig_0_0,
      ADR0 => OP_1_Rs_sig(27),
      ADR4 => OP_1_Rs_sig_26_0,
      ADR3 => OP_1_Rs_sig_24_0,
      ADR5 => OP_1_Rs_sig(25),
      O => N246
    );
  ALU_op_operand2_1_1011_G : X_LUT6
    generic map(
      LOC => "SLICE_X32Y112",
      INIT => X"BF8FB383BC8CB080"
    )
    port map (
      ADR1 => Instruction_1_OBUF_4358,
      ADR2 => Instruction_0_OBUF_4355,
      ADR0 => OP_1_Rs_sig(27),
      ADR4 => OP_1_Rs_sig_26_0,
      ADR5 => OP_1_Rs_sig_24_0,
      ADR3 => OP_1_Rs_sig(25),
      O => N247
    );
  ALU_op_operand2_0_811 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y112",
      INIT => X"AAAAFA0AAFA0FF00"
    )
    port map (
      ADR1 => '1',
      ADR4 => Instruction_0_OBUF_4355,
      ADR3 => OP_1_Rs_sig(5),
      ADR0 => OP_1_Rs_sig_6_0,
      ADR5 => Op_2_Rt_sig_0_0,
      ADR2 => Itype_sig,
      O => ALU_op_operand2_0_mmx_out161
    );
  ALU_op_operand2_3_171_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y112",
      INIT => X"FFFFCFFFFFAFCFAF"
    )
    port map (
      ADR1 => Instruction_1_OBUF_4358,
      ADR4 => Instruction_0_OBUF_4355,
      ADR2 => OP_1_Rs_sig(31),
      ADR0 => Op_2_Rt_sig(1),
      ADR5 => Op_2_Rt_sig_0_0,
      ADR3 => Itype_sig,
      O => N20
    );
  ALU_op_Mmux_sig_output7113 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y109",
      INIT => X"0000000F00001111"
    )
    port map (
      ADR4 => ALU_operation_sig(0),
      ADR5 => ALU_operation_sig(1),
      ADR1 => Op_2_ALU_sig_19_Q,
      ADR0 => OP_1_Rs_sig(19),
      ADR3 => ALU_op_operand2_3_mmx_out17,
      ADR2 => Op_2_ALU_sig_4_Q,
      O => ALU_op_Mmux_sig_output7112_4611
    );
  ALU_op_operand2_3_171 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y109",
      INIT => X"C0C0505FCFCF505F"
    )
    port map (
      ADR2 => Op_2_ALU_sig_2_Q,
      ADR4 => Op_2_ALU_sig_3_Q,
      ADR1 => N20,
      ADR3 => ALU_op_operand2_1_mmx_out101_0,
      ADR0 => ALU_op_operand2_1_mmx_out111_0,
      ADR5 => ALU_op_operand2_1_mmx_out121_0,
      O => ALU_op_operand2_3_mmx_out17
    );
  Decoder_Mmux_alu_op_sel32_Decoder_Mmux_alu_op_sel32_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_Mmux_sig_output732_3447,
      O => ALU_op_Mmux_sig_output732_0
    );
  ALU_op_Mmux_sig_output7321 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y116"
    )
    port map (
      IA => N192,
      IB => N193,
      O => ALU_op_Mmux_sig_output732_3447,
      SEL => Op_2_ALU_sig_2_Q
    );
  ALU_op_Mmux_sig_output7321_F : X_LUT6
    generic map(
      LOC => "SLICE_X33Y116",
      INIT => X"0000AAAAF0F0CCCC"
    )
    port map (
      ADR3 => '1',
      ADR5 => Op_2_ALU_sig_3_Q,
      ADR4 => Op_2_ALU_sig_4_Q,
      ADR2 => ALU_op_operand2_1_mmx_out251_0,
      ADR1 => ALU_op_operand2_1_mmx_out211_0,
      ADR0 => ALU_op_operand2_1_mmx_out231_0,
      O => N192
    );
  ALU_op_Mmux_sig_output7321_G : X_LUT6
    generic map(
      LOC => "SLICE_X33Y116",
      INIT => X"0000CCCC00FFF0F0"
    )
    port map (
      ADR0 => '1',
      ADR5 => Op_2_ALU_sig_3_Q,
      ADR4 => Op_2_ALU_sig_4_Q,
      ADR2 => ALU_op_operand2_1_mmx_out221_0,
      ADR3 => ALU_op_operand2_1_mmx_out261_0,
      ADR1 => ALU_op_operand2_1_mmx_out241_0,
      O => N193
    );
  Decoder_Mmux_alu_op_sel321 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y116",
      INIT => X"FAFAAAAAFAFAAAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Instruction_29_OBUF_4222,
      ADR2 => Instruction_26_OBUF_4445,
      ADR0 => Instruction_30_OBUF_4220,
      O => Decoder_Mmux_alu_op_sel32
    );
  Decoder_Mmux_alu_op_sel31 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y116",
      INIT => X"FFCCFFEEFFAAFF98"
    )
    port map (
      ADR0 => Instruction_28_OBUF_4443,
      ADR1 => Instruction_29_OBUF_4222,
      ADR5 => Instruction_27_OBUF_4444,
      ADR4 => Instruction_26_OBUF_4445,
      ADR2 => Instruction_2_OBUF_4362,
      ADR3 => Decoder_Mmux_alu_op_sel32,
      O => ALU_operation_sig(2)
    );
  ALU_op_Mmux_sig_output761 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y131",
      INIT => X"00FF55F0000055F0"
    )
    port map (
      ADR1 => '1',
      ADR4 => Op_2_ALU_sig_3_Q,
      ADR3 => Op_2_ALU_sig_4_Q,
      ADR2 => ALU_op_operand2_2_mmx_out121,
      ADR0 => ALU_op_operand2_2_mmx_out141,
      ADR5 => ALU_op_operand2_2_mmx_out131,
      O => ALU_op_Mmux_sig_output76
    );
  ALU_op_Mmux_sig_output762 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y131",
      INIT => X"0A0A0808A808B010"
    )
    port map (
      ADR4 => OP_1_Rs_sig_14_0,
      ADR1 => Op_2_ALU_sig_14_Q,
      ADR5 => ALU_operation_sig(0),
      ADR0 => ALU_operation_sig(1),
      ADR2 => ALU_operation_sig(2),
      ADR3 => ALU_op_Mmux_sig_output76,
      O => ALU_op_Mmux_sig_output761_4688
    );
  ALU_op_operand2_1_mmx_out51_ALU_op_operand2_1_mmx_out51_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_operand2_1_mmx_out51,
      O => ALU_op_operand2_1_mmx_out51_0
    );
  ALU_op_operand2_1_2311 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y111"
    )
    port map (
      IA => N252,
      IB => N253,
      O => ALU_op_operand2_1_mmx_out51,
      SEL => Itype_sig
    );
  ALU_op_operand2_1_2311_F : X_LUT6
    generic map(
      LOC => "SLICE_X33Y111",
      INIT => X"D8FFD8AAD855D800"
    )
    port map (
      ADR0 => Op_2_Rt_sig(1),
      ADR3 => Op_2_Rt_sig_0_0,
      ADR1 => OP_1_Rs_sig(29),
      ADR5 => OP_1_Rs_sig_28_0,
      ADR4 => OP_1_Rs_sig_26_0,
      ADR2 => OP_1_Rs_sig(27),
      O => N252
    );
  ALU_op_operand2_1_2311_G : X_LUT6
    generic map(
      LOC => "SLICE_X33Y111",
      INIT => X"FF33B8B8CC00B8B8"
    )
    port map (
      ADR4 => Instruction_1_OBUF_4358,
      ADR1 => Instruction_0_OBUF_4355,
      ADR3 => OP_1_Rs_sig(29),
      ADR5 => OP_1_Rs_sig_28_0,
      ADR2 => OP_1_Rs_sig_26_0,
      ADR0 => OP_1_Rs_sig(27),
      O => N253
    );
  ALU_op_operand2_0_mmx_out151_ALU_op_operand2_0_mmx_out151_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_operand2_1_mmx_out191,
      O => ALU_op_operand2_1_mmx_out191_0
    );
  ALU_op_operand2_1_1111 : X_MUX2
    generic map(
      LOC => "SLICE_X32Y111"
    )
    port map (
      IA => N238,
      IB => N239,
      O => ALU_op_operand2_1_mmx_out191,
      SEL => Itype_sig
    );
  ALU_op_operand2_1_1111_F : X_LUT6
    generic map(
      LOC => "SLICE_X32Y111",
      INIT => X"DD88F5F5DD88A0A0"
    )
    port map (
      ADR0 => Op_2_Rt_sig(1),
      ADR4 => Op_2_Rt_sig_0_0,
      ADR1 => OP_1_Rs_sig(31),
      ADR2 => OP_1_Rs_sig_30_0,
      ADR5 => OP_1_Rs_sig_28_0,
      ADR3 => OP_1_Rs_sig(29),
      O => N238
    );
  ALU_op_operand2_1_1111_G : X_LUT6
    generic map(
      LOC => "SLICE_X32Y111",
      INIT => X"CFC0CFC0FAFA0A0A"
    )
    port map (
      ADR2 => Instruction_1_OBUF_4358,
      ADR5 => Instruction_0_OBUF_4355,
      ADR1 => OP_1_Rs_sig(31),
      ADR4 => OP_1_Rs_sig_30_0,
      ADR0 => OP_1_Rs_sig_28_0,
      ADR3 => OP_1_Rs_sig(29),
      O => N239
    );
  ALU_op_operand2_0_711 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y111",
      INIT => X"F0FAF050F5FFA000"
    )
    port map (
      ADR1 => '1',
      ADR3 => Instruction_0_OBUF_4355,
      ADR2 => OP_1_Rs_sig(3),
      ADR4 => OP_1_Rs_sig_2_0,
      ADR5 => Op_2_Rt_sig_0_0,
      ADR0 => Itype_sig,
      O => ALU_op_operand2_0_mmx_out151
    );
  Ins_MEM_Mram_instruction_memory201 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y111",
      INIT => X"4000020014818C10"
    )
    port map (
      ADR5 => PC_output_pc(5),
      ADR0 => PC_output_pc(4),
      ADR1 => PC_output_pc(3),
      ADR3 => PC_output_pc(1),
      ADR4 => PC_output_pc(0),
      ADR2 => PC_output_pc(2),
      O => Instruction_20_OBUF_4321
    );
  Ins_MEM_Mram_instruction_memory181 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y111",
      INIT => X"61D4731A70F71476"
    )
    port map (
      ADR0 => PC_output_pc(4),
      ADR1 => PC_output_pc(5),
      ADR5 => PC_output_pc(1),
      ADR3 => PC_output_pc(3),
      ADR2 => PC_output_pc(2),
      ADR4 => PC_output_pc(0),
      O => Instruction_18_OBUF_4345
    );
  ALU_op_operand2_1_mmx_out231_ALU_op_operand2_1_mmx_out231_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_operand2_1_mmx_out231,
      O => ALU_op_operand2_1_mmx_out231_0
    );
  ALU_op_operand2_1_1611 : X_MUX2
    generic map(
      LOC => "SLICE_X35Y109"
    )
    port map (
      IA => N222,
      IB => N223,
      O => ALU_op_operand2_1_mmx_out231,
      SEL => Itype_sig
    );
  ALU_op_operand2_1_1611_F : X_LUT6
    generic map(
      LOC => "SLICE_X35Y109",
      INIT => X"FF0FF000ACACACAC"
    )
    port map (
      ADR2 => Op_2_Rt_sig(1),
      ADR5 => Op_2_Rt_sig_0_0,
      ADR3 => OP_1_Rs_sig_20_0,
      ADR0 => OP_1_Rs_sig(19),
      ADR1 => OP_1_Rs_sig(17),
      ADR4 => OP_1_Rs_sig_18_0,
      O => N222
    );
  ALU_op_operand2_1_1611_G : X_LUT6
    generic map(
      LOC => "SLICE_X35Y109",
      INIT => X"FF33CC00B8B8B8B8"
    )
    port map (
      ADR1 => Instruction_1_OBUF_4358,
      ADR5 => Instruction_0_OBUF_4355,
      ADR3 => OP_1_Rs_sig_20_0,
      ADR0 => OP_1_Rs_sig(19),
      ADR2 => OP_1_Rs_sig(17),
      ADR4 => OP_1_Rs_sig_18_0,
      O => N223
    );
  ALU_op_operand2_1_mmx_out211_ALU_op_operand2_1_mmx_out211_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_operand2_1_mmx_out211,
      O => ALU_op_operand2_1_mmx_out211_0
    );
  ALU_op_operand2_1_1411 : X_MUX2
    generic map(
      LOC => "SLICE_X35Y110"
    )
    port map (
      IA => N232,
      IB => N233,
      O => ALU_op_operand2_1_mmx_out211,
      SEL => Itype_sig
    );
  ALU_op_operand2_1_1411_F : X_LUT6
    generic map(
      LOC => "SLICE_X35Y110",
      INIT => X"F0CCFFAAF0CC00AA"
    )
    port map (
      ADR4 => Op_2_Rt_sig(1),
      ADR3 => Op_2_Rt_sig_0_0,
      ADR2 => OP_1_Rs_sig_12_0,
      ADR1 => OP_1_Rs_sig(11),
      ADR0 => OP_1_Rs_sig(9),
      ADR5 => OP_1_Rs_sig_10_0,
      O => N232
    );
  ALU_op_operand2_1_1411_G : X_LUT6
    generic map(
      LOC => "SLICE_X35Y110",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR4 => Instruction_0_OBUF_4355,
      ADR5 => Instruction_1_OBUF_4358,
      ADR2 => OP_1_Rs_sig_12_0,
      ADR1 => OP_1_Rs_sig_10_0,
      ADR0 => OP_1_Rs_sig(9),
      ADR3 => OP_1_Rs_sig(11),
      O => N233
    );
  ALU_op_operand2_0_mmx_out30_ALU_op_operand2_0_mmx_out30_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_operand2_1_mmx_out151,
      O => ALU_op_operand2_1_mmx_out151_0
    );
  ALU_op_operand2_1_711 : X_MUX2
    generic map(
      LOC => "SLICE_X35Y112"
    )
    port map (
      IA => N256,
      IB => N257,
      O => ALU_op_operand2_1_mmx_out151,
      SEL => Itype_sig
    );
  ALU_op_operand2_1_711_F : X_LUT6
    generic map(
      LOC => "SLICE_X35Y112",
      INIT => X"E4E4E4E4FFAA5500"
    )
    port map (
      ADR0 => Op_2_Rt_sig(1),
      ADR5 => Op_2_Rt_sig_0_0,
      ADR2 => OP_1_Rs_sig(15),
      ADR4 => OP_1_Rs_sig_14_0,
      ADR3 => OP_1_Rs_sig_12_0,
      ADR1 => OP_1_Rs_sig(13),
      O => N256
    );
  ALU_op_operand2_1_711_G : X_LUT6
    generic map(
      LOC => "SLICE_X35Y112",
      INIT => X"E4E4E4E4FFAA5500"
    )
    port map (
      ADR0 => Instruction_1_OBUF_4358,
      ADR5 => Instruction_0_OBUF_4355,
      ADR2 => OP_1_Rs_sig(15),
      ADR4 => OP_1_Rs_sig_14_0,
      ADR3 => OP_1_Rs_sig_12_0,
      ADR1 => OP_1_Rs_sig(13),
      O => N257
    );
  ALU_op_operand2_0_301 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y112",
      INIT => X"FF30CF00FF3FC000"
    )
    port map (
      ADR0 => '1',
      ADR1 => Instruction_0_OBUF_4355,
      ADR4 => OP_1_Rs_sig_4_0,
      ADR3 => OP_1_Rs_sig(5),
      ADR5 => Op_2_Rt_sig_0_0,
      ADR2 => Itype_sig,
      O => ALU_op_operand2_0_mmx_out30
    );
  N4_N4_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N6,
      O => N6_0
    );
  N4_N4_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N14,
      O => N14_0
    );
  N4_N4_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N10,
      O => N10_0
    );
  Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_1_1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y113",
      INIT => X"0F0F00FF0F0F00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => Ctrl_Next_PC_signal(0),
      ADR3 => PC_Plus_1_sig_1_0,
      ADR2 => Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_1_1_4290,
      ADR5 => '1',
      O => N4
    );
  Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_0_1_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X37Y113",
      INIT => X"33335555"
    )
    port map (
      ADR0 => PC_Plus_1_sig_0_0,
      ADR1 => Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_0_1_4288,
      ADR4 => Ctrl_Next_PC_signal(0),
      ADR3 => '1',
      ADR2 => '1',
      O => N6
    );
  Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_3_1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y113",
      INIT => X"00FF555500FF5555"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => Ctrl_Next_PC_signal(0),
      ADR0 => PC_Plus_1_sig_3_0,
      ADR3 => Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_3_1_4353,
      ADR5 => '1',
      O => N12
    );
  Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_2_1_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X37Y113",
      INIT => X"0F0F3333"
    )
    port map (
      ADR1 => PC_Plus_1_sig_2_0,
      ADR2 => Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_2_1_4351,
      ADR4 => Ctrl_Next_PC_signal(0),
      ADR3 => '1',
      ADR0 => '1',
      O => N14
    );
  Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_5_1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y113",
      INIT => X"555500FF555500FF"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => Ctrl_Next_PC_signal(0),
      ADR3 => PC_Plus_1_sig_5_0,
      ADR0 => Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_5_1_4296,
      ADR5 => '1',
      O => N8
    );
  Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_4_1_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X37Y113",
      INIT => X"33330F0F"
    )
    port map (
      ADR2 => PC_Plus_1_sig_4_0,
      ADR1 => Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_4_1_4294,
      ADR4 => Ctrl_Next_PC_signal(0),
      ADR3 => '1',
      ADR0 => '1',
      O => N10
    );
  ALU_op_operand2_1_mmx_out201_ALU_op_operand2_1_mmx_out201_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_operand2_1_mmx_out201,
      O => ALU_op_operand2_1_mmx_out201_0
    );
  ALU_op_operand2_1_1311 : X_MUX2
    generic map(
      LOC => "SLICE_X38Y110"
    )
    port map (
      IA => N220,
      IB => N221,
      O => ALU_op_operand2_1_mmx_out201,
      SEL => Decoder_is_itype_sig1_4502
    );
  ALU_op_operand2_1_1311_F : X_LUT6
    generic map(
      LOC => "SLICE_X38Y110",
      INIT => X"F5DDF588A0DDA088"
    )
    port map (
      ADR0 => Op_2_Rt_sig(1),
      ADR3 => Op_2_Rt_sig_0_0,
      ADR2 => OP_1_Rs_sig_8_0,
      ADR1 => OP_1_Rs_sig(7),
      ADR4 => OP_1_Rs_sig(5),
      ADR5 => OP_1_Rs_sig_6_0,
      O => N220
    );
  ALU_op_operand2_1_1311_G : X_LUT6
    generic map(
      LOC => "SLICE_X38Y110",
      INIT => X"F5F5A0A0DD88DD88"
    )
    port map (
      ADR0 => Instruction_1_OBUF_4358,
      ADR5 => Instruction_0_OBUF_4355,
      ADR2 => OP_1_Rs_sig_8_0,
      ADR1 => OP_1_Rs_sig(7),
      ADR3 => OP_1_Rs_sig(5),
      ADR4 => OP_1_Rs_sig_6_0,
      O => N221
    );
  ALU_op_operand2_1_mmx_out110_ALU_op_operand2_1_mmx_out110_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_operand2_1_mmx_out110,
      O => ALU_op_operand2_1_mmx_out110_0
    );
  ALU_op_operand2_1_1101 : X_MUX2
    generic map(
      LOC => "SLICE_X39Y111"
    )
    port map (
      IA => N240,
      IB => N241,
      O => ALU_op_operand2_1_mmx_out110,
      SEL => Itype_sig
    );
  ALU_op_operand2_1_1101_F : X_LUT6
    generic map(
      LOC => "SLICE_X39Y111",
      INIT => X"E4FFE4AAE455E400"
    )
    port map (
      ADR0 => Op_2_Rt_sig(1),
      ADR3 => Op_2_Rt_sig_0_0,
      ADR2 => OP_1_Rs_sig(13),
      ADR5 => OP_1_Rs_sig_12_0,
      ADR4 => OP_1_Rs_sig_10_0,
      ADR1 => OP_1_Rs_sig(11),
      O => N240
    );
  ALU_op_operand2_1_1101_G : X_LUT6
    generic map(
      LOC => "SLICE_X39Y111",
      INIT => X"FDF85D58ADA80D08"
    )
    port map (
      ADR0 => Instruction_0_OBUF_4355,
      ADR2 => Instruction_1_OBUF_4358,
      ADR4 => OP_1_Rs_sig(13),
      ADR1 => OP_1_Rs_sig(11),
      ADR3 => OP_1_Rs_sig_10_0,
      ADR5 => OP_1_Rs_sig_12_0,
      O => N241
    );
  PC_output_pc_3 : X_SFF
    generic map(
      LOC => "SLICE_X36Y113",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PC_output_pc_3_CLK,
      I => Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_3_1_4353,
      O => PC_output_pc(3),
      SRST => PC_reset_IBUF_4451,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y113",
      INIT => X"00F000AA00330033"
    )
    port map (
      ADR3 => PC_reset_IBUF_4451,
      ADR5 => Ctrl_Next_PC_signal_1_0,
      ADR2 => PC_Itype_Branch_sig_3_0,
      ADR4 => Ctrl_Next_PC_signal(0),
      ADR0 => Instruction_3_OBUF_4365,
      ADR1 => N12,
      O => Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_3_1_4353
    );
  PC_output_pc_2 : X_SFF
    generic map(
      LOC => "SLICE_X36Y113",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PC_output_pc_2_CLK,
      I => Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_2_1_4351,
      O => PC_output_pc(2),
      SRST => PC_reset_IBUF_4451,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y113",
      INIT => X"00EE0044000F000F"
    )
    port map (
      ADR3 => PC_reset_IBUF_4451,
      ADR5 => Ctrl_Next_PC_signal_1_0,
      ADR4 => PC_Itype_Branch_sig_2_0,
      ADR0 => Ctrl_Next_PC_signal(0),
      ADR1 => Instruction_2_OBUF_4362,
      ADR2 => N14_0,
      O => Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_2_1_4351
    );
  PC_output_pc_1 : X_SFF
    generic map(
      LOC => "SLICE_X36Y113",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PC_output_pc_1_CLK,
      I => Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_1_1_4290,
      O => PC_output_pc(1),
      SRST => PC_reset_IBUF_4451,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y113",
      INIT => X"0D0D0808000F000F"
    )
    port map (
      ADR2 => PC_reset_IBUF_4451,
      ADR5 => Ctrl_Next_PC_signal_1_0,
      ADR1 => PC_Itype_Branch_sig_1_0,
      ADR0 => Ctrl_Next_PC_signal(0),
      ADR4 => Instruction_1_OBUF_4358,
      ADR3 => N4,
      O => Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_1_1_4290
    );
  PC_output_pc_0 : X_SFF
    generic map(
      LOC => "SLICE_X36Y113",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PC_output_pc_0_CLK,
      I => Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_0_1_4288,
      O => PC_output_pc(0),
      SRST => PC_reset_IBUF_4451,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y113",
      INIT => X"0000EE0F0000440F"
    )
    port map (
      ADR4 => PC_reset_IBUF_4451,
      ADR3 => Ctrl_Next_PC_signal_1_0,
      ADR5 => PC_Itype_Branch_sig_0_0,
      ADR0 => Ctrl_Next_PC_signal(0),
      ADR1 => Instruction_0_OBUF_4355,
      ADR2 => N6_0,
      O => Mux_NextPC_inp_1_31_GND_104_o_mux_1_OUT_0_1_4288
    );
  Instruction_21_OBUF_Instruction_21_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_operand2_1_mmx_out221,
      O => ALU_op_operand2_1_mmx_out221_0
    );
  ALU_op_operand2_1_1511 : X_MUX2
    generic map(
      LOC => "SLICE_X36Y111"
    )
    port map (
      IA => N212,
      IB => N213,
      O => ALU_op_operand2_1_mmx_out221,
      SEL => Itype_sig
    );
  ALU_op_operand2_1_1511_F : X_LUT6
    generic map(
      LOC => "SLICE_X36Y111",
      INIT => X"B8FFB833B8CCB800"
    )
    port map (
      ADR1 => Op_2_Rt_sig(1),
      ADR3 => Op_2_Rt_sig_0_0,
      ADR0 => OP_1_Rs_sig_16_0,
      ADR4 => OP_1_Rs_sig(15),
      ADR5 => OP_1_Rs_sig(13),
      ADR2 => OP_1_Rs_sig_14_0,
      O => N212
    );
  ALU_op_operand2_1_1511_G : X_LUT6
    generic map(
      LOC => "SLICE_X36Y111",
      INIT => X"BBF388F3BBC088C0"
    )
    port map (
      ADR1 => Instruction_1_OBUF_4358,
      ADR3 => Instruction_0_OBUF_4355,
      ADR0 => OP_1_Rs_sig_16_0,
      ADR2 => OP_1_Rs_sig(15),
      ADR5 => OP_1_Rs_sig(13),
      ADR4 => OP_1_Rs_sig_14_0,
      O => N213
    );
  Ins_MEM_Mram_instruction_memory211 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y111",
      INIT => X"5845056C737D0F7C"
    )
    port map (
      ADR2 => PC_output_pc(5),
      ADR1 => PC_output_pc(0),
      ADR5 => PC_output_pc(4),
      ADR4 => PC_output_pc(2),
      ADR3 => PC_output_pc(1),
      ADR0 => PC_output_pc(3),
      O => Instruction_21_OBUF_4450
    );
  Instruction_2_OBUF_Instruction_2_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_operand2_1_mmx_out271,
      O => ALU_op_operand2_1_mmx_out271_0
    );
  ALU_op_operand2_1_2011 : X_MUX2
    generic map(
      LOC => "SLICE_X37Y111"
    )
    port map (
      IA => N254,
      IB => N255,
      O => ALU_op_operand2_1_mmx_out271,
      SEL => Itype_sig
    );
  ALU_op_operand2_1_2011_F : X_LUT6
    generic map(
      LOC => "SLICE_X37Y111",
      INIT => X"AFAFFC0CA0A0FC0C"
    )
    port map (
      ADR2 => Op_2_Rt_sig(1),
      ADR4 => Op_2_Rt_sig_0_0,
      ADR0 => OP_1_Rs_sig(9),
      ADR3 => OP_1_Rs_sig_8_0,
      ADR1 => OP_1_Rs_sig_6_0,
      ADR5 => OP_1_Rs_sig(7),
      O => N254
    );
  ALU_op_operand2_1_2011_G : X_LUT6
    generic map(
      LOC => "SLICE_X37Y111",
      INIT => X"FF55E4E4AA00E4E4"
    )
    port map (
      ADR4 => Instruction_1_OBUF_4358,
      ADR0 => Instruction_0_OBUF_4355,
      ADR3 => OP_1_Rs_sig(9),
      ADR5 => OP_1_Rs_sig_8_0,
      ADR1 => OP_1_Rs_sig_6_0,
      ADR2 => OP_1_Rs_sig(7),
      O => N255
    );
  Ins_MEM_Mram_instruction_memory210 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y111",
      INIT => X"0A83111140221020"
    )
    port map (
      ADR1 => PC_output_pc(1),
      ADR0 => PC_output_pc(4),
      ADR4 => PC_output_pc(0),
      ADR5 => PC_output_pc(2),
      ADR2 => PC_output_pc(3),
      ADR3 => PC_output_pc(5),
      O => Instruction_2_OBUF_4362
    );
  Instruction_23_OBUF_Instruction_23_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_operand2_1_mmx_out141,
      O => ALU_op_operand2_1_mmx_out141_0
    );
  ALU_op_operand2_1_611 : X_MUX2
    generic map(
      LOC => "SLICE_X36Y112"
    )
    port map (
      IA => N250,
      IB => N251,
      O => ALU_op_operand2_1_mmx_out141,
      SEL => Itype_sig
    );
  ALU_op_operand2_1_611_F : X_LUT6
    generic map(
      LOC => "SLICE_X36Y112",
      INIT => X"EFECE3E02F2C2320"
    )
    port map (
      ADR1 => Op_2_Rt_sig(1),
      ADR2 => Op_2_Rt_sig_0_0,
      ADR5 => OP_1_Rs_sig(11),
      ADR4 => OP_1_Rs_sig_10_0,
      ADR3 => OP_1_Rs_sig_8_0,
      ADR0 => OP_1_Rs_sig(9),
      O => N250
    );
  ALU_op_operand2_1_611_G : X_LUT6
    generic map(
      LOC => "SLICE_X36Y112",
      INIT => X"FEBADC9876325410"
    )
    port map (
      ADR0 => Instruction_1_OBUF_4358,
      ADR1 => Instruction_0_OBUF_4355,
      ADR5 => OP_1_Rs_sig(11),
      ADR4 => OP_1_Rs_sig_10_0,
      ADR2 => OP_1_Rs_sig_8_0,
      ADR3 => OP_1_Rs_sig(9),
      O => N251
    );
  Ins_MEM_Mram_instruction_memory231 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y112",
      INIT => X"5F17491D459573D6"
    )
    port map (
      ADR2 => PC_output_pc(4),
      ADR5 => PC_output_pc(2),
      ADR1 => PC_output_pc(1),
      ADR3 => PC_output_pc(5),
      ADR0 => PC_output_pc(3),
      ADR4 => PC_output_pc(0),
      O => Instruction_23_OBUF_4448
    );
  Ins_MEM_Mram_instruction_memory221 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y112",
      INIT => X"4051DB556715515A"
    )
    port map (
      ADR0 => PC_output_pc(3),
      ADR4 => PC_output_pc(4),
      ADR5 => PC_output_pc(2),
      ADR2 => PC_output_pc(0),
      ADR3 => PC_output_pc(1),
      ADR1 => PC_output_pc(5),
      O => Instruction_22_OBUF_4449
    );
  Ins_MEM_Mram_instruction_memory191 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y114",
      INIT => X"405B876814A08014"
    )
    port map (
      ADR5 => PC_output_pc(1),
      ADR3 => PC_output_pc(5),
      ADR0 => PC_output_pc(4),
      ADR2 => PC_output_pc(0),
      ADR4 => PC_output_pc(3),
      ADR1 => PC_output_pc(2),
      O => Instruction_19_OBUF_4215
    );
  Ins_MEM_Mram_instruction_memory171 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y114",
      INIT => X"05BBD56B15BD33BA"
    )
    port map (
      ADR3 => PC_output_pc(5),
      ADR0 => PC_output_pc(3),
      ADR4 => PC_output_pc(4),
      ADR2 => PC_output_pc(2),
      ADR1 => PC_output_pc(1),
      ADR5 => PC_output_pc(0),
      O => Instruction_17_OBUF_4208
    );
  ALU_op_operand2_1_mmx_out101_ALU_op_operand2_1_mmx_out101_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_operand2_1_mmx_out101,
      O => ALU_op_operand2_1_mmx_out101_0
    );
  ALU_op_operand2_1_291 : X_MUX2
    generic map(
      LOC => "SLICE_X37Y109"
    )
    port map (
      IA => N218,
      IB => N219,
      O => ALU_op_operand2_1_mmx_out101,
      SEL => Itype_sig
    );
  ALU_op_operand2_1_291_F : X_LUT6
    generic map(
      LOC => "SLICE_X37Y109",
      INIT => X"FFE2CCE233E200E2"
    )
    port map (
      ADR1 => Op_2_Rt_sig(1),
      ADR3 => Op_2_Rt_sig_0_0,
      ADR5 => OP_1_Rs_sig_22_0,
      ADR2 => OP_1_Rs_sig(21),
      ADR0 => OP_1_Rs_sig(19),
      ADR4 => OP_1_Rs_sig_20_0,
      O => N218
    );
  ALU_op_operand2_1_291_G : X_LUT6
    generic map(
      LOC => "SLICE_X37Y109",
      INIT => X"FEDCBA9876543210"
    )
    port map (
      ADR0 => Instruction_1_OBUF_4358,
      ADR1 => Instruction_0_OBUF_4355,
      ADR5 => OP_1_Rs_sig_22_0,
      ADR3 => OP_1_Rs_sig(21),
      ADR2 => OP_1_Rs_sig(19),
      ADR4 => OP_1_Rs_sig_20_0,
      O => N219
    );
  OP_1_Rs_sig_11_OP_1_Rs_sig_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Reg_File_Mram_register_file3_RAMD_D1_O,
      O => Reg_File_Mram_register_file3_RAMD_D1_O_0
    );
  OP_1_Rs_sig_11_OP_1_Rs_sig_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig(10),
      O => OP_1_Rs_sig_10_0
    );
  OP_1_Rs_sig_11_OP_1_Rs_sig_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig(8),
      O => OP_1_Rs_sig_8_0
    );
  OP_1_Rs_sig_11_OP_1_Rs_sig_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig(6),
      O => OP_1_Rs_sig_6_0
    );
  Reg_File_Mram_register_file3_RAMD_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X38Y111",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_D1_CLK,
      I => '0',
      O => NLW_Reg_File_Mram_register_file3_RAMD_D1_O_UNCONNECTED,
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file3_RAMD : X_RAMD32
    generic map(
      LOC => "SLICE_X38Y111",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_CLK,
      I => '0',
      O => Reg_File_Mram_register_file3_RAMD_D1_O,
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file3_RAMC_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X38Y111",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_IN,
      O => OP_1_Rs_sig(11),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file3_RAMC : X_RAMD32
    generic map(
      LOC => "SLICE_X38Y111",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_IN,
      O => OP_1_Rs_sig(10),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file3_RAMB_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X38Y111",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_IN,
      O => OP_1_Rs_sig(9),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file3_RAMB : X_RAMD32
    generic map(
      LOC => "SLICE_X38Y111",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_IN,
      O => OP_1_Rs_sig(8),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file3_RAMA_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X38Y111",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_IN,
      O => OP_1_Rs_sig(7),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file3_RAMA : X_RAMD32
    generic map(
      LOC => "SLICE_X38Y111",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_IN,
      O => OP_1_Rs_sig(6),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_WADR4,
      WE => write_enable_sig
    );
  ALU_op_operand2_1_mmx_out28_ALU_op_operand2_1_mmx_out28_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_operand2_1_mmx_out28,
      O => ALU_op_operand2_1_mmx_out28_0
    );
  ALU_op_operand2_1_281 : X_MUX2
    generic map(
      LOC => "SLICE_X36Y110"
    )
    port map (
      IA => N236,
      IB => N237,
      O => ALU_op_operand2_1_mmx_out28,
      SEL => Itype_sig
    );
  ALU_op_operand2_1_281_F : X_LUT6
    generic map(
      LOC => "SLICE_X36Y110",
      INIT => X"FF55AA00D8D8D8D8"
    )
    port map (
      ADR0 => Op_2_Rt_sig(1),
      ADR5 => Op_2_Rt_sig_0_0,
      ADR3 => OP_1_Rs_sig(7),
      ADR1 => OP_1_Rs_sig_6_0,
      ADR2 => OP_1_Rs_sig_4_0,
      ADR4 => OP_1_Rs_sig(5),
      O => N236
    );
  ALU_op_operand2_1_281_G : X_LUT6
    generic map(
      LOC => "SLICE_X36Y110",
      INIT => X"EE44EE44FAFA5050"
    )
    port map (
      ADR0 => Instruction_0_OBUF_4355,
      ADR5 => Instruction_1_OBUF_4358,
      ADR3 => OP_1_Rs_sig(7),
      ADR4 => OP_1_Rs_sig(5),
      ADR2 => OP_1_Rs_sig_4_0,
      ADR1 => OP_1_Rs_sig_6_0,
      O => N237
    );
  Instruction_30_OBUF_Instruction_30_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALU_op_operand2_1_mmx_out71,
      O => ALU_op_operand2_1_mmx_out71_0
    );
  ALU_op_operand2_1_2511 : X_MUX2
    generic map(
      LOC => "SLICE_X37Y112"
    )
    port map (
      IA => N216,
      IB => N217,
      O => ALU_op_operand2_1_mmx_out71,
      SEL => Itype_sig
    );
  ALU_op_operand2_1_2511_F : X_LUT6
    generic map(
      LOC => "SLICE_X37Y112",
      INIT => X"F5DDA0DDF588A088"
    )
    port map (
      ADR0 => Op_2_Rt_sig(1),
      ADR3 => Op_2_Rt_sig_0_0,
      ADR2 => OP_1_Rs_sig_10_0,
      ADR1 => OP_1_Rs_sig(9),
      ADR5 => OP_1_Rs_sig(7),
      ADR4 => OP_1_Rs_sig_8_0,
      O => N216
    );
  ALU_op_operand2_1_2511_G : X_LUT6
    generic map(
      LOC => "SLICE_X37Y112",
      INIT => X"F5DDA0DDF588A088"
    )
    port map (
      ADR0 => Instruction_1_OBUF_4358,
      ADR3 => Instruction_0_OBUF_4355,
      ADR2 => OP_1_Rs_sig_10_0,
      ADR1 => OP_1_Rs_sig(9),
      ADR5 => OP_1_Rs_sig(7),
      ADR4 => OP_1_Rs_sig_8_0,
      O => N217
    );
  Ins_MEM_Mram_instruction_memory301 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y112",
      INIT => X"0000000020000000"
    )
    port map (
      ADR2 => PC_output_pc(0),
      ADR1 => PC_output_pc(1),
      ADR5 => PC_output_pc(2),
      ADR0 => PC_output_pc(3),
      ADR4 => PC_output_pc(4),
      ADR3 => PC_output_pc(5),
      O => Instruction_30_OBUF_4220
    );
  Decoder_next_pc_2_2 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y122",
      INIT => X"0000000F0000000F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => Instruction_30_OBUF_4220,
      ADR4 => reset_IBUF_4421,
      ADR2 => Instruction_28_OBUF_4443,
      O => Decoder_next_pc_2_1_4728
    );
  Decoder_next_pc_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X47Y122",
      INIT => X"0000000B550055A0"
    )
    port map (
      ADR3 => Instruction_28_OBUF_4443,
      ADR4 => reset_IBUF_4421,
      ADR2 => Compare_input1_31_input2_31_equal_1_o_0,
      ADR5 => Instruction_26_OBUF_4445,
      ADR0 => Instruction_27_OBUF_4444,
      ADR1 => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_15_Q_4717,
      O => Decoder_next_pc(1)
    );
  Decoder_next_pc_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X47Y122",
      INIT => X"8888000000000000"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => Instruction_30_OBUF_4220,
      ADR4 => Instruction_26_OBUF_4445,
      ADR0 => Instruction_27_OBUF_4444,
      ADR5 => Instruction_28_OBUF_4443,
      O => Decoder_next_pc(2)
    );
  Op_2_Rt_sig_5_Op_2_Rt_sig_5_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Reg_File_Mram_register_file11_RAMD_D1_O,
      O => Reg_File_Mram_register_file11_RAMD_D1_O_0
    );
  Op_2_Rt_sig_5_Op_2_Rt_sig_5_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig(4),
      O => Op_2_Rt_sig_4_0
    );
  Op_2_Rt_sig_5_Op_2_Rt_sig_5_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig(2),
      O => Op_2_Rt_sig_2_0
    );
  Op_2_Rt_sig_5_Op_2_Rt_sig_5_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig(0),
      O => Op_2_Rt_sig_0_0
    );
  Reg_File_Mram_register_file11_RAMD_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X38Y112",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_D1_CLK,
      I => '0',
      O => NLW_Reg_File_Mram_register_file11_RAMD_D1_O_UNCONNECTED,
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file11_RAMD : X_RAMD32
    generic map(
      LOC => "SLICE_X38Y112",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_CLK,
      I => '0',
      O => Reg_File_Mram_register_file11_RAMD_D1_O,
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file11_RAMC_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X38Y112",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_IN,
      O => Op_2_Rt_sig(5),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file11_RAMC : X_RAMD32
    generic map(
      LOC => "SLICE_X38Y112",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_IN,
      O => Op_2_Rt_sig(4),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file11_RAMB_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X38Y112",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_IN,
      O => Op_2_Rt_sig(3),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file11_RAMB : X_RAMD32
    generic map(
      LOC => "SLICE_X38Y112",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_IN,
      O => Op_2_Rt_sig(2),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file11_RAMA_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X38Y112",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_IN,
      O => Op_2_Rt_sig(1),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_WADR4,
      WE => write_enable_sig
    );
  Reg_File_Mram_register_file11_RAMA : X_RAMD32
    generic map(
      LOC => "SLICE_X38Y112",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_RADR0,
      RADR1 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_RADR1,
      RADR2 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_RADR2,
      RADR3 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_RADR3,
      RADR4 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_RADR4,
      CLK => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_CLK,
      I => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_IN,
      O => Op_2_Rt_sig(0),
      WADR0 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_WADR0,
      WADR1 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_WADR1,
      WADR2 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_WADR2,
      WADR3 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_WADR3,
      WADR4 => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_WADR4,
      WE => write_enable_sig
    );
  Decoder_next_pc_2_2_Decoder_next_pc_2_2_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Ctrl_Next_PC_signal(1),
      O => Ctrl_Next_PC_signal_1_0
    );
  Decoder_next_pc_2_3 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y122",
      INIT => X"F0F0F8FCF8F8F0F0"
    )
    port map (
      ADR1 => Decoder_next_pc_2_1_4728,
      ADR4 => Compare_input1_31_input2_31_equal_1_o_0,
      ADR5 => Instruction_26_OBUF_4445,
      ADR0 => Instruction_27_OBUF_4444,
      ADR3 => Compare_Mcompar_input2_31_input1_31_LessThan_3_o_cy_15_Q_4717,
      ADR2 => Decoder_next_pc(2),
      O => Decoder_next_pc_2_2_4784
    );
  Decoder_next_pc_2_4 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y122",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Instruction_29_OBUF_4222,
      ADR3 => Decoder_next_pc_2_2_4784,
      ADR5 => '1',
      O => Ctrl_Next_PC_signal(0)
    );
  Decoder_next_pc_1_2 : X_LUT5
    generic map(
      LOC => "SLICE_X46Y122",
      INIT => X"44440000"
    )
    port map (
      ADR3 => '1',
      ADR0 => Instruction_30_OBUF_4220,
      ADR1 => Decoder_next_pc(1),
      ADR4 => Instruction_29_OBUF_4222,
      ADR2 => '1',
      O => Ctrl_Next_PC_signal(1)
    );
  NlwBufferBlock_Adder_PC_Itype_Branch_Madd_sum_out_xor_5_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => PC_Plus_1_sig_4_0,
      O => NlwBufferSignal_Adder_PC_Itype_Branch_Madd_sum_out_xor_5_DI_0_Q
    );
  NlwBufferBlock_ALU_op_Mmux_sig_output1_rs_cy_23_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig_20_0,
      O => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_23_DI_0_Q
    );
  NlwBufferBlock_ALU_op_Mmux_sig_output1_rs_cy_23_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig(21),
      O => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_23_DI_1_Q
    );
  NlwBufferBlock_ALU_op_Mmux_sig_output1_rs_cy_23_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig_22_0,
      O => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_23_DI_2_Q
    );
  NlwBufferBlock_ALU_op_Mmux_sig_output1_rs_cy_23_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig(23),
      O => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_23_DI_3_Q
    );
  NlwBufferBlock_ALU_op_Mmux_sig_output1_rs_xor_31_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig_28_0,
      O => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_xor_31_DI_0_Q
    );
  NlwBufferBlock_ALU_op_Mmux_sig_output1_rs_xor_31_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig(29),
      O => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_xor_31_DI_1_Q
    );
  NlwBufferBlock_ALU_op_Mmux_sig_output1_rs_xor_31_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig_30_0,
      O => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_xor_31_DI_2_Q
    );
  NlwBufferBlock_Adder_PC_Itype_Branch_Madd_sum_out_cy_3_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => PC_Plus_1_sig_0_0,
      O => NlwBufferSignal_Adder_PC_Itype_Branch_Madd_sum_out_cy_3_DI_0_Q
    );
  NlwBufferBlock_Adder_PC_Itype_Branch_Madd_sum_out_cy_3_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => PC_Plus_1_sig_1_0,
      O => NlwBufferSignal_Adder_PC_Itype_Branch_Madd_sum_out_cy_3_DI_1_Q
    );
  NlwBufferBlock_Adder_PC_Itype_Branch_Madd_sum_out_cy_3_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => PC_Plus_1_sig_2_0,
      O => NlwBufferSignal_Adder_PC_Itype_Branch_Madd_sum_out_cy_3_DI_2_Q
    );
  NlwBufferBlock_Adder_PC_Itype_Branch_Madd_sum_out_cy_3_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => PC_Plus_1_sig_3_0,
      O => NlwBufferSignal_Adder_PC_Itype_Branch_Madd_sum_out_cy_3_DI_3_Q
    );
  NlwBufferBlock_ALU_op_Mmux_sig_output1_rs_cy_27_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig_24_0,
      O => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_27_DI_0_Q
    );
  NlwBufferBlock_ALU_op_Mmux_sig_output1_rs_cy_27_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig(25),
      O => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_27_DI_1_Q
    );
  NlwBufferBlock_ALU_op_Mmux_sig_output1_rs_cy_27_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig_26_0,
      O => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_27_DI_2_Q
    );
  NlwBufferBlock_ALU_op_Mmux_sig_output1_rs_cy_27_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig(27),
      O => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_27_DI_3_Q
    );
  NlwBufferBlock_output_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_10_OBUF_4427,
      O => NlwBufferSignal_output_10_OBUF_I
    );
  NlwBufferBlock_output_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_14_OBUF_4428,
      O => NlwBufferSignal_output_14_OBUF_I
    );
  NlwBufferBlock_output_19_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_19_OBUF_4426,
      O => NlwBufferSignal_output_19_OBUF_I
    );
  NlwBufferBlock_output_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_13_OBUF_4429,
      O => NlwBufferSignal_output_13_OBUF_I
    );
  NlwBufferBlock_output_16_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_16_OBUF_4424,
      O => NlwBufferSignal_output_16_OBUF_I
    );
  NlwBufferBlock_output_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_15_OBUF_4425,
      O => NlwBufferSignal_output_15_OBUF_I
    );
  NlwBufferBlock_output_18_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_18_OBUF_4422,
      O => NlwBufferSignal_output_18_OBUF_I
    );
  NlwBufferBlock_output_17_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_17_OBUF_4423,
      O => NlwBufferSignal_output_17_OBUF_I
    );
  NlwBufferBlock_output_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_11_OBUF_4431,
      O => NlwBufferSignal_output_11_OBUF_I
    );
  NlwBufferBlock_output_28_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_28_OBUF_0,
      O => NlwBufferSignal_output_28_OBUF_I
    );
  NlwBufferBlock_output_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_12_OBUF_4430,
      O => NlwBufferSignal_output_12_OBUF_I
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory9_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory9_RADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory9_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory9_RADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory9_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory9_RADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory9_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory9_RADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory9_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory9_RADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory9_RADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory9_RADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory9_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_n0012_8_INV_Data_MEM_Mram_data_memory9CLK,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory9_CLK
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory9_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig_8_0,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory9_IN
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory9_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory9_WADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory9_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory9_WADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory9_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory9_WADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory9_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory9_WADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory9_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory9_WADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory9_WADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory9_WADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory9_WE : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_write_enable_read_enable_AND_33_o,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory9_WE
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory30_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory30_RADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory30_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory30_RADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory30_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory30_RADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory30_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory30_RADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory30_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory30_RADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory30_RADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory30_RADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory30_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_n0012_8_INV_Data_MEM_Mram_data_memory30CLK,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory30_CLK
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory30_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig(29),
      O => NlwBufferSignal_Data_MEM_Mram_data_memory30_IN
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory30_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory30_WADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory30_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory30_WADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory30_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory30_WADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory30_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory30_WADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory30_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory30_WADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory30_WADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory30_WADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory30_WE : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_write_enable_read_enable_AND_33_o,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory30_WE
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory31_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory31_RADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory31_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory31_RADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory31_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory31_RADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory31_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory31_RADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory31_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory31_RADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory31_RADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory31_RADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory31_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_n0012_8_INV_Data_MEM_Mram_data_memory31CLK,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory31_CLK
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory31_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig_30_0,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory31_IN
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory31_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory31_WADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory31_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory31_WADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory31_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory31_WADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory31_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory31_WADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory31_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory31_WADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory31_WADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory31_WADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory31_WE : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_write_enable_read_enable_AND_33_o,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory31_WE
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory32_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory32_RADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory32_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory32_RADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory32_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory32_RADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory32_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory32_RADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory32_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory32_RADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory32_RADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory32_RADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory32_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_n0012_8_INV_Data_MEM_Mram_data_memory32CLK,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory32_CLK
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory32_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig(31),
      O => NlwBufferSignal_Data_MEM_Mram_data_memory32_IN
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory32_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory32_WADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory32_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory32_WADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory32_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory32_WADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory32_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory32_WADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory32_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory32_WADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory32_WADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory32_WADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory32_WE : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_write_enable_read_enable_AND_33_o,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory32_WE
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory22_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory22_RADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory22_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory22_RADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory22_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory22_RADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory22_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory22_RADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory22_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory22_RADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory22_RADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory22_RADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory22_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_n0012_21_INV_Data_MEM_Mram_data_memory22CLK,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory22_CLK
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory22_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig(21),
      O => NlwBufferSignal_Data_MEM_Mram_data_memory22_IN
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory22_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory22_WADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory22_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory22_WADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory22_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory22_WADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory22_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory22_WADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory22_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory22_WADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory22_WADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory22_WADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory22_WE : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_write_enable_read_enable_AND_33_o,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory22_WE
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory23_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory23_RADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory23_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory23_RADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory23_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory23_RADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory23_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory23_RADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory23_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory23_RADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory23_RADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory23_RADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory23_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_n0012_21_INV_Data_MEM_Mram_data_memory23CLK,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory23_CLK
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory23_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig_22_0,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory23_IN
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory23_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory23_WADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory23_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory23_WADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory23_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory23_WADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory23_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory23_WADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory23_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory23_WADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory23_WADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory23_WADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory23_WE : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_write_enable_read_enable_AND_33_o,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory23_WE
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory24_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory24_RADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory24_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory24_RADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory24_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory24_RADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory24_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory24_RADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory24_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory24_RADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory24_RADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory24_RADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory24_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_n0012_21_INV_Data_MEM_Mram_data_memory24CLK,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory24_CLK
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory24_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig(23),
      O => NlwBufferSignal_Data_MEM_Mram_data_memory24_IN
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory24_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory24_WADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory24_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory24_WADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory24_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory24_WADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory24_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory24_WADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory24_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory24_WADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory24_WADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory24_WADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory24_WE : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_write_enable_read_enable_AND_33_o,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory24_WE
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory25_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory25_RADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory25_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory25_RADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory25_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory25_RADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory25_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory25_RADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory25_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory25_RADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory25_RADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory25_RADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory25_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_n0012_21_INV_Data_MEM_Mram_data_memory25CLK,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory25_CLK
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory25_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig_24_0,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory25_IN
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory25_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory25_WADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory25_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory25_WADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory25_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory25_WADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory25_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory25_WADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory25_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory25_WADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory25_WADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory25_WADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory25_WE : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_write_enable_read_enable_AND_33_o,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory25_WE
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory1_RADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory1_RADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory1_RADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory1_RADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory1_RADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory1_RADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory1_RADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_n0012_0_INV_Data_MEM_Mram_data_memory1CLK,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory1_CLK
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig_0_0,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory1_IN
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory1_WADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory1_WADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory1_WADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory1_WADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory1_WADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory1_WADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory1_WADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory1_WE : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_write_enable_read_enable_AND_33_o,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory1_WE
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory2_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory2_RADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory2_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory2_RADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory2_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory2_RADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory2_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory2_RADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory2_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory2_RADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory2_RADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory2_RADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory2_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_n0012_0_INV_Data_MEM_Mram_data_memory2CLK,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory2_CLK
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory2_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig(1),
      O => NlwBufferSignal_Data_MEM_Mram_data_memory2_IN
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory2_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory2_WADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory2_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory2_WADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory2_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory2_WADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory2_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory2_WADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory2_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory2_WADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory2_WADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory2_WADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory2_WE : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_write_enable_read_enable_AND_33_o,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory2_WE
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory3_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory3_RADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory3_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory3_RADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory3_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory3_RADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory3_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory3_RADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory3_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory3_RADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory3_RADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory3_RADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory3_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_n0012_0_INV_Data_MEM_Mram_data_memory3CLK,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory3_CLK
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory3_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig_2_0,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory3_IN
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory3_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory3_WADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory3_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory3_WADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory3_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory3_WADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory3_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory3_WADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory3_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory3_WADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory3_WADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory3_WADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory3_WE : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_write_enable_read_enable_AND_33_o,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory3_WE
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory4_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory4_RADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory4_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory4_RADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory4_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory4_RADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory4_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory4_RADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory4_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory4_RADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory4_RADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory4_RADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory4_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_n0012_0_INV_Data_MEM_Mram_data_memory4CLK,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory4_CLK
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory4_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig(3),
      O => NlwBufferSignal_Data_MEM_Mram_data_memory4_IN
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory4_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory4_WADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory4_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory4_WADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory4_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory4_WADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory4_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory4_WADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory4_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory4_WADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory4_WADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory4_WADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory4_WE : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_write_enable_read_enable_AND_33_o,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory4_WE
    );
  NlwBufferBlock_ALU_op_Mmux_sig_output1_rs_cy_11_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig_8_0,
      O => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_11_DI_0_Q
    );
  NlwBufferBlock_ALU_op_Mmux_sig_output1_rs_cy_11_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig(9),
      O => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_11_DI_1_Q
    );
  NlwBufferBlock_ALU_op_Mmux_sig_output1_rs_cy_11_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig_10_0,
      O => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_11_DI_2_Q
    );
  NlwBufferBlock_ALU_op_Mmux_sig_output1_rs_cy_11_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig(11),
      O => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_11_DI_3_Q
    );
  NlwBufferBlock_ALU_op_Mmux_sig_output1_rs_cy_19_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig_16_0,
      O => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_19_DI_0_Q
    );
  NlwBufferBlock_ALU_op_Mmux_sig_output1_rs_cy_19_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig(17),
      O => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_19_DI_1_Q
    );
  NlwBufferBlock_ALU_op_Mmux_sig_output1_rs_cy_19_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig_18_0,
      O => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_19_DI_2_Q
    );
  NlwBufferBlock_ALU_op_Mmux_sig_output1_rs_cy_19_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig(19),
      O => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_19_DI_3_Q
    );
  NlwBufferBlock_ALU_op_Mmux_sig_output1_rs_cy_7_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig_4_0,
      O => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_7_DI_0_Q
    );
  NlwBufferBlock_ALU_op_Mmux_sig_output1_rs_cy_7_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig(5),
      O => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_7_DI_1_Q
    );
  NlwBufferBlock_ALU_op_Mmux_sig_output1_rs_cy_7_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig_6_0,
      O => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_7_DI_2_Q
    );
  NlwBufferBlock_ALU_op_Mmux_sig_output1_rs_cy_7_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig(7),
      O => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_7_DI_3_Q
    );
  NlwBufferBlock_ALU_op_Mmux_sig_output1_rs_cy_15_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig_12_0,
      O => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_15_DI_0_Q
    );
  NlwBufferBlock_ALU_op_Mmux_sig_output1_rs_cy_15_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig(13),
      O => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_15_DI_1_Q
    );
  NlwBufferBlock_ALU_op_Mmux_sig_output1_rs_cy_15_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig_14_0,
      O => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_15_DI_2_Q
    );
  NlwBufferBlock_ALU_op_Mmux_sig_output1_rs_cy_15_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig(15),
      O => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_15_DI_3_Q
    );
  NlwBufferBlock_ALU_op_Mmux_sig_output1_rs_cy_3_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig(1),
      O => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_3_DI_1_Q
    );
  NlwBufferBlock_ALU_op_Mmux_sig_output1_rs_cy_3_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig_2_0,
      O => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_3_DI_2_Q
    );
  NlwBufferBlock_ALU_op_Mmux_sig_output1_rs_cy_3_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => OP_1_Rs_sig(3),
      O => NlwBufferSignal_ALU_op_Mmux_sig_output1_rs_cy_3_DI_3_Q
    );
  NlwBufferBlock_output_20_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_20_OBUF_4436,
      O => NlwBufferSignal_output_20_OBUF_I
    );
  NlwBufferBlock_Instruction_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_10_OBUF_4300,
      O => NlwBufferSignal_Instruction_15_OBUF_I
    );
  NlwBufferBlock_output_24_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_24_OBUF_0,
      O => NlwBufferSignal_output_24_OBUF_I
    );
  NlwBufferBlock_Instruction_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_13_OBUF_4346,
      O => NlwBufferSignal_Instruction_13_OBUF_I
    );
  NlwBufferBlock_output_26_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_26_OBUF_4433,
      O => NlwBufferSignal_output_26_OBUF_I
    );
  NlwBufferBlock_output_27_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_27_OBUF_4306,
      O => NlwBufferSignal_output_27_OBUF_I
    );
  NlwBufferBlock_Instruction_18_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_18_OBUF_4345,
      O => NlwBufferSignal_Instruction_18_OBUF_I
    );
  NlwBufferBlock_Instruction_17_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_17_OBUF_4208,
      O => NlwBufferSignal_Instruction_17_OBUF_I
    );
  NlwBufferBlock_output_30_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_30_OBUF_4441,
      O => NlwBufferSignal_output_30_OBUF_I
    );
  NlwBufferBlock_Instruction_31_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_30_OBUF_4220,
      O => NlwBufferSignal_Instruction_31_OBUF_I
    );
  NlwBufferBlock_Instruction_19_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_19_OBUF_4215,
      O => NlwBufferSignal_Instruction_19_OBUF_I
    );
  NlwBufferBlock_output_25_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_25_OBUF_4434,
      O => NlwBufferSignal_output_25_OBUF_I
    );
  NlwBufferBlock_output_22_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_22_OBUF_4439,
      O => NlwBufferSignal_output_22_OBUF_I
    );
  NlwBufferBlock_output_29_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_29_OBUF_0,
      O => NlwBufferSignal_output_29_OBUF_I
    );
  NlwBufferBlock_Instruction_16_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_16_OBUF_4341,
      O => NlwBufferSignal_Instruction_16_OBUF_I
    );
  NlwBufferBlock_Instruction_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_14_OBUF_4216,
      O => NlwBufferSignal_Instruction_14_OBUF_I
    );
  NlwBufferBlock_Instruction_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_12_OBUF_4210,
      O => NlwBufferSignal_Instruction_12_OBUF_I
    );
  NlwBufferBlock_output_23_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_23_OBUF_4438,
      O => NlwBufferSignal_output_23_OBUF_I
    );
  NlwBufferBlock_output_21_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_21_OBUF_4440,
      O => NlwBufferSignal_output_21_OBUF_I
    );
  NlwBufferBlock_output_31_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_31_OBUF_0,
      O => NlwBufferSignal_output_31_OBUF_I
    );
  NlwBufferBlock_Instruction_30_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_30_OBUF_4220,
      O => NlwBufferSignal_Instruction_30_OBUF_I
    );
  NlwBufferBlock_Instruction_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_11_OBUF_4342,
      O => NlwBufferSignal_Instruction_11_OBUF_I
    );
  NlwBufferBlock_Instruction_29_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_29_OBUF_4222,
      O => NlwBufferSignal_Instruction_29_OBUF_I
    );
  NlwBufferBlock_Instruction_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_10_OBUF_4300,
      O => NlwBufferSignal_Instruction_10_OBUF_I
    );
  NlwBufferBlock_output_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_6_OBUF_4454,
      O => NlwBufferSignal_output_6_OBUF_I
    );
  NlwBufferBlock_Instruction_28_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_28_OBUF_4443,
      O => NlwBufferSignal_Instruction_28_OBUF_I
    );
  NlwBufferBlock_Instruction_21_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_21_OBUF_4450,
      O => NlwBufferSignal_Instruction_21_OBUF_I
    );
  NlwBufferBlock_output_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_output_5_OBUF_I
    );
  NlwBufferBlock_output_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_8_OBUF_4456,
      O => NlwBufferSignal_output_8_OBUF_I
    );
  NlwBufferBlock_output_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_output_2_OBUF_I
    );
  NlwBufferBlock_Instruction_20_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_20_OBUF_4321,
      O => NlwBufferSignal_Instruction_20_OBUF_I
    );
  NlwBufferBlock_Instruction_24_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_24_OBUF_4447,
      O => NlwBufferSignal_Instruction_24_OBUF_I
    );
  NlwBufferBlock_output_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_output_3_OBUF_I
    );
  NlwBufferBlock_output_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_9_OBUF_4452,
      O => NlwBufferSignal_output_9_OBUF_I
    );
  NlwBufferBlock_output_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_output_1_OBUF_I
    );
  NlwBufferBlock_Instruction_22_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_22_OBUF_4449,
      O => NlwBufferSignal_Instruction_22_OBUF_I
    );
  NlwBufferBlock_output_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_output_0_OBUF_I
    );
  NlwBufferBlock_Instruction_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_10_OBUF_4300,
      O => NlwBufferSignal_Instruction_7_OBUF_I
    );
  NlwBufferBlock_output_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_output_4_OBUF_I
    );
  NlwBufferBlock_Instruction_27_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_27_OBUF_4444,
      O => NlwBufferSignal_Instruction_27_OBUF_I
    );
  NlwBufferBlock_output_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_7_OBUF_4455,
      O => NlwBufferSignal_output_7_OBUF_I
    );
  NlwBufferBlock_Instruction_25_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_25_OBUF_4446,
      O => NlwBufferSignal_Instruction_25_OBUF_I
    );
  NlwBufferBlock_Instruction_26_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_26_OBUF_4445,
      O => NlwBufferSignal_Instruction_26_OBUF_I
    );
  NlwBufferBlock_Instruction_23_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_23_OBUF_4448,
      O => NlwBufferSignal_Instruction_23_OBUF_I
    );
  NlwBufferBlock_Instruction_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_10_OBUF_4300,
      O => NlwBufferSignal_Instruction_6_OBUF_I
    );
  NlwBufferBlock_Instruction_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_5_OBUF_4369,
      O => NlwBufferSignal_Instruction_5_OBUF_I
    );
  NlwBufferBlock_Instruction_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_10_OBUF_4300,
      O => NlwBufferSignal_Instruction_8_OBUF_I
    );
  NlwBufferBlock_Instruction_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_3_OBUF_4365,
      O => NlwBufferSignal_Instruction_3_OBUF_I
    );
  NlwBufferBlock_Instruction_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_2_OBUF_4362,
      O => NlwBufferSignal_Instruction_2_OBUF_I
    );
  NlwBufferBlock_clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_4462,
      O => NlwBufferSignal_clk_BUFGP_BUFG_IN
    );
  NlwBufferBlock_Instruction_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_1_OBUF_4358,
      O => NlwBufferSignal_Instruction_1_OBUF_I
    );
  NlwBufferBlock_Instruction_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_4_OBUF_4367,
      O => NlwBufferSignal_Instruction_4_OBUF_I
    );
  NlwBufferBlock_Instruction_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_10_OBUF_4300,
      O => NlwBufferSignal_Instruction_9_OBUF_I
    );
  NlwBufferBlock_Instruction_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_0_OBUF_4355,
      O => NlwBufferSignal_Instruction_0_OBUF_I
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory10_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory10_RADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory10_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory10_RADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory10_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory10_RADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory10_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory10_RADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory10_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory10_RADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory10_RADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory10_RADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory10_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_n0012_9_INV_Data_MEM_Mram_data_memory10CLK,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory10_CLK
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory10_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig(9),
      O => NlwBufferSignal_Data_MEM_Mram_data_memory10_IN
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory10_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory10_WADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory10_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory10_WADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory10_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory10_WADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory10_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory10_WADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory10_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory10_WADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory10_WADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory10_WADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory10_WE : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_write_enable_read_enable_AND_33_o,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory10_WE
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory11_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory11_RADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory11_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory11_RADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory11_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory11_RADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory11_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory11_RADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory11_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory11_RADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory11_RADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory11_RADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory11_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_n0012_9_INV_Data_MEM_Mram_data_memory11CLK,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory11_CLK
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory11_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig_10_0,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory11_IN
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory11_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory11_WADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory11_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory11_WADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory11_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory11_WADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory11_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory11_WADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory11_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory11_WADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory11_WADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory11_WADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory11_WE : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_write_enable_read_enable_AND_33_o,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory11_WE
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory12_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory12_RADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory12_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory12_RADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory12_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory12_RADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory12_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory12_RADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory12_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory12_RADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory12_RADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory12_RADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory12_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_n0012_9_INV_Data_MEM_Mram_data_memory12CLK,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory12_CLK
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory12_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig(11),
      O => NlwBufferSignal_Data_MEM_Mram_data_memory12_IN
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory12_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory12_WADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory12_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory12_WADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory12_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory12_WADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory12_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory12_WADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory12_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory12_WADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory12_WADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory12_WADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory12_WE : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_write_enable_read_enable_AND_33_o,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory12_WE
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory13_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory13_RADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory13_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory13_RADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory13_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory13_RADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory13_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory13_RADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory13_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory13_RADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory13_RADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory13_RADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory13_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_n0012_9_INV_Data_MEM_Mram_data_memory13CLK,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory13_CLK
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory13_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig_12_0,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory13_IN
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory13_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory13_WADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory13_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory13_WADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory13_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory13_WADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory13_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory13_WADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory13_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory13_WADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory13_WADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory13_WADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory13_WE : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_write_enable_read_enable_AND_33_o,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory13_WE
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMD_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMD_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMD_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMD_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMD_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMD_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMD_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMD_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMD_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMD_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMD_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMD_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMD_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMD_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMD_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMD_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMD_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMD_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMD_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMD_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMD_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMD_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMD_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMC_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_16_OBUF_4341,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMC_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_17_OBUF_4208,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMC_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_18_OBUF_4345,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMC_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_19_OBUF_4215,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMC_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_20_OBUF_4321,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMC_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMC_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(23),
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMC_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMC_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMC_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMC_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMC_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMC_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_16_OBUF_4341,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMC_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_17_OBUF_4208,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMC_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_18_OBUF_4345,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMC_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_19_OBUF_4215,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMC_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_20_OBUF_4321,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMC_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMC_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(22),
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMC_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMC_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMC_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMC_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMC_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMC_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMB_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_16_OBUF_4341,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMB_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_17_OBUF_4208,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMB_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_18_OBUF_4345,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMB_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_19_OBUF_4215,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMB_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_20_OBUF_4321,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMB_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMB_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(21),
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMB_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMB_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMB_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMB_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMB_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMB_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_16_OBUF_4341,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMB_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_17_OBUF_4208,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMB_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_18_OBUF_4345,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMB_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_19_OBUF_4215,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMB_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_20_OBUF_4321,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMB_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMB_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(20),
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMB_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMB_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMB_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMB_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMB_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMB_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMA_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_16_OBUF_4341,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMA_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_17_OBUF_4208,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMA_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_18_OBUF_4345,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMA_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_19_OBUF_4215,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMA_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_20_OBUF_4321,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMA_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMA_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(19),
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMA_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMA_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMA_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMA_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMA_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMA_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_16_OBUF_4341,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMA_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_17_OBUF_4208,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMA_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_18_OBUF_4345,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMA_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_19_OBUF_4215,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMA_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_20_OBUF_4321,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMA_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMA_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(18),
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMA_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMA_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMA_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMA_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file14_RAMA_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file14_RAMA_WADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory5_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory5_RADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory5_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory5_RADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory5_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory5_RADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory5_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory5_RADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory5_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory5_RADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory5_RADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory5_RADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory5_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_n0012_4_INV_Data_MEM_Mram_data_memory5CLK,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory5_CLK
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory5_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig_4_0,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory5_IN
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory5_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory5_WADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory5_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory5_WADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory5_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory5_WADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory5_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory5_WADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory5_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory5_WADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory5_WADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory5_WADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory5_WE : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_write_enable_read_enable_AND_33_o,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory5_WE
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory6_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory6_RADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory6_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory6_RADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory6_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory6_RADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory6_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory6_RADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory6_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory6_RADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory6_RADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory6_RADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory6_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_n0012_4_INV_Data_MEM_Mram_data_memory6CLK,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory6_CLK
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory6_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig(5),
      O => NlwBufferSignal_Data_MEM_Mram_data_memory6_IN
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory6_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory6_WADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory6_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory6_WADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory6_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory6_WADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory6_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory6_WADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory6_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory6_WADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory6_WADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory6_WADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory6_WE : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_write_enable_read_enable_AND_33_o,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory6_WE
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory7_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory7_RADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory7_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory7_RADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory7_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory7_RADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory7_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory7_RADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory7_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory7_RADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory7_RADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory7_RADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory7_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_n0012_4_INV_Data_MEM_Mram_data_memory7CLK,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory7_CLK
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory7_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig_6_0,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory7_IN
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory7_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory7_WADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory7_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory7_WADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory7_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory7_WADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory7_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory7_WADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory7_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory7_WADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory7_WADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory7_WADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory7_WE : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_write_enable_read_enable_AND_33_o,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory7_WE
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory8_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory8_RADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory8_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory8_RADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory8_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory8_RADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory8_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory8_RADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory8_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory8_RADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory8_RADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory8_RADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory8_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_n0012_4_INV_Data_MEM_Mram_data_memory8CLK,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory8_CLK
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory8_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig(7),
      O => NlwBufferSignal_Data_MEM_Mram_data_memory8_IN
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory8_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory8_WADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory8_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory8_WADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory8_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory8_WADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory8_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory8_WADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory8_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory8_WADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory8_WADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory8_WADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory8_WE : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_write_enable_read_enable_AND_33_o,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory8_WE
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory14_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory14_RADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory14_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory14_RADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory14_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory14_RADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory14_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory14_RADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory14_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory14_RADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory14_RADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory14_RADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory14_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_n0012_13_INV_Data_MEM_Mram_data_memory14CLK,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory14_CLK
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory14_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig(13),
      O => NlwBufferSignal_Data_MEM_Mram_data_memory14_IN
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory14_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory14_WADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory14_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory14_WADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory14_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory14_WADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory14_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory14_WADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory14_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory14_WADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory14_WADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory14_WADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory14_WE : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_write_enable_read_enable_AND_33_o,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory14_WE
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory15_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory15_RADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory15_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory15_RADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory15_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory15_RADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory15_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory15_RADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory15_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory15_RADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory15_RADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory15_RADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory15_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_n0012_13_INV_Data_MEM_Mram_data_memory15CLK,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory15_CLK
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory15_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig_14_0,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory15_IN
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory15_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory15_WADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory15_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory15_WADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory15_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory15_WADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory15_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory15_WADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory15_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory15_WADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory15_WADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory15_WADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory15_WE : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_write_enable_read_enable_AND_33_o,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory15_WE
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory16_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory16_RADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory16_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory16_RADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory16_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory16_RADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory16_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory16_RADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory16_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory16_RADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory16_RADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory16_RADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory16_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_n0012_13_INV_Data_MEM_Mram_data_memory16CLK,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory16_CLK
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory16_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig(15),
      O => NlwBufferSignal_Data_MEM_Mram_data_memory16_IN
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory16_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory16_WADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory16_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory16_WADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory16_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory16_WADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory16_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory16_WADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory16_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory16_WADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory16_WADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory16_WADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory16_WE : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_write_enable_read_enable_AND_33_o,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory16_WE
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory17_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory17_RADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory17_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory17_RADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory17_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory17_RADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory17_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory17_RADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory17_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory17_RADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory17_RADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory17_RADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory17_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_n0012_13_INV_Data_MEM_Mram_data_memory17CLK,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory17_CLK
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory17_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig_16_0,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory17_IN
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory17_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory17_WADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory17_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory17_WADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory17_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory17_WADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory17_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory17_WADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory17_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory17_WADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory17_WADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory17_WADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory17_WE : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_write_enable_read_enable_AND_33_o,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory17_WE
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory26_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory26_RADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory26_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory26_RADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory26_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory26_RADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory26_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory26_RADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory26_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory26_RADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory26_RADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory26_RADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory26_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_n0012_25_INV_Data_MEM_Mram_data_memory26CLK,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory26_CLK
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory26_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig(25),
      O => NlwBufferSignal_Data_MEM_Mram_data_memory26_IN
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory26_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory26_WADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory26_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory26_WADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory26_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory26_WADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory26_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory26_WADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory26_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory26_WADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory26_WADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory26_WADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory26_WE : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_write_enable_read_enable_AND_33_o,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory26_WE
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory27_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory27_RADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory27_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory27_RADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory27_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory27_RADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory27_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory27_RADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory27_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory27_RADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory27_RADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory27_RADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory27_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_n0012_25_INV_Data_MEM_Mram_data_memory27CLK,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory27_CLK
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory27_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig_26_0,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory27_IN
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory27_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory27_WADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory27_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory27_WADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory27_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory27_WADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory27_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory27_WADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory27_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory27_WADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory27_WADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory27_WADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory27_WE : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_write_enable_read_enable_AND_33_o,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory27_WE
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory28_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory28_RADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory28_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory28_RADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory28_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory28_RADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory28_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory28_RADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory28_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory28_RADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory28_RADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory28_RADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory28_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_n0012_25_INV_Data_MEM_Mram_data_memory28CLK,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory28_CLK
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory28_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig(27),
      O => NlwBufferSignal_Data_MEM_Mram_data_memory28_IN
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory28_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory28_WADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory28_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory28_WADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory28_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory28_WADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory28_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory28_WADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory28_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory28_WADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory28_WADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory28_WADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory28_WE : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_write_enable_read_enable_AND_33_o,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory28_WE
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory29_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory29_RADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory29_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory29_RADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory29_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory29_RADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory29_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory29_RADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory29_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory29_RADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory29_RADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory29_RADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory29_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_n0012_25_INV_Data_MEM_Mram_data_memory29CLK,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory29_CLK
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory29_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig_28_0,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory29_IN
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory29_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory29_WADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory29_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory29_WADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory29_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory29_WADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory29_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory29_WADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory29_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory29_WADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory29_WADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory29_WADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory29_WE : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_write_enable_read_enable_AND_33_o,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory29_WE
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory18_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory18_RADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory18_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory18_RADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory18_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory18_RADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory18_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory18_RADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory18_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory18_RADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory18_RADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory18_RADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory18_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_n0012_17_INV_Data_MEM_Mram_data_memory18CLK,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory18_CLK
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory18_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig(17),
      O => NlwBufferSignal_Data_MEM_Mram_data_memory18_IN
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory18_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory18_WADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory18_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory18_WADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory18_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory18_WADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory18_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory18_WADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory18_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory18_WADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory18_WADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory18_WADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory18_WE : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_write_enable_read_enable_AND_33_o,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory18_WE
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory19_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory19_RADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory19_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory19_RADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory19_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory19_RADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory19_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory19_RADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory19_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory19_RADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory19_RADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory19_RADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory19_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_n0012_17_INV_Data_MEM_Mram_data_memory19CLK,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory19_CLK
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory19_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig_18_0,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory19_IN
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory19_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory19_WADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory19_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory19_WADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory19_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory19_WADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory19_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory19_WADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory19_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory19_WADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory19_WADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory19_WADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory19_WE : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_write_enable_read_enable_AND_33_o,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory19_WE
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory20_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory20_RADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory20_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory20_RADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory20_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory20_RADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory20_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory20_RADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory20_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory20_RADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory20_RADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory20_RADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory20_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_n0012_17_INV_Data_MEM_Mram_data_memory20CLK,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory20_CLK
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory20_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig(19),
      O => NlwBufferSignal_Data_MEM_Mram_data_memory20_IN
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory20_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory20_WADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory20_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory20_WADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory20_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory20_WADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory20_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory20_WADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory20_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory20_WADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory20_WADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory20_WADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory20_WE : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_write_enable_read_enable_AND_33_o,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory20_WE
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory21_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory21_RADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory21_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory21_RADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory21_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory21_RADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory21_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory21_RADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory21_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory21_RADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory21_RADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory21_RADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory21_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_n0012_17_INV_Data_MEM_Mram_data_memory21CLK,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory21_CLK
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory21_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Op_2_Rt_sig_20_0,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory21_IN
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory21_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_0_OBUF_4461,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory21_WADR0
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory21_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_1_OBUF_4457,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory21_WADR1
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory21_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_2_OBUF_4458,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory21_WADR2
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory21_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_3_OBUF_4459,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory21_WADR3
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory21_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_4_OBUF_4460,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory21_WADR4
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory21_WADR5 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => output_5_OBUF_4453,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory21_WADR5
    );
  NlwBufferBlock_Data_MEM_Mram_data_memory21_WE : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Data_MEM_write_enable_read_enable_AND_33_o,
      O => NlwBufferSignal_Data_MEM_Mram_data_memory21_WE
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMD_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMD_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMD_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMD_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMD_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMD_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMD_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMD_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMD_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMD_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMD_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMD_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMD_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMD_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMD_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMD_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMD_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMD_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMD_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMD_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMD_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMD_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMD_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMC_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_21_OBUF_4450,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMC_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_22_OBUF_4449,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMC_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_23_OBUF_4448,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMC_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_24_OBUF_4447,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMC_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_25_OBUF_4446,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMC_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMC_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(23),
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMC_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMC_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMC_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMC_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMC_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMC_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_21_OBUF_4450,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMC_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_22_OBUF_4449,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMC_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_23_OBUF_4448,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMC_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_24_OBUF_4447,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMC_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_25_OBUF_4446,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMC_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMC_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(22),
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMC_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMC_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMC_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMC_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMC_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMC_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMB_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_21_OBUF_4450,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMB_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_22_OBUF_4449,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMB_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_23_OBUF_4448,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMB_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_24_OBUF_4447,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMB_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_25_OBUF_4446,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMB_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMB_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(21),
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMB_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMB_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMB_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMB_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMB_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMB_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_21_OBUF_4450,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMB_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_22_OBUF_4449,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMB_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_23_OBUF_4448,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMB_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_24_OBUF_4447,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMB_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_25_OBUF_4446,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMB_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMB_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(20),
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMB_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMB_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMB_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMB_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMB_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMB_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMA_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_21_OBUF_4450,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMA_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_22_OBUF_4449,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMA_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_23_OBUF_4448,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMA_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_24_OBUF_4447,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMA_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_25_OBUF_4446,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMA_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMA_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(19),
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMA_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMA_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMA_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMA_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMA_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMA_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_21_OBUF_4450,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMA_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_22_OBUF_4449,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMA_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_23_OBUF_4448,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMA_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_24_OBUF_4447,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMA_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_25_OBUF_4446,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMA_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMA_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(18),
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMA_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMA_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMA_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMA_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file5_RAMA_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file5_RAMA_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMD_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMD_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMD_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMD_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMD_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMD_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMD_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMD_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMD_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMD_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMD_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMD_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMD_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMD_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMD_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMD_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMD_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMD_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMD_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMD_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMD_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMD_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMD_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMC_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_16_OBUF_4341,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMC_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_17_OBUF_4208,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMC_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_18_OBUF_4345,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMC_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_19_OBUF_4215,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMC_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_20_OBUF_4321,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMC_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMC_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig_11_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMC_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMC_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMC_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMC_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMC_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMC_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_16_OBUF_4341,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMC_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_17_OBUF_4208,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMC_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_18_OBUF_4345,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMC_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_19_OBUF_4215,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMC_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_20_OBUF_4321,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMC_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMC_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig_10_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMC_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMC_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMC_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMC_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMC_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMC_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMB_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_16_OBUF_4341,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMB_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_17_OBUF_4208,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMB_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_18_OBUF_4345,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMB_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_19_OBUF_4215,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMB_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_20_OBUF_4321,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMB_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMB_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig_9_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMB_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMB_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMB_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMB_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMB_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMB_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_16_OBUF_4341,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMB_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_17_OBUF_4208,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMB_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_18_OBUF_4345,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMB_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_19_OBUF_4215,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMB_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_20_OBUF_4321,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMB_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMB_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig_8_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMB_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMB_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMB_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMB_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMB_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMB_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMA_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_16_OBUF_4341,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMA_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_17_OBUF_4208,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMA_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_18_OBUF_4345,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMA_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_19_OBUF_4215,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMA_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_20_OBUF_4321,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMA_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMA_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(7),
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMA_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMA_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMA_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMA_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMA_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMA_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_16_OBUF_4341,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMA_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_17_OBUF_4208,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMA_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_18_OBUF_4345,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMA_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_19_OBUF_4215,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMA_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_20_OBUF_4321,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMA_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMA_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(6),
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMA_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMA_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMA_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMA_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file12_RAMA_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file12_RAMA_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMD_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMD_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMD_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMD_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMD_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMD_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMD_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMD_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMD_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMD_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMD_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMD_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMD_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMD_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMD_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMD_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMD_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMD_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMD_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMD_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMD_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMD_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMD_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMC_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_16_OBUF_4341,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMC_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_17_OBUF_4208,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMC_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_18_OBUF_4345,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMC_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_19_OBUF_4215,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMC_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_20_OBUF_4321,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMC_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMC_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(29),
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMC_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMC_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMC_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMC_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMC_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMC_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_16_OBUF_4341,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMC_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_17_OBUF_4208,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMC_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_18_OBUF_4345,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMC_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_19_OBUF_4215,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMC_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_20_OBUF_4321,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMC_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMC_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(28),
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMC_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMC_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMC_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMC_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMC_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMC_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMB_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_16_OBUF_4341,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMB_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_17_OBUF_4208,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMB_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_18_OBUF_4345,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMB_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_19_OBUF_4215,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMB_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_20_OBUF_4321,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMB_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMB_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(27),
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMB_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMB_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMB_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMB_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMB_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMB_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_16_OBUF_4341,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMB_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_17_OBUF_4208,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMB_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_18_OBUF_4345,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMB_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_19_OBUF_4215,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMB_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_20_OBUF_4321,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMB_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMB_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(26),
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMB_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMB_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMB_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMB_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMB_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMB_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMA_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_16_OBUF_4341,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMA_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_17_OBUF_4208,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMA_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_18_OBUF_4345,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMA_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_19_OBUF_4215,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMA_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_20_OBUF_4321,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMA_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMA_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(25),
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMA_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMA_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMA_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMA_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMA_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMA_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_16_OBUF_4341,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMA_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_17_OBUF_4208,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMA_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_18_OBUF_4345,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMA_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_19_OBUF_4215,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMA_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_20_OBUF_4321,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMA_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMA_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(24),
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMA_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMA_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMA_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMA_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file15_RAMA_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file15_RAMA_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMD_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMD_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMD_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMD_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMD_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMD_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMD_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMD_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMD_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMD_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMD_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMD_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMD_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMD_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMD_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMD_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMD_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMD_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMD_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMD_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMD_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMD_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMD_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMC_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_16_OBUF_4341,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMC_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_17_OBUF_4208,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMC_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_18_OBUF_4345,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMC_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_19_OBUF_4215,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMC_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_20_OBUF_4321,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMC_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMC_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(17),
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMC_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMC_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMC_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMC_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMC_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMC_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_16_OBUF_4341,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMC_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_17_OBUF_4208,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMC_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_18_OBUF_4345,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMC_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_19_OBUF_4215,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMC_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_20_OBUF_4321,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMC_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMC_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(16),
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMC_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMC_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMC_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMC_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMC_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMC_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMB_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_16_OBUF_4341,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMB_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_17_OBUF_4208,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMB_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_18_OBUF_4345,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMB_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_19_OBUF_4215,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMB_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_20_OBUF_4321,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMB_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMB_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig_15_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMB_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMB_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMB_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMB_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMB_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMB_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_16_OBUF_4341,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMB_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_17_OBUF_4208,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMB_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_18_OBUF_4345,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMB_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_19_OBUF_4215,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMB_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_20_OBUF_4321,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMB_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMB_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(14),
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMB_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMB_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMB_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMB_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMB_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMB_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMA_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_16_OBUF_4341,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMA_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_17_OBUF_4208,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMA_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_18_OBUF_4345,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMA_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_19_OBUF_4215,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMA_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_20_OBUF_4321,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMA_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMA_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(13),
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMA_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMA_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMA_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMA_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMA_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMA_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_16_OBUF_4341,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMA_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_17_OBUF_4208,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMA_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_18_OBUF_4345,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMA_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_19_OBUF_4215,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMA_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_20_OBUF_4321,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMA_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMA_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(12),
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMA_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMA_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMA_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMA_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file13_RAMA_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file13_RAMA_WADR4
    );
  NlwBufferBlock_PC_output_pc_5_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PC_output_pc_5_CLK
    );
  NlwBufferBlock_PC_output_pc_4_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PC_output_pc_4_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMD_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMD_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMD_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMD_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMD_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMD_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMD_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMD_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMD_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMD_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMD_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMD_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMD_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMD_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMD_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMD_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMD_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMD_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMD_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMD_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMD_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMD_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMD_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMC_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_21_OBUF_4450,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMC_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_22_OBUF_4449,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMC_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_23_OBUF_4448,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMC_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_24_OBUF_4447,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMC_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_25_OBUF_4446,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMC_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMC_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(29),
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMC_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMC_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMC_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMC_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMC_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMC_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_21_OBUF_4450,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMC_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_22_OBUF_4449,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMC_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_23_OBUF_4448,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMC_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_24_OBUF_4447,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMC_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_25_OBUF_4446,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMC_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMC_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(28),
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMC_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMC_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMC_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMC_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMC_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMC_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMB_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_21_OBUF_4450,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMB_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_22_OBUF_4449,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMB_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_23_OBUF_4448,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMB_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_24_OBUF_4447,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMB_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_25_OBUF_4446,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMB_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMB_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(27),
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMB_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMB_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMB_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMB_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMB_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMB_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_21_OBUF_4450,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMB_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_22_OBUF_4449,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMB_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_23_OBUF_4448,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMB_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_24_OBUF_4447,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMB_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_25_OBUF_4446,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMB_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMB_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(26),
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMB_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMB_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMB_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMB_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMB_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMB_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMA_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_21_OBUF_4450,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMA_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_22_OBUF_4449,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMA_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_23_OBUF_4448,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMA_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_24_OBUF_4447,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMA_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_25_OBUF_4446,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMA_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMA_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(25),
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMA_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMA_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMA_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMA_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMA_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMA_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_21_OBUF_4450,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMA_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_22_OBUF_4449,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMA_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_23_OBUF_4448,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMA_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_24_OBUF_4447,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMA_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_25_OBUF_4446,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMA_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMA_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(24),
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMA_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMA_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMA_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMA_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file6_RAMA_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file6_RAMA_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMD_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMD_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMD_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMD_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMD_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMD_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMD_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMD_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMD_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMD_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMD_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMD_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMD_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMD_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMD_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMD_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMD_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMD_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMD_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMD_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMD_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMD_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMD_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMC_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_21_OBUF_4450,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMC_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_22_OBUF_4449,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMC_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_23_OBUF_4448,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMC_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_24_OBUF_4447,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMC_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_25_OBUF_4446,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMC_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMC_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(5),
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMC_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMC_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMC_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMC_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMC_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMC_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_21_OBUF_4450,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMC_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_22_OBUF_4449,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMC_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_23_OBUF_4448,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMC_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_24_OBUF_4447,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMC_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_25_OBUF_4446,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMC_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMC_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(4),
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMC_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMC_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMC_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMC_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMC_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMC_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMB_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_21_OBUF_4450,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMB_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_22_OBUF_4449,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMB_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_23_OBUF_4448,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMB_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_24_OBUF_4447,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMB_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_25_OBUF_4446,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMB_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMB_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(3),
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMB_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMB_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMB_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMB_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMB_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMB_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_21_OBUF_4450,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMB_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_22_OBUF_4449,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMB_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_23_OBUF_4448,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMB_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_24_OBUF_4447,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMB_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_25_OBUF_4446,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMB_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMB_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(2),
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMB_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMB_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMB_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMB_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMB_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMB_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMA_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_21_OBUF_4450,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMA_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_22_OBUF_4449,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMA_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_23_OBUF_4448,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMA_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_24_OBUF_4447,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMA_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_25_OBUF_4446,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMA_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMA_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(1),
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMA_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMA_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMA_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMA_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMA_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMA_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_21_OBUF_4450,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMA_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_22_OBUF_4449,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMA_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_23_OBUF_4448,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMA_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_24_OBUF_4447,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMA_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_25_OBUF_4446,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMA_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMA_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMA_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMA_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMA_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMA_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file2_RAMA_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file2_RAMA_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMD_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMD_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMD_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMD_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMD_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMD_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMD_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMD_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMD_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMD_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMD_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMD_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMD_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMD_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMD_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMD_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMD_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMD_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMD_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMD_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMD_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMD_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMD_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMC_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_21_OBUF_4450,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMC_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_22_OBUF_4449,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMC_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_23_OBUF_4448,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMC_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_24_OBUF_4447,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMC_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_25_OBUF_4446,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMC_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMC_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(17),
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMC_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMC_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMC_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMC_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMC_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMC_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_21_OBUF_4450,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMC_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_22_OBUF_4449,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMC_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_23_OBUF_4448,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMC_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_24_OBUF_4447,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMC_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_25_OBUF_4446,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMC_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMC_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(16),
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMC_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMC_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMC_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMC_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMC_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMC_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMB_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_21_OBUF_4450,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMB_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_22_OBUF_4449,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMB_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_23_OBUF_4448,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMB_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_24_OBUF_4447,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMB_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_25_OBUF_4446,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMB_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMB_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig_15_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMB_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMB_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMB_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMB_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMB_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMB_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_21_OBUF_4450,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMB_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_22_OBUF_4449,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMB_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_23_OBUF_4448,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMB_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_24_OBUF_4447,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMB_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_25_OBUF_4446,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMB_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMB_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(14),
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMB_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMB_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMB_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMB_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMB_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMB_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMA_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_21_OBUF_4450,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMA_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_22_OBUF_4449,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMA_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_23_OBUF_4448,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMA_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_24_OBUF_4447,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMA_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_25_OBUF_4446,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMA_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMA_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(13),
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMA_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMA_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMA_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMA_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMA_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMA_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_21_OBUF_4450,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMA_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_22_OBUF_4449,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMA_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_23_OBUF_4448,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMA_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_24_OBUF_4447,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMA_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_25_OBUF_4446,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMA_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMA_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(12),
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMA_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMA_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMA_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMA_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file4_RAMA_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file4_RAMA_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file72_SP_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file72_SP_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file72_SP_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file72_SP_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file72_SP_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file72_SP_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file72_SP_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file72_SP_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file72_SP_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file72_SP_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file72_SP_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file72_SP_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file72_SP_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(31),
      O => NlwBufferSignal_Reg_File_Mram_register_file72_SP_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file72_SP_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file72_SP_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file72_SP_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file72_SP_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file72_SP_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file72_SP_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file72_SP_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file72_SP_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file72_SP_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file72_SP_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file71_SP_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file71_SP_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file71_SP_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file71_SP_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file71_SP_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file71_SP_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file71_SP_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file71_SP_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file71_SP_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file71_SP_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file71_SP_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file71_SP_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file71_SP_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(30),
      O => NlwBufferSignal_Reg_File_Mram_register_file71_SP_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file71_SP_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file71_SP_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file71_SP_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file71_SP_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file71_SP_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file71_SP_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file71_SP_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file71_SP_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file71_SP_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file71_SP_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file162_SP_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file162_SP_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file162_SP_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file162_SP_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file162_SP_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file162_SP_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file162_SP_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file162_SP_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file162_SP_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file162_SP_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file162_SP_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file162_SP_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file162_SP_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(31),
      O => NlwBufferSignal_Reg_File_Mram_register_file162_SP_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file162_SP_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file162_SP_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file162_SP_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file162_SP_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file162_SP_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file162_SP_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file162_SP_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file162_SP_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file162_SP_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file162_SP_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file161_SP_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file161_SP_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file161_SP_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file161_SP_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file161_SP_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file161_SP_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file161_SP_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file161_SP_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file161_SP_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file161_SP_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file161_SP_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file161_SP_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file161_SP_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(30),
      O => NlwBufferSignal_Reg_File_Mram_register_file161_SP_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file161_SP_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file161_SP_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file161_SP_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file161_SP_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file161_SP_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file161_SP_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file161_SP_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file161_SP_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file161_SP_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file161_SP_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file72_DP_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_21_OBUF_4450,
      O => NlwBufferSignal_Reg_File_Mram_register_file72_DP_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file72_DP_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_22_OBUF_4449,
      O => NlwBufferSignal_Reg_File_Mram_register_file72_DP_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file72_DP_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_23_OBUF_4448,
      O => NlwBufferSignal_Reg_File_Mram_register_file72_DP_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file72_DP_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_24_OBUF_4447,
      O => NlwBufferSignal_Reg_File_Mram_register_file72_DP_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file72_DP_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_25_OBUF_4446,
      O => NlwBufferSignal_Reg_File_Mram_register_file72_DP_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file72_DP_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file72_DP_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file72_DP_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(31),
      O => NlwBufferSignal_Reg_File_Mram_register_file72_DP_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file72_DP_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file72_DP_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file72_DP_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file72_DP_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file72_DP_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file72_DP_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file72_DP_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file72_DP_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file72_DP_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file72_DP_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file71_DP_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_21_OBUF_4450,
      O => NlwBufferSignal_Reg_File_Mram_register_file71_DP_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file71_DP_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_22_OBUF_4449,
      O => NlwBufferSignal_Reg_File_Mram_register_file71_DP_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file71_DP_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_23_OBUF_4448,
      O => NlwBufferSignal_Reg_File_Mram_register_file71_DP_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file71_DP_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_24_OBUF_4447,
      O => NlwBufferSignal_Reg_File_Mram_register_file71_DP_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file71_DP_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_25_OBUF_4446,
      O => NlwBufferSignal_Reg_File_Mram_register_file71_DP_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file71_DP_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file71_DP_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file71_DP_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(30),
      O => NlwBufferSignal_Reg_File_Mram_register_file71_DP_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file71_DP_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file71_DP_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file71_DP_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file71_DP_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file71_DP_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file71_DP_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file71_DP_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file71_DP_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file71_DP_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file71_DP_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file162_DP_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_16_OBUF_4341,
      O => NlwBufferSignal_Reg_File_Mram_register_file162_DP_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file162_DP_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_17_OBUF_4208,
      O => NlwBufferSignal_Reg_File_Mram_register_file162_DP_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file162_DP_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_18_OBUF_4345,
      O => NlwBufferSignal_Reg_File_Mram_register_file162_DP_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file162_DP_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_19_OBUF_4215,
      O => NlwBufferSignal_Reg_File_Mram_register_file162_DP_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file162_DP_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_20_OBUF_4321,
      O => NlwBufferSignal_Reg_File_Mram_register_file162_DP_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file162_DP_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file162_DP_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file162_DP_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(31),
      O => NlwBufferSignal_Reg_File_Mram_register_file162_DP_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file162_DP_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file162_DP_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file162_DP_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file162_DP_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file162_DP_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file162_DP_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file162_DP_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file162_DP_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file162_DP_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file162_DP_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file161_DP_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_16_OBUF_4341,
      O => NlwBufferSignal_Reg_File_Mram_register_file161_DP_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file161_DP_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_17_OBUF_4208,
      O => NlwBufferSignal_Reg_File_Mram_register_file161_DP_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file161_DP_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_18_OBUF_4345,
      O => NlwBufferSignal_Reg_File_Mram_register_file161_DP_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file161_DP_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_19_OBUF_4215,
      O => NlwBufferSignal_Reg_File_Mram_register_file161_DP_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file161_DP_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_20_OBUF_4321,
      O => NlwBufferSignal_Reg_File_Mram_register_file161_DP_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file161_DP_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file161_DP_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file161_DP_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(30),
      O => NlwBufferSignal_Reg_File_Mram_register_file161_DP_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file161_DP_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file161_DP_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file161_DP_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file161_DP_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file161_DP_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file161_DP_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file161_DP_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file161_DP_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file161_DP_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file161_DP_WADR4
    );
  NlwBufferBlock_PC_output_pc_3_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PC_output_pc_3_CLK
    );
  NlwBufferBlock_PC_output_pc_2_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PC_output_pc_2_CLK
    );
  NlwBufferBlock_PC_output_pc_1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PC_output_pc_1_CLK
    );
  NlwBufferBlock_PC_output_pc_0_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PC_output_pc_0_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMD_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMD_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMD_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMD_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMD_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMD_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMD_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMD_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMD_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMD_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMD_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMD_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMD_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMD_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMD_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMD_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMD_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMD_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMD_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMD_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMD_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMD_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMD_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMC_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_21_OBUF_4450,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMC_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_22_OBUF_4449,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMC_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_23_OBUF_4448,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMC_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_24_OBUF_4447,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMC_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_25_OBUF_4446,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMC_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMC_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig_11_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMC_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMC_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMC_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMC_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMC_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMC_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_21_OBUF_4450,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMC_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_22_OBUF_4449,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMC_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_23_OBUF_4448,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMC_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_24_OBUF_4447,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMC_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_25_OBUF_4446,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMC_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMC_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig_10_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMC_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMC_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMC_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMC_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMC_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMC_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMB_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_21_OBUF_4450,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMB_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_22_OBUF_4449,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMB_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_23_OBUF_4448,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMB_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_24_OBUF_4447,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMB_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_25_OBUF_4446,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMB_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMB_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig_9_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMB_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMB_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMB_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMB_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMB_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMB_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_21_OBUF_4450,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMB_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_22_OBUF_4449,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMB_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_23_OBUF_4448,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMB_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_24_OBUF_4447,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMB_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_25_OBUF_4446,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMB_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMB_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig_8_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMB_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMB_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMB_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMB_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMB_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMB_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMA_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_21_OBUF_4450,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMA_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_22_OBUF_4449,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMA_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_23_OBUF_4448,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMA_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_24_OBUF_4447,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMA_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_25_OBUF_4446,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMA_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMA_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(7),
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMA_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMA_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMA_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMA_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMA_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMA_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_21_OBUF_4450,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMA_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_22_OBUF_4449,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMA_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_23_OBUF_4448,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMA_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_24_OBUF_4447,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMA_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_25_OBUF_4446,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMA_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMA_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(6),
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMA_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMA_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMA_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMA_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file3_RAMA_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file3_RAMA_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMD_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMD_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMD_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMD_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMD_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMD_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMD_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMD_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMD_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMD_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMD_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMD_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMD_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMD_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMD_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMD_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMD_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMD_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMD_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMD_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMD_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMD_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMD_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMC_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_16_OBUF_4341,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMC_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_17_OBUF_4208,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMC_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_18_OBUF_4345,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMC_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_19_OBUF_4215,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMC_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_20_OBUF_4321,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMC_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMC_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(5),
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMC_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMC_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMC_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMC_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMC_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMC_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_16_OBUF_4341,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMC_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_17_OBUF_4208,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMC_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_18_OBUF_4345,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMC_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_19_OBUF_4215,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMC_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_20_OBUF_4321,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMC_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMC_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(4),
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMC_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMC_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMC_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMC_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMC_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMC_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMB_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_16_OBUF_4341,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMB_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_17_OBUF_4208,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMB_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_18_OBUF_4345,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMB_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_19_OBUF_4215,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMB_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_20_OBUF_4321,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMB_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMB_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(3),
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMB_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMB_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMB_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMB_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMB_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMB_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_16_OBUF_4341,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMB_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_17_OBUF_4208,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMB_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_18_OBUF_4345,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMB_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_19_OBUF_4215,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMB_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_20_OBUF_4321,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMB_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMB_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(2),
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMB_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMB_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMB_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMB_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMB_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMB_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMA_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_16_OBUF_4341,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMA_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_17_OBUF_4208,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMA_D1_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_18_OBUF_4345,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMA_D1_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_19_OBUF_4215,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMA_D1_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_20_OBUF_4321,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMA_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMA_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig(1),
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMA_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMA_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMA_D1_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMA_D1_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMA_D1_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_D1_WADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMA_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_16_OBUF_4341,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_RADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMA_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_17_OBUF_4208,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_RADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMA_RADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_18_OBUF_4345,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_RADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMA_RADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_19_OBUF_4215,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_RADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMA_RADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_20_OBUF_4321,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_RADR4
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMA_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_CLK
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMA_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => write_data_Reg_File_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_IN
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMA_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_0_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_WADR0
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMA_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_1_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_WADR1
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMA_WADR2 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_2_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_WADR2
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMA_WADR3 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_3_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_WADR3
    );
  NlwBufferBlock_Reg_File_Mram_register_file11_RAMA_WADR4 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_Reg_Address_sig_4_0,
      O => NlwBufferSignal_Reg_File_Mram_register_file11_RAMA_WADR4
    );
  NlwBlock_NYU_6463_Processor_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_NYU_6463_Processor_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

