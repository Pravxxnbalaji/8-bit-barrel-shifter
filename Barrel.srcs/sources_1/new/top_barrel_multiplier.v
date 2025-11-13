`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: <Your Company / University>
// Engineer: <Your Name>
// 
// Create Date: 2025-10-31
// Design Name: Barrel Shifter Multiplier Top
// Module Name: top_barrel_multiplier
// Target Device: ZedBoard (XC7Z020-1CLG484C)
// Tool Version: Vivado 2023.x+
// Description: Connects barrel multiplier with switches and LEDs
//////////////////////////////////////////////////////////////////////////////////

module top_barrel_multiplier(
    input  [7:0] SWA,  // Switches for input A
    input  [7:0] SWB,  // Switches for input B
    output [7:0] LED   // Lower 8 bits of Product
);

    wire [15:0] product;

    // Instantiate barrel multiplier
    barrel_multiplier uut (
        .A(SWA),
        .B(SWB),
        .P(product)
    );

    // Display lower 8 bits on LEDs
    assign LED = product[7:0];

endmodule
