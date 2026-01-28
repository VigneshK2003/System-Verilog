// Write a constraint to generate unique multiples of 3

class multiples_three;
  randc bit [7:0] num;
  
  constraint three_num { num%3==0; };
  
  function void display();
    $display("number = %0d", num);
  endfunction
endclass

module num_ex;
  
  multiples_three mt;
  
  initial begin
    mt = new();
    repeat(5) begin
      mt.randomize();
      mt.display();
    end
  end
endmodule
