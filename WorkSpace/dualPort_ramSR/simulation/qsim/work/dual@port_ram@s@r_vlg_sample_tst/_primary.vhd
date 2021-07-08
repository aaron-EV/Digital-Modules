library verilog;
use verilog.vl_types.all;
entity dualPort_ramSR_vlg_sample_tst is
    port(
        addr_a          : in     vl_logic_vector(2 downto 0);
        ce_pa           : in     vl_logic;
        clk             : in     vl_logic;
        data_a          : in     vl_logic_vector(7 downto 0);
        we_pa           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end dualPort_ramSR_vlg_sample_tst;
