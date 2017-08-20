LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity test is
port (toneOut : out std_ulogic;
	a : in std_ulogic_vector(2 downto 0);
	clk : in std_ulogic);
	end  test;
	
architecture tst of test is
signal sa, re, ga, ma, pa, dha, ni, saa : std_ulogic := '0';
begin
	process(clk)
	variable count_sa : integer := 0;
	variable count_re : integer := 0;
	variable count_ga : integer := 0;
	variable count_ma : integer := 0;
	variable count_pa : integer := 0;
	variable count_dha : integer := 0;
	variable count_ni : integer := 0;
	variable count_saa : integer := 0;
	begin
		if clk'event and clk = '1' then
			if (count_sa = 104167) then
				count_sa := 0;
				sa <= not sa;
			else
				count_sa := count_sa + 1;
			end if;
			if (count_re = 95923) then
				count_re := 0;
				re <= not re;
			else
				count_re := count_re + 1;
			end if;
			if (count_ga = 83333) then
				count_ga := 0;
				ga <= not ga;
			else
				count_ga := count_ga + 1;
			end if;
			if (count_ma = 78125) then
				count_ma := 0;
				ma <= not ma;
			else
				count_ma := count_ma + 1;
			end if;
			if (count_pa = 69444) then
				count_pa := 0;
				pa <= not pa;
			else
				count_pa := count_pa + 1;
			end if;
			if (count_dha = 62500) then
				count_dha := 0;
				dha <= not dha;
			else
				count_dha := count_dha + 1;
			end if;
			if (count_ni = 55556) then
				count_ni := 0;
				ni <= not ni;
			else
				count_ni := count_ni + 1;
			end if;
			if (count_saa = 52083) then
				count_saa := 0;
				saa <= not saa;
			else
				count_saa := count_saa + 1;
			end if;
		end if;
		case a is
			when "001" => toneOut <= sa;
			when "010" => toneOut <= re;
			when "011" => toneOut <= ga;
			when "100" => toneOut <= ma;
			when "101" => toneOut <= pa;
			when "110" => toneOut <= dha;
			when "111" => toneOut <= ni;
			when others => toneout <= '0';
		end case;
	end process;
end tst;