library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU_TEST is
    Port (
        A          : in  std_logic_vector(7 downto 0);
        B          : in  std_logic_vector(7 downto 0);
        ALU_Sel    : in  std_logic_vector(1 downto 0);
        segments_0 : out std_logic_vector(6 downto 0); -- Display para el nibble inferior
        segments_1 : out std_logic_vector(6 downto 0); -- Display para el nibble superior
        NZVC       : out std_logic_vector(3 downto 0)
    );
end ALU_TEST;

architecture Behavioral of ALU_TEST is
    signal Result : std_logic_vector(7 downto 0);
begin
    -- Instanciar la ALU
    ALU_inst : entity work.ALU
        port map (
            A => A,
            B => B,
            ALU_Sel => ALU_Sel,
            Result => Result,
            NZVC => NZVC
        );

    -- Instanciar el decodificador de display de 7 segmentos para el nibble inferior
    display_lower : entity work.display7seg_hex
        port map (
            num => unsigned(Result(3 downto 0)),
            segments => segments_0
        );

    -- Instanciar el decodificador de display de 7 segmentos para el nibble superior
    display_upper : entity work.display7seg_hex
        port map (
            num => unsigned(Result(7 downto 4)),
            segments => segments_1
        );
end Behavioral;
