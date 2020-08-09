----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:05:02 08/08/2020 
-- Design Name: 
-- Module Name:    top_prop_thermal - Behavioral 
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

Entity top_prop_thermal is
Port (a,b:in std_logic_vector(6 downto 1);
         sum:out std_logic_vector(6 downto 1));
End top_prop_thermal;
architecture behavioural of top_prop_thermal is

Component prop_thermal 
Port (a,b:in std_logic_vector(6 downto 1);
		sel:out std_logic;
		sum0,sum1:out std_logic_vector(6 downto 1));
end Component;

Component prop_mux  
Port (sel:in std_logic;
      Sum0,sum1:in std_logic_vector(6 downto 1);
      Sum:out std_logic_vector(6 downto 1));
End component;

signal sum0,sum1:std_logic_vector(6 downto 1);
signal sel:std_logic;

Begin

u1:prop_thermal port map(a,b,sel,sum0,sum1);
u2:prop_mux  port map(sel,sum0,sum1,sum);

End behavioural;








