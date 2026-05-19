-- Pacote: compadder_package
-- Objetivo: Disponibilizar a declaração do componente 'adder_comp' para instanciacão em outros níveis da hierarquia.
LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE compadder_package IS
	COMPONENT adder_comp -- Componente somador que inclui decodificação para múltiplos displays
		PORT( Cin  : IN STD_LOGIC;                     -- Sinal de carry de entrada (vem de um estágio anterior)
				A    : IN STD_LOGIC_VECTOR(3 DOWNTO 0);  -- Vetor de entrada A (4 bits)
				B    : IN STD_LOGIC_VECTOR(3 DOWNTO 0);  -- Vetor de entrada B (4 bits)
				Cout : OUT STD_LOGIC;                    -- Sinal de carry de saída (vai para o próximo estágio)
				s    : OUT STD_LOGIC_VECTOR(3 DOWNTO 0); -- Vetor de resultado da soma (4 bits)
				M1   : OUT STD_LOGIC_VECTOR(0 TO 6);     -- Saída formatada para Display de 7 Segmentos 1
				M2   : OUT STD_LOGIC_VECTOR(0 TO 6);     -- Saída formatada para Display de 7 Segmentos 2
				M3   : OUT STD_LOGIC_VECTOR(0 TO 6));     -- Saída formatada para Display de 7 Segmentos 3
	END COMPONENT;
END compadder_package;