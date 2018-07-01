library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

-- Instruction Memory
entity instr_mem is
	port (PC: in std_logic_vector(7 downto 0);
		instr: out std_logic_vector(31 downto 0)
	);
end instr_mem;

architecture struct of instr_mem is
	type mem_array is array (0 to 63)
		of std_logic_vector (31 downto 0);
	signal mem_s : mem_array;
begin
	instr <= mem_s(to_integer(unsigned(PC)));
end struct;

---   0 0x00 0b00000000 00000000_00000000_00000000_00000000
---   4 0x04 0b00000100 00000000_00000000_00000000_00000000
---   8 0x08 0b00001000 00000000_00000000_00000000_00000000
---  12 0x0c 0b00001100 00000000_00000000_00000000_00000000
---  16 0x10 0b00010000 00000000_00000000_00000000_00000000
---  20 0x14 0b00010100 00000000_00000000_00000000_00000000
---  24 0x18 0b00011000 00000000_00000000_00000000_00000000
---  28 0x1c 0b00011100 00000000_00000000_00000000_00000000
---  32 0x20 0b00100000 00000000_00000000_00000000_00000000
---  36 0x24 0b00100100 00000000_00000000_00000000_00000000
---  40 0x28 0b00101000 00000000_00000000_00000000_00000000
---  44 0x2c 0b00101100 00000000_00000000_00000000_00000000
---  48 0x30 0b00110000 00000000_00000000_00000000_00000000
---  52 0x34 0b00110100 00000000_00000000_00000000_00000000
---  56 0x38 0b00111000 00000000_00000000_00000000_00000000
---  60 0x3c 0b00111100 00000000_00000000_00000000_00000000
---  64 0x40 0b01000000 00000000_00000000_00000000_00000000
---  68 0x44 0b01000100 00000000_00000000_00000000_00000000
---  72 0x48 0b01001000 00000000_00000000_00000000_00000000
---  76 0x4c 0b01001100 00000000_00000000_00000000_00000000
---  80 0x50 0b01010000 00000000_00000000_00000000_00000000
---  84 0x54 0b01010100 00000000_00000000_00000000_00000000
---  88 0x58 0b01011000 00000000_00000000_00000000_00000000
---  92 0x5c 0b01011100 00000000_00000000_00000000_00000000
---  96 0x60 0b01100000 00000000_00000000_00000000_00000000
--- 100 0x64 0b01100100 00000000_00000000_00000000_00000000
--- 104 0x68 0b01101000 00000000_00000000_00000000_00000000
--- 108 0x6c 0b01101100 00000000_00000000_00000000_00000000
--- 112 0x70 0b01110000 00000000_00000000_00000000_00000000
--- 116 0x74 0b01110100 00000000_00000000_00000000_00000000
--- 120 0x78 0b01111000 00000000_00000000_00000000_00000000
--- 124 0x7c 0b01111100 00000000_00000000_00000000_00000000
--- 128 0x80 0b10000000 00000000_00000000_00000000_00000000
--- 132 0x84 0b10000100 00000000_00000000_00000000_00000000
--- 136 0x88 0b10001000 00000000_00000000_00000000_00000000
--- 140 0x8c 0b10001100 00000000_00000000_00000000_00000000
--- 144 0x90 0b10010000 00000000_00000000_00000000_00000000
--- 148 0x94 0b10010100 00000000_00000000_00000000_00000000
--- 152 0x98 0b10011000 00000000_00000000_00000000_00000000
--- 156 0x9c 0b10011100 00000000_00000000_00000000_00000000
--- 160 0xa0 0b10100000 00000000_00000000_00000000_00000000
--- 164 0xa4 0b10100100 00000000_00000000_00000000_00000000
--- 168 0xa8 0b10101000 00000000_00000000_00000000_00000000
--- 172 0xac 0b10101100 00000000_00000000_00000000_00000000
--- 176 0xb0 0b10110000 00000000_00000000_00000000_00000000
--- 180 0xb4 0b10110100 00000000_00000000_00000000_00000000
--- 184 0xb8 0b10111000 00000000_00000000_00000000_00000000
--- 188 0xbc 0b10111100 00000000_00000000_00000000_00000000
--- 192 0xc0 0b11000000 00000000_00000000_00000000_00000000
--- 196 0xc4 0b11000100 00000000_00000000_00000000_00000000
--- 200 0xc8 0b11001000 00000000_00000000_00000000_00000000
--- 204 0xcc 0b11001100 00000000_00000000_00000000_00000000
--- 208 0xd0 0b11010000 00000000_00000000_00000000_00000000
--- 212 0xd4 0b11010100 00000000_00000000_00000000_00000000
--- 216 0xd8 0b11011000 00000000_00000000_00000000_00000000
--- 220 0xdc 0b11011100 00000000_00000000_00000000_00000000
--- 224 0xe0 0b11100000 00000000_00000000_00000000_00000000
--- 228 0xe4 0b11100100 00000000_00000000_00000000_00000000
--- 232 0xe8 0b11101000 00000000_00000000_00000000_00000000
--- 236 0xec 0b11101100 00000000_00000000_00000000_00000000
--- 240 0xf0 0b11110000 00000000_00000000_00000000_00000000
--- 244 0xf4 0b11110100 00000000_00000000_00000000_00000000
--- 248 0xf8 0b11111000 00000000_00000000_00000000_00000000
--- 252 0xfc 0b11111100 00000000_00000000_00000000_00000000