----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:55:04 11/03/2016 
-- Design Name: 
-- Module Name:    push_debounce - Behavioral 
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
use IEEE.std_logic_unsigned.all;
USE IEEE.NUMERIC_STD.ALL;
use IEEE.math_real.all;

entity push_debounce is
    Generic ( CLK_WAIT_DEBOUNCE : INTEGER range 1 to (INTEGER'high) := 2**16;--2**16;
              BUTTON_WIDTH : INTEGER range 1 to (INTEGER'high) := 5);
    Port ( SIG_INP : in  STD_LOGIC_VECTOR ((BUTTON_WIDTH - 1) downto 0);
           CLK : in  STD_LOGIC;
           SIG_OUT : out  STD_LOGIC_VECTOR ((BUTTON_WIDTH - 1) downto 0));
end push_debounce;

architecture Behavioral of push_debounce is

constant COUNTER_WIDTH : integer := natural(ceil(LOG2(real(CLK_WAIT_DEBOUNCE))));
constant COUNTER_MAX_VALUE : std_logic_vector((COUNTER_WIDTH - 1) downto 0) := std_logic_vector(to_unsigned((CLK_WAIT_DEBOUNCE - 1), COUNTER_WIDTH));
type ARRAY_VECT_TYPE is array (integer range <>) of std_logic_vector((COUNTER_WIDTH - 1) downto 0);

signal sig_cntrs_ary : ARRAY_VECT_TYPE (0 to (BUTTON_WIDTH - 1)) := (others=>(others=>'0'));

signal sig_out_reg : std_logic_vector((BUTTON_WIDTH - 1) downto 0) := (others => '0');

begin

process (CLK)										--DEBOUNCE OPERATION
begin
   if (rising_edge(CLK)) then
   for index in 0 to (BUTTON_WIDTH - 1) loop
      if (sig_cntrs_ary(index) = COUNTER_MAX_VALUE) then
         sig_out_reg(index) <= not(sig_out_reg(index));
      end if;
   end loop;
   end if;
end process;

process (CLK)											--COUNTER OPERATION
begin
	if (rising_edge(CLK)) then
	for index in 0 to (BUTTON_WIDTH - 1) loop
	
		if ((sig_out_reg(index) = '1') xor (SIG_INP(index) = '1')) then
			if (sig_cntrs_ary(index) = COUNTER_MAX_VALUE) then
				sig_cntrs_ary(index) <= (others => '0');
			else
				sig_cntrs_ary(index) <= sig_cntrs_ary(index) + 1;
			end if;
		else
			sig_cntrs_ary(index) <= (others => '0');
		end if;
		
	end loop;
	end if;
end process;

SIG_OUT <= sig_out_reg;

end Behavioral;

