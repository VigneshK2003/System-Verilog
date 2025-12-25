// this keyword

module this_keyword;
class person;
  
  string name;
  int age;
  
  function new(string name, int age);
    this.name = name;
    this.age = age;
  endfunction
  
  function void display();
    $display(" Name = %0s", this.name);
    $display(" Age = %0d", this.age);
  endfunction
endclass

initial begin
  person p1 = new("Vignesh",22);
  person p2 = new("Muthu", 14);
  p1.display();
  p2.display();
end
endmodule
