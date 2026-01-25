// soft constraint basic code

class soft_const;
   randc bit [7:0]a;
   rand bit [7:0]b;
   
  constraint soft_ctr { soft a inside {[10:20]};      // soft keyword
                             b inside {[40:50]}; };
endclass

module softconstraint_example;
  
   soft_const s;
  
  initial begin
    s = new();
    
    repeat(5) begin
      s.randomize() with { a inside {[80:100]}; };   // inline constraint
      $display(" a = %0d, b = %0d", s.a,s.b);
    end
  end
endmodule
