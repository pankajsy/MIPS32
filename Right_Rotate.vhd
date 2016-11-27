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

entity RightRotate is
 

PORT (x: in signed(31 DOWNTO 0);
	   I: in signed(31 DOWNTO 0);
 	   o: out signed(31 DOWNTO 0));
end RightRotate;


architecture right_rot_arch of RightRotate is
signal J: integer;
signal K: integer;
signal Y: signed(4 DOWNTO 0);
signal concat_zero : signed (31 downto 0) := (others => '0');

begin
K <= to_integer(I);
J <= K mod 32;
Y <= to_signed(J,5);
WITH Y SELECT
    o<= concat_zero(0) & x(31 downto 1) when "00001",
	 concat_zero(1 downto 0) & x(31 downto 2) when "00010",
	 concat_zero(2 downto 0) & x(31 downto 3) when "00011",
	 concat_zero(3 downto 0) & x(31 downto 4) when "00100",
	 concat_zero(4 downto 0) & x(31 downto 5) when "00101",
	 concat_zero(5 downto 0) & x(31 downto 6) when "00110",
	 concat_zero(6 downto 0) & x(31 downto 7) when "00111",
	 concat_zero(7 downto 0) & x(31 downto 8) when "01000",
	 concat_zero(8 downto 0) & x(31 downto 9) when "01001",
	 concat_zero(9 downto 0) & x(31 downto 10) when "01010",
	 concat_zero(10 downto 0) & x(31 downto 11) when "01011",
	 concat_zero(11 downto 0) & x(31 downto 12) when "01100",
	 concat_zero(12 downto 0) & x(31 downto 13) when "01101",
	 concat_zero(13 downto 0) & x(31 downto 14) when "01110",
	 concat_zero(14 downto 0) & x(31 downto 15) when "01111",
	 concat_zero(15 downto 0) & x(31 downto 16) when "10000",
	 concat_zero(16 downto 0) & x(31 downto 17) when "10001",
	 concat_zero(17 downto 0) & x(31 downto 18) when "10010",
	 concat_zero(18 downto 0) & x(31 downto 19) when "10011",
	 concat_zero(19 downto 0) & x(31 downto 20) when "10100",
	 concat_zero(20 downto 0) & x(31 downto 21) when "10101",
	 concat_zero(21 downto 0) & x(31 downto 22) when "10110",
	 concat_zero(22 downto 0) & x(31 downto 23) when "10111",
	 concat_zero(23 downto 0) & x(31 downto 24) when "11000",
	 concat_zero(24 downto 0) & x(31 downto 25) when "11001",
	 concat_zero(25 downto 0) & x(31 downto 26) when "11010",
	 concat_zero(26 downto 0) & x(31 downto 27) when "11011",
	 concat_zero(27 downto 0) & x(31 downto 28) when "11100",
	 concat_zero(28 downto 0) & x(31 downto 29) when "11101",
	 concat_zero(29 downto 0) & x(31 downto 30) when "11110",
	 concat_zero(30 downto 0) & x(31) when "11111",
	 x when others;

end right_rot_arch;


