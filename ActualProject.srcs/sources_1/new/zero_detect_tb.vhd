----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/27/2020 05:08:39 PM
-- Design Name: 
-- Module Name: zero_detect_tb - Behavioral
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
entity zero_detect_tb is
end zero_detect_tb;

architecture Behavioral of zero_detect_tb is

    constant delay : time := 10 ns;

    component zero_detect is
        Port ( 
            a : in std_logic_vector(31 downto 0);
            z : out std_logic
        );
    end component;
    
    signal a : std_logic_vector(31 downto 0):= x"00000000";
    signal z : std_logic := '0';
        
begin

    uut: zero_detect
        port map (
            a => a,
            z => z
        );
    
    sim : process
    
    begin
        
        a <= x"AAAAAAAA";
        wait for delay;
        
        a <= x"00000000";
        wait for delay;
        
        a <= x"B2B2B2B2";
        wait for delay;
        
        a <= x"12345678";
        wait for delay;
        
        wait;
    
    end process;
    
end Behavioral;