----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/03/2024 05:13:33 PM
-- Design Name: 
-- Module Name: Test_ALU_8bits - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Test_ALU_8bits is
--  Port ( );
end Test_ALU_8bits;

architecture Behavioral of Test_ALU_8bits is

component ALU_8bits
    port(A: in STD_LOGIC_VECTOR (7 downto 0);
           B: in STD_LOGIC_VECTOR (7 downto 0);
           Ctrl_Alu : in STD_LOGIC_VECTOR (2 downto 0);
           S: out STD_LOGIC_VECTOR (7 downto 0);
           C : out STD_LOGIC;
           O : out STD_LOGIC;
           N : out STD_LOGIC;
           Z : out STD_LOGIC);
end component;

signal A_test : std_logic_vector(7 downto 0) := (others => '0');
signal B_test : std_logic_vector(7 downto 0) := (others => '0');
signal Ctrl_Alu_test : std_logic_vector(2 downto 0) := (others => '0');



--Outputs
signal C_test : std_logic;
signal O_test : std_logic;
signal N_test : std_logic;
signal Z_test : std_logic;
signal S_test : std_logic_vector(7 downto 0);

-- Clock period definitions
-- Si 100 MHz
constant Clock_period : time := 10 ns;

signal Clock: std_logic := '1';

begin
-- Instantiate the Unit Under Test (UUT)
Label_uut: ALU_8bits PORT MAP (
 
 A => A_test,
 B => B_test,
 Ctrl_Alu => Ctrl_Alu_test,
 S => S_test,
 C => C_test,
 O => O_test,
 N => N_test,
 Z => Z_test
 );
 
-- Clock process definitions
Clock_process : process
begin
 Clock <= not(Clock);
 wait for Clock_period/2;
end process;

-- Stimulus process
-- Addition tests
Ctrl_Alu_test <= "000" after 0ns, -- Addition
                 "001" after 50ns, -- Subtraction
                 "010" after 70ns, -- Multiplication
                 "011" after 100ns, -- AND
                 "100" after 120ns, -- OR
                 "101" after 140ns, -- XOR
                 "110" after 160ns, -- NOT
                 "000" after 170ns; -- RESET
                 
A_test <= "00000000" after 0ns, -- Addition
          "00000001" after 10ns, 
          "00000001" after 20ns, 
          "01010110" after 30ns, 
          "00000001" after 40ns, -- Carry
          "00000100" after 50ns, -- Subtraction
          "00000001" after 60ns, -- Neg
          "00000010" after 70ns, -- Multiplication
          "11111111" after 80ns, -- Overflow
          "00000000" after 90ns, -- Zero
          "10101010" after 100ns, -- AND -> Zero
          "00001111" after 110ns, -- AND
          "10101010" after 120ns, -- OR
          "00000000" after 130ns, -- OR -> Zero
          "00000000" after 140ns, -- XOR -> Zero
          "00001111" after 150ns, -- XOR
          "00000000" after 160ns, -- NOT
          "00000000" after 170ns;
B_test <= "00000001" after 0ns,  -- Addition
          "00000000" after 10ns, 
          "00000001" after 20ns, 
          "01011111" after 30ns, 
          "11111111" after 40ns, -- Carry
          "00000010" after 50ns, -- Subtraction
          "00000010" after 60ns, -- Neg
          "00000100" after 70ns, -- Multiplication
          "11111111" after 80ns, -- Overflow
          "11111111" after 90ns, -- Zero
          "01010101" after 100ns, -- AND -> Zero
          "11111111" after 110ns, -- AND
          "01010101" after 120ns, -- OR
          "00000000" after 130ns, -- OR -> Zero
          "00000000" after 140ns, -- XOR -> Zero
          "11110000" after 150ns, -- XOR
          "00000000" after 160ns, -- NOT
          "00000000" after 170ns;

end;
