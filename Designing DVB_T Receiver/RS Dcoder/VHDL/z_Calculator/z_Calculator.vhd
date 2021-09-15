library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use STD.TEXTIO.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;

entity z_Calculator is 
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
end z_Calculator;

architecture Behavioral of z_Calculator is
	
	type vec16_8bit_index_from_one is array(1 to 16) of std_logic_vector(7 downto 0);
	type vec8_8bit_index_from_two is array(2 to 9) of std_logic_vector(7 downto 0);
	type vec9_8bit_index_from_one is array(1 to 9) of std_logic_vector(7 downto 0);
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
	
	signal S : vec16_8bit_index_from_one := (others =>(others => '0'));
	signal Sigma : vec9_8bit_index_from_one := (others =>(others => '0'));
	signal zed : vec8_8bit_index_from_two := (others =>(others => '0'));
	
	signal i : std_logic_vector(3 downto 0) := (others => '0');
	signal k : std_logic_vector(3 downto 0) := (others => '0');
	
begin
	
	
	process (	
				S1,  S2,  S3,  S4,
				S5,  S6,  S7,  S8,
				S9,  S10, S11, S12,
				S13, S14, S15, S16
			)
	begin
		S(1) <= S1;
		S(2) <= S2;
		S(3) <= S3;
		S(4) <= S4;
		S(5) <= S5;
		S(6) <= S6;
		S(7) <= S7;
		S(8) <= S8;
		S(9) <= S9;
		S(10) <= S10;
		S(11) <= S11;
		S(12) <= S12;
		S(13) <= S13;
		S(14) <= S14;
		S(15) <= S15;
		S(16) <= S16;
	end process;
	
	
	process (
				Sigma1,
				Sigma2,
				Sigma3,
				Sigma4,
				Sigma5,
				Sigma6,
				Sigma7,
				Sigma8
			)
	begin
		Sigma(1) <= x"ff";
		Sigma(2) <= Sigma1;
		Sigma(3) <= Sigma2;
		Sigma(4) <= Sigma3;
		Sigma(5) <= Sigma4;
		Sigma(6) <= Sigma5;
		Sigma(7) <= Sigma6;
		Sigma(8) <= Sigma7;
		Sigma(9) <= Sigma8;
	end process;
	
	process(Clk)
		begin
			if (rising_edge(Clk)) then
				if (Reset = '0') then
					zed(2) <= x"00";
					zed(3) <= x"00";
					zed(4) <= x"00";
					zed(5) <= x"00";
					zed(6) <= x"00";
					zed(7) <= x"00";
					zed(8) <= x"00";
					zed(9) <= x"00";
					i <= x"2";
					k <= x"1";
				else
					if(k /= x"a") then
						if ((i-k) < x"1") then
							zed(conv_integer(i)) <= zed(conv_integer(i)) xor alpha(conv_integer(Sigma(conv_integer(k))));
						else
							if ((Sigma(conv_integer(k)) /= x"00") and (alpha(conv_integer(i-k)) /= x"00")) then
								if ((x"ff"-S(conv_integer(i-k))) < Sigma(conv_integer(k))) then
									zed(conv_integer(i)) <= 
										zed(conv_integer(i)) xor
										alpha(
											conv_integer(Sigma(conv_integer(k)) + 
											S(conv_integer(i-k)) + 
											x"01"
											)
										);
								else 
									zed(conv_integer(i)) <= 
										zed(conv_integer(i)) xor
										alpha(
											conv_integer(Sigma(conv_integer(k)) + 
											S(conv_integer(i-k))
											)
										);
								end if;
							end if;
						end if;
					end if;
					
					if (k /= x"a") then
						if (k = i) then
							if(i = x"d") then
								i <= x"9";
								k <= x"a";
							else 
								k <= x"1";
								i <= i + x"1";
							end if;
						else
							k <= k + x"1";
						end if;
					end if;
				end if;
			end if;
		end process;
		
	zed1 <= tuple(conv_integer(zed(2)));
	zed2 <= tuple(conv_integer(zed(3)));
	zed3 <= tuple(conv_integer(zed(4)));
	zed4 <= tuple(conv_integer(zed(5)));
	zed5 <= tuple(conv_integer(zed(6)));
	zed6 <= tuple(conv_integer(zed(7)));
	zed7 <= tuple(conv_integer(zed(8)));
	zed8 <= tuple(conv_integer(zed(9)));
	
end Behavioral;
