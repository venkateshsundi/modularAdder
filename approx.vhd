----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:14:04 08/09/2020 
-- Design Name: 
-- Module Name:    approx - Behavioral 
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

entity approx is
Port ( x,y,z:in std_logic_vector(5 downto 0);
			p:in std_logic_vector(4 downto 0);
			q:in std_logic_vector(3 downto 0);
			r:in std_logic_vector(2 downto 0);
			d:in std_logic_vector(1 downto 0);
			sel:out std_logic;
			Sum0,sum1:out std_logic_vector(6 downto 1));
end approx;

architecture Behavioral of approx is
signal t0,t1,t2,t3,t4,t5:std_logic;

begin
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

