// inside constraint

class inside_const;
  rand bit [7:0]a;
  rand bit [7:0]b;
  rand int c;
  
  constraint ctr1 { a inside {[15:30]};                           // inside constraint - to limit the range
                   !(a inside {[20:25]}); };                             // negated inside
  
  constraint ctr2 { b inside {20,30,[40:50]}; };
endclass
                              
module inside_constraint_example;
  
    inside_const ctr;
    
   initial begin
     ctr = new();
     repeat(5) begin
       ctr.randomize() with { c inside {[30:35]}; };                   // inside constraint used along with inline constraints
       $display(" a = %0d, b = %0d, c = %0d", ctr.a, ctr.b,ctr.c);
     end
   end
endmodule
