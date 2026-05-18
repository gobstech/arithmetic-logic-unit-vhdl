-- Componente: Somador de 4 bits com decodificadores para display de 7 segmentos.
-- Este módulo realiza a soma aritmética e converte as entradas e o resultado para o formato de display.
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.fulladd_package_vector.all;

ENTITY adder_comp IS 
	PORT( 
		Cin  : IN STD_LOGIC;                         -- Carry de entrada (transporte inicial)
		A    : IN STD_LOGIC_VECTOR(3 DOWNTO 0);      -- Operando A de 4 bits
		B    : IN STD_LOGIC_VECTOR(3 DOWNTO 0);      -- Operando B de 4 bits
		Cout : OUT STD_LOGIC;                        -- Carry de saída (transporte final)
		M1   : OUT STD_LOGIC_VECTOR(0 TO 6);         -- Saída 7 segmentos para o valor de A
		M2   : OUT STD_LOGIC_VECTOR(0 TO 6);         -- Saída 7 segmentos para o valor de B
		M3   : OUT STD_LOGIC_VECTOR(0 TO 6)          -- Saída 7 segmentos para o resultado da soma
	);
END adder_comp;

ARCHITECTURE Func OF adder_comp IS
	SIGNAL Soma : STD_LOGIC_VECTOR(3 DOWNTO 0);      -- Armazena o resultado binário da soma
	SIGNAL Cs : STD_LOGIC;                           -- Sinal interno para capturar o carry out do somador
BEGIN
	
	-- Instanciação do somador de 4 bits. 
	-- Conectamos o carry de saída ao sinal interno 'Cs' para evitar conflito de drivers.
	stage0: adder4 PORT MAP (Cin, A, B, Soma, Cs);
	
	-- Atribui o valor do transporte final para a porta de saída física
	Cout <= Cs;
	
	-- Decodificador de 7 segmentos para a entrada A
	-- Converte o binário em um padrão onde '0' liga o segmento (comum em FPGAs Altera/Intel)
	WITH A SELECT
		M1 <= 	"0000001" WHEN "0000", -- Mostra '0'
					"1001111" WHEN "0001", -- Mostra '1'
					"0010010" WHEN "0010", -- Mostra '2'
					"0000110" WHEN "0011", -- Mostra '3'
					"1001100" WHEN "0100", -- Mostra '4'
					"0100100" WHEN "0101", -- Mostra '5'
					"0100000" WHEN "0110", -- Mostra '6'
					"0001111" WHEN "0111", -- Mostra '7'
					"0000000" WHEN OTHERS;
					
	-- Decodificador de 7 segmentos para a entrada B
	WITH B SELECT
		M2  <=   "0000001" WHEN "0000",
					"1001111" WHEN "0001",
					"0010010" WHEN "0010",
					"0000110" WHEN "0011",
					"1001100" WHEN "0100",
					"0100100" WHEN "0101",
					"0100000" WHEN "0110",
					"0001111" WHEN "0111",
					"0000000" WHEN OTHERS;
	
	-- Decodificador de 7 segmentos para o resultado binário da Soma
	WITH Soma SELECT 
		M3  <=   "0000001" WHEN "0000",
					"1001111" WHEN "0001",
					"0010010" WHEN "0010",
					"0000110" WHEN "0011",
					"1001100" WHEN "0100",
					"0100100" WHEN "0101",
					"0100000" WHEN "0110",
					"0001111" WHEN "0111",
					"0000000" WHEN OTHERS;
	
END Func;
	