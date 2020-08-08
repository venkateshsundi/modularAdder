----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:00:13 03/02/2020 
-- Design Name: 
-- Module Name:    top_OHR - Behavioral 
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

entity top_OHR is
    Port ( a,b : in  STD_LOGIC_VECTOR (6 downto 0);
           R : out  STD_LOGIC_VECTOR (6 downto 0));
end top_OHR;

architecture Behavioral of top_OHR is
component oneHot2Binary 
    Port ( b : in  STD_LOGIC_VECTOR (6 downto 0);
           s1,s2,s4 : out  STD_LOGIC);
end component;
component OHR 
Port(s1,s2,s4:in std_logic;
          a:in std_logic_vector(6 downto 0);
ohr:out std_logic_vector(6 downto 0));
End component;
signal s1,s2,s4:std_logic;
begin
u1:oneHot2Binary port map(b,s1,s2,s4);
u2:OHR port map(s1,s2,s4,a,R);
end Behavioral;

