----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/04/2021 11:56:39 PM
-- Design Name: 
-- Module Name: instruction_reg_tb - Behavioral
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
ENTITY instruction_reg_tb IS
END instruction_reg_tb;
 
ARCHITECTURE behavior OF instruction_reg_tb IS 
 
    COMPONENT instruction_reg
    PORT(
         IR : IN  std_logic_vector(31 downto 0);
         IL : IN  std_logic;
         opcode : OUT  std_logic_vector(7 downto 0);
         DR : OUT  std_logic_vector(2 downto 0);
         SA : OUT  std_logic_vector(2 downto 0);
         SB : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal IR : std_logic_vector(31 downto 0) := (others => '0');
   signal IL : std_logic := '0';

 	--Outputs
   signal opcode : std_logic_vector(7 downto 0);
   signal DR : std_logic_vector(2 downto 0);
   signal SA : std_logic_vector(2 downto 0);
   signal SB : std_logic_vector(2 downto 0);
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
    uut: instruction_reg PORT MAP (
        IR => IR,
        IL => IL,
        opcode => opcode,
        DR => DR,
        SA => SA,
        SB => SB
    );

    -- Stimulus process
    stim_proc: process
    begin		
        -- hold reset state for 100 ns.
        wait for 100 ns;	

        IR <= "01010101010101010000110011001010";
        wait for 100 ns;
        
        IL <= '1';
        wait for 100 ns;
        
        IL <= '0';
        IR <= "11101001010100100000111100001111";
        wait for 100 ns;

        IL <= '1';
        wait for 100 ns;

        wait;
    end process;

END;
