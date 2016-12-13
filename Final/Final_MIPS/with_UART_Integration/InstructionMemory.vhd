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
				  write_enable		: in std_logic;
				  instruction		: in STD_LOGIC_VECTOR(31 downto 0);	
				  rst 				: in STD_LOGIC;
				  --current_inp_instruction: out STD_LOGIC_VECTOR (31 downto 0);
				  output_instruction : out STD_LOGIC_VECTOR (31 downto 0));
end InstructionMemory;

architecture Behavioral of InstructionMemory is

	type RAM is array (0 to 63) of STD_LOGIC_VECTOR (31 downto 0);
	SIGNAL instruction_memory: RAM := (others => (others => '0'));

	--signal temp_instruction : STD_LOGIC_VECTOR(31 downto 0); --:= x"00000100";
	--signal temp_address : STD_LOGIC_VECTOR(31 downto 0);-- := x"00000001";

begin

	--process (input_address, rst, instruction, write_enable) begin
	process ( clk, rst, input_address) begin
		--if (rising_edge(clk)) then
			if (rst='1') then 
				instruction_memory <= (others => (others => '0'));
		--	else
				
			elsif(write_enable = '1') then
					instruction_memory(CONV_INTEGER(input_address)) <= instruction;
				--if (write_enable = '0') then 
			elsif (write_enable = '0') then
					   output_instruction <= instruction_memory(CONV_INTEGER(input_address));
			end if;
			--end if;	
		--end if;
	end process;

	--current_inp_instruction  <= instruction_memory(CONV_INTEGER(input_address));
end Behavioral;

