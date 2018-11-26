library ieee;
use ieee.std_logic_1164.all;

entity  pc_mux is 
 port (pc_in, pr3ir, pr4ir, pr2ir, b, alu_out, mem2_out, shift7out : in std_logic_vector(15 downto 0);
 		trfwr : in std_logic;
 		pr2invalid, pr3invalid, pr4invalid,pr3tz : in std_logic;
 		pr4penout : in std_logic_vector(2 downto 0);
  		reset : in std_logic;
  		pc_out: out std_logic_vector(15 downto 0);
  		pr1invalid_o, pr2invalid_o, pr3invalid_o, pr4invalid_o : out std_logic ); --controlsignal is the Enable signal
end pc_mux;

architecture WhatDoYouCare of pc_mux is
begin

process(pr3tz,reset, pc_in, pr3ir, pr4ir, pr2ir, b, alu_out, mem2_out, shift7out, trfwr, pr2invalid, pr3invalid, pr4invalid, pr4penout)
	variable pc_out_var : std_logic_vector(15 downto 0) := pc_in;
	variable pr1invalid_o_var : std_logic := '0';
	variable pr2invalid_o_var : std_logic := '0';
	variable pr3invalid_o_var : std_logic := '0';
	variable pr4invalid_o_var : std_logic := '0';

begin 
	
	pc_out_var := pc_in;
	pr1invalid_o_var := '0';
	pr2invalid_o_var := '0';
	pr3invalid_o_var := '0';
	pr4invalid_o_var := '0';

	if ((pr4ir(15 downto 12) = "0100" and pr4ir(11 downto 9) = "111") or (pr4ir(15 downto 12) = "0110" and pr4penout = "111")) and pr4invalid = '0' then -- instruction in pr4ir is LW, LM and destination is R7
		pc_out_var := mem2_out;
		pr1invalid_o_var := '1';
		pr2invalid_o_var := '1';
		pr3invalid_o_var := '1';
		pr4invalid_o_var := '1';

	elsif ( ((pr3ir(15 downto 12) = "0000" or pr3ir(15 downto 12) = "0010") and pr3ir(1 downto 0) = "00" and pr3ir(5 downto 3) = "111") or ((pr3ir(15 downto 12) = "0000" or pr3ir(15 downto 12) = "0010") and (pr3ir(1 downto 0) = "01" or pr3ir(1 downto 0) = "10") and trfwr = '1' and pr3ir(5 downto 3) = "111") or (pr3ir(15 downto 12) = "0001" and pr3ir(8 downto 6) = "111") or (pr3ir(15 downto 12) = "1100" and pr3tz='1') or pr3ir(15 downto 12) = "1000" ) and pr3invalid = '0' then -- instruction in pr3ir is ADD,NDU,ADI,ADC,ADZ,NDC,NDZ(coditional instructions are executing) with their destination as r7 or the instructions are BEQ,JAL
		pc_out_var := alu_out;
		pr1invalid_o_var := '1';
		pr2invalid_o_var := '1';
		pr3invalid_o_var := '1';
		pr4invalid_o_var := '0';

	elsif pr2ir(15 downto 12) = "0011" and pr2ir(11 downto 9) = "111" and pr2invalid = '0' then  --instruction in pr2ir is LHI
		pc_out_var := shift7out;
		pr1invalid_o_var := '1';
		pr2invalid_o_var := '1';
		pr3invalid_o_var := '0';
		pr4invalid_o_var := '0';
	
	elsif pr2ir(15 downto 12) = "1001" and pr2invalid = '0' then  --instruction in pr2ir is JLR
		pc_out_var := b;
		pr1invalid_o_var := '1';
		pr2invalid_o_var := '1';
		pr3invalid_o_var := '0';
		pr4invalid_o_var := '0';

	end if;

	if reset = '1' then
		pc_out_var := "0000000000000000";
		pr1invalid_o_var := '1';
		pr2invalid_o_var := '1';
		pr3invalid_o_var := '1';
		pr4invalid_o_var := '1';
	end if;

	pc_out <= pc_out_var;
	pr1invalid_o <= pr1invalid_o_var;
	pr2invalid_o <= pr2invalid_o_var;
	pr3invalid_o <= pr3invalid_o_var;
	pr4invalid_o <= pr4invalid_o_var;

end process;
end WhatDoYouCare;
