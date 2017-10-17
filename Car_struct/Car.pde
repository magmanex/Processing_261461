class Car{
  color c;
  float x;
  float y;
  float speed;
  
  Car(color colorc,float x_ , float y_ , float speed_)
  {
    c = colorc;
    x = x_;
    y = y_;
    speed = speed_;
  }
  
  void display()
  {
    rectMode(CENTER);
    fill(c);
    rect(x,y,50,10);
  }
  
  void move(float w)
  {
    x = x + speed;
   if(x-w/2>width)x=-w/2;
  }
}
 