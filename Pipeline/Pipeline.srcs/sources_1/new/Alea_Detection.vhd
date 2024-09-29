----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/21/2024 11:09:35 AM
-- Design Name: 
-- Module Name: Alea_Detection - Behavioral
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

entity Alea_Detection is
  Port ( 
    R_LI_DI_B: in std_logic;
    R_LI_DI_C: in std_logic;
    A_LI_DI: in std_logic_vector(7 downto 0);
    B_LI_DI: in std_logic_vector(7 downto 0);
    C_LI_DI: in std_logic_vector(7 downto 0);
    A_DI_EX: in std_logic_vector(7 downto 0);
    A_EX_MEM: in std_logic_vector(7 downto 0);
    W_DI_EX: in std_logic;
    W_EX_MEM: in std_logic;
    Output: out std_logic    
  );
end Alea_Detection;

architecture Behavioral of Alea_Detection is

begin

--    Output <= '1' when R_LI_DI_A = '1' and W_DI_EX = '1' and A_LI_DI = A_DI_EX else
--              '1' when R_LI_DI_B = '1' and W_DI_EX = '1' and B_LI_DI = A_DI_EX else
--              '1' when R_LI_DI_C = '1' and W_DI_EX = '1' and C_LI_DI = A_DI_EX else
--              '1' when R_LI_DI_A = '1' and W_EX_MEM = '1' and A_LI_DI = A_EX_MEM else
--              '1' when R_LI_DI_B = '1' and W_EX_MEM = '1' and B_LI_DI = A_EX_MEM else
--              '1' when R_LI_DI_C = '1' and W_EX_MEM = '1' and C_LI_DI = A_EX_MEM else
--              '0';
--    Output <= '1' when R_LI_DI_A = '1' and W_DI_EX = '1' and B_LI_DI = A_DI_EX else
--              '0';

    Output <= '1' when R_LI_DI_B = '1' and W_DI_EX = '1' and B_LI_DI = A_DI_EX else
              '1' when R_LI_DI_C = '1' and W_DI_EX = '1' and C_LI_DI = A_DI_EX else
              '1' when R_LI_DI_B = '1' and W_EX_MEM = '1' and B_LI_DI = A_EX_MEM else
              '1' when R_LI_DI_C = '1' and W_EX_MEM = '1' and C_LI_DI = A_EX_MEM else
              '0';

end Behavioral;
