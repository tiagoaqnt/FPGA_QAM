library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AM_Mixer is
    port (
        clk         : in  std_logic;
        audio_in    : in  std_logic_vector(9 downto 0); 
        carrier_in  : in  std_logic_vector(9 downto 0); 
        mixer_out   : out std_logic_vector(9 downto 0)
    );
end AM_Mixer;

architecture rtl of AM_Mixer is
begin

    process(clk)
        -- Usamos variável para calcular e verificar no mesmo instante
        variable v_mult : signed(19 downto 0);
    begin
        if rising_edge(clk) then
            
            -- 1. Multiplicação
            v_mult := signed(audio_in) * signed(carrier_in);

            -- 2. Verificação de Saturação (Anti-Overflow)
            -- Comparamos o bit de sinal real (19) com o bit que viraria o sinal (18).
            -- Se forem diferentes, o número não cabe em 10 bits.
            if (v_mult(19) /= v_mult(18)) then
                
                -- Se o sinal real era 0 (positivo), travamos no Máximo Positivo (+511)
                if v_mult(19) = '0' then
                    mixer_out <= "0111111111"; -- +511
                else
                    -- Caso fosse overflow negativo (raro aqui, mas seguro ter)
                    mixer_out <= "1000000000"; -- -512
                end if;
                
            else
                -- 3. Caso normal: o número cabe, fazemos o corte.
					 -- Escalonamento Correto (Divisão por 512)
					 -- Pegamos do bit 18 ao 9.
					 -- Isso mantém a escala unitária (aprox 1:1).
				  	 -- Ex: 511 * 511 = 261.121. 
				 	 -- 261.121 / 512 = 509.9 (Aprox 510)
                mixer_out <= std_logic_vector(v_mult(18 downto 9));
            end if;

        end if;
    end process; 

end rtl;