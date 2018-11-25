library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity FullAdder is
   port(x0,y0,cin: in std_logic;
        s0,cout: out std_logic);
end entity;
architecture Struct of FullAdder is
begin
   s0 <= (x0 xor y0 xor cin) ;
	cout <= ((x0 and y0) or (x0 and cin) or (y0 and cin));
end Struct;