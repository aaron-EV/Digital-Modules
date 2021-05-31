library verilog;
use verilog.vl_types.all;
entity modN_counter_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        en              : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end modN_counter_vlg_sample_tst;
