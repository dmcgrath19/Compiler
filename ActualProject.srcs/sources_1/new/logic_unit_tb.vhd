library IEEE;
use IEEE.std_logic_1164.ALL;

entity logic_unit_tb is
end logic_unit_tb;
architecture Behavioral of logic_unit_tb is

    constant delay : time := 5 ns;

    component logic_unit is
        port (
            a : in std_logic_vector(31 downto 0);
            b : in std_logic_vector(31 downto 0);
            s : in std_logic_vector(1 downto 0);
            z : out std_logic_vector(31 downto 0)
        );
    end component;


    signal a : std_logic_vector(31 downto 0);
    signal b : std_logic_vector(31 downto 0);
    signal s : std_logic_vector(1 downto 0);

    signal z : std_logic_vector(31 downto 0);

begin

    uut: logic_unit
        port map (
            a => a,
            b => b,
            s => s,
            z => z
        );

    sim :process
    begin
        --z = a and b
        a <= x"F0CFFFF0";
        b <= x"ABCDEF98";
        s <= "00";
        wait for delay;
        
        --z = a or b
        a <= x"00000000";
        b <= x"A0E9999E";
        s <= "01";
        wait for delay;
        
        --z = a xor b
        a <= x"FFFF00FF";
        b <= x"AAABCDEF";
        s <= "10";
        wait for delay;
        
        --z = not a
        a <= x"AA1122BB";
        b <= x"FFFFEEEE";
        s <= "11";
        wait;
        
     end process;
    
end Behavioral;