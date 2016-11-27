----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:33:36 11/27/2016 
-- Design Name: 
-- Module Name:    ProgramCounter - Behavioral 
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

entity ProgramCounter is

port (
       input_pc : in STD_LOGIC_VECTOR (31 downto 0);
		 output_pc : out STD_LOGIC_VECTOR (31 downto 0);
		 clk : in STD_LOGIC;
		 rst : in STD_LOGIC
	   );

end ProgramCounter;

architecture Behavioral of ProgramCounter is

begin

process (clk, input_pc) begin
	if(rising_edge(clk)) then
      if (rst='1') then
      output_pc <= (others =>'0');
      else		
		output_pc <= input_pc;
      end if;
	end if;	
end process;

end Behavioral;

