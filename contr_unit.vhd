library ieee;
use ieee.std_logic_1164.all;

-- Control Unit
entity contr_unit is
	port (instr: in std_logic_vector(5 downto 0);
		RegDst, Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite : out std_logic;
		ALUOp : out std_logic_vector(5 downto 0));
end contr_unit;

architecture struct of contr_unit is
begin
end struct;