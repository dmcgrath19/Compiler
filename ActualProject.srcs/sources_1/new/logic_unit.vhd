----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/27/2020 01:06:20 AM
-- Design Name: 
-- Module Name: logic_unit - Behavioral
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

entity logic_unit is
    port (
        a : in std_logic_vector(31 downto 0);
        b : in std_logic_vector(31 downto 0);
        s : in std_logic_vector(1 downto 0);
        z : out std_logic_vector(31 downto 0)
    );
end logic_unit;

architecture Behavioral of logic_unit is

    constant gate_delay : time := 5 ns;

begin
    
    with s select
    z <= (a and b) after gate_delay when "00",
         (a or b)  after gate_delay when "01",
         (a xor b) after gate_delay when "10",
         (not a)   after gate_delay when others;

end Behavioral;
