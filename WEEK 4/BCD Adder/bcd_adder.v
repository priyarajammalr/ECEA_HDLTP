`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2022 01:08:42
// Design Name: 
// Module Name: bcd_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module bcd_adder(a,b,cin,sum,cout);

input [3:0] a,b;
input cin;
output reg [3:0] sum;
output reg cout;
reg [4:0] x;

always @(a or b or cin)
begin 
    x = a + b + cin;
    if (x>9)
    begin
        x = x + 6;
        cout = 1;
        sum = x[3:0];
     end
     else 
     begin
        cout = 0;
        sum = x[3:0];
      end
end
            
endmodule
