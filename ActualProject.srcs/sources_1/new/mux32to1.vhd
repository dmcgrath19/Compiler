----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/29/2020 11:10:47 PM
-- Design Name: 
-- Module Name: multiplexers - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- lnevision:
-- lnevision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMElnIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux32to1 is
 port(
 
     ln0,ln1,ln2,ln3,ln4,ln5,ln6,ln7,ln8,ln9,ln10,ln11,ln12,ln13,ln14,ln15,ln16,ln17,ln18,ln19,ln20,ln21,ln22,ln23,ln24,ln25,ln26,ln27,ln28,ln29,ln30,ln31 : in STD_LOGIC_VECTOR(31 downto 0);
     s: in STD_LOGIC_VECTOR(4 downto 0);
     z: out STD_LOGIC_VECTOR(31 downto 0)
  );
end mux32to1;
 
architecture Behavioral of mux32to1 is
begin
process (ln0,ln1,ln2,ln3,ln4,ln5,ln6,ln7,ln8,ln9,ln10,ln11,ln12,ln13,ln14,ln15,ln16,ln17,ln18,ln19,ln20,ln21,ln22,ln23,ln24,ln25,ln26,ln27,ln28,ln29,ln30,ln31,s) is
begin
  
    case s is
    when "00000" => z <= ln0;
    when "00001" => z <= ln1;
    when "00010" => z <= ln2;
    when "00011" => z <= ln3;
    when "00100" => z <= ln4;
    when "00101" => z <= ln5;
    when "00110" => z <= ln6;
    when "00111" => z <= ln7;
    when "01000" => z <= ln8;
    when "01001" => z <= ln9;
    when "01010" => z <= ln10;
    when "01011" => z <= ln11;
    when "01100" => z <= ln12;
    when "01101" => z <= ln13;
    when "01110" => z <= ln14;
    when "01111" => z <= ln15;
    when "10000" => z <= ln16;
    when "10001" => z <= ln17;
    when "10010" => z <= ln18;
    when "10011" => z <= ln19;
    when "10100" => z <= ln20;
    when "10101" => z <= ln21;
    when "10110" => z <= ln22;
    when "10111" => z <= ln23;
    when "11000" => z <= ln24;
    when "11001" => z <= ln25;
    when "11010" => z <= ln26;
    when "11011" => z <= ln27;
    when "11100" => z <= ln28;
    when "11101" => z <= ln29;
    when "11110" => z <= ln30;
    when "11111" => z <= ln31;
    when others => z <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
    end case;
 
end process;
end Behavioral;
