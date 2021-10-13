----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/04/2021 11:56:39 PM
-- Design Name: 
-- Module Name: memory - Behavioral
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


use IEEE.STD_LOGIC_ARITH.ALL;

entity memory is
    Port ( address : in STD_LOGIC_VECTOR (31 downto 0);
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           MemWrite : in  STD_LOGIC;
           read_data : out  STD_LOGIC_VECTOR (31 downto 0));
end memory;

architecture Behavioral of memory is

    type mem_array is array(0 to 511) of STD_LOGIC_VECTOR(31 downto 0);

begin
    mem_process: process(address, write_data, MemWrite)
        -- initialize data memory, X denotes hexadecimal number
        variable data_mem : mem_array := (
                
            -- 0x00 Data:
            x"00000000", x"00000001", x"00000002", x"00000003",
            x"00000004", x"00000005", x"00000006", x"00000007",
            x"deaddeed", x"feedbabe", x"10001111", x"cf0afeee",
            x"11111111", x"10009090", x"05687111", x"10101010", 
            
            -- 0x10 Program:
            -- init:
            --   PC  := 0x000f
            --   CAR := 0x00   -- fetch next instruction

            -- LDI R0 #0
            x"00002C00",

            -- ADI R0, R0, #5
            x"00000a05",

            -- ADD R1, R0, R0
            x"00000640",
                
            -- LD R2, M(R1)
            x"00001688",
                
            -- SR R1, M(R1)
            x"00001A09",
                
            -- INC R3, R1
            x"00000EC8",
                
            -- NOT R4, R3
            x"00001318",
                
            -- JMP #9
            x"00002209",
                
            -- 8 word block:
            x"00000000", x"00000000", x"00000000", x"00000000",
            x"00000000", x"00000000", x"00000000", x"00000000",
                
            -- CMP R0, R1
            x"00001E01", -- not equal
                
            -- BEQ #5
            x"00002805", -- won't break

            -- CMP R0, R0
            x"00001E00", -- equal

            -- BEQ #5
            x"00002805", -- will break   

            -- 4 word block:
            x"00000000", x"00000000", x"00000000", x"00000000",

            -- JMP #0
            x"00002200", -- wait
            
            others => x"00000000"
        );
        variable addr : integer;
    begin
        addr := conv_integer(unsigned(address(7 downto 0)));
        
        if MemWrite = '1' then
            data_mem(addr) := write_data;
        end if;
           
       read_data <= data_mem(addr) after 5 ns;
    end process;

end Behavioral;