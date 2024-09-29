----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/07/2024 08:45:48 AM
-- Design Name: 
-- Module Name: test_pipeline - Behavioral
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

entity test_pipeline is
--  Port ( );
end test_pipeline;


architecture Behavioral of test_pipeline is


component pipeline PORT(
    Clk: in std_logic;
    Rst: in std_logic;
    QA: out std_logic_vector(7 downto 0);
    QB: out std_logic_vector(7 downto 0)
    );
end component;

--test signals
--input
signal Rst_test: std_logic;

--outputs 
signal QA_test: std_logic_vector(7 downto 0);
signal QB_test: std_logic_vector(7 downto 0);

--clock signal 
constant Clock_period : time := 10ns;
signal Clock : std_logic := '0';

begin

Test_microprocesseur: pipeline PORT MAP(
    Clk => Clock,
    Rst => Rst_test,
    QA => QA_test,
    QB => QB_test
);

-- Clock process definitions
Clock_process : process
begin
 Clock <= not(Clock);
 wait for Clock_period/2;
end process;

--stimulus process
Rst_test <= '0' after 0ns, --reset
            '1' after Clock_period/2; 
            



end Behavioral;
