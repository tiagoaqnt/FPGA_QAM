-- *************************************************************************************************
-- Bloco: carrier_phase_shift_90
--
-- Descrição:
--   Filtro de média móvel com N=2001 taps, projetado para introduzir exatamente
--   90° de defasagem na frequência da portadora de 12,5 kHz com clock de 50 MHz.
--
-- Correção de Ganho Aplicada:
--   O ganho natural deste filtro para 12.5 kHz é de aprox. 0.6366 (2/pi).
--   A soma no acumulador é multiplicada por uma constante K=103 e deslocada
--   em 17 bits (divisão por 131072) para restaurar a amplitude original (Ganho = 1.0).
-- *************************************************************************************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity carrier_phase_shift_90 is
    port (
        clk      : in  std_logic;                    -- Clock 50 MHz
        nrst     : in  std_logic;                    -- Reset assíncrono ativo baixo
        data_in  : in  std_logic_vector(9 downto 0); -- cos(wct), 10 bits signed
        data_out : out std_logic_vector(9 downto 0)  -- sin(wct), 10 bits signed GANHO CORRIGIDO
    );
end entity;

architecture rtl of carrier_phase_shift_90 is

    constant N : integer := 2001;
    type ram_t is array(0 to N-1) of signed(9 downto 0);
    
    signal ram     : ram_t := (others => (others => '0'));
    signal ptr     : integer range 0 to N-1 := 0;
    
    signal acc     : signed(20 downto 0) := (others => '0');
    signal oldest  : signed(9 downto 0)  := (others => '0');
    signal data_d  : signed(9 downto 0)  := (others => '0');

    -- Sinais para a correção de Ganho
    signal acc_mult    : signed(28 downto 0) := (others => '0'); 
    signal acc_shifted : signed(28 downto 0) := (others => '0'); 

begin

    process(clk, nrst)
    begin
        if nrst = '0' then
            acc    <= (others => '0');
            ptr    <= 0;
            oldest <= (others => '0');
            data_d <= (others => '0');
        elsif rising_edge(clk) then

            -- Estágio 1: Leitura e escrita no Buffer Circular
            oldest <= ram(ptr);
            data_d <= signed(data_in);

            ram(ptr) <= signed(data_in);

            if ptr = N-1 then
                ptr <= 0;
            else
                ptr <= ptr + 1;
            end if;

            -- Estágio 2: Atualiza o Acumulador
            acc <= acc + resize(data_d, 21) - resize(oldest, 21);

        end if;
    end process;

    -- -----------------------------------------------------------------------
    -- RESTAURAÇÃO DE AMPLITUDE E FORMATAÇÃO DE SAÍDA
    -- -----------------------------------------------------------------------
    
    -- Multiplica por 103 (103 cabe em 8 bits assinados)
    acc_mult <= acc * to_signed(103, 8);
    
    -- Divide por 131072 (Shift Right de 17 bits)
    acc_shifted <= shift_right(acc_mult, 17);

    -- Proteção contra Saturação e envio para a saída
    process(acc_shifted)
    begin
        if acc_shifted > 511 then
            data_out <= "0111111111"; -- Trava no +511
        elsif acc_shifted < -512 then
            data_out <= "1000000000"; -- Trava no -512
        else
            data_out <= std_logic_vector(acc_shifted(9 downto 0));
        end if;
    end process;

end rtl;