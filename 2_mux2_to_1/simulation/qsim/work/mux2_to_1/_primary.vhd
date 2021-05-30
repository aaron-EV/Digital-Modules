library verilog;
use verilog.vl_types.all;
entity mux2_to_1 is
    port(
        \in\            : in     vl_logic_vector(1 downto 0);
        s               : in     vl_logic;
        \out\           : out    vl_logic
    );
end mux2_to_1;
