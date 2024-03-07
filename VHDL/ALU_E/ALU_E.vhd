library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU_E is

	port
	(
		-- Input ports
		Ai, Bi : in std_logic_vector (4 downto 0);
		S0,S1,S2 : in std_logic;

		-- Output ports
		SALUi : out std_logic_vector (3 downto 0)
	);
end ALU_E;

architecture arch_ALU_E of ALU_E is

	component UArith is
	port( -- Input ports
			A, B : in std_logic_vector (4 downto 0);
			SA0, SA1 : in std_logic;
			Signo_A : in std_logic;
			Signo_B : in std_logic;
			-- Output ports
			S_Out : out std_logic_vector (5 downto 0)
	);
	end component;

	signal SULi : std_logic_vector (3 downto 0); -- Señal de salida de la unidad Logica
	signal SAUi : std_logic_vector(4 downto 0); 	-- Señal de salida de la unidad Aritmetica
	signal S_Arith : std_logic_vector (3 downto 0); -- Resultado de la unidad Aritmetica sin el signo
	signal signo : std_logic; -- Signo del resultado de la unidad Aritmetica
	signal signo_Ai : std_logic;
	signal signo_Bi : std_logic;
	signal Vector_A : std_logic_vector (3 downto 0);
	signal Vector_B : std_logic_vector (3 downto 0);
	
begin
	
	
	UA : UArith port map (Ai ,Bi , S0, S1, Signo_Ai, Signo_Bi, SAUi);
	signo <= SAUi(0);
	S_Arith <= SAUi(1) & SAUi(2) & SAUi(3) & SAUi(4);
	
	pLogic : process (Ai, Bi, S0, S1) IS
	
	begin
		if S0 = '0' and S1 = '0' then
			SULi <= not Ai;
		elsif S0 = '0' and S1 = '1' then
			SULi <= not Bi;
		elsif S0 = '1' and S1 = '0' then
			SULi <= Ai or (not Bi);	
		else 
			SULi <= Ai and Bi;		
		end if;
	end process;
	
	Mux : process (SULi, S_Arith, signo, S2) IS
	
	begin 
		if S2 = '0' then
			SALUi <= SULi;
		else 
			SALUi <= S_Arith;
		end if;
	end process;	
			
	
end arch_ALU_E;


