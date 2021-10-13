----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/27/2020 05:21:59 PM
-- Design Name: 
-- Module Name: mux2to32 - Behavioral
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


entity mux2to32 is
    port (
        in0 : in std_logic_vector (31 downto 0);
        in1 : in std_logic_vector (31 downto 0);
        s : in std_logic;
        z : out std_logic_vector (31 downto 0)
    );
end mux2to32;

architecture Behavioral of mux2to32 is

    constant gate_delay : time := 1 ns;

begin

    with s select
    z <= in0 after gate_delay when '0',
         in1 after gate_delay when '1',
         "UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU" after gate_delay when others;

end Behavioral;
