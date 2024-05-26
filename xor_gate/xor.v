module top (
    input wire btn1, 
    input wire btn2,
    output reg [5:0] out_led
);

initial begin
    out_led[0] = 1;
    out_led[1] = 1;
    out_led[2] = 1;
    out_led[3] = 1;
    out_led[4] = 1;
    out_led[5] = 1;

end

always @(*) 
begin
    if (~btn1 && ~btn2) 
        out_led[1] = 1;
    else if (~btn1 && btn2) 
        out_led[1] = 0;
    else if (btn1 && ~btn2) 
        out_led[1] = 0;
    else 
      out_led[1] = 1;

end
endmodule