library verilog;
use verilog.vl_types.all;
entity swapper_vlg_check_tst is
    port(
        largest         : in     vl_logic_vector(7 downto 0);
        smallest        : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end swapper_vlg_check_tst;
