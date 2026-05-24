----------------------------------------------------------------------------------
-- chi_masked.vhd
--
-- Step 7: Domain-Oriented Masked (DOM) chi step for Keccak-f[1600].
-- 2-share, first-order probing secure.
--
-- The chi step is the only non-linear step of Keccak. For each row of 5 lanes
-- (each 64-bit) it computes:
--   Y[L] = X[L] XOR ((NOT X[L+1]) AND X[L+2])    (indices mod 5 within row)
--
-- With 2-share Boolean masking (a = a_p XOR a_m):
--   NOT(a) = NOT(a_p) XOR a_m   (negate one share, free)
--   AND of (NOT X[L+1], X[L+2]) via DOM-AND with fresh random r:
--     local_pp = (NOT X[L+1]_p) AND X[L+2]_p           -- local product
--     local_mm = X[L+1]_m       AND X[L+2]_m           -- local product
--     cross_pm = (NOT X[L+1]_p) AND X[L+2]_m           -- cross term
--     cross_mp = X[L+1]_m       AND X[L+2]_p           -- cross term
--     z_p_reg <= cross_pm XOR r   -- registered (DOM register stage)
--     z_m_reg <= cross_mp XOR r   -- registered (same r)
--     z_p = local_pp XOR z_p_reg  -- combinational
--     z_m = local_mm XOR z_m_reg  -- combinational
--
--   Final: Y_p[L] = X_p[L] XOR z_p,  Y_m[L] = X_m[L] XOR z_m
--
-- Probe analysis (first-order):
--   - Any single share (X_p, X_m, local_pp, local_mm, etc.) is uniformly random
--     given the other share + r.
--   - cross_pm XOR r and cross_mp XOR r are uniformly random (r is fresh).
--   - The DOM register stage blocks glitch propagation across the share boundary.
--
-- Latency: 1 clock cycle (the DOM register on cross terms). Original chi is
-- combinational, so masked Round takes 1 extra cycle per round.
--
-- Randomness: 1600 bits of fresh r per chi call (one bit per output bit).
--
-- Reference: Gross, Mangard, Korak — "Domain-Oriented Masking" CARDIS 2016.
--            Bertoni, Daemen, Peeters, Van Assche — masked Keccak guidelines.
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY chi_masked IS
    PORT ( CLK   : IN  STD_LOGIC;
           RESET : IN  STD_LOGIC;
           X_p   : IN  STD_LOGIC_VECTOR(1599 DOWNTO 0);
           X_m   : IN  STD_LOGIC_VECTOR(1599 DOWNTO 0);
           R     : IN  STD_LOGIC_VECTOR(1599 DOWNTO 0);
           Y_p   : OUT STD_LOGIC_VECTOR(1599 DOWNTO 0);
           Y_m   : OUT STD_LOGIC_VECTOR(1599 DOWNTO 0));
END chi_masked;

ARCHITECTURE Behavioral OF chi_masked IS

    -- Combinational DOM intermediate signals (per output bit).
    -- For each output bit Y[L], we compute the AND of (NOT X[L+1], X[L+2])
    -- via DOM. The cross terms get XOR'd with r and registered. The local
    -- terms stay combinational.
    SIGNAL local_pp     : STD_LOGIC_VECTOR(1599 DOWNTO 0);  -- (NOT X[L+1]_p) AND X[L+2]_p
    SIGNAL local_mm     : STD_LOGIC_VECTOR(1599 DOWNTO 0);  -- X[L+1]_m       AND X[L+2]_m
    SIGNAL cross_pm_xor : STD_LOGIC_VECTOR(1599 DOWNTO 0);  -- (NOT X[L+1]_p) AND X[L+2]_m XOR r
    SIGNAL cross_mp_xor : STD_LOGIC_VECTOR(1599 DOWNTO 0);  -- X[L+1]_m       AND X[L+2]_p XOR r

    -- Registered cross terms (DOM register stage breaks glitch propagation)
    SIGNAL cross_pm_reg : STD_LOGIC_VECTOR(1599 DOWNTO 0) := (OTHERS => '0');
    SIGNAL cross_mp_reg : STD_LOGIC_VECTOR(1599 DOWNTO 0) := (OTHERS => '0');

    -- Registered local terms (so final XOR sees cycle-aligned signals).
    SIGNAL local_pp_reg : STD_LOGIC_VECTOR(1599 DOWNTO 0) := (OTHERS => '0');
    SIGNAL local_mm_reg : STD_LOGIC_VECTOR(1599 DOWNTO 0) := (OTHERS => '0');

    -- Also register X_p / X_m at the same stage so the final XOR is at the
    -- correct cycle. Without this, X[L] would arrive one cycle ahead of the
    -- AND result and the XOR would combine wrong-cycle terms.
    SIGNAL X_p_reg : STD_LOGIC_VECTOR(1599 DOWNTO 0) := (OTHERS => '0');
    SIGNAL X_m_reg : STD_LOGIC_VECTOR(1599 DOWNTO 0) := (OTHERS => '0');

