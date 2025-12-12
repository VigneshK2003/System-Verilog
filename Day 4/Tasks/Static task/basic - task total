module static_total;
  
  task add_t(input int x);
     static int total;
     total = total + x;
     $display("Updated total value = %0d", total);
  endtask
  
  initial begin
     
    add_t(2);
    add_t(5);
    add_t(2);
  end
endmodule
