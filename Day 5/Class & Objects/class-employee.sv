// class example basic code

class employee;
  string name;
  int emp_id;
  static int emp_count;

function new(string name,int emp_id);
     this.name = name;
     this.emp_id = emp_id;
     emp_count++;
endfunction
  
  function void display();
    $display("Employee Name = %0s, ID = %0d", name, emp_id);
  endfunction 
endclass

 employee e1,e2;

module class_emp;
 
  initial begin
 
    e1 = new("Vignesh",1103);
    e2 = new("Muthu",2803); 
    
    e1.display();
    e2.display();
    
    $display("Total Employees = %0d", employee::emp_count);
  end

endmodule
