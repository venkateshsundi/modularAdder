----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:54:51 02/27/2020 
-- Design Name: 
-- Module Name:    top_BC_mod - Behavioral 
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

entity top_BC_mod is
    Port ( a,b: in  STD_LOGIC_VECTOR (2 downto 0);
	 cout:out std_logic;
           s : out  STD_LOGIC_VECTOR (2 downto 0));
end top_BC_mod;

architecture Behavioral of top_BC_mod is
component Carry_Look_Ahead 
Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
B : in STD_LOGIC_VECTOR (2 downto 0);
Cin : in STD_LOGIC;
S : out STD_LOGIC_VECTOR (2 downto 0);
Cout : out STD_LOGIC);
end component;
component carry_look_4bit 
Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
B : in STD_LOGIC_VECTOR (3 downto 0);
Cin : in STD_LOGIC;
S : out STD_LOGIC_VECTOR (3 downto 0);
Cout : out STD_LOGIC);
end component;
component mux4 
Port ( s:in std_logic;
a,b : in STD_LOGIC_VECTOR (2 downto 0);
y : out STD_LOGIC_VECTOR (2 downto 0));
end component;
signal carry:STD_LOGIC;
signal i1:STD_LOGIC_VECTOR (2 downto 0);
signal i2,carr:STD_LOGIC_VECTOR (3 downto 0);

begin
u1:Carry_Look_Ahead port map(a,b,'0',i1,carry);
carr <= carry&i1;
u2:carry_look_4bit port map("0001",carr,'0',i2,cout);
u3:MUX4 port map(i2(3),i1,i2(2 downto 0),s);

end Behavioral;

