// Write a constraint to generate the factorial of a given number.

class factorial_number;
  randc bit [7:0]num;
       int factorial;
  
  constraint fact_ctr { num inside {[1:10]}; }
  
  function void post_randomize();
    factorial = factorial_value(num);
  endfunction
  
  function int factorial_value(int n);
     int result = 1;
    for(int i=1; i<=n; i++)
       result *= i;
       return result;
  endfunction
endclass

module fact_value;
  
  factorial_number f;
  
  initial begin
    f = new();
    repeat(5)begin
      f.randomize();
      $display(" number = %0d, factorial of the number = %0d", f.num, f.factorial);
    end
  end
endmodule
