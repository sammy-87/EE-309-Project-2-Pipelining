library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity ALU is
   port(alu_a,alu_b: in std_logic_vector(15 downto 0);
		op: in std_logic;
		alu_out: out std_logic_vector(15 downto 0);
      c_out: out std_logic;
      z_out :out std_logic );
end entity;

architecture Struct of ALU is

component Add is
   port(x,y: in std_logic_vector(15 downto 0);
	
	s0: out std_logic_vector(15 downto 0);
        c_out: out std_logic);
end component;

signal temp: std_logic_vector(15 downto 0);
signal tp : std_logic_vector(15 downto 0);

begin
	A1 : Add port map (x=>alu_a,y=>alu_b,s0=>temp,c_out=>c_out);
	proc_alu : process(alu_a,alu_b,op,temp, tp)
		variable z_var : std_logic := '0';
	begin
		z_var :='0';
		if (op='1') then --Nand
			alu_out<= (alu_a nand alu_b);
			tp <= (alu_a nand alu_b);
			if tp = "0000000000000000" then
				z_var := '1';
			end if;
		else --Addition
			alu_out<= temp;
			tp <= "0000000000000000";
			if temp = "0000000000000000" then
				z_var := '1';
			end if;
		end if;

		z_out <= z_var;
	end process proc_alu;

end Struct;