----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/21/2024 11:19:28 AM
-- Design Name: 
-- Module Name: banc_de_registres - Behavioral
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

entity banc_de_registres is
  Port (Areg: in std_logic_vector(3 downto 0);
        Breg: in std_logic_vector(3 downto 0);
        Wreg: in std_logic_vector(3 downto 0);
        W: in std_logic;
        Data: in std_logic_vector(7 downto 0);
        Rst: in std_logic;
        Clk: in std_logic;
        QA: out std_logic_vector(7 downto 0);
        QB: out std_logic_vector(7 downto 0)
   );
end banc_de_registres;


architecture Behavioral of banc_de_registres is

type tab_reg is array(15 downto 0) of std_logic_vector(7 downto 0);
signal Tab_temp: tab_reg;

begin

QA <= Tab_temp(conv_integer(unsigned(Areg))) when W = '0' else (others => '0');
QB <= Tab_temp(conv_integer(unsigned(Breg))) when W = '0'else (others => '0');


process

    begin
        wait until Clk'event and Clk='1';
                --if clk = '1' then
            if Rst='0' then --reset banc de registres
                Tab_temp <= (others => (others => '0'));
            else
                if W = '1' then -- in write mode
                    -- load Data in Wreg
                    Tab_temp(conv_integer(unsigned(Wreg))) <= Data(7 downto 0);
                else
                    Tab_temp <= Tab_temp;
                end if;
            end if;
end process; 


end Behavioral;
