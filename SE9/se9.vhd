library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity SE9 is
   port(ip: in std_logic_vector(8 downto 0);
			op: out std_logic_vector(15 downto 0));
end entity;

architecture Struct of SE9 is

begin
	op(8 downto 0) <= ip(8 downto 0);
	op(9) <= ip(8);
	op(10) <= ip(8);
	op(11) <= ip(8);
	op(12) <= ip(8);
	op(13) <= ip(8);
	op(14) <= ip(8);
	op(15) <= ip(8);
	
end Struct;