library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity outputPorts is
    Port (
        clock : in std_logic;
        reset : in std_logic;
        address : in std_logic_vector(7 downto 0);
        write_we_outputs : in std_logic;
        data_in : in std_logic_vector(7 downto 0);
        port_out_00 : out std_logic_vector(7 downto 0);
        port_out_01 : out std_logic_vector(7 downto 0)
    );
end outputPorts;

architecture outputPorts_arch of outputPorts is
begin

    U3 : process (clock, reset)
    begin
        if (reset = '0') then
            port_out_00 <= x"00";
        elsif (rising_edge(clock)) then
            if (address = x"E0" and write_we_outputs = '1') then
                port_out_00 <= data_in;
            end if;
        end if;
    end process;

    U4 : process (clock, reset)
    begin
        if (reset = '0') then
            port_out_01 <= x"00";
        elsif (rising_edge(clock)) then
            if (address = x"E1" and write_we_outputs = '1') then
                port_out_01 <= data_in;
            end if;
        end if;
    end process;

end outputPorts_arch;

