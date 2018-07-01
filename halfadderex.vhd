library ieee;
use ieee.std_logic_1164.all;

-- Basic Half-Adder Example --
-- Separate file to learn testbenchex.vhd --

entity half_addertb is
	port(a, b: in std_logic;
		sum, carry_out: out std_logic);
end half_addertb;

architecture dataflow of half_addertb is
begin
	sum <= (not a and b) or (a and not b);
	carry_out <= a and b;
end dataflow;