library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.TEXTIO.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Error_Locations is
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
end Error_Locations;

architecture Behavioral of Error_Locations is 
	type vec8_8bit_index_from_zero is array(0 to 7) of std_logic_vector(7 downto 0);
	type memory_array is array(0 to 255) of std_logic_vector(7 downto 0);
		
	impure function initialize_alpha_table return memory_array is
		file text_file : text open read_mode is "alpha.txt";
		variable text_line : line;
		variable ram_content : memory_array;
		begin
			for i in 0 to 255 loop
				readline(text_file, text_line);
				read(text_line, ram_content(i));
			end loop;
		return ram_content;
	end function;
	
	impure function initialize_tuple_table return memory_array is
		file text_file : text open read_mode is "tuple.txt";
		variable text_line : line;
		variable ram_content : memory_array;
		begin
			for i in 0 to 255 loop
				readline(text_file, text_line);
				read(text_line, ram_content(i));
			end loop;
		return ram_content;
	end function;
	
	constant alpha : memory_array := initialize_alpha_table ;
	constant tuple : memory_array := initialize_tuple_table ;
	
	signal ax1 : std_logic_vector(11 downto 0) := (others => '0');
	signal ax2 : std_logic_vector(11 downto 0) := (others => '0');
	signal ax3 : std_logic_vector(11 downto 0) := (others => '0');
	signal ax4 : std_logic_vector(11 downto 0) := (others => '0');
	signal ax5 : std_logic_vector(11 downto 0) := (others => '0');
	signal ax6 : std_logic_vector(11 downto 0) := (others => '0');
	signal ax7 : std_logic_vector(11 downto 0) := (others => '0');
	signal ax8 : std_logic_vector(11 downto 0) := (others => '0');
	
	signal x1a : std_logic_vector(7 downto 0) := (others => '0');
	signal x2a : std_logic_vector(7 downto 0) := (others => '0');
	signal x3a : std_logic_vector(7 downto 0) := (others => '0');
	signal x4a : std_logic_vector(7 downto 0) := (others => '0');
	signal x5a : std_logic_vector(7 downto 0) := (others => '0');
	signal x6a : std_logic_vector(7 downto 0) := (others => '0');
	signal x7a : std_logic_vector(7 downto 0) := (others => '0');
	signal x8a : std_logic_vector(7 downto 0) := (others => '0');
	
	signal L_array : vec8_8bit_index_from_zero := (others =>(others => '0'));
	
	signal alpha_counter : std_logic_vector(7 downto 0) := (others => '0');
	signal i : std_logic_vector(2 downto 0) := (others => '0');
	signal root : std_logic_vector (7 downto 0) := (others => '0');
