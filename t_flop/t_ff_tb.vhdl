LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity t_ff_tb is
    end t_ff_tb;

architecture test of t_ff_tb is
    component t_ff
        port
        (
            T: in std_logic;
            Clk: in std_logic;
            Q: out std_logic;
            Qo: out std_logic
        );
    end component;

    signal T,Clk,Q,Qo: std_logic;

begin
    t_flop: t_ff port map(T => T, Clk => Clk, Q => Q, Qo => Qo);

    process begin
        T <= 'X';
        Clk <= 'X';
        wait for 1 ns;

        T <= '0';
        Clk <= '0';
        wait for 1 ns;

        T <= '1';
        Clk <= '0';
        wait for 1 ns;

        T <= '0';
        Clk <= '1';
        wait for 1 ns;

        T <= '1';
        Clk <= '1';
        wait for 1 ns;

        assert false report "end of test";
        wait;

        end process;
    end test;




        