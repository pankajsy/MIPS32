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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity InstructionMemory is

port (
			input_address : in STD_LOGIC_VECTOR(31 downto 0);			
         output_instruction : out STD_LOGIC_VECTOR (31 downto 0);
			clk : in STD_LOGIC;
			rst : in STD_LOGIC
		
		);

end InstructionMemory;

architecture Behavioral of InstructionMemory is

type RAM is array (0 to 31) of STD_LOGIC_VECTOR (31 downto 0);
SIGNAL instruction_memory: RAM := (others => (others => '0'));

signal temp_instruction : STD_LOGIC_VECTOR(31 downto 0) := x"00000100";
signal temp_address : STD_LOGIC_VECTOR(31 downto 0) := x"00000001";

begin

process (clk, rst) begin
	if (rising_edge(clk)) then
		if (rst='1') then 
		instruction_memory <= (others => (others => '0'));
		instruction_memory(CONV_INTEGER(temp_address)) <= temp_instruction;
		else		
		output_instruction <= instruction_memory(CONV_INTEGER(input_address)); 		 			
		end if;
	end if;	
end process;

end Behavioral;

