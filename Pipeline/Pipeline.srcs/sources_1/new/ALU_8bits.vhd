----------------------------------------------------------------------------------
-- Company: INSA
-- Engineer: Anna & Ronan
-- 
-- Create Date: 03/03/2024 03:29:25 PM
-- Design Name: 
-- Module Name: ALU_8bits
-- Project Name: 
-- Target Devices: Basys 3
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity ALU_8bits is
    Port ( A: in STD_LOGIC_VECTOR (7 downto 0);
           B: in STD_LOGIC_VECTOR (7 downto 0);
           Ctrl_Alu : in STD_LOGIC_VECTOR (2 downto 0);
           S: out STD_LOGIC_VECTOR (7 downto 0);
           C : out STD_LOGIC;
           O : out STD_LOGIC;
           N : out STD_LOGIC;
           Z : out STD_LOGIC);
end ALU_8bits;

architecture Behavioral of ALU_8bits is
    signal Stemp: STD_LOGIC_VECTOR (15 downto 0) := (others => '0');    
begin
    Stemp <= ("00000000" & A) + ("00000000" & B)    when Ctrl_Alu = "000" else              -- Addition
             ("00000000" & A) - ("00000000" & B)    when Ctrl_Alu = "001" and A >= B else   -- Subtraction
             ("00000000" & B) - ("00000000" & A)    when Ctrl_Alu = "001" and B > A else    -- Subtraction
             B * A                                  when Ctrl_Alu = "010" else              -- Multiplication
             ("00000000" & A) and ("00000000" & B)  when Ctrl_Alu = "011" else              -- AND
             ("00000000" & A) or ("00000000" & B)   when Ctrl_Alu = "100" else              -- OR
             ("00000000" & A) xor ("00000000" & B)  when Ctrl_Alu = "101" else              -- XOR
             not ("00000000" & A)                   when Ctrl_Alu = "110" else              -- NOT A
             not ("00000000" & B)                   when Ctrl_Alu = "111" else              -- NOT B
             X"0000";                                                                    -- default value   

    C <= '1' when Ctrl_Alu = "000" and Stemp(8) = '1' else '0';
    O <= '1' when Ctrl_Alu = "010" and Stemp(15 downto 8) > 0 else '0';
    N <= '1' when Ctrl_Alu = "001" and B > A else '0';
    Z <= '1' when unsigned(Stemp (7 downto 0)) = 0 else '0';
    S <=  Stemp (7 downto 0);
end Behavioral;
