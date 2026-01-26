// solve before constraint

class solve_before;
  rand bit [7:0]a;
  rand bit b;
  rand bit [7:0]c;
  
  constraint ctr { (a%2==0) <-> (b==1);               // equivalence operator (<->)
                   solve a before b;
                   };
  constraint ctr2 { c inside {[30:40]};
                    a == c*3;
                   solve c before a; };            // solve before constraint
endclass

module solve_before_constraint;
  
    solve_before s;
  
  initial begin
    s = new();
    repeat(5) begin
      s.randomize();
      $display(" a = %0d, b = %0d, c = %0d", s.a,s.b,s.c);
    end
  end
endmodule
