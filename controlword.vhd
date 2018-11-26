library ieee;
use ieee.std_logic_1164.all;

entity  controlword is 
 port (ir : in std_logic_vector(15 downto 0);
  		reset : in std_logic;
  		Q: out std_logic_vector(24 downto 0)); --controlsignal is the Enable signal
end  controlword;

architecture WhatDoYouCare of controlword is
begin

process(reset, ir)
	variable control_variable :  std_logic_vector(24 DOWNTO 0) := (others => '0');
begin
	

	if ir(15 downto 12) = "0000" then
		control_variable := (others => '0'); 
		control_variable(8) := '1';
		control_variable(7) := '1';
		control_variable(5) := '1';
		control_variable(2) := '1';
		control_variable(1) := '1';
		control_variable(0) := '1';

	elsif ir(15 downto 12) = "0001" then
		control_variable := (others => '0');	
		control_variable(13) := '1';
		control_variable(8) := '1';
		control_variable(7) := '1';
		control_variable(5) := '1';
		control_variable(4) := '1';
		control_variable(2) := '1';
		control_variable(1) := '1';
		control_variable(0) := '1';

	elsif ir(15 downto 12) = "0010" then
		control_variable := (others => '0');
		control_variable(11) := '1';
		control_variable(8) := '1';
		control_variable(7) := '1';
		control_variable(5) := '1';
		control_variable(2) := '1';
		control_variable(0) := '1';
	
	elsif ir(15 downto 12) = "0011" then
		control_variable := (others => '0');
		control_variable(8) := '1';
		control_variable(7) := '1';
		control_variable(6) := '1';
		control_variable(3) := '1';
		control_variable(2) := '1';		

	elsif ir(15 downto 12) = "0100" then
		control_variable := (others => '0');
		control_variable(14) := '1';
		control_variable(13) := '1';
		control_variable(9) := '1';
		control_variable(7) := '1';
		control_variable(3) := '1';
		control_variable(2) := '1';
		control_variable(0) := '1';

	elsif ir(15 downto 12) = "0101" then
		control_variable := (others => '0');
		control_variable(14) := '1';
		control_variable(13) := '1';
		control_variable(8) := '1';

	elsif ir(15 downto 12) = "0110" then
		control_variable := (others => '0');
		control_variable(10) := '1';
		control_variable(7) := '1';
		control_variable(4) := '1';
		control_variable(3) := '1';
		control_variable(2) := '1';

	elsif ir(15 downto 12) = "0111" then
		control_variable := (others => '0');
		control_variable(22) := '1';
		control_variable(10) := '1';
		control_variable(8) := '1';

	elsif ir(15 downto 12) = "1100" then
		control_variable := (others => '0');
		control_variable(15) := '1';
		control_variable(13) := '1';
		control_variable(8) := '1';
		control_variable(7) := '1';

	elsif ir(15 downto 12) = "1000" then
		control_variable := (others => '0');
		control_variable(15) := '1';
		control_variable(12) := '1';
		control_variable(8) := '1';
		control_variable(7) := '1';
		control_variable(5) := '1';
		control_variable(6) := '1';
		control_variable(3) := '1';
		control_variable(2) := '1';

	elsif ir(15 downto 12) = "1001" then
		control_variable := (others => '0');
		control_variable(8) := '1';
		control_variable(7) := '1';
		control_variable(5) := '1';
		control_variable(6) := '1';
		control_variable(3) := '1';
		control_variable(2) := '1';

	else
		control_variable := (others => '0');
		control_variable(8) := '1';
		control_variable(7) := '1';

	end if;


	Q <= control_variable;


end process;
end WhatDoYouCare;