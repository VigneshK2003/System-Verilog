// swap numbers

module swap_numbers;
    
  function void swap(ref int a, ref int b);
       int temp;
       temp = a;
       a = b;
       b = temp;
  endfunction
  
  initial begin
      int x = 20;
      int y = 40;
    $display("Before swap : x = %0d, y = %0d",x,y);
    swap(x,y);
    $display("After swap : x = %0d, y = %0d",x,y);
  end
endmodule
