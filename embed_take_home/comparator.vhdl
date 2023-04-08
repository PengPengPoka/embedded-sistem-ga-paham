library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity COMPR_2 is 
	port (x, y : in std_logic_vector(1 downto 0); 
	xgty, xlty : buffer std_logic; 
	xeqy : out std_logic); 

end COMPR_2;

architecture COMPR_DFL of COMPR_2 is
begin 
	xgty <= (x(1) and not(y(1))) or ((x(0) and not(y(1))) and not(y(0))) or (not(x(0) and not(x(1))) and y(0));
	xlty <= (y(1) and not(x(1))) or ((not(x(0) and y(0))) and y(1)) or ((not(x(0)) and not(x(1))) and y(0)); 
	xeqy <= xgty nor xlty;
end COMPR_DFL;