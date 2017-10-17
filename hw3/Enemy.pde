class Enemy{
  float x;
  float y;
  float s=0;
  
  Enemy (float x_,float y_)
  {
    x=x_;
    y=y_;
  }
  
  void display()
  {
    rect(x,y,20,20);
  }
}