
module Counter(WO, XO, YO, ZO, ISO, clk_0, R);
  output WO,  XO,  YO,  ZO,  ISO;
  input clk_0, R;
  wire IS_Q, IS_Q_inv, Z_Q, Z_Q_inv, Y_Q, Y_Q_inv, X_Q, X_Q_inv, W_Q, W_Q_inv;
  DflipFlop IS(IS_Q, IS_Q_inv, Z_Q_inv, IS_Q_inv, R, , );
  assign ISO = IS_Q;
  DflipFlop Z(Z_Q, Z_Q_inv, Y_Q_inv, Z_Q_inv, R, , );
  assign ZO = Z_Q;
  DflipFlop Y(Y_Q, Y_Q_inv, X_Q_inv, Y_Q_inv, R, , );
  assign YO = Y_Q;
  DflipFlop X(X_Q, X_Q_inv, W_Q_inv, X_Q_inv, R, , );
  assign XO = X_Q;
  DflipFlop W(W_Q, W_Q_inv, clk_0, W_Q_inv, R, , );
  assign WO = W_Q;
endmodule


module EulerTotient(R, clk_0, A, B, C, D, E, F, G);
  output G,  A,  B,  C,  D,  E,  F;
  input R, clk_0;
  wire \Untitled-Circuit_0_out_0 , \Untitled-Circuit_0_out_1 , \Untitled-Circuit_0_out_2 , \Untitled-Circuit_0_out_3 , \Untitled-Circuit_0_out_4 , xor_0_out, xor_1_out, xor_3_out, xor_2_out;
  wire [3:0] Splitter_1_cmb;
  wire [7:0] Rom_0_DataOut;
  Counter \Untitled-Circuit_0 (\Untitled-Circuit_0_out_0 , \Untitled-Circuit_0_out_1 , \Untitled-Circuit_0_out_2 , \Untitled-Circuit_0_out_3 , \Untitled-Circuit_0_out_4 , clk_0, R);
  assign xor_0_out = \Untitled-Circuit_0_out_3  ^ \Untitled-Circuit_0_out_4 ;
  assign Splitter_1_cmb = {xor_0_out,xor_1_out,xor_2_out,xor_3_out};
  Rom0 Rom_0(Rom_0_DataOut, Splitter_1_cmb, );
  
  
      always @ (*)
        $display("SevenSegDisplay:SevenSegDisplay_0.abcdefg. = %b%b%b%b%b%b%b%b}",
                 Rom_0_DataOut[6], Rom_0_DataOut[5], Rom_0_DataOut[4], Rom_0_DataOut[3], Rom_0_DataOut[2], Rom_0_DataOut[1], Rom_0_DataOut[0], );
  assign A = Rom_0_DataOut[6];
  assign B = Rom_0_DataOut[5];
  assign C = Rom_0_DataOut[4];
  assign D = Rom_0_DataOut[3];
  assign E = Rom_0_DataOut[2];
  assign F = Rom_0_DataOut[1];
  assign G = Rom_0_DataOut[0];
  assign xor_1_out = \Untitled-Circuit_0_out_2  ^ \Untitled-Circuit_0_out_4 ;
  assign xor_3_out = \Untitled-Circuit_0_out_0  ^ \Untitled-Circuit_0_out_4 ;
  assign xor_2_out = \Untitled-Circuit_0_out_1  ^ \Untitled-Circuit_0_out_4 ;
endmodule

module DflipFlop(q, q_inv, clk, d, a_rst, pre, en);
    parameter WIDTH = 1;
    output reg [WIDTH-1:0] q, q_inv;
    input clk, a_rst, pre, en;
    input [WIDTH-1:0] d;

    always @ (posedge clk or posedge a_rst)
    if (a_rst) begin
        q <= 'b0;
        q_inv <= 'b1;
    end else if (en == 0) ;
    else begin
        q <= d;
        q_inv <= ~d;
    end
endmodule
    
    module Rom0(dout, addr, en);
    parameter WIDTH = 8;
    parameter ADDR = 4;
    output reg [WIDTH-1:0] dout;
    input [ADDR-1:0] addr;
    input en;

    always @ (*) begin
        if (en == 0)
        dout = {WIDTH{1'bz}};
        else
        case (addr)
            0 : dout = 48;
        1 : dout = 48;
        2 : dout = 109;
        3 : dout = 109;
        4 : dout = 51;
        5 : dout = 109;
        6 : dout = 95;
        7 : dout = 51;
        8 : dout = 95;
        9 : dout = 51;
        10 : dout = 119;
        11 : dout = 51;
        12 : dout = 78;
        13 : dout = 95;
        14 : dout = 127;
        15 : dout = 127;
      endcase
    end
    endmodule
    