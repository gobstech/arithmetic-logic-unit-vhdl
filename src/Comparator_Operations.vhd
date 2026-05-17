LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.Comparator_package.all;

ENTITY Comparator_Operations IS 
	PORT( x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			y : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			e : OUT STD_LOGIC;
			g : OUT STD_LOGIC;
			l : OUT STD_LOGIC;
			M1 : OUT STD_LOGIC_VECTOR(0 TO 6);
			M2 : OUT STD_LOGIC_VECTOR(0 TO 6));
END Comparator_Operations;

ARCHITECTURE Operations OF Comparator_Operations IS
BEGIN

	operation0: Comp PORT MAP (x,y,e,g,l);
	
	WITH x SELECT
		M1 <= 	"0000001" WHEN "0000",
					"1001111" WHEN "0001",
					"0010010" WHEN "0010",
					"0000110" WHEN "0011",
					"1001100" WHEN "0100",
					"0100100" WHEN "0101",
					"0100000" WHEN "0110",
					"0001111" WHEN "0111",
					"0000000" WHEN OTHERS;
					
	WITH y SELECT
		M2  <=   "0000001" WHEN "0000",
					"1001111" WHEN "0001",
					"0010010" WHEN "0010",
					"0000110" WHEN "0011",
					"1001100" WHEN "0100",
					"0100100" WHEN "0101",
					"0100000" WHEN "0110",
					"0001111" WHEN "0111",
					"0000000" WHEN OTHERS;
END Operations;