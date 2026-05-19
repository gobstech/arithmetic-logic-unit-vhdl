-- Pacote: prod_package
-- Objetivo: Declarar o componente 'Prod' (multiplicador) para que possa ser instanciado em outros níveis.
LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE prod_package IS 
	COMPONENT Prod -- Declaração do componente multiplicador de 2x2 bits
		PORT( x : IN STD_LOGIC_VECTOR(1 DOWNTO 0);        -- Operando A (2 bits)
				y : IN STD_LOGIC_VECTOR(1 DOWNTO 0);        -- Operando B (2 bits)
				Sum_Prod : OUT STD_LOGIC_VECTOR(3 DOWNTO 0); -- Resultado do produto (4 bits)
				Cout : OUT STD_LOGIC);                       -- Carry de saída final
	END COMPONENT;
END prod_package;