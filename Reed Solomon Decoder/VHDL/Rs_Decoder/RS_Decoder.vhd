library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use STD.TEXTIO.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;

entity RS_Decoder is 
	port(
		Clk: in std_logic;
		Reset: in std_logic;
		msg_in: in std_logic_vector(7 downto 0);
		msg_out: out std_logic_vector(7 downto 0)
	);
end RS_Decoder;

architecture Behavioral of RS_Decoder is 
	type memory_array is array(0 to 1023) of std_logic_vector(7 downto 0);
	type vec_8_8 is array(0 to 7) of std_logic_vector(7 downto 0);
	
	signal FIFO : memory_array := (others =>(others => '0'));
	signal address : std_logic_vector(9 downto 0) := (others => '0');
	
	signal reset_all : std_logic := '0';
	signal reset_last : std_logic := '0';
	
	signal S1_0 : std_logic_vector(7 downto 0) := (others => '0');
	signal S2_0 : std_logic_vector(7 downto 0) := (others => '0');
	signal S3_0 : std_logic_vector(7 downto 0) := (others => '0');
	signal S4_0 : std_logic_vector(7 downto 0) := (others => '0');
	signal S5_0 : std_logic_vector(7 downto 0) := (others => '0');
	signal S6_0 : std_logic_vector(7 downto 0) := (others => '0');
	signal S7_0 : std_logic_vector(7 downto 0) := (others => '0');
	signal S8_0 : std_logic_vector(7 downto 0) := (others => '0');
	signal S9_0 : std_logic_vector(7 downto 0) := (others => '0');
	signal S10_0 : std_logic_vector(7 downto 0) := (others => '0');
	signal S11_0 : std_logic_vector(7 downto 0) := (others => '0');
	signal S12_0 : std_logic_vector(7 downto 0) := (others => '0');
	signal S13_0 : std_logic_vector(7 downto 0) := (others => '0');
	signal S14_0 : std_logic_vector(7 downto 0) := (others => '0');
	signal S15_0 : std_logic_vector(7 downto 0) := (others => '0');
	signal S16_0 : std_logic_vector(7 downto 0) := (others => '0');
	
	signal S1_1 : std_logic_vector(7 downto 0) := (others => '0');
	signal S2_1 : std_logic_vector(7 downto 0) := (others => '0');
	signal S3_1 : std_logic_vector(7 downto 0) := (others => '0');
	signal S4_1 : std_logic_vector(7 downto 0) := (others => '0');
	signal S5_1 : std_logic_vector(7 downto 0) := (others => '0');
	signal S6_1 : std_logic_vector(7 downto 0) := (others => '0');
	signal S7_1 : std_logic_vector(7 downto 0) := (others => '0');
	signal S8_1 : std_logic_vector(7 downto 0) := (others => '0');
	signal S9_1 : std_logic_vector(7 downto 0) := (others => '0');
	signal S10_1 : std_logic_vector(7 downto 0) := (others => '0');
	signal S11_1 : std_logic_vector(7 downto 0) := (others => '0');
	signal S12_1 : std_logic_vector(7 downto 0) := (others => '0');
	signal S13_1 : std_logic_vector(7 downto 0) := (others => '0');
	signal S14_1 : std_logic_vector(7 downto 0) := (others => '0');
	signal S15_1 : std_logic_vector(7 downto 0) := (others => '0');
	signal S16_1 : std_logic_vector(7 downto 0) := (others => '0');
	
	signal S1_2 : std_logic_vector(7 downto 0) := (others => '0');
	signal S2_2 : std_logic_vector(7 downto 0) := (others => '0');
	signal S3_2 : std_logic_vector(7 downto 0) := (others => '0');
	signal S4_2 : std_logic_vector(7 downto 0) := (others => '0');
	signal S5_2 : std_logic_vector(7 downto 0) := (others => '0');
	signal S6_2 : std_logic_vector(7 downto 0) := (others => '0');
	signal S7_2 : std_logic_vector(7 downto 0) := (others => '0');
	signal S8_2 : std_logic_vector(7 downto 0) := (others => '0');
	signal S9_2 : std_logic_vector(7 downto 0) := (others => '0');
	signal S10_2 : std_logic_vector(7 downto 0) := (others => '0');
	signal S11_2 : std_logic_vector(7 downto 0) := (others => '0');
	signal S12_2 : std_logic_vector(7 downto 0) := (others => '0');
	signal S13_2 : std_logic_vector(7 downto 0) := (others => '0');
	signal S14_2 : std_logic_vector(7 downto 0) := (others => '0');
	signal S15_2 : std_logic_vector(7 downto 0) := (others => '0');
	signal S16_2 : std_logic_vector(7 downto 0) := (others => '0');
	
	signal S1 : std_logic_vector(7 downto 0) := (others => '0');
	signal S2 : std_logic_vector(7 downto 0) := (others => '0');
	signal S3 : std_logic_vector(7 downto 0) := (others => '0');
	signal S4 : std_logic_vector(7 downto 0) := (others => '0');
	signal S5 : std_logic_vector(7 downto 0) := (others => '0');
	signal S6 : std_logic_vector(7 downto 0) := (others => '0');
	signal S7 : std_logic_vector(7 downto 0) := (others => '0');
	signal S8 : std_logic_vector(7 downto 0) := (others => '0');
	signal S9 : std_logic_vector(7 downto 0) := (others => '0');
	signal S10 : std_logic_vector(7 downto 0) := (others => '0');
	signal S11 : std_logic_vector(7 downto 0) := (others => '0');
	signal S12 : std_logic_vector(7 downto 0) := (others => '0');
	signal S13 : std_logic_vector(7 downto 0) := (others => '0');
	signal S14 : std_logic_vector(7 downto 0) := (others => '0');
	signal S15 : std_logic_vector(7 downto 0) := (others => '0');
	signal S16 : std_logic_vector(7 downto 0) := (others => '0');
	
	signal Sigma1 : std_logic_vector(7 downto 0) := (others => '0');
	signal Sigma2 : std_logic_vector(7 downto 0) := (others => '0');
	signal Sigma3 : std_logic_vector(7 downto 0) := (others => '0');
	signal Sigma4 : std_logic_vector(7 downto 0) := (others => '0');
	signal Sigma5 : std_logic_vector(7 downto 0) := (others => '0');
	signal Sigma6 : std_logic_vector(7 downto 0) := (others => '0');
	signal Sigma7 : std_logic_vector(7 downto 0) := (others => '0');
	signal Sigma8 : std_logic_vector(7 downto 0) := (others => '0');
	
	signal Sigma10 : std_logic_vector(7 downto 0) := (others => '0');
	signal Sigma20 : std_logic_vector(7 downto 0) := (others => '0');
	signal Sigma30 : std_logic_vector(7 downto 0) := (others => '0');
	signal Sigma40 : std_logic_vector(7 downto 0) := (others => '0');
	signal Sigma50 : std_logic_vector(7 downto 0) := (others => '0');
	signal Sigma60 : std_logic_vector(7 downto 0) := (others => '0');
	signal Sigma70 : std_logic_vector(7 downto 0) := (others => '0');
	signal Sigma80 : std_logic_vector(7 downto 0) := (others => '0');
	
	signal Sigma11 : std_logic_vector(7 downto 0) := (others => '0');
	signal Sigma21 : std_logic_vector(7 downto 0) := (others => '0');
	signal Sigma31 : std_logic_vector(7 downto 0) := (others => '0');
	signal Sigma41 : std_logic_vector(7 downto 0) := (others => '0');
	signal Sigma51 : std_logic_vector(7 downto 0) := (others => '0');
	signal Sigma61 : std_logic_vector(7 downto 0) := (others => '0');
	signal Sigma71 : std_logic_vector(7 downto 0) := (others => '0');
	signal Sigma81 : std_logic_vector(7 downto 0) := (others => '0');
	
	signal zed1 : std_logic_vector(7 downto 0) := (others => '0');
	signal zed2 : std_logic_vector(7 downto 0) := (others => '0');
	signal zed3 : std_logic_vector(7 downto 0) := (others => '0');
	signal zed4 : std_logic_vector(7 downto 0) := (others => '0');
	signal zed5 : std_logic_vector(7 downto 0) := (others => '0');
	signal zed6 : std_logic_vector(7 downto 0) := (others => '0');
	signal zed7 : std_logic_vector(7 downto 0) := (others => '0');
	signal zed8 : std_logic_vector(7 downto 0) := (others => '0');
	
	signal loc1 : std_logic_vector(7 downto 0) := (others => '0');
	signal loc2 : std_logic_vector(7 downto 0) := (others => '0');
	signal loc3 : std_logic_vector(7 downto 0) := (others => '0');
	signal loc4 : std_logic_vector(7 downto 0) := (others => '0');
	signal loc5 : std_logic_vector(7 downto 0) := (others => '0');
	signal loc6 : std_logic_vector(7 downto 0) := (others => '0');
	signal loc7 : std_logic_vector(7 downto 0) := (others => '0');
	signal loc8 : std_logic_vector(7 downto 0) := (others => '0');
	
	signal loc11 : std_logic_vector(7 downto 0) := (others => '0');
	signal loc21 : std_logic_vector(7 downto 0) := (others => '0');
	signal loc31 : std_logic_vector(7 downto 0) := (others => '0');
	signal loc41 : std_logic_vector(7 downto 0) := (others => '0');
	signal loc51 : std_logic_vector(7 downto 0) := (others => '0');
	signal loc61 : std_logic_vector(7 downto 0) := (others => '0');
	signal loc71 : std_logic_vector(7 downto 0) := (others => '0');
	signal loc81 : std_logic_vector(7 downto 0) := (others => '0');
	
	signal em0 : std_logic_vector(7 downto 0) := (others => '0');
	signal em1 : std_logic_vector(7 downto 0) := (others => '0');
	signal em2 : std_logic_vector(7 downto 0) := (others => '0');
	signal em3 : std_logic_vector(7 downto 0) := (others => '0');
	signal em4 : std_logic_vector(7 downto 0) := (others => '0');
	signal em5 : std_logic_vector(7 downto 0) := (others => '0');
	signal em6 : std_logic_vector(7 downto 0) := (others => '0');
	signal em7 : std_logic_vector(7 downto 0) := (others => '0');
	
	signal em : vec_8_8 := (others =>(others => '0'));
	signal el : vec_8_8 := (others =>(others => '0'));
	
	signal i : std_logic_vector(2 downto 0) := (others => '0');
	
	component Syndrom
		port(
			Clk: in std_logic;
			Reset: in std_logic;
			Msg_Rsv: in std_logic_vector(7 downto 0);
			S1: out std_logic_vector(7 downto 0);
			S2: out std_logic_vector(7 downto 0);
			S3: out std_logic_vector(7 downto 0);
			S4: out std_logic_vector(7 downto 0);
			S5: out std_logic_vector(7 downto 0);
			S6: out std_logic_vector(7 downto 0);
			S7: out std_logic_vector(7 downto 0);
			S8: out std_logic_vector(7 downto 0);
			S9: out std_logic_vector(7 downto 0);
			S10: out std_logic_vector(7 downto 0);
			S11: out std_logic_vector(7 downto 0);
			S12: out std_logic_vector(7 downto 0);
			S13: out std_logic_vector(7 downto 0);
			S14: out std_logic_vector(7 downto 0);
			S15: out std_logic_vector(7 downto 0);
			S16: out std_logic_vector(7 downto 0)
		);
	end component;
	
	component Error_Locator_Calculator
		port(
			Clk: in std_logic;
			Reset: in std_logic;
			S1: in std_logic_vector(7 downto 0);
			S2: in std_logic_vector(7 downto 0);
			S3: in std_logic_vector(7 downto 0);
			S4: in std_logic_vector(7 downto 0);
			S5: in std_logic_vector(7 downto 0);
			S6: in std_logic_vector(7 downto 0);
			S7: in std_logic_vector(7 downto 0);
			S8: in std_logic_vector(7 downto 0);
			S9: in std_logic_vector(7 downto 0);
			S10: in std_logic_vector(7 downto 0);
			S11: in std_logic_vector(7 downto 0);
			S12: in std_logic_vector(7 downto 0);
			S13: in std_logic_vector(7 downto 0);
			S14: in std_logic_vector(7 downto 0);
			S15: in std_logic_vector(7 downto 0);
			S16: in std_logic_vector(7 downto 0);
			Sigma1: out std_logic_vector(7 downto 0);
			Sigma2: out std_logic_vector(7 downto 0);
			Sigma3: out std_logic_vector(7 downto 0);
			Sigma4: out std_logic_vector(7 downto 0);
			Sigma5: out std_logic_vector(7 downto 0);
			Sigma6: out std_logic_vector(7 downto 0);
			Sigma7: out std_logic_vector(7 downto 0);
			Sigma8: out std_logic_vector(7 downto 0)
		);
	end component;
	
	component Error_Locations is
		port(
			Clk: in std_logic;
			Reset: in std_logic;
			
			Sigma1: in std_logic_vector(7 downto 0);
			Sigma2: in std_logic_vector(7 downto 0);
			Sigma3: in std_logic_vector(7 downto 0);
			Sigma4: in std_logic_vector(7 downto 0);
			Sigma5: in std_logic_vector(7 downto 0);
			Sigma6: in std_logic_vector(7 downto 0);
			Sigma7: in std_logic_vector(7 downto 0);
			Sigma8: in std_logic_vector(7 downto 0);
			
			Location1 : out std_logic_vector(7 downto 0);
			Location2 : out std_logic_vector(7 downto 0);
			Location3 : out std_logic_vector(7 downto 0);
			Location4 : out std_logic_vector(7 downto 0);
			Location5 : out std_logic_vector(7 downto 0);
			Location6 : out std_logic_vector(7 downto 0);
			Location7 : out std_logic_vector(7 downto 0);
			Location8 : out std_logic_vector(7 downto 0)
		);
	end component;
	
	component z_Calculator is 
		port(
			Clk: in std_logic;
			Reset: in std_logic;
			
			Sigma1: in std_logic_vector(7 downto 0);
			Sigma2: in std_logic_vector(7 downto 0);
			Sigma3: in std_logic_vector(7 downto 0);
			Sigma4: in std_logic_vector(7 downto 0);
			Sigma5: in std_logic_vector(7 downto 0);
			Sigma6: in std_logic_vector(7 downto 0);
			Sigma7: in std_logic_vector(7 downto 0);
			Sigma8: in std_logic_vector(7 downto 0);
			
			S1: in std_logic_vector(7 downto 0);
			S2: in std_logic_vector(7 downto 0);
			S3: in std_logic_vector(7 downto 0);
			S4: in std_logic_vector(7 downto 0);
			S5: in std_logic_vector(7 downto 0);
			S6: in std_logic_vector(7 downto 0);
			S7: in std_logic_vector(7 downto 0);
			S8: in std_logic_vector(7 downto 0);
			S9: in std_logic_vector(7 downto 0);
			S10: in std_logic_vector(7 downto 0);
			S11: in std_logic_vector(7 downto 0);
			S12: in std_logic_vector(7 downto 0);
			S13: in std_logic_vector(7 downto 0);
			S14: in std_logic_vector(7 downto 0);
			S15: in std_logic_vector(7 downto 0);
			S16: in std_logic_vector(7 downto 0);
			
			zed1: out std_logic_vector(7 downto 0);
			zed2: out std_logic_vector(7 downto 0);
			zed3: out std_logic_vector(7 downto 0);
			zed4: out std_logic_vector(7 downto 0);
			zed5: out std_logic_vector(7 downto 0);
			zed6: out std_logic_vector(7 downto 0);
			zed7: out std_logic_vector(7 downto 0);
			zed8: out std_logic_vector(7 downto 0)
		);
	end component;
	
	component error_Magnitude is 
		port(
			Clk: in std_logic;
			Reset: in std_logic;
			
			el1: in std_logic_vector(7 downto 0);
			el2: in std_logic_vector(7 downto 0);
			el3: in std_logic_vector(7 downto 0);
			el4: in std_logic_vector(7 downto 0);
			el5: in std_logic_vector(7 downto 0);
			el6: in std_logic_vector(7 downto 0);
			el7: in std_logic_vector(7 downto 0);
			el8: in std_logic_vector(7 downto 0);
			
			zed1: in std_logic_vector(7 downto 0);
			zed2: in std_logic_vector(7 downto 0);
			zed3: in std_logic_vector(7 downto 0);
			zed4: in std_logic_vector(7 downto 0);
			zed5: in std_logic_vector(7 downto 0);
			zed6: in std_logic_vector(7 downto 0);
			zed7: in std_logic_vector(7 downto 0);
			zed8: in std_logic_vector(7 downto 0);
			
			em1: out std_logic_vector(7 downto 0);
			em2: out std_logic_vector(7 downto 0);
			em3: out std_logic_vector(7 downto 0);
			em4: out std_logic_vector(7 downto 0);
			em5: out std_logic_vector(7 downto 0);
			em6: out std_logic_vector(7 downto 0);
			em7: out std_logic_vector(7 downto 0);
			em8: out std_logic_vector(7 downto 0)
		);
	end component;
	
