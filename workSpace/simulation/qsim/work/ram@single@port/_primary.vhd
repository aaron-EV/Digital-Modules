library verilog;
use verilog.vl_types.all;
entity ramSinglePort is
    port(
        clk             : in     vl_logic;
        we              : in     vl_logic;
        din             : in     vl_logic_vector(7 downto 0);
        addr            : in     vl_logic_vector(2 downto 0);
        dout            : out    vl_logic_vector(7 downto 0)
    );
end ramSinglePort;
