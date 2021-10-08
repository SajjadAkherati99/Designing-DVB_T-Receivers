library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_unsigned.ALL;

entity RS_encoder is
	PORT (
			clk : IN STD_LOGIC;
			reset : IN STD_LOGIC;
			din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			dout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		  );
end RS_encoder;

architecture Behavioral of RS_encoder is
	CONSTANT CS : STD_LOGIC := '1';
	CONSTANT RW : STD_LOGIC := '0';
	
	CONSTANT A0 : STD_LOGIC_VECTOR(7 downto 0) := STD_LOGIC_VECTOR(TO_UNSIGNED(136, 8));
	CONSTANT A1 : STD_LOGIC_VECTOR(7 downto 0) := STD_LOGIC_VECTOR(TO_UNSIGNED(240, 8));
	CONSTANT A2 : STD_LOGIC_VECTOR(7 downto 0) := STD_LOGIC_VECTOR(TO_UNSIGNED(208, 8));
	CONSTANT A3 : STD_LOGIC_VECTOR(7 downto 0) := STD_LOGIC_VECTOR(TO_UNSIGNED(195, 8));
	CONSTANT A4 : STD_LOGIC_VECTOR(7 downto 0) := STD_LOGIC_VECTOR(TO_UNSIGNED(181, 8));
	CONSTANT A5 : STD_LOGIC_VECTOR(7 downto 0) := STD_LOGIC_VECTOR(TO_UNSIGNED(158, 8));
	CONSTANT A6 : STD_LOGIC_VECTOR(7 downto 0) := STD_LOGIC_VECTOR(TO_UNSIGNED(201, 8));
	CONSTANT A7 : STD_LOGIC_VECTOR(7 downto 0) := STD_LOGIC_VECTOR(TO_UNSIGNED(100, 8));
	CONSTANT A8 : STD_LOGIC_VECTOR(7 downto 0) := STD_LOGIC_VECTOR(TO_UNSIGNED(11, 8));
	CONSTANT A9 : STD_LOGIC_VECTOR(7 downto 0) := STD_LOGIC_VECTOR(TO_UNSIGNED(83, 8));
	CONSTANT A10 : STD_LOGIC_VECTOR(7 downto 0) := STD_LOGIC_VECTOR(TO_UNSIGNED(167, 8));
	CONSTANT A11 : STD_LOGIC_VECTOR(7 downto 0) := STD_LOGIC_VECTOR(TO_UNSIGNED(107, 8));
	CONSTANT A12 : STD_LOGIC_VECTOR(7 downto 0) := STD_LOGIC_VECTOR(TO_UNSIGNED(113, 8));
	CONSTANT A13 : STD_LOGIC_VECTOR(7 downto 0) := STD_LOGIC_VECTOR(TO_UNSIGNED(110, 8));
	CONSTANT A14 : STD_LOGIC_VECTOR(7 downto 0) := STD_LOGIC_VECTOR(TO_UNSIGNED(106, 8));
	CONSTANT A15 : STD_LOGIC_VECTOR(7 downto 0) := STD_LOGIC_VECTOR(TO_UNSIGNED(121, 8));

	SIGNAL X0, X1, X2, X3, X4, X5, X6, X7, X8, X9, X10
			, X11, X12, X13, X14, X15, X16, X17 : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
			
	SIGNAL Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8, Y9, Y10
			, Y11, Y12, Y13, Y14, Y15, Y16 : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
			
	SIGNAL Z1, Z2, Z3, Z4, Z5, Z6, Z7, Z8, Z9, Z10
			, Z11, Z12, Z13, Z14, Z15 : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
	
	SIGNAL D0, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10
			, D11, D12, D13, D14, D15 : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
			
	SIGNAL temp : STD_LOGIC_VECTOR(8 downto 0) := (others => '0');
			
	COMPONENT RAM IS 
		GENERIC (
			data_width : natural := 8;
			address_width : natural := 8);
		PORT( 
			clk : in  std_logic;
			address : in  std_logic_vector(7 downto 0);
			rw	: in  std_logic;	-- Read / Write
			cs : in  std_logic;	-- Chip Select
			data : inout std_logic_vector(7 downto 0)	
		);
	END COMPONENT;
	
	COMPONENT RAM1
		GENERIC (
			data_width : natural := 8;
			address_width : natural := 8);
		PORT( 
			clk : in  std_logic;
			address0, address1, address2, address3,
			address4, address5, address6, address7,
			address8, address9, address10, address11,
			address12, address13, address14, address15
				: in  std_logic_vector(7 downto 0);
			rw	: in  std_logic;	-- Read / Write
			cs : in  std_logic;	-- Chip Select
			data0 : inout std_logic_vector(7 downto 0);
			data1, data2, data3, data4,
			data5, data6, data7, data8,
			data9, data10, data11, data12,
			data13, data14, data15
				: out  std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
begin
	uut1: RAM1
		GENERIC MAP(8, 8)
		PORT MAP(
				clk => clk,
				rw => RW,
				cs => CS,
				address0 => X0,	address1 => X1,	address2 => X2,	address3 => X3,
				address4 => X4,	address5 => X5,	address6 => X6,	address7 => X7,
				address8 => X8,	address9 => X9,	address10 => X10,	address11 => X11,
				address12 => X12,	address13 => X13,	address14 => X14,	address15 => X15,
				
				data0 => Y0,	data1 => Y1,	data2 => Y2,	data3 => Y3,
				data4 => Y4,	data5 => Y5,	data6 => Y6,	data7 => Y7,
				data8 => Y8,	data9 => Y9,	data10 => Y10,	data11 => Y11,
				data12 => Y12,	data13 => Y13,	data14 => Y14,	data15 => Y15
		);	
	uut: RAM 
		GENERIC MAP(8, 8)
		PORT MAP(
				clk => clk,
				address => X16,
				rw => RW,
				cs => CS,
				data => Y16
		);	
		
	process(clk, reset)
		variable c : STD_LOGIC_VECTOR(7 downto 0):= (others => '0');
		begin
			if reset='0' then
				c := "00000000";
			elsif rising_edge(clk) then
				c := c + 1;
				
				X17 <= X16;
				
				D0 <= Y0;	D1 <= Z1;	D2 <= Z2;	D3 <= Z3;
				D4 <= Z4;	D5 <= Z5;	D6 <= Z6;	D7 <= Z7;
				D8 <= Z8;	D9 <= Z9;
				D10 <= Z10;	D11 <= Z11;
				D12 <= Z12;	D13 <= Z13;
				D14 <= Z14; D15 <= Z15;
				
				if c <= "11101111" then
					dout <= din;
					X16 <= din xor D15;
				else
					X16 <= D15;
					dout <= D15;
				end if;
			end if;
	end process;
	
	process(Y16, x16) begin
		if (X17 = "00000000") then
			X0 <= "00000000";	X1 <= "00000000"; X2 <= "00000000";	X3 <= "00000000";
			X4 <= "00000000";	X5 <= "00000000"; X6 <= "00000000";	X7 <= "00000000";
			X8 <= "00000000";	X9 <= "00000000"; X10 <= "00000000";	X11 <= "00000000";
			X12 <= "00000000";	X13 <= "00000000"; X14 <= "00000000"; x15 <= "00000000";
		else
		
			if ((('0' & Y16) + ('0' & A0) + ("000000001")) > "011111111") then
				x0 <= Y16 + A0 + "00000010";
			else
				x0 <= Y16 + A0 + "00000001";
			end if;
			
			if ((('0' & Y16) + ('0' & A1) + ("000000001")) > "011111111") then
				x1 <= Y16 + A1 + "00000010";
			else
				x1 <= Y16 + A1 + "00000001";
			end if;
			
			if ((('0' & Y16) + ('0' & A2) + ("000000001")) > "011111111") then
				X2 <= Y16 + A2 + "00000010";
			else
				X2 <= Y16 + A2 + "00000001";
			end if;
			
			if ((('0' & Y16) + ('0' & A3) + ("000000001")) > "011111111") then
				X3 <= Y16 + A3 + "00000010";
			else
				X3 <= Y16 + A3 + "00000001";
			end if;
			
			if ((('0' & Y16) + ('0' & A4) + ("000000001")) > "011111111") then
				X4 <= Y16 + A4 + "00000010";
			else
				X4 <= Y16 + A4 + "00000001";
			end if;
			
			if ((('0' & Y16) + ('0' & A5) + ("000000001")) > "011111111") then
				X5 <= Y16 + A5 + "00000010";
			else
				X5 <= Y16 + A5 + "00000001";
			end if;
			
			if ((('0' & Y16) + ('0' & A6) + ("000000001")) > "011111111") then
				X6 <= Y16 + A6 + "00000010";
			else
				X6 <= Y16 + A6 + "00000001";
			end if;
			
			if ((('0' & Y16) + ('0' & A7) + ("000000001")) > "011111111") then
				X7 <= Y16 + A7 + "00000010";
			else
				X7 <= Y16 + A7 + "00000001";
			end if;
			
			if ((('0' & Y16) + ('0' & A8) + ("000000001")) > "011111111") then
				X8 <= Y16 + A8 + "00000010";
			else
				X8 <= Y16 + A8 + "00000001";
			end if;
			
			if ((('0' & Y16) + ('0' & A9) + ("000000001")) > "011111111") then
				X9 <= Y16 + A9 + "00000010";
			else
				X9 <= Y16 + A9 + "00000001";
			end if;
			
			if ((('0' & Y16) + ('0' & A10) + ("000000001")) > "011111111") then
				X10 <= Y16 + A10 + "00000010";
			else
				X10 <= Y16 + A10 + "00000001";
			end if;
			
			if ((('0' & Y16) + ('0' & A11) + ("000000001")) > "011111111") then
				X11 <= Y16 + A11 + "00000010";
			else
				X11 <= Y16 + A11 + "00000001";
			end if;
			
			if ((('0' & Y16) + ('0' & A12) + ("000000001")) > "011111111") then
				X12 <= Y16 + A12 + "00000010";
			else
				X12 <= Y16 + A12 + "00000001";
			end if;
			
			if ((('0' & Y16) + ('0' & A13) + ("000000001")) > "011111111") then
				X13 <= Y16 + A13 + "00000010";
			else
				X13 <= Y16 + A13 + "00000001";
			end if;
			
			if ((('0' & Y16) + ('0' & A14) + ("000000001")) > "011111111") then
				X14 <= Y16 + A14 + "00000010";
			else
				X14 <= Y16 + A14 + "00000001";
			end if;
			
			if ((('0' & Y16) + ('0' & A15) + ("000000001")) > "011111111") then
				X15 <= Y16 + A15 + "00000010";
			else
				X15 <= Y16 + A15 + "00000001";
			end if;
			
		end if;
	end process;

	process (Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8, Y9, Y10, Y11, Y12, Y13, Y14, Y15,
				D0, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, D14)
		begin
				
		Z1 <= Y1 XOR D0;	Z2 <= Y2 XOR D1;	Z3 <= Y3 XOR D2;	Z4 <= Y4 XOR D3;
		Z5 <= Y5 XOR D4;	Z6 <= Y6 XOR D5;	Z7 <= Y7 XOR D6;	Z8 <= Y8 XOR D7;
		Z9 <= Y9 XOR D8;
		Z10 <= Y10 XOR D9;	Z11 <= Y11 XOR D10;	Z12 <= Y12 XOR D11;
		Z13 <= Y13 XOR D12;	Z14 <= Y14 XOR D13;	Z15 <= Y15 XOR D14;	
	end process;

end Behavioral;
