-- *************************************************************************************************
-- Bloco: aud_flip-flop_r00
--
----------------------------------------------------------------------------------------------------
-- Descri��o do programa:
--
-- 
--
----------------------------------------------------------------------------------------------------
-- ENTRADAS:
--
-- nrst			Reset ass�ncrono ativo baixo
-- clk_50M		Clock de 50MHz
-- l_aud_in		Audio canal esquerdo (24 bits)
-- r_aud_in		Audio canal direito (24 bits)
-- data_stb		Strobe de dados. Dura��o de 1 ciclo de MCLK. Os dados de �udio s�o v�lidos quando
--				data_stb vai para '1'.
-- 
----------------------------------------------------------------------------------------------------
-- SAIDAS:
--
-- l_aud_out	Audio canal esquerdo. Largura definida por "dout_width"	
-- r_aud_out	Audio canal direito. Largura definida por "dout_width"
-- d_en			Dura��o de 1 ciclo de 50MHz. Os dados de �udio s�o v�lidos quando d_en = '1'.
--
----------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------
-- GENERICS:
--
-- dout_width	Define a largura das sa�da de �udio. Os dados s�o trucados � direita
--
-- phase		Define a fase do sinal de sa�da. Valores v�lidos:
--				"ninv" = n�o inverte.
--				"inv" = inverte (complemento de 2)
--				
----------------------------------------------------------------------------------------------------
-- ******************************************* REVIS�ES ********************************************
----------------------------------------------------------------------------------------------------
-- r00: revis�o inicial
--
-- Desenvolvido por: F. Garcia
-- Validado em: 02/12/2025
----------------------------------------------------------------------------------------------------
-- r01: 
--
-- ModIFicado por: 
-- Validado em: 
--
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
-- ****************************** Declara��o das bibliotecas ***************************************
----------------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

----------------------------------------------------------------------------------------------------
-- ****************************************** Entidade *********************************************
----------------------------------------------------------------------------------------------------

ENTITY aud_flip_flop_r00 IS
	GENERIC
		(dout_width : NATURAL := 10;
		 phase		: STRING := "inv"
	);
	PORT
	(
		-- Entradas:
		nrst		: IN STD_LOGIC := '1';	-- reset ativo baixo
		clk_in		: IN STD_LOGIC;			-- Clock 50MHz
		l_aud_in	: IN STD_LOGIC_VECTOR(23 DOWNTO 0);-- entr. dos dados, canal esquerdo
		r_aud_in	: IN STD_LOGIC_VECTOR(23 DOWNTO 0);-- entr. dos dados, canal direito
		data_stb	: IN STD_LOGIC;						-- entr. de strobe (1 tclk MCLK)
		-- Sa�das:
		l_aud_out	: OUT STD_LOGIC_VECTOR(dout_width-1 DOWNTO 0);-- saida de dados, canal esquerdo
		r_aud_out	: OUT STD_LOGIC_VECTOR(dout_width-1 DOWNTO 0);-- saida de dados, canal direito
		d_en		: OUT STD_LOGIC								-- sa�da. de strobe (1 tclk 50MHz)
 
 	);
END entity;

----------------------------------------------------------------------------------------------------
-- ***************************************** Arquitetura *******************************************
----------------------------------------------------------------------------------------------------

ARCHITECTURE arch OF aud_flip_flop_r00 IS
	
	SIGNAL l_ff		: STD_LOGIC_VECTOR(dout_width-1 DOWNTO 0);
	SIGNAL r_ff		: STD_LOGIC_VECTOR(dout_width-1 DOWNTO 0);
	SIGNAL stb_ff	: STD_LOGIC;

BEGIN

	----------------------------------------------------------------------------
	-- Testa se valores dos generic est�o corretos
	----------------------------------------------------------------------------

	ASSERT dout_width <= 24 
	REPORT "A largura dos dados de sa�da deve ser igual ou menor do que a largura dos dados de entrada"
	SEVERITY error;
	
	ASSERT phase = "inv" OR phase = "ninv" 
	REPORT "phase deve ser igual a inv ou ninv"
	SEVERITY error;

	----------------------------------------------------------------------------
	-- 
	----------------------------------------------------------------------------
	PROCESS(nrst, clk_in)
	BEGIN
		IF nrst = '0' THEN
			l_ff <= (others => '0');
			r_ff <= (others => '0');
			stb_ff <= '0';
		ELSIF rising_edge(clk_in) THEN
			-- armazena data_stb para detetar transi��o:
			stb_ff <= data_stb;
			
			-- 	testa transi��o de 0 para 1 de data_stb: 
			IF data_stb = '1' AND stb_ff = '0' THEN
		
				IF phase = "ninv" THEN
					l_ff <= l_aud_in(23 DOWNTO 24-dout_width);
					r_ff <= r_aud_in(23 DOWNTO 24-dout_width);
				ELSE
					l_ff <= NOT (l_aud_in(23 DOWNTO 24-dout_width))+1;
					r_ff <= NOT (r_aud_in(23 DOWNTO 24-dout_width))+1;
				END IF;
			END IF;
		END IF;
	END PROCESS;
	
	----------------------------------------------------------------------------
	-- Sa�das:
	----------------------------------------------------------------------------
	l_aud_out <= l_ff;
	r_aud_out <= r_ff;
	d_en <= data_stb AND NOT stb_ff;

END arch;