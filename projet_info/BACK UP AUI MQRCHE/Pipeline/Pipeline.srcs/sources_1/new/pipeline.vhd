----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/07/2024 08:21:06 AM
-- Design Name: 
-- Module Name: pipeline - Behavioral
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

library ALU_8bits;
use ALU_8bits.all;

library Compteur_8bits;
use Compteur_8bits.all;

library banc_de_registres;
use banc_de_registres.all;

library memoire_de_donnees;
use memoire_de_donnees.all;

library memoire_des_instructions;
use memoire_des_instructions.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pipeline is
  Port ( 
  Clk: in std_logic;
  Rst: in std_logic;
  QA: out std_logic_vector(7 downto 0);
  QB: out std_logic_vector(7 downto 0)
  );
end pipeline;

architecture Behavioral of pipeline is


--declare all components
component memoire_des_instructions PORT (
    Address: in std_logic_vector(7 downto 0);
    Clk: in std_logic;
    Output: out std_logic_vector(31 downto 0)
    );
end component;

component banc_de_registres PORT(
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

component ALU_8bits PORT(
    A: in STD_LOGIC_VECTOR (7 downto 0);
    B: in STD_LOGIC_VECTOR (7 downto 0);
    Ctrl_Alu : in STD_LOGIC_VECTOR (2 downto 0);
    S: out STD_LOGIC_VECTOR (7 downto 0);
    C : out STD_LOGIC;
    O : out STD_LOGIC;
    N : out STD_LOGIC;
    Z : out STD_LOGIC
    );
end component;

component memoire_de_donnees PORT(
    Address : in std_logic_vector(7 downto 0);
    Input : in std_logic_vector(7 downto 0);
    Read : in std_logic;
    Rst : in std_logic;
    Clk : in std_logic;
    Output : out std_logic_vector(7 downto 0)
    );
end component;

component Compteur_8bits PORT(
    Clk : in std_logic ;
    Rst : in std_logic ;
    Load: in std_logic ;
    Sens: in std_logic ;
    En  : in std_logic ;
    Din : in std_logic_vector (7 downto 0);
    Dout: out std_logic_vector (7 downto 0)
    );
end component;


--intermediate signals declaration
--inputs compteurs
signal Load_tmp: std_logic;
signal Sens_tmp: std_logic;
signal En_tmp: std_logic;
signal Din_tmp: std_logic_vector(7 downto 0);
signal Write_Reg_tmp: std_logic;
--outputs
signal Dout_tmp: std_logic_vector(7 downto 0);
signal IM_output_tmp: std_logic_vector(31 downto 0);

signal QA_tmp: std_logic_vector (7 downto 0);
signal QB_tmp: std_logic_vector (7 downto 0);

-- ALU
signal Ctrl_Alu_tmp: std_logic_vector (2 downto 0);
signal S_tmp : std_logic_vector (7 downto 0);
signal C_tmp:  STD_LOGIC;
signal O_tmp : STD_LOGIC;
signal N_tmp : STD_LOGIC;
signal Z_tmp : STD_LOGIC;

-- Data Memory
signal Address_Data_tmp: std_logic_vector(7 downto 0);
signal In_Data_tmp: std_logic_vector(7 downto 0);
signal Read_Data_tmp: std_logic;
signal Out_Data_tmp: std_logic_vector(7 downto 0);

--LI/DI
signal A_LI_DI: std_logic_vector(7 downto 0);
signal B_LI_DI: std_logic_vector(7 downto 0);
signal OP_LI_DI: std_logic_vector(7 downto 0);
signal C_LI_DI: std_logic_vector(7 downto 0);


--DI/EX
signal A_DI_EX: std_logic_vector(7 downto 0);
signal B_DI_EX: std_logic_vector(7 downto 0);
signal OP_DI_EX: std_logic_vector(7 downto 0);
signal C_DI_EX: std_logic_vector(7 downto 0);


--EX/Mem
signal A_EX_Mem: std_logic_vector(7 downto 0);
signal B_EX_Mem: std_logic_vector(7 downto 0);
signal OP_EX_Mem: std_logic_vector(7 downto 0);

--Mem/Re
signal A_Mem_Re: std_logic_vector(7 downto 0);
signal B_Mem_Re: std_logic_vector(7 downto 0);
signal OP_Mem_Re: std_logic_vector(7 downto 0);


begin

    Instruction_Pointer: Compteur_8bits PORT MAP(
        Clk => Clk,
        Rst => Rst,
        Load => Load_tmp,
        Sens => Sens_tmp,
        En => En_tmp,
        Din => Din_tmp,
        Dout => Dout_tmp
    );
    
    Instruction_Memory: memoire_des_instructions PORT MAP(
        Clk => Clk,
        Address => Dout_tmp,
        Output => IM_output_tmp
    );
    
    Register_Bench: banc_de_registres PORT MAP(
        Areg => B_LI_DI(3 downto 0),
        Breg => C_LI_DI(3 downto 0),
        Wreg => A_Mem_Re(3 downto 0),
        W => Write_Reg_tmp,
        Data => B_Mem_Re,
        Rst => Rst,
        Clk => Clk,
        QA => QA_tmp,
        QB => QB_tmp
    );
    
    Aluminum : ALU_8bits PORT MAP (
        A => B_DI_EX,
        B => C_DI_EX,
        Ctrl_Alu => Ctrl_Alu_tmp,
        S => S_tmp,
        C => C_tmp,
        O => O_tmp,
        N => N_tmp,
        Z => Z_tmp
    );
    
    Data_Memory: memoire_de_donnees PORT MAP(
        Address => Address_Data_tmp,
        Input => In_Data_tmp,
        Read => Read_Data_tmp,
        Rst => Rst,
        Clk => Clk,
        Output => Out_Data_tmp
    );
    
    Sens_tmp <= '1';
    En_tmp <= '0';
    Load_tmp <= '0';
    
    
    
    process
    begin
        
        wait until Clk'event and Clk='1';
            OP_LI_DI <= IM_output_tmp(31 downto 24); --from ASM instruction extract OP A B C
            A_LI_DI <= IM_output_tmp(23 downto 16); 
            B_LI_DI <= IM_output_tmp(15 downto 8);
            C_LI_DI <= IM_output_tmp(7 downto 0);
        
            A_DI_EX <= A_LI_DI; --propagation from LI/DI to DI/EX
            OP_DI_EX <= OP_LI_DI;
            case OP_LI_DI is
                when X"08" => B_DI_EX <= QA_tmp; -- STORE
                when X"07" => B_DI_EX <= QA_tmp; -- LOAD
                when X"06" => B_DI_EX <= B_LI_DI; C_DI_EX <= QB_tmp; -- AFC
                when X"05" => B_DI_EX <= QA_tmp; -- COP
                when X"01" => B_DI_EX <= QA_tmp; C_DI_EX <= QB_tmp;
                when X"02" => B_DI_EX <= QA_tmp; C_DI_EX <= QB_tmp;
                when X"03" => B_DI_EX <= QA_tmp; C_DI_EX <= QB_tmp;

                when others => B_DI_EX <= B_LI_DI;
            end case;
            
            A_EX_Mem <= A_DI_EX;--propagation from DI/EX to EX/Mem
            OP_EX_Mem <= OP_DI_EX;
            
             case OP_DI_EX is
                when X"01" => B_EX_Mem <= S_tmp;
                when X"02" => B_EX_Mem <= S_tmp;
                when X"03" => B_EX_Mem <= S_tmp;
                when others => B_EX_Mem <= B_DI_EX;
            end case;
            
            A_Mem_Re <= A_EX_Mem;--propagation from Ex/Mem 2 Mem_Re
            -- B_Mem_Re <= B_EX_Mem;
            OP_Mem_Re <= OP_EX_Mem;
            
            case OP_EX_Mem is
                when X"08" => Write_Reg_tmp <= '0'; -- STORE instr
                              Read_Data_tmp <= '0'; -- Write in data memory
                              In_Data_tmp <= B_EX_Mem;
                              Address_Data_tmp <= A_EX_Mem; -- load B at address A
                              B_Mem_Re <= Out_Data_tmp;
                when X"07" => Write_Reg_tmp <= '1'; -- LOAD instr
                              Read_Data_tmp <= '1'; -- Read from data memory
                              Address_Data_tmp <= B_EX_Mem ; 
                              B_Mem_Re <= Out_Data_tmp; 
                when X"06" => Write_Reg_tmp <= '1'; 
                              B_Mem_Re <= B_EX_Mem;
                when X"05" => Write_Reg_tmp <= '1'; 
                              B_Mem_Re <= B_EX_Mem;
                when X"01" => Write_Reg_tmp <= '1'; 
                              B_Mem_Re <= B_EX_Mem;
                when X"02" => Write_Reg_tmp <= '1'; 
                              B_Mem_Re <= B_EX_Mem;
                when X"03" => Write_Reg_tmp <= '1'; 
                              B_Mem_Re <= B_EX_Mem;
                when others => Write_Reg_tmp <= '0'; 
                               B_Mem_Re <= B_EX_Mem;
            end case;
        
    end process;
    
    Ctrl_Alu_tmp <= "000" when OP_DI_EX = X"01" else
                    "010" when OP_DI_EX = X"02" else 
                    "001" when OP_DI_EX = X"03" else 
                    "000";
                    
    
    QA <= A_Mem_Re;
    QB <= B_Mem_Re;



end Behavioral;
