library verilog;
use verilog.vl_types.all;
entity singlePort_ramRA is
    port(
        clk             : in     vl_logic;
        we              : in     vl_logic;
        addr            : in     vl_logic_vector(7 downto 0);
        din             : in     vl_logic_vector(0 downto 0);
        dout            : out    vl_logic_vector(0 downto 0)
    );
end singlePort_ramRA;
