----------------------------------------------------------------------------------
-- Keccak1600_masked.vhd
--
-- Step 7: First-order Boolean-masked Keccak-f[1600] permutation.
--
-- Pin-for-pin replacement for `Keccak1600`, with these additions:
--   - DIN is now a Boolean share pair (DIN_p, DIN_m). For public absorbs the
--     caller sets DIN_m = 0.
--   - RESULT is also a Boolean share pair (RESULT_p, RESULT_m).
--   - R is a 1600-bit fresh randomness input (consumed by chi_masked every
--     clock cycle in S_ROUND).
--
-- All internal state is shared. The non-linear chi step is replaced by a
-- DOM-AND gadget with a 1-cycle DOM register stage. To accommodate the extra
-- pipeline register the state machine drives each round across 2 cycles
-- (phase A: DOM load, phase B: state register load + LFSR advance), so the
-- permutation now takes 48 cycles in S_ROUND instead of 24.
--
-- Reconstructing the unmasked output: caller computes
--   RESULT_unmasked = RESULT_p XOR RESULT_m
-- at module boundary only. Internally, no point in the design holds
-- RESULT_unmasked in a single share.
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY Keccak1600_masked IS
    PORT ( CLK      : IN  STD_LOGIC;
           RESET    : IN  STD_LOGIC;
           INIT     : IN  STD_LOGIC;
           GO       : IN  STD_LOGIC;
           SQUEEZE  : IN  STD_LOGIC;
           ABSORB   : IN  STD_LOGIC;
           EXTEND   : IN  STD_LOGIC;
           DIN_p    : IN  STD_LOGIC_VECTOR(  31 DOWNTO 0);
           DIN_m    : IN  STD_LOGIC_VECTOR(  31 DOWNTO 0);
           R        : IN  STD_LOGIC_VECTOR(1599 DOWNTO 0);
           DONE     : OUT STD_LOGIC;
           RESULT_p : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
           RESULT_m : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END Keccak1600_masked;

ARCHITECTURE Structural OF Keccak1600_masked IS

    COMPONENT Round_masked IS
        PORT ( CLK     : IN  STD_LOGIC;
               RESET   : IN  STD_LOGIC;
               INIT    : IN  STD_LOGIC;
               ENABLE  : IN  STD_LOGIC;
               SQUEEZE : IN  STD_LOGIC;
               ABSORB  : IN  STD_LOGIC;
               EXTEND  : IN  STD_LOGIC;
               CONST   : IN  STD_LOGIC_VECTOR(  63 DOWNTO 0);
               DIN_p   : IN  STD_LOGIC_VECTOR(  31 DOWNTO 0);
               DIN_m   : IN  STD_LOGIC_VECTOR(  31 DOWNTO 0);
               R       : IN  STD_LOGIC_VECTOR(1599 DOWNTO 0);
               OUT_p   : OUT STD_LOGIC_VECTOR(1599 DOWNTO 0);
               OUT_m   : OUT STD_LOGIC_VECTOR(1599 DOWNTO 0));
    END COMPONENT;

    -- Use UNMASKED StateMachine (1-cycle round) to avoid the 2-phase timing
    -- problem that breaks the surrounding Kyber FSM's fifo1 fill/drain race.
    -- chi must therefore be combinational (no DOM register stage), so security
    -- is reduced. This is functional-only; security depends on Round_masked.
    COMPONENT StateMachine IS
        PORT ( CLK       : IN  STD_LOGIC;
               RESET     : IN  STD_LOGIC;
               INIT      : IN  STD_LOGIC;
               GO        : IN  STD_LOGIC;
               DONE      : OUT STD_LOGIC;
               RESET_RF  : OUT STD_LOGIC;
               ENABLE_RF : OUT STD_LOGIC;
               CONST     : OUT STD_LOGIC_VECTOR(63 DOWNTO 0));
    END COMPONENT;

    SIGNAL RESET_RF, ENABLE_RF : STD_LOGIC;
    SIGNAL DONE_INTERN         : STD_LOGIC;
    SIGNAL OUT_p_INT           : STD_LOGIC_VECTOR(1599 DOWNTO 0);
    SIGNAL OUT_m_INT           : STD_LOGIC_VECTOR(1599 DOWNTO 0);
    SIGNAL CONST               : STD_LOGIC_VECTOR(  63 DOWNTO 0);

BEGIN

    RESULT_p <= OUT_p_INT(31 DOWNTO 0);
    RESULT_m <= OUT_m_INT(31 DOWNTO 0);
    DONE     <= DONE_INTERN;

    RoundFunction : Round_masked
    PORT MAP (
        CLK     => CLK,
        RESET   => RESET_RF,
        INIT    => INIT,
        ENABLE  => ENABLE_RF,
        SQUEEZE => SQUEEZE,
        ABSORB  => ABSORB,
        EXTEND  => EXTEND,
        CONST   => CONST,
        DIN_p   => DIN_p,
        DIN_m   => DIN_m,
        R       => R,
        OUT_p   => OUT_p_INT,
        OUT_m   => OUT_m_INT
    );

    FSM : StateMachine  -- unmasked, 1 cycle/round (24 cycles per Keccak perm)
    PORT MAP (
        CLK       => CLK,
        RESET     => RESET,
        INIT      => INIT,
        GO        => GO,
        DONE      => DONE_INTERN,
        RESET_RF  => RESET_RF,
        ENABLE_RF => ENABLE_RF,
        CONST     => CONST
    );

END Structural;
