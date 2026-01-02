class person;
  string name;
  
  function void display_n();
    $display("Employee Name = %0s", name);
  endfunction
endclass

class employee extends person;
   int emp_id;
  
  function void display_e();
    super.display_n();
    $display("Employee id = %0d", emp_id);
  endfunction
endclass

class manager extends employee;
   string department;
  
  function void display_d();
    super.display_e();
   $display("Department = %0s", department);
  endfunction
endclass

module multi_inheritance;
  
initial begin
   manager m1,m2;
  
  m1 = new();
  m1.name = "Vignesh";
  m1.emp_id = 1123;
  m1.department = "EEE";
  m1.display_d();
  
  m2 = new();
  m2.name = "Muthu";
  m2.emp_id = 2803;
  m2.department = "ECE";
  m2.display_d();
end
endmodule
