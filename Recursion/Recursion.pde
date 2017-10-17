float t;
void setup()
{
  size(700,700);
  noFill();
  stroke(255);
}
void draw()
{
  background(0);
  drawCircle(width/2,height/2,width/2);
}
void drawCircle(int x , int y ,float r)
{
  ellipse(x,y,r,r);
  if ( r>20) {
    r *= 0.5;
    drawCircle(x+(int)r,y,r);
    drawCircle(x-(int)r,y,r);
    drawCircle(x,y+(int)r,r);
    drawCircle(x,y-(int)r,r);
  }
}