----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/30/2024 12:59:25 PM
-- Design Name: 
-- Module Name: test_memoire_de_donnees - Behavioral
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

entity test_memoire_de_donnees is
--  Port ( );
end test_memoire_de_donnees;

architecture Behavioral of test_memoire_de_donnees is

component memoire_de_donnees
  Port(
    Address : in std_logic_vector(7 downto 0);
    Input : in std_logic_vector(7 downto 0);
    Read : in std_logic;
    Rst : in std_logic;
    Clk : in std_logic;
    Output : out std_logic_vector(7 downto 0)
    );
end component;
    
---input
signal Address_test: std_logic_vector(7 downto 0):= (others => '0');
signal Input_test : std_logic_vector(7 downto 0):= (others => '0');
signal Read_test: std_logic;
signal Rst_test: std_logic;

---output
signal Output_test: std_logic_vector(7 downto 0):= (others => '0');

--Clock period definition
constant Clock_period : time := 10ns;
signal Clock : std_logic := '0';


begin

Label_uut : memoire_de_donnees PORT MAP (
    Address => Address_test,
    Input => Input_test,
    Read => Read_test,
    Rst => Rst_test,
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
Rst_test <= '1' after 0 ns,
            '0' after 20 ns, --reset
            '1' after 30ns;
            
Input_test <= X"01" after 0ns,
              X"02" after 10ns,
              X"03" after 20ns,
              X"04" after 30ns,
              X"05" after 40 ns,
              X"06" after 50 ns;
       
Read_test <= '0' after 0 ns,
             '1' after 60 ns;
             
Address_test <= X"01" after 0ns,
                X"02" after 10ns,
                X"03" after 20ns,
                X"04" after 30ns,
                X"05" after 40ns,
                X"06" after 50ns,
                X"01" after 70ns,
                X"02" after 80ns,
                X"03" after 90ns,
                X"04" after 100ns,
                X"05" after 110ns,
                X"06" after 120 ns,
                X"07" after 130 ns;

end Behavioral;
