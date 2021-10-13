----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/04/2021 11:56:39 PM
-- Design Name: 
-- Module Name: control_addr_reg - Behavioral
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

entity control_addr_reg is
    Port ( CAR_in : in  STD_LOGIC_VECTOR (16 downto 0);
           sel : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           reset_value : in  STD_LOGIC_VECTOR (16 downto 0);
           CAR_out : out  STD_LOGIC_VECTOR (16 downto 0));
end control_addr_reg;

architecture Behavioral of control_addr_reg is

    signal stored : STD_LOGIC_VECTOR (16 downto 0) := "00000000000000000";

begin

    process(clk, reset)
    begin
        if reset = '1' then
            stored <= reset_value;
            CAR_out <= stored;
        elsif rising_edge(clk) then
            if sel = '1' then
                stored <= CAR_in;
            else
                stored <= std_logic_vector(unsigned(stored) + 1);
            end if;
            CAR_out <= stored;            
        end if;
    end process;

end Behavioral;
