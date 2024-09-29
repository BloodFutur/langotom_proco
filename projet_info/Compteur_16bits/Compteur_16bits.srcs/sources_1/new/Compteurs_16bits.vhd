----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/03/2024 02:41:59 PM
-- Design Name: 
-- Module Name: Compteurs_16bits - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_signed.all;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Compteurs_16bits is
    Port ( Clock: in STD_LOGIC;
           Reset: in STD_LOGIC;
           Load: in STD_LOGIC;
           Enable: in STD_LOGIC;
           Sens: in STD_LOGIC;
           D_in: in STD_LOGIC_VECTOR (7 downto 0);
           D_out: out STD_LOGIC_VECTOR (7 downto 0));
end Compteurs_16bits;

architecture Behavioral of Compteurs_16bits is

    signal Auxiliaire: STD_LOGIC_VECTOR (7 downto 0) := (others => '0');

begin

process
    begin
    
        wait until Clock'Event and Clock='1';
        
        if(Reset='0') then Auxiliaire<="00000000";
        elsif(Load='1') then Auxiliaire<=D_in;
        
        elsif(Enable='0') then
            if(Sens='0') then Auxiliaire<=(Auxiliaire-1); else Auxiliaire<=(Auxiliaire+1); end if;
        end if;
    end process;
    D_out<=Auxiliaire;

end Behavioral;
