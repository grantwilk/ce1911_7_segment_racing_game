
library ieee;
use ieee.std_logic_1164.all;


entity RACE is
	port(
		--INPUTS
		CLK:   in std_logic;
		RST:   in std_logic;
		A_LOW: in std_logic;
		
		--OUTPUTS
		SEG7:  out std_logic_vector(47 downto 0)
	);
end entity;


architecture BEHAVIORAL of RACE is

	-- PIN ASSIGNMENTS
	attribute CHIP_PIN: string;
	attribute CHIP_PIN of CLK:	 	signal is "P11";
	attribute CHIP_PIN of RST:  	signal is "B8";
	attribute CHIP_PIN of A_LOW:	signal is "A7";
	
	attribute CHIP_PIN of SEG7:	signal is "L19, N20, N19, M20, N18, L18, K20, J20, F17, F20, F19, H19, J18, E19, E20, F18, D22, E17, D19, C20, C19, E21, E22, F21, A19, B22, C22, B21, A21, B19, A20, B20, A16, B17, A18, A17, B16, E18, D18, C18, D15, C17, D17, E16, C16, C15, E15, C14";
	
	-- STATES
	-- P1 START SCREEN
	constant SSP1_P1:		std_logic_vector(7 downto 0) := X"00";
	constant SSP1_PRESS:	std_logic_vector(7 downto 0) := X"01";
	constant SSP1_A_TO:	std_logic_vector(7 downto 0) := X"02";
	constant SSP1_RACE:	std_logic_vector(7 downto 0) := X"03";
	
	-- P1 GAME
	constant P1_P1:		std_logic_vector(7 downto 0) := X"04";
	constant P1_3:			std_logic_vector(7 downto 0) := X"05";
	constant P1_2:			std_logic_vector(7 downto 0) := X"06";
	constant P1_1:			std_logic_vector(7 downto 0) := X"07";
	constant P1_GO:		std_logic_vector(7 downto 0) := X"08";
	
	constant P1_FALSE:	std_logic_vector(7 downto 0) := X"09";
	constant P1_START:	std_logic_vector(7 downto 0) := X"0A";

	constant P1_R00:		std_logic_vector(7 downto 0) := X"0B";
	constant P1_R01:		std_logic_vector(7 downto 0) := X"0C";
	constant P1_R02:		std_logic_vector(7 downto 0) := X"0D";
	constant P1_R03:		std_logic_vector(7 downto 0) := X"0E";
	constant P1_R04:		std_logic_vector(7 downto 0) := X"0F";
	constant P1_R05:		std_logic_vector(7 downto 0) := X"10";
	constant P1_R06:		std_logic_vector(7 downto 0) := X"11";
	constant P1_R07:		std_logic_vector(7 downto 0) := X"12";
	constant P1_R08:		std_logic_vector(7 downto 0) := X"13";
	constant P1_R09:		std_logic_vector(7 downto 0) := X"14";
	constant P1_R10:		std_logic_vector(7 downto 0) := X"15";
	constant P1_R11:		std_logic_vector(7 downto 0) := X"16";
	constant P1_R12:		std_logic_vector(7 downto 0) := X"17";
	constant P1_R13:		std_logic_vector(7 downto 0) := X"18";
	constant P1_R14:		std_logic_vector(7 downto 0) := X"19";
	constant P1_R15:		std_logic_vector(7 downto 0) := X"1A";
	constant P1_R16:		std_logic_vector(7 downto 0) := X"1B";
	
	-- P2 START SCREEN
	constant SSP2_P2:		std_logic_vector(7 downto 0) := X"1C";
	constant SSP2_PRESS:	std_logic_vector(7 downto 0) := X"1D";
	constant SSP2_A_TO:	std_logic_vector(7 downto 0) := X"1E";
	constant SSP2_RACE:	std_logic_vector(7 downto 0) := X"1F";
	
	-- P2 GAME
	constant P2_P2:		std_logic_vector(7 downto 0) := X"20";
	constant P2_3:			std_logic_vector(7 downto 0) := X"21";
	constant P2_2:			std_logic_vector(7 downto 0) := X"22";
	constant P2_1:			std_logic_vector(7 downto 0) := X"23";
	constant P2_GO:		std_logic_vector(7 downto 0) := X"24";
	
	constant P2_FALSE:	std_logic_vector(7 downto 0) := X"25";
	constant P2_START:	std_logic_vector(7 downto 0) := X"26";
	
	constant P2_R00:		std_logic_vector(7 downto 0) := X"27";
	constant P2_R01:		std_logic_vector(7 downto 0) := X"28";
	constant P2_R02:		std_logic_vector(7 downto 0) := X"29";
	constant P2_R03:		std_logic_vector(7 downto 0) := X"2A";
	constant P2_R04:		std_logic_vector(7 downto 0) := X"2B";
	constant P2_R05:		std_logic_vector(7 downto 0) := X"2C";
	constant P2_R06:		std_logic_vector(7 downto 0) := X"2D";
	constant P2_R07:		std_logic_vector(7 downto 0) := X"2E";
	constant P2_R08:		std_logic_vector(7 downto 0) := X"2F";
	constant P2_R09:		std_logic_vector(7 downto 0) := X"30";
	constant P2_R10:		std_logic_vector(7 downto 0) := X"31";
	constant P2_R11:		std_logic_vector(7 downto 0) := X"32";
	constant P2_R12:		std_logic_vector(7 downto 0) := X"33";
	constant P2_R13:		std_logic_vector(7 downto 0) := X"34";
	constant P2_R14:		std_logic_vector(7 downto 0) := X"35";
	constant P2_R15:		std_logic_vector(7 downto 0) := X"36";
	constant P2_R16:		std_logic_vector(7 downto 0) := X"37";
	
	-- GAME RESULTS
	constant GRP1_P1:		std_logic_vector(7 downto 0) := X"38";
	constant GRP1_WINS:	std_logic_vector(7 downto 0) := X"39";
	
	constant GRP2_P2:		std_logic_vector(7 downto 0) := X"3A";
	constant GRP2_WINS:	std_logic_vector(7 downto 0) := X"3B";
	
	
	-- 7 SEG FONT
	-- NUMERALS
	constant F1:	std_logic_vector(7 downto 0) := X"F9";
	constant F2:	std_logic_vector(7 downto 0) := X"A4";
	constant F3:	std_logic_vector(7 downto 0) := X"B0";
	
	-- LETTERS
	constant FA:	std_logic_vector(7 downto 0) := X"88";
	constant FC:	std_logic_vector(7 downto 0) := X"A7";
	constant FE:	std_logic_vector(7 downto 0) := X"86";
	constant FF:	std_logic_vector(7 downto 0) := X"8E";
	constant FG:	std_logic_vector(7 downto 0) := X"C2";
	constant FI:	std_logic_vector(7 downto 0) := X"FB";
	constant FL:	std_logic_vector(7 downto 0) := X"C7";
	constant FM:	std_logic_vector(7 downto 0) := X"C8";
	constant FN:	std_logic_vector(7 downto 0) := X"AB";
	constant FO:	std_logic_vector(7 downto 0) := X"C0";
	constant FP:	std_logic_vector(7 downto 0) := X"8C";
	constant FR:	std_logic_vector(7 downto 0) := X"AF";
	constant FS:	std_logic_vector(7 downto 0) := X"93";
	constant FT:	std_logic_vector(7 downto 0) := X"87";
	constant FW:	std_logic_vector(7 downto 0) := X"81";

	-- SPECIAL CHARACTERS
	constant FSPACE:	std_logic_vector(7 downto 0) := X"FF";
	
	-- RACE CHARACTERS
	constant FR_T:		std_logic_vector(7 downto 0) := X"FE";
	constant FR_TR:	std_logic_vector(7 downto 0) := X"FD";
	constant FR_BR:	std_logic_vector(7 downto 0) := X"FB";
	constant FR_B:		std_logic_vector(7 downto 0) := X"F7";
	constant FR_BL:	std_logic_vector(7 downto 0) := X"EF";
	constant FR_TL:	std_logic_vector(7 downto 0) := X"DF";
	
	-- WORDS
	constant W_1:		std_logic_vector(47 downto 0) := FSPACE & F1     & FSPACE & FSPACE & FSPACE & FSPACE;
	constant W_2:		std_logic_vector(47 downto 0) := FSPACE & F2     & FSPACE & FSPACE & FSPACE & FSPACE;
	constant W_3:		std_logic_vector(47 downto 0) := FSPACE & F3     & FSPACE & FSPACE & FSPACE & FSPACE;
	constant W_A_TO:	std_logic_vector(47 downto 0) := FSPACE & FSPACE & FA     & FSPACE & FT     & FO;
	constant W_FALSE:	std_logic_vector(47 downto 0) := FSPACE & FF     & FA     & FL     & FS     & FE;
	constant W_GO:		std_logic_vector(47 downto 0) := FG     & FO     & FSPACE & FSPACE & FSPACE & FSPACE;
	constant W_P1:		std_logic_vector(47 downto 0) := FP     & F1     & FSPACE & FSPACE & FSPACE & FSPACE;
	constant W_P2:		std_logic_vector(47 downto 0) := FP     & F2     & FSPACE & FSPACE & FSPACE & FSPACE;
	constant W_P1R:	std_logic_vector(47 downto 0) := FSPACE & FSPACE & FSPACE & FSPACE & FP     & F1;
	constant W_P2R:	std_logic_vector(47 downto 0) := FSPACE & FSPACE & FSPACE & FSPACE & FP     & F2;
	constant W_P1C:	std_logic_vector(47 downto 0) := FSPACE & FSPACE & FP     & F1     & FSPACE & FSPACE;
	constant W_P2C:	std_logic_vector(47 downto 0) := FSPACE & FSPACE & FP     & F2     & FSPACE & FSPACE;
	constant W_PRESS:	std_logic_vector(47 downto 0) := FSPACE & FP     & FR     & FE     & FS     & FS;
	constant w_RACE:	std_logic_vector(47 downto 0) := FSPACE & FSPACE & FR     & FA     & FC     & FE;
	constant W_START:	std_logic_vector(47 downto 0) := FSPACE & FS 	 & FT     & FA     & FR     & FT;
	constant W_TIME:	std_logic_vector(47 downto 0) := FSPACE & FSPACE & FT     & FI     & FM     & FE;
	constant W_WINS:	std_logic_vector(47 downto 0) := FSPACE & FW 	 & FI     & FN     & FS     & FSPACE;
	constant W_ERROR:	std_logic_vector(47 downto 0) := FSPACE & FE 	 & FR     & FR     & FO     & FR;
	
	-- RACE WORDS
	constant W_R00:	std_logic_vector(47 downto 0) := FG 	 & FO 	 & FSPACE & FR_B   & FSPACE & FSPACE;
	constant W_R01:	std_logic_vector(47 downto 0) := FG 	 & FO 	 & FSPACE & FSPACE & FR_B   & FSPACE;
	constant W_R02:	std_logic_vector(47 downto 0) := FG 	 & FO 	 & FSPACE & FSPACE & FSPACE & FR_B;
	constant W_R03:	std_logic_vector(47 downto 0) := FG 	 & FO 	 & FSPACE & FSPACE & FSPACE & FR_BR;
	constant W_R04:	std_logic_vector(47 downto 0) := FG 	 & FO 	 & FSPACE & FSPACE & FSPACE & FR_TR;
	constant W_R05:	std_logic_vector(47 downto 0) := FG 	 & FO 	 & FSPACE & FSPACE & FSPACE & FR_T;
	constant W_R06:	std_logic_vector(47 downto 0) := FG  	 & FO 	 & FSPACE & FSPACE & FR_T   & FSPACE;
	constant W_R07:	std_logic_vector(47 downto 0) := FG  	 & FO 	 & FSPACE & FR_T   & FSPACE & FSPACE;
	constant W_R08:	std_logic_vector(47 downto 0) := FG  	 & FO 	 & FR_T   & FSPACE & FSPACE & FSPACE;
	constant W_R09:	std_logic_vector(47 downto 0) := FG  	 & FO 	 & FR_TL  & FSPACE & FSPACE & FSPACE;
	constant W_R10:	std_logic_vector(47 downto 0) := FG 	 & FO 	 & FR_BL  & FSPACE & FSPACE & FSPACE;
	constant W_R11:	std_logic_vector(47 downto 0) := FG 	 & FO 	 & FR_B   & FSPACE & FSPACE & FSPACE;
	constant W_R12:	std_logic_vector(47 downto 0) := FG 	 & FO  	 & FSPACE & FR_B   & FSPACE & FSPACE;
	constant W_R13:	std_logic_vector(47 downto 0) := FSPACE & FSPACE & FSPACE & FSPACE & FSPACE & FSPACE;
	constant W_R14:	std_logic_vector(47 downto 0) := FG 	 & FO 	 & FSPACE & FR_B   & FSPACE & FSPACE;
	constant W_R15:	std_logic_vector(47 downto 0) := FSPACE & FSPACE & FSPACE & FSPACE & FSPACE & FSPACE;
	constant W_R16:	std_logic_vector(47 downto 0) := FG 	 & FO 	 & FSPACE & FR_B   & FSPACE & FSPACE;
	
	
	--SIGNALS
	-- INPUT SIGNALS
	signal A:		std_logic;
	signal A_LAST:	std_logic := '0';
	
	-- DATA SINGALS
	signal Q:		std_logic_vector(7 downto 0);
	signal Q_LAST:	std_logic_vector(7 downto 0);
	signal D:		std_logic_vector(7 downto 0);
	
	-- CLOCK SIGNALS
	signal ACTIVE_CLOCK: 	std_logic;
	
	signal COUNTERCLK1HZ:	integer range 0 to 50000000 := 1;
	
	signal CLK1KHZ:			std_logic;
	signal CLK1KHZ_COUNT:	integer range 0 to 50000;
	
	-- BUTTON PRESS LIMITER
	signal TOGGLELIMITER: 			std_logic;
	
	-- TIMERS
	signal P1_TIMER:	integer range 0 to 60000;
	signal P2_TIMER:	integer range 0 to 60000;
	
	
