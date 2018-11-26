library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity pr3 is 
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

         en  : in std_logic; -- load/enable.
         rst : in std_logic; -- async. clear.
         clk : in std_logic; -- clock.

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
end pr3;

architecture description of pr3 is

begin
    process(clk, rst, en, t1_i, pr3pen_i, pc_i, ir_i, invalid_i, cw_i, pr3a_i, pr3b_i, tz_i, pr3shift7out_i)
    begin
        if rst = '1' then
            t1_o <= "0000000000000000";
            pr3pen_o <= "000";
            pc_o <= "0000000000000000";
            ir_o <= "1111000000000000";
            invalid_o <= '1';
            cw_o <= "0000000000000000110000000";
            pr3a_o <= "0000000000000000";
            pr3b_o <= "0000000000000000";
            tz_o <= '0';
            pr3shift7out_o <= "0000000000000000"; 
        elsif rising_edge(clk) then
            if en = '1' then
                t1_o <= t1_i;
                pr3pen_o <= pr3pen_i;
                pc_o <= pc_i;
                ir_o <= ir_i;
                invalid_o <= invalid_i;
                cw_o <= cw_i;
                pr3a_o <= pr3a_i;
                pr3b_o <= pr3b_i;
                tz_o <= tz_i;
                pr3shift7out_o <= pr3shift7out_i;
            end if;
        end if;
    end process;
end description;