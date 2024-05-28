library verilog;
use verilog.vl_types.all;
entity MemoryTest is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        address         : in     vl_logic_vector(7 downto 0);
        data_in         : in     vl_logic_vector(7 downto 0);
        write_memory    : in     vl_logic;
        port_out_00     : out    vl_logic_vector(7 downto 0);
        port_out_01     : out    vl_logic_vector(7 downto 0);
        display7segu3   : out    vl_logic_vector(6 downto 0);
        display7segu2   : out    vl_logic_vector(6 downto 0);
        display7segu1   : out    vl_logic_vector(6 downto 0);
        display7segu0   : out    vl_logic_vector(6 downto 0)
    );
end MemoryTest;
