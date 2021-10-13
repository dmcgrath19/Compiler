----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/27/2020 05:47:17 PM
-- Design Name: 
-- Module Name: datapath - Behavioral
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

entity datapath is
    port(
        reset, clock :          in  std_logic;
        cw :                    in  std_logic_vector(22 downto 0);
        const, data_in :        in  std_logic_vector(31 downto 0);
        address_out, data_out : out std_logic_vector(31 downto 0);
        v, c, n, z :            out std_logic
    );
end datapath;

architecture behavior of datapath is
    component mux2to32
    port(
        s :     in  std_logic;
        in0 :   in  std_logic_vector(31 downto 0);
        in1 :   in  std_logic_vector(31 downto 0);
        z :     out std_logic_vector(31 downto 0)
    );
    end component;

    component register_file
        port(
            reset, load, clock :    in  std_logic;
            dst_reg:                in  std_logic_vector(4 downto 0);
            data :                  in  std_logic_vector(31 downto 0);
            a_select :              in  std_logic_vector(4 downto 0) := "00000";
            b_select :              in  std_logic_vector(4 downto 0) := "00000";
            a :                     out std_logic_vector(31 downto 0);
            b :                     out std_logic_vector(31 downto 0)
        );
    end component;

    component function_unit
        port(
            a, b :          in  std_logic_vector(31 downto 0);
            fs :            in  std_logic_vector(4 downto 0);
            f :             out std_logic_vector(31 downto 0);
            v, c, n, z :    out std_logic
        );
    end component;

    signal md_out, f_in_a, f_in_b, mb_in_reg, md_in_f : std_logic_vector(31 downto 0);
begin
    registers: register_file port map (
        dst_reg => cw(22 downto 18),
        reset => reset,
        clock => clock,
        data => md_out,
        load => cw(0),
        a_select => cw(17 downto 13),
        b_select => cw(12 downto 8),
        a => f_in_a,
        b => mb_in_reg
    );

    mb: mux2to32 port map (
        s => cw(7),
        in0 => mb_in_reg,
        in1 => const,
        z => f_in_b
    );

    f: function_unit port map (
        a => f_in_a,
        b => f_in_b,
        fs => cw(6 downto 2),
        f => md_in_f,
        v => v,
        c => c,
        n => n,
        z => z
    );

    md: mux2to32 port map (
        s => cw(1),
        in0 => md_in_f,
        in1 => data_in,
        z => md_out
    );

    address_out <= f_in_a;
    data_out <= f_in_b;
end;