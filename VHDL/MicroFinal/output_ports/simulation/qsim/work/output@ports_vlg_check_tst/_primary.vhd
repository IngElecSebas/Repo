library verilog;
use verilog.vl_types.all;
entity outputPorts_vlg_check_tst is
    port(
        port_out_00     : in     vl_logic_vector(7 downto 0);
        port_out_01     : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end outputPorts_vlg_check_tst;
