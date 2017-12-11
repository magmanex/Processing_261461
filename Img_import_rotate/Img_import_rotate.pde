PImage img;
float x,y,r;

void setup()
{
  size(400,300);
  img = loadImage("dog.jpg");
  x = 0;
  y = height/2;
  r = 0;
}

void draw()
{
  background(255);
  translate(x,y);
  rotate(r);
  image(img,0,0,60,75);
  
  x+=0.6;
  r+=0.02;
  if(x>width) x=0;
  
}