``timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2023 18:33:18
// Design Name: 
// Module Name: FSM_IRIS
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
module FSM_IRIS(input clk,reset,in,
output reg out);
parameter S1=2'b00,S2=2'b01,S3=2'b10,S4=2'b11;
reg [2:0]ns;
always@(posedge clk)
begin
case(ns)
S1: ns<= ((in==1'b1)? S1:S2);
S2: ns<= ((in==1'b1)? S2:S3);
S3: ns<= ((in==1'b1)? S3:S4);
S4: ns<= ((in==1'b1)? S1:S2);
default: ns<=S1;
endcase
end

always@(ns)
begin
case(ns)
S1:out=1'b0;
S2:out=1'b0;
S3:out=1'b1;
S4:out=1'b1;
endcase
end

endmodule

