// virtual keyword

module virtual_keyword;
  
class parent;
  int num = 20;
  
  virtual function void display();         // virtual keyword enables runtime method selection
    $display("parent data = %0d", num);
  endfunction
endclass

  class child extends parent;           // extends keyword
  int num = 40;
  
  function void display();
    $display("child data = %0d",num);
  endfunction
endclass
  
  initial begin
    parent p1;
    child c1;
     c1 = new();             
     p1 = c1;        
    p1.display();
  end
endmodule