begin
	Caculate_Syndroms : Syndrom
		port map (
			Clk => Clk,
			Reset => reset_all,
			Msg_Rsv => msg_in,
			S1 => S1_0,
			S2 => S2_0,
			S3 => S3_0,
			S4 => S4_0,
			S5 => S5_0,
			S6 => S6_0,
			S7 => S7_0,
			S8 => S8_0,
			S9 => S9_0,
			S10 => S10_0,
			S11 => S11_0,
			S12 => S12_0,
			S13 => S13_0,
			S14 => S14_0,
			S15 => S15_0,
			S16 => S16_0
		);
	
	Calculate_Sigma_X : Error_Locator_Calculator
		port map (
			Clk => Clk,
			Reset => reset_all,
			S1 => S1,
			S2 => S2,
			S3 => S3,
			S4 => S4,
			S5 => S5,
			S6 => S6,
			S7 => S7,
			S8 => S8,
			S9 => S9,
			S10 => S10,
			S11 => S11,
			S12 => S12,
			S13 => S13,
			S14 => S14,
			S15 => S15,
			S16 => S16,
			Sigma1 => Sigma1,
			Sigma2 => Sigma2,
			Sigma3 => Sigma3,
			Sigma4 => Sigma4,
			Sigma5 => Sigma5,
			Sigma6 => Sigma6,
			Sigma7 => Sigma7,
			Sigma8 => Sigma8
		);
		
	The_Error_Loactions : Error_Locations
		port map(
			Clk => Clk,
			Reset => reset_all,
			
			Sigma1 => Sigma10,
			Sigma2 => Sigma20,
			Sigma3 => Sigma30,
			Sigma4 => Sigma40,
			Sigma5 => Sigma50,
			Sigma6 => Sigma60,
			Sigma7 => Sigma70,
			Sigma8 => Sigma80,
			
			Location1 => loc1,
			Location2 => loc2,
			Location3 => loc3,
			Location4 => loc4,
			Location5 => loc5,
			Location6 => loc6,
			Location7 => loc7,
			Location8 => loc8
		);
		
	z_x : z_Calculator
		port map(
			Clk => Clk,
			Reset => reset_all,
			
			S1 => S1_2,
			S2 => S2_2,
			S3 => S3_2,
			S4 => S4_2,
			S5 => S5_2,
			S6 => S6_2,
			S7 => S7_2,
			S8 => S8_2,
			S9 => S9_2,
			S10 => S10_2,
			S11 => S11_2,
			S12 => S12_2,
			S13 => S13_2,
			S14 => S14_2,
			S15 => S15_2,
			S16 => S16_2,
			
			Sigma1 => Sigma11,
			Sigma2 => Sigma21,
			Sigma3 => Sigma31,
			Sigma4 => Sigma41,
			Sigma5 => Sigma51,
			Sigma6 => Sigma61,
			Sigma7 => Sigma71,
			Sigma8 => Sigma81,
			
			zed1 => zed1,			
			zed2 => zed2,			
			zed3 => zed3,			
			zed4 => zed4,			
			zed5 => zed5,			
			zed6 => zed6,			
			zed7 => zed7,			
			zed8 => zed8
		);
		
	The_Error_Magnitude : error_Magnitude
		port map(
			Clk => Clk,
			Reset => reset_last,
			
			el1 => loc81,
			el2 => loc71,
			el3 => loc61,
			el4 => loc51,
			el5 => loc41,
			el6 => loc31,
			el7 => loc21,
			el8 => loc11,
			
			zed1 => zed1,			
			zed2 => zed2,			
			zed3 => zed3,			
			zed4 => zed4,			
			zed5 => zed5,			
			zed6 => zed6,			
			zed7 => zed7,			
			zed8 => zed8,
			
			em1 => em7,
			em2 => em6,
			em3 => em5,
			em4 => em4,
			em5 => em3,
			em6 => em2,
			em7 => em1,
			em8 => em0
		);
	
	process(Clk)
		begin
			if (rising_edge(Clk)) then
				if (Reset = '0') then
					address <= "0000000000";
					i <= "000";
					reset_all <= '0';
				else
					FIFO(conv_integer(address)) <= msg_in;
				
					if ((address(7 downto 0) + x"01") = el(conv_integer(i))) then
						msg_out <= FIFO(conv_integer(address)) xor em(conv_integer(i));
						i <= i + "001";
					else
						msg_out <= FIFO(conv_integer(address));
					end if;
					
					if (address(7 downto 0) = x"fe") then
						address <= address + "0000000010";
						reset_all <= '0';
						i <= "000";
					else
						address <= address + "0000000001";
						reset_all <= '1';
					end if;
					
					if(address(7 downto 0) = x"2d") then
						reset_last <= '0';
					else
						reset_last <= '1';
					end if;
				
				end if;
				
			end if;
		end process;
		
	
	process(Clk)
		begin
			if (rising_edge(Clk)) then
				if((Reset = '1') and (address(7 downto 0) = x"00")) then
					S1 <= S1_0;
					S2 <= S2_0;
					S3 <= S3_0;
					S4 <= S4_0;
					S5 <= S5_0;	
					S6 <= S6_0;
					S7 <= S7_0;	
					S8 <= S8_0;
					S9 <= S9_0;	
					S10 <= S10_0;
					S11 <= S11_0;
					S12 <= S12_0;
					S13 <= S13_0;
					S14 <= S14_0;
					S15 <= S15_0;
					S16 <= S16_0;
					
					S1_1 <= S1;
					S2_1 <= S2;
					S3_1 <= S3;
					S4_1 <= S4;
					S5_1 <= S5;	
					S6_1 <= S6;	
					S7_1 <= S7;	
					S8_1 <= S8;
					S9_1 <= S9;	
					S10_1 <= S10;
					S11_1 <= S11;	
					S12_1 <= S12;
					S13_1 <= S13;
					S14_1 <= S14;	
					S15_1 <= S15;	
					S16_1 <= S16;
					
					S1_2 <= S1_1;	
					S2_2 <= S2_1;	
					S3_2 <= S3_1;	
					S4_2 <= S4_1;
					S5_2 <= S5_1;	
					S6_2 <= S6_1;	
					S7_2 <= S7_1;	
					S8_2 <= S8_1;
					S9_2 <= S9_1;	
					S10_2 <= S10_1;	
					S11_2 <= S11_1;		
					S12_2 <= S12_1;
					S13_2 <= S13_1;	
					S14_2 <= S14_1;	
					S15_2 <= S15_1;		
					S16_2 <= S16_1;
				end if;
			end if;
		end process;
	
	process (Clk) 
		begin
			if (rising_edge(Clk)) then
				if((Reset = '1') and (address(7 downto 0) = x"00")) then
					Sigma10 <= Sigma1;
					Sigma20 <= Sigma2;	
					Sigma30 <= Sigma3;	
					Sigma40 <= Sigma4;
					Sigma50 <= Sigma5;	
					Sigma60 <= Sigma6;	
					Sigma70 <= Sigma7;	
					Sigma80 <= Sigma8;
					
					Sigma11 <= Sigma10;	
					Sigma21 <= Sigma20;	
					Sigma31 <= Sigma30;	
					Sigma41 <= Sigma40;
					Sigma51 <= Sigma50;
					Sigma61 <= Sigma60;	
					Sigma71 <= Sigma70;	
					Sigma81 <= Sigma80;
				end if;
			end if;
		end process;
		
	process (Clk) 
		begin
			if (rising_edge(Clk)) then
				if((Reset = '1') and (address(7 downto 0) = x"00")) then
					loc11 <= loc1 - x"01";
					loc21 <= loc2 - x"01";
					loc31 <= loc3 - x"01";
					loc41 <= loc4 - x"01";
					loc51 <= loc5 - x"01";
					loc61 <= loc6 - x"01";	
					loc71 <= loc7 - x"01";
					loc81 <= loc8 - x"01";
					
					el(0) <= loc11;	
					el(1) <= loc21;
					el(2) <= loc31;	
					el(3) <= loc41;
					el(4) <= loc51;	
					el(5) <= loc61;
					el(6) <= loc71;	
					el(7) <= loc81;
				end if;
			end if;
		end process;
	
	process (Clk) 
		begin
			if (rising_edge(Clk)) then
				if((Reset = '1') and (address(7 downto 0) = x"00")) then
					em(0) <= em0;
					em(1) <= em1;	
					em(2) <= em2;	
					em(3) <= em3;
					em(4) <= em4;	
					em(5) <= em5;	
					em(6) <= em6;	
					em(7) <= em7;
				end if;
			end if;
		end process;
end Behavioral;
