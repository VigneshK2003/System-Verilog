class course;
     string name; 
     string course_name;
  function void display_c();
    $display("Course Name = %0s", course_name);
  endfunction
endclass

class online_course extends course;
    string platform;
  function void display_oc();
     super.display_c();
    $display("Applicant name = %0s", super.name);
    $display("Course Model = %0s", platform);
  endfunction
endclass

class details extends online_course;
    int Fee;
  function void display_f();
    super.display_oc();
    $display("Fees details = %0d", Fee);
  endfunction
endclass

module inherit_emp;
  
initial begin
   details d1;
   d1 = new();
   d1.name = "Vignesh";
   d1.course_name = "VLSI";
   d1.platform = "Online";
   d1.Fee = 5000;
  d1.display_f();
end
endmodule
