----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/30/2024 12:15:37 PM
-- Design Name: 
-- Module Name: test_memoire_des_instructions - Behavioral
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
use IEEE.std_logic_arith.all

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test_memoire_des_instructions is
  --Port ( );
end test_memoire_des_instructions;

architecture Behavioral of test_memoire_des_instructions is

component memoire_des_instructions
  Port(
    Address : in std_logic_vector(7 downto 0);
    Clk : in std_logic;
    Output : out std_logic_vector(31 downto 0)
    );
end component;
    
---input
signal Address_test: std_logic_vector(7 downto 0);

---output
signal Output_test: std_logic_vector(31 downto 0);

--Clock period definition
constant Clock_period : time := 10ns;
signal Clock : std_logic := '0';


begin

Label_uut : memoire_des_instructions PORT MAP (
    Address => Address_test,
    Clk => Clock,
    Output => Output_test
);

-- Clock process definitions
Clock_process : process
begin
 Clock <= not(Clock);
 wait for Clock_period/2;
end process;

--stimulus process (TO COMPLETE)

end Behavioral;
