--StudentID Edition with Transfers
library ieee;
use ieee.std_logic_1164.all;

entity register_file_tb is
end register_file_tb;

architecture behavior of register_file_tb is
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

		dst_reg <= "00000";
		data <= x"126A9428";
		load <= '1';
		a_select <= "00110";
		wait for 20 ns;
		
		dst_reg <= "00001";
		data <= x"1126A941";
		load <= '1';
		a_select <= "01110";
		wait for 20 ns;

		dst_reg <= "00010";
		data <= x"1126A940";
		load <= '1';
		b_select <= "00111";
		wait for 20 ns;

		dst_reg <= "00011";
		data <= x"0126A93F";
		load <= '1';
		b_select <= "10000";
		wait for 20 ns;
	
		dst_reg <= "00100";
        data <= x"0126A93E";
        load <= '1';
        a_select <= "00110";
        wait for 20 ns;
        
        dst_reg <= "00101";
        data <= x"1126A93D";
        load <= '1';
        a_select <= "01110";
        wait for 20 ns;

        dst_reg <= "00110";
        data <= x"0126A93C";
        load <= '1';
        b_select <= "00111";
        wait for 20 ns;

        dst_reg <= "00111";
        data <= x"0126A93B";
        load <= '1';
        b_select <= "10000";
        wait for 20 ns;

		dst_reg <= "01000";
		data <= x"0126A93A";
		load <= '1';
		a_select <= "00110";
		wait for 20 ns;
		
		dst_reg <= "01001";
		data <= x"0126A939";
		load <= '1';
		a_select <= "01110";
		wait for 20 ns;

		dst_reg <= "01010";
		data <= x"0126A938";
		load <= '1';
		b_select <= "00111";
		wait for 20 ns;

		dst_reg <= "01011";
		data <= x"0126A937";
		load <= '1';
		b_select <= "10000";
		wait for 20 ns;
	
		dst_reg <= "01100";
        data <= x"0126A936";
        load <= '1';
        a_select <= "00110";
        wait for 20 ns;
        
        dst_reg <= "01101";
        data <= x"0126A935";
        load <= '1';
        a_select <= "01110";
        wait for 20 ns;

        dst_reg <= "01110";
        data <= x"0126A934";
        load <= '1';
        b_select <= "00111";
        wait for 20 ns;

        dst_reg <= "01111";
        data <= x"0126A933";
        load <= '1';
        b_select <= "10000";
        wait for 20 ns;
        
		dst_reg <= "10000";
        data <= x"0126A932";
        load <= '1';
        a_select <= "00110";
        wait for 20 ns;
        
        dst_reg <= "10001";
        data <= x"0126A931";
        load <= '1';
        a_select <= "01110";
        wait for 20 ns;

        dst_reg <= "10010";
        data <= x"00126A93";
        load <= '1';
        b_select <= "00111";
        wait for 20 ns;

        dst_reg <= "10011";
        data <= x"0126A92F";
        load <= '1';
        b_select <= "10000";
        wait for 20 ns;
    
        dst_reg <= "10100";
        data <= x"0126A92E";
        load <= '1';
        a_select <= "00110";
        wait for 20 ns;
        
        dst_reg <= "10101";
        data <= x"0126A92D";
        load <= '1';
        a_select <= "01110";
        wait for 20 ns;

        dst_reg <= "10110";
        data <= x"0126A92C";
        load <= '1';
        b_select <= "00111";
        wait for 20 ns;

        dst_reg <= "10111";
        data <= x"0126A92B";
        load <= '1';
        b_select <= "10000";
        wait for 20 ns;

        dst_reg <= "11000";
        data <= x"0126A92A";
        load <= '1';
        a_select <= "00110";
        wait for 20 ns;
        
        dst_reg <= "11001";
        data <= x"0126A929";
        load <= '1';
        a_select <= "01110";
        wait for 20 ns;

        dst_reg <= "11010";
        data <= x"0126A928";
        load <= '1';
        b_select <= "00111";
        wait for 20 ns;

        dst_reg <= "11011";
        data <= x"0126A927";
        load <= '1';
        b_select <= "10000";
        wait for 20 ns;
    
        dst_reg <= "11100";
        data <= x"0126A926";
        load <= '1';
        a_select <= "00110";
        wait for 20 ns;
        
        dst_reg <= "11101";
        data <= x"0126A925";
        load <= '1';
        a_select <= "01110";
        wait for 20 ns;

        dst_reg <= "11110";
        data <= x"0126A924";
        load <= '1';
        b_select <= "00111";
        wait for 20 ns;

        dst_reg <= "11111";
        data <= x"0126A923";
        load <= '1';
        b_select <= "10000";
        wait for 20 ns;        
        
	end process;
end;