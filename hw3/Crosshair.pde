class Crosshair{
  float x;
  float y;
  
  Crosshair()
  {
    x = mouseX;
    y = mouseY;
  }
  
  void display()
  {
    noFill();
    x = mouseX;
    y = mouseY;
    ellipse(x,y,50,50);
    line(x,y-80,x,y+80);
    line(x-80,y,x+80,y);
  }
  
}