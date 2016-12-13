----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:32:24 10/10/2016 
-- Design Name: 
-- Module Name:    Adder_32bit - Structural 
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
--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Adder_32bit is
		 Port ( op_1 : in  STD_LOGIC_VECTOR(31 DOWNTO 0);
				  op_2 : in  STD_LOGIC_VECTOR(31 DOWNTO 0);
				  rst	 : in std_logic;
				  sum_out : out  STD_LOGIC_VECTOR(31 DOWNTO 0));
				  --carry : out  STD_LOGIC);
end Adder_32bit;

architecture Structural of Adder_32bit is
--component Full_Adder is
--    Port ( inp_1 : in  STD_LOGIC;
--           inp_2 : in  STD_LOGIC;
--           inp_carry : in  STD_LOGIC;
--           sum : out  STD_LOGIC;
--           output_carry : out  STD_LOGIC);
--end component;
--
--component Half_Adder is
--    Port ( inp_1 : in  STD_LOGIC;
--           inp_2 : in  STD_LOGIC;
--           sum : out  STD_LOGIC;
--           carry : out  STD_LOGIC);
--end component;
--signal c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15: std_logic;
--signal c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31: std_logic;

signal inp_1: signed(31 downto 0)   := (others => '0');
signal inp_2: signed(31 downto 0)   := (others => '0');

--signal sum: signed(31 downto 0)   := (others => '0');

begin

	inp_1	<= signed(op_1);
	inp_2 <= signed(op_2);
				
	process(inp_1, inp_2, op_1, op_1)
	--process(op_1, op_2, rst)
	begin	
		
				
				sum_out <= std_logic_vector (inp_1 + inp_2);
				--sum_out <= (signed(op_1) + signed(op_2));
				--carry <= '0';
			
	end process;

--	sum_out <= std_logic_vector (sum);
--
--comp0: Half_Adder
--		 port map(inp_1(0), inp_2(0), sum(0), c0);
--
--comp1: Full_Adder
--		 port map(inp_1(1), inp_2(1), c0, sum(1), c1);		
--
--comp2: Full_Adder
--		 port map(inp_1(2), inp_2(2), c1, sum(2), c2);		 
--		 
--comp3: Full_Adder
--		 port map(inp_1(3), inp_2(3), c2, sum(3), c3);		
--
--comp4: Full_Adder
--		 port map(inp_1(4), inp_2(4), c3, sum(4), c4);
--		 
--comp5: Full_Adder
--		 port map(inp_1(5), inp_2(5), c4, sum(5), c5);		
--
--comp6: Full_Adder
--		 port map(inp_1(6), inp_2(6), c5, sum(6), c6);
--		 
--comp7: Full_Adder
--		 port map(inp_1(7), inp_2(7), c6, sum(7), c7);		
--
--comp8: Full_Adder
--		 port map(inp_1(8), inp_2(8), c7, sum(8), c8);
--		 
--comp9: Full_Adder
--		 port map(inp_1(9), inp_2(9), c8, sum(9), c9);		
--
--comp10: Full_Adder
--		  port map(inp_1(10), inp_2(10), c9, sum(10), c10);
--		 
--comp11: Full_Adder
--		  port map(inp_1(11), inp_2(11), c10, sum(11), c11);		
--
--comp12: Full_Adder
--		  port map(inp_1(12), inp_2(12), c11, sum(12), c12);
--		 
--comp13: Full_Adder
--		  port map(inp_1(13), inp_2(13), c12, sum(13), c13);		
--
--comp14: Full_Adder
--		  port map(inp_1(14), inp_2(14), c13, sum(14), c14);	
--		 
--comp15: Full_Adder
--		  port map(inp_1(15), inp_2(15), c14, sum(15), c15);
--
--comp16: Full_Adder
--		  port map(inp_1(16), inp_2(16), c15, sum(16), c16);		
--
--comp17: Full_Adder
--		  port map(inp_1(17), inp_2(17), c16, sum(17), c17);		 
--		 
--comp18: Full_Adder
--		  port map(inp_1(18), inp_2(18), c17, sum(18), c18);		
--
--comp19: Full_Adder
--		  port map(inp_1(19), inp_2(19), c18, sum(19), c19);
--		 
--comp20: Full_Adder
--		  port map(inp_1(20), inp_2(20), c19, sum(20), c20);		
--
--comp21: Full_Adder
--		  port map(inp_1(21), inp_2(21), c20, sum(21), c21);
--		 
--comp22: Full_Adder
--		  port map(inp_1(22), inp_2(22), c21, sum(22), c22);		
--
--comp23: Full_Adder
--		  port map(inp_1(23), inp_2(23), c22, sum(23), c23);
--		 
--comp24: Full_Adder
--		  port map(inp_1(24), inp_2(24), c23, sum(24), c24);		
--
--comp25: Full_Adder
--		  port map(inp_1(25), inp_2(25), c24, sum(25), c25);
--		 
--comp26: Full_Adder
--		  port map(inp_1(26), inp_2(26), c25, sum(26), c26);		
--
--comp27: Full_Adder
--		  port map(inp_1(27), inp_2(27), c26, sum(27), c27);
--		 
--comp28: Full_Adder
--		  port map(inp_1(28), inp_2(28), c27, sum(28), c28);		
--
--comp29: Full_Adder
--		  port map(inp_1(29), inp_2(29), c28, sum(29), c29);	
--		 
--comp30: Full_Adder
--		  port map(inp_1(30), inp_2(30), c29, sum(30), c30);
--
--comp31: Full_Adder
--		  port map(inp_1(31), inp_2(31), c30, sum(31), carry);	 
		 
end architecture;

