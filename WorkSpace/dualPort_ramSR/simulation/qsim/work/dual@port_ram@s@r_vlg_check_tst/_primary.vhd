library verilog;
use verilog.vl_types.all;
entity dualPort_ramSR_vlg_check_tst is
    port(
        q_a             : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end dualPort_ramSR_vlg_check_tst;
