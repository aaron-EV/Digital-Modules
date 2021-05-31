library verilog;
use verilog.vl_types.all;
entity mux2_to_1_vlg_sample_tst is
    port(
        in0             : in     vl_logic;
        in1             : in     vl_logic;
        s               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end mux2_to_1_vlg_sample_tst;
