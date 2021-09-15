library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use STD.TEXTIO.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;

entity Syndrom is
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
end Syndrom;

architecture Behavioral of Syndrom is
	type vec16_8bit is array(1 to 16) of std_logic_vector(7 downto 0);
	signal S : vec16_8bit;
	constant trh : vec16_8bit := (x"fe", x"fd", x"fc", x"fb",
										  x"fa", x"f9", x"f8", x"f7",
										  x"f6", x"f5", x"f4", x"f3",
										  x"f2", x"f1", x"f0", x"ef");
begin

CLACULATE_SYNDROM_VALUES:
   for i in 1 to 16 generate
		process(Clk)
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
			
		begin
			if (rising_edge(Clk)) then
				if (Reset = '0') then
					S(i) <= tuple(conv_integer(Msg_Rsv));
				else
					if (S(i) = x"00") then
						S(i) <= tuple(conv_integer(Msg_Rsv));
					else
						if(S(i) > trh(i)) then
							S(i) <= tuple(conv_integer(alpha(conv_integer(S(i) + i + 1)) xor Msg_Rsv));
						else
							S(i) <= tuple(conv_integer(alpha(conv_integer(S(i) + i)) xor Msg_Rsv));
						end if;
					end if;
				end if;
			end if;
		
		end process;
	end generate;
	
	S1 <= S(1);
	S2 <= S(2);
	S3 <= S(3);
	S4 <= S(4);
	S5 <= S(5);
	S6 <= S(6);
	S7 <= S(7);
	S8 <= S(8);
	S9 <= S(9);
	S10 <= S(10);
	S11 <= S(11);
	S12 <= S(12);
	S13 <= S(13);
	S14 <= S(14);
	S15 <= S(15);
	S16 <= S(16);
	
end Behavioral;

