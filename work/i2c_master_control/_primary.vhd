library verilog;
use verilog.vl_types.all;
entity i2c_master_control is
    port(
        start           : in     vl_logic;
        successfull     : out    vl_logic;
        address_slave   : in     vl_logic_vector(6 downto 0);
        address_register: in     vl_logic_vector(6 downto 0);
        data            : in     vl_logic_vector(7 downto 0);
        clock           : in     vl_logic
    );
end i2c_master_control;
