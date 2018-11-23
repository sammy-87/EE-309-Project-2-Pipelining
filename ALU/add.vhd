library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity Add is
   port(x,y: in std_logic_vector(15 downto 0);
	
	s0: out std_logic_vector(15 downto 0);
        c_out: out std_logic);
end entity;

architecture Struct of Add is

component FullAdder is
   port(x0,y0,cin: in std_logic;
        s0,cout: out std_logic);
end component;

signal c: std_logic_vector(15 downto 0);

begin

F0:  FullAdder port map (x0=>x(0),y0=>y(0),cin=>'0',s0=>s0(0),cout=>c(0));

ist_add: for i in 1 to 15 generate
F1:  FullAdder port map (x0=>x(i),y0=>y(i),cin=>c(i-1),s0=>s0(i),cout=>c(i));
end generate ist_add;
c_out<=c(15);

end Struct;
