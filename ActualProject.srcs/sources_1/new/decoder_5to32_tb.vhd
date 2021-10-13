----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/01/2020 05:30:39 PM
-- Design Name: 
-- Module Name: decoder_tb - behavior
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

ENTITY decoder_5to32_tb IS
END decoder_5to32_tb;
 
ARCHITECTURE behavior OF decoder_5to32_tb IS 

COMPONENT decoder_5to32 is
    port(
    a : in STD_LOGIC_VECTOR(4 downto 0);
    b : out STD_LOGIC_VECTOR(31 downto 0)
    );
end COMPONENT;

    signal a : STD_LOGIC_VECTOR(4 downto 0) := (others => '0');
    signal b : STD_LOGIC_VECTOR(31 downto 0);

BEGIN

    uut: decoder_5to32 PORT MAP(
        a => a,
        b => b
       );
       
    stim_proc: process
    begin
        a <= "00000";
        
        wait for 10ns;
        a <= "00001";
        
        wait for 10ns;
        a <= "00010";
        
        wait for 10ns; 
        a <= "00011";
        
        wait for 10ns;
        a <= "00100";
        
        wait for 10ns;
        a <= "00101";
        
        wait for 10ns;
        a <= "00110";
        
        wait for 10ns;
        a <= "00111";
        
        wait for 10ns;
        a <= "01000";
        
        wait for 10ns;
        a <= "01001";
        
        wait for 10ns;
        a <= "01010";
        
        wait for 10ns;
        a <= "01011";
        
        wait for 10ns;
        a <= "01100";
        
        wait for 10ns;
        a <= "01101";
        
        wait for 10ns;
        a <= "01110";
        
        wait for 10ns;
        a <= "01111";
        
        wait for 10ns;
        a <= "10000";
               
        wait for 10ns;
        a <= "10001";
               
        wait for 10ns;
        a <= "10010";
               
        wait for 10ns; 
        a <= "10011";
               
        wait for 10ns;
         a <= "10100";
               
        wait for 10ns;
        a <= "10101";
               
        wait for 10ns;
         a <= "10110";
               
         wait for 10ns;
         a <= "10111";
               
        wait for 10ns;
         a <= "11000";
               
         wait for 10ns;
         a <= "11001";
               
         wait for 10ns;
         a <= "11010";
               
         wait for 10ns;
         a <= "11011";
               
         wait for 10ns;
         a <= "11100";
               
         wait for 10ns;
         a <= "11101";
               
         wait for 10ns;
         a <= "11110";
               
         wait for 10ns;
         a <= "11111";
    


    end process;
END;
