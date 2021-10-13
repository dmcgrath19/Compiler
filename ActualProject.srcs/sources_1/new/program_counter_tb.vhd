----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/04/2021 11:56:39 PM
-- Design Name: 
-- Module Name: program_counter_tb - Behavioral
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

USE ieee.numeric_std.ALL;
 
ENTITY program_counter_tb IS
END program_counter_tb;
 
ARCHITECTURE behavior OF program_counter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT program_counter
    PORT(
         addr_offset : IN  std_logic_vector(31 downto 0);
         PL : IN  std_logic;
         PI : IN  std_logic;
         reset : in  STD_LOGIC;
         reset_value : in  STD_LOGIC_VECTOR (31 downto 0);
         clk : IN  std_logic;
         z : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal addr_offset : std_logic_vector(31 downto 0) := (others => '0');
   signal PL : std_logic := '0';
   signal reset : std_logic := '0';
   signal reset_value : std_logic_vector(31 downto 0) := (others => '0');
   signal PI : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal z : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 100 ns;
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
    uut: program_counter PORT MAP (
        addr_offset => addr_offset,
        PL => PL,
        PI => PI,
        reset => reset,
        reset_value => reset_value,
        clk => clk,
        z => z
    );

    -- Clock process definitions
    clk_process :process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;


    -- Stimulus process
    stim_proc: process
    begin		
      -- hold reset state for 100 ns.
        wait for 100 ns;	

        -- increment PC, 3 times
        PI <= '1';
        wait for 3 * clk_period;

        -- offest PC by 128, 3 times
        PI <= '0';
        PL <= '1';
        addr_offset <= std_logic_vector(to_signed(128, addr_offset'LENGTH));
        wait for 3 * clk_period;
        
        wait for clk_period / 5;
        reset_value <= "11110000111100001111000011110000";
        reset <= '1';
        wait for clk_period;

        -- offest PC by -2, 3 times
        reset <= '0';
        PI <= '0';
        PL <= '1';
        addr_offset <= std_logic_vector(to_signed(-2, addr_offset'LENGTH));
        wait for 3 * clk_period;

        wait;
    end process;

END;
