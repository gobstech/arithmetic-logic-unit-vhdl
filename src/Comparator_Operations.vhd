-- Entidade Principal: Comparator_Operations
-- Esta unidade integra o comparador de 4 bits com decodificadores para displays de 7 segmentos.
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.Comparator_package.all; -- Importa a declaração do componente 'Comp' do pacote

ENTITY Comparator_Operations IS 
	PORT( x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);   -- Entrada A (4 bits)
			y : IN STD_LOGIC_VECTOR(3 DOWNTO 0);   -- Entrada B (4 bits)
			E : OUT STD_LOGIC;                      -- Saída: Igual (Equal)
			G : OUT STD_LOGIC;                      -- Saída: Maior (Greater)
			L : OUT STD_LOGIC;                      -- Saída: Menor (Less)
			M1 : OUT STD_LOGIC_VECTOR(0 TO 6);      -- Saída para Display 7 Seg (referente a X)
			M2 : OUT STD_LOGIC_VECTOR(0 TO 6));     -- Saída para Display 7 Seg (referente a Y)
END Comparator_Operations;

ARCHITECTURE Operations OF Comparator_Operations IS
BEGIN

	-- Instanciação do componente Comparador (Comp).
	-- Realiza a comparação lógica entre os vetores de entrada x e y.
	operation0: Comp PORT MAP (x,y,E,G,L);
	
	-- Decodificador para o Display 1 (Entrada X)
	-- Converte o valor binário de 4 bits para o padrão de segmentos (a-g).
	WITH x SELECT
		M1 <= 	"0000001" WHEN "0000", -- '0'
					"1001111" WHEN "0001", -- '1'
					"0010010" WHEN "0010",
					"0000110" WHEN "0011",
					"1001100" WHEN "0100",
					"0100100" WHEN "0101",
					"0100000" WHEN "0110",
					"0001111" WHEN "0111",
					"0000000" WHEN "1000",
					"0001111" WHEN "1001",
					"0100000" WHEN "1010",
					"0100100" WHEN "1011",
					"1001100" WHEN "1100",
					"0000110" WHEN "1101",
					"0010010" WHEN "1110",
					"1001111" WHEN "1111", -- 'F'
					"1111111" WHEN OTHERS; -- Apagado
					
	-- Decodificador para o Display 2 (Entrada Y)
	-- Converte o valor binário de 4 bits para o padrão de segmentos (a-g).
	WITH y SELECT
		M2  <=   "0000001" WHEN "0000", -- '0'
					"1001111" WHEN "0001", -- '1'
					"0010010" WHEN "0010",
					"0000110" WHEN "0011",
					"1001100" WHEN "0100",
					"0100100" WHEN "0101",
					"0100000" WHEN "0110",
					"0001111" WHEN "0111",
					"0000000" WHEN "1000",
					"0001111" WHEN "1001",
					"0100000" WHEN "1010",
					"0100100" WHEN "1011",
					"1001100" WHEN "1100",
					"0000110" WHEN "1101",
					"0010010" WHEN "1110",
					"1001111" WHEN "1111", -- 'F'
					"1111111" WHEN OTHERS; -- Apagado
END Operations;