----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:19:58 10/10/2016 
-- Design Name: 
-- Module Name:    Full_Adder - Structural 
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

entity Full_Adder is
    Port ( inp_1 : in  STD_LOGIC;
           inp_2 : in  STD_LOGIC;
           inp_carry : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           output_carry : out  STD_LOGIC);
end Full_Adder;

architecture Structural of Full_Adder is

component Half_Adder is
    Port ( inp_1 : in  STD_LOGIC;
           inp_2 : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end component;

component OR_Gate is
    Port ( inp_0 : in  STD_LOGIC;
           inp_1 : in  STD_LOGIC;
           output : out  STD_LOGIC);
end component;

signal s0, s1, s2, s3 : std_logic;

begin

s0 <= inp_carry;

comp0: Half_Adder
		 port  map(inp_1, inp_2, s1, s2);
		 
comp1: Half_Adder
		 port map(s1, s0, sum, s3);
		 
comp2: OR_Gate
		 port map(s2, s3, output_carry);

end Structural;

