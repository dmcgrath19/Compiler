library ieee;
use ieee.std_logic_1164.all;

entity reg_tb is
end reg_tb;

architecture behavior of reg_tb is
	component reg
	port(
		reset, load, clock :	in	std_logic;
		data :					in	std_logic_vector(31 downto 0);
		q :						out	std_logic_vector(31 downto 0)
	);
	end component;

	signal reset, load, clock :	std_logic := '0';
	signal data :				std_logic_vector(31 downto 0);
	signal q :					std_logic_vector(31 downto 0);
begin
	uut: reg port map (
		reset => reset,
		load => load,
		clock => clock,
		data => data,
		q => q
	);

	clock_proc: process
	begin
		wait for 10 ns;
		clock <= not clock;
	end process;
	sim_proc: process
	begin
		reset <= '1';
		wait for 20 ns;
		reset <= '0';
		wait for 20 ns;

		data <= x"12223458";
		load <= '1';
		wait for 20 ns;

		data <= x"12343212";
		load <= '0';
		wait for 20 ns;

		data <= x"0002345A";
		load <= '1';
		wait for 20 ns;

		load <= '0';
		wait for 20 ns;

		reset <= '1';
		wait for 20 ns;

	end process;
end;