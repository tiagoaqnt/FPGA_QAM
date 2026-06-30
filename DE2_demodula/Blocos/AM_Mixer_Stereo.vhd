library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AM_Mixer_Stereo is
    port (
        clk          : in  std_logic;
        
        -- Entradas de Áudio (L e R)
        audio_in_L   : in  std_logic_vector(9 downto 0); 
        audio_in_R   : in  std_logic_vector(9 downto 0); 
        
        -- Entradas das Portadoras
        carrier_sin  : in  std_logic_vector(9 downto 0); 
        carrier_cos  : in  std_logic_vector(9 downto 0); 
        
        -- Saídas Moduladas
        mixer_out_L  : out std_logic_vector(9 downto 0);
        mixer_out_R  : out std_logic_vector(9 downto 0)
    );
end AM_Mixer_Stereo;

architecture rtl of AM_Mixer_Stereo is
begin

    process(clk)
        variable v_mult_L : signed(19 downto 0);
        variable v_mult_R : signed(19 downto 0);
    begin
        if rising_edge(clk) then
            
            -----------------------------------------------------------------
            -- CANAL ESQUERDO (L) - Saída Direta
            -----------------------------------------------------------------
            v_mult_L := signed(audio_in_L) * signed(carrier_sin);

            -- Verificação de Saturação (Bits 19 vs 18)
            if (v_mult_L(19) /= v_mult_L(18)) then 
                if v_mult_L(19) = '0' then 
                    mixer_out_L <= "0111111111"; -- Trava no +511
                else                       
                    mixer_out_L <= "1000000000"; -- Trava no -512
                end if;
            else
                -- Divisão por 256 (bits 17 downto 8) - Mantendo o ganho alto
                mixer_out_L <= std_logic_vector(v_mult_L(17 downto 8));
            end if;

            -----------------------------------------------------------------
            -- CANAL DIREITO (R) - Saída Direta
            -----------------------------------------------------------------
            v_mult_R := signed(audio_in_R) * signed(carrier_cos);

            -- Verificação de Saturação (Bits 19 vs 18)
            if (v_mult_R(19) /= v_mult_R(18)) then 
                if v_mult_R(19) = '0' then 
                    mixer_out_R <= "0111111111"; -- Trava no +511
                else                       
                    mixer_out_R <= "1000000000"; -- Trava no -512
                end if;
            else
                -- Divisão por 256 (bits 17 downto 8) - Mantendo o ganho alto
                mixer_out_R <= std_logic_vector(v_mult_R(17 downto 8));
            end if;

        end if;
    end process; 

end rtl;