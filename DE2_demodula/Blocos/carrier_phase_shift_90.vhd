library ieee;
use ieee.std_logic_1164.all;

entity carrier_phase_shift_90 is
    port (
        clk      : in  std_logic; -- 50 MHz
        nrst     : in  std_logic;
        data_in  : in  std_logic_vector(9 downto 0);
        data_out : out std_logic_vector(9 downto 0)
    );
end entity;

architecture rtl of carrier_phase_shift_90 is
    -- Shift Register de 1000 posições para 90 graus (20us @ 50MHz)
    type delay_line is array (0 to 999) of std_logic_vector(9 downto 0);
    signal buffer_reg : delay_line := (others => (others => '0'));
begin
    process(clk, nrst)
    begin
        if nrst = '0' then
            buffer_reg <= (others => (others => '0'));
        elsif rising_edge(clk) then
            -- Deslocamento contínuo a 50 MHz (sem depender de data_stb)
            buffer_reg <= data_in & buffer_reg(0 to 998);
        end if;
    end process;
    
    data_out <= buffer_reg(999);
end rtl;