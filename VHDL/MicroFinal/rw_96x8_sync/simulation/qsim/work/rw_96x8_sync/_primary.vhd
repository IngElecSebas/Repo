library verilog;
use verilog.vl_types.all;
entity rw_96x8_sync is
    port(
        address         : in     vl_logic_vector(7 downto 0);
        data_in         : in     vl_logic_vector(7 downto 0);
        Write_WE        : in     vl_logic;
        clk             : in     vl_logic;
        data_out        : out    vl_logic_vector(7 downto 0)
    );
end rw_96x8_sync;
