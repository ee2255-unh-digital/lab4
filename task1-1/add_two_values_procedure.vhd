library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity add_two_values_procedure is
port (
        a : in std_logic_vector(3 downto 0);      
        b : in std_logic_vector(3 downto 0);
        s : out std_logic_vector(3 downto 0);
        cout : out std_logic                         
	);
end add_two_values_procedure;

architecture behavior of add_two_values_procedure is

    procedure add_two_values(   signal a_num : in std_logic_vector(3 downto 0);
                                signal b_num : in std_logic_vector(3 downto 0);
                                signal s_num : out std_logic_vector(3 downto 0);
                                signal carry : out std_logic) is

        variable sum : std_logic_vector(4 downto 0);

        begin
            sum := ('0' & a_num) + ('0'& b_num);
            s_num <= sum(3 downto 0);
            carry <= sum(4);

    end add_two_values;

    begin

        add_two_values(a, b, s, cout);

end behavior;