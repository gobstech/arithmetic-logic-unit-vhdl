-- Pacote: prodcomp_package
-- Objetivo: Declarar o componente 'Prod_comp' para integração de sistema com displays.
LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE prodcomp_package IS 
	COMPONENT Prod_comp -- Componente que encapsula o multiplicador e os decodificadores HEX
		PORT( A : IN STD_LOGIC_VECTOR(1 DOWNTO 0);          -- Entrada A (2 bits)
				B : IN STD_LOGIC_VECTOR(1 DOWNTO 0);          -- Entrada B (2 bits)
				C : OUT STD_LOGIC;                             -- Carry de saída
				Sum_Prod : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);   -- Resultado binário
				M1 : OUT STD_LOGIC_VECTOR(0 TO 6);             -- Display para entrada A
				M2 : OUT STD_LOGIC_VECTOR(0 TO 6);             -- Display para entrada B
				M3 : OUT STD_LOGIC_VECTOR(0 TO 6));             -- Display para o resultado
	END COMPONENT;
END prodcomp_package;