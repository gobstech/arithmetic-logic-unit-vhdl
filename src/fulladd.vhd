-- Componente: Somador Completo (Full Adder) de 1 bit
-- Descrição: Realiza a soma aritmética de dois bits (x, y) considerando um carry de entrada (Cin).
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fulladd IS
	PORT( Cin, x, y : IN STD_LOGIC; -- Entradas: Carry de entrada e os dois bits a serem somados
			s, Cout : OUT STD_LOGIC);   -- Saídas: Resultado da soma (s) e o carry de saída (Cout)
END fulladd;

ARCHITECTURE Logic OF fulladd IS 
BEGIN 
	-- Cálculo da soma: '1' se houver um número ímpar de entradas em '1'
	s <= x XOR y XOR Cin; 
	-- Cálculo do carry: '1' se pelo menos duas entradas forem '1'
	Cout <= (x AND y) OR (Cin AND x) OR (Cin AND y);
END Logic;