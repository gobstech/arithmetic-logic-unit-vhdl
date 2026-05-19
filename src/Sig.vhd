-- Entidade: Sig
-- Descrição: Controla três placas de display de 7 segmentos com base em um vetor de entrada de 3 bits.
-- Cada bit da entrada 'Res' ativa um padrão específico em um display correspondente.
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Sig IS 
	PORT(	Res : IN STD_LOGIC_VECTOR(2 DOWNTO 0);      -- Entrada de 3 bits para controle dos sinais
			Placa1 : OUT STD_LOGIC_VECTOR(0 TO 6);      -- Saída para Display 1 (7 segmentos)
			Placa2 : OUT STD_LOGIC_VECTOR(0 TO 6);      -- Saída para Display 2 (7 segmentos)
			Placa3 : OUT STD_LOGIC_VECTOR(0 TO 6));      -- Saída para Display 3 (7 segmentos)
END Sig;

ARCHITECTURE A OF Sig IS 
	SIGNAL x : STD_LOGIC_VECTOR(2 DOWNTO 0);      -- Sinal auxiliar para mapeamento de bits
	SIGNAL Res1 : STD_LOGIC_VECTOR(2 DOWNTO 0);   -- Buffer interno para a entrada Res
BEGIN
	Res1 <= Res; -- Atribuição do sinal de entrada ao buffer interno

	-- Mapeamento da entrada Res1 para o sinal auxiliar x.
	-- Esta estrutura funciona como um "pass-through", mantendo a integridade bit a bit.
	WITH Res1 SELECT 
		x <= "111" WHEN "111", -- Se entrada é 7 (111), x recebe 7
			  "110" WHEN "110",
			  "101" WHEN "101",
			  "100" WHEN "100",
			  "011" WHEN "011",
			  "010" WHEN "010",
			  "001" WHEN "001",
		     "000" WHEN OTHERS; -- Padrão para 0 ou qualquer outro valor não mapeado
	
	-- Lógica do Display 1: Controlada pelo Bit 2 de x
	WITH x(2) SELECT
	   Placa1 <= "1111110" WHEN '1',  -- Ativa padrão (ex: segmento G apagado em lógica inversa)
					 "1111111" WHEN OTHERS; -- Desativa/Apaga todos os segmentos
					 
	-- Lógica do Display 2: Controlada pelo Bit 1 de x
	WITH x(1) SELECT
	   Placa2 <= "1111110" WHEN '1',  -- Ativa padrão se x(1) for '1'
					 "1111111" WHEN OTHERS;
	
	-- Lógica do Display 3: Controlada pelo Bit 0 de x
	WITH x(0) SELECT
	   Placa3 <= "1111110" WHEN '1',  -- Ativa padrão se x(0) for '1'
					 "1111111" WHEN OTHERS;
END A;
	