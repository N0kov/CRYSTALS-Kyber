A (mostly) first-order secure implementation of CRYSTALS-Kyber.
There are a few present leaks in the design, but they most-all of it is functionally secure.
What could be verified was verified with cocoAlma, however the FSM design
of the project let it to be dificult to verify in full, as most maskVerif style
tools don't play nice with them. Even cocoAlma which was designed to verify them
still didn't work for the more arithmetic portions of the design.

The majority of the relevant code can be found in Crystals-kyber.srcs/new_hardware.
""/sources_1/imports/* has a mix of new and imported code, and ""/sim_1 has testbenches.
The main regression files tested against are in regression/gold.

This is based on the paper which can be found here: https://tches.iacr.org/index.php/TCHES/article/view/8797/8397