-- Entidade: prod_comp
-- Descrição: Integra um componente de produto (2 bits) e exibe as entradas e o resultado em displays de 7 segmentos.
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.prod_package.all; -- Requer o pacote que define o componente 'prod'

ENTITY prod_comp IS
	PORT( A : IN STD_LOGIC_VECTOR(1 DOWNTO 0);          -- Entrada A (2 bits)
			B : IN STD_LOGIC_VECTOR(1 DOWNTO 0);          -- Entrada B (2 bits)
			C : OUT STD_LOGIC;                             -- Sinal de carry ou controle do produto
			Sum_Prod : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);   -- Resultado binário do produto
			M1 : OUT STD_LOGIC_VECTOR(0 TO 6);             -- Display para a entrada A
			M2 : OUT STD_LOGIC_VECTOR(0 TO 6);             -- Display para a entrada B
			M3 : OUT STD_LOGIC_VECTOR(0 TO 6));             -- Display para o resultado Sum_Prod
END prod_comp;

ARCHITECTURE Prodsum OF prod_comp IS
	SIGNAL Sum : STD_LOGIC_VECTOR(3 DOWNTO 0); -- Sinal interno para armazenar o resultado do produto
BEGIN
	-- Instanciação do componente de produto
	Sum0: prod PORT MAP (A,B,Sum,C);
	
	Sum_Prod <= Sum;
	
	-- Decodificador de 7 segmentos para a Entrada A (2 bits: valores 0 a 3)
	WITH A SELECT
		M1 <= 	"0000001" WHEN "00", -- '0'
					"1001111" WHEN "01", -- '1'
					"0010010" WHEN "10",
					"0000110" WHEN "11",
					"0000000" WHEN OTHERS; -- Padrão de erro/apagado
					
	-- Decodificador de 7 segmentos para a Entrada B (2 bits: valores 0 a 3)
	WITH B SELECT
		M2  <=   "0000001" WHEN "00", -- '0'
					"1001111" WHEN "01", -- '1'
					"0010010" WHEN "10",
					"0000110" WHEN "11",
					"0000000" WHEN OTHERS;
	
	-- Decodificador de 7 segmentos para o Resultado (4 bits: valores 0 a 15/F)
	WITH Sum SELECT 
		M3  <=   "0000001" WHEN "0000", -- '0'
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
					"0000000" WHEN OTHERS;
END Prodsum;
	
			