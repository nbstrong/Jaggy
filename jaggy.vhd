library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

-- Processor
-- Mainly based off of Ch 4 in the CArch book

entity jaggy is
	port (CLK, pwr, instrin: in std_logic);
end jaggy;

architecture struct of jaggy is
	-- Signals to interconnect components
	signal a1, i1, i2, d1, d2, d3, d4, d5, t1 : std_logic_vector(31 downto 0);
	signal c1, c2, c3, c4, c6, c7, c8 : std_logic; -- control signals
	signal c5 : std_logic_vector(5 downto 0);
begin
	-- Entities will be instantiated here
	-- Program Counter
	pc: entity work.prog_count port map(CLK => CLK, addrout => a1, addrin => i2, PCSrc => c1); 
	-- Instruction Memory
	im: entity work.instr_mem port map(PC => a1(7 downto 0), instr => i1);
	-- Register File
	reg: entity work.reg_file port map(instrin => i1, dataout1 => d1, dataout2 => d2, memout => d3, datain1 => d4, datain2 => d5);
	-- ALU
	alu: entity work.arith_log_unit port map(datain1 => d1, datain2 => d2, dataout => d4);
	-- Data Memory
	dm: entity work.data_mem port map(addrin => d4(7 downto 0), datain => d3, dataout => d5, MemRead => c3, MemWrite => c6, MemtoReg => c4);
	
	i2 <= std_logic_vector(resize(signed(i1(15 downto 0)),32));

	-- Control Unit
	cu: entity work.contr_unit port map(instr => i1(31 downto 26), RegDst => c1, Branch => c2, MemRead => c3, MemtoReg => c4, ALUOp => c5, MemWrite => c6, ALUSrc => c7, RegWrite => c8);

end struct;