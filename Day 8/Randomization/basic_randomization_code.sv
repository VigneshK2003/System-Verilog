// randomization basic code

class random_ex;
  
  rand bit [2:0]a;         // rand keyword 
  rand bit [2:0]b;         // rand keyword used here randomizes possible values for given variable
  
endclass

module random_example;
 
    random_ex r;
  
  initial begin
    
    r = new();
    
    repeat(10) begin
      r.randomize();
      $display(" a = %0d, b = %0d", r.a,r.b);
    end
  end
endmodule
