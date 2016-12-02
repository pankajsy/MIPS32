----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:03:30 10/12/2016 
-- Design Name: 
-- Module Name:    MUX_2_1_32bit - Behavioral 
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

entity MUX_2_1_32bit is
    Port ( inp_0 : in  STD_LOGIC_VECTOR(31 downto 0);
           inp_1 : in  STD_LOGIC_VECTOR(31 downto 0);
			  ctrl  : in std_logic;
           output : out  STD_LOGIC_VECTOR(31 downto 0));
end MUX_2_1_32bit;

architecture Structural of MUX_2_1_32bit is

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

signal s1 : std_logic;									-- Signal s1 is to store intermediate result of ( NOT ctrl )
signal s2, s3 : std_logic_vector(31 downto 0);	-- Signal s2 is to store intermediate result of ( inp_0 AND s1 )
																-- Signal s3 is to store intermediate result of ( inp_1 AND ctrl )

begin

comp1: NOT_Gate
		 port map (ctrl, s1);
		 
comp2: AND_Gate
		 port map (inp_0(0), s1, s2(0));
		 
comp3: AND_Gate
		 port map (inp_0(1), s1, s2(1));
		 
comp4: AND_Gate
		 port map (inp_0(2), s1, s2(2));
		 
comp5: AND_Gate
		 port map (inp_0(3), s1, s2(3));
		 
comp6: AND_Gate
		 port map (inp_0(4), s1, s2(4));
		 
comp7: AND_Gate
		 port map (inp_0(5), s1, s2(5));
		 
comp8: AND_Gate
		 port map (inp_0(6), s1, s2(6));
		 
comp9: AND_Gate
		 port map (inp_0(7), s1, s2(7));
		 
comp10: AND_Gate
		 port map (inp_0(8), s1, s2(8));
		 
comp11: AND_Gate
		 port map (inp_0(9), s1, s2(9));
		 
comp12: AND_Gate
		 port map (inp_0(10), s1, s2(10));
		 
comp13: AND_Gate
		 port map (inp_0(11), s1, s2(11));
		 
comp14: AND_Gate
		 port map (inp_0(12), s1, s2(12));
		 
comp15: AND_Gate
		 port map (inp_0(13), s1, s2(13));
		 
comp16: AND_Gate
		 port map (inp_0(14), s1, s2(14));
		 
comp17: AND_Gate
		 port map (inp_0(15), s1, s2(15));
		 
comp18: AND_Gate
		 port map (inp_0(16), s1, s2(16));
		 
comp19: AND_Gate
		 port map (inp_0(17), s1, s2(17));
		 
comp20: AND_Gate
		 port map (inp_0(18), s1, s2(18));
		 
comp21: AND_Gate
		 port map (inp_0(19), s1, s2(19));
		 
comp22: AND_Gate
		 port map (inp_0(20), s1, s2(20));
		 
comp23: AND_Gate
		 port map (inp_0(21), s1, s2(21));
		 
comp24: AND_Gate
		 port map (inp_0(22), s1, s2(22));
		 
comp25: AND_Gate
		 port map (inp_0(23), s1, s2(23));
		 
comp26: AND_Gate
		 port map (inp_0(24), s1, s2(24));
		 
comp27: AND_Gate
		 port map (inp_0(25), s1, s2(25));
		 
comp28: AND_Gate
		 port map (inp_0(26), s1, s2(26));
		 
comp29: AND_Gate
		 port map (inp_0(27), s1, s2(27));
		 
comp30: AND_Gate
		 port map (inp_0(28), s1, s2(28));
		 
comp31: AND_Gate
		 port map (inp_0(29), s1, s2(29));
		 
comp32: AND_Gate
		 port map (inp_0(30), s1, s2(30));
		 
comp33: AND_Gate
		 port map (inp_0(31), s1, s2(31));
		 


comp34: AND_Gate
		 port map (inp_1(0), ctrl, s3(0));
		 
comp35: AND_Gate
		 port map (inp_1(1), ctrl, s3(1));
		 
comp36: AND_Gate
		 port map (inp_1(2), ctrl, s3(2));
		 
comp37: AND_Gate
		 port map (inp_1(3), ctrl, s3(3));
		 
comp38: AND_Gate
		 port map (inp_1(4), ctrl, s3(4));
		 
comp39: AND_Gate
		 port map (inp_1(5), ctrl, s3(5));
		 
comp40: AND_Gate
		 port map (inp_1(6), ctrl, s3(6));
		 
comp41: AND_Gate
		 port map (inp_1(7), ctrl, s3(7));
		 
comp42: AND_Gate
		 port map (inp_1(8), ctrl, s3(8));
		 
comp43: AND_Gate
		 port map (inp_1(9), ctrl, s3(9));
		 
