`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Testbench for Barrel Shifter Multiplier
//////////////////////////////////////////////////////////////////////////////////

module tb_barrel_multiplier();

    reg  [7:0] A, B;
    wire [15:0] P;
    integer i, j;

    // Instantiate the DUT
    barrel_multiplier uut (
        .A(A),
        .B(B),
        .P(P)
    );

    initial begin
        $display("Starting simulation...");
        $monitor("Time=%0t | A=%d | B=%d | Product=%d", $time, A, B, P);

        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 16; j = j + 1) begin
                A = i;
                B = j;
                #10;
                if (P !== A * B)
                    $display("ERROR: A=%d B=%d => P=%d (Expected %d)", A, B, P, A*B);
            end
        end

        $display("Simulation completed successfully.");
        #10 $stop;
    end

endmodule
