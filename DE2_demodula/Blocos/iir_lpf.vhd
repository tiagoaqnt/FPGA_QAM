library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity iir_lpf is
    generic (
        K : integer := 10;   -- Constante de tempo
        G : integer := 4     -- Ganho: 1=unity, 2=2x, 4=4x
    );
    port (
        clk      : in  std_logic;
        nrst     : in  std_logic;
        data_in  : in  std_logic_vector(9 downto 0);
        data_out : out std_logic_vector(9 downto 0)
    );
end entity;

architecture rtl of iir_lpf is
    -- Acumuladores para cascata (2 estágios)
    signal acc1, acc2 : signed(K + 10 downto 0) := (others => '0');
    signal stage1_out : signed(9 downto 0);
begin

    process(clk, nrst)
    begin
        if nrst = '0' then
            acc1 <= (others => '0');
            acc2 <= (others => '0');
        elsif rising_edge(clk) then
            -- Estágio 1: Entrada com Ganho (G)
            acc1 <= acc1 + resize(signed(data_in) * G, K + 11) - shift_right(acc1, K);
            
            -- Estágio 2: Cascata do primeiro
            stage1_out <= acc1(K + 9 downto K);
            acc2 <= acc2 + resize(stage1_out, K + 11) - shift_right(acc2, K);
        end if;
    end process;

    data_out <= std_logic_vector(acc2(K + 9 downto K));
end rtl;