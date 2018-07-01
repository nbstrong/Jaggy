------------------- Full-adder design entity -----------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
	port (a, b, carry_in : in std_logic;
		sum, carry_out: out std_logic);
end full_adder;

architecture structure of full_adder is
	signal s1, s2, s3 : std_logic; -- Signals to interconnect components
begin
	-- Each component instantion below is a concurrent statement
	ha1: entity work.half_adder port map (a => a, b => b, sum =>s1, carry_out => s2);
	ha2: entity work.half_adder port map (a => s1, b => carry_in, sum => sum,
		carry_out => s3);
	or1: entity work.or2 port map (a => s3, b => s2, or_out => carry_out);
end structure;