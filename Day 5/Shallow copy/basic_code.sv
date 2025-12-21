// shallow copy basic code

class sample_1;
  int a;
endclass
  
class sample_2;
  int b;
  sample_1 s1;
endclass

module shallow_copy;
  
 sample_2 ex1,ex2;
  
initial begin
  ex1 = new();
  ex1.s1 = new();
  
  ex1.b = 28;
  ex1.s1.a = 11;
  
  ex2 = new ex1;        // shallow copy
  
  $display("ex1.b = %0d, ex1.s1.a = %0d",ex1.b,ex1.s1.a);
  $display("ex2.b = %0d, ex2.s1.a = %0d",ex2.b,ex2.s1.a);
  
  ex2.b = 211;
  ex2.s1.a = 203;
  
  $display("ex1.b = %0d, ex1.s1.a = %0d",ex1.b,ex1.s1.a);
  $display("ex2.b = %0d, ex2.s1.a = %0d",ex2.b,ex2.s1.a);
  
end
endmodule
