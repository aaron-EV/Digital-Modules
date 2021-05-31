library verilog;
use verilog.vl_types.all;
entity modM_counter is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        en              : in     vl_logic;
        \out\           : out    vl_logic_vector(3 downto 0)
    );
end modM_counter;
