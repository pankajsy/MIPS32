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
	SIGNAL instruction_memory: RAM := (	x"00000000", x"0FFF0000", x"07FC004E", x"07FB0020", x"07E00000",
													x"07E10000", x"07E2000A", x"07E30004", x"07FA0024",
													x"07F90008",x"00012010",x"04540000",x"1E850000",
													x"00852010",x"009F3010",x"009F3810",x"07E80003",
													x"14C60001",x"09080001",x"2FE8FFFD",x"0B680003",
													x"18E70001",x"09080001",x"2FE8FFFD",x"00C70013",
													x"04540000",x"22800000",x"00014810",x"04740000",
													x"1E8A0000",x"01495810",x"017F6010",x"017F6810",
													x"0D2E001F",x"0D2F001F",x"036F7811",x"2BEE0003",
													x"158C0001",x"09CE0001",x"2FEEFFFD",x"2BEF0003",
													x"19AD0001",x"09EF0001",x"2FEFFFFD",x"018D0813",
													x"04740000",x"22810000",x"04420001",x"04630001",
													x"2F420001",x"07E2000A",x"2F230001",x"07E30004",
													x"0B9C0001",x"2FFCFFD3",x"07F4000A",x"1E9D0000",
													x"07F40023",x"1E9E0000",x"FC000000",x"FC000000",
													x"00000000",x"00000000",x"00000000");
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

