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

type tab_instr is array(255 downto 0) of std_logic_vector(31 downto 0);
signal Instructions: tab_instr; --HOW TO GET THE TABLE OF INSTRUCTIONS???

begin

Output <= Instructions(conv_integer(unsigned(Address))) when Clk'event and Clk='1';


end Behavioral;
