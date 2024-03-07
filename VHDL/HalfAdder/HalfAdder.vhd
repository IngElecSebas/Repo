library ieee;
use ieee.std_logic_1164.all;

entity HalfAdder is

	port
	(
		-- Input ports
		A : in std_logic;
		B : in std_logic;
		-- Output ports
		Sum : out std_logic;
		Cout : out std_logic
		
	);
end HalfAdder;

architecture arch_HalfAdder of HalfAdder is

begin

	Sum <= A xor B after 1 ns;
	Cout <= A and B after 1 ns;

end arch_HalfAdder;
