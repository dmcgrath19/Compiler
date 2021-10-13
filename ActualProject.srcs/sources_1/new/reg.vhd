library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg is
	port(
		reset, load, clock :	in	std_logic;
		data :					in	std_logic_vector(31 downto 0);
		q :						out	std_logic_vector(31 downto 0)
	);
end reg;

architecture behavioral of reg is
begin
	process(reset, clock) begin
		if reset = '1' then
			q <= x"00000000" after 1 ns;
		elsif (rising_edge(clock)) then
			if load = '1' then
				q <= data after 1 ns;
			end if;
		end if;
	end process;
end behavioral;