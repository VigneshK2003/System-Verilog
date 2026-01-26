// bidirectional constraint

class bidirection_const;
  rand bit [7:0]a;
  rand bit [7:0]b;
  rand bit [7:0]c;
  
  constraint ctr { a <= b;
                   b inside {[40:50]};                // constraint will solve any variable at first and resolves remaining variables simultaneously
                   c == a + b; 
                   a != 0;   };
endclass
                                         
module bidirectional_constraint_example;
  
     bidirection_const bct;
  
  initial begin
    
    bct = new();
    repeat(5)begin
      bct.randomize();
      $display("a = %0d, b = %0d, c = %0d", bct.a,bct.b,bct.c);
    end
  end
endmodule
