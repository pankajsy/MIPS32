--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:16:05 12/13/2016
-- Design Name:   
-- Module Name:   C:/Users/utkar/Desktop/AHDProject/Update_15_Correct_Results_Encryption/Update_15_Correct_Results_Encryption/NYU_6463_Processor/NYU_6463_Processor_Testbench.vhd
-- Project Name:  NYU_6463_Processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: NYU_6463_Processor
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY NYU_6463_Processor_Testbench IS
END NYU_6463_Processor_Testbench;
 
ARCHITECTURE behavior OF NYU_6463_Processor_Testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT NYU_6463_Processor
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         PC_reset : IN  std_logic;
         instruction_input : IN  std_logic_vector(31 downto 0);
         instruction_input1 : IN  std_logic_vector(31 downto 0);
         output1 : OUT  std_logic_vector(31 downto 0);
			output2 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal PC_reset : std_logic := '0';
   signal instruction_input : std_logic_vector(31 downto 0) := (others => '0');
   signal instruction_input1 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal result : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: NYU_6463_Processor PORT MAP (
          clk => clk,
          reset => reset,
          PC_reset => PC_reset,
          instruction_input => instruction_input,
          instruction_input1 => instruction_input1,
          result => result
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		reset <= '1';
		
		pc_reset <= '1';
		
		wait for 100 ns;
		
		reset <= '0';
		
		wait for 100 ns;
		
		pc_reset <='0';
		
		wait for 100 ns;
		
		instruction_input <= x"97ffc043";
		instruction_input1 <= x"0841727e";
		
		wait for 257365 ns;
		
		assert (		result = x"ABCDEF01") report "Error " severity error;
		
		wait for 10997 ns;
		
		assert (		result = x"FFOOFFOO") report "Error " severity error;
			
		
		
		

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
