class Breather{
  float x =0;
  float y = 0 ;
  float t = 0;
  float c = 0;
  float size;
  
  Breather()
  {
    x = random(width);
    y = random(height);
    t = random(0,30);
    c = random(0.9);
  }
  
  void breath()
  {
    size = (sin(c)+2)*t;
    c+= 0.05;
  }
  
  void display()
  {
    ellipseMode(CENTER);
    ellipse(x,y,size,size);
  }
}