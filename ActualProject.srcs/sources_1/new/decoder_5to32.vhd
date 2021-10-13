----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/29/2020 11:10:47 PM
-- Design Name: 
-- Module Name: decoder - Behavioral
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

entity decoder_5to32 is
port(
     a : in STD_LOGIC_VECTOR(4 downto 0);
     b : out STD_LOGIC_VECTOR(31 downto 0)
);
end decoder_5to32;
architecture Behavioral of decoder_5to32 is
begin
 
process(a)
 begin 
 if (a="00000") then
 b <= "00000000000000000000000000000001";
 
 elsif (a="00001") then
 b <= "00000000000000000000000000000010";

  elsif (a="00010") then
 b <= "00000000000000000000000000000100";
 
 elsif (a="00011") then
 b <= "00000000000000000000000000001000";

  elsif (a="00100") then
 b <= "00000000000000000000000000010000";
 
 elsif (a="00101") then
 b <= "00000000000000000000000000100000";

  elsif (a="00110") then
 b <= "00000000000000000000000001000000";
 
 elsif (a="00111") then
 b <= "00000000000000000000000010000000";
 
 elsif (a="01000") then
 b <= "00000000000000000000000100000000";
 
 elsif (a="01001") then
 b <= "00000000000000000000001000000000";

  elsif (a="01010") then
 b <= "00000000000000000000010000000000";
 
 elsif (a="01011") then
 b <= "00000000000000000000100000000000";

  elsif (a="01100") then
 b <= "00000000000000000001000000000000";

 elsif (a="01101") then
 b <= "00000000000000000010000000000000";

 elsif (a="01110") then
 b <= "00000000000000000100000000000000";

  elsif (a="01111") then
 b <= "00000000000000001000000000000000";
 
 elsif (a="10000") then
 b <= "00000000000000010000000000000000";
 
 elsif (a="10001") then
 b <= "00000000000000100000000000000000";

  elsif (a="10010") then
 b <= "00000000000001000000000000000000";
 
 elsif (a="10011") then
 b <= "00000000000010000000000000000000";

 elsif (a="10100") then
 b <= "00000000000100000000000000000000";

  elsif (a="10101") then
 b <= "00000000001000000000000000000000";
 
 elsif (a="10110") then
 b <= "00000000010000000000000000000000";

 elsif (a="10111") then
 b <= "00000000100000000000000000000000";

  elsif (a="11000") then
 b <= "00000001000000000000000000000000";

  elsif (a="11001") then
 b <= "00000010000000000000000000000000";
 
 elsif (a="11010") then
 b <= "00000100000000000000000000000000";

 elsif (a="11011") then
 b <= "00001000000000000000000000000000";

  elsif (a="11100") then
 b <= "00010000000000000000000000000000";

  elsif (a="11101") then
 b <= "00100000000000000000000000000000";
 
 elsif (a="11110") then
 b <= "01000000000000000000000000000000";

 else
 b <= "10000000000000000000000000000000";
 end if;

end process;
 
end Behavioral;

