----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:53:50 11/26/2016 
-- Design Name: 
-- Module Name:    DataMemory - Behavioral 
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

entity DataMemory is
		 port ( input_address : in STD_LOGIC_VECTOR(31 downto 0);					
				  write_data  : in STD_LOGIC_VECTOR (31 downto 0);
				  read_enable : in STD_LOGIC;
				  write_enable : in STD_LOGIC;
				  --clk : in STD_LOGIC;
				  rst : in STD_LOGIC;
				  output_data : out STD_LOGIC_VECTOR (31 downto 0));
end DataMemory;

architecture Behavioral of DataMemory is

	--type RAM is array (0 to 255) of STD_LOGIC_VECTOR (31 downto 0);
	--SIGNAL data_memory: RAM:= (others => (others => '0'));
	
	type RAM is array (0 to 63) of STD_LOGIC_VECTOR (31 downto 0);
	SIGNAL data_memory: RAM:= (others => (others => '0'));

begin

	process (read_enable, write_enable, data_memory, rst, input_address, write_data) begin
		--if (rising_edge(clk)) then
			if (rst='1') then 
				data_memory <= (	x"00000000", x"00000000", x"00000000", x"00000000",
										x"00000000", x"00000000", x"00000000", x"00000000",
										x"00000000", x"00000000", x"B7E15163", x"5618cb1c", 
										x"f45044d5", x"9287be8e", x"30bf3847", x"cef6b200", 
										x"6d2e2bb9", x"0b65a572", x"a99d1f2b", x"47d498e4", 
										x"e60c129d", x"84438c56", x"227b060f", x"c0b27fc8", 
										x"5ee9f981", x"fd21733a", x"9b58ecf3", x"399066ac", 
										x"d7c7e065", x"75ff5a1e", x"1436d3d7", x"b26e4d90", 
										x"50a5c749", x"eedd4102", x"8d14babb", x"2b4c3474", 
										x"00000000", x"00000000", x"00000000", x"00000000", 
										x"00000000", x"00000000", x"00000000", x"00000000",
										x"00000000", x"00000000", x"00000000", x"00000000",
										x"00000000", x"00000000", x"00000000", x"00000000",
										x"00000000", x"00000000", x"00000000", x"00000000",
										x"00000000", x"00000000", x"00000000", x"00000000",
										x"00000000", x"00000000", x"00000000", x"00000000");
			
			else
				
				if(write_enable = '1' and read_enable = '1') then
					output_data <= write_data;
					data_memory(CONV_INTEGER(input_address)) <= write_data;
				elsif(write_enable='1') then		
					data_memory(CONV_INTEGER(input_address)) <= write_data;
				elsif (read_enable='1') then
					output_data <= data_memory(CONV_INTEGER(input_address));	 			
				end if;
			end if;
		--end if;	
	end process;

--	process (read_enable, data_memory, input_address) begin
--		if (read_enable='1') then
--			output_data <= data_memory(CONV_INTEGER(input_address));	 
--		end if;
--	end process;	

end architecture;
