----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/04/2021 11:56:39 PM
-- Design Name: 
-- Module Name: extend_tb - Behavioral
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
ENTITY extend_tb IS
END extend_tb;
 
ARCHITECTURE behavior OF extend_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT extend
    PORT(
        DR : in  STD_LOGIC_VECTOR (2 downto 0);
        SA : in  STD_LOGIC_VECTOR (2 downto 0);
        SB : in  STD_LOGIC_VECTOR (2 downto 0);
        z : out  STD_LOGIC_VECTOR (31 downto 0)
    );
    END COMPONENT;
    
    
   --Inputs
   signal DR : std_logic_vector(2 downto 0) := (others => '0');
   signal SA : std_logic_vector(2 downto 0) := (others => '0');
   signal SB : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal z : std_logic_vector(31 downto 0);
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
    uut: extend PORT MAP (
        DR => DR,
        SA => SA,
        SB => SB,
        z => z
    );

    -- Stimulus process
    stim_proc: process
    begin		
        -- hold reset state for 100 ns.
        wait for 100 ns;	

        -- check leading 1
        DR <= "101";
        SA <= "000";
        SB <= "111";
        wait for 100 ns;	

        -- check leading 0
        DR <= "010";
        SA <= "111";
        SB <= "000";      
        wait for 100 ns;	        

        wait;
    end process;

END;