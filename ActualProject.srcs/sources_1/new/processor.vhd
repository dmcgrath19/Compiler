----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/05/2021 12:35:12 AM
-- Design Name: 
-- Module Name: processor - Behavioral
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
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity microcode_computer is
    port (
        clk : in STD_LOGIC;
        reset_PC : in STD_LOGIC;
        reset_CAR : in STD_LOGIC;
        reset_val_PC : in STD_LOGIC_VECTOR(31 downto 0);
        reset_val_CAR : in STD_LOGIC_VECTOR(7 downto 0)
    );
end microcode_computer;

architecture Behavioral of microcode_computer is

   component register_file
        port (
            a_select : in STD_LOGIC_VECTOR(4 downto 0);
            b_select : in STD_LOGIC_VECTOR(4 downto 0);
            dst_reg : in STD_LOGIC_VECTOR(4 downto 0);
            TA : in STD_LOGIC;
            TB : in STD_LOGIC;
            TD : in STD_LOGIC;
            load : in STD_LOGIC;
            clock : in STD_LOGIC;
            data : in STD_LOGIC_VECTOR(31 downto 0);
            a : out STD_LOGIC_VECTOR(31 downto 0);
            b : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;
 
    component function_unit
        port (
            a : in STD_LOGIC_VECTOR (31 downto 0);
            b : in STD_LOGIC_VECTOR (31 downto 0);
            fs : in STD_LOGIC_VECTOR (4 downto 0);
            v : out STD_LOGIC;
            c : out STD_LOGIC;
            n : out STD_LOGIC;
            z : out STD_LOGIC;
            f : out STD_LOGIC_VECTOR (31 downto 0)
        );
    end component;
    
    component flags
        port (
            V_in : in  STD_LOGIC;
            C_in : in  STD_LOGIC;
            N_in : in  STD_LOGIC;
            Z_in : in  STD_LOGIC;
            load : in STD_LOGIC;
            clk : in STD_LOGIC;
            V_out : out  STD_LOGIC;
            C_out : out  STD_LOGIC;
            N_out : out  STD_LOGIC;
            Z_out : out  STD_LOGIC
        );
    end component;
 
    component mux2to1
        port (
            In0 : in std_logic_vector(31 downto 0);
            In1 : in std_logic_vector(31 downto 0);
            s : in std_logic;
            Z : out std_logic_vector(31 downto 0)
        );
    end component;
 
    component mux2to17
        port (
            In0 : in std_logic_vector(7 downto 0);
            In1 : in std_logic_vector(7 downto 0);
            s : in std_logic;
            Z : out std_logic_vector(7 downto 0)
        );
    end component;    
    
    component mux8to1
        port (
            s : in  STD_LOGIC_VECTOR (2 downto 0);
            in0 : in  STD_LOGIC;
            in1 : in  STD_LOGIC;
            in2 : in  STD_LOGIC;
            in3 : in  STD_LOGIC;
            in4 : in  STD_LOGIC;
            in5 : in  STD_LOGIC;
            in6 : in  STD_LOGIC;
            in7 : in  STD_LOGIC;
            z : out  STD_LOGIC
        );
    end component;
    
    component memory
        port (
            address : in STD_LOGIC_VECTOR (31 downto 0);
            write_data : in  STD_LOGIC_VECTOR (31 downto 0);
            MemWrite : in  STD_LOGIC;
            read_data : out  STD_LOGIC_VECTOR (31 downto 0)
        );
    end component;
    
    component control_memory
        port (
            RC : out std_logic;
            RN : out std_logic;
            RV : out std_logic;
            RZ : out std_logic;
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
            SW : out std_logic;
            MC : out std_logic;
            MS : out std_logic_vector(2 downto 0);
            NA : out std_logic_vector(16 downto 0);
            IN_CAR : in std_logic_vector(16 downto 0)            
        );
    end component;
    
    component instruction_reg
        port (
            IR : in  STD_LOGIC_VECTOR (31 downto 0);
            IL : in  STD_LOGIC;
            opcode : out  STD_LOGIC_VECTOR (7 downto 0);
            DR : out  STD_LOGIC_VECTOR (2 downto 0);
            SA : out  STD_LOGIC_VECTOR (2 downto 0);
            SB : out  STD_LOGIC_VECTOR (2 downto 0)
       );
   end component;
   
    component extend
    port (
        DR : in  STD_LOGIC_VECTOR (2 downto 0);
        SA : in  STD_LOGIC_VECTOR (2 downto 0);
        SB : in  STD_LOGIC_VECTOR (2 downto 0);
        z : out  STD_LOGIC_VECTOR (31 downto 0)
    );
    end component;
    
    component program_counter
    port (
        addr_offset : in  STD_LOGIC_VECTOR (31 downto 0);
        PL : in  STD_LOGIC;
        PI : in  STD_LOGIC;
        reset : in  STD_LOGIC;
        reset_value : in  STD_LOGIC_VECTOR (31 downto 0);
        clk : in  STD_LOGIC;
        z : out  STD_LOGIC_VECTOR (31 downto 0)
    );
    end component;
    
    component control_addr_reg
    port (
        CAR_in : in  STD_LOGIC_VECTOR (16 downto 0);
        sel : in  STD_LOGIC;
        clk : in  STD_LOGIC;
        reset : in  STD_LOGIC;
        reset_value : in  STD_LOGIC_VECTOR (16 downto 0);
        CAR_out : out  STD_LOGIC_VECTOR (16 downto 0)
    );
    end component;
    
    component zero_fill
    port (
        value : in  STD_LOGIC_VECTOR (2 downto 0);
        padded : out  STD_LOGIC_VECTOR (31 downto 0)
    );
    end component;    
   
-- signals    

    signal A_data, B_data, mux_d_out, mux_b_out, 
        mux_m_out, f_unit_out, mem_out,
        extend_out, PC_out, ZF_out: std_logic_vector(31 downto 0);    
    signal V, C, N, Z, not_C, not_Z, V_func, C_func,
        N_func, Z_func, mux_s_out : std_logic;
    signal mux_c_out, CAR_out : std_logic_vector(7 downto 0);
    
    -- instruction register out
    signal DR, SA, SB : std_logic_vector(2 downto 0);
    signal opcode : std_logic_vector(7 downto 0);
    
    -- control memory out
    signal RZ, RN, RC, RV, MW, MM, RW, MD, MB, TB, TA, TD, PL, PI, IL, SW, MC : std_logic;
    signal FS : std_logic_vector(3 downto 0);
    signal MS : std_logic_vector(2 downto 0);
    signal NA : std_logic_vector(7 downto 0);

begin

    -- flag logic
    not_C <= not C;
    not_Z <= not Z;

    -- register file port map
    reg : register_file
    port map(
        a_select => SA,
        b_select => SB,
        dst_reg => DR,
        TA => TA,
        TB => TB,
        TD => TD,
        load => RW,
        clock => clk,
        data => mux_d_out,
        a => A_data,
        b => B_data
    );
 
    -- function unit port map
    funct_unit : function_unit
    port map(
        a => A_data,
        b => mux_b_out,
        fs => FS,
        v => V_func,
        c => C_func,
        n => N_func,
        z => Z_func,
        f => f_unit_out
    );
    
    -- status flag register port map
    SFR : flags
    port map (
        V_in => V_func,
        C_in => C_func,
        N_in => N_func,
        Z_in => Z_func,
        load => SW,
        clk => clk,
        V_out => V,
        C_out => C,
        N_out => N,
        Z_out => Z
    );
    
    -- memory port map
    mem : memory
    port map(
        address => mux_m_out,
        write_data => mux_b_out,
        MemWrite => MW,
        read_data => mem_out
    );
    
    -- control memory port map
    ctrl_mem : control_memory
    port map(
        RC => RC,
        RN => RN,
        RZ => RZ,
        RV => RV,
        MW => MW,
        MM => MM,
        RW => RW,
        MD => MD,
        FS => FS,
        MB => MB,
        TB => TB,
        TA => TA,
        TD => TD,
        PL => PL,
        PI => PI,
        IL => IL,
        SW => SW,
        MC => MC,
        MS => MS,
        NA => NA,
        IN_CAR => CAR_out
    );
    
    -- instruction register port map
    inst_reg : instruction_reg
    port map(
        IR => mem_out,
        IL => IL,
        opcode => opcode,
        DR => DR,
        SA => SA,
        SB => SB
    );
    
    -- PC 2s complement extend port map
    exten : extend
    port map(
        DR => DR,
        SA => SA,
        SB => SB,
        z => extend_out
    );
    
    -- program counter port map
    PC : program_counter
    port map(
        addr_offset => extend_out,
        PL => PL,
        PI => PI,
        reset => reset_PC,
        reset_value => reset_val_PC,
        clk => clk,
        z => PC_out
    );
    
    -- control address register port map
    CAR : control_addr_reg
    port map(
        CAR_in => mux_c_out,
        sel => mux_s_out,
        clk => clk,
        reset => reset_CAR,
        reset_value => reset_val_CAR,
        CAR_out => CAR_out
    );
    
    -- zero fill port map
    ZF : zero_fill
    port map(
        value => SB,
        padded => ZF_out
    );

    -- MUX B port map
    mux_b : mux2to1
    port map(
        In0 => B_data,
        In1 => ZF_out,
        s => MB,
        Z => mux_b_out
    );
 
    -- MUX D port map
    mux_d : mux2to1
    port map(
        In0 => f_unit_out,
        In1 => mem_out,
        s => MD,
        Z => mux_d_out
    );
    
    -- MUX M port map
    mux_m : mux2to1
    port map(
        In0 => A_data,
        In1 => PC_out,
        s => MM,
        Z => mux_m_out
    );
    
    -- MUX S port map
    mux_s : mux8to1
    port map(
        s => MS,
        in0  => '0',
        in1  => '1',
        in2  => C,
        in3  => V,
        in4  => Z,
        in5  => N,
        in6  => not_C,
        in7  => not_Z,
        z  => mux_s_out
    );
    
    -- MUX C port map
    mux_c : mux2to17
    port map(
        In0 => NA,
        In1 => opcode,
        s => MC,
        Z => mux_c_out
    );

end Behavioral;
