library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;

entity pipelinedup is
   port(rst,CLK50MHZ : in std_logic);
end entity;
----------------
architecture Struct of pipelinedup is
component pr1 is 
	port(
		 pc_i   : in std_logic_vector(15 DOWNTO 0);
         ir_i   : in std_logic_vector(15 DOWNTO 0);
         invalid_i : in std_logic;
		 en  : in std_logic; -- load/enable.
		 rst : in std_logic; -- async. clear.
		 clk : in std_logic; -- clock.
         pc_o   : out std_logic_vector(15 DOWNTO 0);
         ir_o   : out std_logic_vector(15 DOWNTO 0);
         invalid_o : out std_logic);
end component;
---------------
component pr2 is 
    port(
         pc_i   : in std_logic_vector(15 DOWNTO 0);
         ir_i   : in std_logic_vector(15 DOWNTO 0);
         invalid_i : in std_logic;
         cw_i : in std_logic_vector(24 DOWNTO 0);
         en  : in std_logic; -- load/enable.
         rst : in std_logic; -- async. clear.
         clk : in std_logic; -- clock.
         pc_o   : out std_logic_vector(15 DOWNTO 0);
         ir_o   : out std_logic_vector(15 DOWNTO 0);
         invalid_o : out std_logic;
         cw_o : out std_logic_vector(24 DOWNTO 0));
end component;
--------------
component pr3 is 
    port(
         t1_i   : in std_logic_vector(15 DOWNTO 0);
         pr3pen_i : in std_logic_vector(2 DOWNTO 0);
         pc_i   : in std_logic_vector(15 DOWNTO 0);
         ir_i   : in std_logic_vector(15 DOWNTO 0);
         invalid_i : in std_logic;
         cw_i : in std_logic_vector(24 DOWNTO 0);
         pr3a_i : in std_logic_vector(15 DOWNTO 0);
         pr3b_i : in std_logic_vector(15 DOWNTO 0);
         tz_i : in std_logic;
         pr3shift7out_i : in std_logic_vector(15 DOWNTO 0);
			pentz_i: in std_logic;
         en  : in std_logic; -- load/enable.
         rst : in std_logic; -- async. clear.
         clk : in std_logic; -- clock.
			pentz_o: out std_logic;
         t1_o   : out std_logic_vector(15 DOWNTO 0);
         pr3pen_o : out std_logic_vector(2 DOWNTO 0);
         pc_o   : out std_logic_vector(15 DOWNTO 0);
         ir_o   : out std_logic_vector(15 DOWNTO 0);
         invalid_o : out std_logic;
         cw_o : out std_logic_vector(24 DOWNTO 0);
         pr3a_o : out std_logic_vector(15 DOWNTO 0);
         pr3b_o : out std_logic_vector(15 DOWNTO 0);
         tz_o : out std_logic;
         pr3shift7out_o : out std_logic_vector(15 DOWNTO 0));
end component;
-------------
component pr4 is 
    port(
         t1_i   : in std_logic_vector(15 DOWNTO 0);
         pr4pen_i : in std_logic_vector(2 DOWNTO 0);
         pc_i   : in std_logic_vector(15 DOWNTO 0);
         ir_i   : in std_logic_vector(15 DOWNTO 0);
         invalid_i : in std_logic;
         cw_i : in std_logic_vector(24 DOWNTO 0);
         pr4a_i : in std_logic_vector(15 DOWNTO 0);
         pr4d_i : in std_logic_vector(15 DOWNTO 0);
         pr4c_i : in std_logic;
         pr4z_i : in std_logic;
         pr4trfwr_i : in std_logic;
         pr4shift7out_i : in std_logic_vector(15 DOWNTO 0);
			pentz_i: in std_logic;
         en  : in std_logic; -- load/enable.
         rst : in std_logic; -- async. clear.
         clk : in std_logic; -- clock.
         
			pentz_o: out std_logic;
         t1_o   : out std_logic_vector(15 DOWNTO 0);
         pr4pen_o : out std_logic_vector(2 DOWNTO 0);
         pc_o   : out std_logic_vector(15 DOWNTO 0);
         ir_o   : out std_logic_vector(15 DOWNTO 0);
         invalid_o : out std_logic;
         cw_o : out std_logic_vector(24 DOWNTO 0);
         pr4a_o : out std_logic_vector(15 DOWNTO 0);
         pr4d_o : out std_logic_vector(15 DOWNTO 0);
         pr4c_o : out std_logic;
         pr4z_o : out std_logic;
         pr4trfwr_o : out std_logic;
         pr4shift7out_o : out std_logic_vector(15 DOWNTO 0));
