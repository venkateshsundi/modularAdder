----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:12:55 08/08/2020 
-- Design Name: 
-- Module Name:    top_prop_OHR - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

Entity top_prop_OHR is
Port (a,b:in std_logic_vector(6 downto 0);
      Sum:out std_logic_vector(6 downto 0));
End top_prop_OHR;

architecture behavioural of top_prop_OHR is
signal x,y,z:std_logic_vector(6 downto 0);

begin
x(6)<=a(6) and b(6);
x(5)<=a(5) and b(5);
x(4)<=a(4) and b(4);
x(3)<=a(3) and b(3);
x(2)<=a(2) and b(2);
x(1)<=a(1) and b(1);
x(0)<=a(0) and b(0);
Y(6)<=a(6) OR b(6);
Y(5)<=a(5) OR b(5);
Y(4)<=a(4) OR b(4);
Y(3)<=a(3) OR b(3);
Y(2)<=a(2) OR b(2);
Y(1)<=a(1) OR b(1);
Y(0)<=a(0) OR b(0);
Z(6)<= ((y(1) and y(5)) or (y(2) and y(4)) or (y(0) and y(6)) or x(3));
Z(5)<= ((y(1) and y(4)) or (y(2) and y(3)) or (y(0) and y(5)) or x(6));
Z(4)<= ((y(3) and y(1)) or (y(5) and y(6)) or (y(0) and y(4)) or x(2));
Z(3)<= ((y(2) and y(1)) or (y(4) and y(6)) or (y(0) and y(3)) or x(5));
Z(2)<= ((y(4) and y(5)) or (y(3) and y(6)) or (y(0) and y(2)) or x(1));
Z(1)<= ((y(3) and y(5)) or (y(2) and y(6)) or (y(0) and y(1)) or x(4));
Z(0)<= ((y(3) and y(4)) or (y(2) and y(5)) or (y(6) and y(1)) or x(0));
Sum(6)<=z(6);
Sum(5)<=z(5);
Sum(4)<=z(4);
Sum(3)<=z(3);
Sum(2)<=z(2);
Sum(1)<=z(1);
Sum(0)<=z(0);
End behavioural;




