// Write a constraint to ensure that the sum of three consecutive numbers is even.

class cons_even;
  randc bit [7:0]num;
  rand bit [7:0]y;

  constraint consecutive_ctr { num + (num+1) + (num+2) == y;
                              y%2 == 0; };
  
  function void display();
    $display("Three consecutive numbers = [%0d,%0d,%0d] | Even sum = %0d", num,num+1,num+2,y);
  endfunction
endclass

module consecutive_even_number;
  
    cons_even ce;
  
  initial begin
    repeat(5) begin
    ce = new();
    ce.randomize();
    ce.display();
    end
  end
endmodule
