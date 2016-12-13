----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:57:13 11/27/2016 
-- Design Name: 
-- Module Name:    MUX_32bit_4x1 - Behavioral 
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

entity Mux_2_1_5bit is
		Port ( inp_0 : in  STD_LOGIC_VECTOR(4 downto 0);
				 inp_1 : in  STD_LOGIC_VECTOR(4 downto 0);
			    ctrl  : in STD_LOGIC;
             output : out  STD_LOGIC_VECTOR(4 downto 0));
end Mux_2_1_5bit;

architecture Behavioral of Mux_2_1_5bit is

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

