module binary
(
    input W, CLK, RST,
    output Z, [2:0]S
);

wire [2:0] s; //"state"
wire [2:0] n; //"next"

dff B0
(
    .Default(1'b0),
    .D(n[0]),
    .clk(CLK),
    .Q(s[0]),
    .reset(RST)
);

dff B1
(
    .Default(1'b0),
    .D(n[1]),
    .clk(CLK),
    .Q(s[1]),
    .reset(RST)
);

dff B2
(
    .Default(1'b0),
    .D(n[2]),
    .clk(CLK),
    .Q(s[2]),
    .reset(RST)
);

assign n[0] = (s[2] & ~W) | (s[1] & s[0] & ~W) | (s[1] & ~s[0] & W) | (~s[2] & ~s[1] & ~s[0]) | (~s[1] & s[0] & W);
assign n[1] = (~s[1] & s[0]) | (~s[2] & ~s[0] & W) | (s[1] & ~s[0]);
assign n[2] = (s[1] & s[0] & W) | (s[2] & W);

assign Z = (s == 3'b010) | (s == 3'b100) ; 
assign S = s;

endmodule