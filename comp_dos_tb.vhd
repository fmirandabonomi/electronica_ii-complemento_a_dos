library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity comp_dos_tb is
-- vacía
end comp_dos_tb;

architecture tb of comp_dos_tb is
    constant ancho : integer := 4;
    component comp_dos is
        port(
            valor_sin_signo : IN  std_logic_vector (ancho - 1 downto 0);
            negativo        : IN  std_logic;
            codigo          : OUT std_logic_vector (ancho - 1 downto 0));
    end component;

    signal valor_in    : std_logic_vector (ancho - 1 downto 0);
    signal negativo_in : std_logic;
    signal codigo_out  : std_logic_vector (ancho - 1 downto 0);

begin
    dut : comp_dos port map(
        valor_sin_signo => valor_in, 
        negativo        => negativo_in,
        codigo          => codigo_out);
    process
        constant s_prueba     : string  := "Comp_dos debe codificar numeros en complemento a dos";
        constant s_pass       : string  := " [PASS]";
        constant s_fail       : string  := " [FAIL]";
        constant valor_maximo : natural := (2 ** ancho) - 1;
        constant max_pos_rep  : natural := (2 ** (ancho-1)) - 1;
        variable pasa         : boolean := true;
        variable pasa_todo    : boolean := true;
        variable esperado     : std_logic_vector (ancho - 1 downto 0);
    begin
        for n in 0 to valor_maximo loop
            if pasa_todo = false then
                exit;
            end if;
            valor_in <= std_logic_vector(to_unsigned(n,ancho));
            negativo_in <= '0';
            wait for 1 ns;
            if n > max_pos_rep then
                esperado := std_logic_vector(to_unsigned(max_pos_rep,ancho));
            else
                esperado := std_logic_vector(to_unsigned(n,ancho));
            end if;
            pasa      := esperado = codigo_out;
            pasa_todo := pasa and pasa_todo;
            assert pasa
                report "Error para entrada ("& integer'image(n) &", positivo)"
                severity error;
            negativo_in <= '1';
            wait for 1 ns;
            if n > max_pos_rep + 1 then
                esperado := std_logic_vector(to_signed(-(max_pos_rep+1),ancho));
            else
                esperado  := std_logic_vector(to_signed(-n,ancho));
            end if;
            pasa      := esperado = codigo_out;
            pasa_todo := pasa and pasa_todo;
            assert pasa
                report "Error para entrada ("& integer'image(n) &", negativo)"
                severity error;
        end loop;
        if pasa_todo then
            report s_prueba & s_pass severity note;
        else
            report s_prueba & s_fail severity error;
        end if;
        wait;
    end process;
end tb;