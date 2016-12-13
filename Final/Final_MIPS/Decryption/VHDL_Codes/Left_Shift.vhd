----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:05:43 09/25/2016 
-- Design Name: 
-- Module Name:    LeftRotate - Behavioral 
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

entity Left_Shift is
		 PORT ( x: in signed(31 DOWNTO 0);
				  I: in signed (31 downto 0);
				  o: out signed(31 DOWNTO 0));
end Left_Shift;

architecture behavioral of Left_Shift is
	signal J: integer;
	signal K: integer;
	signal Y: signed(4 DOWNTO 0);
	signal concat_zero : signed (31 downto 0) := (others => '0');
	--shared variable xyz :  integer := 32;

	--shared variable m: integer := 5;

	--signal n: std_logic_vector (m downto 0);
begin

	K <= to_integer(I);
	J <= K mod 32;
	--Y <= std_logic_vector(to_signed(J, 5));
	Y <= to_signed(J,5);
	WITH Y SELECT
		 o<=	x(30 DOWNTO 0) & concat_zero(31) WHEN "00001",
		x(29 DOWNTO 0) & concat_zero(31 DOWNTO 30) WHEN "00010",
		x(28 DOWNTO 0) & concat_zero(31 DOWNTO 29) WHEN "00011",
		x(27 DOWNTO 0) & concat_zero(31 DOWNTO 28) WHEN "00100",
		x(26 DOWNTO 0) & concat_zero(31 DOWNTO 27) WHEN "00101",
		x(25 DOWNTO 0) & concat_zero(31 DOWNTO 26) WHEN "00110",
		x(24 DOWNTO 0) & concat_zero(31 DOWNTO 25) WHEN "00111",
		x(23 DOWNTO 0) & concat_zero(31 DOWNTO 24) WHEN "01000",
		x(22 DOWNTO 0) & concat_zero(31 DOWNTO 23) WHEN "01001",
		x(21 DOWNTO 0) & concat_zero(31 DOWNTO 22) WHEN "01010",
		x(20 DOWNTO 0) & concat_zero(31 DOWNTO 21) WHEN "01011",
		x(19 DOWNTO 0) & concat_zero(31 DOWNTO 20) WHEN "01100",
		x(18 DOWNTO 0) & concat_zero(31 DOWNTO 19) WHEN "01101",
		x(17 DOWNTO 0) & concat_zero(31 DOWNTO 18) WHEN "01110",
		x(16 DOWNTO 0) & concat_zero(31 DOWNTO 17) WHEN "01111",
		x(15 DOWNTO 0) & concat_zero(31 DOWNTO 16) WHEN "10000",
		x(14 DOWNTO 0) & concat_zero(31 DOWNTO 15) WHEN "10001",
		x(13 DOWNTO 0) & concat_zero(31 DOWNTO 14) WHEN "10010",
		x(12 DOWNTO 0) & concat_zero(31 DOWNTO 13) WHEN "10011",
		x(11 DOWNTO 0) & concat_zero(31 DOWNTO 12) WHEN "10100",
		x(10 DOWNTO 0) & concat_zero(31 DOWNTO 11) WHEN "10101",
		x(9 DOWNTO 0) & concat_zero(31 DOWNTO 10) WHEN "10110",
		x(8 DOWNTO 0) & concat_zero(31 DOWNTO 9) WHEN "10111",
		x(7 DOWNTO 0) & concat_zero(31 DOWNTO 8) WHEN "11000",
		x(6 DOWNTO 0) & concat_zero(31 DOWNTO 7) WHEN "11001",
		x(5 DOWNTO 0) & concat_zero(31 DOWNTO 6) WHEN "11010",
		x(4 DOWNTO 0) & concat_zero(31 DOWNTO 5) WHEN "11011",
		x(3 DOWNTO 0) & concat_zero(31 DOWNTO 4) WHEN "11100",
		x(2 DOWNTO 0) & concat_zero(31 DOWNTO 3) WHEN "11101",
		x(1 DOWNTO 0) & concat_zero(31 DOWNTO 2) WHEN "11110",
		x(0) & concat_zero(31 DOWNTO 1) WHEN "11111",
		x WHEN OTHERS;

end architecture;


