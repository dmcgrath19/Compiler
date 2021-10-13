----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/04/2021 11:56:39 PM
-- Design Name: 
-- Module Name: program_counter - Behavioral
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity program_counter is
    Port ( addr_offset : in  STD_LOGIC_VECTOR (31 downto 0);
           PL : in  STD_LOGIC;
           PI : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           reset_value : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           z : out  STD_LOGIC_VECTOR (31 downto 0));
end program_counter;

architecture Behavioral of program_counter is

    signal stored : STD_LOGIC_VECTOR (31 downto 0) := X"00000000";

begin

    process(clk, reset)
    begin
        if reset = '1' then
            stored <= reset_value;
            z <= stored;
        elsif rising_edge(clk) then
            if PL = '1' then
                stored <= std_logic_vector(unsigned(stored) + unsigned(addr_offset));
                z <= stored;
            elsif PI = '1' then
                stored <= std_logic_vector(unsigned(stored) + 1);
                z <= stored;
            end if;
        end if;
    end process;

end Behavioral;
