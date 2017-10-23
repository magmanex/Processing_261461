float t = 0;

void setup()
{
  size(400,400);
  smooth();
}

void draw()
{
  background(0);
  stroke(255);
  translate(width/2,height/2);
  for(float i = 0 ; i < TWO_PI ; i+= 0.2)
  {
    pushMatrix();
    rotate(t-i);
    line(0,0,100,0);
    for(float j = 0 ; j < TWO_PI; j+= 0.5)
    {
      pushMatrix();
      translate(100,0);
      rotate(-t-j);
      line(0,0,50,0);
      popMatrix();
    }
    popMatrix();
  }
  t += 0.01;
}