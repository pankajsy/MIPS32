----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:00:13 10/10/2016 
-- Design Name: 
-- Module Name:    Half_Adder - Structural 
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

entity Half_Adder is
    Port ( inp_1 : in  STD_LOGIC;
           inp_2 : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end Half_Adder;

architecture Structural of Half_Adder is

component XOR_G is
    Port ( input_1 : in  STD_LOGIC;
           input_2 : in  STD_LOGIC;
           output : out  STD_LOGIC);
end component;

component AND_Gate is
    Port ( inp_0 : in  STD_LOGIC;
           inp_1 : in  STD_LOGIC;
           output : out  STD_LOGIC);
end component;

signal s0, s1 : std_logic;

begin

s0 <= inp_1;
s1 <= inp_2;

comp0: XOR_G
		 port map(s0, s1, sum);
		 
comp1: AND_Gate
		 port map(s0, s1, carry);
		 
end Structural;

