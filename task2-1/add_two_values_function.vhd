library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity add_two_values_function is
port (
        a : in std_logic_vector(3 downto 0);      
        b : in std_logic_vector(3 downto 0);
        s : out std_logic_vector(3 downto 0);
        cout : out std_logic                         
	);
end add_two_values_function;

architecture behavior of add_two_values_function is

    signal sv : std_logic_vector(4 downto 0);

    function add_two_values(    a_num : std_logic_vector(3 downto 0);
                                b_num : std_logic_vector(3 downto 0))
                            return std_logic_vector is

        variable sum : std_logic_vector(4 downto 0) := "00000";

        begin
            sum := ('0' & a_num) + ('0' & b_num);

        return sum;

    end add_two_values;

    begin
        sv <= add_two_values(a, b);

        s <=  sv(3 downto 0);

        cout <= sv(4);


end behavior;