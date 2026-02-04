//Write a constraint to generate the alternating positive-negative sequence: 5, -10, 15, -20, 25, -30

class number_sequence;
  rand byte signed num[6];
    
  constraint ctr {
    foreach (num[i])
      if(i%2==0)
        num[i]==(i+1)*5;     
      else
        num[i]== -(i+1)*5;  
  }                  
endclass

module example;
  number_sequence n = new();
  initial begin
    
    n.randomize();
    $display(" num = %p", n.num);
  end
endmodule
