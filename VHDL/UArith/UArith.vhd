library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity UArith is
	
	port
	(
		-- Input ports
		A, B : in integer range 0 to 31;
		SA0, SA1 : in std_logic;
		Signo_A : in std_logic;
		Signo_B : in std_logic;
		-- Output ports
		S_Out : out integer range -20 to 20
	);
end UArith;

architecture arch_UArith of UArith is

	signal AwS, BwS : integer range -15 to 15;
	
begin

	PArith : process 	(A, B, AwS, BwS, SA0, SA1, Signo_A, Signo_B) IS
	
	begin
	
		 if Signo_A = '1' then 
        AwS <= -1 * A;
    elsif Signo_A = '0' then
        AwS <= A;
    end if;

    if Signo_B = '1' then 
        BwS <= -1 * B;
    elsif Signo_B = '0' then
        BwS <= B;
    end if;
	
		if SA0 = '0' and SA1 = '0' then
			S_Out <= -1*AwS + 3;
		elsif SA0 = '0' and SA1 = '1' then
			S_Out <= -1*AwS -3;
		elsif SA0 = '1' and SA1 = '0' then
			S_Out <= -1*BwS - 4;
		else 
			S_Out <= -1*BwS - 3;	
		end if;
	end process;
					
end arch_UArith;

	