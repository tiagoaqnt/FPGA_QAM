library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--==============================================================================
entity i2c_master_r00 is
	generic(
		input_clk : NATURAL := 50000; -- clk_in freq. in kHz (min 4*bus_clk)
		bus_clk   : NATURAL := 400	   -- i2c bus (scl) freq. in kHz
		);
	port(
		nrst		: in std_logic;
		clk_in		: in std_logic;
		init		: in std_logic;
		rd_nwr		: in std_logic;
		slv_addr	: in std_logic_vector(6 downto 0);
		reg_addr	: in std_logic_vector(7 downto 0);
		wr_data		: in std_logic_vector(7 downto 0);
		rd_data		: out std_logic_vector(7 downto 0);
		i2c_scl		: inout std_logic;
		i2c_sda		: inout std_logic;
		ack_err		: out std_logic;
		busy		: out std_logic
		);
end entity;
--==============================================================================
architecture arch of i2c_master_r00 is
	constant divider  :  natural := (input_clk/bus_clk)/4;	--	number of clocks in 1/4 cycle of scl

	type state_type is (idle, start, slv_cmd, wr_cmd, ack1, reg_wr, ack2, data_wr, 
						ack3, rep_start, slv_cmd2, ack4, data_rd, nack, stop);
	signal pres_state	: state_type;
	signal next_state	: state_type;

	signal clk_stretch	: std_logic;
	signal slv_addr_reg	: std_logic_vector(7 downto 0);
	signal reg_addr_reg	: std_logic_vector(7 downto 0);
	signal data_wr_reg	: std_logic_vector(7 downto 0);
	signal rd_ser_buf	: std_logic_vector(7 downto 0);
	signal data_rd_reg	: std_logic_vector(7 downto 0);
	signal clk_cnt		: integer range 0 to divider*4-1;
	signal data_clk		: std_logic;
	signal p0			: std_logic;
	signal p1			: std_logic;
	signal p2			: std_logic;
	signal p3			: std_logic;
	signal bit_cnt		: integer range 0 to 7;
	signal ack_err_flag	: std_logic;
	signal busy_flag	: std_logic;
	signal scl_o		: std_logic;
	signal sda_o		: std_logic;
	----------------------------------------------------------------------------
