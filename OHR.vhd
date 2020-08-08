----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:32:43 02/26/2020 
-- Design Name: 
-- Module Name:    OHR - Behavioral 
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

Entity OHR is
Port(s1,s2,s4:in std_logic;
          a:in std_logic_vector(6 downto 0);
ohr:out std_logic_vector(6 downto 0));
End entity;
Architecture structural of OHR is
Component MUX
Port(s,a,b:in std_logic ;
          Y:out std_logic );
end component;
Signal h,z:std_logic_vector(6 downto 0);
Begin
U1:MUX port map(s1,a(0),a(6),h(0));
U2:MUX port map(s1,a(1),a(0),h(1));
U3:MUX port map(s1,a(2),a(1),h(2));
U4:MUX port map(s1,a(3),a(2),h(3));
U5:MUX port map(s1,a(4),a(3),h(4));
U6:MUX port map(s1,a(5),a(4),h(5));
U7:MUX port map(s1,a(6),a(5),h(6));
U8:MUX port map(s2,h(0),h(5),z(0));
U9:MUX port map(s2,h(1),h(6),z(1));
U10:MUX port map(s2,h(2),h(0),z(2));
U11:MUX port map(s2,h(3),h(1),z(3));
U12:MUX port map(s2,h(4),h(2),z(4));
U13:MUX port map(s2,h(5),h(3),z(5));
U14:MUX port map(s2,h(6),h(4),z(6));
U15:MUX port map(s4,z(0),z(3),ohr(0));
U16:MUX port map(s4,z(1),z(4),ohr(1));
U17:MUX port map(s4,z(2),z(5),ohr(2));
U18:MUX port map(s4,z(3),z(6),ohr(3));
U19:MUX port map(s4,z(4),z(0),ohr(4));
U20:MUX port map(s4,z(5),z(1),ohr(5));
U21:MUX port map(s4,z(6),z(2),ohr(6));
End structural;


