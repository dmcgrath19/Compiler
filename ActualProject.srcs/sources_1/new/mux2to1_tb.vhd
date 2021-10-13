----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/05/2021 04:22:16 AM
-- Design Name: 
-- Module Name: mux2to1_tb - Behavioral
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
 
ENTITY mux2to1_tb IS
END mux2to1_tb;

ARCHITECTURE behavior OF mux2to1_tb IS 

   -- Component Declaration for the Unit Under Test (UUT)

   COMPONENT mux2to1
   PORT(
        In0 : IN  std_logic_vector(31 downto 0);
        In1 : IN  std_logic_vector(31 downto 0);
        s : IN  std_logic;
        Z : OUT  std_logic_vector(31 downto 0)
   );
   END COMPONENT;
   

  --Inputs
  signal In0 : std_logic_vector(31 downto 0) := (others => '0');
  signal In1 : std_logic_vector(31 downto 0) := (others => '0');
  signal s : std_logic := '0';

    --Outputs
  signal Z : std_logic_vector(31 downto 0);
  -- No clocks detected in port list. Replace <clock> below with 
  -- appropriate port name 


BEGIN

   -- Instantiate the Unit Under Test (UUT)
   uut: mux2to1 PORT MAP (
       In0 => In0,
       In1 => In1,
       s => s,
       Z => Z
   );


   -- Stimulus process
   stim_proc: process
   begin        
       -- hold reset state for 100 ns.
       --wait for 100 ns;    

       In0 <= "10101010101010101010101010101010";
       In1 <= "11001100110011001100110011001100";
       wait for 10 ns;    
       s <= '0';

       wait for 10 ns;    
       s <= '1';

       wait;
   end process;

END;