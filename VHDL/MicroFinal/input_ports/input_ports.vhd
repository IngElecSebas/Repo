library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity input_ports is
    Port (
        address : in std_logic_vector(3 downto 0); -- Suponiendo 16 puertos de entrada
        port_in_00 : in std_logic_vector(7 downto 0);
        port_in_01 : in std_logic_vector(7 downto 0);
        port_in_02 : in std_logic_vector(7 downto 0);
        port_in_03 : in std_logic_vector(7 downto 0);
        port_in_04 : in std_logic_vector(7 downto 0);
        port_in_05 : in std_logic_vector(7 downto 0);
        port_in_06 : in std_logic_vector(7 downto 0);
        port_in_07 : in std_logic_vector(7 downto 0);
        port_in_08 : in std_logic_vector(7 downto 0);
        port_in_09 : in std_logic_vector(7 downto 0);
        port_in_10 : in std_logic_vector(7 downto 0);
        port_in_11 : in std_logic_vector(7 downto 0);
        port_in_12 : in std_logic_vector(7 downto 0);
        port_in_13 : in std_logic_vector(7 downto 0);
        port_in_14 : in std_logic_vector(7 downto 0);
        port_in_15 : in std_logic_vector(7 downto 0);
        data_out : out std_logic_vector(7 downto 0)
    );
end input_ports;
architecture input_ports_arch of input_ports is
begin
    process (address, port_in_00, port_in_01, port_in_02, port_in_03, port_in_04, port_in_05, port_in_06, port_in_07,
             port_in_08, port_in_09, port_in_10, port_in_11, port_in_12, port_in_13, port_in_14, port_in_15)
    begin
        case address is
            when "0000" =>
                data_out <= port_in_00;
            when "0001" =>
                data_out <= port_in_01;
            when "0010" =>
                data_out <= port_in_02;
            when "0011" =>
                data_out <= port_in_03;
            when "0100" =>
                data_out <= port_in_04;
            when "0101" =>
                data_out <= port_in_05;
            when "0110" =>
                data_out <= port_in_06;
            when "0111" =>
                data_out <= port_in_07;
            when "1000" =>
                data_out <= port_in_08;
            when "1001" =>
                data_out <= port_in_09;
            when "1010" =>
                data_out <= port_in_10;
            when "1011" =>
                data_out <= port_in_11;
            when "1100" =>
                data_out <= port_in_12;
            when "1101" =>
                data_out <= port_in_13;
            when "1110" =>
                data_out <= port_in_14;
            when "1111" =>
                data_out <= port_in_15;
            when others =>
                data_out <= (others => '0');
        end case;
    end process;
end input_ports_arch;

