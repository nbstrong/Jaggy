library ieee;
use ieee.std_logic_1164.all;

-- Reg File
entity reg_file is
	port (instrin, datain1, datain2 : in std_logic_vector(31 downto 0);
		dataout1, dataout2, memout: out std_logic_vector(31 downto 0));
end reg_file;

architecture struct of reg_file is
begin
end struct;