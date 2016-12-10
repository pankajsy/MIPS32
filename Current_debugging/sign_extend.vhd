----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:40:16 11/26/2016 
-- Design Name: 
-- Module Name:    sign_extend - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

entity sign_extend is
		 Port ( input  : in  STD_LOGIC_VECTOR (15 downto 0);
				  output : out  STD_LOGIC_VECTOR (31 downto 0));
end sign_extend;

architecture Behavioral of sign_extend is

	signal extend0 : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
	signal extend1 : STD_LOGIC_VECTOR (15 downto 0) := (others => '1');

begin

	process (input, extend0, extend1) begin
	case input(15) is

	when '0' => output <= extend0 & input;
	when '1' => output <= extend1 & input;
	when others => null;

	end case;

	end process;

end architecture;

