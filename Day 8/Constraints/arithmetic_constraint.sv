// arithmetic constraint

class arithmetic_constraint;
   randc bit [7:0]a;
   rand bit [7:0]b;
   rand bit [7:0]c;
   rand bit [7:0]d;
   
  constraint ctr {a inside {[10:20]};
                   b == a*2;                             // arithmetic operators used inside constraints
                   c == a+b;
                   d == c/2;
                 };
endclass

module arithmetic_constraint_example;
  
    arithmetic_constraint c;
  
  initial begin
    c = new();
    repeat(5) begin
      c.randomize();
      $display(" a = %0d, b = %0d, c = %0d, d = %0d", c.a,c.b,c.c,c.d);
    end
  end
endmodule
