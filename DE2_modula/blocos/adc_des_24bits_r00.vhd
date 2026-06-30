-- *************************************************************************************************
-- Bloco: adc_des_24bits_r00
--
----------------------------------------------------------------------------------------------------
-- Descrição do programa:
--
-- Este bloco tem as seguintes funcionalidades:
--
-- 1. Recebe o bit stream serial de uma conversor A/D e paraleliza o sinal serial de audio
--
----------------------------------------------------------------------------------------------------
-- GENERIC:
-- mode			Seleção do modo de interface de áudio:
--				0 => left justified mode, dado disponível a partir da primeira transição de subida
--					   de "bclk" após a transição de "lrck", lrck = '1' => canal esquerdo, MSB first 
--				1 => I2S mode, dado disponível a partir da segunda transição de subida
--					   de "bclk" após a transição de "lrck", lrck = '0' => canal esquerdo, MSB first 
----------------------------------------------------------------------------------------------------
-- ENTRADAS:
--
-- nrst			Reset assíncrono ativo baixo
--
-- mclk_in		Master clock. Pode ser 256*fs (12,288MHz), 384*fs (18,432MHz) ou 512*fs (24,576MHz)
--				Os sinais bclk e lrck devem ser síncronos com mclk, ou seja, devem ser gerados
--				por divisão desse clock. Obs.: fs = taxa de amostragem = 48kHz.
--				Todos os registradores e flip-flops são síncronos com esse sinal.
--
-- bclk_in		Bit clock . Deve ser 64*fs (3.072MHz)
--
-- lrck_in		Clock na frequência de amostragem. (48 kHz)
--
-- adc_data		entrada dos dados do ADC (serial)
--
----------------------------------------------------------------------------------------------------
-- SAIDAS:
--
-- data_out		saída dos dados (paralelo, 24 bits por canal)
--
--					l_aud_out(23 DOWNTO 0) = 24 bits da amostra de áudio do canal esquerdo
--					r_aud_out(23 DOWNTO 0) = 24 bits da amostra de áudio do canal direito
--
-- data_stb		saída de strobe ativo alto ('1' => dado válido)
--				Duração de 1 período de mclk_in
--
--
----------------------------------------------------------------------------------------------------
-- ******************************************* REVISÕES ********************************************
----------------------------------------------------------------------------------------------------
-- r00: revisão inicial
--
-- Desenvolvido por: F. Garcia
-- Validado em: 28/03/2019
----------------------------------------------------------------------------------------------------
-- r01:
--
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
-- ****************************** Declaração das bibliotecas ***************************************
----------------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

----------------------------------------------------------------------------------------------------
-- ****************************************** Entidade *********************************************
----------------------------------------------------------------------------------------------------

ENTITY adc_des_24bits_r00 IS
	GENERIC(
		mode : NATURAL := 1
	);
	PORT
	(
		-- Entradas:
		nrst		: IN STD_LOGIC := '1';				-- reset ativo baixo
		mclk_in		: IN STD_LOGIC;						-- master clock
		bclk_in		: IN STD_LOGIC;						-- bit clock (3,072MHz)
		lrck_in		: IN STD_LOGIC;						-- clock de 48 kHz
		adc_data		: IN STD_LOGIC;						-- entrada dos dados do ADC (serial)
		-- Saídas:
		l_aud_out	: OUT STD_LOGIC_VECTOR(23 DOWNTO 0);-- saída dos dados, canal esquerdo
		r_aud_out	: OUT STD_LOGIC_VECTOR(23 DOWNTO 0);-- saída dos dados, canal direito
		data_stb	: OUT STD_LOGIC						-- saída de strobe
	
	);
END entity;

----------------------------------------------------------------------------------------------------
-- ***************************************** Arquitetura *******************************************
----------------------------------------------------------------------------------------------------

