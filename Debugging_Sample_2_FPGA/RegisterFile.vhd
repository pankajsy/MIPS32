----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:16:13 11/26/2016 
-- Design Name: 
-- Module Name:    RegisterFile - Behavioral 
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

entity RegisterFile is
		 port ( read_address_rs : in STD_LOGIC_VECTOR(4 downto 0);
				  read_address_rt : in STD_LOGIC_VECTOR (4 downto 0);
				  write_address: in STD_LOGIC_VECTOR (4 downto 0);
				  write_data : in STD_LOGIC_VECTOR (31 downto 0);				
				  write_enable : in STD_LOGIC;
				  clk : in STD_LOGIC;
				  rst : in STD_LOGIC;
				  out_data_rs : out STD_LOGIC_VECTOR (31 downto 0);
				  out_data_rt: out STD_LOGIC_VECTOR (31 downto 0));
end RegisterFile;

architecture Behavioral of RegisterFile is

	type RAM is array (0 to 31) of STD_LOGIC_VECTOR (31 downto 0);
	SIGNAL register_file: RAM:= (others => (others => '0'));

signal out_data_rs_sig : std_logic_vector(31 downto 0):= (others => '0');
signal out_data_rt_sig : std_logic_vector(31 downto 0):= (others => '0');

begin

	--process ( write_enable, rst, write_address, write_data, clk) begin
	process (write_address, rst, write_enable, write_data, clk) begin
		if (rising_edge(clk)) then
			if (rst='1') then 
									register_file <= (	x"00000000", x"00000000", x"00000000", x"00000000",
																x"00000000", x"00000000", x"00000000", x"00000000", 
																x"00000000", x"00000000", x"00000000", x"00000000", 
																x"00000000", x"00000000", x"00000000", x"00000000", 
																x"00000000", x"00000000", x"00000000", x"00000000", 
																x"00000000", x"00000000", x"00000000", x"00000000", 
																x"00000000", x"00000000", x"00000000", x"00000000", 
																x"00000000", x"00000000", x"00000000", x"00000000");
			else
				if(write_enable='1') then 
					register_file(CONV_INTEGER(write_address)) <= write_data;
				end if;
			end if;
		end if;	
	end process;
	
	out_data_rs <= out_data_rs_sig;
	out_data_rt <= out_data_rt_sig;
	
	out_data_rs_sig <= register_file(CONV_INTEGER(read_address_rs));
	out_data_rt_sig <= register_file(CONV_INTEGER(read_address_rt));
					
--	process (read_address_rs, read_address_rt, rst, write_data, clk)
--	begin
--		if (rst='1') then out_data_rs_sig <= x"00000000";
--								out_data_rt_sig <= x"00000000"; 
--		elsif (write_enable='0') then
--					out_data_rs_sig <= register_file(CONV_INTEGER(read_address_rs));
--					out_data_rt_sig <= register_file(CONV_INTEGER(read_address_rt));
--		end if;
--	end process;
	
	
		
end Behavioral;

