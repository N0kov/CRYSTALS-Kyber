`timescale 1ns / 1ps
module Kyber_top #(
    parameter D_SEED = 256'h 2D7F73369973CD2D0348B1CC251AD82FDD1A6BDBE4106D0CAA9476B0A035997C,
    parameter M_SEED = 256'h 157699F676FE09CC74A8A9A379FE0EC8137F4D87E1FAC806A4BBBEA5F7037C14
)(
    input clk, rst, start,
    input [2:0] k,
    output ready_pk, ready_c,
    output req_pk, req_c,
    output valid_server, valid_client,
    output [31:0] dout_server, dout_client
);

Kyber_Server #(.D_SEED(D_SEED)) S(
.clk(clk),
.rst(rst),
.start(start),
.wen(valid_client),
.k(k),
.din(dout_client),
.ready_pk(ready_pk),
.ready_c(ready_c),
.req_pk(req_pk),
.req_c(req_c),
.valid(valid_server),
.dout(dout_server)
);
Kyber_Client #(.M_SEED(M_SEED)) C(
.clk(clk),
.rst(rst),
.start(start),
.wen(valid_server),
.k(k),
.din(dout_server),
.ready_pk(ready_pk),
.ready_c(ready_c),
.req_pk(req_pk),
.req_c(req_c),
.valid(valid_client),
.dout(dout_client)
);

endmodule