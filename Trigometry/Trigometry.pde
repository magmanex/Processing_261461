float r=0;
float t=0;
void setup()
{
  size(300,300);
  background(255);
}

void draw()
{
  float x = r*cos(t);
  float y = r*sin(t);
  noStroke();
  float n = noise(x)*255;
  //float n1 = noise(y)*255;
  fill(n,n,n,n);
  ellipse(x+width/2,y+height/2,16,16);
  t-=0.01;
  r+=0.1;
}