library verilog;
use verilog.vl_types.all;
entity Convertidor is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        Cin             : in     vl_logic;
        UN              : out    vl_logic_vector(6 downto 0);
        DC              : out    vl_logic_vector(6 downto 0)
    );
end Convertidor;
