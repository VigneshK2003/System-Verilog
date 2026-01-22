// multiple constraints

class multi_constraints;
  rand bit [3:0]a;
  randc bit [7:0]b;
  
  constraint ctr_a { a%2==0; };
  
  constraint ctr_b { b inside {[20:30]}; };
  
endclass

module multi_ctr;
  
   multi_constraints mcr;
  
  initial begin
    
    mcr = new();
    
    repeat(5) begin
   
      if(mcr.randomize())
         $display(" a = %0d, b = %0d", mcr.a,mcr.b);
      else
        $display("constraint failed");
    end
  end
endmodule
