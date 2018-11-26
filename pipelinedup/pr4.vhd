library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity pr4 is 
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

         en  : in std_logic; -- load/enable.
         rst : in std_logic; -- async. clear.
         clk : in std_logic; -- clock.
            
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
end pr4;

architecture description of pr4 is

begin
    process(clk, rst, en, t1_i, pr4pen_i, pc_i, ir_i, invalid_i, cw_i, pr4a_i, pr4d_i, pr4c_i, pr4z_i, pr4trfwr_i, pr4shift7out_i)
    begin
        if rst = '1' then
            t1_o <= "0000000000000000";
            pr4pen_o <= "000";
            pc_o <= "0000000000000000";
            ir_o <= "1111000000000000";
            invalid_o <= '1';
            cw_o <= "0000000000000000110000000";
            pr4a_o <= "0000000000000000";
            pr4d_o <= "0000000000000000";
            pr4c_o <= '0';
            pr4z_o <= '0';
            pr4trfwr_o <= '0';
            pr4shift7out_o <= "0000000000000000"; 
        elsif rising_edge(clk) then
            if en = '1' then
                t1_o <= t1_i;
                pr4pen_o <= pr4pen_i;
                pc_o <= pc_i;
                ir_o <= ir_i;
                invalid_o <= invalid_i;
                cw_o <= cw_i;
                pr4a_o <= pr4a_i;
                pr4d_o <= pr4d_i;
                pr4c_o <= pr4c_i;
                pr4z_o <= pr4z_i;
                pr4trfwr_o <= pr4trfwr_i;
                pr4shift7out_o <= pr4shift7out_i;
            end if;
        end if;
    end process;
end description;