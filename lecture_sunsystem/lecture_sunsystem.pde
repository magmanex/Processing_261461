float t = 0;
void setup()
{
  size(400,400);
  smooth();
}

void draw()
{
  background(0);
  
  //Sun
  translate(width/2,height/2);
  fill(255,200,50);
  ellipse(0,0,20,20);
  
  //Earth
  rotate(t);
  translate(100,0);
  fill(0,125,0);
  ellipse(0,0,15,15);
  
  //Moon
  pushMatrix();
  rotate(-t*4);
  translate(15,0);
  fill(255,255,0);
  ellipse(0,0,5,5);
  popMatrix();
  
  //Moon2
  rotate(t);
  translate(25,0);
  ellipse(0,0,5,5);
  t+=0.01;
}