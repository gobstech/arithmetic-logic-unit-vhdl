-- Pacote: Comparator_package
-- Objetivo: Declarar o componente 'Comp' para que possa ser instanciado em outros arquivos do projeto.
LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE Comparator_package IS
	COMPONENT Comp  -- Declaração do componente comparador de magnitude
		PORT( x : IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- Operando A
			y : IN STD_LOGIC_VECTOR(3 DOWNTO 0);      -- Operando B
			E : OUT STD_LOGIC;                         -- Igual
			G : OUT STD_LOGIC;                         -- Maior
			L : OUT STD_LOGIC);                        -- Menor
	END COMPONENT;
END Comparator_package;