ARCHITECTURE arch OF adc_des_24bits_r00 IS

	SIGNAL bclk_prev		: STD_LOGIC;
	SIGNAL bclk_rise		: STD_LOGIC;
	SIGNAL lrck_prev		: STD_LOGIC;
	SIGNAL lrck_edge		: STD_LOGIC;
	SIGNAL sht_reg_left		: STD_LOGIC_VECTOR (23 DOWNTO 0);	-- Utilizado para paralelizar o sinal 
	SIGNAL sht_reg_right	: STD_LOGIC_VECTOR (23 DOWNTO 0);	-- Utilizado para paralelizar o sinal 
	SIGNAL fst_pulse		: STD_LOGIC;					
	SIGNAL count			: INTEGER RANGE 0 TO 31;			-- Contador de bits que compoe o audio
	
BEGIN
	

	ASSERT mode = 0 or mode = 1 REPORT "mode must be 0 or 1" SEVERITY error;
	
	----------------------------------------------------------------------------
	-- Armazena os sinais "lrck" e "bclk" para detecção das bordas de descida de
	-- subida de "bclk" e de qualquer borda de "lrck"
	----------------------------------------------------------------------------
	process(nrst, mclk_in, bclk_in, lrck_in, bclk_prev, lrck_prev)
	begin
		if nrst = '0' then
			bclk_prev <= '0';
			lrck_prev <= '0';
			bclk_rise <= '0';
			lrck_edge <= '0';
		elsif rising_edge(mclk_in) then
			bclk_prev <= bclk_in;
			lrck_prev <= lrck_in;
		end if;
		----------------------------------------------------------
		if bclk_prev = '0' and bclk_in = '1' then
			bclk_rise <= '1';
		else
			bclk_rise <= '0';
		end if;
		----------------------------------------------------------
		if lrck_prev /= lrck_in then
			lrck_edge <= '1';
		else
			lrck_edge <= '0';
		end if;
		----------------------------------------------------------
	end process;
	----------------------------------------------------------------------------
	--
	----------------------------------------------------------------------------

	PROCESS (nrst, mclk_in, lrck_in, adc_data, lrck_edge, bclk_rise)
	
	BEGIN		
		IF nrst = '0' THEN	-- Estado de reset 
			
			sht_reg_left <= (others => '0');
			sht_reg_right <= (others => '0');
			fst_pulse <= '0';
			count	<= 0;
			
		ELSIF rising_edge(mclk_in) THEN
			
			IF lrck_edge = '1' THEN		-- Quando ocorre borda no sinal LRCK (48 kHz)
				count	<= 0;
				IF mode = 1 THEN
					fst_pulse <= '1';
				END IF;
			END IF;			
				
			IF bclk_rise = '1' THEN
				
				-- Se "mode" = 1, o primeiro "bclk_rise" não é considerado
				
				fst_pulse <= '0';
				
				IF count <= 23 AND fst_pulse = '0' THEN
					count <= count + 1;
					IF (mode = 0 AND lrck_in = '1') OR
					   (mode = 1 AND lrck_in = '0') THEN
						sht_reg_left(0)  <= adc_data;	
						sht_reg_left(23 DOWNTO 1) <= sht_reg_left(22 DOWNTO 0);
					ELSE
						sht_reg_right(0)  <= adc_data;	
						sht_reg_right(23 DOWNTO 1) <= sht_reg_right(22 DOWNTO 0);
					END IF;
				ELSIF count = 24 THEN
					count <= count + 1;
					IF (mode = 0 AND lrck_in = '0') OR
					   (mode = 1 AND lrck_in = '1') THEN
						data_stb <= '1';
					END IF;
				END IF;
			ELSE
				data_stb <= '0';	
			END IF;			
		END IF;
	END PROCESS;
	
	l_aud_out(23 DOWNTO 0) <= sht_reg_left;
	r_aud_out(23 DOWNTO 0) <= sht_reg_right;

	
END arch;