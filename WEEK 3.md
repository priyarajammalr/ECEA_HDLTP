module gate_level_2bitfa(
    input A0, input A1, input B0, input B1, input C0,
    output S0, output S1, output Cout
    );
    wire x1,x2,x3,x4,x5,x6,x7;
    //least significant bit
    xor x1(x1,A0,B0);
    and a1(x2,x1,C0);
    and a2(x3,A0,B0);
    xor x2(S0,x1,C0);
    or o1(x4,x2,x3);
    //upcoming bit
    xor x3(x5,A1,B1);
    and a3(x6,x4,x5);
    and a4(x7,A1,B1);
    xor x4(S1,x5,x4);
    or o2(Cout,x6,x7);
endmodule

======================================

module gate_level_2bitfa_tb;
    reg A0,A1,B0,B1,C0;
    wire S0,S1,Cout;
    
    gate_level_2bitfa inst0(S0,S1,Cout,A0,A1,B0,B1,C0);
    initial begin $dumpfile("gate_level_2bitfa.vcd"); $dumpvars(); end
    initial begin 
      A0 = 1; B0 = 1; C0 = 1; A1 = 1; B1 = 1;
      #1 A0 = 0; B0 = 0; C0 = 0; A1 = 0; B1 = 0;
    end
    initial begin 
       $monitor("T = %t | A0 = %b | B0 = %b | C0 = %b | A1 = %b | B1 = %b",$time,A0,B0,C0,A1,B1);
    end 
    
endmodule: gate_level_2bitfa_tb

=========================================

module gate_level_2bitfa1(
    input A0, input A1, input B0, input B1, input C0,
    output S0, output S1, output Cout
    );
    wire x1,x2,x3,x4,x5,x6,x7;
    //least significant bit
    xor (x1,A0,B0);
    and (x2,x1,C0);
    and (x3,A0,B0);
    xor (S0,x1,C0);
    or (x4,x2,x3);
    //upcoming bit
    xor (x5,A1,B1);
    and (x6,x4,x5);
    and (x7,A1,B1);
    xor (S1,x5,x4);
    or (Cout,x6,x7);
endmodule

=============================================

module gate_level_2bitfa_tb;
    reg A0,A1,B0,B1,C0;
    wire S0,S1,Cout;
    
    gate_level_2bitfa1 inst0(.A0(A0),.A1(A1),.B0(B0),.B1(B1),.C0(C0),.S0(S0),.S1(S1),.Cout(Cout));
    initial begin $dumpfile("gate_level_2bitfa1.vcd"); $dumpvars(); end
    initial begin 
      A0 = 1; B0 = 1; C0 = 1; A1 = 1; B1 = 1;
      #1  A0 = 0; B0 = 1; C0 = 0; A1 = 1; B1 = 1;
    end
    initial begin 
       $monitor("T = %0d | A0 = %b | B0 = %b | C0 = %b | A1 = %b | B1 = %b | S0 = %b | S1 = %b | Cout =%b",$time,A0,B0,C0,A1,B1,S0,S1,Cout);
    end 
    
endmodule: gate_level_2bitfa_tb

=============================================

module dataflow_fa(
    input a0, input a1,input b0, 
    input b1,input c0, output s0, 
    output s1, output cout
    );
    assign s0 = a0^b0^c0;
    assign c1 = (a0&b0)|(c0&(a0^b0));
    assign s1 = a1^b1^c1;
    assign cout = (a1&b1)|(c1&(a1^b1));
endmodule

===========================================

module dataflow_fa_tb;
    reg a0,a1,b0,b1,c0;
    wire s0,s1,cout;
    
    dataflow_fa fa1(.a0(a0),.a1(a1),.b0(b0),.b1(b1),.c0(c0),.s0(s0),.s1(s0),.cout(cout));
    
    initial begin $dumpfile("dataflow_fa.vcd"); $dumpvars(); end
    initial begin 
      a0 = 1; b0 = 1; c0 = 1; a1 = 1; b1 = 1;
    end
    initial begin 
       $monitor("T = %0d | a0 = %b | b0 = %b | c0 = %b | a1 = %b | b1 = %b | s0 = %b | s1 = %b | cout = %b",$time,a0,b0,c0,a1,b1,s0,s1,cout);
    end 
 endmodule: dataflow_fa_tb
 
==================================================

`timescale 1ns / 1ps 
module behavioural_fa( A0, A1, B0 , B1, C0, S0,S1, Cout);

 input wire A0,A1, B0,B1,C0;
 output reg S0,S1, Cout;

  always @(A0 or A1 or B0 or B1 or C0)
  begin 
   S0 = A0^B0 ^C0;
   S1 = A1^B1^((A0&B0)|(C0&(A0^B0)));
   Cout =  (A1&B1)|(((A0&B0)|(C0&(A0^B0)))&(A1^B1));
  end
endmodule

==========================================================

`timescale 1ns / 1ps
module top;
  reg  A0_input, A1_input,B0_input,B1_input, C0_input;
  wire Sum0,Sum1,C_output;  
  behavioural_fa instantiation(.A0(A0_input), .A1(A1_input), .B0(B0_input), .B1(B1_input), .C0(C0_input),.S0(Sum0),.S1(Sum1),.Cout(C_output));

  initial
    begin
      $dumpfile("xyz.vcd");
      $dumpvars;
      A0_input =0;A1_input = 0;B0_input = 0;B1_input = 0;C0_input = 0;#100 $finish;
    end
always #160 A0_input=~A0_input;
always #80 B0_input=~B0_input;
always #40 C0_input=~C0_input;
always #20 A1_input = ~A1_input;
always #10 B1_input = ~B1_input;
//display output if there's a change in the input event
  always @(A0_input or B0_input or C0_input,A1_input,B1_input)
      $monitor("At TIME(in ns)=%t, A0=%d B0=%d C0=%d A1 = %d B1 = %d Sum0 = %d Sum1 = %d Carry = %d", $time, A0_input, B0_input, C0_input,A1_input,B1_input, Sum0,Sum1, C_output);

endmodule

=================================================================

## RTL DIAGRAM SIMULATION
![WhatsApp Image 2022-10-23 at 11 59 55 AM](https://user-images.githubusercontent.com/115354310/197408774-f1dbcd6b-db66-4a79-a165-26ec27e4cddd.jpeg)


## GATE LEVEL
![WhatsApp Image 2022-10-23 at 11 58 39 AM](https://user-images.githubusercontent.com/115354310/197408823-1eafa1f4-2d16-42aa-bd1d-d4d0ac6a7f67.jpeg)

## DATA FLOW
![WhatsApp Image 2022-10-23 at 11 58 56 AM](https://user-images.githubusercontent.com/115354310/197408866-54dc667c-2eba-4e72-8396-0b9681ed40f0.jpeg)

## BEHAVORIAL
![WhatsApp Image 2022-10-23 at 11 59 15 AM](https://user-images.githubusercontent.com/115354310/197408917-a7b74d1e-8c83-42da-8da4-c0843b2ad7ca.jpeg)



