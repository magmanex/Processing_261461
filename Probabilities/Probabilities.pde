void setup()
{
  size(300,300);
  background(255);
  noStroke();
}

void draw()
{
  float red = 0.6,green = 0.1 , blue = 0.3;
  float n = random(1);
  if(n<red) fill(250,0,0,100);
  else if (n<green + red)fill(0,250,0,100);
  else fill(0,0,255,100);
  ellipse(random(width),random(height),64,64);
}