----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:52:25 11/23/2016 
-- Design Name: 
-- Module Name:    HEX_7_SEGMENT - Behavioral 
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
-- This component displays eight hex digits on the seven segment
-- LEDs on the Nexys4 DDR development board. The inputs are the
-- 100MHz CLK, a 32-bit data value and an 8-bit mask that enables
-- each of the eight digits when the mask bits are on.
--
-- You need to connect CLK, SSEG_CA and SSEG_EN to the appropriate
-- I/O pins on your board.
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity hex_7seg is
		 port (CLK				: in std_logic;
				 DATA				: in std_logic_vector(31 downto 0);
				 DIGIT_ENABLE	: in std_logic_vector(7 downto 0);
				 SSEG_CA			: out std_logic_vector(7 downto 0);
				 SSEG_AN			: out std_logic_vector(7 downto 0));
end hex_7seg;

architecture behaviour of hex_7seg is
    -- A 4-bit value to be displayed in hex on a 7-segment LED digit
    signal hex_value: std_logic_vector(3 downto 0);

    -- A bitmask to select a specific anode
    signal chosen_anode: std_logic_vector(7 downto 0) := "11111110";

    -- A clock to strobe the 7-segment LED anodes and a counter for it
    signal sseg_clk: std_logic := '0';
    signal sseg_counter: integer := 0;

begin
    -- We need a slow running clock to strobe the anodes, so here is
    -- a process to generate this clock
    sseg_clock_process: process(CLK)
        begin
            if (rising_edge(CLK)) then
                if (sseg_counter = 0) then
                    sseg_counter <= 10000;
                    -- Toggle sseg_clk each time counter resets
                    sseg_clk <= not(sseg_clk);
                else
                    sseg_counter <= sseg_counter - 1;
                end if;
            end if;
        end process;

    -- The code to display the address and data bus values on the 7-seg LEDs
    -- Combinatorial code: convert a 4-bit value into a 7-segment value
    with hex_value select
	SSEG_CA <= "11000000" when "0000",	-- 0
                   "11111001" when "0001",	-- 1
                   "10100100" when "0010",	-- 2
                   "10110000" when "0011",	-- 3
                   "10011001" when "0100",	-- 4
                   "10010010" when "0101",	-- 5
                   "10000010" when "0110",	-- 6
                   "11111000" when "0111",	-- 7
                   "10000000" when "1000",	-- 8
                   "10010000" when "1001",	-- 9
                   "10001000" when "1010",	-- A
                   "10000011" when "1011",	-- B
                   "11000110" when "1100",	-- C
                   "10100001" when "1101",	-- D
                   "10000110" when "1110",	-- E
                   "10001110" when "1111",	-- F
                   "11111111" when others;

    -- Enable/disable digits based on user choice
    SSEG_AN <= chosen_anode or not(DIGIT_ENABLE);

    -- Multiplex data onto the hex_value lines and drive each anode
    -- low in turn, cycling through each one as the clock ticks.
    seven_segment_process: process(sseg_clk)
        begin
            if (rising_edge(sseg_clk)) then
					case chosen_anode is 
						 when "11111110" =>
													chosen_anode <= "11111101";
													hex_value <= DATA(7 downto 4);
						 when "11111101" =>
													chosen_anode <= "11111011";
													hex_value <= DATA(11 downto 8);
						 when "11111011" =>
													chosen_anode <= "11110111";
													hex_value <= DATA(15 downto 12);
						 when "11110111" =>
													chosen_anode <= "11101111";
													hex_value <= DATA(19 downto 16);
						 when "11101111" =>
													chosen_anode <= "11011111";
													hex_value <= DATA(23 downto 20);
						 when "11011111" =>
													chosen_anode <= "10111111";
													hex_value <= DATA(27 downto 24);
						 when "10111111" =>
													chosen_anode <= "01111111";
													hex_value <= DATA(31 downto 28);
						 when "01111111" =>
													chosen_anode <= "11111110";
													hex_value <= DATA(3 downto 0);
						 when others =>
													chosen_anode <= "11111111";
													hex_value <= "0000";
            	end case;
            end if;
        end process;
end architecture;
