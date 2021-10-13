----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/27/2020 05:21:59 PM
-- Design Name: 
-- Module Name: mux2to32_tb - Behavioral
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
entity mux2to32_tb is
end mux2to32_tb;

architecture Behavioral of mux2to32_tb is 

    constant delay : time := 10 ns;
    
    component mux2to32
        port (
            in0 : in std_logic_vector(31 downto 0);
            in1 : in std_logic_vector(31 downto 0);
            s : in std_logic;
            z : out std_logic_vector(31 downto 0)
        );
    end component;
 
    signal in0 : std_logic_vector(31 downto 0) := x"AAAAAAAA";
    signal in1 : std_logic_vector(31 downto 0) := x"BBBBBBBB";
    signal s : std_logic := 'U';
    signal z : std_logic_vector(31 downto 0);

begin

    uut : mux2to32
        port map (
            in0 => in0, 
            in1 => in1, 
            s => s,
            z => z
        );

    sim : process

    begin
    
        wait for delay;
        s <= '0';
    
        wait for delay;
        s <= '1';
    
        wait;
    
    end process;

end;