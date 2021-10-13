library ieee;
use ieee.std_logic_1164.all;

entity register_file is
	port(
		reset, load, clock :	in	std_logic;
		dst_reg:				in	std_logic_vector(4 downto 0);
		data :					in	std_logic_vector(31 downto 0);
		a_select :				in	std_logic_vector(4 downto 0);
		b_select :				in	std_logic_vector(4 downto 0);
		a : 					out	std_logic_vector(31 downto 0);
		b : 					out	std_logic_vector(31 downto 0)
		);
end register_file;

architecture behavior of register_file is
	component decoder_5to32
		port(
			a :	in	std_logic_vector(4 downto 0);
			b :	out	std_logic_vector(31 downto 0)
		);
	end component;

	component mux32to1
		port(
			s :		in	std_logic_vector(4 downto 0);
			ln0,ln1,ln2,ln3,ln4,ln5,ln6,ln7,ln8,ln9,ln10,ln11,ln12,ln13,ln14,ln15,ln16,ln17,ln18,ln19,ln20,ln21,ln22,ln23,ln24,ln25,ln26,ln27,ln28,ln29,ln30,ln31 : in STD_LOGIC_VECTOR(31 downto 0);
			z :		out	std_logic_vector(31 downto 0)
		);
	end component;

	component reg
		port(
			reset, load, clock :	in	std_logic;
			data :					in	std_logic_vector(31 downto 0);
			q :						out	std_logic_vector(31 downto 0)
		);
	end component;

	signal dec_load_reg : std_logic_vector(31 downto 0);
	signal l_r0, l_r1, l_r2, l_r3, l_r4, l_r5, l_r6, l_r7, l_r8, l_r9, l_r10, l_r11, l_r12, l_r13, l_r14, l_r15, l_r16, l_r17, l_r18, l_r19, l_r20, l_r21, l_r22, l_r23, l_r24, l_r25, l_r26, l_r27, l_r28, l_r29,  l_r30, l_r31, l_r32: std_logic;
	signal r0_q, r1_q, r2_q, r3_q, r4_q, r5_q, r6_q, r7_q, r8_q, r9_q,r10_q, r11_q, r12_q, r13_q, r14_q, r15_q, r16_q, r17_q, r18_q, r19_q,r20_q, r21_q, r22_q, r23_q, r24_q, r25_q, r26_q, r27_q, r28_q, r29_q, r30_q, r31_q, r32_q : std_logic_vector(31 downto 0);
