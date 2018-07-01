library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

-- Program Counter
-- This seems to be finished according to the datapath outlined in Ch 4.
-- Still not sure how the ALU comes into it, though...

entity prog_count is
	port (CLK : in std_logic;
		addrin: in std_logic_vector(31 downto 0);
		addrout: out std_logic_vector(31 downto 0);
		PCSrc : in std_logic -- Control Signal
	);
end prog_count;

architecture behavior of prog_count is
	signal address : std_logic_vector(31 downto 0) := X"00000000";
begin
	process(CLK)
	begin
		if rising_edge(CLK) then
			address <= (address + 4);
			if (PCSrc = '1') then
					-- Shift left by 2 and add to address
					address <= address + std_logic_vector(shift_left(unsigned(addrin), 2));
			end if;
		end if;
	end process;
	
	addrout <= address;	

end behavior;