comp44: AND_Gate
		 port map (inp_1(10), ctrl, s3(10));
		 
comp45: AND_Gate
		 port map (inp_1(11), ctrl, s3(11));
		 
comp46: AND_Gate
		 port map (inp_1(12), ctrl, s3(12));
		 
comp47: AND_Gate
		 port map (inp_1(13), ctrl, s3(13));
		 
comp48: AND_Gate
		 port map (inp_1(14), ctrl, s3(14));
		 
comp49: AND_Gate
		 port map (inp_1(15), ctrl, s3(15));
		 
comp50: AND_Gate
		 port map (inp_1(16), ctrl, s3(16));
		 
comp51: AND_Gate
		 port map (inp_1(17), ctrl, s3(17));
		 
comp52: AND_Gate
		 port map (inp_1(18), ctrl, s3(18));
		 
comp53: AND_Gate
		 port map (inp_1(19), ctrl, s3(19));
		 
comp54: AND_Gate
		 port map (inp_1(20), ctrl, s3(20));
		 
comp55: AND_Gate
		 port map (inp_1(21), ctrl, s3(21));
		 
comp56: AND_Gate
		 port map (inp_1(22), ctrl, s3(22));
		 
comp57: AND_Gate
		 port map (inp_1(23), ctrl, s3(23));
		 
comp58: AND_Gate
		 port map (inp_1(24), ctrl, s3(24));
		 
comp59: AND_Gate
		 port map (inp_1(25), ctrl, s3(25));
		 
comp60: AND_Gate
		 port map (inp_1(26), ctrl, s3(26));
		 
comp61: AND_Gate
		 port map (inp_1(27), ctrl, s3(27));
		 
comp62: AND_Gate
		 port map (inp_1(28), ctrl, s3(28));
		 
comp63: AND_Gate
		 port map (inp_1(29), ctrl, s3(29));
		 
comp64: AND_Gate
		 port map (inp_1(30), ctrl, s3(30));
		 
comp65: AND_Gate
		 port map (inp_1(31), ctrl, s3(31));		 
		 
		 
comp66: OR_Gate
		  port map (s2(0), s3(0), output(0));
		  
comp67: OR_Gate
		  port map (s2(1), s3(1), output(1));
		  
comp68: OR_Gate
		  port map (s2(2), s3(2), output(2));
		  
comp69: OR_Gate
		  port map (s2(3), s3(3), output(3));
		  
comp70: OR_Gate
		  port map (s2(4), s3(4), output(4));
		  
comp71: OR_Gate
		  port map (s2(5), s3(5), output(5));
		  
comp72: OR_Gate
		  port map (s2(6), s3(6), output(6));
		  
comp73: OR_Gate
		  port map (s2(7), s3(7), output(7));
		  
comp74: OR_Gate
		  port map (s2(8), s3(8), output(8));
		  
comp75: OR_Gate
		  port map (s2(9), s3(9), output(9));
		  
comp76: OR_Gate
		  port map (s2(10), s3(10), output(10));
		  
comp77: OR_Gate
		  port map (s2(11), s3(11), output(11));
		  
comp78: OR_Gate
		  port map (s2(12), s3(12), output(12));
		  
comp79: OR_Gate
		  port map (s2(13), s3(13), output(13));
		  
comp80: OR_Gate
		  port map (s2(14), s3(14), output(14));
		  
comp81: OR_Gate
		  port map (s2(15), s3(15), output(15));
		  
comp82: OR_Gate
		  port map (s2(16), s3(16), output(16));
		  
comp83: OR_Gate
		  port map (s2(17), s3(17), output(17));
		  
comp84: OR_Gate
		  port map (s2(18), s3(18), output(18));
		  
comp85: OR_Gate
		  port map (s2(19), s3(19), output(19));
		  
comp86: OR_Gate
		  port map (s2(20), s3(20), output(20));
		  
comp87: OR_Gate
		  port map (s2(21), s3(21), output(21));
		  
comp88: OR_Gate
		  port map (s2(22), s3(22), output(22));
		  
comp89: OR_Gate
		  port map (s2(23), s3(23), output(23));
		  
comp90: OR_Gate
		  port map (s2(24), s3(24), output(24));
		  
comp91: OR_Gate
		  port map (s2(25), s3(25), output(25));
		  
comp92: OR_Gate
		  port map (s2(26), s3(26), output(26));
		  
comp93: OR_Gate
		  port map (s2(27), s3(27), output(27));
		  
comp94: OR_Gate
		  port map (s2(28), s3(28), output(28));
		  
comp95: OR_Gate
		  port map (s2(29), s3(29), output(29));
		  
comp96: OR_Gate
		  port map (s2(30), s3(30), output(30));
		  
comp97: OR_Gate
		  port map (s2(31), s3(31), output(31));


end architecture;

