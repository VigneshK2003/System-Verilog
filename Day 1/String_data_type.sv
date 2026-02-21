// String data type and string methods

module string_data_type;
    string a = "HELLO";
    string b = "Welcome";
    string c;
    string d = "wave";
  
  initial begin
    integer e;
     
    $display("\n-----String data type-----");
    
    $display("Characters in string a = %0s", a);
    a = a.tolower();
    $display("Lower case of string a = %0s", a);
    $display("Characters in string b = %0s", b);
    b = b.toupper();
    $display("Upper case of string b = %0s", b);
    c = b.getc(0);
    $display("0th character of string b = %s",c);
    d.putc(0,"C");
    $display("Characters in string d = %0s", d);
    e = b.len();
    $display("length of string b = %0d", e);
    $display("------------------------");
  end
endmodule
