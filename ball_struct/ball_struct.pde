Ball b1;
Ball b2;

float gravity = 0.1;

void setup()
{
  size(300,300);
  b1 = new Ball(width/2,10,20);
  b2 = new Ball(200,25,50);
}

void draw()
{
  background(124);
  b1.display();
  b1.fall(gravity);
  b2.display();
  b2.fall(gravity);
}