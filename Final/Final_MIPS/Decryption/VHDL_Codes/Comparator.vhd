----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:34:49 11/27/2016 
-- Design Name: 
-- Module Name:    Comparator - Behavioral 
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

entity Comparator is
		 port ( input1 : in STD_LOGIC_VECTOR (31 downto 0);
				  input2 : in STD_LOGIC_VECTOR (31 downto 0);
				  rst    : in STD_LOGIC;
				  output : out STD_LOGIC_VECTOR (1 downto 0));
end Comparator;

architecture Behavioral of Comparator is

begin

	process (rst, input1, input2) begin

		if (rst='1') then
			output <= "00";
		else
			if (input1 = input2) then
				output <= "01";
			
			elsif (input1 /= input2) then
				if (input1 < input2) then
					 output <= "11"; 
				else
					 output <= "10";
				end if;	 
			else
				output <="00";
			end if;
	  end if;
	end process;

end architecture;