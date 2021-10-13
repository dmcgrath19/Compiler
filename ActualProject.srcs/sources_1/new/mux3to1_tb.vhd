library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux3to1_tb is
end mux3to1_tb;

architecture Behavioral of mux3to1_tb is 

    constant delay : time := 5 ns;
    
    component mux3to1
        port (
            in0 : in std_logic;
            in1 : in std_logic;
            in2 : in std_logic;
            s : in std_logic_vector(1 downto 0);
            z : out std_logic
        );
    end component;
 
    signal in0 : std_logic := '1';
    signal in1 : std_logic := '0';
    signal in2 : std_logic := '1';
    signal s : std_logic_vector(1 downto 0) := "UU";
    signal z : std_logic;

begin

    uut : mux3to1
        port map (
            in0 => in0,
            in1 => in1,
            in2 => in2,
            s => s,
            z => z
        );

    sim : process

    begin
    
        wait for delay;
        s <= "00";
    
        wait for delay;
        s <= "01";
    
        wait for delay;
        in0 <= '0';
        s <= "10";

        wait;
    
    end process;

end;