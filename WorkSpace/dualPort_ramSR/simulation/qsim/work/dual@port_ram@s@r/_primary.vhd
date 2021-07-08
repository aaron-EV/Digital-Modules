library verilog;
use verilog.vl_types.all;
entity dualPort_ramSR is
    port(
        clk             : in     vl_logic;
        we_pa           : in     vl_logic;
        ce_pa           : in     vl_logic;
        addr_a          : in     vl_logic_vector(2 downto 0);
        data_a          : in     vl_logic_vector(7 downto 0);
        q_a             : out    vl_logic_vector(7 downto 0)
    );
end dualPort_ramSR;
