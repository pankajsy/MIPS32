----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:12:57 11/27/2016 
-- Design Name: 
-- Module Name:    NYU_6463_Processor - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity NYU_6463_Processor is
		 Port ( clk 				: in  STD_LOGIC;
				  reset 				: in  STD_LOGIC;
				  PC_reset			: in 	std_logic;
				  Inst_Mem_Wr_en	: in 	std_logic;
				  Inst_Mem_Wr_addr: in 	std_logic_vector(31 downto 0);
				  Inst_Mem_Wr_data: in 	std_logic_vector(31 downto 0);
				  output				: out std_logic_vector(31 downto 0));
end NYU_6463_Processor;

architecture Structural of NYU_6463_Processor is

	--Program Counter 
	component ProgramCounter is
		 port ( input_pc : in STD_LOGIC_VECTOR (31 downto 0);
				  clk : in STD_LOGIC;
				  rst : in STD_LOGIC;
				  output_pc : out STD_LOGIC_VECTOR (31 downto 0));
	end component;
  
	--Instruction Memory
	component InstructionMemory is
		 port ( input_address 	: in STD_LOGIC_VECTOR(31 downto 0);			
				  --clk : in STD_LOGIC;
				  write_enable		: in std_logic;
				  instruction		: in STD_LOGIC_VECTOR(31 downto 0);	
				  rst 				: in STD_LOGIC;
				  current_inp_instruction: out STD_LOGIC_VECTOR (31 downto 0);
				  output_instruction : out STD_LOGIC_VECTOR (31 downto 0));
	end component;

	--Register File
	component RegisterFile is
		 port ( read_address_rs : in STD_LOGIC_VECTOR(4 downto 0);
				  read_address_rt : in STD_LOGIC_VECTOR (4 downto 0);
				  write_address: in STD_LOGIC_VECTOR (4 downto 0);
				  write_data : in STD_LOGIC_VECTOR (31 downto 0);				
				  write_enable : in STD_LOGIC;
				  clk : in STD_LOGIC;
				  rst : in STD_LOGIC;
				  out_data_rs : out STD_LOGIC_VECTOR (31 downto 0);
				  out_data_rt: out STD_LOGIC_VECTOR (31 downto 0));
	end component;

	--Arithmetic & Logical Unit (ALU)
	component ALU is
		 port ( operand1 : in STD_LOGIC_VECTOR (31 downto 0);
				  operand2 : in STD_LOGIC_VECTOR (31 downto 0);
				  ALU_operation: in STD_LOGIC_VECTOR (2 downto 0);
				  ALU_output : out STD_LOGIC_VECTOR (31 downto 0));		
	end component;

	--Data Memory
	component DataMemory is
		 port ( input_address : in STD_LOGIC_VECTOR(31 downto 0);					
				  write_data  : in STD_LOGIC_VECTOR (31 downto 0);
				  read_enable : in STD_LOGIC;
				  write_enable : in STD_LOGIC;
				  --clk : in STD_LOGIC;
				  rst : in STD_LOGIC;
				  output_data : out STD_LOGIC_VECTOR (31 downto 0));
	end component;

	--32 bit Adder being used as (a) Adder_PC_Normal and, (b) Adder_PC_Itype_Branch
	component Adder_32bit is
		 Port ( op_1 : in  STD_LOGIC_VECTOR(31 DOWNTO 0);
				  op_2 : in  STD_LOGIC_VECTOR(31 DOWNTO 0);
				  sum_out : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
				  carry : out  STD_LOGIC);
	end component;

	--Multiplexer 2x1 having 32 bit inputs being used as (a) Mux_ALU and, (b) Mux_ALU_DMem_to_Reg
	component MUX_2_1_32bit is
		 Port ( inp_0 : in  STD_LOGIC_VECTOR(31 downto 0);
				  inp_1 : in  STD_LOGIC_VECTOR(31 downto 0);
				  ctrl  : in std_logic;
				  output : out  STD_LOGIC_VECTOR(31 downto 0));
	end component;

	--Multiplexer 4x1 having 32 bit inputs being used as (a) Mux_NextPC
	component MUX_32bit_4x1 is
		Port ( inp_0 : in  STD_LOGIC_VECTOR(31 downto 0);
				 inp_1 : in  STD_LOGIC_VECTOR(31 downto 0);
				 inp_2 : in  STD_LOGIC_VECTOR(31 downto 0);
				 inp_3 : in  STD_LOGIC_VECTOR(31 downto 0);
			    ctrl  : in STD_LOGIC_VECTOR(1 downto 0);
				 rst	 : in STD_LOGIC;
             output : out  STD_LOGIC_VECTOR(31 downto 0));
	end component;
	
	--Multiplexer for having 5 bit inputs being used as (a) Mux_Rd_Rt
	component Mux_2_1_5bit is
		Port ( inp_0 : in  STD_LOGIC_VECTOR(4 downto 0);
				 inp_1 : in  STD_LOGIC_VECTOR(4 downto 0);
			    ctrl  : in STD_LOGIC;
             output : out  STD_LOGIC_VECTOR(4 downto 0));
	end component;

	--Decoder: It gives all the control signals being used in the arhitecture.
	component controlunit is
		 port ( opcode : in  std_logic_vector (5 downto 0);
				  func_code : in  std_logic_vector (2 downto 0);
				  comparator : in  std_logic_vector (1 downto 0);
				  is_load : out std_logic;
				  is_store : out std_logic;
				  is_itype : out std_logic;
				  next_pc : out std_logic_vector(1 downto 0);
				  write_enable : out std_logic;
				  alu_op_sel : out std_logic_vector(2 downto 0));
	end component;

	--Comparator: It gives coded signals for equal, not equal and less than operation
	component Comparator is
		 port ( input1 : in STD_LOGIC_VECTOR (31 downto 0);
				  input2 : in STD_LOGIC_VECTOR (31 downto 0);
				  rst    : in STD_LOGIC;
				  output : out STD_LOGIC_VECTOR (1 downto 0));
	end component;
	
	--It does the sign extension of immediate in case of I-type instuctions
	component sign_extend is
		 Port ( input  : in  STD_LOGIC_VECTOR (15 downto 0);
				  output : out  STD_LOGIC_VECTOR (31 downto 0));
	end component;

	--Signals being used in the design
	--********************************************************************************************
	--Signals associated with Program Counter
	signal PC_inp_sig: std_logic_vector(31 downto 0):= (others => '0');
	signal PC_out_sig: std_logic_vector(31 downto 0):= (others => '0');
	
	--Signal associated with Instruction Memory
	signal Inst_Mem_inp_addr_sig: std_logic_vector(31 downto 0):= (others => '0');
	signal Instruction_sig: std_logic_vector(31 downto 0):= (others => '0');
	signal Rs_address_sig, Rt_address_sig, Rd_address_sig: std_logic_vector(4 downto 0):= (others => '0');
	
	--Signal associated with Register File
	signal Write_Reg_Address_sig: std_logic_vector(4 downto 0):= (others => '0');
	signal write_data_Reg_File_sig: std_logic_vector(31 downto 0):= (others => '0');

	--Decoder Signals
	signal load_sig: std_logic; 
	signal store_sig: std_logic;
	signal Itype_sig : std_logic;
	signal Ctrl_Next_PC_signal: std_logic_vector(1 downto 0);
	signal write_enable_sig: std_logic;
	signal ALU_operation_sig: std_logic_vector(2 downto 0):= (others => '0');

	signal opcode: std_logic_vector(5 downto 0);
	signal func_code: std_logic_vector(2 downto 0);
	
	--Signal associated with Comparator
	signal comparator_out_sig: std_logic_vector(1 downto 0);

	--Signal associated with Sign Extender for I-type Instruction
	signal sign_extend_out_sig: std_logic_vector(31 downto 0):= (others => '0');

	--Signal associated with ALU
	signal OP_1_Rs_sig: std_logic_vector(31 downto 0):= (others => '0');
	signal Op_2_Rt_sig: std_logic_vector(31 downto 0):= (others => '0');
	signal Op_2_ALU_sig: std_logic_vector(31 downto 0):= (others => '0');
	signal ALU_output_sig: std_logic_vector(31 downto 0):= (others => '0');
	
	--Signal associated with Data Memory
	signal write_data_Data_Mem_sig: std_logic_vector(31 downto 0):= (others => '0');
	signal data_Mem_out_sig: std_logic_vector(31 downto 0):= (others => '0');

	--Signal associated with Next PC Multiplexer
	signal PC_Plus_1_sig, PC_Halt_sig, PC_Jump_sig, PC_Itype_Branch_sig, Next_PC_signal: std_logic_vector(31 downto 0):= (others => '0');
	
	--Carry Signal not being used
	signal carry_PC_Adder, carry_Itype_Branch_Adder: std_logic;
	
	--Signal for adder unit
	signal inp_2_Adder_PC_Itype_Branch: std_logic_vector(31 downto 0):= (others => '0');
	
	--current inst signal
	signal current_inp_instruction: std_logic_vector(31 downto 0):= (others => '0');
	
	--Dummy signal for creating sign extended value for testing I type branch adder 
	--(Update: Not being used any more)
	--signal dummy_sig: std_logic;
	
	--*******************************************************************************************
