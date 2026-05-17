LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.fulladd_package.all;

ENTITY adder4 IS 
	PORT( Cin : IN STD_LOGIC;
			x,y : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			s	 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			Cout: OUT STD_LOGIC);
END adder4;

ARCHITECTURE Struc OF adder4 IS 
	SIGNAL C : STD_LOGIC_VECTOR(1 TO 3);
BEGIN
	stage0: fulladd PORT MAP (Cin,x(0),y(0),s(0),C(1));
	stage1: fulladd PORT MAP (C(1),x(1),y(1),s(1),C(2));
	stage2: fulladd PORT MAP (C(2),x(2),y(2),s(2),C(3));
	stage3: fulladd PORT MAP (C(3),x(3),y(3),s(3),Cout);
END Struc;