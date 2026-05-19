-- Entidade: Ver
-- Descrição: Módulo responsável por identificar se o resultado de uma operação (Res) é zero.
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Ver IS
	PORT( Res : IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- Entrada: resultado a ser verificado (4 bits)
			Zero : OUT STD_LOGIC);                  -- Saída: '1' se o valor for zero
END Ver;

ARCHITECTURE Verification OF Ver IS
BEGIN
	-- Lógica de seleção: a flag Zero é ativada apenas no caso do padrão binário "0000"
	WITH Res SELECT
	  Zero <= '1' WHEN "0000",
	          '0' WHEN OTHERS;
END Verification;
	  