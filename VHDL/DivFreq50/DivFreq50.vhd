library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DivFreq50 is
    port (
        clockDiv : in std_logic;              -- Entrada del reloj de 50 MHz
        resetDiv : in std_logic;            -- Entrada de reset
        divided_clk : out std_logic      -- Salida del reloj dividido
    );
end entity DivFreq50;

architecture arch_DivFreq50 of DivFreq50 is

    signal cuenta : integer range 0 to 49999999 :=0;  -- Valor para dividir 50 MHz a 1 Hz
    signal salida : std_logic;  
	 
begin
   process (clockDiv, resetDiv) is
    begin
        if resetDiv = '1' then
            salida <= '0';  -- Reiniciar el contador en caso de reset
            cuenta <= 0;          
        elsif clockDiv'event and clockDiv='1' then      -- Solo actuar en flanco de subida del reloj
            if cuenta = 49999999 then
                cuenta <= 0;  -- Reiniciar el contador cuando alcanza el valor deseado
                salida <= not Salida;  -- Invertir la salida del reloj dividido
            else
                cuenta <= cuenta + 1;  -- Incrementar el contador
            end if;
        end if;
    end process;
	 
divided_clk <= salida;	 
end architecture arch_DivFreq50;
