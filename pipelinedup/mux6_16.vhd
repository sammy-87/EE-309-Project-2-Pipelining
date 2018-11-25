library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
  
entity mux6_16 is
   port(S0,S1,S2:in std_logic;    --S2 is MSB
	D0,D1,D2,D3,D4,D5:in std_logic_vector(15 downto 0);
	Y:out std_logic_vector(15 downto 0));
end mux6_16;
  
architecture data of mux6_16 is
begin
 
mux_proc : process (S0, S1, S2, D0, D1, D2, D3, D4, D5) 
begin
	if S2 = '0' then
		if S1 = '0' then
			if S0 = '0' then
				Y <= D0;
			else
				Y <= D1;
			end if;
		else 
			if S0 = '0' then
				Y <= D2;
			else
				Y <= D3;
			end if;
		end if;
	else
		if S1 = '0' then
			if S0 = '0' then
				Y <= D4;
			else
				Y <= D5;
			end if;
		else 
			if S0 = '0' then
				Y <= "0000000000000000";
			else
				Y <= "0000000000000000";
			end if;
		end if;
	end if;
	
end process mux_proc;

end data;