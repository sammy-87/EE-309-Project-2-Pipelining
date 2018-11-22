library ieee;
use ieee.std_logic_1164.all;

entity  hazard_null is 
 port ( pr2ir : in std_logic_vector(15 downto 0);
 		pr3ir : in std_logic_vector(15 downto 0);
 		pr4ir : in std_logic_vector(15 downto 0);
 		pr3invalid, pr4invalid : in std_logic;
 		trfwr : in std_logic;
 		pr4trfwr : in std_logic;
 		pennew : in std_logic_vector(7 downto 0);

 		--pr5ir : in std_logic_vector(15 downto 0);
 		reset : in std_logic;
 		controlword : in std_logic_vector(25 downto 0);
 		Q: out std_logic_vector(25 downto 0);
 		pr1en, pr2en, pcen : out std_logic); --controlsignal is the Enable signal
end  hazard_null;

architecture WhatDoYouCare of hazard_null is
begin

process(reset, pr2ir, pr3ir, pr4ir, trfwr, pr4trfwr, pr3invalid, pennew, pr4invalid, controlword)
	variable temp_control_variable :  std_logic_vector(25 DOWNTO 0) => (others <= '0');
	variable pr1en_var, pr2en_var, pcen_var : std_logic => (others <= '1');
begin
	if reset = '1' then
		temp_control_variable := (others <= '0');
		pcen_var := '1';
		pr1en_var := '1';
		pr2en_var := '1';
	end if;

	if pr2ir(15 downto 12) = "0011" or pr2ir(15 downto 12) = "1000" then --current instruction is LHI,JAL 
		temp_control_variable := controlword;

	elsif pr2ir(15 downto 12) = "0001" or pr2ir(15 downto 13) = "011" then -- current instruction is ADI,LM,SM
		temp_control_variable:=controlword;
		
		if pr2ir(15 downto 13) = "011" then --if current instruction is LM/SM then - stall pr2, pr1, disable pc
			if pennew = "00000000" then  --end of LM/SM
				pr1en_var := '1';
				pr2en_var := '1';
				pcen_var := '1';
			else
				pr1en_var := '0';
				pr2en_var := '0';
				pcen_var := '0';
				temp_control_variable(24 downto 23) := "11";
			end if;
		end if;

		if (pr3ir(15 downto 12) = "0000" or pr3ir(15 downto 12) = "0010") and pr3ir(2 downto 0) = "000" and pr3invalid = '0' then  -- previous instruction is ADD,NDU 
			if pr2ir(11 downto 9) = pr3ir(5 downto 3) then -- source = destination take operand from alu2out
				temp_control_variable(21 downto 16) := "001000";
			end if;

		elsif pr3ir(15 downto 12) = "0001" and pr3invalid = '0' then -- previous instruction is ADI
			if pr2ir(11 downto 9) = pr3ir(8 downto 6) then 
				temp_control_variable(21 downto 16) := "001000"; --operand from alu2out
			end if;

		elsif pr3ir(15 downto 12) = "0011" and pr3invalid = '0' then --previous instr is LHI
			if pr2ir(11 downto 9) = pr3ir(11 downto 9) then
				temp_control_variable(21 downto 16) := "100000"; -- operand from 7S
			end if;

		elsif (pr3ir(15 downto 12) = "0000" or pr3ir(15 downto 12) = "0010" ) and ( pr3ir(1 downto 0) = "10" or pr3ir(1 downto 0) = "01" ) and pr3invalid = '0' then -- previous instruction is ADC,ADZ,NDC,NDZ	
			if pr2ir(11 downto 9) = pr3ir(5 downto 3) then
				if trfwr ='1' then -- conditional op is going to be executed
					temp_control_variable(21 downto 16) := "001000";
				else -- conditional operation will 4ot be executed
					if (pr4ir(15 downto 12) = "0000" or pr4ir(15 downto 12) = "0010") and pr4ir(2 downto 0) = "000" and pr4invalid = '0' then --p2p is ADD, NDU
						if pr2ir(11 downto 9) = pr4ir(5 downto 3) then -- source = destination take operand from pr4a
							temp_control_variable(21 downto 16) := "011000";
						end if;
					
					elsif pr4ir(15 downto 12) = "0001" and pr4invalid = '0' then -- p2p instruction is ADI
						if pr2ir(11 downto 9) = pr4ir(8 downto 6) then 
							temp_control_variable(21 downto 16) := "011000"; --operand from pr4a
						end if;

					elsif pr4ir(15 downto 12) = "0011" and pr4invalid = '0' then --p2p instr is LHI
						if pr2ir(11 downto 9) = pr4ir(11 downto 9) then
							temp_control_variable(21 downto 16) := "101000"; -- operand from pr47S
						end if;
					
					elsif pr4ir(15 downto 12) = "0100" and pr4invalid = '0' then --p2p is LW
						if pr2ir(11 downto 9) = pr4ir(11 downto 9) then
							temp_control_variable(21 downto 16) := "010000";  -- operand from mem2d
						end if;

					elsif ( pr4ir(15 downto 12) = "0000" or pr4ir(15 downto 12) = "0010" ) and ( pr4ir(1 downto 0) = "10" or pr4ir(1 downto 0) = "01" ) and pr4invalid = '0' then -- p2p instruction id ADC,ADZ,NDC,NDZ
						if pr2ir(11 downto 9) = pr4ir(5 downto 3) then
							if pr4trfwr = '1' then
								temp_control_variable(21 downto 16) := "011000";   --take from pr4a

							else
								temp_control_variable := controlword;   --take from RF as usual

							end if;
						end if;
					end if ;
				end if;
			end if;

		elsif pr3ir(15 downto 12) = "0100" and pr3invalid = '0' then --previous instr is LW
			if pr2ir(11 downto 9) = pr3ir(11 downto 9) then  --stall pr1 & pr2, invalidate pr3, disable pc
				pr1en_var := '0';
				pr2en_var := '0';
				temp_control_variable(25) := '1';
				pcen_var := '0';
			end if;

		elsif pr3invalid = '1' and pr4ir(15 downto 12) = "0100" then --previous is invalid and p2p is LW, then destall pr1, pr2, enable pc. Fetch operand from mem2d
			pr1en_var := '1';
			pr2en_var := '1';
			pcen_var := '1';
			temp_control_variable(21 downto 16):= "010000";
		
		else
			if (pr4ir(15 downto 12) = "0000" or pr4ir(15 downto 12) = "0010") and pr4ir(2 downto 0) = "000" and pr4invalid = '0' then --p2p is ADD, NDU
				if pr2ir(11 downto 9) = pr4ir(5 downto 3) then -- source = destination take operand from pr4a
					temp_control_variable(21 downto 16) := "011000";
				end if;
					
			elsif pr4ir(15 downto 12) = "0001" and pr4invalid = '0' then -- p2p instruction is ADI
				if pr2ir(11 downto 9) = pr4ir(8 downto 6) then 
					temp_control_variable(21 downto 16) := "011000"; --operand from pr4a
				end if;

			elsif pr4ir(15 downto 12) = "0011" and pr4invalid = '0' then --p2p instr is LHI
				if pr2ir(11 downto 9) = pr4ir(11 downto 9) then
					temp_control_variable(21 downto 16) := "101000"; -- operand from pr47S
				end if;
			
			elsif pr4ir(15 downto 12) = "0100" and pr4invalid = '0' then --p2p is LW
				if pr2ir(11 downto 9) = pr4ir(11 downto 9) then
					temp_control_variable(21 downto 16) := "010000";  -- operand from mem2d
				end if;

			elsif ( pr4ir(15 downto 12) = "0000" or pr4ir(15 downto 12) = "0010" ) and ( pr4ir(1 downto 0) = "10" or pr4ir(1 downto 0) = "01" ) and pr4invalid = '0' then -- p2p instruction id ADC,ADZ,NDC,NDZ
				if pr2ir(11 downto 9) = pr4ir(5 downto 3) then
					if pr4trfwr = '1' then
						temp_control_variable(21 downto 16) := "011000";   --take from pr4a

					else
						temp_control_variable := controlword;   --take from RF as usual
					end if;
				end if;
			end if ;
		end if;

	elsif pr2ir(15 downto 12) = "1001" or pr2ir(15 downto 13) = "010" then -- current instruction is LW, SW, JLR
		temp_control_variable:=controlword;
		if (pr3ir(15 downto 12) = "0000" or pr3ir(15 downto 12) = "0010") and pr3ir(2 downto 0) = "000" and pr3invalid = '0' then  -- previous instruction is ADD,NDU 
			if pr2ir(8 downto 6) = pr3ir(5 downto 3) then -- source = destination take operand from alu2out
				temp_control_variable(21 downto 16) := "000001";
			end if;

		elsif pr3ir(15 downto 12) = "0001" and pr3invalid = '0' then -- previous instruction is ADI
			if pr2ir(8 downto 6) = pr3ir(8 downto 6) then 
				temp_control_variable(21 downto 16) := "000001"; --operand from alu2out
			end if;

		elsif pr3ir(15 downto 12) = "0011" and pr3invalid = '0' then --previous instr is LHI
			if pr2ir(8 downto 6) = pr3ir(11 downto 9) then
				temp_control_variable(21 downto 16) := "000100"; -- operand from 7S
			end if;

		elsif (pr3ir(15 downto 12) = "0000" or pr3ir(15 downto 12) = "0010" ) and ( pr3ir(1 downto 0) = "10" or pr3ir(1 downto 0) = "01" ) and pr3invalid = '0' then -- previous instruction is ADC,ADZ,NDC,NDZ	
			if pr2ir(8 downto 6) = pr3ir(5 downto 3) then
				if trfwr ='1' then -- conditional op is going to be executed
					temp_control_variable(21 downto 16) := "000001";
				else -- conditional operation will 4ot be executed
					if (pr4ir(15 downto 12) = "0000" or pr4ir(15 downto 12) = "0010") and pr4ir(2 downto 0) = "000" and pr4invalid = '0' then --p2p is ADD, NDU
						if pr2ir(8 downto 6) = pr4ir(5 downto 3) then -- source = destination take operand from pr4a
							temp_control_variable(21 downto 16) := "000011";
						end if;
					
					elsif pr4ir(15 downto 12) = "0001" and pr4invalid = '0' then -- p2p instruction is ADI
						if pr2ir(8 downto 6) = pr4ir(8 downto 6) then 
							temp_control_variable(21 downto 16) := "000011"; --operand from pr4a
						end if;

					elsif pr4ir(15 downto 12) = "0011" and pr4invalid = '0' then --p2p instr is LHI
						if pr2ir(8 downto 6) = pr4ir(11 downto 9) then
							temp_control_variable(21 downto 16) := "000101"; -- operand from pr47S
						end if;
					
					elsif pr4ir(15 downto 12) = "0100" and pr4invalid = '0' then --p2p is LW
						if pr2ir(8 downto 6) = pr4ir(11 downto 9) then
							temp_control_variable(21 downto 16) := "000010";  -- operand from mem2d
						end if;

					elsif ( pr4ir(15 downto 12) = "0000" or pr4ir(15 downto 12) = "0010" ) and ( pr4ir(1 downto 0) = "10" or pr4ir(1 downto 0) = "01" ) and pr4invalid = '0' then -- p2p instruction id ADC,ADZ,NDC,NDZ
						if pr2ir(8 downto 6) = pr4ir(5 downto 3) then
							if pr4trfwr = '1' then
								temp_control_variable(21 downto 16) := "000011";   --take from pr4a

							else
								temp_control_variable := controlword;   --take from RF as usual

							end if;
						end if;
					end if ;
				end if;
			end if;

		elsif pr3ir(15 downto 12) = "0100" and pr3invalid = '0' then --previous instr is LW
			if pr2ir(8 downto 6) = pr3ir(11 downto 9) then  --stall pr1 & pr2, invalidate pr3, disable pc
				pr1en_var := '0';
				pr2en_var := '0';
				temp_control_variable(25) := '1';
				pcen_var := '0';
			end if;

		elsif pr3invalid = '1' and pr4ir(15 downto 12) = "0100" then --previous is invalid and p2p is LW, then destall pr1, pr2, enable pc. Fetch operand from mem2d
			pr1en_var := '1';
			pr2en_var := '1';
			pcen_var := '1';
			temp_control_variable(21 downto 16):= "000010";
		
		else
			if (pr4ir(15 downto 12) = "0000" or pr4ir(15 downto 12) = "0010") and pr4ir(2 downto 0) = "000" and pr4invalid = '0' then --p2p is ADD, NDU
				if pr2ir(8 downto 6) = pr4ir(5 downto 3) then -- source = destination take operand from pr4a
					temp_control_variable(21 downto 16) := "000011";
				end if;
					
			elsif pr4ir(15 downto 12) = "0001" and pr4invalid = '0' then -- p2p instruction is ADI
				if pr2ir(8 downto 6) = pr4ir(8 downto 6) then 
					temp_control_variable(21 downto 16) := "000011"; --operand from pr4a
				end if;

			elsif pr4ir(15 downto 12) = "0011" and pr4invalid = '0' then --p2p instr is LHI
				if pr2ir(8 downto 6) = pr4ir(11 downto 9) then
					temp_control_variable(21 downto 16) := "000101"; -- operand from pr47S
				end if;
			
			elsif pr4ir(15 downto 12) = "0100" and pr4invalid = '0' then --p2p is LW
				if pr2ir(8 downto 6) = pr4ir(11 downto 9) then
					temp_control_variable(21 downto 16) := "000010";  -- operand from mem2d
				end if;

			elsif ( pr4ir(15 downto 12) = "0000" or pr4ir(15 downto 12) = "0010" ) and ( pr4ir(1 downto 0) = "10" or pr4ir(1 downto 0) = "01" ) and pr4invalid = '0' then -- p2p instruction id ADC,ADZ,NDC,NDZ
				if pr2ir(8 downto 6) = pr4ir(5 downto 3) then
					if pr4trfwr = '1' then
						temp_control_variable(21 downto 16) := "000011";   --take from pr4a

					else
						temp_control_variable := controlword;   --take from RF as usual
					end if;
				end if;
			end if ;
		end if;
		
	else   -- Current instructions have two operands - ADD, ADC, ADZ, NDU, NDC, NDZ, BEQ
		temp_control_variable:=controlword;
		if (pr3ir(15 downto 12) = "0000" or pr3ir(15 downto 12) = "0010") and pr3ir(2 downto 0) = "000" and pr3invalid = '0' then  -- previous instruction is ADD,NDU 
			if pr2ir(11 downto 9) = pr3ir(5 downto 3) then -- source = destination take operand from alu2out
				temp_control_variable(21 downto 19) := "001";
			end if;
			if pr2ir(8 downto 6) = pr3ir(5 downto 3) then -- source = destination take operand from alu2out
				temp_control_variable(18 downto 16) := "001";
			end if;

		elsif pr3ir(15 downto 12) = "0001" and pr3invalid = '0' then -- previous instruction is ADI
			if pr2ir(11 downto 9) = pr3ir(8 downto 6) then 
				temp_control_variable(21 downto 19) := "001"; --operand from alu2out
			end if;
			if pr2ir(8 downto 6) = pr3ir(8 downto 6) then 
				temp_control_variable(18 downto 16) := "001"; --operand from alu2out
			end if;

		elsif pr3ir(15 downto 12) = "0011" and pr3invalid = '0' then --previous instr is LHI
			if pr2ir(11 downto 9) = pr3ir(11 downto 9) then
				temp_control_variable(21 downto 19) := "100"; -- operand from 7S
			end if;
			if pr2ir(8 downto 6) = pr3ir(11 downto 9) then
				temp_control_variable(18 downto 16) := "100"; -- operand from 7S
			end if;

		elsif (pr3ir(15 downto 12) = "0000" or pr3ir(15 downto 12) = "0010" ) and ( pr3ir(1 downto 0) = "10" or pr3ir(1 downto 0) = "01" ) and pr3invalid = '0' then -- previous instruction is ADC,ADZ,NDC,NDZ	
			if pr2ir(11 downto 9) = pr3ir(5 downto 3) then
				if trfwr ='1' then -- conditional op is going to be executed
					temp_control_variable(21 downto 19) := "001";
				else -- conditional operation will 4ot be executed
					if (pr4ir(15 downto 12) = "0000" or pr4ir(15 downto 12) = "0010") and pr4ir(2 downto 0) = "000" and pr4invalid = '0' then --p2p is ADD, NDU
						if pr2ir(11 downto 9) = pr4ir(5 downto 3) then -- source = destination take operand from pr4a
							temp_control_variable(21 downto 19) := "011";
						end if;
					
					elsif pr4ir(15 downto 12) = "0001" and pr4invalid = '0' then -- p2p instruction is ADI
						if pr2ir(11 downto 9) = pr4ir(8 downto 6) then 
							temp_control_variable(21 downto 19) := "011"; --operand from pr4a
						end if;

					elsif pr4ir(15 downto 12) = "0011" and pr4invalid = '0' then --p2p instr is LHI
						if pr2ir(11 downto 9) = pr4ir(11 downto 9) then
							temp_control_variable(21 downto 19) := "101"; -- operand from pr47S
						end if;
					
					elsif pr4ir(15 downto 12) = "0100" and pr4invalid = '0' then --p2p is LW
						if pr2ir(11 downto 9) = pr4ir(11 downto 9) then
							temp_control_variable(21 downto 19) := "010";  -- operand from mem2d
						end if;

					elsif ( pr4ir(15 downto 12) = "0000" or pr4ir(15 downto 12) = "0010" ) and ( pr4ir(1 downto 0) = "10" or pr4ir(1 downto 0) = "01" ) and pr4invalid = '0' then -- p2p instruction id ADC,ADZ,NDC,NDZ
						if pr2ir(11 downto 9) = pr4ir(5 downto 3) then
							if pr4trfwr = '1' then
								temp_control_variable(21 downto 19) := "011";   --take from pr4a, else take from RF as usual
							end if;
						end if;
					end if ;
				end if;
			end if;

			if pr2ir(8 downto 6) = pr3ir(5 downto 3) then
				if trfwr ='1' then -- conditional op is going to be executed
					temp_control_variable(18 downto 16) := "001";
				else -- conditional operation will 4ot be executed
					if (pr4ir(15 downto 12) = "0000" or pr4ir(15 downto 12) = "0010") and pr4ir(2 downto 0) = "000" and pr4invalid = '0' then --p2p is ADD, NDU
						if pr2ir(8 downto 6) = pr4ir(5 downto 3) then -- source = destination take operand from pr4a
							temp_control_variable(18 downto 16) := "011";
						end if;
					
					elsif pr4ir(15 downto 12) = "0001" and pr4invalid = '0' then -- p2p instruction is ADI
						if pr2ir(8 downto 6) = pr4ir(8 downto 6) then 
							temp_control_variable(18 downto 16) := "011"; --operand from pr4a
						end if;

					elsif pr4ir(15 downto 12) = "0011" and pr4invalid = '0' then --p2p instr is LHI
						if pr2ir(8 downto 6) = pr4ir(11 downto 9) then
							temp_control_variable(18 downto 16) := "101"; -- operand from pr47S
						end if;
					
					elsif pr4ir(15 downto 12) = "0100" and pr4invalid = '0' then --p2p is LW
						if pr2ir(8 downto 6) = pr4ir(11 downto 9) then
							temp_control_variable(18 downto 16) := "010";  -- operand from mem2d
						end if;

					elsif ( pr4ir(15 downto 12) = "0000" or pr4ir(15 downto 12) = "0010" ) and ( pr4ir(1 downto 0) = "10" or pr4ir(1 downto 0) = "01" ) and pr4invalid = '0' then -- p2p instruction id ADC,ADZ,NDC,NDZ
						if pr2ir(8 downto 6) = pr4ir(5 downto 3) then
							if pr4trfwr = '1' then
								temp_control_variable(18 downto 16) := "011";   --take from pr4a, else take from RF as usual
							end if;
						end if;
					end if ;
				end if;
			end if;

		elsif pr3ir(15 downto 12) = "0100" and pr3invalid = '0' then --previous instr is LW
			if pr2ir(11 downto 9) = pr3ir(11 downto 9) then  --stall pr1 & pr2, invalidate pr3, disable pc
				pr1en_var := '0';
				pr2en_var := '0';
				temp_control_variable(25) := '1';
				pcen_var := '0';
			end if;
			if pr2ir(8 downto 6) = pr3ir(11 downto 9) then  --stall pr1 & pr2, invalidate pr3, disable pc
				pr1en_var := '0';
				pr2en_var := '0';
				temp_control_variable(25) := '1';
				pcen_var := '0';
			end if;

		elsif pr3invalid = '1' and pr4ir(15 downto 12) = "0100" then --previous is invalid and p2p is LW, then destall pr1, pr2, enable pc. Fetch operand from mem2d
			pr1en_var := '1';
			pr2en_var := '1';
			pcen_var := '1';
			temp_control_variable(18 downto 16) := "010";
		
		else
			if (pr4ir(15 downto 12) = "0000" or pr4ir(15 downto 12) = "0010") and pr4ir(2 downto 0) = "000" and pr4invalid = '0' then --p2p is ADD, NDU
				if pr2ir(11 downto 9) = pr4ir(5 downto 3) then -- source = destination take operand from pr4a
					temp_control_variable(21 downto 19) := "011";
				end if;
				if pr2ir(8 downto 6) = pr4ir(5 downto 3) then -- source = destination take operand from pr4a
					temp_control_variable(18 downto 16) := "011";
				end if;
					
			elsif pr4ir(15 downto 12) = "0001" and pr4invalid = '0' then -- p2p instruction is ADI
				if pr2ir(11 downto 9) = pr4ir(8 downto 6) then 
					temp_control_variable(21 downto 19) := "011"; --operand from pr4a
				end if;
				if pr2ir(8 downto 6) = pr4ir(8 downto 6) then 
					temp_control_variable(18 downto 16) := "011"; --operand from pr4a
				end if;

			elsif pr4ir(15 downto 12) = "0011" and pr4invalid = '0' then --p2p instr is LHI
				if pr2ir(11 downto 9) = pr4ir(11 downto 9) then
					temp_control_variable(21 downto 19) := "101"; -- operand from pr47S
				end if;
				if pr2ir(8 downto 6) = pr4ir(11 downto 9) then
					temp_control_variable(18 downto 16) := "101"; -- operand from pr47S
				end if;

			elsif pr4ir(15 downto 12) = "0100" and pr4invalid = '0' then --p2p is LW
				if pr2ir(11 downto 9) = pr4ir(11 downto 9) then
					temp_control_variable(21 downto 19) := "010";  -- operand from mem2d
				end if;
				if pr2ir(8 downto 6) = pr4ir(11 downto 9) then
					temp_control_variable(18 downto 16) := "010";  -- operand from mem2d
				end if;

			elsif ( pr4ir(15 downto 12) = "0000" or pr4ir(15 downto 12) = "0010" ) and ( pr4ir(1 downto 0) = "10" or pr4ir(1 downto 0) = "01" ) and pr4invalid = '0' then -- p2p instruction id ADC,ADZ,NDC,NDZ
				if pr2ir(11 downto 9) = pr4ir(5 downto 3) then
					if pr4trfwr = '1' then
						temp_control_variable(21 downto 19) := "011";   --take from pr4a, else take from RF as usual
					end if;
				end if;
				if pr2ir(8 downto 6) = pr4ir(5 downto 3) then
					if pr4trfwr = '1' then
						temp_control_variable(18 downto 16) := "011";   --take from pr4a, else take from RF as usual
					end if;
				end if;
			end if ;
		end if;
	end if;

	controlword <= temp_control_variable;
	pr1en <= pr1en_var;
	pr2en <= pr2en_var;
	pcen <= pcen_var;
end process
end WhatDoYouCare;