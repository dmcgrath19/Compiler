----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/04/2021 11:56:39 PM
-- Design Name: 
-- Module Name: flags - Behavioral
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

entity flags is
    Port ( V_in : in  STD_LOGIC;
           C_in : in  STD_LOGIC;
           N_in : in  STD_LOGIC;
           Z_in : in  STD_LOGIC;
           load : in STD_LOGIC;
           clk : in STD_LOGIC;
           V_out : out  STD_LOGIC;
           C_out : out  STD_LOGIC;
           N_out : out  STD_LOGIC;
           Z_out : out  STD_LOGIC);
end flags;

architecture Behavioral of flags is

begin
    process (clk)
    begin
        if rising_edge(clk) and load = '1' then
            V_out <= V_in after 5 ns;
            C_out <= C_in after 5 ns;
            N_out <= N_in after 5 ns;
            Z_out <= Z_in after 5 ns;            
        end if;
    end process;
end Behavioral;
