----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:47:55 02/20/2020 
-- Design Name: 
-- Module Name:    TCR - Behavioral 
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

entity TCR is
port(b:in std_logic_vector(7 downto 1);
s1,s2,s4:in std_logic;
r:out std_logic_vector(7 downto 1));
end entity;
architecture structural of TCR is
component mux is
Port ( s,a,b : in STD_LOGIC;
y : out STD_LOGIC);
end component;
signal x:std_logic_vector(7 downto 1);

signal y:std_logic_vector(9 downto 1);
signal z:std_logic_vector(12 downto 1);

begin
U1:MUX port map(s1,b(1),'1',x(1));
U2:MUX port map(s1,b(2),b(1),x(2));
U3:MUX port map(s1,b(3),b(2),x(3));
U4:MUX port map(s1,b(4),b(3),x(4));
U5:MUX port map(s1,b(5),b(4),x(5));
U6:MUX port map(s1,b(6),b(5),x(6));
U7:MUX port map(s1,'0',b(6),x(7));
U8:MUX port map(s2,x(1),'1',y(1));
U9:MUX port map(s2,x(2),'1',y(2));
U10:MUX port map(s2,x(3),x(1),y(3));
U11:MUX port map(s2,x(4),x(2),y(4));
U12:MUX port map(s2,x(5),x(3),y(5));
U13:MUX port map(s2,x(6),x(4),y(6));
U14:MUX port map(s2,x(7),x(5),y(7));
U15:MUX port map(s2,'0', x(6),y(8));
U16:MUX port map(s2,'0', x(7),y(9));
U17:MUX port map(s4,y(1),'1',z(1));
U18:MUX port map(s4,y(2),'1',z(2));
U19:MUX port map(s4,y(3),'1',z(3));
U20:MUX port map(s4,y(4),'1',z(4));
U21:MUX port map(s4,y(5),y(1),z(5));
U22:MUX port map(s4,y(6),y(2),z(6));
U23:MUX port map(s4,y(7),y(3),z(7));
U24:MUX port map(s4,y(8),y(4),z(8));
U25:MUX port map(s4,y(9),y(5),z(9));
U26:MUX port map(s4,'0',y(6),z(10));
U27:MUX port map(s4,'0',y(7),z(11));

U28:MUX port map(s4,'0',y(8),z(12));
U29:MUX port map(z(7),z(1),z(8),r(1));
U30:MUX port map(z(7),z(2),z(9),r(2));
U31:MUX port map(z(7),z(3),z(10),r(3));
U32:MUX port map(z(7),z(4),z(11),r(4));
U33:MUX port map(z(7),z(5),z(12),r(5));
U34:MUX port map(z(7),z(6),'0',r(6));
r(7)<='0';
end structural;


