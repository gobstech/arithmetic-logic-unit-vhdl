LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.Comparator_package.all;

ENTITY Comparator_Operations IS 
	PORT( x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			y : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			e : OUT STD_LOGIC;
			g : OUT STD_LOGIC;
			l : OUT STD_LOGIC;
			M1 : OUT STD_LOGIC_VECTOR(0 TO 6);
			M2 : OUT STD_LOGIC_VECTOR(0 TO 6));
END Comparator_Operations;

ARCHITECTURE Operations OF Comparator_Operations IS
BEGIN

	-- Correção Crítica: Usando Mapeamento Nominal (Named Association).
	-- Isso garante que o sinal 'e' da entidade vá exatamente para a porta 'E' do componente,
	-- independentemente da ordem em que foram declarados. Isso evita trocas acidentais 
	-- de sinais entre Igualdade, Maior e Menor.
	operation0: Comp PORT MAP (
		x => x,
		y => y,
		E => e,
		G => g,
		L => l
	);
	
	-- Decodificador HEX para a entrada X (0-F)
	WITH x SELECT
		M1 <= 	"0000001" WHEN "0000",
					"1001111" WHEN "0001",
					"0010010" WHEN "0010",
					"0000110" WHEN "0011",
					"1001100" WHEN "0100",
					"0100100" WHEN "0101",
					"0100000" WHEN "0110",
					"0001111" WHEN "0111",
					"0000000" WHEN "1000",
					"0000100" WHEN "1001",
					"0001000" WHEN "1010",
					"1100000" WHEN "1011",
					"0110001" WHEN "1100",
					"1000010" WHEN "1101",
					"0110000" WHEN "1110",
					"0111000" WHEN "1111",
					"1111111" WHEN OTHERS;
					
	-- Decodificador HEX para a entrada Y (0-F)
	WITH y SELECT
		M2  <=   "0000001" WHEN "0000",
					"1001111" WHEN "0001",
					"0010010" WHEN "0010",
					"0000110" WHEN "0011",
					"1001100" WHEN "0100",
					"0100100" WHEN "0101",
					"0100000" WHEN "0110",
					"0001111" WHEN "0111",
					"0000000" WHEN "1000",
					"0000100" WHEN "1001",
					"0001000" WHEN "1010",
					"1100000" WHEN "1011",
					"0110001" WHEN "1100",
					"1000010" WHEN "1101",
					"0110000" WHEN "1110",
					"0111000" WHEN "1111",
					"1111111" WHEN OTHERS;
END Operations;