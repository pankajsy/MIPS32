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
				  clk : in STD_LOGIC;
				  rst : in STD_LOGIC;
				  output_data : out STD_LOGIC_VECTOR (31 downto 0));
end DataMemory;

architecture Behavioral of DataMemory is

	--type RAM is array (0 to 255) of STD_LOGIC_VECTOR (31 downto 0);
	--SIGNAL data_memory: RAM:= (others => (others => '0'));
	
	type RAM is array (0 to 63) of STD_LOGIC_VECTOR (31 downto 0);
	SIGNAL data_memory: RAM:= (	x"00000000", x"00000000", x"00000000", x"00000000",
										x"00000000", x"00000000", x"00000000", x"00000000",
										x"00000000", x"00000000", x"9BBBD8C8", x"1A37F7FB", 
										x"46F8E8C5", x"460C6085", x"70F83B8A", x"284B8303", 
										x"513E1454", x"F621ED22", x"3125065D", x"11A83A5D", 
										x"D427686B", x"713AD82D", x"4B792F99", x"2799A4DD", 
										x"A7901C49", x"DEDE871A", x"36C03196", x"A7EFC249", 
										x"61A78BB8", x"3B0A1D2B", x"4DBFCA76", x"AE162167", 
										x"30D76B0A", x"43192304", x"F6CC1431", x"65046380", 
										x"00000000", x"00000000", x"00000000", x"00000000", 
										x"97FFC053", x"0841727E", x"00000000", x"00000000",
										x"00000000", x"00000000", x"00000000", x"00000000",
										x"00000000", x"00000000", x"00000000", x"00000000",
										x"00000000", x"00000000", x"00000000", x"00000000",
										x"00000000", x"00000000", x"00000000", x"00000000",
										x"00000000", x"00000000", x"00000000", x"00000000");
	
--signal output_data_sig : STD_LOGIC_VECTOR (31 downto 0);

begin

	
	--output_data <= output_data_sig ;
	
	process (clk, read_enable, write_enable, data_memory, rst, input_address, write_data) begin
		--if (rising_edge(clk)) th
			
			if (clk'event and clk = '0') then
				
				if(write_enable = '1' and read_enable = '0') then
					data_memory(CONV_INTEGER(input_address)) <= write_data; 			
				end if;
				
			end if;
			
			if(write_enable = '0' and read_enable = '1') then		
					output_data <= data_memory(CONV_INTEGER(input_address));

			else 
					output_data <= x"00000000";
					
			end if;
				
		--end if;	
	end process;
	

--	process (read_enable, data_memory, input_address) begin
--		if (read_enable='1') then
--			 
--		end if;
--	end process;	

end architecture;
