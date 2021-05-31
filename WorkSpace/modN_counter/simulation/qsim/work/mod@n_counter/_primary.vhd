library verilog;
use verilog.vl_types.all;
entity modN_counter is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        en              : in     vl_logic;
        \out\           : out    vl_logic_vector(5 downto 0);
        done            : out    vl_logic
    );
end modN_counter;