end component;
----------
component pr5 is 
    port(
         pr5pen_i : in std_logic_vector(2 DOWNTO 0);
         pc_i   : in std_logic_vector(15 DOWNTO 0);
         ir_i   : in std_logic_vector(15 DOWNTO 0);
         invalid_i : in std_logic;
         cw_i : in std_logic_vector(24 DOWNTO 0);
         pr5a_i : in std_logic_vector(15 DOWNTO 0);
         pr5b_i : in std_logic_vector(15 DOWNTO 0);
         pr5c_i : in std_logic;
         pr5z_i : in std_logic;
         pr5trfwr_i : in std_logic;
         pr5shift7out_i : in std_logic_vector(15 DOWNTO 0);

         en  : in std_logic; -- load/enable.
         rst : in std_logic; -- async. clear.
         clk : in std_logic; -- clock.
            
         pr5pen_o : out std_logic_vector(2 DOWNTO 0);
         pc_o   : out std_logic_vector(15 DOWNTO 0);
         ir_o   : out std_logic_vector(15 DOWNTO 0);
         invalid_o : out std_logic;
         cw_o : out std_logic_vector(24 DOWNTO 0);
         pr5a_o : out std_logic_vector(15 DOWNTO 0);
         pr5b_o : out std_logic_vector(15 DOWNTO 0);
         pr5c_o : out std_logic;
         pr5z_o : out std_logic;
         pr5trfwr_o : out std_logic;
         pr5shift7out_o : out std_logic_vector(15 DOWNTO 0));
end component;
----------
component Reg16 is 
	port(
		 d   : in std_logic_vector(15 DOWNTO 0);
		 en  : in std_logic; -- load/enable.
		 rst : in std_logic; -- async. clear.
		 clk : in std_logic; -- clock.
		 q   : out std_logic_vector(15 DOWNTO 0)); -- output
end component;
----------
component Reg8 is 
	port(
		 d   : in std_logic_vector(7 DOWNTO 0);
		 en  : in std_logic; -- load/enable.
		 rst : in std_logic; -- async. clear.
		 clk : in std_logic; -- clock.
		 q   : out std_logic_vector(7 DOWNTO 0)); -- output
end component;
-------------
component rf is 
	port(
			 rfa1, rfa2, rfa3   : in std_logic_vector(2 DOWNTO 0);
			 rst : in std_logic; -- async. clear.
			 clk : in std_logic; -- clock.
			 rfwr  : in std_logic; -- write
			 pr5invalid, pr5trfwr, pr4invalid : in std_logic; -- enable for register 7
			 newpc, rfd3, pr5ir, pr2pc : in std_logic_vector(15 downto 0);
			 rfd1,rfd2 : out std_logic_vector(15 DOWNTO 0)); -- output
end component;
-------------
component SE6 is
   port(ip: in std_logic_vector(5 downto 0);
			op: out std_logic_vector(15 downto 0));
end component;
------------
component SE9 is
   port(ip: in std_logic_vector(8 downto 0);
			op: out std_logic_vector(15 downto 0));
end component;
-------------
component Shift7 is
   port(ip: in std_logic_vector(8 downto 0);
			op: out std_logic_vector(15 downto 0));
