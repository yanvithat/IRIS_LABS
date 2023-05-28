`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2023 18:36:55
// Design Name: 
// Module Name: Tb_FSM_IRIS
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
module Tb_FSM_IRIS();
reg clk,reset,in;
wire out;
FSM_IRIS dut(clk, reset, in, out);
 
initial 
begin
clk = 1;
reset=0;
forever #10 clk = ~clk;
end
        
initial
begin
#10
reset = 1;
#10
in=1'b0;
#20
in=1'b0;
#20
in=1'b1;
end
endmodule
