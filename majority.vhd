library ieee;
use ieee.std_logic_1164.all;

entity majority is
	port(x1, x2, x3: in std_logic;
		f: out std_logic);
end majority;

architecture logicfun of majority is
begin
	f <= (x1 and x2) or (x1 and x3) or (x2 and x3);
end logicfun;