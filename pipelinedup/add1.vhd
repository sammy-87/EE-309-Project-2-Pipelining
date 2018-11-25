library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity add1 is
   port(alu_a: in std_logic_vector(15 downto 0);
		alu_out: out std_logic_vector(15 downto 0) );
end entity;

architecture Struct of add1 is

component Add is
   port(x,y: in std_logic_vector(15 downto 0);
	
	s0: out std_logic_vector(15 downto 0);
        c_out: out std_logic);
end component;

signal c_out: std_logic;

begin
	A1 : Add port map (x=>alu_a,y=>"0000000000000001",s0=>alu_out,c_out=>c_out);
end Struct;