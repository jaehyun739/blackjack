----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:39:03 06/05/2018 
-- Design Name: 
-- Module Name:    card_reg - Behavioral 
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

entity card_reg is
	port(input : in STD_LOGIC_VECTOR(5 downto 0);
		  clk, reset, en : in STD_LOGIC;
		  output : out STD_LOGIC_VECTOR(5 downto 0));
end card_reg;

architecture Behavioral of card_reg is

COMPONENT dff
	port(d,clk,reset,en : in STD_LOGIC;
		  q : out STD_LOGIC);
END COMPONENT;

begin
	reg0 : FOR n in 5 downto 0 GENERATE
		reg : dff port map(d=>input(n),
								 clk=>clk,
								 reset=>reset,
								 en=>en,
								 q=>output(n));
	END GENERATE;
end Behavioral;