begin
	opcode <= Instruction_sig(31 downto 26);
	func_code <= Instruction_sig(2 downto 0);
	
	Rs_address_sig <= Instruction_sig(25 downto 21);
	Rt_address_sig <= Instruction_sig(20 downto 16);
	Rd_address_sig <= Instruction_sig(15 downto 11);
	
	output <= ALU_output_sig;
	
	PC			:	ProgramCounter
					port map(PC_inp_sig, clk, PC_reset, PC_out_sig);
					
	Mux_Inst_MEM_Read_write	:	MUX_2_1_32bit
										port map(PC_out_sig, Inst_Mem_Wr_addr, Inst_Mem_Wr_en, Inst_Mem_inp_addr_sig);			 
						 
	Ins_MEM 	: 	InstructionMemory
					port map(Inst_Mem_inp_addr_sig, Inst_Mem_Wr_en, Inst_Mem_Wr_data, reset, current_inp_instruction, Instruction_sig);
											  
	Reg_File	:	RegisterFile
					port map(Rs_address_sig, Rt_address_sig, Write_Reg_Address_sig, write_data_Reg_File_sig, write_enable_sig, clk, reset, OP_1_Rs_sig, Op_2_Rt_sig);
					
	Mux_Rd_Rt:	Mux_2_1_5bit
					port map(Rd_address_sig, Rt_address_sig, Itype_sig, Write_Reg_Address_sig);
					
	ALU_op	:	ALU
					port map(OP_1_Rs_sig, Op_2_ALU_sig, ALU_operation_sig, ALU_output_sig);
	
	SignExt	: 	sign_extend
					port map(Instruction_sig(15 downto 0), sign_extend_out_sig);
					
	Mux_ALU	:	MUX_2_1_32bit
					port map(Op_2_Rt_sig, sign_extend_out_sig, Itype_sig, Op_2_ALU_sig);
					
	Data_MEM	:	DataMemory
					port map(ALU_output_sig, write_data_Data_Mem_sig, load_sig, store_sig, reset, data_Mem_out_sig);
		
	
	Mux_ALU_DMem_to_Reg	:	MUX_2_1_32bit
									port map(ALU_output_sig, data_Mem_out_sig, load_sig, write_data_Reg_File_sig);			 
		 
	Adder_PC_Normal		:	Adder_32bit
									port map(PC_out_sig, x"00000001", PC_Plus_1_sig, carry_PC_Adder);
	
	Adder_PC_Itype_Branch:	Adder_32bit
									port map(PC_Plus_1_sig, sign_extend_out_sig, PC_Itype_Branch_sig, carry_Itype_Branch_Adder);				
	
