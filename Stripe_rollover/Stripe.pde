class Stripe {
  float x=0;
  float y=0;
  float speed=random(0.1,2);
  boolean check=false;
  void move()
  {
    x+=speed;
    if(x-10 > width) x=-10;
  }
  void display()
  {
    noStroke();
    if(check)fill(0,255,0,125);
    else fill(255,255,255,125);
    rect(x,0,40,height);
  }
  void rollover(float mx,float my)
  {
    if(mx > x && mx < x+40)check = true;
    else check = false;
  }
}