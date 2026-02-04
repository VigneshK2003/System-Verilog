// Write a constraint to generate even numbers between 10 and 30.

class even_class;
  rand bit [7:0]num;
  
  constraint even_number { num inside {[10:30]};
                          num%2==0; };
  function void display();
    $display(" number = %d", num);
  endfunction
endclass

module even_number_example;
  
  even_class e = new();
  
  initial begin
    repeat(10)begin
      e.randomize();
      e.display();
    end
  end
endmodule