--	Adder_PC_Itype_Branch:	Adder_32bit
--									port map(PC_Plus_1_sig, inp_2_Adder_PC_Itype_Branch, PC_Itype_Branch_sig, carry_Itype_Branch_Adder);				
--	
--	inp_2_Adder_PC_Itype_Branch <= (dummy_sig & dummy_sig & dummy_sig & dummy_sig & 
--												dummy_sig & dummy_sig & dummy_sig & dummy_sig &
--												dummy_sig & dummy_sig & dummy_sig & dummy_sig &
--												dummy_sig & dummy_sig & dummy_sig & dummy_sig &
--												Instruction_sig(15 downto 0));
	
	--Dummy Signal for sign extension for checking problem n adder
	--dummy_sig <= Instruction_sig(15);
	
	Mux_NextPC	:	MUX_32bit_4x1
						port map(PC_Plus_1_sig, PC_Halt_sig, PC_Jump_sig, PC_Itype_Branch_sig, Ctrl_Next_PC_signal, PC_reset, Next_PC_signal );

	Compare	:	Comparator
					port map(OP_1_Rs_sig, Op_2_Rt_sig, reset, comparator_out_sig);
					
	Decoder	:	controlunit
					port map(opcode, func_code, comparator_out_sig, load_sig, store_sig, Itype_sig, Ctrl_Next_PC_signal, write_enable_sig, ALU_operation_sig);
		 
	PC_Jump_sig <= PC_Plus_1_sig(31 downto 28) & Instruction_sig(25 downto 0) & "00";
	
	write_data_Data_Mem_sig <=  Op_2_Rt_sig;
	
	PC_Halt_sig <= Next_PC_signal;
	PC_inp_sig <= Next_PC_signal;

end architecture;

