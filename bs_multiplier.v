`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2025 04:35:21 PM
// Design Name: 
// Module Name: barrel_multiplier
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


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: <Your Institute or Company Name>
// Engineer: <Your Name>
// 
// Create Date: 2025-10-31
// Design Name: Barrel Shifter Based Multiplier
// Module Name: barrel_multiplier
// Target Devices: ZedBoard (XC7Z020-1CLG484C)
// Tool Versions: Vivado 2023.x+
// Description: 8-bit barrel shifter-based combinational multiplier
//////////////////////////////////////////////////////////////////////////////////

module barrel_multiplier (
    input  [7:0] A,  // Multiplicand
    input  [7:0] B,  // Multiplier
    output [15:0] P  // Product
);

    wire [15:0] partial [7:0];
    
    // Generate partial products using barrel shifting
    assign partial[0] = (B[0]) ? {8'b0, A} : 16'b0;
    assign partial[1] = (B[1]) ? ({8'b0, A} << 1) : 16'b0;
    assign partial[2] = (B[2]) ? ({8'b0, A} << 2) : 16'b0;
    assign partial[3] = (B[3]) ? ({8'b0, A} << 3) : 16'b0;
    assign partial[4] = (B[4]) ? ({8'b0, A} << 4) : 16'b0;
    assign partial[5] = (B[5]) ? ({8'b0, A} << 5) : 16'b0;
    assign partial[6] = (B[6]) ? ({8'b0, A} << 6) : 16'b0;
    assign partial[7] = (B[7]) ? ({8'b0, A} << 7) : 16'b0;

    // Add up all partial products
    assign P = partial[0] + partial[1] + partial[2] + partial[3] +
               partial[4] + partial[5] + partial[6] + partial[7];

endmodule
