
-- web comment

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--Local comment

entity Clock_Sync is
    Port ( reset : in STD_LOGIC;
           HCLK : in STD_LOGIC;
           SLCLK : in STD_LOGIC;
           SynCLK : out STD_LOGIC);
     --      reset_serializer: out STD_LOGIC);
end Clock_Sync;

architecture Behavioral of Clock_Sync is
    signal counter : std_logic_vector(1 downto 0);
    signal SynCLK_signal : std_logic;
   -- signal counter_reset : std_logic_vector (2 downto 0);
begin
    --synCLK_signal <= SLCLK when counter="010" else SynCLK_signal;
    SynCLK <= '1' when counter="10" else '0';
    --SynCLK <= SynCLK_signal;
    --reset_serializer <= '1' when counter_reset = "100" else '0'; ---reset to avoid bad readings between bursts
    
    process(HCLK,reset)
    begin
        if(reset = '1') then
            counter <= (others => '0');
        elsif (HCLK'event and HCLK = '1') then
            if( SLCLK = '1') then
                 counter <= counter + '1';
            else 
                counter <= (others => '0');
            end if;
        end if;
    end process;
    
    
    
--    process(HCLK,reset)
--    begin
--        if (reset='1') then
--            counter <= (others => '0');
--        elsif(HCLK'event and HCLK='1') then
--           if(counter = "100" ) then
--               counter <= (others => '0');
--           else
--                counter <= counter + '1';
--            end if;
--        end if;
--    end process;
    
--    process (HCLK, reset)
--    begin
--        if (reset = '1') then
--            counter_reset <= "100";
            
--        elsif (HCLK'event and HCLK = '1') then
--            if(SLCLK = '0') then
--                counter_reset <= counter_reset + '1';
--            else
--                counter_reset <= "000";            
--            end if;
--        end if;
--    end process;
    

end Behavioral;
