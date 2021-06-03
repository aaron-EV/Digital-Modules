library verilog;
use verilog.vl_types.all;
entity singlePort_ramSR_vlg_check_tst is
    port(
        dout            : in     vl_logic_vector(0 downto 0);
        sampler_rx      : in     vl_logic
    );
end singlePort_ramSR_vlg_check_tst;
