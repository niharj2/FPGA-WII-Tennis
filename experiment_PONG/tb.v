module tb;

    reg [10:0] hcount;
    reg [9:0] vcount;
    wire [23:0] pixel;

    pong_game game (
        .vclock(1'b0),
        .reset(1'b0),
        .up(1'b0),
        .down(1'b0),
        .pspeed(4'd0),
        .hcount(hcount),
        .vcount(vcount),
        .hsync(1'b1),
        .vsync(1'b1),
        .blank(1'b0),
        .phsync(),
        .pvsync(),
        .pblank(),
        .pixel(pixel)
    );

    initial begin
        hcount = 512;
        vcount = 384;
        #10;
        $display("Inside blob: %h", pixel);

        hcount = 0;
        vcount = 0;
        #10;
        $display("Outside blob: %h", pixel);

        $finish;
    end

endmodule
