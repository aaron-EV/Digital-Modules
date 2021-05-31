library verilog;
use verilog.vl_types.all;
entity modM_counter_vlg_check_tst is
    port(
        outReg          : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end modM_counter_vlg_check_tst;
