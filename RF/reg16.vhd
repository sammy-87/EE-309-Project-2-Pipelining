library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity Reg16 is 
	port(
		 d   : inout std_logic_vector(15 DOWNTO 0);
		 en  : in std_logic; -- load/enable.
		 rst : in std_logic; -- async. clear.
		 clk : in std_logic; -- clock.
		 q   : inout std_logic_vector(15 DOWNTO 0)); -- output
end Reg16;

architecture description of Reg16 is

begin
    process(clk, rst)
    begin
        if rst = '1' then
            q <= "0000000000000000";
        elsif rising_edge(clk) then
            if en = '1' then
                q <= d;
            end if;
        end if;
    end process;
end description;