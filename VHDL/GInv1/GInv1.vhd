library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity GInv1 is

	port
	(
		-- Input ports
		A : in std_logic;
		

		-- Output ports
		F : out std_logic
	);
end GInv1;


architecture arch_GInv1 of GInv1 is


begin

	F <= not A;
	
end arch_GInv1;
