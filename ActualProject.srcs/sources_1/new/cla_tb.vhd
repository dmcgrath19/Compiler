----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/04/2021 11:56:39 PM
-- Design Name: 
-- Module Name: cla_tb - Behavioral
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

entity cla_32_tb is
end cla_32_tb;

architecture Behavioral of cla_32_tb is

    constant delay : time := 5 ns;
    
    component cla_32
        port(
              input : in std_logic;
              x,y  : in std_logic_vector(31 downto 0);
              result   : out std_logic_vector(32 downto 0)
          );
    end component;
    
    signal x,y     : std_logic_vector(31 downto 0);
    signal result  : std_logic_vector(32 downto 0);
    signal input   : std_logic; 
    
begin
    uut: cla_32
        port map(
            input => input,
            x => x, 
            y => y,
            result => result
        );
   sim : process
     
        begin
     
            wait for delay;
     
            x <= x"09090909";
            y <= x"09090909";
            input <= '0';
     
            wait for delay;
            x <= x"12345678";
            y <= x"00000005";
            input <= '1';
     
            wait for delay;
            x <= x"00000001";
            y <= x"FFFFFFFF";
            input <= '0';
            
            wait for delay;
            x <= x"98765432";
            y <= x"23456789";
            input <= '1';
            
            wait for delay;
            x <= x"0099EE22";
            y <= x"EE223344";
            input  <= '1';
     
            wait;
       
       end process;
    

end Behavioral;
