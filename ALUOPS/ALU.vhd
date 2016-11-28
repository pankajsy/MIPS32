----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:26:47 11/26/2016 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is

port (
		operand1 : in STD_LOGIC_VECTOR (31 downto 0);
		operand2 : in STD_LOGIC_VECTOR (31 downto 0);

		ALU_operation: in STD_LOGIC_VECTOR (2 downto 0);

		ALU_output : out STD_LOGIC_VECTOR (31 downto 0)
		);		

end ALU;

architecture Behavioral of ALU is

component LeftRotate is

PORT (
		x: in signed(31 DOWNTO 0);
	   I: in signed(31 DOWNTO 0);
 	   o: out signed(31 DOWNTO 0)
		);
end component;

component RightRotate is

PORT (
		x: in signed (31 DOWNTO 0);
	   I: in signed(31 DOWNTO 0);
 	   o: out signed(31 DOWNTO 0)
		);
end component;      

signal sig_op1: signed(31 downto 0)   := (others => '0');
signal sig_op2: signed(31 downto 0)   := (others => '0');
signal sig_output : signed (31 downto 0)  := (others => '0');
signal temp_lr : signed(31 downto 0):= (others => '0');
signal temp_rr : signed(31 downto 0):= (others => '0');
begin

sig_op1 <= signed(operand1);
sig_op2 <= signed(operand2);

process (ALU_operation, temp_lr, temp_rr) begin

case ALU_operation is

when "000" => sig_output <= sig_op1 + sig_op2;
when "001" => sig_output <= sig_op1 - sig_op2;
when "010" => sig_output <= sig_op1 AND sig_op2;
when "011" => sig_output <= sig_op1 OR sig_op2;
when "100" => sig_output <= sig_op1 NOR sig_op2;
when "101" => sig_output <= temp_lr;
when "110" => sig_output <= temp_rr;
when others=> null;

end case;
end process;

Left_Rotate: LeftRotate 
				 port map(sig_op1,sig_op2,temp_lr);
				 
Right_Rotate: RightRotate 
				 port map(sig_op1,sig_op2,temp_rr);				 

ALU_output <= std_logic_vector (sig_output);


end Behavioral;

