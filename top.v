module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);

onehot OHS
(
    .W(sw),
    .CLK(btnC),
    .RST(btnU),
    .Z(led[0]),
    .S(led[6:2])
);

binary BS
(
    .W(sw),
    .CLK(btnC),
    .RST(btnU),
    .Z(led[1]),
    .S(led[9:7])
);

endmodule