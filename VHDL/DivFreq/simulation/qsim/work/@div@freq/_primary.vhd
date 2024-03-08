library verilog;
use verilog.vl_types.all;
entity DivFreq is
    port(
        clk             : in     vl_logic;
        out1            : out    vl_logic;
        out2            : out    vl_logic
    );
end DivFreq;
