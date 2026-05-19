-- Pacote: Sig_package
-- Objetivo: Declarar o componente 'Sig' para manipulação e exibição de sinais em múltiplos displays.
LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE Sig_package IS 
	COMPONENT Sig -- Componente para decodificação e controle de placas de display de 7 segmentos
		PORT(	Res : IN STD_LOGIC_VECTOR(2 DOWNTO 0);    -- Entrada de 3 bits (ex: código de sinal ou valor)
			Placa1 : OUT STD_LOGIC_VECTOR(0 TO 6);      -- Saída para o primeiro display de segmentos
			Placa2 : OUT STD_LOGIC_VECTOR(0 TO 6);      -- Saída para o segundo display de segmentos
			Placa3 : OUT STD_LOGIC_VECTOR(0 TO 6));      -- Saída para o terceiro display de segmentos
	END COMPONENT;
END Sig_package;