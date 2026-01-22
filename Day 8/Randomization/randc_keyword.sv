// randc keyword

class randomc_ex;
  rand bit [2:0]a;
  randc bit [2:0]b;       // randc keyword - generates random value in cyclic manner without repeating the same value in a cycle.
endclass

module randomc_example;
  
   randomc_ex r;
  
  initial begin
    
    r = new();
    
    repeat(10) begin
      r.randomize();          // randomize() method
      $display(" a = %0d, b = %0d", r.a,r.b);
    end
  end
endmodule
