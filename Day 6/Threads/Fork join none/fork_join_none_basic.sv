// fork join none example code

module fork_join_none;
  
  initial begin
    
    #1 $display(" [ %0t ]---start fork---",$time);

    fork                                                             // executed as soon as fork join block is initiated
                               
      #2 $display(" [%0t]--Verilog is a HDL language--",$time);
      
     begin
       #4 $display(" [%0t]--SV is a HDVL language--",$time);
       #6 $display(" [%0t]--Verilog is easier when compared with SV--",$time);
     end
      
      #8 $display(" [%0t] --We rely on verilog to learn SV--",$time);
    join_none                                                                      
    
    $display(" [ %0t ]---end fork---",$time);
    end
endmodule
