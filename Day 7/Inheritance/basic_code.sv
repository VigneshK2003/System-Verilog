
class vehicle;
   int speed;
   
  function show_speed();
    $display("speed of the given vehicle = %0d km/hr", speed);
  endfunction
endclass

class car extends vehicle;
  int distance;
endclass

module vehicle;
  
 initial begin
   car c1;
  c1 = new();
  c1.speed = 60;
  c1.show_speed();
  end
endmodule
