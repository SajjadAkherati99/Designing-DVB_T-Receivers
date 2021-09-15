library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use STD.TEXTIO.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;

entity error_Magnitude is 
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
end error_Magnitude;

architecture Behavioral of error_Magnitude is
	type vec8_8bit_index_from_two is array(1 to 8) of std_logic_vector(7 downto 0);
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
	
	signal zed : vec9_8bit_index_from_one := (others =>(others => '0'));
	signal el : vec8_8bit_index_from_two := (others =>(others => '0'));
	signal num : vec8_8bit_index_from_two := (others =>(others => '0'));
	signal denum : vec8_8bit_index_from_two := (others =>(others => '0'));
	
	signal i : std_logic_vector(3 downto 0) := (others => '0');
	signal j: std_logic_vector(3 downto 0) := (others => '0');
	signal ready: std_logic := '0';
begin

	zed(1) <= x"ff";
	zed(2) <= zed1;
	zed(3) <= zed2;
	zed(4) <= zed3;
	zed(5) <= zed4;
	zed(6) <= zed5;
	zed(7) <= zed6;
	zed(8) <= zed7;
	zed(9) <= zed8;
	
	el(1) <= el1;
	el(2) <= el2;
	el(3) <= el3;
	el(4) <= el4;
	el(5) <= el5;
	el(6) <= el6;
	el(7) <= el7;
	el(8) <= el8;
	
	process(Clk)
		begin
			if (rising_edge(Clk)) then
				if (Reset = '0') then
					ready <= '0';
					i <= x"1";
					j <= x"1";
				else
					if (i <= x"7") then
						i <= i + x"1";
					else
						if (j <= x"7") then
							i <= x"1";
							j <= j + x"1";
						else
							ready <= '1';
						end if;
					end if;
				end if;
			end if;
		end process;
	
	process(Clk)
		begin
			if (rising_edge(Clk)) then
				if (Reset = '0') then
					denum(1) <= x"ff";
					denum(2) <= x"ff";
					denum(3) <= x"ff";
					denum(4) <= x"ff";
					denum(5) <= x"ff";
					denum(6) <= x"ff";
					denum(7) <= x"ff";
					denum(8) <= x"ff";
					
					num(1) <= zed(9);
					num(2) <= zed(9);
					num(3) <= zed(9);
					num(4) <= zed(9);
					num(5) <= zed(9);
					num(6) <= zed(9);
					num(7) <= zed(9);
					num(8) <= zed(9);
				else
					if (i /= j) then
						if (el(conv_integer(j)) > el(conv_integer(i))) then
							if (denum(conv_integer(j)) > (x"ff" - tuple(conv_integer(alpha(conv_integer(el(conv_integer(j))-el(conv_integer(i)))) xor x"01")))) then
								denum(conv_integer(j)) <=
								denum(conv_integer(j)) + tuple(conv_integer(alpha(conv_integer(el(conv_integer(j))-el(conv_integer(i)))) xor x"01")) + x"01";
							else
								denum(conv_integer(j))  <=
								denum(conv_integer(j)) + tuple(conv_integer(alpha(conv_integer(el(conv_integer(j))-el(conv_integer(i)))) xor x"01"));
							end if;
						else
							if (denum(conv_integer(j)) > (x"ff" - tuple(conv_integer(alpha(conv_integer(x"ff" - (el(conv_integer(i))-el(conv_integer(j))))) xor x"01")))) then
								denum(conv_integer(j))  <=
								denum(conv_integer(j)) + tuple(conv_integer(alpha(conv_integer(x"ff" - (el(conv_integer(i))-el(conv_integer(j))))) xor x"01")) + x"01";
							else
								denum(conv_integer(j))  <=
								denum(conv_integer(j)) + tuple(conv_integer(alpha(conv_integer(x"ff" - (el(conv_integer(i))-el(conv_integer(j))))) xor x"01"));
							end if;
						end if;
					end if;
					
					if (ready = '0') then
						if (el(conv_integer(j)) > (x"ff"-num(conv_integer(j)))) then
							num(conv_integer(j)) <= 
								tuple(conv_integer(alpha(conv_integer(zed(conv_integer(x"9"-i)))) xor (alpha(conv_integer(el(conv_integer(j))+num(conv_integer(j))+x"01")))));
						else
							num(conv_integer(j)) <= 
								tuple(conv_integer(alpha(conv_integer(zed(conv_integer(x"9"-i)))) xor (alpha(conv_integer(el(conv_integer(j))+num(conv_integer(j)))))));
						end if;
					end if;
				end if;
			end if;
		end process;
		
		process(num, denum)
			begin
				if (num(1) > denum(1)) then
					em1 <= alpha(conv_integer(num(1)-denum(1)));
				else
					em1 <= alpha(conv_integer(num(1)+ not(denum(1))));
				end if;
				
				if (num(2) > denum(2)) then
					em2 <= alpha(conv_integer(num(2)-denum(2)));
				else
					em2 <= alpha(conv_integer(num(2)+ not(denum(2))));
				end if;
				
				if (num(3) > denum(3)) then
					em3 <= alpha(conv_integer(num(3)-denum(3)));
				else
					em3 <= alpha(conv_integer(num(3)+ not(denum(3))));
				end if;
				
				if (num(4) > denum(4)) then
					em4 <= alpha(conv_integer(num(4)-denum(4)));
				else
					em4 <= alpha(conv_integer(num(4)+ not(denum(4))));
				end if;
				
				if (num(5) > denum(5)) then
					em5 <= alpha(conv_integer(num(5)-denum(5)));
				else
					em5 <= alpha(conv_integer(num(5)+ not(denum(5))));
				end if;
				
				if (num(6) > denum(6)) then
					em6 <= alpha(conv_integer(num(6)-denum(6)));
				else
					em6 <= alpha(conv_integer(num(6)+ not(denum(6))));
				end if;
				
				if (num(7) > denum(7)) then
					em7 <= alpha(conv_integer(num(7)-denum(7)));
				else
					em7 <= alpha(conv_integer(num(7)+ not(denum(7))));
				end if;
				
				if (num(8) > denum(8)) then
					em8 <= alpha(conv_integer(num(8)-denum(8)));
				else
					em8 <= alpha(conv_integer(num(8)+ not(denum(8))));
				end if;
			end process;
	
end Behavioral;
