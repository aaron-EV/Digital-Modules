library verilog;
use verilog.vl_types.all;
entity mux2_to_1_vlg_sample_tst is
    port(
        \in\            : in     vl_logic_vector(1 downto 0);
        s               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end mux2_to_1_vlg_sample_tst;
