
class account;
   int balance;
   string acc_type;
  
  function new(string acc_type,int balance);           // new constructor
     this.acc_type = acc_type;
     this.balance = balance;
  endfunction
  
  virtual function void display();                 // vitual keyword to enable runtime selection
    $display("Account type = %0s", acc_type);
    $display("Account balance = %0d", balance);
  endfunction
endclass

class savings extends account;                     // extends keyword
  
  function new();
    super.new("Savings",5000);                    // super keyword to inherit parent method
  endfunction
  
  function void display();
    $display("Account type = %0s", acc_type);
    $display("Account balance = %0d", balance);
  endfunction
endclass

class current extends account;
  
 function new();
    super.new("Current",2000);
 endfunction
  
  function void display();
    $display("Account type = %0s", acc_type);
    $display("Account balance = %0d", balance);
  endfunction
endclass

module bank_acc;
  
   account a1;
   savings s1;
   current c1;
initial begin
  
  s1 = new();
 
  c1 = new();

  a1 = c1;
  a1.display();
  
  a1 = s1;
  a1.display();
end
endmodule 
