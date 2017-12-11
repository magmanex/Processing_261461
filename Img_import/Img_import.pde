PImage img;

void setup()
{
  size(500,300);
  img = loadImage("city.png");
}

void draw()
{
  image(img,0,0,mouseX,mouseY);
}