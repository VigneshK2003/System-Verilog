// super keyword

class parent;
  int data = 20;
  
  function void display();
    $display("parent class data = %0d",data);
  endfunction
endclass

class child extends parent;          // extend keyword
    int data = 30;
   
    function void display();
      $display("child class data = %0d", data);
      super.display();                                   // calling parent class method through child class
      $display("parent class through child class = %0d", super.data);           // calling parent class properties through child class
    endfunction
  endclass

module super_keyword;
  
  initial begin
    child c;
    c = new();
    c.display();
  end
endmodule