end component;
-------------
component  trfwrd is 
 port (pr3ir, pr4ir, pr5ir : in std_logic_vector(15 downto 0);
 		pr4c, pr4z, pr5c, pr5z, muxzout, pr4trfwr, pr5trfwr, c, z : in std_logic;
  		reset : in std_logic;
  		trfwr: out std_logic); --controlsignal is the Enable signal
end component;
------------
component zerodetector is
   port(mem2d : in std_logic_vector(15 downto 0);
	Z :out std_logic);
end component;
------------
component add1 is
   port(alu_a: in std_logic_vector(15 downto 0);
		alu_out: out std_logic_vector(15 downto 0) );
end component;
------------
component ALU is
   port(alu_a,alu_b: in std_logic_vector(15 downto 0);
		op: in std_logic;
		alu_out: out std_logic_vector(15 downto 0);
      c_out: out std_logic;
      z_out :out std_logic );
end component;
-----------
component codemem is 
	port(
		 mem_a   : in std_logic_vector(15 downto 0);
		 mem_out : out std_logic_vector(15 DOWNTO 0)); -- output
end component;
-----------
component comp is
   port(alu_a, alu_b : in std_logic_vector(15 downto 0);
		tz : out std_logic );
end component;
-----------
component  controlword is 
 port (ir : in std_logic_vector(15 downto 0);
  		reset : in std_logic;
  		Q: out std_logic_vector(24 downto 0)); --controlsignal is the Enable signal
end  component;
----------
component datamem is 
	port(
		 mem_d   : in std_logic_vector(15 DOWNTO 0);
		 mem_a   : in std_logic_vector(15 downto 0);
		 rd_bar  : in std_logic; -- read enable.
		 wr_bar  : in std_logic; -- write enable
		 rst : in std_logic; -- clear.
		 clk : in std_logic; -- clock.
		 mem_out : out std_logic_vector(15 DOWNTO 0)); -- output
end component;
--------
component  hazard_null is 
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
      pr1en, pr2en, pcen,t1en,penen, pr1invalid_o, pr2invalid_o, pr3invalid_o, pr4invalid_o, pr5invalid_o : out std_logic);
end  component;
---------
component mux2_1 is
 port(n1,n0,s: in std_logic;  b: out std_logic);
 end component;
 ---------
 component mux2_3 is
   port(S0:in std_logic;
	D0,D1:in std_logic_vector(2 downto 0);
	Y:out std_logic_vector(2 downto 0));
end component;
-------
component mux2_8 is
   port(pr1_en,pr2_en:in std_logic;
	D0,D1:in std_logic_vector(7 downto 0);
	pr2_ir: in std_logic_vector(15 downto 0);
	Y:out std_logic_vector(7 downto 0));
end component;
---------
component mux2_16 is
   port(S0:in std_logic;
	D0,D1:in std_logic_vector(15 downto 0);
	Y:out std_logic_vector(15 downto 0));
end component;
----------
component mux3_16 is
   port(S0,S1:in std_logic;    --S1 is MSB
	D0,D1,D2:in std_logic_vector(15 downto 0);
	Y:out std_logic_vector(15 downto 0));
end component;
-----------
component mux4_3 is
   port(S0,S1:in std_logic;    --S1 is MSB
	D0,D1,D2,D3:in std_logic_vector(2 downto 0);
	Y:out std_logic_vector(2 downto 0));
end component;
----------
component mux4_16 is
   port(S0,S1:in std_logic;    --S1 is MSB
	D0,D1,D2,D3:in std_logic_vector(15 downto 0);
	Y:out std_logic_vector(15 downto 0));
end component;
---------
component mux5_16 is
   port(S0,S1,S2:in std_logic;    --S2 is MSB
	D0,D1,D2,D3,D4:in std_logic_vector(15 downto 0);
	Y:out std_logic_vector(15 downto 0));
