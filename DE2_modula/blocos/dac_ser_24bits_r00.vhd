-- *************************************************************************************************
-- Bloco: dac_ser_24bits_r00
--
----------------------------------------------------------------------------------------------------
-- Descrição do programa:
--
-- Este bloco tem as seguintes funcionalidades:
--
-- 1. Recebe o audio em paralelo (24bis para cada canal) e converte em bit stream serialpara
--	  o conversor DA
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
-- l_aud_in		Entrada em paralelo para o canal esquedo (24 bits)
--
-- r_aud_in		Entrada em paralelo para o canal direito (24 bits)
--
-- valid_in		Pulso que informa que os dados presentes em "l_aud_in" e "r_aud"in" estão válidos.
--				Os dados paralelos são armazenados em um registrador sob comando desse sinal.
--
----------------------------------------------------------------------------------------------------
-- SAIDAS:
--
-- dac_data		saída dos dados serial
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

ENTITY dac_ser_24bits_r00 IS
	GENERIC(
		mode : NATURAL := 1
	);
	PORT (		-- Entradas:
		nrst		: IN STD_LOGIC := '1';				-- reset ativo baixo
		mclk_in		: IN STD_LOGIC;						-- master clock
		bclk_in		: IN STD_LOGIC;						-- bit clock (3,072MHz)
		lrck_in		: IN STD_LOGIC;						-- clock de 48 kHz
		l_aud_in	: IN STD_LOGIC_VECTOR(23 DOWNTO 0); -- entrada de dados, canal esquerdo
		r_aud_in	: IN STD_LOGIC_VECTOR(23 DOWNTO 0); -- entrada de dados, canal direito
		valid_in	: IN STD_LOGIC;
		-- Saídas:
		dac_data	: OUT STD_LOGIC						-- saída de dado serial para DAC
	);
END ENTITY;
----------------------------------------------------------------------------------------------------
-- ***************************************** Arquitetura *******************************************
----------------------------------------------------------------------------------------------------
ARCHITECTURE serializer OF dac_ser_24bits_r00 IS
	SIGNAL l_aud_reg	: STD_LOGIC_VECTOR (23 DOWNTO 0);
	SIGNAL r_aud_reg	: STD_LOGIC_VECTOR (23 DOWNTO 0);
	SIGNAL bclk_prev	: STD_LOGIC;
--	SIGNAL bclk_rise	: STD_LOGIC;
	SIGNAL bclk_fall	: STD_LOGIC;
	SIGNAL lrck_prev	: STD_LOGIC;
	SIGNAL lrck_rise	: STD_LOGIC;
	SIGNAL lrck_fall	: STD_LOGIC;
	SIGNAL shft_reg		: STD_LOGIC_VECTOR (56 DOWNTO 0);     

------------------------------------------------------------------------	
BEGIN
	
	ASSERT mode = 0 or mode = 1 REPORT "mode must be 0 or 1" SEVERITY error;

	----------------------------------------------------------------------------
	-- Armazena os dados de entrada quando recebe um pulso de "data_valid_in":
	----------------------------------------------------------------------------
	process(nrst, mclk_in)
	begin
		if nrst = '0' then
			l_aud_reg <= (others => '0');
			r_aud_reg <= (others => '0');
		elsif rising_edge(mclk_in) then
			if valid_in = '1' then
				l_aud_reg <= l_aud_in; 
                r_aud_reg <= r_aud_in;
			end if;
		end if;
	end process;
	----------------------------------------------------------------------------
	-- Armazena os sinais "lrck" e "bclk" para detecção das bordas de descida de
	-- subida de "bclk" e de "lrck"
	----------------------------------------------------------------------------
	process(nrst, mclk_in, bclk_in, lrck_in, bclk_prev, lrck_prev)
	begin
		if nrst = '0' then
			bclk_prev <= '0';
			lrck_prev <= '0';
--			bclk_rise <= '0';
--			bclk_fall <= '0';
--			lrck_rise <= '0';
--			lrck_fall <= '0';
		elsif rising_edge(mclk_in) then
			bclk_prev <= bclk_in;
			lrck_prev <= lrck_in;
		end if;
		----------------------------------------------------------
--		if bclk_prev = '0' and bclk_in = '1' then
--			bclk_rise <= '1';
--		else
--			bclk_rise <= '0';
--		end if;
		----------------------------------------------------------
		if bclk_prev = '1' and bclk_in = '0' then
			bclk_fall <= '1';
		else
			bclk_fall <= '0';
		end if;
		----------------------------------------------------------
		if lrck_prev = '0' and lrck_in = '1' then
			lrck_rise <= '1';
		else
			lrck_rise <= '0';
		end if;
		----------------------------------------------------------
		if lrck_prev = '1' and lrck_in = '0' then
			lrck_fall <= '1';
		else
			lrck_fall <= '0';
		end if;
		----------------------------------------------------------

	end process;
	----------------------------------------------------------------------------
	--
	----------------------------------------------------------------------------
	process(nrst, mclk_in, lrck_rise, lrck_fall, bclk_fall)
	begin
		if nrst = '0' then
			shft_reg <= (others => '0');
		elsif rising_edge(mclk_in) then
			if mode = 0 then
				if lrck_rise = '1' then
					shft_reg <= l_aud_reg & "00000000" & r_aud_reg & '0';
				elsif bclk_fall = '1' then
					shft_reg <= shft_reg(55 downto 0) & '0';
				end if;
			else
				if lrck_fall = '1' then
					shft_reg <= '0' & l_aud_reg & "00000000" & r_aud_reg;
				elsif bclk_fall = '1' then
					shft_reg <= shft_reg(55 downto 0) & '0';
				end if;
			end if;
		end if;
	end process;
	----------------------------------------------------------------------------
	--
	----------------------------------------------------------------------------
	dac_data <= shft_reg(56);
	
END serializer;