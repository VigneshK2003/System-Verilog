// pass by value function

module pass_by_value;
  
  function int increment(int num);           
       num = num + 1;
       return num;
  endfunction
  
  initial begin
     int a = 10;
     int result;
     
    result = increment(a);       // recieves a copy of a
    
    $display("value of a = %0d", a);
    $display("value of a after increment = %0d", result);
  end
endmodule
