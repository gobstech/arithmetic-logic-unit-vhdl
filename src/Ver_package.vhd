-- Pacote: Ver_package
-- Objetivo: Declarar o componente 'Ver' para verificar se um resultado é zero.
LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE Ver_package IS 
	COMPONENT Ver -- Componente que detecta a condição de zero em um vetor
		PORT( Res : IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- Vetor de entrada de 4 bits para verificação
				Zero : OUT STD_LOGIC);                  -- Saída: '1' se a entrada for "0000"
	END COMPONENT;
END Ver_package;