library verilog;
use verilog.vl_types.all;
entity shift_R_register is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        din             : in     vl_logic;
        \out\           : out    vl_logic_vector(7 downto 0)
    );
end shift_R_register;
