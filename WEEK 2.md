##
module bit2_full_adder;
    input a0,a1,b0,b1;
    output sum0,sum1,cout;
  
    wire x,y,z,u;
 
    half_add h1(.a(a0),.b(b0),.s(sum0),.c(x));
    half_add h2(.a(a1),.b(b1),.s(y),.c(z));
    half_add h3(.a(y),.b(x),.s(sum1),.c(u));
    or o1(cout,u,z);

endmodule: bit2_full_adder


module half_add(a,b,s,c);
    input a,b;
    output s,c;

    xor x1(s,a,b);
    and a1(c,a,b);

endmodule: half_add

##test_bench
module bit_full_adder_tb;
    reg a0,a1,b0,b1;
    wire sum0,sum1,cout;
    
    bit2_full_adder fa1(.a0(a0),.b0(b0),.a1(a1),.b1(b1));
    
    initial begin $dumpfile("bit2_full_adder.vcd"); $dumpvars(); end 
    initial begin a0 = 1'b1; #4; a0 = 1'b0; #10 $stop(); end
    initial begin a1 = 1'b1; forever #2 a1 = ~a1; end
    initial begin b0 = 1'b1; forever #2 b0 = ~b0; end
    initial begin b1 = 1'b1; forever #2 b1 = ~b1; $stop; end
    initial begin $monitor("time = %0d A0 = %b A1 = %b B0 = %b B1 = %b Sum0 = %b Sum1 = %b Cout = %b",$time,a0,a1,b0,b1,sum0,sum1,cout); end
    
endmodule : bit_full_adder_tb

## Using Verilog,the implementation of 2-bit adder is done.


##SIMULATION IMAGES:
![](https://user-images.githubusercontent.com/115354310/195994807-28a136ef-54b2-4207-b835-3e6832603392.jpeg)
![](https://user-images.githubusercontent.com/115354310/195994874-40644627-e606-4dfb-9568-8be1a1da62e2.jpeg)



