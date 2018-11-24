library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity pr5 is 
    port(
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
end pr5;

architecture description of pr5 is

begin
    process(clk, rst, en, pc_i, ir_i, invalid_i, cw_i, pr5a_i, pr5b_i, pr5c_i, pr5z_i, pr5trfwr_i, pr5shift7out_i)
    begin
        if rst = '1' then
            pc_o <= "0000000000000000";
            ir_o <= "0000000000000000";
            invalid_o <= '0';
            cw_o <= "0000000000000000110000000";
            pr5a_o <= "0000000000000000";
            pr5b_o <= "0000000000000000";
            pr5c_o <= '0';
            pr5z_o <= '0';
            pr5trfwr_o <= '0';
            pr5shift7out_o <= "0000000000000000"; 
        elsif rising_edge(clk) then
            if en = '1' then
                pc_o <= pc_i;
                ir_o <= ir_i;
                invalid_o <= invalid_i;
                cw_o <= cw_i;
                pr5a_o <= pr5a_i;
                pr5b_o <= pr5b_i;
                pr5c_o <= pr5c_i;
                pr5z_o <= pr5z_i;
                pr5trfwr_o <= pr5trfwr_i;
                pr5shift7out_o <= pr5shift7out_i;
            end if;
        end if;
    end process;
end description;