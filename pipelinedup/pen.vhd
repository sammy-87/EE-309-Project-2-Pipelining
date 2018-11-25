library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity PEN is 
	port (penin: in std_logic_vector(7 downto 0);
			pennext: out std_logic_vector(7 downto 0);
			penout: out std_logic_vector(2 downto 0));
end entity;

architecture behave of PEN is


begin 

	--tp <= not(penin(0) or penin(1) or penin(2) or penin(3) or penin(4) or penin(5) or penin(6) or penin(7));

	proc_pen : process(penin)
	
		variable next_var : std_logic_vector(7 downto 0);
	
	begin
		
		if (penin(0) = '1') then 
			penout <= "000";
			next_var := ("11111110" and penin);
		elsif (penin(1) = '1') then 
			penout <= "001";
			next_var := ("11111100" and penin);
		elsif (penin(2) = '1') then 
			penout <= "010";
			next_var := ("11111000" and penin);
		elsif (penin(3) = '1') then 
			penout <= "011";
			next_var := ("11110000" and penin);
		elsif (penin(4) = '1') then 
			penout <= "100";
			next_var := ("11100000" and penin);
		elsif (penin(5) = '1') then 
			penout <= "101";
			next_var := ("11000000" and penin);
		elsif (penin(6) = '1') then 
			penout <= "110";
			next_var := ("10000000" and penin);
		else
			penout <= "111";
			next_var := ("00000000" and penin);
		end if;
			
		pennext <= next_var;

	end process proc_pen;

end behave;