library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;

entity comp is
   port(alu_a, alu_b : in std_logic_vector(15 downto 0);
		tz : out std_logic );
end entity;

architecture Struct of comp is
signal temp : std_logic_vector(15 downto 0);
begin
	temp <= alu_a xor alu_b;
	tz <= not(or_reduce(temp));
end Struct;