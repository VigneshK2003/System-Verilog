// unique constraint

class unique_const;
  rand bit [7:0]a;
  rand bit [7:0]b;
  rand bit [7:0]c;
  
  constraint ctr1 { unique{a,b,c};               // unique keyword
                    a inside {[30:50]};
                    c inside {[45:70]}; 
                  };  
  
  function void display();
    $display("a = %0d, b = %0d, c = %0d",a,b,c);
  endfunction
endclass
  
module unique_constraint_example;
    
      unique_const uct;
    
  initial begin
      
    uct = new();
    repeat(5) begin
    uct.randomize();
    uct.display();
    end
  end
endmodule
