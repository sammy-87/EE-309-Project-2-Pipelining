library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity codemem is 
	port(
		 mem_a   : in std_logic_vector(15 downto 0);
		 mem_out : out std_logic_vector(15 DOWNTO 0)); -- output
end codemem;

architecture structure of codemem is 


type memarr is array(0 to 31) of std_logic_vector(15 downto 0);
signal RAM : memarr := ("0100000001000000","0001010010000001","0001110110000001","0000001010011000","0101010101000001","0100001101000001","0101011101000001","0100010101000001","1100000110000010","1000100111111001","0101010101000010","1000111000000000", others => X"F000");
signal addr : std_logic_vector(4 downto 0);

begin

addr <= mem_a(4 downto 0);
mem_out <= RAM(to_integer(unsigned(addr)));

end structure;
	