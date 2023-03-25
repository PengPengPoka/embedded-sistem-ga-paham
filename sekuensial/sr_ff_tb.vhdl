LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity sr_ff_tb is
    end sr_ff_tb;

architecture test of sr_ff_tb is
    component sr_ff
        port
        (
            S: in std_ulogic;
            R: in std_ulogic;
            Clk: in std_ulogic;
            Q: out std_ulogic;
            Qo: out std_ulogic
        );
    end component;

    signal S, R, Clk, Q, Qo: std_ulogic;

begin
    sr_latch: sr_ff port map(S=>S, R=>R, Clk=>Clk, Q=>Q, Qo=>Qo);

    process begin
        S <= 'X';
        R <= 'X';
        Clk <= 'X';
        wait for 1 ns;

        S <= '0';
        R <= '0';
        Clk <= '0';
        wait for 1 ns;

        S <= '1';
        R <= '0';
        Clk <= '0';
        wait for 1 ns;

        S <= '0';
        R <= '1';
        Clk <= '0';
        wait for 1 ns;

        S <= '1';
        R <= '1';
        Clk <= '0';
        wait for 1 ns;

        S <= '0';
        R <= '0';
        Clk <= '1';
        wait for 1 ns;

        S <= '1';
        R <= '0';
        Clk <= '1';
        wait for 1 ns;

        S <= '0';
        R <= '1';
        Clk <= '1';
        wait for 1 ns;

        S <= '1';
        R <= '1';
        Clk <= '1';
        wait for 1 ns;

        assert false report "end of test";
        wait;

        end process;
    end test;
        