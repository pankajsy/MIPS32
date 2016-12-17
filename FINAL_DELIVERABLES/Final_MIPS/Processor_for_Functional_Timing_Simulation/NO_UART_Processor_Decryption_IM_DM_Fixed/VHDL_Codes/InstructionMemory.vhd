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
	SIGNAL instruction_memory: RAM := (	x"00000000", x"0FFF0000", x"1FE00028", x"1FE10029", x"07FE0024",
													x"07E4000C", x"07E50020", x"0BDE0001", x"1FC30000",
													x"00230811", x"003F4010", x"003F4810", x"0C06001F", 
													x"00A63811", x"2BE60003", x"19080001", x"08C60001", 
													x"2FE6FFFD", x"2BE70003", x"15290001", x"08E70001", 
													x"2FE7FFFD", x"01094013", x"01004812", x"01005014", 
													x"012A0814", x"0BDE0001", x"1FC30000", x"00030011", 
													x"001F4010", x"001F4810", x"0C26001F", x"00A63811", 
													x"2BE60003", x"19080001", x"08C60001", x"2FE6FFFD", 
													x"2BE70003", x"15290001", x"08E70001", x"2FE7FFFD",
													x"01094013", x"01014812", x"01015014", x"012A0014",
													x"08840001", x"2FE4FFD8", x"0BDE0001", x"1FC30000",
													x"00230811", x"0BDE0001", x"1FC30000", x"00030011",
													x"07ED0026", x"21A00000", x"07ED0027", x"21A10000",
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

