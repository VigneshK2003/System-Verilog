// Write a constraint to generate the sequence 1122334455.

class sequence_g;
  rand int data[10];
  
  constraint ctr { foreach (data[i])
    data[i] == i/2 + 1;
                  };
endclass
  
module gen_sequence;
  
  sequence_g s = new();
    
    initial begin
      repeat(3)begin
      s.randomize();
       $display(" data = %p", s.data);
    end
    end
endmodule
