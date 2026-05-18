LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.fulladd_package.all;

ENTITY Prod IS
PORT(	x : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		y : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		Sum : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		Cout : OUT STD_LOGIC);
END Prod;

ARCHITECTURE Pon OF Prod IS
	SIGNAL Product : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL Coutaux : STD_LOGIC;
	SIGNAL Cout_1  : STD_LOGIC;
BEGIN
	Product(0) <= x(0) AND y(0);
	Product(1) <= x(1) AND y(0);
	Product(2) <= x(0) AND y(1);
	Product(3) <= x(1) AND y(1);
	
	Sum(0) <= Product(0);
	
	operation0: fulladd PORT MAP ('0',Product(1),Product(2),Sum(1),Coutaux);
	-- Correção: Remove Product(2) redundante. Soma apenas o carry anterior com o bit MSB do produto.
	operation1: fulladd PORT MAP (Coutaux,Product(3),'0',Sum(2),Cout_1);
	
	Cout <= Cout_1;
	Sum(3) <= Cout_1;
END Pon;	
	