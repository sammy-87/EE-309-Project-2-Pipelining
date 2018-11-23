library ieee;
use ieee.std_logic_1164.all;

entity  pc_mux is 
 port (pc_in, pr3ir, pr4ir, pr5ir, b, alu_out, mem2_out : in std_logic_vector(15 downto 0);
 		pr4trfwr, pr5trfwr : in std_logic;
  		reset : in std_logic;
  		pc_out: out std_logic_vector(15 downto 0)); --controlsignal is the Enable signal
end pc_mux;

architecture WhatDoYouCare of pc_mux is
begin

process(reset, pr3ir, pr4c, pr4z, pr5c, pr5z, muxzout, pr5trfwr,  pr4trfwr, c, z, pr4ir, pr5ir)
	variable pc_out_var : std_logic := (others => '0');

begin 
	if pr5ir(15 downto 12) = "0000" 
	
