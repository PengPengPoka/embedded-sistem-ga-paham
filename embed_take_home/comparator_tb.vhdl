library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comparator_tb is
  end comparator_tb;

architecture test of comparator_tb is
  component COMPR_2
  port(
    x, y : in std_logic_vector(1 downto 0); 
    xgty, xlty : buffer std_logic; 
    xeqy : out std_logic
  );
  end component;

  -- inputs
  signal x,y : std_logic_vector(1 downto 0) := (others => '0');
  -- outputs
  signal xgty,xlty,xeqy : std_logic;

begin
  COMP2BIT : COMPR_2 port map(
    x => x,
    y => y,
    xgty => xgty,
    xlty => xlty,
    xeqy => xeqy
  );

  stim_proc: process
  begin
    for i in 0 to 3 loop
      x <= std_logic_vector(to_unsigned(i,2));
      y <= std_logic_vector(to_unsigned(i+1,2));
      wait for 20 ns;
    end loop;

    for i in 0 to 3 loop
      x <= std_logic_vector(to_unsigned(1+1,2));
      y <= std_logic_vector(to_unsigned(i,2));
      wait for 20 ns;
    end loop;

    for i in 0 to 3 loop
      x <= std_logic_vector(to_unsigned(i,2));
      y <= std_logic_vector(to_unsigned(i,2));
      wait for 20 ns;
    end loop;
    wait;

    assert false report "end of test";
  end process;
end;