----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.10.2016 10:05:58
-- Design Name: 
-- Module Name: StrobeGenerator - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity StrobeGenerator is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           enable,data : in STD_LOGIC;
           Strobe : out STD_LOGIC);
end StrobeGenerator;

architecture Behavioral of StrobeGenerator is
--signal strobe_signal: std_logic := '0';
begin
	Strobe	<= clk xor data when enable='1' else '0';	
--proc_Strobe: process(clk,rst)
--	begin
--		if(rst='1') then
--            Strobe_signal <= '0';
--        elsif(clk'event and clk='1') then
--            if (enable='1') then
--                strobe_signal <= clk xor data;
--            else
--                strobe_signal <= '0';
--            end if;
--        end if;
--    end process;
    

end Behavioral;
