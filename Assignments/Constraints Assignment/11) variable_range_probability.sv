// Write a constraint where a variable's range of 0-100 has 10% probability and 101-255 has 30% probability.

class probability;
  rand bit [7:0]num;
  
  constraint prob_num { num dist {[0:100]:/ 10, [101:255]:/ 30 }; };
  
  function void display();
    $display(" number = %0d", num);
  endfunction
endclass

module prob_num;
  
   probability p;
  
  initial begin
    p = new();
    repeat(10) begin
    p.randomize();
    p.display();
    end
  end
endmodule 
