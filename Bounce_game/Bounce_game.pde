bounce ball;
holy sc,sc1,sc2,sc3;
int score=0;
float gravity=0.1;
holy []a = new holy [4];
void setup()
{
  size(100,360);
  a[0] = new holy(20,60,15,40);
  a[1] = new holy(70,100,40,15);
  a[2] = new holy (20,170,40,15);
  a[3] = new holy (60,230,15,40);
  ball = new bounce(10,10);
}
void draw()
{
  background(125);
  ball.fall(gravity);
  ball.display();
  touch();
  
}

void touch()
{
  
  if(a[0].check && a[1].check && a[2].check && a[3].check && ball.y+20 > height-40 ) 
  {
    background(125);
    textSize(32);
    text("You Win" ,20,100,60,100);
    //text("Win" ,20,500);
  }
  else 
  {
    fill(200);
  rect(0,80,50,10);
  rect(40,150,60,10);
  rect(0,250,70,10);
  fill(#2EF254);
  rect(0,350,100,10);
    if(ball.x != a[0].x && !a[0].check) a[0].display();
  else a[0].check=true;
  
  if(ball.y <= a[1].y && !a[1].check) a[1].display();
  else a[1].check=true;
  
  if(ball.y <= a[2].y && !a[2].check) a[2].display();
  else a[2].check=true;
  
  if(ball.y <= a[3].y || ball.x < a[3].x && !a[3].check) a[3].display();
  else a[3].check=true;
  
  }
}

void keyPressed()
  {
    if(key == CODED)
    {
      if(keyCode == LEFT) ball.x-=2;
      if(keyCode == RIGHT) ball.x+=2;
      if(keyCode == UP) ball.y-=20;
    }
  }