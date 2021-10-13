--#Transfer Edition
library ieee;
use ieee.std_logic_1164.all;

entity register_file_tb2 is
end register_file_tb2;

architecture behavior of register_file_tb2 is
	component register_file
	port(
		reset, load, clock :	in	std_logic;
		dst_reg:				in	std_logic_vector(4 downto 0);
		data :					in	std_logic_vector(31 downto 0);
		a_select :				in	std_logic_vector(4 downto 0);
		b_select :				in	std_logic_vector(4 downto 0);
		a : 					out	std_logic_vector(31 downto 0);
		b : 					out	std_logic_vector(31 downto 0);
		r0, r1, r2, r3, r4, r5, r6,r7 , r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, r28, r29, r30, r31: out std_logic_vector(31 downto 0)
	);
	end component;

	signal reset, load, clock :		std_logic := '0';
	signal dst_reg:					std_logic_vector(4 downto 0);
	signal data :					std_logic_vector(31 downto 0);
	signal a_select:				std_logic_vector(4 downto 0);
	signal b_select:				std_logic_vector(4 downto 0);
	signal a :						std_logic_vector(31 downto 0);
	signal b :						std_logic_vector(31 downto 0);
	
begin
	uut: register_file port map (
		dst_reg => dst_reg,
		reset => reset,
		clock => clock,
		data => data,
		load => load,
		a_select => a_select,
		b_select => b_select,
		a => a,
		b => b
	);

	clock_proc: process
	begin
		wait for 10 ns;
		clock <= not clock;
	end process;
	sim_proc: process
	begin

		reset <= '1';
		wait for 2 ns;
		reset <= '0';
		wait for 2 ns;


        data <= x"09090909";
        dst_reg <= "10101";
        load <= '1';
        wait for 20ns;
        
        dst_reg <= "11111";
        wait for 20ns;
        
        
        data <=x"33333333";
        dst_reg <= "00000";
        wait for 20ns;
        
        dst_reg <= "00001";
        wait for 20ns;
        
        
        data <= x"ABCDEFFF";
        dst_reg <= "10101";
        wait for 20ns;
        
        dst_reg <= "10111";
        wait for 20ns;
        
        
        data <= x"A1B2C3E4";
        dst_reg <= "01111";
        wait for 20ns;
        
        dst_reg <= "10000";
        wait for 20ns;
        
        
        data <= x"43267898";
        dst_reg <= "00010";
        wait for 20ns;
        
        dst_reg <= "00100";
        wait for 20ns;
        
        
        data <= x"10000000";
        dst_reg <= "11100";
        load <= '1';
        wait for 20ns;
        
        dst_reg <= "11110";
        wait for 20ns;
        
        
        data <=x"90876443";
        dst_reg <= "01110";
        wait for 20ns;
        
        dst_reg <= "01111";
        wait for 20ns;
        
        
        data <= x"A2345FFF";
        dst_reg <= "11001";
        wait for 20ns;
        
        dst_reg <= "10110";
        wait for 20ns;
        
        
        data <= x"A1B68924";
        dst_reg <= "01101";
        wait for 20ns;
        
        dst_reg <= "10011";
        wait for 20ns;
        
        
        data <= x"00200200";
        dst_reg <= "01000";
        wait for 20ns;
        
        dst_reg <= "01100";
        wait for 20ns;        
        
        
	end process;
end;