// distribution constraint

class dist_ctr;
  rand bit [2:0]data;
  
  constraint ctr { data dist { 0 := 20, 1 := 20, 2 := 60}; };                 // dist keyword
  
  function void display();
     $display(" data = %0d",data);
  endfunction
  
endclass

module distribution_const_ex;
  
  dist_ctr dt;
  
   initial begin
     dt = new();
     
     repeat(10)begin
       if(dt.randomize())
         dt.display();
     end
   end
endmodule
