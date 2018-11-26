library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity datamem is 
	port(
		 mem_d   : in std_logic_vector(15 DOWNTO 0);
		 mem_a   : in std_logic_vector(15 downto 0);
		 rd_bar  : in std_logic; -- read enable.
		 wr_bar  : in std_logic; -- write enable
		 rst : in std_logic; -- clear.
		 clk : in std_logic; -- clock.
		 mem_out : out std_logic_vector(15 DOWNTO 0)); -- output
end datamem;

architecture structure of datamem is 


type memarr is array(0 to 31) of std_logic_vector(15 downto 0);
signal RAM : memarr := (others => (X"F000"));
signal addr : std_logic_vector(4 downto 0);


begin

addr <= mem_a(4 downto 0);

	mem_proc : process(rst, wr_bar, rd_bar, clk, addr, RAM)

		begin
				
			if rd_bar = '0' then
				mem_out <= RAM(to_integer(unsigned(addr)));
		
			elsif rising_edge (clk) then
				
				if wr_bar ='0' then
					RAM(to_integer(unsigned(addr))) <= mem_d;
					mem_out <= (others => '0');
				end if;
				
			end if;	
					
	end process mem_proc;

end structure;
