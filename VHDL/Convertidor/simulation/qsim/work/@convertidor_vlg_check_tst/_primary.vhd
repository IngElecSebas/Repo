library verilog;
use verilog.vl_types.all;
entity Convertidor_vlg_check_tst is
    port(
        DC              : in     vl_logic_vector(6 downto 0);
        UN              : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end Convertidor_vlg_check_tst;
