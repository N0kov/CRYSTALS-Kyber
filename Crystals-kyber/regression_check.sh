#!/bin/bash
# Plan A regression check.
# Runs the full Kyber_top_protected KEM sim at k=4, then diffs the captured
# server/client output streams against the saved gold reference. Any
# mismatch (including line count) fails the run.

PROJ=/data/claude_sandbox/CRYSTALS-Kyber/Crystals-kyber
GOLD=$PROJ/regression_gold
RUN=$PROJ/Crystals-kyber.sim/sim_tb_kyber_prot/behav/xsim
TCL=$PROJ/sim_tb_Kyber_top_protected.tcl

echo "[regression] running sim..."
source /data/home/lincoln/2025.2/Vivado/settings64.sh
# Stale output files would let a failed sim look like a pass. Wipe them.
rm -f $RUN/output_ser_prot.txt $RUN/output_cli_prot.txt
( cd $PROJ && vivado -mode batch -source $TCL ) > $PROJ/regression_run.log 2>&1 || true

# Pull stop status
if grep -q "FAIL: simulation timeout" $PROJ/regression_run.log; then
    echo "[regression] FAIL: sim timed out"
    exit 1
fi

# Detect compile / elaborate failures (output files won't be created if these fail)
if grep -qE "^ERROR: \[(VRFC|XSIM|USF-XSim|Vivado) " $PROJ/regression_run.log; then
    echo "[regression] FAIL: simulation produced compile/elaborate errors:"
    grep -E "^ERROR: \[(VRFC|XSIM|USF-XSim|Vivado) " $PROJ/regression_run.log | head -10
    exit 4
fi

# Detect missing output files (would happen if sim aborted before writing)
if [ ! -s $RUN/output_ser_prot.txt ] || [ ! -s $RUN/output_cli_prot.txt ]; then
    echo "[regression] FAIL: output file(s) missing or empty after sim"
    ls -la $RUN/output_ser_prot.txt $RUN/output_cli_prot.txt 2>&1 | head -5
    exit 5
fi

# Diff server stream
if ! diff -q $RUN/output_ser_prot.txt $GOLD/k4_ref_ser.txt >/dev/null; then
    echo "[regression] FAIL: server stream differs from gold"
    diff $RUN/output_ser_prot.txt $GOLD/k4_ref_ser.txt | head -40
    exit 2
fi

# Diff client stream
if ! diff -q $RUN/output_cli_prot.txt $GOLD/k4_ref_cli.txt >/dev/null; then
    echo "[regression] FAIL: client stream differs from gold"
    diff $RUN/output_cli_prot.txt $GOLD/k4_ref_cli.txt | head -40
    exit 3
fi

echo "[regression] PASS: server and client streams match gold (400/400 lines, identical)"
exit 0
