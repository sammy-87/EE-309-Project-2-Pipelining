library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
  
entity zerodetector is
   port(mem2d : in std_logic_vector(15 downto 0);
	Z :out std_logic);
end zerodetector;
  
architecture data of zerodetector is
begin
 
zd_proc : process (mem2d) 
	variable z_var : std_logic := '0';
begin
	if mem2d = "0000000000000000" then
		z_var := '1';
	else
		z_var := '0';
	end if;
	
	z<= z_var;
end process zd_proc;
end data;