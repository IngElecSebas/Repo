library verilog;
use verilog.vl_types.all;
entity MemoryTest_vlg_sample_tst is
    port(
        address         : in     vl_logic_vector(7 downto 0);
        clock           : in     vl_logic;
        data_in         : in     vl_logic_vector(7 downto 0);
        reset           : in     vl_logic;
        write_memory    : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end MemoryTest_vlg_sample_tst;
