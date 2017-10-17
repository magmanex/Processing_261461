Ball []ball = new Ball[1];
float g = 0.9;
void setup()
{
  size (300,300);
  for(int i=0 ; i<ball.length ;i++)
  {
    ball[i] = new Ball(15,15,15);
  }
}

void draw()
{
  background(125);
  for(int i = 0;i<ball.length ; i++)
  {
    ball[i].fall(g);
    ball[i].display();
  }
}

void mousePressed()
{
  Ball tmp = new Ball(mouseX,mouseY,random(5,40));
  ball = (Ball[]) append(ball,tmp);
  
}