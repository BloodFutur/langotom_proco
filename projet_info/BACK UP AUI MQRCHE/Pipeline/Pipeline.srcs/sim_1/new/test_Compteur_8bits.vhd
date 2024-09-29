----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/08/2024 11:27:52 AM
-- Design Name: 
-- Module Name: test_Compteur8bits - Behavioral
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

entity test_Compteur8bits is
--  Port ( );
end test_Compteur8bits;


architecture Behavioral of test_Compteur8bits is

component Compteur_8bits
    port(
    Clk : in std_logic ;
    Rst : in std_logic ;
    Load: in std_logic ;
    Sens: in std_logic ;
    En  : in std_logic ;
    Din : in std_logic_vector (7 downto 0);
    Dout: out std_logic_vector (7 downto 0)
  );
end component;

--input
signal Rst_test : std_logic;
signal Load_test : std_logic;
signal En_test : std_logic;
signal Sens_test : std_logic;
signal Din_test : std_logic_vector(7 downto 0) := (others => '0');

--output
signal Dout_test : std_logic_vector(7 downto 0) := (others => '0');

-- Clock period definitions
-- Si 100 MHz
constant Clock_period : time := 10 ns;
signal Clock : std_logic := '0';

begin

Label_uut : Compteur_8bits PORT MAP (
    Clk => Clock,
    Rst => Rst_test,
    Load => Load_test,
    Sens => Sens_test,
    En => En_test,
    Din => Din_test,
    Dout => Dout_test
);

-- Clock process definitions
Clock_process : process
begin
 Clock <= not(Clock);
 wait for Clock_period/2;
end process;


--Stimulus process
Rst_test <=  '0' after 0ns,
        '1' after 30ns, --reset
        '0' after 40ns;
        
En_test <= '0' after 0ns;

Load_test <= '0' after 0ns,
             '1' after 100ns, 
             '0' after 120ns;

Sens_test <= '1' after 0ns, --increment
                '0' after 70ns;--decrement
                
Din_test <= X"00" after 0ns,
            X"AA" after 100ns;

end Behavioral;