end component;
---------
component mux6_16 is
   port(S0,S1,S2:in std_logic;    --S2 is MSB
	D0,D1,D2,D3,D4,D5:in std_logic_vector(15 downto 0);
	Y:out std_logic_vector(15 downto 0));
end component;
---------
component  pc_mux is 
 port (pc_in, pr3ir, pr4ir, pr2ir, b, alu_out, mem2_out, shift7out : in std_logic_vector(15 downto 0);
 		trfwr : in std_logic;
 		pr2invalid, pr3invalid, pr4invalid,pr3tz : in std_logic;
 		pr4penout : in std_logic_vector(2 downto 0);
  		reset : in std_logic;
  		pc_out: out std_logic_vector(15 downto 0);
  		pr1invalid_o, pr2invalid_o, pr3invalid_o, pr4invalid_o : out std_logic ); --controlsignal is the Enable signal
end component;
--------
component PEN is 
	port (penin: in std_logic_vector(7 downto 0);
			pennext: out std_logic_vector(7 downto 0);
			penout: out std_logic_vector(2 downto 0));
end component;
--------
component  bit_reg is 
 port (D, CLK ,reset, controlsignal : in std_logic; Q: out std_logic); --controlsignal is the Enable signal
end  component;
-------------------------------------------------------------------------------------
signal pr3a_i,pr3b_i,pr1ir,pr2ir,pr3ir,pr4ir,pr5ir,pc_out,pr1pc,pr2pc,pr3pc,pr4pc,pr5pc,rf_d1,rf_d2,rf_d3,alu2_out,se9_out,se6_out,pr3shift7_out,codemem_out,add1_pc_out,pr4a,add1_t1_out,t1_i,t1,pr3t1,pr3a,pr3b,alu2_a,alu2_b,pr4t1,pr4d,pr4shift7_out,datamem_a,pr5a,pr5b,pr5shift7_out,datamem_out,shift7_out,pc_in,pr4d_i : std_logic_vector(15 downto 0);
signal pr4c_i,pr4z_i,pr4c,pr4z,pr5c,pr5z_i,pr5z,c,z,trfwr,pr4trfwr,pr5trfwr,pr1invalid_hazard,pr2invalid_hazard,pr3invalid_hazard,pr1invalid_pc,pr2invalid_pc,pr3invalid_pc,pr4invalid_pc,pr1invalid,pr2invalid,pr3invalid,pr4invalid,pr5invalid,temp_invalid1,temp_invalid2,temp_invalid3,tz,pr3tz,temp_wrc,temp_wrz,temp_invalid4,pc_en,pr1_en,pr2_en,pr3_en,pr4_en,pr5_en,zd_out : std_logic;
signal rf_a1,rf_a2,rf_a3,pen_out,pr3pen,pr4pen,pr5pen : std_logic_vector(2 downto 0);
signal newpen,penupdate,pen_mux_out : std_logic_vector(7 downto 0);
signal controlword_out,pr2cw,pr3cw_i,pr3cw,pr4cw,pr5cw : std_logic_vector(24 downto 0); 
signal t1_en,pen_en,temp_rdbar,temp_wrbar,temp_D_sel,pr3pentz_i,pr3pentz,pr4pentz,temp_invalid5,pr4invalid_hazard,pr5invalid_hazard,clk : std_logic;
signal pr4t1_i : std_logic_vector(15 downto 0);


begin
clk<=CLK50MHZ;
pr3_en<='1';
pr4_en<='1';
pr5_en<='1';
temp_invalid1 <= pr1invalid_pc or pr1invalid_hazard;
temp_invalid2 <= pr1invalid or pr2invalid_pc or pr2invalid_hazard;
temp_invalid3 <= pr2invalid or pr3invalid_pc or pr3invalid_hazard;
temp_invalid4 <= pr3invalid or pr4invalid_pc or pr4invalid_hazard;
temp_invalid5 <= pr4invalid or pr5invalid_hazard ;


