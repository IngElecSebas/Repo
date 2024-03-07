library ieee;
use ieee.std_logic_1164.all;

entity DivFreq is

	port
	(
		-- Input ports
		clk : in std_logic;

		-- Output ports
		out1, out2 : buffer std_logic
	);
end DivFreq;

architecture arch_DivFreq of DivFreq is

	signal contador1 : integer range 0 to 7;

begin

	reloj : process (clk) is
		variable contador2 : integer	range 0 to 7;
	begin
		if clk'event and clk='1' then
			contador1 <= contador1 + 1;
			contador2 := contador2 + 1;
			if contador1 = 6 then
				out1 <= not out1;
				contador1 <= 0;
			end if;
			if contador2 = 6 then
				out2 <= not out2;
				contador2 := 0;
			end if;
		end if;	
	end process;
end arch_DivFreq;

