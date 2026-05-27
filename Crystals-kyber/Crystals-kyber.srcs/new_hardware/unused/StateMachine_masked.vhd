----------------------------------------------------------------------------------
-- StateMachine_masked.vhd
--
-- Step 7: Keccak-f[1600] state machine modified for masked round function.
--
-- The masked round has 2 register stages in series (chi_masked DOM register +
-- state register), so each round needs TWO clock cycles instead of one:
--
--   PHASE A (ENABLE_RF=0): chi_masked DOM register samples the products of
--                          theta·rho·pi of the current state.
--   PHASE B (ENABLE_RF=1): state register samples (chi_masked output XOR iota).
--                          LFSR advances here so round constant moves on next
--                          phase A.
--
-- Total round count is still 24. Each round takes 2 cycles → 48 cycles in
-- S_ROUND (+ S_INIT and S_DONE overhead, same as before).
--
-- All other behavior matches the original StateMachine: same LFSR
-- polynomial, same round constant lookup, same INIT/GO interface.
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY StateMachine_masked IS
    PORT ( CLK       : IN  STD_LOGIC;
           RESET     : IN  STD_LOGIC;
           INIT      : IN  STD_LOGIC;
           GO        : IN  STD_LOGIC;
           DONE      : OUT STD_LOGIC;
           RESET_RF  : OUT STD_LOGIC;
           ENABLE_RF : OUT STD_LOGIC;
           CONST     : OUT STD_LOGIC_VECTOR(63 DOWNTO 0));
END StateMachine_masked;

ARCHITECTURE FSM OF StateMachine_masked IS

    TYPE STATES IS (S_RESET, S_INIT, S_ROUND, S_DONE);
    SIGNAL STATE, NEXT_STATE : STATES;

    SIGNAL RESET_LFSR, ENABLE_LFSR  : STD_LOGIC;
    SIGNAL LFSR                     : STD_LOGIC_VECTOR(7 DOWNTO 0);

    -- PHASE: 0 = phase A (DOM register loading), 1 = phase B (state register
    -- loading + LFSR advance). Toggles every cycle while in S_ROUND.
    SIGNAL PHASE : STD_LOGIC;

BEGIN

    -- LFSR (round counter). Advances only on phase B.
    PROCESS(CLK)
    BEGIN
        IF RISING_EDGE(CLK) THEN
            IF (RESET_LFSR = '1') THEN
                LFSR <= (0 => '1', OTHERS => '0');
            ELSIF (ENABLE_LFSR = '1') THEN
                LFSR <= LFSR(6 DOWNTO 0) & (LFSR(7) XOR LFSR(5) XOR LFSR(4) XOR LFSR(3));
            END IF;
        END IF;
    END PROCESS;

    -- PHASE toggle.
    PROCESS(CLK)
    BEGIN
        IF RISING_EDGE(CLK) THEN
            IF (RESET = '1') OR (STATE /= S_ROUND) THEN
                PHASE <= '0';
            ELSE
                PHASE <= NOT PHASE;
            END IF;
        END IF;
    END PROCESS;

    -- Round constant decoder (same table as original).
    PROCESS(LFSR)
    BEGIN
        CASE LFSR IS
            WHEN X"01"  => CONST <= X"0000000000000001";
            WHEN X"02"  => CONST <= X"0000000000008082";
            WHEN X"04"  => CONST <= X"800000000000808A";
            WHEN X"08"  => CONST <= X"8000000080008000";
            WHEN X"11"  => CONST <= X"000000000000808B";
            WHEN X"23"  => CONST <= X"0000000080000001";
            WHEN X"47"  => CONST <= X"8000000080008081";
            WHEN X"8E"  => CONST <= X"8000000000008009";
            WHEN X"1C"  => CONST <= X"000000000000008A";
            WHEN X"38"  => CONST <= X"0000000000000088";
            WHEN X"71"  => CONST <= X"0000000080008009";
            WHEN X"E2"  => CONST <= X"000000008000000A";
            WHEN X"C4"  => CONST <= X"000000008000808B";
            WHEN X"89"  => CONST <= X"800000000000008B";
            WHEN X"12"  => CONST <= X"8000000000008089";
            WHEN X"25"  => CONST <= X"8000000000008003";
            WHEN X"4B"  => CONST <= X"8000000000008002";
            WHEN X"97"  => CONST <= X"8000000000000080";
            WHEN X"2E"  => CONST <= X"000000000000800A";
            WHEN X"5C"  => CONST <= X"800000008000000A";
            WHEN X"B8"  => CONST <= X"8000000080008081";
            WHEN X"70"  => CONST <= X"8000000000008080";
            WHEN X"E0"  => CONST <= X"0000000080000001";
            WHEN X"C0"  => CONST <= X"8000000080008008";
            WHEN OTHERS => CONST <= X"0000000000000000";
        END CASE;
    END PROCESS;

    StateRegister : PROCESS(CLK)
    BEGIN
        IF RISING_EDGE(CLK) THEN
            IF (RESET = '1') THEN
                STATE <= S_RESET;
            ELSE
                STATE <= NEXT_STATE;
            END IF;
        END IF;
    END PROCESS;

    OutputAndTransition : PROCESS(STATE, INIT, GO, LFSR, PHASE)
    BEGIN
        RESET_RF    <= '0';
        ENABLE_RF   <= '0';
        RESET_LFSR  <= '0';
        ENABLE_LFSR <= '0';
        DONE        <= '0';
        NEXT_STATE  <= STATE;

        CASE STATE IS
            WHEN S_RESET =>
                RESET_RF   <= '1';
                RESET_LFSR <= '1';
                IF (INIT = '1') THEN
                    NEXT_STATE <= S_INIT;
                END IF;

            WHEN S_INIT =>
                ENABLE_RF   <= '0';
                ENABLE_LFSR <= '0';
                DONE        <= '0';
                IF (GO = '1') THEN
                    NEXT_STATE <= S_ROUND;
                END IF;

            WHEN S_ROUND =>
                -- ENABLE_RF asserts only on phase B; LFSR advances on phase B.
                -- Exit S_ROUND after the 24th phase B (when LFSR has just
                -- reached the last constant value).
                IF (PHASE = '1') THEN
                    ENABLE_RF   <= '1';
                    ENABLE_LFSR <= '1';
                    IF (LFSR = X"C0") THEN
                        NEXT_STATE <= S_DONE;
                    END IF;
                END IF;

            WHEN S_DONE =>
                DONE       <= '1';
                RESET_LFSR <= '1';
                NEXT_STATE <= S_INIT;
        END CASE;
    END PROCESS;

END FSM;
