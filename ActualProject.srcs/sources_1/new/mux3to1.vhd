----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/27/2020 04:28:22 PM
-- Design Name: 
-- Module Name: mux3to1 - Behavioral
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
library IEEE;
use IEEE.std_logic_1164.ALL;

entity mux3to1 is
    port (
        in0 : in std_logic;
        in1 : in std_logic;
        in2 : in std_logic;
        s : in std_logic_vector(1 downto 0);
        z : out std_logic
    );
end mux3to1;

architecture Behavioral of mux3to1 is

    constant gate_delay : time := 1 ns;

begin

    with s select
    z <=  in0 after gate_delay when "00",
          in1 after gate_delay when "01",
          in2 after gate_delay when "10",
          'U' after gate_delay when others;

end Behavioral;