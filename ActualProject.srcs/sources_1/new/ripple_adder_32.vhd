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

entity ripple_adder_32 is
Port(
    a,b : in std_logic_vector(31 downto 0);
    c_in : in std_logic;
    s : out std_logic_vector(31 downto 0);
    c_out,v : out std_logic
    
);
end ripple_adder_32;

architecture behavior of ripple_adder_32 is
    constant gate_level : time := 1 ns;
    signal c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31,c32 : std_logic;
    
    component full_adder
        port(
            a, b, c_in : in std_logic;
            c_out, s : out std_logic
        );
    end component;
    
begin 
   fa00: full_adder
      port map(
        a => a(0),
        b => b(0),
        c_in => c_in,
        s => s(0),
        c_out => c1
    );
    
    fa01: full_adder
       port map(
        a => a(1),
        b => b(1),
        c_in => c_in,
        s => s(1),
        c_out => c2
     );
     
    fa02: full_adder
       port map(
        a => a(2),
        b => b(2),
        c_in => c_in,
        s => s(2),
        c_out => c3
     );
         
     fa03: full_adder
       port map(
        a => a(3),
        b => b(3),
        c_in => c_in,
        s => s(3),
        c_out => c4
      );
      
    fa04: full_adder
      port map(
        a => a(4),
        b => b(4),
        c_in => c_in,
        s => s(4),
        c_out => c5
      );
          
    fa05: full_adder
      port map(
       a => a(5),
       b => b(5),
       c_in => c_in,
       s => s(5),
       c_out => c6
     );
           
    fa06: full_adder
      port map(
       a => a(6),
       b => b(6),
       c_in => c_in,
       s => s(6),
       c_out => c7
     );
               
     fa07: full_adder
      port map(
       a => a(7),
       b => b(7),
       c_in => c_in,
       s => s(7),
       c_out => c8
     );
     
    fa08: full_adder
      port map(
       a => a(8),
       b => b(8),
       c_in => c_in,
       s => s(8),        
       c_out => c9
     );
               
     fa09: full_adder
      port map(
       a => a(9),
       b => b(9),
       c_in => c_in,        
       s => s(9),
       c_out => c10
     );

     fa10: full_adder
      port map(
        a => a(10),
        b => b(10),
        c_in => c_in,
        s => s(10),
        c_out => c11
      );
     
     fa11: full_adder
      port map(
        a => a(11),
        b => b(11),
        c_in => c_in,
        s => s(11),
        c_out => c12
      );
          
     fa12: full_adder
      port map(
        a => a(12),
        b => b(12),
        c_in => c_in,
        s => s(12),
        c_out => c13
      );
              
     fa13: full_adder
       port map(
        a => a(13),
        b => b(13),
        c_in => c_in,
        s => s(13),
        c_out => c14
      );
           
     fa14: full_adder
      port map(
        a => a(14),
        b => b(14),
        c_in => c_in,
        s => s(14),
        c_out => c15
      );
               
     fa15: full_adder
       port map(
        a => a(15),
        b => b(15),
        c_in => c_in,
        s => s(15),
        c_out => c16
      );
                
     fa16: full_adder
      port map(
        a => a(16),
        b => b(16),
        c_in => c_in,
        s => s(16),
        c_out => c17
      );
                
      fa17: full_adder
       port map(
        a => a(17),
        b => b(17),
        c_in => c_in,
        s => s(17),
        c_out => c18
      );
         
     fa18: full_adder
       port map(
        a => a(18),
        b => b(18),
        c_in => c_in,
        s => s(18),        
        c_out => c19
      );
                    
     fa19: full_adder
       port map(
        a => a(19),
        b => b(19),
        c_in => c_in,        
        s => s(19),
        c_out => c20
      ); 
      
     fa20: full_adder
      port map(
        a => a(20),
        b => b(20),
        c_in => c_in,
        s => s(20),
        c_out => c21
      );
          
     fa21: full_adder
      port map(
        a => a(21),
        b => b(21),
        c_in => c_in,
        s => s(21),
        c_out => c22
     );
           
      fa22: full_adder
       port map(
        a => a(22),
        b => b(22),
        c_in => c_in,
        s => s(22),
        c_out => c23
      );
               
     fa23: full_adder
      port map(
        a => a(23),
        b => b(23),
        c_in => c_in,
        s => s(23),
        c_out => c24
      );
            
     fa24: full_adder
      port map(
        a => a(24),
        b => b(24),
        c_in => c_in,
        s => s(24),
        c_out => c25
      );
                
     fa25: full_adder
      port map(
        a => a(25),
        b => b(25),
        c_in => c_in,
        s => s(25),
        c_out => c26
      );
                 
     fa26: full_adder
      port map(
        a => a(26),
        b => b(26),
        c_in => c_in,
        s => s(26),
        c_out => c27
      );
                     
     fa27: full_adder
      port map(
        a => a(27),
        b => b(27),
        c_in => c_in,
        s => s(27),
        c_out => c28
      );
           
     fa28: full_adder
      port map(
        a => a(28),
        b => b(28),
        c_in => c_in,
        s => s(28),        
        c_out => c29
      );
                     
     fa29: full_adder
      port map(
        a => a(29),
        b => b(29),
        c_in => c_in,        
        s => s(29),
        c_out => c30
      );
                
     fa30: full_adder
      port map(
        a => a(30),
        b => b(30),
        c_in => c_in,
        s => s(30),
        c_out => c31
     );
       
     fa31: full_adder
       port map(
         a => a(31),
         b => b(31),
         c_in => c_in,
         s => s(31),
         c_out => c32
      );
            
     c_out <= c32;
     v <= c31 xor c32;       
            
            

end behavior;