temp_wrc <= pr5cw(1) and (not(pr5invalid)) and (not(((not(pr5ir(15))) and (not(pr5ir(14))) and (not(pr5ir(12))) and (pr5ir(0) xor pr5ir(1))) and (not(pr5trfwr)) ) ); 
temp_wrz <= pr5cw(0) and (not(pr5invalid)) and (not(((not(pr5ir(15))) and (not(pr5ir(14))) and (not(pr5ir(12))) and (pr5ir(0) xor pr5ir(1))) and (not(pr5trfwr)) ) ); 


--IF
codemem_inst : codemem port map(mem_a=>pc_out, mem_out=>codemem_out);
add1_pc : add1 port map(alu_a=>pc_out, alu_out=>add1_pc_out);
pc_i : Reg16 port map(d=>pc_in,en=>pc_en,rst=>rst,clk=>clk,q=>pc_out);
pc_mux_i : pc_mux port map(pc_in=>add1_pc_out, pr3ir=>pr3ir, pr4ir=>pr4ir, pr2ir=>pr2ir, b=>pr3b_i, alu_out=>alu2_out, mem2_out=>datamem_out, shift7out=>shift7_out, trfwr=>trfwr, pr2invalid=>pr2invalid, pr3invalid=>pr3invalid, pr4invalid=>pr4invalid, pr3tz=>pr3tz, pr4penout=>pr4pen, reset=>rst, pc_out=>pc_in, pr1invalid_o=>pr1invalid_pc, pr2invalid_o=>pr2invalid_pc, pr3invalid_o=>pr3invalid_pc, pr4invalid_o=>pr4invalid_pc);  --b is output of rfd2 mux
pr1_i : pr1 port map(pc_i=>pc_out, ir_i=>codemem_out, invalid_i=>temp_invalid1, en=>pr1_en, rst=>rst, clk=>clk, pc_o=>pr1pc, ir_o=>pr1ir, invalid_o=>pr1invalid);

--ID
controlword_i : controlword port map(ir=>pr1ir,reset=>rst, q=>controlword_out);
pen_mux : mux2_8 port map(pr1_en=>pr1_en,pr2_en=>pr2_en,D0=>pr1ir(7 downto 0),D1=>penupdate,pr2_ir=>pr2ir,Y=>pen_mux_out);
pen_reg : Reg8 port map(d=>pen_mux_out,en=>pen_en,rst=>rst,clk=>clk,q=>newpen);
pen_inst : pen port map(penin=>newpen, pennext=>penupdate, penout=>pen_out);
pr2_inst : pr2 port map(pc_i=>pr1pc, ir_i=>pr1ir, invalid_i=>temp_invalid2, cw_i=>controlword_out, en=>pr2_en, rst=>rst, clk=>clk, pc_o=>pr2pc, ir_o=>pr2ir, invalid_o=>pr2invalid, cw_o=>pr2cw);

--OR
pr3pentz_i<= not (or_reduce(penupdate));
shift7_inst : Shift7 port map(ip=>pr2ir(8 downto 0), op=>shift7_out);
rfa2_mux : mux2_3 port map(S0=>pr3cw_i(22), D0=>pr2ir(8 downto 6), D1=>pen_out, Y=>rf_a2);
rf_inst : rf port map(rfa1=>pr2ir(11 downto 9), rfa2=>rf_a2, rfa3=>rf_a3, rst=>rst, clk=>clk, rfwr=>pr5cw(2), pr5invalid=>pr5invalid, pr5trfwr=>pr5trfwr, pr4invalid=>pr4invalid, newpc=>pr4pc, rfd3=>rf_d3, pr5ir=>pr5ir,pr2pc=>pr2pc, rfd2=>rf_d2, rfd1=>rf_d1);
pr3a_mux : mux6_16 port map(S0=>pr3cw_i(19),S1=>pr3cw_i(20),S2=>pr3cw_i(21),D0=>rf_d1,D1=>alu2_out,D2=>datamem_out,D3=>pr4a,D4=>pr3shift7_out,D5=>pr4shift7_out, Y=>pr3a_i);
pr3b_mux : mux6_16 port map(S0=>pr3cw_i(16),S1=>pr3cw_i(17),S2=>pr3cw_i(18),D0=>rf_d2,D1=>alu2_out,D2=>datamem_out,D3=>pr4a,D4=>pr3shift7_out,D5=>pr4shift7_out, Y=>pr3b_i);
comparator : comp port map(alu_a=>pr3a_i, alu_b=>pr3b_i, tz=>tz);

