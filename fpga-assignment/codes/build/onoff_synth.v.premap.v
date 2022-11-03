/* Generated by Yosys 0.9+2406 (git sha1 ca763e6d5, gcc 10.2.1-6 -fPIC -Os) */

(* top =  1  *)
(* src = "/data/data/com.termux/files/home/fpga-examples/blink/onoff.v:4.1-9.11" *)
module boolean(A, B, C, D, F);
  wire _0_;
  wire _1_;
  wire _2_;
  wire _3_;
  wire _4_;
  (* src = "/data/data/com.termux/files/home/fpga-examples/blink/onoff.v:5.11-5.12" *)
  input A;
  (* src = "/data/data/com.termux/files/home/fpga-examples/blink/onoff.v:5.13-5.14" *)
  input B;
  (* src = "/data/data/com.termux/files/home/fpga-examples/blink/onoff.v:5.15-5.16" *)
  input C;
  (* src = "/data/data/com.termux/files/home/fpga-examples/blink/onoff.v:5.17-5.18" *)
  input D;
  (* src = "/data/data/com.termux/files/home/fpga-examples/blink/onoff.v:6.12-6.13" *)
  output F;
  (* keep = 32'd1 *)
  inpad #(
    .IO_LOC("X4Y3"),
    .IO_PAD("4"),
    .IO_TYPE("BIDIR")
  ) _5_ (
    .P(A),
    .Q(_0_)
  );
  (* keep = 32'd1 *)
  inpad #(
    .IO_LOC("X6Y3"),
    .IO_PAD("5"),
    .IO_TYPE("BIDIR")
  ) _6_ (
    .P(B),
    .Q(_1_)
  );
  (* keep = 32'd1 *)
  inpad #(
    .IO_LOC("X8Y3"),
    .IO_PAD("6"),
    .IO_TYPE("BIDIR")
  ) _7_ (
    .P(C),
    .Q(_2_)
  );
  (* keep = 32'd1 *)
  inpad #(
    .IO_LOC("X1Y28"),
    .IO_PAD("7"),
    .IO_TYPE("SDIOMUX")
  ) _8_ (
    .P(D),
    .Q(_3_)
  );
  (* keep = 32'd1 *)
  outpad #(
    .IO_LOC("X2Y31"),
    .IO_PAD("21"),
    .IO_TYPE("SDIOMUX")
  ) _9_ (
    .A(_4_),
    .P(F)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/data/data/com.termux/files/home/symbiflow/bin/../share/yosys/quicklogic/pp3_lut_map.v:40.63-40.132" *)
  LUT4 #(
    .EQN("(I0*~I1*I2*~I3)+(~I0*~I1*~I2*I3)+(~I0*~I1*I2*I3)+(I0*~I1*I2*I3)"),
    .INIT(16'h3120)
  ) F_LUT4_O (
    .I0(_3_),
    .I1(_0_),
    .I2(_1_),
    .I3(_2_),
    .O(_4_)
  );
endmodule
