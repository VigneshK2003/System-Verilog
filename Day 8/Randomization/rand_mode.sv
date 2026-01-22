// rand mode

class rand_ex;
  randc bit [7:0]a;
  rand bit [7:0]b;
  
  constraint ctr{ a inside {[10:20]};
                  b inside {[30:40]}; };
endclass

module rand_mo;
  
    rand_ex r;
  
  initial begin
    r = new();
    
    $display("\n Random values of variable a and b"); 
    repeat(5)begin
      r.randomize();
      $display(" a = %0d, b = %0d", r.a,r.b);
    end
    
    $display("\n Randomizing value of variable a is disabled"); 
     r.a.rand_mode(0);
    repeat(5)begin
   //   r.a.rand_mode(0);
      r.randomize();
      $display(" a = %0d, b = %0d", r.a,r.b);
    end
    
    $display("\n Randomizing value of variable b is disabled");
      r.a.rand_mode(1);                                      // a is re-enabled
      r.b.rand_mode(0);
    repeat(5)begin
//       r.a.rand_mode(1);
//       r.b.rand_mode(0);
      r.randomize();
      $display(" a = %0d, b = %0d", r.a,r.b);
    end
  end
endmodule