begin

	----------------------------------------------------------------------------
	-- Contador para clock 12c:
	----------------------------------------------------------------------------
	process(nrst, clk_in)
	begin
		if nrst = '0' then
			clk_stretch <= '0';
			clk_cnt <= 0;
			p0 <= '0';
			p1 <= '0';
			p2 <= '0';
			p3 <= '0';
		elsif rising_edge(clk_in) then
			--------------------------------------------------------------------
			-- Detecta se o slave está fazento um stretch no clock
			--------------------------------------------------------------------
			if clk_cnt > divider*2 and clk_cnt < divider*3-1 and 
			   scl_o = '1' and i2c_scl /= '1' then
				clk_stretch <= '1';
			else
				clk_stretch <= '0';
			end if;		
			--------------------------------------------------------------------
			-- contador de clock
			--
			-- Verifica se o slave não está fazendo stretch do clock
			-- Nesse caso, continua a contagem
			--
			-- Caso haja um clock_stretch, para a contagem
			--------------------------------------------------------------------
			if  clk_stretch = '0' then
				----------------------------------------------------------------
				-- Verifica se chegou no final da contagem
				-- Nesse caso, volta para zero
				----------------------------------------------------------------
				if clk_cnt = divider*4-1 then
					clk_cnt <= 0;
				----------------------------------------------------------------
				-- Caso contrário, incrementa o contador
				----------------------------------------------------------------
				else
					clk_cnt <= clk_cnt+1;
				end if;
			end if;
			--------------------------------------------------------------------
			-- gera quatro pulsos, defasados de 90 graus, cada um com duração
			-- de 1 período de clk_in.
			--
			-- p0 faz a borda de descida de scl. A máquina de estado é
			--    atualizada durante esse pulso.
			-- p1 faz a atualização do dado durante a escrita
			-- p2 faz a borda de subida de scl
			-- p3 faz a a atualização do buffer de leitura de dados e também
			--    é usado para a transição de sda nos estados de start, stop e
			--    re_start.
			--------------------------------------------------------------------
			if clk_cnt = divider*4-1 then
				p0 <= '1';
			else
				p0 <= '0';
			end if;
			----------------------------------------------------------
			if clk_cnt = divider-1 then
				p1 <= '1';
			else
				p1 <= '0';
			end if;
			----------------------------------------------------------
			if clk_cnt = divider*2-1 then
				p2 <= '1';
			else
				p2 <= '0';
			end if;
			----------------------------------------------------------
			if clk_cnt = divider*3-1 then
				p3 <= '1';
			else
				p3 <= '0';
			end if;
		end if;
	end process;
	
	----------------------------------------------------------------------------
	-- Parte sequencial da máquina de estados:
	----------------------------------------------------------------------------
	process(nrst, clk_in, p0, init)
	begin
		if nrst = '0' then
			pres_state <= idle;
		elsif rising_edge(clk_in) and p0 = '1' then
			pres_state <= next_state;
		end if;
	end process;
	------------------------------------------------------------------
	-- Parte combinacional da máquina de estados
	-- Lógica do próximo estado:
	------------------------------------------------------------------
	process(pres_state, init, ack_err_flag, bit_cnt, slv_addr_reg)
	begin
		case pres_state is
			------------------------------------------------------
			when idle =>
				if init = '1' then
					next_state <= start;
				else
					next_state <= idle;
				end if;
			------------------------------------------------------
			when start =>
				next_state <= slv_cmd;
			------------------------------------------------------
			when slv_cmd =>
				if bit_cnt = 1 then
					next_state <= wr_cmd;
				else
					next_state <= slv_cmd;
				end if;
			------------------------------------------------------
			when wr_cmd =>
				next_state <= ack1;
			------------------------------------------------------
			when ack1 =>
				if ack_err_flag = '1' then
					next_state <= stop;
				else
					next_state <= reg_wr;
				end if;
			------------------------------------------------------
			when reg_wr =>
				if bit_cnt = 0 then
					next_state <= ack2;
				else
					next_state <= reg_wr;
				end if;
			------------------------------------------------------
			when ack2 =>
				if ack_err_flag = '1' then
					next_state <= stop;
				else
					if slv_addr_reg(0) = '0' then
						next_state <= data_wr;
					else
						next_state <= rep_start;
					end if;
				end if;
			-----------------------------------------------------
			when data_wr =>
				if bit_cnt = 0 then
					next_state <= ack3;
				else
					next_state <= data_wr;
				end if;
			-----------------------------------------------------
			when ack3 =>
				next_state <= stop;
			-----------------------------------------------------
			when stop =>
				next_state <= idle;
			-----------------------------------------------------
			when rep_start =>
				next_state <= slv_cmd2;
			------------------------------------------------------
			when slv_cmd2 =>
				if bit_cnt = 0 then
					next_state <= ack4;
				else
					next_state <= slv_cmd2;
				end if;
			------------------------------------------------------
			when ack4 =>
				if ack_err_flag = '1' then
					next_state <= stop;
				else
					next_state <= data_rd;
				end if;
			------------------------------------------------------
			when data_rd =>
				if bit_cnt = 0 then
					next_state <= nack;
				else
					next_state <= data_rd;
				end if;
			-----------------------------------------------------
			when nack =>
				next_state <= stop;
			-----------------------------------------------------
			when others =>
				next_state <= idle;
		end case;
	end process;
	
	-----------------------------------------------------------------
	-- No início de cada operação, salva as entradas "slv_addr",
	-- "reg_addr" e "wr_data" nos registradores respectivos.
	--
	-- A entrada "rd_nwr" é salva como bit 0 do "slave_reg"
	----------------------------------------------------------------
	process(nrst, clk_in, p0, pres_state, init)
	begin
		if nrst = '0' then
			slv_addr_reg <= (others => '0');	
			reg_addr_reg <= (others => '0');
			data_wr_reg	<= (others => '0');
		elsif rising_edge(clk_in) then
			if p0 = '1' and pres_state = idle and init = '1' then
				slv_addr_reg <= slv_addr & rd_nwr;	
				reg_addr_reg <= reg_addr;
				data_wr_reg	<= wr_data;
			end if;
		end if;
	end process;

	----------------------------------------------------------------------------
	-- A saída "busy" é ativada (nível alto) no início da operação. A operação
	-- é iniciada quando a entrada "init" está ativa (nível alto) no instante
	-- p0. Dessa forma, o sinal "init" deverá permanecer ativado até a
	-- confirmação do início da operação através da ativação de "busy".
	--
	-- A saída "busy" é desativada ao final da operação, após o ciclo de "stop".
	--
	-- Se o sinal "init" estiver ativado no fim da operação, uma nova operação
	-- é iniciada, e o sinal "busy" permanece ativado.
	----------------------------------------------------------------------------
	process(nrst, clk_in, p0, pres_state, init)
	begin
		if nrst = '0' then
			busy_flag <= '1';
		elsif rising_edge(clk_in) and p0 = '1' then	-- borda de descida
			if pres_state = idle then
				if init = '1' then
					busy_flag <= '1';
				else
					busy_flag <= '0';
				end if;
			end if;
		end if;
	end process;

	-----------------------------------------------------------------
	-- A flag "ack_err" é atualizado durante o p3,
	-- nos estados ack1, ack2 ou ack4.
	--
	-- Caso o sinal 12c_sda não seja "0" nesses instantes, a flag é
	-- setada.
	--
	-- A flag é resetada no início de cada operação.
	----------------------------------------------------------------
	process(nrst, clk_in, p1, pres_state, i2c_sda)
	begin
		if nrst = '0' then
			ack_err_flag <= '0';
		elsif rising_edge(clk_in) then
			if p0 = '1' and init = '1' and pres_state = idle then
				ack_err_flag <= '0';
			elsif p3 = '1' and (pres_state = ack1 or
								pres_state = ack2 or
								pres_state = ack4) then
				if i2c_sda /= '0' then
					ack_err_flag <= '1';
				end if;
			end if;
		end if;
	end process;
	------------------------------------------------------------------
	-- i2c_scl:
	--
	-- a borda de descida de scl ocorre com p0.
	-- A borda de subida ocorre com p2.
	------------------------------------------------------------------
	process(nrst, clk_in, p0, pres_state)
	begin
		if nrst = '0' then
			scl_o <= '1';
		elsif rising_edge(clk_in) then
			if pres_state = idle then
				scl_o <= '1';
			else
				if p0 = '1' and pres_state /= stop then
					scl_o <= '0';
				elsif p2 ='1' then
					scl_o <= '1';
				end if;
			end if;
		end if;
	end process;
	------------------------------------------------------------------
	-- i2c_sda:
	------------------------------------------------------------------
	process(nrst, clk_in, p1, p3, pres_state, bit_cnt)
	begin
		if nrst = '0' then
			sda_o <= '1';
		elsif rising_edge(clk_in) then
			if p1 = '1' then
				case pres_state is
					when stop | wr_cmd =>
						sda_o <= '0';
					when slv_cmd | slv_cmd2 =>
						sda_o <= slv_addr_reg(bit_cnt);
					when reg_wr =>
						sda_o <= reg_addr_reg(bit_cnt);
					when data_wr =>
						sda_o <= data_wr_reg(bit_cnt);
					when others =>
						sda_o <= '1';
				end case;
			elsif p3 = '1' then
				case pres_state is
					when start | rep_start =>
						sda_o <= '0';
					when stop =>
						sda_o <= '1';
					when others =>
						null;
				end case;
			end if;
		end if;
	end process;
	------------------------------------------------------------------
	-- Contador de bits para a escrita e leitura dos dados:
	------------------------------------------------------------------
	process(nrst, clk_in, p0, pres_state)
	begin
		if nrst = '0' then
			bit_cnt <= 7;
		elsif rising_edge(clk_in) and p0 = '1' then
			case pres_state is
				when slv_cmd | reg_wr | data_wr | slv_cmd2 | data_rd =>
					bit_cnt <= bit_cnt - 1;
				when others =>
					bit_cnt <= 7;
			end case;
		end if;
	end process;
	----------------------------------------------------------------------------
	-- Buffer para a leitura de dados.
	--
	-- Cada bit (MSB -> LSB, indexado por "bit_cnt") é recebido, no p3, durante
	-- o estado "data_rd".
	--
	-- Após o último bit, o dado recebido é transferido para o registrador
	-- "data_rd_reg".
	----------------------------------------------------------------------------
	process(nrst, clk_in, pres_state, p3, i2c_sda)
	begin
		if nrst = '0' then
			rd_ser_buf <= (others => '0');
			data_rd_reg <= (others => '0');
		elsif rising_edge(clk_in) then
			----------------------------------------------------------
			-- buffer para leitura serial bit a bit:
			----------------------------------------------------------
			if p3 = '1' and pres_state = data_rd then
				rd_ser_buf(bit_cnt) <= i2c_sda;
			end if;
			----------------------------------------------------------
			-- registrador de dados lidos:
			----------------------------------------------------------
			if p3 = '1' and pres_state = nack then
				data_rd_reg <= rd_ser_buf;
			end if;
		end if;
	end process;
		
	----------------------------------------------------------------------------
	-- Saídas:
	----------------------------------------------------------------------------
	
	busy <= busy_flag;
	ack_err <= ack_err_flag;
	rd_data <= data_rd_reg;
	i2c_scl <= '0' when scl_o = '0' else 'Z';	
	i2c_sda <= '0' when sda_o = '0' else 'Z';
		
end arch;		