library verilog;
use verilog.vl_types.all;
entity DivFreq50 is
    port(
        clockDiv        : in     vl_logic;
        resetDiv        : in     vl_logic;
        divided_clk     : out    vl_logic
    );
end DivFreq50;
