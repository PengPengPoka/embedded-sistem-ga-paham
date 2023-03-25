library ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity fa_tb is
    end fa_tb;

architecture test of fa_tb is
    component fa
        port(
            A: in std_logic;
            B: in std_logic;
            Ci: in std_logic;
            S: out std_logic;
            Co: out std_logic
        );
    end component;

    signal A,B,Ci,S,Co: std_logic;

begin
    full_adder: fa port map(A=>A, B=>B, S=>S, Ci=>Ci, Co=>Co);

    process begin
        A <= 'X';
        B <= 'X';
        Ci <= 'X';
        wait for 1 ns;

        A <= '0';
        B <= '0';
        Ci <= '0';
        wait for 1 ns;

        A <= '1';
        B <= '0';
        Ci <= '0';
        wait for 1 ns;

        A <= '0';
        B <= '1';
        Ci <= '0';
        wait for 1 ns;

        A <= '1';
        B <= '1';
        Ci <= '0';
        wait for 1 ns;

        A <= '0';
        B <= '0';
        Ci <= '1';
        wait for 1 ns;

        A <= '1';
        B <= '0';
        Ci <= '1';
        wait for 1 ns;

        A <= '0';
        B <= '1';
        Ci <= '1';
        wait for 1 ns;

        A <= '1';
        B <= '1';
        Ci <= '1';
        wait for 1 ns;

        assert false report "end of test";
        wait;

        end process;
    end test;