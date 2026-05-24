----------------------------------------------------------------------------------
-- Round_masked.vhd
--
-- Step 7: First-order Boolean-masked Keccak-f[1600] round function.
--
-- Structure:
--   - Two state registers: STATE_p, STATE_m (Boolean-shared, X = STATE_p XOR STATE_m).
--   - Linear permutations (theta, rho, pi) are GF(2)-linear and apply share-wise:
--     two parallel instances, one per share.
--   - chi is the only non-linear step — replaced by chi_masked (DOM-AND, 1-cycle
--     DOM register stage).
--   - iota is XOR with a public round constant. Apply to ONE share only
--     (share_p); the other share passes through unchanged. This preserves the
--     invariant that X_p XOR X_m = unmasked state.
--
-- Timing: one Keccak round takes TWO clock cycles in this masked design.
--   Cycle A (ENABLE_RF=0): chi_masked.DOM_REG samples products of (theta·rho·pi
--                          of current state).
--   Cycle B (ENABLE_RF=1): state registers sample (chi_masked_output XOR iota).
-- The parent StateMachine_masked is responsible for the A/B phase sequencing
-- and gating ENABLE_RF accordingly.
--
-- ABSORB / SQUEEZE / EXTEND modes: share-wise as in the unmasked register.
--   DIN_p XOR'd into Q_buf_p; DIN_m XOR'd into Q_buf_m.
--   Caller is responsible for providing DIN as a Boolean share pair. For
--   public inputs (matrix-A bytes, separation tags) set DIN_m = 0.
--
-- Randomness: chi_masked consumes 1600 bits of fresh randomness (R) per clock
-- cycle. Caller provides R from a PRNG.
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY Round_masked IS
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
END Round_masked;

ARCHITECTURE Structural OF Round_masked IS

    -- COMPONENTS ----------------------------------------------------------------
    COMPONENT RegisterFDRE IS
        GENERIC (SIZE : POSITIVE := 1600);
        PORT ( CLK     : IN  STD_LOGIC;
               RESET   : IN  STD_LOGIC;
               INIT    : IN  STD_LOGIC;
               ENABLE  : IN  STD_LOGIC;
               SQUEEZE : IN  STD_LOGIC;
               ABSORB  : IN  STD_LOGIC;
               EXTEND  : IN  STD_LOGIC;
               DIN     : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
               D       : IN  STD_LOGIC_VECTOR((SIZE - 1) DOWNTO 0);
               Q       : OUT STD_LOGIC_VECTOR((SIZE - 1) DOWNTO 0));
    END COMPONENT;

    COMPONENT theta IS
        PORT ( X : IN  STD_LOGIC_VECTOR(1599 DOWNTO 0);
               Y : OUT STD_LOGIC_VECTOR(1599 DOWNTO 0));
    END COMPONENT;

    COMPONENT rho IS
        PORT ( X : IN  STD_LOGIC_VECTOR(1599 DOWNTO 0);
               Y : OUT STD_LOGIC_VECTOR(1599 DOWNTO 0));
    END COMPONENT;

    COMPONENT pi IS
        PORT ( X : IN  STD_LOGIC_VECTOR(1599 DOWNTO 0);
               Y : OUT STD_LOGIC_VECTOR(1599 DOWNTO 0));
    END COMPONENT;

    -- DEBUG: chi component for bisecting whether chi_masked DOM is the bug
    -- vs the 2-phase StateMachine. Using unmasked chi on share_p only here.
    COMPONENT chi IS
        PORT ( X : IN  STD_LOGIC_VECTOR(1599 DOWNTO 0);
               Y : OUT STD_LOGIC_VECTOR(1599 DOWNTO 0));
    END COMPONENT;

    COMPONENT iota IS
        PORT ( X : IN  STD_LOGIC_VECTOR(1599 DOWNTO 0);
               C : IN  STD_LOGIC_VECTOR(  63 DOWNTO 0);
               Y : OUT STD_LOGIC_VECTOR(1599 DOWNTO 0));
    END COMPONENT;

    -- SIGNALS -------------------------------------------------------------------
    SIGNAL STATE_p, STATE_m : STD_LOGIC_VECTOR(1599 DOWNTO 0);
    SIGNAL TMP1_p, TMP1_m   : STD_LOGIC_VECTOR(1599 DOWNTO 0);  -- after theta
    SIGNAL TMP2_p, TMP2_m   : STD_LOGIC_VECTOR(1599 DOWNTO 0);  -- after rho
    SIGNAL TMP3_p, TMP3_m   : STD_LOGIC_VECTOR(1599 DOWNTO 0);  -- after pi (= chi input)
    SIGNAL TMP4_p, TMP4_m   : STD_LOGIC_VECTOR(1599 DOWNTO 0);  -- after chi_masked (registered)
    SIGNAL TMP5_p, TMP5_m   : STD_LOGIC_VECTOR(1599 DOWNTO 0);  -- after iota

BEGIN

    -- Two state registers, one per share. Same register semantics as the
    -- unmasked design — ENABLE/ABSORB/SQUEEZE/EXTEND act symmetrically on
    -- each share.
    Reg_p : RegisterFDRE
    GENERIC MAP (SIZE => 1600)
    PORT MAP (
        CLK     => CLK,
        RESET   => RESET,
        INIT    => INIT,
        ENABLE  => ENABLE,
        SQUEEZE => SQUEEZE,
        ABSORB  => ABSORB,
        EXTEND  => EXTEND,
        DIN     => DIN_p,
        D       => TMP5_p,
        Q       => STATE_p
    );

    Reg_m : RegisterFDRE
    GENERIC MAP (SIZE => 1600)
    PORT MAP (
        CLK     => CLK,
        RESET   => RESET,
        INIT    => INIT,
        ENABLE  => ENABLE,
        SQUEEZE => SQUEEZE,
        ABSORB  => ABSORB,
        EXTEND  => EXTEND,
        DIN     => DIN_m,
        D       => TMP5_m,
        Q       => STATE_m
    );

    -- Linear permutations: share-wise (two instances, one per share).
    T_p : theta PORT MAP (X => STATE_p, Y => TMP1_p);
    T_m : theta PORT MAP (X => STATE_m, Y => TMP1_m);

    R_p : rho   PORT MAP (X => TMP1_p,  Y => TMP2_p);
    R_m : rho   PORT MAP (X => TMP1_m,  Y => TMP2_m);

    P_p : pi    PORT MAP (X => TMP2_p,  Y => TMP3_p);
    P_m : pi    PORT MAP (X => TMP2_m,  Y => TMP3_m);

    -- DEBUG: unmasked chi on share_p, identity on share_m. Combinational.
    -- The 2-phase StateMachine still drives ENABLE_RF every other cycle,
    -- effectively making the round take 2 cycles. Since chi is combinational,
    -- the state register's input TMP5_p is correct at every cycle. So when
    -- ENABLE_RF fires (phase B), state samples the right value.
    --
    -- If this version PASSES regression, 2-phase logic is fine and the bug is
    -- in chi_masked's DOM register handling. If it FAILS, 2-phase is the bug.
    CM : chi PORT MAP (X => TMP3_p, Y => TMP4_p);
    TMP4_m <= TMP3_m;

    -- iota applies the public round constant. XOR is linear → add to one share
    -- only. share_p gets the constant; share_m is identity.
    I_p : iota PORT MAP (X => TMP4_p, C => CONST, Y => TMP5_p);
    TMP5_m <= TMP4_m;

    -- Output ports expose the current state (each share).
    OUT_p <= STATE_p;
    OUT_m <= STATE_m;

END Structural;
