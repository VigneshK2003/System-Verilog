module real_data;

    real r1;        
    shortreal sr1;      
    realtime t1;        

    initial begin
       
        r1 = 11.1415926535;      
        sr1 = 11.14159;           
        t1 = $realtime;
      
        $display("\n-------Real data type--------");
        $display("Value of real r1 = %0f", r1);
        $display("Value of shortreal sr1 = %0f", sr1);
        $display("realtime t1 = %0f", t1);

        #10;                     
        t1 = $realtime;
        $display("Time after 10 units (t1) = %0f", t1);
        $display("-------------------------------");
    end

endmodule