begin
	dreg_decoder: decoder_5to32 port map (
		a => dst_reg,
		b => dec_load_reg
	);

	l_r0 <= load and dec_load_reg(0);
	l_r1 <= load and dec_load_reg(1);
	l_r2 <= load and dec_load_reg(2);
	l_r3 <= load and dec_load_reg(3);
	l_r4 <= load and dec_load_reg(4);
	l_r5 <= load and dec_load_reg(5);
	l_r6 <= load and dec_load_reg(6);
	l_r7 <= load and dec_load_reg(7);
	l_r8 <= load and dec_load_reg(8);
	l_r9 <= load and dec_load_reg(9);
	l_r10 <= load and dec_load_reg(10);
    l_r11 <= load and dec_load_reg(11);
    l_r12 <= load and dec_load_reg(12);
    l_r13 <= load and dec_load_reg(13);
    l_r14 <= load and dec_load_reg(14);
    l_r15 <= load and dec_load_reg(15);
    l_r16 <= load and dec_load_reg(16);
    l_r17 <= load and dec_load_reg(17);
    l_r18 <= load and dec_load_reg(18);
    l_r19 <= load and dec_load_reg(19);
	l_r20 <= load and dec_load_reg(20);
    l_r21 <= load and dec_load_reg(21);
    l_r22 <= load and dec_load_reg(22);
    l_r23 <= load and dec_load_reg(23);
    l_r24 <= load and dec_load_reg(24);
    l_r25 <= load and dec_load_reg(25);
    l_r26 <= load and dec_load_reg(26);
    l_r27 <= load and dec_load_reg(27);
    l_r28 <= load and dec_load_reg(28);
    l_r29 <= load and dec_load_reg(29);
	l_r30 <= load and dec_load_reg(30);
    l_r31 <= load and dec_load_reg(31);
    l_r32 <= load and dec_load_reg(32);

	reg0: reg port map (
		reset => reset,
		load => l_r0,
		clock => clock,
		data => data,
		q => r0_q
	);
	reg1: reg port map (
		reset => reset,
		load => l_r1,
		clock => clock,
		data => data,
		q => r1_q
	);
	reg2: reg port map (
		reset => reset,
		load => l_r2,
		clock => clock,
		data => data,
		q => r2_q
	);
	reg3: reg port map (
		reset => reset,
		load => l_r3,
		clock => clock,
		data => data,
		q => r3_q
	);
	reg4: reg port map (
		reset => reset,
		load => l_r4,
		clock => clock,
		data => data,
		q => r4_q
	);
	reg5: reg port map (
		reset => reset,
		load => l_r5,
		clock => clock,
		data => data,
		q => r5_q
	);
	reg6: reg port map (
		reset => reset,
		load => l_r6,
		clock => clock,
		data => data,
		q => r6_q
	);
	reg7: reg port map (
		reset => reset,
		load => l_r7,
		clock => clock,
		data => data,
		q => r7_q
	);
	reg8: reg port map (
		reset => reset,
		load => l_r8,
		clock => clock,
		data => data,
		q => r8_q
	);
	reg9: reg port map (
        reset => reset,
        load => l_r9,
        clock => clock,
        data => data,
        q => r9_q
    );
	reg10: reg port map (
        reset => reset,
        load => l_r10,
        clock => clock,
        data => data,
        q => r10_q
    );
    reg11: reg port map (
        reset => reset,
        load => l_r11,
        clock => clock,
        data => data,
        q => r11_q
    );
    reg12: reg port map (
        reset => reset,
        load => l_r12,
        clock => clock,
        data => data,
        q => r12_q
    );
    reg13: reg port map (
        reset => reset,
        load => l_r13,
        clock => clock,
        data => data,
        q => r13_q
    );
    reg14: reg port map (
        reset => reset,
        load => l_r14,
        clock => clock,
        data => data,
        q => r14_q
    );
    reg15: reg port map (
        reset => reset,
        load => l_r15,
        clock => clock,
        data => data,
        q => r15_q
    );
    reg16: reg port map (
        reset => reset,
        load => l_r16,
        clock => clock,
        data => data,
        q => r16_q
    );
    reg17: reg port map (
        reset => reset,
        load => l_r17,
        clock => clock,
        data => data,
        q => r17_q
    );
    reg18: reg port map (
        reset => reset,
        load => l_r18,
        clock => clock,
        data => data,
        q => r18_q
    );
    reg19: reg port map (
        reset => reset,
        load => l_r19,
        clock => clock,
        data => data,
        q => r19_q
    );
	reg20: reg port map (
        reset => reset,
        load => l_r20,
        clock => clock,
        data => data,
        q => r20_q
    );
    reg21: reg port map (
        reset => reset,
        load => l_r21,
        clock => clock,
        data => data,
        q => r21_q
    );
    reg22: reg port map (
        reset => reset,
        load => l_r22,
        clock => clock,
        data => data,
        q => r22_q
    );
    reg23: reg port map (
        reset => reset,
        load => l_r23,
        clock => clock,
        data => data,
        q => r23_q
    );
    reg24: reg port map (
        reset => reset,
        load => l_r24,
        clock => clock,
        data => data,
        q => r24_q
    );
    reg25: reg port map (
        reset => reset,
        load => l_r25,
        clock => clock,
        data => data,
        q => r25_q
    );
    reg26: reg port map (
        reset => reset,
        load => l_r26,
        clock => clock,
        data => data,
        q => r26_q
    );
    reg27: reg port map (
        reset => reset,
        load => l_r27,
        clock => clock,
        data => data,
        q => r27_q
    );
    reg28: reg port map (
        reset => reset,
        load => l_r28,
        clock => clock,
        data => data,
        q => r28_q
    );
    reg29: reg port map (
        reset => reset,
        load => l_r29,
        clock => clock,
        data => data,
        q => r29_q
    );	
	reg30: reg port map (
        reset => reset,
        load => l_r30,
        clock => clock,
        data => data,
        q => r30_q
    );
    reg31: reg port map (
        reset => reset,
        load => l_r31,
        clock => clock,
        data => data,
        q => r31_q
    );
    reg32: reg port map(
        reset => reset, 
        load => l_r32,
        clock => clock,
        data => data, 
        q => r32_q
     );

	ra_mux: mux32to1 port map (
		s => a_select,
		ln0 => r0_q,
		ln1 => r1_q,
		ln2 => r2_q,
		ln3 => r3_q,
		ln4 => r4_q,
		ln5 => r5_q,
		ln6 => r6_q,
		ln7 => r7_q,
		ln8 => r8_q,
		ln9 => r9_q,
		ln10 => r10_q,
        ln11 => r11_q,
        ln12 => r12_q,
        ln13 => r13_q,
        ln14 => r14_q,
        ln15 => r15_q,
        ln16 => r16_q,
        ln17 => r17_q,
        ln18 => r18_q,
        ln19 => r19_q,
		ln20 => r20_q,
        ln21 => r21_q,
        ln22 => r22_q,
        ln23 => r23_q,
        ln24 => r24_q,
        ln25 => r25_q,
        ln26 => r26_q,
        ln27 => r27_q,
        ln28 => r28_q,
        ln29 => r29_q,
		ln30 => r30_q,
        ln31 => r31_q,
        		
		z => a
	);
	rb_mux: mux32to1 port map (
		s => b_select,
		ln0 => r0_q,
        ln1 => r1_q,
        ln2 => r2_q,
        ln3 => r3_q,
        ln4 => r4_q,
        ln5 => r5_q,
        ln6 => r6_q,
        ln7 => r7_q,
        ln8 => r8_q,
        ln9 => r9_q,
        ln10 => r10_q,
        ln11 => r11_q,
        ln12 => r12_q,
        ln13 => r13_q,
        ln14 => r14_q,
        ln15 => r15_q,
        ln16 => r16_q,
        ln17 => r17_q,
        ln18 => r18_q,
        ln19 => r19_q,
        ln20 => r20_q,
        ln21 => r21_q,
        ln22 => r22_q,
        ln23 => r23_q,
        ln24 => r24_q,
        ln25 => r25_q,
        ln26 => r26_q,
        ln27 => r27_q,
        ln28 => r28_q,
        ln29 => r29_q,
        ln30 => r30_q,
        ln31 => r31_q,
		z => b
	);
	
	r0 <= r0_q;
	r1 <= r1_q;
	r2 <= r2_q;
	r3 <= r3_q;
	r4 <= r4_q; 
	r5 <= r5_q;
	r6 <= r6_q;
	r7 <= r7_q;
	r8 <= r8_q;
	r9 <= r9_q;
	r10 <= r10_q;
    r11 <= r11_q;
    r12 <= r12_q;
    r13 <= r13_q;
    r14 <= r14_q; 
    r15 <= r15_q;
    r16 <= r16_q;
    r17 <= r17_q;
    r18 <= r18_q;
    r19 <= r19_q;
	r20 <= r20_q;
    r21 <= r21_q;
    r22 <= r22_q;
    r23 <= r23_q;
    r24 <= r24_q; 
    r25 <= r25_q;
    r26 <= r26_q;
    r27 <= r27_q;
    r28 <= r28_q;
    r29 <= r29_q;
	r30 <= r30_q;
    r31 <= r31_q;
	
end;