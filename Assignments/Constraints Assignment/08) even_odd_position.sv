// write a constraint to generate a sequence where even number appears in odd position.

class sequence_n;
  rand int unsigned num[5];

   constraint ctr {
        foreach(num[i])
       if (i % 2 != 0)
         num[i]%2 == 0;
          else
            num[i]%2 == 1; };
  
  constraint ctr_1 {foreach(num[i]) 
                    num[i] inside {[20:100]}; };
endclass

module seq_example;
  sequence_n s;

  initial begin
    s = new();
    repeat(2) begin
    s.randomize();
    foreach(s.num[i])
      $display("number[%0d] = %0d", i, s.num[i]);
    end
  end
endmodule
