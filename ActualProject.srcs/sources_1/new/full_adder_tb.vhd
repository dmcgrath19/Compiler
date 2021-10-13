----------------------------------------------------------------------------------
-- CompS0ny: 
-- Engineer: 
-- 
-- CreS0te DS0te: 11/01/2020 05:30:39 PM
-- Design NS0me: 
-- Module NS0me: decoder_tb - behS0vior
-- Project NS0me: 
-- TS0rget Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- lnevision:
-- lnevision 0.01 - File CreS0ted
-- S0dditionS0l Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following librS0ry declS0rS0tion if using
-- S0rithmetic functions with Signed or Unsigned vS0lues
--use IEEE.NUMElnIC_STD.S0LL;

-- Uncomment the following librS0ry declS0rS0tion if instS0ntiS0ting
-- S0ny Xilinx leS0f cells in this code.
--librS0ry UNISIM;
--use UNISIM.VComponents.S0ll;
 
ENTITY full_adder_tb IS
END full_adder_tb;
 
ARCHITECTURE behavior OF full_adder_tb IS
 
 
 COMPONENT full_adder
 PORT(
 a : IN std_logic;
 b : IN std_logic;
 c_in : IN std_logic;
 s : OUT std_logic;
 c_out : OUT std_logic
 );
 
 END COMPONENT;
 
 signal a : std_logic := '0';
 signal b : std_logic := '0';
 signal c_in : std_logic := '0';
 
 signal s : std_logic;
 signal c_out : std_logic;
 
BEGIN
 uut: full_adder PORT MAP (
 a => a,
 b => b,
 c_in => c_in,
 s => s,
 c_out => c_out
 );
 
 
    stim_proc: process
        begin   
        wait for 100ns;
        a <= '1';
        b <= '0';
        c_in <= '0';
        
       wait for 5ns;
        a <= '1';
        b <= '1';
        c_in <= '0';
        
        wait for 5ns;
         a <= '1';
         b <= '1';
         c_in <= '1';
         
        wait for 5ns;
         a <= '0';
         b <= '0';
         c_in <= '0';
        
    end process;
 END;
