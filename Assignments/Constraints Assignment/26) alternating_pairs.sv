//Write a constraint to generate alternating pairs of 0 and 1.

class alternate_values;
  rand bit [7:0]num;
  
  constraint ctr_alternate { num[7] == num[6];
                             num[6]!= num[5];
                             num[5] == num[4];
                             num[4]!= num[3];
                             num[3] == num[2];
                             num[2] != num[1];
                             num[1] == num[0];
                           };
  endclass

module example;
   
    alternate_values a;
  initial begin
    a = new();
    repeat(2) begin
    a.randomize();
    $display("value of variable = %b", a.num);
    end
  end
endmodule
