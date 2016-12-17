----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:53:06 11/27/2016 
-- Design Name: 
-- Module Name:    InstructionMemory - Behavioral 
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

entity InstructionMemory is
		 port ( input_address 	: in STD_LOGIC_VECTOR(31 downto 0);			
				  clk : in STD_LOGIC;
				  --write_enable		: in std_logic;
				  --instruction		: in STD_LOGIC_VECTOR(31 downto 0);	
				  rst 				: in STD_LOGIC;
				  --current_inp_instruction: out STD_LOGIC_VECTOR (31 downto 0);
				  output_instruction : out STD_LOGIC_VECTOR (31 downto 0));
end InstructionMemory;

architecture Behavioral of InstructionMemory is

	type RAM is array (0 to 63) of STD_LOGIC_VECTOR (31 downto 0);
	SIGNAL instruction_memory: RAM :=  (	x"00000000", x"0FFF0000", x"1FE00026", x"1FE10027", x"1FE2000A",
										x"1FE3000B", x"07FE000B", x"07E4000C", x"07E60020",
										x"00020010", x"00230810", x"00014012", x"00014814", 
										x"01094014", x"011F5010", x"011F5810", x"0C29001F", 
										x"0C27001F", x"00C73811", x"2BE90003", x"154A0001", 
										x"09290001", x"2FE9FFFD", x"2BE70003", x"196B0001", 
										x"08E70001", x"2FE7FFFD", x"014B5013", x"07DE0001", 
										x"1FCB0000", x"014B0010", x"00204012", x"00204814", 
										x"01094014", x"011F5010", x"011F5810", x"0C09001F", 
										x"0C07001F", x"00C73811", x"2BE90003", x"154A0001",
										x"09290001", x"2FE9FFFD", x"2BE70003", x"196B0001",
										x"08E70001", x"2FE7FFFD", x"014B5013", x"07DE0001",
										x"1FCB0000", x"014B0810", x"08840001", x"2FE4FFD6",
										x"07FC0028", x"23800000", x"07FD0029", x"23A10000",
										x"FC000000", x"00000000", x"00000000",
										x"00000000", x"00000000", x"00000000", x"00000000");
													
	--signal temp_instruction : STD_LOGIC_VECTOR(31 downto 0); --:= x"00000100";
	--signal temp_address : STD_LOGIC_VECTOR(31 downto 0);-- := x"00000001";

begin

	--process (input_address, rst, instruction, write_enable) begin
	process ( clk, rst, input_address) begin
		--if (rising_edge(clk)) then
			--if (rst='1') then 
				
		--	else
				
				--if(write_enable = '1') then
					--instruction_memory(CONV_INTEGER(input_address)) <= instruction;
				--if (write_enable = '0') then 		
					   output_instruction <= instruction_memory(CONV_INTEGER(input_address));
				--end if;
			--end if;	
		--end if;
	end process;

	--current_inp_instruction  <= instruction_memory(CONV_INTEGER(input_address));
end Behavioral;

