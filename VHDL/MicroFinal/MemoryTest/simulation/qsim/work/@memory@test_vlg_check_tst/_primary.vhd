library verilog;
use verilog.vl_types.all;
entity MemoryTest_vlg_check_tst is
    port(
        display7segu0   : in     vl_logic_vector(6 downto 0);
        display7segu1   : in     vl_logic_vector(6 downto 0);
        display7segu2   : in     vl_logic_vector(6 downto 0);
        display7segu3   : in     vl_logic_vector(6 downto 0);
        port_out_00     : in     vl_logic_vector(7 downto 0);
        port_out_01     : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end MemoryTest_vlg_check_tst;
