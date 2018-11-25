library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rf is 
	port(
			 rfa1, rfa2, rfa3   : in std_logic_vector(2 DOWNTO 0);
			 rst : in std_logic; -- async. clear.
			 clk : in std_logic; -- clock.
			 rfwr  : in std_logic; -- write
			 pr5invalid, pr5trfwr : in std_logic; -- enable for register 7
			 newpc, rfd3, pr5ir : in std_logic_vector(15 downto 0);
			 rfd1,rfd2 : out std_logic_vector(15 DOWNTO 0)); -- output
end rf;

architecture behave of rf is

component Reg16 is 
	port(
		 d   : in std_logic_vector(15 DOWNTO 0);
		 en  : in std_logic; -- load/enable.
		 rst : in std_logic; -- async. clear.
		 clk : in std_logic; -- clock.
		 q   : out std_logic_vector(15 DOWNTO 0)); -- output
end component;

type registerFile is array(0 to 7) of std_logic_vector(15 downto 0);
signal registers : registerFile;
type bitarr is array(0 to 7) of std_logic;
signal wr_rf : std_logic;
signal wrarr1 : bitarr := "00000000";
signal reg7 : std_logic_vector(15 downto 0);
signal wrarr7 : std_logic;
begin

inst_reg : for i in 0 to 6 generate
R: Reg16 port map (d => rfd3, en => wrarr1(i), rst => rst, clk => clk, q => registers(i));
end generate inst_reg;

R7 :Reg16 port map (d => reg7, en => wrarr7, rst => rst, clk => clk, q => registers(7));


wr_rf <= rfwr and (not(pr5invalid)) and (not(((not(pr5ir(15))) and (not(pr5ir(14))) and (not(pr5ir(12))) and (pr5ir(0) xor pr5ir(1))) and (not(pr5trfwr)) ) ); 


process (clk, rst, wr_rf,rfa3,rfa1,rfa2,rfd3,pr5invalid,pr5trfwr,pr5ir, registers,wrarr1,newpc)

	variable wrarr_temp : bitarr := "00000000";
	variable rfd1_var, rfd2_var : std_logic_vector(15 downto 0);
	variable r7_var : std_logic_vector(15 downto 0);

	begin	
		
		r7_var := newpc;
		wrarr_temp := (others =>'0');

		if wr_rf = '1' then
			wrarr_temp := (others =>'0');
			wrarr_temp(to_integer(unsigned(rfa3))) := '1';
			rfd1_var := (others => '0');
			rfd2_var := (others => '0');

			if rfa3 = "111" then
				r7_var := rfd3;
			end if;

			if rfa3 = rfa1 then
				rfd1_var := rfd3;
			end if;

			if rfa3 = rfa2 then
				rfd2_var := rfd3;				
			end if ;
		end if;	

		if rfa1 = "111" then
			rfd1_var := newpc;
		else
			rfd1_var := registers(to_integer(unsigned(rfa1)));	
		end if ;
		
		if rfa2 = "111" then
			rfd2_var := newpc;
		else
			rfd2_var := registers(to_integer(unsigned(rfa2)));	
		end if ;
		
		--if rst = '1' then
		--	wrarr_temp := "00000000";
		--	r7_var := (others => '0');
		--	rfd1_var := (others => '0');
		--	rfd2_var := (others => '0');
		--end if ;

		reg7 <= r7_var;
		wrarr1 <= wrarr_temp;
		wrarr7 <= not(pr5invalid);
		rfd1 <= rfd1_var;
		rfd2 <= rfd2_var;


	end process;
end behave;