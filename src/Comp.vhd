LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Comp IS
	PORT( x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			y : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			E : OUT STD_LOGIC;
			G : OUT STD_LOGIC;
			L : OUT STD_LOGIC);
END Comp;

ARCHITECTURE Comp_Work OF Comp IS
	SIGNAL I : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL J : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL E_aux : STD_LOGIC;
	SIGNAL G_aux : STD_LOGIC;
	
BEGIN
	I(0) <= x(0) XNOR y(0);
	I(1) <= x(1) XNOR y(1);
	I(2) <= x(2) XNOR y(2);
	I(3) <= x(3) XNOR y(3);
	
	J(0) <= x(0) AND (NOT y(0)) AND I(1) AND I(2) AND I(3);
	J(1) <= x(1) AND (NOT y(1)) AND I(2) AND I(3);
	J(2) <= x(2) AND (NOT y(2)) AND I(3);
	J(3) <= x(3) AND (NOT y(3));

	E_aux <= I(0) AND I(1) AND I(2) AND I(3);
	G_aux <= J(0) OR J(1) OR J(2) OR J(3);
	L <= E_aux NOR G_aux;
	E <= E_aux;
	G <= G_aux;
END Comp_Work;