begin

	A <= (not A_LOW) and (not TOGGLELIMITER);

	-- NEXT STATE LOGIC
	D <= 	-- START SCREEN
			SSP1_PRESS	when Q = SSP1_P1 		and A = '0' and COUNTERCLK1HZ = 0 else
			SSP1_A_TO 	when Q = SSP1_PRESS 	and A = '0' and COUNTERCLK1HZ = 0 else
			SSP1_RACE 	when Q = SSP1_A_TO 	and A = '0' and COUNTERCLK1HZ = 0 else
			SSP1_P1	 	when Q = SSP1_RACE 	and A = '0' and COUNTERCLK1HZ = 0 else
			
			P1_P1			when Q = SSP1_P1		and A = '1' else
			P1_P1 		when Q = SSP1_PRESS 	and A = '1' else
			P1_P1			when Q = SSP1_A_TO 	and A = '1' else
			P1_P1			when Q = SSP1_RACE 	and A = '1' else
			
			-- P1 GAME
			P1_3		when Q = P1_P1 and A = '0' and COUNTERCLK1HZ = 0 else
			P1_2		when Q = P1_3  and A = '0' and COUNTERCLK1HZ = 0 else
			P1_1		when Q = P1_2  and A = '0' and COUNTERCLK1HZ = 0 else
			P1_GO		when Q = P1_1  and A = '0' and COUNTERCLK1HZ = 0 else
			P1_R00	when Q = P1_GO and A = '0' and COUNTERCLK1HZ = 0 else
			
			P1_FALSE when Q >= P1_P1 and Q <= P1_GO and A = '1' else
			P1_START when Q =  P1_FALSE and A = '0' and COUNTERCLK1HZ = 0 else
			P1_FALSE when Q =  P1_START and A = '0' and COUNTERCLK1HZ = 0 else
			GRP2_P2  when Q =  P1_FALSE and A = '1' else
			GRP2_P2  when Q =  P1_START and A = '1' else
			
			P1_R01	when Q = P1_R00 and A = '1' else
			P1_R02	when Q = P1_R01 and A = '1' else
			P1_R03	when Q = P1_R02 and A = '1' else
			P1_R04	when Q = P1_R03 and A = '1' else
			P1_R05	when Q = P1_R04 and A = '1' else
			P1_R06	when Q = P1_R05 and A = '1' else
			P1_R07	when Q = P1_R06 and A = '1' else
			P1_R08	when Q = P1_R07 and A = '1' else
			P1_R09	when Q = P1_R08 and A = '1' else
			P1_R10	when Q = P1_R09 and A = '1' else
			P1_R11	when Q = P1_R10 and A = '1' else
			P1_R12	when Q = P1_R11 and A = '1' else
			P1_R13	when Q = P1_R12 and (COUNTERCLK1HZ = 0 or COUNTERCLK1HZ = 25000000) else
			P1_R14	when Q = P1_R13 and (COUNTERCLK1HZ = 0 or COUNTERCLK1HZ = 25000000) else
			P1_R15	when Q = P1_R14 and (COUNTERCLK1HZ = 0 or COUNTERCLK1HZ = 25000000) else
			P1_R16	when Q = P1_R15 and (COUNTERCLK1HZ = 0 or COUNTERCLK1HZ = 25000000) else
			
			-- P2 START SCREEN
			SSP2_P2		when Q = P1_R16 else
			SSP2_PRESS	when Q = SSP2_P2 		and A = '0' and COUNTERCLK1HZ = 0 else
			SSP2_A_TO 	when Q = SSP2_PRESS 	and A = '0' and COUNTERCLK1HZ = 0 else
			SSP2_RACE 	when Q = SSP2_A_TO 	and A = '0' and COUNTERCLK1HZ = 0 else
			SSP2_P2	 	when Q = SSP2_RACE 	and A = '0' and COUNTERCLK1HZ = 0 else
			
			P2_P2			when Q = SSP2_P2		and A = '1' else
			P2_P2			when Q = SSP2_PRESS 	and A = '1' else
			P2_P2			when Q = SSP2_A_TO 	and A = '1' else
			P2_P2			when Q = SSP2_RACE 	and A = '1' else
			
			-- P2 GAME
			P2_3		when Q = P2_P2 and A = '0' and COUNTERCLK1HZ = 0  else
			P2_2		when Q = P2_3  and A = '0' and COUNTERCLK1HZ = 0  else
			P2_1		when Q = P2_2 	and A = '0' and COUNTERCLK1HZ = 0  else
			P2_GO		when Q = P2_1 	and A = '0' and COUNTERCLK1HZ = 0  else
			P2_R00	when Q = P2_GO and A = '0' and COUNTERCLK1HZ = 0  else
			
			P2_FALSE when Q >= P2_P2 and Q <= P2_GO and A = '1' else
			P2_START when Q =  P2_FALSE and A = '0' and COUNTERCLK1HZ = 0 else
			P2_FALSE when Q =  P2_START and A = '0' and COUNTERCLK1HZ = 0 else
			GRP1_P1  when Q =  P2_FALSE and A = '1' else
			GRP1_P1  when Q =  P2_START and A = '1' else
			
			P2_R01	when Q = P2_R00 and A = '1' else
			P2_R02	when Q = P2_R01 and A = '1' else
			P2_R03	when Q = P2_R02 and A = '1' else
			P2_R04	when Q = P2_R03 and A = '1' else
			P2_R05	when Q = P2_R04 and A = '1' else
			P2_R06	when Q = P2_R05 and A = '1' else
			P2_R07	when Q = P2_R06 and A = '1' else
			P2_R08	when Q = P2_R07 and A = '1' else
			P2_R09	when Q = P2_R08 and A = '1' else
			P2_R10	when Q = P2_R09 and A = '1' else
			P2_R11	when Q = P2_R10 and A = '1' else
			P2_R12	when Q = P2_R11 and A = '1' else
			P2_R13	when Q = P2_R12 and (COUNTERCLK1HZ = 0 or COUNTERCLK1HZ = 25000000) else
			P2_R14	when Q = P2_R13 and (COUNTERCLK1HZ = 0 or COUNTERCLK1HZ = 25000000) else
			P2_R15	when Q = P2_R14 and (COUNTERCLK1HZ = 0 or COUNTERCLK1HZ = 25000000) else
			P2_R16	when Q = P2_R15 and (COUNTERCLK1HZ = 0 or COUNTERCLK1HZ = 25000000) else
			
			-- GAME RESULTS
			GRP1_P1 		when (Q = P2_R16 and P1_TIMER < P2_TIMER) and COUNTERCLK1HZ = 0 else
			GRP1_WINS 	when Q = GRP1_P1 		and A = '0' and COUNTERCLK1HZ = 0 else
			GRP1_P1		when Q = GRP1_WINS 	and A = '0' and COUNTERCLK1HZ = 0 else
			SSP1_P1 		when Q = GRP1_P1 		and A = '1' else
			SSP1_P1		when Q = GRP1_WINS 	and A = '1' else
			
			GRP2_P2 		when (Q = P2_R16 and P2_TIMER < P1_TIMER) and COUNTERCLK1HZ = 0 else
			GRP2_WINS 	when Q = GRP2_P2 		and A = '0' and COUNTERCLK1HZ = 0 else
			GRP2_P2		when Q = GRP2_WINS 	and A = '0' and COUNTERCLK1HZ = 0 else
			SSP1_P1 		when Q = GRP2_P2 		and A = '1' else
			SSP1_P1		when Q = GRP2_WINS 	and A = '1' else
			
			Q;
			
	-- CLOCK SWITCHER			
	with Q select ACTIVE_CLOCK <=							
						
		CLK		when 	SSP1_P1 | SSP1_PRESS | SSP1_A_TO | SSP1_RACE|
							P1_P1 | P1_3 | P1_2 | P1_1 | P1_GO |
							P1_R12 | P1_R13 | P1_R14 | P1_R15 | P1_R16 |
							P1_FALSE | P1_START |
							
							SSP2_P2 | SSP2_PRESS | SSP2_A_TO | SSP2_RACE |
							P2_P2 | P2_3 | P2_2 | P2_1 | P2_GO |
							P2_R12 | P2_R13 | P2_R14 | P2_R15 | P2_R16 |
							P2_FALSE | P2_START |
							
							GRP1_P1 | GRP1_WINS |
							GRP2_P2 | GRP2_WINS ,
							
		CLK1KHZ 	when others;
		
	-- RACE TIMER
	TIMER: process(CLK1KHZ, Q)
	begin
		if rising_edge(CLK1KHZ) then
			if Q >= P1_R00 and Q <= P1_R11 then
				P1_TIMER <= P1_TIMER + 1;
				
			elsif Q >= P2_R00 and Q <= P2_R11 then
				P2_TIMER <= P2_TIMER + 1;
				
			elsif Q = P1_GO then
				P1_TIMER <= 0;
			
			elsif Q = P2_GO then
				P2_TIMER <= 0;
				
			end if;
			
		end if;
	end process;
		

	-- REGISTER
	REG: process(ACTIVE_CLOCK, RST)
	begin
		if rising_edge(ACTIVE_CLOCK) then
			Q_LAST <= Q;
			
			if RST = '0' then Q <= SSP1_P1;
			else Q <= D;
			end if;	
			
			-- BUTTON PRESS LIMITER
			if (A_LOW = '0' and A_LAST = '1') then
				TOGGLELIMITER <= '1';
			elsif (A_LOW = '1' and A_LAST = '0') then
				TOGGLELIMITER <= '0';
			end if;
			A_LAST <= A_LOW;
			
		end if;
	end process;
	
	-- CLOCKS
	COUNTERCLOCK1HZ: process(CLK)
	begin
		if rising_edge(CLK) then
			if COUNTERCLK1HZ = 50000000 then 
				COUNTERCLK1HZ <= 0;
			elsif Q_LAST /= Q then
				COUNTERCLK1HZ <= 1;
			else COUNTERCLK1HZ <= COUNTERCLK1HZ + 1;
			end if;
		end if;
	end process;
	
	CLOCK1KHZ: process(CLK)
	begin
		if rising_edge(CLK) then
			if CLK1KHZ_COUNT = 25000 then
				CLK1KHZ <= not CLK1KHZ;
				CLK1KHZ_COUNT <= 0;
			else 
				CLK1KHZ_COUNT <= CLK1KHZ_COUNT + 1;
			end if;
		end if;
	end process;
	
	--OL
	SEG7 <= 	-- P1 START SCREEN
				W_P1R		when Q = SSP1_P1 		else
				W_PRESS 	when Q = SSP1_PRESS 	else
				W_A_TO 	when Q = SSP1_A_TO 	else
				W_RACE	when Q = SSP1_RACE 	else
				
				-- P1 GAME
				W_P1	when Q = P1_P1 else
				W_3	when Q = P1_3  else
				W_2	when Q = P1_2  else
				W_1	when Q = P1_1  else
				W_GO	when Q = P1_GO else
				
				W_FALSE when Q = P1_FALSE else
				W_START when Q = P1_START else
				
				W_R00	when Q = P1_R00 else
				W_R01	when Q = P1_R01 else
				W_R02	when Q = P1_R02 else
				W_R03	when Q = P1_R03 else
				W_R04	when Q = P1_R04 else
				W_R05	when Q = P1_R05 else
				W_R06	when Q = P1_R06 else
				W_R07	when Q = P1_R07 else
				W_R08	when Q = P1_R08 else
				W_R09	when Q = P1_R09 else
				W_R10	when Q = P1_R10 else
				W_R11	when Q = P1_R11 else
				W_R12	when Q = P1_R12 else
				W_R13	when Q = P1_R13 else
				W_R14	when Q = P1_R14 else
				W_R15	when Q = P1_R15 else
				W_R16	when Q = P1_R16 else
				
				-- P2 START SCREEN
				W_P2R		when Q = SSP2_P2		else
				W_PRESS 	when Q = SSP2_PRESS 	else
				W_A_TO 	when Q = SSP2_A_TO 	else
				W_RACE	when Q = SSP2_RACE 	else
				
				-- P2 GAME
				W_P2	when Q = P2_P2 else
				W_3	when Q = P2_3  else
				W_2	when Q = P2_2  else
				W_1	when Q = P2_1  else
				W_GO	when Q = P2_GO else
				
				W_FALSE when Q = P2_FALSE else
				W_START when Q = P2_START else
				
				W_R00	when Q = P2_R00 else
				W_R01	when Q = P2_R01 else
				W_R02	when Q = P2_R02 else
				W_R03	when Q = P2_R03 else
				W_R04	when Q = P2_R04 else
				W_R05	when Q = P2_R05 else
				W_R06	when Q = P2_R06 else
				W_R07	when Q = P2_R07 else
				W_R08	when Q = P2_R08 else
				W_R09	when Q = P2_R09 else
				W_R10	when Q = P2_R10 else
				W_R11	when Q = P2_R11 else
				W_R12	when Q = P2_R12 else
				W_R13	when Q = P2_R13 else
				W_R14	when Q = P2_R14 else
				W_R15	when Q = P2_R15 else
				W_R16	when Q = P2_R16 else
				
				-- GAME RESULTS
				W_P1C		when Q = GRP1_P1 else
				W_WINS	when Q = GRP1_WINS else
				
				W_P2C		when Q = GRP2_P2 else
				W_WINS	when Q = GRP2_WINS else
				
				W_ERROR;
			
end architecture;	
