----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/21/2024 12:11:49 PM
-- Design Name: 
-- Module Name: test_banc_de_registres - Behavioral
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

entity test_banc_de_registres is
--  Port ( );
end test_banc_de_registres;

architecture Behavioral of test_banc_de_registres is

component banc_de_registres
  Port (
        Areg: in std_logic_vector(3 downto 0);
        Breg: in std_logic_vector(3 downto 0);
        Wreg: in std_logic_vector(3 downto 0);
        W: in std_logic;
        Data: in std_logic_vector(7 downto 0);
        Rst: in std_logic;
        Clk: in std_logic;
        QA: out std_logic_vector(7 downto 0);
        QB: out std_logic_vector(7 downto 0)
   );
end component;

--input 
signal Areg_test : std_logic_vector(3 downto 0):= (others => '0');
signal Breg_test : std_logic_vector(3 downto 0):= (others => '0');
signal Wreg_test : std_logic_vector(3 downto 0):= (others => '0');
signal W_test : std_logic;
signal Data_test : std_logic_vector(7 downto 0):= (others => '0');
signal Rst_test : std_logic;

--output
signal QA_test : std_logic_vector(7 downto 0) := (others => '0');
signal QB_test : std_logic_vector(7 downto 0):= (others => '0');

--Clock period definition
constant Clock_period : time := 10ns;
signal Clock : std_logic := '0';


begin

Label_uut : banc_de_registres PORT MAP (
    Areg => Areg_test,
    Breg => Breg_test,
    Wreg => Wreg_test,
    W => W_test,
    Data => Data_test,
    Rst => Rst_test,
    Clk => Clock,
    QA => QA_test,
    QB => QB_test
);


-- Clock process definitions
Clock_process : process
begin
 Clock <= not(Clock);
 wait for Clock_period/2;
end process;


--Stimulus process
Rst_test <= '1' after 0 ns,
            '0' after 20 ns, --reset
            '1' after 30ns;
            
W_test <= '1' after 0 ns, --write
          '0' after 60 ns; --read
          
Wreg_test <= X"0" after 0ns,--writes Data in register0
             X"1" after 10ns,--writes Data in register1
             X"0" after 30ns,--writes Data in register0
             X"1" after 40ns,--writes Data in register1
             X"6" after 50ns;--writes Data in register6

Data_test <= X"0F" after 0ns,
             X"0E" after 40ns;
             

Areg_test <= X"0" after 0 ns,
             X"6" after 50ns,
             X"0" after 70ns, --reads from register0
             X"1" after 80 ns; --reads from register1
                        
Breg_test <= X"0" after 0 ns,--reads from register0
             X"6" after 90 ns;--reads from register6   



end Behavioral;