BEGIN

    -- =============================================================================
    -- Combinational DOM products
    -- =============================================================================
    --
    -- Y = 0 (row 0): lanes are bits [0..319], 5 lanes of 64 bits each.
    --   bit ranges per lane:
    --     L0: [63:0]      L1: [127:64]    L2: [191:128]
    --     L3: [255:192]   L4: [319:256]
    --
    -- For each output lane Y[R][L]:
    --   local_pp[L] = (NOT X_p[L+1]) AND X_p[L+2]
    --   local_mm[L] = X_m[L+1]       AND X_m[L+2]
    --   cross_pm_xor[L] = ((NOT X_p[L+1]) AND X_m[L+2]) XOR R[L]
    --   cross_mp_xor[L] = (X_m[L+1]       AND X_p[L+2]) XOR R[L]
    --
    -- Row 0 ------------------------------------------------------------
    -- L0: NOT X1 AND X2
    local_pp(    63 DOWNTO   0) <= (NOT X_p( 127 DOWNTO  64)) AND X_p( 191 DOWNTO 128);
    local_mm(    63 DOWNTO   0) <=      X_m( 127 DOWNTO  64)  AND X_m( 191 DOWNTO 128);
    cross_pm_xor(63 DOWNTO   0) <= ((NOT X_p( 127 DOWNTO  64)) AND X_m( 191 DOWNTO 128)) XOR R(  63 DOWNTO   0);
    cross_mp_xor(63 DOWNTO   0) <= (     X_m( 127 DOWNTO  64)  AND X_p( 191 DOWNTO 128)) XOR R(  63 DOWNTO   0);

    -- L1: NOT X2 AND X3
    local_pp(   127 DOWNTO  64) <= (NOT X_p( 191 DOWNTO 128)) AND X_p( 255 DOWNTO 192);
    local_mm(   127 DOWNTO  64) <=      X_m( 191 DOWNTO 128)  AND X_m( 255 DOWNTO 192);
    cross_pm_xor(127 DOWNTO  64) <= ((NOT X_p( 191 DOWNTO 128)) AND X_m( 255 DOWNTO 192)) XOR R( 127 DOWNTO  64);
    cross_mp_xor(127 DOWNTO  64) <= (     X_m( 191 DOWNTO 128)  AND X_p( 255 DOWNTO 192)) XOR R( 127 DOWNTO  64);

    -- L2: NOT X3 AND X4
    local_pp(   191 DOWNTO 128) <= (NOT X_p( 255 DOWNTO 192)) AND X_p( 319 DOWNTO 256);
    local_mm(   191 DOWNTO 128) <=      X_m( 255 DOWNTO 192)  AND X_m( 319 DOWNTO 256);
    cross_pm_xor(191 DOWNTO 128) <= ((NOT X_p( 255 DOWNTO 192)) AND X_m( 319 DOWNTO 256)) XOR R( 191 DOWNTO 128);
    cross_mp_xor(191 DOWNTO 128) <= (     X_m( 255 DOWNTO 192)  AND X_p( 319 DOWNTO 256)) XOR R( 191 DOWNTO 128);

    -- L3: NOT X4 AND X0
    local_pp(   255 DOWNTO 192) <= (NOT X_p( 319 DOWNTO 256)) AND X_p(  63 DOWNTO   0);
    local_mm(   255 DOWNTO 192) <=      X_m( 319 DOWNTO 256)  AND X_m(  63 DOWNTO   0);
    cross_pm_xor(255 DOWNTO 192) <= ((NOT X_p( 319 DOWNTO 256)) AND X_m(  63 DOWNTO   0)) XOR R( 255 DOWNTO 192);
    cross_mp_xor(255 DOWNTO 192) <= (     X_m( 319 DOWNTO 256)  AND X_p(  63 DOWNTO   0)) XOR R( 255 DOWNTO 192);

    -- L4: NOT X0 AND X1
    local_pp(   319 DOWNTO 256) <= (NOT X_p(  63 DOWNTO   0)) AND X_p( 127 DOWNTO  64);
    local_mm(   319 DOWNTO 256) <=      X_m(  63 DOWNTO   0)  AND X_m( 127 DOWNTO  64);
    cross_pm_xor(319 DOWNTO 256) <= ((NOT X_p(  63 DOWNTO   0)) AND X_m( 127 DOWNTO  64)) XOR R( 319 DOWNTO 256);
    cross_mp_xor(319 DOWNTO 256) <= (     X_m(  63 DOWNTO   0)  AND X_p( 127 DOWNTO  64)) XOR R( 319 DOWNTO 256);

    -- Row 1 ------------------------------------------------------------ (bits 320..639)
    -- L0
    local_pp(    383 DOWNTO 320) <= (NOT X_p( 447 DOWNTO 384)) AND X_p( 511 DOWNTO 448);
    local_mm(    383 DOWNTO 320) <=      X_m( 447 DOWNTO 384)  AND X_m( 511 DOWNTO 448);
    cross_pm_xor(383 DOWNTO 320) <= ((NOT X_p( 447 DOWNTO 384)) AND X_m( 511 DOWNTO 448)) XOR R( 383 DOWNTO 320);
    cross_mp_xor(383 DOWNTO 320) <= (     X_m( 447 DOWNTO 384)  AND X_p( 511 DOWNTO 448)) XOR R( 383 DOWNTO 320);
    -- L1
    local_pp(    447 DOWNTO 384) <= (NOT X_p( 511 DOWNTO 448)) AND X_p( 575 DOWNTO 512);
    local_mm(    447 DOWNTO 384) <=      X_m( 511 DOWNTO 448)  AND X_m( 575 DOWNTO 512);
    cross_pm_xor(447 DOWNTO 384) <= ((NOT X_p( 511 DOWNTO 448)) AND X_m( 575 DOWNTO 512)) XOR R( 447 DOWNTO 384);
    cross_mp_xor(447 DOWNTO 384) <= (     X_m( 511 DOWNTO 448)  AND X_p( 575 DOWNTO 512)) XOR R( 447 DOWNTO 384);
    -- L2
    local_pp(    511 DOWNTO 448) <= (NOT X_p( 575 DOWNTO 512)) AND X_p( 639 DOWNTO 576);
    local_mm(    511 DOWNTO 448) <=      X_m( 575 DOWNTO 512)  AND X_m( 639 DOWNTO 576);
    cross_pm_xor(511 DOWNTO 448) <= ((NOT X_p( 575 DOWNTO 512)) AND X_m( 639 DOWNTO 576)) XOR R( 511 DOWNTO 448);
    cross_mp_xor(511 DOWNTO 448) <= (     X_m( 575 DOWNTO 512)  AND X_p( 639 DOWNTO 576)) XOR R( 511 DOWNTO 448);
    -- L3
    local_pp(    575 DOWNTO 512) <= (NOT X_p( 639 DOWNTO 576)) AND X_p( 383 DOWNTO 320);
    local_mm(    575 DOWNTO 512) <=      X_m( 639 DOWNTO 576)  AND X_m( 383 DOWNTO 320);
    cross_pm_xor(575 DOWNTO 512) <= ((NOT X_p( 639 DOWNTO 576)) AND X_m( 383 DOWNTO 320)) XOR R( 575 DOWNTO 512);
    cross_mp_xor(575 DOWNTO 512) <= (     X_m( 639 DOWNTO 576)  AND X_p( 383 DOWNTO 320)) XOR R( 575 DOWNTO 512);
    -- L4
    local_pp(    639 DOWNTO 576) <= (NOT X_p( 383 DOWNTO 320)) AND X_p( 447 DOWNTO 384);
    local_mm(    639 DOWNTO 576) <=      X_m( 383 DOWNTO 320)  AND X_m( 447 DOWNTO 384);
    cross_pm_xor(639 DOWNTO 576) <= ((NOT X_p( 383 DOWNTO 320)) AND X_m( 447 DOWNTO 384)) XOR R( 639 DOWNTO 576);
    cross_mp_xor(639 DOWNTO 576) <= (     X_m( 383 DOWNTO 320)  AND X_p( 447 DOWNTO 384)) XOR R( 639 DOWNTO 576);

    -- Row 2 ------------------------------------------------------------ (bits 640..959)
    local_pp(    703 DOWNTO 640) <= (NOT X_p( 767 DOWNTO 704)) AND X_p( 831 DOWNTO 768);
    local_mm(    703 DOWNTO 640) <=      X_m( 767 DOWNTO 704)  AND X_m( 831 DOWNTO 768);
    cross_pm_xor(703 DOWNTO 640) <= ((NOT X_p( 767 DOWNTO 704)) AND X_m( 831 DOWNTO 768)) XOR R( 703 DOWNTO 640);
    cross_mp_xor(703 DOWNTO 640) <= (     X_m( 767 DOWNTO 704)  AND X_p( 831 DOWNTO 768)) XOR R( 703 DOWNTO 640);
    local_pp(    767 DOWNTO 704) <= (NOT X_p( 831 DOWNTO 768)) AND X_p( 895 DOWNTO 832);
    local_mm(    767 DOWNTO 704) <=      X_m( 831 DOWNTO 768)  AND X_m( 895 DOWNTO 832);
    cross_pm_xor(767 DOWNTO 704) <= ((NOT X_p( 831 DOWNTO 768)) AND X_m( 895 DOWNTO 832)) XOR R( 767 DOWNTO 704);
    cross_mp_xor(767 DOWNTO 704) <= (     X_m( 831 DOWNTO 768)  AND X_p( 895 DOWNTO 832)) XOR R( 767 DOWNTO 704);
    local_pp(    831 DOWNTO 768) <= (NOT X_p( 895 DOWNTO 832)) AND X_p( 959 DOWNTO 896);
    local_mm(    831 DOWNTO 768) <=      X_m( 895 DOWNTO 832)  AND X_m( 959 DOWNTO 896);
    cross_pm_xor(831 DOWNTO 768) <= ((NOT X_p( 895 DOWNTO 832)) AND X_m( 959 DOWNTO 896)) XOR R( 831 DOWNTO 768);
    cross_mp_xor(831 DOWNTO 768) <= (     X_m( 895 DOWNTO 832)  AND X_p( 959 DOWNTO 896)) XOR R( 831 DOWNTO 768);
    local_pp(    895 DOWNTO 832) <= (NOT X_p( 959 DOWNTO 896)) AND X_p( 703 DOWNTO 640);
    local_mm(    895 DOWNTO 832) <=      X_m( 959 DOWNTO 896)  AND X_m( 703 DOWNTO 640);
    cross_pm_xor(895 DOWNTO 832) <= ((NOT X_p( 959 DOWNTO 896)) AND X_m( 703 DOWNTO 640)) XOR R( 895 DOWNTO 832);
    cross_mp_xor(895 DOWNTO 832) <= (     X_m( 959 DOWNTO 896)  AND X_p( 703 DOWNTO 640)) XOR R( 895 DOWNTO 832);
    local_pp(    959 DOWNTO 896) <= (NOT X_p( 703 DOWNTO 640)) AND X_p( 767 DOWNTO 704);
    local_mm(    959 DOWNTO 896) <=      X_m( 703 DOWNTO 640)  AND X_m( 767 DOWNTO 704);
    cross_pm_xor(959 DOWNTO 896) <= ((NOT X_p( 703 DOWNTO 640)) AND X_m( 767 DOWNTO 704)) XOR R( 959 DOWNTO 896);
    cross_mp_xor(959 DOWNTO 896) <= (     X_m( 703 DOWNTO 640)  AND X_p( 767 DOWNTO 704)) XOR R( 959 DOWNTO 896);

    -- Row 3 ------------------------------------------------------------ (bits 960..1279)
    local_pp(   1023 DOWNTO 960) <= (NOT X_p(1087 DOWNTO 1024)) AND X_p(1151 DOWNTO 1088);
    local_mm(   1023 DOWNTO 960) <=      X_m(1087 DOWNTO 1024)  AND X_m(1151 DOWNTO 1088);
    cross_pm_xor(1023 DOWNTO 960) <= ((NOT X_p(1087 DOWNTO 1024)) AND X_m(1151 DOWNTO 1088)) XOR R(1023 DOWNTO 960);
    cross_mp_xor(1023 DOWNTO 960) <= (     X_m(1087 DOWNTO 1024)  AND X_p(1151 DOWNTO 1088)) XOR R(1023 DOWNTO 960);
    local_pp(   1087 DOWNTO 1024) <= (NOT X_p(1151 DOWNTO 1088)) AND X_p(1215 DOWNTO 1152);
    local_mm(   1087 DOWNTO 1024) <=      X_m(1151 DOWNTO 1088)  AND X_m(1215 DOWNTO 1152);
    cross_pm_xor(1087 DOWNTO 1024) <= ((NOT X_p(1151 DOWNTO 1088)) AND X_m(1215 DOWNTO 1152)) XOR R(1087 DOWNTO 1024);
    cross_mp_xor(1087 DOWNTO 1024) <= (     X_m(1151 DOWNTO 1088)  AND X_p(1215 DOWNTO 1152)) XOR R(1087 DOWNTO 1024);
    local_pp(   1151 DOWNTO 1088) <= (NOT X_p(1215 DOWNTO 1152)) AND X_p(1279 DOWNTO 1216);
    local_mm(   1151 DOWNTO 1088) <=      X_m(1215 DOWNTO 1152)  AND X_m(1279 DOWNTO 1216);
    cross_pm_xor(1151 DOWNTO 1088) <= ((NOT X_p(1215 DOWNTO 1152)) AND X_m(1279 DOWNTO 1216)) XOR R(1151 DOWNTO 1088);
    cross_mp_xor(1151 DOWNTO 1088) <= (     X_m(1215 DOWNTO 1152)  AND X_p(1279 DOWNTO 1216)) XOR R(1151 DOWNTO 1088);
    local_pp(   1215 DOWNTO 1152) <= (NOT X_p(1279 DOWNTO 1216)) AND X_p(1023 DOWNTO 960);
    local_mm(   1215 DOWNTO 1152) <=      X_m(1279 DOWNTO 1216)  AND X_m(1023 DOWNTO 960);
    cross_pm_xor(1215 DOWNTO 1152) <= ((NOT X_p(1279 DOWNTO 1216)) AND X_m(1023 DOWNTO 960)) XOR R(1215 DOWNTO 1152);
    cross_mp_xor(1215 DOWNTO 1152) <= (     X_m(1279 DOWNTO 1216)  AND X_p(1023 DOWNTO 960)) XOR R(1215 DOWNTO 1152);
    local_pp(   1279 DOWNTO 1216) <= (NOT X_p(1023 DOWNTO 960)) AND X_p(1087 DOWNTO 1024);
    local_mm(   1279 DOWNTO 1216) <=      X_m(1023 DOWNTO 960)  AND X_m(1087 DOWNTO 1024);
    cross_pm_xor(1279 DOWNTO 1216) <= ((NOT X_p(1023 DOWNTO 960)) AND X_m(1087 DOWNTO 1024)) XOR R(1279 DOWNTO 1216);
    cross_mp_xor(1279 DOWNTO 1216) <= (     X_m(1023 DOWNTO 960)  AND X_p(1087 DOWNTO 1024)) XOR R(1279 DOWNTO 1216);

    -- Row 4 ------------------------------------------------------------ (bits 1280..1599)
    local_pp(   1343 DOWNTO 1280) <= (NOT X_p(1407 DOWNTO 1344)) AND X_p(1471 DOWNTO 1408);
    local_mm(   1343 DOWNTO 1280) <=      X_m(1407 DOWNTO 1344)  AND X_m(1471 DOWNTO 1408);
    cross_pm_xor(1343 DOWNTO 1280) <= ((NOT X_p(1407 DOWNTO 1344)) AND X_m(1471 DOWNTO 1408)) XOR R(1343 DOWNTO 1280);
    cross_mp_xor(1343 DOWNTO 1280) <= (     X_m(1407 DOWNTO 1344)  AND X_p(1471 DOWNTO 1408)) XOR R(1343 DOWNTO 1280);
    local_pp(   1407 DOWNTO 1344) <= (NOT X_p(1471 DOWNTO 1408)) AND X_p(1535 DOWNTO 1472);
    local_mm(   1407 DOWNTO 1344) <=      X_m(1471 DOWNTO 1408)  AND X_m(1535 DOWNTO 1472);
    cross_pm_xor(1407 DOWNTO 1344) <= ((NOT X_p(1471 DOWNTO 1408)) AND X_m(1535 DOWNTO 1472)) XOR R(1407 DOWNTO 1344);
    cross_mp_xor(1407 DOWNTO 1344) <= (     X_m(1471 DOWNTO 1408)  AND X_p(1535 DOWNTO 1472)) XOR R(1407 DOWNTO 1344);
    local_pp(   1471 DOWNTO 1408) <= (NOT X_p(1535 DOWNTO 1472)) AND X_p(1599 DOWNTO 1536);
    local_mm(   1471 DOWNTO 1408) <=      X_m(1535 DOWNTO 1472)  AND X_m(1599 DOWNTO 1536);
    cross_pm_xor(1471 DOWNTO 1408) <= ((NOT X_p(1535 DOWNTO 1472)) AND X_m(1599 DOWNTO 1536)) XOR R(1471 DOWNTO 1408);
    cross_mp_xor(1471 DOWNTO 1408) <= (     X_m(1535 DOWNTO 1472)  AND X_p(1599 DOWNTO 1536)) XOR R(1471 DOWNTO 1408);
    local_pp(   1535 DOWNTO 1472) <= (NOT X_p(1599 DOWNTO 1536)) AND X_p(1343 DOWNTO 1280);
    local_mm(   1535 DOWNTO 1472) <=      X_m(1599 DOWNTO 1536)  AND X_m(1343 DOWNTO 1280);
    cross_pm_xor(1535 DOWNTO 1472) <= ((NOT X_p(1599 DOWNTO 1536)) AND X_m(1343 DOWNTO 1280)) XOR R(1535 DOWNTO 1472);
    cross_mp_xor(1535 DOWNTO 1472) <= (     X_m(1599 DOWNTO 1536)  AND X_p(1343 DOWNTO 1280)) XOR R(1535 DOWNTO 1472);
    local_pp(   1599 DOWNTO 1536) <= (NOT X_p(1343 DOWNTO 1280)) AND X_p(1407 DOWNTO 1344);
    local_mm(   1599 DOWNTO 1536) <=      X_m(1343 DOWNTO 1280)  AND X_m(1407 DOWNTO 1344);
    cross_pm_xor(1599 DOWNTO 1536) <= ((NOT X_p(1343 DOWNTO 1280)) AND X_m(1407 DOWNTO 1344)) XOR R(1599 DOWNTO 1536);
    cross_mp_xor(1599 DOWNTO 1536) <= (     X_m(1343 DOWNTO 1280)  AND X_p(1407 DOWNTO 1344)) XOR R(1599 DOWNTO 1536);

    -- =============================================================================
    -- DOM register stage. Register cross terms (DOM property), local terms (cycle
    -- alignment), and X_p / X_m (so the final XOR sees the OLD input matching
    -- the AND result, not the NEW input that has already advanced).
    -- =============================================================================
    DOM_REG : PROCESS (CLK)
    BEGIN
        IF rising_edge(CLK) THEN
            IF (RESET = '1') THEN
                cross_pm_reg <= (OTHERS => '0');
                cross_mp_reg <= (OTHERS => '0');
                local_pp_reg <= (OTHERS => '0');
                local_mm_reg <= (OTHERS => '0');
                X_p_reg      <= (OTHERS => '0');
                X_m_reg      <= (OTHERS => '0');
            ELSE
                cross_pm_reg <= cross_pm_xor;
                cross_mp_reg <= cross_mp_xor;
                local_pp_reg <= local_pp;
                local_mm_reg <= local_mm;
                X_p_reg      <= X_p;
                X_m_reg      <= X_m;
            END IF;
        END IF;
    END PROCESS DOM_REG;

    -- =============================================================================
    -- Final share-wise output.
    --
    -- Recombine AND result on each share:
    --   z_p = local_pp XOR (cross_pm XOR r)
    --   z_m = local_mm XOR (cross_mp XOR r)
    -- Then add X[L] back on each share:
    --   Y_p = X_p XOR z_p
    --   Y_m = X_m XOR z_m
    --
    -- Sanity: (Y_p XOR Y_m) = X_p XOR X_m XOR local_pp XOR local_mm
    --                                          XOR cross_pm XOR cross_mp
    --                       = X[L] XOR (NOT X[L+1] AND X[L+2])   (r cancels)
    --                       which is the unmasked chi result.
    -- =============================================================================
    Y_p <= X_p_reg XOR local_pp_reg XOR cross_pm_reg;
    Y_m <= X_m_reg XOR local_mm_reg XOR cross_mp_reg;

END Behavioral;
