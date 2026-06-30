library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all; -- Biblioteca matemática para o Quartus gerar a LUT

--------------------------------------------------------------------------------
entity sin_gen is
    generic (
        -- MUDANÇA DE RESOLUÇÃO AQUI:
        -- 8 bits  = 256 pontos
        -- 10 bits = 1024 pontos
        LUT_BITS  : integer := 8;  
        
        -- Amplitude (Mantida em 10 bits: -512 a +511)
        DATA_BITS : integer := 10  
    );
    port (
        clk      : in  std_logic;                      -- Clock (50 MHz)
        sin_out  : out std_logic_vector(DATA_BITS-1 downto 0); -- Saída Seno
        cos_out  : out std_logic_vector(DATA_BITS-1 downto 0)  -- Saída Cosseno defasada
    );
end sin_gen;

architecture rtl of sin_gen is

    -- Define o tamanho da LUT baseado no Generic (2^8 = 256)
    constant LUT_SIZE : integer := 2**LUT_BITS;
    type lut_t is array(0 to LUT_SIZE-1) of signed(DATA_BITS-1 downto 0);

    -- =========================================================================
    -- Função que calcula a Senoide matematicamente durante a compilação
    -- =========================================================================
    function init_lut return lut_t is
        variable ret : lut_t;
        variable val : real;
        -- Amplitude máxima = 2^(10-1) - 1 = 511.0
        variable amp : real := real(2**(DATA_BITS-1) - 1); 
    begin
        for i in 0 to LUT_SIZE-1 loop
            -- Fórmula: A * sin(2 * PI * i / N)
            val := amp * sin(2.0 * MATH_PI * real(i) / real(LUT_SIZE));
            -- Converte o número real arredondado para o formato signed VHDL
            ret(i) := to_signed(integer(round(val)), DATA_BITS);
        end loop;
        return ret;
    end function;

    -- Cria e preenche a Memória ROM com a função acima
    constant SIN_LUT : lut_t := init_lut;

    -- =========================================================================
    -- Sinais do Acumulador de Fase (DDS) - 32 Bits
    -- =========================================================================
    signal phase_accum : unsigned(31 downto 0) := (others => '0');

    -- Palavra de Sintonia (M) para 12.500 Hz a partir de 50 MHz
    -- Calculada via fórmula: M = (12500 * 2^32) / 50000000 = 1073742
    constant TUNING_WORD : unsigned(31 downto 0) := to_unsigned(1073742, 32);

    -- Defasagem exata de 90 graus para o Cosseno. 
    -- 90 graus é 1/4 do círculo completo (2^32 / 4) = 1.073.741.824
    constant PHASE_90_DEG : unsigned(31 downto 0) := to_unsigned(1073741824, 32);

begin

    -- 1. O Acumulador (Soma o passo a cada pulso de clock)
    process(clk)
    begin
        if rising_edge(clk) then
            phase_accum <= phase_accum + TUNING_WORD;
        end if;
    end process;

    -- 2. Leitura da Tabela (Mapeamento de Fase para Amplitude)
    process(phase_accum)
        variable idx_sin   : integer;
        variable idx_cos   : integer;
        variable cos_accum : unsigned(31 downto 0);
    begin
        -- Para endereçar a LUT, pegamos apenas os bits mais significativos
        -- Ex: Se LUT_BITS = 8, pegamos do bit 31 ao 24.
        idx_sin := to_integer(phase_accum(31 downto 32-LUT_BITS));

        -- Calcula a fase do cosseno somando os 90 graus
        cos_accum := phase_accum + PHASE_90_DEG;
        idx_cos := to_integer(cos_accum(31 downto 32-LUT_BITS));

        -- Joga o valor lido nas saídas
        sin_out <= std_logic_vector(SIN_LUT(idx_sin));
        cos_out <= std_logic_vector(SIN_LUT(idx_cos));
    end process;

end rtl;