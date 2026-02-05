// Write a constraint to generate random even numbers between 50 and 100.

class rand_even;
  rand bit [7:0]num;
  
  constraint even_ctr { num inside {[50:100]};
                        num%2==0; }
  
endclass
                                
module even_numbers;
     
     rand_even r;
  
  initial begin
    r = new();
    repeat(5) begin
      r.randomize();
      $display("even number = %0d", r.num);
    end
  end
endmodule
