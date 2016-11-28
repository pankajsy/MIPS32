----------------------------------------------------------------------------------
-- company: 
-- engineer: 
-- 
-- create date:    18:11:20 11/26/2016 
-- design name: 
-- module name:    control - behavioral 
-- project name: 
-- target devices: 
-- tool versions: 
-- description: 
--
-- dependencies: 
--
-- revision: 
-- revision 0.01 - file created
-- additional comments: 
--
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

-- uncomment the following library declaration if using
-- arithmetic functions with signed or unsigned values
--use ieee.numeric_std.all;

-- uncomment the following library declaration if instantiating
-- any xilinx primitives in this code.
--library unisim;
--use unisim.vcomponents.all;
entity controlunit is
    port ( 
			  clk : in std_logic;	
			  opcode : in  std_logic_vector (5 downto 0);
           func_code : in  std_logic_vector (2 downto 0);
           comparator : in  std_logic_vector (1 downto 0);
			  is_load : out std_logic;
			  is_store : out std_logic;
			  is_itype : out std_logic;
			  next_pc : out std_logic_vector(1 downto 0);
			  write_enable : out std_logic;
			  alu_op_sel : out std_logic_vector(2 downto 0)
			  );
end controlunit;

architecture behavioral of controlunit is
	signal is_load_sig : std_logic := '0';	
	signal is_store_sig : std_logic := '0';
	signal is_itype_sig : std_logic := '0';
	signal is_rtype_sig : std_logic := '0';
	
begin

process(clk, opcode, func_code) begin
  case opcode is
  when "000111" =>  alu_op_sel <= "000";
  when "001000" =>  alu_op_sel <= "000";
  when "000000" =>  alu_op_sel <= func_code;
  when "000001" =>  alu_op_sel <= "000";
  when "000010" =>  alu_op_sel <= "001";
  when "000011" =>  alu_op_sel <= "010";
  when "000100" =>  alu_op_sel <= "011";
  when "000101" =>  alu_op_sel <= "101";
  when "000110" =>  alu_op_sel <= "110";
  when others   =>  alu_op_sel <= "111";
  end case;
end process;

process(clk, opcode) begin
  case opcode is
  when "000111" =>  is_load_sig <= '1';
  when others => is_load_sig <= '0';
  end case;
end process;

process(clk, opcode) begin
  case opcode is
  when "001000" =>  is_store_sig <= '1';
  when others => is_store_sig <= '0';
  end case;
end process;

process(clk, opcode) begin
  case opcode is
  when "000000" =>  is_itype_sig <= '0';
  when "001100" =>  is_itype_sig <= '0';
  when "111111" =>  is_itype_sig <= '0';
  when others => is_itype_sig <= '1';
  end case;
end process;


process(clk, opcode) begin
  case opcode is
  when "001000" =>  write_enable <= '0';
  when "001001" =>  write_enable <= '0';
  when "001010" =>  write_enable <= '0';
  when "001011" =>  write_enable <= '0';
  when "001100" =>  write_enable <= '0';
  when "111111" =>  write_enable <= '0';
  when others => write_enable <= '1';
  end case;
end process;

process(clk, opcode, comparator) begin
  case opcode is
  when "001001" =>  if (comparator = "01" or comparator = "10" or comparator = "11") then next_pc <= "11"; else next_pc <= "00";end if;
  when "001010" =>  if (comparator = "01" or comparator = "10" or comparator = "11") then next_pc <= "11"; else next_pc <= "00";end if;
  when "001011" =>  if (comparator = "01" or comparator = "10" or comparator = "11") then next_pc <= "11"; else next_pc <= "00";end if;
  when "001100" =>  next_pc <= "10";
  when "111111" =>  next_pc <= "01";
  when others => next_pc <= "00";
  end case;
end process;

is_load <= 	is_load_sig;
is_store <= is_store_sig;
is_itype <= is_itype_sig;
end behavioral;


