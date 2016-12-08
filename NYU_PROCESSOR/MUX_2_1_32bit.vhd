----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:03:30 10/12/2016 
-- Design Name: 
-- Module Name:    MUX_2_1_32bit - Behavioral 
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

entity MUX_2_1_32bit is
    Port ( inp_0 : in  STD_LOGIC_VECTOR(31 downto 0);
           inp_1 : in  STD_LOGIC_VECTOR(31 downto 0);
			  ctrl  : in std_logic;
           output : out  STD_LOGIC_VECTOR(31 downto 0));
end MUX_2_1_32bit;

architecture Structural of MUX_2_1_32bit is

begin
	process(ctrl, inp_0, inp_1)
	begin
		case ctrl is 
		when '0' => output <= inp_0;
		when '1' => output <= inp_1;
		when others => NULL;
		end case;
	end process;

end architecture;