hazard_inst : hazard_null port map(penen=>pen_en,t1en=>t1_en, pr4invalid_o=>pr4invalid_hazard,pr5invalid_o=>pr5invalid_hazard,pr5ir => pr5ir, pr5invalid => pr5invalid, pr3pentz=>pr3pentz,pr4pentz=>pr4pentz,pr2ir=>pr2ir, pr3ir=>pr3ir, pr4ir=>pr4ir, pr2invalid=>pr2invalid, pr3invalid=>pr3invalid, pr4invalid=>pr4invalid, trfwr=>trfwr, pr3tz=>pr3tz, pr4trfwr=>pr4trfwr, reset=>rst, controlword=>pr2cw, Q=>pr3cw_i, pr1en=>pr1_en, pr2en=>pr2_en, pcen=>pc_en, pr1invalid_o=>pr1invalid_hazard, pr2invalid_o=>pr2invalid_hazard, pr3invalid_o=>pr3invalid_hazard);

pr3_inst : pr3 port map(pentz_i=>pr3pentz_i,pentz_o=>pr3pentz,t1_i=>t1, pr3pen_i=>pen_out, pc_i=>pr2pc, ir_i=>pr2ir, invalid_i=>temp_invalid3, cw_i=>pr3cw_i, pr3a_i=>pr3a_i, pr3b_i=>pr3b_i, tz_i=>tz, pr3shift7out_i=>shift7_out, en=>pr3_en, rst=>rst, clk=>clk, t1_o=>pr3t1, pr3pen_o=>pr3pen, pc_o=>pr3pc, ir_o=>pr3ir, invalid_o=>pr3invalid, cw_o=>pr3cw, pr3a_o=>pr3a, pr3b_o=>pr3b, tz_o=>pr3tz, pr3shift7out_o=>pr3shift7_out);

--EX
t1_mux : mux2_16 port map(S0=>pr3cw(23), D0=>pr3a_i, D1=>add1_t1_out, Y=>t1_i);
t1_inst : Reg16 port map(d=>t1_i,en=>t1_en,rst=>rst,clk=>clk,q=>t1);
add1_t1 : add1 port map(alu_a=>t1, alu_out=>add1_t1_out);

chindi : mux2_16 port map (S0=>temp_D_sel, D0=>t1, D1=>pr3t1, Y=>pr4t1_i);

alu_a_mux : mux3_16 port map(S1=>pr3cw(15), S0=>pr3cw(14), D0=>pr3a, D1=>pr3b, D2=>pr3pc, Y=>alu2_a);
alu_b_mux : mux3_16 port map(S1=>pr3cw(13), S0=>pr3cw(12), D0=>pr3b, D1=>se9_out, D2=>se6_out, Y=>alu2_b);
se9_inst  : SE9 port map(ip=>pr3ir(8 downto 0), op=> se9_out);
se6_inst  : SE6 port map(ip=>pr3ir(5 downto 0), op=> se6_out);
alu2 : ALU port map(alu_a=>alu2_a, alu_b=>alu2_b, op=>pr3cw(11), alu_out=>alu2_out, c_out=>pr4c_i, z_out=> pr4z_i);
trfwrd_inst : trfwrd port map(pr3ir=>pr3ir, pr4ir=>pr4ir, pr5ir=>pr5ir, pr4c=>pr4c, pr4z=>pr4z, pr5c=>pr5c, pr5z=>pr5z, muxzout=>pr5z_i, pr4trfwr=>pr4trfwr, pr5trfwr=>pr5trfwr, c=>c, z=>z, reset=>rst, trfwr=>trfwr);

