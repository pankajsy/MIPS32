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
use IEEE.STD_LOGIC_SIGNED.ALL;
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

	type RAM is array (0 to 255) of STD_LOGIC_VECTOR (31 downto 0);
	SIGNAL data_memory: RAM:= (others => (others => '0'));

begin

	process (write_enable, rst, input_address, write_data) begin
		--if (rising_edge(clk)) then
			if (rst='1') then 
				data_memory <= (others => (others => '0'));
			else
				if(write_enable='1') then		
					data_memory(CONV_INTEGER(input_address)) <= write_data; 		 			
				end if;
			end if;
		--end if;	
	end process;

	process (read_enable, data_memory, input_address) begin
		if (read_enable='1') then
			output_data <= data_memory(CONV_INTEGER(input_address));	 
		end if;
	end process;	

end architecture;
