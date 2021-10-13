----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/04/2021 11:56:39 PM
-- Design Name: 
-- Module Name: control_addr_reg_tb - Behavioral
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

ENTITY control_addr_reg_tb IS
END control_addr_reg_tb;
 
ARCHITECTURE behavior OF control_addr_reg_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT control_addr_reg
    PORT(
         CAR_in : IN  std_logic_vector(16 downto 0);
         sel : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         reset_value : IN  std_logic_vector(16 downto 0);
         CAR_out : OUT  std_logic_vector(16 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CAR_in : std_logic_vector(16 downto 0) := (others => '0');
   signal sel : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal reset_value : std_logic_vector(16 downto 0) := (others => '0');

 	--Outputs
   signal CAR_out : std_logic_vector(16 downto 0);

   -- Clock period definitions
   constant clk_period : time := 100 ns;
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
    uut: control_addr_reg PORT MAP (
        CAR_in => CAR_in,
        sel => sel,
        clk => clk,
        reset => reset,
        reset_value => reset_value,
        CAR_out => CAR_out
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

        sel <= '1';
        CAR_IN <= "11100010101010011";
        wait for clk_period;

        sel <= '0';
        wait for 2 * clk_period;

        wait for clk_period / 5;
        reset <= '1';
        reset_value <= "11110010110100010";
        wait for clk_period;
        
        reset <= '0';

        wait;
    end process;

END;
