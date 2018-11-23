library ieee;
use ieee.std_logic_1164.all;

entity  trfwrd is 
 port (pr3ir, pr4ir, pr5ir : in std_logic_vector(15 downto 0);
 		pr4c, pr4z, pr5c, pr5z, muxzout, pr4trfwr, pr5trfwr, c, z : in std_logic;
  		reset : in std_logic;
  		trfwr: out std_logic_vector(24 downto 0)); --controlsignal is the Enable signal
end trfwrd;

architecture WhatDoYouCare of trfwrd is
begin

process(reset, pr3ir, pr4c, pr4z, pr5c, pr5z, muxzout, pr5trfwr,  pr4trfwr, c, z, pr4ir, pr5ir)
	variable trfwr_var : std_logic := '0';

begin
	
	if (pr3ir(15 downto 12) = "0000" or pr3ir(15 downto 12) = "0010") and pr3ir(1 downto 0) = "10" then -- current instruction is ADC,NDC
		if (((pr4ir(15 downto 12) = "0000" or pr4ir(15 downto 12) = "0010") and pr4ir(1 downto 0) = "00") or pr4ir(15 downto 12) = "0001") or ( (pr4ir(15 downto 12) = "0000" or pr4ir(15 downto 12) = "0010") and (pr4ir(1 downto 0) = "01" or pr4ir(1 downto 0) = "10") and pr4trfwr = '1' ) then --prev is ADD,NDU,ADI,ADC,ADZ,NDC,NDZ (conditional being executed)
			if pr4c = '1' then
				trfwr_var := '1';
			end if;

		elsif  (((pr5ir(15 downto 12) = "0000" or pr5ir(15 downto 12) = "0010") and pr5ir(1 downto 0) = "00") or pr5ir(15 downto 12) = "0001") or ( (pr5ir(15 downto 12) = "0000" or pr5ir(15 downto 12) = "0010") and (pr5ir(1 downto 0) = "01" or pr5ir(1 downto 0) = "10") and pr5trfwr = '1' ) then -- p2p is ADD,NDU,ADI,ADC,ADZ,NDC,NDZ (conditional being executed)
			if pr5c = '1' then
				trfwr_var := '1';
			end if;

		else 
			if c ='1' then
				trfwr_var := '1';
			end if;
		end if;

	elsif (pr3ir(15 downto 12) = "0000" or pr3ir(15 downto 12) = "0010") and pr3ir(1 downto 0) = "01" then --current instruction is ADZ,NDZ
		if (((pr4ir(15 downto 12) = "0000" or pr4ir(15 downto 12) = "0010") and pr4ir(1 downto 0) = "00") or pr4ir(15 downto 12) = "0001") or ( (pr4ir(15 downto 12) = "0000" or pr4ir(15 downto 12) = "0010") and (pr4ir(1 downto 0) = "01" or pr4ir(1 downto 0) = "10") and pr4trfwr = '1' ) then --prev is ADD,NDU,ADI,ADC,ADZ,NDC,NDZ (conditional being executed)
			if pr4z = '1' then
				trfwr_var := '1';
			end if;

		elsif pr4ir(15 downto 12) = "0100" then  --prev instruction is LW
			if muxzout = '1' then
				trfwr_var := '1';
			end if;

		elsif  (((pr5ir(15 downto 12) = "0000" or pr5ir(15 downto 12) = "0010") and pr5ir(1 downto 0) = "00") or pr5ir(15 downto 12) = "0001") or ( (pr5ir(15 downto 12) = "0000" or pr5ir(15 downto 12) = "0010") and (pr5ir(1 downto 0) = "01" or pr5ir(1 downto 0) = "10") and pr5trfwr = '1' ) or (pr5ir(15 downto 12) = "0100") then -- p2p is ADD,NDU,ADI,ADC,ADZ,NDC,NDZ, LW (conditional being executed)
			if pr5z = '1' then
				trfwr_var := '1';
			end if;

		else 
			if z ='1' then
				trfwr_var := '1';
			end if;
		end if;

	end if;

end process;
end WhatDoYouCare;	

			
		