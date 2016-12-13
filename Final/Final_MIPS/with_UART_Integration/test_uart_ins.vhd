
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:38:00 12/03/2016 
-- Design Name: 
-- Module Name:    Ins_Mem_with_UART - Behavioral 
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

entity test_uart_ins is
    port (	 CLK				: in std_logic;
				 UART_RXD		: in std_logic;
				 UART_TXD		: out std_logic; 
				 IM_WRITE_EN_Button	: in 	std_logic;
				 PC_reset		: in 	std_logic;
				 reset			: in std_logic;
				 LED_1			: out std_logic;
				 LED_2			: out std_logic;
				 LED_3_Wr_Status 	: out std_logic;
				 count			: out std_logic_vector(2 downto 0);
				 SSEG_CA			: out std_logic_vector(7 downto 0);
				 SSEG_AN			: out std_logic_vector(7 downto 0));
	 
end test_uart_ins;

architecture Behavioral of test_uart_ins  is
	
	component SERIAL_PORT  is
		 port (CLK				: in std_logic;
				 UART_RXD		: in std_logic;
				 UART_TXD		: out std_logic;
				 IM_WRITE_EN	: in 	std_logic;
				 reset			: in std_logic;
				 IM_WR_EN_from_UART	: out 	std_logic;
				 MEM_ADDRESS	: out std_logic_vector(31 downto 0);
				 LED_1			: out std_logic;
				 LED_2			: out std_logic;
				 count_sig			: out std_logic_vector(2 downto 0);
				 Ins_Data		: out std_logic_vector(31 downto 0));
				 --SSEG_CA			: out std_logic_vector(7 downto 0);
				 --SSEG_AN			: out std_logic_vector(7 downto 0));
	end component;
	
	component NYU_6463_Processor is
		 Port ( clk 				: in  STD_LOGIC;
				  reset 				: in  STD_LOGIC;
				  PC_reset			: in 	std_logic;
				  Inst_Mem_Wr_en	: in 	std_logic;
				  Instruction		: out std_logic_vector(31 downto 0);
				  Inst_Mem_Wr_addr: in 	std_logic_vector(31 downto 0);
				  Inst_Mem_Wr_data: in 	std_logic_vector(31 downto 0);
				  output				: out std_logic_vector(31 downto 0));
	end component;

	component hex_7seg is
				  port (CLK				: in std_logic;
						  DATA			: in std_logic_vector(31 downto 0);
						  DIGIT_ENABLE	: in std_logic_vector(7 downto 0);
						  SSEG_CA		: out std_logic_vector(7 downto 0);
						  SSEG_AN		: out std_logic_vector(7 downto 0));
	 end component;
    	
	signal MEM_ADDRESS_sig	:	std_logic_vector(31 downto 0);
	signal Ins_Data_sig		: 	std_logic_vector(31 downto 0);
	signal output_ALU_sig	: 	STD_LOGIC_VECTOR (31 downto 0);
	signal IM_WR_EN_from_UART : STD_LOGIC;
	signal Instruction		: std_logic_vector(31 downto 0);
	--signal count				: std_logic_vector(2 downto 0);
	--signal Current_Ins		: 	STD_LOGIC_VECTOR (31 downto 0);
	
begin

comp1	:	SERIAL_PORT
			port map(CLK, UART_RXD, UART_TXD, IM_WRITE_EN_Button, reset, IM_WR_EN_from_UART, MEM_ADDRESS_sig, LED_1, LED_2, count, Ins_Data_sig);

comp2 :	NYU_6463_Processor
			port map(CLK, reset, PC_reset, IM_WR_EN_from_UART, Instruction, MEM_ADDRESS_sig, Ins_Data_sig, output_ALU_sig);
		  
inst_hex	:	hex_7seg 
				port map(	CLK => CLK,
								--DATA => last_four_chars,
								--DATA => Ins_Data_sig(31 downto 0),
								DATA => Ins_Data_sig(31 downto 0),
								DIGIT_ENABLE => "11111111",
								SSEG_CA => SSEG_CA,
								SSEG_AN => SSEG_AN);
			
			LED_3_Wr_Status <= IM_WR_EN_from_UART;				
				

end architecture;

