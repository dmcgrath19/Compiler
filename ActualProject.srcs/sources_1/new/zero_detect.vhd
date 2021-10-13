----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/27/2020 05:08:39 PM
-- Design Name: 
-- Module Name: zero_detect - Behavioral
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

entity zero_detect is
    port (
        a : in std_logic_vector(31 downto 0);
        z : out std_logic
    );
end zero_detect;

architecture Behavioral of zero_detect is

    constant gate_delay : time := 1 ns;

begin

    z <= not (a(31) or a(30) or a(29) or a(28) or a(27) or a(26) 
                    or a(25) or a(24) or a(23) or a(22) or a(21) 
                    or a(20) or a(19) or a(18) or a(17) or a(16)
                    or a(15) or a(14) or a(13) or a(12) or a(11) 
                    or a(10) or a(9)  or a(8)  or a(7)  or a(6)  
                    or a(5) or a(4)  or a(3)  or a(2)  or a(1)  or a(0)) after gate_delay;

end Behavioral;