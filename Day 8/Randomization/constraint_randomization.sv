// constraint based randomization basic code

class rand_constraint;
  
  rand bit [7:0]a;                         // rand keyword
  randc bit [7:0]b;                        // randc keyword

  constraint ex_cr { a >= 10;            // constraint - specifies range for randomizing values
                     a <= 20;
                     b >= 10;
                    b <= 20;};
endclass

module example;
  
   rand_constraint ctr;
  
  initial begin
    ctr = new();
    
    repeat(5) begin
      ctr.randomize();
      $display(" a = %0d, b = %0d", ctr.a,ctr.b);
    end
  end
endmodule
