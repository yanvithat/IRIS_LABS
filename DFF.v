`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2023 18:20:43
// Design Name: 
// Module Name: Dff
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
module Dff(input clk,reset,D,output Qbar,output reg Q);
assign Qbar = ~Q;
always @(posedge clk or negedge reset)
begin
if(reset==0)       //Asynchronous active low reset
Q<=1'b0;
else
Q<=D;
end
endmodule
