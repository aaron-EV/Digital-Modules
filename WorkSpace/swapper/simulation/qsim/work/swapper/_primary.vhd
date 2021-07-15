library verilog;
use verilog.vl_types.all;
entity swapper is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        largest         : out    vl_logic_vector(7 downto 0);
        smallest        : out    vl_logic_vector(7 downto 0)
    );
end swapper;
