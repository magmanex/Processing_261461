float r = 0;
void setup()
{
  size(400,400,P3D);
}

void draw()
{
  background(255);
  translate(width/2,height/2);
  drawPyramid(200);
}

void drawPyramid(int t)
{
  r+=0.01;
  rotate(TWO_PI*mouseY/height);
  rotateX(TWO_PI*mouseX/width);
  beginShape(TRIANGLES);
  fill(255,150);
  vertex(-t,-t,-t);
  vertex(t,-t,-t);
  vertex(0,0,t);
  
  fill(150,150);
  vertex(t,-t,-t);
  vertex(t,t,-t);
  vertex(0,0,t);
  
  fill(255,150);
  vertex(t,t,-t);
  vertex(-t,t,-t);
  vertex(0,0,t);
  
  fill(150,150);
  vertex(-t,t,-t);
  vertex(-t,-t,-t);
  vertex(0,0,t);
  
  endShape();
}