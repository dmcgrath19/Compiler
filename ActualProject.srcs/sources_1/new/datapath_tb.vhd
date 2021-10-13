----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/27/2020 05:47:17 PM
-- Design Name: 
-- Module Name: datapath_tb - Behavioral
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

entity datapath_tb is
end datapath_tb;

architecture behavior of datapath_tb is
    component datapath
        port(
            reset, clock :          in  std_logic;
            cw :                    in  std_logic_vector(22 downto 0);
            const, data_in :        in  std_logic_vector(31 downto 0);
            address_out, data_out : out std_logic_vector(31 downto 0);
            v, c, n, z :            out std_logic
        );
    end component;

    signal reset, clock :                           std_logic := '0';
    signal v, c, n, z :                             std_logic;
    signal const, data_in, address_out, data_out :  std_logic_vector(31 downto 0);
    signal cw :                                     std_logic_vector(22 downto 0);
begin
    uut: datapath port map (
        reset => reset,
        clock => clock,
        cw => cw,
        const => const,
        data_in => data_in,
        address_out => address_out,
        data_out => data_out,
        v => v,
        c => c,
        n => n,
        z => z
    );

    clock_proc: process
    begin
        wait for 32 ns;
        clock <= not clock;
    end process;
    sim_proc: process
    begin
        reset <= '1';
        wait for 2 ns;
        reset <= '0';
        wait for 2 ns;

        data_in <= x"00076543";
        cw <= "01000010000000000000011";
        wait for 64 ns;

        data_in <= x"00000009";
        cw <= "01111110000000000000011";
        wait for 64 ns;

        cw <= "01110000000010100000000";
        wait for 64 ns;

        cw <= "00010101011100010001001";
        wait for 64 ns;

        cw <= "01010000011100000110001";
        wait for 64 ns;

        cw <= "00000111000010100000000";
        wait for 64 ns;

        cw <= "01100000000000100000000";
        wait for 64 ns;

        wait;
    end process;
end behavior;
