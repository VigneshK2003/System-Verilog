// class assignment example code

module class_assignment;
  
class data_s;

  int data;
  
endclass

  data_s d1,d2;
  
initial begin
 
  d1 = new();
  d1.data = 20;
 
  d2 = d1;   // class assignment
  
  $display("d1 = %0d, d2 = %0d", d1.data, d2.data);
  
  // change in d2 also changes value of handle d1
  d2.data = 40;
  $display("d1 = %0d, d2 = %0d", d1.data, d2.data);
  end
endmodule

   