temp_D_sel <= (not pr3ir(15)) and pr3ir(14) and pr3ir(13) and pr3ir(12);
D_mux: mux2_16 port map(S0=>temp_D_sel, D0=>pr3a, D1=>pr3b, Y=>pr4d_i);
pr4_inst : pr4 port map(pentz_i=>pr3pentz,pentz_o=>pr4pentz,t1_i=>pr4t1_i, pr4pen_i=>pr3pen, pc_i=>pr3pc, ir_i=>pr3ir, invalid_i=>temp_invalid4, cw_i=>pr3cw, pr4a_i=>alu2_out, pr4d_i=>pr4d_i, pr4c_i=>pr4c_i, pr4z_i=>pr4z_i, pr4trfwr_i=>trfwr, pr4shift7out_i=>pr3shift7_out, en=>pr4_en, rst=>rst, clk=>clk, t1_o=>pr4t1, pr4pen_o=>pr4pen, pc_o=>pr4pc, ir_o=>pr4ir, invalid_o=>pr4invalid, cw_o=>pr4cw, pr4a_o=>pr4a, pr4d_o=>pr4d, pr4c_o=>pr4c, pr4z_o=>pr4z, pr4trfwr_o=>pr4trfwr, pr4shift7out_o=>pr4shift7_out);



--MEM
temp_rdbar <= pr4cw(8) or pr4invalid;
temp_wrbar <= pr4cw(7) or pr4invalid;       
datamem_a_mux : mux2_16 port map(S0=>pr4cw(10), D0=>pr4a, D1=>pr4t1, Y=>datamem_a);
datamem_inst : datamem port map(mem_d=>pr4d, mem_a=>datamem_a, rd_bar=>temp_rdbar, wr_bar=>temp_wrbar, rst=>rst, clk=>clk, mem_out=>datamem_out);
zd : zerodetector port map(mem2d=>datamem_out, z=>zd_out);
muxz : mux2_1 port map(n1=>zd_out, n0=>pr4z, s=>pr4cw(9), b=>pr5z_i);
pr5_inst : pr5 port map(pr5pen_i=>pr4pen, pc_i=>pr4pc, ir_i=>pr4ir, invalid_i=>temp_invalid5, cw_i=>pr4cw, pr5a_i=>pr4a, pr5b_i=>datamem_out, pr5c_i=>pr4c, pr5z_i=>pr5z_i, pr5trfwr_i=>pr4trfwr, pr5shift7out_i=>pr4shift7_out, en=>pr5_en, rst=>rst, clk=>clk, pr5pen_o=>pr5pen, pc_o=>pr5pc, ir_o=>pr5ir, invalid_o=>pr5invalid, cw_o=>pr5cw, pr5a_o=>pr5a, pr5b_o=>pr5b, pr5c_o=>pr5c, pr5z_o=>pr5z, pr5trfwr_o=>pr5trfwr, pr5shift7out_o=>pr5shift7_out);

--WB
rfd3_mux : mux4_16 port map(S0=>pr5cw(5), S1=>pr5cw(6), D0=>pr5b, D1=>pr5a, D2=>pr5shift7_out, D3=>pr5pc, Y=>rf_d3);
rfa3_mux : mux4_3 port map(S0=>pr5cw(3), S1=>pr5cw(4), D0=>pr5ir(5 downto 3), D1=>pr5ir(11 downto 9), D2=>pr5ir(8 downto 6), D3=>pr5pen, Y=>rf_a3);
c_inst : bit_reg port map(D=>pr5c, CLK=>clk ,reset=>rst, controlsignal=>temp_wrc, Q=>c);
z_inst : bit_reg port map(D=>pr5z, CLK=>clk ,reset=>rst, controlsignal=>temp_wrz, Q=>z);



end Struct;
