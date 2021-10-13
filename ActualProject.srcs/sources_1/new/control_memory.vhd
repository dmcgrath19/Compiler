----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/04/2021 11:56:39 PM
-- Design Name: 
-- Module Name: control_memory - Behavioral
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

use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity control_memory is
    port (
        RZ : out std_logic;
        RN : out std_logic;
        RC : out std_logic;
        RV : out std_logic;
        MW : out std_logic;
        MM : out std_logic;
        RW : out std_logic;
        MD : out std_logic;
        FS : out std_logic_vector(4 downto 0);
        MB : out std_logic;
        TB : out std_logic;
        TA : out std_logic;
        TD : out std_logic;
        PL : out std_logic;
        PI : out std_logic;
        IL : out std_logic;
        MC : out std_logic;
        SW : out std_logic;
        MS : out std_logic_vector(2 downto 0);
        NA : out std_logic_vector(16 downto 0);
        IN_CAR : in std_logic_vector(16 downto 0)
    );
end control_memory;

architecture Behavioral of control_memory is
    type mem_array is array(0 to 255) of std_logic_vector(41 downto 0);
    
begin
    memory_m : process(IN_CAR)
        variable control_mem : mem_array := (
        "000000000110000000010000000100010001000000", -- 0 ADI
        "000000000110000000010000000000000011000000", -- 1 LDR
        "000000000110000000010000000000000000010000", -- 2 STR
        "000000000110000000010000000000001001000000", -- 3 INC
        "000000000110000000010000000001110001000000", -- 4 NOT
        "000000000110000000010000000000010001000000", -- 5 ADD
        "000000000100001100010000000000000011000000", -- 6 LRI
        "000000000100001111110000100000000001000000", -- 7 SR
        "000000000110000000010000000000000000000000", -- 8 catch
        "000000000001100001000000000000000000000000", -- 9 bEQ
        "000000000110000000010000000000000000000000", -- A catch
        "000000000001100001110000000000000000000000", -- B bnz
        "000000000110000000010000000000000000000000", -- C catch
        "000000000110000000010000100000100101000000", -- D CMP
        others => "000000000000000000000000000000000000000000"
        );
        variable addr : integer;
        variable control_out : std_logic_vector(41 downto 0);
    begin
        addr := conv_integer(IN_CAR);
        control_out := control_mem(addr);
        
        RZ <= control_out(0) after 5ns;
        RN <= control_out(1) after 5 ns;
        RC <= control_out(2) after 5 ns;
        RV <= control_out(3) after 5 ns;
        MW <= control_out(4) after 5 ns;
        MM <= control_out(5) after 5 ns;
        RW <= control_out(6) after 5 ns;
        MD <= control_out(7) after 5 ns;
        FS <= control_out(12 downto 8) after 5 ns;
        MB <= control_out(13) after 5 ns;
        TB <= control_out(14) after 5 ns;
        TA <= control_out(15) after 5 ns;
        TD <= control_out(16) after 5 ns;
        PL <= control_out(17) after 5 ns;
        PI <= control_out(18) after 5 ns;
        IL <= control_out(19) after 5 ns;
        SW <= control_out(20) after 5 ns;
        MC <= control_out(21) after 5 ns;
        MS <= control_out(24 downto 22) after 5 ns;
        NA <= control_out(41 downto 25) after 5 ns;
        
    end process;
end Behavioral;
