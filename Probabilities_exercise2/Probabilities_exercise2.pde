float t = 0.0;
float s = 0.0;
float c = 0.02;
void setup()
{
  size(300,300);
  noStroke();
}
void draw()
{
  background(255,0,255,125);
  float n1 = noise(t)*width;
  float n2 = noise(s)*height;
  print(noise(t) + " + " + t + "\n");
  t+=0.005;
  s+=0.001;
  fill(255,255,0,175);
  ellipse(n1,n2,15,15);
  fill(245,245,0);
  ellipse(n1,n2,10,10);
  
}