//Write a constraint to generate a 10-bit variable with alternating numbers.

class alternate_nums;
  
  rand bit [9:0]num;
  constraint ctr { foreach (num[i])
                  if(i>0)
                    num[i] != num[i-1];
                  };
endclass

module gen_nums;
  
  alternate_nums an = new();
  initial begin
    repeat(3) begin
      if(an.randomize())
         $display("num = %b", an.num);
      else
        $display("randomization failed");
    end
  end
endmodule
