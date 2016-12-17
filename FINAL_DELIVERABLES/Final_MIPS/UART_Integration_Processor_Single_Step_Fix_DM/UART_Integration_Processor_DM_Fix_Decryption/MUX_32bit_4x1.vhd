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

entity MUX_32bit_4x1 is
		Port ( inp_0 : in  STD_LOGIC_VECTOR(31 downto 0);
				 inp_1 : in  STD_LOGIC_VECTOR(31 downto 0);
				 inp_2 : in  STD_LOGIC_VECTOR(31 downto 0);
				 inp_3 : in  STD_LOGIC_VECTOR(31 downto 0);
			    ctrl  : in STD_LOGIC_VECTOR(1 downto 0);
				 rst	 : in STD_LOGIC;
             output : out  STD_LOGIC_VECTOR(31 downto 0));
end MUX_32bit_4x1;

architecture Behavioral of MUX_32bit_4x1 is

begin
	process(ctrl, inp_0, inp_1, inp_2, inp_3, rst)
	begin
	 
		case ctrl is 
		when "00" =>	if (rst='1') then
								output <= x"00000000"; 
							else
								output <= inp_0; end if;
								
		when "01" => 	if (rst='1') then
								output <= x"00000000"; 
							else
								output <= inp_1; end if;
								
		when "10" => 	if (rst='1') then
								output <= x"00000000"; 
							else
								output <= inp_2; end if;
								
		when "11" => 	if (rst='1') then
								output <= x"00000000"; 
							else
								output <= inp_3; end if;
								
		when others => NULL;
		end case;
		
	end process;

end architecture;

