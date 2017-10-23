float r;
void setup()
{
  size(400,400, P3D);
  r = 0;
  noStroke();
}

void draw()
{
  background(125);
  r+=0.2;
  translate(width/2,height/2);
  rotate(r);
  rectMode(CENTER);
  rotateX(radians(r));
  rect(0,0,150,150);
  rotate(PI/4);
  rect(0,0,150,150);
}