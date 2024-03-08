library verilog;
use verilog.vl_types.all;
entity DivFreq50_vlg_sample_tst is
    port(
        clockDiv        : in     vl_logic;
        resetDiv        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end DivFreq50_vlg_sample_tst;
