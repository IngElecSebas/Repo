library ieee;
use ieee.std_logic_1164.all;

entity SystemX is


	port
	(
		-- Input ports
		A,B,C : in std_logic;


		-- Output ports
		F : out std_logic
	);
end SystemX;


architecture arch_SystemX of SystemX is

	signal An,Bn,Cn : std_logic;
	signal m0,m2,m6 : std_logic;
	
	component GInv1
	port( -- Input ports
			A : in std_logic;
			-- Output ports
			F : out std_logic );
	end component;
	
	component GAnd3 
	port( -- Input ports
			A,B,C : in std_logic;
			-- Output ports
			F : out std_logic );
	end component;
	
	component GOr3
	port( -- Input ports
			A,B,C : in std_logic;
			-- Output ports
			F : out std_logic );
	end component;
	

begin

	 U1 : Ginv1 port map (A=>A, F=>An);
	 U2 : Ginv1 port map (A=>B, F=>Bn);
	 U3 : Ginv1 port map (A=>C, F=>Cn);
	 
	 U4 : GAnd3 port map (A=>An, B=>Bn, C=>Cn, F=>m0);
	 U5 : GAnd3 port map (A=>An, B=>B, C=>Cn, F=>m2);
	 U6 : GAnd3 port map (A=>A, B=>B, C=>Cn, F=>m6);
	 
	 U7 : GOr3 port map (A=>m0, B=>m2, C=>m6, F=>F);
	
	
end arch_SystemX;
