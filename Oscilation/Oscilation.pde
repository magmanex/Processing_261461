float t=0;
void setup()
{
  size(300,300);
}

void draw()
{
  background(255);
  float x = (sin(t)+1)*width/2;
  t += 0.05;
  fill(0);
  line(width/2,0,x,height/2);
  ellipse(x,height/2,16,16);
}