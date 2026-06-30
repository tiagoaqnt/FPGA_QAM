library ieee;
use ieee.std_logic_1164.all;

entity align_left_24b is
    port(
        in_10b  : in  std_logic_vector(9 downto 0);
        out_24b : out std_logic_vector(23 downto 0)
    );
end align_left_24b;

architecture rtl of align_left_24b is
begin
    -- Concatena o sinal de 10 bits com 14 zeros à direita
    -- Usamos o operador '&' para colar os vetores
    out_24b <= in_10b & "00000000000000";
end rtl;