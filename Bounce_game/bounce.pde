class bounce{
  float x;
  float y;
  float speedx,speedy;
  
  bounce(float x_,float y_)
  {
    x = x_;
    y = y_;
    speedy = 1;
    speedx = 1;
  }
  
  void display()
  {
    fill(#FA6060);
    ellipse(x,y,20,20);
    
  }
  
  void fall(float g)
  {
    speedy += g;
    y=y+speedy;
    if(y+10 > 80 && y +10 <90 && x>0 && x<55)
    {
      speedy = -speedy*0.6;
       y = y-0.3;
    }
    if (y+10 > 150 && y+10 < 160 && x>40 && x < 150)
    {
      speedy = -speedy*0.6;
       y = y-0.3;
    }
    if ( y+20 > height)
    {
      speedy = -speedy*0.6;
       y = y-0.3;
    }
    if (y+10 > 250 && y+10 < 260 && x>0 && x < 75)
    {
      speedy = -speedy*0.6;
       y = y-0.3;
    }
  }
  
  void moveR(float g,float xs)
  {
    speedx += g;
    x=x+speedx;
    if(x > xs) 
    {
      speedx = 0;
       
    }
  }
  
  
}