begin
	process(Clk)
		begin
			if (rising_edge(Clk)) then
				if (Reset = '0') then
					alpha_counter <= x"01";
					ax1 <= (x"0"&Sigma1) + x"001";
					ax2 <= (x"0"&Sigma2) + x"002";
					ax3 <= (x"0"&Sigma3) + x"003";
					ax4 <= (x"0"&Sigma4) + x"004";
					ax5 <= (x"0"&Sigma5) + x"005";
					ax6 <= (x"0"&Sigma6) + x"006";
					ax7 <= (x"0"&Sigma7) + x"007";
					ax8 <= (x"0"&Sigma8) + x"008";
					i <= "000";
				else
					if (root = x"00") then
						L_array(conv_integer(i)) <= alpha_counter;
						i <= i + "001";
					end if;
					
					if(alpha_counter < x"ff") then
						alpha_counter <= alpha_counter + x"01";
					end if;
					
					ax1 <= (x"0"&Sigma1) + (x"0"&alpha_counter);
					ax2 <= (x"0"&Sigma2) + ("000"&alpha_counter&"0");
					ax3 <= (x"0"&Sigma3) + ("000"&alpha_counter&"0") + (x"0"&alpha_counter);
					ax4 <= (x"0"&Sigma4) + ("00"&alpha_counter&"00");
					ax5 <= (x"0"&Sigma5) + ("00"&alpha_counter&"00") + (x"0"&alpha_counter);
					ax6 <= (x"0"&Sigma6) + ("00"&alpha_counter&"00") + ("000"&alpha_counter&"0");
					ax7 <= (x"0"&Sigma7) + ("00"&alpha_counter&"00") + ("000"&alpha_counter&"0") + (x"0"&alpha_counter);
					ax8 <= (x"0"&Sigma8) + ("0"&alpha_counter&"000");
				end if;
			end if;
		end process;
		
		process(ax1)
			begin	
				if (ax1(7 downto 0) > x"ff" - (x"0"&ax1(11 downto 8))) then
					x1a <= ax1(7 downto 0) + (x"0"&ax1(11 downto 8)) + x"01";
				else 
					x1a <= ax1(7 downto 0) + (x"0"&ax1(11 downto 8));
				end if;
			end process;
			
		process(ax2)
			begin	 
				if (ax2(7 downto 0) > x"ff" - (x"0"&ax2(11 downto 8))) then
					x2a <= ax2(7 downto 0) + (x"0"&ax2(11 downto 8)) + x"01";
				else 
					x2a <= ax2(7 downto 0) + (x"0"&ax2(11 downto 8));
				end if;
			end process;
			
		process(ax3)
			begin	
				if (ax3(7 downto 0) > x"ff" - (x"0"&ax3(11 downto 8))) then
					x3a <= ax3(7 downto 0) + (x"0"&ax3(11 downto 8)) + x"01";
				else 
					x3a <= ax3(7 downto 0) + (x"0"&ax3(11 downto 8));
				end if;
			end process;
			
		process(ax4)
			begin	
				if (ax4(7 downto 0) > x"ff" - (x"0"&ax4(11 downto 8))) then
					x4a <= ax4(7 downto 0) + (x"0"&ax4(11 downto 8)) + x"01";
				else 
					x4a <= ax4(7 downto 0) + (x"0"&ax4(11 downto 8));
				end if;
			end process;
			
		process(ax5)
			begin	
				if (ax5(7 downto 0) > x"ff" - (x"0"&ax5(11 downto 8))) then
					x5a <= ax5(7 downto 0) + (x"0"&ax5(11 downto 8)) + x"01";
				else 
					x5a <= ax5(7 downto 0) + (x"0"&ax5(11 downto 8));
				end if;
			end process;
			
		process(ax6)
			begin	
				if (ax6(7 downto 0) > x"ff" - (x"0"&ax6(11 downto 8))) then
					x6a <= ax6(7 downto 0) + (x"0"&ax6(11 downto 8)) + x"01";
				else 
					x6a <= ax6(7 downto 0) + (x"0"&ax6(11 downto 8));
				end if;
			end process;
			
		process(ax7)
			begin	
				if (ax7(7 downto 0) > x"ff" - (x"0"&ax7(11 downto 8))) then
					x7a <= ax7(7 downto 0) + (x"0"&ax7(11 downto 8)) + x"01";
				else 
					x7a <= ax7(7 downto 0) + (x"0"&ax7(11 downto 8));
				end if;
			end process;
			
		process(ax8)
			begin	
				if (ax8(7 downto 0) > x"ff" - (x"0"&ax8(11 downto 8))) then
					x8a <= ax8(7 downto 0) + (x"0"&ax8(11 downto 8)) + x"01";
				else 
					x8a <= ax8(7 downto 0) + (x"0"&ax8(11 downto 8));
				end if;
			end process;
		
			
		root <= tuple(
				conv_integer(
					alpha(conv_integer(x1a)) xor
					alpha(conv_integer(x2a)) xor 
					alpha(conv_integer(x3a)) xor
					alpha(conv_integer(x4a)) xor
					alpha(conv_integer(x5a)) xor 
					alpha(conv_integer(x6a)) xor 
					alpha(conv_integer(x7a)) xor 
					alpha(conv_integer(x8a)) xor 
					x"01"
					)
				);
		
		Location1 <= L_array(0);
		Location2 <= L_array(1);
		Location3 <= L_array(2);
		Location4 <= L_array(3);
		Location5 <= L_array(4);
		Location6 <= L_array(5);
		Location7 <= L_array(6);
		Location8 <= L_array(7);
end Behavioral;
