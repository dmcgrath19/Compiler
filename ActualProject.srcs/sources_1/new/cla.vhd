----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/04/2021 11:56:39 PM
-- Design Name: 
-- Module Name: cla - Behavioral
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

entity cla_32 is
  port (
    x  : in std_logic_vector(31 downto 0);
    y  : in std_logic_vector(31 downto 0);
    input : in std_logic;
    result   : out std_logic_vector(32 downto 0)
    );
end cla_32;
 
 
architecture Behaviour of cla_32 is
 
  component full_adder is
    port (
      a  : in  std_logic;
      b  : in  std_logic;
      c_in : in  std_logic;
      s   : out std_logic;
      c_out : out std_logic
    );
  end component full_adder;
 
  signal gen : std_logic_vector(31 downto 0); -- Generate
  signal prop : std_logic_vector(31 downto 0); -- Propagate
  signal carry : std_logic_vector(32 downto 0); -- Carry
 
  signal sum   : std_logic_vector(31 downto 0);
 
   
begin
   
  fa00 : full_adder
    port map (
      a  => x(0),
      b  => y(0),
      c_in => carry(0),
      s   => sum(0),
      c_out => open
      );
 
  fa01 : full_adder
    port map (
      a  => x(1),
      b  => y(1),
      c_in => carry(1),
      s   => sum(1),
      c_out => open
      );
 
  fa02 : full_adder
    port map (
      a  => x(2),
      b  => y(2),
      c_in => carry(2),
      s   => sum(2),
      c_out => open
      );
   
  fa03 : full_adder
    port map (
      a  => x(3),
      b  => y(3),
      c_in => carry(3),
      s   => sum(3),
      c_out => open
      );

  fa04 : full_adder
    port map (
      a  => x(4),
      b  => y(4),
      c_in => carry(4),
      s   => sum(4),
      c_out => open
      );
 
  fa05 : full_adder
    port map (
      a  => x(5),
      b  => y(5),
      c_in => carry(5),
      s   => sum(5),
      c_out => open
      );
 
  fa06 : full_adder
    port map (
      a  => x(6),
      b  => y(6),
      c_in => carry(6),
      s   => sum(6),
      c_out => open
      );
   
  fa07 : full_adder
    port map (
      a  => x(7),
      b  => y(7),
      c_in => carry(7),
      s   => sum(7),
      c_out => open
      );

  fa08 : full_adder
    port map (
      a  => x(8),
      b  => y(8),
      c_in => carry(8),
      s   => sum(8),
      c_out => open
      );
   
  fa09 : full_adder
    port map (
      a  => x(9),
      b  => y(9),
      c_in => carry(9),
      s   => sum(9),
      c_out => open
      );

   fa10 : full_adder
    port map (
      a  => x(10),
      b  => y(10),
      c_in => carry(10),
      s   => sum(10),
      c_out => open
      );
 
  fa11 : full_adder
    port map (
      a  => x(11),
      b  => y(11),
      c_in => carry(11),
      s   => sum(11),
      c_out => open
      );
 
  fa12 : full_adder
    port map (
      a  => x(12),
      b  => y(12),
      c_in => carry(12),
      s   => sum(12),
      c_out => open
      );
   
  fa13 : full_adder
    port map (
      a  => x(13),
      b  => y(13),
      c_in => carry(13),
      s   => sum(13),
      c_out => open
      );
  fa14 : full_adder
    port map (
      a  => x(14),
      b  => y(14),
      c_in => carry(14),
      s   => sum(14),
      c_out => open
      );
 
  fa15 : full_adder
    port map (
      a  => x(15),
      b  => y(15),
      c_in => carry(15),
      s   => sum(15),
      c_out => open
      );
 
  fa16 : full_adder
    port map (
      a  => x(16),
      b  => y(16),
      c_in => carry(16),
      s   => sum(16),
      c_out => open
      );
   
  fa17 : full_adder
    port map (
      a  => x(17),
      b  => y(17),
      c_in => carry(17),
      s   => sum(17),
      c_out => open
      );

  fa18 : full_adder
    port map (
      a  => x(18),
      b  => y(18),
      c_in => carry(18),
      s   => sum(18),
      c_out => open
      );
   
  fa19 : full_adder
    port map (
      a  => x(19),
      b  => y(19),
      c_in => carry(19),
      s   => sum(19),
      c_out => open
      );
  fa20 : full_adder
    port map (
      a  => x(20),
      b  => y(20),
      c_in => carry(20),
      s   => sum(20),
      c_out => open
      );
 
  fa21 : full_adder
    port map (
      a  => x(21),
      b  => y(21),
      c_in => carry(21),
      s   => sum(21),
      c_out => open
      );
 
  fa22 : full_adder
    port map (
      a  => x(22),
      b  => y(22),
      c_in => carry(22),
      s   => sum(22),
      c_out => open
      );
   
  fa23 : full_adder
    port map (
      a  => x(23),
      b  => y(23),
      c_in => carry(23),
      s   => sum(23),
      c_out => open
      );
  fa24 : full_adder
    port map (
      a  => x(24),
      b  => y(24),
      c_in => carry(24),
      s   => sum(24),
      c_out => open
      );
 
  fa25 : full_adder
    port map (
      a  => x(25),
      b  => y(25),
      c_in => carry(25),
      s   => sum(25),
      c_out => open
      );
 
  fa26 : full_adder
    port map (
      a  => x(26),
      b  => y(26),
      c_in => carry(26),
      s   => sum(26),
      c_out => open
      );
   
  fa27 : full_adder
    port map (
      a  => x(27),
      b  => y(27),
      c_in => carry(27),
      s   => sum(27),
      c_out => open
      );

  fa28 : full_adder
    port map (
      a  => x(28),
      b  => y(28),
      c_in => carry(28),
      s   => sum(28),
      c_out => open
      );
   
  fa29 : full_adder
    port map (
      a  => x(29),
      b  => y(29),
      c_in => carry(29),
      s   => sum(29),
      c_out => open
      );

  fa30 : full_adder
    port map (
      a  => x(30),
      b  => y(30),
      c_in => carry(30),
      s   => sum(30),
      c_out => open
      );
 
  fa31 : full_adder
    port map (
      a  => x(31),
      b  => y(31),
      c_in => carry(31),
      s   => sum(31),
      c_out => open
      );
 
  -- gen terms: gen = x*y
  gen(0) <= x(0) and y(0);
  gen(1) <= x(1) and y(1);
  gen(2) <= x(2) and y(2);
  gen(3) <= x(3) and y(3);
  gen(4) <= x(4) and y(4);
  gen(5) <= x(5) and y(5);
  gen(6) <= x(6) and y(6);
  gen(7) <= x(7) and y(7);
  gen(8) <= x(8) and y(8);
  gen(9) <= x(9) and y(9);
  gen(10) <= x(10) and y(10);
  gen(11) <= x(11) and y(11);
  gen(12) <= x(12) and y(12);
  gen(13) <= x(13) and y(13);
  gen(14) <= x(14) and y(14);
  gen(15) <= x(15) and y(15);
  gen(16) <= x(16) and y(16);
  gen(17) <= x(17) and y(17);
  gen(18) <= x(18) and y(18);
  gen(19) <= x(19) and y(19);
  gen(20) <= x(20) and y(20);
  gen(21) <= x(21) and y(21);
  gen(22) <= x(22) and y(22);
  gen(23) <= x(23) and y(23);
  gen(24) <= x(24) and y(24);
  gen(25) <= x(25) and y(25);
  gen(26) <= x(26) and y(26);
  gen(27) <= x(27) and y(27);
  gen(28) <= x(28) and y(28);
  gen(29) <= x(29) and y(29);
  gen(30) <= x(30) and y(30);
  gen(31) <= x(31) and y(31);
 
  -- prop terms: prop = x+y
  prop(0) <= x(0) or y(0);
  prop(1) <= x(1) or y(1);
  prop(2) <= x(2) or y(2);
  prop(3) <= x(3) or y(3);
  prop(4) <= x(4) or y(4);
  prop(5) <= x(5) or y(5);
  prop(6) <= x(6) or y(6);
  prop(7) <= x(7) or y(7);
  prop(8) <= x(8) or y(8);
  prop(9) <= x(9) or y(9);
  prop(10) <= x(10) or y(10);
  prop(11) <= x(11) or y(11);
  prop(12) <= x(12) or y(12);
  prop(13) <= x(13) or y(13);
  prop(14) <= x(14) or y(14);
  prop(15) <= x(15) or y(15);
  prop(16) <= x(16) or y(16);
  prop(17) <= x(17) or y(17);
  prop(18) <= x(18) or y(18);
  prop(19) <= x(19) or y(19);
  prop(20) <= x(20) or y(20);
  prop(21) <= x(21) or y(21);
  prop(22) <= x(22) or y(22);
  prop(23) <= x(23) or y(23);
  prop(24) <= x(24) or y(24);
  prop(25) <= x(25) or y(25);
  prop(26) <= x(26) or y(26);
  prop(27) <= x(27) or y(27);
  prop(28) <= x(28) or y(28);
  prop(29) <= x(29) or y(29);
  prop(30) <= x(30) or y(30);
  prop(31) <= x(31) or y(31);
 
  -- carry terms:
  carry(0) <= input; 
  carry(1) <= gen(0) or (prop(0) and carry(0));
  carry(2) <= gen(1) or (prop(1) and carry(1));
  carry(3) <= gen(2) or (prop(2) and carry(2));
  carry(4) <= gen(3) or (prop(3) and carry(3));
  carry(5) <= gen(4) or (prop(4) and carry(4));
  carry(6) <= gen(5) or (prop(5) and carry(5));
  carry(7) <= gen(6) or (prop(6) and carry(6));
  carry(8) <= gen(7) or (prop(7) and carry(7));
  carry(9) <= gen(8) or (prop(8) and carry(8));
  carry(10) <= gen(9) or (prop(9) and carry(9));
  carry(11) <= gen(10) or (prop(10) and carry(10));
  carry(12) <= gen(11) or (prop(11) and carry(11));
  carry(13) <= gen(12) or (prop(12) and carry(12));
  carry(14) <= gen(13) or (prop(13) and carry(13));
  carry(15) <= gen(14) or (prop(14) and carry(14));
  carry(16) <= gen(15) or (prop(15) and carry(15));
  carry(17) <= gen(16) or (prop(16) and carry(16));
  carry(18) <= gen(17) or (prop(17) and carry(17));
  carry(19) <= gen(18) or (prop(18) and carry(18));
  carry(20) <= gen(19) or (prop(19) and carry(19));
  carry(21) <= gen(20) or (prop(20) and carry(20));
  carry(22) <= gen(21) or (prop(21) and carry(21));
  carry(23) <= gen(22) or (prop(22) and carry(22));
  carry(24) <= gen(23) or (prop(23) and carry(23));
  carry(25) <= gen(24) or (prop(24) and carry(24));
  carry(26) <= gen(25) or (prop(25) and carry(25));
  carry(27) <= gen(26) or (prop(26) and carry(26));
  carry(28) <= gen(27) or (prop(27) and carry(27));
  carry(29) <= gen(28) or (prop(28) and carry(28));
  carry(30) <= gen(29) or (prop(29) and carry(29));
  carry(31) <= gen(30) or (prop(30) and carry(30));
  carry(32) <= gen(31) or (prop(31) and carry(31));
 
  -- Final Answer
  result <= carry(32) & sum;  -- Concatenation
   
end Behaviour;
