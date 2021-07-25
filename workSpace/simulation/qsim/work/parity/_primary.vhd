library verilog;
use verilog.vl_types.all;
entity parity is
    port(
        \in\            : in     vl_logic_vector(7 downto 0);
        parityOut       : out    vl_logic
    );
end parity;
