// fork join example code

module fork_join;
  
  initial begin
    
    #1 $display(" [ %0t ]---start fork---",$time);

    fork                                             // code inside a fork join block is executed parallely
      #2 $display(" [%0t]---Good Morning---",$time);
      
     begin
      #4 $display(" [%0t]---Have a nice day---",$time);
      #6 $display(" [%0t]---Thank you---",$time);
     end
      
      #8 $display(" [%0t] ---Welcome---",$time);
    join
    
    $display(" [ %0t ]---end fork---",$time);         // waits for all thread to complete
    end
endmodule
