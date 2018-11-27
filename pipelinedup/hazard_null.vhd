library ieee;
use ieee.std_logic_1164.all;

entity  hazard_null is 
 port ( pr2ir : in std_logic_vector(15 downto 0);
 		pr3ir : in std_logic_vector(15 downto 0);
 		pr4ir,pr5ir : in std_logic_vector(15 downto 0);
 		pr2invalid, pr3invalid, pr4invalid, pr5invalid : in std_logic;
 		trfwr, pr3tz,pr3pentz,pr4pentz : in std_logic;
 		pr4trfwr : in std_logic;

 		--pr5ir : in std_logic_vector(15 downto 0);
 		reset : in std_logic;
 		controlword : in std_logic_vector(24 downto 0);
 		Q: out std_logic_vector(24 downto 0);
 		pr1en, pr2en, pcen,penen,t1en, pr1invalid_o, pr2invalid_o, pr3invalid_o, pr4invalid_o, pr5invalid_o : out std_logic); --controlsignal is the Enable signal
end  hazard_null;

architecture WhatDoYouCare of hazard_null is
begin

process(reset, pr2ir, pr3ir, pr4ir,pr5ir, trfwr, pr4trfwr, pr3pentz,pr4pentz,pr3invalid, pr4invalid, pr5invalid, controlword, pr3tz, pr2invalid)
	variable temp_control_variable :  std_logic_vector(24 DOWNTO 0) := (others => '0');
	variable pr1en_var : std_logic := '1';
	variable pr2en_var : std_logic := '1';
	variable pcen_var : std_logic := '1';
	variable penen_var : std_logic := '1';
	variable t1en_var : std_logic := '1';
	variable pr1invalid_o_var : std_logic := '0';
	variable pr2invalid_o_var : std_logic := '0';
	variable pr3invalid_o_var : std_logic := '0';
	variable pr4invalid_o_var : std_logic := '0';
	variable pr5invalid_o_var : std_logic := '0';
	
