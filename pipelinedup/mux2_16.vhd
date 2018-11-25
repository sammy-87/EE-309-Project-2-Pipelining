library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
  
entity mux2_16 is
   port(S0:in std_logic;
	D0,D1:in std_logic_vector(15 downto 0);
	Y:out std_logic_vector(15 downto 0));
end mux2_16;
  
architecture data of mux2_16 is
begin
 
mux_proc : process (S0, D0, D1) 
begin
	if S0 = '0' then
		Y <= D0;
	else
		Y <= D1;
	end if;
	
end process mux_proc;

end data;