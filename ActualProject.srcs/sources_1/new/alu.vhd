library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity alu is
    port (
        a : in std_logic_vector(31 downto 0);
        b : in std_logic_vector(31 downto 0);
        c_in : in std_logic;
        g_sel : in std_logic_vector(2 downto 0);
        c_out : out std_logic;
        g : out std_logic_vector(31 downto 0)
    );
end alu;

architecture Behavioral of alu is

    constant delay : time := 1 ns;

    component cla_32
        port (
            x : in std_logic_vector(31 downto 0);
            y : in std_logic_vector(31 downto 0);
            input : in std_logic;
            result : out std_logic_vector(32 downto 0)
        );
    end component;

    component logic_unit
        port (
            a : in std_logic_vector(31 downto 0);
            b : in std_logic_vector(31 downto 0);
            s : in std_logic_vector(1 downto 0);
            z : out std_logic_vector(31 downto 0)
        );
    end component;

    component mux2to32
        port (
            in0 : in std_logic_vector (31 downto 0);
            in1 : in std_logic_vector (31 downto 0);
            s : in std_logic;
            z : out std_logic_vector (31 downto 0)
        );
    end component;

    signal y, arith_z, logic_z : std_logic_vector(31 downto 0);

begin

    cla : cla_32
        port map (
            x => a,
            y => b,
            input => c_in,
            result(31 downto 0) => arith_z,
            result(32) => c_out
        );

    lu : logic_unit
        port map (
            a => a,
            b => b,
            s => g_sel(1 downto 0),
            z => logic_z
        );

    mux2: mux2to32
        port map (
            in0 => arith_z,
            in1 => logic_z,
            s => g_sel(2),
            z => g
        );
        
    with g_sel(1 downto 0) select
        y <= x"00000000" after delay when "00",
                   b after delay when "01",
               not b after delay when "10",
             x"FFFFFFFF" after delay when "11",
             "UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU" after delay when others;

end Behavioral;