begin
		pr4invalid_o_var := '0';
		pr5invalid_o_var := '0';
		penen_var := '1';
		t1en_var := '1';
		
	if pr2ir(15 downto 12) = "0011" or pr2ir(15 downto 12) = "1000" then --current instruction is LHI,JAL (require no operand - so no hazard)
		temp_control_variable := controlword;
		pr1en_var := '1';
		pr2en_var := '1';
		pcen_var  := '1';
		pr1invalid_o_var := '0';
		pr2invalid_o_var := '0';
		pr3invalid_o_var := '0';

	elsif pr2ir(15 downto 12) = "0001" or pr2ir(15 downto 13) = "011" then -- current instruction is ADI,LM,SM (require ra as operand)
		temp_control_variable:=controlword;
		pr1en_var := '1';
		pr2en_var := '1';
		pcen_var := '1';
		pr1invalid_o_var := '0';
		pr2invalid_o_var := '0';
		pr3invalid_o_var := '0';


		if pr2ir(15 downto 13) = "011" then --if current instruction is LM/SM
			pr1invalid_o_var := '0';
			pr2invalid_o_var := '0';
			pr3invalid_o_var := '0';

			if pr2ir(15 downto 12) = "0111" then

				if not(pr3ir(15 downto 12) = "0111" and pr4ir(15 downto 12) = "0111" and pr5ir(15 downto 12) = "0111") then
					pr1en_var := '0';
					pr2en_var := '0';
					pcen_var := '0';
					pr3invalid_o_var := '1';
					t1en_var := '0';
					penen_var := '0';

				elsif pr3ir(15 downto 12) = "0111" and pr4ir(15 downto 12) = "0111" and pr5ir(15 downto 12) = "0111" and pr3invalid = '1' and pr4invalid = '1' and pr5invalid ='1' then
					pr3invalid_o_var := '0';
					t1en_var := '1';
					penen_var := '1';					
				end if ;

			end if ;

			if (pr3pentz='1' and pr4pentz='1') and (pr3ir(15 downto 13) = "011") and pr2ir(12) = pr3ir(12) and (pr4ir(15 downto 13) = "011")  then  --end of LM/SM - destall pr1, pr2, enable pc
				pr1en_var := '1';
				pr2en_var := '1';
				pcen_var := '1';
				temp_control_variable(24 downto 23) := "00";
			   pr4invalid_o_var := '1';
			   pr3invalid_o_var := '1';
			else --stall pr2, pr1, disable pc, change inputs of T1 and PENreg
				pr1en_var := '0';
				pr2en_var := '0';
						pcen_var := '0';
				temp_control_variable(24 downto 23) := "11";
			end if;
		end if;

		if (pr3ir(15 downto 12) = "0000" or pr3ir(15 downto 12) = "0010") and pr3ir(2 downto 0) = "000" and (pr3invalid = '0') and (pr2ir(11 downto 9) = pr3ir(5 downto 3)) then  -- previous instruction is ADD,NDU 
			temp_control_variable(21 downto 16) := "001000"; --take operand from alu2out

		elsif pr3ir(15 downto 12) = "0001" and pr3invalid = '0' and pr2ir(11 downto 9) = pr3ir(8 downto 6) then -- previous instruction is ADI
			temp_control_variable(21 downto 16) := "001000"; --operand from alu2out

		elsif pr3ir(15 downto 12) = "0011" and pr3invalid = '0' and pr2ir(11 downto 9) = pr3ir(11 downto 9) then --previous instr is LHI
			temp_control_variable(21 downto 16) := "100000"; -- operand from 7S

		elsif (pr3ir(15 downto 12) = "0000" or pr3ir(15 downto 12) = "0010" ) and ( pr3ir(1 downto 0) = "10" or pr3ir(1 downto 0) = "01" ) and pr3invalid = '0' and pr2ir(11 downto 9) = pr3ir(5 downto 3) and trfwr ='1' then -- previous instruction is ADC,ADZ,NDC,NDZ, which are going to be executed	
			temp_control_variable(21 downto 16) := "001000";
				

		elsif pr3ir(15 downto 12) = "0100" and pr3invalid = '0' and pr2ir(11 downto 9) = pr3ir(11 downto 9) then --previous instr is LW -  stall pr1 & pr2, invalidate pr3, disable pc
			pr1en_var := '0';
			pr2en_var := '0';
			pr3invalid_o_var := '1';
			pcen_var := '0';
			pr1invalid_o_var := '0';
			pr2invalid_o_var := '0';
		

		elsif pr3invalid = '1' and pr4ir(15 downto 12) = "0100" then --previous is invalid and p2p is LW, then destall pr1, pr2, enable pc. Fetch operand from mem2d
			pr1en_var := '1';
			pr2en_var := '1';
			pcen_var := '1';
			pr1invalid_o_var := '0';
			pr2invalid_o_var := '0';
			pr3invalid_o_var := '0';

			temp_control_variable(21 downto 16):= "010000";
		
		else
			if (pr4ir(15 downto 12) = "0000" or pr4ir(15 downto 12) = "0010") and pr4ir(2 downto 0) = "000" and pr4invalid = '0' and pr2ir(11 downto 9) = pr4ir(5 downto 3) then --p2p is ADD, NDU 
				temp_control_variable(21 downto 16) := "011000"; -- take operand from pr4a
					
			elsif pr4ir(15 downto 12) = "0001" and pr4invalid = '0' and pr2ir(11 downto 9) = pr4ir(8 downto 6) then -- p2p instruction is ADI
				temp_control_variable(21 downto 16) := "011000"; --operand from pr4a

			elsif pr4ir(15 downto 12) = "0011" and pr4invalid = '0' and pr2ir(11 downto 9) = pr4ir(11 downto 9) then --p2p instr is LHI
				temp_control_variable(21 downto 16) := "101000"; -- operand from pr47S
			
			elsif pr4ir(15 downto 12) = "0100" and pr4invalid = '0' and pr2ir(11 downto 9) = pr4ir(11 downto 9) then --p2p is LW
				temp_control_variable(21 downto 16) := "010000";  -- operand from mem2d

			elsif ( pr4ir(15 downto 12) = "0000" or pr4ir(15 downto 12) = "0010" ) and ( pr4ir(1 downto 0) = "10" or pr4ir(1 downto 0) = "01" ) and pr4invalid = '0' and pr2ir(11 downto 9) = pr4ir(5 downto 3) and pr4trfwr = '1' then -- p2p instruction id ADC,ADZ,NDC,NDZ, which are going to be exexuted
				temp_control_variable(21 downto 16) := "011000";   --take from pr4a, else take from RF as usual
			end if ;
		end if;

	elsif pr2ir(15 downto 12) = "1001" or pr2ir(15 downto 12) = "0100" then -- current instruction is LW, JLR
		temp_control_variable:=controlword;
		pr1en_var := '1';
		pr2en_var := '1';
		pcen_var := '1';
		pr1invalid_o_var := '0';
		pr2invalid_o_var := '0';
		pr3invalid_o_var := '0';


		if (pr3ir(15 downto 12) = "0000" or pr3ir(15 downto 12) = "0010") and pr3ir(2 downto 0) = "000" and pr3invalid = '0' and pr2ir(8 downto 6) = pr3ir(5 downto 3) then  -- previous instruction is ADD,NDU 
			temp_control_variable(21 downto 16) := "000001"; --operand from alu2out

		elsif pr3ir(15 downto 12) = "0001" and pr3invalid = '0' and pr2ir(8 downto 6) = pr3ir(8 downto 6) then -- previous instruction is ADI
			temp_control_variable(21 downto 16) := "000001"; --operand from alu2out

		elsif pr3ir(15 downto 12) = "0011" and pr3invalid = '0' and pr2ir(8 downto 6) = pr3ir(11 downto 9) then --previous instr is LHI
			temp_control_variable(21 downto 16) := "000100"; -- operand from 7S

		elsif (pr3ir(15 downto 12) = "0000" or pr3ir(15 downto 12) = "0010" ) and ( pr3ir(1 downto 0) = "10" or pr3ir(1 downto 0) = "01" ) and pr3invalid = '0' and pr2ir(8 downto 6) = pr3ir(5 downto 3) and trfwr ='1' then -- previous instruction is ADC,ADZ,NDC,NDZ, which are going to be executed	
			temp_control_variable(21 downto 16) := "000001";

		elsif pr3ir(15 downto 12) = "0100" and pr3invalid = '0' and pr2ir(8 downto 6) = pr3ir(11 downto 9) then --previous instr is LW --stall pr1 & pr2, invalidate pr3, disable pc
			pr1en_var := '0';
			pr2en_var := '0';
			pr3invalid_o_var := '1';
			pcen_var := '0';
			pr1invalid_o_var := '0';
			pr2invalid_o_var := '0';


		elsif pr3invalid = '1' and pr4ir(15 downto 12) = "0100" then --previous is invalid and p2p is LW, then destall pr1, pr2, enable pc. Fetch operand from mem2d
			pr1en_var := '1';
			pr2en_var := '1';
			pcen_var := '1';
			pr1invalid_o_var := '0';
			pr2invalid_o_var := '0';
			pr3invalid_o_var := '0';
			temp_control_variable(21 downto 16):= "000010";
		
		else
			if (pr4ir(15 downto 12) = "0000" or pr4ir(15 downto 12) = "0010") and pr4ir(2 downto 0) = "000" and pr4invalid = '0' and pr2ir(8 downto 6) = pr4ir(5 downto 3) then --p2p is ADD, NDU
				temp_control_variable(21 downto 16) := "000011"; --operand from pr4a
					
			elsif pr4ir(15 downto 12) = "0001" and pr4invalid = '0' and pr2ir(8 downto 6) = pr4ir(8 downto 6) then -- p2p instruction is ADI
				temp_control_variable(21 downto 16) := "000011"; --operand from pr4a

			elsif pr4ir(15 downto 12) = "0011" and pr4invalid = '0' and pr2ir(8 downto 6) = pr4ir(11 downto 9) then --p2p instr is LHI
				temp_control_variable(21 downto 16) := "000101"; -- operand from pr47S
			
			elsif pr4ir(15 downto 12) = "0100" and pr4invalid = '0' and pr2ir(8 downto 6) = pr4ir(11 downto 9) then --p2p is LW
				temp_control_variable(21 downto 16) := "000010";  -- operand from mem2d

			elsif ( pr4ir(15 downto 12) = "0000" or pr4ir(15 downto 12) = "0010" ) and ( pr4ir(1 downto 0) = "10" or pr4ir(1 downto 0) = "01" ) and pr4invalid = '0' and pr2ir(8 downto 6) = pr4ir(5 downto 3) and pr4trfwr = '1' then -- p2p instruction id ADC,ADZ,NDC,NDZ, which are going to be executed
				temp_control_variable(21 downto 16) := "000011";   --take from pr4a, else take from RF as usual

			end if ;
		end if;
		
	else   -- Current instructions have two operands - ADD, ADC, ADZ, NDU, NDC, NDZ, BEQ, SW
		temp_control_variable:=controlword;
		pr1en_var := '1';
		pr2en_var := '1';
		pcen_var := '1';
		pr1invalid_o_var := '0';
		pr2invalid_o_var := '0';
		pr3invalid_o_var := '0';

		if (pr3ir(15 downto 12) = "0000" or pr3ir(15 downto 12) = "0010") and pr3ir(2 downto 0) = "000" and (pr3invalid = '0') and (pr2ir(11 downto 9) = pr3ir(5 downto 3)) then  -- previous instruction is ADD,NDU 
			temp_control_variable(21 downto 19) := "001"; --take operand from alu2out

		elsif pr3ir(15 downto 12) = "0001" and pr3invalid = '0' and pr2ir(11 downto 9) = pr3ir(8 downto 6) then -- previous instruction is ADI
			temp_control_variable(21 downto 19) := "001"; --operand from alu2out

		elsif pr3ir(15 downto 12) = "0011" and pr3invalid = '0' and pr2ir(11 downto 9) = pr3ir(11 downto 9) then --previous instr is LHI
			temp_control_variable(21 downto 19) := "100"; -- operand from pr37S

		elsif (pr3ir(15 downto 12) = "0000" or pr3ir(15 downto 12) = "0010" ) and ( pr3ir(1 downto 0) = "10" or pr3ir(1 downto 0) = "01" ) and pr3invalid = '0' and pr2ir(11 downto 9) = pr3ir(5 downto 3) and trfwr ='1' then -- previous instruction is ADC,ADZ,NDC,NDZ, which are going to be executed	
			temp_control_variable(21 downto 19) := "001";
				

		elsif pr3ir(15 downto 12) = "0100" and pr3invalid = '0' and pr2ir(11 downto 9) = pr3ir(11 downto 9) then --previous instr is LW -  stall pr1 & pr2, invalidate pr3, disable pc
			pr1en_var := '0';
			pr2en_var := '0';
			pr3invalid_o_var := '1';
			pcen_var := '0';
			pr1invalid_o_var := '0';
			pr2invalid_o_var := '0';
		

		elsif pr3invalid = '1' and pr4ir(15 downto 12) = "0100" and pr2ir(11 downto 9) = pr4ir(11 downto 9) then --previous is invalid and p2p is LW, then destall pr1, pr2, enable pc. Fetch operand from mem2d
			pr1en_var := '1';
			pr2en_var := '1';
			pcen_var := '1';
			pr1invalid_o_var := '0';
			pr2invalid_o_var := '0';
			pr3invalid_o_var := '0';

			temp_control_variable(21 downto 19):= "010";
		
		else
			if (pr4ir(15 downto 12) = "0000" or pr4ir(15 downto 12) = "0010") and pr4ir(2 downto 0) = "000" and pr4invalid = '0' and pr2ir(11 downto 9) = pr4ir(5 downto 3) then --p2p is ADD, NDU 
				temp_control_variable(21 downto 19) := "011"; -- take operand from pr4a
					
			elsif pr4ir(15 downto 12) = "0001" and pr4invalid = '0' and pr2ir(11 downto 9) = pr4ir(8 downto 6) then -- p2p instruction is ADI
				temp_control_variable(21 downto 19) := "011"; --operand from pr4a

			elsif pr4ir(15 downto 12) = "0011" and pr4invalid = '0' and pr2ir(11 downto 9) = pr4ir(11 downto 9) then --p2p instr is LHI
				temp_control_variable(21 downto 19) := "101"; -- operand from pr47S
			
			elsif pr4ir(15 downto 12) = "0100" and pr4invalid = '0' and pr2ir(11 downto 9) = pr4ir(11 downto 9) then --p2p is LW
				temp_control_variable(21 downto 19) := "010";  -- operand from mem2d

			elsif ( pr4ir(15 downto 12) = "0000" or pr4ir(15 downto 12) = "0010" ) and ( pr4ir(1 downto 0) = "10" or pr4ir(1 downto 0) = "01" ) and pr4invalid = '0' and pr2ir(11 downto 9) = pr4ir(5 downto 3) and pr4trfwr = '1' then -- p2p instruction id ADC,ADZ,NDC,NDZ, which are going to be exexuted
				temp_control_variable(21 downto 19) := "011";   --take from pr4a, else take from RF as usual
			end if ;
		end if;

		-------------------

		if (pr3ir(15 downto 12) = "0000" or pr3ir(15 downto 12) = "0010") and pr3ir(2 downto 0) = "000" and pr3invalid = '0' and pr2ir(8 downto 6) = pr3ir(5 downto 3) then  -- previous instruction is ADD,NDU 
			temp_control_variable(18 downto 16) := "001"; --operand from alu2out

		elsif pr3ir(15 downto 12) = "0001" and pr3invalid = '0' and pr2ir(8 downto 6) = pr3ir(8 downto 6) then -- previous instruction is ADI
			temp_control_variable(18 downto 16) := "001"; --operand from alu2out

		elsif pr3ir(15 downto 12) = "0011" and pr3invalid = '0' and pr2ir(8 downto 6) = pr3ir(11 downto 9) then --previous instr is LHI
			temp_control_variable(18 downto 16) := "100"; -- operand from pr37S

		elsif (pr3ir(15 downto 12) = "0000" or pr3ir(15 downto 12) = "0010" ) and ( pr3ir(1 downto 0) = "10" or pr3ir(1 downto 0) = "01" ) and pr3invalid = '0' and pr2ir(8 downto 6) = pr3ir(5 downto 3) and trfwr ='1' then -- previous instruction is ADC,ADZ,NDC,NDZ, which are going to be executed	
			temp_control_variable(18 downto 16) := "001";

		elsif pr3ir(15 downto 12) = "0100" and pr3invalid = '0' and pr2ir(8 downto 6) = pr3ir(11 downto 9) then --previous instr is LW --stall pr1 & pr2, invalidate pr3, disable pc
			pr1en_var := '0';
			pr2en_var := '0';
			pr3invalid_o_var := '1';
			pcen_var := '0';
			pr1invalid_o_var := '0';
			pr2invalid_o_var := '0';


		elsif pr3invalid = '1' and pr4ir(15 downto 12) = "0100" and pr2ir(8 downto 6) = pr4ir(11 downto 9) then --previous is invalid and p2p is LW, then destall pr1, pr2, enable pc. Fetch operand from mem2d
			pr1en_var := '1';
			pr2en_var := '1';
			pcen_var := '1';
			pr1invalid_o_var := '0';
			pr2invalid_o_var := '0';
			pr3invalid_o_var := '0';
			temp_control_variable(18 downto 16):= "010";
		
		else
			if (pr4ir(15 downto 12) = "0000" or pr4ir(15 downto 12) = "0010") and pr4ir(2 downto 0) = "000" and pr4invalid = '0' and pr2ir(8 downto 6) = pr4ir(5 downto 3) then --p2p is ADD, NDU
				temp_control_variable(18 downto 16) := "011"; --operand from pr4a
					
			elsif pr4ir(15 downto 12) = "0001" and pr4invalid = '0' and pr2ir(8 downto 6) = pr4ir(8 downto 6) then -- p2p instruction is ADI
				temp_control_variable(18 downto 16) := "011"; --operand from pr4a

			elsif pr4ir(15 downto 12) = "0011" and pr4invalid = '0' and pr2ir(8 downto 6) = pr4ir(11 downto 9) then --p2p instr is LHI
				temp_control_variable(18 downto 16) := "101"; -- operand from pr47S
			
			elsif pr4ir(15 downto 12) = "0100" and pr4invalid = '0' and pr2ir(8 downto 6) = pr4ir(11 downto 9) then --p2p is LW
				temp_control_variable(18 downto 16) := "010";  -- operand from mem2d

			elsif ( pr4ir(15 downto 12) = "0000" or pr4ir(15 downto 12) = "0010" ) and ( pr4ir(1 downto 0) = "10" or pr4ir(1 downto 0) = "01" ) and pr4invalid = '0' and pr2ir(8 downto 6) = pr4ir(5 downto 3) and pr4trfwr = '1' then -- p2p instruction id ADC,ADZ,NDC,NDZ, which are going to be executed
				temp_control_variable(18 downto 16) := "011";   --take from pr4a, else take from RF as usual

			end if ;
		end if;

	end if;
	
	if pr3ir(15 downto 12) = "1000" and pr3invalid = '0' then -- instruction in pr3 is JAL
		pr1invalid_o_var := '1';
		pr2invalid_o_var := '1';
		pr3invalid_o_var := '1';
	
	elsif pr3ir(15 downto 12) = "1100" and pr3invalid ='0' and pr3tz = '1' then -- instruction is BEQ and branch is taken 
		pr1invalid_o_var := '1';
		pr2invalid_o_var := '1';
		pr3invalid_o_var := '1';

	elsif pr2ir(15 downto 12) = "1001" and pr2invalid = '0' then -- instruction is JLR
		pr1invalid_o_var := '1';
		pr2invalid_o_var := '1';
		pr3invalid_o_var := '0';	
	end if;


	if reset = '1' then
		temp_control_variable := (others => '0');
		temp_control_variable(8 downto 7) := "11";
		pcen_var := '1';
		pr1en_var := '1';
		pr2en_var := '1';
		pr1invalid_o_var := '1';
		pr2invalid_o_var := '1';
		pr3invalid_o_var := '1';
	end if;
	
	Q <= temp_control_variable;
	pr1en <= pr1en_var;
	pr2en <= pr2en_var;
	pcen <= pcen_var;
	t1en <= t1en_var;
	penen <= penen_var;
	pr1invalid_o <= pr1invalid_o_var;
	pr2invalid_o <= pr2invalid_o_var;
	pr3invalid_o <= pr3invalid_o_var;
	pr4invalid_o <= pr4invalid_o_var;
	pr5invalid_o <= pr5invalid_o_var;

end process;
end WhatDoYouCare;