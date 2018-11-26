library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity pr2 is 
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
end pr2;

architecture description of pr2 is

begin
    process(clk, rst, en, pc_i, ir_i, invalid_i, cw_i)
    begin
        if rst = '1' then
            pc_o <= "0000000000000000";
            ir_o <= "1111000000000000";
            invalid_o <= '1';
            cw_o <= "0000000000000000110000000";
        elsif rising_edge(clk) then
            if en = '1' then
                pc_o <= pc_i;
                ir_o <= ir_i;
                invalid_o <= invalid_i;
                cw_o <= cw_i;
            end if;
        end if;
    end process;
end description;