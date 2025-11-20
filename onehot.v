module onehot
(
    input W, CLK, RST,
    output Z, [4:0]S
);

wire An, Bn, Cn, Dn, En; //n for "next"
wire As, Bs, Cs, Ds, Es; //s for "state"

dff A
(
    .Default(1'b1),
    .D(An),
    .clk(CLK),
    .reset(RST),
    .Q(As)
);

dff B 
(
    .Default(1'b0),
    .D(Bn),
    .clk(CLK),
    .reset(RST),
    .Q(Bs)
);

dff C 
(
    .Default(1'b0),
    .D(Cn),
    .clk(CLK),
    .reset(RST),
    .Q(Cs)
);

dff D 
(
    .Default(1'b0),
    .D(Dn),
    .clk(CLK),
    .reset(RST),
    .Q(Ds)
);

dff E 
(
    .Default(1'b0),
    .D(En),
    .clk(CLK),
    .reset(RST),
    .Q(Es)
);

assign An = 1'b0;
assign Bn = (As | Ds | Es) & ~W;
assign Cn = (Bs | Cs)      & ~W;
assign Dn = (As | Bs | Cs) & W;
assign En = (Ds | Es)      & W;

assign Z = Cs | Es;
assign S[0] = As;
assign S[1] = Bs;
assign S[2] = Cs;
assign S[3] = Ds;
assign S[4] = Es;

endmodule