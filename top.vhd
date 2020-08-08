----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:51:04 02/20/2020 
-- Design Name: 
-- Module Name:    top - Behavioral 
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

entity top_Therm is
port(a,b:in std_logic_vector(7 downto 1);
r: out std_logic_vector(7 downto 1));
end entity;
architecture behavioral of top_Therm is
signal s1,s2,s4:std_logic;
component T_2
Port(a:in std_logic_vector(7 downto 1);
S1,s2,s4:out std_logic);
End component;
component TCR
port(b:in std_logic_vector(7 downto 1);
s1,s2,s4:in std_logic;
r:out std_logic_vector(7 downto 1));
end component;
begin
c1:T_2 port map(a,s1,s2,s4);
c2:TCR port map(b,s1,s2,s4,r);
end behavioral;

