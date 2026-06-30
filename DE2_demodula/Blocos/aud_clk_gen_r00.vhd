-- *************************************************************************************************
-- Bloco: aud_clk_gen_r00
--
----------------------------------------------------------------------------------------------------
-- Descrição do programa:
--
-- Este bloco tem as seguintes funcionalidades:
--
-- A partir de 50MHz, gera os diversos clocks necessários aos conversores AD e DA
--
----------------------------------------------------------------------------------------------------
-- ENTRADAS:
--
-- nrst			Reset assíncrono ativo baixo
-- clk_50M		Entrada de clock de 50MHz
-- 
-- 
----------------------------------------------------------------------------------------------------
-- SAIDAS:
--
-- mclk_out		Clock master = 18,432MHz (valor nominal) (Valor real = 18,421052MHz)
-- bclk_out		3,072MHz (valor nominal)(valor real = 3,070175MHz)
-- lrck_out		48,000kHz (valor nominal)(valor real = 47,971kHz)
-- nrst_out		saída de reset síncrono com mclk para os demais blocos (ativo baixo)
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

ENTITY aud_clk_gen_r00 IS
	PORT
	(
		-- Entradas:
		nrst		: IN STD_LOGIC := '1';	-- reset ativo baixo
		clk_50M		: IN STD_LOGIC;			-- Clock 50MHz
		-- Saídas:
		mclk_out	: OUT STD_LOGIC;		-- 18,432MHz (valor nominal. Tem um erro de -594ppm)
		bclk_out	: OUT STD_LOGIC;		-- 3,072MHz
		lrck_out	: OUT STD_LOGIC;		-- 48,000kHz
		nrst_out	: OUT STD_LOGIC			-- saída de reset (ativo baixo)
	
	);
END entity;

----------------------------------------------------------------------------------------------------
-- ***************************************** Arquitetura *******************************************
----------------------------------------------------------------------------------------------------

ARCHITECTURE arch OF aud_clk_gen_r00 IS
	
	component pll_18432
		PORT
		(
			areset		: IN STD_LOGIC  := '0';
			inclk0		: IN STD_LOGIC  := '0';
			c0			: OUT STD_LOGIC;
			locked		: OUT STD_LOGIC  
		);
	end component;
	
	signal clk_18432		: std_logic;
	signal pll_locked		: std_logic;

	signal bclk_cnt			: integer range 0 to 5;
	signal bclk_reg			: std_logic;
	signal lrck_cnt			: integer range 0 to 31;
	signal lrck_reg			: std_logic;
	signal nrst_reg 		: std_logic;
	
BEGIN

	----------------------------------------------------------------------------
	-- PLL para geração do master clock.
	--
	-- É obtido a partir de 50MHz. A multiplicação de fequência deveria ser
	-- 1536/3125, porém o PLL do Cyclone II não consegue esse valor exato.
	-- A multiplicação de frequência real é de 7/19, a frequência real é de
	-- 18,421052MHz. Isso representa um erro de -594ppm.
	--
	-- A taxa de amostragem real é de 47,971kHz.
	----------------------------------------------------------------------------
	pll_18432_inst : pll_18432 PORT MAP (
		areset	=> not nrst,
		inclk0	=> clk_50M,
		c0	 	=> clk_18432,
		locked	 => pll_locked
	);

	----------------------------------------------------------------------------
	-- Reset para os outros blocos:
	-- Síncrona com mclk
	-- Espera o PLL estar travado
	----------------------------------------------------------------------------
	process(nrst, clk_18432)
	begin
		if nrst = '0' then
			nrst_reg <= '0';
		elsif rising_edge(clk_18432) then
			nrst_reg <= pll_locked;
		end if;
	end process;
	
	----------------------------------------------------------------------------
	-- Divide o master clock por 6 para obter "bclk". "lrck" é igual à
	-- frequência de "bclk" dividida por 64.
	----------------------------------------------------------------------------
	process(nrst_reg, clk_18432)
	begin
		if nrst_reg = '0' then
			bclk_cnt <= 0;
			lrck_cnt <= 0;
		elsif rising_edge(clk_18432) then
			bclk_cnt <= bclk_cnt + 1;
			----------------------------------------------------------
			if bclk_cnt = 2 then
				bclk_reg <= '1';	-- borda de subida de bclk
			elsif bclk_cnt = 5 then
				bclk_reg <= '0';	-- borda de descida de bclk
				bclk_cnt <= 0;
				------------------------------------------------------
				if lrck_cnt = 31 then
					lrck_reg <= not lrck_reg;
					lrck_cnt <= 0;
				else
					lrck_cnt <= lrck_cnt + 1;
				end if;
			end if;
		end if;
	end process;
	----------------------------------------------------------------------------
	-- Saídas:
	----------------------------------------------------------------------------
	mclk_out <= clk_18432;
	bclk_out <= bclk_reg;
	lrck_out <= lrck_reg;
	nrst_out <= nrst_reg;

END arch;