`timescale 1ps/1ps
module clk_mux (
     input  logic select_i
    ,input  logic clk1_i
    ,input  logic clk2_i
    ,input  logic reset_i   // active-low
    ,output logic clk_o
);

    logic sync1_mid, sync1_o;
    logic sync2_mid, sync2_o;

    logic i_and1, i_and2;
    assign i_and1 = ~select_i & ~sync2_o;
    assign i_and2 =  select_i & ~sync1_o;

    // Chain 1: clocked by clk1
    D_FF clk1_dff      (.d(i_and1),   .q(sync1_mid), .reset(reset_i), .clk(clk1_i));
    D_FF clk1_dff_sync (.d(sync1_mid), .q(sync1_o),  .reset(reset_i), .clk(clk1_i));

    // Chain 2: clocked by clk2
    D_FF clk2_dff      (.d(i_and2),   .q(sync2_mid), .reset(reset_i), .clk(clk2_i));
    D_FF clk2_dff_sync (.d(sync2_mid), .q(sync2_o),  .reset(reset_i), .clk(clk2_i));

    logic o_and1, o_and2;
    assign o_and1 = sync1_o & clk1_i;
    assign o_and2 = sync2_o & clk2_i;

    assign clk_o = o_and1 | o_and2;

endmodule
