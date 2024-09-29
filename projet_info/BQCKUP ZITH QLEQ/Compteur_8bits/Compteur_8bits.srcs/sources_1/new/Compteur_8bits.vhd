----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/08/2024 10:55:33 AM
-- Design Name: 
-- Module Name: Compteur_8bits - Behavioral
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

entity Compteur_8bits is
  Port ( 
    Clk : in std_logic ;
    Rst : in std_logic ;
    Load: in std_logic ;
    Sens: in std_logic ;
    En  : in std_logic ;
    Din : in std_logic_vector (7 downto 0);
    Dout: out std_logic_vector (7 downto 0)
  );
end Compteur_8bits;

architecture Behavioral of Compteur_8bits is
    signal DTemp: std_logic_vector (7 downto 0);

begin

    process --(Clk)
    
    begin
        wait until clk'event and clk = '1';
        --if clk = '1' then
            if Rst = '1' then --reset counter
                DTemp <= (others => '0');
            else
                if En = '0' then --active for En 0
                    if Load = '0' then --does not load Din 
                        if Sens = '1' then --increment
                            Dtemp <= DTemp +1;
                        else --excrement   
                            Dtemp <= DTemp -1;
                        end if;
                    else --load Din 
                        DTemp <= Din;
                    end if;
                else
                    DTemp <= DTemp;
                end if;
            end if;
        --end if;
    
    end process;
    Dout <= DTemp;

end Behavioral;
