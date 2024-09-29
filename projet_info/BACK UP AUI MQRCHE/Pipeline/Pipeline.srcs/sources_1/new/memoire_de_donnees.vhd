----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/30/2024 11:50:39 AM
-- Design Name: 
-- Module Name: memoire_de_donnees - Behavioral
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

entity memoire_de_donnees is
  Port (
    Address : in std_logic_vector(7 downto 0);
    Input : in std_logic_vector(7 downto 0);
    Read : in std_logic;
    Rst : in std_logic;
    Clk : in std_logic;
    Output : out std_logic_vector(7 downto 0)
  );
end memoire_de_donnees;

architecture Behavioral of memoire_de_donnees is

type tab_memory is array(255 downto 0) of std_logic_vector(7 downto 0);
signal Memory : tab_memory;

begin

process
    begin
        wait until Clk'event and Clk='1';
            if Rst='0' then --reset memory
                Memory <= (others=> (others=>'0'));
                Output <= (others => '0');
            else
               if Read='0' then --in write mode
               --load Input in Memory at address Address
                    Memory(conv_integer(unsigned(Address))) <= Input(7 downto 0);
                    Output <= (others => '0');
               else --in read mode
                    Output <= Memory(conv_integer(unsigned(Address)));
               end if;
            end if;
end process;

end Behavioral;
