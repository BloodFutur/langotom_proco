----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/30/2024 11:50:39 AM
-- Design Name: 
-- Module Name: memoire_des_instructions - Behavioral
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
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity memoire_des_instructions is
  Port (
    Address : in std_logic_vector(7 downto 0);
    Clk : in std_logic;
    Output : out std_logic_vector(31 downto 0)
  );
end memoire_des_instructions;

architecture Behavioral of memoire_des_instructions is

type tab_instr is array(0 to 255) of std_logic_vector(31 downto 0);
signal Instructions: tab_instr; --HOW TO GET THE TABLE OF INSTRUCTIONS???

begin

-- AFC & COP
--Instructions <= (x"06000100", x"05000100", x"06010200",x"06020500",  others => x"00000000");

-- ADD
--Instructions <= (x"06010200",x"06020500",x"00000000",x"00000000",x"00000000",x"01050102",  others => x"00000000");

-- MUL
--Instructions <= (x"06010200",x"06020500",x"00000000",x"00000000",x"00000000",x"02050102",  others => x"00000000");

-- SOU
--Instructions <= (x"06010200",x"06020500",x"00000000",x"00000000",x"00000000",x"03050102", x"03060201",  others => x"00000000");

-- LOAD
--Instructions <= (x"06010200",x"06020500",x"00000000",x"00000000",x"00000000",x"07020000",x"07010000", others => x"00000000");

-- STORE
-- Instructions <= (x"06010200",x"06020500",x"00000000",x"00000000",x"00000000",x"08000100",x"08050200", others => x"00000000");

-- ALEA AFC/COP
-- Instructions <= (x"00000000",x"00000000",x"00000000",x"0603EE00",x"05020300", others => x"00000000");
-- Instructions <= (x"00000000",x"00000000",x"00000000",x"0603EE00",x"00000000", x"05020300", others => x"00000000");

-- JMP INFINITE LOOP
--Instructions <= (x"00000000",x"00000000",x"00000000",x"0603EE00",x"0603FF00", x"09030000" , others => x"00000000");

-- JMP FUTURE
--Instructions <= (x"00000000",x"00000000",x"00000000",x"0603EE00", x"09060000", x"0603FF00", x"0603CC00", others => x"00000000");

-- INF
--Instructions <= (x"00000000",x"00000000",x"00000000",x"0603EE00", x"0602FF00", x"0B010302",x"0B010203", others => x"00000000");

-- SUP
--Instructions <= (x"00000000",x"00000000",x"00000000",x"0603EE00", x"0602FF00", x"0C010302", x"0C010203", others => x"00000000");

-- EQU
--Instructions <= (x"00000000",x"00000000",x"00000000",x"0603EE00", x"0602FF00", x"0D010202",x"0D010302", others => x"00000000");

-- AND
--Instructions <= (x"00000000",x"00000000",x"00000000",x"0603EE00",x"06040000", x"0602FF00", x"0E010302",x"0D010304", others => x"00000000");

-- JMF LOOP
-- Instructions <= (x"00000000",x"00000000",x"00000000",x"06030000",x"06040100",x"00000000",x"00000000",x"00000000", x"0A030300", x"06040800", others => x"00000000");
--Instructions <= (x"00000000",x"00000000",x"00000000",x"06030000",x"06040100", x"0A030300", x"06040800", others => x"00000000");

-- JMF no jump
 Instructions <= (x"00000000",x"00000000",x"00000000",x"06030000",x"06040100", x"0A030400", x"06040800", others => x"00000000");


Output <= Instructions(conv_integer(unsigned(Address)));


end Behavioral;
