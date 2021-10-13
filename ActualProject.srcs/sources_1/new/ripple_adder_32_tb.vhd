----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/18/2020 10:48:50 PM
-- Design Name: 
-- Module Name: ripple_adder_32_tb - Behavioral
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

entity ripple_adder_32_tb is
end ripple_adder_32_tb;

architecture Behavioral of ripple_adder_32_tb is
 
   constant delay : time := 5 ns;
   
   component  ripple_adder_32
       port (
           a : in std_logic_vector(31 downto 0);
           b : in std_logic_vector(31 downto 0);
           c_in : in std_logic;
           s : out std_logic_vector(31 downto 0);
           c_out : out std_logic;
           v : out std_logic
       );
   end component;

   signal a,b     : std_logic_vector(31 downto 0);
   signal c_in     : std_logic;

   signal s       : std_logic_vector(31 downto 0);
   signal c_out, v : std_logic;

begin

   uut: ripple_adder_32
       port map (
           a => a,
           b => b,
           c_in => c_in,
           s => s,
           c_out => c_out,
           v => v
       );

   sim : process

   begin

       wait for delay;

       a <= x"09090909";
       b <= x"09090909";
       c_in <= '0';

       wait for delay;
       a <= x"12345678";
       b <= x"00000000";
       c_in <= '1';

       wait for delay;
       a <= x"00000001";
       b <= x"FFFFFFFF";
       c_in <= '0';
       
       wait for delay;
       a <= x"98765432";
       b <= x"23456789";
       c_in <= '1';
       
       wait for delay;
       a <= x"0099EE22";
       b <= x"EE223344";
       c_in  <= '1';

       wait;
  
  end process;



end Behavioral;
