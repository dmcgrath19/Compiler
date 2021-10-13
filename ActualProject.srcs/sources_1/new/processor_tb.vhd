----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/05/2021 12:35:12 AM
-- Design Name: 
-- Module Name: processor_tb - Behavioral
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

USE ieee.std_logic_1164.ALL;
 
ENTITY microcode_computer_tb IS
END microcode_computer_tb;
 
ARCHITECTURE behavior OF microcode_computer_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT microcode_computer
    PORT(
         clk : IN  std_logic;
         reset_PC : IN  std_logic;
         reset_CAR : IN  std_logic;
         reset_val_PC : IN  std_logic_vector(31 downto 0);
         reset_val_CAR : IN  std_logic_vector(16 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset_PC : std_logic := '0';
   signal reset_CAR : std_logic := '0';
   signal reset_val_PC : std_logic_vector(31 downto 0) := (others => '0');
   signal reset_val_CAR : std_logic_vector(16 downto 0) := (others => '0');

   -- Clock period definitions
   constant clk_period : time := 100 ns;
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
    uut: microcode_computer PORT MAP (
        clk => clk,
        reset_PC => reset_PC,
        reset_CAR => reset_CAR,
        reset_val_PC => reset_val_PC,
        reset_val_CAR => reset_val_CAR
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

        -- initalise PC and CAR
        reset_PC <= '1';
        reset_CAR <= '1';
        reset_val_PC <= x"0000000f";
        reset_val_CAR <= "00000000000000000";
        wait for 100 ns;
        reset_PC <= '0';
        reset_CAR <= '0';        

        wait;
    end process;

END;