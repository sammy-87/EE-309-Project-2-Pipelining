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
signal RAM : memarr := ("0001000000000010","0110000001011100","0001000000001000","0111000001011100", others => X"F000");
signal addr : std_logic_vector(4 downto 0);

begin

addr <= mem_a(4 downto 0);
mem_out <= RAM(to_integer(unsigned(addr)));

end structure;
	