class Ball{
  color c;
  float x;
  float y;
  float size;
  float speed=0;
  

  Ball(float xs,float ys,float ss)
  {
    x=xs;
    y=ys;
    size = ss;
    
  }
  
  void display()
  {
    fill(125);
    ellipse(x,y,size,size);
  }
  
  void fall(float g)
  {
    speed += g;
    y=y+speed;
    if(y+size/2 > height+g) speed = -speed;
  }
}