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
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ProgramCounter is
		 port ( input_pc : in STD_LOGIC_VECTOR (31 downto 0);
				  clk : in STD_LOGIC;
				  rst : in STD_LOGIC;
				  output_pc : out STD_LOGIC_VECTOR (31 downto 0);
				  button1: in std_logic
				  );
end ProgramCounter;

architecture Behavioral of ProgramCounter is

signal output_pc_sig : STD_LOGIC_VECTOR(31 downto 0):= (others => '0'); 

begin
	
	process (clk, rst, input_pc) begin
		if(clk'event and clk='1') then
			if (rst='1') then
				output_pc <= x"00000000";
			else		
			  if (button1'event and button1='1') then
				output_pc <= input_pc;
				end if;
			end if;
		end if;	
	end process;
	
	
--	process (clk, rst, input_pc) begin
--		if(clk'event and clk='1') then
--			if (rst='1') then
--				output_pc <= x"00000000";
--			else		
--				output_pc <= input_pc;
--			end if;
--		end if;	
--	end process;

--output_pc <= output_pc_sig;


end architecture;

