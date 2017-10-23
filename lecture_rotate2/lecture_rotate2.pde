float r = 0.2;
void setup()
{
  size(500,500,P3D);
}

void draw()
{
  background(125);
  r+=1;
  rectMode(CENTER);
  
  pushMatrix();
  translate(100,100);
  rotate(radians(r+45));
  rect(0,0,150,150);
  popMatrix();
  
  pushMatrix();
  translate(300,300);
  rotateY(radians(r+45));
  rect(0,0,150,150);
  popMatrix();
 

}