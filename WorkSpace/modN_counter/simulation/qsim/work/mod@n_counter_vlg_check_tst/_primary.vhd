library verilog;
use verilog.vl_types.all;
entity modN_counter_vlg_check_tst is
    port(
        done            : in     vl_logic;
        \out\           : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end modN_counter_vlg_check_tst;
