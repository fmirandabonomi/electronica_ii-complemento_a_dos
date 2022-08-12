library IEEE;
use IEEE.std_logic_1164.all;

-- Genera la representación en complemento a dos de un número
-- Si el número es mayor que el máximo representable debe generar el código máximo
-- Si el número es menor que el mínimo representable debe generar el código mínimo
entity comp_dos is
    port(
        valor_sin_signo : IN  std_logic_vector (3 downto 0);
        negativo        : IN  std_logic;
        codigo          : OUT std_logic_vector (3 downto 0));
end comp_dos;

architecture arch of comp_dos is
begin
    process (negativo,valor_sin_signo)
    begin
        if negativo = '1' then
            case valor_sin_signo is -- Completar el código
                when x"0"   => codigo <= "0000";
                when x"1"   => codigo <= "0000";
                when x"2"   => codigo <= "0000";
                when x"3"   => codigo <= "0000";
                when x"4"   => codigo <= "0000";
                when x"5"   => codigo <= "0000";
                when x"6"   => codigo <= "0000";
                when x"7"   => codigo <= "0000";
                when x"8"   => codigo <= "0000";
                when x"9"   => codigo <= "0000";
                when x"a"   => codigo <= "0000";
                when x"b"   => codigo <= "0000";
                when x"c"   => codigo <= "0000";
                when x"d"   => codigo <= "0000";
                when x"e"   => codigo <= "0000";
                when others => codigo <= "0000";
            end case;
        else
            case valor_sin_signo is
                when x"0"   => codigo <= "0000";
                when x"1"   => codigo <= "0001";
                when x"2"   => codigo <= "0010";
                when x"3"   => codigo <= "0011";
                when x"4"   => codigo <= "0100";
                when x"5"   => codigo <= "0101";
                when x"6"   => codigo <= "0110";
                when x"7"   => codigo <= "0111";
                when x"8"   => codigo <= "0111";
                when x"9"   => codigo <= "0111";
                when x"a"   => codigo <= "0111";
                when x"b"   => codigo <= "0111";
                when x"c"   => codigo <= "0111";
                when x"d"   => codigo <= "0111";
                when x"e"   => codigo <= "0111";
                when others => codigo <= "0111";
            end case;
        end if;
    end process;
end arch;
