library ieee;
use ieee.std_logic_1164.all;

-- Basic Half-Adder Example --

entity half_adderex is
	port(a, b: in std_logic;
		sum, carry_out: out std_logic);
end half_adderex;

-- Each architecture below does the same thing
-- but with different coding styles

-- Dataflow Styles --

architecture dataflow of half_adderex is
begin
	sum <= (not a and b) or (a and not b);
	carry_out <= a and b;
end dataflow;

architecture dataflow2 of half_adderex is
begin
	sum <= a xor b;
	carry_out <= a and b;
end dataflow2;

-- Behavioral Style --

architecture behavior of half_adderex is
begin
	ha: process(a, b)
	begin
		if a = '1' then
			sum <= not b;
			carry_out <= b;
		else
			sum <= b;
			carry_out <= '0';
		end if;
	end process ha;
end behavior;

-- Structural Style --
-- Uses multiple entities in a hierarchy

library ieee;
use ieee.std_logic_1164.all;

entity xor_2 is
	port(i1, i2: in std_logic;
		o1: out std_logic);
end xor_2;

architecture dataflow of xor_2 is
begin
	o1 <= i1 xor i2;
end dataflow;

library ieee;
use ieee.std_logic_1164.all;

entity and_2 is
	port(i1, i2: in std_logic;
		o1: out std_logic);
end and_2;

architecture dataflow of and_2 is
begin
	o1 <= i1 and i2;
end dataflow;

architecture structure of half_adderex is
begin
	u1: entity work.xor_2 port map(i1 => a, i2 => b, o1 => sum);
	-- u1: entity xor_2 port map(a, b, sum) 
	-- above, assigns port map based on signal position in entity declaration
	u2: entity work.and_2 port map(i1 => a, i2 => b, o1 => carry_out);
end structure;

-- Coding styles can be mixed for diff signals in the same architecture