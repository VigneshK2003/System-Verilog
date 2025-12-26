// pass by reference

module pass_by_reference;
    int a;
  function void update(ref int x);        // ref keyword
       x = x + 5;
  endfunction
  
  initial begin
     a = 10;
    
    $display("Before = %0d", a);           // before calling function
    
    update(a);                             // pass a by reference
    
    $display("After = %0d", a);            // after calling function
  end
endmodule
