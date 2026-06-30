-- *************************************************************************************************
-- Bloco: iir_lpf
--
-- Descrição:
--   Filtro IIR passa-baixa de 1ª ordem implementado sem multiplicadores,
--   usando apenas somadores e deslocamento aritmético (shift).
--
-- Equação do filtro:
--   y[n] = (1 - 2^-K) · y[n-1] + 2^-K · x[n]
--
-- Implementação via acumulador (evita erro de truncamento):
--   A[n] = A[n-1] + x[n] - (A[n-1] >> K)
--   y[n] = A[n] >> K
--
--   Onde A[n] = 2^K · y[n]  (acumulador escalonado)
--
-- Polo do filtro:
--   z_polo = 1 - 2^(-K)   ?  estável para qualquer K > 0
--
-- Frequência de corte (-3 dB):
--   fc = fs / (2p · 2^K)
--
--   Para fs = 50 MHz:
--     K =  9  ?  fc ˜ 15.526 Hz
--     K = 10  ?  fc ˜  7.763 kHz  (padrão — ideal para voz com portadora de 12,5 kHz)
--     K = 11  ?  fc ˜  3.882 kHz
--
-- Atenuação com K=10 (fc ˜ 7,76 kHz):
--   @  4 kHz:  ˜ -0,5  dB  (voz praticamente intacta)
--   @ 12,5 kHz: ˜ -4,1  dB  (portadora)
--   @ 25 kHz:  ˜ -10,3 dB  (2?c — componente indesejado da demodulação)
--
--   Para maior rejeição, cascade dois estágios (-20,6 dB em 25 kHz).
--
-- Dimensionamento do acumulador:
--   Entrada x: 10 bits signed  ?  faixa [-512, +511]
--   A = 2^K × y  ?  faixa [-2^K × 512,  2^K × 511]
--   Para K=10: faixa [-524.288, +523.264]
--   Necessita K+11 bits signed  (para K=10: 21 bits, índices 20 downto 0)
--
--   Saída: A[K+9 downto K] = 10 bits  (divisão por 2^K sem perda de sinal)
--   Verificação:
--     A=+523.264 ? bits [19:10] = 0111111111 = +511 ?
--     A=-524.288 ? bits [19:10] = 1000000000 = -512 ?
--
-- GENERIC:
--   K         Expoente da constante de tempo (padrão: 10)
--             Determina fc e resposta transitória
--
-- ENTRADAS:
--   clk       Clock do sistema (50 MHz)
--   nrst      Reset assíncrono ativo baixo
--   data_in   Sinal de entrada, 10 bits signed
--
-- SAÍDAS:
--   data_out  Sinal filtrado, 10 bits signed
--
-- Recursos (Cyclone II, K=10):
--   Sem DSP blocks (sem multiplicadores)
--   ~21 flip-flops para o acumulador
--   ~21 LUTs para o somador
-- *************************************************************************************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity iir_lpf is
    generic (
        K : integer := 10   -- fc ˜ fs / (2p · 2^K)  ?  K=10: ~7,76 kHz @ 50 MHz
    );
    port (
        clk      : in  std_logic;
        nrst     : in  std_logic;
        data_in  : in  std_logic_vector(9 downto 0);
        data_out : out std_logic_vector(9 downto 0)
    );
end entity;

architecture rtl of iir_lpf is

    -- -----------------------------------------------------------------------
    -- Acumulador: K+11 bits signed
    --   Índices: (K+10) downto 0
    --   Para K=10: signed(20 downto 0)
    -- -----------------------------------------------------------------------
    signal acc : signed(K + 10 downto 0) := (others => '0');

begin

    process(clk, nrst)
    begin
        if nrst = '0' then
            acc <= (others => '0');

        elsif rising_edge(clk) then
            -- A[n] = A[n-1] + x[n] - (A[n-1] >> K)
            --
            -- shift_right(acc, K) = divisão inteira por 2^K (aritmética, preserva sinal)
            -- resize() para alinhar larguras antes da soma
            acc <= acc
                 + resize(signed(data_in), K + 11)
                 - shift_right(acc, K);
        end if;
    end process;

    -- -----------------------------------------------------------------------
    -- Saída: y[n] = A[n] >> K  =  acc[K+9 downto K]  (10 bits)
    --
    -- Os K bits inferiores (acc[K-1 downto 0]) são a parte fracionária
    -- mantida internamente para evitar acúmulo de erro de arredondamento.
    -- -----------------------------------------------------------------------
    data_out <= std_logic_vector(acc(K + 9 downto K));

end rtl;