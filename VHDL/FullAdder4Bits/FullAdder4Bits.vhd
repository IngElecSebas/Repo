library ieee;
use ieee.std_logic_1164.all;

entity FullAdder4Bits is

	port
	(
		-- Input ports
		A, B : in std_logic_vector (3 downto 0);
		Cin : in std_logic;
		-- Output ports
		Sum : out std_logic_vector (3 downto 0);
		Cout : out std_logic
	);
end FullAdder4Bits;

architecture arch_FullAdder4Bits of FullAdder4Bits is
	
	component FullAdder
	port(-- Input ports
			A : in std_logic;
			B : in std_logic;
			Cin : in std_logic;

			-- Output ports
			Sum : out std_logic;
			Cout : out std_logic);
	end Component;
	
	signal C1, C2, C3 : std_logic;

begin

	cA0 : FullAdder port map (A(0), B(0),Cin, Sum(0), C1);
	A1 : FullAdder port map (A(1), B(1), C1, Sum(1), C2);
	A2 : FullAdder port map (A(2), B(2), C2, Sum(2), C3);
	A3 : FullAdder port map (A(3), B(3), C3, Sum(3), Cout);
	
	--A0 : FullAdder port map (A(3), B(3), C3, Sum(3), Sum(4));
	--A1 : FullAdder port map (A(2), B(2), C2, Sum(2), C3);
	--A2 : FullAdder port map (A(1), B(1), C1, Sum(1), C2);
	--A3 : FullAdder port map (A(0), B(0),Cin, Sum(0), C1);

end arch_FullAdder4Bits;
