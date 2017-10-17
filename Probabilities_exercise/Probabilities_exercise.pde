float y;
void setup()
{
  size(300,300);

}

void draw()
{
  background(255);
  float up = 0.1,st = 0.7 ;
  float n = random(1);
  if(n<up)y--;
  else if(n>up+st)y++;
  else y+=0;
  ellipse(width/2,y,64,64);
  if(y>height+64)y=-64;
}