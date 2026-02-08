// Write a constraint to generate palindrome numbers.

class palindrome_number;
  rand bit [3:0]d0,d1; 
  int palindrome;

  constraint digit_range{ d0 inside {[1:9]}; d1 inside {[0:9]}; }

  function void post_randomize();
    palindrome = d0*100 + d1*10 + d0; 
  endfunction
endclass

module palindrome_example;
  palindrome_number p;

  initial begin
    p = new();
    repeat (5) begin
      if (p.randomize())
        $display("Palindrome number = %0d", p.palindrome);
    end
  end
endmodule
