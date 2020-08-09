----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:28:25 08/08/2020 
-- Design Name: 
-- Module Name:    prop_thermal - Behavioral 
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

entity prop_thermal is
Port (a,b:in std_logic_vector(6 downto 1);
		sel:out std_logic;
		sum0,sum1:out std_logic_vector(6 downto 1));
end prop_thermal;

architecture Behavioral of prop_thermal is

signal x,y,z:std_logic_vector(5 downto 0);
signal t0,t1,t2,t3,t4,t5:std_logic;
signal p:std_logic_vector(4 downto 0);
signal q:std_logic_vector(3 downto 0);
signal r:std_logic_vector(2 downto 0);
signal d:std_logic_vector(1 downto 0);

Begin

x(0)<=a(6) nor b(1);
x(1)<=a(5) nor b(2);
x(2)<=a(4) nor b(3);
x(3)<=a(3) nor b(4);
x(4)<=a(2) nor b(5);
x(5)<=a(1) nor b(6);
y(0)<=a(6) and b(1);
y(1)<=a(5) and b(2);
y(2)<=a(4) and b(3);
y(3)<=a(3) and b(4);
y(4)<=a(2) and b(5);
y(5)<=a(1) and b(6);


z(0)<=x(0) or y(0);
z(1)<=x(1) or y(1);
z(2)<=x(2) or y(2);
z(3)<=x(3) or y(3);
z(4)<=x(4) or y(4);
z(5)<=x(5) or y(5);

P(0)<=z(0) and z(1);
P(1)<=z(1) and z(2);
P(2)<=z(2) and z(3);
P(3)<=z(3) and z(4);
P(4)<=z(4) and z(5);


q(0)<=p(0) and p(1);
q(1)<=p(1) and p(2);
q(2)<=p(2) and p(3);
q(3)<=p(3) and p(4);


r(0)<=q(0) and q(1);
r(1)<=q(1) and q(2);
r(2)<=q(2) and q(3);

d(0)<=r(0) and r(1);
d(1)<=r(1) and r(2);

sel <= ((y(0) nor y(1)) nor y(2)) nor (y(3) nor (y(4) nor y(5)));
t0<=((x(0) nor x(1)) nor (x(2) nor x(3))) nor (x(4) nor x(5));
t1<=(p(0) nor (p(1) nor p(2))) nor (p(3) nor p(4));
t2<=(q(0) nor q(1)) nor (q(2) nor q(3));
t3<=(r(0) nor r(1)) nor r(2);
t4<=d(0) nor d(1);
t5<=d(0) nand d(1);

sum0(6)<=t0;
sum0(5)<=t1;
sum0(4)<=t2;
sum0(3)<=t3;
sum0(2)<=t4;
sum0(1)<=t5;

sum1(6)<='0';
sum1(5)<=not t5;
sum1(4)<=not t4;
sum1(3)<=not t3;
sum1(2)<=not t2;
sum1(1)<=not t1;


end Behavioral;
