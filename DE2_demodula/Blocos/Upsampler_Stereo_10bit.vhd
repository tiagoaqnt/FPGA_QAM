library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Upsampler_Stereo_10bit is
    Port (
        -- Clocks
        i_adc_clk      : in  std_logic; -- Clock de Amostragem (48kHz)
        i_sys_clk      : in  std_logic; -- Clock do Sistema (50MHz)

        -- Canal Esquerdo (L)
        i_adc_data_L   : in  std_logic_vector(9 downto 0);
        o_dac_data_L   : out std_logic_vector(9 downto 0);

        -- Canal Direito (R)
        i_adc_data_R   : in  std_logic_vector(9 downto 0);
        o_dac_data_R   : out std_logic_vector(9 downto 0)
    );
end Upsampler_Stereo_10bit;

architecture Behavioral of Upsampler_Stereo_10bit is

    -- CONFIGURAÇÃO DE SAÍDA: 
    -- '1' = Unsigned (0 a 1023) -> Para VGA ou DAC R-2R
    -- '0' = Signed (Complemento de 2) -> Para Codec de Áudio ou Processamento Interno
    CONSTANT USE_UNSIGNED_OUTPUT : std_logic := '0'; 

    -------------------------------------------------------------------------
    -- SINAIS DO DOMÍNIO 48kHz (ADC)
    -------------------------------------------------------------------------
    signal r_new_sample_toggle : std_logic := '0';
    
    -- Latches de Entrada (Com 1 bit extra para sinal)
    signal r_data_latch_L : signed(10 downto 0) := (others => '0');
    signal r_data_latch_R : signed(10 downto 0) := (others => '0');

    -------------------------------------------------------------------------
    -- SINAIS DO DOMÍNIO 50MHz (Sistema)
    -------------------------------------------------------------------------
    -- Sincronização de Clock (Handshake)
    signal r_toggle_sync1 : std_logic := '0';
    signal r_toggle_sync2 : std_logic := '0';
    signal r_toggle_last  : std_logic := '0';
    
    -- Contador de Interpolação (Compartilhado para L e R)
    signal r_timer        : unsigned(9 downto 0) := (others => '0');

    -- === CANAL ESQUERDO (L) - Sinais de Processamento ===
    signal r_curr_L       : signed(10 downto 0) := (others => '0');
    signal r_next_L       : signed(10 downto 0) := (others => '0');
    signal r_diff_L       : signed(11 downto 0) := (others => '0'); 
    signal r_mult_L       : signed(22 downto 0) := (others => '0'); 
    signal r_temp_L       : signed(11 downto 0) := (others => '0'); 

    -- === CANAL DIREITO (R) - Sinais de Processamento ===
    signal r_curr_R       : signed(10 downto 0) := (others => '0');
    signal r_next_R       : signed(10 downto 0) := (others => '0');
    signal r_diff_R       : signed(11 downto 0) := (others => '0'); 
    signal r_mult_R       : signed(22 downto 0) := (others => '0'); 
    signal r_temp_R       : signed(11 downto 0) := (others => '0'); 

begin

    -------------------------------------------------------------------------
    -- 1. CAPTURA DE DADOS (Clock ADC - 48kHz)
    -------------------------------------------------------------------------
    process(i_adc_clk)
    begin
        if rising_edge(i_adc_clk) then
            -- Captura e inverte a fase (correção solicitada anteriormente)
            -- Fazemos isso simultaneamente para L e R
            r_data_latch_L <= -resize(signed(i_adc_data_L), 11);
            r_data_latch_R <= -resize(signed(i_adc_data_R), 11);
            
            -- Sinaliza que chegaram dados novos
            r_new_sample_toggle <= not r_new_sample_toggle;
        end if;
    end process;

    -------------------------------------------------------------------------
    -- 2. INTERPOLAÇÃO L/R (Clock Sistema - 50MHz)
    -------------------------------------------------------------------------
    process(i_sys_clk)
        -- Variáveis auxiliares para shift
        variable v_shift_L : signed(22 downto 0);
        variable v_shift_R : signed(22 downto 0);
    begin
        if rising_edge(i_sys_clk) then
            
            -- A. Sincronização do Toggle
            r_toggle_sync1 <= r_new_sample_toggle;
            r_toggle_sync2 <= r_toggle_sync1;

            -- B. Gestão de Amostras e Timer
            if r_toggle_sync2 /= r_toggle_last then
                -- Borda detectada: Novos dados chegaram do ADC
                r_toggle_last <= r_toggle_sync2;
                
                -- Atualiza Canal L
                r_curr_L <= r_next_L;
                r_next_L <= r_data_latch_L;

                -- Atualiza Canal R
                r_curr_R <= r_next_R;
                r_next_R <= r_data_latch_R;
                
                -- Reinicia Timer
                r_timer <= (others => '0');
            else
                -- Nenhuma mudança: Incrementa timer até o limite
                if r_timer < 1023 then
                    r_timer <= r_timer + 1;
                end if;
            end if;

            -- C. MATEMÁTICA CANAL L (Left)
            r_diff_L   <= resize(r_next_L, 12) - resize(r_curr_L, 12);
            r_mult_L   <= r_diff_L * signed('0' & r_timer);
            v_shift_L  := shift_right(r_mult_L, 10); -- Divisão por 1024
            r_temp_L   <= r_curr_L + resize(v_shift_L(11 downto 0), 12);

            -- D. MATEMÁTICA CANAL R (Right)
            r_diff_R   <= resize(r_next_R, 12) - resize(r_curr_R, 12);
            r_mult_R   <= r_diff_R * signed('0' & r_timer);
            v_shift_R  := shift_right(r_mult_R, 10); -- Divisão por 1024
            r_temp_R   <= r_curr_R + resize(v_shift_R(11 downto 0), 12);

        end if;
    end process;

    -------------------------------------------------------------------------
    -- 3. SAÍDA L (Saturação e Formatação)
    -------------------------------------------------------------------------
    process(r_temp_L)
        variable v_sat_L : signed(9 downto 0);
    begin
        -- Saturação L
        if r_temp_L > 511 then v_sat_L := to_signed(511, 10);
        elsif r_temp_L < -512 then v_sat_L := to_signed(-512, 10);
        else v_sat_L := resize(r_temp_L, 10);
        end if;

        -- Formatação L
        if USE_UNSIGNED_OUTPUT = '1' then
            o_dac_data_L <= std_logic_vector(v_sat_L) xor "1000000000";
        else
            o_dac_data_L <= std_logic_vector(v_sat_L);
        end if;
    end process;

    -------------------------------------------------------------------------
    -- 4. SAÍDA R (Saturação e Formatação)
    -------------------------------------------------------------------------
    process(r_temp_R)
        variable v_sat_R : signed(9 downto 0);
    begin
        -- Saturação Ra
        if r_temp_R > 511 then v_sat_R := to_signed(511, 10);
        elsif r_temp_R < -512 then v_sat_R := to_signed(-512, 10);
        else v_sat_R := resize(r_temp_R, 10);
        end if;

        -- Formatação R
        if USE_UNSIGNED_OUTPUT = '1' then
            o_dac_data_R <= std_logic_vector(v_sat_R) xor "1000000000";
        else
            o_dac_data_R <= std_logic_vector(v_sat_R);
        end if;
    end process;

end Behavioral;