----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:39:01 10/10/2016 
-- Design Name: 
-- Module Name:    XOR_G - Structural 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity XOR_G is
    Port ( input_1 : in  STD_LOGIC;
           input_2 : in  STD_LOGIC;
           output : out  STD_LOGIC);
end XOR_G;

architecture Structural of XOR_G is

component AND_Gate is
    Port ( inp_0 : in  STD_LOGIC;
           inp_1 : in  STD_LOGIC;
           output : out  STD_LOGIC);
end component;

component OR_Gate is
    Port ( inp_0 : in  STD_LOGIC;
           inp_1 : in  STD_LOGIC;
           output : out  STD_LOGIC);
end component;

component NOT_Gate is
    Port ( inp_0 : in  STD_LOGIC;
           output : out  STD_LOGIC);
end component;

signal s0, s1, s2, s3, s4, s5 : std_logic;

begin

s0 <= input_1;
s1 <= input_2; 

comp0: NOT_GATE 
		 port map(s0, s2);
		 
comp1: NOT_GATE
		 port map(s1, s3);
		 
comp2: AND_GATE
		 port map(s2, s1, s4);
		 
comp3: AND_GATE
		 port map(s0, s3, s5);
		 
comp4: OR_GATE
		 port map(s4, s5, output);

end Structural;

