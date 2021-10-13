----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/27/2020 04:26:53 PM
-- Design Name: 
-- Module Name: shifter - Behavioral
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
use IEEE.STD_LOGIC_1164.ALL;

entity shifter is
    port (
        b : in std_logic_vector(31 downto 0);
        s : in std_logic_vector(1 downto 0);
        il, ir : in std_logic;
        h : out std_logic_vector(31 downto 0)
    );
end shifter;

architecture Behavioral of shifter is

    component mux3to1
        port (
            in0, in1, in2 : in std_logic;
            s : in std_logic_vector(1 downto 0);
            z : out std_logic
        );
    end component;

begin

    mux00: mux3to1
        port map (
            in0 => b(0),
            in1 => b(1),
            in2 => il,
            s => s,
            z => h(0)
        );

    mux01: mux3to1
        port map (
            in0 => b(1),
            in1 => b(2),
            in2 => b(0),
            s => s,
            z => h(1)
        );

    mux02: mux3to1
        port map (
            in0 => b(2),
            in1 => b(3),
            in2 => b(1),
            s => s,
            z => h(2)
        );

    mux03: mux3to1
        port map (
            in0 => b(3),
            in1 => b(4),
            in2 => b(2),
            s => s,
            z => h(3)
        );

    mux04: mux3to1
        port map (
            in0 => b(4),
            in1 => b(5),
            in2 => b(3),
            s => s,
            z => h(4)
        );

    mux05: mux3to1
        port map (
            in0 => b(5),
            in1 => b(6),
            in2 => b(4),
            s => s,
            z => h(5)
        );

    mux06: mux3to1
        port map (
            in0 => b(6),
            in1 => b(7),
            in2 => b(5),
            s => s,
            z => h(6)
        );

    mux07: mux3to1
        port map (
            in0 => b(7),
            in1 => b(8),
            in2 => b(6),
            s => s,
            z => h(7)
        );

    mux08: mux3to1
        port map (
            in0 => b(8),
            in1 => b(9),
            in2 => b(7),
            s => s,
            z => h(8)
        );

    mux09: mux3to1
        port map (
            in0 => b(9),
            in1 => b(10),
            in2 => b(8),
            s => s,
            z => h(9)
        );

    mux10: mux3to1
        port map (
            in0 => b(10),
            in1 => b(11),
            in2 => b(9),
            s => s,
            z => h(10)
        );

    mux11: mux3to1
        port map (
            in0 => b(11),
            in1 => b(12),
            in2 => b(10),
            s => s,
            z => h(11)
        );

    mux12: mux3to1
        port map (
            in0 => b(12),
            in1 => b(13),
            in2 => b(11),
            s => s,
            z => h(12)
        );

    mux13: mux3to1
        port map (
            in0 => b(13),
            in1 => b(14),
            in2 => b(12),
            s => s,
            z => h(13)
        );

    mux14: mux3to1
        port map (
            in0 => b(14),
            in1 => b(15),
            in2 => b(13),
            s => s,
            z => h(14)
        );

    mux15: mux3to1
        port map (
            in0 => b(15),
            in1 => b(16),
            in2 => b(14),
            s => s,
            z => h(15)
        );

     mux16: mux3to1
        port map (
            in0 => b(16),
            in1 => b(17),
            in2 => b(15),
            s => s,
            z => h(16)
        );
        
      mux17: mux3to1
        port map (
            in0 => b(17),
            in1 => b(18),
            in2 => b(16),
            s => s,
            z => h(17)
         );   
                 
      mux18: mux3to1
         port map (
            in0 => b(18),
            in1 => b(19),
            in2 => b(17),
            s => s,
            z => h(18)
          );
        
       mux19: mux3to1
         port map (
            in0 => b(19),
            in1 => b(20),
            in2 => b(18),
            s => s,
            z => h(19)
          );
    mux20: mux3to1
        port map (
            in0 => b(20),
            in1 => b(21),
            in2 => b(19),
            s => s,
            z => h(20)
        );

    mux21: mux3to1
        port map (
            in0 => b(21),
            in1 => b(22),
            in2 => b(20),
            s => s,
            z => h(21)
        );

    mux22: mux3to1
        port map (
            in0 => b(22),
            in1 => b(23),
            in2 => b(21),
            s => s,
            z => h(22)
        );

    mux23: mux3to1
        port map (
            in0 => b(23),
            in1 => b(24),
            in2 => b(22),
            s => s,
            z => h(23)
        );

    mux24: mux3to1
        port map (
            in0 => b(24),
            in1 => b(25),
            in2 => b(23),
            s => s,
            z => h(24)
        );

    mux25: mux3to1
        port map (
            in0 => b(25),
            in1 => b(26),
            in2 => b(24),
            s => s,
            z => h(25)
        );

    mux26: mux3to1
        port map (
            in0 => b(26),
            in1 => b(27),
            in2 => b(25),
            s => s,
            z => h(26)
        );

    mux27: mux3to1
        port map (
            in0 => b(27),
            in1 => b(28),
            in2 => b(26),
            s => s,
            z => h(27)
        );

    mux28: mux3to1
        port map (
            in0 => b(28),
            in1 => b(29),
            in2 => b(27),
            s => s,
            z => h(28)
        );

    mux29: mux3to1
        port map (
            in0 => b(29),
            in1 => b(30),
            in2 => b(28),
            s => s,
            z => h(29)
        );


    mux30: mux3to1
        port map (
            in0 => b(30),
            in1 => b(31),
            in2 => b(29),
            s => s,
            z => h(30)
        );

    mux31: mux3to1
        port map (
            in0 => b(31),
            in1 => ir,
            in2 => b(30),
            s => s,
            z => h(31)
        );


end Behavioral;