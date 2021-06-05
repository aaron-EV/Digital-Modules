library verilog;
use verilog.vl_types.all;
entity shift_R_register_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        din             : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end shift_R_register_vlg_sample_tst;
