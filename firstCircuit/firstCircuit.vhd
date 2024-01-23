LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY firstcircuit IS
PORT(x1,x2 : IN std_logic ; f : OUT std_logic);
END firstcircuit;
ARCHITECTURE behavioral OF firstcircuit IS
BEGIN
  f <= (x1 AND NOT x2) OR (NOT x1 AND x2);
END behavioral;

