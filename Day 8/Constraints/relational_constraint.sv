// relational constraints

class relate_operator;
  rand bit [7:0]a,b,c;
  
  constraint ctr1 { b<=c;
                    a!=c;
                    b>=a;
                    a>=10; c<=200;             // range constraint
                  };
endclass

module relational_operator_example;
   
  relate_operator rot;
  
  initial begin
       
    rot = new();
    repeat(5)begin
      if(rot.randomize())
         $display("a = %0d, b = %0d, c = %0d", rot.a,rot.b,rot.c);
      else
        $display(" Randomization failed");
    end
  end
endmodule
