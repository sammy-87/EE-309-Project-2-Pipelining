library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
  
entity mux2_8 is
   port(pr1_en,pr2_en:in std_logic;
	D0,D1:in std_logic_vector(7 downto 0);
	pr2_ir: in std_logic_vector(15 downto 0);
	Y:out std_logic_vector(7 downto 0));
end mux2_8;
  
architecture data of mux2_8 is
begin
 
mux_proc : process (pr1_en,pr2_en,pr2_ir, D0, D1) 
begin
	if (pr1_en = '0') and (pr2_en = '0') and (pr2_ir(15 downto 13)="011") then
		Y <= D1;
	else
		Y <= D0;
	end if;
	
end process mux_proc;

end data;