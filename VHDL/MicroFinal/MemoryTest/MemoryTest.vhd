library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MemoryTest is
    Port (
        clock : in std_logic;
        reset : in std_logic;
        address : in std_logic_vector(7 downto 0);
        data_in : in std_logic_vector(7 downto 0);
        write_memory : in std_logic;
        port_out_00 : out std_logic_vector(7 downto 0);
        port_out_01 : out std_logic_vector(7 downto 0);
        display7segu3 : out std_logic_vector(6 downto 0);
        display7segu2 : out std_logic_vector(6 downto 0);
        display7segu1 : out std_logic_vector(6 downto 0); 
        display7segu0 : out std_logic_vector(6 downto 0)  
    );
end MemoryTest;

architecture Behavioral of MemoryTest is
    component memory
        Port (
            clock : in std_logic;
            reset : in std_logic;
            address : in std_logic_vector(7 downto 0);
            data_in : in std_logic_vector(7 downto 0);
            write_memory : in std_logic;
            data_out : out std_logic_vector(7 downto 0);
            port_out_00 : out std_logic_vector(7 downto 0);
            port_out_01 : out std_logic_vector(7 downto 0);
            port_in_00 : in std_logic_vector(7 downto 0);
            port_in_01 : in std_logic_vector(7 downto 0)
        );
    end component;

    component display7seg
        Port (
            num : in unsigned(3 downto 0);      
            segments : out std_logic_vector(6 downto 0)  
        );
    end component;

    signal data_out_memory : std_logic_vector(7 downto 0);
    signal segments_display_00 : std_logic_vector(6 downto 0);
    signal segments_display_01 : std_logic_vector(6 downto 0);
    signal segments_display_10 : std_logic_vector(6 downto 0); 
    signal segments_display_11 : std_logic_vector(6 downto 0); 

begin
    U1: memory
        port map (
            clock => clock,
            reset => reset,
            address => address,
            data_in => data_in,
            write_memory => write_memory,
            data_out => data_out_memory,
            port_out_00 => port_out_00,
            port_out_01 => port_out_01,
            port_in_00 => (others => '0'), 
            port_in_01 => (others => '0')  
        );

    -- Instancia del primer display de 7 segmentos para los bits 7 a 4 del data_out_memory
    U2: display7seg
        port map (
            num => unsigned(data_out_memory(7 downto 4)),
            segments => segments_display_00
        );

    -- Segundo display de 7 segmentos para los bits 3 a 0 del data_out_memory
    U3: display7seg
        port map (
            num => unsigned(data_out_memory(3 downto 0)), 
            segments => segments_display_01
        );

    -- Tercer display de 7 segmentos para los bits 7 a 4 del address
    U4: display7seg
        port map (
            num => unsigned(address(7 downto 4)), 
            segments => segments_display_10
        );

    -- Cuarto display de 7 segmentos para los bits 3 a 0 del address
    U5: display7seg
        port map (
            num => unsigned(address(3 downto 0)), -- 
            segments => segments_display_11
        );

    -- Asignación señale puertos de salidas
    display7segu2 <= segments_display_01;
    display7segu3 <= segments_display_00;
    display7segu0 <= segments_display_11; 
    display7segu1 <= segments_display_10; 

end Behavioral;

