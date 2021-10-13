----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/04/2021 11:56:39 PM
-- Design Name: 
-- Module Name: extend - Behavioral
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

use IEEE.NUMERIC_STD.ALL;

entity extend is
    Port ( DR : in  STD_LOGIC_VECTOR (2 downto 0);
           SA : in  STD_LOGIC_VECTOR (2 downto 0);
           SB : in  STD_LOGIC_VECTOR (2 downto 0);
           z : out  STD_LOGIC_VECTOR (31 downto 0));
end extend;

architecture Behavioral of extend is

begin
    
    z(2 downto 0) <= SB after 5 ns;
    z(5 downto 3) <= SA after 5 ns;
    z(8 downto 6) <= DR after 5 ns;
    
    -- append most significant bit to preserve 2s complement
    GEN: for i in 9 to 31 generate
        z(i) <= DR(2) after 5 ns;
    end generate GEN;

end Behavioral;