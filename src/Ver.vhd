LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Ver IS
	PORT( Res : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			Zero : OUT STD_LOGIC);
END Ver;

ARCHITECTURE Verification OF Ver IS
BEGIN
	WITH Res SELECT
	  Zero <= '1' WHEN "0000",
	          '0' WHEN OTHERS;
END Verification;
	  