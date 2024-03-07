library ieee;
use ieee.std_logic_1164.all;


entity GOr3 is

	port
	(
		-- Input ports
		A,B,C : in std_logic;

		-- Output ports
		F : out std_logic
	
	);
end Gor3;


architecture arch_GOr3 of GOr3 is


begin

	F <= A or B or C;


end arch_GOr3;
