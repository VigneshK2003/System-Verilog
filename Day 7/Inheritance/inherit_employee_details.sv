class person;
    string name;
  
  function string display();
    $display("Name of employee = %0s", name);
  endfunction
endclass

class employee extends person;       // extends keyword
  int emp_id;
  
  function int display_emp();
    $display("Employee id = %0d", emp_id);
  endfunction 
endclass

module inheritance_basic;
    
    employee e1,e2;
  
  initial begin
    
    e1 = new();
    e1.name = "Vignesh";
    e1.emp_id = 1123;
    $display("\n-----inheritance basic code-----");
    e1.display();
    e1.display_emp();
    
    e2 = new();
    e2.name = "Muthu";
    e2.emp_id = 2803;
    e2.display();
    e2.display_emp();
  end
endmodule
