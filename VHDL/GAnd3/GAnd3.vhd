library ieee;
use ieee.std_logic_1164.all;


entity GAnd3 is

	port
	(
		-- Input ports
		A,B,C : in std_logic;

		-- Output ports
		F : out std_logic
	
	);
end GAnd3;


architecture arch_GAnd3 of GAnd3 is


begin

	F <= A and B and C;


end arch_GAnd3;
