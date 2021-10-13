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

ENTITY mux32to1_tb IS
END mux32to1_tb;
 
ARCHITECTURE behavior OF mux32to1_tb IS 

COMPONENT mux32to1 is
 port(   
        ln0,ln1,ln2,ln3,ln4,ln5,ln6,ln7,ln8,ln9,ln10,ln11,ln12,ln13,ln14,ln15,ln16,ln17,ln18,ln19,ln20,ln21,ln22,ln23,ln24,ln25,ln26,ln27,ln28,ln29,ln30,ln31 : in STD_LOGIC_VECTOR(31 downto 0);

        s: in STD_LOGIC_VECTOR(4 downto 0);
        z: out STD_LOGIC_VECTOR(31 downto 0)
     );
end COMPONENT;
    signal ln0,ln1,ln2,ln3,ln4,ln5,ln6,ln7,ln8,ln9,ln10,ln11,ln12,ln13,ln14,ln15,ln16,ln17,ln18,ln19,ln20,ln21,ln22,ln23,ln24,ln25,ln26,ln27,ln28,ln29,ln30,ln31: STD_LOGIC_VECTOR(31 downto 0) := (others => '0');

    signal s : STD_LOGIC_VECTOR(4 downto 0) := (others => '0');
     
    signal z : STD_LOGIC_VECTOR(31 downto 0);

BEGIN

    uut: mux32to1 PORT MAP(
        ln0 => ln0,
        ln1 => ln1,
        ln2 => ln2, 
        ln3 => ln3, 
        ln4 => ln4,
        ln5 => ln5,
        ln6 => ln6,
        ln7 => ln7,
        ln8 => ln8, 
        ln9 => ln9,
        ln10 => ln10,
        ln11 => ln11,
        ln12 => ln12, 
        ln13 => ln13, 
        ln14 => ln14,
        ln15 => ln15,
        ln16 => ln16,
        ln17 => ln17,
        ln18 => ln18, 
        ln19 => ln19,
        ln20 => ln20,
        ln21 => ln21,
        ln22 => ln22, 
        ln23 => ln23, 
        ln24 => ln24,
        ln25 => ln25,
        ln26 => ln26,
        ln27 => ln27,
        ln28 => ln28, 
        ln29 => ln29,
        ln30 => ln30,
        ln31 => ln31,
        s => s,
        z => z
       );
       
    stim_proc: process
    begin
        ln0 <= "00000000000000000000000000000001";
        ln1 <= "00000000000000000000000000000010";
        ln2 <= "00000000000000000000000000000100";
        ln3 <= "00000000000000000000000000001000";
        ln4 <= "00000000000000000000000000010000";
        ln5 <= "00000000000000000000000000100000";
        ln6 <= "00000000000000000000000001000000";
        ln7 <= "00000000000000000000000010000000";
        ln8 <= "00000000000000000000000100000000";
        ln9 <= "00000000000000000000001000000000";
        ln10 <= "00000000000000000000010000000000";
        ln11 <= "00000000000000000000100000000000";
        ln12 <= "00000000000000000001000000000000";
        ln13 <= "00000000000000000010000000000000";
        ln14 <= "00000000000000000100000000000000";
        ln15 <= "00000000000000001000000000000000";
        ln16 <= "00000000000000010000000000000000";
        ln17 <= "00000000000000100000000000000000";
        ln18 <= "00000000000001000000000000000000";
        ln19 <= "00000000000010000000000000000000";
        ln20 <= "00000000000100000000000000000000";
        ln21 <= "00000000001000000000000000000000";
        ln22 <= "00000000010000000000000000000000";
        ln23 <= "00000000100000000000000000000000";
        ln24 <= "00000001000000000000000000000000";
        ln25 <= "00000010000000000000000000000000";
        ln26 <= "00000100000000000000000000000000";
        ln27 <= "00001000000000000000000000000000";
        ln28 <= "00010000000000000000000000000000";
        ln29 <= "00100000000000000000000000000000";
        ln30 <= "01000000000000000000000000000000";
        ln31 <= "10000000000000000000000000000000";
    
        
        wait for 10ns;
        s <= "00000";
        
        wait for 10ns;
        s <= "00001";
        
        wait for 10ns;
        s <= "00010";
        
        wait for 10ns; 
        s <= "00011";
        
        wait for 10ns;
        s <= "00100";
        
        wait for 10ns;
        s <= "00101";
        
        wait for 10ns;
        s <= "00110";
        
        wait for 10ns;
        s <= "00111";
        
        wait for 10ns;
        s <= "01000";
        
        wait for 10ns;
        s <= "01001";
        
        wait for 10ns;
        s <= "01010";
        
        wait for 10ns;
        s <= "01011";
        
        wait for 10ns;
        s <= "01100";
        
        wait for 10ns;
        s <= "01101";
        
        wait for 10ns;
        s <= "01110";
        
        wait for 10ns;
        s <= "01111";
        
        wait for 10ns;
        s <= "10000";
               
        wait for 10ns;
        s <= "10001";
                   
        wait for 10ns;
        s <= "10010";
               
        wait for 10ns; 
        s <= "10011";
               
        wait for 10ns;
         s <= "10100";
               
        wait for 10ns;
        s <= "10101";
               
        wait for 10ns;
         s <= "10110";
               
         wait for 10ns;
         s <= "10111";
               
        wait for 10ns;
         s <= "11000";
               
         wait for 10ns;
         s <= "11001";
               
         wait for 10ns;
         s <= "11010";
         
         wait for 10ns;
         s <= "11011";
               
         wait for 10ns;
         s <= "11100";
               
         wait for 10ns;
         s <= "11101";
               
         wait for 10ns;
         s <= "11110";
               
         wait for 10ns;
         s <= "11111";


    end process;
END;
