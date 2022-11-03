

//code for boolean expression
module boolean(
    input A,B,C,D,
    output F
);
 assign F=((!A&&B&&D)||(!A&&B&&C)||(!D&&!A&&C));
 endmodule




