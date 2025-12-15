class packet;
   int id;
   int data;
endclass

module class_tb;
  
   packet p1,p2;
  
 initial begin
    
    p1 = new();
    p1.data = 10;
   
    p2 = p1;
    p2.data = 20;
    
   $display(" object p1 = %0d", p1.data);
   $display(" object p2 = %0d", p2.data);
   
 end
endmodule  
