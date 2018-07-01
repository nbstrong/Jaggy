library ieee;
use ieee.std_logic_1164.all;

entity tbhalfadd is
end tbhalfadd;

architecture behavior of tbhalfadd is
	-- Declare signals to assign values to and to observe
	signal a_tb, b_tb, sum_tb, carry_out_tb : std_logic;
begin
	-- Create an instance of the circuit to be tested
	uut: entity work.half_adder port map(a => a_tb, b => b_tb,
	sum => sum_tb, carry_out => carry_out_tb);

	-- Define a process to apply input stimulus and test outputs
	tb : process
	constant period: time := 20 ns;
		begin -- Apply every possible input combination
		
		a_tb <= '0'; --apply input combination 00 and check outputs
		b_tb <= '0';
		wait for period;
		assert ((sum_tb = '0') and (carry_out_tb = '0'))
		report "test failed for input combination 00" severity error;

		a_tb <= '0'; --apply input combination 01 and check outputs
		b_tb <= '1';
		wait for period;
		assert ((sum_tb = '1') and (carry_out_tb = '0'))
		report "test failed for input combination 01" severity error;

		a_tb <= '1'; --apply input combination 10 and check outputs
		b_tb <= '0';
		wait for period;
		assert ((sum_tb = '1') and (carry_out_tb = '0'))
		report "test failed for input combination 10" severity error;

		a_tb <= '1'; --apply input combination 11 and check outputs
		b_tb <= '1';
		wait for period;
		assert ((sum_tb = '0') and (carry_out_tb = '1'))
		report "test failed for input combination 11" severity error;

	wait; -- indefinitely suspend process
end process;
end;