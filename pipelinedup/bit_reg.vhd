library ieee;
use ieee.std_logic_1164.all;

entity  bit_reg is 
 port (D, CLK ,reset, controlsignal : in std_logic; Q: out std_logic); --controlsignal is the Enable signal
end  bit_reg;

architecture WhatDoYouCare of bit_reg is
signal temp_Q: std_logic;
begin

process(clk, reset, controlsignal, D)

begin
if(reset='1') then
	Q<='0';
elsif(CLK'event and (CLK = '1')) then
	if(controlsignal = '1') then
		Q<=D;
	end if;
end if;
end process;
end WhatDoYouCare;