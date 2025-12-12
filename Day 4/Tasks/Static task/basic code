module regular_task;
   int x;
   int y;
  
  task double(input int a, output int b);
         b = a * 2;
  endtask
  
  initial begin
     x = 5;
    double(x,y);
    $display("double of given value = %0d", y);
    end
endmodule
