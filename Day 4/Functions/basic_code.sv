module functions;
    reg [7:0]x,y;
    integer out;

  // in systemverilog function must declare the type of data it will return
    function integer add(input int a, input int b);  
    add = a + b;
  endfunction
  
  initial begin
    x = 8'd5;
    y = 8'd10;
    out = add(x,y);
    $display("function add = %0d", out);
  end
endmodule
