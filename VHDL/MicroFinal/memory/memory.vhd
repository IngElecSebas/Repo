library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity memory is
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
end memory;

architecture memory_arch of memory is
    component rom_128x8_sync
        Port (
            address  : in std_logic_vector(7 downto 0);
            clk      : in std_logic;
            data_out : out std_logic_vector(7 downto 0)
        );
    end component;

    component rw_96x8_sync
        Port (
            address  : in std_logic_vector(7 downto 0);
            data_in  : in std_logic_vector(7 downto 0);
            Write_WE : in std_logic;
            clk      : in std_logic;
            data_out : out std_logic_vector(7 downto 0)
        );
    end component;

    component outputPorts
        Port (
            clock            : in std_logic;
            reset            : in std_logic;
            address          : in std_logic_vector(7 downto 0);
            write_we_outputs : in std_logic;
            data_in          : in std_logic_vector(7 downto 0);
            port_out_00      : out std_logic_vector(7 downto 0);
            port_out_01      : out std_logic_vector(7 downto 0)
        );
    end component;


    signal internal_data_out_rom : std_logic_vector(7 downto 0);
    signal internal_data_out_rw : std_logic_vector(7 downto 0);
    signal internal_port_out_00 : std_logic_vector(7 downto 0);
    signal internal_port_out_01 : std_logic_vector(7 downto 0);
    signal internal_data_out_mux : std_logic_vector(7 downto 0);

begin
    -- Instancia del ROM
    U1: rom_128x8_sync
        port map (
            address => address,
            clk     => clock,
            data_out => internal_data_out_rom
        );

    -- Instancia del RAM
    U2: rw_96x8_sync
        port map (
            address => address,
            data_in => data_in,
            Write_WE => write_memory,
            clk     => clock,
            data_out => internal_data_out_rw
        );

    -- Controlador de puertos de salida
    U3: outputPorts
        port map (
            clock            => clock,
            reset            => reset,
            address          => address,
            write_we_outputs => write_memory,
            data_in          => data_in,
            port_out_00      => internal_port_out_00,
            port_out_01      => internal_port_out_01
        );

    

    -- Multiplexor para la salida de datos
    MUX1 : process (address, internal_data_out_rom, internal_data_out_rw,
                    port_in_00, port_in_01)
    begin
        if (to_integer(unsigned(address)) >= 0 and to_integer(unsigned(address)) <= 127) then
            data_out <= internal_data_out_rom;
        elsif (to_integer(unsigned(address)) >= 128 and to_integer(unsigned(address)) <= 223) then
            data_out <= internal_data_out_rw;
        elsif (address = x"F0") then data_out <= port_in_00;
        elsif (address = x"F1") then data_out <= port_in_01;
        else
            data_out <= x"00";
        end if;
    end process;

    -- Conexión de los puertos de salida
    port_out_00 <= internal_port_out_00;
    port_out_01 <= internal_port_out_01;

end memory_arch;
